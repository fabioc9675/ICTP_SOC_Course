##
# @ Waveform synthesis library for MLab/ICTP workshops
#
# Synthesizes multiple waveforms matching the ADC/DAC specs.
# Essentially a wrapper of numpy and scipy.signal libraries
# adapted to Jupyter Notebook and Python with a common interface.
#
# - Created: Ivan Morales on 26/10/2023
# - Modified: ...
# MLab, ICTP (2023)

import numpy as np
import scipy.signal

class Waveforms(object):
    """
    ! @brief Library of pulse shapes for AD1/DA1 lab exercise
    """

    def __init__(self,
                 length : int = 1024,
                 samplingFreq : int = int(1e6),
                 dacBits : int = 8
                 ):
        """Constructor of the library class. Gets main working parameters for init

        Args:
            length (int, optional): Total number of samples of the waveform. Defaults to 1024.
            samplingFreq (int, optional): Sampling frequency of the ADC/DAC. Defaults to int(1e6).
            dacBits (int, optional): DAC resolution (in bits). Defaults to 8.
        """
        self.__setSamplingFrequency(samplingFreq)
        self.__setX(length)
        self.__setDacResolution(dacBits)
        self.__setListOfWaveforms(
            {
            'sine' : np.sin,
            'sawtooth' : scipy.signal.sawtooth,
            'square' : scipy.signal.square,
            'noise' : np.random.normal
            }
            )


    # =======================
    # /   Public methods   \
    # =======================
    
    def computeWaveform(self,
                 waveformName = 'sine',
                 frequencyHz : float = 10e3,
                 amplitude : int = 250):
        """Computes a waveform from a list of available functions
        Available waveforms are:
            - 'sine': synthesizes a sinusoidal wave with defined amplitude and frequency
            - 'sawtooth': generates a sawtooth wave with defined amplitude and frequency
            - 'square': generates a square wave with defined amplitude and frequency
            - 'noise': generates additive white Gaussian noise with a sigma equal to the amplitude parameter

        Args:
            waveformName (str, optional): Type of waveform from the available list. Defaults to 'sine'.
            frequencyHz (float, optional): Expected waveform frequency (Hz). Defaults to 10e3.
            amplitude (int, optional): Expected maximum amplitude. Defaults to 255 (8 bits).

        Returns:
            numpy.array: values of the generated waveform as individual samples
        """
          
        # In case the user tries to use an undefined waveform
        try:
            func = self.waveforms[waveformName]
        except KeyError as e:
            print('Error: waveform does not exist. Choose one from list:\n\n\
                   ' +  str(self.getListOfWaveforms()) + ' \n\n \
                 Generating default waveform: sine')
            func = self.waveforms['sine']
        
        # Getting the parameters to compute the waveform
        x = self.__getX()
        fs = self.__getSamplingFrequency()
        f = frequencyHz
        
        # Compute DAC range using the resolution (number of bits)
        dacRange = self.__computeDacRange(self.__getDacResolution())
        
        # Compute Vcc/2 to output the data in the middle of the DAC analog range
        midAmplitude = dacRange // 2
        
        # Amplitude verification to avoid saturation of DAC output
        a = amplitude
        if a > dacRange:
            print(f"Warning: waveform amplitude cannot be higher than {dacRange}. Setting amplitude to maximum DAC range.")
            a = dacRange
        
        a //= 2
        
        # Generate the waveform with the requested amplitude and frequency
        if func != self.waveforms['noise']: # If the chosen waveform is not noise
            y = a*func(2*np.pi*f*x/fs) + midAmplitude
        else: # Otherwise
            if(a > dacRange//8):
                a = dacRange//8
            y = np.random.normal(midAmplitude, a, size = self.__getWaveformLen())
            
        return y.astype(np.int16)
    
    
    def computeSweep(self,
                     freqStart : float = 30e3,
                     freqEnd : float = 5e3,
                     amplitude : int = 250
                     ):
        """Generates a sine wave with a sweeping frequency range

        Args:
            freqStart (float, optional): Starting frequency of the sweep. Defaults to 30e3.
            freqEnd (float, optional): Ending frequency of the sweep. Defaults to 5e3.
            amplitude (int, optional): Sine amplitude. Defaults to 255 (8 bits).

        Returns:
            numpy.array: values of the generated sweep as individual samples
        """
        
        # Compute DAC range using the resolution (number of bits)
        dacRange = self.__computeDacRange(self.__getDacResolution())
        
        # Compute Vcc/2 to output the data in the middle of the DAC analog range
        midAmplitude = dacRange // 2
        
        # Retrieving the other parameters to compute the waveform
        x = self.__getX()
        fs = self.__getSamplingFrequency()
        
        # Amplitude verification to avoid saturation of DAC output
        a = amplitude
        if a > dacRange:
            print(f"Warning: waveform amplitude cannot be higher than {dacRange}. Setting amplitude to maximum DAC range.")
            a = dacRange
        
        a //= 2
        
        y = a*scipy.signal.chirp(x, freqStart/fs, len(x), freqEnd/fs) + midAmplitude
        return y.astype(np.int16)
    

    def getListOfWaveforms(self):
        """Returns a list of the available waveforms in human-readable style

        Returns:
            list: available waveform names to be input by the user
        """
        return list(self.waveforms.keys())
    
    
    # ===========================
    # /   Getters and setters   \
    # ===========================
    
    # Private methods
    
    def __getDacResolution(self):
        """Returns the DAC resolution (in bits)

        Returns:
            int: DAC resolution (in bits)
        """
        return self.dacBits
    
    
    def __setDacResolution(self, newDacResolution : int):
        """Sets the DAC resolution in bits

        Args:
            newDacResolution (int): New DAC resolution (in bits)
        """
        self.dacBits = newDacResolution
        
    def __computeDacRange(self, resolutionBits : int):
        """Compute the DAC digital range based on the number of bits. Assumes lower value = 0

        Args:
            resolutionBits (int): DAC resolution in bits

        Returns:
            int: DAC digital range (starting from 0)
        """
        return int(2**resolutionBits) - 1
    
    
    def __getListOfWaveforms(self):
        """Returns a dictionary of the available waveform names and functions
        
        Returns:
            dict: Available waveforms
        """
        return self.waveforms
    
    
    def __setListOfWaveforms(self, newList : dict):
        """Updates the available lists of waveforms to be synthesized
        The dictionary keys are the displayed names, whereas the values
        contain the plain functions (such as np.sin) to be executed

        Args:
            newList (dict): The updated list of waveforms
        """
        self.waveforms = newList
    
    
    def __getSamplingFrequency(self):
        """Returns the current sampling frequency

        Returns:
            float: Current sampling frequency
        """
        return self.samplingFreq
    
    def __setSamplingFrequency(self, newFs):
        """Sets a new sampling frequency

        Args:
            newFs (float): New sampling frequency to be set
        """
        self.samplingFreq = newFs
    
    def __getX(self):
        """Returns the current "time axis" linear space for the waveform generation

        Returns:
            iterable: "The time axis as a numpy array"
        """
        return self.x
    
    def __setX(self, newLen : np.int32):
        """Sets a new general time axis for the waveform generation

        Args:
            newX (int): The new time axis length for the waveform generation
        """
        self.__setWaveformLen(newLen)
        self.x = np.linspace(0, newLen - 1, newLen).astype(np.int32)
        
    def __getWaveformLen(self):
        """Returns the current length of the generated waveforms

        Returns:
            int: Current length of the waveforms
        """
        return self.length
    
    def __setWaveformLen(self, newLen : int):
        """Sets the current length of the waveforms to be generated

        Args:
            newLen (int): The new length of the waveforms to be generated
        """
        self.length = newLen
        
        
    
