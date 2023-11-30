// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2022.2 (lin64) Build 3671981 Fri Oct 14 04:59:54 MDT 2022
// Date        : Thu Nov 30 17:23:46 2023
// Host        : node07 running 64-bit CentOS Linux release 7.4.1708 (Core)
// Command     : write_verilog -force -mode synth_stub
//               /home/argo49/smr3891/labs/project2_xrf/project2_xrf.gen/sources_1/bd/xrf_dpp/ip/xrf_dpp_DPP_module_FIR_0_0/xrf_dpp_DPP_module_FIR_0_0_stub.v
// Design      : xrf_dpp_DPP_module_FIR_0_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7z020clg484-1
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* x_core_info = "DPP_module_FIR,Vivado 2022.2" *)
module xrf_dpp_DPP_module_FIR_0_0(clk_i, rst_i, ena_i, ADC_data_i, valid_i, 
  read_ena_o, cf_1_i, cf_2_i, cf_3_i, det_threshold_high_i, det_threshold_low_i, op_mode_i, 
  data_o, fifo_wr_en_mux_out)
/* synthesis syn_black_box black_box_pad_pin="clk_i,rst_i,ena_i,ADC_data_i[15:0],valid_i,read_ena_o,cf_1_i[4:0],cf_2_i[4:0],cf_3_i[4:0],det_threshold_high_i[15:0],det_threshold_low_i[15:0],op_mode_i[1:0],data_o[15:0],fifo_wr_en_mux_out" */;
  input clk_i;
  input rst_i;
  input ena_i;
  input [15:0]ADC_data_i;
  input valid_i;
  output read_ena_o;
  input [4:0]cf_1_i;
  input [4:0]cf_2_i;
  input [4:0]cf_3_i;
  input [15:0]det_threshold_high_i;
  input [15:0]det_threshold_low_i;
  input [1:0]op_mode_i;
  output [15:0]data_o;
  output fifo_wr_en_mux_out;
endmodule
