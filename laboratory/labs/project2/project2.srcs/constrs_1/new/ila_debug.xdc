create_debug_core u_ila_0 ila
set_property ALL_PROBE_SAME_MU true [get_debug_cores u_ila_0]
set_property ALL_PROBE_SAME_MU_CNT 1 [get_debug_cores u_ila_0]
set_property C_ADV_TRIGGER false [get_debug_cores u_ila_0]
set_property C_DATA_DEPTH 1024 [get_debug_cores u_ila_0]
set_property C_EN_STRG_QUAL false [get_debug_cores u_ila_0]
set_property C_INPUT_PIPE_STAGES 0 [get_debug_cores u_ila_0]
set_property C_TRIGIN_EN false [get_debug_cores u_ila_0]
set_property C_TRIGOUT_EN false [get_debug_cores u_ila_0]
set_property port_width 1 [get_debug_ports u_ila_0/clk]
connect_debug_port u_ila_0/clk [get_nets [list dpp_block_design_i/processing_system7_0/inst/FCLK_CLK0]]
set_property PROBE_TYPE DATA_AND_TRIGGER [get_debug_ports u_ila_0/probe0]
set_property port_width 12 [get_debug_ports u_ila_0/probe0]
connect_debug_port u_ila_0/probe0 [get_nets [list {dpp_block_design_i/DPP_module_top_0_0/U0/ADC_data_i[0]} {dpp_block_design_i/DPP_module_top_0_0/U0/ADC_data_i[1]} {dpp_block_design_i/DPP_module_top_0_0/U0/ADC_data_i[2]} {dpp_block_design_i/DPP_module_top_0_0/U0/ADC_data_i[3]} {dpp_block_design_i/DPP_module_top_0_0/U0/ADC_data_i[4]} {dpp_block_design_i/DPP_module_top_0_0/U0/ADC_data_i[5]} {dpp_block_design_i/DPP_module_top_0_0/U0/ADC_data_i[6]} {dpp_block_design_i/DPP_module_top_0_0/U0/ADC_data_i[7]} {dpp_block_design_i/DPP_module_top_0_0/U0/ADC_data_i[8]} {dpp_block_design_i/DPP_module_top_0_0/U0/ADC_data_i[9]} {dpp_block_design_i/DPP_module_top_0_0/U0/ADC_data_i[10]} {dpp_block_design_i/DPP_module_top_0_0/U0/ADC_data_i[11]}]]
create_debug_port u_ila_0 probe
set_property PROBE_TYPE DATA_AND_TRIGGER [get_debug_ports u_ila_0/probe1]
set_property port_width 16 [get_debug_ports u_ila_0/probe1]
connect_debug_port u_ila_0/probe1 [get_nets [list {dpp_block_design_i/DPP_module_top_0_0/U0/FIR_data_out[0]} {dpp_block_design_i/DPP_module_top_0_0/U0/FIR_data_out[1]} {dpp_block_design_i/DPP_module_top_0_0/U0/FIR_data_out[2]} {dpp_block_design_i/DPP_module_top_0_0/U0/FIR_data_out[3]} {dpp_block_design_i/DPP_module_top_0_0/U0/FIR_data_out[4]} {dpp_block_design_i/DPP_module_top_0_0/U0/FIR_data_out[5]} {dpp_block_design_i/DPP_module_top_0_0/U0/FIR_data_out[6]} {dpp_block_design_i/DPP_module_top_0_0/U0/FIR_data_out[7]} {dpp_block_design_i/DPP_module_top_0_0/U0/FIR_data_out[8]} {dpp_block_design_i/DPP_module_top_0_0/U0/FIR_data_out[9]} {dpp_block_design_i/DPP_module_top_0_0/U0/FIR_data_out[10]} {dpp_block_design_i/DPP_module_top_0_0/U0/FIR_data_out[11]} {dpp_block_design_i/DPP_module_top_0_0/U0/FIR_data_out[12]} {dpp_block_design_i/DPP_module_top_0_0/U0/FIR_data_out[13]} {dpp_block_design_i/DPP_module_top_0_0/U0/FIR_data_out[14]} {dpp_block_design_i/DPP_module_top_0_0/U0/FIR_data_out[15]}]]
create_debug_port u_ila_0 probe
set_property PROBE_TYPE DATA_AND_TRIGGER [get_debug_ports u_ila_0/probe2]
set_property port_width 2 [get_debug_ports u_ila_0/probe2]
connect_debug_port u_ila_0/probe2 [get_nets [list {dpp_block_design_i/DPP_module_top_0_0/U0/op_mode_i[0]} {dpp_block_design_i/DPP_module_top_0_0/U0/op_mode_i[1]}]]
create_debug_port u_ila_0 probe
set_property PROBE_TYPE DATA_AND_TRIGGER [get_debug_ports u_ila_0/probe3]
set_property port_width 1 [get_debug_ports u_ila_0/probe3]
connect_debug_port u_ila_0/probe3 [get_nets [list dpp_block_design_i/DPP_module_top_0_0/U0/FIFO_wr_en]]
create_debug_port u_ila_0 probe
set_property PROBE_TYPE DATA_AND_TRIGGER [get_debug_ports u_ila_0/probe4]
set_property port_width 1 [get_debug_ports u_ila_0/probe4]
connect_debug_port u_ila_0/probe4 [get_nets [list dpp_block_design_i/DPP_module_top_0_0/U0/fifo_wr_en_mux]]
create_debug_port u_ila_0 probe
set_property PROBE_TYPE DATA_AND_TRIGGER [get_debug_ports u_ila_0/probe5]
set_property port_width 1 [get_debug_ports u_ila_0/probe5]
connect_debug_port u_ila_0/probe5 [get_nets [list dpp_block_design_i/DPP_module_top_0_0/U0/photon_arrival]]
create_debug_port u_ila_0 probe
set_property PROBE_TYPE DATA_AND_TRIGGER [get_debug_ports u_ila_0/probe6]
set_property port_width 1 [get_debug_ports u_ila_0/probe6]
connect_debug_port u_ila_0/probe6 [get_nets [list dpp_block_design_i/DPP_module_top_0_0/U0/read_ena]]
create_debug_port u_ila_0 probe
set_property PROBE_TYPE DATA_AND_TRIGGER [get_debug_ports u_ila_0/probe7]
set_property port_width 1 [get_debug_ports u_ila_0/probe7]
connect_debug_port u_ila_0/probe7 [get_nets [list dpp_block_design_i/DPP_module_top_0_0/U0/valid_i]]
create_debug_port u_ila_0 probe
set_property PROBE_TYPE DATA_AND_TRIGGER [get_debug_ports u_ila_0/probe8]
set_property port_width 1 [get_debug_ports u_ila_0/probe8]
connect_debug_port u_ila_0/probe8 [get_nets [list dpp_block_design_i/DPP_module_top_0_0/U0/wren_dly]]
set_property C_CLK_INPUT_FREQ_HZ 300000000 [get_debug_cores dbg_hub]
set_property C_ENABLE_CLK_DIVIDER false [get_debug_cores dbg_hub]
set_property C_USER_SCAN_CHAIN 1 [get_debug_cores dbg_hub]
connect_debug_port dbg_hub/clk [get_nets u_ila_0_FCLK_CLK0]
