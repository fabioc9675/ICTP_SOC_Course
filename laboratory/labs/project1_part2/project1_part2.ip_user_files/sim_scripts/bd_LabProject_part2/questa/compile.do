vlib questa_lib/work
vlib questa_lib/msim

vlib questa_lib/msim/xilinx_vip
vlib questa_lib/msim/xil_defaultlib
vlib questa_lib/msim/xlconstant_v1_1_7
vlib questa_lib/msim/lib_cdc_v1_0_2
vlib questa_lib/msim/proc_sys_reset_v5_0_13
vlib questa_lib/msim/smartconnect_v1_0
vlib questa_lib/msim/axi_infrastructure_v1_1_0
vlib questa_lib/msim/axi_register_slice_v2_1_27
vlib questa_lib/msim/axi_vip_v1_1_13
vlib questa_lib/msim/xbip_utils_v3_0_10
vlib questa_lib/msim/c_reg_fd_v12_0_6
vlib questa_lib/msim/c_mux_bit_v12_0_6
vlib questa_lib/msim/c_shift_ram_v12_0_14
vlib questa_lib/msim/util_vector_logic_v2_0_2
vlib questa_lib/msim/xbip_dsp48_wrapper_v3_0_4
vlib questa_lib/msim/xbip_pipe_v3_0_6
vlib questa_lib/msim/xbip_dsp48_addsub_v3_0_6
vlib questa_lib/msim/xbip_addsub_v3_0_6
vlib questa_lib/msim/c_addsub_v12_0_14
vlib questa_lib/msim/c_gate_bit_v12_0_6
vlib questa_lib/msim/xbip_counter_v3_0_6
vlib questa_lib/msim/c_counter_binary_v12_0_15
vlib questa_lib/msim/processing_system7_vip_v1_0_15
vlib questa_lib/msim/xbip_bram18k_v3_0_6
vlib questa_lib/msim/mult_gen_v12_0_18

vmap xilinx_vip questa_lib/msim/xilinx_vip
vmap xil_defaultlib questa_lib/msim/xil_defaultlib
vmap xlconstant_v1_1_7 questa_lib/msim/xlconstant_v1_1_7
vmap lib_cdc_v1_0_2 questa_lib/msim/lib_cdc_v1_0_2
vmap proc_sys_reset_v5_0_13 questa_lib/msim/proc_sys_reset_v5_0_13
vmap smartconnect_v1_0 questa_lib/msim/smartconnect_v1_0
vmap axi_infrastructure_v1_1_0 questa_lib/msim/axi_infrastructure_v1_1_0
vmap axi_register_slice_v2_1_27 questa_lib/msim/axi_register_slice_v2_1_27
vmap axi_vip_v1_1_13 questa_lib/msim/axi_vip_v1_1_13
vmap xbip_utils_v3_0_10 questa_lib/msim/xbip_utils_v3_0_10
vmap c_reg_fd_v12_0_6 questa_lib/msim/c_reg_fd_v12_0_6
vmap c_mux_bit_v12_0_6 questa_lib/msim/c_mux_bit_v12_0_6
vmap c_shift_ram_v12_0_14 questa_lib/msim/c_shift_ram_v12_0_14
vmap util_vector_logic_v2_0_2 questa_lib/msim/util_vector_logic_v2_0_2
vmap xbip_dsp48_wrapper_v3_0_4 questa_lib/msim/xbip_dsp48_wrapper_v3_0_4
vmap xbip_pipe_v3_0_6 questa_lib/msim/xbip_pipe_v3_0_6
vmap xbip_dsp48_addsub_v3_0_6 questa_lib/msim/xbip_dsp48_addsub_v3_0_6
vmap xbip_addsub_v3_0_6 questa_lib/msim/xbip_addsub_v3_0_6
vmap c_addsub_v12_0_14 questa_lib/msim/c_addsub_v12_0_14
vmap c_gate_bit_v12_0_6 questa_lib/msim/c_gate_bit_v12_0_6
vmap xbip_counter_v3_0_6 questa_lib/msim/xbip_counter_v3_0_6
vmap c_counter_binary_v12_0_15 questa_lib/msim/c_counter_binary_v12_0_15
vmap processing_system7_vip_v1_0_15 questa_lib/msim/processing_system7_vip_v1_0_15
vmap xbip_bram18k_v3_0_6 questa_lib/msim/xbip_bram18k_v3_0_6
vmap mult_gen_v12_0_18 questa_lib/msim/mult_gen_v12_0_18

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

vlog -work xil_defaultlib -64 -incr -mfcu  "+incdir+../../../../project1_part2.gen/sources_1/bd/bd_LabProject_part2/ipshared/f0b6/hdl/verilog" "+incdir+../../../../project1_part2.gen/sources_1/bd/bd_LabProject_part2/ipshared/66be/hdl/verilog" "+incdir+../../../../project1_part2.gen/sources_1/bd/bd_LabProject_part2/ipshared/ec67/hdl" "+incdir+../../../../project1_part2.gen/sources_1/bd/bd_LabProject_part2/ipshared/7698" "+incdir+../../../../project1_part2.gen/sources_1/bd/bd_LabProject_part2/ipshared/ee60/hdl" "+incdir+/opt-ictp/Xilinx/arg2/Vivado/2022.2/data/xilinx_vip/include" \
"../../../bd/bd_LabProject_part2/ip/bd_LabProject_part2_axi_smc_0/bd_0/sim/bd_17fb.v" \

vlog -work xlconstant_v1_1_7 -64 -incr -mfcu  "+incdir+../../../../project1_part2.gen/sources_1/bd/bd_LabProject_part2/ipshared/f0b6/hdl/verilog" "+incdir+../../../../project1_part2.gen/sources_1/bd/bd_LabProject_part2/ipshared/66be/hdl/verilog" "+incdir+../../../../project1_part2.gen/sources_1/bd/bd_LabProject_part2/ipshared/ec67/hdl" "+incdir+../../../../project1_part2.gen/sources_1/bd/bd_LabProject_part2/ipshared/7698" "+incdir+../../../../project1_part2.gen/sources_1/bd/bd_LabProject_part2/ipshared/ee60/hdl" "+incdir+/opt-ictp/Xilinx/arg2/Vivado/2022.2/data/xilinx_vip/include" \
"../../../../project1_part2.gen/sources_1/bd/bd_LabProject_part2/ipshared/badb/hdl/xlconstant_v1_1_vl_rfs.v" \

vlog -work xil_defaultlib -64 -incr -mfcu  "+incdir+../../../../project1_part2.gen/sources_1/bd/bd_LabProject_part2/ipshared/f0b6/hdl/verilog" "+incdir+../../../../project1_part2.gen/sources_1/bd/bd_LabProject_part2/ipshared/66be/hdl/verilog" "+incdir+../../../../project1_part2.gen/sources_1/bd/bd_LabProject_part2/ipshared/ec67/hdl" "+incdir+../../../../project1_part2.gen/sources_1/bd/bd_LabProject_part2/ipshared/7698" "+incdir+../../../../project1_part2.gen/sources_1/bd/bd_LabProject_part2/ipshared/ee60/hdl" "+incdir+/opt-ictp/Xilinx/arg2/Vivado/2022.2/data/xilinx_vip/include" \
"../../../bd/bd_LabProject_part2/ip/bd_LabProject_part2_axi_smc_0/bd_0/ip/ip_0/sim/bd_17fb_one_0.v" \

vcom -work lib_cdc_v1_0_2 -64 -93  \
"../../../../project1_part2.gen/sources_1/bd/bd_LabProject_part2/ipshared/ef1e/hdl/lib_cdc_v1_0_rfs.vhd" \

vcom -work proc_sys_reset_v5_0_13 -64 -93  \
"../../../../project1_part2.gen/sources_1/bd/bd_LabProject_part2/ipshared/8842/hdl/proc_sys_reset_v5_0_vh_rfs.vhd" \

vcom -work xil_defaultlib -64 -93  \
"../../../bd/bd_LabProject_part2/ip/bd_LabProject_part2_axi_smc_0/bd_0/ip/ip_1/sim/bd_17fb_psr_aclk_0.vhd" \

vlog -work smartconnect_v1_0 -64 -incr -mfcu  -sv -L axi_vip_v1_1_13 -L smartconnect_v1_0 -L processing_system7_vip_v1_0_15 -L xilinx_vip "+incdir+../../../../project1_part2.gen/sources_1/bd/bd_LabProject_part2/ipshared/f0b6/hdl/verilog" "+incdir+../../../../project1_part2.gen/sources_1/bd/bd_LabProject_part2/ipshared/66be/hdl/verilog" "+incdir+../../../../project1_part2.gen/sources_1/bd/bd_LabProject_part2/ipshared/ec67/hdl" "+incdir+../../../../project1_part2.gen/sources_1/bd/bd_LabProject_part2/ipshared/7698" "+incdir+../../../../project1_part2.gen/sources_1/bd/bd_LabProject_part2/ipshared/ee60/hdl" "+incdir+/opt-ictp/Xilinx/arg2/Vivado/2022.2/data/xilinx_vip/include" \
"../../../../project1_part2.gen/sources_1/bd/bd_LabProject_part2/ipshared/f0b6/hdl/sc_util_v1_0_vl_rfs.sv" \
"../../../../project1_part2.gen/sources_1/bd/bd_LabProject_part2/ipshared/c012/hdl/sc_switchboard_v1_0_vl_rfs.sv" \

vlog -work xil_defaultlib -64 -incr -mfcu  -sv -L axi_vip_v1_1_13 -L smartconnect_v1_0 -L processing_system7_vip_v1_0_15 -L xilinx_vip "+incdir+../../../../project1_part2.gen/sources_1/bd/bd_LabProject_part2/ipshared/f0b6/hdl/verilog" "+incdir+../../../../project1_part2.gen/sources_1/bd/bd_LabProject_part2/ipshared/66be/hdl/verilog" "+incdir+../../../../project1_part2.gen/sources_1/bd/bd_LabProject_part2/ipshared/ec67/hdl" "+incdir+../../../../project1_part2.gen/sources_1/bd/bd_LabProject_part2/ipshared/7698" "+incdir+../../../../project1_part2.gen/sources_1/bd/bd_LabProject_part2/ipshared/ee60/hdl" "+incdir+/opt-ictp/Xilinx/arg2/Vivado/2022.2/data/xilinx_vip/include" \
"../../../bd/bd_LabProject_part2/ip/bd_LabProject_part2_axi_smc_0/bd_0/ip/ip_2/sim/bd_17fb_arsw_0.sv" \
"../../../bd/bd_LabProject_part2/ip/bd_LabProject_part2_axi_smc_0/bd_0/ip/ip_3/sim/bd_17fb_rsw_0.sv" \
"../../../bd/bd_LabProject_part2/ip/bd_LabProject_part2_axi_smc_0/bd_0/ip/ip_4/sim/bd_17fb_awsw_0.sv" \
"../../../bd/bd_LabProject_part2/ip/bd_LabProject_part2_axi_smc_0/bd_0/ip/ip_5/sim/bd_17fb_wsw_0.sv" \
"../../../bd/bd_LabProject_part2/ip/bd_LabProject_part2_axi_smc_0/bd_0/ip/ip_6/sim/bd_17fb_bsw_0.sv" \

vlog -work smartconnect_v1_0 -64 -incr -mfcu  -sv -L axi_vip_v1_1_13 -L smartconnect_v1_0 -L processing_system7_vip_v1_0_15 -L xilinx_vip "+incdir+../../../../project1_part2.gen/sources_1/bd/bd_LabProject_part2/ipshared/f0b6/hdl/verilog" "+incdir+../../../../project1_part2.gen/sources_1/bd/bd_LabProject_part2/ipshared/66be/hdl/verilog" "+incdir+../../../../project1_part2.gen/sources_1/bd/bd_LabProject_part2/ipshared/ec67/hdl" "+incdir+../../../../project1_part2.gen/sources_1/bd/bd_LabProject_part2/ipshared/7698" "+incdir+../../../../project1_part2.gen/sources_1/bd/bd_LabProject_part2/ipshared/ee60/hdl" "+incdir+/opt-ictp/Xilinx/arg2/Vivado/2022.2/data/xilinx_vip/include" \
"../../../../project1_part2.gen/sources_1/bd/bd_LabProject_part2/ipshared/be1f/hdl/sc_mmu_v1_0_vl_rfs.sv" \

vlog -work xil_defaultlib -64 -incr -mfcu  -sv -L axi_vip_v1_1_13 -L smartconnect_v1_0 -L processing_system7_vip_v1_0_15 -L xilinx_vip "+incdir+../../../../project1_part2.gen/sources_1/bd/bd_LabProject_part2/ipshared/f0b6/hdl/verilog" "+incdir+../../../../project1_part2.gen/sources_1/bd/bd_LabProject_part2/ipshared/66be/hdl/verilog" "+incdir+../../../../project1_part2.gen/sources_1/bd/bd_LabProject_part2/ipshared/ec67/hdl" "+incdir+../../../../project1_part2.gen/sources_1/bd/bd_LabProject_part2/ipshared/7698" "+incdir+../../../../project1_part2.gen/sources_1/bd/bd_LabProject_part2/ipshared/ee60/hdl" "+incdir+/opt-ictp/Xilinx/arg2/Vivado/2022.2/data/xilinx_vip/include" \
"../../../bd/bd_LabProject_part2/ip/bd_LabProject_part2_axi_smc_0/bd_0/ip/ip_7/sim/bd_17fb_s00mmu_0.sv" \

vlog -work smartconnect_v1_0 -64 -incr -mfcu  -sv -L axi_vip_v1_1_13 -L smartconnect_v1_0 -L processing_system7_vip_v1_0_15 -L xilinx_vip "+incdir+../../../../project1_part2.gen/sources_1/bd/bd_LabProject_part2/ipshared/f0b6/hdl/verilog" "+incdir+../../../../project1_part2.gen/sources_1/bd/bd_LabProject_part2/ipshared/66be/hdl/verilog" "+incdir+../../../../project1_part2.gen/sources_1/bd/bd_LabProject_part2/ipshared/ec67/hdl" "+incdir+../../../../project1_part2.gen/sources_1/bd/bd_LabProject_part2/ipshared/7698" "+incdir+../../../../project1_part2.gen/sources_1/bd/bd_LabProject_part2/ipshared/ee60/hdl" "+incdir+/opt-ictp/Xilinx/arg2/Vivado/2022.2/data/xilinx_vip/include" \
"../../../../project1_part2.gen/sources_1/bd/bd_LabProject_part2/ipshared/4fd2/hdl/sc_transaction_regulator_v1_0_vl_rfs.sv" \

vlog -work xil_defaultlib -64 -incr -mfcu  -sv -L axi_vip_v1_1_13 -L smartconnect_v1_0 -L processing_system7_vip_v1_0_15 -L xilinx_vip "+incdir+../../../../project1_part2.gen/sources_1/bd/bd_LabProject_part2/ipshared/f0b6/hdl/verilog" "+incdir+../../../../project1_part2.gen/sources_1/bd/bd_LabProject_part2/ipshared/66be/hdl/verilog" "+incdir+../../../../project1_part2.gen/sources_1/bd/bd_LabProject_part2/ipshared/ec67/hdl" "+incdir+../../../../project1_part2.gen/sources_1/bd/bd_LabProject_part2/ipshared/7698" "+incdir+../../../../project1_part2.gen/sources_1/bd/bd_LabProject_part2/ipshared/ee60/hdl" "+incdir+/opt-ictp/Xilinx/arg2/Vivado/2022.2/data/xilinx_vip/include" \
"../../../bd/bd_LabProject_part2/ip/bd_LabProject_part2_axi_smc_0/bd_0/ip/ip_8/sim/bd_17fb_s00tr_0.sv" \

vlog -work smartconnect_v1_0 -64 -incr -mfcu  -sv -L axi_vip_v1_1_13 -L smartconnect_v1_0 -L processing_system7_vip_v1_0_15 -L xilinx_vip "+incdir+../../../../project1_part2.gen/sources_1/bd/bd_LabProject_part2/ipshared/f0b6/hdl/verilog" "+incdir+../../../../project1_part2.gen/sources_1/bd/bd_LabProject_part2/ipshared/66be/hdl/verilog" "+incdir+../../../../project1_part2.gen/sources_1/bd/bd_LabProject_part2/ipshared/ec67/hdl" "+incdir+../../../../project1_part2.gen/sources_1/bd/bd_LabProject_part2/ipshared/7698" "+incdir+../../../../project1_part2.gen/sources_1/bd/bd_LabProject_part2/ipshared/ee60/hdl" "+incdir+/opt-ictp/Xilinx/arg2/Vivado/2022.2/data/xilinx_vip/include" \
"../../../../project1_part2.gen/sources_1/bd/bd_LabProject_part2/ipshared/637d/hdl/sc_si_converter_v1_0_vl_rfs.sv" \

vlog -work xil_defaultlib -64 -incr -mfcu  -sv -L axi_vip_v1_1_13 -L smartconnect_v1_0 -L processing_system7_vip_v1_0_15 -L xilinx_vip "+incdir+../../../../project1_part2.gen/sources_1/bd/bd_LabProject_part2/ipshared/f0b6/hdl/verilog" "+incdir+../../../../project1_part2.gen/sources_1/bd/bd_LabProject_part2/ipshared/66be/hdl/verilog" "+incdir+../../../../project1_part2.gen/sources_1/bd/bd_LabProject_part2/ipshared/ec67/hdl" "+incdir+../../../../project1_part2.gen/sources_1/bd/bd_LabProject_part2/ipshared/7698" "+incdir+../../../../project1_part2.gen/sources_1/bd/bd_LabProject_part2/ipshared/ee60/hdl" "+incdir+/opt-ictp/Xilinx/arg2/Vivado/2022.2/data/xilinx_vip/include" \
"../../../bd/bd_LabProject_part2/ip/bd_LabProject_part2_axi_smc_0/bd_0/ip/ip_9/sim/bd_17fb_s00sic_0.sv" \

vlog -work smartconnect_v1_0 -64 -incr -mfcu  -sv -L axi_vip_v1_1_13 -L smartconnect_v1_0 -L processing_system7_vip_v1_0_15 -L xilinx_vip "+incdir+../../../../project1_part2.gen/sources_1/bd/bd_LabProject_part2/ipshared/f0b6/hdl/verilog" "+incdir+../../../../project1_part2.gen/sources_1/bd/bd_LabProject_part2/ipshared/66be/hdl/verilog" "+incdir+../../../../project1_part2.gen/sources_1/bd/bd_LabProject_part2/ipshared/ec67/hdl" "+incdir+../../../../project1_part2.gen/sources_1/bd/bd_LabProject_part2/ipshared/7698" "+incdir+../../../../project1_part2.gen/sources_1/bd/bd_LabProject_part2/ipshared/ee60/hdl" "+incdir+/opt-ictp/Xilinx/arg2/Vivado/2022.2/data/xilinx_vip/include" \
"../../../../project1_part2.gen/sources_1/bd/bd_LabProject_part2/ipshared/f38e/hdl/sc_axi2sc_v1_0_vl_rfs.sv" \

vlog -work xil_defaultlib -64 -incr -mfcu  -sv -L axi_vip_v1_1_13 -L smartconnect_v1_0 -L processing_system7_vip_v1_0_15 -L xilinx_vip "+incdir+../../../../project1_part2.gen/sources_1/bd/bd_LabProject_part2/ipshared/f0b6/hdl/verilog" "+incdir+../../../../project1_part2.gen/sources_1/bd/bd_LabProject_part2/ipshared/66be/hdl/verilog" "+incdir+../../../../project1_part2.gen/sources_1/bd/bd_LabProject_part2/ipshared/ec67/hdl" "+incdir+../../../../project1_part2.gen/sources_1/bd/bd_LabProject_part2/ipshared/7698" "+incdir+../../../../project1_part2.gen/sources_1/bd/bd_LabProject_part2/ipshared/ee60/hdl" "+incdir+/opt-ictp/Xilinx/arg2/Vivado/2022.2/data/xilinx_vip/include" \
"../../../bd/bd_LabProject_part2/ip/bd_LabProject_part2_axi_smc_0/bd_0/ip/ip_10/sim/bd_17fb_s00a2s_0.sv" \

vlog -work smartconnect_v1_0 -64 -incr -mfcu  -sv -L axi_vip_v1_1_13 -L smartconnect_v1_0 -L processing_system7_vip_v1_0_15 -L xilinx_vip "+incdir+../../../../project1_part2.gen/sources_1/bd/bd_LabProject_part2/ipshared/f0b6/hdl/verilog" "+incdir+../../../../project1_part2.gen/sources_1/bd/bd_LabProject_part2/ipshared/66be/hdl/verilog" "+incdir+../../../../project1_part2.gen/sources_1/bd/bd_LabProject_part2/ipshared/ec67/hdl" "+incdir+../../../../project1_part2.gen/sources_1/bd/bd_LabProject_part2/ipshared/7698" "+incdir+../../../../project1_part2.gen/sources_1/bd/bd_LabProject_part2/ipshared/ee60/hdl" "+incdir+/opt-ictp/Xilinx/arg2/Vivado/2022.2/data/xilinx_vip/include" \
"../../../../project1_part2.gen/sources_1/bd/bd_LabProject_part2/ipshared/66be/hdl/sc_node_v1_0_vl_rfs.sv" \

vlog -work xil_defaultlib -64 -incr -mfcu  -sv -L axi_vip_v1_1_13 -L smartconnect_v1_0 -L processing_system7_vip_v1_0_15 -L xilinx_vip "+incdir+../../../../project1_part2.gen/sources_1/bd/bd_LabProject_part2/ipshared/f0b6/hdl/verilog" "+incdir+../../../../project1_part2.gen/sources_1/bd/bd_LabProject_part2/ipshared/66be/hdl/verilog" "+incdir+../../../../project1_part2.gen/sources_1/bd/bd_LabProject_part2/ipshared/ec67/hdl" "+incdir+../../../../project1_part2.gen/sources_1/bd/bd_LabProject_part2/ipshared/7698" "+incdir+../../../../project1_part2.gen/sources_1/bd/bd_LabProject_part2/ipshared/ee60/hdl" "+incdir+/opt-ictp/Xilinx/arg2/Vivado/2022.2/data/xilinx_vip/include" \
"../../../bd/bd_LabProject_part2/ip/bd_LabProject_part2_axi_smc_0/bd_0/ip/ip_11/sim/bd_17fb_sarn_0.sv" \
"../../../bd/bd_LabProject_part2/ip/bd_LabProject_part2_axi_smc_0/bd_0/ip/ip_12/sim/bd_17fb_srn_0.sv" \
"../../../bd/bd_LabProject_part2/ip/bd_LabProject_part2_axi_smc_0/bd_0/ip/ip_13/sim/bd_17fb_sawn_0.sv" \
"../../../bd/bd_LabProject_part2/ip/bd_LabProject_part2_axi_smc_0/bd_0/ip/ip_14/sim/bd_17fb_swn_0.sv" \
"../../../bd/bd_LabProject_part2/ip/bd_LabProject_part2_axi_smc_0/bd_0/ip/ip_15/sim/bd_17fb_sbn_0.sv" \

vlog -work smartconnect_v1_0 -64 -incr -mfcu  -sv -L axi_vip_v1_1_13 -L smartconnect_v1_0 -L processing_system7_vip_v1_0_15 -L xilinx_vip "+incdir+../../../../project1_part2.gen/sources_1/bd/bd_LabProject_part2/ipshared/f0b6/hdl/verilog" "+incdir+../../../../project1_part2.gen/sources_1/bd/bd_LabProject_part2/ipshared/66be/hdl/verilog" "+incdir+../../../../project1_part2.gen/sources_1/bd/bd_LabProject_part2/ipshared/ec67/hdl" "+incdir+../../../../project1_part2.gen/sources_1/bd/bd_LabProject_part2/ipshared/7698" "+incdir+../../../../project1_part2.gen/sources_1/bd/bd_LabProject_part2/ipshared/ee60/hdl" "+incdir+/opt-ictp/Xilinx/arg2/Vivado/2022.2/data/xilinx_vip/include" \
"../../../../project1_part2.gen/sources_1/bd/bd_LabProject_part2/ipshared/9cc5/hdl/sc_sc2axi_v1_0_vl_rfs.sv" \

vlog -work xil_defaultlib -64 -incr -mfcu  -sv -L axi_vip_v1_1_13 -L smartconnect_v1_0 -L processing_system7_vip_v1_0_15 -L xilinx_vip "+incdir+../../../../project1_part2.gen/sources_1/bd/bd_LabProject_part2/ipshared/f0b6/hdl/verilog" "+incdir+../../../../project1_part2.gen/sources_1/bd/bd_LabProject_part2/ipshared/66be/hdl/verilog" "+incdir+../../../../project1_part2.gen/sources_1/bd/bd_LabProject_part2/ipshared/ec67/hdl" "+incdir+../../../../project1_part2.gen/sources_1/bd/bd_LabProject_part2/ipshared/7698" "+incdir+../../../../project1_part2.gen/sources_1/bd/bd_LabProject_part2/ipshared/ee60/hdl" "+incdir+/opt-ictp/Xilinx/arg2/Vivado/2022.2/data/xilinx_vip/include" \
"../../../bd/bd_LabProject_part2/ip/bd_LabProject_part2_axi_smc_0/bd_0/ip/ip_16/sim/bd_17fb_m00s2a_0.sv" \
"../../../bd/bd_LabProject_part2/ip/bd_LabProject_part2_axi_smc_0/bd_0/ip/ip_17/sim/bd_17fb_m00arn_0.sv" \
"../../../bd/bd_LabProject_part2/ip/bd_LabProject_part2_axi_smc_0/bd_0/ip/ip_18/sim/bd_17fb_m00rn_0.sv" \
"../../../bd/bd_LabProject_part2/ip/bd_LabProject_part2_axi_smc_0/bd_0/ip/ip_19/sim/bd_17fb_m00awn_0.sv" \
"../../../bd/bd_LabProject_part2/ip/bd_LabProject_part2_axi_smc_0/bd_0/ip/ip_20/sim/bd_17fb_m00wn_0.sv" \
"../../../bd/bd_LabProject_part2/ip/bd_LabProject_part2_axi_smc_0/bd_0/ip/ip_21/sim/bd_17fb_m00bn_0.sv" \

vlog -work smartconnect_v1_0 -64 -incr -mfcu  -sv -L axi_vip_v1_1_13 -L smartconnect_v1_0 -L processing_system7_vip_v1_0_15 -L xilinx_vip "+incdir+../../../../project1_part2.gen/sources_1/bd/bd_LabProject_part2/ipshared/f0b6/hdl/verilog" "+incdir+../../../../project1_part2.gen/sources_1/bd/bd_LabProject_part2/ipshared/66be/hdl/verilog" "+incdir+../../../../project1_part2.gen/sources_1/bd/bd_LabProject_part2/ipshared/ec67/hdl" "+incdir+../../../../project1_part2.gen/sources_1/bd/bd_LabProject_part2/ipshared/7698" "+incdir+../../../../project1_part2.gen/sources_1/bd/bd_LabProject_part2/ipshared/ee60/hdl" "+incdir+/opt-ictp/Xilinx/arg2/Vivado/2022.2/data/xilinx_vip/include" \
"../../../../project1_part2.gen/sources_1/bd/bd_LabProject_part2/ipshared/6bba/hdl/sc_exit_v1_0_vl_rfs.sv" \

vlog -work xil_defaultlib -64 -incr -mfcu  -sv -L axi_vip_v1_1_13 -L smartconnect_v1_0 -L processing_system7_vip_v1_0_15 -L xilinx_vip "+incdir+../../../../project1_part2.gen/sources_1/bd/bd_LabProject_part2/ipshared/f0b6/hdl/verilog" "+incdir+../../../../project1_part2.gen/sources_1/bd/bd_LabProject_part2/ipshared/66be/hdl/verilog" "+incdir+../../../../project1_part2.gen/sources_1/bd/bd_LabProject_part2/ipshared/ec67/hdl" "+incdir+../../../../project1_part2.gen/sources_1/bd/bd_LabProject_part2/ipshared/7698" "+incdir+../../../../project1_part2.gen/sources_1/bd/bd_LabProject_part2/ipshared/ee60/hdl" "+incdir+/opt-ictp/Xilinx/arg2/Vivado/2022.2/data/xilinx_vip/include" \
"../../../bd/bd_LabProject_part2/ip/bd_LabProject_part2_axi_smc_0/bd_0/ip/ip_22/sim/bd_17fb_m00e_0.sv" \
"../../../bd/bd_LabProject_part2/ip/bd_LabProject_part2_axi_smc_0/bd_0/ip/ip_23/sim/bd_17fb_m01s2a_0.sv" \
"../../../bd/bd_LabProject_part2/ip/bd_LabProject_part2_axi_smc_0/bd_0/ip/ip_24/sim/bd_17fb_m01arn_0.sv" \
"../../../bd/bd_LabProject_part2/ip/bd_LabProject_part2_axi_smc_0/bd_0/ip/ip_25/sim/bd_17fb_m01rn_0.sv" \
"../../../bd/bd_LabProject_part2/ip/bd_LabProject_part2_axi_smc_0/bd_0/ip/ip_26/sim/bd_17fb_m01awn_0.sv" \
"../../../bd/bd_LabProject_part2/ip/bd_LabProject_part2_axi_smc_0/bd_0/ip/ip_27/sim/bd_17fb_m01wn_0.sv" \
"../../../bd/bd_LabProject_part2/ip/bd_LabProject_part2_axi_smc_0/bd_0/ip/ip_28/sim/bd_17fb_m01bn_0.sv" \
"../../../bd/bd_LabProject_part2/ip/bd_LabProject_part2_axi_smc_0/bd_0/ip/ip_29/sim/bd_17fb_m01e_0.sv" \

vlog -work axi_infrastructure_v1_1_0 -64 -incr -mfcu  "+incdir+../../../../project1_part2.gen/sources_1/bd/bd_LabProject_part2/ipshared/f0b6/hdl/verilog" "+incdir+../../../../project1_part2.gen/sources_1/bd/bd_LabProject_part2/ipshared/66be/hdl/verilog" "+incdir+../../../../project1_part2.gen/sources_1/bd/bd_LabProject_part2/ipshared/ec67/hdl" "+incdir+../../../../project1_part2.gen/sources_1/bd/bd_LabProject_part2/ipshared/7698" "+incdir+../../../../project1_part2.gen/sources_1/bd/bd_LabProject_part2/ipshared/ee60/hdl" "+incdir+/opt-ictp/Xilinx/arg2/Vivado/2022.2/data/xilinx_vip/include" \
"../../../../project1_part2.gen/sources_1/bd/bd_LabProject_part2/ipshared/ec67/hdl/axi_infrastructure_v1_1_vl_rfs.v" \

vlog -work axi_register_slice_v2_1_27 -64 -incr -mfcu  "+incdir+../../../../project1_part2.gen/sources_1/bd/bd_LabProject_part2/ipshared/f0b6/hdl/verilog" "+incdir+../../../../project1_part2.gen/sources_1/bd/bd_LabProject_part2/ipshared/66be/hdl/verilog" "+incdir+../../../../project1_part2.gen/sources_1/bd/bd_LabProject_part2/ipshared/ec67/hdl" "+incdir+../../../../project1_part2.gen/sources_1/bd/bd_LabProject_part2/ipshared/7698" "+incdir+../../../../project1_part2.gen/sources_1/bd/bd_LabProject_part2/ipshared/ee60/hdl" "+incdir+/opt-ictp/Xilinx/arg2/Vivado/2022.2/data/xilinx_vip/include" \
"../../../../project1_part2.gen/sources_1/bd/bd_LabProject_part2/ipshared/f0b4/hdl/axi_register_slice_v2_1_vl_rfs.v" \

vlog -work axi_vip_v1_1_13 -64 -incr -mfcu  -sv -L axi_vip_v1_1_13 -L smartconnect_v1_0 -L processing_system7_vip_v1_0_15 -L xilinx_vip "+incdir+../../../../project1_part2.gen/sources_1/bd/bd_LabProject_part2/ipshared/f0b6/hdl/verilog" "+incdir+../../../../project1_part2.gen/sources_1/bd/bd_LabProject_part2/ipshared/66be/hdl/verilog" "+incdir+../../../../project1_part2.gen/sources_1/bd/bd_LabProject_part2/ipshared/ec67/hdl" "+incdir+../../../../project1_part2.gen/sources_1/bd/bd_LabProject_part2/ipshared/7698" "+incdir+../../../../project1_part2.gen/sources_1/bd/bd_LabProject_part2/ipshared/ee60/hdl" "+incdir+/opt-ictp/Xilinx/arg2/Vivado/2022.2/data/xilinx_vip/include" \
"../../../../project1_part2.gen/sources_1/bd/bd_LabProject_part2/ipshared/ffc2/hdl/axi_vip_v1_1_vl_rfs.sv" \

vlog -work xil_defaultlib -64 -incr -mfcu  "+incdir+../../../../project1_part2.gen/sources_1/bd/bd_LabProject_part2/ipshared/f0b6/hdl/verilog" "+incdir+../../../../project1_part2.gen/sources_1/bd/bd_LabProject_part2/ipshared/66be/hdl/verilog" "+incdir+../../../../project1_part2.gen/sources_1/bd/bd_LabProject_part2/ipshared/ec67/hdl" "+incdir+../../../../project1_part2.gen/sources_1/bd/bd_LabProject_part2/ipshared/7698" "+incdir+../../../../project1_part2.gen/sources_1/bd/bd_LabProject_part2/ipshared/ee60/hdl" "+incdir+/opt-ictp/Xilinx/arg2/Vivado/2022.2/data/xilinx_vip/include" \
"../../../bd/bd_LabProject_part2/ip/bd_LabProject_part2_axi_smc_0/sim/bd_LabProject_part2_axi_smc_0.v" \

vcom -work xil_defaultlib -64 -93  \
"../../../bd/bd_LabProject_part2/ipshared/8699/src/cdcc.vhd" \
"../../../bd/bd_LabProject_part2/ip/bd_LabProject_part2_CDCC_ADC_0/sim/bd_LabProject_part2_CDCC_ADC_0.vhd" \
"../../../bd/bd_LabProject_part2/ip/bd_LabProject_part2_CDCC_DAC_0/sim/bd_LabProject_part2_CDCC_DAC_0.vhd" \

vlog -work xil_defaultlib -64 -incr -mfcu  "+incdir+../../../../project1_part2.gen/sources_1/bd/bd_LabProject_part2/ipshared/f0b6/hdl/verilog" "+incdir+../../../../project1_part2.gen/sources_1/bd/bd_LabProject_part2/ipshared/66be/hdl/verilog" "+incdir+../../../../project1_part2.gen/sources_1/bd/bd_LabProject_part2/ipshared/ec67/hdl" "+incdir+../../../../project1_part2.gen/sources_1/bd/bd_LabProject_part2/ipshared/7698" "+incdir+../../../../project1_part2.gen/sources_1/bd/bd_LabProject_part2/ipshared/ee60/hdl" "+incdir+/opt-ictp/Xilinx/arg2/Vivado/2022.2/data/xilinx_vip/include" \
"../../../bd/bd_LabProject_part2/ip/bd_LabProject_part2_clk_wiz_1_0/bd_LabProject_part2_clk_wiz_1_0_clk_wiz.v" \
"../../../bd/bd_LabProject_part2/ip/bd_LabProject_part2_clk_wiz_1_0/bd_LabProject_part2_clk_wiz_1_0.v" \

vcom -work xil_defaultlib -64 -93  \
"../../../bd/bd_LabProject_part2/ipshared/7b64/hdl/axil.vhdl" \
"../../../bd/bd_LabProject_part2/ipshared/7b64/hdl/axif.vhdl" \
"../../../bd/bd_LabProject_part2/ipshared/7b64/hdl/tdpram.vhdl" \
"../../../bd/bd_LabProject_part2/ipshared/7b64/hdl/graysync.vhdl" \
"../../../bd/bd_LabProject_part2/ipshared/7b64/hdl/fifo.vhdl" \
"../../../bd/bd_LabProject_part2/ipshared/7b64/hdl/comblock.vhdl" \
"../../../bd/bd_LabProject_part2/ipshared/7b64/hdl/axi_comblock.vhdl" \
"../../../bd/bd_LabProject_part2/ip/bd_LabProject_part2_comblock_0_0/sim/bd_LabProject_part2_comblock_0_0.vhd" \
"../../../bd/bd_LabProject_part2/ip/bd_LabProject_part2_dacMux_0/sim/bd_LabProject_part2_dacMux_0.vhd" \
"../../../bd/bd_LabProject_part2/ipshared/7826/src/bram_incr.vhd" \
"../../../bd/bd_LabProject_part2/ip/bd_LabProject_part2_histogram_gen_0/sim/bd_LabProject_part2_histogram_gen_0.vhd" \
"../../../bd/bd_LabProject_part2/ip/bd_LabProject_part2_crossLevelTrigger_0/sim/bd_LabProject_part2_crossLevelTrigger_0.vhd" \

vcom -work xbip_utils_v3_0_10 -64 -93  \
"../../../../project1_part2.gen/sources_1/bd/bd_LabProject_part2/ipshared/364f/hdl/xbip_utils_v3_0_vh_rfs.vhd" \

vcom -work c_reg_fd_v12_0_6 -64 -93  \
"../../../../project1_part2.gen/sources_1/bd/bd_LabProject_part2/ipshared/edec/hdl/c_reg_fd_v12_0_vh_rfs.vhd" \

vcom -work c_mux_bit_v12_0_6 -64 -93  \
"../../../../project1_part2.gen/sources_1/bd/bd_LabProject_part2/ipshared/ecb4/hdl/c_mux_bit_v12_0_vh_rfs.vhd" \

vcom -work c_shift_ram_v12_0_14 -64 -93  \
"../../../../project1_part2.gen/sources_1/bd/bd_LabProject_part2/ipshared/2598/hdl/c_shift_ram_v12_0_vh_rfs.vhd" \

vcom -work xil_defaultlib -64 -93  \
"../../../bd/bd_LabProject_part2/ip/bd_LabProject_part2_delayShiftReg_0/sim/bd_LabProject_part2_delayShiftReg_0.vhd" \
"../../../bd/bd_LabProject_part2/ip/bd_LabProject_part2_oneShotTimer_0/sim/bd_LabProject_part2_oneShotTimer_0.vhd" \
"../../../bd/bd_LabProject_part2/ip/bd_LabProject_part2_ring_buffer_0/sim/bd_LabProject_part2_ring_buffer_0.vhd" \

vlog -work xil_defaultlib -64 -incr -mfcu  "+incdir+../../../../project1_part2.gen/sources_1/bd/bd_LabProject_part2/ipshared/f0b6/hdl/verilog" "+incdir+../../../../project1_part2.gen/sources_1/bd/bd_LabProject_part2/ipshared/66be/hdl/verilog" "+incdir+../../../../project1_part2.gen/sources_1/bd/bd_LabProject_part2/ipshared/ec67/hdl" "+incdir+../../../../project1_part2.gen/sources_1/bd/bd_LabProject_part2/ipshared/7698" "+incdir+../../../../project1_part2.gen/sources_1/bd/bd_LabProject_part2/ipshared/ee60/hdl" "+incdir+/opt-ictp/Xilinx/arg2/Vivado/2022.2/data/xilinx_vip/include" \
"../../../bd/bd_LabProject_part2/ip/bd_LabProject_part2_triggerEnable_0/sim/bd_LabProject_part2_triggerEnable_0.v" \
"../../../bd/bd_LabProject_part2/ip/bd_LabProject_part2_trigger_edgeSelect_0/sim/bd_LabProject_part2_trigger_edgeSelect_0.v" \

vlog -work util_vector_logic_v2_0_2 -64 -incr -mfcu  "+incdir+../../../../project1_part2.gen/sources_1/bd/bd_LabProject_part2/ipshared/f0b6/hdl/verilog" "+incdir+../../../../project1_part2.gen/sources_1/bd/bd_LabProject_part2/ipshared/66be/hdl/verilog" "+incdir+../../../../project1_part2.gen/sources_1/bd/bd_LabProject_part2/ipshared/ec67/hdl" "+incdir+../../../../project1_part2.gen/sources_1/bd/bd_LabProject_part2/ipshared/7698" "+incdir+../../../../project1_part2.gen/sources_1/bd/bd_LabProject_part2/ipshared/ee60/hdl" "+incdir+/opt-ictp/Xilinx/arg2/Vivado/2022.2/data/xilinx_vip/include" \
"../../../../project1_part2.gen/sources_1/bd/bd_LabProject_part2/ipshared/3d84/hdl/util_vector_logic_v2_0_vl_rfs.v" \

vlog -work xil_defaultlib -64 -incr -mfcu  "+incdir+../../../../project1_part2.gen/sources_1/bd/bd_LabProject_part2/ipshared/f0b6/hdl/verilog" "+incdir+../../../../project1_part2.gen/sources_1/bd/bd_LabProject_part2/ipshared/66be/hdl/verilog" "+incdir+../../../../project1_part2.gen/sources_1/bd/bd_LabProject_part2/ipshared/ec67/hdl" "+incdir+../../../../project1_part2.gen/sources_1/bd/bd_LabProject_part2/ipshared/7698" "+incdir+../../../../project1_part2.gen/sources_1/bd/bd_LabProject_part2/ipshared/ee60/hdl" "+incdir+/opt-ictp/Xilinx/arg2/Vivado/2022.2/data/xilinx_vip/include" \
"../../../bd/bd_LabProject_part2/ip/bd_LabProject_part2_util_vector_logic_0_0/sim/bd_LabProject_part2_util_vector_logic_0_0.v" \
"../../../bd/bd_LabProject_part2/ip/bd_LabProject_part2_xlconstant_0_0/sim/bd_LabProject_part2_xlconstant_0_0.v" \
"../../../bd/bd_LabProject_part2/ip/bd_LabProject_part2_util_vector_logic_0_1/sim/bd_LabProject_part2_util_vector_logic_0_1.v" \

vcom -work xbip_dsp48_wrapper_v3_0_4 -64 -93  \
"../../../../project1_part2.gen/sources_1/bd/bd_LabProject_part2/ip/bd_LabProject_part2_peak_detector_0_0/peak_detector_c_addsub_v12_0_i0/hdl/xbip_dsp48_wrapper_v3_0_vh_rfs.vhd" \

vcom -work xbip_pipe_v3_0_6 -64 -93  \
"../../../../project1_part2.gen/sources_1/bd/bd_LabProject_part2/ip/bd_LabProject_part2_peak_detector_0_0/peak_detector_c_addsub_v12_0_i0/hdl/xbip_pipe_v3_0_vh_rfs.vhd" \

vcom -work xbip_dsp48_addsub_v3_0_6 -64 -93  \
"../../../../project1_part2.gen/sources_1/bd/bd_LabProject_part2/ip/bd_LabProject_part2_peak_detector_0_0/peak_detector_c_addsub_v12_0_i0/hdl/xbip_dsp48_addsub_v3_0_vh_rfs.vhd" \

vcom -work xbip_addsub_v3_0_6 -64 -93  \
"../../../../project1_part2.gen/sources_1/bd/bd_LabProject_part2/ip/bd_LabProject_part2_peak_detector_0_0/peak_detector_c_addsub_v12_0_i0/hdl/xbip_addsub_v3_0_vh_rfs.vhd" \

vcom -work c_addsub_v12_0_14 -64 -93  \
"../../../../project1_part2.gen/sources_1/bd/bd_LabProject_part2/ip/bd_LabProject_part2_peak_detector_0_0/peak_detector_c_addsub_v12_0_i0/hdl/c_addsub_v12_0_vh_rfs.vhd" \

vcom -work xil_defaultlib -64 -93  \
"../../../bd/bd_LabProject_part2/ip/bd_LabProject_part2_peak_detector_0_0/peak_detector_c_addsub_v12_0_i0/sim/peak_detector_c_addsub_v12_0_i0.vhd" \

vcom -work c_gate_bit_v12_0_6 -64 -93  \
"../../../../project1_part2.gen/sources_1/bd/bd_LabProject_part2/ip/bd_LabProject_part2_peak_detector_0_0/peak_detector_c_counter_binary_v12_0_i0/hdl/c_gate_bit_v12_0_vh_rfs.vhd" \

vcom -work xbip_counter_v3_0_6 -64 -93  \
"../../../../project1_part2.gen/sources_1/bd/bd_LabProject_part2/ip/bd_LabProject_part2_peak_detector_0_0/peak_detector_c_counter_binary_v12_0_i0/hdl/xbip_counter_v3_0_vh_rfs.vhd" \

vcom -work c_counter_binary_v12_0_15 -64 -93  \
"../../../../project1_part2.gen/sources_1/bd/bd_LabProject_part2/ip/bd_LabProject_part2_peak_detector_0_0/peak_detector_c_counter_binary_v12_0_i0/hdl/c_counter_binary_v12_0_vh_rfs.vhd" \

vcom -work xil_defaultlib -64 -93  \
"../../../bd/bd_LabProject_part2/ip/bd_LabProject_part2_peak_detector_0_0/peak_detector_c_counter_binary_v12_0_i0/sim/peak_detector_c_counter_binary_v12_0_i0.vhd" \

vcom -work xil_defaultlib -64 -2008  \
"../../../../project1_part2.gen/sources_1/bd/bd_LabProject_part2/ipshared/ee05/hdl/conv_pkg.vhd" \
"../../../../project1_part2.gen/sources_1/bd/bd_LabProject_part2/ipshared/ee05/hdl/synth_reg.vhd" \
"../../../../project1_part2.gen/sources_1/bd/bd_LabProject_part2/ipshared/ee05/hdl/synth_reg_w_init.vhd" \
"../../../../project1_part2.gen/sources_1/bd/bd_LabProject_part2/ipshared/ee05/hdl/srl17e.vhd" \
"../../../../project1_part2.gen/sources_1/bd/bd_LabProject_part2/ipshared/ee05/hdl/srl33e.vhd" \
"../../../../project1_part2.gen/sources_1/bd/bd_LabProject_part2/ipshared/ee05/hdl/synth_reg_reg.vhd" \
"../../../../project1_part2.gen/sources_1/bd/bd_LabProject_part2/ipshared/ee05/hdl/single_reg_w_init.vhd" \
"../../../../project1_part2.gen/sources_1/bd/bd_LabProject_part2/ipshared/ee05/hdl/xlclockdriver_rd.vhd" \
"../../../../project1_part2.gen/sources_1/bd/bd_LabProject_part2/ipshared/ee05/hdl/peak_detector_entity_declarations.vhd" \

vcom -work xil_defaultlib -64 -93  \
"../../../../project1_part2.gen/sources_1/bd/bd_LabProject_part2/ipshared/ee05/hdl/peak_detector.vhd" \
"../../../bd/bd_LabProject_part2/ip/bd_LabProject_part2_peak_detector_0_0/sim/bd_LabProject_part2_peak_detector_0_0.vhd" \

vlog -work processing_system7_vip_v1_0_15 -64 -incr -mfcu  -sv -L axi_vip_v1_1_13 -L smartconnect_v1_0 -L processing_system7_vip_v1_0_15 -L xilinx_vip "+incdir+../../../../project1_part2.gen/sources_1/bd/bd_LabProject_part2/ipshared/f0b6/hdl/verilog" "+incdir+../../../../project1_part2.gen/sources_1/bd/bd_LabProject_part2/ipshared/66be/hdl/verilog" "+incdir+../../../../project1_part2.gen/sources_1/bd/bd_LabProject_part2/ipshared/ec67/hdl" "+incdir+../../../../project1_part2.gen/sources_1/bd/bd_LabProject_part2/ipshared/7698" "+incdir+../../../../project1_part2.gen/sources_1/bd/bd_LabProject_part2/ipshared/ee60/hdl" "+incdir+/opt-ictp/Xilinx/arg2/Vivado/2022.2/data/xilinx_vip/include" \
"../../../../project1_part2.gen/sources_1/bd/bd_LabProject_part2/ipshared/ee60/hdl/processing_system7_vip_v1_0_vl_rfs.sv" \

vlog -work xil_defaultlib -64 -incr -mfcu  "+incdir+../../../../project1_part2.gen/sources_1/bd/bd_LabProject_part2/ipshared/f0b6/hdl/verilog" "+incdir+../../../../project1_part2.gen/sources_1/bd/bd_LabProject_part2/ipshared/66be/hdl/verilog" "+incdir+../../../../project1_part2.gen/sources_1/bd/bd_LabProject_part2/ipshared/ec67/hdl" "+incdir+../../../../project1_part2.gen/sources_1/bd/bd_LabProject_part2/ipshared/7698" "+incdir+../../../../project1_part2.gen/sources_1/bd/bd_LabProject_part2/ipshared/ee60/hdl" "+incdir+/opt-ictp/Xilinx/arg2/Vivado/2022.2/data/xilinx_vip/include" \
"../../../bd/bd_LabProject_part2/ip/bd_LabProject_part2_processing_system7_0_0/sim/bd_LabProject_part2_processing_system7_0_0.v" \
"../../../bd/bd_LabProject_part2/ip/bd_LabProject_part2_pulseInvertFlag_0/sim/bd_LabProject_part2_pulseInvertFlag_0.v" \

vcom -work xil_defaultlib -64 -93  \
"../../../bd/bd_LabProject_part2/ip/bd_LabProject_part2_pulseShaper_0/shaper_c_addsub_v12_0_i0/sim/shaper_c_addsub_v12_0_i0.vhd" \
"../../../bd/bd_LabProject_part2/ip/bd_LabProject_part2_pulseShaper_0/shaper_c_addsub_v12_0_i1/sim/shaper_c_addsub_v12_0_i1.vhd" \
"../../../bd/bd_LabProject_part2/ip/bd_LabProject_part2_pulseShaper_0/shaper_c_addsub_v12_0_i2/sim/shaper_c_addsub_v12_0_i2.vhd" \
"../../../bd/bd_LabProject_part2/ip/bd_LabProject_part2_pulseShaper_0/shaper_c_addsub_v12_0_i3/sim/shaper_c_addsub_v12_0_i3.vhd" \
"../../../bd/bd_LabProject_part2/ip/bd_LabProject_part2_pulseShaper_0/shaper_c_addsub_v12_0_i4/sim/shaper_c_addsub_v12_0_i4.vhd" \
"../../../bd/bd_LabProject_part2/ip/bd_LabProject_part2_pulseShaper_0/shaper_c_addsub_v12_0_i5/sim/shaper_c_addsub_v12_0_i5.vhd" \
"../../../bd/bd_LabProject_part2/ip/bd_LabProject_part2_pulseShaper_0/shaper_c_counter_binary_v12_0_i0/sim/shaper_c_counter_binary_v12_0_i0.vhd" \

vcom -work xbip_bram18k_v3_0_6 -64 -93  \
"../../../../project1_part2.gen/sources_1/bd/bd_LabProject_part2/ip/bd_LabProject_part2_pulseShaper_0/shaper_mult_gen_v12_0_i0/hdl/xbip_bram18k_v3_0_vh_rfs.vhd" \

vcom -work mult_gen_v12_0_18 -64 -93  \
"../../../../project1_part2.gen/sources_1/bd/bd_LabProject_part2/ip/bd_LabProject_part2_pulseShaper_0/shaper_mult_gen_v12_0_i0/hdl/mult_gen_v12_0_vh_rfs.vhd" \

vcom -work xil_defaultlib -64 -93  \
"../../../bd/bd_LabProject_part2/ip/bd_LabProject_part2_pulseShaper_0/shaper_mult_gen_v12_0_i0/sim/shaper_mult_gen_v12_0_i0.vhd" \
"../../../bd/bd_LabProject_part2/ip/bd_LabProject_part2_pulseShaper_0/shaper_mult_gen_v12_0_i1/sim/shaper_mult_gen_v12_0_i1.vhd" \
"../../../bd/bd_LabProject_part2/ip/bd_LabProject_part2_pulseShaper_0/shaper_mult_gen_v12_0_i2/sim/shaper_mult_gen_v12_0_i2.vhd" \
"../../../bd/bd_LabProject_part2/ip/bd_LabProject_part2_pulseShaper_0/shaper_mult_gen_v12_0_i3/sim/shaper_mult_gen_v12_0_i3.vhd" \

vcom -work xil_defaultlib -64 -2008  \
"../../../../project1_part2.gen/sources_1/bd/bd_LabProject_part2/ipshared/15f4/hdl/shaper_entity_declarations.vhd" \

vcom -work xil_defaultlib -64 -93  \
"../../../../project1_part2.gen/sources_1/bd/bd_LabProject_part2/ipshared/15f4/hdl/shaper.vhd" \
"../../../bd/bd_LabProject_part2/ip/bd_LabProject_part2_pulseShaper_0/sim/bd_LabProject_part2_pulseShaper_0.vhd" \
"../../../bd/bd_LabProject_part2/ip/bd_LabProject_part2_rst_clk_wiz_0_50M_0/sim/bd_LabProject_part2_rst_clk_wiz_0_50M_0.vhd" \
"../../../bd/bd_LabProject_part2/ip/bd_LabProject_part2_rst_ps7_0_50M_0/sim/bd_LabProject_part2_rst_ps7_0_50M_0.vhd" \
"../../../bd/bd_LabProject_part2/sim/bd_LabProject_part2.vhd" \

vlog -work xil_defaultlib \
"glbl.v"

