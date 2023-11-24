# 1 "LAB_Fir/src/firTop.cpp"
# 1 "<built-in>" 1
# 1 "<built-in>" 3
# 375 "<built-in>" 3
# 1 "<command line>" 1
# 1 "<built-in>" 2
# 1 "/opt-ictp/Xilinx/arg2/Vitis_HLS/2022.2/common/technology/autopilot/etc/autopilot_ssdm_op.h" 1
# 108 "/opt-ictp/Xilinx/arg2/Vitis_HLS/2022.2/common/technology/autopilot/etc/autopilot_ssdm_op.h"
extern "C" {






    void _ssdm_op_IfRead(...) __attribute__ ((nothrow)) __attribute__((overloadable));
    void _ssdm_op_IfWrite(...) __attribute__ ((nothrow)) __attribute__((overloadable));
    unsigned int __attribute__ ((bitwidth(1))) _ssdm_op_IfNbRead(...) __attribute__ ((nothrow)) __attribute__((overloadable));
    unsigned int __attribute__ ((bitwidth(1))) _ssdm_op_IfNbWrite(...) __attribute__ ((nothrow)) __attribute__((overloadable));
    unsigned int __attribute__ ((bitwidth(1))) _ssdm_op_IfCanRead(...) __attribute__ ((nothrow)) __attribute__((overloadable));
    unsigned int __attribute__ ((bitwidth(1))) _ssdm_op_IfCanWrite(...) __attribute__ ((nothrow)) __attribute__((overloadable));


    void _ssdm_StreamRead(...) __attribute__ ((nothrow)) __attribute__((overloadable));
    void _ssdm_StreamWrite(...) __attribute__ ((nothrow)) __attribute__((overloadable));
    unsigned int __attribute__ ((bitwidth(1))) _ssdm_StreamNbRead(...) __attribute__ ((nothrow)) __attribute__((overloadable));
    unsigned int __attribute__ ((bitwidth(1))) _ssdm_StreamNbWrite(...) __attribute__ ((nothrow)) __attribute__((overloadable));
    unsigned int __attribute__ ((bitwidth(1))) _ssdm_StreamCanRead(...) __attribute__ ((nothrow)) __attribute__((overloadable));
    unsigned int __attribute__ ((bitwidth(1))) _ssdm_StreamCanWrite(...) __attribute__ ((nothrow)) __attribute__((overloadable));
    unsigned _ssdm_StreamSize(...) __attribute__ ((nothrow)) __attribute__((overloadable));
    void _ssdm_op_ReadReq(...) __attribute__ ((nothrow)) __attribute__((overloadable));
    void _ssdm_op_Read(...) __attribute__ ((nothrow)) __attribute__((overloadable));
    void _ssdm_op_WriteReq(...) __attribute__ ((nothrow)) __attribute__((overloadable));
    void _ssdm_op_Write(...) __attribute__ ((nothrow)) __attribute__((overloadable));
    unsigned int __attribute__ ((bitwidth(1))) _ssdm_op_NbReadReq(...) __attribute__ ((nothrow)) __attribute__((overloadable));
    unsigned int __attribute__ ((bitwidth(1))) _ssdm_op_CanReadReq(...) __attribute__ ((nothrow)) __attribute__((overloadable));
    unsigned int __attribute__ ((bitwidth(1))) _ssdm_op_NbWriteReq(...) __attribute__ ((nothrow)) __attribute__((overloadable));
    unsigned int __attribute__ ((bitwidth(1))) _ssdm_op_CanWriteReq(...) __attribute__ ((nothrow)) __attribute__((overloadable));




    void _ssdm_op_MemShiftRead(...) __attribute__ ((nothrow)) __attribute__((overloadable));

    void _ssdm_op_PrintNone(...) __attribute__ ((nothrow)) __attribute__((overloadable));
    void _ssdm_op_PrintInt(...) __attribute__ ((nothrow)) __attribute__((overloadable));
    void _ssdm_op_PrintDouble(...) __attribute__ ((nothrow)) __attribute__((overloadable));

    void _ssdm_op_Wait(...) __attribute__ ((nothrow)) __attribute__((overloadable));
    void _ssdm_op_Poll(...) __attribute__ ((nothrow)) __attribute__((overloadable));

    void _ssdm_op_Return(...) __attribute__ ((nothrow)) __attribute__((overloadable));


    void _ssdm_op_SpecSynModule(...) __attribute__ ((nothrow)) __attribute__((overloadable));
    void _ssdm_op_SpecTopModule(...) __attribute__ ((nothrow)) __attribute__((overloadable));
    void _ssdm_op_SpecProcessDecl(...) __attribute__ ((nothrow)) __attribute__((overloadable));
    void _ssdm_op_SpecProcessDef(...) __attribute__ ((nothrow)) __attribute__((overloadable));
    void _ssdm_op_SpecPort(...) __attribute__ ((nothrow)) __attribute__((overloadable));
    void _ssdm_op_SpecConnection(...) __attribute__ ((nothrow)) __attribute__((overloadable));
    void _ssdm_op_SpecChannel(...) __attribute__ ((nothrow)) __attribute__((overloadable));
    void _ssdm_op_SpecSensitive(...) __attribute__ ((nothrow)) __attribute__((overloadable));
    void _ssdm_op_SpecModuleInst(...) __attribute__ ((nothrow)) __attribute__((overloadable));
    void _ssdm_op_SpecPortMap(...) __attribute__ ((nothrow)) __attribute__((overloadable));

    void _ssdm_op_SpecReset(...) __attribute__ ((nothrow)) __attribute__((overloadable));

    void _ssdm_op_SpecPlatform(...) __attribute__ ((nothrow)) __attribute__((overloadable));
    void _ssdm_op_SpecClockDomain(...) __attribute__ ((nothrow)) __attribute__((overloadable));
    void _ssdm_op_SpecPowerDomain(...) __attribute__ ((nothrow)) __attribute__((overloadable));

    int _ssdm_op_SpecRegionBegin(...) __attribute__ ((nothrow)) __attribute__((overloadable));
    int _ssdm_op_SpecRegionEnd(...) __attribute__ ((nothrow)) __attribute__((overloadable));

    void _ssdm_op_SpecLoopName(...) __attribute__ ((nothrow)) __attribute__((overloadable));

    void _ssdm_op_SpecLoopTripCount(...) __attribute__ ((nothrow)) __attribute__((overloadable));

    int _ssdm_op_SpecStateBegin(...) __attribute__ ((nothrow)) __attribute__((overloadable));
    int _ssdm_op_SpecStateEnd(...) __attribute__ ((nothrow)) __attribute__((overloadable));

    void _ssdm_op_SpecInterface(...) __attribute__ ((nothrow)) __attribute__((overloadable));

    void _ssdm_op_SpecPipeline(...) __attribute__ ((nothrow)) __attribute__((overloadable));
    void _ssdm_op_SpecDataflowPipeline(...) __attribute__ ((nothrow)) __attribute__((overloadable));


    void _ssdm_op_SpecLatency(...) __attribute__ ((nothrow)) __attribute__((overloadable));
    void _ssdm_op_SpecParallel(...) __attribute__ ((nothrow)) __attribute__((overloadable));
    void _ssdm_op_SpecProtocol(...) __attribute__ ((nothrow)) __attribute__((overloadable));
    void _ssdm_op_SpecOccurrence(...) __attribute__ ((nothrow)) __attribute__((overloadable));

    void _ssdm_op_SpecResource(...) __attribute__ ((nothrow)) __attribute__((overloadable));
    void _ssdm_op_SpecResourceLimit(...) __attribute__ ((nothrow)) __attribute__((overloadable));
    void _ssdm_op_SpecCHCore(...) __attribute__ ((nothrow)) __attribute__((overloadable));
    void _ssdm_op_SpecFUCore(...) __attribute__ ((nothrow)) __attribute__((overloadable));
    void _ssdm_op_SpecIFCore(...) __attribute__ ((nothrow)) __attribute__((overloadable));
    void _ssdm_op_SpecIPCore(...) __attribute__ ((nothrow)) __attribute__((overloadable));
    void _ssdm_op_SpecMemCore(...) __attribute__ ((nothrow)) __attribute__((overloadable));

    void _ssdm_op_SpecExt(...) __attribute__ ((nothrow)) __attribute__((overloadable));




    void _ssdm_SpecArrayDimSize(...) __attribute__ ((nothrow)) __attribute__((overloadable));

    void _ssdm_RegionBegin(...) __attribute__ ((nothrow)) __attribute__((overloadable));
    void _ssdm_RegionEnd(...) __attribute__ ((nothrow)) __attribute__((overloadable));

    void _ssdm_Unroll(...) __attribute__ ((nothrow)) __attribute__((overloadable));
    void _ssdm_UnrollRegion(...) __attribute__ ((nothrow)) __attribute__((overloadable));

    void _ssdm_InlineAll(...) __attribute__ ((nothrow)) __attribute__((overloadable));
    void _ssdm_InlineLoop(...) __attribute__ ((nothrow)) __attribute__((overloadable));
    void _ssdm_Inline(...) __attribute__ ((nothrow)) __attribute__((overloadable));
    void _ssdm_InlineSelf(...) __attribute__ ((nothrow)) __attribute__((overloadable));
    void _ssdm_InlineRegion(...) __attribute__ ((nothrow)) __attribute__((overloadable));

    void _ssdm_SpecArrayMap(...) __attribute__ ((nothrow)) __attribute__((overloadable));
    void _ssdm_SpecArrayPartition(...) __attribute__ ((nothrow)) __attribute__((overloadable));
    void _ssdm_SpecArrayReshape(...) __attribute__ ((nothrow)) __attribute__((overloadable));

    void _ssdm_SpecStream(...) __attribute__ ((nothrow)) __attribute__((overloadable));

    void _ssdm_op_SpecStable(...) __attribute__ ((nothrow)) __attribute__((overloadable));
    void _ssdm_op_SpecStableContent(...) __attribute__ ((nothrow)) __attribute__((overloadable));

    void _ssdm_op_SpecBindPort(...) __attribute__ ((nothrow)) __attribute__((overloadable));

    void _ssdm_op_SpecPipoDepth(...) __attribute__ ((nothrow)) __attribute__((overloadable));

    void _ssdm_SpecExpr(...) __attribute__ ((nothrow)) __attribute__((overloadable));
    void _ssdm_SpecExprBalance(...) __attribute__ ((nothrow)) __attribute__((overloadable));

    void _ssdm_SpecDependence(...) __attribute__ ((nothrow)) __attribute__((overloadable));

    void _ssdm_SpecLoopMerge(...) __attribute__ ((nothrow)) __attribute__((overloadable));
    void _ssdm_SpecLoopFlatten(...) __attribute__ ((nothrow)) __attribute__((overloadable));
    void _ssdm_SpecLoopRewind(...) __attribute__ ((nothrow)) __attribute__((overloadable));

    void _ssdm_SpecFuncInstantiation(...) __attribute__ ((nothrow)) __attribute__((overloadable));
    void _ssdm_SpecFuncBuffer(...) __attribute__ ((nothrow)) __attribute__((overloadable));
    void _ssdm_SpecFuncExtract(...) __attribute__ ((nothrow)) __attribute__((overloadable));
    void _ssdm_SpecConstant(...) __attribute__ ((nothrow)) __attribute__((overloadable));

    void _ssdm_DataPack(...) __attribute__ ((nothrow)) __attribute__((overloadable));
    void _ssdm_SpecDataPack(...) __attribute__ ((nothrow)) __attribute__((overloadable));

    void _ssdm_op_SpecBitsMap(...) __attribute__ ((nothrow)) __attribute__((overloadable));
    void _ssdm_op_SpecLicense(...) __attribute__ ((nothrow)) __attribute__((overloadable));

    void __xilinx_ip_top(...) __attribute__ ((nothrow)) __attribute__((overloadable));


}
# 2 "<built-in>" 2
# 1 "LAB_Fir/src/firTop.cpp" 2
# 48 "LAB_Fir/src/firTop.cpp"
# 1 "LAB_Fir/src/firCoeff.h" 1
# 25 "LAB_Fir/src/firCoeff.h"
int firCoeff[181] = {
  -103,
  -120,
  -146,
  -135,
  -70,
  50,
  209,
  374,
  506,
  568,
  537,
  419,
  243,
  57,
  -87,
  -151,
  -122,
  -23,
  103,
  202,
  232,
  178,
  59,
  -80,
  -185,
  -212,
  -148,
  -18,
  127,
  227,
  238,
  152,
  -2,
  -162,
  -262,
  -257,
  -144,
  36,
  212,
  309,
  282,
  136,
  -77,
  -271,
  -363,
  -308,
  -120,
  130,
  343,
  425,
  333,
  95,
  -200,
  -432,
  -498,
  -358,
  -57,
  291,
  543,
  585,
  382,
  -1,
  -415,
  -688,
  -693,
  -402,
  88,
  589,
  889,
  838,
  421,
  -226,
  -852,
  -1188,
  -1051,
  -435,
  464,
  1303,
  1709,
  1428,
  446,
  -963,
  -2287,
  -2926,
  -2384,
  -453,
  2682,
  6452,
  10046,
  12625,
  13562,
  12625,
  10046,
  6452,
  2682,
  -453,
  -2384,
  -2926,
  -2287,
  -963,
  446,
  1428,
  1709,
  1303,
  464,
  -435,
  -1051,
  -1188,
  -852,
  -226,
  421,
  838,
  889,
  589,
  88,
  -402,
  -693,
  -688,
  -415,
  -1,
  382,
  585,
  543,
  291,
  -57,
  -358,
  -498,
  -432,
  -200,
  95,
  333,
  425,
  343,
  130,
  -120,
  -308,
  -363,
  -271,
  -77,
  136,
  282,
  309,
  212,
  36,
  -144,
  -257,
  -262,
  -162,
  -2,
  152,
  238,
  227,
  127,
  -18,
  -148,
  -212,
  -185,
  -80,
  59,
  178,
  232,
  202,
  103,
  -23,
  -122,
  -151,
  -87,
  57,
  243,
  419,
  537,
  568,
  506,
  374,
  209,
  50,
  -70,
  -135,
  -146,
  -120,
  -103
};
# 49 "LAB_Fir/src/firTop.cpp" 2
# 1 "LAB_Fir/src/firTop.h" 1






typedef int coef_t;
typedef int data_t;
typedef int acc_t;

void fir (
  data_t *y,

  data_t x
  );
# 50 "LAB_Fir/src/firTop.cpp" 2

__attribute__((sdx_kernel("fir", 0))) void fir (
  data_t *y,
  data_t *x
  ) {
#line 15 "/home/argo49/smr3891/labs/LAB_Fir/solution1/csynth.tcl"
#pragma HLSDIRECTIVE TOP name=fir
# 54 "LAB_Fir/src/firTop.cpp"


#pragma HLS DATAFLOW
#pragma HLS ARRAY_PARTITION dim=1 type=complete variable=firCoeff

#pragma HLS INTERFACE mode=ap_ctrl_hs port=return
#pragma HLS INTERFACE mode=axis register_mode=both port=y register
#pragma HLS INTERFACE mode=axis register_mode=both port=x register


static data_t shift_reg[181];
#pragma HLS ARRAY_PARTITION dim=1 type=complete variable=shift_reg

 acc_t acc;
  data_t data;
  int i;

  acc=0;
  Shift_Accum_Loop: for (i=181 -1;i>=0;i--) {
#pragma HLS PIPELINE II=1

 if (i==0) {
   shift_reg[0]= *x;
   data = *x;
    } else {
   shift_reg[i]=shift_reg[i-1];
   data = shift_reg[i];
    }
    acc+=data*firCoeff[i];;
  }
  acc = acc >> 16;
  *y=acc;
}
