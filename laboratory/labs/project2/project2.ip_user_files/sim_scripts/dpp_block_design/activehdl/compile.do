vlib work
vlib activehdl

vlib activehdl/xilinx_vip
vlib activehdl/xpm
vlib activehdl/xil_defaultlib
vlib activehdl/lib_cdc_v1_0_2
vlib activehdl/proc_sys_reset_v5_0_13
vlib activehdl/xlslice_v1_0_2

vmap xilinx_vip activehdl/xilinx_vip
vmap xpm activehdl/xpm
vmap xil_defaultlib activehdl/xil_defaultlib
vmap lib_cdc_v1_0_2 activehdl/lib_cdc_v1_0_2
vmap proc_sys_reset_v5_0_13 activehdl/proc_sys_reset_v5_0_13
vmap xlslice_v1_0_2 activehdl/xlslice_v1_0_2

vlog -work xilinx_vip  -sv2k12 "+incdir+/opt-ictp/Xilinx/arg2/Vivado/2022.2/data/xilinx_vip/include" \
"/opt-ictp/Xilinx/arg2/Vivado/2022.2/data/xilinx_vip/hdl/axi4stream_vip_axi4streampc.sv" \
"/opt-ictp/Xilinx/arg2/Vivado/2022.2/data/xilinx_vip/hdl/axi_vip_axi4pc.sv" \
"/opt-ictp/Xilinx/arg2/Vivado/2022.2/data/xilinx_vip/hdl/xil_common_vip_pkg.sv" \
"/opt-ictp/Xilinx/arg2/Vivado/2022.2/data/xilinx_vip/hdl/axi4stream_vip_pkg.sv" \
"/opt-ictp/Xilinx/arg2/Vivado/2022.2/data/xilinx_vip/hdl/axi_vip_pkg.sv" \
"/opt-ictp/Xilinx/arg2/Vivado/2022.2/data/xilinx_vip/hdl/axi4stream_vip_if.sv" \
"/opt-ictp/Xilinx/arg2/Vivado/2022.2/data/xilinx_vip/hdl/axi_vip_if.sv" \
"/opt-ictp/Xilinx/arg2/Vivado/2022.2/data/xilinx_vip/hdl/clk_vip_if.sv" \
"/opt-ictp/Xilinx/arg2/Vivado/2022.2/data/xilinx_vip/hdl/rst_vip_if.sv" \

vlog -work xpm  -sv2k12 "+incdir+../../../../project2.gen/sources_1/bd/dpp_block_design/ipshared/f0b6/hdl/verilog" "+incdir+../../../../project2.gen/sources_1/bd/dpp_block_design/ipshared/66be/hdl/verilog" "+incdir+../../../../project2.gen/sources_1/bd/dpp_block_design/ipshared/ec67/hdl" "+incdir+../../../../project2.gen/sources_1/bd/dpp_block_design/ipshared/ee60/hdl" "+incdir+/opt-ictp/Xilinx/arg2/Vivado/2022.2/data/xilinx_vip/include" \
"/opt-ictp/Xilinx/arg2/Vivado/2022.2/data/ip/xpm/xpm_fifo/hdl/xpm_fifo.sv" \
"/opt-ictp/Xilinx/arg2/Vivado/2022.2/data/ip/xpm/xpm_memory/hdl/xpm_memory.sv" \
"/opt-ictp/Xilinx/arg2/Vivado/2022.2/data/ip/xpm/xpm_cdc/hdl/xpm_cdc.sv" \

vcom -work xpm -93  \
"/opt-ictp/Xilinx/arg2/Vivado/2022.2/data/ip/xpm/xpm_VCOMP.vhd" \

vcom -work xil_defaultlib -93  \
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

vcom -work lib_cdc_v1_0_2 -93  \
"../../../../project2.gen/sources_1/bd/dpp_block_design/ipshared/ef1e/hdl/lib_cdc_v1_0_rfs.vhd" \

vcom -work proc_sys_reset_v5_0_13 -93  \
"../../../../project2.gen/sources_1/bd/dpp_block_design/ipshared/8842/hdl/proc_sys_reset_v5_0_vh_rfs.vhd" \

vcom -work xil_defaultlib -93  \
"../../../bd/dpp_block_design/ip/dpp_block_design_rst_ps7_0_100M_0/sim/dpp_block_design_rst_ps7_0_100M_0.vhd" \

vlog -work xlslice_v1_0_2  -v2k5 "+incdir+../../../../project2.gen/sources_1/bd/dpp_block_design/ipshared/f0b6/hdl/verilog" "+incdir+../../../../project2.gen/sources_1/bd/dpp_block_design/ipshared/66be/hdl/verilog" "+incdir+../../../../project2.gen/sources_1/bd/dpp_block_design/ipshared/ec67/hdl" "+incdir+../../../../project2.gen/sources_1/bd/dpp_block_design/ipshared/ee60/hdl" "+incdir+/opt-ictp/Xilinx/arg2/Vivado/2022.2/data/xilinx_vip/include" \
"../../../../project2.gen/sources_1/bd/dpp_block_design/ipshared/11d0/hdl/xlslice_v1_0_vl_rfs.v" \

vlog -work xil_defaultlib  -v2k5 "+incdir+../../../../project2.gen/sources_1/bd/dpp_block_design/ipshared/f0b6/hdl/verilog" "+incdir+../../../../project2.gen/sources_1/bd/dpp_block_design/ipshared/66be/hdl/verilog" "+incdir+../../../../project2.gen/sources_1/bd/dpp_block_design/ipshared/ec67/hdl" "+incdir+../../../../project2.gen/sources_1/bd/dpp_block_design/ipshared/ee60/hdl" "+incdir+/opt-ictp/Xilinx/arg2/Vivado/2022.2/data/xilinx_vip/include" \
"../../../bd/dpp_block_design/ip/dpp_block_design_xlslice_0_0/sim/dpp_block_design_xlslice_0_0.v" \
"../../../bd/dpp_block_design/ip/dpp_block_design_xlslice_1_0/sim/dpp_block_design_xlslice_1_0.v" \
"../../../bd/dpp_block_design/ip/dpp_block_design_xlslice_2_0/sim/dpp_block_design_xlslice_2_0.v" \

vcom -work xil_defaultlib -93  \
"../../../bd/dpp_block_design/sim/dpp_block_design.vhd" \

vlog -work xil_defaultlib \
"glbl.v"

