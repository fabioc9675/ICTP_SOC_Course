-makelib xcelium_lib/xilinx_vip -sv \
  "/opt-ictp/Xilinx/arg2/Vivado/2022.2/data/xilinx_vip/hdl/axi4stream_vip_axi4streampc.sv" \
  "/opt-ictp/Xilinx/arg2/Vivado/2022.2/data/xilinx_vip/hdl/axi_vip_axi4pc.sv" \
  "/opt-ictp/Xilinx/arg2/Vivado/2022.2/data/xilinx_vip/hdl/xil_common_vip_pkg.sv" \
  "/opt-ictp/Xilinx/arg2/Vivado/2022.2/data/xilinx_vip/hdl/axi4stream_vip_pkg.sv" \
  "/opt-ictp/Xilinx/arg2/Vivado/2022.2/data/xilinx_vip/hdl/axi_vip_pkg.sv" \
  "/opt-ictp/Xilinx/arg2/Vivado/2022.2/data/xilinx_vip/hdl/axi4stream_vip_if.sv" \
  "/opt-ictp/Xilinx/arg2/Vivado/2022.2/data/xilinx_vip/hdl/axi_vip_if.sv" \
  "/opt-ictp/Xilinx/arg2/Vivado/2022.2/data/xilinx_vip/hdl/clk_vip_if.sv" \
  "/opt-ictp/Xilinx/arg2/Vivado/2022.2/data/xilinx_vip/hdl/rst_vip_if.sv" \
-endlib
-makelib xcelium_lib/xil_defaultlib \
  "../../../bd/bd_labProject_part1/ipshared/8699/src/cdcc.vhd" \
  "../../../bd/bd_labProject_part1/ip/bd_labProject_part1_CDC_ADC_0/sim/bd_labProject_part1_CDC_ADC_0.vhd" \
  "../../../bd/bd_labProject_part1/ip/bd_labProject_part1_CDC_DAC_0/sim/bd_labProject_part1_CDC_DAC_0.vhd" \
-endlib
-makelib xcelium_lib/xil_defaultlib \
  "../../../bd/bd_labProject_part1/ip/bd_labProject_part1_CLK_GEN_0/bd_labProject_part1_CLK_GEN_0_clk_wiz.v" \
  "../../../bd/bd_labProject_part1/ip/bd_labProject_part1_CLK_GEN_0/bd_labProject_part1_CLK_GEN_0.v" \
-endlib
-makelib xcelium_lib/util_vector_logic_v2_0_2 \
  "../../../../project1_part1.gen/sources_1/bd/bd_labProject_part1/ipshared/3d84/hdl/util_vector_logic_v2_0_vl_rfs.v" \
-endlib
-makelib xcelium_lib/xil_defaultlib \
  "../../../bd/bd_labProject_part1/ip/bd_labProject_part1_util_vector_logic_0_0/sim/bd_labProject_part1_util_vector_logic_0_0.v" \
-endlib
-makelib xcelium_lib/xlconstant_v1_1_7 \
  "../../../../project1_part1.gen/sources_1/bd/bd_labProject_part1/ipshared/badb/hdl/xlconstant_v1_1_vl_rfs.v" \
-endlib
-makelib xcelium_lib/xil_defaultlib \
  "../../../bd/bd_labProject_part1/ip/bd_labProject_part1_xlconstant_0_0/sim/bd_labProject_part1_xlconstant_0_0.v" \
  "../../../bd/bd_labProject_part1/ip/bd_labProject_part1_crossLevelTrigger_0/sim/bd_labProject_part1_crossLevelTrigger_0.v" \
-endlib
-makelib xcelium_lib/xbip_utils_v3_0_10 \
  "../../../../project1_part1.gen/sources_1/bd/bd_labProject_part1/ipshared/364f/hdl/xbip_utils_v3_0_vh_rfs.vhd" \
-endlib
-makelib xcelium_lib/c_reg_fd_v12_0_6 \
  "../../../../project1_part1.gen/sources_1/bd/bd_labProject_part1/ipshared/edec/hdl/c_reg_fd_v12_0_vh_rfs.vhd" \
-endlib
-makelib xcelium_lib/c_mux_bit_v12_0_6 \
  "../../../../project1_part1.gen/sources_1/bd/bd_labProject_part1/ipshared/ecb4/hdl/c_mux_bit_v12_0_vh_rfs.vhd" \
-endlib
-makelib xcelium_lib/c_shift_ram_v12_0_14 \
  "../../../../project1_part1.gen/sources_1/bd/bd_labProject_part1/ipshared/2598/hdl/c_shift_ram_v12_0_vh_rfs.vhd" \
-endlib
-makelib xcelium_lib/xil_defaultlib \
  "../../../bd/bd_labProject_part1/ip/bd_labProject_part1_delayShiftReg_0/sim/bd_labProject_part1_delayShiftReg_0.vhd" \
-endlib
-makelib xcelium_lib/xil_defaultlib \
  "../../../bd/bd_labProject_part1/ip/bd_labProject_part1_oneShotTimer_0/sim/bd_labProject_part1_oneShotTimer_0.v" \
  "../../../bd/bd_labProject_part1/ip/bd_labProject_part1_pulsePositiveEdge_0/sim/bd_labProject_part1_pulsePositiveEdge_0.v" \
  "../../../bd/bd_labProject_part1/ip/bd_labProject_part1_ringBuffer_0/sim/bd_labProject_part1_ringBuffer_0.v" \
  "../../../bd/bd_labProject_part1/ip/bd_labProject_part1_timerAlwaysOn_0/sim/bd_labProject_part1_timerAlwaysOn_0.v" \
  "../../../bd/bd_labProject_part1/ip/bd_labProject_part1_util_vector_logic_0_1/sim/bd_labProject_part1_util_vector_logic_0_1.v" \
-endlib
-makelib xcelium_lib/xil_defaultlib \
  "../../../bd/bd_labProject_part1/ipshared/7b64/hdl/axil.vhdl" \
  "../../../bd/bd_labProject_part1/ipshared/7b64/hdl/axif.vhdl" \
  "../../../bd/bd_labProject_part1/ipshared/7b64/hdl/tdpram.vhdl" \
  "../../../bd/bd_labProject_part1/ipshared/7b64/hdl/graysync.vhdl" \
  "../../../bd/bd_labProject_part1/ipshared/7b64/hdl/fifo.vhdl" \
  "../../../bd/bd_labProject_part1/ipshared/7b64/hdl/comblock.vhdl" \
  "../../../bd/bd_labProject_part1/ipshared/7b64/hdl/axi_comblock.vhdl" \
  "../../../bd/bd_labProject_part1/ip/bd_labProject_part1_comblock_0_0/sim/bd_labProject_part1_comblock_0_0.vhd" \
-endlib
-makelib xcelium_lib/axi_infrastructure_v1_1_0 \
  "../../../../project1_part1.gen/sources_1/bd/bd_labProject_part1/ipshared/ec67/hdl/axi_infrastructure_v1_1_vl_rfs.v" \
-endlib
-makelib xcelium_lib/axi_vip_v1_1_13 -sv \
  "../../../../project1_part1.gen/sources_1/bd/bd_labProject_part1/ipshared/ffc2/hdl/axi_vip_v1_1_vl_rfs.sv" \
-endlib
-makelib xcelium_lib/processing_system7_vip_v1_0_15 -sv \
  "../../../../project1_part1.gen/sources_1/bd/bd_labProject_part1/ipshared/ee60/hdl/processing_system7_vip_v1_0_vl_rfs.sv" \
-endlib
-makelib xcelium_lib/xil_defaultlib \
  "../../../bd/bd_labProject_part1/ip/bd_labProject_part1_processing_system7_0_0/sim/bd_labProject_part1_processing_system7_0_0.v" \
-endlib
-makelib xcelium_lib/lib_cdc_v1_0_2 \
  "../../../../project1_part1.gen/sources_1/bd/bd_labProject_part1/ipshared/ef1e/hdl/lib_cdc_v1_0_rfs.vhd" \
-endlib
-makelib xcelium_lib/proc_sys_reset_v5_0_13 \
  "../../../../project1_part1.gen/sources_1/bd/bd_labProject_part1/ipshared/8842/hdl/proc_sys_reset_v5_0_vh_rfs.vhd" \
-endlib
-makelib xcelium_lib/xil_defaultlib \
  "../../../bd/bd_labProject_part1/ip/bd_labProject_part1_rst_ps7_0_50M_0/sim/bd_labProject_part1_rst_ps7_0_50M_0.vhd" \
-endlib
-makelib xcelium_lib/generic_baseblocks_v2_1_0 \
  "../../../../project1_part1.gen/sources_1/bd/bd_labProject_part1/ipshared/b752/hdl/generic_baseblocks_v2_1_vl_rfs.v" \
-endlib
-makelib xcelium_lib/fifo_generator_v13_2_7 \
  "../../../../project1_part1.gen/sources_1/bd/bd_labProject_part1/ipshared/83df/simulation/fifo_generator_vlog_beh.v" \
-endlib
-makelib xcelium_lib/fifo_generator_v13_2_7 \
  "../../../../project1_part1.gen/sources_1/bd/bd_labProject_part1/ipshared/83df/hdl/fifo_generator_v13_2_rfs.vhd" \
-endlib
-makelib xcelium_lib/fifo_generator_v13_2_7 \
  "../../../../project1_part1.gen/sources_1/bd/bd_labProject_part1/ipshared/83df/hdl/fifo_generator_v13_2_rfs.v" \
-endlib
-makelib xcelium_lib/axi_data_fifo_v2_1_26 \
  "../../../../project1_part1.gen/sources_1/bd/bd_labProject_part1/ipshared/3111/hdl/axi_data_fifo_v2_1_vl_rfs.v" \
-endlib
-makelib xcelium_lib/axi_register_slice_v2_1_27 \
  "../../../../project1_part1.gen/sources_1/bd/bd_labProject_part1/ipshared/f0b4/hdl/axi_register_slice_v2_1_vl_rfs.v" \
-endlib
-makelib xcelium_lib/axi_protocol_converter_v2_1_27 \
  "../../../../project1_part1.gen/sources_1/bd/bd_labProject_part1/ipshared/aeb3/hdl/axi_protocol_converter_v2_1_vl_rfs.v" \
-endlib
-makelib xcelium_lib/xil_defaultlib \
  "../../../bd/bd_labProject_part1/ip/bd_labProject_part1_auto_pc_0/sim/bd_labProject_part1_auto_pc_0.v" \
  "../../../bd/bd_labProject_part1/sim/bd_labProject_part1.v" \
-endlib
-makelib xcelium_lib/xil_defaultlib \
  glbl.v
-endlib

