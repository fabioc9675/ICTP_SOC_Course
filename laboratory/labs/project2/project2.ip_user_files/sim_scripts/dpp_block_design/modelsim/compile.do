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

vlog -work xpm -64 -incr -mfcu  -sv -L axi_vip_v1_1_13 -L smartconnect_v1_0 -L processing_system7_vip_v1_0_15 -L xilinx_vip "+incdir+../../../../project2.gen/sources_1/bd/dpp_block_design/ipshared/f0b6/hdl/verilog" "+incdir+../../../../project2.gen/sources_1/bd/dpp_block_design/ipshared/66be/hdl/verilog" "+incdir+../../../../project2.gen/sources_1/bd/dpp_block_design/ipshared/ec67/hdl" "+incdir+../../../../project2.gen/sources_1/bd/dpp_block_design/ipshared/ee60/hdl" "+incdir+/opt-ictp/Xilinx/arg2/Vivado/2022.2/data/xilinx_vip/include" \
"/opt-ictp/Xilinx/arg2/Vivado/2022.2/data/ip/xpm/xpm_fifo/hdl/xpm_fifo.sv" \
"/opt-ictp/Xilinx/arg2/Vivado/2022.2/data/ip/xpm/xpm_memory/hdl/xpm_memory.sv" \
"/opt-ictp/Xilinx/arg2/Vivado/2022.2/data/ip/xpm/xpm_cdc/hdl/xpm_cdc.sv" \

vcom -work xpm -64 -93  \
"/opt-ictp/Xilinx/arg2/Vivado/2022.2/data/ip/xpm/xpm_VCOMP.vhd" \

vcom -work xil_defaultlib -64 -93  \
"../../../bd/dpp_block_design/ip/dpp_block_design_DPP_module_top_0_0_0/sim/dpp_block_design_DPP_module_top_0_0_0.vhd" \
"/home/argo49/smr3891/labs/project2/project2.gen/sources_1/bd/dpp_block_design/ip/dpp_block_design_axi_smc_0/dpp_block_design_axi_smc_0_sim_netlist.vhdl" \
"../../../bd/dpp_block_design/ipshared/7b64/hdl/axil.vhdl" \
"../../../bd/dpp_block_design/ipshared/7b64/hdl/axif.vhdl" \
"../../../bd/dpp_block_design/ipshared/7b64/hdl/tdpram.vhdl" \
"../../../bd/dpp_block_design/ipshared/7b64/hdl/graysync.vhdl" \
"../../../bd/dpp_block_design/ipshared/7b64/hdl/fifo.vhdl" \
"../../../bd/dpp_block_design/ipshared/7b64/hdl/comblock.vhdl" \
"../../../bd/dpp_block_design/ipshared/7b64/hdl/axi_comblock.vhdl" \
"../../../bd/dpp_block_design/ip/dpp_block_design_comblock_0_0/sim/dpp_block_design_comblock_0_0.vhd" \
"/home/argo49/smr3891/labs/project2/project2.gen/sources_1/bd/dpp_block_design/ip/dpp_block_design_processing_system7_0_0/dpp_block_design_processing_system7_0_0_sim_netlist.vhdl" \

vcom -work lib_cdc_v1_0_2 -64 -93  \
"../../../../project2.gen/sources_1/bd/dpp_block_design/ipshared/ef1e/hdl/lib_cdc_v1_0_rfs.vhd" \

vcom -work proc_sys_reset_v5_0_13 -64 -93  \
"../../../../project2.gen/sources_1/bd/dpp_block_design/ipshared/8842/hdl/proc_sys_reset_v5_0_vh_rfs.vhd" \

vcom -work xil_defaultlib -64 -93  \
"../../../bd/dpp_block_design/ip/dpp_block_design_rst_ps7_0_100M_0/sim/dpp_block_design_rst_ps7_0_100M_0.vhd" \

vlog -work xlslice_v1_0_2 -64 -incr -mfcu  "+incdir+../../../../project2.gen/sources_1/bd/dpp_block_design/ipshared/f0b6/hdl/verilog" "+incdir+../../../../project2.gen/sources_1/bd/dpp_block_design/ipshared/66be/hdl/verilog" "+incdir+../../../../project2.gen/sources_1/bd/dpp_block_design/ipshared/ec67/hdl" "+incdir+../../../../project2.gen/sources_1/bd/dpp_block_design/ipshared/ee60/hdl" "+incdir+/opt-ictp/Xilinx/arg2/Vivado/2022.2/data/xilinx_vip/include" \
"../../../../project2.gen/sources_1/bd/dpp_block_design/ipshared/11d0/hdl/xlslice_v1_0_vl_rfs.v" \

vlog -work xil_defaultlib -64 -incr -mfcu  "+incdir+../../../../project2.gen/sources_1/bd/dpp_block_design/ipshared/f0b6/hdl/verilog" "+incdir+../../../../project2.gen/sources_1/bd/dpp_block_design/ipshared/66be/hdl/verilog" "+incdir+../../../../project2.gen/sources_1/bd/dpp_block_design/ipshared/ec67/hdl" "+incdir+../../../../project2.gen/sources_1/bd/dpp_block_design/ipshared/ee60/hdl" "+incdir+/opt-ictp/Xilinx/arg2/Vivado/2022.2/data/xilinx_vip/include" \
"../../../bd/dpp_block_design/ip/dpp_block_design_xlslice_0_0/sim/dpp_block_design_xlslice_0_0.v" \
"../../../bd/dpp_block_design/ip/dpp_block_design_xlslice_1_0/sim/dpp_block_design_xlslice_1_0.v" \
"../../../bd/dpp_block_design/ip/dpp_block_design_xlslice_2_0/sim/dpp_block_design_xlslice_2_0.v" \

vcom -work xil_defaultlib -64 -93  \
"../../../bd/dpp_block_design/sim/dpp_block_design.vhd" \

vlog -work xil_defaultlib \
"glbl.v"

