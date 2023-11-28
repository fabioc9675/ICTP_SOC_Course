##
# @ Pulse fitting library for MLab/ICTP workshops
#
# Data cleaning and pulse analysis for experimental data.
# It also provides an easy interface with the UDMA platform.
# Adapted to work with Jupyter Notebook.
#
# - Created: Ivan Morales on 15/11/2023
# - Modified: ...
# MLab, ICTP (2023)


import numpy as np
import pandas as pd
import matplotlib.pyplot as plt
from scipy.optimize import curve_fit

class PulseFit(object):
    
    def __init__(self,
                 pulseLenSamples : int, 
                 samplingRate : float,
                 resolutionBits : int = 14
                 ):
        """Pulse fitting library constructor. 

        Args:
            pulseLenSamples (int): Length of the pulses under analysis (in samples)
            samplingRate (float): Sampling rate of the digitizer (in Hz)
            resolutionBits (int) : ADC resolution (in bits)
        """
        
        # Number of continuous samples to be equal (at max) to consider a pulse saturated
        self.SATURATED_PULSE_SAMPLES = 3
        
        self.setPulseLen(pulseLenSamples)
        self.setSamplingRate(samplingRate)
        self.__setAdcResolution(resolutionBits)
        
        #Trigger immediate computations, constant through all the processing stages
        self.__setTimeAxisContinuous(pulseLen = pulseLenSamples, samplingRate = samplingRate)
        self.__setTimeAxisDiscrete(pulseLen = pulseLenSamples)
        
        
    def recordDataset(self,
                      pulseCount : int,
                      udmaInstance,
                      shiftDataYaxis : bool = True):
        """Records a dataset of pulses using an external source of data
        Must be used with UDMA library to interface with external FPGA/SoC.

        Args:
            pulseCount (int): Number of pulses to be recorded
            udmaInstance (object): UDMA instance with a working connection

        Returns:
            pd.DataFrame: Recorded dataset of pulses with the provided parameters
        """
        
        pulseLen = self.getPulseLen()
        adcResolutionBits = self.getAdcResolution()
        
        dataset = pd.DataFrame(columns = range(pulseLen))
        
        # Clear input FIFO before recording
        self.udmaClearFifo(udmaInstance = udmaInstance)
        
        for i in range(pulseCount):
            sampleCnt = 0
            while sampleCnt < pulseLen:
                recordedStream = udmaInstance.read_fifo(pulseLen)
                sampleCnt = recordedStream[0][1]
                
            # Clear input FIFO to ensure data alignment
            self.udmaClearFifo(udmaInstance = udmaInstance)
            
            # Compute the two's complement for the ADC data coming from FIFO
            thisPulse = pd.Series(recordedStream[1]).to_frame()
            if shiftDataYaxis:
                thisPulse -= (adcResolutionBits//2 - 1)
            dataset = pd.concat([dataset, thisPulse.T], axis = 0, ignore_index = True)
            
        return dataset        
    
    def restoreBaseline(self,
                       dataset : (pd.DataFrame, pd.Series, np.array),
                       invertPulse : bool = False,
                       blSamples : int = 100
                       ):
        """Removes the baseline of a pulse or a given dataset of pulses

        Args:
            dataset (pd.DataFrame, pd.Series, np.array): Single pulse or dataset to process
            invertPulse (bool, optional): Is it required to invert the pulse polarity?. Defaults to False.
            blSamples (int, optional): Number of samples to compute the baseline. Defaults to 20.

        Returns:
            (pd.DataFrame, pd.Series, np.array): Processed pulse or dataset of pulses without baseline
        """
        
        if type(dataset) == pd.Series or type(dataset) == np.array:
            datasetBl = dataset[:blSamples].astype(np.int16)
            datasetNoBl = dataset - datasetBl
            if invertPulse:
                datasetNoBl *= -1
        else:
            datasetBl = dataset[dataset.columns[:blSamples]].mean(axis = 1).astype(np.int16)
            datasetNoBl = dataset.subtract(datasetBl, axis = 0).astype(np.int16)
            if invertPulse:
                datasetNoBl *= -1
                
        return datasetNoBl
    
    def removeSaturated(self,
                        dataset : pd.DataFrame,
                        invertedPulse : bool = False):
        """Returns a dataset without saturated pulses

        Args:
            dataset (pd.DataFrame): Dataset to analyze
            saturationVal (int, optional): Minimum saturation value. Defaults to 8190.

        Returns:
            pd.DataFrame: Pandas DataFrame without saturated pulses
        """
        nonSaturatedIndex = dataset.apply(self.__nonSaturatedPulse,
                                       args = (invertedPulse, ),
                                       axis = 1)
        
        return dataset.loc[nonSaturatedIndex]
        
    
    def filterPulsesByAmplitude(self,
                                dataset : pd.DataFrame,
                                threshold : int = 4000):
        """Filters pulses, returning events with amplitude higher than the threshold

        Args:
            dataset (pd.DataFrame): dataset to be processed
            threshold (int): minimum pulse amplitude to process

        Returns:
            pd.DataFrame: filtered dataset by pulse amplitude
        """
        
        ampIndices = dataset.max(axis = 1) > threshold
        
        return dataset.loc[ampIndices]

    def pulseModel(self,
                     t : iter,
                     A : np.float32,
                     tauD : np.float32,
                     tauR : np.float32,
                     t0 : np.float32):
        """Mathematical model of the pulses from the detector. Used to fit the parameters
        of the experimental traces recorded with the DAQ.

        Args:
            t (iter): Time base (x-axis)
            A (np.float32): Amplitude factor of the pulse under analysis
            tauD (np.float32): Decay time constant of the pulse under analysis
            tauR (np.float32): Rise time constant of the pulse under analysis
            t0 (np.float32): Time of arrival of the pulse under analysis

        Returns:
            np.array: Pulse model evaluated with the given parameters
        """
          
        # Retrieve the current sampling rate value
        fs = self.getSamplingRate()
        
        # Compute the pulse model with the time of arrival (t0)
        pulse = (A*((np.exp(-(t - t0)/tauD) - np.exp(-(t - t0)/tauR)))).astype(np.float32)
        
        # Set to 0 the pulse values before t = 0
        pulse[:int(self.__toDiscreteTime(t0, fs) + 1)] = np.float32(0)
        
        return pulse       
    
    
    def fitPulses(self,
                 dataset : pd.DataFrame,
                 estimatedTauD : np.float32,
                 estimatedTauR : np.float32,
                 estimatedT0 : np.float32 = 1e-6,
                 estimatedA : int = 3000,
                 computeRelativeError : bool = True
                 ):
        """Computes the best parameters to fit each single pulse in the provided dataset.
        The average of the parameters are returned, along with the absolute or relative errors.

        Args:
            dataset (pd.DataFrame): Dataset with the pulses to be processed. Each row represents a pulse
            estimatedTauD (np.float32): Initial guess of the decay time of the detector (in seconds)
            estimatedTauR (np.float32): Initial guess of the rise time of the detector (in seconds)
            estimatedT0 (np.float32): Initial guess of the time of arrival of the pulses (in seconds). Defaults to 1e-6 (1 microsecond).
            estimatedA (int): Initial guess of an amplitude value (in ADC units). Defaults to 2000 (typical pulse amplitude).
            computeRelativeError (bool, optional): Return relative or absolute fitting error. Defaults to True.

        Returns:
            Tuple: Results of the fitting parameters and errors of the dataset (fitParameters, fitErrors)
        """
        
        # Fitting parameter names
        fitLabels = ("fit_Amplitude", "fit_tauDecay", "fit_tauRise", "fit_tArrival_t0")
        errorLabels = ("error_Fit_Amplitude", "error_Fit_tauDecay", "error_Fit_tauRise", "error_Fit_tArrival_t0")
        
        # Results
        fitParameters = []
        fitErrors = []
        
        initialGuess = (estimatedA, estimatedTauD, estimatedTauR, estimatedT0)
        nullArray = np.array([np.nan]*len(initialGuess))
        
        # Number of pulses stored in the dataset
        nPulses = len(dataset)
        
        # Retrieve the pulse model to be fitted
        pulseModel = self.pulseModel
        
        # Retrieve the continuous-time x-axis for the fitting
        timeAxis = self.getTimeAxisContinuous()
        
        # Fit each pulse in the dataset
        for i in range(nPulses):
            
            # Extract the pulse samples and store them in a temporary array
            thisPulse = dataset.iloc[i].T.values 
            
            try:
                # Compute the fitted parameters for the pulse using scipy.optimize_curve_fit
                thisFit, thisError = self.__fitSinglePulse(
                    pulseModel = pulseModel,
                    timeAxis = timeAxis,
                    yValues = thisPulse,
                    initialGuess = initialGuess
                )
        
            # Whenever an out-of-range value is reached, fill with NaN
            except RuntimeError:
                thisFit, thisError = (nullArray, nullArray)
                
            fitParameters.append(thisFit)
            fitErrors.append(thisError)
            
        # Format the fitting results as a dataframe, containing the
        # fitting parameters and errors of each processed pulse
        pulseFitParameters = pd.DataFrame(np.array(fitParameters), columns = fitLabels)
        pulseFitErrors = pd.DataFrame(np.array(fitErrors), columns = errorLabels)
        
        # Compute the average of the parameters of each pulse -> "Ideal pulse model"
        fitParameters = pulseFitParameters.mean()
        fitErrors = pulseFitErrors.mean()
        
        fitParameters.name = 'Best fitting parameters'
        fitErrors.name = 'Absolute fitting errors'
        
        
        # If relative errors are requested, instead of absolute errors
        if computeRelativeError:
            fitErrors = pd.Series(fitErrors.values / fitParameters.values)
            fitErrors = fitErrors.set_axis(errorLabels, axis = 0)
            fitErrors.name = 'Relative fitting errors'
            
        return (fitParameters[1:], fitErrors[1:])
    
    
    def udmaClearFifo(self, udmaInstance):
        """Clears the input FIFO values of the Comblock to which the UDMA instance is related to

        Args:
            udmaInstance (object): Open connection with the UDMA framework to SoC/FPGA remote target
        """
        udmaInstance.write_reg(17, 1)
        udmaInstance.write_reg(17, 0)
    
    
    def __nonSaturatedPulse(self,
                           pulseArray : np.array,
                           invertedPulse : bool = False):
        """Check whether a given pulse is saturated or not

        Args:
            pulseArray (np.array): Single pulse array
            saturationVal (int): Minimum saturation value

        Returns:
            bool: True if the pulse is not saturated, False otherwise
        """
        
        if invertedPulse:
            pulseArray *= -1

        maxAmp = np.max(pulseArray)
        satIndices = np.where(pulseArray == maxAmp)[0]
        
        # If a continuous range of indices coincides with saturated index list -> saturated
        if np.sum(range(satIndices[0], satIndices[0] + self.SATURATED_PULSE_SAMPLES) == satIndices[0:self.SATURATED_PULSE_SAMPLES]) == self.SATURATED_PULSE_SAMPLES:
            return False
        
        return True
    
    
    def __fitSinglePulse(self,
                         pulseModel,
                         timeAxis : iter,
                         yValues : iter,
                         initialGuess : iter
                         ):
        """Compute the best fitting parameters of a single pulse using least-squares

        Args:
            pulseModel (function): Pulse model to be fitted
            timeAxis (iter): x-axis used for the fitting (time axis)
            yValues (iter): pulse amplitude values to be fitted
            initialGuess (iter): initial guess values to start the fitting

        Returns:
            tuple: tuple with the fitting parameters and fitting error arrays
        """
        
        # Compute the fitted parameters for the pulse using least-squares 
        pulseFit, pulseError = curve_fit(
            f = pulseModel,
            xdata = timeAxis,
            ydata = yValues,
            p0 = initialGuess
        )
        
        # Compute the absolute error of each fitting parameter using
        # the covariance matrix
        pulseError = np.sqrt(np.diag(pulseError))[-len(initialGuess):]
        
        return (pulseFit, pulseError)
    
    
    def __toContinuousTime(self,
                         x : np.float32,
                         fs : np.float32):
        """Computes the continuous time representation of a given value in discrete time

        Args:
            x (np.float32): Discrete time value to be processed
            fs (np.float32): Sampling rate

        Returns:
            np.float32: Value in continuous time representation
        """
        
        return np.float32(x)/fs
    
    def __toDiscreteTime(self,
                         x : np.float32,
                         fs : np.float32):
        """Computes the discrete time value for a given continuous time value

        Args:
            x (np.float32): Time to convert to discrete time representation
            fs (np.int32): Sampling rate

        Returns:
            np.float32: Time value in discrete time representation
        """
        
        return x * fs
    
    def __twosComplement(self, value : int, bits : int = 14):
        """Computes the two's complement for a variable bit representation

        Args:
            value (int): Value to change representation to
            bits (int): Resolution (bits) of the data source

        Returns:
            int: _description_
        """
        
        if (value >= 2**bits//2):
            value -= (2**bits-1)
        
        return value



    '''
    =======================
    # Setters and Getters #
    =======================
    '''
    
    def setPulseLen(self, newLen : int):
        """Sets the value of the pulse length

        Args:
            newLen (int): Pulse length (in discrete sample units)
        """
        self.pulseLenSamples = newLen
    
    
    def setSamplingRate(self, newFs : float):
        """Sets a new sampling rate 

        Args:
            newFs (float): New sampling rate (in Hz)
        """
        
        self.samplingRate = newFs
        
        
    def __setTimeAxisContinuous(self, 
                                pulseLen : int,
                                samplingRate : float):
        """Computes the time axis (x-axis) for continuous-time analysis and plots.
        Should be called from the constructor.

        Args:
            pulseLen (int): Expected pulse length (in sample units)
            samplingRate (float): Sampling rate of the DAQ
        """
        
        # Computes the upper axis limit (in seconds)
        timeLimit = self.__toContinuousTime(x = pulseLen - 1,
                                            fs = samplingRate)
        
        # Creates the continuous time axis (x-axis)
        self.timeAxisContinuous = np.linspace(0, timeLimit, pulseLen)
        
    def __setTimeAxisDiscrete(self,
                              pulseLen : int):
        """Creates the discrete-time axis (x-axis) for analysis and plots.
        Should be called from the constructor.

        Args:
            pulseLen (int): Expected pulse length (in sample units)
        """
        
        self.timeAxisDiscrete = np.linspace(0, pulseLen - 1, pulseLen)
        
        
    def __setAdcResolution(self,
                           newResolution : int):
        """Sets the working resolution (bits)

        Args:
            newResolution (int): Acquisition resolution (in bits)
        """
        self.adcResolution = newResolution
        
    
    def getPulseLen(self):
        """Returns the current number of samples of the pulses

        Returns:
            int: Number of samples of the pulses under analysis (in sample units)
        """
        
        return self.pulseLenSamples
        
        
    def getSamplingRate(self):
        """Returns the current sampling rate

        Returns:
            float: Current sampling rate (in Hz)
        """

        return self.samplingRate
    
   
    def getTimeAxisContinuous(self, useMicroSeconds = False):
        """Returns the precomputed continuous time axis

        Args:
            useMicroSeconds (bool, optional): Return time in microsecond units. Defaults: False

        Returns:
            np.array: Continuous-time axis array (either in second or microsecond units)
        """
        if useMicroSeconds:
            return self.timeAxisContinuous*1e6
        return self.timeAxisContinuous
    
    def getTimeAxisDiscrete(self):
        """Returns the precomputed discrete time axis

        Returns:
            np.array: Discrete-time axis array
        """
        
        return self.timeAxisDiscrete
    
    def getAdcResolution(self):
        """Returns the working resolution of the ADC

        Returns:
            int: Working resolution of the DAQ ADC
        """
        
        return self.adcResolution
