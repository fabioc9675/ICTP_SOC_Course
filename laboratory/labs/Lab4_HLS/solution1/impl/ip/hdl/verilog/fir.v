// ==============================================================
// RTL generated by Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2022.2 (64-bit)
// Version: 2022.2
// Copyright (C) Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

`timescale 1 ns / 1 ps 

(* CORE_GENERATION_INFO="fir_fir,hls_ip_2022_2,{HLS_INPUT_TYPE=cxx,HLS_INPUT_FLOAT=0,HLS_INPUT_FIXED=0,HLS_INPUT_PART=xc7z020-clg484-3,HLS_INPUT_CLOCK=10.000000,HLS_INPUT_ARCH=others,HLS_SYN_CLOCK=6.210000,HLS_SYN_LAT=189,HLS_SYN_TPT=none,HLS_SYN_MEM=1,HLS_SYN_DSP=0,HLS_SYN_FF=5993,HLS_SYN_LUT=1197,HLS_VERSION=2022_2}" *)

module fir (
        ap_clk,
        ap_rst_n,
        ap_start,
        ap_done,
        ap_idle,
        ap_ready,
        y_TDATA,
        y_TVALID,
        y_TREADY,
        x_TDATA,
        x_TVALID,
        x_TREADY
);

parameter    ap_ST_fsm_state1 = 5'd1;
parameter    ap_ST_fsm_state2 = 5'd2;
parameter    ap_ST_fsm_state3 = 5'd4;
parameter    ap_ST_fsm_state4 = 5'd8;
parameter    ap_ST_fsm_state5 = 5'd16;

input   ap_clk;
input   ap_rst_n;
input   ap_start;
output   ap_done;
output   ap_idle;
output   ap_ready;
output  [31:0] y_TDATA;
output   y_TVALID;
input   y_TREADY;
input  [31:0] x_TDATA;
input   x_TVALID;
output   x_TREADY;

reg ap_done;
reg ap_idle;
reg ap_ready;

 reg    ap_rst_n_inv;
(* fsm_encoding = "none" *) reg   [4:0] ap_CS_fsm;
wire    ap_CS_fsm_state1;
reg    y_TDATA_blk_n;
wire    ap_CS_fsm_state4;
wire    ap_CS_fsm_state5;
wire    grp_fir_Pipeline_Shift_Accum_Loop_fu_411_ap_start;
wire    grp_fir_Pipeline_Shift_Accum_Loop_fu_411_ap_done;
wire    grp_fir_Pipeline_Shift_Accum_Loop_fu_411_ap_idle;
wire    grp_fir_Pipeline_Shift_Accum_Loop_fu_411_ap_ready;
wire    grp_fir_Pipeline_Shift_Accum_Loop_fu_411_x_TREADY;
wire   [31:0] grp_fir_Pipeline_Shift_Accum_Loop_fu_411_acc_out;
wire    grp_fir_Pipeline_Shift_Accum_Loop_fu_411_acc_out_ap_vld;
reg    grp_fir_Pipeline_Shift_Accum_Loop_fu_411_ap_start_reg;
wire    ap_CS_fsm_state2;
wire    ap_CS_fsm_state3;
wire   [15:0] acc_1_fu_783_p4;
wire    regslice_both_y_U_apdone_blk;
reg    ap_block_state5;
reg   [4:0] ap_NS_fsm;
reg    ap_ST_fsm_state1_blk;
wire    ap_ST_fsm_state2_blk;
reg    ap_ST_fsm_state3_blk;
reg    ap_ST_fsm_state4_blk;
reg    ap_ST_fsm_state5_blk;
wire   [31:0] y_TDATA_int_regslice;
reg    y_TVALID_int_regslice;
wire    y_TREADY_int_regslice;
wire    regslice_both_y_U_vld_out;
wire    regslice_both_x_U_apdone_blk;
wire   [31:0] x_TDATA_int_regslice;
wire    x_TVALID_int_regslice;
reg    x_TREADY_int_regslice;
wire    regslice_both_x_U_ack_in;
wire    ap_ce_reg;

// power-on initialization
initial begin
#0 ap_CS_fsm = 5'd1;
#0 grp_fir_Pipeline_Shift_Accum_Loop_fu_411_ap_start_reg = 1'b0;
end

fir_fir_Pipeline_Shift_Accum_Loop grp_fir_Pipeline_Shift_Accum_Loop_fu_411(
    .ap_clk(ap_clk),
    .ap_rst(ap_rst_n_inv),
    .ap_start(grp_fir_Pipeline_Shift_Accum_Loop_fu_411_ap_start),
    .ap_done(grp_fir_Pipeline_Shift_Accum_Loop_fu_411_ap_done),
    .ap_idle(grp_fir_Pipeline_Shift_Accum_Loop_fu_411_ap_idle),
    .ap_ready(grp_fir_Pipeline_Shift_Accum_Loop_fu_411_ap_ready),
    .x_TVALID(x_TVALID_int_regslice),
    .x_TDATA(x_TDATA_int_regslice),
    .x_TREADY(grp_fir_Pipeline_Shift_Accum_Loop_fu_411_x_TREADY),
    .acc_out(grp_fir_Pipeline_Shift_Accum_Loop_fu_411_acc_out),
    .acc_out_ap_vld(grp_fir_Pipeline_Shift_Accum_Loop_fu_411_acc_out_ap_vld)
);

fir_regslice_both #(
    .DataWidth( 32 ))
regslice_both_y_U(
    .ap_clk(ap_clk),
    .ap_rst(ap_rst_n_inv),
    .data_in(y_TDATA_int_regslice),
    .vld_in(y_TVALID_int_regslice),
    .ack_in(y_TREADY_int_regslice),
    .data_out(y_TDATA),
    .vld_out(regslice_both_y_U_vld_out),
    .ack_out(y_TREADY),
    .apdone_blk(regslice_both_y_U_apdone_blk)
);

fir_regslice_both #(
    .DataWidth( 32 ))
regslice_both_x_U(
    .ap_clk(ap_clk),
    .ap_rst(ap_rst_n_inv),
    .data_in(x_TDATA),
    .vld_in(x_TVALID),
    .ack_in(regslice_both_x_U_ack_in),
    .data_out(x_TDATA_int_regslice),
    .vld_out(x_TVALID_int_regslice),
    .ack_out(x_TREADY_int_regslice),
    .apdone_blk(regslice_both_x_U_apdone_blk)
);

always @ (posedge ap_clk) begin
    if (ap_rst_n_inv == 1'b1) begin
        ap_CS_fsm <= ap_ST_fsm_state1;
    end else begin
        ap_CS_fsm <= ap_NS_fsm;
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst_n_inv == 1'b1) begin
        grp_fir_Pipeline_Shift_Accum_Loop_fu_411_ap_start_reg <= 1'b0;
    end else begin
        if ((1'b1 == ap_CS_fsm_state2)) begin
            grp_fir_Pipeline_Shift_Accum_Loop_fu_411_ap_start_reg <= 1'b1;
        end else if ((grp_fir_Pipeline_Shift_Accum_Loop_fu_411_ap_ready == 1'b1)) begin
            grp_fir_Pipeline_Shift_Accum_Loop_fu_411_ap_start_reg <= 1'b0;
        end
    end
end

always @ (*) begin
    if ((ap_start == 1'b0)) begin
        ap_ST_fsm_state1_blk = 1'b1;
    end else begin
        ap_ST_fsm_state1_blk = 1'b0;
    end
end

assign ap_ST_fsm_state2_blk = 1'b0;

always @ (*) begin
    if ((grp_fir_Pipeline_Shift_Accum_Loop_fu_411_ap_done == 1'b0)) begin
        ap_ST_fsm_state3_blk = 1'b1;
    end else begin
        ap_ST_fsm_state3_blk = 1'b0;
    end
end

always @ (*) begin
    if ((y_TREADY_int_regslice == 1'b0)) begin
        ap_ST_fsm_state4_blk = 1'b1;
    end else begin
        ap_ST_fsm_state4_blk = 1'b0;
    end
end

always @ (*) begin
    if (((y_TREADY_int_regslice == 1'b0) | (regslice_both_y_U_apdone_blk == 1'b1))) begin
        ap_ST_fsm_state5_blk = 1'b1;
    end else begin
        ap_ST_fsm_state5_blk = 1'b0;
    end
end

always @ (*) begin
    if ((~((y_TREADY_int_regslice == 1'b0) | (regslice_both_y_U_apdone_blk == 1'b1)) & (1'b1 == ap_CS_fsm_state5))) begin
        ap_done = 1'b1;
    end else begin
        ap_done = 1'b0;
    end
end

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state1) & (ap_start == 1'b0))) begin
        ap_idle = 1'b1;
    end else begin
        ap_idle = 1'b0;
    end
end

always @ (*) begin
    if ((~((y_TREADY_int_regslice == 1'b0) | (regslice_both_y_U_apdone_blk == 1'b1)) & (1'b1 == ap_CS_fsm_state5))) begin
        ap_ready = 1'b1;
    end else begin
        ap_ready = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state3)) begin
        x_TREADY_int_regslice = grp_fir_Pipeline_Shift_Accum_Loop_fu_411_x_TREADY;
    end else begin
        x_TREADY_int_regslice = 1'b0;
    end
end

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state5) | (1'b1 == ap_CS_fsm_state4))) begin
        y_TDATA_blk_n = y_TREADY_int_regslice;
    end else begin
        y_TDATA_blk_n = 1'b1;
    end
end

always @ (*) begin
    if (((y_TREADY_int_regslice == 1'b1) & (1'b1 == ap_CS_fsm_state4))) begin
        y_TVALID_int_regslice = 1'b1;
    end else begin
        y_TVALID_int_regslice = 1'b0;
    end
end

always @ (*) begin
    case (ap_CS_fsm)
        ap_ST_fsm_state1 : begin
            if (((1'b1 == ap_CS_fsm_state1) & (ap_start == 1'b1))) begin
                ap_NS_fsm = ap_ST_fsm_state2;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state1;
            end
        end
        ap_ST_fsm_state2 : begin
            ap_NS_fsm = ap_ST_fsm_state3;
        end
        ap_ST_fsm_state3 : begin
            if (((grp_fir_Pipeline_Shift_Accum_Loop_fu_411_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state3))) begin
                ap_NS_fsm = ap_ST_fsm_state4;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state3;
            end
        end
        ap_ST_fsm_state4 : begin
            if (((y_TREADY_int_regslice == 1'b1) & (1'b1 == ap_CS_fsm_state4))) begin
                ap_NS_fsm = ap_ST_fsm_state5;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state4;
            end
        end
        ap_ST_fsm_state5 : begin
            if ((~((y_TREADY_int_regslice == 1'b0) | (regslice_both_y_U_apdone_blk == 1'b1)) & (1'b1 == ap_CS_fsm_state5))) begin
                ap_NS_fsm = ap_ST_fsm_state1;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state5;
            end
        end
        default : begin
            ap_NS_fsm = 'bx;
        end
    endcase
end

assign acc_1_fu_783_p4 = {{grp_fir_Pipeline_Shift_Accum_Loop_fu_411_acc_out[31:16]}};

assign ap_CS_fsm_state1 = ap_CS_fsm[32'd0];

assign ap_CS_fsm_state2 = ap_CS_fsm[32'd1];

assign ap_CS_fsm_state3 = ap_CS_fsm[32'd2];

assign ap_CS_fsm_state4 = ap_CS_fsm[32'd3];

assign ap_CS_fsm_state5 = ap_CS_fsm[32'd4];

always @ (*) begin
    ap_block_state5 = ((y_TREADY_int_regslice == 1'b0) | (regslice_both_y_U_apdone_blk == 1'b1));
end

always @ (*) begin
    ap_rst_n_inv = ~ap_rst_n;
end

assign grp_fir_Pipeline_Shift_Accum_Loop_fu_411_ap_start = grp_fir_Pipeline_Shift_Accum_Loop_fu_411_ap_start_reg;

assign x_TREADY = regslice_both_x_U_ack_in;

assign y_TDATA_int_regslice = $signed(acc_1_fu_783_p4);

assign y_TVALID = regslice_both_y_U_vld_out;


reg find_kernel_block = 0;
// synthesis translate_off
`include "fir_hls_deadlock_kernel_monitor_top.vh"
// synthesis translate_on

endmodule //fir

