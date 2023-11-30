// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2022.2 (lin64) Build 3671981 Fri Oct 14 04:59:54 MDT 2022
// Date        : Thu Nov 30 17:23:46 2023
// Host        : node07 running 64-bit CentOS Linux release 7.4.1708 (Core)
// Command     : write_verilog -force -mode funcsim
//               /home/argo49/smr3891/labs/project2_xrf/project2_xrf.gen/sources_1/bd/xrf_dpp/ip/xrf_dpp_DPP_module_FIR_0_0/xrf_dpp_DPP_module_FIR_0_0_sim_netlist.v
// Design      : xrf_dpp_DPP_module_FIR_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z020clg484-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "xrf_dpp_DPP_module_FIR_0_0,DPP_module_FIR,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* ip_definition_source = "module_ref" *) 
(* x_core_info = "DPP_module_FIR,Vivado 2022.2" *) 
(* NotValidForBitStream *)
module xrf_dpp_DPP_module_FIR_0_0
   (clk_i,
    rst_i,
    ena_i,
    ADC_data_i,
    valid_i,
    read_ena_o,
    cf_1_i,
    cf_2_i,
    cf_3_i,
    det_threshold_high_i,
    det_threshold_low_i,
    op_mode_i,
    data_o,
    fifo_wr_en_mux_out);
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

  wire [15:0]ADC_data_i;
  wire [4:0]cf_1_i;
  wire [4:0]cf_2_i;
  wire [4:0]cf_3_i;
  wire clk_i;
  wire [15:0]data_o;
  wire [15:0]det_threshold_high_i;
  wire [15:0]det_threshold_low_i;
  wire ena_i;
  wire fifo_wr_en_mux_out;
  wire [1:0]op_mode_i;
  wire read_ena_o;
  wire rst_i;
  wire valid_i;

  (* KEEP_HIERARCHY = "soft" *) 
  (* TAP_N = "23" *) 
  xrf_dpp_DPP_module_FIR_0_0_DPP_module_FIR U0
       (.ADC_data_i(ADC_data_i),
        .cf_1_i(cf_1_i),
        .cf_2_i(cf_2_i),
        .cf_3_i(cf_3_i),
        .clk_i(clk_i),
        .data_o(data_o),
        .det_threshold_high_i(det_threshold_high_i),
        .det_threshold_low_i(det_threshold_low_i),
        .ena_i(ena_i),
        .fifo_wr_en_mux_out(fifo_wr_en_mux_out),
        .op_mode_i(op_mode_i),
        .read_ena_o(read_ena_o),
        .rst_i(rst_i),
        .valid_i(valid_i));
endmodule

(* ORIG_REF_NAME = "DPP_module_FIR" *) (* TAP_N = "23" *) (* keep_hierarchy = "soft" *) 
module xrf_dpp_DPP_module_FIR_0_0_DPP_module_FIR
   (clk_i,
    rst_i,
    ena_i,
    ADC_data_i,
    valid_i,
    read_ena_o,
    cf_1_i,
    cf_2_i,
    cf_3_i,
    det_threshold_high_i,
    det_threshold_low_i,
    op_mode_i,
    data_o,
    fifo_wr_en_mux_out);
  input clk_i;
  input rst_i;
  (* mark_debug = "true" *) input ena_i;
  input [15:0]ADC_data_i;
  (* mark_debug = "true" *) input valid_i;
  output read_ena_o;
  input [4:0]cf_1_i;
  input [4:0]cf_2_i;
  input [4:0]cf_3_i;
  input [15:0]det_threshold_high_i;
  input [15:0]det_threshold_low_i;
  input [1:0]op_mode_i;
  (* mark_debug = "true" *) output [15:0]data_o;
  (* mark_debug = "true" *) output fifo_wr_en_mux_out;

  wire [15:0]ADC_data_i;
  wire [4:0]cf_1_i;
  wire [4:0]cf_2_i;
  wire [4:0]cf_3_i;
  wire clk_i;
  wire [15:0]data_from_amplitude;
  wire [15:0]data_from_derivative;
  (* MARK_DEBUG *) wire [15:0]data_o;
  wire [15:0]det_threshold_high_i;
  wire [15:0]det_threshold_low_i;
  (* MARK_DEBUG *) wire ena_i;
  (* MARK_DEBUG *) wire fifo_wr_en_mux_out;
  wire fir_derivative_n_18;
  wire fir_derivative_n_19;
  wire fir_derivative_n_20;
  wire fir_derivative_n_21;
  wire fir_derivative_n_22;
  wire fir_derivative_n_23;
  wire fir_derivative_n_24;
  wire fir_derivative_n_25;
  wire fir_derivative_n_26;
  wire fir_derivative_n_27;
  wire fir_derivative_n_28;
  wire fir_derivative_n_29;
  wire fir_derivative_n_30;
  wire fir_derivative_n_31;
  wire fir_derivative_n_32;
  wire fir_derivative_n_33;
  wire n_valid_der;
  wire [1:0]next_state;
  wire [1:0]op_mode_i;
  wire pulse_detection;
  wire rst_i;
  (* MARK_DEBUG *) wire [1:0]state;
  wire [20:20]valid_delayed;
  wire \valid_delayed[20]_i_1_n_0 ;
  wire [19:0]valid_delayed__0;
  wire valid_ena;
  (* MARK_DEBUG *) wire valid_i;
  wire NLW_edge_detector_rejection_flag_o_UNCONNECTED;

  assign read_ena_o = ena_i;
  (* XILINX_LEGACY_PRIM = "LD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:GE GND:CLR" *) 
  LDCE #(
    .INIT(1'b0)) 
    \data_muxed_out_reg[0] 
       (.CLR(1'b0),
        .D(fir_derivative_n_33),
        .G(state[1]),
        .GE(1'b1),
        .Q(data_o[0]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:GE GND:CLR" *) 
  LDCE #(
    .INIT(1'b0)) 
    \data_muxed_out_reg[10] 
       (.CLR(1'b0),
        .D(fir_derivative_n_23),
        .G(state[1]),
        .GE(1'b1),
        .Q(data_o[10]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:GE GND:CLR" *) 
  LDCE #(
    .INIT(1'b0)) 
    \data_muxed_out_reg[11] 
       (.CLR(1'b0),
        .D(fir_derivative_n_22),
        .G(state[1]),
        .GE(1'b1),
        .Q(data_o[11]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:GE GND:CLR" *) 
  LDCE #(
    .INIT(1'b0)) 
    \data_muxed_out_reg[12] 
       (.CLR(1'b0),
        .D(fir_derivative_n_21),
        .G(state[1]),
        .GE(1'b1),
        .Q(data_o[12]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:GE GND:CLR" *) 
  LDCE #(
    .INIT(1'b0)) 
    \data_muxed_out_reg[13] 
       (.CLR(1'b0),
        .D(fir_derivative_n_20),
        .G(state[1]),
        .GE(1'b1),
        .Q(data_o[13]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:GE GND:CLR" *) 
  LDCE #(
    .INIT(1'b0)) 
    \data_muxed_out_reg[14] 
       (.CLR(1'b0),
        .D(fir_derivative_n_19),
        .G(state[1]),
        .GE(1'b1),
        .Q(data_o[14]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:GE GND:CLR" *) 
  LDCE #(
    .INIT(1'b0)) 
    \data_muxed_out_reg[15] 
       (.CLR(1'b0),
        .D(fir_derivative_n_18),
        .G(state[1]),
        .GE(1'b1),
        .Q(data_o[15]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:GE GND:CLR" *) 
  LDCE #(
    .INIT(1'b0)) 
    \data_muxed_out_reg[1] 
       (.CLR(1'b0),
        .D(fir_derivative_n_32),
        .G(state[1]),
        .GE(1'b1),
        .Q(data_o[1]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:GE GND:CLR" *) 
  LDCE #(
    .INIT(1'b0)) 
    \data_muxed_out_reg[2] 
       (.CLR(1'b0),
        .D(fir_derivative_n_31),
        .G(state[1]),
        .GE(1'b1),
        .Q(data_o[2]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:GE GND:CLR" *) 
  LDCE #(
    .INIT(1'b0)) 
    \data_muxed_out_reg[3] 
       (.CLR(1'b0),
        .D(fir_derivative_n_30),
        .G(state[1]),
        .GE(1'b1),
        .Q(data_o[3]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:GE GND:CLR" *) 
  LDCE #(
    .INIT(1'b0)) 
    \data_muxed_out_reg[4] 
       (.CLR(1'b0),
        .D(fir_derivative_n_29),
        .G(state[1]),
        .GE(1'b1),
        .Q(data_o[4]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:GE GND:CLR" *) 
  LDCE #(
    .INIT(1'b0)) 
    \data_muxed_out_reg[5] 
       (.CLR(1'b0),
        .D(fir_derivative_n_28),
        .G(state[1]),
        .GE(1'b1),
        .Q(data_o[5]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:GE GND:CLR" *) 
  LDCE #(
    .INIT(1'b0)) 
    \data_muxed_out_reg[6] 
       (.CLR(1'b0),
        .D(fir_derivative_n_27),
        .G(state[1]),
        .GE(1'b1),
        .Q(data_o[6]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:GE GND:CLR" *) 
  LDCE #(
    .INIT(1'b0)) 
    \data_muxed_out_reg[7] 
       (.CLR(1'b0),
        .D(fir_derivative_n_26),
        .G(state[1]),
        .GE(1'b1),
        .Q(data_o[7]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:GE GND:CLR" *) 
  LDCE #(
    .INIT(1'b0)) 
    \data_muxed_out_reg[8] 
       (.CLR(1'b0),
        .D(fir_derivative_n_25),
        .G(state[1]),
        .GE(1'b1),
        .Q(data_o[8]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:GE GND:CLR" *) 
  LDCE #(
    .INIT(1'b0)) 
    \data_muxed_out_reg[9] 
       (.CLR(1'b0),
        .D(fir_derivative_n_24),
        .G(state[1]),
        .GE(1'b1),
        .Q(data_o[9]));
  xrf_dpp_DPP_module_FIR_0_0_long_FIR_DPP do_long_FIR
       (.ADC_data_i(ADC_data_i),
        .\FSM_sequential_state_r_reg[0]_0 (valid_i),
        .clk_i(clk_i),
        .m_axis_data_tdata(data_from_amplitude),
        .out(ena_i),
        .rst_i(rst_i));
  (* KEEP_HIERARCHY = "soft" *) 
  xrf_dpp_DPP_module_FIR_0_0_edge_detector_1 edge_detector
       (.arrival_flag_o(pulse_detection),
        .clk_i(clk_i),
        .data_i(data_from_derivative),
        .det_threshold_high_i(det_threshold_high_i),
        .det_threshold_low_i(det_threshold_low_i),
        .ena_i(n_valid_der),
        .rejection_flag_o(NLW_edge_detector_rejection_flag_o_UNCONNECTED),
        .rst_i(rst_i));
  LUT5 #(
    .INIT(32'h11510000)) 
    fifo_wr_en_mux_out_inferred_i_1
       (.I0(state[0]),
        .I1(op_mode_i[0]),
        .I2(valid_delayed),
        .I3(op_mode_i[1]),
        .I4(state[1]),
        .O(fifo_wr_en_mux_out));
  xrf_dpp_DPP_module_FIR_0_0_fir_derivative_1 fir_derivative
       (.ADC_data_i(ADC_data_i),
        .D({fir_derivative_n_18,fir_derivative_n_19,fir_derivative_n_20,fir_derivative_n_21,fir_derivative_n_22,fir_derivative_n_23,fir_derivative_n_24,fir_derivative_n_25,fir_derivative_n_26,fir_derivative_n_27,fir_derivative_n_28,fir_derivative_n_29,fir_derivative_n_30,fir_derivative_n_31,fir_derivative_n_32,fir_derivative_n_33}),
        .Q(data_from_derivative),
        .cf_1_i(cf_1_i),
        .cf_2_i(cf_2_i),
        .cf_3_i(cf_3_i),
        .clk_i(clk_i),
        .d6_reg_0(ena_i),
        .\data_o[0] (state[0]),
        .ena_i(n_valid_der),
        .m_axis_data_tdata(data_from_amplitude),
        .op_mode_i(op_mode_i),
        .out(valid_i),
        .rst_i(rst_i),
        .valid_ena(valid_ena));
  LUT2 #(
    .INIT(4'h1)) 
    \state[0]_i_1 
       (.I0(state[0]),
        .I1(state[1]),
        .O(next_state[0]));
  LUT2 #(
    .INIT(4'h6)) 
    \state[1]_i_1 
       (.I0(state[0]),
        .I1(state[1]),
        .O(next_state[1]));
  (* KEEP = "yes" *) 
  (* mark_debug = "true" *) 
  FDSE #(
    .INIT(1'b1)) 
    \state_reg[0] 
       (.C(clk_i),
        .CE(valid_ena),
        .D(next_state[0]),
        .Q(state[0]),
        .S(rst_i));
  (* KEEP = "yes" *) 
  (* mark_debug = "true" *) 
  FDRE #(
    .INIT(1'b0)) 
    \state_reg[1] 
       (.C(clk_i),
        .CE(valid_ena),
        .D(next_state[1]),
        .Q(state[1]),
        .R(rst_i));
  LUT2 #(
    .INIT(4'h2)) 
    \valid_delayed[20]_i_1 
       (.I0(state[1]),
        .I1(state[0]),
        .O(\valid_delayed[20]_i_1_n_0 ));
  FDRE \valid_delayed_reg[0] 
       (.C(clk_i),
        .CE(\valid_delayed[20]_i_1_n_0 ),
        .D(pulse_detection),
        .Q(valid_delayed__0[0]),
        .R(rst_i));
  FDRE \valid_delayed_reg[10] 
       (.C(clk_i),
        .CE(\valid_delayed[20]_i_1_n_0 ),
        .D(valid_delayed__0[9]),
        .Q(valid_delayed__0[10]),
        .R(rst_i));
  FDRE \valid_delayed_reg[11] 
       (.C(clk_i),
        .CE(\valid_delayed[20]_i_1_n_0 ),
        .D(valid_delayed__0[10]),
        .Q(valid_delayed__0[11]),
        .R(rst_i));
  FDRE \valid_delayed_reg[12] 
       (.C(clk_i),
        .CE(\valid_delayed[20]_i_1_n_0 ),
        .D(valid_delayed__0[11]),
        .Q(valid_delayed__0[12]),
        .R(rst_i));
  FDRE \valid_delayed_reg[13] 
       (.C(clk_i),
        .CE(\valid_delayed[20]_i_1_n_0 ),
        .D(valid_delayed__0[12]),
        .Q(valid_delayed__0[13]),
        .R(rst_i));
  FDRE \valid_delayed_reg[14] 
       (.C(clk_i),
        .CE(\valid_delayed[20]_i_1_n_0 ),
        .D(valid_delayed__0[13]),
        .Q(valid_delayed__0[14]),
        .R(rst_i));
  FDRE \valid_delayed_reg[15] 
       (.C(clk_i),
        .CE(\valid_delayed[20]_i_1_n_0 ),
        .D(valid_delayed__0[14]),
        .Q(valid_delayed__0[15]),
        .R(rst_i));
  FDRE \valid_delayed_reg[16] 
       (.C(clk_i),
        .CE(\valid_delayed[20]_i_1_n_0 ),
        .D(valid_delayed__0[15]),
        .Q(valid_delayed__0[16]),
        .R(rst_i));
  FDRE \valid_delayed_reg[17] 
       (.C(clk_i),
        .CE(\valid_delayed[20]_i_1_n_0 ),
        .D(valid_delayed__0[16]),
        .Q(valid_delayed__0[17]),
        .R(rst_i));
  FDRE \valid_delayed_reg[18] 
       (.C(clk_i),
        .CE(\valid_delayed[20]_i_1_n_0 ),
        .D(valid_delayed__0[17]),
        .Q(valid_delayed__0[18]),
        .R(rst_i));
  FDRE \valid_delayed_reg[19] 
       (.C(clk_i),
        .CE(\valid_delayed[20]_i_1_n_0 ),
        .D(valid_delayed__0[18]),
        .Q(valid_delayed__0[19]),
        .R(rst_i));
  FDRE \valid_delayed_reg[1] 
       (.C(clk_i),
        .CE(\valid_delayed[20]_i_1_n_0 ),
        .D(valid_delayed__0[0]),
        .Q(valid_delayed__0[1]),
        .R(rst_i));
  FDRE \valid_delayed_reg[20] 
       (.C(clk_i),
        .CE(\valid_delayed[20]_i_1_n_0 ),
        .D(valid_delayed__0[19]),
        .Q(valid_delayed),
        .R(rst_i));
  FDRE \valid_delayed_reg[2] 
       (.C(clk_i),
        .CE(\valid_delayed[20]_i_1_n_0 ),
        .D(valid_delayed__0[1]),
        .Q(valid_delayed__0[2]),
        .R(rst_i));
  FDRE \valid_delayed_reg[3] 
       (.C(clk_i),
        .CE(\valid_delayed[20]_i_1_n_0 ),
        .D(valid_delayed__0[2]),
        .Q(valid_delayed__0[3]),
        .R(rst_i));
  FDRE \valid_delayed_reg[4] 
       (.C(clk_i),
        .CE(\valid_delayed[20]_i_1_n_0 ),
        .D(valid_delayed__0[3]),
        .Q(valid_delayed__0[4]),
        .R(rst_i));
  FDRE \valid_delayed_reg[5] 
       (.C(clk_i),
        .CE(\valid_delayed[20]_i_1_n_0 ),
        .D(valid_delayed__0[4]),
        .Q(valid_delayed__0[5]),
        .R(rst_i));
  FDRE \valid_delayed_reg[6] 
       (.C(clk_i),
        .CE(\valid_delayed[20]_i_1_n_0 ),
        .D(valid_delayed__0[5]),
        .Q(valid_delayed__0[6]),
        .R(rst_i));
  FDRE \valid_delayed_reg[7] 
       (.C(clk_i),
        .CE(\valid_delayed[20]_i_1_n_0 ),
        .D(valid_delayed__0[6]),
        .Q(valid_delayed__0[7]),
        .R(rst_i));
  FDRE \valid_delayed_reg[8] 
       (.C(clk_i),
        .CE(\valid_delayed[20]_i_1_n_0 ),
        .D(valid_delayed__0[7]),
        .Q(valid_delayed__0[8]),
        .R(rst_i));
  FDRE \valid_delayed_reg[9] 
       (.C(clk_i),
        .CE(\valid_delayed[20]_i_1_n_0 ),
        .D(valid_delayed__0[8]),
        .Q(valid_delayed__0[9]),
        .R(rst_i));
endmodule

(* ORIG_REF_NAME = "edge_detector_1" *) (* keep_hierarchy = "soft" *) 
module xrf_dpp_DPP_module_FIR_0_0_edge_detector_1
   (clk_i,
    rst_i,
    ena_i,
    data_i,
    det_threshold_high_i,
    det_threshold_low_i,
    arrival_flag_o,
    rejection_flag_o);
  input clk_i;
  input rst_i;
  input ena_i;
  (* mark_debug = "true" *) input [15:0]data_i;
  input [15:0]det_threshold_high_i;
  input [15:0]det_threshold_low_i;
  output arrival_flag_o;
  output rejection_flag_o;

  wire \<const0> ;
  wire \FSM_sequential_state[0]_i_1_n_0 ;
  wire \FSM_sequential_state[1]_i_10_n_0 ;
  wire \FSM_sequential_state[1]_i_11_n_0 ;
  wire \FSM_sequential_state[1]_i_12_n_0 ;
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
  wire \FSM_sequential_state[1]_i_36_n_0 ;
  wire \FSM_sequential_state[1]_i_37_n_0 ;
  wire \FSM_sequential_state[1]_i_5_n_0 ;
  wire \FSM_sequential_state[1]_i_6_n_0 ;
  wire \FSM_sequential_state[1]_i_7_n_0 ;
  wire \FSM_sequential_state[1]_i_8_n_0 ;
  wire \FSM_sequential_state[1]_i_9_n_0 ;
  wire \FSM_sequential_state_reg[1]_i_13_n_0 ;
  wire \FSM_sequential_state_reg[1]_i_13_n_1 ;
  wire \FSM_sequential_state_reg[1]_i_13_n_2 ;
  wire \FSM_sequential_state_reg[1]_i_13_n_3 ;
  wire \FSM_sequential_state_reg[1]_i_2_n_0 ;
  wire \FSM_sequential_state_reg[1]_i_2_n_1 ;
  wire \FSM_sequential_state_reg[1]_i_2_n_2 ;
  wire \FSM_sequential_state_reg[1]_i_2_n_3 ;
  wire \FSM_sequential_state_reg[1]_i_3_n_0 ;
  wire \FSM_sequential_state_reg[1]_i_3_n_1 ;
  wire \FSM_sequential_state_reg[1]_i_3_n_2 ;
  wire \FSM_sequential_state_reg[1]_i_3_n_3 ;
  wire \FSM_sequential_state_reg[1]_i_4_n_0 ;
  wire \FSM_sequential_state_reg[1]_i_4_n_1 ;
  wire \FSM_sequential_state_reg[1]_i_4_n_2 ;
  wire \FSM_sequential_state_reg[1]_i_4_n_3 ;
  wire \FSM_sequential_state_reg_n_0_[1] ;
  wire arrival_flag_o;
  wire clk_i;
  (* MARK_DEBUG *) wire [15:0]data_i;
  wire [15:0]det_threshold_high_i;
  wire [15:0]det_threshold_low_i;
  wire ena_i;
  wire rst_i;
  wire [0:0]state;
  wire [3:0]\NLW_FSM_sequential_state_reg[1]_i_13_O_UNCONNECTED ;
  wire [3:0]\NLW_FSM_sequential_state_reg[1]_i_2_O_UNCONNECTED ;
  wire [3:0]\NLW_FSM_sequential_state_reg[1]_i_3_O_UNCONNECTED ;
  wire [3:0]\NLW_FSM_sequential_state_reg[1]_i_4_O_UNCONNECTED ;

  assign rejection_flag_o = \<const0> ;
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT4 #(
    .INIT(16'hBFF0)) 
    \FSM_sequential_state[0]_i_1 
       (.I0(\FSM_sequential_state_reg_n_0_[1] ),
        .I1(\FSM_sequential_state_reg[1]_i_3_n_0 ),
        .I2(ena_i),
        .I3(state),
        .O(\FSM_sequential_state[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'h77FFC000)) 
    \FSM_sequential_state[1]_i_1 
       (.I0(\FSM_sequential_state_reg[1]_i_2_n_0 ),
        .I1(state),
        .I2(\FSM_sequential_state_reg[1]_i_3_n_0 ),
        .I3(ena_i),
        .I4(\FSM_sequential_state_reg_n_0_[1] ),
        .O(\FSM_sequential_state[1]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h9009)) 
    \FSM_sequential_state[1]_i_10 
       (.I0(det_threshold_low_i[12]),
        .I1(data_i[12]),
        .I2(det_threshold_low_i[13]),
        .I3(data_i[13]),
        .O(\FSM_sequential_state[1]_i_10_n_0 ));
  LUT4 #(
    .INIT(16'h9009)) 
    \FSM_sequential_state[1]_i_11 
       (.I0(det_threshold_low_i[10]),
        .I1(data_i[10]),
        .I2(det_threshold_low_i[11]),
        .I3(data_i[11]),
        .O(\FSM_sequential_state[1]_i_11_n_0 ));
  LUT4 #(
    .INIT(16'h9009)) 
    \FSM_sequential_state[1]_i_12 
       (.I0(det_threshold_low_i[8]),
        .I1(data_i[8]),
        .I2(det_threshold_low_i[9]),
        .I3(data_i[9]),
        .O(\FSM_sequential_state[1]_i_12_n_0 ));
  LUT4 #(
    .INIT(16'h2F02)) 
    \FSM_sequential_state[1]_i_14 
       (.I0(data_i[14]),
        .I1(det_threshold_high_i[14]),
        .I2(det_threshold_high_i[15]),
        .I3(data_i[15]),
        .O(\FSM_sequential_state[1]_i_14_n_0 ));
  LUT4 #(
    .INIT(16'h2F02)) 
    \FSM_sequential_state[1]_i_15 
       (.I0(data_i[12]),
        .I1(det_threshold_high_i[12]),
        .I2(det_threshold_high_i[13]),
        .I3(data_i[13]),
        .O(\FSM_sequential_state[1]_i_15_n_0 ));
  LUT4 #(
    .INIT(16'h2F02)) 
    \FSM_sequential_state[1]_i_16 
       (.I0(data_i[10]),
        .I1(det_threshold_high_i[10]),
        .I2(det_threshold_high_i[11]),
        .I3(data_i[11]),
        .O(\FSM_sequential_state[1]_i_16_n_0 ));
  LUT4 #(
    .INIT(16'h2F02)) 
    \FSM_sequential_state[1]_i_17 
       (.I0(data_i[8]),
        .I1(det_threshold_high_i[8]),
        .I2(det_threshold_high_i[9]),
        .I3(data_i[9]),
        .O(\FSM_sequential_state[1]_i_17_n_0 ));
  LUT4 #(
    .INIT(16'h9009)) 
    \FSM_sequential_state[1]_i_18 
       (.I0(data_i[14]),
        .I1(det_threshold_high_i[14]),
        .I2(data_i[15]),
        .I3(det_threshold_high_i[15]),
        .O(\FSM_sequential_state[1]_i_18_n_0 ));
  LUT4 #(
    .INIT(16'h9009)) 
    \FSM_sequential_state[1]_i_19 
       (.I0(data_i[12]),
        .I1(det_threshold_high_i[12]),
        .I2(data_i[13]),
        .I3(det_threshold_high_i[13]),
        .O(\FSM_sequential_state[1]_i_19_n_0 ));
  LUT4 #(
    .INIT(16'h9009)) 
    \FSM_sequential_state[1]_i_20 
       (.I0(data_i[10]),
        .I1(det_threshold_high_i[10]),
        .I2(data_i[11]),
        .I3(det_threshold_high_i[11]),
        .O(\FSM_sequential_state[1]_i_20_n_0 ));
  LUT4 #(
    .INIT(16'h9009)) 
    \FSM_sequential_state[1]_i_21 
       (.I0(data_i[8]),
        .I1(det_threshold_high_i[8]),
        .I2(data_i[9]),
        .I3(det_threshold_high_i[9]),
        .O(\FSM_sequential_state[1]_i_21_n_0 ));
  LUT4 #(
    .INIT(16'h2F02)) 
    \FSM_sequential_state[1]_i_22 
       (.I0(det_threshold_low_i[6]),
        .I1(data_i[6]),
        .I2(data_i[7]),
        .I3(det_threshold_low_i[7]),
        .O(\FSM_sequential_state[1]_i_22_n_0 ));
  LUT4 #(
    .INIT(16'h2F02)) 
    \FSM_sequential_state[1]_i_23 
       (.I0(det_threshold_low_i[4]),
        .I1(data_i[4]),
        .I2(data_i[5]),
        .I3(det_threshold_low_i[5]),
        .O(\FSM_sequential_state[1]_i_23_n_0 ));
  LUT4 #(
    .INIT(16'h2F02)) 
    \FSM_sequential_state[1]_i_24 
       (.I0(det_threshold_low_i[2]),
        .I1(data_i[2]),
        .I2(data_i[3]),
        .I3(det_threshold_low_i[3]),
        .O(\FSM_sequential_state[1]_i_24_n_0 ));
  LUT4 #(
    .INIT(16'h2F02)) 
    \FSM_sequential_state[1]_i_25 
       (.I0(det_threshold_low_i[0]),
        .I1(data_i[0]),
        .I2(data_i[1]),
        .I3(det_threshold_low_i[1]),
        .O(\FSM_sequential_state[1]_i_25_n_0 ));
  LUT4 #(
    .INIT(16'h9009)) 
    \FSM_sequential_state[1]_i_26 
       (.I0(det_threshold_low_i[6]),
        .I1(data_i[6]),
        .I2(det_threshold_low_i[7]),
        .I3(data_i[7]),
        .O(\FSM_sequential_state[1]_i_26_n_0 ));
  LUT4 #(
    .INIT(16'h9009)) 
    \FSM_sequential_state[1]_i_27 
       (.I0(det_threshold_low_i[4]),
        .I1(data_i[4]),
        .I2(det_threshold_low_i[5]),
        .I3(data_i[5]),
        .O(\FSM_sequential_state[1]_i_27_n_0 ));
  LUT4 #(
    .INIT(16'h9009)) 
    \FSM_sequential_state[1]_i_28 
       (.I0(det_threshold_low_i[2]),
        .I1(data_i[2]),
        .I2(det_threshold_low_i[3]),
        .I3(data_i[3]),
        .O(\FSM_sequential_state[1]_i_28_n_0 ));
  LUT4 #(
    .INIT(16'h9009)) 
    \FSM_sequential_state[1]_i_29 
       (.I0(det_threshold_low_i[0]),
        .I1(data_i[0]),
        .I2(det_threshold_low_i[1]),
        .I3(data_i[1]),
        .O(\FSM_sequential_state[1]_i_29_n_0 ));
  LUT4 #(
    .INIT(16'h2F02)) 
    \FSM_sequential_state[1]_i_30 
       (.I0(data_i[6]),
        .I1(det_threshold_high_i[6]),
        .I2(det_threshold_high_i[7]),
        .I3(data_i[7]),
        .O(\FSM_sequential_state[1]_i_30_n_0 ));
  LUT4 #(
    .INIT(16'h2F02)) 
    \FSM_sequential_state[1]_i_31 
       (.I0(data_i[4]),
        .I1(det_threshold_high_i[4]),
        .I2(det_threshold_high_i[5]),
        .I3(data_i[5]),
        .O(\FSM_sequential_state[1]_i_31_n_0 ));
  LUT4 #(
    .INIT(16'h2F02)) 
    \FSM_sequential_state[1]_i_32 
       (.I0(data_i[2]),
        .I1(det_threshold_high_i[2]),
        .I2(det_threshold_high_i[3]),
        .I3(data_i[3]),
        .O(\FSM_sequential_state[1]_i_32_n_0 ));
  LUT4 #(
    .INIT(16'h2F02)) 
    \FSM_sequential_state[1]_i_33 
       (.I0(data_i[0]),
        .I1(det_threshold_high_i[0]),
        .I2(det_threshold_high_i[1]),
        .I3(data_i[1]),
        .O(\FSM_sequential_state[1]_i_33_n_0 ));
  LUT4 #(
    .INIT(16'h9009)) 
    \FSM_sequential_state[1]_i_34 
       (.I0(data_i[6]),
        .I1(det_threshold_high_i[6]),
        .I2(data_i[7]),
        .I3(det_threshold_high_i[7]),
        .O(\FSM_sequential_state[1]_i_34_n_0 ));
  LUT4 #(
    .INIT(16'h9009)) 
    \FSM_sequential_state[1]_i_35 
       (.I0(data_i[4]),
        .I1(det_threshold_high_i[4]),
        .I2(data_i[5]),
        .I3(det_threshold_high_i[5]),
        .O(\FSM_sequential_state[1]_i_35_n_0 ));
  LUT4 #(
    .INIT(16'h9009)) 
    \FSM_sequential_state[1]_i_36 
       (.I0(data_i[2]),
        .I1(det_threshold_high_i[2]),
        .I2(data_i[3]),
        .I3(det_threshold_high_i[3]),
        .O(\FSM_sequential_state[1]_i_36_n_0 ));
  LUT4 #(
    .INIT(16'h9009)) 
    \FSM_sequential_state[1]_i_37 
       (.I0(data_i[0]),
        .I1(det_threshold_high_i[0]),
        .I2(data_i[1]),
        .I3(det_threshold_high_i[1]),
        .O(\FSM_sequential_state[1]_i_37_n_0 ));
  LUT4 #(
    .INIT(16'h2F02)) 
    \FSM_sequential_state[1]_i_5 
       (.I0(det_threshold_low_i[14]),
        .I1(data_i[14]),
        .I2(data_i[15]),
        .I3(det_threshold_low_i[15]),
        .O(\FSM_sequential_state[1]_i_5_n_0 ));
  LUT4 #(
    .INIT(16'h2F02)) 
    \FSM_sequential_state[1]_i_6 
       (.I0(det_threshold_low_i[12]),
        .I1(data_i[12]),
        .I2(data_i[13]),
        .I3(det_threshold_low_i[13]),
        .O(\FSM_sequential_state[1]_i_6_n_0 ));
  LUT4 #(
    .INIT(16'h2F02)) 
    \FSM_sequential_state[1]_i_7 
       (.I0(det_threshold_low_i[10]),
        .I1(data_i[10]),
        .I2(data_i[11]),
        .I3(det_threshold_low_i[11]),
        .O(\FSM_sequential_state[1]_i_7_n_0 ));
  LUT4 #(
    .INIT(16'h2F02)) 
    \FSM_sequential_state[1]_i_8 
       (.I0(det_threshold_low_i[8]),
        .I1(data_i[8]),
        .I2(data_i[9]),
        .I3(det_threshold_low_i[9]),
        .O(\FSM_sequential_state[1]_i_8_n_0 ));
  LUT4 #(
    .INIT(16'h9009)) 
    \FSM_sequential_state[1]_i_9 
       (.I0(det_threshold_low_i[14]),
        .I1(data_i[14]),
        .I2(det_threshold_low_i[15]),
        .I3(data_i[15]),
        .O(\FSM_sequential_state[1]_i_9_n_0 ));
  (* FSM_ENCODED_STATES = "reset_st:00,output_pulse_st:10,over_threshold_st:11,waiting_st:01" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_sequential_state_reg[0] 
       (.C(clk_i),
        .CE(1'b1),
        .D(\FSM_sequential_state[0]_i_1_n_0 ),
        .Q(state),
        .R(rst_i));
  (* FSM_ENCODED_STATES = "reset_st:00,output_pulse_st:10,over_threshold_st:11,waiting_st:01" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_sequential_state_reg[1] 
       (.C(clk_i),
        .CE(1'b1),
        .D(\FSM_sequential_state[1]_i_1_n_0 ),
        .Q(\FSM_sequential_state_reg_n_0_[1] ),
        .R(rst_i));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY4 \FSM_sequential_state_reg[1]_i_13 
       (.CI(1'b0),
        .CO({\FSM_sequential_state_reg[1]_i_13_n_0 ,\FSM_sequential_state_reg[1]_i_13_n_1 ,\FSM_sequential_state_reg[1]_i_13_n_2 ,\FSM_sequential_state_reg[1]_i_13_n_3 }),
        .CYINIT(1'b1),
        .DI({\FSM_sequential_state[1]_i_30_n_0 ,\FSM_sequential_state[1]_i_31_n_0 ,\FSM_sequential_state[1]_i_32_n_0 ,\FSM_sequential_state[1]_i_33_n_0 }),
        .O(\NLW_FSM_sequential_state_reg[1]_i_13_O_UNCONNECTED [3:0]),
        .S({\FSM_sequential_state[1]_i_34_n_0 ,\FSM_sequential_state[1]_i_35_n_0 ,\FSM_sequential_state[1]_i_36_n_0 ,\FSM_sequential_state[1]_i_37_n_0 }));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY4 \FSM_sequential_state_reg[1]_i_2 
       (.CI(\FSM_sequential_state_reg[1]_i_4_n_0 ),
        .CO({\FSM_sequential_state_reg[1]_i_2_n_0 ,\FSM_sequential_state_reg[1]_i_2_n_1 ,\FSM_sequential_state_reg[1]_i_2_n_2 ,\FSM_sequential_state_reg[1]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI({\FSM_sequential_state[1]_i_5_n_0 ,\FSM_sequential_state[1]_i_6_n_0 ,\FSM_sequential_state[1]_i_7_n_0 ,\FSM_sequential_state[1]_i_8_n_0 }),
        .O(\NLW_FSM_sequential_state_reg[1]_i_2_O_UNCONNECTED [3:0]),
        .S({\FSM_sequential_state[1]_i_9_n_0 ,\FSM_sequential_state[1]_i_10_n_0 ,\FSM_sequential_state[1]_i_11_n_0 ,\FSM_sequential_state[1]_i_12_n_0 }));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY4 \FSM_sequential_state_reg[1]_i_3 
       (.CI(\FSM_sequential_state_reg[1]_i_13_n_0 ),
        .CO({\FSM_sequential_state_reg[1]_i_3_n_0 ,\FSM_sequential_state_reg[1]_i_3_n_1 ,\FSM_sequential_state_reg[1]_i_3_n_2 ,\FSM_sequential_state_reg[1]_i_3_n_3 }),
        .CYINIT(1'b0),
        .DI({\FSM_sequential_state[1]_i_14_n_0 ,\FSM_sequential_state[1]_i_15_n_0 ,\FSM_sequential_state[1]_i_16_n_0 ,\FSM_sequential_state[1]_i_17_n_0 }),
        .O(\NLW_FSM_sequential_state_reg[1]_i_3_O_UNCONNECTED [3:0]),
        .S({\FSM_sequential_state[1]_i_18_n_0 ,\FSM_sequential_state[1]_i_19_n_0 ,\FSM_sequential_state[1]_i_20_n_0 ,\FSM_sequential_state[1]_i_21_n_0 }));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY4 \FSM_sequential_state_reg[1]_i_4 
       (.CI(1'b0),
        .CO({\FSM_sequential_state_reg[1]_i_4_n_0 ,\FSM_sequential_state_reg[1]_i_4_n_1 ,\FSM_sequential_state_reg[1]_i_4_n_2 ,\FSM_sequential_state_reg[1]_i_4_n_3 }),
        .CYINIT(1'b0),
        .DI({\FSM_sequential_state[1]_i_22_n_0 ,\FSM_sequential_state[1]_i_23_n_0 ,\FSM_sequential_state[1]_i_24_n_0 ,\FSM_sequential_state[1]_i_25_n_0 }),
        .O(\NLW_FSM_sequential_state_reg[1]_i_4_O_UNCONNECTED [3:0]),
        .S({\FSM_sequential_state[1]_i_26_n_0 ,\FSM_sequential_state[1]_i_27_n_0 ,\FSM_sequential_state[1]_i_28_n_0 ,\FSM_sequential_state[1]_i_29_n_0 }));
  GND GND
       (.G(\<const0> ));
  LUT2 #(
    .INIT(4'h2)) 
    arrival_flag_o_INST_0
       (.I0(\FSM_sequential_state_reg_n_0_[1] ),
        .I1(state),
        .O(arrival_flag_o));
endmodule

(* ORIG_REF_NAME = "fir_compiler_0" *) (* syn_black_box = "TRUE" *) (* x_core_info = "fir_compiler_v7_2_18,Vivado 2022.2" *) 
module xrf_dpp_DPP_module_FIR_0_0_fir_compiler_0
   (aclk,
    s_axis_data_tvalid,
    s_axis_data_tready,
    s_axis_data_tdata,
    m_axis_data_tvalid,
    m_axis_data_tdata);
  input aclk;
  input s_axis_data_tvalid;
  output s_axis_data_tready;
  input [15:0]s_axis_data_tdata;
  output m_axis_data_tvalid;
  output [15:0]m_axis_data_tdata;


endmodule

(* ORIG_REF_NAME = "fir_derivative_1" *) 
module xrf_dpp_DPP_module_FIR_0_0_fir_derivative_1
   (valid_ena,
    ena_i,
    Q,
    D,
    clk_i,
    rst_i,
    cf_3_i,
    cf_1_i,
    ADC_data_i,
    cf_2_i,
    out,
    d6_reg_0,
    op_mode_i,
    m_axis_data_tdata,
    \data_o[0] );
  output valid_ena;
  output ena_i;
  output [15:0]Q;
  output [15:0]D;
  input clk_i;
  input rst_i;
  input [4:0]cf_3_i;
  input [4:0]cf_1_i;
  input [15:0]ADC_data_i;
  input [4:0]cf_2_i;
  input out;
  input d6_reg_0;
  input [1:0]op_mode_i;
  input [15:0]m_axis_data_tdata;
  input [0:0]\data_o[0] ;

  wire [15:0]ADC_data_i;
  wire [15:0]D;
  wire [15:0]Q;
  wire \_inferred__5/i__carry__0_n_0 ;
  wire \_inferred__5/i__carry__0_n_1 ;
  wire \_inferred__5/i__carry__0_n_2 ;
  wire \_inferred__5/i__carry__0_n_3 ;
  wire \_inferred__5/i__carry__1_n_0 ;
  wire \_inferred__5/i__carry__1_n_1 ;
  wire \_inferred__5/i__carry__1_n_2 ;
  wire \_inferred__5/i__carry__1_n_3 ;
  wire \_inferred__5/i__carry__2_n_1 ;
  wire \_inferred__5/i__carry__2_n_2 ;
  wire \_inferred__5/i__carry__2_n_3 ;
  wire \_inferred__5/i__carry_n_0 ;
  wire \_inferred__5/i__carry_n_1 ;
  wire \_inferred__5/i__carry_n_2 ;
  wire \_inferred__5/i__carry_n_3 ;
  wire [4:0]cf_1_i;
  wire [4:0]cf_2_i;
  wire [4:0]cf_3_i;
  wire clk_i;
  wire d3_reg_i_1_n_0;
  wire d3_reg_n_106;
  wire d3_reg_n_107;
  wire d3_reg_n_108;
  wire d3_reg_n_109;
  wire d3_reg_n_110;
  wire d3_reg_n_111;
  wire d3_reg_n_112;
  wire d3_reg_n_113;
  wire d3_reg_n_114;
  wire d3_reg_n_115;
  wire d3_reg_n_116;
  wire d3_reg_n_117;
  wire d3_reg_n_118;
  wire d3_reg_n_119;
  wire d3_reg_n_120;
  wire d3_reg_n_121;
  wire d3_reg_n_122;
  wire d3_reg_n_123;
  wire d3_reg_n_124;
  wire d3_reg_n_125;
  wire d3_reg_n_126;
  wire d3_reg_n_127;
  wire d3_reg_n_128;
  wire d3_reg_n_129;
  wire d3_reg_n_130;
  wire d3_reg_n_131;
  wire d3_reg_n_132;
  wire d3_reg_n_133;
  wire d3_reg_n_134;
  wire d3_reg_n_135;
  wire d3_reg_n_136;
  wire d3_reg_n_137;
  wire d3_reg_n_138;
  wire d3_reg_n_139;
  wire d3_reg_n_140;
  wire d3_reg_n_141;
  wire d3_reg_n_142;
  wire d3_reg_n_143;
  wire d3_reg_n_144;
  wire d3_reg_n_145;
  wire d3_reg_n_146;
  wire d3_reg_n_147;
  wire d3_reg_n_148;
  wire d3_reg_n_149;
  wire d3_reg_n_150;
  wire d3_reg_n_151;
  wire d3_reg_n_152;
  wire d3_reg_n_153;
  wire d6_reg_0;
  wire d6_reg_n_106;
  wire d6_reg_n_107;
  wire d6_reg_n_108;
  wire d6_reg_n_109;
  wire d6_reg_n_110;
  wire d6_reg_n_111;
  wire d6_reg_n_112;
  wire d6_reg_n_113;
  wire d6_reg_n_114;
  wire d6_reg_n_115;
  wire d6_reg_n_116;
  wire d6_reg_n_117;
  wire d6_reg_n_118;
  wire d6_reg_n_119;
  wire d6_reg_n_120;
  wire d6_reg_n_121;
  wire d6_reg_n_122;
  wire d6_reg_n_123;
  wire d6_reg_n_124;
  wire d6_reg_n_125;
  wire d6_reg_n_126;
  wire d6_reg_n_127;
  wire d6_reg_n_128;
  wire d6_reg_n_129;
  wire d6_reg_n_130;
  wire d6_reg_n_131;
  wire d6_reg_n_132;
  wire d6_reg_n_133;
  wire d6_reg_n_134;
  wire d6_reg_n_135;
  wire d6_reg_n_136;
  wire d6_reg_n_137;
  wire d6_reg_n_138;
  wire d6_reg_n_139;
  wire d6_reg_n_140;
  wire d6_reg_n_141;
  wire d6_reg_n_142;
  wire d6_reg_n_143;
  wire d6_reg_n_144;
  wire d6_reg_n_145;
  wire d6_reg_n_146;
  wire d6_reg_n_147;
  wire d6_reg_n_148;
  wire d6_reg_n_149;
  wire d6_reg_n_150;
  wire d6_reg_n_151;
  wire d6_reg_n_152;
  wire d6_reg_n_153;
  wire [0:0]\data_o[0] ;
  wire der_sign;
  wire [15:0]din_1;
  wire [15:0]din_2;
  wire [15:0]din_3;
  wire [15:0]din_4;
  wire [15:0]doutint;
  wire ena_i;
  wire gtOp;
  wire gtOp_carry__0_i_1_n_0;
  wire gtOp_carry__0_i_2_n_0;
  wire gtOp_carry__0_i_3_n_0;
  wire gtOp_carry__0_i_4_n_0;
  wire gtOp_carry__0_i_5_n_0;
  wire gtOp_carry__0_i_6_n_0;
  wire gtOp_carry__0_i_7_n_0;
  wire gtOp_carry__0_i_8_n_0;
  wire gtOp_carry__0_n_0;
  wire gtOp_carry__0_n_1;
  wire gtOp_carry__0_n_2;
  wire gtOp_carry__0_n_3;
  wire gtOp_carry__1_i_1_n_0;
  wire gtOp_carry__1_i_2_n_0;
  wire gtOp_carry__1_i_3_n_0;
  wire gtOp_carry__1_i_4_n_0;
  wire gtOp_carry__1_i_5_n_0;
  wire gtOp_carry__1_i_6_n_0;
  wire gtOp_carry__1_i_7_n_0;
  wire gtOp_carry__1_i_8_n_0;
  wire gtOp_carry__1_n_0;
  wire gtOp_carry__1_n_1;
  wire gtOp_carry__1_n_2;
  wire gtOp_carry__1_n_3;
  wire gtOp_carry__2_i_1_n_0;
  wire gtOp_carry__2_i_2_n_0;
  wire gtOp_carry__2_i_3_n_0;
  wire gtOp_carry__2_i_4_n_0;
  wire gtOp_carry__2_n_3;
  wire gtOp_carry_i_1_n_0;
  wire gtOp_carry_i_2_n_0;
  wire gtOp_carry_i_3_n_0;
  wire gtOp_carry_i_4_n_0;
  wire gtOp_carry_i_5_n_0;
  wire gtOp_carry_i_6_n_0;
  wire gtOp_carry_i_7_n_0;
  wire gtOp_carry_i_8_n_0;
  wire gtOp_carry_n_0;
  wire gtOp_carry_n_1;
  wire gtOp_carry_n_2;
  wire gtOp_carry_n_3;
  wire i__carry__0_i_1_n_0;
  wire i__carry__0_i_2_n_0;
  wire i__carry__0_i_3_n_0;
  wire i__carry__0_i_4_n_0;
  wire i__carry__0_i_5_n_0;
  wire i__carry__0_i_6_n_0;
  wire i__carry__0_i_7_n_0;
  wire i__carry__0_i_8_n_0;
  wire i__carry__1_i_1_n_0;
  wire i__carry__1_i_2_n_0;
  wire i__carry__1_i_3_n_0;
  wire i__carry__1_i_4_n_0;
  wire i__carry__1_i_5_n_0;
  wire i__carry__1_i_6_n_0;
  wire i__carry__1_i_7_n_0;
  wire i__carry__1_i_8_n_0;
  wire i__carry__2_i_1_n_0;
  wire i__carry__2_i_2_n_0;
  wire i__carry__2_i_3_n_0;
  wire i__carry__2_i_4_n_0;
  wire i__carry__2_i_5_n_0;
  wire i__carry__2_i_6_n_0;
  wire i__carry__2_i_7_n_0;
  wire i__carry_i_1_n_0;
  wire i__carry_i_2_n_0;
  wire i__carry_i_3_n_0;
  wire i__carry_i_4_n_0;
  wire i__carry_i_5_n_0;
  wire i__carry_i_6_n_0;
  wire i__carry_i_7_n_0;
  wire i__carry_i_8_n_0;
  wire [15:0]m_axis_data_tdata;
  wire [1:0]op_mode_i;
  wire out;
  wire plusOp__0_n_100;
  wire plusOp__0_n_101;
  wire plusOp__0_n_102;
  wire plusOp__0_n_103;
  wire plusOp__0_n_104;
  wire plusOp__0_n_105;
  wire plusOp__0_n_79;
  wire plusOp__0_n_80;
  wire plusOp__0_n_81;
  wire plusOp__0_n_82;
  wire plusOp__0_n_83;
  wire plusOp__0_n_84;
  wire plusOp__0_n_85;
  wire plusOp__0_n_86;
  wire plusOp__0_n_87;
  wire plusOp__0_n_88;
  wire plusOp__0_n_89;
  wire plusOp__0_n_90;
  wire plusOp__0_n_91;
  wire plusOp__0_n_92;
  wire plusOp__0_n_93;
  wire plusOp__0_n_94;
  wire plusOp__0_n_95;
  wire plusOp__0_n_96;
  wire plusOp__0_n_97;
  wire plusOp__0_n_98;
  wire plusOp__0_n_99;
  wire plusOp__1_n_106;
  wire plusOp__1_n_107;
  wire plusOp__1_n_108;
  wire plusOp__1_n_109;
  wire plusOp__1_n_110;
  wire plusOp__1_n_111;
  wire plusOp__1_n_112;
  wire plusOp__1_n_113;
  wire plusOp__1_n_114;
  wire plusOp__1_n_115;
  wire plusOp__1_n_116;
  wire plusOp__1_n_117;
  wire plusOp__1_n_118;
  wire plusOp__1_n_119;
  wire plusOp__1_n_120;
  wire plusOp__1_n_121;
  wire plusOp__1_n_122;
  wire plusOp__1_n_123;
  wire plusOp__1_n_124;
  wire plusOp__1_n_125;
  wire plusOp__1_n_126;
  wire plusOp__1_n_127;
  wire plusOp__1_n_128;
  wire plusOp__1_n_129;
  wire plusOp__1_n_130;
  wire plusOp__1_n_131;
  wire plusOp__1_n_132;
  wire plusOp__1_n_133;
  wire plusOp__1_n_134;
  wire plusOp__1_n_135;
  wire plusOp__1_n_136;
  wire plusOp__1_n_137;
  wire plusOp__1_n_138;
  wire plusOp__1_n_139;
  wire plusOp__1_n_140;
  wire plusOp__1_n_141;
  wire plusOp__1_n_142;
  wire plusOp__1_n_143;
  wire plusOp__1_n_144;
  wire plusOp__1_n_145;
  wire plusOp__1_n_146;
  wire plusOp__1_n_147;
  wire plusOp__1_n_148;
  wire plusOp__1_n_149;
  wire plusOp__1_n_150;
  wire plusOp__1_n_151;
  wire plusOp__1_n_152;
  wire plusOp__1_n_153;
  wire plusOp__1_n_24;
  wire plusOp__1_n_25;
  wire plusOp__1_n_26;
  wire plusOp__1_n_27;
  wire plusOp__1_n_28;
  wire plusOp__1_n_29;
  wire plusOp__1_n_30;
  wire plusOp__1_n_31;
  wire plusOp__1_n_32;
  wire plusOp__1_n_33;
  wire plusOp__1_n_34;
  wire plusOp__1_n_35;
  wire plusOp__1_n_36;
  wire plusOp__1_n_37;
  wire plusOp__1_n_38;
  wire plusOp__1_n_39;
  wire plusOp__1_n_40;
  wire plusOp__1_n_41;
  wire plusOp__1_n_42;
  wire plusOp__1_n_43;
  wire plusOp__1_n_44;
  wire plusOp__1_n_45;
  wire plusOp__1_n_46;
  wire plusOp__1_n_47;
  wire plusOp__1_n_48;
  wire plusOp__1_n_49;
  wire plusOp__1_n_50;
  wire plusOp__1_n_51;
  wire plusOp__1_n_52;
  wire plusOp__1_n_53;
  wire plusOp__2_n_100;
  wire plusOp__2_n_101;
  wire plusOp__2_n_102;
  wire plusOp__2_n_103;
  wire plusOp__2_n_104;
  wire plusOp__2_n_105;
  wire plusOp__2_n_79;
  wire plusOp__2_n_80;
  wire plusOp__2_n_81;
  wire plusOp__2_n_82;
  wire plusOp__2_n_83;
  wire plusOp__2_n_84;
  wire plusOp__2_n_85;
  wire plusOp__2_n_86;
  wire plusOp__2_n_87;
  wire plusOp__2_n_88;
  wire plusOp__2_n_89;
  wire plusOp__2_n_90;
  wire plusOp__2_n_91;
  wire plusOp__2_n_92;
  wire plusOp__2_n_93;
  wire plusOp__2_n_94;
  wire plusOp__2_n_95;
  wire plusOp__2_n_96;
  wire plusOp__2_n_97;
  wire plusOp__2_n_98;
  wire plusOp__2_n_99;
  wire plusOp_n_100;
  wire plusOp_n_101;
  wire plusOp_n_102;
  wire plusOp_n_103;
  wire plusOp_n_104;
  wire plusOp_n_105;
  wire plusOp_n_106;
  wire plusOp_n_107;
  wire plusOp_n_108;
  wire plusOp_n_109;
  wire plusOp_n_110;
  wire plusOp_n_111;
  wire plusOp_n_112;
  wire plusOp_n_113;
  wire plusOp_n_114;
  wire plusOp_n_115;
  wire plusOp_n_116;
  wire plusOp_n_117;
  wire plusOp_n_118;
  wire plusOp_n_119;
  wire plusOp_n_120;
  wire plusOp_n_121;
  wire plusOp_n_122;
  wire plusOp_n_123;
  wire plusOp_n_124;
  wire plusOp_n_125;
  wire plusOp_n_126;
  wire plusOp_n_127;
  wire plusOp_n_128;
  wire plusOp_n_129;
  wire plusOp_n_130;
  wire plusOp_n_131;
  wire plusOp_n_132;
  wire plusOp_n_133;
  wire plusOp_n_134;
  wire plusOp_n_135;
  wire plusOp_n_136;
  wire plusOp_n_137;
  wire plusOp_n_138;
  wire plusOp_n_139;
  wire plusOp_n_140;
  wire plusOp_n_141;
  wire plusOp_n_142;
  wire plusOp_n_143;
  wire plusOp_n_144;
  wire plusOp_n_145;
  wire plusOp_n_146;
  wire plusOp_n_147;
  wire plusOp_n_148;
  wire plusOp_n_149;
  wire plusOp_n_150;
  wire plusOp_n_151;
  wire plusOp_n_152;
  wire plusOp_n_153;
  wire plusOp_n_79;
  wire plusOp_n_80;
  wire plusOp_n_81;
  wire plusOp_n_82;
  wire plusOp_n_83;
  wire plusOp_n_84;
  wire plusOp_n_85;
  wire plusOp_n_86;
  wire plusOp_n_87;
  wire plusOp_n_88;
  wire plusOp_n_89;
  wire plusOp_n_90;
  wire plusOp_n_91;
  wire plusOp_n_92;
  wire plusOp_n_93;
  wire plusOp_n_94;
  wire plusOp_n_95;
  wire plusOp_n_96;
  wire plusOp_n_97;
  wire plusOp_n_98;
  wire plusOp_n_99;
  wire rst_i;
  wire valid_ena;
  wire [3:3]\NLW__inferred__5/i__carry__2_CO_UNCONNECTED ;
  wire NLW_d3_reg_CARRYCASCOUT_UNCONNECTED;
  wire NLW_d3_reg_MULTSIGNOUT_UNCONNECTED;
  wire NLW_d3_reg_OVERFLOW_UNCONNECTED;
  wire NLW_d3_reg_PATTERNBDETECT_UNCONNECTED;
  wire NLW_d3_reg_PATTERNDETECT_UNCONNECTED;
  wire NLW_d3_reg_UNDERFLOW_UNCONNECTED;
  wire [29:0]NLW_d3_reg_ACOUT_UNCONNECTED;
  wire [17:0]NLW_d3_reg_BCOUT_UNCONNECTED;
  wire [3:0]NLW_d3_reg_CARRYOUT_UNCONNECTED;
  wire [47:0]NLW_d3_reg_P_UNCONNECTED;
  wire NLW_d6_reg_CARRYCASCOUT_UNCONNECTED;
  wire NLW_d6_reg_MULTSIGNOUT_UNCONNECTED;
  wire NLW_d6_reg_OVERFLOW_UNCONNECTED;
  wire NLW_d6_reg_PATTERNBDETECT_UNCONNECTED;
  wire NLW_d6_reg_PATTERNDETECT_UNCONNECTED;
  wire NLW_d6_reg_UNDERFLOW_UNCONNECTED;
  wire [29:0]NLW_d6_reg_ACOUT_UNCONNECTED;
  wire [17:0]NLW_d6_reg_BCOUT_UNCONNECTED;
  wire [3:0]NLW_d6_reg_CARRYOUT_UNCONNECTED;
  wire [47:0]NLW_d6_reg_P_UNCONNECTED;
  wire [3:0]NLW_gtOp_carry_O_UNCONNECTED;
  wire [3:0]NLW_gtOp_carry__0_O_UNCONNECTED;
  wire [3:0]NLW_gtOp_carry__1_O_UNCONNECTED;
  wire [3:2]NLW_gtOp_carry__2_CO_UNCONNECTED;
  wire [3:0]NLW_gtOp_carry__2_O_UNCONNECTED;
  wire NLW_plusOp_CARRYCASCOUT_UNCONNECTED;
  wire NLW_plusOp_MULTSIGNOUT_UNCONNECTED;
  wire NLW_plusOp_OVERFLOW_UNCONNECTED;
  wire NLW_plusOp_PATTERNBDETECT_UNCONNECTED;
  wire NLW_plusOp_PATTERNDETECT_UNCONNECTED;
  wire NLW_plusOp_UNDERFLOW_UNCONNECTED;
  wire [29:0]NLW_plusOp_ACOUT_UNCONNECTED;
  wire [17:0]NLW_plusOp_BCOUT_UNCONNECTED;
  wire [3:0]NLW_plusOp_CARRYOUT_UNCONNECTED;
  wire [47:27]NLW_plusOp_P_UNCONNECTED;
  wire NLW_plusOp__0_CARRYCASCOUT_UNCONNECTED;
  wire NLW_plusOp__0_MULTSIGNOUT_UNCONNECTED;
  wire NLW_plusOp__0_OVERFLOW_UNCONNECTED;
  wire NLW_plusOp__0_PATTERNBDETECT_UNCONNECTED;
  wire NLW_plusOp__0_PATTERNDETECT_UNCONNECTED;
  wire NLW_plusOp__0_UNDERFLOW_UNCONNECTED;
  wire [29:0]NLW_plusOp__0_ACOUT_UNCONNECTED;
  wire [17:0]NLW_plusOp__0_BCOUT_UNCONNECTED;
  wire [3:0]NLW_plusOp__0_CARRYOUT_UNCONNECTED;
  wire [47:27]NLW_plusOp__0_P_UNCONNECTED;
  wire [47:0]NLW_plusOp__0_PCOUT_UNCONNECTED;
  wire NLW_plusOp__1_CARRYCASCOUT_UNCONNECTED;
  wire NLW_plusOp__1_MULTSIGNOUT_UNCONNECTED;
  wire NLW_plusOp__1_OVERFLOW_UNCONNECTED;
  wire NLW_plusOp__1_PATTERNBDETECT_UNCONNECTED;
  wire NLW_plusOp__1_PATTERNDETECT_UNCONNECTED;
  wire NLW_plusOp__1_UNDERFLOW_UNCONNECTED;
  wire [17:0]NLW_plusOp__1_BCOUT_UNCONNECTED;
  wire [3:0]NLW_plusOp__1_CARRYOUT_UNCONNECTED;
  wire [47:0]NLW_plusOp__1_P_UNCONNECTED;
  wire NLW_plusOp__2_CARRYCASCOUT_UNCONNECTED;
  wire NLW_plusOp__2_MULTSIGNOUT_UNCONNECTED;
  wire NLW_plusOp__2_OVERFLOW_UNCONNECTED;
  wire NLW_plusOp__2_PATTERNBDETECT_UNCONNECTED;
  wire NLW_plusOp__2_PATTERNDETECT_UNCONNECTED;
  wire NLW_plusOp__2_UNDERFLOW_UNCONNECTED;
  wire [29:0]NLW_plusOp__2_ACOUT_UNCONNECTED;
  wire [17:0]NLW_plusOp__2_BCOUT_UNCONNECTED;
  wire [3:0]NLW_plusOp__2_CARRYOUT_UNCONNECTED;
  wire [47:27]NLW_plusOp__2_P_UNCONNECTED;
  wire [47:0]NLW_plusOp__2_PCOUT_UNCONNECTED;

  (* ADDER_THRESHOLD = "35" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY4 \_inferred__5/i__carry 
       (.CI(1'b0),
        .CO({\_inferred__5/i__carry_n_0 ,\_inferred__5/i__carry_n_1 ,\_inferred__5/i__carry_n_2 ,\_inferred__5/i__carry_n_3 }),
        .CYINIT(1'b1),
        .DI({i__carry_i_1_n_0,i__carry_i_2_n_0,i__carry_i_3_n_0,i__carry_i_4_n_0}),
        .O(doutint[3:0]),
        .S({i__carry_i_5_n_0,i__carry_i_6_n_0,i__carry_i_7_n_0,i__carry_i_8_n_0}));
  (* ADDER_THRESHOLD = "35" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY4 \_inferred__5/i__carry__0 
       (.CI(\_inferred__5/i__carry_n_0 ),
        .CO({\_inferred__5/i__carry__0_n_0 ,\_inferred__5/i__carry__0_n_1 ,\_inferred__5/i__carry__0_n_2 ,\_inferred__5/i__carry__0_n_3 }),
        .CYINIT(1'b0),
        .DI({i__carry__0_i_1_n_0,i__carry__0_i_2_n_0,i__carry__0_i_3_n_0,i__carry__0_i_4_n_0}),
        .O(doutint[7:4]),
        .S({i__carry__0_i_5_n_0,i__carry__0_i_6_n_0,i__carry__0_i_7_n_0,i__carry__0_i_8_n_0}));
  (* ADDER_THRESHOLD = "35" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY4 \_inferred__5/i__carry__1 
       (.CI(\_inferred__5/i__carry__0_n_0 ),
        .CO({\_inferred__5/i__carry__1_n_0 ,\_inferred__5/i__carry__1_n_1 ,\_inferred__5/i__carry__1_n_2 ,\_inferred__5/i__carry__1_n_3 }),
        .CYINIT(1'b0),
        .DI({i__carry__1_i_1_n_0,i__carry__1_i_2_n_0,i__carry__1_i_3_n_0,i__carry__1_i_4_n_0}),
        .O(doutint[11:8]),
        .S({i__carry__1_i_5_n_0,i__carry__1_i_6_n_0,i__carry__1_i_7_n_0,i__carry__1_i_8_n_0}));
  (* ADDER_THRESHOLD = "35" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY4 \_inferred__5/i__carry__2 
       (.CI(\_inferred__5/i__carry__1_n_0 ),
        .CO({\NLW__inferred__5/i__carry__2_CO_UNCONNECTED [3],\_inferred__5/i__carry__2_n_1 ,\_inferred__5/i__carry__2_n_2 ,\_inferred__5/i__carry__2_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,i__carry__2_i_1_n_0,i__carry__2_i_2_n_0,i__carry__2_i_3_n_0}),
        .O(doutint[15:12]),
        .S({i__carry__2_i_4_n_0,i__carry__2_i_5_n_0,i__carry__2_i_6_n_0,i__carry__2_i_7_n_0}));
  DSP48E1 #(
    .ACASCREG(2),
    .ADREG(1),
    .ALUMODEREG(0),
    .AREG(2),
    .AUTORESET_PATDET("NO_RESET"),
    .A_INPUT("DIRECT"),
    .BCASCREG(0),
    .BREG(0),
    .B_INPUT("DIRECT"),
    .CARRYINREG(0),
    .CARRYINSELREG(0),
    .CREG(0),
    .DREG(1),
    .INMODEREG(0),
    .MASK(48'h3FFFFFFFFFFF),
    .MREG(0),
    .OPMODEREG(0),
    .PATTERN(48'h000000000000),
    .PREG(1),
    .SEL_MASK("MASK"),
    .SEL_PATTERN("PATTERN"),
    .USE_DPORT("FALSE"),
    .USE_MULT("MULTIPLY"),
    .USE_PATTERN_DETECT("NO_PATDET"),
    .USE_SIMD("ONE48")) 
    d3_reg
       (.A({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,din_1}),
        .ACIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .ACOUT(NLW_d3_reg_ACOUT_UNCONNECTED[29:0]),
        .ALUMODE({1'b0,1'b0,1'b0,1'b0}),
        .B({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,cf_3_i}),
        .BCIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .BCOUT(NLW_d3_reg_BCOUT_UNCONNECTED[17:0]),
        .C({1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1}),
        .CARRYCASCIN(1'b0),
        .CARRYCASCOUT(NLW_d3_reg_CARRYCASCOUT_UNCONNECTED),
        .CARRYIN(1'b0),
        .CARRYINSEL({1'b0,1'b0,1'b0}),
        .CARRYOUT(NLW_d3_reg_CARRYOUT_UNCONNECTED[3:0]),
        .CEA1(valid_ena),
        .CEA2(valid_ena),
        .CEAD(1'b0),
        .CEALUMODE(1'b0),
        .CEB1(1'b0),
        .CEB2(1'b0),
        .CEC(1'b0),
        .CECARRYIN(1'b0),
        .CECTRL(1'b0),
        .CED(1'b0),
        .CEINMODE(1'b0),
        .CEM(1'b0),
        .CEP(d3_reg_i_1_n_0),
        .CLK(clk_i),
        .D({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .INMODE({1'b0,1'b0,1'b0,1'b0,1'b0}),
        .MULTSIGNIN(1'b0),
        .MULTSIGNOUT(NLW_d3_reg_MULTSIGNOUT_UNCONNECTED),
        .OPMODE({1'b0,1'b0,1'b0,1'b0,1'b1,1'b0,1'b1}),
        .OVERFLOW(NLW_d3_reg_OVERFLOW_UNCONNECTED),
        .P(NLW_d3_reg_P_UNCONNECTED[47:0]),
        .PATTERNBDETECT(NLW_d3_reg_PATTERNBDETECT_UNCONNECTED),
        .PATTERNDETECT(NLW_d3_reg_PATTERNDETECT_UNCONNECTED),
        .PCIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .PCOUT({d3_reg_n_106,d3_reg_n_107,d3_reg_n_108,d3_reg_n_109,d3_reg_n_110,d3_reg_n_111,d3_reg_n_112,d3_reg_n_113,d3_reg_n_114,d3_reg_n_115,d3_reg_n_116,d3_reg_n_117,d3_reg_n_118,d3_reg_n_119,d3_reg_n_120,d3_reg_n_121,d3_reg_n_122,d3_reg_n_123,d3_reg_n_124,d3_reg_n_125,d3_reg_n_126,d3_reg_n_127,d3_reg_n_128,d3_reg_n_129,d3_reg_n_130,d3_reg_n_131,d3_reg_n_132,d3_reg_n_133,d3_reg_n_134,d3_reg_n_135,d3_reg_n_136,d3_reg_n_137,d3_reg_n_138,d3_reg_n_139,d3_reg_n_140,d3_reg_n_141,d3_reg_n_142,d3_reg_n_143,d3_reg_n_144,d3_reg_n_145,d3_reg_n_146,d3_reg_n_147,d3_reg_n_148,d3_reg_n_149,d3_reg_n_150,d3_reg_n_151,d3_reg_n_152,d3_reg_n_153}),
        .RSTA(rst_i),
        .RSTALLCARRYIN(1'b0),
        .RSTALUMODE(1'b0),
        .RSTB(1'b0),
        .RSTC(1'b0),
        .RSTCTRL(1'b0),
        .RSTD(1'b0),
        .RSTINMODE(1'b0),
        .RSTM(1'b0),
        .RSTP(1'b0),
        .UNDERFLOW(NLW_d3_reg_UNDERFLOW_UNCONNECTED));
  LUT3 #(
    .INIT(8'h08)) 
    d3_reg_i_1
       (.I0(d6_reg_0),
        .I1(out),
        .I2(rst_i),
        .O(d3_reg_i_1_n_0));
  DSP48E1 #(
    .ACASCREG(2),
    .ADREG(1),
    .ALUMODEREG(0),
    .AREG(2),
    .AUTORESET_PATDET("NO_RESET"),
    .A_INPUT("DIRECT"),
    .BCASCREG(0),
    .BREG(0),
    .B_INPUT("DIRECT"),
    .CARRYINREG(0),
    .CARRYINSELREG(0),
    .CREG(0),
    .DREG(1),
    .INMODEREG(0),
    .MASK(48'h3FFFFFFFFFFF),
    .MREG(0),
    .OPMODEREG(0),
    .PATTERN(48'h000000000000),
    .PREG(1),
    .SEL_MASK("MASK"),
    .SEL_PATTERN("PATTERN"),
    .USE_DPORT("FALSE"),
    .USE_MULT("MULTIPLY"),
    .USE_PATTERN_DETECT("NO_PATDET"),
    .USE_SIMD("ONE48")) 
    d6_reg
       (.A({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,din_4}),
        .ACIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .ACOUT(NLW_d6_reg_ACOUT_UNCONNECTED[29:0]),
        .ALUMODE({1'b0,1'b0,1'b0,1'b0}),
        .B({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,cf_1_i}),
        .BCIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .BCOUT(NLW_d6_reg_BCOUT_UNCONNECTED[17:0]),
        .C({1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1}),
        .CARRYCASCIN(1'b0),
        .CARRYCASCOUT(NLW_d6_reg_CARRYCASCOUT_UNCONNECTED),
        .CARRYIN(1'b0),
        .CARRYINSEL({1'b0,1'b0,1'b0}),
        .CARRYOUT(NLW_d6_reg_CARRYOUT_UNCONNECTED[3:0]),
        .CEA1(valid_ena),
        .CEA2(valid_ena),
        .CEAD(1'b0),
        .CEALUMODE(1'b0),
        .CEB1(1'b0),
        .CEB2(1'b0),
        .CEC(1'b0),
        .CECARRYIN(1'b0),
        .CECTRL(1'b0),
        .CED(1'b0),
        .CEINMODE(1'b0),
        .CEM(1'b0),
        .CEP(d3_reg_i_1_n_0),
        .CLK(clk_i),
        .D({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .INMODE({1'b0,1'b0,1'b0,1'b0,1'b0}),
        .MULTSIGNIN(1'b0),
        .MULTSIGNOUT(NLW_d6_reg_MULTSIGNOUT_UNCONNECTED),
        .OPMODE({1'b0,1'b0,1'b0,1'b0,1'b1,1'b0,1'b1}),
        .OVERFLOW(NLW_d6_reg_OVERFLOW_UNCONNECTED),
        .P(NLW_d6_reg_P_UNCONNECTED[47:0]),
        .PATTERNBDETECT(NLW_d6_reg_PATTERNBDETECT_UNCONNECTED),
        .PATTERNDETECT(NLW_d6_reg_PATTERNDETECT_UNCONNECTED),
        .PCIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .PCOUT({d6_reg_n_106,d6_reg_n_107,d6_reg_n_108,d6_reg_n_109,d6_reg_n_110,d6_reg_n_111,d6_reg_n_112,d6_reg_n_113,d6_reg_n_114,d6_reg_n_115,d6_reg_n_116,d6_reg_n_117,d6_reg_n_118,d6_reg_n_119,d6_reg_n_120,d6_reg_n_121,d6_reg_n_122,d6_reg_n_123,d6_reg_n_124,d6_reg_n_125,d6_reg_n_126,d6_reg_n_127,d6_reg_n_128,d6_reg_n_129,d6_reg_n_130,d6_reg_n_131,d6_reg_n_132,d6_reg_n_133,d6_reg_n_134,d6_reg_n_135,d6_reg_n_136,d6_reg_n_137,d6_reg_n_138,d6_reg_n_139,d6_reg_n_140,d6_reg_n_141,d6_reg_n_142,d6_reg_n_143,d6_reg_n_144,d6_reg_n_145,d6_reg_n_146,d6_reg_n_147,d6_reg_n_148,d6_reg_n_149,d6_reg_n_150,d6_reg_n_151,d6_reg_n_152,d6_reg_n_153}),
        .RSTA(rst_i),
        .RSTALLCARRYIN(1'b0),
        .RSTALUMODE(1'b0),
        .RSTB(1'b0),
        .RSTC(1'b0),
        .RSTCTRL(1'b0),
        .RSTD(1'b0),
        .RSTINMODE(1'b0),
        .RSTM(1'b0),
        .RSTP(1'b0),
        .UNDERFLOW(NLW_d6_reg_UNDERFLOW_UNCONNECTED));
  LUT6 #(
    .INIT(64'h0000000033E200E2)) 
    \data_muxed_out_reg[0]_i_1 
       (.I0(ADC_data_i[0]),
        .I1(op_mode_i[1]),
        .I2(Q[0]),
        .I3(op_mode_i[0]),
        .I4(m_axis_data_tdata[0]),
        .I5(\data_o[0] ),
        .O(D[0]));
  LUT6 #(
    .INIT(64'h0000000033E200E2)) 
    \data_muxed_out_reg[10]_i_1 
       (.I0(ADC_data_i[10]),
        .I1(op_mode_i[1]),
        .I2(Q[10]),
        .I3(op_mode_i[0]),
        .I4(m_axis_data_tdata[10]),
        .I5(\data_o[0] ),
        .O(D[10]));
  LUT6 #(
    .INIT(64'h0000000033E200E2)) 
    \data_muxed_out_reg[11]_i_1 
       (.I0(ADC_data_i[11]),
        .I1(op_mode_i[1]),
        .I2(Q[11]),
        .I3(op_mode_i[0]),
        .I4(m_axis_data_tdata[11]),
        .I5(\data_o[0] ),
        .O(D[11]));
  LUT6 #(
    .INIT(64'h0000000033E200E2)) 
    \data_muxed_out_reg[12]_i_1 
       (.I0(ADC_data_i[12]),
        .I1(op_mode_i[1]),
        .I2(Q[12]),
        .I3(op_mode_i[0]),
        .I4(m_axis_data_tdata[12]),
        .I5(\data_o[0] ),
        .O(D[12]));
  LUT6 #(
    .INIT(64'h0000000033E200E2)) 
    \data_muxed_out_reg[13]_i_1 
       (.I0(ADC_data_i[13]),
        .I1(op_mode_i[1]),
        .I2(Q[13]),
        .I3(op_mode_i[0]),
        .I4(m_axis_data_tdata[13]),
        .I5(\data_o[0] ),
        .O(D[13]));
  LUT6 #(
    .INIT(64'h0000000033E200E2)) 
    \data_muxed_out_reg[14]_i_1 
       (.I0(ADC_data_i[14]),
        .I1(op_mode_i[1]),
        .I2(Q[14]),
        .I3(op_mode_i[0]),
        .I4(m_axis_data_tdata[14]),
        .I5(\data_o[0] ),
        .O(D[14]));
  LUT6 #(
    .INIT(64'h0000000033E200E2)) 
    \data_muxed_out_reg[15]_i_1 
       (.I0(ADC_data_i[15]),
        .I1(op_mode_i[1]),
        .I2(Q[15]),
        .I3(op_mode_i[0]),
        .I4(m_axis_data_tdata[15]),
        .I5(\data_o[0] ),
        .O(D[15]));
  LUT6 #(
    .INIT(64'h0000000033E200E2)) 
    \data_muxed_out_reg[1]_i_1 
       (.I0(ADC_data_i[1]),
        .I1(op_mode_i[1]),
        .I2(Q[1]),
        .I3(op_mode_i[0]),
        .I4(m_axis_data_tdata[1]),
        .I5(\data_o[0] ),
        .O(D[1]));
  LUT6 #(
    .INIT(64'h0000000033E200E2)) 
    \data_muxed_out_reg[2]_i_1 
       (.I0(ADC_data_i[2]),
        .I1(op_mode_i[1]),
        .I2(Q[2]),
        .I3(op_mode_i[0]),
        .I4(m_axis_data_tdata[2]),
        .I5(\data_o[0] ),
        .O(D[2]));
  LUT6 #(
    .INIT(64'h0000000033E200E2)) 
    \data_muxed_out_reg[3]_i_1 
       (.I0(ADC_data_i[3]),
        .I1(op_mode_i[1]),
        .I2(Q[3]),
        .I3(op_mode_i[0]),
        .I4(m_axis_data_tdata[3]),
        .I5(\data_o[0] ),
        .O(D[3]));
  LUT6 #(
    .INIT(64'h0000000033E200E2)) 
    \data_muxed_out_reg[4]_i_1 
       (.I0(ADC_data_i[4]),
        .I1(op_mode_i[1]),
        .I2(Q[4]),
        .I3(op_mode_i[0]),
        .I4(m_axis_data_tdata[4]),
        .I5(\data_o[0] ),
        .O(D[4]));
  LUT6 #(
    .INIT(64'h0000000033E200E2)) 
    \data_muxed_out_reg[5]_i_1 
       (.I0(ADC_data_i[5]),
        .I1(op_mode_i[1]),
        .I2(Q[5]),
        .I3(op_mode_i[0]),
        .I4(m_axis_data_tdata[5]),
        .I5(\data_o[0] ),
        .O(D[5]));
  LUT6 #(
    .INIT(64'h0000000033E200E2)) 
    \data_muxed_out_reg[6]_i_1 
       (.I0(ADC_data_i[6]),
        .I1(op_mode_i[1]),
        .I2(Q[6]),
        .I3(op_mode_i[0]),
        .I4(m_axis_data_tdata[6]),
        .I5(\data_o[0] ),
        .O(D[6]));
  LUT6 #(
    .INIT(64'h0000000033E200E2)) 
    \data_muxed_out_reg[7]_i_1 
       (.I0(ADC_data_i[7]),
        .I1(op_mode_i[1]),
        .I2(Q[7]),
        .I3(op_mode_i[0]),
        .I4(m_axis_data_tdata[7]),
        .I5(\data_o[0] ),
        .O(D[7]));
  LUT6 #(
    .INIT(64'h0000000033E200E2)) 
    \data_muxed_out_reg[8]_i_1 
       (.I0(ADC_data_i[8]),
        .I1(op_mode_i[1]),
        .I2(Q[8]),
        .I3(op_mode_i[0]),
        .I4(m_axis_data_tdata[8]),
        .I5(\data_o[0] ),
        .O(D[8]));
  LUT6 #(
    .INIT(64'h0000000033E200E2)) 
    \data_muxed_out_reg[9]_i_1 
       (.I0(ADC_data_i[9]),
        .I1(op_mode_i[1]),
        .I2(Q[9]),
        .I3(op_mode_i[0]),
        .I4(m_axis_data_tdata[9]),
        .I5(\data_o[0] ),
        .O(D[9]));
  FDRE der_sign_reg
       (.C(clk_i),
        .CE(d3_reg_i_1_n_0),
        .D(gtOp),
        .Q(der_sign),
        .R(1'b0));
  LUT2 #(
    .INIT(4'h8)) 
    \din_1[15]_i_1 
       (.I0(out),
        .I1(d6_reg_0),
        .O(valid_ena));
  FDRE \din_1_reg[0] 
       (.C(clk_i),
        .CE(valid_ena),
        .D(ADC_data_i[0]),
        .Q(din_1[0]),
        .R(rst_i));
  FDRE \din_1_reg[10] 
       (.C(clk_i),
        .CE(valid_ena),
        .D(ADC_data_i[10]),
        .Q(din_1[10]),
        .R(rst_i));
  FDRE \din_1_reg[11] 
       (.C(clk_i),
        .CE(valid_ena),
        .D(ADC_data_i[11]),
        .Q(din_1[11]),
        .R(rst_i));
  FDRE \din_1_reg[12] 
       (.C(clk_i),
        .CE(valid_ena),
        .D(ADC_data_i[12]),
        .Q(din_1[12]),
        .R(rst_i));
  FDRE \din_1_reg[13] 
       (.C(clk_i),
        .CE(valid_ena),
        .D(ADC_data_i[13]),
        .Q(din_1[13]),
        .R(rst_i));
  FDRE \din_1_reg[14] 
       (.C(clk_i),
        .CE(valid_ena),
        .D(ADC_data_i[14]),
        .Q(din_1[14]),
        .R(rst_i));
  FDRE \din_1_reg[15] 
       (.C(clk_i),
        .CE(valid_ena),
        .D(ADC_data_i[15]),
        .Q(din_1[15]),
        .R(rst_i));
  FDRE \din_1_reg[1] 
       (.C(clk_i),
        .CE(valid_ena),
        .D(ADC_data_i[1]),
        .Q(din_1[1]),
        .R(rst_i));
  FDRE \din_1_reg[2] 
       (.C(clk_i),
        .CE(valid_ena),
        .D(ADC_data_i[2]),
        .Q(din_1[2]),
        .R(rst_i));
  FDRE \din_1_reg[3] 
       (.C(clk_i),
        .CE(valid_ena),
        .D(ADC_data_i[3]),
        .Q(din_1[3]),
        .R(rst_i));
  FDRE \din_1_reg[4] 
       (.C(clk_i),
        .CE(valid_ena),
        .D(ADC_data_i[4]),
        .Q(din_1[4]),
        .R(rst_i));
  FDRE \din_1_reg[5] 
       (.C(clk_i),
        .CE(valid_ena),
        .D(ADC_data_i[5]),
        .Q(din_1[5]),
        .R(rst_i));
  FDRE \din_1_reg[6] 
       (.C(clk_i),
        .CE(valid_ena),
        .D(ADC_data_i[6]),
        .Q(din_1[6]),
        .R(rst_i));
  FDRE \din_1_reg[7] 
       (.C(clk_i),
        .CE(valid_ena),
        .D(ADC_data_i[7]),
        .Q(din_1[7]),
        .R(rst_i));
  FDRE \din_1_reg[8] 
       (.C(clk_i),
        .CE(valid_ena),
        .D(ADC_data_i[8]),
        .Q(din_1[8]),
        .R(rst_i));
  FDRE \din_1_reg[9] 
       (.C(clk_i),
        .CE(valid_ena),
        .D(ADC_data_i[9]),
        .Q(din_1[9]),
        .R(rst_i));
  FDRE \din_2_reg[0] 
       (.C(clk_i),
        .CE(valid_ena),
        .D(din_1[0]),
        .Q(din_2[0]),
        .R(rst_i));
  FDRE \din_2_reg[10] 
       (.C(clk_i),
        .CE(valid_ena),
        .D(din_1[10]),
        .Q(din_2[10]),
        .R(rst_i));
  FDRE \din_2_reg[11] 
       (.C(clk_i),
        .CE(valid_ena),
        .D(din_1[11]),
        .Q(din_2[11]),
        .R(rst_i));
  FDRE \din_2_reg[12] 
       (.C(clk_i),
        .CE(valid_ena),
        .D(din_1[12]),
        .Q(din_2[12]),
        .R(rst_i));
  FDRE \din_2_reg[13] 
       (.C(clk_i),
        .CE(valid_ena),
        .D(din_1[13]),
        .Q(din_2[13]),
        .R(rst_i));
  FDRE \din_2_reg[14] 
       (.C(clk_i),
        .CE(valid_ena),
        .D(din_1[14]),
        .Q(din_2[14]),
        .R(rst_i));
  FDRE \din_2_reg[15] 
       (.C(clk_i),
        .CE(valid_ena),
        .D(din_1[15]),
        .Q(din_2[15]),
        .R(rst_i));
  FDRE \din_2_reg[1] 
       (.C(clk_i),
        .CE(valid_ena),
        .D(din_1[1]),
        .Q(din_2[1]),
        .R(rst_i));
  FDRE \din_2_reg[2] 
       (.C(clk_i),
        .CE(valid_ena),
        .D(din_1[2]),
        .Q(din_2[2]),
        .R(rst_i));
  FDRE \din_2_reg[3] 
       (.C(clk_i),
        .CE(valid_ena),
        .D(din_1[3]),
        .Q(din_2[3]),
        .R(rst_i));
  FDRE \din_2_reg[4] 
       (.C(clk_i),
        .CE(valid_ena),
        .D(din_1[4]),
        .Q(din_2[4]),
        .R(rst_i));
  FDRE \din_2_reg[5] 
       (.C(clk_i),
        .CE(valid_ena),
        .D(din_1[5]),
        .Q(din_2[5]),
        .R(rst_i));
  FDRE \din_2_reg[6] 
       (.C(clk_i),
        .CE(valid_ena),
        .D(din_1[6]),
        .Q(din_2[6]),
        .R(rst_i));
  FDRE \din_2_reg[7] 
       (.C(clk_i),
        .CE(valid_ena),
        .D(din_1[7]),
        .Q(din_2[7]),
        .R(rst_i));
  FDRE \din_2_reg[8] 
       (.C(clk_i),
        .CE(valid_ena),
        .D(din_1[8]),
        .Q(din_2[8]),
        .R(rst_i));
  FDRE \din_2_reg[9] 
       (.C(clk_i),
        .CE(valid_ena),
        .D(din_1[9]),
        .Q(din_2[9]),
        .R(rst_i));
  FDRE \din_3_reg[0] 
       (.C(clk_i),
        .CE(valid_ena),
        .D(din_2[0]),
        .Q(din_3[0]),
        .R(rst_i));
  FDRE \din_3_reg[10] 
       (.C(clk_i),
        .CE(valid_ena),
        .D(din_2[10]),
        .Q(din_3[10]),
        .R(rst_i));
  FDRE \din_3_reg[11] 
       (.C(clk_i),
        .CE(valid_ena),
        .D(din_2[11]),
        .Q(din_3[11]),
        .R(rst_i));
  FDRE \din_3_reg[12] 
       (.C(clk_i),
        .CE(valid_ena),
        .D(din_2[12]),
        .Q(din_3[12]),
        .R(rst_i));
  FDRE \din_3_reg[13] 
       (.C(clk_i),
        .CE(valid_ena),
        .D(din_2[13]),
        .Q(din_3[13]),
        .R(rst_i));
  FDRE \din_3_reg[14] 
       (.C(clk_i),
        .CE(valid_ena),
        .D(din_2[14]),
        .Q(din_3[14]),
        .R(rst_i));
  FDRE \din_3_reg[15] 
       (.C(clk_i),
        .CE(valid_ena),
        .D(din_2[15]),
        .Q(din_3[15]),
        .R(rst_i));
  FDRE \din_3_reg[1] 
       (.C(clk_i),
        .CE(valid_ena),
        .D(din_2[1]),
        .Q(din_3[1]),
        .R(rst_i));
  FDRE \din_3_reg[2] 
       (.C(clk_i),
        .CE(valid_ena),
        .D(din_2[2]),
        .Q(din_3[2]),
        .R(rst_i));
  FDRE \din_3_reg[3] 
       (.C(clk_i),
        .CE(valid_ena),
        .D(din_2[3]),
        .Q(din_3[3]),
        .R(rst_i));
  FDRE \din_3_reg[4] 
       (.C(clk_i),
        .CE(valid_ena),
        .D(din_2[4]),
        .Q(din_3[4]),
        .R(rst_i));
  FDRE \din_3_reg[5] 
       (.C(clk_i),
        .CE(valid_ena),
        .D(din_2[5]),
        .Q(din_3[5]),
        .R(rst_i));
  FDRE \din_3_reg[6] 
       (.C(clk_i),
        .CE(valid_ena),
        .D(din_2[6]),
        .Q(din_3[6]),
        .R(rst_i));
  FDRE \din_3_reg[7] 
       (.C(clk_i),
        .CE(valid_ena),
        .D(din_2[7]),
        .Q(din_3[7]),
        .R(rst_i));
  FDRE \din_3_reg[8] 
       (.C(clk_i),
        .CE(valid_ena),
        .D(din_2[8]),
        .Q(din_3[8]),
        .R(rst_i));
  FDRE \din_3_reg[9] 
       (.C(clk_i),
        .CE(valid_ena),
        .D(din_2[9]),
        .Q(din_3[9]),
        .R(rst_i));
  FDRE \din_4_reg[0] 
       (.C(clk_i),
        .CE(valid_ena),
        .D(din_3[0]),
        .Q(din_4[0]),
        .R(rst_i));
  FDRE \din_4_reg[10] 
       (.C(clk_i),
        .CE(valid_ena),
        .D(din_3[10]),
        .Q(din_4[10]),
        .R(rst_i));
  FDRE \din_4_reg[11] 
       (.C(clk_i),
        .CE(valid_ena),
        .D(din_3[11]),
        .Q(din_4[11]),
        .R(rst_i));
  FDRE \din_4_reg[12] 
       (.C(clk_i),
        .CE(valid_ena),
        .D(din_3[12]),
        .Q(din_4[12]),
        .R(rst_i));
  FDRE \din_4_reg[13] 
       (.C(clk_i),
        .CE(valid_ena),
        .D(din_3[13]),
        .Q(din_4[13]),
        .R(rst_i));
  FDRE \din_4_reg[14] 
       (.C(clk_i),
        .CE(valid_ena),
        .D(din_3[14]),
        .Q(din_4[14]),
        .R(rst_i));
  FDRE \din_4_reg[15] 
       (.C(clk_i),
        .CE(valid_ena),
        .D(din_3[15]),
        .Q(din_4[15]),
        .R(rst_i));
  FDRE \din_4_reg[1] 
       (.C(clk_i),
        .CE(valid_ena),
        .D(din_3[1]),
        .Q(din_4[1]),
        .R(rst_i));
  FDRE \din_4_reg[2] 
       (.C(clk_i),
        .CE(valid_ena),
        .D(din_3[2]),
        .Q(din_4[2]),
        .R(rst_i));
  FDRE \din_4_reg[3] 
       (.C(clk_i),
        .CE(valid_ena),
        .D(din_3[3]),
        .Q(din_4[3]),
        .R(rst_i));
  FDRE \din_4_reg[4] 
       (.C(clk_i),
        .CE(valid_ena),
        .D(din_3[4]),
        .Q(din_4[4]),
        .R(rst_i));
  FDRE \din_4_reg[5] 
       (.C(clk_i),
        .CE(valid_ena),
        .D(din_3[5]),
        .Q(din_4[5]),
        .R(rst_i));
  FDRE \din_4_reg[6] 
       (.C(clk_i),
        .CE(valid_ena),
        .D(din_3[6]),
        .Q(din_4[6]),
        .R(rst_i));
  FDRE \din_4_reg[7] 
       (.C(clk_i),
        .CE(valid_ena),
        .D(din_3[7]),
        .Q(din_4[7]),
        .R(rst_i));
  FDRE \din_4_reg[8] 
       (.C(clk_i),
        .CE(valid_ena),
        .D(din_3[8]),
        .Q(din_4[8]),
        .R(rst_i));
  FDRE \din_4_reg[9] 
       (.C(clk_i),
        .CE(valid_ena),
        .D(din_3[9]),
        .Q(din_4[9]),
        .R(rst_i));
  FDRE \doutint_reg[0] 
       (.C(clk_i),
        .CE(d3_reg_i_1_n_0),
        .D(doutint[0]),
        .Q(Q[0]),
        .R(1'b0));
  FDRE \doutint_reg[10] 
       (.C(clk_i),
        .CE(d3_reg_i_1_n_0),
        .D(doutint[10]),
        .Q(Q[10]),
        .R(1'b0));
  FDRE \doutint_reg[11] 
       (.C(clk_i),
        .CE(d3_reg_i_1_n_0),
        .D(doutint[11]),
        .Q(Q[11]),
        .R(1'b0));
  FDRE \doutint_reg[12] 
       (.C(clk_i),
        .CE(d3_reg_i_1_n_0),
        .D(doutint[12]),
        .Q(Q[12]),
        .R(1'b0));
  FDRE \doutint_reg[13] 
       (.C(clk_i),
        .CE(d3_reg_i_1_n_0),
        .D(doutint[13]),
        .Q(Q[13]),
        .R(1'b0));
  FDRE \doutint_reg[14] 
       (.C(clk_i),
        .CE(d3_reg_i_1_n_0),
        .D(doutint[14]),
        .Q(Q[14]),
        .R(1'b0));
  FDRE \doutint_reg[15] 
       (.C(clk_i),
        .CE(d3_reg_i_1_n_0),
        .D(doutint[15]),
        .Q(Q[15]),
        .R(1'b0));
  FDRE \doutint_reg[1] 
       (.C(clk_i),
        .CE(d3_reg_i_1_n_0),
        .D(doutint[1]),
        .Q(Q[1]),
        .R(1'b0));
  FDRE \doutint_reg[2] 
       (.C(clk_i),
        .CE(d3_reg_i_1_n_0),
        .D(doutint[2]),
        .Q(Q[2]),
        .R(1'b0));
  FDRE \doutint_reg[3] 
       (.C(clk_i),
        .CE(d3_reg_i_1_n_0),
        .D(doutint[3]),
        .Q(Q[3]),
        .R(1'b0));
  FDRE \doutint_reg[4] 
       (.C(clk_i),
        .CE(d3_reg_i_1_n_0),
        .D(doutint[4]),
        .Q(Q[4]),
        .R(1'b0));
  FDRE \doutint_reg[5] 
       (.C(clk_i),
        .CE(d3_reg_i_1_n_0),
        .D(doutint[5]),
        .Q(Q[5]),
        .R(1'b0));
  FDRE \doutint_reg[6] 
       (.C(clk_i),
        .CE(d3_reg_i_1_n_0),
        .D(doutint[6]),
        .Q(Q[6]),
        .R(1'b0));
  FDRE \doutint_reg[7] 
       (.C(clk_i),
        .CE(d3_reg_i_1_n_0),
        .D(doutint[7]),
        .Q(Q[7]),
        .R(1'b0));
  FDRE \doutint_reg[8] 
       (.C(clk_i),
        .CE(d3_reg_i_1_n_0),
        .D(doutint[8]),
        .Q(Q[8]),
        .R(1'b0));
  FDRE \doutint_reg[9] 
       (.C(clk_i),
        .CE(d3_reg_i_1_n_0),
        .D(doutint[9]),
        .Q(Q[9]),
        .R(1'b0));
  LUT1 #(
    .INIT(2'h1)) 
    edge_detector_i_1
       (.I0(der_sign),
        .O(ena_i));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY4 gtOp_carry
       (.CI(1'b0),
        .CO({gtOp_carry_n_0,gtOp_carry_n_1,gtOp_carry_n_2,gtOp_carry_n_3}),
        .CYINIT(1'b0),
        .DI({gtOp_carry_i_1_n_0,gtOp_carry_i_2_n_0,gtOp_carry_i_3_n_0,gtOp_carry_i_4_n_0}),
        .O(NLW_gtOp_carry_O_UNCONNECTED[3:0]),
        .S({gtOp_carry_i_5_n_0,gtOp_carry_i_6_n_0,gtOp_carry_i_7_n_0,gtOp_carry_i_8_n_0}));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY4 gtOp_carry__0
       (.CI(gtOp_carry_n_0),
        .CO({gtOp_carry__0_n_0,gtOp_carry__0_n_1,gtOp_carry__0_n_2,gtOp_carry__0_n_3}),
        .CYINIT(1'b0),
        .DI({gtOp_carry__0_i_1_n_0,gtOp_carry__0_i_2_n_0,gtOp_carry__0_i_3_n_0,gtOp_carry__0_i_4_n_0}),
        .O(NLW_gtOp_carry__0_O_UNCONNECTED[3:0]),
        .S({gtOp_carry__0_i_5_n_0,gtOp_carry__0_i_6_n_0,gtOp_carry__0_i_7_n_0,gtOp_carry__0_i_8_n_0}));
  LUT4 #(
    .INIT(16'h2F02)) 
    gtOp_carry__0_i_1
       (.I0(plusOp__0_n_91),
        .I1(plusOp__2_n_91),
        .I2(plusOp__2_n_90),
        .I3(plusOp__0_n_90),
        .O(gtOp_carry__0_i_1_n_0));
  LUT4 #(
    .INIT(16'h2F02)) 
    gtOp_carry__0_i_2
       (.I0(plusOp__0_n_93),
        .I1(plusOp__2_n_93),
        .I2(plusOp__2_n_92),
        .I3(plusOp__0_n_92),
        .O(gtOp_carry__0_i_2_n_0));
  LUT4 #(
    .INIT(16'h2F02)) 
    gtOp_carry__0_i_3
       (.I0(plusOp__0_n_95),
        .I1(plusOp__2_n_95),
        .I2(plusOp__2_n_94),
        .I3(plusOp__0_n_94),
        .O(gtOp_carry__0_i_3_n_0));
  LUT4 #(
    .INIT(16'h2F02)) 
    gtOp_carry__0_i_4
       (.I0(plusOp__0_n_97),
        .I1(plusOp__2_n_97),
        .I2(plusOp__2_n_96),
        .I3(plusOp__0_n_96),
        .O(gtOp_carry__0_i_4_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    gtOp_carry__0_i_5
       (.I0(plusOp__0_n_91),
        .I1(plusOp__2_n_91),
        .I2(plusOp__0_n_90),
        .I3(plusOp__2_n_90),
        .O(gtOp_carry__0_i_5_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    gtOp_carry__0_i_6
       (.I0(plusOp__0_n_93),
        .I1(plusOp__2_n_93),
        .I2(plusOp__0_n_92),
        .I3(plusOp__2_n_92),
        .O(gtOp_carry__0_i_6_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    gtOp_carry__0_i_7
       (.I0(plusOp__0_n_95),
        .I1(plusOp__2_n_95),
        .I2(plusOp__0_n_94),
        .I3(plusOp__2_n_94),
        .O(gtOp_carry__0_i_7_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    gtOp_carry__0_i_8
       (.I0(plusOp__0_n_97),
        .I1(plusOp__2_n_97),
        .I2(plusOp__0_n_96),
        .I3(plusOp__2_n_96),
        .O(gtOp_carry__0_i_8_n_0));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY4 gtOp_carry__1
       (.CI(gtOp_carry__0_n_0),
        .CO({gtOp_carry__1_n_0,gtOp_carry__1_n_1,gtOp_carry__1_n_2,gtOp_carry__1_n_3}),
        .CYINIT(1'b0),
        .DI({gtOp_carry__1_i_1_n_0,gtOp_carry__1_i_2_n_0,gtOp_carry__1_i_3_n_0,gtOp_carry__1_i_4_n_0}),
        .O(NLW_gtOp_carry__1_O_UNCONNECTED[3:0]),
        .S({gtOp_carry__1_i_5_n_0,gtOp_carry__1_i_6_n_0,gtOp_carry__1_i_7_n_0,gtOp_carry__1_i_8_n_0}));
  LUT4 #(
    .INIT(16'h2F02)) 
    gtOp_carry__1_i_1
       (.I0(plusOp__0_n_83),
        .I1(plusOp__2_n_83),
        .I2(plusOp__2_n_82),
        .I3(plusOp__0_n_82),
        .O(gtOp_carry__1_i_1_n_0));
  LUT4 #(
    .INIT(16'h2F02)) 
    gtOp_carry__1_i_2
       (.I0(plusOp__0_n_85),
        .I1(plusOp__2_n_85),
        .I2(plusOp__2_n_84),
        .I3(plusOp__0_n_84),
        .O(gtOp_carry__1_i_2_n_0));
  LUT4 #(
    .INIT(16'h2F02)) 
    gtOp_carry__1_i_3
       (.I0(plusOp__0_n_87),
        .I1(plusOp__2_n_87),
        .I2(plusOp__2_n_86),
        .I3(plusOp__0_n_86),
        .O(gtOp_carry__1_i_3_n_0));
  LUT4 #(
    .INIT(16'h2F02)) 
    gtOp_carry__1_i_4
       (.I0(plusOp__0_n_89),
        .I1(plusOp__2_n_89),
        .I2(plusOp__2_n_88),
        .I3(plusOp__0_n_88),
        .O(gtOp_carry__1_i_4_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    gtOp_carry__1_i_5
       (.I0(plusOp__0_n_83),
        .I1(plusOp__2_n_83),
        .I2(plusOp__0_n_82),
        .I3(plusOp__2_n_82),
        .O(gtOp_carry__1_i_5_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    gtOp_carry__1_i_6
       (.I0(plusOp__0_n_85),
        .I1(plusOp__2_n_85),
        .I2(plusOp__0_n_84),
        .I3(plusOp__2_n_84),
        .O(gtOp_carry__1_i_6_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    gtOp_carry__1_i_7
       (.I0(plusOp__0_n_87),
        .I1(plusOp__2_n_87),
        .I2(plusOp__0_n_86),
        .I3(plusOp__2_n_86),
        .O(gtOp_carry__1_i_7_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    gtOp_carry__1_i_8
       (.I0(plusOp__0_n_89),
        .I1(plusOp__2_n_89),
        .I2(plusOp__0_n_88),
        .I3(plusOp__2_n_88),
        .O(gtOp_carry__1_i_8_n_0));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY4 gtOp_carry__2
       (.CI(gtOp_carry__1_n_0),
        .CO({NLW_gtOp_carry__2_CO_UNCONNECTED[3:2],gtOp,gtOp_carry__2_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,gtOp_carry__2_i_1_n_0,gtOp_carry__2_i_2_n_0}),
        .O(NLW_gtOp_carry__2_O_UNCONNECTED[3:0]),
        .S({1'b0,1'b0,gtOp_carry__2_i_3_n_0,gtOp_carry__2_i_4_n_0}));
  LUT2 #(
    .INIT(4'h2)) 
    gtOp_carry__2_i_1
       (.I0(plusOp__0_n_79),
        .I1(plusOp__2_n_79),
        .O(gtOp_carry__2_i_1_n_0));
  LUT4 #(
    .INIT(16'h2F02)) 
    gtOp_carry__2_i_2
       (.I0(plusOp__0_n_81),
        .I1(plusOp__2_n_81),
        .I2(plusOp__2_n_80),
        .I3(plusOp__0_n_80),
        .O(gtOp_carry__2_i_2_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    gtOp_carry__2_i_3
       (.I0(plusOp__2_n_79),
        .I1(plusOp__0_n_79),
        .O(gtOp_carry__2_i_3_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    gtOp_carry__2_i_4
       (.I0(plusOp__0_n_81),
        .I1(plusOp__2_n_81),
        .I2(plusOp__0_n_80),
        .I3(plusOp__2_n_80),
        .O(gtOp_carry__2_i_4_n_0));
  LUT4 #(
    .INIT(16'h2F02)) 
    gtOp_carry_i_1
       (.I0(plusOp__0_n_99),
        .I1(plusOp__2_n_99),
        .I2(plusOp__2_n_98),
        .I3(plusOp__0_n_98),
        .O(gtOp_carry_i_1_n_0));
  LUT4 #(
    .INIT(16'h2F02)) 
    gtOp_carry_i_2
       (.I0(plusOp__0_n_101),
        .I1(plusOp__2_n_101),
        .I2(plusOp__2_n_100),
        .I3(plusOp__0_n_100),
        .O(gtOp_carry_i_2_n_0));
  LUT4 #(
    .INIT(16'h2F02)) 
    gtOp_carry_i_3
       (.I0(plusOp__0_n_103),
        .I1(plusOp__2_n_103),
        .I2(plusOp__2_n_102),
        .I3(plusOp__0_n_102),
        .O(gtOp_carry_i_3_n_0));
  LUT4 #(
    .INIT(16'h2F02)) 
    gtOp_carry_i_4
       (.I0(plusOp__0_n_105),
        .I1(plusOp__2_n_105),
        .I2(plusOp__2_n_104),
        .I3(plusOp__0_n_104),
        .O(gtOp_carry_i_4_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    gtOp_carry_i_5
       (.I0(plusOp__0_n_99),
        .I1(plusOp__2_n_99),
        .I2(plusOp__0_n_98),
        .I3(plusOp__2_n_98),
        .O(gtOp_carry_i_5_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    gtOp_carry_i_6
       (.I0(plusOp__0_n_101),
        .I1(plusOp__2_n_101),
        .I2(plusOp__0_n_100),
        .I3(plusOp__2_n_100),
        .O(gtOp_carry_i_6_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    gtOp_carry_i_7
       (.I0(plusOp__0_n_103),
        .I1(plusOp__2_n_103),
        .I2(plusOp__0_n_102),
        .I3(plusOp__2_n_102),
        .O(gtOp_carry_i_7_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    gtOp_carry_i_8
       (.I0(plusOp__0_n_105),
        .I1(plusOp__2_n_105),
        .I2(plusOp__0_n_104),
        .I3(plusOp__2_n_104),
        .O(gtOp_carry_i_8_n_0));
  LUT3 #(
    .INIT(8'h53)) 
    i__carry__0_i_1
       (.I0(plusOp__2_n_98),
        .I1(plusOp__0_n_98),
        .I2(gtOp),
        .O(i__carry__0_i_1_n_0));
  LUT3 #(
    .INIT(8'h53)) 
    i__carry__0_i_2
       (.I0(plusOp__2_n_99),
        .I1(plusOp__0_n_99),
        .I2(gtOp),
        .O(i__carry__0_i_2_n_0));
  LUT3 #(
    .INIT(8'h53)) 
    i__carry__0_i_3
       (.I0(plusOp__2_n_100),
        .I1(plusOp__0_n_100),
        .I2(gtOp),
        .O(i__carry__0_i_3_n_0));
  LUT3 #(
    .INIT(8'h53)) 
    i__carry__0_i_4
       (.I0(plusOp__2_n_101),
        .I1(plusOp__0_n_101),
        .I2(gtOp),
        .O(i__carry__0_i_4_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    i__carry__0_i_5
       (.I0(plusOp__2_n_98),
        .I1(plusOp__0_n_98),
        .O(i__carry__0_i_5_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    i__carry__0_i_6
       (.I0(plusOp__2_n_99),
        .I1(plusOp__0_n_99),
        .O(i__carry__0_i_6_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    i__carry__0_i_7
       (.I0(plusOp__2_n_100),
        .I1(plusOp__0_n_100),
        .O(i__carry__0_i_7_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    i__carry__0_i_8
       (.I0(plusOp__2_n_101),
        .I1(plusOp__0_n_101),
        .O(i__carry__0_i_8_n_0));
  LUT3 #(
    .INIT(8'h53)) 
    i__carry__1_i_1
       (.I0(plusOp__2_n_94),
        .I1(plusOp__0_n_94),
        .I2(gtOp),
        .O(i__carry__1_i_1_n_0));
  LUT3 #(
    .INIT(8'h53)) 
    i__carry__1_i_2
       (.I0(plusOp__2_n_95),
        .I1(plusOp__0_n_95),
        .I2(gtOp),
        .O(i__carry__1_i_2_n_0));
  LUT3 #(
    .INIT(8'h53)) 
    i__carry__1_i_3
       (.I0(plusOp__2_n_96),
        .I1(plusOp__0_n_96),
        .I2(gtOp),
        .O(i__carry__1_i_3_n_0));
  LUT3 #(
    .INIT(8'h53)) 
    i__carry__1_i_4
       (.I0(plusOp__2_n_97),
        .I1(plusOp__0_n_97),
        .I2(gtOp),
        .O(i__carry__1_i_4_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    i__carry__1_i_5
       (.I0(plusOp__2_n_94),
        .I1(plusOp__0_n_94),
        .O(i__carry__1_i_5_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    i__carry__1_i_6
       (.I0(plusOp__2_n_95),
        .I1(plusOp__0_n_95),
        .O(i__carry__1_i_6_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    i__carry__1_i_7
       (.I0(plusOp__2_n_96),
        .I1(plusOp__0_n_96),
        .O(i__carry__1_i_7_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    i__carry__1_i_8
       (.I0(plusOp__2_n_97),
        .I1(plusOp__0_n_97),
        .O(i__carry__1_i_8_n_0));
  LUT3 #(
    .INIT(8'h53)) 
    i__carry__2_i_1
       (.I0(plusOp__2_n_91),
        .I1(plusOp__0_n_91),
        .I2(gtOp),
        .O(i__carry__2_i_1_n_0));
  LUT3 #(
    .INIT(8'h53)) 
    i__carry__2_i_2
       (.I0(plusOp__2_n_92),
        .I1(plusOp__0_n_92),
        .I2(gtOp),
        .O(i__carry__2_i_2_n_0));
  LUT3 #(
    .INIT(8'h53)) 
    i__carry__2_i_3
       (.I0(plusOp__2_n_93),
        .I1(plusOp__0_n_93),
        .I2(gtOp),
        .O(i__carry__2_i_3_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    i__carry__2_i_4
       (.I0(plusOp__2_n_90),
        .I1(plusOp__0_n_90),
        .O(i__carry__2_i_4_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    i__carry__2_i_5
       (.I0(plusOp__2_n_91),
        .I1(plusOp__0_n_91),
        .O(i__carry__2_i_5_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    i__carry__2_i_6
       (.I0(plusOp__2_n_92),
        .I1(plusOp__0_n_92),
        .O(i__carry__2_i_6_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    i__carry__2_i_7
       (.I0(plusOp__2_n_93),
        .I1(plusOp__0_n_93),
        .O(i__carry__2_i_7_n_0));
  LUT3 #(
    .INIT(8'h53)) 
    i__carry_i_1
       (.I0(plusOp__2_n_102),
        .I1(plusOp__0_n_102),
        .I2(gtOp),
        .O(i__carry_i_1_n_0));
  LUT3 #(
    .INIT(8'h53)) 
    i__carry_i_2
       (.I0(plusOp__2_n_103),
        .I1(plusOp__0_n_103),
        .I2(gtOp),
        .O(i__carry_i_2_n_0));
  LUT3 #(
    .INIT(8'h53)) 
    i__carry_i_3
       (.I0(plusOp__2_n_104),
        .I1(plusOp__0_n_104),
        .I2(gtOp),
        .O(i__carry_i_3_n_0));
  LUT3 #(
    .INIT(8'h53)) 
    i__carry_i_4
       (.I0(plusOp__2_n_105),
        .I1(plusOp__0_n_105),
        .I2(gtOp),
        .O(i__carry_i_4_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    i__carry_i_5
       (.I0(plusOp__2_n_102),
        .I1(plusOp__0_n_102),
        .O(i__carry_i_5_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    i__carry_i_6
       (.I0(plusOp__2_n_103),
        .I1(plusOp__0_n_103),
        .O(i__carry_i_6_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    i__carry_i_7
       (.I0(plusOp__2_n_104),
        .I1(plusOp__0_n_104),
        .O(i__carry_i_7_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    i__carry_i_8
       (.I0(plusOp__2_n_105),
        .I1(plusOp__0_n_105),
        .O(i__carry_i_8_n_0));
  DSP48E1 #(
    .ACASCREG(1),
    .ADREG(1),
    .ALUMODEREG(0),
    .AREG(1),
    .AUTORESET_PATDET("NO_RESET"),
    .A_INPUT("DIRECT"),
    .BCASCREG(0),
    .BREG(0),
    .B_INPUT("DIRECT"),
    .CARRYINREG(0),
    .CARRYINSELREG(0),
    .CREG(1),
    .DREG(1),
    .INMODEREG(0),
    .MASK(48'h3FFFFFFFFFFF),
    .MREG(1),
    .OPMODEREG(0),
    .PATTERN(48'h000000000000),
    .PREG(0),
    .SEL_MASK("MASK"),
    .SEL_PATTERN("PATTERN"),
    .USE_DPORT("FALSE"),
    .USE_MULT("MULTIPLY"),
    .USE_PATTERN_DETECT("NO_PATDET"),
    .USE_SIMD("ONE48")) 
    plusOp
       (.A({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,ADC_data_i}),
        .ACIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .ACOUT(NLW_plusOp_ACOUT_UNCONNECTED[29:0]),
        .ALUMODE({1'b0,1'b0,1'b0,1'b0}),
        .B({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,cf_1_i}),
        .BCIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .BCOUT(NLW_plusOp_BCOUT_UNCONNECTED[17:0]),
        .C({1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1}),
        .CARRYCASCIN(1'b0),
        .CARRYCASCOUT(NLW_plusOp_CARRYCASCOUT_UNCONNECTED),
        .CARRYIN(1'b0),
        .CARRYINSEL({1'b0,1'b0,1'b0}),
        .CARRYOUT(NLW_plusOp_CARRYOUT_UNCONNECTED[3:0]),
        .CEA1(1'b0),
        .CEA2(valid_ena),
        .CEAD(1'b0),
        .CEALUMODE(1'b0),
        .CEB1(1'b0),
        .CEB2(1'b0),
        .CEC(1'b0),
        .CECARRYIN(1'b0),
        .CECTRL(1'b0),
        .CED(1'b0),
        .CEINMODE(1'b0),
        .CEM(d3_reg_i_1_n_0),
        .CEP(1'b0),
        .CLK(clk_i),
        .D({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .INMODE({1'b0,1'b0,1'b0,1'b0,1'b0}),
        .MULTSIGNIN(1'b0),
        .MULTSIGNOUT(NLW_plusOp_MULTSIGNOUT_UNCONNECTED),
        .OPMODE({1'b0,1'b0,1'b1,1'b0,1'b1,1'b0,1'b1}),
        .OVERFLOW(NLW_plusOp_OVERFLOW_UNCONNECTED),
        .P({NLW_plusOp_P_UNCONNECTED[47:27],plusOp_n_79,plusOp_n_80,plusOp_n_81,plusOp_n_82,plusOp_n_83,plusOp_n_84,plusOp_n_85,plusOp_n_86,plusOp_n_87,plusOp_n_88,plusOp_n_89,plusOp_n_90,plusOp_n_91,plusOp_n_92,plusOp_n_93,plusOp_n_94,plusOp_n_95,plusOp_n_96,plusOp_n_97,plusOp_n_98,plusOp_n_99,plusOp_n_100,plusOp_n_101,plusOp_n_102,plusOp_n_103,plusOp_n_104,plusOp_n_105}),
        .PATTERNBDETECT(NLW_plusOp_PATTERNBDETECT_UNCONNECTED),
        .PATTERNDETECT(NLW_plusOp_PATTERNDETECT_UNCONNECTED),
        .PCIN({d3_reg_n_106,d3_reg_n_107,d3_reg_n_108,d3_reg_n_109,d3_reg_n_110,d3_reg_n_111,d3_reg_n_112,d3_reg_n_113,d3_reg_n_114,d3_reg_n_115,d3_reg_n_116,d3_reg_n_117,d3_reg_n_118,d3_reg_n_119,d3_reg_n_120,d3_reg_n_121,d3_reg_n_122,d3_reg_n_123,d3_reg_n_124,d3_reg_n_125,d3_reg_n_126,d3_reg_n_127,d3_reg_n_128,d3_reg_n_129,d3_reg_n_130,d3_reg_n_131,d3_reg_n_132,d3_reg_n_133,d3_reg_n_134,d3_reg_n_135,d3_reg_n_136,d3_reg_n_137,d3_reg_n_138,d3_reg_n_139,d3_reg_n_140,d3_reg_n_141,d3_reg_n_142,d3_reg_n_143,d3_reg_n_144,d3_reg_n_145,d3_reg_n_146,d3_reg_n_147,d3_reg_n_148,d3_reg_n_149,d3_reg_n_150,d3_reg_n_151,d3_reg_n_152,d3_reg_n_153}),
        .PCOUT({plusOp_n_106,plusOp_n_107,plusOp_n_108,plusOp_n_109,plusOp_n_110,plusOp_n_111,plusOp_n_112,plusOp_n_113,plusOp_n_114,plusOp_n_115,plusOp_n_116,plusOp_n_117,plusOp_n_118,plusOp_n_119,plusOp_n_120,plusOp_n_121,plusOp_n_122,plusOp_n_123,plusOp_n_124,plusOp_n_125,plusOp_n_126,plusOp_n_127,plusOp_n_128,plusOp_n_129,plusOp_n_130,plusOp_n_131,plusOp_n_132,plusOp_n_133,plusOp_n_134,plusOp_n_135,plusOp_n_136,plusOp_n_137,plusOp_n_138,plusOp_n_139,plusOp_n_140,plusOp_n_141,plusOp_n_142,plusOp_n_143,plusOp_n_144,plusOp_n_145,plusOp_n_146,plusOp_n_147,plusOp_n_148,plusOp_n_149,plusOp_n_150,plusOp_n_151,plusOp_n_152,plusOp_n_153}),
        .RSTA(rst_i),
        .RSTALLCARRYIN(1'b0),
        .RSTALUMODE(1'b0),
        .RSTB(1'b0),
        .RSTC(1'b0),
        .RSTCTRL(1'b0),
        .RSTD(1'b0),
        .RSTINMODE(1'b0),
        .RSTM(1'b0),
        .RSTP(1'b0),
        .UNDERFLOW(NLW_plusOp_UNDERFLOW_UNCONNECTED));
  DSP48E1 #(
    .ACASCREG(2),
    .ADREG(1),
    .ALUMODEREG(0),
    .AREG(2),
    .AUTORESET_PATDET("NO_RESET"),
    .A_INPUT("DIRECT"),
    .BCASCREG(0),
    .BREG(0),
    .B_INPUT("DIRECT"),
    .CARRYINREG(0),
    .CARRYINSELREG(0),
    .CREG(1),
    .DREG(1),
    .INMODEREG(0),
    .MASK(48'h3FFFFFFFFFFF),
    .MREG(1),
    .OPMODEREG(0),
    .PATTERN(48'h000000000000),
    .PREG(0),
    .SEL_MASK("MASK"),
    .SEL_PATTERN("PATTERN"),
    .USE_DPORT("FALSE"),
    .USE_MULT("MULTIPLY"),
    .USE_PATTERN_DETECT("NO_PATDET"),
    .USE_SIMD("ONE48")) 
    plusOp__0
       (.A({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,ADC_data_i}),
        .ACIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .ACOUT(NLW_plusOp__0_ACOUT_UNCONNECTED[29:0]),
        .ALUMODE({1'b0,1'b0,1'b0,1'b0}),
        .B({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,cf_2_i}),
        .BCIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .BCOUT(NLW_plusOp__0_BCOUT_UNCONNECTED[17:0]),
        .C({1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1}),
        .CARRYCASCIN(1'b0),
        .CARRYCASCOUT(NLW_plusOp__0_CARRYCASCOUT_UNCONNECTED),
        .CARRYIN(1'b0),
        .CARRYINSEL({1'b0,1'b0,1'b0}),
        .CARRYOUT(NLW_plusOp__0_CARRYOUT_UNCONNECTED[3:0]),
        .CEA1(valid_ena),
        .CEA2(valid_ena),
        .CEAD(1'b0),
        .CEALUMODE(1'b0),
        .CEB1(1'b0),
        .CEB2(1'b0),
        .CEC(1'b0),
        .CECARRYIN(1'b0),
        .CECTRL(1'b0),
        .CED(1'b0),
        .CEINMODE(1'b0),
        .CEM(d3_reg_i_1_n_0),
        .CEP(1'b0),
        .CLK(clk_i),
        .D({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .INMODE({1'b0,1'b0,1'b0,1'b0,1'b0}),
        .MULTSIGNIN(1'b0),
        .MULTSIGNOUT(NLW_plusOp__0_MULTSIGNOUT_UNCONNECTED),
        .OPMODE({1'b0,1'b0,1'b1,1'b0,1'b1,1'b0,1'b1}),
        .OVERFLOW(NLW_plusOp__0_OVERFLOW_UNCONNECTED),
        .P({NLW_plusOp__0_P_UNCONNECTED[47:27],plusOp__0_n_79,plusOp__0_n_80,plusOp__0_n_81,plusOp__0_n_82,plusOp__0_n_83,plusOp__0_n_84,plusOp__0_n_85,plusOp__0_n_86,plusOp__0_n_87,plusOp__0_n_88,plusOp__0_n_89,plusOp__0_n_90,plusOp__0_n_91,plusOp__0_n_92,plusOp__0_n_93,plusOp__0_n_94,plusOp__0_n_95,plusOp__0_n_96,plusOp__0_n_97,plusOp__0_n_98,plusOp__0_n_99,plusOp__0_n_100,plusOp__0_n_101,plusOp__0_n_102,plusOp__0_n_103,plusOp__0_n_104,plusOp__0_n_105}),
        .PATTERNBDETECT(NLW_plusOp__0_PATTERNBDETECT_UNCONNECTED),
        .PATTERNDETECT(NLW_plusOp__0_PATTERNDETECT_UNCONNECTED),
        .PCIN({plusOp_n_106,plusOp_n_107,plusOp_n_108,plusOp_n_109,plusOp_n_110,plusOp_n_111,plusOp_n_112,plusOp_n_113,plusOp_n_114,plusOp_n_115,plusOp_n_116,plusOp_n_117,plusOp_n_118,plusOp_n_119,plusOp_n_120,plusOp_n_121,plusOp_n_122,plusOp_n_123,plusOp_n_124,plusOp_n_125,plusOp_n_126,plusOp_n_127,plusOp_n_128,plusOp_n_129,plusOp_n_130,plusOp_n_131,plusOp_n_132,plusOp_n_133,plusOp_n_134,plusOp_n_135,plusOp_n_136,plusOp_n_137,plusOp_n_138,plusOp_n_139,plusOp_n_140,plusOp_n_141,plusOp_n_142,plusOp_n_143,plusOp_n_144,plusOp_n_145,plusOp_n_146,plusOp_n_147,plusOp_n_148,plusOp_n_149,plusOp_n_150,plusOp_n_151,plusOp_n_152,plusOp_n_153}),
        .PCOUT(NLW_plusOp__0_PCOUT_UNCONNECTED[47:0]),
        .RSTA(rst_i),
        .RSTALLCARRYIN(1'b0),
        .RSTALUMODE(1'b0),
        .RSTB(1'b0),
        .RSTC(1'b0),
        .RSTCTRL(1'b0),
        .RSTD(1'b0),
        .RSTINMODE(1'b0),
        .RSTM(1'b0),
        .RSTP(1'b0),
        .UNDERFLOW(NLW_plusOp__0_UNDERFLOW_UNCONNECTED));
  DSP48E1 #(
    .ACASCREG(1),
    .ADREG(1),
    .ALUMODEREG(0),
    .AREG(2),
    .AUTORESET_PATDET("NO_RESET"),
    .A_INPUT("DIRECT"),
    .BCASCREG(0),
    .BREG(0),
    .B_INPUT("DIRECT"),
    .CARRYINREG(0),
    .CARRYINSELREG(0),
    .CREG(1),
    .DREG(1),
    .INMODEREG(0),
    .MASK(48'h3FFFFFFFFFFF),
    .MREG(1),
    .OPMODEREG(0),
    .PATTERN(48'h000000000000),
    .PREG(0),
    .SEL_MASK("MASK"),
    .SEL_PATTERN("PATTERN"),
    .USE_DPORT("FALSE"),
    .USE_MULT("MULTIPLY"),
    .USE_PATTERN_DETECT("NO_PATDET"),
    .USE_SIMD("ONE48")) 
    plusOp__1
       (.A({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,din_2}),
        .ACIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .ACOUT({plusOp__1_n_24,plusOp__1_n_25,plusOp__1_n_26,plusOp__1_n_27,plusOp__1_n_28,plusOp__1_n_29,plusOp__1_n_30,plusOp__1_n_31,plusOp__1_n_32,plusOp__1_n_33,plusOp__1_n_34,plusOp__1_n_35,plusOp__1_n_36,plusOp__1_n_37,plusOp__1_n_38,plusOp__1_n_39,plusOp__1_n_40,plusOp__1_n_41,plusOp__1_n_42,plusOp__1_n_43,plusOp__1_n_44,plusOp__1_n_45,plusOp__1_n_46,plusOp__1_n_47,plusOp__1_n_48,plusOp__1_n_49,plusOp__1_n_50,plusOp__1_n_51,plusOp__1_n_52,plusOp__1_n_53}),
        .ALUMODE({1'b0,1'b0,1'b0,1'b0}),
        .B({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,cf_3_i}),
        .BCIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .BCOUT(NLW_plusOp__1_BCOUT_UNCONNECTED[17:0]),
        .C({1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1}),
        .CARRYCASCIN(1'b0),
        .CARRYCASCOUT(NLW_plusOp__1_CARRYCASCOUT_UNCONNECTED),
        .CARRYIN(1'b0),
        .CARRYINSEL({1'b0,1'b0,1'b0}),
        .CARRYOUT(NLW_plusOp__1_CARRYOUT_UNCONNECTED[3:0]),
        .CEA1(valid_ena),
        .CEA2(valid_ena),
        .CEAD(1'b0),
        .CEALUMODE(1'b0),
        .CEB1(1'b0),
        .CEB2(1'b0),
        .CEC(1'b0),
        .CECARRYIN(1'b0),
        .CECTRL(1'b0),
        .CED(1'b0),
        .CEINMODE(1'b0),
        .CEM(d3_reg_i_1_n_0),
        .CEP(1'b0),
        .CLK(clk_i),
        .D({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .INMODE({1'b0,1'b0,1'b0,1'b0,1'b0}),
        .MULTSIGNIN(1'b0),
        .MULTSIGNOUT(NLW_plusOp__1_MULTSIGNOUT_UNCONNECTED),
        .OPMODE({1'b0,1'b0,1'b1,1'b0,1'b1,1'b0,1'b1}),
        .OVERFLOW(NLW_plusOp__1_OVERFLOW_UNCONNECTED),
        .P(NLW_plusOp__1_P_UNCONNECTED[47:0]),
        .PATTERNBDETECT(NLW_plusOp__1_PATTERNBDETECT_UNCONNECTED),
        .PATTERNDETECT(NLW_plusOp__1_PATTERNDETECT_UNCONNECTED),
        .PCIN({d6_reg_n_106,d6_reg_n_107,d6_reg_n_108,d6_reg_n_109,d6_reg_n_110,d6_reg_n_111,d6_reg_n_112,d6_reg_n_113,d6_reg_n_114,d6_reg_n_115,d6_reg_n_116,d6_reg_n_117,d6_reg_n_118,d6_reg_n_119,d6_reg_n_120,d6_reg_n_121,d6_reg_n_122,d6_reg_n_123,d6_reg_n_124,d6_reg_n_125,d6_reg_n_126,d6_reg_n_127,d6_reg_n_128,d6_reg_n_129,d6_reg_n_130,d6_reg_n_131,d6_reg_n_132,d6_reg_n_133,d6_reg_n_134,d6_reg_n_135,d6_reg_n_136,d6_reg_n_137,d6_reg_n_138,d6_reg_n_139,d6_reg_n_140,d6_reg_n_141,d6_reg_n_142,d6_reg_n_143,d6_reg_n_144,d6_reg_n_145,d6_reg_n_146,d6_reg_n_147,d6_reg_n_148,d6_reg_n_149,d6_reg_n_150,d6_reg_n_151,d6_reg_n_152,d6_reg_n_153}),
        .PCOUT({plusOp__1_n_106,plusOp__1_n_107,plusOp__1_n_108,plusOp__1_n_109,plusOp__1_n_110,plusOp__1_n_111,plusOp__1_n_112,plusOp__1_n_113,plusOp__1_n_114,plusOp__1_n_115,plusOp__1_n_116,plusOp__1_n_117,plusOp__1_n_118,plusOp__1_n_119,plusOp__1_n_120,plusOp__1_n_121,plusOp__1_n_122,plusOp__1_n_123,plusOp__1_n_124,plusOp__1_n_125,plusOp__1_n_126,plusOp__1_n_127,plusOp__1_n_128,plusOp__1_n_129,plusOp__1_n_130,plusOp__1_n_131,plusOp__1_n_132,plusOp__1_n_133,plusOp__1_n_134,plusOp__1_n_135,plusOp__1_n_136,plusOp__1_n_137,plusOp__1_n_138,plusOp__1_n_139,plusOp__1_n_140,plusOp__1_n_141,plusOp__1_n_142,plusOp__1_n_143,plusOp__1_n_144,plusOp__1_n_145,plusOp__1_n_146,plusOp__1_n_147,plusOp__1_n_148,plusOp__1_n_149,plusOp__1_n_150,plusOp__1_n_151,plusOp__1_n_152,plusOp__1_n_153}),
        .RSTA(rst_i),
        .RSTALLCARRYIN(1'b0),
        .RSTALUMODE(1'b0),
        .RSTB(1'b0),
        .RSTC(1'b0),
        .RSTCTRL(1'b0),
        .RSTD(1'b0),
        .RSTINMODE(1'b0),
        .RSTM(1'b0),
        .RSTP(1'b0),
        .UNDERFLOW(NLW_plusOp__1_UNDERFLOW_UNCONNECTED));
  DSP48E1 #(
    .ACASCREG(2),
    .ADREG(1),
    .ALUMODEREG(0),
    .AREG(2),
    .AUTORESET_PATDET("NO_RESET"),
    .A_INPUT("CASCADE"),
    .BCASCREG(0),
    .BREG(0),
    .B_INPUT("DIRECT"),
    .CARRYINREG(0),
    .CARRYINSELREG(0),
    .CREG(1),
    .DREG(1),
    .INMODEREG(0),
    .MASK(48'h3FFFFFFFFFFF),
    .MREG(1),
    .OPMODEREG(0),
    .PATTERN(48'h000000000000),
    .PREG(0),
    .SEL_MASK("MASK"),
    .SEL_PATTERN("PATTERN"),
    .USE_DPORT("FALSE"),
    .USE_MULT("MULTIPLY"),
    .USE_PATTERN_DETECT("NO_PATDET"),
    .USE_SIMD("ONE48")) 
    plusOp__2
       (.A({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .ACIN({plusOp__1_n_24,plusOp__1_n_25,plusOp__1_n_26,plusOp__1_n_27,plusOp__1_n_28,plusOp__1_n_29,plusOp__1_n_30,plusOp__1_n_31,plusOp__1_n_32,plusOp__1_n_33,plusOp__1_n_34,plusOp__1_n_35,plusOp__1_n_36,plusOp__1_n_37,plusOp__1_n_38,plusOp__1_n_39,plusOp__1_n_40,plusOp__1_n_41,plusOp__1_n_42,plusOp__1_n_43,plusOp__1_n_44,plusOp__1_n_45,plusOp__1_n_46,plusOp__1_n_47,plusOp__1_n_48,plusOp__1_n_49,plusOp__1_n_50,plusOp__1_n_51,plusOp__1_n_52,plusOp__1_n_53}),
        .ACOUT(NLW_plusOp__2_ACOUT_UNCONNECTED[29:0]),
        .ALUMODE({1'b0,1'b0,1'b0,1'b0}),
        .B({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,cf_2_i}),
        .BCIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .BCOUT(NLW_plusOp__2_BCOUT_UNCONNECTED[17:0]),
        .C({1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1}),
        .CARRYCASCIN(1'b0),
        .CARRYCASCOUT(NLW_plusOp__2_CARRYCASCOUT_UNCONNECTED),
        .CARRYIN(1'b0),
        .CARRYINSEL({1'b0,1'b0,1'b0}),
        .CARRYOUT(NLW_plusOp__2_CARRYOUT_UNCONNECTED[3:0]),
        .CEA1(valid_ena),
        .CEA2(valid_ena),
        .CEAD(1'b0),
        .CEALUMODE(1'b0),
        .CEB1(1'b0),
        .CEB2(1'b0),
        .CEC(1'b0),
        .CECARRYIN(1'b0),
        .CECTRL(1'b0),
        .CED(1'b0),
        .CEINMODE(1'b0),
        .CEM(d3_reg_i_1_n_0),
        .CEP(1'b0),
        .CLK(clk_i),
        .D({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .INMODE({1'b0,1'b0,1'b0,1'b0,1'b0}),
        .MULTSIGNIN(1'b0),
        .MULTSIGNOUT(NLW_plusOp__2_MULTSIGNOUT_UNCONNECTED),
        .OPMODE({1'b0,1'b0,1'b1,1'b0,1'b1,1'b0,1'b1}),
        .OVERFLOW(NLW_plusOp__2_OVERFLOW_UNCONNECTED),
        .P({NLW_plusOp__2_P_UNCONNECTED[47:27],plusOp__2_n_79,plusOp__2_n_80,plusOp__2_n_81,plusOp__2_n_82,plusOp__2_n_83,plusOp__2_n_84,plusOp__2_n_85,plusOp__2_n_86,plusOp__2_n_87,plusOp__2_n_88,plusOp__2_n_89,plusOp__2_n_90,plusOp__2_n_91,plusOp__2_n_92,plusOp__2_n_93,plusOp__2_n_94,plusOp__2_n_95,plusOp__2_n_96,plusOp__2_n_97,plusOp__2_n_98,plusOp__2_n_99,plusOp__2_n_100,plusOp__2_n_101,plusOp__2_n_102,plusOp__2_n_103,plusOp__2_n_104,plusOp__2_n_105}),
        .PATTERNBDETECT(NLW_plusOp__2_PATTERNBDETECT_UNCONNECTED),
        .PATTERNDETECT(NLW_plusOp__2_PATTERNDETECT_UNCONNECTED),
        .PCIN({plusOp__1_n_106,plusOp__1_n_107,plusOp__1_n_108,plusOp__1_n_109,plusOp__1_n_110,plusOp__1_n_111,plusOp__1_n_112,plusOp__1_n_113,plusOp__1_n_114,plusOp__1_n_115,plusOp__1_n_116,plusOp__1_n_117,plusOp__1_n_118,plusOp__1_n_119,plusOp__1_n_120,plusOp__1_n_121,plusOp__1_n_122,plusOp__1_n_123,plusOp__1_n_124,plusOp__1_n_125,plusOp__1_n_126,plusOp__1_n_127,plusOp__1_n_128,plusOp__1_n_129,plusOp__1_n_130,plusOp__1_n_131,plusOp__1_n_132,plusOp__1_n_133,plusOp__1_n_134,plusOp__1_n_135,plusOp__1_n_136,plusOp__1_n_137,plusOp__1_n_138,plusOp__1_n_139,plusOp__1_n_140,plusOp__1_n_141,plusOp__1_n_142,plusOp__1_n_143,plusOp__1_n_144,plusOp__1_n_145,plusOp__1_n_146,plusOp__1_n_147,plusOp__1_n_148,plusOp__1_n_149,plusOp__1_n_150,plusOp__1_n_151,plusOp__1_n_152,plusOp__1_n_153}),
        .PCOUT(NLW_plusOp__2_PCOUT_UNCONNECTED[47:0]),
        .RSTA(rst_i),
        .RSTALLCARRYIN(1'b0),
        .RSTALUMODE(1'b0),
        .RSTB(1'b0),
        .RSTC(1'b0),
        .RSTCTRL(1'b0),
        .RSTD(1'b0),
        .RSTINMODE(1'b0),
        .RSTM(1'b0),
        .RSTP(1'b0),
        .UNDERFLOW(NLW_plusOp__2_UNDERFLOW_UNCONNECTED));
endmodule

(* ORIG_REF_NAME = "long_FIR_DPP" *) 
module xrf_dpp_DPP_module_FIR_0_0_long_FIR_DPP
   (m_axis_data_tdata,
    clk_i,
    ADC_data_i,
    out,
    \FSM_sequential_state_r_reg[0]_0 ,
    rst_i);
  output [15:0]m_axis_data_tdata;
  input clk_i;
  input [15:0]ADC_data_i;
  input out;
  input \FSM_sequential_state_r_reg[0]_0 ;
  input rst_i;

  wire [15:0]ADC_data_i;
  wire \FSM_sequential_state_r[0]_i_1_n_0 ;
  wire \FSM_sequential_state_r[1]_i_1_n_0 ;
  wire \FSM_sequential_state_r_reg[0]_0 ;
  wire clk_i;
  wire [15:0]m_axis_data_tdata;
  wire m_tvalid;
  wire out;
  wire rst_i;
  wire s_tready;
  wire s_tvalid;
  wire s_tvalid__0;
  wire s_tvalid_reg_i_1_n_0;
  wire s_tvalid_reg_i_3_n_0;
  wire [1:0]state_r__0;

  (* syn_black_box = "TRUE" *) 
  (* x_core_info = "fir_compiler_v7_2_18,Vivado 2022.2" *) 
  xrf_dpp_DPP_module_FIR_0_0_fir_compiler_0 FIR_Amplitude
       (.aclk(clk_i),
        .m_axis_data_tdata(m_axis_data_tdata),
        .m_axis_data_tvalid(m_tvalid),
        .s_axis_data_tdata(ADC_data_i),
        .s_axis_data_tready(s_tready),
        .s_axis_data_tvalid(s_tvalid));
  LUT6 #(
    .INIT(64'hF878F078F8F8F0F8)) 
    \FSM_sequential_state_r[0]_i_1 
       (.I0(out),
        .I1(\FSM_sequential_state_r_reg[0]_0 ),
        .I2(state_r__0[0]),
        .I3(state_r__0[1]),
        .I4(m_tvalid),
        .I5(s_tready),
        .O(\FSM_sequential_state_r[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT5 #(
    .INIT(32'hFF80FF00)) 
    \FSM_sequential_state_r[1]_i_1 
       (.I0(out),
        .I1(\FSM_sequential_state_r_reg[0]_0 ),
        .I2(state_r__0[0]),
        .I3(state_r__0[1]),
        .I4(s_tready),
        .O(\FSM_sequential_state_r[1]_i_1_n_0 ));
  (* FSM_ENCODED_STATES = "ready_wait_st:01,valid_assert_st:10,reset_st:00,valid_data_st:11" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_sequential_state_r_reg[0] 
       (.C(clk_i),
        .CE(1'b1),
        .D(\FSM_sequential_state_r[0]_i_1_n_0 ),
        .Q(state_r__0[0]),
        .R(rst_i));
  (* FSM_ENCODED_STATES = "ready_wait_st:01,valid_assert_st:10,reset_st:00,valid_data_st:11" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_sequential_state_r_reg[1] 
       (.C(clk_i),
        .CE(1'b1),
        .D(\FSM_sequential_state_r[1]_i_1_n_0 ),
        .Q(state_r__0[1]),
        .R(rst_i));
  LDCP #(
    .INIT(1'b0)) 
    s_tvalid_reg
       (.CLR(s_tvalid__0),
        .D(1'b1),
        .G(s_tvalid_reg_i_1_n_0),
        .PRE(s_tvalid_reg_i_3_n_0),
        .Q(s_tvalid));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT2 #(
    .INIT(4'h8)) 
    s_tvalid_reg_i_1
       (.I0(state_r__0[0]),
        .I1(state_r__0[1]),
        .O(s_tvalid_reg_i_1_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    s_tvalid_reg_i_2
       (.I0(state_r__0[0]),
        .I1(state_r__0[1]),
        .O(s_tvalid__0));
  LUT2 #(
    .INIT(4'h6)) 
    s_tvalid_reg_i_3
       (.I0(state_r__0[0]),
        .I1(state_r__0[1]),
        .O(s_tvalid_reg_i_3_n_0));
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
