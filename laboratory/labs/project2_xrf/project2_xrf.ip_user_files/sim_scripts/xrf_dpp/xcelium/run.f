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
-makelib xcelium_lib/xpm -sv \
  "/opt-ictp/Xilinx/arg2/Vivado/2022.2/data/ip/xpm/xpm_fifo/hdl/xpm_fifo.sv" \
  "/opt-ictp/Xilinx/arg2/Vivado/2022.2/data/ip/xpm/xpm_memory/hdl/xpm_memory.sv" \
  "/opt-ictp/Xilinx/arg2/Vivado/2022.2/data/ip/xpm/xpm_cdc/hdl/xpm_cdc.sv" \
-endlib
-makelib xcelium_lib/xpm \
  "/opt-ictp/Xilinx/arg2/Vivado/2022.2/data/ip/xpm/xpm_VCOMP.vhd" \
-endlib
-makelib xcelium_lib/xil_defaultlib \
  "../../../bd/xrf_dpp/ip/xrf_dpp_DPP_module_FIR_0_0/sim/xrf_dpp_DPP_module_FIR_0_0.vhd" \
  "/home/argo49/smr3891/labs/project2_xrf/project2_xrf.gen/sources_1/bd/xrf_dpp/ip/xrf_dpp_axi_smc_0/xrf_dpp_axi_smc_0_sim_netlist.vhdl" \
  "../../../bd/xrf_dpp/ipshared/7b64/hdl/axil.vhdl" \
  "../../../bd/xrf_dpp/ipshared/7b64/hdl/axif.vhdl" \
  "../../../bd/xrf_dpp/ipshared/7b64/hdl/tdpram.vhdl" \
  "../../../bd/xrf_dpp/ipshared/7b64/hdl/graysync.vhdl" \
  "../../../bd/xrf_dpp/ipshared/7b64/hdl/fifo.vhdl" \
  "../../../bd/xrf_dpp/ipshared/7b64/hdl/comblock.vhdl" \
  "../../../bd/xrf_dpp/ipshared/7b64/hdl/axi_comblock.vhdl" \
  "../../../bd/xrf_dpp/ip/xrf_dpp_comblock_0_0/sim/xrf_dpp_comblock_0_0.vhd" \
  "/home/argo49/smr3891/labs/project2_xrf/project2_xrf.gen/sources_1/bd/xrf_dpp/ip/xrf_dpp_processing_system7_0_0/xrf_dpp_processing_system7_0_0_sim_netlist.vhdl" \
-endlib
-makelib xcelium_lib/lib_cdc_v1_0_2 \
  "../../../../project2_xrf.gen/sources_1/bd/xrf_dpp/ipshared/ef1e/hdl/lib_cdc_v1_0_rfs.vhd" \
-endlib
-makelib xcelium_lib/proc_sys_reset_v5_0_13 \
  "../../../../project2_xrf.gen/sources_1/bd/xrf_dpp/ipshared/8842/hdl/proc_sys_reset_v5_0_vh_rfs.vhd" \
-endlib
-makelib xcelium_lib/xil_defaultlib \
  "../../../bd/xrf_dpp/ip/xrf_dpp_rst_ps7_0_100M_0/sim/xrf_dpp_rst_ps7_0_100M_0.vhd" \
-endlib
-makelib xcelium_lib/xlslice_v1_0_2 \
  "../../../../project2_xrf.gen/sources_1/bd/xrf_dpp/ipshared/11d0/hdl/xlslice_v1_0_vl_rfs.v" \
-endlib
-makelib xcelium_lib/xil_defaultlib \
  "../../../bd/xrf_dpp/ip/xrf_dpp_xlslice_0_0/sim/xrf_dpp_xlslice_0_0.v" \
  "../../../bd/xrf_dpp/ip/xrf_dpp_xlslice_1_0/sim/xrf_dpp_xlslice_1_0.v" \
  "../../../bd/xrf_dpp/ip/xrf_dpp_xlslice_2_0/sim/xrf_dpp_xlslice_2_0.v" \
  "../../../bd/xrf_dpp/ip/xrf_dpp_xlslice_3_0/sim/xrf_dpp_xlslice_3_0.v" \
  "../../../bd/xrf_dpp/ip/xrf_dpp_xlslice_5_0/sim/xrf_dpp_xlslice_5_0.v" \
  "../../../bd/xrf_dpp/ip/xrf_dpp_xlslice_6_0/sim/xrf_dpp_xlslice_6_0.v" \
-endlib
-makelib xcelium_lib/xil_defaultlib \
  "../../../bd/xrf_dpp/sim/xrf_dpp.vhd" \
-endlib
-makelib xcelium_lib/xil_defaultlib \
  glbl.v
-endlib

