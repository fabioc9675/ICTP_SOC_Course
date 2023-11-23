vlib questa_lib/work
vlib questa_lib/msim

vlib questa_lib/msim/xilinx_vip
vlib questa_lib/msim/axi_infrastructure_v1_1_0
vlib questa_lib/msim/axi_vip_v1_1_13
vlib questa_lib/msim/processing_system7_vip_v1_0_15
vlib questa_lib/msim/xil_defaultlib
vlib questa_lib/msim/lib_cdc_v1_0_2
vlib questa_lib/msim/proc_sys_reset_v5_0_13
vlib questa_lib/msim/xlconstant_v1_1_7
vlib questa_lib/msim/xlconcat_v2_1_4
vlib questa_lib/msim/xlslice_v1_0_2
vlib questa_lib/msim/generic_baseblocks_v2_1_0
vlib questa_lib/msim/fifo_generator_v13_2_7
vlib questa_lib/msim/axi_data_fifo_v2_1_26
vlib questa_lib/msim/axi_register_slice_v2_1_27
vlib questa_lib/msim/axi_protocol_converter_v2_1_27

vmap xilinx_vip questa_lib/msim/xilinx_vip
vmap axi_infrastructure_v1_1_0 questa_lib/msim/axi_infrastructure_v1_1_0
vmap axi_vip_v1_1_13 questa_lib/msim/axi_vip_v1_1_13
vmap processing_system7_vip_v1_0_15 questa_lib/msim/processing_system7_vip_v1_0_15
vmap xil_defaultlib questa_lib/msim/xil_defaultlib
vmap lib_cdc_v1_0_2 questa_lib/msim/lib_cdc_v1_0_2
vmap proc_sys_reset_v5_0_13 questa_lib/msim/proc_sys_reset_v5_0_13
vmap xlconstant_v1_1_7 questa_lib/msim/xlconstant_v1_1_7
vmap xlconcat_v2_1_4 questa_lib/msim/xlconcat_v2_1_4
vmap xlslice_v1_0_2 questa_lib/msim/xlslice_v1_0_2
vmap generic_baseblocks_v2_1_0 questa_lib/msim/generic_baseblocks_v2_1_0
vmap fifo_generator_v13_2_7 questa_lib/msim/fifo_generator_v13_2_7
vmap axi_data_fifo_v2_1_26 questa_lib/msim/axi_data_fifo_v2_1_26
vmap axi_register_slice_v2_1_27 questa_lib/msim/axi_register_slice_v2_1_27
vmap axi_protocol_converter_v2_1_27 questa_lib/msim/axi_protocol_converter_v2_1_27

vlog -work xilinx_vip -64 -incr -mfcu  -sv -L axi_vip_v1_1_13 -L processing_system7_vip_v1_0_15 -L xilinx_vip "+incdir+/opt-ictp/Xilinx/arg2/Vivado/2022.2/data/xilinx_vip/include" \
"/opt-ictp/Xilinx/arg2/Vivado/2022.2/data/xilinx_vip/hdl/axi4stream_vip_axi4streampc.sv" \
"/opt-ictp/Xilinx/arg2/Vivado/2022.2/data/xilinx_vip/hdl/axi_vip_axi4pc.sv" \
"/opt-ictp/Xilinx/arg2/Vivado/2022.2/data/xilinx_vip/hdl/xil_common_vip_pkg.sv" \
"/opt-ictp/Xilinx/arg2/Vivado/2022.2/data/xilinx_vip/hdl/axi4stream_vip_pkg.sv" \
"/opt-ictp/Xilinx/arg2/Vivado/2022.2/data/xilinx_vip/hdl/axi_vip_pkg.sv" \
"/opt-ictp/Xilinx/arg2/Vivado/2022.2/data/xilinx_vip/hdl/axi4stream_vip_if.sv" \
"/opt-ictp/Xilinx/arg2/Vivado/2022.2/data/xilinx_vip/hdl/axi_vip_if.sv" \
"/opt-ictp/Xilinx/arg2/Vivado/2022.2/data/xilinx_vip/hdl/clk_vip_if.sv" \
"/opt-ictp/Xilinx/arg2/Vivado/2022.2/data/xilinx_vip/hdl/rst_vip_if.sv" \

vlog -work axi_infrastructure_v1_1_0 -64 -incr -mfcu  "+incdir+../../../../Lab2.gen/sources_1/bd/bd_comblock/ipshared/ec67/hdl" "+incdir+../../../../Lab2.gen/sources_1/bd/bd_comblock/ipshared/ee60/hdl" "+incdir+/opt-ictp/Xilinx/arg2/Vivado/2022.2/data/xilinx_vip/include" \
"../../../../Lab2.gen/sources_1/bd/bd_comblock/ipshared/ec67/hdl/axi_infrastructure_v1_1_vl_rfs.v" \

vlog -work axi_vip_v1_1_13 -64 -incr -mfcu  -sv -L axi_vip_v1_1_13 -L processing_system7_vip_v1_0_15 -L xilinx_vip "+incdir+../../../../Lab2.gen/sources_1/bd/bd_comblock/ipshared/ec67/hdl" "+incdir+../../../../Lab2.gen/sources_1/bd/bd_comblock/ipshared/ee60/hdl" "+incdir+/opt-ictp/Xilinx/arg2/Vivado/2022.2/data/xilinx_vip/include" \
"../../../../Lab2.gen/sources_1/bd/bd_comblock/ipshared/ffc2/hdl/axi_vip_v1_1_vl_rfs.sv" \

vlog -work processing_system7_vip_v1_0_15 -64 -incr -mfcu  -sv -L axi_vip_v1_1_13 -L processing_system7_vip_v1_0_15 -L xilinx_vip "+incdir+../../../../Lab2.gen/sources_1/bd/bd_comblock/ipshared/ec67/hdl" "+incdir+../../../../Lab2.gen/sources_1/bd/bd_comblock/ipshared/ee60/hdl" "+incdir+/opt-ictp/Xilinx/arg2/Vivado/2022.2/data/xilinx_vip/include" \
"../../../../Lab2.gen/sources_1/bd/bd_comblock/ipshared/ee60/hdl/processing_system7_vip_v1_0_vl_rfs.sv" \

vlog -work xil_defaultlib -64 -incr -mfcu  "+incdir+../../../../Lab2.gen/sources_1/bd/bd_comblock/ipshared/ec67/hdl" "+incdir+../../../../Lab2.gen/sources_1/bd/bd_comblock/ipshared/ee60/hdl" "+incdir+/opt-ictp/Xilinx/arg2/Vivado/2022.2/data/xilinx_vip/include" \
"../../../bd/bd_comblock/ip/bd_comblock_processing_system7_0_0/sim/bd_comblock_processing_system7_0_0.v" \

vcom -work xil_defaultlib -64 -93  \
"../../../bd/bd_comblock/ipshared/7b64/hdl/axil.vhdl" \
"../../../bd/bd_comblock/ipshared/7b64/hdl/axif.vhdl" \
"../../../bd/bd_comblock/ipshared/7b64/hdl/tdpram.vhdl" \
"../../../bd/bd_comblock/ipshared/7b64/hdl/graysync.vhdl" \
"../../../bd/bd_comblock/ipshared/7b64/hdl/fifo.vhdl" \
"../../../bd/bd_comblock/ipshared/7b64/hdl/comblock.vhdl" \
"../../../bd/bd_comblock/ipshared/7b64/hdl/axi_comblock.vhdl" \
"../../../bd/bd_comblock/ip/bd_comblock_comblock_0_0/sim/bd_comblock_comblock_0_0.vhd" \

vcom -work lib_cdc_v1_0_2 -64 -93  \
"../../../../Lab2.gen/sources_1/bd/bd_comblock/ipshared/ef1e/hdl/lib_cdc_v1_0_rfs.vhd" \

vcom -work proc_sys_reset_v5_0_13 -64 -93  \
"../../../../Lab2.gen/sources_1/bd/bd_comblock/ipshared/8842/hdl/proc_sys_reset_v5_0_vh_rfs.vhd" \

vcom -work xil_defaultlib -64 -93  \
"../../../bd/bd_comblock/ip/bd_comblock_rst_ps7_0_100M_0/sim/bd_comblock_rst_ps7_0_100M_0.vhd" \

vlog -work xil_defaultlib -64 -incr -mfcu  "+incdir+../../../../Lab2.gen/sources_1/bd/bd_comblock/ipshared/ec67/hdl" "+incdir+../../../../Lab2.gen/sources_1/bd/bd_comblock/ipshared/ee60/hdl" "+incdir+/opt-ictp/Xilinx/arg2/Vivado/2022.2/data/xilinx_vip/include" \
"../../../bd/bd_comblock/ip/bd_comblock_alu_0_0/sim/bd_comblock_alu_0_0.v" \
"../../../bd/bd_comblock/ip/bd_comblock_FPDiv_8_23_F400_uid2_0_0/sim/bd_comblock_FPDiv_8_23_F400_uid2_0_0.v" \

vlog -work xlconstant_v1_1_7 -64 -incr -mfcu  "+incdir+../../../../Lab2.gen/sources_1/bd/bd_comblock/ipshared/ec67/hdl" "+incdir+../../../../Lab2.gen/sources_1/bd/bd_comblock/ipshared/ee60/hdl" "+incdir+/opt-ictp/Xilinx/arg2/Vivado/2022.2/data/xilinx_vip/include" \
"../../../../Lab2.gen/sources_1/bd/bd_comblock/ipshared/badb/hdl/xlconstant_v1_1_vl_rfs.v" \

vlog -work xil_defaultlib -64 -incr -mfcu  "+incdir+../../../../Lab2.gen/sources_1/bd/bd_comblock/ipshared/ec67/hdl" "+incdir+../../../../Lab2.gen/sources_1/bd/bd_comblock/ipshared/ee60/hdl" "+incdir+/opt-ictp/Xilinx/arg2/Vivado/2022.2/data/xilinx_vip/include" \
"../../../bd/bd_comblock/ip/bd_comblock_xlconstant_0_0/sim/bd_comblock_xlconstant_0_0.v" \

vlog -work xlconcat_v2_1_4 -64 -incr -mfcu  "+incdir+../../../../Lab2.gen/sources_1/bd/bd_comblock/ipshared/ec67/hdl" "+incdir+../../../../Lab2.gen/sources_1/bd/bd_comblock/ipshared/ee60/hdl" "+incdir+/opt-ictp/Xilinx/arg2/Vivado/2022.2/data/xilinx_vip/include" \
"../../../../Lab2.gen/sources_1/bd/bd_comblock/ipshared/4b67/hdl/xlconcat_v2_1_vl_rfs.v" \

vlog -work xil_defaultlib -64 -incr -mfcu  "+incdir+../../../../Lab2.gen/sources_1/bd/bd_comblock/ipshared/ec67/hdl" "+incdir+../../../../Lab2.gen/sources_1/bd/bd_comblock/ipshared/ee60/hdl" "+incdir+/opt-ictp/Xilinx/arg2/Vivado/2022.2/data/xilinx_vip/include" \
"../../../bd/bd_comblock/ip/bd_comblock_xlconcat_0_0/sim/bd_comblock_xlconcat_0_0.v" \
"../../../bd/bd_comblock/ip/bd_comblock_xlconcat_1_0/sim/bd_comblock_xlconcat_1_0.v" \

vlog -work xlslice_v1_0_2 -64 -incr -mfcu  "+incdir+../../../../Lab2.gen/sources_1/bd/bd_comblock/ipshared/ec67/hdl" "+incdir+../../../../Lab2.gen/sources_1/bd/bd_comblock/ipshared/ee60/hdl" "+incdir+/opt-ictp/Xilinx/arg2/Vivado/2022.2/data/xilinx_vip/include" \
"../../../../Lab2.gen/sources_1/bd/bd_comblock/ipshared/11d0/hdl/xlslice_v1_0_vl_rfs.v" \

vlog -work xil_defaultlib -64 -incr -mfcu  "+incdir+../../../../Lab2.gen/sources_1/bd/bd_comblock/ipshared/ec67/hdl" "+incdir+../../../../Lab2.gen/sources_1/bd/bd_comblock/ipshared/ee60/hdl" "+incdir+/opt-ictp/Xilinx/arg2/Vivado/2022.2/data/xilinx_vip/include" \
"../../../bd/bd_comblock/ip/bd_comblock_xlslice_0_0/sim/bd_comblock_xlslice_0_0.v" \
"../../../bd/bd_comblock/ip/bd_comblock_xlslice_1_0/sim/bd_comblock_xlslice_1_0.v" \
"../../../bd/bd_comblock/ip/bd_comblock_xlconcat_0_1/sim/bd_comblock_xlconcat_0_1.v" \

vlog -work generic_baseblocks_v2_1_0 -64 -incr -mfcu  "+incdir+../../../../Lab2.gen/sources_1/bd/bd_comblock/ipshared/ec67/hdl" "+incdir+../../../../Lab2.gen/sources_1/bd/bd_comblock/ipshared/ee60/hdl" "+incdir+/opt-ictp/Xilinx/arg2/Vivado/2022.2/data/xilinx_vip/include" \
"../../../../Lab2.gen/sources_1/bd/bd_comblock/ipshared/b752/hdl/generic_baseblocks_v2_1_vl_rfs.v" \

vlog -work fifo_generator_v13_2_7 -64 -incr -mfcu  "+incdir+../../../../Lab2.gen/sources_1/bd/bd_comblock/ipshared/ec67/hdl" "+incdir+../../../../Lab2.gen/sources_1/bd/bd_comblock/ipshared/ee60/hdl" "+incdir+/opt-ictp/Xilinx/arg2/Vivado/2022.2/data/xilinx_vip/include" \
"../../../../Lab2.gen/sources_1/bd/bd_comblock/ipshared/83df/simulation/fifo_generator_vlog_beh.v" \

vcom -work fifo_generator_v13_2_7 -64 -93  \
"../../../../Lab2.gen/sources_1/bd/bd_comblock/ipshared/83df/hdl/fifo_generator_v13_2_rfs.vhd" \

vlog -work fifo_generator_v13_2_7 -64 -incr -mfcu  "+incdir+../../../../Lab2.gen/sources_1/bd/bd_comblock/ipshared/ec67/hdl" "+incdir+../../../../Lab2.gen/sources_1/bd/bd_comblock/ipshared/ee60/hdl" "+incdir+/opt-ictp/Xilinx/arg2/Vivado/2022.2/data/xilinx_vip/include" \
"../../../../Lab2.gen/sources_1/bd/bd_comblock/ipshared/83df/hdl/fifo_generator_v13_2_rfs.v" \

vlog -work axi_data_fifo_v2_1_26 -64 -incr -mfcu  "+incdir+../../../../Lab2.gen/sources_1/bd/bd_comblock/ipshared/ec67/hdl" "+incdir+../../../../Lab2.gen/sources_1/bd/bd_comblock/ipshared/ee60/hdl" "+incdir+/opt-ictp/Xilinx/arg2/Vivado/2022.2/data/xilinx_vip/include" \
"../../../../Lab2.gen/sources_1/bd/bd_comblock/ipshared/3111/hdl/axi_data_fifo_v2_1_vl_rfs.v" \

vlog -work axi_register_slice_v2_1_27 -64 -incr -mfcu  "+incdir+../../../../Lab2.gen/sources_1/bd/bd_comblock/ipshared/ec67/hdl" "+incdir+../../../../Lab2.gen/sources_1/bd/bd_comblock/ipshared/ee60/hdl" "+incdir+/opt-ictp/Xilinx/arg2/Vivado/2022.2/data/xilinx_vip/include" \
"../../../../Lab2.gen/sources_1/bd/bd_comblock/ipshared/f0b4/hdl/axi_register_slice_v2_1_vl_rfs.v" \

vlog -work axi_protocol_converter_v2_1_27 -64 -incr -mfcu  "+incdir+../../../../Lab2.gen/sources_1/bd/bd_comblock/ipshared/ec67/hdl" "+incdir+../../../../Lab2.gen/sources_1/bd/bd_comblock/ipshared/ee60/hdl" "+incdir+/opt-ictp/Xilinx/arg2/Vivado/2022.2/data/xilinx_vip/include" \
"../../../../Lab2.gen/sources_1/bd/bd_comblock/ipshared/aeb3/hdl/axi_protocol_converter_v2_1_vl_rfs.v" \

vlog -work xil_defaultlib -64 -incr -mfcu  "+incdir+../../../../Lab2.gen/sources_1/bd/bd_comblock/ipshared/ec67/hdl" "+incdir+../../../../Lab2.gen/sources_1/bd/bd_comblock/ipshared/ee60/hdl" "+incdir+/opt-ictp/Xilinx/arg2/Vivado/2022.2/data/xilinx_vip/include" \
"../../../bd/bd_comblock/ip/bd_comblock_auto_pc_0/sim/bd_comblock_auto_pc_0.v" \
"../../../bd/bd_comblock/sim/bd_comblock.v" \

vlog -work xil_defaultlib \
"glbl.v"

