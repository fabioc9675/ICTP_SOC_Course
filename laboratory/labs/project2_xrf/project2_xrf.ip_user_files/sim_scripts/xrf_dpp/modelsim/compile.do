vlib modelsim_lib/work
vlib modelsim_lib/msim

vlib modelsim_lib/msim/xilinx_vip
vlib modelsim_lib/msim/xpm
vlib modelsim_lib/msim/xil_defaultlib
vlib modelsim_lib/msim/lib_cdc_v1_0_2
vlib modelsim_lib/msim/proc_sys_reset_v5_0_13
vlib modelsim_lib/msim/xlslice_v1_0_2

vmap xilinx_vip modelsim_lib/msim/xilinx_vip
vmap xpm modelsim_lib/msim/xpm
vmap xil_defaultlib modelsim_lib/msim/xil_defaultlib
vmap lib_cdc_v1_0_2 modelsim_lib/msim/lib_cdc_v1_0_2
vmap proc_sys_reset_v5_0_13 modelsim_lib/msim/proc_sys_reset_v5_0_13
vmap xlslice_v1_0_2 modelsim_lib/msim/xlslice_v1_0_2

vlog -work xilinx_vip -64 -incr -mfcu  -sv -L axi_vip_v1_1_13 -L smartconnect_v1_0 -L processing_system7_vip_v1_0_15 -L xilinx_vip "+incdir+/opt-ictp/Xilinx/arg2/Vivado/2022.2/data/xilinx_vip/include" \
"/opt-ictp/Xilinx/arg2/Vivado/2022.2/data/xilinx_vip/hdl/axi4stream_vip_axi4streampc.sv" \
"/opt-ictp/Xilinx/arg2/Vivado/2022.2/data/xilinx_vip/hdl/axi_vip_axi4pc.sv" \
"/opt-ictp/Xilinx/arg2/Vivado/2022.2/data/xilinx_vip/hdl/xil_common_vip_pkg.sv" \
"/opt-ictp/Xilinx/arg2/Vivado/2022.2/data/xilinx_vip/hdl/axi4stream_vip_pkg.sv" \
"/opt-ictp/Xilinx/arg2/Vivado/2022.2/data/xilinx_vip/hdl/axi_vip_pkg.sv" \
"/opt-ictp/Xilinx/arg2/Vivado/2022.2/data/xilinx_vip/hdl/axi4stream_vip_if.sv" \
"/opt-ictp/Xilinx/arg2/Vivado/2022.2/data/xilinx_vip/hdl/axi_vip_if.sv" \
"/opt-ictp/Xilinx/arg2/Vivado/2022.2/data/xilinx_vip/hdl/clk_vip_if.sv" \
"/opt-ictp/Xilinx/arg2/Vivado/2022.2/data/xilinx_vip/hdl/rst_vip_if.sv" \

vlog -work xpm -64 -incr -mfcu  -sv -L axi_vip_v1_1_13 -L smartconnect_v1_0 -L processing_system7_vip_v1_0_15 -L xilinx_vip "+incdir+../../../../project2_xrf.gen/sources_1/bd/xrf_dpp/ipshared/f0b6/hdl/verilog" "+incdir+../../../../project2_xrf.gen/sources_1/bd/xrf_dpp/ipshared/66be/hdl/verilog" "+incdir+../../../../project2_xrf.gen/sources_1/bd/xrf_dpp/ipshared/ec67/hdl" "+incdir+../../../../project2_xrf.gen/sources_1/bd/xrf_dpp/ipshared/ee60/hdl" "+incdir+/opt-ictp/Xilinx/arg2/Vivado/2022.2/data/xilinx_vip/include" \
"/opt-ictp/Xilinx/arg2/Vivado/2022.2/data/ip/xpm/xpm_fifo/hdl/xpm_fifo.sv" \
"/opt-ictp/Xilinx/arg2/Vivado/2022.2/data/ip/xpm/xpm_memory/hdl/xpm_memory.sv" \
"/opt-ictp/Xilinx/arg2/Vivado/2022.2/data/ip/xpm/xpm_cdc/hdl/xpm_cdc.sv" \

vcom -work xpm -64 -93  \
"/opt-ictp/Xilinx/arg2/Vivado/2022.2/data/ip/xpm/xpm_VCOMP.vhd" \

vcom -work xil_defaultlib -64 -93  \
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

vcom -work lib_cdc_v1_0_2 -64 -93  \
"../../../../project2_xrf.gen/sources_1/bd/xrf_dpp/ipshared/ef1e/hdl/lib_cdc_v1_0_rfs.vhd" \

vcom -work proc_sys_reset_v5_0_13 -64 -93  \
"../../../../project2_xrf.gen/sources_1/bd/xrf_dpp/ipshared/8842/hdl/proc_sys_reset_v5_0_vh_rfs.vhd" \

vcom -work xil_defaultlib -64 -93  \
"../../../bd/xrf_dpp/ip/xrf_dpp_rst_ps7_0_100M_0/sim/xrf_dpp_rst_ps7_0_100M_0.vhd" \

vlog -work xlslice_v1_0_2 -64 -incr -mfcu  "+incdir+../../../../project2_xrf.gen/sources_1/bd/xrf_dpp/ipshared/f0b6/hdl/verilog" "+incdir+../../../../project2_xrf.gen/sources_1/bd/xrf_dpp/ipshared/66be/hdl/verilog" "+incdir+../../../../project2_xrf.gen/sources_1/bd/xrf_dpp/ipshared/ec67/hdl" "+incdir+../../../../project2_xrf.gen/sources_1/bd/xrf_dpp/ipshared/ee60/hdl" "+incdir+/opt-ictp/Xilinx/arg2/Vivado/2022.2/data/xilinx_vip/include" \
"../../../../project2_xrf.gen/sources_1/bd/xrf_dpp/ipshared/11d0/hdl/xlslice_v1_0_vl_rfs.v" \

vlog -work xil_defaultlib -64 -incr -mfcu  "+incdir+../../../../project2_xrf.gen/sources_1/bd/xrf_dpp/ipshared/f0b6/hdl/verilog" "+incdir+../../../../project2_xrf.gen/sources_1/bd/xrf_dpp/ipshared/66be/hdl/verilog" "+incdir+../../../../project2_xrf.gen/sources_1/bd/xrf_dpp/ipshared/ec67/hdl" "+incdir+../../../../project2_xrf.gen/sources_1/bd/xrf_dpp/ipshared/ee60/hdl" "+incdir+/opt-ictp/Xilinx/arg2/Vivado/2022.2/data/xilinx_vip/include" \
"../../../bd/xrf_dpp/ip/xrf_dpp_xlslice_0_0/sim/xrf_dpp_xlslice_0_0.v" \
"../../../bd/xrf_dpp/ip/xrf_dpp_xlslice_1_0/sim/xrf_dpp_xlslice_1_0.v" \
"../../../bd/xrf_dpp/ip/xrf_dpp_xlslice_2_0/sim/xrf_dpp_xlslice_2_0.v" \
"../../../bd/xrf_dpp/ip/xrf_dpp_xlslice_3_0/sim/xrf_dpp_xlslice_3_0.v" \
"../../../bd/xrf_dpp/ip/xrf_dpp_xlslice_5_0/sim/xrf_dpp_xlslice_5_0.v" \
"../../../bd/xrf_dpp/ip/xrf_dpp_xlslice_6_0/sim/xrf_dpp_xlslice_6_0.v" \

vcom -work xil_defaultlib -64 -93  \
"../../../bd/xrf_dpp/sim/xrf_dpp.vhd" \

vlog -work xil_defaultlib \
"glbl.v"

