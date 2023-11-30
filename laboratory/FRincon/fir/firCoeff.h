
int firCoeff[181] = {
		/*

	sampling frequency: 1000000 Hz

fixed point precision: 16 bits

* 0 Hz - 10000 Hz
  gain = 0
  desired attenuation = -30 dB
  actual attenuation = n/a

* 15000 Hz - 30000 Hz
  gain = 1
  desired ripple = 5 dB
  actual ripple = n/a

* 35000 Hz - 500000 Hz
  gain = 0
  desired attenuation = -30 dB
  actual attenuation = n/a

http://t-filter.engineerjs.com/

*/

		  -545,
		  -92,
		  -96,
		  -98,
		  -97,
		  -93,
		  -86,
		  -77,
		  -65,
		  -51,
		  -35,
		  -17,
		  1,
		  19,
		  36,
		  53,
		  68,
		  80,
		  90,
		  97,
		  101,
		  102,
		  99,
		  93,
		  84,
		  74,
		  61,
		  48,
		  35,
		  23,
		  13,
		  6,
		  2,
		  2,
		  8,
		  18,
		  33,
		  54,
		  80,
		  110,
		  144,
		  181,
		  218,
		  256,
		  292,
		  324,
		  352,
		  372,
		  384,
		  387,
		  378,
		  357,
		  324,
		  278,
		  218,
		  147,
		  65,
		  -28,
		  -128,
		  -235,
		  -345,
		  -455,
		  -563,
		  -666,
		  -760,
		  -843,
		  -911,
		  -963,
		  -995,
		  -1007,
		  -996,
		  -962,
		  -906,
		  -826,
		  -725,
		  -604,
		  -466,
		  -312,
		  -147,
		  26,
		  203,
		  380,
		  552,
		  716,
		  868,
		  1003,
		  1118,
		  1211,
		  1280,
		  1321,
		  1335,
		  1321,
		  1280,
		  1211,
		  1118,
		  1003,
		  868,
		  716,
		  552,
		  380,
		  203,
		  26,
		  -147,
		  -312,
		  -466,
		  -604,
		  -725,
		  -826,
		  -906,
		  -962,
		  -996,
		  -1007,
		  -995,
		  -963,
		  -911,
		  -843,
		  -760,
		  -666,
		  -563,
		  -455,
		  -345,
		  -235,
		  -128,
		  -28,
		  65,
		  147,
		  218,
		  278,
		  324,
		  357,
		  378,
		  387,
		  384,
		  372,
		  352,
		  324,
		  292,
		  256,
		  218,
		  181,
		  144,
		  110,
		  80,
		  54,
		  33,
		  18,
		  8,
		  2,
		  2,
		  6,
		  13,
		  23,
		  35,
		  48,
		  61,
		  74,
		  84,
		  93,
		  99,
		  102,
		  101,
		  97,
		  90,
		  80,
		  68,
		  53,
		  36,
		  19,
		  1,
		  -17,
		  -35,
		  -51,
		  -65,
		  -77,
		  -86,
		  -93,
		  -97,
		  -98,
		  -96,
		  -92,
		  -545
		};

