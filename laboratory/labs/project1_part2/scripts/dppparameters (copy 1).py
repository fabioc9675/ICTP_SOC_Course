##
# @ DPP parameters conversion library for MLab/ICTP workshops
#
# Provides a 32-bit unsigned representation of the working parameters
# for the DPP working blocks (pulse shaper and peak detector).
#
# Based on the Matlab script provided by Mladen Bogovac
#
# - Created: Romina Molina and Ivan Morales on 15/11/2023
# - Modified: ...
# MLab, ICTP (2023)

from fixedpoint import FixedPoint
import numpy as np
import math

class DppParameters(object):
    
    def __init__(self, samplingRate : float):
        """Constructor - setting up sampling frequency (fs)

        Args:
            samplingRate (float): Sampling rate of the ADC
        """
        
        self.__setSamplingRate(samplingRate)
        self.__setClkPeriod(1.0/samplingRate)
        
   
    def computeParamsShaper(self,
                            tauD : float,
                            tauR : float,
                            digitalGain : float = 2.0,
                            dcOffset : float = 0.0,
                            amplitudeVolts : float = 0.7,
                            invertPulse : bool = False):
        """Compute pulse shaper parameters in 32-bit unsigned amplitude
        and discrete-time representation

        Args:
            tauD (float): Decay time constant of the detector (in seconds)
            tauR (float): Rise time constant of the detector (in seconds)
            digitalGain (float): Amplitude factor gain to adjust the digital spectrum scale. Defaults to 2.0.
            dcOffset (float): Expected DC offset of the input signal (in mV). Defaults to 0.0.
            amplitudeVolts (float, optional): Average pulse amplitude. Defaults to 0.7.
            invertPulse (bool, optional): Should we invert pulse shape?. Defaults to False.
        """
        
        tClk = self.getClkPeriod()
        flags = np.int32(invertPulse)
        gain_a = amplitudeVolts
        
        invertoffset_dc_baseline = dcOffset
        
        if tauR == 0.00:
            gain_sp = 1.0
            b20 = 0
            b00 = 1.0
            
        else:
            tPeak = tauD*tauR/(tauD-tauR)*math.log(tauD/tauR)
            m = tPeak/tClk
            m1 = math.ceil(m)
            m2 = math.floor(m)
            a1 = math.exp(-m1*tClk/tauD)-math.exp(-m1*tClk/tauR)
            a2 = math.exp(-m2*tClk/tauD)-math.exp(-m2*tClk/tauR)

            if a1>a2 :
                gain_s = a1
            else:
                gain_s = a2

            gain_z = math.exp(-tClk/tauD)-math.exp(-tClk/tauR) #theory
            gain_sp=(gain_s/gain_z)
            b20 = math.exp(-tClk/tauR)
            b00 = gain_sp
        
            b10 = math.exp(-tClk/tauD)   
            tauPk = 2.5e-6
            tauPk_top = 0.1e-6
            na = (tauPk)/tClk
            nb = (tauPk+tauPk_top)/tClk
            na_inv = (1/na)*digitalGain
            
            dc_offset = invertoffset_dc_baseline*(1./nb - gain_sp*(1-b20)*(1-b10))

            b00_32_24 = FixedPoint(b00, False, 32, 24)
            b00_32_0 = FixedPoint(b00_32_24, False, 32, 0)   
            

            b10_lo = FixedPoint(b10, False, 24, 24)
            b10_hi = FixedPoint(0, False, 8, 0)   
            b10_32_0 = self.__concatValues(b10_hi, b10_lo)
            
            
            b20_lo = FixedPoint(b20, False, 24, 24)
            b20_hi = FixedPoint(0, False, 8, 0)
            b20_32_0 = self.__concatValues(b20_hi, b20_lo)
            

            na_32_0 = FixedPoint(na-3, False, 32, 0)
            

            nb_32_0 = FixedPoint(nb-3, False, 32, 0)
            

            na_inv_32_25 = FixedPoint(na_inv, False, 32, 25)
            na_inv_32_0 = FixedPoint(na_inv_32_25, False, 32, 0)   
            

            dc_offset_lo = FixedPoint(dc_offset, True, 26, 24)
            dc_offset_hi = FixedPoint(0, True, 8, 0)   
            dc_offset_32_0 = self.__concatValues(dc_offset_hi, dc_offset_lo)
            

            invertoffset_dc_offset_lo = FixedPoint(dc_offset, True, 26, 24)
            invertoffset_dc_offset_hi = FixedPoint(0, True, 8, 0)   
            invertoffset_dc_offset_32_0 = self.__concatValues(invertoffset_dc_offset_hi, invertoffset_dc_offset_lo)
            

            flags_32_0 = FixedPoint(flags, False, 32, 0)
            # print(f"r9_flags_32_0 = {flags_32_0}")


            print(f"r1_shaper_b10_32_0 = {b10_32_0}")
            print(f"r2_shaper_na_32_0 = {na_32_0}")
            print(f"r3_shaper_nb_32_0 = {nb_32_0}")
            print(f"r4_shaper_na_inv_32_0 = {na_inv_32_0}")
            print(f"r5_shaper_b00_32_0 = {b00_32_0}")
            print(f"r6_shaper_b20_32_0 = {b20_32_0}")
            print(f"r7_shaper_dc_offset_32_0 = {dc_offset_32_0}")
            print(f"r8_shaper_invertoffset_dc_offset_32_0 = {invertoffset_dc_offset_32_0}")


   
    def computeParamsPeakD(self,
                           tauPk : float = 2.5e-6,
                           tauPk_top : float = 0.1e-6,
                           x_min : float = 0.03,
                           x_max : float = 1.999,
                           x_noise : float = 0.02):
        """Computes peak detector IP core parameters

        Args:
            tauPk (float, optional): Pulse shaper slope constant. Defaults to 2.5e-6.
            tauPk_top (float, optional): Pulse shaper peak delay time. Defaults to 0.1e-6.
            x_min (float, optional): Minimum amplitude value (volts). Defaults to 0.03.
            x_max (float, optional): Maximum amplitude value (volts). Defaults to 1.999.
            x_noise (float, optional): Noise amplitude (volts). Defaults to 0.015.
        """
        
        clkPeriod = self.getClkPeriod()
        
        na = tauPk/clkPeriod
        nb = (tauPk + tauPk_top)/clkPeriod
        
        x_delay = math.ceil(na*0.2 + (na-nb))
        x_delay_32_0 = FixedPoint(x_delay - 3, False, 32, 0)
        
        
        x_noise_lo = FixedPoint(x_noise, True, 16, 14)
        x_noise_hi = FixedPoint(0, True, 8, 0)   
        x_noise_32_0 = self.__concatValues(x_noise_hi, x_noise_lo)
        

        x_min_lo = FixedPoint(x_min, True, 16, 14)
        x_min_hi = FixedPoint(0, True, 8, 0)   
        x_min_32_0 = self.__concatValues(x_min_hi, x_min_lo)

        x_max_lo = FixedPoint(x_max, True, 16, 14)
        x_max_hi = FixedPoint(0, True, 8, 0)   
        x_max_32_0 = self.__concatValues(x_max_hi, x_max_lo)

        x_min_max_32_0 = (x_min_32_0) + (x_max_32_0 << 16)
        
        print(f"r1_peakD_x_delay_32_0 = {x_delay_32_0}")
        print(f"r2_peakD_x_noise_32_0 = {x_noise_32_0}")
        print(f"r3_peakD_x_min_max_32_0 = {x_min_max_32_0}")

    
    def __concatValues(self, highByte, lowByte):
        """Concatenates two bytes nibbles into a 16-bit nibble
        
        Args:
            highByte (int): High byte of the nibble (MSB)
            lowByte (int): Low byte of the nibble (LSB)
            
        """
        
        result = str(highByte) + str(lowByte)
        return int(result, 16)    
    
        
    """
    ===================
    Setters and getters
    ===================
    """

    def getSamplingRate(self):
        return self.samplingRate
    
    def getClkPeriod(self):
        return self.clkPeriod
    
    def __setSamplingRate(self, newFs : float):
        self.samplingRate = newFs
        
    def __setClkPeriod(self, newClkT : float):
        self.clkPeriod = newClkT
        