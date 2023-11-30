// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2022.2 (lin64) Build 3671981 Fri Oct 14 04:59:54 MDT 2022
// Date        : Thu Nov 30 14:22:12 2023
// Host        : ins45238 running 64-bit Ubuntu 22.04.3 LTS
// Command     : write_verilog -force -mode funcsim
//               /home/argo49/smr3891/labs/project2/project2.gen/sources_1/bd/dpp_block_design/ip/dpp_block_design_DPP_module_top_0_0_0/dpp_block_design_DPP_module_top_0_0_0_sim_netlist.v
// Design      : dpp_block_design_DPP_module_top_0_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z020clg484-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "dpp_block_design_DPP_module_top_0_0_0,DPP_module_top_0,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* ip_definition_source = "module_ref" *) 
(* x_core_info = "DPP_module_top_0,Vivado 2022.2" *) 
(* NotValidForBitStream *)
module dpp_block_design_DPP_module_top_0_0_0
   (clk_i,
    rst_i,
    ena_i,
    ADC_data_i,
    valid_i,
    threshold_high_i,
    op_mode_i,
    data_o,
    fifo_wr_en_mux_out);
  input clk_i;
  input rst_i;
  input ena_i;
  input [11:0]ADC_data_i;
  input valid_i;
  input [15:0]threshold_high_i;
  input [1:0]op_mode_i;
  output [15:0]data_o;
  output fifo_wr_en_mux_out;

  wire [11:0]ADC_data_i;
  wire clk_i;
  wire [15:0]data_o;
  wire ena_i;
  wire fifo_wr_en_mux_out;
  wire [1:0]op_mode_i;
  wire rst_i;
  wire [15:0]threshold_high_i;
  wire valid_i;

  (* KEEP_HIERARCHY = "soft" *) 
  dpp_block_design_DPP_module_top_0_0_0_DPP_module_top_0 U0
       (.ADC_data_i(ADC_data_i),
        .clk_i(clk_i),
        .data_o(data_o),
        .ena_i(ena_i),
        .fifo_wr_en_mux_out(fifo_wr_en_mux_out),
        .op_mode_i(op_mode_i),
        .rst_i(rst_i),
        .threshold_high_i(threshold_high_i),
        .valid_i(valid_i));
endmodule

(* ORIG_REF_NAME = "DPP_module_top_0" *) (* keep_hierarchy = "soft" *) 
module dpp_block_design_DPP_module_top_0_0_0_DPP_module_top_0
   (clk_i,
    rst_i,
    ena_i,
    ADC_data_i,
    valid_i,
    threshold_high_i,
    op_mode_i,
    data_o,
    fifo_wr_en_mux_out);
  input clk_i;
  input rst_i;
  input ena_i;
  (* mark_debug = "true" *) input [11:0]ADC_data_i;
  (* mark_debug = "true" *) input valid_i;
  input [15:0]threshold_high_i;
  (* mark_debug = "true" *) input [1:0]op_mode_i;
  output [15:0]data_o;
  output fifo_wr_en_mux_out;

  (* MARK_DEBUG *) wire [11:0]ADC_data_i;
  (* MARK_DEBUG *) wire FIFO_wr_en;
  wire [11:0]FIR_Derivative_data;
  (* MARK_DEBUG *) wire [15:0]FIR_data_out;
  wire clk_i;
  wire [15:0]data_o;
  wire [11:0]ddly_0;
  wire ena_i;
  (* MARK_DEBUG *) wire fifo_wr_en_mux;
  (* MARK_DEBUG *) wire [1:0]op_mode_i;
  (* MARK_DEBUG *) wire photon_arrival;
  (* MARK_DEBUG *) wire read_ena;
  wire rst_i;
  wire [15:0]threshold_high_i;
  wire valid_der;
  (* MARK_DEBUG *) wire valid_i;
  (* MARK_DEBUG *) wire wren_dly;
  wire [15:12]NLW_fir_derivative_data_o_UNCONNECTED;

  assign fifo_wr_en_mux_out = fifo_wr_en_mux;
  LUT2 #(
    .INIT(4'h8)) 
    FIFO_wr_en_inferred_i_1
       (.I0(photon_arrival),
        .I1(wren_dly),
        .O(FIFO_wr_en));
  FDRE \ddly_0_reg[0] 
       (.C(clk_i),
        .CE(read_ena),
        .D(ADC_data_i[0]),
        .Q(ddly_0[0]),
        .R(1'b0));
  FDRE \ddly_0_reg[10] 
       (.C(clk_i),
        .CE(read_ena),
        .D(ADC_data_i[10]),
        .Q(ddly_0[10]),
        .R(1'b0));
  FDRE \ddly_0_reg[11] 
       (.C(clk_i),
        .CE(read_ena),
        .D(ADC_data_i[11]),
        .Q(ddly_0[11]),
        .R(1'b0));
  FDRE \ddly_0_reg[1] 
       (.C(clk_i),
        .CE(read_ena),
        .D(ADC_data_i[1]),
        .Q(ddly_0[1]),
        .R(1'b0));
  FDRE \ddly_0_reg[2] 
       (.C(clk_i),
        .CE(read_ena),
        .D(ADC_data_i[2]),
        .Q(ddly_0[2]),
        .R(1'b0));
  FDRE \ddly_0_reg[3] 
       (.C(clk_i),
        .CE(read_ena),
        .D(ADC_data_i[3]),
        .Q(ddly_0[3]),
        .R(1'b0));
  FDRE \ddly_0_reg[4] 
       (.C(clk_i),
        .CE(read_ena),
        .D(ADC_data_i[4]),
        .Q(ddly_0[4]),
        .R(1'b0));
  FDRE \ddly_0_reg[5] 
       (.C(clk_i),
        .CE(read_ena),
        .D(ADC_data_i[5]),
        .Q(ddly_0[5]),
        .R(1'b0));
  FDRE \ddly_0_reg[6] 
       (.C(clk_i),
        .CE(read_ena),
        .D(ADC_data_i[6]),
        .Q(ddly_0[6]),
        .R(1'b0));
  FDRE \ddly_0_reg[7] 
       (.C(clk_i),
        .CE(read_ena),
        .D(ADC_data_i[7]),
        .Q(ddly_0[7]),
        .R(1'b0));
  FDRE \ddly_0_reg[8] 
       (.C(clk_i),
        .CE(read_ena),
        .D(ADC_data_i[8]),
        .Q(ddly_0[8]),
        .R(1'b0));
  FDRE \ddly_0_reg[9] 
       (.C(clk_i),
        .CE(read_ena),
        .D(ADC_data_i[9]),
        .Q(ddly_0[9]),
        .R(1'b0));
  FDRE \ddly_1_reg[0] 
       (.C(clk_i),
        .CE(read_ena),
        .D(ddly_0[0]),
        .Q(FIR_data_out[0]),
        .R(1'b0));
  FDRE \ddly_1_reg[10] 
       (.C(clk_i),
        .CE(read_ena),
        .D(ddly_0[10]),
        .Q(FIR_data_out[10]),
        .R(1'b0));
  FDRE \ddly_1_reg[11] 
       (.C(clk_i),
        .CE(read_ena),
        .D(ddly_0[11]),
        .Q(FIR_data_out[11]),
        .R(1'b0));
  FDRE \ddly_1_reg[1] 
       (.C(clk_i),
        .CE(read_ena),
        .D(ddly_0[1]),
        .Q(FIR_data_out[1]),
        .R(1'b0));
  FDRE \ddly_1_reg[2] 
       (.C(clk_i),
        .CE(read_ena),
        .D(ddly_0[2]),
        .Q(FIR_data_out[2]),
        .R(1'b0));
  FDRE \ddly_1_reg[3] 
       (.C(clk_i),
        .CE(read_ena),
        .D(ddly_0[3]),
        .Q(FIR_data_out[3]),
        .R(1'b0));
  FDRE \ddly_1_reg[4] 
       (.C(clk_i),
        .CE(read_ena),
        .D(ddly_0[4]),
        .Q(FIR_data_out[4]),
        .R(1'b0));
  FDRE \ddly_1_reg[5] 
       (.C(clk_i),
        .CE(read_ena),
        .D(ddly_0[5]),
        .Q(FIR_data_out[5]),
        .R(1'b0));
  FDRE \ddly_1_reg[6] 
       (.C(clk_i),
        .CE(read_ena),
        .D(ddly_0[6]),
        .Q(FIR_data_out[6]),
        .R(1'b0));
  FDRE \ddly_1_reg[7] 
       (.C(clk_i),
        .CE(read_ena),
        .D(ddly_0[7]),
        .Q(FIR_data_out[7]),
        .R(1'b0));
  FDRE \ddly_1_reg[8] 
       (.C(clk_i),
        .CE(read_ena),
        .D(ddly_0[8]),
        .Q(FIR_data_out[8]),
        .R(1'b0));
  FDRE \ddly_1_reg[9] 
       (.C(clk_i),
        .CE(read_ena),
        .D(ddly_0[9]),
        .Q(FIR_data_out[9]),
        .R(1'b0));
  (* KEEP_HIERARCHY = "soft" *) 
  dpp_block_design_DPP_module_top_0_0_0_edge_detector_0 edge_detector
       (.arrival_flag_o(photon_arrival),
        .clk_i(clk_i),
        .data_i({1'b0,1'b0,1'b0,1'b0,FIR_Derivative_data}),
        .ena_i(ena_i),
        .rst_i(rst_i),
        .threshold_high_i(threshold_high_i));
  (* KEEP_HIERARCHY = "soft" *) 
  (* d_width = "12" *) 
  dpp_block_design_DPP_module_top_0_0_0_fir_derivative_0 fir_derivative
       (.clk_i(clk_i),
        .data_i(ADC_data_i),
        .data_o({NLW_fir_derivative_data_o_UNCONNECTED[15:12],FIR_Derivative_data}),
        .der_sign(valid_der),
        .ena_i(read_ena),
        .rst_i(rst_i));
  LUT1 #(
    .INIT(2'h2)) 
    i_0
       (.I0(1'b0),
        .O(FIR_data_out[15]));
  LUT1 #(
    .INIT(2'h2)) 
    i_1
       (.I0(1'b0),
        .O(FIR_data_out[14]));
  LUT1 #(
    .INIT(2'h2)) 
    i_2
       (.I0(1'b0),
        .O(FIR_data_out[13]));
  LUT1 #(
    .INIT(2'h2)) 
    i_3
       (.I0(1'b0),
        .O(FIR_data_out[12]));
  (* KEEP_HIERARCHY = "soft" *) 
  dpp_block_design_DPP_module_top_0_0_0_output_mux my_op_mode_dec
       (.ADC_data_i(ADC_data_i),
        .FIR_data_i(FIR_data_out),
        .FIR_deriv_i({1'b0,1'b0,1'b0,1'b0,FIR_Derivative_data}),
        .data_o(data_o),
        .fifo_wr_en_i(FIFO_wr_en),
        .fifo_wr_en_o(fifo_wr_en_mux),
        .op_mode_i(op_mode_i));
  LUT2 #(
    .INIT(4'h8)) 
    read_ena_inferred_i_1
       (.I0(valid_i),
        .I1(ena_i),
        .O(read_ena));
  (* KEEP = "yes" *) 
  (* mark_debug = "true" *) 
  FDRE wren_dly_reg
       (.C(clk_i),
        .CE(read_ena),
        .D(valid_der),
        .Q(wren_dly),
        .R(1'b0));
endmodule

(* ORIG_REF_NAME = "edge_detector_0" *) 
module dpp_block_design_DPP_module_top_0_0_0_edge_detector_0
   (clk_i,
    rst_i,
    ena_i,
    data_i,
    threshold_high_i,
    arrival_flag_o);
  input clk_i;
  input rst_i;
  input ena_i;
  input [15:0]data_i;
  input [15:0]threshold_high_i;
  output arrival_flag_o;

  wire \FSM_sequential_state[0]_i_1_n_0 ;
  wire \FSM_sequential_state[1]_i_10_n_0 ;
  wire \FSM_sequential_state[1]_i_12_n_0 ;
  wire \FSM_sequential_state[1]_i_13_n_0 ;
  wire \FSM_sequential_state[1]_i_14_n_0 ;
  wire \FSM_sequential_state[1]_i_15_n_0 ;
  wire \FSM_sequential_state[1]_i_16_n_0 ;
  wire \FSM_sequential_state[1]_i_17_n_0 ;
  wire \FSM_sequential_state[1]_i_18_n_0 ;
  wire \FSM_sequential_state[1]_i_19_n_0 ;
  wire \FSM_sequential_state[1]_i_1_n_0 ;
  wire \FSM_sequential_state[1]_i_20_n_0 ;
  wire \FSM_sequential_state[1]_i_21_n_0 ;
  wire \FSM_sequential_state[1]_i_22_n_0 ;
  wire \FSM_sequential_state[1]_i_23_n_0 ;
  wire \FSM_sequential_state[1]_i_24_n_0 ;
  wire \FSM_sequential_state[1]_i_25_n_0 ;
  wire \FSM_sequential_state[1]_i_26_n_0 ;
  wire \FSM_sequential_state[1]_i_27_n_0 ;
  wire \FSM_sequential_state[1]_i_28_n_0 ;
  wire \FSM_sequential_state[1]_i_29_n_0 ;
  wire \FSM_sequential_state[1]_i_30_n_0 ;
  wire \FSM_sequential_state[1]_i_31_n_0 ;
  wire \FSM_sequential_state[1]_i_32_n_0 ;
  wire \FSM_sequential_state[1]_i_33_n_0 ;
  wire \FSM_sequential_state[1]_i_34_n_0 ;
  wire \FSM_sequential_state[1]_i_35_n_0 ;
  wire \FSM_sequential_state[1]_i_5_n_0 ;
  wire \FSM_sequential_state[1]_i_6_n_0 ;
  wire \FSM_sequential_state[1]_i_7_n_0 ;
  wire \FSM_sequential_state[1]_i_8_n_0 ;
  wire \FSM_sequential_state[1]_i_9_n_0 ;
  wire \FSM_sequential_state_reg[1]_i_11_n_0 ;
  wire \FSM_sequential_state_reg[1]_i_11_n_1 ;
  wire \FSM_sequential_state_reg[1]_i_11_n_2 ;
  wire \FSM_sequential_state_reg[1]_i_11_n_3 ;
  wire \FSM_sequential_state_reg[1]_i_2_n_1 ;
  wire \FSM_sequential_state_reg[1]_i_2_n_2 ;
  wire \FSM_sequential_state_reg[1]_i_2_n_3 ;
  wire \FSM_sequential_state_reg[1]_i_3_n_1 ;
  wire \FSM_sequential_state_reg[1]_i_3_n_2 ;
  wire \FSM_sequential_state_reg[1]_i_3_n_3 ;
  wire \FSM_sequential_state_reg[1]_i_4_n_0 ;
  wire \FSM_sequential_state_reg[1]_i_4_n_1 ;
  wire \FSM_sequential_state_reg[1]_i_4_n_2 ;
  wire \FSM_sequential_state_reg[1]_i_4_n_3 ;
  wire arrival_flag_o;
  wire arrival_flag_reg;
  wire arrival_flag_reg_reg_i_2_n_0;
  wire arrival_flag_reg_reg_i_3_n_0;
  wire clk_i;
  wire [15:0]data_i;
  wire ena_i;
  wire gtOp;
  wire ltOp;
  wire rst_i;
  wire [1:0]state;
  wire [15:0]threshold_high_i;
  wire [3:0]\NLW_FSM_sequential_state_reg[1]_i_11_O_UNCONNECTED ;
  wire [3:0]\NLW_FSM_sequential_state_reg[1]_i_2_O_UNCONNECTED ;
  wire [3:0]\NLW_FSM_sequential_state_reg[1]_i_3_O_UNCONNECTED ;
  wire [3:0]\NLW_FSM_sequential_state_reg[1]_i_4_O_UNCONNECTED ;

  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT5 #(
    .INIT(32'h0000EE6E)) 
    \FSM_sequential_state[0]_i_1 
       (.I0(state[0]),
        .I1(ena_i),
        .I2(gtOp),
        .I3(state[1]),
        .I4(rst_i),
        .O(\FSM_sequential_state[0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000062AAEAAA)) 
    \FSM_sequential_state[1]_i_1 
       (.I0(state[1]),
        .I1(ena_i),
        .I2(gtOp),
        .I3(state[0]),
        .I4(ltOp),
        .I5(rst_i),
        .O(\FSM_sequential_state[1]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h9009)) 
    \FSM_sequential_state[1]_i_10 
       (.I0(data_i[8]),
        .I1(threshold_high_i[8]),
        .I2(data_i[9]),
        .I3(threshold_high_i[9]),
        .O(\FSM_sequential_state[1]_i_10_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \FSM_sequential_state[1]_i_12 
       (.I0(threshold_high_i[14]),
        .I1(threshold_high_i[15]),
        .O(\FSM_sequential_state[1]_i_12_n_0 ));
  LUT2 #(
    .INIT(4'hE)) 
    \FSM_sequential_state[1]_i_13 
       (.I0(threshold_high_i[12]),
        .I1(threshold_high_i[13]),
        .O(\FSM_sequential_state[1]_i_13_n_0 ));
  LUT4 #(
    .INIT(16'h2F02)) 
    \FSM_sequential_state[1]_i_14 
       (.I0(threshold_high_i[10]),
        .I1(data_i[10]),
        .I2(data_i[11]),
        .I3(threshold_high_i[11]),
        .O(\FSM_sequential_state[1]_i_14_n_0 ));
  LUT4 #(
    .INIT(16'h2F02)) 
    \FSM_sequential_state[1]_i_15 
       (.I0(threshold_high_i[8]),
        .I1(data_i[8]),
        .I2(data_i[9]),
        .I3(threshold_high_i[9]),
        .O(\FSM_sequential_state[1]_i_15_n_0 ));
  LUT2 #(
    .INIT(4'h1)) 
    \FSM_sequential_state[1]_i_16 
       (.I0(threshold_high_i[14]),
        .I1(threshold_high_i[15]),
        .O(\FSM_sequential_state[1]_i_16_n_0 ));
  LUT2 #(
    .INIT(4'h1)) 
    \FSM_sequential_state[1]_i_17 
       (.I0(threshold_high_i[12]),
        .I1(threshold_high_i[13]),
        .O(\FSM_sequential_state[1]_i_17_n_0 ));
  LUT4 #(
    .INIT(16'h9009)) 
    \FSM_sequential_state[1]_i_18 
       (.I0(threshold_high_i[10]),
        .I1(data_i[10]),
        .I2(threshold_high_i[11]),
        .I3(data_i[11]),
        .O(\FSM_sequential_state[1]_i_18_n_0 ));
  LUT4 #(
    .INIT(16'h9009)) 
    \FSM_sequential_state[1]_i_19 
       (.I0(threshold_high_i[8]),
        .I1(data_i[8]),
        .I2(threshold_high_i[9]),
        .I3(data_i[9]),
        .O(\FSM_sequential_state[1]_i_19_n_0 ));
  LUT4 #(
    .INIT(16'h2F02)) 
    \FSM_sequential_state[1]_i_20 
       (.I0(data_i[6]),
        .I1(threshold_high_i[6]),
        .I2(threshold_high_i[7]),
        .I3(data_i[7]),
        .O(\FSM_sequential_state[1]_i_20_n_0 ));
  LUT4 #(
    .INIT(16'h2F02)) 
    \FSM_sequential_state[1]_i_21 
       (.I0(data_i[4]),
        .I1(threshold_high_i[4]),
        .I2(threshold_high_i[5]),
        .I3(data_i[5]),
        .O(\FSM_sequential_state[1]_i_21_n_0 ));
  LUT4 #(
    .INIT(16'h2F02)) 
    \FSM_sequential_state[1]_i_22 
       (.I0(data_i[2]),
        .I1(threshold_high_i[2]),
        .I2(threshold_high_i[3]),
        .I3(data_i[3]),
        .O(\FSM_sequential_state[1]_i_22_n_0 ));
  LUT4 #(
    .INIT(16'h2F02)) 
    \FSM_sequential_state[1]_i_23 
       (.I0(data_i[0]),
        .I1(threshold_high_i[0]),
        .I2(threshold_high_i[1]),
        .I3(data_i[1]),
        .O(\FSM_sequential_state[1]_i_23_n_0 ));
  LUT4 #(
    .INIT(16'h9009)) 
    \FSM_sequential_state[1]_i_24 
       (.I0(data_i[6]),
        .I1(threshold_high_i[6]),
        .I2(data_i[7]),
        .I3(threshold_high_i[7]),
        .O(\FSM_sequential_state[1]_i_24_n_0 ));
  LUT4 #(
    .INIT(16'h9009)) 
    \FSM_sequential_state[1]_i_25 
       (.I0(data_i[4]),
        .I1(threshold_high_i[4]),
        .I2(data_i[5]),
        .I3(threshold_high_i[5]),
        .O(\FSM_sequential_state[1]_i_25_n_0 ));
  LUT4 #(
    .INIT(16'h9009)) 
    \FSM_sequential_state[1]_i_26 
       (.I0(data_i[2]),
        .I1(threshold_high_i[2]),
        .I2(data_i[3]),
        .I3(threshold_high_i[3]),
        .O(\FSM_sequential_state[1]_i_26_n_0 ));
  LUT4 #(
    .INIT(16'h9009)) 
    \FSM_sequential_state[1]_i_27 
       (.I0(data_i[0]),
        .I1(threshold_high_i[0]),
        .I2(data_i[1]),
        .I3(threshold_high_i[1]),
        .O(\FSM_sequential_state[1]_i_27_n_0 ));
  LUT4 #(
    .INIT(16'h2F02)) 
    \FSM_sequential_state[1]_i_28 
       (.I0(threshold_high_i[6]),
        .I1(data_i[6]),
        .I2(data_i[7]),
        .I3(threshold_high_i[7]),
        .O(\FSM_sequential_state[1]_i_28_n_0 ));
  LUT4 #(
    .INIT(16'h2F02)) 
    \FSM_sequential_state[1]_i_29 
       (.I0(threshold_high_i[4]),
        .I1(data_i[4]),
        .I2(data_i[5]),
        .I3(threshold_high_i[5]),
        .O(\FSM_sequential_state[1]_i_29_n_0 ));
  LUT4 #(
    .INIT(16'h2F02)) 
    \FSM_sequential_state[1]_i_30 
       (.I0(threshold_high_i[2]),
        .I1(data_i[2]),
        .I2(data_i[3]),
        .I3(threshold_high_i[3]),
        .O(\FSM_sequential_state[1]_i_30_n_0 ));
  LUT4 #(
    .INIT(16'h2F02)) 
    \FSM_sequential_state[1]_i_31 
       (.I0(threshold_high_i[0]),
        .I1(data_i[0]),
        .I2(data_i[1]),
        .I3(threshold_high_i[1]),
        .O(\FSM_sequential_state[1]_i_31_n_0 ));
  LUT4 #(
    .INIT(16'h9009)) 
    \FSM_sequential_state[1]_i_32 
       (.I0(threshold_high_i[6]),
        .I1(data_i[6]),
        .I2(threshold_high_i[7]),
        .I3(data_i[7]),
        .O(\FSM_sequential_state[1]_i_32_n_0 ));
  LUT4 #(
    .INIT(16'h9009)) 
    \FSM_sequential_state[1]_i_33 
       (.I0(threshold_high_i[4]),
        .I1(data_i[4]),
        .I2(threshold_high_i[5]),
        .I3(data_i[5]),
        .O(\FSM_sequential_state[1]_i_33_n_0 ));
  LUT4 #(
    .INIT(16'h9009)) 
    \FSM_sequential_state[1]_i_34 
       (.I0(threshold_high_i[2]),
        .I1(data_i[2]),
        .I2(threshold_high_i[3]),
        .I3(data_i[3]),
        .O(\FSM_sequential_state[1]_i_34_n_0 ));
  LUT4 #(
    .INIT(16'h9009)) 
    \FSM_sequential_state[1]_i_35 
       (.I0(threshold_high_i[0]),
        .I1(data_i[0]),
        .I2(threshold_high_i[1]),
        .I3(data_i[1]),
        .O(\FSM_sequential_state[1]_i_35_n_0 ));
  LUT4 #(
    .INIT(16'h2F02)) 
    \FSM_sequential_state[1]_i_5 
       (.I0(data_i[10]),
        .I1(threshold_high_i[10]),
        .I2(threshold_high_i[11]),
        .I3(data_i[11]),
        .O(\FSM_sequential_state[1]_i_5_n_0 ));
  LUT4 #(
    .INIT(16'h2F02)) 
    \FSM_sequential_state[1]_i_6 
       (.I0(data_i[8]),
        .I1(threshold_high_i[8]),
        .I2(threshold_high_i[9]),
        .I3(data_i[9]),
        .O(\FSM_sequential_state[1]_i_6_n_0 ));
  LUT2 #(
    .INIT(4'h1)) 
    \FSM_sequential_state[1]_i_7 
       (.I0(threshold_high_i[14]),
        .I1(threshold_high_i[15]),
        .O(\FSM_sequential_state[1]_i_7_n_0 ));
  LUT2 #(
    .INIT(4'h1)) 
    \FSM_sequential_state[1]_i_8 
       (.I0(threshold_high_i[12]),
        .I1(threshold_high_i[13]),
        .O(\FSM_sequential_state[1]_i_8_n_0 ));
  LUT4 #(
    .INIT(16'h9009)) 
    \FSM_sequential_state[1]_i_9 
       (.I0(data_i[10]),
        .I1(threshold_high_i[10]),
        .I2(data_i[11]),
        .I3(threshold_high_i[11]),
        .O(\FSM_sequential_state[1]_i_9_n_0 ));
  (* FSM_ENCODED_STATES = "reset_st:00,output_pulse_st:10,over_threshold_st:11,waiting_st:01" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_sequential_state_reg[0] 
       (.C(clk_i),
        .CE(1'b1),
        .D(\FSM_sequential_state[0]_i_1_n_0 ),
        .Q(state[0]),
        .R(1'b0));
  (* FSM_ENCODED_STATES = "reset_st:00,output_pulse_st:10,over_threshold_st:11,waiting_st:01" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_sequential_state_reg[1] 
       (.C(clk_i),
        .CE(1'b1),
        .D(\FSM_sequential_state[1]_i_1_n_0 ),
        .Q(state[1]),
        .R(1'b0));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY4 \FSM_sequential_state_reg[1]_i_11 
       (.CI(1'b0),
        .CO({\FSM_sequential_state_reg[1]_i_11_n_0 ,\FSM_sequential_state_reg[1]_i_11_n_1 ,\FSM_sequential_state_reg[1]_i_11_n_2 ,\FSM_sequential_state_reg[1]_i_11_n_3 }),
        .CYINIT(1'b0),
        .DI({\FSM_sequential_state[1]_i_28_n_0 ,\FSM_sequential_state[1]_i_29_n_0 ,\FSM_sequential_state[1]_i_30_n_0 ,\FSM_sequential_state[1]_i_31_n_0 }),
        .O(\NLW_FSM_sequential_state_reg[1]_i_11_O_UNCONNECTED [3:0]),
        .S({\FSM_sequential_state[1]_i_32_n_0 ,\FSM_sequential_state[1]_i_33_n_0 ,\FSM_sequential_state[1]_i_34_n_0 ,\FSM_sequential_state[1]_i_35_n_0 }));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY4 \FSM_sequential_state_reg[1]_i_2 
       (.CI(\FSM_sequential_state_reg[1]_i_4_n_0 ),
        .CO({gtOp,\FSM_sequential_state_reg[1]_i_2_n_1 ,\FSM_sequential_state_reg[1]_i_2_n_2 ,\FSM_sequential_state_reg[1]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI({threshold_high_i[15],1'b0,\FSM_sequential_state[1]_i_5_n_0 ,\FSM_sequential_state[1]_i_6_n_0 }),
        .O(\NLW_FSM_sequential_state_reg[1]_i_2_O_UNCONNECTED [3:0]),
        .S({\FSM_sequential_state[1]_i_7_n_0 ,\FSM_sequential_state[1]_i_8_n_0 ,\FSM_sequential_state[1]_i_9_n_0 ,\FSM_sequential_state[1]_i_10_n_0 }));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY4 \FSM_sequential_state_reg[1]_i_3 
       (.CI(\FSM_sequential_state_reg[1]_i_11_n_0 ),
        .CO({ltOp,\FSM_sequential_state_reg[1]_i_3_n_1 ,\FSM_sequential_state_reg[1]_i_3_n_2 ,\FSM_sequential_state_reg[1]_i_3_n_3 }),
        .CYINIT(1'b0),
        .DI({\FSM_sequential_state[1]_i_12_n_0 ,\FSM_sequential_state[1]_i_13_n_0 ,\FSM_sequential_state[1]_i_14_n_0 ,\FSM_sequential_state[1]_i_15_n_0 }),
        .O(\NLW_FSM_sequential_state_reg[1]_i_3_O_UNCONNECTED [3:0]),
        .S({\FSM_sequential_state[1]_i_16_n_0 ,\FSM_sequential_state[1]_i_17_n_0 ,\FSM_sequential_state[1]_i_18_n_0 ,\FSM_sequential_state[1]_i_19_n_0 }));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY4 \FSM_sequential_state_reg[1]_i_4 
       (.CI(1'b0),
        .CO({\FSM_sequential_state_reg[1]_i_4_n_0 ,\FSM_sequential_state_reg[1]_i_4_n_1 ,\FSM_sequential_state_reg[1]_i_4_n_2 ,\FSM_sequential_state_reg[1]_i_4_n_3 }),
        .CYINIT(1'b0),
        .DI({\FSM_sequential_state[1]_i_20_n_0 ,\FSM_sequential_state[1]_i_21_n_0 ,\FSM_sequential_state[1]_i_22_n_0 ,\FSM_sequential_state[1]_i_23_n_0 }),
        .O(\NLW_FSM_sequential_state_reg[1]_i_4_O_UNCONNECTED [3:0]),
        .S({\FSM_sequential_state[1]_i_24_n_0 ,\FSM_sequential_state[1]_i_25_n_0 ,\FSM_sequential_state[1]_i_26_n_0 ,\FSM_sequential_state[1]_i_27_n_0 }));
  LDCP arrival_flag_reg_reg
       (.CLR(arrival_flag_reg_reg_i_2_n_0),
        .D(1'b0),
        .G(arrival_flag_reg),
        .PRE(arrival_flag_reg_reg_i_3_n_0),
        .Q(arrival_flag_o));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT2 #(
    .INIT(4'h8)) 
    arrival_flag_reg_reg_i_1
       (.I0(state[0]),
        .I1(state[1]),
        .O(arrival_flag_reg));
  LUT1 #(
    .INIT(2'h1)) 
    arrival_flag_reg_reg_i_2
       (.I0(state[1]),
        .O(arrival_flag_reg_reg_i_2_n_0));
  LUT2 #(
    .INIT(4'h2)) 
    arrival_flag_reg_reg_i_3
       (.I0(state[1]),
        .I1(state[0]),
        .O(arrival_flag_reg_reg_i_3_n_0));
endmodule

(* ORIG_REF_NAME = "fir_derivative_0" *) (* d_width = "12" *) 
module dpp_block_design_DPP_module_top_0_0_0_fir_derivative_0
   (clk_i,
    rst_i,
    ena_i,
    data_i,
    der_sign,
    data_o);
  input clk_i;
  input rst_i;
  input ena_i;
  input [11:0]data_i;
  output der_sign;
  output [15:0]data_o;

  wire \<const0> ;
  wire clk_i;
  wire [11:0]data_i;
  wire [11:0]\^data_o ;
  wire der_sign;
  wire der_sign_i_10_n_0;
  wire der_sign_i_11_n_0;
  wire der_sign_i_12_n_0;
  wire der_sign_i_13_n_0;
  wire der_sign_i_14_n_0;
  wire der_sign_i_15_n_0;
  wire der_sign_i_1_n_0;
  wire der_sign_i_4_n_0;
  wire der_sign_i_5_n_0;
  wire der_sign_i_6_n_0;
  wire der_sign_i_7_n_0;
  wire der_sign_i_8_n_0;
  wire der_sign_i_9_n_0;
  wire der_sign_reg_i_2_n_3;
  wire der_sign_reg_i_3_n_0;
  wire der_sign_reg_i_3_n_1;
  wire der_sign_reg_i_3_n_2;
  wire der_sign_reg_i_3_n_3;
  wire [11:0]din_1;
  wire [11:0]din_2;
  wire [11:0]doutint0_in;
  wire \doutint[11]_i_5_n_0 ;
  wire \doutint[11]_i_6_n_0 ;
  wire \doutint[11]_i_7_n_0 ;
  wire \doutint[11]_i_8_n_0 ;
  wire \doutint[3]_i_6_n_0 ;
  wire \doutint[3]_i_7_n_0 ;
  wire \doutint[3]_i_8_n_0 ;
  wire \doutint[3]_i_9_n_0 ;
  wire \doutint[7]_i_6_n_0 ;
  wire \doutint[7]_i_7_n_0 ;
  wire \doutint[7]_i_8_n_0 ;
  wire \doutint[7]_i_9_n_0 ;
  wire \doutint_reg[11]_i_1_n_1 ;
  wire \doutint_reg[11]_i_1_n_2 ;
  wire \doutint_reg[11]_i_1_n_3 ;
  wire \doutint_reg[3]_i_1_n_0 ;
  wire \doutint_reg[3]_i_1_n_1 ;
  wire \doutint_reg[3]_i_1_n_2 ;
  wire \doutint_reg[3]_i_1_n_3 ;
  wire \doutint_reg[7]_i_1_n_0 ;
  wire \doutint_reg[7]_i_1_n_1 ;
  wire \doutint_reg[7]_i_1_n_2 ;
  wire \doutint_reg[7]_i_1_n_3 ;
  wire ena_i;
  wire gtOp;
  wire [10:0]p_1_in;
  wire rst_i;
  wire [3:2]NLW_der_sign_reg_i_2_CO_UNCONNECTED;
  wire [3:0]NLW_der_sign_reg_i_2_O_UNCONNECTED;
  wire [3:0]NLW_der_sign_reg_i_3_O_UNCONNECTED;
  wire [3:3]\NLW_doutint_reg[11]_i_1_CO_UNCONNECTED ;

  assign data_o[15] = \<const0> ;
  assign data_o[14] = \<const0> ;
  assign data_o[13] = \<const0> ;
  assign data_o[12] = \<const0> ;
  assign data_o[11:0] = \^data_o [11:0];
  GND GND
       (.G(\<const0> ));
  LUT2 #(
    .INIT(4'h2)) 
    der_sign_i_1
       (.I0(ena_i),
        .I1(rst_i),
        .O(der_sign_i_1_n_0));
  LUT4 #(
    .INIT(16'h2F02)) 
    der_sign_i_10
       (.I0(din_1[2]),
        .I1(din_2[2]),
        .I2(din_2[3]),
        .I3(din_1[3]),
        .O(der_sign_i_10_n_0));
  LUT4 #(
    .INIT(16'h2F02)) 
    der_sign_i_11
       (.I0(din_1[0]),
        .I1(din_2[0]),
        .I2(din_2[1]),
        .I3(din_1[1]),
        .O(der_sign_i_11_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    der_sign_i_12
       (.I0(din_1[6]),
        .I1(din_2[6]),
        .I2(din_1[7]),
        .I3(din_2[7]),
        .O(der_sign_i_12_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    der_sign_i_13
       (.I0(din_1[4]),
        .I1(din_2[4]),
        .I2(din_1[5]),
        .I3(din_2[5]),
        .O(der_sign_i_13_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    der_sign_i_14
       (.I0(din_1[2]),
        .I1(din_2[2]),
        .I2(din_1[3]),
        .I3(din_2[3]),
        .O(der_sign_i_14_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    der_sign_i_15
       (.I0(din_1[0]),
        .I1(din_2[0]),
        .I2(din_1[1]),
        .I3(din_2[1]),
        .O(der_sign_i_15_n_0));
  LUT4 #(
    .INIT(16'h2F02)) 
    der_sign_i_4
       (.I0(din_1[10]),
        .I1(din_2[10]),
        .I2(din_2[11]),
        .I3(din_1[11]),
        .O(der_sign_i_4_n_0));
  LUT4 #(
    .INIT(16'h2F02)) 
    der_sign_i_5
       (.I0(din_1[8]),
        .I1(din_2[8]),
        .I2(din_2[9]),
        .I3(din_1[9]),
        .O(der_sign_i_5_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    der_sign_i_6
       (.I0(din_1[10]),
        .I1(din_2[10]),
        .I2(din_1[11]),
        .I3(din_2[11]),
        .O(der_sign_i_6_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    der_sign_i_7
       (.I0(din_1[8]),
        .I1(din_2[8]),
        .I2(din_1[9]),
        .I3(din_2[9]),
        .O(der_sign_i_7_n_0));
  LUT4 #(
    .INIT(16'h2F02)) 
    der_sign_i_8
       (.I0(din_1[6]),
        .I1(din_2[6]),
        .I2(din_2[7]),
        .I3(din_1[7]),
        .O(der_sign_i_8_n_0));
  LUT4 #(
    .INIT(16'h2F02)) 
    der_sign_i_9
       (.I0(din_1[4]),
        .I1(din_2[4]),
        .I2(din_2[5]),
        .I3(din_1[5]),
        .O(der_sign_i_9_n_0));
  FDRE der_sign_reg
       (.C(clk_i),
        .CE(der_sign_i_1_n_0),
        .D(gtOp),
        .Q(der_sign),
        .R(1'b0));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY4 der_sign_reg_i_2
       (.CI(der_sign_reg_i_3_n_0),
        .CO({NLW_der_sign_reg_i_2_CO_UNCONNECTED[3:2],gtOp,der_sign_reg_i_2_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,der_sign_i_4_n_0,der_sign_i_5_n_0}),
        .O(NLW_der_sign_reg_i_2_O_UNCONNECTED[3:0]),
        .S({1'b0,1'b0,der_sign_i_6_n_0,der_sign_i_7_n_0}));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY4 der_sign_reg_i_3
       (.CI(1'b0),
        .CO({der_sign_reg_i_3_n_0,der_sign_reg_i_3_n_1,der_sign_reg_i_3_n_2,der_sign_reg_i_3_n_3}),
        .CYINIT(1'b0),
        .DI({der_sign_i_8_n_0,der_sign_i_9_n_0,der_sign_i_10_n_0,der_sign_i_11_n_0}),
        .O(NLW_der_sign_reg_i_3_O_UNCONNECTED[3:0]),
        .S({der_sign_i_12_n_0,der_sign_i_13_n_0,der_sign_i_14_n_0,der_sign_i_15_n_0}));
  FDRE \din_1_reg[0] 
       (.C(clk_i),
        .CE(ena_i),
        .D(data_i[0]),
        .Q(din_1[0]),
        .R(rst_i));
  FDRE \din_1_reg[10] 
       (.C(clk_i),
        .CE(ena_i),
        .D(data_i[10]),
        .Q(din_1[10]),
        .R(rst_i));
  FDRE \din_1_reg[11] 
       (.C(clk_i),
        .CE(ena_i),
        .D(data_i[11]),
        .Q(din_1[11]),
        .R(rst_i));
  FDRE \din_1_reg[1] 
       (.C(clk_i),
        .CE(ena_i),
        .D(data_i[1]),
        .Q(din_1[1]),
        .R(rst_i));
  FDRE \din_1_reg[2] 
       (.C(clk_i),
        .CE(ena_i),
        .D(data_i[2]),
        .Q(din_1[2]),
        .R(rst_i));
  FDRE \din_1_reg[3] 
       (.C(clk_i),
        .CE(ena_i),
        .D(data_i[3]),
        .Q(din_1[3]),
        .R(rst_i));
  FDRE \din_1_reg[4] 
       (.C(clk_i),
        .CE(ena_i),
        .D(data_i[4]),
        .Q(din_1[4]),
        .R(rst_i));
  FDRE \din_1_reg[5] 
       (.C(clk_i),
        .CE(ena_i),
        .D(data_i[5]),
        .Q(din_1[5]),
        .R(rst_i));
  FDRE \din_1_reg[6] 
       (.C(clk_i),
        .CE(ena_i),
        .D(data_i[6]),
        .Q(din_1[6]),
        .R(rst_i));
  FDRE \din_1_reg[7] 
       (.C(clk_i),
        .CE(ena_i),
        .D(data_i[7]),
        .Q(din_1[7]),
        .R(rst_i));
  FDRE \din_1_reg[8] 
       (.C(clk_i),
        .CE(ena_i),
        .D(data_i[8]),
        .Q(din_1[8]),
        .R(rst_i));
  FDRE \din_1_reg[9] 
       (.C(clk_i),
        .CE(ena_i),
        .D(data_i[9]),
        .Q(din_1[9]),
        .R(rst_i));
  FDRE \din_2_reg[0] 
       (.C(clk_i),
        .CE(ena_i),
        .D(din_1[0]),
        .Q(din_2[0]),
        .R(rst_i));
  FDRE \din_2_reg[10] 
       (.C(clk_i),
        .CE(ena_i),
        .D(din_1[10]),
        .Q(din_2[10]),
        .R(rst_i));
  FDRE \din_2_reg[11] 
       (.C(clk_i),
        .CE(ena_i),
        .D(din_1[11]),
        .Q(din_2[11]),
        .R(rst_i));
  FDRE \din_2_reg[1] 
       (.C(clk_i),
        .CE(ena_i),
        .D(din_1[1]),
        .Q(din_2[1]),
        .R(rst_i));
  FDRE \din_2_reg[2] 
       (.C(clk_i),
        .CE(ena_i),
        .D(din_1[2]),
        .Q(din_2[2]),
        .R(rst_i));
  FDRE \din_2_reg[3] 
       (.C(clk_i),
        .CE(ena_i),
        .D(din_1[3]),
        .Q(din_2[3]),
        .R(rst_i));
  FDRE \din_2_reg[4] 
       (.C(clk_i),
        .CE(ena_i),
        .D(din_1[4]),
        .Q(din_2[4]),
        .R(rst_i));
  FDRE \din_2_reg[5] 
       (.C(clk_i),
        .CE(ena_i),
        .D(din_1[5]),
        .Q(din_2[5]),
        .R(rst_i));
  FDRE \din_2_reg[6] 
       (.C(clk_i),
        .CE(ena_i),
        .D(din_1[6]),
        .Q(din_2[6]),
        .R(rst_i));
  FDRE \din_2_reg[7] 
       (.C(clk_i),
        .CE(ena_i),
        .D(din_1[7]),
        .Q(din_2[7]),
        .R(rst_i));
  FDRE \din_2_reg[8] 
       (.C(clk_i),
        .CE(ena_i),
        .D(din_1[8]),
        .Q(din_2[8]),
        .R(rst_i));
  FDRE \din_2_reg[9] 
       (.C(clk_i),
        .CE(ena_i),
        .D(din_1[9]),
        .Q(din_2[9]),
        .R(rst_i));
  LUT3 #(
    .INIT(8'h53)) 
    \doutint[11]_i_2 
       (.I0(din_2[10]),
        .I1(din_1[10]),
        .I2(gtOp),
        .O(p_1_in[10]));
  LUT3 #(
    .INIT(8'h53)) 
    \doutint[11]_i_3 
       (.I0(din_2[9]),
        .I1(din_1[9]),
        .I2(gtOp),
        .O(p_1_in[9]));
  LUT3 #(
    .INIT(8'h53)) 
    \doutint[11]_i_4 
       (.I0(din_2[8]),
        .I1(din_1[8]),
        .I2(gtOp),
        .O(p_1_in[8]));
  LUT2 #(
    .INIT(4'h9)) 
    \doutint[11]_i_5 
       (.I0(din_2[11]),
        .I1(din_1[11]),
        .O(\doutint[11]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \doutint[11]_i_6 
       (.I0(din_2[10]),
        .I1(din_1[10]),
        .O(\doutint[11]_i_6_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \doutint[11]_i_7 
       (.I0(din_2[9]),
        .I1(din_1[9]),
        .O(\doutint[11]_i_7_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \doutint[11]_i_8 
       (.I0(din_2[8]),
        .I1(din_1[8]),
        .O(\doutint[11]_i_8_n_0 ));
  LUT3 #(
    .INIT(8'h53)) 
    \doutint[3]_i_2 
       (.I0(din_2[3]),
        .I1(din_1[3]),
        .I2(gtOp),
        .O(p_1_in[3]));
  LUT3 #(
    .INIT(8'h53)) 
    \doutint[3]_i_3 
       (.I0(din_2[2]),
        .I1(din_1[2]),
        .I2(gtOp),
        .O(p_1_in[2]));
  LUT3 #(
    .INIT(8'h53)) 
    \doutint[3]_i_4 
       (.I0(din_2[1]),
        .I1(din_1[1]),
        .I2(gtOp),
        .O(p_1_in[1]));
  LUT3 #(
    .INIT(8'h53)) 
    \doutint[3]_i_5 
       (.I0(din_2[0]),
        .I1(din_1[0]),
        .I2(gtOp),
        .O(p_1_in[0]));
  LUT2 #(
    .INIT(4'h9)) 
    \doutint[3]_i_6 
       (.I0(din_2[3]),
        .I1(din_1[3]),
        .O(\doutint[3]_i_6_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \doutint[3]_i_7 
       (.I0(din_2[2]),
        .I1(din_1[2]),
        .O(\doutint[3]_i_7_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \doutint[3]_i_8 
       (.I0(din_2[1]),
        .I1(din_1[1]),
        .O(\doutint[3]_i_8_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \doutint[3]_i_9 
       (.I0(din_2[0]),
        .I1(din_1[0]),
        .O(\doutint[3]_i_9_n_0 ));
  LUT3 #(
    .INIT(8'h53)) 
    \doutint[7]_i_2 
       (.I0(din_2[7]),
        .I1(din_1[7]),
        .I2(gtOp),
        .O(p_1_in[7]));
  LUT3 #(
    .INIT(8'h53)) 
    \doutint[7]_i_3 
       (.I0(din_2[6]),
        .I1(din_1[6]),
        .I2(gtOp),
        .O(p_1_in[6]));
  LUT3 #(
    .INIT(8'h53)) 
    \doutint[7]_i_4 
       (.I0(din_2[5]),
        .I1(din_1[5]),
        .I2(gtOp),
        .O(p_1_in[5]));
  LUT3 #(
    .INIT(8'h53)) 
    \doutint[7]_i_5 
       (.I0(din_2[4]),
        .I1(din_1[4]),
        .I2(gtOp),
        .O(p_1_in[4]));
  LUT2 #(
    .INIT(4'h9)) 
    \doutint[7]_i_6 
       (.I0(din_2[7]),
        .I1(din_1[7]),
        .O(\doutint[7]_i_6_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \doutint[7]_i_7 
       (.I0(din_2[6]),
        .I1(din_1[6]),
        .O(\doutint[7]_i_7_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \doutint[7]_i_8 
       (.I0(din_2[5]),
        .I1(din_1[5]),
        .O(\doutint[7]_i_8_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \doutint[7]_i_9 
       (.I0(din_2[4]),
        .I1(din_1[4]),
        .O(\doutint[7]_i_9_n_0 ));
  FDRE \doutint_reg[0] 
       (.C(clk_i),
        .CE(der_sign_i_1_n_0),
        .D(doutint0_in[0]),
        .Q(\^data_o [0]),
        .R(1'b0));
  FDRE \doutint_reg[10] 
       (.C(clk_i),
        .CE(der_sign_i_1_n_0),
        .D(doutint0_in[10]),
        .Q(\^data_o [10]),
        .R(1'b0));
  FDRE \doutint_reg[11] 
       (.C(clk_i),
        .CE(der_sign_i_1_n_0),
        .D(doutint0_in[11]),
        .Q(\^data_o [11]),
        .R(1'b0));
  (* ADDER_THRESHOLD = "35" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY4 \doutint_reg[11]_i_1 
       (.CI(\doutint_reg[7]_i_1_n_0 ),
        .CO({\NLW_doutint_reg[11]_i_1_CO_UNCONNECTED [3],\doutint_reg[11]_i_1_n_1 ,\doutint_reg[11]_i_1_n_2 ,\doutint_reg[11]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,p_1_in[10:8]}),
        .O(doutint0_in[11:8]),
        .S({\doutint[11]_i_5_n_0 ,\doutint[11]_i_6_n_0 ,\doutint[11]_i_7_n_0 ,\doutint[11]_i_8_n_0 }));
  FDRE \doutint_reg[1] 
       (.C(clk_i),
        .CE(der_sign_i_1_n_0),
        .D(doutint0_in[1]),
        .Q(\^data_o [1]),
        .R(1'b0));
  FDRE \doutint_reg[2] 
       (.C(clk_i),
        .CE(der_sign_i_1_n_0),
        .D(doutint0_in[2]),
        .Q(\^data_o [2]),
        .R(1'b0));
  FDRE \doutint_reg[3] 
       (.C(clk_i),
        .CE(der_sign_i_1_n_0),
        .D(doutint0_in[3]),
        .Q(\^data_o [3]),
        .R(1'b0));
  (* ADDER_THRESHOLD = "35" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY4 \doutint_reg[3]_i_1 
       (.CI(1'b0),
        .CO({\doutint_reg[3]_i_1_n_0 ,\doutint_reg[3]_i_1_n_1 ,\doutint_reg[3]_i_1_n_2 ,\doutint_reg[3]_i_1_n_3 }),
        .CYINIT(1'b1),
        .DI(p_1_in[3:0]),
        .O(doutint0_in[3:0]),
        .S({\doutint[3]_i_6_n_0 ,\doutint[3]_i_7_n_0 ,\doutint[3]_i_8_n_0 ,\doutint[3]_i_9_n_0 }));
  FDRE \doutint_reg[4] 
       (.C(clk_i),
        .CE(der_sign_i_1_n_0),
        .D(doutint0_in[4]),
        .Q(\^data_o [4]),
        .R(1'b0));
  FDRE \doutint_reg[5] 
       (.C(clk_i),
        .CE(der_sign_i_1_n_0),
        .D(doutint0_in[5]),
        .Q(\^data_o [5]),
        .R(1'b0));
  FDRE \doutint_reg[6] 
       (.C(clk_i),
        .CE(der_sign_i_1_n_0),
        .D(doutint0_in[6]),
        .Q(\^data_o [6]),
        .R(1'b0));
  FDRE \doutint_reg[7] 
       (.C(clk_i),
        .CE(der_sign_i_1_n_0),
        .D(doutint0_in[7]),
        .Q(\^data_o [7]),
        .R(1'b0));
  (* ADDER_THRESHOLD = "35" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY4 \doutint_reg[7]_i_1 
       (.CI(\doutint_reg[3]_i_1_n_0 ),
        .CO({\doutint_reg[7]_i_1_n_0 ,\doutint_reg[7]_i_1_n_1 ,\doutint_reg[7]_i_1_n_2 ,\doutint_reg[7]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI(p_1_in[7:4]),
        .O(doutint0_in[7:4]),
        .S({\doutint[7]_i_6_n_0 ,\doutint[7]_i_7_n_0 ,\doutint[7]_i_8_n_0 ,\doutint[7]_i_9_n_0 }));
  FDRE \doutint_reg[8] 
       (.C(clk_i),
        .CE(der_sign_i_1_n_0),
        .D(doutint0_in[8]),
        .Q(\^data_o [8]),
        .R(1'b0));
  FDRE \doutint_reg[9] 
       (.C(clk_i),
        .CE(der_sign_i_1_n_0),
        .D(doutint0_in[9]),
        .Q(\^data_o [9]),
        .R(1'b0));
endmodule

(* ORIG_REF_NAME = "output_mux" *) 
module dpp_block_design_DPP_module_top_0_0_0_output_mux
   (op_mode_i,
    fifo_wr_en_i,
    FIR_data_i,
    ADC_data_i,
    FIR_deriv_i,
    fifo_wr_en_o,
    data_o);
  input [1:0]op_mode_i;
  input fifo_wr_en_i;
  input [15:0]FIR_data_i;
  input [11:0]ADC_data_i;
  input [15:0]FIR_deriv_i;
  output fifo_wr_en_o;
  output [15:0]data_o;

  wire [11:0]ADC_data_i;
  wire [15:0]FIR_data_i;
  wire [15:0]FIR_deriv_i;
  wire [15:0]data_o;
  wire fifo_wr_en_i;
  wire fifo_wr_en_o;
  wire [1:0]op_mode_i;

  LUT5 #(
    .INIT(32'hB8B8FF00)) 
    \data_o[0]_INST_0 
       (.I0(FIR_deriv_i[0]),
        .I1(op_mode_i[1]),
        .I2(ADC_data_i[0]),
        .I3(FIR_data_i[0]),
        .I4(op_mode_i[0]),
        .O(data_o[0]));
  LUT5 #(
    .INIT(32'hB8B8FF00)) 
    \data_o[10]_INST_0 
       (.I0(FIR_deriv_i[10]),
        .I1(op_mode_i[1]),
        .I2(ADC_data_i[10]),
        .I3(FIR_data_i[10]),
        .I4(op_mode_i[0]),
        .O(data_o[10]));
  LUT5 #(
    .INIT(32'hB8B8FF00)) 
    \data_o[11]_INST_0 
       (.I0(FIR_deriv_i[11]),
        .I1(op_mode_i[1]),
        .I2(ADC_data_i[11]),
        .I3(FIR_data_i[11]),
        .I4(op_mode_i[0]),
        .O(data_o[11]));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \data_o[12]_INST_0 
       (.I0(FIR_data_i[12]),
        .I1(op_mode_i[0]),
        .O(data_o[12]));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \data_o[13]_INST_0 
       (.I0(FIR_data_i[13]),
        .I1(op_mode_i[0]),
        .O(data_o[13]));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \data_o[14]_INST_0 
       (.I0(FIR_data_i[14]),
        .I1(op_mode_i[0]),
        .O(data_o[14]));
  LUT2 #(
    .INIT(4'h2)) 
    \data_o[15]_INST_0 
       (.I0(FIR_data_i[15]),
        .I1(op_mode_i[0]),
        .O(data_o[15]));
  LUT5 #(
    .INIT(32'hB8B8FF00)) 
    \data_o[1]_INST_0 
       (.I0(FIR_deriv_i[1]),
        .I1(op_mode_i[1]),
        .I2(ADC_data_i[1]),
        .I3(FIR_data_i[1]),
        .I4(op_mode_i[0]),
        .O(data_o[1]));
  LUT5 #(
    .INIT(32'hB8B8FF00)) 
    \data_o[2]_INST_0 
       (.I0(FIR_deriv_i[2]),
        .I1(op_mode_i[1]),
        .I2(ADC_data_i[2]),
        .I3(FIR_data_i[2]),
        .I4(op_mode_i[0]),
        .O(data_o[2]));
  LUT5 #(
    .INIT(32'hB8B8FF00)) 
    \data_o[3]_INST_0 
       (.I0(FIR_deriv_i[3]),
        .I1(op_mode_i[1]),
        .I2(ADC_data_i[3]),
        .I3(FIR_data_i[3]),
        .I4(op_mode_i[0]),
        .O(data_o[3]));
  LUT5 #(
    .INIT(32'hB8B8FF00)) 
    \data_o[4]_INST_0 
       (.I0(FIR_deriv_i[4]),
        .I1(op_mode_i[1]),
        .I2(ADC_data_i[4]),
        .I3(FIR_data_i[4]),
        .I4(op_mode_i[0]),
        .O(data_o[4]));
  LUT5 #(
    .INIT(32'hB8B8FF00)) 
    \data_o[5]_INST_0 
       (.I0(FIR_deriv_i[5]),
        .I1(op_mode_i[1]),
        .I2(ADC_data_i[5]),
        .I3(FIR_data_i[5]),
        .I4(op_mode_i[0]),
        .O(data_o[5]));
  LUT5 #(
    .INIT(32'hB8B8FF00)) 
    \data_o[6]_INST_0 
       (.I0(FIR_deriv_i[6]),
        .I1(op_mode_i[1]),
        .I2(ADC_data_i[6]),
        .I3(FIR_data_i[6]),
        .I4(op_mode_i[0]),
        .O(data_o[6]));
  LUT5 #(
    .INIT(32'hB8B8FF00)) 
    \data_o[7]_INST_0 
       (.I0(FIR_deriv_i[7]),
        .I1(op_mode_i[1]),
        .I2(ADC_data_i[7]),
        .I3(FIR_data_i[7]),
        .I4(op_mode_i[0]),
        .O(data_o[7]));
  LUT5 #(
    .INIT(32'hB8B8FF00)) 
    \data_o[8]_INST_0 
       (.I0(FIR_deriv_i[8]),
        .I1(op_mode_i[1]),
        .I2(ADC_data_i[8]),
        .I3(FIR_data_i[8]),
        .I4(op_mode_i[0]),
        .O(data_o[8]));
  LUT5 #(
    .INIT(32'hB8B8FF00)) 
    \data_o[9]_INST_0 
       (.I0(FIR_deriv_i[9]),
        .I1(op_mode_i[1]),
        .I2(ADC_data_i[9]),
        .I3(FIR_data_i[9]),
        .I4(op_mode_i[0]),
        .O(data_o[9]));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT3 #(
    .INIT(8'hFE)) 
    fifo_wr_en_o_INST_0
       (.I0(op_mode_i[1]),
        .I1(op_mode_i[0]),
        .I2(fifo_wr_en_i),
        .O(fifo_wr_en_o));
endmodule
`ifndef GLBL
`define GLBL
`timescale  1 ps / 1 ps

module glbl ();

    parameter ROC_WIDTH = 100000;
    parameter TOC_WIDTH = 0;
    parameter GRES_WIDTH = 10000;
    parameter GRES_START = 10000;

//--------   STARTUP Globals --------------
    wire GSR;
    wire GTS;
    wire GWE;
    wire PRLD;
    wire GRESTORE;
    tri1 p_up_tmp;
    tri (weak1, strong0) PLL_LOCKG = p_up_tmp;

    wire PROGB_GLBL;
    wire CCLKO_GLBL;
    wire FCSBO_GLBL;
    wire [3:0] DO_GLBL;
    wire [3:0] DI_GLBL;
   
    reg GSR_int;
    reg GTS_int;
    reg PRLD_int;
    reg GRESTORE_int;

//--------   JTAG Globals --------------
    wire JTAG_TDO_GLBL;
    wire JTAG_TCK_GLBL;
    wire JTAG_TDI_GLBL;
    wire JTAG_TMS_GLBL;
    wire JTAG_TRST_GLBL;

    reg JTAG_CAPTURE_GLBL;
    reg JTAG_RESET_GLBL;
    reg JTAG_SHIFT_GLBL;
    reg JTAG_UPDATE_GLBL;
    reg JTAG_RUNTEST_GLBL;

    reg JTAG_SEL1_GLBL = 0;
    reg JTAG_SEL2_GLBL = 0 ;
    reg JTAG_SEL3_GLBL = 0;
    reg JTAG_SEL4_GLBL = 0;

    reg JTAG_USER_TDO1_GLBL = 1'bz;
    reg JTAG_USER_TDO2_GLBL = 1'bz;
    reg JTAG_USER_TDO3_GLBL = 1'bz;
    reg JTAG_USER_TDO4_GLBL = 1'bz;

    assign (strong1, weak0) GSR = GSR_int;
    assign (strong1, weak0) GTS = GTS_int;
    assign (weak1, weak0) PRLD = PRLD_int;
    assign (strong1, weak0) GRESTORE = GRESTORE_int;

    initial begin
	GSR_int = 1'b1;
	PRLD_int = 1'b1;
	#(ROC_WIDTH)
	GSR_int = 1'b0;
	PRLD_int = 1'b0;
    end

    initial begin
	GTS_int = 1'b1;
	#(TOC_WIDTH)
	GTS_int = 1'b0;
    end

    initial begin 
	GRESTORE_int = 1'b0;
	#(GRES_START);
	GRESTORE_int = 1'b1;
	#(GRES_WIDTH);
	GRESTORE_int = 1'b0;
    end

endmodule
`endif
