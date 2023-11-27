vlib work
vlib riviera

vlib riviera/xilinx_vip
vlib riviera/xil_defaultlib
vlib riviera/util_vector_logic_v2_0_2
vlib riviera/xlconstant_v1_1_7
vlib riviera/xbip_utils_v3_0_10
vlib riviera/c_reg_fd_v12_0_6
vlib riviera/c_mux_bit_v12_0_6
vlib riviera/c_shift_ram_v12_0_14
vlib riviera/axi_infrastructure_v1_1_0
vlib riviera/axi_vip_v1_1_13
vlib riviera/processing_system7_vip_v1_0_15
vlib riviera/lib_cdc_v1_0_2
vlib riviera/proc_sys_reset_v5_0_13
vlib riviera/generic_baseblocks_v2_1_0
vlib riviera/fifo_generator_v13_2_7
vlib riviera/axi_data_fifo_v2_1_26
vlib riviera/axi_register_slice_v2_1_27
vlib riviera/axi_protocol_converter_v2_1_27

vmap xilinx_vip riviera/xilinx_vip
vmap xil_defaultlib riviera/xil_defaultlib
vmap util_vector_logic_v2_0_2 riviera/util_vector_logic_v2_0_2
vmap xlconstant_v1_1_7 riviera/xlconstant_v1_1_7
vmap xbip_utils_v3_0_10 riviera/xbip_utils_v3_0_10
vmap c_reg_fd_v12_0_6 riviera/c_reg_fd_v12_0_6
vmap c_mux_bit_v12_0_6 riviera/c_mux_bit_v12_0_6
vmap c_shift_ram_v12_0_14 riviera/c_shift_ram_v12_0_14
vmap axi_infrastructure_v1_1_0 riviera/axi_infrastructure_v1_1_0
vmap axi_vip_v1_1_13 riviera/axi_vip_v1_1_13
vmap processing_system7_vip_v1_0_15 riviera/processing_system7_vip_v1_0_15
vmap lib_cdc_v1_0_2 riviera/lib_cdc_v1_0_2
vmap proc_sys_reset_v5_0_13 riviera/proc_sys_reset_v5_0_13
vmap generic_baseblocks_v2_1_0 riviera/generic_baseblocks_v2_1_0
vmap fifo_generator_v13_2_7 riviera/fifo_generator_v13_2_7
vmap axi_data_fifo_v2_1_26 riviera/axi_data_fifo_v2_1_26
vmap axi_register_slice_v2_1_27 riviera/axi_register_slice_v2_1_27
vmap axi_protocol_converter_v2_1_27 riviera/axi_protocol_converter_v2_1_27

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

vcom -work xil_defaultlib -93  \
"../../../bd/bd_labProject_part1/ipshared/8699/src/cdcc.vhd" \
"../../../bd/bd_labProject_part1/ip/bd_labProject_part1_CDC_ADC_0/sim/bd_labProject_part1_CDC_ADC_0.vhd" \
"../../../bd/bd_labProject_part1/ip/bd_labProject_part1_CDC_DAC_0/sim/bd_labProject_part1_CDC_DAC_0.vhd" \

vlog -work xil_defaultlib  -v2k5 "+incdir+../../../../project1_part1.gen/sources_1/bd/bd_labProject_part1/ipshared/7698" "+incdir+../../../../project1_part1.gen/sources_1/bd/bd_labProject_part1/ipshared/ec67/hdl" "+incdir+../../../../project1_part1.gen/sources_1/bd/bd_labProject_part1/ipshared/ee60/hdl" "+incdir+/opt-ictp/Xilinx/arg2/Vivado/2022.2/data/xilinx_vip/include" \
"../../../bd/bd_labProject_part1/ip/bd_labProject_part1_CLK_GEN_0/bd_labProject_part1_CLK_GEN_0_clk_wiz.v" \
"../../../bd/bd_labProject_part1/ip/bd_labProject_part1_CLK_GEN_0/bd_labProject_part1_CLK_GEN_0.v" \

vlog -work util_vector_logic_v2_0_2  -v2k5 "+incdir+../../../../project1_part1.gen/sources_1/bd/bd_labProject_part1/ipshared/7698" "+incdir+../../../../project1_part1.gen/sources_1/bd/bd_labProject_part1/ipshared/ec67/hdl" "+incdir+../../../../project1_part1.gen/sources_1/bd/bd_labProject_part1/ipshared/ee60/hdl" "+incdir+/opt-ictp/Xilinx/arg2/Vivado/2022.2/data/xilinx_vip/include" \
"../../../../project1_part1.gen/sources_1/bd/bd_labProject_part1/ipshared/3d84/hdl/util_vector_logic_v2_0_vl_rfs.v" \

vlog -work xil_defaultlib  -v2k5 "+incdir+../../../../project1_part1.gen/sources_1/bd/bd_labProject_part1/ipshared/7698" "+incdir+../../../../project1_part1.gen/sources_1/bd/bd_labProject_part1/ipshared/ec67/hdl" "+incdir+../../../../project1_part1.gen/sources_1/bd/bd_labProject_part1/ipshared/ee60/hdl" "+incdir+/opt-ictp/Xilinx/arg2/Vivado/2022.2/data/xilinx_vip/include" \
"../../../bd/bd_labProject_part1/ip/bd_labProject_part1_util_vector_logic_0_0/sim/bd_labProject_part1_util_vector_logic_0_0.v" \

vlog -work xlconstant_v1_1_7  -v2k5 "+incdir+../../../../project1_part1.gen/sources_1/bd/bd_labProject_part1/ipshared/7698" "+incdir+../../../../project1_part1.gen/sources_1/bd/bd_labProject_part1/ipshared/ec67/hdl" "+incdir+../../../../project1_part1.gen/sources_1/bd/bd_labProject_part1/ipshared/ee60/hdl" "+incdir+/opt-ictp/Xilinx/arg2/Vivado/2022.2/data/xilinx_vip/include" \
"../../../../project1_part1.gen/sources_1/bd/bd_labProject_part1/ipshared/badb/hdl/xlconstant_v1_1_vl_rfs.v" \

vlog -work xil_defaultlib  -v2k5 "+incdir+../../../../project1_part1.gen/sources_1/bd/bd_labProject_part1/ipshared/7698" "+incdir+../../../../project1_part1.gen/sources_1/bd/bd_labProject_part1/ipshared/ec67/hdl" "+incdir+../../../../project1_part1.gen/sources_1/bd/bd_labProject_part1/ipshared/ee60/hdl" "+incdir+/opt-ictp/Xilinx/arg2/Vivado/2022.2/data/xilinx_vip/include" \
"../../../bd/bd_labProject_part1/ip/bd_labProject_part1_xlconstant_0_0/sim/bd_labProject_part1_xlconstant_0_0.v" \
"../../../bd/bd_labProject_part1/ip/bd_labProject_part1_crossLevelTrigger_0/sim/bd_labProject_part1_crossLevelTrigger_0.v" \

vcom -work xbip_utils_v3_0_10 -93  \
"../../../../project1_part1.gen/sources_1/bd/bd_labProject_part1/ipshared/364f/hdl/xbip_utils_v3_0_vh_rfs.vhd" \

vcom -work c_reg_fd_v12_0_6 -93  \
"../../../../project1_part1.gen/sources_1/bd/bd_labProject_part1/ipshared/edec/hdl/c_reg_fd_v12_0_vh_rfs.vhd" \

vcom -work c_mux_bit_v12_0_6 -93  \
"../../../../project1_part1.gen/sources_1/bd/bd_labProject_part1/ipshared/ecb4/hdl/c_mux_bit_v12_0_vh_rfs.vhd" \

vcom -work c_shift_ram_v12_0_14 -93  \
"../../../../project1_part1.gen/sources_1/bd/bd_labProject_part1/ipshared/2598/hdl/c_shift_ram_v12_0_vh_rfs.vhd" \

vcom -work xil_defaultlib -93  \
"../../../bd/bd_labProject_part1/ip/bd_labProject_part1_delayShiftReg_0/sim/bd_labProject_part1_delayShiftReg_0.vhd" \

vlog -work xil_defaultlib  -v2k5 "+incdir+../../../../project1_part1.gen/sources_1/bd/bd_labProject_part1/ipshared/7698" "+incdir+../../../../project1_part1.gen/sources_1/bd/bd_labProject_part1/ipshared/ec67/hdl" "+incdir+../../../../project1_part1.gen/sources_1/bd/bd_labProject_part1/ipshared/ee60/hdl" "+incdir+/opt-ictp/Xilinx/arg2/Vivado/2022.2/data/xilinx_vip/include" \
"../../../bd/bd_labProject_part1/ip/bd_labProject_part1_oneShotTimer_0/sim/bd_labProject_part1_oneShotTimer_0.v" \
"../../../bd/bd_labProject_part1/ip/bd_labProject_part1_pulsePositiveEdge_0/sim/bd_labProject_part1_pulsePositiveEdge_0.v" \
"../../../bd/bd_labProject_part1/ip/bd_labProject_part1_ringBuffer_0/sim/bd_labProject_part1_ringBuffer_0.v" \
"../../../bd/bd_labProject_part1/ip/bd_labProject_part1_timerAlwaysOn_0/sim/bd_labProject_part1_timerAlwaysOn_0.v" \
"../../../bd/bd_labProject_part1/ip/bd_labProject_part1_util_vector_logic_0_1/sim/bd_labProject_part1_util_vector_logic_0_1.v" \

vcom -work xil_defaultlib -93  \
"../../../bd/bd_labProject_part1/ipshared/7b64/hdl/axil.vhdl" \
"../../../bd/bd_labProject_part1/ipshared/7b64/hdl/axif.vhdl" \
"../../../bd/bd_labProject_part1/ipshared/7b64/hdl/tdpram.vhdl" \
"../../../bd/bd_labProject_part1/ipshared/7b64/hdl/graysync.vhdl" \
"../../../bd/bd_labProject_part1/ipshared/7b64/hdl/fifo.vhdl" \
"../../../bd/bd_labProject_part1/ipshared/7b64/hdl/comblock.vhdl" \
"../../../bd/bd_labProject_part1/ipshared/7b64/hdl/axi_comblock.vhdl" \
"../../../bd/bd_labProject_part1/ip/bd_labProject_part1_comblock_0_0/sim/bd_labProject_part1_comblock_0_0.vhd" \

vlog -work axi_infrastructure_v1_1_0  -v2k5 "+incdir+../../../../project1_part1.gen/sources_1/bd/bd_labProject_part1/ipshared/7698" "+incdir+../../../../project1_part1.gen/sources_1/bd/bd_labProject_part1/ipshared/ec67/hdl" "+incdir+../../../../project1_part1.gen/sources_1/bd/bd_labProject_part1/ipshared/ee60/hdl" "+incdir+/opt-ictp/Xilinx/arg2/Vivado/2022.2/data/xilinx_vip/include" \
"../../../../project1_part1.gen/sources_1/bd/bd_labProject_part1/ipshared/ec67/hdl/axi_infrastructure_v1_1_vl_rfs.v" \

vlog -work axi_vip_v1_1_13  -sv2k12 "+incdir+../../../../project1_part1.gen/sources_1/bd/bd_labProject_part1/ipshared/7698" "+incdir+../../../../project1_part1.gen/sources_1/bd/bd_labProject_part1/ipshared/ec67/hdl" "+incdir+../../../../project1_part1.gen/sources_1/bd/bd_labProject_part1/ipshared/ee60/hdl" "+incdir+/opt-ictp/Xilinx/arg2/Vivado/2022.2/data/xilinx_vip/include" \
"../../../../project1_part1.gen/sources_1/bd/bd_labProject_part1/ipshared/ffc2/hdl/axi_vip_v1_1_vl_rfs.sv" \

vlog -work processing_system7_vip_v1_0_15  -sv2k12 "+incdir+../../../../project1_part1.gen/sources_1/bd/bd_labProject_part1/ipshared/7698" "+incdir+../../../../project1_part1.gen/sources_1/bd/bd_labProject_part1/ipshared/ec67/hdl" "+incdir+../../../../project1_part1.gen/sources_1/bd/bd_labProject_part1/ipshared/ee60/hdl" "+incdir+/opt-ictp/Xilinx/arg2/Vivado/2022.2/data/xilinx_vip/include" \
"../../../../project1_part1.gen/sources_1/bd/bd_labProject_part1/ipshared/ee60/hdl/processing_system7_vip_v1_0_vl_rfs.sv" \

vlog -work xil_defaultlib  -v2k5 "+incdir+../../../../project1_part1.gen/sources_1/bd/bd_labProject_part1/ipshared/7698" "+incdir+../../../../project1_part1.gen/sources_1/bd/bd_labProject_part1/ipshared/ec67/hdl" "+incdir+../../../../project1_part1.gen/sources_1/bd/bd_labProject_part1/ipshared/ee60/hdl" "+incdir+/opt-ictp/Xilinx/arg2/Vivado/2022.2/data/xilinx_vip/include" \
"../../../bd/bd_labProject_part1/ip/bd_labProject_part1_processing_system7_0_0/sim/bd_labProject_part1_processing_system7_0_0.v" \

vcom -work lib_cdc_v1_0_2 -93  \
"../../../../project1_part1.gen/sources_1/bd/bd_labProject_part1/ipshared/ef1e/hdl/lib_cdc_v1_0_rfs.vhd" \

vcom -work proc_sys_reset_v5_0_13 -93  \
"../../../../project1_part1.gen/sources_1/bd/bd_labProject_part1/ipshared/8842/hdl/proc_sys_reset_v5_0_vh_rfs.vhd" \

vcom -work xil_defaultlib -93  \
"../../../bd/bd_labProject_part1/ip/bd_labProject_part1_rst_ps7_0_50M_0/sim/bd_labProject_part1_rst_ps7_0_50M_0.vhd" \

vlog -work generic_baseblocks_v2_1_0  -v2k5 "+incdir+../../../../project1_part1.gen/sources_1/bd/bd_labProject_part1/ipshared/7698" "+incdir+../../../../project1_part1.gen/sources_1/bd/bd_labProject_part1/ipshared/ec67/hdl" "+incdir+../../../../project1_part1.gen/sources_1/bd/bd_labProject_part1/ipshared/ee60/hdl" "+incdir+/opt-ictp/Xilinx/arg2/Vivado/2022.2/data/xilinx_vip/include" \
"../../../../project1_part1.gen/sources_1/bd/bd_labProject_part1/ipshared/b752/hdl/generic_baseblocks_v2_1_vl_rfs.v" \

vlog -work fifo_generator_v13_2_7  -v2k5 "+incdir+../../../../project1_part1.gen/sources_1/bd/bd_labProject_part1/ipshared/7698" "+incdir+../../../../project1_part1.gen/sources_1/bd/bd_labProject_part1/ipshared/ec67/hdl" "+incdir+../../../../project1_part1.gen/sources_1/bd/bd_labProject_part1/ipshared/ee60/hdl" "+incdir+/opt-ictp/Xilinx/arg2/Vivado/2022.2/data/xilinx_vip/include" \
"../../../../project1_part1.gen/sources_1/bd/bd_labProject_part1/ipshared/83df/simulation/fifo_generator_vlog_beh.v" \

vcom -work fifo_generator_v13_2_7 -93  \
"../../../../project1_part1.gen/sources_1/bd/bd_labProject_part1/ipshared/83df/hdl/fifo_generator_v13_2_rfs.vhd" \

vlog -work fifo_generator_v13_2_7  -v2k5 "+incdir+../../../../project1_part1.gen/sources_1/bd/bd_labProject_part1/ipshared/7698" "+incdir+../../../../project1_part1.gen/sources_1/bd/bd_labProject_part1/ipshared/ec67/hdl" "+incdir+../../../../project1_part1.gen/sources_1/bd/bd_labProject_part1/ipshared/ee60/hdl" "+incdir+/opt-ictp/Xilinx/arg2/Vivado/2022.2/data/xilinx_vip/include" \
"../../../../project1_part1.gen/sources_1/bd/bd_labProject_part1/ipshared/83df/hdl/fifo_generator_v13_2_rfs.v" \

vlog -work axi_data_fifo_v2_1_26  -v2k5 "+incdir+../../../../project1_part1.gen/sources_1/bd/bd_labProject_part1/ipshared/7698" "+incdir+../../../../project1_part1.gen/sources_1/bd/bd_labProject_part1/ipshared/ec67/hdl" "+incdir+../../../../project1_part1.gen/sources_1/bd/bd_labProject_part1/ipshared/ee60/hdl" "+incdir+/opt-ictp/Xilinx/arg2/Vivado/2022.2/data/xilinx_vip/include" \
"../../../../project1_part1.gen/sources_1/bd/bd_labProject_part1/ipshared/3111/hdl/axi_data_fifo_v2_1_vl_rfs.v" \

vlog -work axi_register_slice_v2_1_27  -v2k5 "+incdir+../../../../project1_part1.gen/sources_1/bd/bd_labProject_part1/ipshared/7698" "+incdir+../../../../project1_part1.gen/sources_1/bd/bd_labProject_part1/ipshared/ec67/hdl" "+incdir+../../../../project1_part1.gen/sources_1/bd/bd_labProject_part1/ipshared/ee60/hdl" "+incdir+/opt-ictp/Xilinx/arg2/Vivado/2022.2/data/xilinx_vip/include" \
"../../../../project1_part1.gen/sources_1/bd/bd_labProject_part1/ipshared/f0b4/hdl/axi_register_slice_v2_1_vl_rfs.v" \

vlog -work axi_protocol_converter_v2_1_27  -v2k5 "+incdir+../../../../project1_part1.gen/sources_1/bd/bd_labProject_part1/ipshared/7698" "+incdir+../../../../project1_part1.gen/sources_1/bd/bd_labProject_part1/ipshared/ec67/hdl" "+incdir+../../../../project1_part1.gen/sources_1/bd/bd_labProject_part1/ipshared/ee60/hdl" "+incdir+/opt-ictp/Xilinx/arg2/Vivado/2022.2/data/xilinx_vip/include" \
"../../../../project1_part1.gen/sources_1/bd/bd_labProject_part1/ipshared/aeb3/hdl/axi_protocol_converter_v2_1_vl_rfs.v" \

vlog -work xil_defaultlib  -v2k5 "+incdir+../../../../project1_part1.gen/sources_1/bd/bd_labProject_part1/ipshared/7698" "+incdir+../../../../project1_part1.gen/sources_1/bd/bd_labProject_part1/ipshared/ec67/hdl" "+incdir+../../../../project1_part1.gen/sources_1/bd/bd_labProject_part1/ipshared/ee60/hdl" "+incdir+/opt-ictp/Xilinx/arg2/Vivado/2022.2/data/xilinx_vip/include" \
"../../../bd/bd_labProject_part1/ip/bd_labProject_part1_auto_pc_0/sim/bd_labProject_part1_auto_pc_0.v" \
"../../../bd/bd_labProject_part1/sim/bd_labProject_part1.v" \

vlog -work xil_defaultlib \
"glbl.v"

