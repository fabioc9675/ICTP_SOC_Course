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
-makelib xcelium_lib/axi_infrastructure_v1_1_0 \
  "../../../../Lab2.gen/sources_1/bd/bd_comblock/ipshared/ec67/hdl/axi_infrastructure_v1_1_vl_rfs.v" \
-endlib
-makelib xcelium_lib/axi_vip_v1_1_13 -sv \
  "../../../../Lab2.gen/sources_1/bd/bd_comblock/ipshared/ffc2/hdl/axi_vip_v1_1_vl_rfs.sv" \
-endlib
-makelib xcelium_lib/processing_system7_vip_v1_0_15 -sv \
  "../../../../Lab2.gen/sources_1/bd/bd_comblock/ipshared/ee60/hdl/processing_system7_vip_v1_0_vl_rfs.sv" \
-endlib
-makelib xcelium_lib/xil_defaultlib \
  "../../../bd/bd_comblock/ip/bd_comblock_processing_system7_0_0/sim/bd_comblock_processing_system7_0_0.v" \
-endlib
-makelib xcelium_lib/xil_defaultlib \
  "../../../bd/bd_comblock/ipshared/7b64/hdl/axil.vhdl" \
  "../../../bd/bd_comblock/ipshared/7b64/hdl/axif.vhdl" \
  "../../../bd/bd_comblock/ipshared/7b64/hdl/tdpram.vhdl" \
  "../../../bd/bd_comblock/ipshared/7b64/hdl/graysync.vhdl" \
  "../../../bd/bd_comblock/ipshared/7b64/hdl/fifo.vhdl" \
  "../../../bd/bd_comblock/ipshared/7b64/hdl/comblock.vhdl" \
  "../../../bd/bd_comblock/ipshared/7b64/hdl/axi_comblock.vhdl" \
  "../../../bd/bd_comblock/ip/bd_comblock_comblock_0_0/sim/bd_comblock_comblock_0_0.vhd" \
-endlib
-makelib xcelium_lib/lib_cdc_v1_0_2 \
  "../../../../Lab2.gen/sources_1/bd/bd_comblock/ipshared/ef1e/hdl/lib_cdc_v1_0_rfs.vhd" \
-endlib
-makelib xcelium_lib/proc_sys_reset_v5_0_13 \
  "../../../../Lab2.gen/sources_1/bd/bd_comblock/ipshared/8842/hdl/proc_sys_reset_v5_0_vh_rfs.vhd" \
-endlib
-makelib xcelium_lib/xil_defaultlib \
  "../../../bd/bd_comblock/ip/bd_comblock_rst_ps7_0_100M_0/sim/bd_comblock_rst_ps7_0_100M_0.vhd" \
-endlib
-makelib xcelium_lib/xil_defaultlib \
  "../../../bd/bd_comblock/ip/bd_comblock_alu_0_0/sim/bd_comblock_alu_0_0.v" \
  "../../../bd/bd_comblock/ip/bd_comblock_FPDiv_8_23_F400_uid2_0_0/sim/bd_comblock_FPDiv_8_23_F400_uid2_0_0.v" \
-endlib
-makelib xcelium_lib/xlconstant_v1_1_7 \
  "../../../../Lab2.gen/sources_1/bd/bd_comblock/ipshared/badb/hdl/xlconstant_v1_1_vl_rfs.v" \
-endlib
-makelib xcelium_lib/xil_defaultlib \
  "../../../bd/bd_comblock/ip/bd_comblock_xlconstant_0_0/sim/bd_comblock_xlconstant_0_0.v" \
-endlib
-makelib xcelium_lib/xlconcat_v2_1_4 \
  "../../../../Lab2.gen/sources_1/bd/bd_comblock/ipshared/4b67/hdl/xlconcat_v2_1_vl_rfs.v" \
-endlib
-makelib xcelium_lib/xil_defaultlib \
  "../../../bd/bd_comblock/ip/bd_comblock_xlconcat_0_0/sim/bd_comblock_xlconcat_0_0.v" \
  "../../../bd/bd_comblock/ip/bd_comblock_xlconcat_1_0/sim/bd_comblock_xlconcat_1_0.v" \
-endlib
-makelib xcelium_lib/xlslice_v1_0_2 \
  "../../../../Lab2.gen/sources_1/bd/bd_comblock/ipshared/11d0/hdl/xlslice_v1_0_vl_rfs.v" \
-endlib
-makelib xcelium_lib/xil_defaultlib \
  "../../../bd/bd_comblock/ip/bd_comblock_xlslice_0_0/sim/bd_comblock_xlslice_0_0.v" \
  "../../../bd/bd_comblock/ip/bd_comblock_xlslice_1_0/sim/bd_comblock_xlslice_1_0.v" \
  "../../../bd/bd_comblock/ip/bd_comblock_xlconcat_0_1/sim/bd_comblock_xlconcat_0_1.v" \
-endlib
-makelib xcelium_lib/generic_baseblocks_v2_1_0 \
  "../../../../Lab2.gen/sources_1/bd/bd_comblock/ipshared/b752/hdl/generic_baseblocks_v2_1_vl_rfs.v" \
-endlib
-makelib xcelium_lib/fifo_generator_v13_2_7 \
  "../../../../Lab2.gen/sources_1/bd/bd_comblock/ipshared/83df/simulation/fifo_generator_vlog_beh.v" \
-endlib
-makelib xcelium_lib/fifo_generator_v13_2_7 \
  "../../../../Lab2.gen/sources_1/bd/bd_comblock/ipshared/83df/hdl/fifo_generator_v13_2_rfs.vhd" \
-endlib
-makelib xcelium_lib/fifo_generator_v13_2_7 \
  "../../../../Lab2.gen/sources_1/bd/bd_comblock/ipshared/83df/hdl/fifo_generator_v13_2_rfs.v" \
-endlib
-makelib xcelium_lib/axi_data_fifo_v2_1_26 \
  "../../../../Lab2.gen/sources_1/bd/bd_comblock/ipshared/3111/hdl/axi_data_fifo_v2_1_vl_rfs.v" \
-endlib
-makelib xcelium_lib/axi_register_slice_v2_1_27 \
  "../../../../Lab2.gen/sources_1/bd/bd_comblock/ipshared/f0b4/hdl/axi_register_slice_v2_1_vl_rfs.v" \
-endlib
-makelib xcelium_lib/axi_protocol_converter_v2_1_27 \
  "../../../../Lab2.gen/sources_1/bd/bd_comblock/ipshared/aeb3/hdl/axi_protocol_converter_v2_1_vl_rfs.v" \
-endlib
-makelib xcelium_lib/xil_defaultlib \
  "../../../bd/bd_comblock/ip/bd_comblock_auto_pc_0/sim/bd_comblock_auto_pc_0.v" \
  "../../../bd/bd_comblock/sim/bd_comblock.v" \
-endlib
-makelib xcelium_lib/xil_defaultlib \
  glbl.v
-endlib

