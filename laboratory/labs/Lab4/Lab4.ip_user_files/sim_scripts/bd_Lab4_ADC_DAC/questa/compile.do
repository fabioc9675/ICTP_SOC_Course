vlib questa_lib/work
vlib questa_lib/msim

vlib questa_lib/msim/xilinx_vip
vlib questa_lib/msim/xpm
vlib questa_lib/msim/xil_defaultlib
vlib questa_lib/msim/util_vector_logic_v2_0_2
vlib questa_lib/msim/xlconcat_v2_1_4
vlib questa_lib/msim/xlconstant_v1_1_7
vlib questa_lib/msim/xbip_utils_v3_0_10
vlib questa_lib/msim/c_reg_fd_v12_0_6
vlib questa_lib/msim/xbip_dsp48_wrapper_v3_0_4
vlib questa_lib/msim/xbip_pipe_v3_0_6
vlib questa_lib/msim/xbip_dsp48_addsub_v3_0_6
vlib questa_lib/msim/xbip_addsub_v3_0_6
vlib questa_lib/msim/c_addsub_v12_0_14
vlib questa_lib/msim/c_gate_bit_v12_0_6
vlib questa_lib/msim/xbip_counter_v3_0_6
vlib questa_lib/msim/c_counter_binary_v12_0_15
vlib questa_lib/msim/lib_cdc_v1_0_2
vlib questa_lib/msim/proc_sys_reset_v5_0_13
vlib questa_lib/msim/smartconnect_v1_0
vlib questa_lib/msim/axi_infrastructure_v1_1_0
vlib questa_lib/msim/axi_register_slice_v2_1_27
vlib questa_lib/msim/axi_vip_v1_1_13
vlib questa_lib/msim/processing_system7_vip_v1_0_15

vmap xilinx_vip questa_lib/msim/xilinx_vip
vmap xpm questa_lib/msim/xpm
vmap xil_defaultlib questa_lib/msim/xil_defaultlib
vmap util_vector_logic_v2_0_2 questa_lib/msim/util_vector_logic_v2_0_2
vmap xlconcat_v2_1_4 questa_lib/msim/xlconcat_v2_1_4
vmap xlconstant_v1_1_7 questa_lib/msim/xlconstant_v1_1_7
vmap xbip_utils_v3_0_10 questa_lib/msim/xbip_utils_v3_0_10
vmap c_reg_fd_v12_0_6 questa_lib/msim/c_reg_fd_v12_0_6
vmap xbip_dsp48_wrapper_v3_0_4 questa_lib/msim/xbip_dsp48_wrapper_v3_0_4
vmap xbip_pipe_v3_0_6 questa_lib/msim/xbip_pipe_v3_0_6
vmap xbip_dsp48_addsub_v3_0_6 questa_lib/msim/xbip_dsp48_addsub_v3_0_6
vmap xbip_addsub_v3_0_6 questa_lib/msim/xbip_addsub_v3_0_6
vmap c_addsub_v12_0_14 questa_lib/msim/c_addsub_v12_0_14
vmap c_gate_bit_v12_0_6 questa_lib/msim/c_gate_bit_v12_0_6
vmap xbip_counter_v3_0_6 questa_lib/msim/xbip_counter_v3_0_6
vmap c_counter_binary_v12_0_15 questa_lib/msim/c_counter_binary_v12_0_15
vmap lib_cdc_v1_0_2 questa_lib/msim/lib_cdc_v1_0_2
vmap proc_sys_reset_v5_0_13 questa_lib/msim/proc_sys_reset_v5_0_13
vmap smartconnect_v1_0 questa_lib/msim/smartconnect_v1_0
vmap axi_infrastructure_v1_1_0 questa_lib/msim/axi_infrastructure_v1_1_0
vmap axi_register_slice_v2_1_27 questa_lib/msim/axi_register_slice_v2_1_27
vmap axi_vip_v1_1_13 questa_lib/msim/axi_vip_v1_1_13
vmap processing_system7_vip_v1_0_15 questa_lib/msim/processing_system7_vip_v1_0_15

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

vlog -work xpm -64 -incr -mfcu  -sv -L axi_vip_v1_1_13 -L smartconnect_v1_0 -L processing_system7_vip_v1_0_15 -L xilinx_vip "+incdir+../../../../Lab4.gen/sources_1/bd/bd_Lab4_ADC_DAC/ipshared/f0b6/hdl/verilog" "+incdir+../../../../Lab4.gen/sources_1/bd/bd_Lab4_ADC_DAC/ipshared/66be/hdl/verilog" "+incdir+../../../../Lab4.gen/sources_1/bd/bd_Lab4_ADC_DAC/ipshared/ec67/hdl" "+incdir+../../../../Lab4.gen/sources_1/bd/bd_Lab4_ADC_DAC/ipshared/7698" "+incdir+../../../../Lab4.gen/sources_1/bd/bd_Lab4_ADC_DAC/ipshared/ee60/hdl" "+incdir+../../../../Lab4.gen/sources_1/bd/bd_Lab4_ADC_DAC/ipshared/f195/hdl/verilog" "+incdir+/opt-ictp/Xilinx/arg2/Vivado/2022.2/data/xilinx_vip/include" \
"/opt-ictp/Xilinx/arg2/Vivado/2022.2/data/ip/xpm/xpm_cdc/hdl/xpm_cdc.sv" \
"/opt-ictp/Xilinx/arg2/Vivado/2022.2/data/ip/xpm/xpm_fifo/hdl/xpm_fifo.sv" \
"/opt-ictp/Xilinx/arg2/Vivado/2022.2/data/ip/xpm/xpm_memory/hdl/xpm_memory.sv" \

vcom -work xpm -64 -93  \
"/opt-ictp/Xilinx/arg2/Vivado/2022.2/data/ip/xpm/xpm_VCOMP.vhd" \

vlog -work xil_defaultlib -64 -incr -mfcu  "+incdir+../../../../Lab4.gen/sources_1/bd/bd_Lab4_ADC_DAC/ipshared/f0b6/hdl/verilog" "+incdir+../../../../Lab4.gen/sources_1/bd/bd_Lab4_ADC_DAC/ipshared/66be/hdl/verilog" "+incdir+../../../../Lab4.gen/sources_1/bd/bd_Lab4_ADC_DAC/ipshared/ec67/hdl" "+incdir+../../../../Lab4.gen/sources_1/bd/bd_Lab4_ADC_DAC/ipshared/7698" "+incdir+../../../../Lab4.gen/sources_1/bd/bd_Lab4_ADC_DAC/ipshared/ee60/hdl" "+incdir+../../../../Lab4.gen/sources_1/bd/bd_Lab4_ADC_DAC/ipshared/f195/hdl/verilog" "+incdir+/opt-ictp/Xilinx/arg2/Vivado/2022.2/data/xilinx_vip/include" \
"../../../bd/bd_Lab4_ADC_DAC/ip/bd_Lab4_ADC_DAC_edgeDetector_0_0/sim/bd_Lab4_ADC_DAC_edgeDetector_0_0.v" \
"../../../bd/bd_Lab4_ADC_DAC/ip/bd_Lab4_ADC_DAC_pmod_adc_ad7476a_0_0/sim/bd_Lab4_ADC_DAC_pmod_adc_ad7476a_0_0.v" \

vlog -work util_vector_logic_v2_0_2 -64 -incr -mfcu  "+incdir+../../../../Lab4.gen/sources_1/bd/bd_Lab4_ADC_DAC/ipshared/f0b6/hdl/verilog" "+incdir+../../../../Lab4.gen/sources_1/bd/bd_Lab4_ADC_DAC/ipshared/66be/hdl/verilog" "+incdir+../../../../Lab4.gen/sources_1/bd/bd_Lab4_ADC_DAC/ipshared/ec67/hdl" "+incdir+../../../../Lab4.gen/sources_1/bd/bd_Lab4_ADC_DAC/ipshared/7698" "+incdir+../../../../Lab4.gen/sources_1/bd/bd_Lab4_ADC_DAC/ipshared/ee60/hdl" "+incdir+../../../../Lab4.gen/sources_1/bd/bd_Lab4_ADC_DAC/ipshared/f195/hdl/verilog" "+incdir+/opt-ictp/Xilinx/arg2/Vivado/2022.2/data/xilinx_vip/include" \
"../../../../Lab4.gen/sources_1/bd/bd_Lab4_ADC_DAC/ipshared/3d84/hdl/util_vector_logic_v2_0_vl_rfs.v" \

vlog -work xil_defaultlib -64 -incr -mfcu  "+incdir+../../../../Lab4.gen/sources_1/bd/bd_Lab4_ADC_DAC/ipshared/f0b6/hdl/verilog" "+incdir+../../../../Lab4.gen/sources_1/bd/bd_Lab4_ADC_DAC/ipshared/66be/hdl/verilog" "+incdir+../../../../Lab4.gen/sources_1/bd/bd_Lab4_ADC_DAC/ipshared/ec67/hdl" "+incdir+../../../../Lab4.gen/sources_1/bd/bd_Lab4_ADC_DAC/ipshared/7698" "+incdir+../../../../Lab4.gen/sources_1/bd/bd_Lab4_ADC_DAC/ipshared/ee60/hdl" "+incdir+../../../../Lab4.gen/sources_1/bd/bd_Lab4_ADC_DAC/ipshared/f195/hdl/verilog" "+incdir+/opt-ictp/Xilinx/arg2/Vivado/2022.2/data/xilinx_vip/include" \
"../../../bd/bd_Lab4_ADC_DAC/ip/bd_Lab4_ADC_DAC_util_vector_logic_0_0/sim/bd_Lab4_ADC_DAC_util_vector_logic_0_0.v" \

vlog -work xlconcat_v2_1_4 -64 -incr -mfcu  "+incdir+../../../../Lab4.gen/sources_1/bd/bd_Lab4_ADC_DAC/ipshared/f0b6/hdl/verilog" "+incdir+../../../../Lab4.gen/sources_1/bd/bd_Lab4_ADC_DAC/ipshared/66be/hdl/verilog" "+incdir+../../../../Lab4.gen/sources_1/bd/bd_Lab4_ADC_DAC/ipshared/ec67/hdl" "+incdir+../../../../Lab4.gen/sources_1/bd/bd_Lab4_ADC_DAC/ipshared/7698" "+incdir+../../../../Lab4.gen/sources_1/bd/bd_Lab4_ADC_DAC/ipshared/ee60/hdl" "+incdir+../../../../Lab4.gen/sources_1/bd/bd_Lab4_ADC_DAC/ipshared/f195/hdl/verilog" "+incdir+/opt-ictp/Xilinx/arg2/Vivado/2022.2/data/xilinx_vip/include" \
"../../../../Lab4.gen/sources_1/bd/bd_Lab4_ADC_DAC/ipshared/4b67/hdl/xlconcat_v2_1_vl_rfs.v" \

vlog -work xil_defaultlib -64 -incr -mfcu  "+incdir+../../../../Lab4.gen/sources_1/bd/bd_Lab4_ADC_DAC/ipshared/f0b6/hdl/verilog" "+incdir+../../../../Lab4.gen/sources_1/bd/bd_Lab4_ADC_DAC/ipshared/66be/hdl/verilog" "+incdir+../../../../Lab4.gen/sources_1/bd/bd_Lab4_ADC_DAC/ipshared/ec67/hdl" "+incdir+../../../../Lab4.gen/sources_1/bd/bd_Lab4_ADC_DAC/ipshared/7698" "+incdir+../../../../Lab4.gen/sources_1/bd/bd_Lab4_ADC_DAC/ipshared/ee60/hdl" "+incdir+../../../../Lab4.gen/sources_1/bd/bd_Lab4_ADC_DAC/ipshared/f195/hdl/verilog" "+incdir+/opt-ictp/Xilinx/arg2/Vivado/2022.2/data/xilinx_vip/include" \
"../../../bd/bd_Lab4_ADC_DAC/ip/bd_Lab4_ADC_DAC_xlconcat_0_0/sim/bd_Lab4_ADC_DAC_xlconcat_0_0.v" \

vlog -work xlconstant_v1_1_7 -64 -incr -mfcu  "+incdir+../../../../Lab4.gen/sources_1/bd/bd_Lab4_ADC_DAC/ipshared/f0b6/hdl/verilog" "+incdir+../../../../Lab4.gen/sources_1/bd/bd_Lab4_ADC_DAC/ipshared/66be/hdl/verilog" "+incdir+../../../../Lab4.gen/sources_1/bd/bd_Lab4_ADC_DAC/ipshared/ec67/hdl" "+incdir+../../../../Lab4.gen/sources_1/bd/bd_Lab4_ADC_DAC/ipshared/7698" "+incdir+../../../../Lab4.gen/sources_1/bd/bd_Lab4_ADC_DAC/ipshared/ee60/hdl" "+incdir+../../../../Lab4.gen/sources_1/bd/bd_Lab4_ADC_DAC/ipshared/f195/hdl/verilog" "+incdir+/opt-ictp/Xilinx/arg2/Vivado/2022.2/data/xilinx_vip/include" \
"../../../../Lab4.gen/sources_1/bd/bd_Lab4_ADC_DAC/ipshared/badb/hdl/xlconstant_v1_1_vl_rfs.v" \

vlog -work xil_defaultlib -64 -incr -mfcu  "+incdir+../../../../Lab4.gen/sources_1/bd/bd_Lab4_ADC_DAC/ipshared/f0b6/hdl/verilog" "+incdir+../../../../Lab4.gen/sources_1/bd/bd_Lab4_ADC_DAC/ipshared/66be/hdl/verilog" "+incdir+../../../../Lab4.gen/sources_1/bd/bd_Lab4_ADC_DAC/ipshared/ec67/hdl" "+incdir+../../../../Lab4.gen/sources_1/bd/bd_Lab4_ADC_DAC/ipshared/7698" "+incdir+../../../../Lab4.gen/sources_1/bd/bd_Lab4_ADC_DAC/ipshared/ee60/hdl" "+incdir+../../../../Lab4.gen/sources_1/bd/bd_Lab4_ADC_DAC/ipshared/f195/hdl/verilog" "+incdir+/opt-ictp/Xilinx/arg2/Vivado/2022.2/data/xilinx_vip/include" \
"../../../bd/bd_Lab4_ADC_DAC/ip/bd_Lab4_ADC_DAC_xlconstant_2_0/sim/bd_Lab4_ADC_DAC_xlconstant_2_0.v" \

vcom -work xbip_utils_v3_0_10 -64 -93  \
"../../../../Lab4.gen/sources_1/bd/bd_Lab4_ADC_DAC/ipshared/364f/hdl/xbip_utils_v3_0_vh_rfs.vhd" \

vcom -work c_reg_fd_v12_0_6 -64 -93  \
"../../../../Lab4.gen/sources_1/bd/bd_Lab4_ADC_DAC/ipshared/edec/hdl/c_reg_fd_v12_0_vh_rfs.vhd" \

vcom -work xbip_dsp48_wrapper_v3_0_4 -64 -93  \
"../../../../Lab4.gen/sources_1/bd/bd_Lab4_ADC_DAC/ipshared/cdbf/hdl/xbip_dsp48_wrapper_v3_0_vh_rfs.vhd" \

vcom -work xbip_pipe_v3_0_6 -64 -93  \
"../../../../Lab4.gen/sources_1/bd/bd_Lab4_ADC_DAC/ipshared/7468/hdl/xbip_pipe_v3_0_vh_rfs.vhd" \

vcom -work xbip_dsp48_addsub_v3_0_6 -64 -93  \
"../../../../Lab4.gen/sources_1/bd/bd_Lab4_ADC_DAC/ipshared/910d/hdl/xbip_dsp48_addsub_v3_0_vh_rfs.vhd" \

vcom -work xbip_addsub_v3_0_6 -64 -93  \
"../../../../Lab4.gen/sources_1/bd/bd_Lab4_ADC_DAC/ipshared/cfdd/hdl/xbip_addsub_v3_0_vh_rfs.vhd" \

vcom -work c_addsub_v12_0_14 -64 -93  \
"../../../../Lab4.gen/sources_1/bd/bd_Lab4_ADC_DAC/ipshared/ebb8/hdl/c_addsub_v12_0_vh_rfs.vhd" \

vcom -work c_gate_bit_v12_0_6 -64 -93  \
"../../../../Lab4.gen/sources_1/bd/bd_Lab4_ADC_DAC/ipshared/7161/hdl/c_gate_bit_v12_0_vh_rfs.vhd" \

vcom -work xbip_counter_v3_0_6 -64 -93  \
"../../../../Lab4.gen/sources_1/bd/bd_Lab4_ADC_DAC/ipshared/9ac8/hdl/xbip_counter_v3_0_vh_rfs.vhd" \

vcom -work c_counter_binary_v12_0_15 -64 -93  \
"../../../../Lab4.gen/sources_1/bd/bd_Lab4_ADC_DAC/ipshared/e1e1/hdl/c_counter_binary_v12_0_vh_rfs.vhd" \

vcom -work xil_defaultlib -64 -93  \
"../../../bd/bd_Lab4_ADC_DAC/ip/bd_Lab4_ADC_DAC_c_counter_binary_0_0/sim/bd_Lab4_ADC_DAC_c_counter_binary_0_0.vhd" \

vlog -work xil_defaultlib -64 -incr -mfcu  "+incdir+../../../../Lab4.gen/sources_1/bd/bd_Lab4_ADC_DAC/ipshared/f0b6/hdl/verilog" "+incdir+../../../../Lab4.gen/sources_1/bd/bd_Lab4_ADC_DAC/ipshared/66be/hdl/verilog" "+incdir+../../../../Lab4.gen/sources_1/bd/bd_Lab4_ADC_DAC/ipshared/ec67/hdl" "+incdir+../../../../Lab4.gen/sources_1/bd/bd_Lab4_ADC_DAC/ipshared/7698" "+incdir+../../../../Lab4.gen/sources_1/bd/bd_Lab4_ADC_DAC/ipshared/ee60/hdl" "+incdir+../../../../Lab4.gen/sources_1/bd/bd_Lab4_ADC_DAC/ipshared/f195/hdl/verilog" "+incdir+/opt-ictp/Xilinx/arg2/Vivado/2022.2/data/xilinx_vip/include" \
"../../../bd/bd_Lab4_ADC_DAC/ip/bd_Lab4_ADC_DAC_pmod_dac_ad7303_0_0/sim/bd_Lab4_ADC_DAC_pmod_dac_ad7303_0_0.v" \
"../../../bd/bd_Lab4_ADC_DAC/ip/bd_Lab4_ADC_DAC_util_vector_logic_0_1/sim/bd_Lab4_ADC_DAC_util_vector_logic_0_1.v" \
"../../../bd/bd_Lab4_ADC_DAC/ip/bd_Lab4_ADC_DAC_util_vector_logic_1_0/sim/bd_Lab4_ADC_DAC_util_vector_logic_1_0.v" \
"../../../bd/bd_Lab4_ADC_DAC/ip/bd_Lab4_ADC_DAC_axi_smc_0/bd_0/sim/bd_f406.v" \
"../../../bd/bd_Lab4_ADC_DAC/ip/bd_Lab4_ADC_DAC_axi_smc_0/bd_0/ip/ip_0/sim/bd_f406_one_0.v" \

vcom -work lib_cdc_v1_0_2 -64 -93  \
"../../../../Lab4.gen/sources_1/bd/bd_Lab4_ADC_DAC/ipshared/ef1e/hdl/lib_cdc_v1_0_rfs.vhd" \

vcom -work proc_sys_reset_v5_0_13 -64 -93  \
"../../../../Lab4.gen/sources_1/bd/bd_Lab4_ADC_DAC/ipshared/8842/hdl/proc_sys_reset_v5_0_vh_rfs.vhd" \

vcom -work xil_defaultlib -64 -93  \
"../../../bd/bd_Lab4_ADC_DAC/ip/bd_Lab4_ADC_DAC_axi_smc_0/bd_0/ip/ip_1/sim/bd_f406_psr_aclk_0.vhd" \

vlog -work smartconnect_v1_0 -64 -incr -mfcu  -sv -L axi_vip_v1_1_13 -L smartconnect_v1_0 -L processing_system7_vip_v1_0_15 -L xilinx_vip "+incdir+../../../../Lab4.gen/sources_1/bd/bd_Lab4_ADC_DAC/ipshared/f0b6/hdl/verilog" "+incdir+../../../../Lab4.gen/sources_1/bd/bd_Lab4_ADC_DAC/ipshared/66be/hdl/verilog" "+incdir+../../../../Lab4.gen/sources_1/bd/bd_Lab4_ADC_DAC/ipshared/ec67/hdl" "+incdir+../../../../Lab4.gen/sources_1/bd/bd_Lab4_ADC_DAC/ipshared/7698" "+incdir+../../../../Lab4.gen/sources_1/bd/bd_Lab4_ADC_DAC/ipshared/ee60/hdl" "+incdir+../../../../Lab4.gen/sources_1/bd/bd_Lab4_ADC_DAC/ipshared/f195/hdl/verilog" "+incdir+/opt-ictp/Xilinx/arg2/Vivado/2022.2/data/xilinx_vip/include" \
"../../../../Lab4.gen/sources_1/bd/bd_Lab4_ADC_DAC/ipshared/f0b6/hdl/sc_util_v1_0_vl_rfs.sv" \
"../../../../Lab4.gen/sources_1/bd/bd_Lab4_ADC_DAC/ipshared/c012/hdl/sc_switchboard_v1_0_vl_rfs.sv" \

vlog -work xil_defaultlib -64 -incr -mfcu  -sv -L axi_vip_v1_1_13 -L smartconnect_v1_0 -L processing_system7_vip_v1_0_15 -L xilinx_vip "+incdir+../../../../Lab4.gen/sources_1/bd/bd_Lab4_ADC_DAC/ipshared/f0b6/hdl/verilog" "+incdir+../../../../Lab4.gen/sources_1/bd/bd_Lab4_ADC_DAC/ipshared/66be/hdl/verilog" "+incdir+../../../../Lab4.gen/sources_1/bd/bd_Lab4_ADC_DAC/ipshared/ec67/hdl" "+incdir+../../../../Lab4.gen/sources_1/bd/bd_Lab4_ADC_DAC/ipshared/7698" "+incdir+../../../../Lab4.gen/sources_1/bd/bd_Lab4_ADC_DAC/ipshared/ee60/hdl" "+incdir+../../../../Lab4.gen/sources_1/bd/bd_Lab4_ADC_DAC/ipshared/f195/hdl/verilog" "+incdir+/opt-ictp/Xilinx/arg2/Vivado/2022.2/data/xilinx_vip/include" \
"../../../bd/bd_Lab4_ADC_DAC/ip/bd_Lab4_ADC_DAC_axi_smc_0/bd_0/ip/ip_2/sim/bd_f406_arsw_0.sv" \
"../../../bd/bd_Lab4_ADC_DAC/ip/bd_Lab4_ADC_DAC_axi_smc_0/bd_0/ip/ip_3/sim/bd_f406_rsw_0.sv" \
"../../../bd/bd_Lab4_ADC_DAC/ip/bd_Lab4_ADC_DAC_axi_smc_0/bd_0/ip/ip_4/sim/bd_f406_awsw_0.sv" \
"../../../bd/bd_Lab4_ADC_DAC/ip/bd_Lab4_ADC_DAC_axi_smc_0/bd_0/ip/ip_5/sim/bd_f406_wsw_0.sv" \
"../../../bd/bd_Lab4_ADC_DAC/ip/bd_Lab4_ADC_DAC_axi_smc_0/bd_0/ip/ip_6/sim/bd_f406_bsw_0.sv" \

vlog -work smartconnect_v1_0 -64 -incr -mfcu  -sv -L axi_vip_v1_1_13 -L smartconnect_v1_0 -L processing_system7_vip_v1_0_15 -L xilinx_vip "+incdir+../../../../Lab4.gen/sources_1/bd/bd_Lab4_ADC_DAC/ipshared/f0b6/hdl/verilog" "+incdir+../../../../Lab4.gen/sources_1/bd/bd_Lab4_ADC_DAC/ipshared/66be/hdl/verilog" "+incdir+../../../../Lab4.gen/sources_1/bd/bd_Lab4_ADC_DAC/ipshared/ec67/hdl" "+incdir+../../../../Lab4.gen/sources_1/bd/bd_Lab4_ADC_DAC/ipshared/7698" "+incdir+../../../../Lab4.gen/sources_1/bd/bd_Lab4_ADC_DAC/ipshared/ee60/hdl" "+incdir+../../../../Lab4.gen/sources_1/bd/bd_Lab4_ADC_DAC/ipshared/f195/hdl/verilog" "+incdir+/opt-ictp/Xilinx/arg2/Vivado/2022.2/data/xilinx_vip/include" \
"../../../../Lab4.gen/sources_1/bd/bd_Lab4_ADC_DAC/ipshared/be1f/hdl/sc_mmu_v1_0_vl_rfs.sv" \

vlog -work xil_defaultlib -64 -incr -mfcu  -sv -L axi_vip_v1_1_13 -L smartconnect_v1_0 -L processing_system7_vip_v1_0_15 -L xilinx_vip "+incdir+../../../../Lab4.gen/sources_1/bd/bd_Lab4_ADC_DAC/ipshared/f0b6/hdl/verilog" "+incdir+../../../../Lab4.gen/sources_1/bd/bd_Lab4_ADC_DAC/ipshared/66be/hdl/verilog" "+incdir+../../../../Lab4.gen/sources_1/bd/bd_Lab4_ADC_DAC/ipshared/ec67/hdl" "+incdir+../../../../Lab4.gen/sources_1/bd/bd_Lab4_ADC_DAC/ipshared/7698" "+incdir+../../../../Lab4.gen/sources_1/bd/bd_Lab4_ADC_DAC/ipshared/ee60/hdl" "+incdir+../../../../Lab4.gen/sources_1/bd/bd_Lab4_ADC_DAC/ipshared/f195/hdl/verilog" "+incdir+/opt-ictp/Xilinx/arg2/Vivado/2022.2/data/xilinx_vip/include" \
"../../../bd/bd_Lab4_ADC_DAC/ip/bd_Lab4_ADC_DAC_axi_smc_0/bd_0/ip/ip_7/sim/bd_f406_s00mmu_0.sv" \

vlog -work smartconnect_v1_0 -64 -incr -mfcu  -sv -L axi_vip_v1_1_13 -L smartconnect_v1_0 -L processing_system7_vip_v1_0_15 -L xilinx_vip "+incdir+../../../../Lab4.gen/sources_1/bd/bd_Lab4_ADC_DAC/ipshared/f0b6/hdl/verilog" "+incdir+../../../../Lab4.gen/sources_1/bd/bd_Lab4_ADC_DAC/ipshared/66be/hdl/verilog" "+incdir+../../../../Lab4.gen/sources_1/bd/bd_Lab4_ADC_DAC/ipshared/ec67/hdl" "+incdir+../../../../Lab4.gen/sources_1/bd/bd_Lab4_ADC_DAC/ipshared/7698" "+incdir+../../../../Lab4.gen/sources_1/bd/bd_Lab4_ADC_DAC/ipshared/ee60/hdl" "+incdir+../../../../Lab4.gen/sources_1/bd/bd_Lab4_ADC_DAC/ipshared/f195/hdl/verilog" "+incdir+/opt-ictp/Xilinx/arg2/Vivado/2022.2/data/xilinx_vip/include" \
"../../../../Lab4.gen/sources_1/bd/bd_Lab4_ADC_DAC/ipshared/4fd2/hdl/sc_transaction_regulator_v1_0_vl_rfs.sv" \

vlog -work xil_defaultlib -64 -incr -mfcu  -sv -L axi_vip_v1_1_13 -L smartconnect_v1_0 -L processing_system7_vip_v1_0_15 -L xilinx_vip "+incdir+../../../../Lab4.gen/sources_1/bd/bd_Lab4_ADC_DAC/ipshared/f0b6/hdl/verilog" "+incdir+../../../../Lab4.gen/sources_1/bd/bd_Lab4_ADC_DAC/ipshared/66be/hdl/verilog" "+incdir+../../../../Lab4.gen/sources_1/bd/bd_Lab4_ADC_DAC/ipshared/ec67/hdl" "+incdir+../../../../Lab4.gen/sources_1/bd/bd_Lab4_ADC_DAC/ipshared/7698" "+incdir+../../../../Lab4.gen/sources_1/bd/bd_Lab4_ADC_DAC/ipshared/ee60/hdl" "+incdir+../../../../Lab4.gen/sources_1/bd/bd_Lab4_ADC_DAC/ipshared/f195/hdl/verilog" "+incdir+/opt-ictp/Xilinx/arg2/Vivado/2022.2/data/xilinx_vip/include" \
"../../../bd/bd_Lab4_ADC_DAC/ip/bd_Lab4_ADC_DAC_axi_smc_0/bd_0/ip/ip_8/sim/bd_f406_s00tr_0.sv" \

vlog -work smartconnect_v1_0 -64 -incr -mfcu  -sv -L axi_vip_v1_1_13 -L smartconnect_v1_0 -L processing_system7_vip_v1_0_15 -L xilinx_vip "+incdir+../../../../Lab4.gen/sources_1/bd/bd_Lab4_ADC_DAC/ipshared/f0b6/hdl/verilog" "+incdir+../../../../Lab4.gen/sources_1/bd/bd_Lab4_ADC_DAC/ipshared/66be/hdl/verilog" "+incdir+../../../../Lab4.gen/sources_1/bd/bd_Lab4_ADC_DAC/ipshared/ec67/hdl" "+incdir+../../../../Lab4.gen/sources_1/bd/bd_Lab4_ADC_DAC/ipshared/7698" "+incdir+../../../../Lab4.gen/sources_1/bd/bd_Lab4_ADC_DAC/ipshared/ee60/hdl" "+incdir+../../../../Lab4.gen/sources_1/bd/bd_Lab4_ADC_DAC/ipshared/f195/hdl/verilog" "+incdir+/opt-ictp/Xilinx/arg2/Vivado/2022.2/data/xilinx_vip/include" \
"../../../../Lab4.gen/sources_1/bd/bd_Lab4_ADC_DAC/ipshared/637d/hdl/sc_si_converter_v1_0_vl_rfs.sv" \

vlog -work xil_defaultlib -64 -incr -mfcu  -sv -L axi_vip_v1_1_13 -L smartconnect_v1_0 -L processing_system7_vip_v1_0_15 -L xilinx_vip "+incdir+../../../../Lab4.gen/sources_1/bd/bd_Lab4_ADC_DAC/ipshared/f0b6/hdl/verilog" "+incdir+../../../../Lab4.gen/sources_1/bd/bd_Lab4_ADC_DAC/ipshared/66be/hdl/verilog" "+incdir+../../../../Lab4.gen/sources_1/bd/bd_Lab4_ADC_DAC/ipshared/ec67/hdl" "+incdir+../../../../Lab4.gen/sources_1/bd/bd_Lab4_ADC_DAC/ipshared/7698" "+incdir+../../../../Lab4.gen/sources_1/bd/bd_Lab4_ADC_DAC/ipshared/ee60/hdl" "+incdir+../../../../Lab4.gen/sources_1/bd/bd_Lab4_ADC_DAC/ipshared/f195/hdl/verilog" "+incdir+/opt-ictp/Xilinx/arg2/Vivado/2022.2/data/xilinx_vip/include" \
"../../../bd/bd_Lab4_ADC_DAC/ip/bd_Lab4_ADC_DAC_axi_smc_0/bd_0/ip/ip_9/sim/bd_f406_s00sic_0.sv" \

vlog -work smartconnect_v1_0 -64 -incr -mfcu  -sv -L axi_vip_v1_1_13 -L smartconnect_v1_0 -L processing_system7_vip_v1_0_15 -L xilinx_vip "+incdir+../../../../Lab4.gen/sources_1/bd/bd_Lab4_ADC_DAC/ipshared/f0b6/hdl/verilog" "+incdir+../../../../Lab4.gen/sources_1/bd/bd_Lab4_ADC_DAC/ipshared/66be/hdl/verilog" "+incdir+../../../../Lab4.gen/sources_1/bd/bd_Lab4_ADC_DAC/ipshared/ec67/hdl" "+incdir+../../../../Lab4.gen/sources_1/bd/bd_Lab4_ADC_DAC/ipshared/7698" "+incdir+../../../../Lab4.gen/sources_1/bd/bd_Lab4_ADC_DAC/ipshared/ee60/hdl" "+incdir+../../../../Lab4.gen/sources_1/bd/bd_Lab4_ADC_DAC/ipshared/f195/hdl/verilog" "+incdir+/opt-ictp/Xilinx/arg2/Vivado/2022.2/data/xilinx_vip/include" \
"../../../../Lab4.gen/sources_1/bd/bd_Lab4_ADC_DAC/ipshared/f38e/hdl/sc_axi2sc_v1_0_vl_rfs.sv" \

vlog -work xil_defaultlib -64 -incr -mfcu  -sv -L axi_vip_v1_1_13 -L smartconnect_v1_0 -L processing_system7_vip_v1_0_15 -L xilinx_vip "+incdir+../../../../Lab4.gen/sources_1/bd/bd_Lab4_ADC_DAC/ipshared/f0b6/hdl/verilog" "+incdir+../../../../Lab4.gen/sources_1/bd/bd_Lab4_ADC_DAC/ipshared/66be/hdl/verilog" "+incdir+../../../../Lab4.gen/sources_1/bd/bd_Lab4_ADC_DAC/ipshared/ec67/hdl" "+incdir+../../../../Lab4.gen/sources_1/bd/bd_Lab4_ADC_DAC/ipshared/7698" "+incdir+../../../../Lab4.gen/sources_1/bd/bd_Lab4_ADC_DAC/ipshared/ee60/hdl" "+incdir+../../../../Lab4.gen/sources_1/bd/bd_Lab4_ADC_DAC/ipshared/f195/hdl/verilog" "+incdir+/opt-ictp/Xilinx/arg2/Vivado/2022.2/data/xilinx_vip/include" \
"../../../bd/bd_Lab4_ADC_DAC/ip/bd_Lab4_ADC_DAC_axi_smc_0/bd_0/ip/ip_10/sim/bd_f406_s00a2s_0.sv" \

vlog -work smartconnect_v1_0 -64 -incr -mfcu  -sv -L axi_vip_v1_1_13 -L smartconnect_v1_0 -L processing_system7_vip_v1_0_15 -L xilinx_vip "+incdir+../../../../Lab4.gen/sources_1/bd/bd_Lab4_ADC_DAC/ipshared/f0b6/hdl/verilog" "+incdir+../../../../Lab4.gen/sources_1/bd/bd_Lab4_ADC_DAC/ipshared/66be/hdl/verilog" "+incdir+../../../../Lab4.gen/sources_1/bd/bd_Lab4_ADC_DAC/ipshared/ec67/hdl" "+incdir+../../../../Lab4.gen/sources_1/bd/bd_Lab4_ADC_DAC/ipshared/7698" "+incdir+../../../../Lab4.gen/sources_1/bd/bd_Lab4_ADC_DAC/ipshared/ee60/hdl" "+incdir+../../../../Lab4.gen/sources_1/bd/bd_Lab4_ADC_DAC/ipshared/f195/hdl/verilog" "+incdir+/opt-ictp/Xilinx/arg2/Vivado/2022.2/data/xilinx_vip/include" \
"../../../../Lab4.gen/sources_1/bd/bd_Lab4_ADC_DAC/ipshared/66be/hdl/sc_node_v1_0_vl_rfs.sv" \

vlog -work xil_defaultlib -64 -incr -mfcu  -sv -L axi_vip_v1_1_13 -L smartconnect_v1_0 -L processing_system7_vip_v1_0_15 -L xilinx_vip "+incdir+../../../../Lab4.gen/sources_1/bd/bd_Lab4_ADC_DAC/ipshared/f0b6/hdl/verilog" "+incdir+../../../../Lab4.gen/sources_1/bd/bd_Lab4_ADC_DAC/ipshared/66be/hdl/verilog" "+incdir+../../../../Lab4.gen/sources_1/bd/bd_Lab4_ADC_DAC/ipshared/ec67/hdl" "+incdir+../../../../Lab4.gen/sources_1/bd/bd_Lab4_ADC_DAC/ipshared/7698" "+incdir+../../../../Lab4.gen/sources_1/bd/bd_Lab4_ADC_DAC/ipshared/ee60/hdl" "+incdir+../../../../Lab4.gen/sources_1/bd/bd_Lab4_ADC_DAC/ipshared/f195/hdl/verilog" "+incdir+/opt-ictp/Xilinx/arg2/Vivado/2022.2/data/xilinx_vip/include" \
"../../../bd/bd_Lab4_ADC_DAC/ip/bd_Lab4_ADC_DAC_axi_smc_0/bd_0/ip/ip_11/sim/bd_f406_sarn_0.sv" \
"../../../bd/bd_Lab4_ADC_DAC/ip/bd_Lab4_ADC_DAC_axi_smc_0/bd_0/ip/ip_12/sim/bd_f406_srn_0.sv" \
"../../../bd/bd_Lab4_ADC_DAC/ip/bd_Lab4_ADC_DAC_axi_smc_0/bd_0/ip/ip_13/sim/bd_f406_sawn_0.sv" \
"../../../bd/bd_Lab4_ADC_DAC/ip/bd_Lab4_ADC_DAC_axi_smc_0/bd_0/ip/ip_14/sim/bd_f406_swn_0.sv" \
"../../../bd/bd_Lab4_ADC_DAC/ip/bd_Lab4_ADC_DAC_axi_smc_0/bd_0/ip/ip_15/sim/bd_f406_sbn_0.sv" \

vlog -work smartconnect_v1_0 -64 -incr -mfcu  -sv -L axi_vip_v1_1_13 -L smartconnect_v1_0 -L processing_system7_vip_v1_0_15 -L xilinx_vip "+incdir+../../../../Lab4.gen/sources_1/bd/bd_Lab4_ADC_DAC/ipshared/f0b6/hdl/verilog" "+incdir+../../../../Lab4.gen/sources_1/bd/bd_Lab4_ADC_DAC/ipshared/66be/hdl/verilog" "+incdir+../../../../Lab4.gen/sources_1/bd/bd_Lab4_ADC_DAC/ipshared/ec67/hdl" "+incdir+../../../../Lab4.gen/sources_1/bd/bd_Lab4_ADC_DAC/ipshared/7698" "+incdir+../../../../Lab4.gen/sources_1/bd/bd_Lab4_ADC_DAC/ipshared/ee60/hdl" "+incdir+../../../../Lab4.gen/sources_1/bd/bd_Lab4_ADC_DAC/ipshared/f195/hdl/verilog" "+incdir+/opt-ictp/Xilinx/arg2/Vivado/2022.2/data/xilinx_vip/include" \
"../../../../Lab4.gen/sources_1/bd/bd_Lab4_ADC_DAC/ipshared/9cc5/hdl/sc_sc2axi_v1_0_vl_rfs.sv" \

vlog -work xil_defaultlib -64 -incr -mfcu  -sv -L axi_vip_v1_1_13 -L smartconnect_v1_0 -L processing_system7_vip_v1_0_15 -L xilinx_vip "+incdir+../../../../Lab4.gen/sources_1/bd/bd_Lab4_ADC_DAC/ipshared/f0b6/hdl/verilog" "+incdir+../../../../Lab4.gen/sources_1/bd/bd_Lab4_ADC_DAC/ipshared/66be/hdl/verilog" "+incdir+../../../../Lab4.gen/sources_1/bd/bd_Lab4_ADC_DAC/ipshared/ec67/hdl" "+incdir+../../../../Lab4.gen/sources_1/bd/bd_Lab4_ADC_DAC/ipshared/7698" "+incdir+../../../../Lab4.gen/sources_1/bd/bd_Lab4_ADC_DAC/ipshared/ee60/hdl" "+incdir+../../../../Lab4.gen/sources_1/bd/bd_Lab4_ADC_DAC/ipshared/f195/hdl/verilog" "+incdir+/opt-ictp/Xilinx/arg2/Vivado/2022.2/data/xilinx_vip/include" \
"../../../bd/bd_Lab4_ADC_DAC/ip/bd_Lab4_ADC_DAC_axi_smc_0/bd_0/ip/ip_16/sim/bd_f406_m00s2a_0.sv" \
"../../../bd/bd_Lab4_ADC_DAC/ip/bd_Lab4_ADC_DAC_axi_smc_0/bd_0/ip/ip_17/sim/bd_f406_m00arn_0.sv" \
"../../../bd/bd_Lab4_ADC_DAC/ip/bd_Lab4_ADC_DAC_axi_smc_0/bd_0/ip/ip_18/sim/bd_f406_m00rn_0.sv" \
"../../../bd/bd_Lab4_ADC_DAC/ip/bd_Lab4_ADC_DAC_axi_smc_0/bd_0/ip/ip_19/sim/bd_f406_m00awn_0.sv" \
"../../../bd/bd_Lab4_ADC_DAC/ip/bd_Lab4_ADC_DAC_axi_smc_0/bd_0/ip/ip_20/sim/bd_f406_m00wn_0.sv" \
"../../../bd/bd_Lab4_ADC_DAC/ip/bd_Lab4_ADC_DAC_axi_smc_0/bd_0/ip/ip_21/sim/bd_f406_m00bn_0.sv" \

vlog -work smartconnect_v1_0 -64 -incr -mfcu  -sv -L axi_vip_v1_1_13 -L smartconnect_v1_0 -L processing_system7_vip_v1_0_15 -L xilinx_vip "+incdir+../../../../Lab4.gen/sources_1/bd/bd_Lab4_ADC_DAC/ipshared/f0b6/hdl/verilog" "+incdir+../../../../Lab4.gen/sources_1/bd/bd_Lab4_ADC_DAC/ipshared/66be/hdl/verilog" "+incdir+../../../../Lab4.gen/sources_1/bd/bd_Lab4_ADC_DAC/ipshared/ec67/hdl" "+incdir+../../../../Lab4.gen/sources_1/bd/bd_Lab4_ADC_DAC/ipshared/7698" "+incdir+../../../../Lab4.gen/sources_1/bd/bd_Lab4_ADC_DAC/ipshared/ee60/hdl" "+incdir+../../../../Lab4.gen/sources_1/bd/bd_Lab4_ADC_DAC/ipshared/f195/hdl/verilog" "+incdir+/opt-ictp/Xilinx/arg2/Vivado/2022.2/data/xilinx_vip/include" \
"../../../../Lab4.gen/sources_1/bd/bd_Lab4_ADC_DAC/ipshared/6bba/hdl/sc_exit_v1_0_vl_rfs.sv" \

vlog -work xil_defaultlib -64 -incr -mfcu  -sv -L axi_vip_v1_1_13 -L smartconnect_v1_0 -L processing_system7_vip_v1_0_15 -L xilinx_vip "+incdir+../../../../Lab4.gen/sources_1/bd/bd_Lab4_ADC_DAC/ipshared/f0b6/hdl/verilog" "+incdir+../../../../Lab4.gen/sources_1/bd/bd_Lab4_ADC_DAC/ipshared/66be/hdl/verilog" "+incdir+../../../../Lab4.gen/sources_1/bd/bd_Lab4_ADC_DAC/ipshared/ec67/hdl" "+incdir+../../../../Lab4.gen/sources_1/bd/bd_Lab4_ADC_DAC/ipshared/7698" "+incdir+../../../../Lab4.gen/sources_1/bd/bd_Lab4_ADC_DAC/ipshared/ee60/hdl" "+incdir+../../../../Lab4.gen/sources_1/bd/bd_Lab4_ADC_DAC/ipshared/f195/hdl/verilog" "+incdir+/opt-ictp/Xilinx/arg2/Vivado/2022.2/data/xilinx_vip/include" \
"../../../bd/bd_Lab4_ADC_DAC/ip/bd_Lab4_ADC_DAC_axi_smc_0/bd_0/ip/ip_22/sim/bd_f406_m00e_0.sv" \
"../../../bd/bd_Lab4_ADC_DAC/ip/bd_Lab4_ADC_DAC_axi_smc_0/bd_0/ip/ip_23/sim/bd_f406_m01s2a_0.sv" \
"../../../bd/bd_Lab4_ADC_DAC/ip/bd_Lab4_ADC_DAC_axi_smc_0/bd_0/ip/ip_24/sim/bd_f406_m01arn_0.sv" \
"../../../bd/bd_Lab4_ADC_DAC/ip/bd_Lab4_ADC_DAC_axi_smc_0/bd_0/ip/ip_25/sim/bd_f406_m01rn_0.sv" \
"../../../bd/bd_Lab4_ADC_DAC/ip/bd_Lab4_ADC_DAC_axi_smc_0/bd_0/ip/ip_26/sim/bd_f406_m01awn_0.sv" \
"../../../bd/bd_Lab4_ADC_DAC/ip/bd_Lab4_ADC_DAC_axi_smc_0/bd_0/ip/ip_27/sim/bd_f406_m01wn_0.sv" \
"../../../bd/bd_Lab4_ADC_DAC/ip/bd_Lab4_ADC_DAC_axi_smc_0/bd_0/ip/ip_28/sim/bd_f406_m01bn_0.sv" \
"../../../bd/bd_Lab4_ADC_DAC/ip/bd_Lab4_ADC_DAC_axi_smc_0/bd_0/ip/ip_29/sim/bd_f406_m01e_0.sv" \

vlog -work axi_infrastructure_v1_1_0 -64 -incr -mfcu  "+incdir+../../../../Lab4.gen/sources_1/bd/bd_Lab4_ADC_DAC/ipshared/f0b6/hdl/verilog" "+incdir+../../../../Lab4.gen/sources_1/bd/bd_Lab4_ADC_DAC/ipshared/66be/hdl/verilog" "+incdir+../../../../Lab4.gen/sources_1/bd/bd_Lab4_ADC_DAC/ipshared/ec67/hdl" "+incdir+../../../../Lab4.gen/sources_1/bd/bd_Lab4_ADC_DAC/ipshared/7698" "+incdir+../../../../Lab4.gen/sources_1/bd/bd_Lab4_ADC_DAC/ipshared/ee60/hdl" "+incdir+../../../../Lab4.gen/sources_1/bd/bd_Lab4_ADC_DAC/ipshared/f195/hdl/verilog" "+incdir+/opt-ictp/Xilinx/arg2/Vivado/2022.2/data/xilinx_vip/include" \
"../../../../Lab4.gen/sources_1/bd/bd_Lab4_ADC_DAC/ipshared/ec67/hdl/axi_infrastructure_v1_1_vl_rfs.v" \

vlog -work axi_register_slice_v2_1_27 -64 -incr -mfcu  "+incdir+../../../../Lab4.gen/sources_1/bd/bd_Lab4_ADC_DAC/ipshared/f0b6/hdl/verilog" "+incdir+../../../../Lab4.gen/sources_1/bd/bd_Lab4_ADC_DAC/ipshared/66be/hdl/verilog" "+incdir+../../../../Lab4.gen/sources_1/bd/bd_Lab4_ADC_DAC/ipshared/ec67/hdl" "+incdir+../../../../Lab4.gen/sources_1/bd/bd_Lab4_ADC_DAC/ipshared/7698" "+incdir+../../../../Lab4.gen/sources_1/bd/bd_Lab4_ADC_DAC/ipshared/ee60/hdl" "+incdir+../../../../Lab4.gen/sources_1/bd/bd_Lab4_ADC_DAC/ipshared/f195/hdl/verilog" "+incdir+/opt-ictp/Xilinx/arg2/Vivado/2022.2/data/xilinx_vip/include" \
"../../../../Lab4.gen/sources_1/bd/bd_Lab4_ADC_DAC/ipshared/f0b4/hdl/axi_register_slice_v2_1_vl_rfs.v" \

vlog -work axi_vip_v1_1_13 -64 -incr -mfcu  -sv -L axi_vip_v1_1_13 -L smartconnect_v1_0 -L processing_system7_vip_v1_0_15 -L xilinx_vip "+incdir+../../../../Lab4.gen/sources_1/bd/bd_Lab4_ADC_DAC/ipshared/f0b6/hdl/verilog" "+incdir+../../../../Lab4.gen/sources_1/bd/bd_Lab4_ADC_DAC/ipshared/66be/hdl/verilog" "+incdir+../../../../Lab4.gen/sources_1/bd/bd_Lab4_ADC_DAC/ipshared/ec67/hdl" "+incdir+../../../../Lab4.gen/sources_1/bd/bd_Lab4_ADC_DAC/ipshared/7698" "+incdir+../../../../Lab4.gen/sources_1/bd/bd_Lab4_ADC_DAC/ipshared/ee60/hdl" "+incdir+../../../../Lab4.gen/sources_1/bd/bd_Lab4_ADC_DAC/ipshared/f195/hdl/verilog" "+incdir+/opt-ictp/Xilinx/arg2/Vivado/2022.2/data/xilinx_vip/include" \
"../../../../Lab4.gen/sources_1/bd/bd_Lab4_ADC_DAC/ipshared/ffc2/hdl/axi_vip_v1_1_vl_rfs.sv" \

vlog -work xil_defaultlib -64 -incr -mfcu  "+incdir+../../../../Lab4.gen/sources_1/bd/bd_Lab4_ADC_DAC/ipshared/f0b6/hdl/verilog" "+incdir+../../../../Lab4.gen/sources_1/bd/bd_Lab4_ADC_DAC/ipshared/66be/hdl/verilog" "+incdir+../../../../Lab4.gen/sources_1/bd/bd_Lab4_ADC_DAC/ipshared/ec67/hdl" "+incdir+../../../../Lab4.gen/sources_1/bd/bd_Lab4_ADC_DAC/ipshared/7698" "+incdir+../../../../Lab4.gen/sources_1/bd/bd_Lab4_ADC_DAC/ipshared/ee60/hdl" "+incdir+../../../../Lab4.gen/sources_1/bd/bd_Lab4_ADC_DAC/ipshared/f195/hdl/verilog" "+incdir+/opt-ictp/Xilinx/arg2/Vivado/2022.2/data/xilinx_vip/include" \
"../../../bd/bd_Lab4_ADC_DAC/ip/bd_Lab4_ADC_DAC_axi_smc_0/sim/bd_Lab4_ADC_DAC_axi_smc_0.v" \
"../../../bd/bd_Lab4_ADC_DAC/ip/bd_Lab4_ADC_DAC_clk_wiz_0_0/bd_Lab4_ADC_DAC_clk_wiz_0_0_clk_wiz.v" \
"../../../bd/bd_Lab4_ADC_DAC/ip/bd_Lab4_ADC_DAC_clk_wiz_0_0/bd_Lab4_ADC_DAC_clk_wiz_0_0.v" \

vcom -work xil_defaultlib -64 -93  \
"../../../bd/bd_Lab4_ADC_DAC/ipshared/7b64/hdl/axil.vhdl" \
"../../../bd/bd_Lab4_ADC_DAC/ipshared/7b64/hdl/axif.vhdl" \
"../../../bd/bd_Lab4_ADC_DAC/ipshared/7b64/hdl/tdpram.vhdl" \
"../../../bd/bd_Lab4_ADC_DAC/ipshared/7b64/hdl/graysync.vhdl" \
"../../../bd/bd_Lab4_ADC_DAC/ipshared/7b64/hdl/fifo.vhdl" \
"../../../bd/bd_Lab4_ADC_DAC/ipshared/7b64/hdl/comblock.vhdl" \
"../../../bd/bd_Lab4_ADC_DAC/ipshared/7b64/hdl/axi_comblock.vhdl" \
"../../../bd/bd_Lab4_ADC_DAC/ip/bd_Lab4_ADC_DAC_comblock_0_0/sim/bd_Lab4_ADC_DAC_comblock_0_0.vhd" \

vlog -work processing_system7_vip_v1_0_15 -64 -incr -mfcu  -sv -L axi_vip_v1_1_13 -L smartconnect_v1_0 -L processing_system7_vip_v1_0_15 -L xilinx_vip "+incdir+../../../../Lab4.gen/sources_1/bd/bd_Lab4_ADC_DAC/ipshared/f0b6/hdl/verilog" "+incdir+../../../../Lab4.gen/sources_1/bd/bd_Lab4_ADC_DAC/ipshared/66be/hdl/verilog" "+incdir+../../../../Lab4.gen/sources_1/bd/bd_Lab4_ADC_DAC/ipshared/ec67/hdl" "+incdir+../../../../Lab4.gen/sources_1/bd/bd_Lab4_ADC_DAC/ipshared/7698" "+incdir+../../../../Lab4.gen/sources_1/bd/bd_Lab4_ADC_DAC/ipshared/ee60/hdl" "+incdir+../../../../Lab4.gen/sources_1/bd/bd_Lab4_ADC_DAC/ipshared/f195/hdl/verilog" "+incdir+/opt-ictp/Xilinx/arg2/Vivado/2022.2/data/xilinx_vip/include" \
"../../../../Lab4.gen/sources_1/bd/bd_Lab4_ADC_DAC/ipshared/ee60/hdl/processing_system7_vip_v1_0_vl_rfs.sv" \

vlog -work xil_defaultlib -64 -incr -mfcu  "+incdir+../../../../Lab4.gen/sources_1/bd/bd_Lab4_ADC_DAC/ipshared/f0b6/hdl/verilog" "+incdir+../../../../Lab4.gen/sources_1/bd/bd_Lab4_ADC_DAC/ipshared/66be/hdl/verilog" "+incdir+../../../../Lab4.gen/sources_1/bd/bd_Lab4_ADC_DAC/ipshared/ec67/hdl" "+incdir+../../../../Lab4.gen/sources_1/bd/bd_Lab4_ADC_DAC/ipshared/7698" "+incdir+../../../../Lab4.gen/sources_1/bd/bd_Lab4_ADC_DAC/ipshared/ee60/hdl" "+incdir+../../../../Lab4.gen/sources_1/bd/bd_Lab4_ADC_DAC/ipshared/f195/hdl/verilog" "+incdir+/opt-ictp/Xilinx/arg2/Vivado/2022.2/data/xilinx_vip/include" \
"../../../bd/bd_Lab4_ADC_DAC/ip/bd_Lab4_ADC_DAC_processing_system7_0_0/sim/bd_Lab4_ADC_DAC_processing_system7_0_0.v" \

vcom -work xil_defaultlib -64 -93  \
"../../../bd/bd_Lab4_ADC_DAC/ip/bd_Lab4_ADC_DAC_rst_ps7_0_100M_0/sim/bd_Lab4_ADC_DAC_rst_ps7_0_100M_0.vhd" \

vlog -work xil_defaultlib -64 -incr -mfcu  "+incdir+../../../../Lab4.gen/sources_1/bd/bd_Lab4_ADC_DAC/ipshared/f0b6/hdl/verilog" "+incdir+../../../../Lab4.gen/sources_1/bd/bd_Lab4_ADC_DAC/ipshared/66be/hdl/verilog" "+incdir+../../../../Lab4.gen/sources_1/bd/bd_Lab4_ADC_DAC/ipshared/ec67/hdl" "+incdir+../../../../Lab4.gen/sources_1/bd/bd_Lab4_ADC_DAC/ipshared/7698" "+incdir+../../../../Lab4.gen/sources_1/bd/bd_Lab4_ADC_DAC/ipshared/ee60/hdl" "+incdir+../../../../Lab4.gen/sources_1/bd/bd_Lab4_ADC_DAC/ipshared/f195/hdl/verilog" "+incdir+/opt-ictp/Xilinx/arg2/Vivado/2022.2/data/xilinx_vip/include" \
"../../../bd/bd_Lab4_ADC_DAC/ip/bd_Lab4_ADC_DAC_util_vector_logic_0_2/sim/bd_Lab4_ADC_DAC_util_vector_logic_0_2.v" \
"../../../bd/bd_Lab4_ADC_DAC/ip/bd_Lab4_ADC_DAC_xlconstant_0_0/sim/bd_Lab4_ADC_DAC_xlconstant_0_0.v" \
"../../../bd/bd_Lab4_ADC_DAC/ip/bd_Lab4_ADC_DAC_xlconstant_1_0/sim/bd_Lab4_ADC_DAC_xlconstant_1_0.v" \
"../../../bd/bd_Lab4_ADC_DAC/ip/bd_Lab4_ADC_DAC_xlconstant_2_1/sim/bd_Lab4_ADC_DAC_xlconstant_2_1.v" \
"../../../bd/bd_Lab4_ADC_DAC/sim/bd_Lab4_ADC_DAC.v" \
"../../../../Lab4.gen/sources_1/bd/bd_Lab4_ADC_DAC/ipshared/f195/hdl/verilog/fir_Block_for_end_proc.v" \
"../../../../Lab4.gen/sources_1/bd/bd_Lab4_ADC_DAC/ipshared/f195/hdl/verilog/fir_fifo_w32_d2_S.v" \
"../../../../Lab4.gen/sources_1/bd/bd_Lab4_ADC_DAC/ipshared/f195/hdl/verilog/fir_flow_control_loop_pipe.v" \
"../../../../Lab4.gen/sources_1/bd/bd_Lab4_ADC_DAC/ipshared/f195/hdl/verilog/fir_hls_deadlock_idx0_monitor.v" \
"../../../../Lab4.gen/sources_1/bd/bd_Lab4_ADC_DAC/ipshared/f195/hdl/verilog/fir_Loop_Shift_Accum_Loop_proc2.v" \
"../../../../Lab4.gen/sources_1/bd/bd_Lab4_ADC_DAC/ipshared/f195/hdl/verilog/fir_mul_32s_32s_32_1_1.v" \
"../../../../Lab4.gen/sources_1/bd/bd_Lab4_ADC_DAC/ipshared/f195/hdl/verilog/fir_mux_1818_32_1_1.v" \
"../../../../Lab4.gen/sources_1/bd/bd_Lab4_ADC_DAC/ipshared/f195/hdl/verilog/fir_regslice_both.v" \
"../../../../Lab4.gen/sources_1/bd/bd_Lab4_ADC_DAC/ipshared/f195/hdl/verilog/fir.v" \
"../../../bd/bd_Lab4_ADC_DAC/ip/bd_Lab4_ADC_DAC_fir_1_0/sim/bd_Lab4_ADC_DAC_fir_1_0.v" \

vlog -work xil_defaultlib \
"glbl.v"

