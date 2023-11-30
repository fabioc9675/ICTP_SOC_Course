// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2022.2 (lin64) Build 3671981 Fri Oct 14 04:59:54 MDT 2022
// Date        : Thu Nov 30 17:25:12 2023
// Host        : node07 running 64-bit CentOS Linux release 7.4.1708 (Core)
// Command     : write_verilog -force -mode synth_stub
//               /home/argo49/smr3891/labs/project2_xrf/project2_xrf.gen/sources_1/bd/xrf_dpp/ip/xrf_dpp_comblock_0_0/xrf_dpp_comblock_0_0_stub.v
// Design      : xrf_dpp_comblock_0_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7z020clg484-1
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* x_core_info = "axi_comblock,Vivado 2022.2" *)
module xrf_dpp_comblock_0_0(reg0_i, reg1_i, reg2_i, reg3_i, reg0_o, reg1_o, 
  reg2_o, reg3_o, reg4_o, reg5_o, reg6_o, reg7_o, ram_clk_i, ram_we_i, ram_addr_i, ram_data_i, 
  ram_data_o, fifo_clk_i, fifo_clear_i, fifo_we_i, fifo_data_i, fifo_full_o, fifo_afull_o, 
  fifo_overflow_o, fifo_re_i, fifo_data_o, fifo_valid_o, fifo_empty_o, fifo_aempty_o, 
  fifo_underflow_o, axil_aclk, axil_aresetn, axil_awaddr, axil_awprot, axil_awvalid, 
  axil_awready, axil_wdata, axil_wstrb, axil_wvalid, axil_wready, axil_bresp, axil_bvalid, 
  axil_bready, axil_araddr, axil_arprot, axil_arvalid, axil_arready, axil_rdata, axil_rresp, 
  axil_rvalid, axil_rready, axif_aclk, axif_aresetn, axif_awaddr, axif_awlen, axif_awsize, 
  axif_awburst, axif_awlock, axif_awcache, axif_awprot, axif_awqos, axif_awregion, axif_awuser, 
  axif_awvalid, axif_awready, axif_wdata, axif_wstrb, axif_wlast, axif_wuser, axif_wvalid, 
  axif_wready, axif_bresp, axif_buser, axif_bvalid, axif_bready, axif_araddr, axif_arlen, 
  axif_arsize, axif_arburst, axif_arlock, axif_arcache, axif_arprot, axif_arqos, axif_arregion, 
  axif_aruser, axif_arvalid, axif_arready, axif_rdata, axif_rresp, axif_rlast, axif_ruser, 
  axif_rvalid, axif_rready)
/* synthesis syn_black_box black_box_pad_pin="reg0_i[31:0],reg1_i[31:0],reg2_i[31:0],reg3_i[31:0],reg0_o[15:0],reg1_o[15:0],reg2_o[15:0],reg3_o[15:0],reg4_o[15:0],reg5_o[15:0],reg6_o[15:0],reg7_o[15:0],ram_clk_i,ram_we_i,ram_addr_i[15:0],ram_data_i[15:0],ram_data_o[15:0],fifo_clk_i,fifo_clear_i,fifo_we_i,fifo_data_i[15:0],fifo_full_o,fifo_afull_o,fifo_overflow_o,fifo_re_i,fifo_data_o[15:0],fifo_valid_o,fifo_empty_o,fifo_aempty_o,fifo_underflow_o,axil_aclk,axil_aresetn,axil_awaddr[7:0],axil_awprot[2:0],axil_awvalid,axil_awready,axil_wdata[31:0],axil_wstrb[3:0],axil_wvalid,axil_wready,axil_bresp[1:0],axil_bvalid,axil_bready,axil_araddr[7:0],axil_arprot[2:0],axil_arvalid,axil_arready,axil_rdata[31:0],axil_rresp[1:0],axil_rvalid,axil_rready,axif_aclk,axif_aresetn,axif_awaddr[17:0],axif_awlen[7:0],axif_awsize[2:0],axif_awburst[1:0],axif_awlock,axif_awcache[3:0],axif_awprot[2:0],axif_awqos[3:0],axif_awregion[3:0],axif_awuser[0:0],axif_awvalid,axif_awready,axif_wdata[31:0],axif_wstrb[3:0],axif_wlast,axif_wuser[0:0],axif_wvalid,axif_wready,axif_bresp[1:0],axif_buser[0:0],axif_bvalid,axif_bready,axif_araddr[17:0],axif_arlen[7:0],axif_arsize[2:0],axif_arburst[1:0],axif_arlock,axif_arcache[3:0],axif_arprot[2:0],axif_arqos[3:0],axif_arregion[3:0],axif_aruser[0:0],axif_arvalid,axif_arready,axif_rdata[31:0],axif_rresp[1:0],axif_rlast,axif_ruser[0:0],axif_rvalid,axif_rready" */;
  input [31:0]reg0_i;
  input [31:0]reg1_i;
  input [31:0]reg2_i;
  input [31:0]reg3_i;
  output [15:0]reg0_o;
  output [15:0]reg1_o;
  output [15:0]reg2_o;
  output [15:0]reg3_o;
  output [15:0]reg4_o;
  output [15:0]reg5_o;
  output [15:0]reg6_o;
  output [15:0]reg7_o;
  input ram_clk_i;
  input ram_we_i;
  input [15:0]ram_addr_i;
  input [15:0]ram_data_i;
  output [15:0]ram_data_o;
  input fifo_clk_i;
  input fifo_clear_i;
  input fifo_we_i;
  input [15:0]fifo_data_i;
  output fifo_full_o;
  output fifo_afull_o;
  output fifo_overflow_o;
  input fifo_re_i;
  output [15:0]fifo_data_o;
  output fifo_valid_o;
  output fifo_empty_o;
  output fifo_aempty_o;
  output fifo_underflow_o;
  input axil_aclk;
  input axil_aresetn;
  input [7:0]axil_awaddr;
  input [2:0]axil_awprot;
  input axil_awvalid;
  output axil_awready;
  input [31:0]axil_wdata;
  input [3:0]axil_wstrb;
  input axil_wvalid;
  output axil_wready;
  output [1:0]axil_bresp;
  output axil_bvalid;
  input axil_bready;
  input [7:0]axil_araddr;
  input [2:0]axil_arprot;
  input axil_arvalid;
  output axil_arready;
  output [31:0]axil_rdata;
  output [1:0]axil_rresp;
  output axil_rvalid;
  input axil_rready;
  input axif_aclk;
  input axif_aresetn;
  input [17:0]axif_awaddr;
  input [7:0]axif_awlen;
  input [2:0]axif_awsize;
  input [1:0]axif_awburst;
  input axif_awlock;
  input [3:0]axif_awcache;
  input [2:0]axif_awprot;
  input [3:0]axif_awqos;
  input [3:0]axif_awregion;
  input [0:0]axif_awuser;
  input axif_awvalid;
  output axif_awready;
  input [31:0]axif_wdata;
  input [3:0]axif_wstrb;
  input axif_wlast;
  input [0:0]axif_wuser;
  input axif_wvalid;
  output axif_wready;
  output [1:0]axif_bresp;
  output [0:0]axif_buser;
  output axif_bvalid;
  input axif_bready;
  input [17:0]axif_araddr;
  input [7:0]axif_arlen;
  input [2:0]axif_arsize;
  input [1:0]axif_arburst;
  input axif_arlock;
  input [3:0]axif_arcache;
  input [2:0]axif_arprot;
  input [3:0]axif_arqos;
  input [3:0]axif_arregion;
  input [0:0]axif_aruser;
  input axif_arvalid;
  output axif_arready;
  output [31:0]axif_rdata;
  output [1:0]axif_rresp;
  output axif_rlast;
  output [0:0]axif_ruser;
  output axif_rvalid;
  input axif_rready;
endmodule
