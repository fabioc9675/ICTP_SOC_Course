vlib work
vlib riviera

vlib riviera/xilinx_vip
vlib riviera/xpm
vlib riviera/axi_infrastructure_v1_1_0
vlib riviera/axi_vip_v1_1_13
vlib riviera/processing_system7_vip_v1_0_15
vlib riviera/xil_defaultlib
vlib riviera/axi_lite_ipif_v3_0_4
vlib riviera/lib_cdc_v1_0_2
vlib riviera/interrupt_control_v3_1_4
vlib riviera/axi_gpio_v2_0_29
vlib riviera/generic_baseblocks_v2_1_0
vlib riviera/axi_register_slice_v2_1_27
vlib riviera/fifo_generator_v13_2_7
vlib riviera/axi_data_fifo_v2_1_26
vlib riviera/axi_crossbar_v2_1_28
vlib riviera/axi_protocol_converter_v2_1_27
vlib riviera/proc_sys_reset_v5_0_13
vlib riviera/xlslice_v1_0_2

vmap xilinx_vip riviera/xilinx_vip
vmap xpm riviera/xpm
vmap axi_infrastructure_v1_1_0 riviera/axi_infrastructure_v1_1_0
vmap axi_vip_v1_1_13 riviera/axi_vip_v1_1_13
vmap processing_system7_vip_v1_0_15 riviera/processing_system7_vip_v1_0_15
vmap xil_defaultlib riviera/xil_defaultlib
vmap axi_lite_ipif_v3_0_4 riviera/axi_lite_ipif_v3_0_4
vmap lib_cdc_v1_0_2 riviera/lib_cdc_v1_0_2
vmap interrupt_control_v3_1_4 riviera/interrupt_control_v3_1_4
vmap axi_gpio_v2_0_29 riviera/axi_gpio_v2_0_29
vmap generic_baseblocks_v2_1_0 riviera/generic_baseblocks_v2_1_0
vmap axi_register_slice_v2_1_27 riviera/axi_register_slice_v2_1_27
vmap fifo_generator_v13_2_7 riviera/fifo_generator_v13_2_7
vmap axi_data_fifo_v2_1_26 riviera/axi_data_fifo_v2_1_26
vmap axi_crossbar_v2_1_28 riviera/axi_crossbar_v2_1_28
vmap axi_protocol_converter_v2_1_27 riviera/axi_protocol_converter_v2_1_27
vmap proc_sys_reset_v5_0_13 riviera/proc_sys_reset_v5_0_13
vmap xlslice_v1_0_2 riviera/xlslice_v1_0_2

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

vlog -work xpm  -sv2k12 "+incdir+../../../../Lab1.gen/sources_1/bd/bd_gpio/ipshared/ec67/hdl" "+incdir+../../../../Lab1.gen/sources_1/bd/bd_gpio/ipshared/ee60/hdl" "+incdir+/opt-ictp/Xilinx/arg2/Vivado/2022.2/data/xilinx_vip/include" \
"/opt-ictp/Xilinx/arg2/Vivado/2022.2/data/ip/xpm/xpm_cdc/hdl/xpm_cdc.sv" \
"/opt-ictp/Xilinx/arg2/Vivado/2022.2/data/ip/xpm/xpm_memory/hdl/xpm_memory.sv" \

vcom -work xpm -93  \
"/opt-ictp/Xilinx/arg2/Vivado/2022.2/data/ip/xpm/xpm_VCOMP.vhd" \

vlog -work axi_infrastructure_v1_1_0  -v2k5 "+incdir+../../../../Lab1.gen/sources_1/bd/bd_gpio/ipshared/ec67/hdl" "+incdir+../../../../Lab1.gen/sources_1/bd/bd_gpio/ipshared/ee60/hdl" "+incdir+/opt-ictp/Xilinx/arg2/Vivado/2022.2/data/xilinx_vip/include" \
"../../../../Lab1.gen/sources_1/bd/bd_gpio/ipshared/ec67/hdl/axi_infrastructure_v1_1_vl_rfs.v" \

vlog -work axi_vip_v1_1_13  -sv2k12 "+incdir+../../../../Lab1.gen/sources_1/bd/bd_gpio/ipshared/ec67/hdl" "+incdir+../../../../Lab1.gen/sources_1/bd/bd_gpio/ipshared/ee60/hdl" "+incdir+/opt-ictp/Xilinx/arg2/Vivado/2022.2/data/xilinx_vip/include" \
"../../../../Lab1.gen/sources_1/bd/bd_gpio/ipshared/ffc2/hdl/axi_vip_v1_1_vl_rfs.sv" \

vlog -work processing_system7_vip_v1_0_15  -sv2k12 "+incdir+../../../../Lab1.gen/sources_1/bd/bd_gpio/ipshared/ec67/hdl" "+incdir+../../../../Lab1.gen/sources_1/bd/bd_gpio/ipshared/ee60/hdl" "+incdir+/opt-ictp/Xilinx/arg2/Vivado/2022.2/data/xilinx_vip/include" \
"../../../../Lab1.gen/sources_1/bd/bd_gpio/ipshared/ee60/hdl/processing_system7_vip_v1_0_vl_rfs.sv" \

vlog -work xil_defaultlib  -v2k5 "+incdir+../../../../Lab1.gen/sources_1/bd/bd_gpio/ipshared/ec67/hdl" "+incdir+../../../../Lab1.gen/sources_1/bd/bd_gpio/ipshared/ee60/hdl" "+incdir+/opt-ictp/Xilinx/arg2/Vivado/2022.2/data/xilinx_vip/include" \
"../../../bd/bd_gpio/ip/bd_gpio_processing_system7_0_0/sim/bd_gpio_processing_system7_0_0.v" \

vcom -work axi_lite_ipif_v3_0_4 -93  \
"../../../../Lab1.gen/sources_1/bd/bd_gpio/ipshared/66ea/hdl/axi_lite_ipif_v3_0_vh_rfs.vhd" \

vcom -work lib_cdc_v1_0_2 -93  \
"../../../../Lab1.gen/sources_1/bd/bd_gpio/ipshared/ef1e/hdl/lib_cdc_v1_0_rfs.vhd" \

vcom -work interrupt_control_v3_1_4 -93  \
"../../../../Lab1.gen/sources_1/bd/bd_gpio/ipshared/a040/hdl/interrupt_control_v3_1_vh_rfs.vhd" \

vcom -work axi_gpio_v2_0_29 -93  \
"../../../../Lab1.gen/sources_1/bd/bd_gpio/ipshared/6219/hdl/axi_gpio_v2_0_vh_rfs.vhd" \

vcom -work xil_defaultlib -93  \
"../../../bd/bd_gpio/ip/bd_gpio_axi_gpio_0_0/sim/bd_gpio_axi_gpio_0_0.vhd" \

vlog -work generic_baseblocks_v2_1_0  -v2k5 "+incdir+../../../../Lab1.gen/sources_1/bd/bd_gpio/ipshared/ec67/hdl" "+incdir+../../../../Lab1.gen/sources_1/bd/bd_gpio/ipshared/ee60/hdl" "+incdir+/opt-ictp/Xilinx/arg2/Vivado/2022.2/data/xilinx_vip/include" \
"../../../../Lab1.gen/sources_1/bd/bd_gpio/ipshared/b752/hdl/generic_baseblocks_v2_1_vl_rfs.v" \

vlog -work axi_register_slice_v2_1_27  -v2k5 "+incdir+../../../../Lab1.gen/sources_1/bd/bd_gpio/ipshared/ec67/hdl" "+incdir+../../../../Lab1.gen/sources_1/bd/bd_gpio/ipshared/ee60/hdl" "+incdir+/opt-ictp/Xilinx/arg2/Vivado/2022.2/data/xilinx_vip/include" \
"../../../../Lab1.gen/sources_1/bd/bd_gpio/ipshared/f0b4/hdl/axi_register_slice_v2_1_vl_rfs.v" \

vlog -work fifo_generator_v13_2_7  -v2k5 "+incdir+../../../../Lab1.gen/sources_1/bd/bd_gpio/ipshared/ec67/hdl" "+incdir+../../../../Lab1.gen/sources_1/bd/bd_gpio/ipshared/ee60/hdl" "+incdir+/opt-ictp/Xilinx/arg2/Vivado/2022.2/data/xilinx_vip/include" \
"../../../../Lab1.gen/sources_1/bd/bd_gpio/ipshared/83df/simulation/fifo_generator_vlog_beh.v" \

vcom -work fifo_generator_v13_2_7 -93  \
"../../../../Lab1.gen/sources_1/bd/bd_gpio/ipshared/83df/hdl/fifo_generator_v13_2_rfs.vhd" \

vlog -work fifo_generator_v13_2_7  -v2k5 "+incdir+../../../../Lab1.gen/sources_1/bd/bd_gpio/ipshared/ec67/hdl" "+incdir+../../../../Lab1.gen/sources_1/bd/bd_gpio/ipshared/ee60/hdl" "+incdir+/opt-ictp/Xilinx/arg2/Vivado/2022.2/data/xilinx_vip/include" \
"../../../../Lab1.gen/sources_1/bd/bd_gpio/ipshared/83df/hdl/fifo_generator_v13_2_rfs.v" \

vlog -work axi_data_fifo_v2_1_26  -v2k5 "+incdir+../../../../Lab1.gen/sources_1/bd/bd_gpio/ipshared/ec67/hdl" "+incdir+../../../../Lab1.gen/sources_1/bd/bd_gpio/ipshared/ee60/hdl" "+incdir+/opt-ictp/Xilinx/arg2/Vivado/2022.2/data/xilinx_vip/include" \
"../../../../Lab1.gen/sources_1/bd/bd_gpio/ipshared/3111/hdl/axi_data_fifo_v2_1_vl_rfs.v" \

vlog -work axi_crossbar_v2_1_28  -v2k5 "+incdir+../../../../Lab1.gen/sources_1/bd/bd_gpio/ipshared/ec67/hdl" "+incdir+../../../../Lab1.gen/sources_1/bd/bd_gpio/ipshared/ee60/hdl" "+incdir+/opt-ictp/Xilinx/arg2/Vivado/2022.2/data/xilinx_vip/include" \
"../../../../Lab1.gen/sources_1/bd/bd_gpio/ipshared/c40e/hdl/axi_crossbar_v2_1_vl_rfs.v" \

vlog -work xil_defaultlib  -v2k5 "+incdir+../../../../Lab1.gen/sources_1/bd/bd_gpio/ipshared/ec67/hdl" "+incdir+../../../../Lab1.gen/sources_1/bd/bd_gpio/ipshared/ee60/hdl" "+incdir+/opt-ictp/Xilinx/arg2/Vivado/2022.2/data/xilinx_vip/include" \
"../../../bd/bd_gpio/ip/bd_gpio_xbar_0/sim/bd_gpio_xbar_0.v" \

vlog -work axi_protocol_converter_v2_1_27  -v2k5 "+incdir+../../../../Lab1.gen/sources_1/bd/bd_gpio/ipshared/ec67/hdl" "+incdir+../../../../Lab1.gen/sources_1/bd/bd_gpio/ipshared/ee60/hdl" "+incdir+/opt-ictp/Xilinx/arg2/Vivado/2022.2/data/xilinx_vip/include" \
"../../../../Lab1.gen/sources_1/bd/bd_gpio/ipshared/aeb3/hdl/axi_protocol_converter_v2_1_vl_rfs.v" \

vlog -work xil_defaultlib  -v2k5 "+incdir+../../../../Lab1.gen/sources_1/bd/bd_gpio/ipshared/ec67/hdl" "+incdir+../../../../Lab1.gen/sources_1/bd/bd_gpio/ipshared/ee60/hdl" "+incdir+/opt-ictp/Xilinx/arg2/Vivado/2022.2/data/xilinx_vip/include" \
"../../../bd/bd_gpio/ip/bd_gpio_auto_pc_0/sim/bd_gpio_auto_pc_0.v" \

vcom -work proc_sys_reset_v5_0_13 -93  \
"../../../../Lab1.gen/sources_1/bd/bd_gpio/ipshared/8842/hdl/proc_sys_reset_v5_0_vh_rfs.vhd" \

vcom -work xil_defaultlib -93  \
"../../../bd/bd_gpio/ip/bd_gpio_rst_ps7_0_100M_0/sim/bd_gpio_rst_ps7_0_100M_0.vhd" \
"../../../bd/bd_gpio/ip/bd_gpio_axi_gpio_0_1/sim/bd_gpio_axi_gpio_0_1.vhd" \

vlog -work xlslice_v1_0_2  -v2k5 "+incdir+../../../../Lab1.gen/sources_1/bd/bd_gpio/ipshared/ec67/hdl" "+incdir+../../../../Lab1.gen/sources_1/bd/bd_gpio/ipshared/ee60/hdl" "+incdir+/opt-ictp/Xilinx/arg2/Vivado/2022.2/data/xilinx_vip/include" \
"../../../../Lab1.gen/sources_1/bd/bd_gpio/ipshared/11d0/hdl/xlslice_v1_0_vl_rfs.v" \

vlog -work xil_defaultlib  -v2k5 "+incdir+../../../../Lab1.gen/sources_1/bd/bd_gpio/ipshared/ec67/hdl" "+incdir+../../../../Lab1.gen/sources_1/bd/bd_gpio/ipshared/ee60/hdl" "+incdir+/opt-ictp/Xilinx/arg2/Vivado/2022.2/data/xilinx_vip/include" \
"../../../bd/bd_gpio/ip/bd_gpio_xlslice_0_0/sim/bd_gpio_xlslice_0_0.v" \
"../../../bd/bd_gpio/sim/bd_gpio.v" \

vlog -work xil_defaultlib \
"glbl.v"

