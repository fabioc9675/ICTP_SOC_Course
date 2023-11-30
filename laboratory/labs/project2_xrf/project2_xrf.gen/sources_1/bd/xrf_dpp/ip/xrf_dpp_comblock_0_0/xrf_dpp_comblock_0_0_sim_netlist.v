// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2022.2 (lin64) Build 3671981 Fri Oct 14 04:59:54 MDT 2022
// Date        : Thu Nov 30 17:25:12 2023
// Host        : node07 running 64-bit CentOS Linux release 7.4.1708 (Core)
// Command     : write_verilog -force -mode funcsim
//               /home/argo49/smr3891/labs/project2_xrf/project2_xrf.gen/sources_1/bd/xrf_dpp/ip/xrf_dpp_comblock_0_0/xrf_dpp_comblock_0_0_sim_netlist.v
// Design      : xrf_dpp_comblock_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z020clg484-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "xrf_dpp_comblock_0_0,axi_comblock,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* ip_definition_source = "package_project" *) 
(* x_core_info = "axi_comblock,Vivado 2022.2" *) 
(* NotValidForBitStream *)
module xrf_dpp_comblock_0_0
   (reg0_i,
    reg1_i,
    reg2_i,
    reg3_i,
    reg0_o,
    reg1_o,
    reg2_o,
    reg3_o,
    reg4_o,
    reg5_o,
    reg6_o,
    reg7_o,
    ram_clk_i,
    ram_we_i,
    ram_addr_i,
    ram_data_i,
    ram_data_o,
    fifo_clk_i,
    fifo_clear_i,
    fifo_we_i,
    fifo_data_i,
    fifo_full_o,
    fifo_afull_o,
    fifo_overflow_o,
    fifo_re_i,
    fifo_data_o,
    fifo_valid_o,
    fifo_empty_o,
    fifo_aempty_o,
    fifo_underflow_o,
    axil_aclk,
    axil_aresetn,
    axil_awaddr,
    axil_awprot,
    axil_awvalid,
    axil_awready,
    axil_wdata,
    axil_wstrb,
    axil_wvalid,
    axil_wready,
    axil_bresp,
    axil_bvalid,
    axil_bready,
    axil_araddr,
    axil_arprot,
    axil_arvalid,
    axil_arready,
    axil_rdata,
    axil_rresp,
    axil_rvalid,
    axil_rready,
    axif_aclk,
    axif_aresetn,
    axif_awaddr,
    axif_awlen,
    axif_awsize,
    axif_awburst,
    axif_awlock,
    axif_awcache,
    axif_awprot,
    axif_awqos,
    axif_awregion,
    axif_awuser,
    axif_awvalid,
    axif_awready,
    axif_wdata,
    axif_wstrb,
    axif_wlast,
    axif_wuser,
    axif_wvalid,
    axif_wready,
    axif_bresp,
    axif_buser,
    axif_bvalid,
    axif_bready,
    axif_araddr,
    axif_arlen,
    axif_arsize,
    axif_arburst,
    axif_arlock,
    axif_arcache,
    axif_arprot,
    axif_arqos,
    axif_arregion,
    axif_aruser,
    axif_arvalid,
    axif_arready,
    axif_rdata,
    axif_rresp,
    axif_rlast,
    axif_ruser,
    axif_rvalid,
    axif_rready);
  (* x_interface_info = "ictp:user:IREGS:1.0 IN_REGS reg0_i" *) input [31:0]reg0_i;
  (* x_interface_info = "ictp:user:IREGS:1.0 IN_REGS reg1_i" *) input [31:0]reg1_i;
  (* x_interface_info = "ictp:user:IREGS:1.0 IN_REGS reg2_i" *) input [31:0]reg2_i;
  (* x_interface_info = "ictp:user:IREGS:1.0 IN_REGS reg3_i" *) input [31:0]reg3_i;
  (* x_interface_info = "ictp:user:OREGS:1.0 OUT_REGS reg0_o" *) output [15:0]reg0_o;
  (* x_interface_info = "ictp:user:OREGS:1.0 OUT_REGS reg1_o" *) output [15:0]reg1_o;
  (* x_interface_info = "ictp:user:OREGS:1.0 OUT_REGS reg2_o" *) output [15:0]reg2_o;
  (* x_interface_info = "ictp:user:OREGS:1.0 OUT_REGS reg3_o" *) output [15:0]reg3_o;
  (* x_interface_info = "ictp:user:OREGS:1.0 OUT_REGS reg4_o" *) output [15:0]reg4_o;
  (* x_interface_info = "ictp:user:OREGS:1.0 OUT_REGS reg5_o" *) output [15:0]reg5_o;
  (* x_interface_info = "ictp:user:OREGS:1.0 OUT_REGS reg6_o" *) output [15:0]reg6_o;
  (* x_interface_info = "ictp:user:OREGS:1.0 OUT_REGS reg7_o" *) output [15:0]reg7_o;
  (* x_interface_info = "xilinx.com:signal:clock:1.0 ram_clk_i CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME ram_clk_i, ASSOCIATED_BUSIF IO_DRAM, ASSOCIATED_RESET fifo_clear_i, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN xrf_dpp_processing_system7_0_0_FCLK_CLK0, INSERT_VIP 0" *) input ram_clk_i;
  (* x_interface_info = "ictp:user:SRAM:1.0 IO_DRAM ram_we_i" *) input ram_we_i;
  (* x_interface_info = "ictp:user:SRAM:1.0 IO_DRAM ram_addr_i" *) input [15:0]ram_addr_i;
  (* x_interface_info = "ictp:user:SRAM:1.0 IO_DRAM ram_data_i" *) input [15:0]ram_data_i;
  (* x_interface_info = "ictp:user:SRAM:1.0 IO_DRAM ram_data_o" *) output [15:0]ram_data_o;
  (* x_interface_info = "xilinx.com:signal:clock:1.0 fifo_clk_i CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME fifo_clk_i, ASSOCIATED_BUSIF IN_FIFO:OUT_FIFO, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN xrf_dpp_processing_system7_0_0_FCLK_CLK0, INSERT_VIP 0" *) input fifo_clk_i;
  (* x_interface_info = "xilinx.com:signal:reset:1.0 fifo_clear_i RST" *) (* x_interface_parameter = "XIL_INTERFACENAME fifo_clear_i, POLARITY ACTIVE_HIGH, INSERT_VIP 0" *) input fifo_clear_i;
  (* x_interface_info = "ictp:user:IFIFO:1.0 IN_FIFO fifo_we_i" *) input fifo_we_i;
  (* x_interface_info = "ictp:user:IFIFO:1.0 IN_FIFO fifo_data_i" *) input [15:0]fifo_data_i;
  (* x_interface_info = "ictp:user:IFIFO:1.0 IN_FIFO fifo_full_o" *) output fifo_full_o;
  (* x_interface_info = "ictp:user:IFIFO:1.0 IN_FIFO fifo_afull_o" *) output fifo_afull_o;
  (* x_interface_info = "ictp:user:IFIFO:1.0 IN_FIFO fifo_overflow_o" *) output fifo_overflow_o;
  (* x_interface_info = "ictp:user:OFIFO:1.0 OUT_FIFO fifo_re_i" *) input fifo_re_i;
  (* x_interface_info = "ictp:user:OFIFO:1.0 OUT_FIFO fifo_data_o" *) output [15:0]fifo_data_o;
  (* x_interface_info = "ictp:user:OFIFO:1.0 OUT_FIFO fifo_valid_o" *) output fifo_valid_o;
  (* x_interface_info = "ictp:user:OFIFO:1.0 OUT_FIFO fifo_empty_o" *) output fifo_empty_o;
  (* x_interface_info = "ictp:user:OFIFO:1.0 OUT_FIFO fifo_aempty_o" *) output fifo_aempty_o;
  (* x_interface_info = "ictp:user:OFIFO:1.0 OUT_FIFO fifo_underflow_o" *) output fifo_underflow_o;
  (* x_interface_info = "xilinx.com:signal:clock:1.0 axil_aclk CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME axil_aclk, ASSOCIATED_RESET axil_aresetn, ASSOCIATED_BUSIF AXIL, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN xrf_dpp_processing_system7_0_0_FCLK_CLK0, INSERT_VIP 0" *) input axil_aclk;
  (* x_interface_info = "xilinx.com:signal:reset:1.0 axil_aresetn RST" *) (* x_interface_parameter = "XIL_INTERFACENAME axil_aresetn, POLARITY ACTIVE_LOW, INSERT_VIP 0" *) input axil_aresetn;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 AXIL AWADDR" *) (* x_interface_parameter = "XIL_INTERFACENAME AXIL, DATA_WIDTH 32, PROTOCOL AXI4LITE, FREQ_HZ 100000000, ID_WIDTH 0, ADDR_WIDTH 8, AWUSER_WIDTH 0, ARUSER_WIDTH 0, WUSER_WIDTH 0, RUSER_WIDTH 0, BUSER_WIDTH 0, READ_WRITE_MODE READ_WRITE, HAS_BURST 0, HAS_LOCK 0, HAS_PROT 1, HAS_CACHE 0, HAS_QOS 0, HAS_REGION 0, HAS_WSTRB 1, HAS_BRESP 1, HAS_RRESP 1, SUPPORTS_NARROW_BURST 0, NUM_READ_OUTSTANDING 8, NUM_WRITE_OUTSTANDING 8, MAX_BURST_LENGTH 1, PHASE 0.0, CLK_DOMAIN xrf_dpp_processing_system7_0_0_FCLK_CLK0, NUM_READ_THREADS 1, NUM_WRITE_THREADS 1, RUSER_BITS_PER_BYTE 0, WUSER_BITS_PER_BYTE 0, INSERT_VIP 0" *) input [7:0]axil_awaddr;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 AXIL AWPROT" *) input [2:0]axil_awprot;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 AXIL AWVALID" *) input axil_awvalid;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 AXIL AWREADY" *) output axil_awready;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 AXIL WDATA" *) input [31:0]axil_wdata;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 AXIL WSTRB" *) input [3:0]axil_wstrb;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 AXIL WVALID" *) input axil_wvalid;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 AXIL WREADY" *) output axil_wready;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 AXIL BRESP" *) output [1:0]axil_bresp;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 AXIL BVALID" *) output axil_bvalid;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 AXIL BREADY" *) input axil_bready;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 AXIL ARADDR" *) input [7:0]axil_araddr;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 AXIL ARPROT" *) input [2:0]axil_arprot;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 AXIL ARVALID" *) input axil_arvalid;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 AXIL ARREADY" *) output axil_arready;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 AXIL RDATA" *) output [31:0]axil_rdata;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 AXIL RRESP" *) output [1:0]axil_rresp;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 AXIL RVALID" *) output axil_rvalid;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 AXIL RREADY" *) input axil_rready;
  (* x_interface_info = "xilinx.com:signal:clock:1.0 axif_aclk CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME axif_aclk, ASSOCIATED_RESET axif_aresetn, ASSOCIATED_BUSIF AXIF, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN xrf_dpp_processing_system7_0_0_FCLK_CLK0, INSERT_VIP 0" *) input axif_aclk;
  (* x_interface_info = "xilinx.com:signal:reset:1.0 axif_aresetn RST" *) (* x_interface_parameter = "XIL_INTERFACENAME axif_aresetn, POLARITY ACTIVE_LOW, INSERT_VIP 0" *) input axif_aresetn;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 AXIF AWADDR" *) (* x_interface_parameter = "XIL_INTERFACENAME AXIF, DATA_WIDTH 32, PROTOCOL AXI4, FREQ_HZ 100000000, ID_WIDTH 0, ADDR_WIDTH 18, AWUSER_WIDTH 1, ARUSER_WIDTH 1, WUSER_WIDTH 1, RUSER_WIDTH 1, BUSER_WIDTH 1, READ_WRITE_MODE READ_WRITE, HAS_BURST 1, HAS_LOCK 1, HAS_PROT 1, HAS_CACHE 1, HAS_QOS 1, HAS_REGION 1, HAS_WSTRB 1, HAS_BRESP 1, HAS_RRESP 1, SUPPORTS_NARROW_BURST 0, NUM_READ_OUTSTANDING 8, NUM_WRITE_OUTSTANDING 8, MAX_BURST_LENGTH 16, PHASE 0.0, CLK_DOMAIN xrf_dpp_processing_system7_0_0_FCLK_CLK0, NUM_READ_THREADS 1, NUM_WRITE_THREADS 1, RUSER_BITS_PER_BYTE 0, WUSER_BITS_PER_BYTE 0, INSERT_VIP 0" *) input [17:0]axif_awaddr;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 AXIF AWLEN" *) input [7:0]axif_awlen;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 AXIF AWSIZE" *) input [2:0]axif_awsize;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 AXIF AWBURST" *) input [1:0]axif_awburst;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 AXIF AWLOCK" *) input axif_awlock;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 AXIF AWCACHE" *) input [3:0]axif_awcache;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 AXIF AWPROT" *) input [2:0]axif_awprot;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 AXIF AWQOS" *) input [3:0]axif_awqos;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 AXIF AWREGION" *) input [3:0]axif_awregion;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 AXIF AWUSER" *) input [0:0]axif_awuser;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 AXIF AWVALID" *) input axif_awvalid;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 AXIF AWREADY" *) output axif_awready;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 AXIF WDATA" *) input [31:0]axif_wdata;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 AXIF WSTRB" *) input [3:0]axif_wstrb;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 AXIF WLAST" *) input axif_wlast;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 AXIF WUSER" *) input [0:0]axif_wuser;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 AXIF WVALID" *) input axif_wvalid;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 AXIF WREADY" *) output axif_wready;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 AXIF BRESP" *) output [1:0]axif_bresp;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 AXIF BUSER" *) output [0:0]axif_buser;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 AXIF BVALID" *) output axif_bvalid;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 AXIF BREADY" *) input axif_bready;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 AXIF ARADDR" *) input [17:0]axif_araddr;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 AXIF ARLEN" *) input [7:0]axif_arlen;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 AXIF ARSIZE" *) input [2:0]axif_arsize;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 AXIF ARBURST" *) input [1:0]axif_arburst;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 AXIF ARLOCK" *) input axif_arlock;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 AXIF ARCACHE" *) input [3:0]axif_arcache;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 AXIF ARPROT" *) input [2:0]axif_arprot;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 AXIF ARQOS" *) input [3:0]axif_arqos;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 AXIF ARREGION" *) input [3:0]axif_arregion;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 AXIF ARUSER" *) input [0:0]axif_aruser;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 AXIF ARVALID" *) input axif_arvalid;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 AXIF ARREADY" *) output axif_arready;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 AXIF RDATA" *) output [31:0]axif_rdata;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 AXIF RRESP" *) output [1:0]axif_rresp;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 AXIF RLAST" *) output axif_rlast;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 AXIF RUSER" *) output [0:0]axif_ruser;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 AXIF RVALID" *) output axif_rvalid;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 AXIF RREADY" *) input axif_rready;

  wire \<const0> ;
  wire axif_aclk;
  wire [17:0]axif_araddr;
  wire [1:0]axif_arburst;
  wire axif_aresetn;
  wire [7:0]axif_arlen;
  wire axif_arready;
  wire axif_arvalid;
  wire [17:0]axif_awaddr;
  wire [1:0]axif_awburst;
  wire [7:0]axif_awlen;
  wire axif_awready;
  wire axif_awvalid;
  wire axif_bready;
  wire axif_bvalid;
  wire [15:0]\^axif_rdata ;
  wire axif_rlast;
  wire axif_rready;
  wire axif_rvalid;
  wire [31:0]axif_wdata;
  wire axif_wlast;
  wire axif_wready;
  wire axif_wvalid;
  wire axil_aclk;
  wire [7:0]axil_araddr;
  wire axil_aresetn;
  wire axil_arready;
  wire axil_arvalid;
  wire [7:0]axil_awaddr;
  wire axil_awready;
  wire axil_awvalid;
  wire axil_bready;
  wire axil_bvalid;
  wire [31:0]axil_rdata;
  wire axil_rready;
  wire axil_rvalid;
  wire [31:0]axil_wdata;
  wire axil_wready;
  wire axil_wvalid;
  wire fifo_aempty_o;
  wire fifo_afull_o;
  wire fifo_clear_i;
  wire fifo_clk_i;
  wire [15:0]fifo_data_i;
  wire [15:0]fifo_data_o;
  wire fifo_empty_o;
  wire fifo_full_o;
  wire fifo_overflow_o;
  wire fifo_re_i;
  wire fifo_underflow_o;
  wire fifo_valid_o;
  wire fifo_we_i;
  wire [15:0]ram_addr_i;
  wire ram_clk_i;
  wire [15:0]ram_data_i;
  wire [15:0]ram_data_o;
  wire ram_we_i;
  wire [31:0]reg0_i;
  wire [15:0]reg0_o;
  wire [31:0]reg1_i;
  wire [15:0]reg1_o;
  wire [31:0]reg2_i;
  wire [15:0]reg2_o;
  wire [31:0]reg3_i;
  wire [15:0]reg3_o;
  wire [15:0]reg4_o;
  wire [15:0]reg5_o;
  wire [15:0]reg6_o;
  wire [15:0]reg7_o;

  assign axif_bresp[1] = \<const0> ;
  assign axif_bresp[0] = \<const0> ;
  assign axif_buser[0] = \<const0> ;
  assign axif_rdata[31] = \<const0> ;
  assign axif_rdata[30] = \<const0> ;
  assign axif_rdata[29] = \<const0> ;
  assign axif_rdata[28] = \<const0> ;
  assign axif_rdata[27] = \<const0> ;
  assign axif_rdata[26] = \<const0> ;
  assign axif_rdata[25] = \<const0> ;
  assign axif_rdata[24] = \<const0> ;
  assign axif_rdata[23] = \<const0> ;
  assign axif_rdata[22] = \<const0> ;
  assign axif_rdata[21] = \<const0> ;
  assign axif_rdata[20] = \<const0> ;
  assign axif_rdata[19] = \<const0> ;
  assign axif_rdata[18] = \<const0> ;
  assign axif_rdata[17] = \<const0> ;
  assign axif_rdata[16] = \<const0> ;
  assign axif_rdata[15:0] = \^axif_rdata [15:0];
  assign axif_rresp[1] = \<const0> ;
  assign axif_rresp[0] = \<const0> ;
  assign axif_ruser[0] = \<const0> ;
  assign axil_bresp[1] = \<const0> ;
  assign axil_bresp[0] = \<const0> ;
  assign axil_rresp[1] = \<const0> ;
  assign axil_rresp[0] = \<const0> ;
  GND GND
       (.G(\<const0> ));
  xrf_dpp_comblock_0_0_axi_comblock U0
       (.axi_arready_reg(axif_arready),
        .axi_awready_reg(axif_awready),
        .axi_rvalid_reg(axif_rvalid),
        .axi_rvalid_reg_0(axil_rvalid),
        .axi_wready_reg(axif_wready),
        .axif_aclk(axif_aclk),
        .axif_araddr(axif_araddr[17:2]),
        .axif_arburst(axif_arburst),
        .axif_aresetn(axif_aresetn),
        .axif_arlen(axif_arlen),
        .axif_arvalid(axif_arvalid),
        .axif_awaddr(axif_awaddr[17:2]),
        .axif_awburst(axif_awburst),
        .axif_awlen(axif_awlen),
        .axif_awvalid(axif_awvalid),
        .axif_bready(axif_bready),
        .axif_bvalid(axif_bvalid),
        .axif_rdata(\^axif_rdata ),
        .axif_rlast(axif_rlast),
        .axif_rready(axif_rready),
        .axif_wdata(axif_wdata[15:0]),
        .axif_wlast(axif_wlast),
        .axif_wvalid(axif_wvalid),
        .axil_aclk(axil_aclk),
        .axil_araddr(axil_araddr[7:2]),
        .axil_aresetn(axil_aresetn),
        .axil_arready(axil_arready),
        .axil_arvalid(axil_arvalid),
        .axil_awaddr(axil_awaddr[7:2]),
        .axil_awready(axil_awready),
        .axil_awvalid(axil_awvalid),
        .axil_bready(axil_bready),
        .axil_bvalid(axil_bvalid),
        .axil_rdata(axil_rdata),
        .axil_rready(axil_rready),
        .axil_wdata(axil_wdata[15:0]),
        .axil_wready(axil_wready),
        .axil_wvalid(axil_wvalid),
        .fifo_aempty_o(fifo_aempty_o),
        .fifo_afull_o(fifo_afull_o),
        .fifo_clear_i(fifo_clear_i),
        .fifo_clk_i(fifo_clk_i),
        .fifo_data_i(fifo_data_i),
        .fifo_data_o(fifo_data_o),
        .fifo_empty_o(fifo_empty_o),
        .fifo_full_o(fifo_full_o),
        .fifo_overflow_o(fifo_overflow_o),
        .fifo_re_i(fifo_re_i),
        .fifo_underflow_o(fifo_underflow_o),
        .fifo_valid_o(fifo_valid_o),
        .fifo_we_i(fifo_we_i),
        .ram_addr_i(ram_addr_i),
        .ram_clk_i(ram_clk_i),
        .ram_data_i(ram_data_i),
        .ram_data_o(ram_data_o),
        .ram_we_i(ram_we_i),
        .reg0_i(reg0_i),
        .reg0_o(reg0_o),
        .reg1_i(reg1_i),
        .reg1_o(reg1_o),
        .reg2_i(reg2_i),
        .reg2_o(reg2_o),
        .reg3_i(reg3_i),
        .reg3_o(reg3_o),
        .reg4_o(reg4_o),
        .reg5_o(reg5_o),
        .reg6_o(reg6_o),
        .reg7_o(reg7_o));
endmodule

(* ORIG_REF_NAME = "AXIF" *) 
module xrf_dpp_comblock_0_0_AXIF
   (axi_rvalid_reg_0,
    axi_arready_reg_0,
    axi_wready_reg_0,
    axi_awready_reg_0,
    axif_bvalid,
    axif_rlast,
    axif_rdata,
    ADDRARDADDR,
    addr2_i,
    WEA,
    axi_wready_reg_1,
    axi_wready_reg_2,
    axi_wready_reg_3,
    axi_wready_reg_4,
    axi_wready_reg_5,
    axi_wready_reg_6,
    axi_wready_reg_7,
    axi_wready_reg_8,
    axi_wready_reg_9,
    axi_wready_reg_10,
    axi_wready_reg_11,
    axi_wready_reg_12,
    axi_wready_reg_13,
    axi_wready_reg_14,
    axi_wready_reg_15,
    axi_wready_reg_16,
    axi_wready_reg_17,
    axi_wready_reg_18,
    axi_wready_reg_19,
    axi_wready_reg_20,
    axi_wready_reg_21,
    axi_wready_reg_22,
    axi_wready_reg_23,
    axi_wready_reg_24,
    axi_wready_reg_25,
    axi_wready_reg_26,
    axi_wready_reg_27,
    axi_wready_reg_28,
    axi_wready_reg_29,
    axi_wready_reg_30,
    axi_wready_reg_31,
    axif_aclk,
    axif_arvalid,
    axif_aresetn,
    axif_awvalid,
    data2_o,
    axif_wvalid,
    axif_wlast,
    axif_bready,
    axif_rready,
    axif_arlen,
    axif_awburst,
    axif_awlen,
    axif_arburst,
    axif_araddr,
    axif_awaddr);
  output axi_rvalid_reg_0;
  output axi_arready_reg_0;
  output axi_wready_reg_0;
  output axi_awready_reg_0;
  output axif_bvalid;
  output axif_rlast;
  output [15:0]axif_rdata;
  output [15:0]ADDRARDADDR;
  output [15:0]addr2_i;
  output [0:0]WEA;
  output [0:0]axi_wready_reg_1;
  output [0:0]axi_wready_reg_2;
  output [0:0]axi_wready_reg_3;
  output [0:0]axi_wready_reg_4;
  output [0:0]axi_wready_reg_5;
  output [0:0]axi_wready_reg_6;
  output [0:0]axi_wready_reg_7;
  output [0:0]axi_wready_reg_8;
  output [0:0]axi_wready_reg_9;
  output [0:0]axi_wready_reg_10;
  output [0:0]axi_wready_reg_11;
  output [0:0]axi_wready_reg_12;
  output [0:0]axi_wready_reg_13;
  output [0:0]axi_wready_reg_14;
  output [0:0]axi_wready_reg_15;
  output [0:0]axi_wready_reg_16;
  output [0:0]axi_wready_reg_17;
  output [0:0]axi_wready_reg_18;
  output [0:0]axi_wready_reg_19;
  output [0:0]axi_wready_reg_20;
  output [0:0]axi_wready_reg_21;
  output [0:0]axi_wready_reg_22;
  output [0:0]axi_wready_reg_23;
  output [0:0]axi_wready_reg_24;
  output [0:0]axi_wready_reg_25;
  output [0:0]axi_wready_reg_26;
  output [0:0]axi_wready_reg_27;
  output [0:0]axi_wready_reg_28;
  output [0:0]axi_wready_reg_29;
  output [0:0]axi_wready_reg_30;
  output [0:0]axi_wready_reg_31;
  input axif_aclk;
  input axif_arvalid;
  input axif_aresetn;
  input axif_awvalid;
  input [15:0]data2_o;
  input axif_wvalid;
  input axif_wlast;
  input axif_bready;
  input axif_rready;
  input [7:0]axif_arlen;
  input [1:0]axif_awburst;
  input [7:0]axif_awlen;
  input [1:0]axif_arburst;
  input [15:0]axif_araddr;
  input [15:0]axif_awaddr;

  wire [15:0]ADDRARDADDR;
  wire [17:2]L;
  wire [0:0]WEA;
  wire [15:0]addr2_i;
  wire axi_araddr1;
  wire axi_araddr3;
  wire axi_araddr3_carry_i_1_n_0;
  wire axi_araddr3_carry_i_2_n_0;
  wire axi_araddr3_carry_i_3_n_0;
  wire axi_araddr3_carry_i_4_n_0;
  wire axi_araddr3_carry_i_5_n_0;
  wire axi_araddr3_carry_i_6_n_0;
  wire axi_araddr3_carry_i_7_n_0;
  wire axi_araddr3_carry_i_8_n_0;
  wire axi_araddr3_carry_n_1;
  wire axi_araddr3_carry_n_2;
  wire axi_araddr3_carry_n_3;
  wire \axi_araddr[10]_i_1_n_0 ;
  wire \axi_araddr[11]_i_1_n_0 ;
  wire \axi_araddr[12]_i_1_n_0 ;
  wire \axi_araddr[13]_i_1_n_0 ;
  wire \axi_araddr[14]_i_1_n_0 ;
  wire \axi_araddr[15]_i_1_n_0 ;
  wire \axi_araddr[16]_i_1_n_0 ;
  wire \axi_araddr[17]_i_1_n_0 ;
  wire \axi_araddr[17]_i_2_n_0 ;
  wire \axi_araddr[2]_i_1_n_0 ;
  wire \axi_araddr[3]_i_1_n_0 ;
  wire \axi_araddr[4]_i_1_n_0 ;
  wire \axi_araddr[5]_i_1_n_0 ;
  wire \axi_araddr[6]_i_1_n_0 ;
  wire \axi_araddr[7]_i_1_n_0 ;
  wire \axi_araddr[8]_i_1_n_0 ;
  wire \axi_araddr[9]_i_1_n_0 ;
  wire \axi_araddr_reg_n_0_[10] ;
  wire \axi_araddr_reg_n_0_[11] ;
  wire \axi_araddr_reg_n_0_[12] ;
  wire \axi_araddr_reg_n_0_[13] ;
  wire \axi_araddr_reg_n_0_[14] ;
  wire \axi_araddr_reg_n_0_[15] ;
  wire \axi_araddr_reg_n_0_[16] ;
  wire \axi_araddr_reg_n_0_[17] ;
  wire \axi_araddr_reg_n_0_[2] ;
  wire \axi_araddr_reg_n_0_[3] ;
  wire \axi_araddr_reg_n_0_[4] ;
  wire \axi_araddr_reg_n_0_[5] ;
  wire \axi_araddr_reg_n_0_[6] ;
  wire \axi_araddr_reg_n_0_[7] ;
  wire \axi_araddr_reg_n_0_[8] ;
  wire \axi_araddr_reg_n_0_[9] ;
  wire [1:0]axi_arburst;
  wire [7:0]axi_arlen;
  wire \axi_arlen[7]_i_1_n_0 ;
  wire \axi_arlen_cntr[0]_i_1_n_0 ;
  wire \axi_arlen_cntr[7]_i_1_n_0 ;
  wire \axi_arlen_cntr[7]_i_4_n_0 ;
  wire [7:0]axi_arlen_cntr_reg;
  wire axi_arready1__0;
  wire axi_arready2__14;
  wire axi_arready_i_1__0_n_0;
  wire axi_arready_i_4_n_0;
  wire axi_arready_i_5_n_0;
  wire axi_arready_reg_0;
  wire axi_arv_arr_flag;
  wire axi_arv_arr_flag_i_1_n_0;
  wire axi_awaddr1;
  wire axi_awaddr3;
  wire axi_awaddr3_carry_i_1_n_0;
  wire axi_awaddr3_carry_i_2_n_0;
  wire axi_awaddr3_carry_i_3_n_0;
  wire axi_awaddr3_carry_i_4_n_0;
  wire axi_awaddr3_carry_i_5_n_0;
  wire axi_awaddr3_carry_i_6_n_0;
  wire axi_awaddr3_carry_i_7_n_0;
  wire axi_awaddr3_carry_i_8_n_0;
  wire axi_awaddr3_carry_n_1;
  wire axi_awaddr3_carry_n_2;
  wire axi_awaddr3_carry_n_3;
  wire \axi_awaddr[17]_i_1_n_0 ;
  wire [1:0]axi_awburst;
  wire [7:0]axi_awlen;
  wire \axi_awlen_cntr[0]_i_1_n_0 ;
  wire \axi_awlen_cntr[7]_i_1_n_0 ;
  wire \axi_awlen_cntr[7]_i_4_n_0 ;
  wire [7:0]axi_awlen_cntr_reg;
  wire axi_awready_i_1_n_0;
  wire axi_awready_i_2__0_n_0;
  wire axi_awready_reg_0;
  wire axi_awv_awr_flag;
  wire axi_awv_awr_flag_i_1_n_0;
  wire axi_bvalid_i_1__0_n_0;
  wire axi_rlast0;
  wire axi_rlast_i_1_n_0;
  wire axi_rvalid_i_1__0_n_0;
  wire axi_rvalid_reg_0;
  wire axi_wready_i_1__0_n_0;
  wire axi_wready_reg_0;
  wire [0:0]axi_wready_reg_1;
  wire [0:0]axi_wready_reg_10;
  wire [0:0]axi_wready_reg_11;
  wire [0:0]axi_wready_reg_12;
  wire [0:0]axi_wready_reg_13;
  wire [0:0]axi_wready_reg_14;
  wire [0:0]axi_wready_reg_15;
  wire [0:0]axi_wready_reg_16;
  wire [0:0]axi_wready_reg_17;
  wire [0:0]axi_wready_reg_18;
  wire [0:0]axi_wready_reg_19;
  wire [0:0]axi_wready_reg_2;
  wire [0:0]axi_wready_reg_20;
  wire [0:0]axi_wready_reg_21;
  wire [0:0]axi_wready_reg_22;
  wire [0:0]axi_wready_reg_23;
  wire [0:0]axi_wready_reg_24;
  wire [0:0]axi_wready_reg_25;
  wire [0:0]axi_wready_reg_26;
  wire [0:0]axi_wready_reg_27;
  wire [0:0]axi_wready_reg_28;
  wire [0:0]axi_wready_reg_29;
  wire [0:0]axi_wready_reg_3;
  wire [0:0]axi_wready_reg_30;
  wire [0:0]axi_wready_reg_31;
  wire [0:0]axi_wready_reg_4;
  wire [0:0]axi_wready_reg_5;
  wire [0:0]axi_wready_reg_6;
  wire [0:0]axi_wready_reg_7;
  wire [0:0]axi_wready_reg_8;
  wire [0:0]axi_wready_reg_9;
  wire axif_aclk;
  wire [15:0]axif_araddr;
  wire [1:0]axif_arburst;
  wire axif_aresetn;
  wire [7:0]axif_arlen;
  wire axif_arvalid;
  wire [15:0]axif_awaddr;
  wire [1:0]axif_awburst;
  wire [7:0]axif_awlen;
  wire axif_awvalid;
  wire axif_bready;
  wire axif_bvalid;
  wire [15:0]axif_rdata;
  wire axif_rlast;
  wire axif_rready;
  wire axif_wlast;
  wire axif_wvalid;
  wire [15:0]data2_o;
  wire [17:2]p_2_in;
  wire p_9_in;
  wire [15:1]plusOp;
  wire [7:1]plusOp__0;
  wire [7:1]plusOp__1;
  wire \plusOp_inferred__1/i__carry__0_n_0 ;
  wire \plusOp_inferred__1/i__carry__0_n_1 ;
  wire \plusOp_inferred__1/i__carry__0_n_2 ;
  wire \plusOp_inferred__1/i__carry__0_n_3 ;
  wire \plusOp_inferred__1/i__carry__0_n_4 ;
  wire \plusOp_inferred__1/i__carry__0_n_5 ;
  wire \plusOp_inferred__1/i__carry__0_n_6 ;
  wire \plusOp_inferred__1/i__carry__0_n_7 ;
  wire \plusOp_inferred__1/i__carry__1_n_0 ;
  wire \plusOp_inferred__1/i__carry__1_n_1 ;
  wire \plusOp_inferred__1/i__carry__1_n_2 ;
  wire \plusOp_inferred__1/i__carry__1_n_3 ;
  wire \plusOp_inferred__1/i__carry__1_n_4 ;
  wire \plusOp_inferred__1/i__carry__1_n_5 ;
  wire \plusOp_inferred__1/i__carry__1_n_6 ;
  wire \plusOp_inferred__1/i__carry__1_n_7 ;
  wire \plusOp_inferred__1/i__carry__2_n_2 ;
  wire \plusOp_inferred__1/i__carry__2_n_3 ;
  wire \plusOp_inferred__1/i__carry__2_n_5 ;
  wire \plusOp_inferred__1/i__carry__2_n_6 ;
  wire \plusOp_inferred__1/i__carry__2_n_7 ;
  wire \plusOp_inferred__1/i__carry_n_0 ;
  wire \plusOp_inferred__1/i__carry_n_1 ;
  wire \plusOp_inferred__1/i__carry_n_2 ;
  wire \plusOp_inferred__1/i__carry_n_3 ;
  wire \plusOp_inferred__1/i__carry_n_4 ;
  wire \plusOp_inferred__1/i__carry_n_5 ;
  wire \plusOp_inferred__1/i__carry_n_6 ;
  wire \plusOp_inferred__1/i__carry_n_7 ;
  wire \plusOp_inferred__2/i__carry__0_n_0 ;
  wire \plusOp_inferred__2/i__carry__0_n_1 ;
  wire \plusOp_inferred__2/i__carry__0_n_2 ;
  wire \plusOp_inferred__2/i__carry__0_n_3 ;
  wire \plusOp_inferred__2/i__carry__1_n_0 ;
  wire \plusOp_inferred__2/i__carry__1_n_1 ;
  wire \plusOp_inferred__2/i__carry__1_n_2 ;
  wire \plusOp_inferred__2/i__carry__1_n_3 ;
  wire \plusOp_inferred__2/i__carry__2_n_2 ;
  wire \plusOp_inferred__2/i__carry__2_n_3 ;
  wire \plusOp_inferred__2/i__carry_n_0 ;
  wire \plusOp_inferred__2/i__carry_n_1 ;
  wire \plusOp_inferred__2/i__carry_n_2 ;
  wire \plusOp_inferred__2/i__carry_n_3 ;
  wire [3:0]NLW_axi_araddr3_carry_O_UNCONNECTED;
  wire [3:0]NLW_axi_awaddr3_carry_O_UNCONNECTED;
  wire [3:2]\NLW_plusOp_inferred__1/i__carry__2_CO_UNCONNECTED ;
  wire [3:3]\NLW_plusOp_inferred__1/i__carry__2_O_UNCONNECTED ;
  wire [3:2]\NLW_plusOp_inferred__2/i__carry__2_CO_UNCONNECTED ;
  wire [3:3]\NLW_plusOp_inferred__2/i__carry__2_O_UNCONNECTED ;

  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY4 axi_araddr3_carry
       (.CI(1'b0),
        .CO({axi_araddr3,axi_araddr3_carry_n_1,axi_araddr3_carry_n_2,axi_araddr3_carry_n_3}),
        .CYINIT(1'b1),
        .DI({axi_araddr3_carry_i_1_n_0,axi_araddr3_carry_i_2_n_0,axi_araddr3_carry_i_3_n_0,axi_araddr3_carry_i_4_n_0}),
        .O(NLW_axi_araddr3_carry_O_UNCONNECTED[3:0]),
        .S({axi_araddr3_carry_i_5_n_0,axi_araddr3_carry_i_6_n_0,axi_araddr3_carry_i_7_n_0,axi_araddr3_carry_i_8_n_0}));
  LUT4 #(
    .INIT(16'h2F02)) 
    axi_araddr3_carry_i_1
       (.I0(axi_arlen[6]),
        .I1(axi_arlen_cntr_reg[6]),
        .I2(axi_arlen_cntr_reg[7]),
        .I3(axi_arlen[7]),
        .O(axi_araddr3_carry_i_1_n_0));
  LUT4 #(
    .INIT(16'h2F02)) 
    axi_araddr3_carry_i_2
       (.I0(axi_arlen[4]),
        .I1(axi_arlen_cntr_reg[4]),
        .I2(axi_arlen_cntr_reg[5]),
        .I3(axi_arlen[5]),
        .O(axi_araddr3_carry_i_2_n_0));
  LUT4 #(
    .INIT(16'h2F02)) 
    axi_araddr3_carry_i_3
       (.I0(axi_arlen[2]),
        .I1(axi_arlen_cntr_reg[2]),
        .I2(axi_arlen_cntr_reg[3]),
        .I3(axi_arlen[3]),
        .O(axi_araddr3_carry_i_3_n_0));
  LUT4 #(
    .INIT(16'h2F02)) 
    axi_araddr3_carry_i_4
       (.I0(axi_arlen[0]),
        .I1(axi_arlen_cntr_reg[0]),
        .I2(axi_arlen_cntr_reg[1]),
        .I3(axi_arlen[1]),
        .O(axi_araddr3_carry_i_4_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    axi_araddr3_carry_i_5
       (.I0(axi_arlen[6]),
        .I1(axi_arlen_cntr_reg[6]),
        .I2(axi_arlen[7]),
        .I3(axi_arlen_cntr_reg[7]),
        .O(axi_araddr3_carry_i_5_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    axi_araddr3_carry_i_6
       (.I0(axi_arlen[4]),
        .I1(axi_arlen_cntr_reg[4]),
        .I2(axi_arlen[5]),
        .I3(axi_arlen_cntr_reg[5]),
        .O(axi_araddr3_carry_i_6_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    axi_araddr3_carry_i_7
       (.I0(axi_arlen[2]),
        .I1(axi_arlen_cntr_reg[2]),
        .I2(axi_arlen[3]),
        .I3(axi_arlen_cntr_reg[3]),
        .O(axi_araddr3_carry_i_7_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    axi_araddr3_carry_i_8
       (.I0(axi_arlen[0]),
        .I1(axi_arlen_cntr_reg[0]),
        .I2(axi_arlen[1]),
        .I3(axi_arlen_cntr_reg[1]),
        .O(axi_araddr3_carry_i_8_n_0));
  LUT5 #(
    .INIT(32'hFFEF0020)) 
    \axi_araddr[10]_i_1 
       (.I0(axif_araddr[8]),
        .I1(axi_arready_reg_0),
        .I2(axif_arvalid),
        .I3(axi_arv_arr_flag),
        .I4(\plusOp_inferred__1/i__carry__0_n_4 ),
        .O(\axi_araddr[10]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFFEF0020)) 
    \axi_araddr[11]_i_1 
       (.I0(axif_araddr[9]),
        .I1(axi_arready_reg_0),
        .I2(axif_arvalid),
        .I3(axi_arv_arr_flag),
        .I4(\plusOp_inferred__1/i__carry__1_n_7 ),
        .O(\axi_araddr[11]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFFEF0020)) 
    \axi_araddr[12]_i_1 
       (.I0(axif_araddr[10]),
        .I1(axi_arready_reg_0),
        .I2(axif_arvalid),
        .I3(axi_arv_arr_flag),
        .I4(\plusOp_inferred__1/i__carry__1_n_6 ),
        .O(\axi_araddr[12]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFFEF0020)) 
    \axi_araddr[13]_i_1 
       (.I0(axif_araddr[11]),
        .I1(axi_arready_reg_0),
        .I2(axif_arvalid),
        .I3(axi_arv_arr_flag),
        .I4(\plusOp_inferred__1/i__carry__1_n_5 ),
        .O(\axi_araddr[13]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFFEF0020)) 
    \axi_araddr[14]_i_1 
       (.I0(axif_araddr[12]),
        .I1(axi_arready_reg_0),
        .I2(axif_arvalid),
        .I3(axi_arv_arr_flag),
        .I4(\plusOp_inferred__1/i__carry__1_n_4 ),
        .O(\axi_araddr[14]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFFEF0020)) 
    \axi_araddr[15]_i_1 
       (.I0(axif_araddr[13]),
        .I1(axi_arready_reg_0),
        .I2(axif_arvalid),
        .I3(axi_arv_arr_flag),
        .I4(\plusOp_inferred__1/i__carry__2_n_7 ),
        .O(\axi_araddr[15]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFFEF0020)) 
    \axi_araddr[16]_i_1 
       (.I0(axif_araddr[14]),
        .I1(axi_arready_reg_0),
        .I2(axif_arvalid),
        .I3(axi_arv_arr_flag),
        .I4(\plusOp_inferred__1/i__carry__2_n_6 ),
        .O(\axi_araddr[16]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFEAAAAAAAAAAAAAA)) 
    \axi_araddr[17]_i_1 
       (.I0(\axi_arlen[7]_i_1_n_0 ),
        .I1(axi_arburst[0]),
        .I2(axi_arburst[1]),
        .I3(axif_rready),
        .I4(axi_rvalid_reg_0),
        .I5(axi_araddr3),
        .O(\axi_araddr[17]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFFEF0020)) 
    \axi_araddr[17]_i_2 
       (.I0(axif_araddr[15]),
        .I1(axi_arready_reg_0),
        .I2(axif_arvalid),
        .I3(axi_arv_arr_flag),
        .I4(\plusOp_inferred__1/i__carry__2_n_5 ),
        .O(\axi_araddr[17]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'h0020FFEF)) 
    \axi_araddr[2]_i_1 
       (.I0(axif_araddr[0]),
        .I1(axi_arready_reg_0),
        .I2(axif_arvalid),
        .I3(axi_arv_arr_flag),
        .I4(\axi_araddr_reg_n_0_[2] ),
        .O(\axi_araddr[2]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFFEF0020)) 
    \axi_araddr[3]_i_1 
       (.I0(axif_araddr[1]),
        .I1(axi_arready_reg_0),
        .I2(axif_arvalid),
        .I3(axi_arv_arr_flag),
        .I4(\plusOp_inferred__1/i__carry_n_7 ),
        .O(\axi_araddr[3]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFFEF0020)) 
    \axi_araddr[4]_i_1 
       (.I0(axif_araddr[2]),
        .I1(axi_arready_reg_0),
        .I2(axif_arvalid),
        .I3(axi_arv_arr_flag),
        .I4(\plusOp_inferred__1/i__carry_n_6 ),
        .O(\axi_araddr[4]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFFEF0020)) 
    \axi_araddr[5]_i_1 
       (.I0(axif_araddr[3]),
        .I1(axi_arready_reg_0),
        .I2(axif_arvalid),
        .I3(axi_arv_arr_flag),
        .I4(\plusOp_inferred__1/i__carry_n_5 ),
        .O(\axi_araddr[5]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFFEF0020)) 
    \axi_araddr[6]_i_1 
       (.I0(axif_araddr[4]),
        .I1(axi_arready_reg_0),
        .I2(axif_arvalid),
        .I3(axi_arv_arr_flag),
        .I4(\plusOp_inferred__1/i__carry_n_4 ),
        .O(\axi_araddr[6]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFFEF0020)) 
    \axi_araddr[7]_i_1 
       (.I0(axif_araddr[5]),
        .I1(axi_arready_reg_0),
        .I2(axif_arvalid),
        .I3(axi_arv_arr_flag),
        .I4(\plusOp_inferred__1/i__carry__0_n_7 ),
        .O(\axi_araddr[7]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFFEF0020)) 
    \axi_araddr[8]_i_1 
       (.I0(axif_araddr[6]),
        .I1(axi_arready_reg_0),
        .I2(axif_arvalid),
        .I3(axi_arv_arr_flag),
        .I4(\plusOp_inferred__1/i__carry__0_n_6 ),
        .O(\axi_araddr[8]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFFEF0020)) 
    \axi_araddr[9]_i_1 
       (.I0(axif_araddr[7]),
        .I1(axi_arready_reg_0),
        .I2(axif_arvalid),
        .I3(axi_arv_arr_flag),
        .I4(\plusOp_inferred__1/i__carry__0_n_5 ),
        .O(\axi_araddr[9]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \axi_araddr_reg[10] 
       (.C(axif_aclk),
        .CE(\axi_araddr[17]_i_1_n_0 ),
        .D(\axi_araddr[10]_i_1_n_0 ),
        .Q(\axi_araddr_reg_n_0_[10] ),
        .R(axi_awready_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \axi_araddr_reg[11] 
       (.C(axif_aclk),
        .CE(\axi_araddr[17]_i_1_n_0 ),
        .D(\axi_araddr[11]_i_1_n_0 ),
        .Q(\axi_araddr_reg_n_0_[11] ),
        .R(axi_awready_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \axi_araddr_reg[12] 
       (.C(axif_aclk),
        .CE(\axi_araddr[17]_i_1_n_0 ),
        .D(\axi_araddr[12]_i_1_n_0 ),
        .Q(\axi_araddr_reg_n_0_[12] ),
        .R(axi_awready_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \axi_araddr_reg[13] 
       (.C(axif_aclk),
        .CE(\axi_araddr[17]_i_1_n_0 ),
        .D(\axi_araddr[13]_i_1_n_0 ),
        .Q(\axi_araddr_reg_n_0_[13] ),
        .R(axi_awready_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \axi_araddr_reg[14] 
       (.C(axif_aclk),
        .CE(\axi_araddr[17]_i_1_n_0 ),
        .D(\axi_araddr[14]_i_1_n_0 ),
        .Q(\axi_araddr_reg_n_0_[14] ),
        .R(axi_awready_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \axi_araddr_reg[15] 
       (.C(axif_aclk),
        .CE(\axi_araddr[17]_i_1_n_0 ),
        .D(\axi_araddr[15]_i_1_n_0 ),
        .Q(\axi_araddr_reg_n_0_[15] ),
        .R(axi_awready_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \axi_araddr_reg[16] 
       (.C(axif_aclk),
        .CE(\axi_araddr[17]_i_1_n_0 ),
        .D(\axi_araddr[16]_i_1_n_0 ),
        .Q(\axi_araddr_reg_n_0_[16] ),
        .R(axi_awready_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \axi_araddr_reg[17] 
       (.C(axif_aclk),
        .CE(\axi_araddr[17]_i_1_n_0 ),
        .D(\axi_araddr[17]_i_2_n_0 ),
        .Q(\axi_araddr_reg_n_0_[17] ),
        .R(axi_awready_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \axi_araddr_reg[2] 
       (.C(axif_aclk),
        .CE(\axi_araddr[17]_i_1_n_0 ),
        .D(\axi_araddr[2]_i_1_n_0 ),
        .Q(\axi_araddr_reg_n_0_[2] ),
        .R(axi_awready_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \axi_araddr_reg[3] 
       (.C(axif_aclk),
        .CE(\axi_araddr[17]_i_1_n_0 ),
        .D(\axi_araddr[3]_i_1_n_0 ),
        .Q(\axi_araddr_reg_n_0_[3] ),
        .R(axi_awready_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \axi_araddr_reg[4] 
       (.C(axif_aclk),
        .CE(\axi_araddr[17]_i_1_n_0 ),
        .D(\axi_araddr[4]_i_1_n_0 ),
        .Q(\axi_araddr_reg_n_0_[4] ),
        .R(axi_awready_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \axi_araddr_reg[5] 
       (.C(axif_aclk),
        .CE(\axi_araddr[17]_i_1_n_0 ),
        .D(\axi_araddr[5]_i_1_n_0 ),
        .Q(\axi_araddr_reg_n_0_[5] ),
        .R(axi_awready_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \axi_araddr_reg[6] 
       (.C(axif_aclk),
        .CE(\axi_araddr[17]_i_1_n_0 ),
        .D(\axi_araddr[6]_i_1_n_0 ),
        .Q(\axi_araddr_reg_n_0_[6] ),
        .R(axi_awready_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \axi_araddr_reg[7] 
       (.C(axif_aclk),
        .CE(\axi_araddr[17]_i_1_n_0 ),
        .D(\axi_araddr[7]_i_1_n_0 ),
        .Q(\axi_araddr_reg_n_0_[7] ),
        .R(axi_awready_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \axi_araddr_reg[8] 
       (.C(axif_aclk),
        .CE(\axi_araddr[17]_i_1_n_0 ),
        .D(\axi_araddr[8]_i_1_n_0 ),
        .Q(\axi_araddr_reg_n_0_[8] ),
        .R(axi_awready_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \axi_araddr_reg[9] 
       (.C(axif_aclk),
        .CE(\axi_araddr[17]_i_1_n_0 ),
        .D(\axi_araddr[9]_i_1_n_0 ),
        .Q(\axi_araddr_reg_n_0_[9] ),
        .R(axi_awready_i_1_n_0));
  FDRE \axi_arburst_reg[0] 
       (.C(axif_aclk),
        .CE(\axi_arlen[7]_i_1_n_0 ),
        .D(axif_arburst[0]),
        .Q(axi_arburst[0]),
        .R(axi_awready_i_1_n_0));
  FDRE \axi_arburst_reg[1] 
       (.C(axif_aclk),
        .CE(\axi_arlen[7]_i_1_n_0 ),
        .D(axif_arburst[1]),
        .Q(axi_arburst[1]),
        .R(axi_awready_i_1_n_0));
  LUT3 #(
    .INIT(8'h04)) 
    \axi_arlen[7]_i_1 
       (.I0(axi_arready_reg_0),
        .I1(axif_arvalid),
        .I2(axi_arv_arr_flag),
        .O(\axi_arlen[7]_i_1_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \axi_arlen_cntr[0]_i_1 
       (.I0(axi_arlen_cntr_reg[0]),
        .O(\axi_arlen_cntr[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \axi_arlen_cntr[1]_i_1 
       (.I0(axi_arlen_cntr_reg[0]),
        .I1(axi_arlen_cntr_reg[1]),
        .O(plusOp__0[1]));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT3 #(
    .INIT(8'h78)) 
    \axi_arlen_cntr[2]_i_1 
       (.I0(axi_arlen_cntr_reg[0]),
        .I1(axi_arlen_cntr_reg[1]),
        .I2(axi_arlen_cntr_reg[2]),
        .O(plusOp__0[2]));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT4 #(
    .INIT(16'h7F80)) 
    \axi_arlen_cntr[3]_i_1 
       (.I0(axi_arlen_cntr_reg[1]),
        .I1(axi_arlen_cntr_reg[0]),
        .I2(axi_arlen_cntr_reg[2]),
        .I3(axi_arlen_cntr_reg[3]),
        .O(plusOp__0[3]));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT5 #(
    .INIT(32'h7FFF8000)) 
    \axi_arlen_cntr[4]_i_1 
       (.I0(axi_arlen_cntr_reg[2]),
        .I1(axi_arlen_cntr_reg[0]),
        .I2(axi_arlen_cntr_reg[1]),
        .I3(axi_arlen_cntr_reg[3]),
        .I4(axi_arlen_cntr_reg[4]),
        .O(plusOp__0[4]));
  LUT6 #(
    .INIT(64'h7FFFFFFF80000000)) 
    \axi_arlen_cntr[5]_i_1 
       (.I0(axi_arlen_cntr_reg[3]),
        .I1(axi_arlen_cntr_reg[1]),
        .I2(axi_arlen_cntr_reg[0]),
        .I3(axi_arlen_cntr_reg[2]),
        .I4(axi_arlen_cntr_reg[4]),
        .I5(axi_arlen_cntr_reg[5]),
        .O(plusOp__0[5]));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \axi_arlen_cntr[6]_i_1 
       (.I0(\axi_arlen_cntr[7]_i_4_n_0 ),
        .I1(axi_arlen_cntr_reg[6]),
        .O(plusOp__0[6]));
  LUT4 #(
    .INIT(16'h04FF)) 
    \axi_arlen_cntr[7]_i_1 
       (.I0(axi_arv_arr_flag),
        .I1(axif_arvalid),
        .I2(axi_arready_reg_0),
        .I3(axif_aresetn),
        .O(\axi_arlen_cntr[7]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'h80)) 
    \axi_arlen_cntr[7]_i_2 
       (.I0(axif_rready),
        .I1(axi_rvalid_reg_0),
        .I2(axi_araddr3),
        .O(axi_araddr1));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT3 #(
    .INIT(8'h78)) 
    \axi_arlen_cntr[7]_i_3 
       (.I0(\axi_arlen_cntr[7]_i_4_n_0 ),
        .I1(axi_arlen_cntr_reg[6]),
        .I2(axi_arlen_cntr_reg[7]),
        .O(plusOp__0[7]));
  LUT6 #(
    .INIT(64'h8000000000000000)) 
    \axi_arlen_cntr[7]_i_4 
       (.I0(axi_arlen_cntr_reg[5]),
        .I1(axi_arlen_cntr_reg[3]),
        .I2(axi_arlen_cntr_reg[1]),
        .I3(axi_arlen_cntr_reg[0]),
        .I4(axi_arlen_cntr_reg[2]),
        .I5(axi_arlen_cntr_reg[4]),
        .O(\axi_arlen_cntr[7]_i_4_n_0 ));
  FDRE \axi_arlen_cntr_reg[0] 
       (.C(axif_aclk),
        .CE(axi_araddr1),
        .D(\axi_arlen_cntr[0]_i_1_n_0 ),
        .Q(axi_arlen_cntr_reg[0]),
        .R(\axi_arlen_cntr[7]_i_1_n_0 ));
  FDRE \axi_arlen_cntr_reg[1] 
       (.C(axif_aclk),
        .CE(axi_araddr1),
        .D(plusOp__0[1]),
        .Q(axi_arlen_cntr_reg[1]),
        .R(\axi_arlen_cntr[7]_i_1_n_0 ));
  FDRE \axi_arlen_cntr_reg[2] 
       (.C(axif_aclk),
        .CE(axi_araddr1),
        .D(plusOp__0[2]),
        .Q(axi_arlen_cntr_reg[2]),
        .R(\axi_arlen_cntr[7]_i_1_n_0 ));
  FDRE \axi_arlen_cntr_reg[3] 
       (.C(axif_aclk),
        .CE(axi_araddr1),
        .D(plusOp__0[3]),
        .Q(axi_arlen_cntr_reg[3]),
        .R(\axi_arlen_cntr[7]_i_1_n_0 ));
  FDRE \axi_arlen_cntr_reg[4] 
       (.C(axif_aclk),
        .CE(axi_araddr1),
        .D(plusOp__0[4]),
        .Q(axi_arlen_cntr_reg[4]),
        .R(\axi_arlen_cntr[7]_i_1_n_0 ));
  FDRE \axi_arlen_cntr_reg[5] 
       (.C(axif_aclk),
        .CE(axi_araddr1),
        .D(plusOp__0[5]),
        .Q(axi_arlen_cntr_reg[5]),
        .R(\axi_arlen_cntr[7]_i_1_n_0 ));
  FDRE \axi_arlen_cntr_reg[6] 
       (.C(axif_aclk),
        .CE(axi_araddr1),
        .D(plusOp__0[6]),
        .Q(axi_arlen_cntr_reg[6]),
        .R(\axi_arlen_cntr[7]_i_1_n_0 ));
  FDRE \axi_arlen_cntr_reg[7] 
       (.C(axif_aclk),
        .CE(axi_araddr1),
        .D(plusOp__0[7]),
        .Q(axi_arlen_cntr_reg[7]),
        .R(\axi_arlen_cntr[7]_i_1_n_0 ));
  FDRE \axi_arlen_reg[0] 
       (.C(axif_aclk),
        .CE(\axi_arlen[7]_i_1_n_0 ),
        .D(axif_arlen[0]),
        .Q(axi_arlen[0]),
        .R(axi_awready_i_1_n_0));
  FDRE \axi_arlen_reg[1] 
       (.C(axif_aclk),
        .CE(\axi_arlen[7]_i_1_n_0 ),
        .D(axif_arlen[1]),
        .Q(axi_arlen[1]),
        .R(axi_awready_i_1_n_0));
  FDRE \axi_arlen_reg[2] 
       (.C(axif_aclk),
        .CE(\axi_arlen[7]_i_1_n_0 ),
        .D(axif_arlen[2]),
        .Q(axi_arlen[2]),
        .R(axi_awready_i_1_n_0));
  FDRE \axi_arlen_reg[3] 
       (.C(axif_aclk),
        .CE(\axi_arlen[7]_i_1_n_0 ),
        .D(axif_arlen[3]),
        .Q(axi_arlen[3]),
        .R(axi_awready_i_1_n_0));
  FDRE \axi_arlen_reg[4] 
       (.C(axif_aclk),
        .CE(\axi_arlen[7]_i_1_n_0 ),
        .D(axif_arlen[4]),
        .Q(axi_arlen[4]),
        .R(axi_awready_i_1_n_0));
  FDRE \axi_arlen_reg[5] 
       (.C(axif_aclk),
        .CE(\axi_arlen[7]_i_1_n_0 ),
        .D(axif_arlen[5]),
        .Q(axi_arlen[5]),
        .R(axi_awready_i_1_n_0));
  FDRE \axi_arlen_reg[6] 
       (.C(axif_aclk),
        .CE(\axi_arlen[7]_i_1_n_0 ),
        .D(axif_arlen[6]),
        .Q(axi_arlen[6]),
        .R(axi_awready_i_1_n_0));
  FDRE \axi_arlen_reg[7] 
       (.C(axif_aclk),
        .CE(\axi_arlen[7]_i_1_n_0 ),
        .D(axif_arlen[7]),
        .Q(axi_arlen[7]),
        .R(axi_awready_i_1_n_0));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'hCCDC0010)) 
    axi_arready_i_1__0
       (.I0(axi_awv_awr_flag),
        .I1(axi_arready_reg_0),
        .I2(axif_arvalid),
        .I3(axi_arv_arr_flag),
        .I4(axi_arready1__0),
        .O(axi_arready_i_1__0_n_0));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT3 #(
    .INIT(8'h80)) 
    axi_arready_i_2
       (.I0(axif_rready),
        .I1(axi_rvalid_reg_0),
        .I2(axi_arready2__14),
        .O(axi_arready1__0));
  LUT6 #(
    .INIT(64'h9009000000000000)) 
    axi_arready_i_3
       (.I0(axi_arlen[7]),
        .I1(axi_arlen_cntr_reg[7]),
        .I2(axi_arlen[6]),
        .I3(axi_arlen_cntr_reg[6]),
        .I4(axi_arready_i_4_n_0),
        .I5(axi_arready_i_5_n_0),
        .O(axi_arready2__14));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    axi_arready_i_4
       (.I0(axi_arlen_cntr_reg[3]),
        .I1(axi_arlen[3]),
        .I2(axi_arlen[5]),
        .I3(axi_arlen_cntr_reg[5]),
        .I4(axi_arlen[4]),
        .I5(axi_arlen_cntr_reg[4]),
        .O(axi_arready_i_4_n_0));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    axi_arready_i_5
       (.I0(axi_arlen_cntr_reg[0]),
        .I1(axi_arlen[0]),
        .I2(axi_arlen[2]),
        .I3(axi_arlen_cntr_reg[2]),
        .I4(axi_arlen[1]),
        .I5(axi_arlen_cntr_reg[1]),
        .O(axi_arready_i_5_n_0));
  FDRE axi_arready_reg
       (.C(axif_aclk),
        .CE(1'b1),
        .D(axi_arready_i_1__0_n_0),
        .Q(axi_arready_reg_0),
        .R(axi_awready_i_1_n_0));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'h0010FF10)) 
    axi_arv_arr_flag_i_1
       (.I0(axi_awv_awr_flag),
        .I1(axi_arready_reg_0),
        .I2(axif_arvalid),
        .I3(axi_arv_arr_flag),
        .I4(axi_arready1__0),
        .O(axi_arv_arr_flag_i_1_n_0));
  FDRE axi_arv_arr_flag_reg
       (.C(axif_aclk),
        .CE(1'b1),
        .D(axi_arv_arr_flag_i_1_n_0),
        .Q(axi_arv_arr_flag),
        .R(axi_awready_i_1_n_0));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY4 axi_awaddr3_carry
       (.CI(1'b0),
        .CO({axi_awaddr3,axi_awaddr3_carry_n_1,axi_awaddr3_carry_n_2,axi_awaddr3_carry_n_3}),
        .CYINIT(1'b1),
        .DI({axi_awaddr3_carry_i_1_n_0,axi_awaddr3_carry_i_2_n_0,axi_awaddr3_carry_i_3_n_0,axi_awaddr3_carry_i_4_n_0}),
        .O(NLW_axi_awaddr3_carry_O_UNCONNECTED[3:0]),
        .S({axi_awaddr3_carry_i_5_n_0,axi_awaddr3_carry_i_6_n_0,axi_awaddr3_carry_i_7_n_0,axi_awaddr3_carry_i_8_n_0}));
  LUT4 #(
    .INIT(16'h2F02)) 
    axi_awaddr3_carry_i_1
       (.I0(axi_awlen[6]),
        .I1(axi_awlen_cntr_reg[6]),
        .I2(axi_awlen_cntr_reg[7]),
        .I3(axi_awlen[7]),
        .O(axi_awaddr3_carry_i_1_n_0));
  LUT4 #(
    .INIT(16'h2F02)) 
    axi_awaddr3_carry_i_2
       (.I0(axi_awlen[4]),
        .I1(axi_awlen_cntr_reg[4]),
        .I2(axi_awlen_cntr_reg[5]),
        .I3(axi_awlen[5]),
        .O(axi_awaddr3_carry_i_2_n_0));
  LUT4 #(
    .INIT(16'h2F02)) 
    axi_awaddr3_carry_i_3
       (.I0(axi_awlen[2]),
        .I1(axi_awlen_cntr_reg[2]),
        .I2(axi_awlen_cntr_reg[3]),
        .I3(axi_awlen[3]),
        .O(axi_awaddr3_carry_i_3_n_0));
  LUT4 #(
    .INIT(16'h2F02)) 
    axi_awaddr3_carry_i_4
       (.I0(axi_awlen[0]),
        .I1(axi_awlen_cntr_reg[0]),
        .I2(axi_awlen_cntr_reg[1]),
        .I3(axi_awlen[1]),
        .O(axi_awaddr3_carry_i_4_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    axi_awaddr3_carry_i_5
       (.I0(axi_awlen[6]),
        .I1(axi_awlen_cntr_reg[6]),
        .I2(axi_awlen[7]),
        .I3(axi_awlen_cntr_reg[7]),
        .O(axi_awaddr3_carry_i_5_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    axi_awaddr3_carry_i_6
       (.I0(axi_awlen[4]),
        .I1(axi_awlen_cntr_reg[4]),
        .I2(axi_awlen[5]),
        .I3(axi_awlen_cntr_reg[5]),
        .O(axi_awaddr3_carry_i_6_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    axi_awaddr3_carry_i_7
       (.I0(axi_awlen[2]),
        .I1(axi_awlen_cntr_reg[2]),
        .I2(axi_awlen[3]),
        .I3(axi_awlen_cntr_reg[3]),
        .O(axi_awaddr3_carry_i_7_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    axi_awaddr3_carry_i_8
       (.I0(axi_awlen[0]),
        .I1(axi_awlen_cntr_reg[0]),
        .I2(axi_awlen[1]),
        .I3(axi_awlen_cntr_reg[1]),
        .O(axi_awaddr3_carry_i_8_n_0));
  LUT5 #(
    .INIT(32'hFFFB0008)) 
    \axi_awaddr[10]_i_1 
       (.I0(axif_awaddr[8]),
        .I1(axif_awvalid),
        .I2(axi_awv_awr_flag),
        .I3(axi_awready_reg_0),
        .I4(plusOp[8]),
        .O(p_2_in[10]));
  LUT5 #(
    .INIT(32'hFFFB0008)) 
    \axi_awaddr[11]_i_1 
       (.I0(axif_awaddr[9]),
        .I1(axif_awvalid),
        .I2(axi_awv_awr_flag),
        .I3(axi_awready_reg_0),
        .I4(plusOp[9]),
        .O(p_2_in[11]));
  LUT5 #(
    .INIT(32'hFFFB0008)) 
    \axi_awaddr[12]_i_1 
       (.I0(axif_awaddr[10]),
        .I1(axif_awvalid),
        .I2(axi_awv_awr_flag),
        .I3(axi_awready_reg_0),
        .I4(plusOp[10]),
        .O(p_2_in[12]));
  LUT5 #(
    .INIT(32'hFFFB0008)) 
    \axi_awaddr[13]_i_1 
       (.I0(axif_awaddr[11]),
        .I1(axif_awvalid),
        .I2(axi_awv_awr_flag),
        .I3(axi_awready_reg_0),
        .I4(plusOp[11]),
        .O(p_2_in[13]));
  LUT5 #(
    .INIT(32'hFFFB0008)) 
    \axi_awaddr[14]_i_1 
       (.I0(axif_awaddr[12]),
        .I1(axif_awvalid),
        .I2(axi_awv_awr_flag),
        .I3(axi_awready_reg_0),
        .I4(plusOp[12]),
        .O(p_2_in[14]));
  LUT5 #(
    .INIT(32'hFFFB0008)) 
    \axi_awaddr[15]_i_1 
       (.I0(axif_awaddr[13]),
        .I1(axif_awvalid),
        .I2(axi_awv_awr_flag),
        .I3(axi_awready_reg_0),
        .I4(plusOp[13]),
        .O(p_2_in[15]));
  LUT5 #(
    .INIT(32'hFFFB0008)) 
    \axi_awaddr[16]_i_1 
       (.I0(axif_awaddr[14]),
        .I1(axif_awvalid),
        .I2(axi_awv_awr_flag),
        .I3(axi_awready_reg_0),
        .I4(plusOp[14]),
        .O(p_2_in[16]));
  LUT6 #(
    .INIT(64'hF8F8F8F0F0F0F0F0)) 
    \axi_awaddr[17]_i_1 
       (.I0(axi_wready_reg_0),
        .I1(axif_wvalid),
        .I2(p_9_in),
        .I3(axi_awburst[0]),
        .I4(axi_awburst[1]),
        .I5(axi_awaddr3),
        .O(\axi_awaddr[17]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFFFB0008)) 
    \axi_awaddr[17]_i_2 
       (.I0(axif_awaddr[15]),
        .I1(axif_awvalid),
        .I2(axi_awv_awr_flag),
        .I3(axi_awready_reg_0),
        .I4(plusOp[15]),
        .O(p_2_in[17]));
  LUT5 #(
    .INIT(32'h0008FFFB)) 
    \axi_awaddr[2]_i_1 
       (.I0(axif_awaddr[0]),
        .I1(axif_awvalid),
        .I2(axi_awv_awr_flag),
        .I3(axi_awready_reg_0),
        .I4(L[2]),
        .O(p_2_in[2]));
  LUT5 #(
    .INIT(32'hFFFB0008)) 
    \axi_awaddr[3]_i_1 
       (.I0(axif_awaddr[1]),
        .I1(axif_awvalid),
        .I2(axi_awv_awr_flag),
        .I3(axi_awready_reg_0),
        .I4(plusOp[1]),
        .O(p_2_in[3]));
  LUT5 #(
    .INIT(32'hFFFB0008)) 
    \axi_awaddr[4]_i_1 
       (.I0(axif_awaddr[2]),
        .I1(axif_awvalid),
        .I2(axi_awv_awr_flag),
        .I3(axi_awready_reg_0),
        .I4(plusOp[2]),
        .O(p_2_in[4]));
  LUT5 #(
    .INIT(32'hFFFB0008)) 
    \axi_awaddr[5]_i_1 
       (.I0(axif_awaddr[3]),
        .I1(axif_awvalid),
        .I2(axi_awv_awr_flag),
        .I3(axi_awready_reg_0),
        .I4(plusOp[3]),
        .O(p_2_in[5]));
  LUT5 #(
    .INIT(32'hFFFB0008)) 
    \axi_awaddr[6]_i_1 
       (.I0(axif_awaddr[4]),
        .I1(axif_awvalid),
        .I2(axi_awv_awr_flag),
        .I3(axi_awready_reg_0),
        .I4(plusOp[4]),
        .O(p_2_in[6]));
  LUT5 #(
    .INIT(32'hFFFB0008)) 
    \axi_awaddr[7]_i_1 
       (.I0(axif_awaddr[5]),
        .I1(axif_awvalid),
        .I2(axi_awv_awr_flag),
        .I3(axi_awready_reg_0),
        .I4(plusOp[5]),
        .O(p_2_in[7]));
  LUT5 #(
    .INIT(32'hFFFB0008)) 
    \axi_awaddr[8]_i_1 
       (.I0(axif_awaddr[6]),
        .I1(axif_awvalid),
        .I2(axi_awv_awr_flag),
        .I3(axi_awready_reg_0),
        .I4(plusOp[6]),
        .O(p_2_in[8]));
  LUT5 #(
    .INIT(32'hFFFB0008)) 
    \axi_awaddr[9]_i_1 
       (.I0(axif_awaddr[7]),
        .I1(axif_awvalid),
        .I2(axi_awv_awr_flag),
        .I3(axi_awready_reg_0),
        .I4(plusOp[7]),
        .O(p_2_in[9]));
  FDRE #(
    .INIT(1'b0)) 
    \axi_awaddr_reg[10] 
       (.C(axif_aclk),
        .CE(\axi_awaddr[17]_i_1_n_0 ),
        .D(p_2_in[10]),
        .Q(L[10]),
        .R(axi_awready_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \axi_awaddr_reg[11] 
       (.C(axif_aclk),
        .CE(\axi_awaddr[17]_i_1_n_0 ),
        .D(p_2_in[11]),
        .Q(L[11]),
        .R(axi_awready_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \axi_awaddr_reg[12] 
       (.C(axif_aclk),
        .CE(\axi_awaddr[17]_i_1_n_0 ),
        .D(p_2_in[12]),
        .Q(L[12]),
        .R(axi_awready_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \axi_awaddr_reg[13] 
       (.C(axif_aclk),
        .CE(\axi_awaddr[17]_i_1_n_0 ),
        .D(p_2_in[13]),
        .Q(L[13]),
        .R(axi_awready_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \axi_awaddr_reg[14] 
       (.C(axif_aclk),
        .CE(\axi_awaddr[17]_i_1_n_0 ),
        .D(p_2_in[14]),
        .Q(L[14]),
        .R(axi_awready_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \axi_awaddr_reg[15] 
       (.C(axif_aclk),
        .CE(\axi_awaddr[17]_i_1_n_0 ),
        .D(p_2_in[15]),
        .Q(L[15]),
        .R(axi_awready_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \axi_awaddr_reg[16] 
       (.C(axif_aclk),
        .CE(\axi_awaddr[17]_i_1_n_0 ),
        .D(p_2_in[16]),
        .Q(L[16]),
        .R(axi_awready_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \axi_awaddr_reg[17] 
       (.C(axif_aclk),
        .CE(\axi_awaddr[17]_i_1_n_0 ),
        .D(p_2_in[17]),
        .Q(L[17]),
        .R(axi_awready_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \axi_awaddr_reg[2] 
       (.C(axif_aclk),
        .CE(\axi_awaddr[17]_i_1_n_0 ),
        .D(p_2_in[2]),
        .Q(L[2]),
        .R(axi_awready_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \axi_awaddr_reg[3] 
       (.C(axif_aclk),
        .CE(\axi_awaddr[17]_i_1_n_0 ),
        .D(p_2_in[3]),
        .Q(L[3]),
        .R(axi_awready_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \axi_awaddr_reg[4] 
       (.C(axif_aclk),
        .CE(\axi_awaddr[17]_i_1_n_0 ),
        .D(p_2_in[4]),
        .Q(L[4]),
        .R(axi_awready_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \axi_awaddr_reg[5] 
       (.C(axif_aclk),
        .CE(\axi_awaddr[17]_i_1_n_0 ),
        .D(p_2_in[5]),
        .Q(L[5]),
        .R(axi_awready_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \axi_awaddr_reg[6] 
       (.C(axif_aclk),
        .CE(\axi_awaddr[17]_i_1_n_0 ),
        .D(p_2_in[6]),
        .Q(L[6]),
        .R(axi_awready_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \axi_awaddr_reg[7] 
       (.C(axif_aclk),
        .CE(\axi_awaddr[17]_i_1_n_0 ),
        .D(p_2_in[7]),
        .Q(L[7]),
        .R(axi_awready_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \axi_awaddr_reg[8] 
       (.C(axif_aclk),
        .CE(\axi_awaddr[17]_i_1_n_0 ),
        .D(p_2_in[8]),
        .Q(L[8]),
        .R(axi_awready_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \axi_awaddr_reg[9] 
       (.C(axif_aclk),
        .CE(\axi_awaddr[17]_i_1_n_0 ),
        .D(p_2_in[9]),
        .Q(L[9]),
        .R(axi_awready_i_1_n_0));
  LUT3 #(
    .INIT(8'h02)) 
    \axi_awburst[1]_i_1 
       (.I0(axif_awvalid),
        .I1(axi_awv_awr_flag),
        .I2(axi_awready_reg_0),
        .O(p_9_in));
  FDRE \axi_awburst_reg[0] 
       (.C(axif_aclk),
        .CE(p_9_in),
        .D(axif_awburst[0]),
        .Q(axi_awburst[0]),
        .R(axi_awready_i_1_n_0));
  FDRE \axi_awburst_reg[1] 
       (.C(axif_aclk),
        .CE(p_9_in),
        .D(axif_awburst[1]),
        .Q(axi_awburst[1]),
        .R(axi_awready_i_1_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    \axi_awlen_cntr[0]_i_1 
       (.I0(axi_awlen_cntr_reg[0]),
        .O(\axi_awlen_cntr[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \axi_awlen_cntr[1]_i_1 
       (.I0(axi_awlen_cntr_reg[0]),
        .I1(axi_awlen_cntr_reg[1]),
        .O(plusOp__1[1]));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT3 #(
    .INIT(8'h78)) 
    \axi_awlen_cntr[2]_i_1 
       (.I0(axi_awlen_cntr_reg[0]),
        .I1(axi_awlen_cntr_reg[1]),
        .I2(axi_awlen_cntr_reg[2]),
        .O(plusOp__1[2]));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT4 #(
    .INIT(16'h7F80)) 
    \axi_awlen_cntr[3]_i_1 
       (.I0(axi_awlen_cntr_reg[1]),
        .I1(axi_awlen_cntr_reg[0]),
        .I2(axi_awlen_cntr_reg[2]),
        .I3(axi_awlen_cntr_reg[3]),
        .O(plusOp__1[3]));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT5 #(
    .INIT(32'h7FFF8000)) 
    \axi_awlen_cntr[4]_i_1 
       (.I0(axi_awlen_cntr_reg[2]),
        .I1(axi_awlen_cntr_reg[0]),
        .I2(axi_awlen_cntr_reg[1]),
        .I3(axi_awlen_cntr_reg[3]),
        .I4(axi_awlen_cntr_reg[4]),
        .O(plusOp__1[4]));
  LUT6 #(
    .INIT(64'h7FFFFFFF80000000)) 
    \axi_awlen_cntr[5]_i_1 
       (.I0(axi_awlen_cntr_reg[3]),
        .I1(axi_awlen_cntr_reg[1]),
        .I2(axi_awlen_cntr_reg[0]),
        .I3(axi_awlen_cntr_reg[2]),
        .I4(axi_awlen_cntr_reg[4]),
        .I5(axi_awlen_cntr_reg[5]),
        .O(plusOp__1[5]));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \axi_awlen_cntr[6]_i_1 
       (.I0(\axi_awlen_cntr[7]_i_4_n_0 ),
        .I1(axi_awlen_cntr_reg[6]),
        .O(plusOp__1[6]));
  LUT4 #(
    .INIT(16'h10FF)) 
    \axi_awlen_cntr[7]_i_1 
       (.I0(axi_awready_reg_0),
        .I1(axi_awv_awr_flag),
        .I2(axif_awvalid),
        .I3(axif_aresetn),
        .O(\axi_awlen_cntr[7]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'h80)) 
    \axi_awlen_cntr[7]_i_2 
       (.I0(axi_wready_reg_0),
        .I1(axif_wvalid),
        .I2(axi_awaddr3),
        .O(axi_awaddr1));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT3 #(
    .INIT(8'h78)) 
    \axi_awlen_cntr[7]_i_3 
       (.I0(\axi_awlen_cntr[7]_i_4_n_0 ),
        .I1(axi_awlen_cntr_reg[6]),
        .I2(axi_awlen_cntr_reg[7]),
        .O(plusOp__1[7]));
  LUT6 #(
    .INIT(64'h8000000000000000)) 
    \axi_awlen_cntr[7]_i_4 
       (.I0(axi_awlen_cntr_reg[5]),
        .I1(axi_awlen_cntr_reg[3]),
        .I2(axi_awlen_cntr_reg[1]),
        .I3(axi_awlen_cntr_reg[0]),
        .I4(axi_awlen_cntr_reg[2]),
        .I5(axi_awlen_cntr_reg[4]),
        .O(\axi_awlen_cntr[7]_i_4_n_0 ));
  FDRE \axi_awlen_cntr_reg[0] 
       (.C(axif_aclk),
        .CE(axi_awaddr1),
        .D(\axi_awlen_cntr[0]_i_1_n_0 ),
        .Q(axi_awlen_cntr_reg[0]),
        .R(\axi_awlen_cntr[7]_i_1_n_0 ));
  FDRE \axi_awlen_cntr_reg[1] 
       (.C(axif_aclk),
        .CE(axi_awaddr1),
        .D(plusOp__1[1]),
        .Q(axi_awlen_cntr_reg[1]),
        .R(\axi_awlen_cntr[7]_i_1_n_0 ));
  FDRE \axi_awlen_cntr_reg[2] 
       (.C(axif_aclk),
        .CE(axi_awaddr1),
        .D(plusOp__1[2]),
        .Q(axi_awlen_cntr_reg[2]),
        .R(\axi_awlen_cntr[7]_i_1_n_0 ));
  FDRE \axi_awlen_cntr_reg[3] 
       (.C(axif_aclk),
        .CE(axi_awaddr1),
        .D(plusOp__1[3]),
        .Q(axi_awlen_cntr_reg[3]),
        .R(\axi_awlen_cntr[7]_i_1_n_0 ));
  FDRE \axi_awlen_cntr_reg[4] 
       (.C(axif_aclk),
        .CE(axi_awaddr1),
        .D(plusOp__1[4]),
        .Q(axi_awlen_cntr_reg[4]),
        .R(\axi_awlen_cntr[7]_i_1_n_0 ));
  FDRE \axi_awlen_cntr_reg[5] 
       (.C(axif_aclk),
        .CE(axi_awaddr1),
        .D(plusOp__1[5]),
        .Q(axi_awlen_cntr_reg[5]),
        .R(\axi_awlen_cntr[7]_i_1_n_0 ));
  FDRE \axi_awlen_cntr_reg[6] 
       (.C(axif_aclk),
        .CE(axi_awaddr1),
        .D(plusOp__1[6]),
        .Q(axi_awlen_cntr_reg[6]),
        .R(\axi_awlen_cntr[7]_i_1_n_0 ));
  FDRE \axi_awlen_cntr_reg[7] 
       (.C(axif_aclk),
        .CE(axi_awaddr1),
        .D(plusOp__1[7]),
        .Q(axi_awlen_cntr_reg[7]),
        .R(\axi_awlen_cntr[7]_i_1_n_0 ));
  FDRE \axi_awlen_reg[0] 
       (.C(axif_aclk),
        .CE(p_9_in),
        .D(axif_awlen[0]),
        .Q(axi_awlen[0]),
        .R(axi_awready_i_1_n_0));
  FDRE \axi_awlen_reg[1] 
       (.C(axif_aclk),
        .CE(p_9_in),
        .D(axif_awlen[1]),
        .Q(axi_awlen[1]),
        .R(axi_awready_i_1_n_0));
  FDRE \axi_awlen_reg[2] 
       (.C(axif_aclk),
        .CE(p_9_in),
        .D(axif_awlen[2]),
        .Q(axi_awlen[2]),
        .R(axi_awready_i_1_n_0));
  FDRE \axi_awlen_reg[3] 
       (.C(axif_aclk),
        .CE(p_9_in),
        .D(axif_awlen[3]),
        .Q(axi_awlen[3]),
        .R(axi_awready_i_1_n_0));
  FDRE \axi_awlen_reg[4] 
       (.C(axif_aclk),
        .CE(p_9_in),
        .D(axif_awlen[4]),
        .Q(axi_awlen[4]),
        .R(axi_awready_i_1_n_0));
  FDRE \axi_awlen_reg[5] 
       (.C(axif_aclk),
        .CE(p_9_in),
        .D(axif_awlen[5]),
        .Q(axi_awlen[5]),
        .R(axi_awready_i_1_n_0));
  FDRE \axi_awlen_reg[6] 
       (.C(axif_aclk),
        .CE(p_9_in),
        .D(axif_awlen[6]),
        .Q(axi_awlen[6]),
        .R(axi_awready_i_1_n_0));
  FDRE \axi_awlen_reg[7] 
       (.C(axif_aclk),
        .CE(p_9_in),
        .D(axif_awlen[7]),
        .Q(axi_awlen[7]),
        .R(axi_awready_i_1_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    axi_awready_i_1
       (.I0(axif_aresetn),
        .O(axi_awready_i_1_n_0));
  LUT6 #(
    .INIT(64'hFF04000400040004)) 
    axi_awready_i_2__0
       (.I0(axi_arv_arr_flag),
        .I1(axif_awvalid),
        .I2(axi_awv_awr_flag),
        .I3(axi_awready_reg_0),
        .I4(axif_wlast),
        .I5(axi_wready_reg_0),
        .O(axi_awready_i_2__0_n_0));
  FDRE axi_awready_reg
       (.C(axif_aclk),
        .CE(1'b1),
        .D(axi_awready_i_2__0_n_0),
        .Q(axi_awready_reg_0),
        .R(axi_awready_i_1_n_0));
  LUT6 #(
    .INIT(64'h0004F0F4F0F4F0F4)) 
    axi_awv_awr_flag_i_1
       (.I0(axi_arv_arr_flag),
        .I1(axif_awvalid),
        .I2(axi_awv_awr_flag),
        .I3(axi_awready_reg_0),
        .I4(axif_wlast),
        .I5(axi_wready_reg_0),
        .O(axi_awv_awr_flag_i_1_n_0));
  FDRE axi_awv_awr_flag_reg
       (.C(axif_aclk),
        .CE(1'b1),
        .D(axi_awv_awr_flag_i_1_n_0),
        .Q(axi_awv_awr_flag),
        .R(axi_awready_i_1_n_0));
  LUT6 #(
    .INIT(64'h0000FFFF80008000)) 
    axi_bvalid_i_1__0
       (.I0(axi_wready_reg_0),
        .I1(axif_wvalid),
        .I2(axi_awv_awr_flag),
        .I3(axif_wlast),
        .I4(axif_bready),
        .I5(axif_bvalid),
        .O(axi_bvalid_i_1__0_n_0));
  FDRE axi_bvalid_reg
       (.C(axif_aclk),
        .CE(1'b1),
        .D(axi_bvalid_i_1__0_n_0),
        .Q(axif_bvalid),
        .R(axi_awready_i_1_n_0));
  LUT6 #(
    .INIT(64'h000000000000F200)) 
    axi_rlast_i_1
       (.I0(axif_rlast),
        .I1(axif_rready),
        .I2(axi_rlast0),
        .I3(axif_aresetn),
        .I4(\axi_arlen[7]_i_1_n_0 ),
        .I5(axi_araddr1),
        .O(axi_rlast_i_1_n_0));
  LUT3 #(
    .INIT(8'h08)) 
    axi_rlast_i_2
       (.I0(axi_arv_arr_flag),
        .I1(axi_arready2__14),
        .I2(axif_rlast),
        .O(axi_rlast0));
  FDRE axi_rlast_reg
       (.C(axif_aclk),
        .CE(1'b1),
        .D(axi_rlast_i_1_n_0),
        .Q(axif_rlast),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT3 #(
    .INIT(8'h3A)) 
    axi_rvalid_i_1__0
       (.I0(axi_arv_arr_flag),
        .I1(axif_rready),
        .I2(axi_rvalid_reg_0),
        .O(axi_rvalid_i_1__0_n_0));
  FDRE axi_rvalid_reg
       (.C(axif_aclk),
        .CE(1'b1),
        .D(axi_rvalid_i_1__0_n_0),
        .Q(axi_rvalid_reg_0),
        .R(axi_awready_i_1_n_0));
  LUT4 #(
    .INIT(16'h0F88)) 
    axi_wready_i_1__0
       (.I0(axif_wvalid),
        .I1(axi_awv_awr_flag),
        .I2(axif_wlast),
        .I3(axi_wready_reg_0),
        .O(axi_wready_i_1__0_n_0));
  FDRE axi_wready_reg
       (.C(axif_aclk),
        .CE(1'b1),
        .D(axi_wready_i_1__0_n_0),
        .Q(axi_wready_reg_0),
        .R(axi_awready_i_1_n_0));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \axif_rdata[0]_INST_0 
       (.I0(axi_rvalid_reg_0),
        .I1(data2_o[0]),
        .O(axif_rdata[0]));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \axif_rdata[10]_INST_0 
       (.I0(axi_rvalid_reg_0),
        .I1(data2_o[10]),
        .O(axif_rdata[10]));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \axif_rdata[11]_INST_0 
       (.I0(axi_rvalid_reg_0),
        .I1(data2_o[11]),
        .O(axif_rdata[11]));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \axif_rdata[12]_INST_0 
       (.I0(axi_rvalid_reg_0),
        .I1(data2_o[12]),
        .O(axif_rdata[12]));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \axif_rdata[13]_INST_0 
       (.I0(axi_rvalid_reg_0),
        .I1(data2_o[13]),
        .O(axif_rdata[13]));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \axif_rdata[14]_INST_0 
       (.I0(axi_rvalid_reg_0),
        .I1(data2_o[14]),
        .O(axif_rdata[14]));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \axif_rdata[15]_INST_0 
       (.I0(axi_rvalid_reg_0),
        .I1(data2_o[15]),
        .O(axif_rdata[15]));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \axif_rdata[1]_INST_0 
       (.I0(axi_rvalid_reg_0),
        .I1(data2_o[1]),
        .O(axif_rdata[1]));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \axif_rdata[2]_INST_0 
       (.I0(axi_rvalid_reg_0),
        .I1(data2_o[2]),
        .O(axif_rdata[2]));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \axif_rdata[3]_INST_0 
       (.I0(axi_rvalid_reg_0),
        .I1(data2_o[3]),
        .O(axif_rdata[3]));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \axif_rdata[4]_INST_0 
       (.I0(axi_rvalid_reg_0),
        .I1(data2_o[4]),
        .O(axif_rdata[4]));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \axif_rdata[5]_INST_0 
       (.I0(axi_rvalid_reg_0),
        .I1(data2_o[5]),
        .O(axif_rdata[5]));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \axif_rdata[6]_INST_0 
       (.I0(axi_rvalid_reg_0),
        .I1(data2_o[6]),
        .O(axif_rdata[6]));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \axif_rdata[7]_INST_0 
       (.I0(axi_rvalid_reg_0),
        .I1(data2_o[7]),
        .O(axif_rdata[7]));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \axif_rdata[8]_INST_0 
       (.I0(axi_rvalid_reg_0),
        .I1(data2_o[8]),
        .O(axif_rdata[8]));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \axif_rdata[9]_INST_0 
       (.I0(axi_rvalid_reg_0),
        .I1(data2_o[9]),
        .O(axif_rdata[9]));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \plusOp_inferred__1/i__carry 
       (.CI(1'b0),
        .CO({\plusOp_inferred__1/i__carry_n_0 ,\plusOp_inferred__1/i__carry_n_1 ,\plusOp_inferred__1/i__carry_n_2 ,\plusOp_inferred__1/i__carry_n_3 }),
        .CYINIT(\axi_araddr_reg_n_0_[2] ),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\plusOp_inferred__1/i__carry_n_4 ,\plusOp_inferred__1/i__carry_n_5 ,\plusOp_inferred__1/i__carry_n_6 ,\plusOp_inferred__1/i__carry_n_7 }),
        .S({\axi_araddr_reg_n_0_[6] ,\axi_araddr_reg_n_0_[5] ,\axi_araddr_reg_n_0_[4] ,\axi_araddr_reg_n_0_[3] }));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \plusOp_inferred__1/i__carry__0 
       (.CI(\plusOp_inferred__1/i__carry_n_0 ),
        .CO({\plusOp_inferred__1/i__carry__0_n_0 ,\plusOp_inferred__1/i__carry__0_n_1 ,\plusOp_inferred__1/i__carry__0_n_2 ,\plusOp_inferred__1/i__carry__0_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\plusOp_inferred__1/i__carry__0_n_4 ,\plusOp_inferred__1/i__carry__0_n_5 ,\plusOp_inferred__1/i__carry__0_n_6 ,\plusOp_inferred__1/i__carry__0_n_7 }),
        .S({\axi_araddr_reg_n_0_[10] ,\axi_araddr_reg_n_0_[9] ,\axi_araddr_reg_n_0_[8] ,\axi_araddr_reg_n_0_[7] }));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \plusOp_inferred__1/i__carry__1 
       (.CI(\plusOp_inferred__1/i__carry__0_n_0 ),
        .CO({\plusOp_inferred__1/i__carry__1_n_0 ,\plusOp_inferred__1/i__carry__1_n_1 ,\plusOp_inferred__1/i__carry__1_n_2 ,\plusOp_inferred__1/i__carry__1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\plusOp_inferred__1/i__carry__1_n_4 ,\plusOp_inferred__1/i__carry__1_n_5 ,\plusOp_inferred__1/i__carry__1_n_6 ,\plusOp_inferred__1/i__carry__1_n_7 }),
        .S({\axi_araddr_reg_n_0_[14] ,\axi_araddr_reg_n_0_[13] ,\axi_araddr_reg_n_0_[12] ,\axi_araddr_reg_n_0_[11] }));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \plusOp_inferred__1/i__carry__2 
       (.CI(\plusOp_inferred__1/i__carry__1_n_0 ),
        .CO({\NLW_plusOp_inferred__1/i__carry__2_CO_UNCONNECTED [3:2],\plusOp_inferred__1/i__carry__2_n_2 ,\plusOp_inferred__1/i__carry__2_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\NLW_plusOp_inferred__1/i__carry__2_O_UNCONNECTED [3],\plusOp_inferred__1/i__carry__2_n_5 ,\plusOp_inferred__1/i__carry__2_n_6 ,\plusOp_inferred__1/i__carry__2_n_7 }),
        .S({1'b0,\axi_araddr_reg_n_0_[17] ,\axi_araddr_reg_n_0_[16] ,\axi_araddr_reg_n_0_[15] }));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \plusOp_inferred__2/i__carry 
       (.CI(1'b0),
        .CO({\plusOp_inferred__2/i__carry_n_0 ,\plusOp_inferred__2/i__carry_n_1 ,\plusOp_inferred__2/i__carry_n_2 ,\plusOp_inferred__2/i__carry_n_3 }),
        .CYINIT(L[2]),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(plusOp[4:1]),
        .S(L[6:3]));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \plusOp_inferred__2/i__carry__0 
       (.CI(\plusOp_inferred__2/i__carry_n_0 ),
        .CO({\plusOp_inferred__2/i__carry__0_n_0 ,\plusOp_inferred__2/i__carry__0_n_1 ,\plusOp_inferred__2/i__carry__0_n_2 ,\plusOp_inferred__2/i__carry__0_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(plusOp[8:5]),
        .S(L[10:7]));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \plusOp_inferred__2/i__carry__1 
       (.CI(\plusOp_inferred__2/i__carry__0_n_0 ),
        .CO({\plusOp_inferred__2/i__carry__1_n_0 ,\plusOp_inferred__2/i__carry__1_n_1 ,\plusOp_inferred__2/i__carry__1_n_2 ,\plusOp_inferred__2/i__carry__1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(plusOp[12:9]),
        .S(L[14:11]));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \plusOp_inferred__2/i__carry__2 
       (.CI(\plusOp_inferred__2/i__carry__1_n_0 ),
        .CO({\NLW_plusOp_inferred__2/i__carry__2_CO_UNCONNECTED [3:2],\plusOp_inferred__2/i__carry__2_n_2 ,\plusOp_inferred__2/i__carry__2_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\NLW_plusOp_inferred__2/i__carry__2_O_UNCONNECTED [3],plusOp[15:13]}),
        .S({1'b0,L[17:15]}));
  LUT2 #(
    .INIT(4'h8)) 
    ram_reg_0_0_i_1
       (.I0(axi_wready_reg_0),
        .I1(axif_wvalid),
        .O(axi_wready_reg_16));
  LUT2 #(
    .INIT(4'h8)) 
    ram_reg_0_10_i_1
       (.I0(axi_wready_reg_0),
        .I1(axif_wvalid),
        .O(axi_wready_reg_11));
  LUT2 #(
    .INIT(4'h8)) 
    ram_reg_0_11_i_1
       (.I0(axi_wready_reg_0),
        .I1(axif_wvalid),
        .O(axi_wready_reg_9));
  LUT2 #(
    .INIT(4'h8)) 
    ram_reg_0_12_i_1
       (.I0(axi_wready_reg_0),
        .I1(axif_wvalid),
        .O(axi_wready_reg_7));
  LUT2 #(
    .INIT(4'h8)) 
    ram_reg_0_13_i_1
       (.I0(axi_wready_reg_0),
        .I1(axif_wvalid),
        .O(axi_wready_reg_5));
  LUT2 #(
    .INIT(4'h8)) 
    ram_reg_0_14_i_1
       (.I0(axi_wready_reg_0),
        .I1(axif_wvalid),
        .O(axi_wready_reg_3));
  LUT2 #(
    .INIT(4'h8)) 
    ram_reg_0_15_i_1
       (.I0(axi_wready_reg_0),
        .I1(axif_wvalid),
        .O(axi_wready_reg_1));
  LUT2 #(
    .INIT(4'h8)) 
    ram_reg_0_1_i_1
       (.I0(axi_wready_reg_0),
        .I1(axif_wvalid),
        .O(axi_wready_reg_18));
  LUT2 #(
    .INIT(4'h8)) 
    ram_reg_0_2_i_1
       (.I0(axi_wready_reg_0),
        .I1(axif_wvalid),
        .O(axi_wready_reg_20));
  LUT2 #(
    .INIT(4'h8)) 
    ram_reg_0_3_i_1
       (.I0(axi_wready_reg_0),
        .I1(axif_wvalid),
        .O(axi_wready_reg_22));
  LUT2 #(
    .INIT(4'h8)) 
    ram_reg_0_4_i_1
       (.I0(axi_wready_reg_0),
        .I1(axif_wvalid),
        .O(axi_wready_reg_24));
  LUT2 #(
    .INIT(4'h8)) 
    ram_reg_0_5_i_1
       (.I0(axi_wready_reg_0),
        .I1(axif_wvalid),
        .O(axi_wready_reg_26));
  LUT2 #(
    .INIT(4'h8)) 
    ram_reg_0_6_i_1
       (.I0(axi_wready_reg_0),
        .I1(axif_wvalid),
        .O(axi_wready_reg_28));
  LUT2 #(
    .INIT(4'h8)) 
    ram_reg_0_7_i_1
       (.I0(axi_wready_reg_0),
        .I1(axif_wvalid),
        .O(axi_wready_reg_30));
  LUT2 #(
    .INIT(4'h8)) 
    ram_reg_0_8_i_1
       (.I0(axi_wready_reg_0),
        .I1(axif_wvalid),
        .O(axi_wready_reg_15));
  LUT2 #(
    .INIT(4'h8)) 
    ram_reg_0_9_i_1
       (.I0(axi_wready_reg_0),
        .I1(axif_wvalid),
        .O(axi_wready_reg_13));
  LUT2 #(
    .INIT(4'h8)) 
    ram_reg_1_0_i_1
       (.I0(axi_wready_reg_0),
        .I1(axif_wvalid),
        .O(axi_wready_reg_17));
  LUT4 #(
    .INIT(16'hF780)) 
    ram_reg_1_10_i_1
       (.I0(axi_wready_reg_0),
        .I1(axif_wvalid),
        .I2(L[17]),
        .I3(\axi_araddr_reg_n_0_[17] ),
        .O(ADDRARDADDR[15]));
  LUT4 #(
    .INIT(16'hF780)) 
    ram_reg_1_10_i_10
       (.I0(axi_wready_reg_0),
        .I1(axif_wvalid),
        .I2(L[8]),
        .I3(\axi_araddr_reg_n_0_[8] ),
        .O(ADDRARDADDR[6]));
  LUT4 #(
    .INIT(16'hF780)) 
    ram_reg_1_10_i_11
       (.I0(axi_wready_reg_0),
        .I1(axif_wvalid),
        .I2(L[7]),
        .I3(\axi_araddr_reg_n_0_[7] ),
        .O(ADDRARDADDR[5]));
  LUT4 #(
    .INIT(16'hF780)) 
    ram_reg_1_10_i_12
       (.I0(axi_wready_reg_0),
        .I1(axif_wvalid),
        .I2(L[6]),
        .I3(\axi_araddr_reg_n_0_[6] ),
        .O(ADDRARDADDR[4]));
  LUT4 #(
    .INIT(16'hF780)) 
    ram_reg_1_10_i_13
       (.I0(axi_wready_reg_0),
        .I1(axif_wvalid),
        .I2(L[5]),
        .I3(\axi_araddr_reg_n_0_[5] ),
        .O(ADDRARDADDR[3]));
  LUT4 #(
    .INIT(16'hF780)) 
    ram_reg_1_10_i_14
       (.I0(axi_wready_reg_0),
        .I1(axif_wvalid),
        .I2(L[4]),
        .I3(\axi_araddr_reg_n_0_[4] ),
        .O(ADDRARDADDR[2]));
  LUT4 #(
    .INIT(16'hF780)) 
    ram_reg_1_10_i_15
       (.I0(axi_wready_reg_0),
        .I1(axif_wvalid),
        .I2(L[3]),
        .I3(\axi_araddr_reg_n_0_[3] ),
        .O(ADDRARDADDR[1]));
  LUT4 #(
    .INIT(16'hF780)) 
    ram_reg_1_10_i_16
       (.I0(axi_wready_reg_0),
        .I1(axif_wvalid),
        .I2(L[2]),
        .I3(\axi_araddr_reg_n_0_[2] ),
        .O(ADDRARDADDR[0]));
  LUT2 #(
    .INIT(4'h8)) 
    ram_reg_1_10_i_17
       (.I0(axi_wready_reg_0),
        .I1(axif_wvalid),
        .O(axi_wready_reg_10));
  LUT4 #(
    .INIT(16'hF780)) 
    ram_reg_1_10_i_2
       (.I0(axi_wready_reg_0),
        .I1(axif_wvalid),
        .I2(L[16]),
        .I3(\axi_araddr_reg_n_0_[16] ),
        .O(ADDRARDADDR[14]));
  LUT4 #(
    .INIT(16'hF780)) 
    ram_reg_1_10_i_3
       (.I0(axi_wready_reg_0),
        .I1(axif_wvalid),
        .I2(L[15]),
        .I3(\axi_araddr_reg_n_0_[15] ),
        .O(ADDRARDADDR[13]));
  LUT4 #(
    .INIT(16'hF780)) 
    ram_reg_1_10_i_4
       (.I0(axi_wready_reg_0),
        .I1(axif_wvalid),
        .I2(L[14]),
        .I3(\axi_araddr_reg_n_0_[14] ),
        .O(ADDRARDADDR[12]));
  LUT4 #(
    .INIT(16'hF780)) 
    ram_reg_1_10_i_5
       (.I0(axi_wready_reg_0),
        .I1(axif_wvalid),
        .I2(L[13]),
        .I3(\axi_araddr_reg_n_0_[13] ),
        .O(ADDRARDADDR[11]));
  LUT4 #(
    .INIT(16'hF780)) 
    ram_reg_1_10_i_6
       (.I0(axi_wready_reg_0),
        .I1(axif_wvalid),
        .I2(L[12]),
        .I3(\axi_araddr_reg_n_0_[12] ),
        .O(ADDRARDADDR[10]));
  LUT4 #(
    .INIT(16'hF780)) 
    ram_reg_1_10_i_7
       (.I0(axi_wready_reg_0),
        .I1(axif_wvalid),
        .I2(L[11]),
        .I3(\axi_araddr_reg_n_0_[11] ),
        .O(ADDRARDADDR[9]));
  LUT4 #(
    .INIT(16'hF780)) 
    ram_reg_1_10_i_8
       (.I0(axi_wready_reg_0),
        .I1(axif_wvalid),
        .I2(L[10]),
        .I3(\axi_araddr_reg_n_0_[10] ),
        .O(ADDRARDADDR[8]));
  LUT4 #(
    .INIT(16'hF780)) 
    ram_reg_1_10_i_9
       (.I0(axi_wready_reg_0),
        .I1(axif_wvalid),
        .I2(L[9]),
        .I3(\axi_araddr_reg_n_0_[9] ),
        .O(ADDRARDADDR[7]));
  LUT2 #(
    .INIT(4'h8)) 
    ram_reg_1_11_i_1
       (.I0(axi_wready_reg_0),
        .I1(axif_wvalid),
        .O(axi_wready_reg_8));
  LUT2 #(
    .INIT(4'h8)) 
    ram_reg_1_12_i_1
       (.I0(axi_wready_reg_0),
        .I1(axif_wvalid),
        .O(axi_wready_reg_6));
  LUT2 #(
    .INIT(4'h8)) 
    ram_reg_1_13_i_1
       (.I0(axi_wready_reg_0),
        .I1(axif_wvalid),
        .O(axi_wready_reg_4));
  LUT2 #(
    .INIT(4'h8)) 
    ram_reg_1_14_i_1
       (.I0(axi_wready_reg_0),
        .I1(axif_wvalid),
        .O(axi_wready_reg_2));
  LUT4 #(
    .INIT(16'hF780)) 
    ram_reg_1_15_i_1
       (.I0(axi_wready_reg_0),
        .I1(axif_wvalid),
        .I2(L[17]),
        .I3(\axi_araddr_reg_n_0_[17] ),
        .O(addr2_i[15]));
  LUT4 #(
    .INIT(16'hF780)) 
    ram_reg_1_15_i_10
       (.I0(axi_wready_reg_0),
        .I1(axif_wvalid),
        .I2(L[8]),
        .I3(\axi_araddr_reg_n_0_[8] ),
        .O(addr2_i[6]));
  LUT4 #(
    .INIT(16'hF780)) 
    ram_reg_1_15_i_11
       (.I0(axi_wready_reg_0),
        .I1(axif_wvalid),
        .I2(L[7]),
        .I3(\axi_araddr_reg_n_0_[7] ),
        .O(addr2_i[5]));
  LUT4 #(
    .INIT(16'hF780)) 
    ram_reg_1_15_i_12
       (.I0(axi_wready_reg_0),
        .I1(axif_wvalid),
        .I2(L[6]),
        .I3(\axi_araddr_reg_n_0_[6] ),
        .O(addr2_i[4]));
  LUT4 #(
    .INIT(16'hF780)) 
    ram_reg_1_15_i_13
       (.I0(axi_wready_reg_0),
        .I1(axif_wvalid),
        .I2(L[5]),
        .I3(\axi_araddr_reg_n_0_[5] ),
        .O(addr2_i[3]));
  LUT4 #(
    .INIT(16'hF780)) 
    ram_reg_1_15_i_14
       (.I0(axi_wready_reg_0),
        .I1(axif_wvalid),
        .I2(L[4]),
        .I3(\axi_araddr_reg_n_0_[4] ),
        .O(addr2_i[2]));
  LUT4 #(
    .INIT(16'hF780)) 
    ram_reg_1_15_i_15
       (.I0(axi_wready_reg_0),
        .I1(axif_wvalid),
        .I2(L[3]),
        .I3(\axi_araddr_reg_n_0_[3] ),
        .O(addr2_i[1]));
  LUT4 #(
    .INIT(16'hF780)) 
    ram_reg_1_15_i_16
       (.I0(axi_wready_reg_0),
        .I1(axif_wvalid),
        .I2(L[2]),
        .I3(\axi_araddr_reg_n_0_[2] ),
        .O(addr2_i[0]));
  LUT2 #(
    .INIT(4'h8)) 
    ram_reg_1_15_i_17
       (.I0(axi_wready_reg_0),
        .I1(axif_wvalid),
        .O(WEA));
  LUT4 #(
    .INIT(16'hF780)) 
    ram_reg_1_15_i_2
       (.I0(axi_wready_reg_0),
        .I1(axif_wvalid),
        .I2(L[16]),
        .I3(\axi_araddr_reg_n_0_[16] ),
        .O(addr2_i[14]));
  LUT4 #(
    .INIT(16'hF780)) 
    ram_reg_1_15_i_3
       (.I0(axi_wready_reg_0),
        .I1(axif_wvalid),
        .I2(L[15]),
        .I3(\axi_araddr_reg_n_0_[15] ),
        .O(addr2_i[13]));
  LUT4 #(
    .INIT(16'hF780)) 
    ram_reg_1_15_i_4
       (.I0(axi_wready_reg_0),
        .I1(axif_wvalid),
        .I2(L[14]),
        .I3(\axi_araddr_reg_n_0_[14] ),
        .O(addr2_i[12]));
  LUT4 #(
    .INIT(16'hF780)) 
    ram_reg_1_15_i_5
       (.I0(axi_wready_reg_0),
        .I1(axif_wvalid),
        .I2(L[13]),
        .I3(\axi_araddr_reg_n_0_[13] ),
        .O(addr2_i[11]));
  LUT4 #(
    .INIT(16'hF780)) 
    ram_reg_1_15_i_6
       (.I0(axi_wready_reg_0),
        .I1(axif_wvalid),
        .I2(L[12]),
        .I3(\axi_araddr_reg_n_0_[12] ),
        .O(addr2_i[10]));
  LUT4 #(
    .INIT(16'hF780)) 
    ram_reg_1_15_i_7
       (.I0(axi_wready_reg_0),
        .I1(axif_wvalid),
        .I2(L[11]),
        .I3(\axi_araddr_reg_n_0_[11] ),
        .O(addr2_i[9]));
  LUT4 #(
    .INIT(16'hF780)) 
    ram_reg_1_15_i_8
       (.I0(axi_wready_reg_0),
        .I1(axif_wvalid),
        .I2(L[10]),
        .I3(\axi_araddr_reg_n_0_[10] ),
        .O(addr2_i[8]));
  LUT4 #(
    .INIT(16'hF780)) 
    ram_reg_1_15_i_9
       (.I0(axi_wready_reg_0),
        .I1(axif_wvalid),
        .I2(L[9]),
        .I3(\axi_araddr_reg_n_0_[9] ),
        .O(addr2_i[7]));
  LUT2 #(
    .INIT(4'h8)) 
    ram_reg_1_1_i_1
       (.I0(axi_wready_reg_0),
        .I1(axif_wvalid),
        .O(axi_wready_reg_19));
  LUT2 #(
    .INIT(4'h8)) 
    ram_reg_1_2_i_1
       (.I0(axi_wready_reg_0),
        .I1(axif_wvalid),
        .O(axi_wready_reg_21));
  LUT2 #(
    .INIT(4'h8)) 
    ram_reg_1_3_i_1
       (.I0(axi_wready_reg_0),
        .I1(axif_wvalid),
        .O(axi_wready_reg_23));
  LUT2 #(
    .INIT(4'h8)) 
    ram_reg_1_4_i_1
       (.I0(axi_wready_reg_0),
        .I1(axif_wvalid),
        .O(axi_wready_reg_25));
  LUT2 #(
    .INIT(4'h8)) 
    ram_reg_1_5_i_1
       (.I0(axi_wready_reg_0),
        .I1(axif_wvalid),
        .O(axi_wready_reg_27));
  LUT2 #(
    .INIT(4'h8)) 
    ram_reg_1_6_i_1
       (.I0(axi_wready_reg_0),
        .I1(axif_wvalid),
        .O(axi_wready_reg_29));
  LUT2 #(
    .INIT(4'h8)) 
    ram_reg_1_7_i_1
       (.I0(axi_wready_reg_0),
        .I1(axif_wvalid),
        .O(axi_wready_reg_31));
  LUT2 #(
    .INIT(4'h8)) 
    ram_reg_1_8_i_1
       (.I0(axi_wready_reg_0),
        .I1(axif_wvalid),
        .O(axi_wready_reg_14));
  LUT2 #(
    .INIT(4'h8)) 
    ram_reg_1_9_i_1
       (.I0(axi_wready_reg_0),
        .I1(axif_wvalid),
        .O(axi_wready_reg_12));
endmodule

(* ORIG_REF_NAME = "AXIL" *) 
module xrf_dpp_comblock_0_0_AXIL
   (axi_awready_reg_0,
    axi_wready_reg_0,
    axi_arready_reg_0,
    axil_bvalid,
    axi_rvalid_reg_0,
    Q,
    S,
    p_4_in,
    full_r_reg,
    \rd_ptr_r_reg[0] ,
    p_2_in,
    empty_r_reg,
    fifo_out_over_r_reg,
    E,
    \axi_awaddr_reg[3]_0 ,
    \axi_awaddr_reg[2]_0 ,
    \axi_awaddr_reg[2]_1 ,
    \axi_awaddr_reg[2]_2 ,
    \axi_awaddr_reg[3]_1 ,
    \axi_awaddr_reg[3]_2 ,
    \axi_awaddr_reg[2]_3 ,
    \axi_awaddr_reg[2]_4 ,
    \axi_awaddr_reg[2]_5 ,
    fifo_in_under_r_reg,
    DI,
    \rd_ptr_r_reg[7] ,
    \rd_ptr_r_reg[11] ,
    \axi_araddr_reg[5]_0 ,
    empty_r_reg_0,
    full_r_reg_0,
    axil_rdata,
    axil_aclk,
    axil_awvalid,
    axil_wvalid,
    \wr_ptr_r_reg[3] ,
    wr_ptr_r,
    \rd_ptr_r_reg[3] ,
    rd_ptr_r,
    fifo_out_over_r__0,
    full_r,
    fifo_in_under_r__0,
    empty_r,
    O,
    empty00_carry__0,
    empty00_carry__1,
    data2_o,
    \axi_rdata_reg[0]_0 ,
    \axi_rdata_reg[1]_0 ,
    \axi_rdata_reg[1]_1 ,
    \axi_rdata_reg[3]_0 ,
    \axi_rdata_reg[3]_1 ,
    \axi_rdata_reg[5]_0 ,
    \axi_rdata_reg[5]_1 ,
    \axi_rdata_reg[8]_0 ,
    \axi_rdata_reg[12]_0 ,
    \axi_rdata_reg[14]_0 ,
    \axi_rdata_reg[2]_0 ,
    \axi_rdata_reg[6]_0 ,
    fifo_out_count,
    fifo_in_count,
    reg5_o,
    reg4_o,
    reg7_o,
    reg6_o,
    \axi_rdata_reg[2]_1 ,
    \axi_rdata_reg[4]_0 ,
    \axi_rdata_reg[10]_0 ,
    \axi_rdata_reg[1]_2 ,
    \axi_rdata_reg[1]_3 ,
    \axi_rdata_reg[1]_4 ,
    reg2_i,
    reg3_i,
    reg0_i,
    reg1_i,
    \axi_rdata_reg[0]_1 ,
    \axi_rdata_reg[0]_2 ,
    \axi_rdata_reg[15]_0 ,
    \axi_rdata_reg[15]_1 ,
    \axi_rdata_reg[13]_0 ,
    \axi_rdata_reg[13]_1 ,
    \axi_rdata_reg[11]_0 ,
    \axi_rdata_reg[11]_1 ,
    \axi_rdata_reg[9]_0 ,
    \axi_rdata_reg[9]_1 ,
    \axi_rdata_reg[7]_0 ,
    \axi_rdata_reg[7]_1 ,
    axil_aresetn,
    axil_bready,
    axil_arvalid,
    axil_rready,
    axil_awaddr,
    axil_araddr);
  output axi_awready_reg_0;
  output axi_wready_reg_0;
  output axi_arready_reg_0;
  output axil_bvalid;
  output axi_rvalid_reg_0;
  output [2:0]Q;
  output [0:0]S;
  output p_4_in;
  output full_r_reg;
  output [0:0]\rd_ptr_r_reg[0] ;
  output p_2_in;
  output empty_r_reg;
  output fifo_out_over_r_reg;
  output [0:0]E;
  output [0:0]\axi_awaddr_reg[3]_0 ;
  output [0:0]\axi_awaddr_reg[2]_0 ;
  output [0:0]\axi_awaddr_reg[2]_1 ;
  output \axi_awaddr_reg[2]_2 ;
  output [0:0]\axi_awaddr_reg[3]_1 ;
  output [0:0]\axi_awaddr_reg[3]_2 ;
  output [0:0]\axi_awaddr_reg[2]_3 ;
  output [0:0]\axi_awaddr_reg[2]_4 ;
  output \axi_awaddr_reg[2]_5 ;
  output fifo_in_under_r_reg;
  output [0:0]DI;
  output [3:0]\rd_ptr_r_reg[7] ;
  output [3:0]\rd_ptr_r_reg[11] ;
  output \axi_araddr_reg[5]_0 ;
  output [0:0]empty_r_reg_0;
  output [0:0]full_r_reg_0;
  output [31:0]axil_rdata;
  input axil_aclk;
  input axil_awvalid;
  input axil_wvalid;
  input \wr_ptr_r_reg[3] ;
  input [0:0]wr_ptr_r;
  input \rd_ptr_r_reg[3] ;
  input [0:0]rd_ptr_r;
  input fifo_out_over_r__0;
  input full_r;
  input fifo_in_under_r__0;
  input empty_r;
  input [0:0]O;
  input [3:0]empty00_carry__0;
  input [3:0]empty00_carry__1;
  input [14:0]data2_o;
  input \axi_rdata_reg[0]_0 ;
  input \axi_rdata_reg[1]_0 ;
  input \axi_rdata_reg[1]_1 ;
  input \axi_rdata_reg[3]_0 ;
  input \axi_rdata_reg[3]_1 ;
  input \axi_rdata_reg[5]_0 ;
  input \axi_rdata_reg[5]_1 ;
  input \axi_rdata_reg[8]_0 ;
  input \axi_rdata_reg[12]_0 ;
  input \axi_rdata_reg[14]_0 ;
  input \axi_rdata_reg[2]_0 ;
  input \axi_rdata_reg[6]_0 ;
  input [13:0]fifo_out_count;
  input [13:0]fifo_in_count;
  input [3:0]reg5_o;
  input [3:0]reg4_o;
  input [3:0]reg7_o;
  input [3:0]reg6_o;
  input \axi_rdata_reg[2]_1 ;
  input \axi_rdata_reg[4]_0 ;
  input \axi_rdata_reg[10]_0 ;
  input \axi_rdata_reg[1]_2 ;
  input \axi_rdata_reg[1]_3 ;
  input \axi_rdata_reg[1]_4 ;
  input [31:0]reg2_i;
  input [31:0]reg3_i;
  input [31:0]reg0_i;
  input [31:0]reg1_i;
  input \axi_rdata_reg[0]_1 ;
  input \axi_rdata_reg[0]_2 ;
  input \axi_rdata_reg[15]_0 ;
  input \axi_rdata_reg[15]_1 ;
  input \axi_rdata_reg[13]_0 ;
  input \axi_rdata_reg[13]_1 ;
  input \axi_rdata_reg[11]_0 ;
  input \axi_rdata_reg[11]_1 ;
  input \axi_rdata_reg[9]_0 ;
  input \axi_rdata_reg[9]_1 ;
  input \axi_rdata_reg[7]_0 ;
  input \axi_rdata_reg[7]_1 ;
  input axil_aresetn;
  input axil_bready;
  input axil_arvalid;
  input axil_rready;
  input [5:0]axil_awaddr;
  input [5:0]axil_araddr;

  wire [0:0]DI;
  wire [0:0]E;
  wire [0:0]O;
  wire [2:0]Q;
  wire [0:0]S;
  wire aw_en_i_1_n_0;
  wire aw_en_reg_n_0;
  wire \axi_araddr_reg[5]_0 ;
  wire axi_arready0;
  wire axi_arready_reg_0;
  wire [0:0]\axi_awaddr_reg[2]_0 ;
  wire [0:0]\axi_awaddr_reg[2]_1 ;
  wire \axi_awaddr_reg[2]_2 ;
  wire [0:0]\axi_awaddr_reg[2]_3 ;
  wire [0:0]\axi_awaddr_reg[2]_4 ;
  wire \axi_awaddr_reg[2]_5 ;
  wire [0:0]\axi_awaddr_reg[3]_0 ;
  wire [0:0]\axi_awaddr_reg[3]_1 ;
  wire [0:0]\axi_awaddr_reg[3]_2 ;
  wire axi_awready0;
  wire axi_awready_reg_0;
  wire axi_bvalid_i_1_n_0;
  wire \axi_rdata[0]_i_2_n_0 ;
  wire \axi_rdata[0]_i_3_n_0 ;
  wire \axi_rdata[0]_i_5_n_0 ;
  wire \axi_rdata[10]_i_2_n_0 ;
  wire \axi_rdata[10]_i_3_n_0 ;
  wire \axi_rdata[10]_i_5_n_0 ;
  wire \axi_rdata[10]_i_6_n_0 ;
  wire \axi_rdata[11]_i_2_n_0 ;
  wire \axi_rdata[11]_i_3_n_0 ;
  wire \axi_rdata[11]_i_4_n_0 ;
  wire \axi_rdata[12]_i_2_n_0 ;
  wire \axi_rdata[13]_i_2_n_0 ;
  wire \axi_rdata[13]_i_3_n_0 ;
  wire \axi_rdata[14]_i_2_n_0 ;
  wire \axi_rdata[14]_i_3_n_0 ;
  wire \axi_rdata[14]_i_4_n_0 ;
  wire \axi_rdata[15]_i_2_n_0 ;
  wire \axi_rdata[15]_i_4_n_0 ;
  wire \axi_rdata[15]_i_5_n_0 ;
  wire \axi_rdata[16]_i_2_n_0 ;
  wire \axi_rdata[16]_i_3_n_0 ;
  wire \axi_rdata[17]_i_2_n_0 ;
  wire \axi_rdata[17]_i_3_n_0 ;
  wire \axi_rdata[18]_i_2_n_0 ;
  wire \axi_rdata[18]_i_3_n_0 ;
  wire \axi_rdata[19]_i_2_n_0 ;
  wire \axi_rdata[19]_i_3_n_0 ;
  wire \axi_rdata[1]_i_14_n_0 ;
  wire \axi_rdata[1]_i_2_n_0 ;
  wire \axi_rdata[1]_i_3_n_0 ;
  wire \axi_rdata[1]_i_4_n_0 ;
  wire \axi_rdata[1]_i_6_n_0 ;
  wire \axi_rdata[20]_i_2_n_0 ;
  wire \axi_rdata[21]_i_2_n_0 ;
  wire \axi_rdata[22]_i_2_n_0 ;
  wire \axi_rdata[22]_i_3_n_0 ;
  wire \axi_rdata[23]_i_2_n_0 ;
  wire \axi_rdata[24]_i_2_n_0 ;
  wire \axi_rdata[25]_i_2_n_0 ;
  wire \axi_rdata[25]_i_3_n_0 ;
  wire \axi_rdata[26]_i_2_n_0 ;
  wire \axi_rdata[27]_i_2_n_0 ;
  wire \axi_rdata[27]_i_3_n_0 ;
  wire \axi_rdata[28]_i_2_n_0 ;
  wire \axi_rdata[28]_i_3_n_0 ;
  wire \axi_rdata[29]_i_2_n_0 ;
  wire \axi_rdata[29]_i_3_n_0 ;
  wire \axi_rdata[29]_i_4_n_0 ;
  wire \axi_rdata[2]_i_2_n_0 ;
  wire \axi_rdata[2]_i_3_n_0 ;
  wire \axi_rdata[2]_i_6_n_0 ;
  wire \axi_rdata[2]_i_7_n_0 ;
  wire \axi_rdata[30]_i_1_n_0 ;
  wire \axi_rdata[30]_i_2_n_0 ;
  wire \axi_rdata[31]_i_1_n_0 ;
  wire \axi_rdata[31]_i_2_n_0 ;
  wire \axi_rdata[31]_i_3_n_0 ;
  wire \axi_rdata[3]_i_2_n_0 ;
  wire \axi_rdata[3]_i_3_n_0 ;
  wire \axi_rdata[4]_i_2_n_0 ;
  wire \axi_rdata[4]_i_3_n_0 ;
  wire \axi_rdata[4]_i_5_n_0 ;
  wire \axi_rdata[4]_i_6_n_0 ;
  wire \axi_rdata[5]_i_2_n_0 ;
  wire \axi_rdata[5]_i_3_n_0 ;
  wire \axi_rdata[6]_i_2_n_0 ;
  wire \axi_rdata[6]_i_3_n_0 ;
  wire \axi_rdata[6]_i_5_n_0 ;
  wire \axi_rdata[7]_i_2_n_0 ;
  wire \axi_rdata[7]_i_3_n_0 ;
  wire \axi_rdata[8]_i_2_n_0 ;
  wire \axi_rdata[9]_i_2_n_0 ;
  wire \axi_rdata[9]_i_3_n_0 ;
  wire \axi_rdata_reg[0]_0 ;
  wire \axi_rdata_reg[0]_1 ;
  wire \axi_rdata_reg[0]_2 ;
  wire \axi_rdata_reg[10]_0 ;
  wire \axi_rdata_reg[11]_0 ;
  wire \axi_rdata_reg[11]_1 ;
  wire \axi_rdata_reg[12]_0 ;
  wire \axi_rdata_reg[13]_0 ;
  wire \axi_rdata_reg[13]_1 ;
  wire \axi_rdata_reg[14]_0 ;
  wire \axi_rdata_reg[15]_0 ;
  wire \axi_rdata_reg[15]_1 ;
  wire \axi_rdata_reg[1]_0 ;
  wire \axi_rdata_reg[1]_1 ;
  wire \axi_rdata_reg[1]_2 ;
  wire \axi_rdata_reg[1]_3 ;
  wire \axi_rdata_reg[1]_4 ;
  wire \axi_rdata_reg[2]_0 ;
  wire \axi_rdata_reg[2]_1 ;
  wire \axi_rdata_reg[3]_0 ;
  wire \axi_rdata_reg[3]_1 ;
  wire \axi_rdata_reg[4]_0 ;
  wire \axi_rdata_reg[5]_0 ;
  wire \axi_rdata_reg[5]_1 ;
  wire \axi_rdata_reg[6]_0 ;
  wire \axi_rdata_reg[7]_0 ;
  wire \axi_rdata_reg[7]_1 ;
  wire \axi_rdata_reg[8]_0 ;
  wire \axi_rdata_reg[9]_0 ;
  wire \axi_rdata_reg[9]_1 ;
  wire axi_rvalid_i_1_n_0;
  wire axi_rvalid_reg_0;
  wire axi_wready0;
  wire axi_wready_reg_0;
  wire axil_aclk;
  wire [5:0]axil_araddr;
  wire axil_aresetn;
  wire axil_arvalid;
  wire [5:0]axil_awaddr;
  wire axil_awvalid;
  wire axil_bready;
  wire axil_bvalid;
  wire [31:0]axil_rdata;
  wire axil_rready;
  wire axil_wvalid;
  wire [14:0]data2_o;
  wire [3:0]empty00_carry__0;
  wire [3:0]empty00_carry__1;
  wire empty_r;
  wire empty_r_reg;
  wire [0:0]empty_r_reg_0;
  wire [13:0]fifo_in_count;
  wire fifo_in_under_r__0;
  wire fifo_in_under_r_i_2_n_0;
  wire fifo_in_under_r_reg;
  wire [13:0]fifo_out_count;
  wire fifo_out_over_r__0;
  wire fifo_out_over_r_i_2_n_0;
  wire fifo_out_over_r_i_3_n_0;
  wire fifo_out_over_r_reg;
  wire full_r;
  wire full_r_reg;
  wire [0:0]full_r_reg_0;
  wire p_0_in;
  wire p_2_in;
  wire p_4_in;
  wire [0:0]rd_ptr_r;
  wire [0:0]\rd_ptr_r_reg[0] ;
  wire [3:0]\rd_ptr_r_reg[11] ;
  wire \rd_ptr_r_reg[3] ;
  wire [3:0]\rd_ptr_r_reg[7] ;
  wire [31:0]reg0_i;
  wire [31:0]reg1_i;
  wire [31:0]reg2_i;
  wire [31:0]reg3_i;
  wire [3:0]reg4_o;
  wire [3:0]reg5_o;
  wire [3:0]reg6_o;
  wire [3:0]reg7_o;
  wire [7:5]reg_rd_adr;
  wire [29:0]reg_rd_dat;
  wire reg_rd_ena;
  wire [7:2]reg_wr_adr;
  wire \regs_out[0][15]_i_2_n_0 ;
  wire \regs_out[4][15]_i_2_n_0 ;
  wire slv_reg_rden;
  wire [0:0]wr_ptr_r;
  wire \wr_ptr_r_reg[3] ;

  LUT6 #(
    .INIT(64'hFFFF88880FFF8888)) 
    aw_en_i_1
       (.I0(axil_bready),
        .I1(axil_bvalid),
        .I2(axil_awvalid),
        .I3(axil_wvalid),
        .I4(aw_en_reg_n_0),
        .I5(axi_awready_reg_0),
        .O(aw_en_i_1_n_0));
  FDSE aw_en_reg
       (.C(axil_aclk),
        .CE(1'b1),
        .D(aw_en_i_1_n_0),
        .Q(aw_en_reg_n_0),
        .S(p_0_in));
  FDSE \axi_araddr_reg[2] 
       (.C(axil_aclk),
        .CE(axi_arready0),
        .D(axil_araddr[0]),
        .Q(Q[0]),
        .S(p_0_in));
  FDSE \axi_araddr_reg[3] 
       (.C(axil_aclk),
        .CE(axi_arready0),
        .D(axil_araddr[1]),
        .Q(Q[1]),
        .S(p_0_in));
  FDSE \axi_araddr_reg[4] 
       (.C(axil_aclk),
        .CE(axi_arready0),
        .D(axil_araddr[2]),
        .Q(Q[2]),
        .S(p_0_in));
  FDSE \axi_araddr_reg[5] 
       (.C(axil_aclk),
        .CE(axi_arready0),
        .D(axil_araddr[3]),
        .Q(reg_rd_adr[5]),
        .S(p_0_in));
  FDSE \axi_araddr_reg[6] 
       (.C(axil_aclk),
        .CE(axi_arready0),
        .D(axil_araddr[4]),
        .Q(reg_rd_adr[6]),
        .S(p_0_in));
  FDSE \axi_araddr_reg[7] 
       (.C(axil_aclk),
        .CE(axi_arready0),
        .D(axil_araddr[5]),
        .Q(reg_rd_adr[7]),
        .S(p_0_in));
  LUT2 #(
    .INIT(4'h2)) 
    axi_arready_i_1
       (.I0(axil_arvalid),
        .I1(axi_arready_reg_0),
        .O(axi_arready0));
  FDRE axi_arready_reg
       (.C(axil_aclk),
        .CE(1'b1),
        .D(axi_arready0),
        .Q(axi_arready_reg_0),
        .R(p_0_in));
  FDRE \axi_awaddr_reg[2] 
       (.C(axil_aclk),
        .CE(axi_awready0),
        .D(axil_awaddr[0]),
        .Q(reg_wr_adr[2]),
        .R(p_0_in));
  FDRE \axi_awaddr_reg[3] 
       (.C(axil_aclk),
        .CE(axi_awready0),
        .D(axil_awaddr[1]),
        .Q(reg_wr_adr[3]),
        .R(p_0_in));
  FDRE \axi_awaddr_reg[4] 
       (.C(axil_aclk),
        .CE(axi_awready0),
        .D(axil_awaddr[2]),
        .Q(reg_wr_adr[4]),
        .R(p_0_in));
  FDRE \axi_awaddr_reg[5] 
       (.C(axil_aclk),
        .CE(axi_awready0),
        .D(axil_awaddr[3]),
        .Q(reg_wr_adr[5]),
        .R(p_0_in));
  FDRE \axi_awaddr_reg[6] 
       (.C(axil_aclk),
        .CE(axi_awready0),
        .D(axil_awaddr[4]),
        .Q(reg_wr_adr[6]),
        .R(p_0_in));
  FDRE \axi_awaddr_reg[7] 
       (.C(axil_aclk),
        .CE(axi_awready0),
        .D(axil_awaddr[5]),
        .Q(reg_wr_adr[7]),
        .R(p_0_in));
  LUT1 #(
    .INIT(2'h1)) 
    axi_awready_i_1__0
       (.I0(axil_aresetn),
        .O(p_0_in));
  LUT4 #(
    .INIT(16'h4000)) 
    axi_awready_i_2
       (.I0(axi_awready_reg_0),
        .I1(aw_en_reg_n_0),
        .I2(axil_wvalid),
        .I3(axil_awvalid),
        .O(axi_awready0));
  FDRE axi_awready_reg
       (.C(axil_aclk),
        .CE(1'b1),
        .D(axi_awready0),
        .Q(axi_awready_reg_0),
        .R(p_0_in));
  LUT6 #(
    .INIT(64'h0000FFFF80008000)) 
    axi_bvalid_i_1
       (.I0(axil_awvalid),
        .I1(axil_wvalid),
        .I2(axi_awready_reg_0),
        .I3(axi_wready_reg_0),
        .I4(axil_bready),
        .I5(axil_bvalid),
        .O(axi_bvalid_i_1_n_0));
  FDRE axi_bvalid_reg
       (.C(axil_aclk),
        .CE(1'b1),
        .D(axi_bvalid_i_1_n_0),
        .Q(axil_bvalid),
        .R(p_0_in));
  LUT6 #(
    .INIT(64'hAAAA8A888A888A88)) 
    \axi_rdata[0]_i_1 
       (.I0(\axi_rdata[0]_i_2_n_0 ),
        .I1(\axi_rdata[0]_i_3_n_0 ),
        .I2(\axi_rdata[14]_i_3_n_0 ),
        .I3(data2_o[0]),
        .I4(\axi_rdata[1]_i_4_n_0 ),
        .I5(\axi_rdata_reg[0]_0 ),
        .O(reg_rd_dat[0]));
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    \axi_rdata[0]_i_2 
       (.I0(\axi_rdata[0]_i_5_n_0 ),
        .I1(reg_rd_adr[7]),
        .I2(reg_rd_adr[6]),
        .I3(reg_rd_adr[5]),
        .I4(Q[2]),
        .O(\axi_rdata[0]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h000E000300020003)) 
    \axi_rdata[0]_i_3 
       (.I0(\axi_rdata_reg[0]_1 ),
        .I1(Q[2]),
        .I2(reg_rd_adr[5]),
        .I3(reg_rd_adr[7]),
        .I4(reg_rd_adr[6]),
        .I5(\axi_rdata_reg[0]_2 ),
        .O(\axi_rdata[0]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[0]_i_5 
       (.I0(reg3_i[0]),
        .I1(reg2_i[0]),
        .I2(Q[1]),
        .I3(reg1_i[0]),
        .I4(Q[0]),
        .I5(reg0_i[0]),
        .O(\axi_rdata[0]_i_5_n_0 ));
  LUT5 #(
    .INIT(32'h8B88BBBB)) 
    \axi_rdata[10]_i_1 
       (.I0(\axi_rdata[10]_i_2_n_0 ),
        .I1(\axi_rdata[28]_i_2_n_0 ),
        .I2(\axi_rdata[14]_i_3_n_0 ),
        .I3(data2_o[9]),
        .I4(\axi_rdata[10]_i_3_n_0 ),
        .O(reg_rd_dat[10]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[10]_i_2 
       (.I0(reg3_i[10]),
        .I1(reg2_i[10]),
        .I2(Q[1]),
        .I3(reg1_i[10]),
        .I4(Q[0]),
        .I5(reg0_i[10]),
        .O(\axi_rdata[10]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hFFFF1FFF)) 
    \axi_rdata[10]_i_3 
       (.I0(\axi_rdata_reg[10]_0 ),
        .I1(Q[2]),
        .I2(\axi_rdata[14]_i_4_n_0 ),
        .I3(\axi_rdata[10]_i_5_n_0 ),
        .I4(\axi_rdata[10]_i_6_n_0 ),
        .O(\axi_rdata[10]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'hE2FFFFFF)) 
    \axi_rdata[10]_i_5 
       (.I0(reg6_o[3]),
        .I1(Q[0]),
        .I2(reg7_o[3]),
        .I3(Q[2]),
        .I4(Q[1]),
        .O(\axi_rdata[10]_i_5_n_0 ));
  LUT5 #(
    .INIT(32'h00044404)) 
    \axi_rdata[10]_i_6 
       (.I0(Q[1]),
        .I1(Q[2]),
        .I2(reg4_o[3]),
        .I3(Q[0]),
        .I4(reg5_o[3]),
        .O(\axi_rdata[10]_i_6_n_0 ));
  LUT4 #(
    .INIT(16'hF0EE)) 
    \axi_rdata[11]_i_1 
       (.I0(\axi_rdata[11]_i_2_n_0 ),
        .I1(\axi_rdata[11]_i_3_n_0 ),
        .I2(\axi_rdata[11]_i_4_n_0 ),
        .I3(\axi_rdata[28]_i_2_n_0 ),
        .O(reg_rd_dat[11]));
  (* SOFT_HLUTNM = "soft_lutpair22" *) 
  LUT5 #(
    .INIT(32'h00000008)) 
    \axi_rdata[11]_i_2 
       (.I0(\axi_araddr_reg[5]_0 ),
        .I1(data2_o[10]),
        .I2(Q[2]),
        .I3(Q[0]),
        .I4(Q[1]),
        .O(\axi_rdata[11]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0000000C00040004)) 
    \axi_rdata[11]_i_3 
       (.I0(\axi_rdata_reg[11]_0 ),
        .I1(reg_rd_adr[6]),
        .I2(reg_rd_adr[7]),
        .I3(reg_rd_adr[5]),
        .I4(\axi_rdata_reg[11]_1 ),
        .I5(Q[2]),
        .O(\axi_rdata[11]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[11]_i_4 
       (.I0(reg3_i[11]),
        .I1(reg2_i[11]),
        .I2(Q[1]),
        .I3(reg1_i[11]),
        .I4(Q[0]),
        .I5(reg0_i[11]),
        .O(\axi_rdata[11]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hBBBB8B888B888B88)) 
    \axi_rdata[12]_i_1 
       (.I0(\axi_rdata[12]_i_2_n_0 ),
        .I1(\axi_rdata[28]_i_2_n_0 ),
        .I2(\axi_rdata[14]_i_3_n_0 ),
        .I3(data2_o[11]),
        .I4(\axi_rdata[14]_i_4_n_0 ),
        .I5(\axi_rdata_reg[12]_0 ),
        .O(reg_rd_dat[12]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[12]_i_2 
       (.I0(reg3_i[12]),
        .I1(reg2_i[12]),
        .I2(Q[1]),
        .I3(reg1_i[12]),
        .I4(Q[0]),
        .I5(reg0_i[12]),
        .O(\axi_rdata[12]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hFF00F4F4)) 
    \axi_rdata[13]_i_1 
       (.I0(\axi_rdata[14]_i_3_n_0 ),
        .I1(data2_o[12]),
        .I2(\axi_rdata[13]_i_2_n_0 ),
        .I3(\axi_rdata[13]_i_3_n_0 ),
        .I4(\axi_rdata[28]_i_2_n_0 ),
        .O(reg_rd_dat[13]));
  LUT6 #(
    .INIT(64'h0000000C00040004)) 
    \axi_rdata[13]_i_2 
       (.I0(\axi_rdata_reg[13]_0 ),
        .I1(reg_rd_adr[6]),
        .I2(reg_rd_adr[7]),
        .I3(reg_rd_adr[5]),
        .I4(\axi_rdata_reg[13]_1 ),
        .I5(Q[2]),
        .O(\axi_rdata[13]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[13]_i_3 
       (.I0(reg3_i[13]),
        .I1(reg2_i[13]),
        .I2(Q[1]),
        .I3(reg1_i[13]),
        .I4(Q[0]),
        .I5(reg0_i[13]),
        .O(\axi_rdata[13]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hBBBB8B888B888B88)) 
    \axi_rdata[14]_i_1 
       (.I0(\axi_rdata[14]_i_2_n_0 ),
        .I1(\axi_rdata[28]_i_2_n_0 ),
        .I2(\axi_rdata[14]_i_3_n_0 ),
        .I3(data2_o[13]),
        .I4(\axi_rdata[14]_i_4_n_0 ),
        .I5(\axi_rdata_reg[14]_0 ),
        .O(reg_rd_dat[14]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[14]_i_2 
       (.I0(reg3_i[14]),
        .I1(reg2_i[14]),
        .I2(Q[1]),
        .I3(reg1_i[14]),
        .I4(Q[0]),
        .I5(reg0_i[14]),
        .O(\axi_rdata[14]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFEFFFF)) 
    \axi_rdata[14]_i_3 
       (.I0(Q[0]),
        .I1(Q[2]),
        .I2(Q[1]),
        .I3(reg_rd_adr[6]),
        .I4(reg_rd_adr[7]),
        .I5(reg_rd_adr[5]),
        .O(\axi_rdata[14]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT3 #(
    .INIT(8'h02)) 
    \axi_rdata[14]_i_4 
       (.I0(reg_rd_adr[6]),
        .I1(reg_rd_adr[7]),
        .I2(reg_rd_adr[5]),
        .O(\axi_rdata[14]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hFFFF0000FF40FF40)) 
    \axi_rdata[15]_i_1 
       (.I0(\axi_rdata[15]_i_2_n_0 ),
        .I1(data2_o[14]),
        .I2(\axi_araddr_reg[5]_0 ),
        .I3(\axi_rdata[15]_i_4_n_0 ),
        .I4(\axi_rdata[15]_i_5_n_0 ),
        .I5(\axi_rdata[28]_i_2_n_0 ),
        .O(reg_rd_dat[15]));
  (* SOFT_HLUTNM = "soft_lutpair22" *) 
  LUT3 #(
    .INIT(8'hFE)) 
    \axi_rdata[15]_i_2 
       (.I0(Q[2]),
        .I1(Q[1]),
        .I2(Q[0]),
        .O(\axi_rdata[15]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0004040404040404)) 
    \axi_rdata[15]_i_3 
       (.I0(reg_rd_adr[5]),
        .I1(reg_rd_adr[7]),
        .I2(reg_rd_adr[6]),
        .I3(Q[1]),
        .I4(Q[2]),
        .I5(Q[0]),
        .O(\axi_araddr_reg[5]_0 ));
  LUT6 #(
    .INIT(64'h0000000C00040004)) 
    \axi_rdata[15]_i_4 
       (.I0(\axi_rdata_reg[15]_0 ),
        .I1(reg_rd_adr[6]),
        .I2(reg_rd_adr[7]),
        .I3(reg_rd_adr[5]),
        .I4(\axi_rdata_reg[15]_1 ),
        .I5(Q[2]),
        .O(\axi_rdata[15]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[15]_i_5 
       (.I0(reg3_i[15]),
        .I1(reg2_i[15]),
        .I2(Q[1]),
        .I3(reg1_i[15]),
        .I4(Q[0]),
        .I5(reg0_i[15]),
        .O(\axi_rdata[15]_i_5_n_0 ));
  LUT5 #(
    .INIT(32'hBABBBAAA)) 
    \axi_rdata[16]_i_1 
       (.I0(\axi_rdata[16]_i_2_n_0 ),
        .I1(\axi_rdata[29]_i_3_n_0 ),
        .I2(fifo_out_count[0]),
        .I3(Q[2]),
        .I4(fifo_in_count[0]),
        .O(reg_rd_dat[16]));
  LUT6 #(
    .INIT(64'h00000000FEBA0000)) 
    \axi_rdata[16]_i_2 
       (.I0(Q[1]),
        .I1(Q[0]),
        .I2(reg0_i[16]),
        .I3(reg1_i[16]),
        .I4(\axi_rdata[28]_i_2_n_0 ),
        .I5(\axi_rdata[16]_i_3_n_0 ),
        .O(\axi_rdata[16]_i_2_n_0 ));
  LUT4 #(
    .INIT(16'h440C)) 
    \axi_rdata[16]_i_3 
       (.I0(reg3_i[16]),
        .I1(Q[1]),
        .I2(reg2_i[16]),
        .I3(Q[0]),
        .O(\axi_rdata[16]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'hFFFF4540)) 
    \axi_rdata[17]_i_1 
       (.I0(\axi_rdata[29]_i_3_n_0 ),
        .I1(fifo_out_count[1]),
        .I2(Q[2]),
        .I3(fifo_in_count[1]),
        .I4(\axi_rdata[17]_i_2_n_0 ),
        .O(reg_rd_dat[17]));
  LUT6 #(
    .INIT(64'h00000000EF4F0000)) 
    \axi_rdata[17]_i_2 
       (.I0(Q[0]),
        .I1(reg2_i[17]),
        .I2(Q[1]),
        .I3(reg3_i[17]),
        .I4(\axi_rdata[28]_i_2_n_0 ),
        .I5(\axi_rdata[17]_i_3_n_0 ),
        .O(\axi_rdata[17]_i_2_n_0 ));
  LUT4 #(
    .INIT(16'h0053)) 
    \axi_rdata[17]_i_3 
       (.I0(reg1_i[17]),
        .I1(reg0_i[17]),
        .I2(Q[0]),
        .I3(Q[1]),
        .O(\axi_rdata[17]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'hFFFF4540)) 
    \axi_rdata[18]_i_1 
       (.I0(\axi_rdata[29]_i_3_n_0 ),
        .I1(fifo_out_count[2]),
        .I2(Q[2]),
        .I3(fifo_in_count[2]),
        .I4(\axi_rdata[18]_i_2_n_0 ),
        .O(reg_rd_dat[18]));
  LUT6 #(
    .INIT(64'h00000000EF4F0000)) 
    \axi_rdata[18]_i_2 
       (.I0(Q[0]),
        .I1(reg2_i[18]),
        .I2(Q[1]),
        .I3(reg3_i[18]),
        .I4(\axi_rdata[28]_i_2_n_0 ),
        .I5(\axi_rdata[18]_i_3_n_0 ),
        .O(\axi_rdata[18]_i_2_n_0 ));
  LUT4 #(
    .INIT(16'h0053)) 
    \axi_rdata[18]_i_3 
       (.I0(reg1_i[18]),
        .I1(reg0_i[18]),
        .I2(Q[0]),
        .I3(Q[1]),
        .O(\axi_rdata[18]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'hFFFF4540)) 
    \axi_rdata[19]_i_1 
       (.I0(\axi_rdata[29]_i_3_n_0 ),
        .I1(fifo_out_count[3]),
        .I2(Q[2]),
        .I3(fifo_in_count[3]),
        .I4(\axi_rdata[19]_i_2_n_0 ),
        .O(reg_rd_dat[19]));
  LUT6 #(
    .INIT(64'h00000000EF4F0000)) 
    \axi_rdata[19]_i_2 
       (.I0(Q[0]),
        .I1(reg2_i[19]),
        .I2(Q[1]),
        .I3(reg3_i[19]),
        .I4(\axi_rdata[28]_i_2_n_0 ),
        .I5(\axi_rdata[19]_i_3_n_0 ),
        .O(\axi_rdata[19]_i_2_n_0 ));
  LUT4 #(
    .INIT(16'h0053)) 
    \axi_rdata[19]_i_3 
       (.I0(reg1_i[19]),
        .I1(reg0_i[19]),
        .I2(Q[0]),
        .I3(Q[1]),
        .O(\axi_rdata[19]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'hDDD0D0D0)) 
    \axi_rdata[1]_i_1 
       (.I0(\axi_rdata[28]_i_2_n_0 ),
        .I1(\axi_rdata[1]_i_2_n_0 ),
        .I2(\axi_rdata[1]_i_3_n_0 ),
        .I3(\axi_rdata[1]_i_4_n_0 ),
        .I4(\axi_rdata_reg[1]_0 ),
        .O(reg_rd_dat[1]));
  LUT6 #(
    .INIT(64'h55D5555555D5D5D5)) 
    \axi_rdata[1]_i_14 
       (.I0(\axi_rdata[14]_i_4_n_0 ),
        .I1(Q[1]),
        .I2(Q[2]),
        .I3(reg7_o[0]),
        .I4(Q[0]),
        .I5(reg6_o[0]),
        .O(\axi_rdata[1]_i_14_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[1]_i_2 
       (.I0(reg3_i[1]),
        .I1(reg2_i[1]),
        .I2(Q[1]),
        .I3(reg1_i[1]),
        .I4(Q[0]),
        .I5(reg0_i[1]),
        .O(\axi_rdata[1]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFF5454FF54)) 
    \axi_rdata[1]_i_3 
       (.I0(\axi_rdata[1]_i_6_n_0 ),
        .I1(Q[2]),
        .I2(\axi_rdata_reg[1]_1 ),
        .I3(data2_o[1]),
        .I4(\axi_rdata[14]_i_3_n_0 ),
        .I5(\axi_rdata[28]_i_2_n_0 ),
        .O(\axi_rdata[1]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h4444444400000400)) 
    \axi_rdata[1]_i_4 
       (.I0(Q[0]),
        .I1(Q[1]),
        .I2(\axi_rdata_reg[1]_2 ),
        .I3(\axi_rdata_reg[1]_3 ),
        .I4(\axi_rdata_reg[1]_4 ),
        .I5(Q[2]),
        .O(\axi_rdata[1]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFF00004700)) 
    \axi_rdata[1]_i_6 
       (.I0(reg5_o[0]),
        .I1(Q[0]),
        .I2(reg4_o[0]),
        .I3(Q[2]),
        .I4(Q[1]),
        .I5(\axi_rdata[1]_i_14_n_0 ),
        .O(\axi_rdata[1]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'h8F888F8F8F888888)) 
    \axi_rdata[20]_i_1 
       (.I0(\axi_rdata[28]_i_2_n_0 ),
        .I1(\axi_rdata[20]_i_2_n_0 ),
        .I2(\axi_rdata[29]_i_3_n_0 ),
        .I3(fifo_out_count[4]),
        .I4(Q[2]),
        .I5(fifo_in_count[4]),
        .O(reg_rd_dat[20]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[20]_i_2 
       (.I0(reg3_i[20]),
        .I1(reg2_i[20]),
        .I2(Q[1]),
        .I3(reg1_i[20]),
        .I4(Q[0]),
        .I5(reg0_i[20]),
        .O(\axi_rdata[20]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h8F888F8F8F888888)) 
    \axi_rdata[21]_i_1 
       (.I0(\axi_rdata[28]_i_2_n_0 ),
        .I1(\axi_rdata[21]_i_2_n_0 ),
        .I2(\axi_rdata[29]_i_3_n_0 ),
        .I3(fifo_out_count[5]),
        .I4(Q[2]),
        .I5(fifo_in_count[5]),
        .O(reg_rd_dat[21]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[21]_i_2 
       (.I0(reg3_i[21]),
        .I1(reg2_i[21]),
        .I2(Q[1]),
        .I3(reg1_i[21]),
        .I4(Q[0]),
        .I5(reg0_i[21]),
        .O(\axi_rdata[21]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hFFFF4540)) 
    \axi_rdata[22]_i_1 
       (.I0(\axi_rdata[29]_i_3_n_0 ),
        .I1(fifo_out_count[6]),
        .I2(Q[2]),
        .I3(fifo_in_count[6]),
        .I4(\axi_rdata[22]_i_2_n_0 ),
        .O(reg_rd_dat[22]));
  LUT6 #(
    .INIT(64'h00000000EF4F0000)) 
    \axi_rdata[22]_i_2 
       (.I0(Q[0]),
        .I1(reg2_i[22]),
        .I2(Q[1]),
        .I3(reg3_i[22]),
        .I4(\axi_rdata[28]_i_2_n_0 ),
        .I5(\axi_rdata[22]_i_3_n_0 ),
        .O(\axi_rdata[22]_i_2_n_0 ));
  LUT4 #(
    .INIT(16'h0053)) 
    \axi_rdata[22]_i_3 
       (.I0(reg1_i[22]),
        .I1(reg0_i[22]),
        .I2(Q[0]),
        .I3(Q[1]),
        .O(\axi_rdata[22]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h8F888F8F8F888888)) 
    \axi_rdata[23]_i_1 
       (.I0(\axi_rdata[28]_i_2_n_0 ),
        .I1(\axi_rdata[23]_i_2_n_0 ),
        .I2(\axi_rdata[29]_i_3_n_0 ),
        .I3(fifo_out_count[7]),
        .I4(Q[2]),
        .I5(fifo_in_count[7]),
        .O(reg_rd_dat[23]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[23]_i_2 
       (.I0(reg3_i[23]),
        .I1(reg2_i[23]),
        .I2(Q[1]),
        .I3(reg1_i[23]),
        .I4(Q[0]),
        .I5(reg0_i[23]),
        .O(\axi_rdata[23]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h8F888F8F8F888888)) 
    \axi_rdata[24]_i_1 
       (.I0(\axi_rdata[28]_i_2_n_0 ),
        .I1(\axi_rdata[24]_i_2_n_0 ),
        .I2(\axi_rdata[29]_i_3_n_0 ),
        .I3(fifo_out_count[8]),
        .I4(Q[2]),
        .I5(fifo_in_count[8]),
        .O(reg_rd_dat[24]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[24]_i_2 
       (.I0(reg3_i[24]),
        .I1(reg2_i[24]),
        .I2(Q[1]),
        .I3(reg1_i[24]),
        .I4(Q[0]),
        .I5(reg0_i[24]),
        .O(\axi_rdata[24]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hBABBBAAA)) 
    \axi_rdata[25]_i_1 
       (.I0(\axi_rdata[25]_i_2_n_0 ),
        .I1(\axi_rdata[29]_i_3_n_0 ),
        .I2(fifo_out_count[9]),
        .I3(Q[2]),
        .I4(fifo_in_count[9]),
        .O(reg_rd_dat[25]));
  LUT6 #(
    .INIT(64'h00000000EF4F0000)) 
    \axi_rdata[25]_i_2 
       (.I0(Q[0]),
        .I1(reg2_i[25]),
        .I2(Q[1]),
        .I3(reg3_i[25]),
        .I4(\axi_rdata[28]_i_2_n_0 ),
        .I5(\axi_rdata[25]_i_3_n_0 ),
        .O(\axi_rdata[25]_i_2_n_0 ));
  LUT4 #(
    .INIT(16'h0053)) 
    \axi_rdata[25]_i_3 
       (.I0(reg1_i[25]),
        .I1(reg0_i[25]),
        .I2(Q[0]),
        .I3(Q[1]),
        .O(\axi_rdata[25]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h8F888F8F8F888888)) 
    \axi_rdata[26]_i_1 
       (.I0(\axi_rdata[28]_i_2_n_0 ),
        .I1(\axi_rdata[26]_i_2_n_0 ),
        .I2(\axi_rdata[29]_i_3_n_0 ),
        .I3(fifo_out_count[10]),
        .I4(Q[2]),
        .I5(fifo_in_count[10]),
        .O(reg_rd_dat[26]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[26]_i_2 
       (.I0(reg3_i[26]),
        .I1(reg2_i[26]),
        .I2(Q[1]),
        .I3(reg1_i[26]),
        .I4(Q[0]),
        .I5(reg0_i[26]),
        .O(\axi_rdata[26]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hBABBBAAA)) 
    \axi_rdata[27]_i_1 
       (.I0(\axi_rdata[27]_i_2_n_0 ),
        .I1(\axi_rdata[29]_i_3_n_0 ),
        .I2(fifo_out_count[11]),
        .I3(Q[2]),
        .I4(fifo_in_count[11]),
        .O(reg_rd_dat[27]));
  LUT6 #(
    .INIT(64'h00000000EF4F0000)) 
    \axi_rdata[27]_i_2 
       (.I0(Q[0]),
        .I1(reg2_i[27]),
        .I2(Q[1]),
        .I3(reg3_i[27]),
        .I4(\axi_rdata[28]_i_2_n_0 ),
        .I5(\axi_rdata[27]_i_3_n_0 ),
        .O(\axi_rdata[27]_i_2_n_0 ));
  LUT4 #(
    .INIT(16'h0053)) 
    \axi_rdata[27]_i_3 
       (.I0(reg1_i[27]),
        .I1(reg0_i[27]),
        .I2(Q[0]),
        .I3(Q[1]),
        .O(\axi_rdata[27]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h8F888F8F8F888888)) 
    \axi_rdata[28]_i_1 
       (.I0(\axi_rdata[28]_i_2_n_0 ),
        .I1(\axi_rdata[28]_i_3_n_0 ),
        .I2(\axi_rdata[29]_i_3_n_0 ),
        .I3(fifo_out_count[12]),
        .I4(Q[2]),
        .I5(fifo_in_count[12]),
        .O(reg_rd_dat[28]));
  LUT4 #(
    .INIT(16'h0001)) 
    \axi_rdata[28]_i_2 
       (.I0(Q[2]),
        .I1(reg_rd_adr[5]),
        .I2(reg_rd_adr[6]),
        .I3(reg_rd_adr[7]),
        .O(\axi_rdata[28]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[28]_i_3 
       (.I0(reg3_i[28]),
        .I1(reg2_i[28]),
        .I2(Q[1]),
        .I3(reg1_i[28]),
        .I4(Q[0]),
        .I5(reg0_i[28]),
        .O(\axi_rdata[28]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'hBABBBAAA)) 
    \axi_rdata[29]_i_1 
       (.I0(\axi_rdata[29]_i_2_n_0 ),
        .I1(\axi_rdata[29]_i_3_n_0 ),
        .I2(fifo_out_count[13]),
        .I3(Q[2]),
        .I4(fifo_in_count[13]),
        .O(reg_rd_dat[29]));
  LUT6 #(
    .INIT(64'h00000000EF4F0000)) 
    \axi_rdata[29]_i_2 
       (.I0(Q[0]),
        .I1(reg2_i[29]),
        .I2(Q[1]),
        .I3(reg3_i[29]),
        .I4(\axi_rdata[28]_i_2_n_0 ),
        .I5(\axi_rdata[29]_i_4_n_0 ),
        .O(\axi_rdata[29]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hFFFBFFFF)) 
    \axi_rdata[29]_i_3 
       (.I0(reg_rd_adr[6]),
        .I1(reg_rd_adr[7]),
        .I2(reg_rd_adr[5]),
        .I3(Q[0]),
        .I4(Q[1]),
        .O(\axi_rdata[29]_i_3_n_0 ));
  LUT4 #(
    .INIT(16'h0053)) 
    \axi_rdata[29]_i_4 
       (.I0(reg1_i[29]),
        .I1(reg0_i[29]),
        .I2(Q[0]),
        .I3(Q[1]),
        .O(\axi_rdata[29]_i_4_n_0 ));
  LUT5 #(
    .INIT(32'hACAFACAC)) 
    \axi_rdata[2]_i_1 
       (.I0(\axi_rdata[2]_i_2_n_0 ),
        .I1(\axi_rdata[2]_i_3_n_0 ),
        .I2(\axi_rdata[28]_i_2_n_0 ),
        .I3(\axi_rdata_reg[2]_0 ),
        .I4(\axi_araddr_reg[5]_0 ),
        .O(reg_rd_dat[2]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[2]_i_2 
       (.I0(reg3_i[2]),
        .I1(reg2_i[2]),
        .I2(Q[1]),
        .I3(reg1_i[2]),
        .I4(Q[0]),
        .I5(reg0_i[2]),
        .O(\axi_rdata[2]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'h0000E000)) 
    \axi_rdata[2]_i_3 
       (.I0(\axi_rdata_reg[2]_1 ),
        .I1(Q[2]),
        .I2(\axi_rdata[14]_i_4_n_0 ),
        .I3(\axi_rdata[2]_i_6_n_0 ),
        .I4(\axi_rdata[2]_i_7_n_0 ),
        .O(\axi_rdata[2]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair23" *) 
  LUT5 #(
    .INIT(32'hE2FFFFFF)) 
    \axi_rdata[2]_i_6 
       (.I0(reg6_o[1]),
        .I1(Q[0]),
        .I2(reg7_o[1]),
        .I3(Q[2]),
        .I4(Q[1]),
        .O(\axi_rdata[2]_i_6_n_0 ));
  LUT5 #(
    .INIT(32'h00044404)) 
    \axi_rdata[2]_i_7 
       (.I0(Q[1]),
        .I1(Q[2]),
        .I2(reg4_o[1]),
        .I3(Q[0]),
        .I4(reg5_o[1]),
        .O(\axi_rdata[2]_i_7_n_0 ));
  LUT5 #(
    .INIT(32'h00000002)) 
    \axi_rdata[30]_i_1 
       (.I0(\axi_rdata[30]_i_2_n_0 ),
        .I1(reg_rd_adr[7]),
        .I2(reg_rd_adr[6]),
        .I3(reg_rd_adr[5]),
        .I4(Q[2]),
        .O(\axi_rdata[30]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[30]_i_2 
       (.I0(reg3_i[30]),
        .I1(reg2_i[30]),
        .I2(Q[1]),
        .I3(reg1_i[30]),
        .I4(Q[0]),
        .I5(reg0_i[30]),
        .O(\axi_rdata[30]_i_2_n_0 ));
  LUT3 #(
    .INIT(8'hBF)) 
    \axi_rdata[31]_i_1 
       (.I0(axi_rvalid_reg_0),
        .I1(axil_arvalid),
        .I2(axi_arready_reg_0),
        .O(\axi_rdata[31]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT5 #(
    .INIT(32'h00000002)) 
    \axi_rdata[31]_i_2 
       (.I0(\axi_rdata[31]_i_3_n_0 ),
        .I1(reg_rd_adr[7]),
        .I2(reg_rd_adr[6]),
        .I3(reg_rd_adr[5]),
        .I4(Q[2]),
        .O(\axi_rdata[31]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[31]_i_3 
       (.I0(reg3_i[31]),
        .I1(reg2_i[31]),
        .I2(Q[1]),
        .I3(reg1_i[31]),
        .I4(Q[0]),
        .I5(reg0_i[31]),
        .O(\axi_rdata[31]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h10B0FFFF10B010B0)) 
    \axi_rdata[3]_i_2 
       (.I0(Q[2]),
        .I1(\axi_rdata_reg[3]_0 ),
        .I2(\axi_rdata[14]_i_4_n_0 ),
        .I3(\axi_rdata_reg[3]_1 ),
        .I4(\axi_rdata[14]_i_3_n_0 ),
        .I5(data2_o[2]),
        .O(\axi_rdata[3]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[3]_i_3 
       (.I0(reg3_i[3]),
        .I1(reg2_i[3]),
        .I2(Q[1]),
        .I3(reg1_i[3]),
        .I4(Q[0]),
        .I5(reg0_i[3]),
        .O(\axi_rdata[3]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'h8B88BBBB)) 
    \axi_rdata[4]_i_1 
       (.I0(\axi_rdata[4]_i_2_n_0 ),
        .I1(\axi_rdata[28]_i_2_n_0 ),
        .I2(\axi_rdata[14]_i_3_n_0 ),
        .I3(data2_o[3]),
        .I4(\axi_rdata[4]_i_3_n_0 ),
        .O(reg_rd_dat[4]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[4]_i_2 
       (.I0(reg3_i[4]),
        .I1(reg2_i[4]),
        .I2(Q[1]),
        .I3(reg1_i[4]),
        .I4(Q[0]),
        .I5(reg0_i[4]),
        .O(\axi_rdata[4]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hFFFF1FFF)) 
    \axi_rdata[4]_i_3 
       (.I0(\axi_rdata_reg[4]_0 ),
        .I1(Q[2]),
        .I2(\axi_rdata[14]_i_4_n_0 ),
        .I3(\axi_rdata[4]_i_5_n_0 ),
        .I4(\axi_rdata[4]_i_6_n_0 ),
        .O(\axi_rdata[4]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'hE2FFFFFF)) 
    \axi_rdata[4]_i_5 
       (.I0(reg6_o[2]),
        .I1(Q[0]),
        .I2(reg7_o[2]),
        .I3(Q[2]),
        .I4(Q[1]),
        .O(\axi_rdata[4]_i_5_n_0 ));
  LUT5 #(
    .INIT(32'h00044404)) 
    \axi_rdata[4]_i_6 
       (.I0(Q[1]),
        .I1(Q[2]),
        .I2(reg4_o[2]),
        .I3(Q[0]),
        .I4(reg5_o[2]),
        .O(\axi_rdata[4]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'h44F444444FFF4444)) 
    \axi_rdata[5]_i_2 
       (.I0(\axi_rdata[14]_i_3_n_0 ),
        .I1(data2_o[4]),
        .I2(Q[2]),
        .I3(\axi_rdata_reg[5]_0 ),
        .I4(\axi_rdata[14]_i_4_n_0 ),
        .I5(\axi_rdata_reg[5]_1 ),
        .O(\axi_rdata[5]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[5]_i_3 
       (.I0(reg3_i[5]),
        .I1(reg2_i[5]),
        .I2(Q[1]),
        .I3(reg1_i[5]),
        .I4(Q[0]),
        .I5(reg0_i[5]),
        .O(\axi_rdata[5]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h88F8888888888888)) 
    \axi_rdata[6]_i_2 
       (.I0(\axi_rdata[14]_i_4_n_0 ),
        .I1(\axi_rdata_reg[6]_0 ),
        .I2(\axi_araddr_reg[5]_0 ),
        .I3(Q[2]),
        .I4(data2_o[5]),
        .I5(\axi_rdata[6]_i_5_n_0 ),
        .O(\axi_rdata[6]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[6]_i_3 
       (.I0(reg3_i[6]),
        .I1(reg2_i[6]),
        .I2(Q[1]),
        .I3(reg1_i[6]),
        .I4(Q[0]),
        .I5(reg0_i[6]),
        .O(\axi_rdata[6]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair23" *) 
  LUT2 #(
    .INIT(4'h1)) 
    \axi_rdata[6]_i_5 
       (.I0(Q[0]),
        .I1(Q[1]),
        .O(\axi_rdata[6]_i_5_n_0 ));
  LUT5 #(
    .INIT(32'hFF00F4F4)) 
    \axi_rdata[7]_i_1 
       (.I0(\axi_rdata[14]_i_3_n_0 ),
        .I1(data2_o[6]),
        .I2(\axi_rdata[7]_i_2_n_0 ),
        .I3(\axi_rdata[7]_i_3_n_0 ),
        .I4(\axi_rdata[28]_i_2_n_0 ),
        .O(reg_rd_dat[7]));
  LUT6 #(
    .INIT(64'h0000000C00040004)) 
    \axi_rdata[7]_i_2 
       (.I0(\axi_rdata_reg[7]_0 ),
        .I1(reg_rd_adr[6]),
        .I2(reg_rd_adr[7]),
        .I3(reg_rd_adr[5]),
        .I4(\axi_rdata_reg[7]_1 ),
        .I5(Q[2]),
        .O(\axi_rdata[7]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[7]_i_3 
       (.I0(reg3_i[7]),
        .I1(reg2_i[7]),
        .I2(Q[1]),
        .I3(reg1_i[7]),
        .I4(Q[0]),
        .I5(reg0_i[7]),
        .O(\axi_rdata[7]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hBBBB8B888B888B88)) 
    \axi_rdata[8]_i_1 
       (.I0(\axi_rdata[8]_i_2_n_0 ),
        .I1(\axi_rdata[28]_i_2_n_0 ),
        .I2(\axi_rdata[14]_i_3_n_0 ),
        .I3(data2_o[7]),
        .I4(\axi_rdata[14]_i_4_n_0 ),
        .I5(\axi_rdata_reg[8]_0 ),
        .O(reg_rd_dat[8]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[8]_i_2 
       (.I0(reg3_i[8]),
        .I1(reg2_i[8]),
        .I2(Q[1]),
        .I3(reg1_i[8]),
        .I4(Q[0]),
        .I5(reg0_i[8]),
        .O(\axi_rdata[8]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'h8B88BBBB)) 
    \axi_rdata[9]_i_1 
       (.I0(\axi_rdata[9]_i_2_n_0 ),
        .I1(\axi_rdata[28]_i_2_n_0 ),
        .I2(\axi_rdata[14]_i_3_n_0 ),
        .I3(data2_o[8]),
        .I4(\axi_rdata[9]_i_3_n_0 ),
        .O(reg_rd_dat[9]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[9]_i_2 
       (.I0(reg3_i[9]),
        .I1(reg2_i[9]),
        .I2(Q[1]),
        .I3(reg1_i[9]),
        .I4(Q[0]),
        .I5(reg0_i[9]),
        .O(\axi_rdata[9]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFBFFFBFFFFFFF3)) 
    \axi_rdata[9]_i_3 
       (.I0(\axi_rdata_reg[9]_0 ),
        .I1(reg_rd_adr[6]),
        .I2(reg_rd_adr[7]),
        .I3(reg_rd_adr[5]),
        .I4(\axi_rdata_reg[9]_1 ),
        .I5(Q[2]),
        .O(\axi_rdata[9]_i_3_n_0 ));
  FDRE \axi_rdata_reg[0] 
       (.C(axil_aclk),
        .CE(1'b1),
        .D(reg_rd_dat[0]),
        .Q(axil_rdata[0]),
        .R(\axi_rdata[31]_i_1_n_0 ));
  FDRE \axi_rdata_reg[10] 
       (.C(axil_aclk),
        .CE(1'b1),
        .D(reg_rd_dat[10]),
        .Q(axil_rdata[10]),
        .R(\axi_rdata[31]_i_1_n_0 ));
  FDRE \axi_rdata_reg[11] 
       (.C(axil_aclk),
        .CE(1'b1),
        .D(reg_rd_dat[11]),
        .Q(axil_rdata[11]),
        .R(\axi_rdata[31]_i_1_n_0 ));
  FDRE \axi_rdata_reg[12] 
       (.C(axil_aclk),
        .CE(1'b1),
        .D(reg_rd_dat[12]),
        .Q(axil_rdata[12]),
        .R(\axi_rdata[31]_i_1_n_0 ));
  FDRE \axi_rdata_reg[13] 
       (.C(axil_aclk),
        .CE(1'b1),
        .D(reg_rd_dat[13]),
        .Q(axil_rdata[13]),
        .R(\axi_rdata[31]_i_1_n_0 ));
  FDRE \axi_rdata_reg[14] 
       (.C(axil_aclk),
        .CE(1'b1),
        .D(reg_rd_dat[14]),
        .Q(axil_rdata[14]),
        .R(\axi_rdata[31]_i_1_n_0 ));
  FDRE \axi_rdata_reg[15] 
       (.C(axil_aclk),
        .CE(1'b1),
        .D(reg_rd_dat[15]),
        .Q(axil_rdata[15]),
        .R(\axi_rdata[31]_i_1_n_0 ));
  FDRE \axi_rdata_reg[16] 
       (.C(axil_aclk),
        .CE(1'b1),
        .D(reg_rd_dat[16]),
        .Q(axil_rdata[16]),
        .R(\axi_rdata[31]_i_1_n_0 ));
  FDRE \axi_rdata_reg[17] 
       (.C(axil_aclk),
        .CE(1'b1),
        .D(reg_rd_dat[17]),
        .Q(axil_rdata[17]),
        .R(\axi_rdata[31]_i_1_n_0 ));
  FDRE \axi_rdata_reg[18] 
       (.C(axil_aclk),
        .CE(1'b1),
        .D(reg_rd_dat[18]),
        .Q(axil_rdata[18]),
        .R(\axi_rdata[31]_i_1_n_0 ));
  FDRE \axi_rdata_reg[19] 
       (.C(axil_aclk),
        .CE(1'b1),
        .D(reg_rd_dat[19]),
        .Q(axil_rdata[19]),
        .R(\axi_rdata[31]_i_1_n_0 ));
  FDRE \axi_rdata_reg[1] 
       (.C(axil_aclk),
        .CE(1'b1),
        .D(reg_rd_dat[1]),
        .Q(axil_rdata[1]),
        .R(\axi_rdata[31]_i_1_n_0 ));
  FDRE \axi_rdata_reg[20] 
       (.C(axil_aclk),
        .CE(1'b1),
        .D(reg_rd_dat[20]),
        .Q(axil_rdata[20]),
        .R(\axi_rdata[31]_i_1_n_0 ));
  FDRE \axi_rdata_reg[21] 
       (.C(axil_aclk),
        .CE(1'b1),
        .D(reg_rd_dat[21]),
        .Q(axil_rdata[21]),
        .R(\axi_rdata[31]_i_1_n_0 ));
  FDRE \axi_rdata_reg[22] 
       (.C(axil_aclk),
        .CE(1'b1),
        .D(reg_rd_dat[22]),
        .Q(axil_rdata[22]),
        .R(\axi_rdata[31]_i_1_n_0 ));
  FDRE \axi_rdata_reg[23] 
       (.C(axil_aclk),
        .CE(1'b1),
        .D(reg_rd_dat[23]),
        .Q(axil_rdata[23]),
        .R(\axi_rdata[31]_i_1_n_0 ));
  FDRE \axi_rdata_reg[24] 
       (.C(axil_aclk),
        .CE(1'b1),
        .D(reg_rd_dat[24]),
        .Q(axil_rdata[24]),
        .R(\axi_rdata[31]_i_1_n_0 ));
  FDRE \axi_rdata_reg[25] 
       (.C(axil_aclk),
        .CE(1'b1),
        .D(reg_rd_dat[25]),
        .Q(axil_rdata[25]),
        .R(\axi_rdata[31]_i_1_n_0 ));
  FDRE \axi_rdata_reg[26] 
       (.C(axil_aclk),
        .CE(1'b1),
        .D(reg_rd_dat[26]),
        .Q(axil_rdata[26]),
        .R(\axi_rdata[31]_i_1_n_0 ));
  FDRE \axi_rdata_reg[27] 
       (.C(axil_aclk),
        .CE(1'b1),
        .D(reg_rd_dat[27]),
        .Q(axil_rdata[27]),
        .R(\axi_rdata[31]_i_1_n_0 ));
  FDRE \axi_rdata_reg[28] 
       (.C(axil_aclk),
        .CE(1'b1),
        .D(reg_rd_dat[28]),
        .Q(axil_rdata[28]),
        .R(\axi_rdata[31]_i_1_n_0 ));
  FDRE \axi_rdata_reg[29] 
       (.C(axil_aclk),
        .CE(1'b1),
        .D(reg_rd_dat[29]),
        .Q(axil_rdata[29]),
        .R(\axi_rdata[31]_i_1_n_0 ));
  FDRE \axi_rdata_reg[2] 
       (.C(axil_aclk),
        .CE(1'b1),
        .D(reg_rd_dat[2]),
        .Q(axil_rdata[2]),
        .R(\axi_rdata[31]_i_1_n_0 ));
  FDRE \axi_rdata_reg[30] 
       (.C(axil_aclk),
        .CE(1'b1),
        .D(\axi_rdata[30]_i_1_n_0 ),
        .Q(axil_rdata[30]),
        .R(\axi_rdata[31]_i_1_n_0 ));
  FDRE \axi_rdata_reg[31] 
       (.C(axil_aclk),
        .CE(1'b1),
        .D(\axi_rdata[31]_i_2_n_0 ),
        .Q(axil_rdata[31]),
        .R(\axi_rdata[31]_i_1_n_0 ));
  FDRE \axi_rdata_reg[3] 
       (.C(axil_aclk),
        .CE(1'b1),
        .D(reg_rd_dat[3]),
        .Q(axil_rdata[3]),
        .R(\axi_rdata[31]_i_1_n_0 ));
  MUXF7 \axi_rdata_reg[3]_i_1 
       (.I0(\axi_rdata[3]_i_2_n_0 ),
        .I1(\axi_rdata[3]_i_3_n_0 ),
        .O(reg_rd_dat[3]),
        .S(\axi_rdata[28]_i_2_n_0 ));
  FDRE \axi_rdata_reg[4] 
       (.C(axil_aclk),
        .CE(1'b1),
        .D(reg_rd_dat[4]),
        .Q(axil_rdata[4]),
        .R(\axi_rdata[31]_i_1_n_0 ));
  FDRE \axi_rdata_reg[5] 
       (.C(axil_aclk),
        .CE(1'b1),
        .D(reg_rd_dat[5]),
        .Q(axil_rdata[5]),
        .R(\axi_rdata[31]_i_1_n_0 ));
  MUXF7 \axi_rdata_reg[5]_i_1 
       (.I0(\axi_rdata[5]_i_2_n_0 ),
        .I1(\axi_rdata[5]_i_3_n_0 ),
        .O(reg_rd_dat[5]),
        .S(\axi_rdata[28]_i_2_n_0 ));
  FDRE \axi_rdata_reg[6] 
       (.C(axil_aclk),
        .CE(1'b1),
        .D(reg_rd_dat[6]),
        .Q(axil_rdata[6]),
        .R(\axi_rdata[31]_i_1_n_0 ));
  MUXF7 \axi_rdata_reg[6]_i_1 
       (.I0(\axi_rdata[6]_i_2_n_0 ),
        .I1(\axi_rdata[6]_i_3_n_0 ),
        .O(reg_rd_dat[6]),
        .S(\axi_rdata[28]_i_2_n_0 ));
  FDRE \axi_rdata_reg[7] 
       (.C(axil_aclk),
        .CE(1'b1),
        .D(reg_rd_dat[7]),
        .Q(axil_rdata[7]),
        .R(\axi_rdata[31]_i_1_n_0 ));
  FDRE \axi_rdata_reg[8] 
       (.C(axil_aclk),
        .CE(1'b1),
        .D(reg_rd_dat[8]),
        .Q(axil_rdata[8]),
        .R(\axi_rdata[31]_i_1_n_0 ));
  FDRE \axi_rdata_reg[9] 
       (.C(axil_aclk),
        .CE(1'b1),
        .D(reg_rd_dat[9]),
        .Q(axil_rdata[9]),
        .R(\axi_rdata[31]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h08F8)) 
    axi_rvalid_i_1
       (.I0(axil_arvalid),
        .I1(axi_arready_reg_0),
        .I2(axi_rvalid_reg_0),
        .I3(axil_rready),
        .O(axi_rvalid_i_1_n_0));
  FDRE axi_rvalid_reg
       (.C(axil_aclk),
        .CE(1'b1),
        .D(axi_rvalid_i_1_n_0),
        .Q(axi_rvalid_reg_0),
        .R(p_0_in));
  LUT4 #(
    .INIT(16'h4000)) 
    axi_wready_i_1
       (.I0(axi_wready_reg_0),
        .I1(aw_en_reg_n_0),
        .I2(axil_wvalid),
        .I3(axil_awvalid),
        .O(axi_wready0));
  FDRE axi_wready_reg
       (.C(axil_aclk),
        .CE(1'b1),
        .D(axi_wready0),
        .Q(axi_wready_reg_0),
        .R(p_0_in));
  LUT2 #(
    .INIT(4'hB)) 
    empty00_carry__0_i_1
       (.I0(empty_r_reg),
        .I1(empty00_carry__0[3]),
        .O(\rd_ptr_r_reg[7] [3]));
  LUT2 #(
    .INIT(4'hB)) 
    empty00_carry__0_i_2
       (.I0(empty_r_reg),
        .I1(empty00_carry__0[2]),
        .O(\rd_ptr_r_reg[7] [2]));
  LUT2 #(
    .INIT(4'hB)) 
    empty00_carry__0_i_3
       (.I0(empty_r_reg),
        .I1(empty00_carry__0[1]),
        .O(\rd_ptr_r_reg[7] [1]));
  LUT2 #(
    .INIT(4'hB)) 
    empty00_carry__0_i_4
       (.I0(empty_r_reg),
        .I1(empty00_carry__0[0]),
        .O(\rd_ptr_r_reg[7] [0]));
  LUT2 #(
    .INIT(4'hB)) 
    empty00_carry__1_i_1
       (.I0(empty_r_reg),
        .I1(empty00_carry__1[3]),
        .O(\rd_ptr_r_reg[11] [3]));
  LUT2 #(
    .INIT(4'hB)) 
    empty00_carry__1_i_2
       (.I0(empty_r_reg),
        .I1(empty00_carry__1[2]),
        .O(\rd_ptr_r_reg[11] [2]));
  LUT2 #(
    .INIT(4'hB)) 
    empty00_carry__1_i_3
       (.I0(empty_r_reg),
        .I1(empty00_carry__1[1]),
        .O(\rd_ptr_r_reg[11] [1]));
  LUT2 #(
    .INIT(4'hB)) 
    empty00_carry__1_i_4
       (.I0(empty_r_reg),
        .I1(empty00_carry__1[0]),
        .O(\rd_ptr_r_reg[11] [0]));
  LUT2 #(
    .INIT(4'hB)) 
    empty00_carry_i_4
       (.I0(empty_r_reg),
        .I1(O),
        .O(DI));
  LUT5 #(
    .INIT(32'h00080000)) 
    fifo_in_clear_i_1
       (.I0(\regs_out[0][15]_i_2_n_0 ),
        .I1(reg_wr_adr[2]),
        .I2(reg_wr_adr[3]),
        .I3(reg_wr_adr[6]),
        .I4(reg_wr_adr[7]),
        .O(\axi_awaddr_reg[2]_5 ));
  LUT6 #(
    .INIT(64'hAE00AEAEAEAEAEAE)) 
    fifo_in_under_r_i_1
       (.I0(fifo_in_under_r__0),
        .I1(empty_r),
        .I2(fifo_in_under_r_i_2_n_0),
        .I3(Q[2]),
        .I4(Q[1]),
        .I5(fifo_out_over_r_i_3_n_0),
        .O(fifo_in_under_r_reg));
  LUT5 #(
    .INIT(32'hFFFBFFFF)) 
    fifo_in_under_r_i_2
       (.I0(reg_rd_adr[5]),
        .I1(reg_rd_adr[7]),
        .I2(reg_rd_adr[6]),
        .I3(\axi_rdata[15]_i_2_n_0 ),
        .I4(reg_rd_ena),
        .O(fifo_in_under_r_i_2_n_0));
  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT5 #(
    .INIT(32'h00040000)) 
    fifo_out_clear_i_1
       (.I0(\regs_out[4][15]_i_2_n_0 ),
        .I1(reg_wr_adr[2]),
        .I2(reg_wr_adr[3]),
        .I3(reg_wr_adr[6]),
        .I4(reg_wr_adr[7]),
        .O(\axi_awaddr_reg[2]_2 ));
  LUT6 #(
    .INIT(64'h00AEAEAEAEAEAEAE)) 
    fifo_out_over_r_i_1
       (.I0(fifo_out_over_r__0),
        .I1(full_r),
        .I2(fifo_out_over_r_i_2_n_0),
        .I3(fifo_out_over_r_i_3_n_0),
        .I4(Q[1]),
        .I5(Q[2]),
        .O(fifo_out_over_r_reg));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT5 #(
    .INIT(32'hFFFEFFFF)) 
    fifo_out_over_r_i_2
       (.I0(\regs_out[4][15]_i_2_n_0 ),
        .I1(reg_wr_adr[2]),
        .I2(reg_wr_adr[3]),
        .I3(reg_wr_adr[6]),
        .I4(reg_wr_adr[7]),
        .O(fifo_out_over_r_i_2_n_0));
  LUT5 #(
    .INIT(32'h00000400)) 
    fifo_out_over_r_i_3
       (.I0(reg_rd_adr[5]),
        .I1(reg_rd_adr[7]),
        .I2(reg_rd_adr[6]),
        .I3(reg_rd_ena),
        .I4(Q[0]),
        .O(fifo_out_over_r_i_3_n_0));
  LUT2 #(
    .INIT(4'h8)) 
    full00_carry_i_9
       (.I0(p_4_in),
        .I1(\wr_ptr_r_reg[3] ),
        .O(full_r_reg));
  LUT2 #(
    .INIT(4'h2)) 
    i___27_carry_i_1
       (.I0(p_2_in),
        .I1(\rd_ptr_r_reg[3] ),
        .O(empty_r_reg_0));
  LUT4 #(
    .INIT(16'h2D22)) 
    i___27_carry_i_5
       (.I0(p_2_in),
        .I1(\rd_ptr_r_reg[3] ),
        .I2(empty_r_reg),
        .I3(rd_ptr_r),
        .O(\rd_ptr_r_reg[0] ));
  LUT6 #(
    .INIT(64'h0000000000040000)) 
    i___27_carry_i_6
       (.I0(empty_r),
        .I1(reg_rd_ena),
        .I2(\axi_rdata[15]_i_2_n_0 ),
        .I3(reg_rd_adr[6]),
        .I4(reg_rd_adr[7]),
        .I5(reg_rd_adr[5]),
        .O(p_2_in));
  LUT2 #(
    .INIT(4'h8)) 
    i___27_carry_i_8
       (.I0(p_2_in),
        .I1(\rd_ptr_r_reg[3] ),
        .O(empty_r_reg));
  LUT6 #(
    .INIT(64'h0000000000000004)) 
    ram_reg_3_i_1
       (.I0(full_r),
        .I1(reg_wr_adr[7]),
        .I2(reg_wr_adr[6]),
        .I3(reg_wr_adr[3]),
        .I4(reg_wr_adr[2]),
        .I5(\regs_out[4][15]_i_2_n_0 ),
        .O(p_4_in));
  LUT3 #(
    .INIT(8'h08)) 
    rd_val_o_i_1
       (.I0(axi_arready_reg_0),
        .I1(axil_arvalid),
        .I2(axi_rvalid_reg_0),
        .O(slv_reg_rden));
  FDRE rd_val_o_reg
       (.C(axil_aclk),
        .CE(1'b1),
        .D(slv_reg_rden),
        .Q(reg_rd_ena),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair20" *) 
  LUT5 #(
    .INIT(32'h00100000)) 
    \regs_out[0][15]_i_1 
       (.I0(reg_wr_adr[3]),
        .I1(reg_wr_adr[2]),
        .I2(\regs_out[0][15]_i_2_n_0 ),
        .I3(reg_wr_adr[7]),
        .I4(reg_wr_adr[6]),
        .O(\axi_awaddr_reg[3]_2 ));
  LUT6 #(
    .INIT(64'h0000000040000000)) 
    \regs_out[0][15]_i_2 
       (.I0(reg_wr_adr[4]),
        .I1(axil_awvalid),
        .I2(axil_wvalid),
        .I3(axi_awready_reg_0),
        .I4(axi_wready_reg_0),
        .I5(reg_wr_adr[5]),
        .O(\regs_out[0][15]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair20" *) 
  LUT5 #(
    .INIT(32'h00400000)) 
    \regs_out[1][15]_i_1 
       (.I0(reg_wr_adr[3]),
        .I1(reg_wr_adr[2]),
        .I2(\regs_out[0][15]_i_2_n_0 ),
        .I3(reg_wr_adr[7]),
        .I4(reg_wr_adr[6]),
        .O(\axi_awaddr_reg[3]_1 ));
  (* SOFT_HLUTNM = "soft_lutpair21" *) 
  LUT5 #(
    .INIT(32'h00200000)) 
    \regs_out[2][15]_i_1 
       (.I0(\regs_out[0][15]_i_2_n_0 ),
        .I1(reg_wr_adr[2]),
        .I2(reg_wr_adr[3]),
        .I3(reg_wr_adr[7]),
        .I4(reg_wr_adr[6]),
        .O(\axi_awaddr_reg[2]_3 ));
  (* SOFT_HLUTNM = "soft_lutpair21" *) 
  LUT5 #(
    .INIT(32'h00800000)) 
    \regs_out[3][15]_i_1 
       (.I0(\regs_out[0][15]_i_2_n_0 ),
        .I1(reg_wr_adr[2]),
        .I2(reg_wr_adr[3]),
        .I3(reg_wr_adr[7]),
        .I4(reg_wr_adr[6]),
        .O(\axi_awaddr_reg[2]_4 ));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT5 #(
    .INIT(32'h00000100)) 
    \regs_out[4][15]_i_1 
       (.I0(reg_wr_adr[3]),
        .I1(reg_wr_adr[2]),
        .I2(reg_wr_adr[7]),
        .I3(reg_wr_adr[6]),
        .I4(\regs_out[4][15]_i_2_n_0 ),
        .O(\axi_awaddr_reg[3]_0 ));
  LUT6 #(
    .INIT(64'hFFFF7FFFFFFFFFFF)) 
    \regs_out[4][15]_i_2 
       (.I0(axil_awvalid),
        .I1(axil_wvalid),
        .I2(axi_awready_reg_0),
        .I3(axi_wready_reg_0),
        .I4(reg_wr_adr[5]),
        .I5(reg_wr_adr[4]),
        .O(\regs_out[4][15]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT5 #(
    .INIT(32'h00000400)) 
    \regs_out[5][15]_i_1 
       (.I0(reg_wr_adr[3]),
        .I1(reg_wr_adr[2]),
        .I2(reg_wr_adr[7]),
        .I3(reg_wr_adr[6]),
        .I4(\regs_out[4][15]_i_2_n_0 ),
        .O(E));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT5 #(
    .INIT(32'h00100000)) 
    \regs_out[6][15]_i_1 
       (.I0(\regs_out[4][15]_i_2_n_0 ),
        .I1(reg_wr_adr[2]),
        .I2(reg_wr_adr[3]),
        .I3(reg_wr_adr[7]),
        .I4(reg_wr_adr[6]),
        .O(\axi_awaddr_reg[2]_0 ));
  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT5 #(
    .INIT(32'h00400000)) 
    \regs_out[7][15]_i_1 
       (.I0(\regs_out[4][15]_i_2_n_0 ),
        .I1(reg_wr_adr[2]),
        .I2(reg_wr_adr[3]),
        .I3(reg_wr_adr[7]),
        .I4(reg_wr_adr[6]),
        .O(\axi_awaddr_reg[2]_1 ));
  LUT2 #(
    .INIT(4'h2)) 
    \wr_ptr_r[0]_i_2 
       (.I0(p_4_in),
        .I1(\wr_ptr_r_reg[3] ),
        .O(full_r_reg_0));
  LUT4 #(
    .INIT(16'h2D22)) 
    \wr_ptr_r[0]_i_6 
       (.I0(p_4_in),
        .I1(\wr_ptr_r_reg[3] ),
        .I2(full_r_reg),
        .I3(wr_ptr_r),
        .O(S));
endmodule

(* ORIG_REF_NAME = "ComBlock" *) 
module xrf_dpp_comblock_0_0_ComBlock
   (fifo_full_o,
    empty_r,
    full_r,
    fifo_empty_o,
    fifo_valid_o,
    \rd_ptr_r_reg[0] ,
    \wr_ptr_r_reg[0] ,
    fifo_in_count,
    fifo_out_count,
    fifo_out_over_r__0,
    fifo_in_under_r__0,
    \rd_ptr_r_reg[7] ,
    \rd_ptr_r_reg[11] ,
    fifo_overflow_o,
    fifo_out_over_r_reg_0,
    data2_o,
    \axi_araddr_reg[4] ,
    \axi_araddr_reg[4]_0 ,
    \rd_ptr_r_reg[12] ,
    fifo_underflow_o,
    \wr_ptr_r_reg[12] ,
    fifo_afull_o,
    empty00_carry__1,
    empty00_carry__0,
    empty00_carry__2,
    fifo_aempty_o,
    \regs_out_reg[7][15]_0 ,
    reg7_o,
    reg6_o,
    reg5_o,
    reg4_o,
    \regs_out_reg[3][15]_0 ,
    reg3_o,
    reg2_o,
    reg1_o,
    reg0_o,
    \axi_araddr_reg[4]_1 ,
    \regs_out_reg[7][13]_0 ,
    \regs_out_reg[3][13]_0 ,
    \axi_araddr_reg[4]_2 ,
    \regs_out_reg[7][11]_0 ,
    \regs_out_reg[3][11]_0 ,
    \regs_out_reg[3][10]_0 ,
    \regs_out_reg[3][9]_0 ,
    \regs_out_reg[7][9]_0 ,
    \axi_araddr_reg[4]_3 ,
    \regs_out_reg[7][7]_0 ,
    \regs_out_reg[3][7]_0 ,
    \axi_araddr_reg[4]_4 ,
    \regs_out_reg[7][5]_0 ,
    \regs_out_reg[3][5]_0 ,
    \regs_out_reg[3][4]_0 ,
    \regs_out_reg[3][3]_0 ,
    \regs_out_reg[7][3]_0 ,
    \regs_out_reg[3][2]_0 ,
    \regs_out_reg[3][1]_0 ,
    \regs_out_reg[3][0]_0 ,
    \regs_out_reg[7][0]_0 ,
    O,
    ram_reg_1_15,
    ram_data_o,
    fifo_data_o,
    fifo_clk_i,
    axil_aclk,
    \rd_ptr_r_reg[3] ,
    \rd_ptr_r_reg[3]_0 ,
    DI,
    \axi_rdata_reg[23] ,
    \axi_rdata_reg[27] ,
    fifo_out_over_r_reg_1,
    fifo_in_under_r_reg_0,
    fifo_in_clear_reg_0,
    fifo_out_clear_reg_0,
    \wr_ptr_r_reg[3] ,
    \rd_ptr_r_reg[3]_1 ,
    fifo_clear_i,
    fifo_we_i,
    Q,
    \axi_rdata_reg[1] ,
    fifo_re_i,
    \wr_ptr_r_reg[3]_0 ,
    S,
    p_2_in,
    p_4_in,
    axif_aclk,
    ram_clk_i,
    ADDRARDADDR,
    ram_addr_i,
    axif_wdata,
    ram_data_i,
    ram_reg_0_0,
    ram_we_i,
    ram_reg_1_0,
    ram_reg_0_1,
    ram_reg_1_1,
    ram_reg_0_2,
    ram_reg_1_2,
    ram_reg_0_3,
    ram_reg_1_3,
    ram_reg_0_4,
    ram_reg_1_4,
    ram_reg_0_5,
    ram_reg_1_5,
    ram_reg_0_6,
    ram_reg_1_6,
    ram_reg_0_7,
    ram_reg_1_7,
    ram_reg_0_8,
    ram_reg_1_8,
    ram_reg_0_9,
    ram_reg_1_9,
    ram_reg_0_10,
    ram_reg_1_10,
    addr2_i,
    ram_reg_0_11,
    ram_reg_1_11,
    ram_reg_0_12,
    ram_reg_1_12,
    ram_reg_0_13,
    ram_reg_1_13,
    ram_reg_0_14,
    ram_reg_1_14,
    ram_reg_0_15,
    WEA,
    fifo_data_i,
    axil_wdata,
    E,
    \regs_out_reg[1][15]_0 ,
    \regs_out_reg[2][15]_0 ,
    \regs_out_reg[3][15]_1 ,
    \regs_out_reg[4][15]_0 ,
    \regs_out_reg[5][15]_0 ,
    \regs_out_reg[6][15]_0 ,
    \regs_out_reg[7][15]_1 );
  output fifo_full_o;
  output empty_r;
  output full_r;
  output fifo_empty_o;
  output fifo_valid_o;
  output [0:0]\rd_ptr_r_reg[0] ;
  output [0:0]\wr_ptr_r_reg[0] ;
  output [13:0]fifo_in_count;
  output [13:0]fifo_out_count;
  output fifo_out_over_r__0;
  output fifo_in_under_r__0;
  output [3:0]\rd_ptr_r_reg[7] ;
  output [3:0]\rd_ptr_r_reg[11] ;
  output fifo_overflow_o;
  output fifo_out_over_r_reg_0;
  output [14:0]data2_o;
  output \axi_araddr_reg[4] ;
  output \axi_araddr_reg[4]_0 ;
  output \rd_ptr_r_reg[12] ;
  output fifo_underflow_o;
  output \wr_ptr_r_reg[12] ;
  output fifo_afull_o;
  output empty00_carry__1;
  output empty00_carry__0;
  output empty00_carry__2;
  output fifo_aempty_o;
  output \regs_out_reg[7][15]_0 ;
  output [15:0]reg7_o;
  output [15:0]reg6_o;
  output [15:0]reg5_o;
  output [15:0]reg4_o;
  output \regs_out_reg[3][15]_0 ;
  output [15:0]reg3_o;
  output [15:0]reg2_o;
  output [15:0]reg1_o;
  output [15:0]reg0_o;
  output \axi_araddr_reg[4]_1 ;
  output \regs_out_reg[7][13]_0 ;
  output \regs_out_reg[3][13]_0 ;
  output \axi_araddr_reg[4]_2 ;
  output \regs_out_reg[7][11]_0 ;
  output \regs_out_reg[3][11]_0 ;
  output \regs_out_reg[3][10]_0 ;
  output \regs_out_reg[3][9]_0 ;
  output \regs_out_reg[7][9]_0 ;
  output \axi_araddr_reg[4]_3 ;
  output \regs_out_reg[7][7]_0 ;
  output \regs_out_reg[3][7]_0 ;
  output \axi_araddr_reg[4]_4 ;
  output \regs_out_reg[7][5]_0 ;
  output \regs_out_reg[3][5]_0 ;
  output \regs_out_reg[3][4]_0 ;
  output \regs_out_reg[3][3]_0 ;
  output \regs_out_reg[7][3]_0 ;
  output \regs_out_reg[3][2]_0 ;
  output \regs_out_reg[3][1]_0 ;
  output \regs_out_reg[3][0]_0 ;
  output \regs_out_reg[7][0]_0 ;
  output [0:0]O;
  output [15:0]ram_reg_1_15;
  output [15:0]ram_data_o;
  output [15:0]fifo_data_o;
  input fifo_clk_i;
  input axil_aclk;
  input [0:0]\rd_ptr_r_reg[3] ;
  input [0:0]\rd_ptr_r_reg[3]_0 ;
  input [0:0]DI;
  input [3:0]\axi_rdata_reg[23] ;
  input [3:0]\axi_rdata_reg[27] ;
  input fifo_out_over_r_reg_1;
  input fifo_in_under_r_reg_0;
  input fifo_in_clear_reg_0;
  input fifo_out_clear_reg_0;
  input \wr_ptr_r_reg[3] ;
  input \rd_ptr_r_reg[3]_1 ;
  input fifo_clear_i;
  input fifo_we_i;
  input [2:0]Q;
  input \axi_rdata_reg[1] ;
  input fifo_re_i;
  input [0:0]\wr_ptr_r_reg[3]_0 ;
  input [0:0]S;
  input p_2_in;
  input p_4_in;
  input axif_aclk;
  input ram_clk_i;
  input [15:0]ADDRARDADDR;
  input [15:0]ram_addr_i;
  input [15:0]axif_wdata;
  input [15:0]ram_data_i;
  input [0:0]ram_reg_0_0;
  input ram_we_i;
  input [0:0]ram_reg_1_0;
  input [0:0]ram_reg_0_1;
  input [0:0]ram_reg_1_1;
  input [0:0]ram_reg_0_2;
  input [0:0]ram_reg_1_2;
  input [0:0]ram_reg_0_3;
  input [0:0]ram_reg_1_3;
  input [0:0]ram_reg_0_4;
  input [0:0]ram_reg_1_4;
  input [0:0]ram_reg_0_5;
  input [0:0]ram_reg_1_5;
  input [0:0]ram_reg_0_6;
  input [0:0]ram_reg_1_6;
  input [0:0]ram_reg_0_7;
  input [0:0]ram_reg_1_7;
  input [0:0]ram_reg_0_8;
  input [0:0]ram_reg_1_8;
  input [0:0]ram_reg_0_9;
  input [0:0]ram_reg_1_9;
  input [0:0]ram_reg_0_10;
  input [0:0]ram_reg_1_10;
  input [15:0]addr2_i;
  input [0:0]ram_reg_0_11;
  input [0:0]ram_reg_1_11;
  input [0:0]ram_reg_0_12;
  input [0:0]ram_reg_1_12;
  input [0:0]ram_reg_0_13;
  input [0:0]ram_reg_1_13;
  input [0:0]ram_reg_0_14;
  input [0:0]ram_reg_1_14;
  input [0:0]ram_reg_0_15;
  input [0:0]WEA;
  input [15:0]fifo_data_i;
  input [15:0]axil_wdata;
  input [0:0]E;
  input [0:0]\regs_out_reg[1][15]_0 ;
  input [0:0]\regs_out_reg[2][15]_0 ;
  input [0:0]\regs_out_reg[3][15]_1 ;
  input [0:0]\regs_out_reg[4][15]_0 ;
  input [0:0]\regs_out_reg[5][15]_0 ;
  input [0:0]\regs_out_reg[6][15]_0 ;
  input [0:0]\regs_out_reg[7][15]_1 ;

  wire [15:0]ADDRARDADDR;
  wire [0:0]DI;
  wire [0:0]E;
  wire [0:0]O;
  wire [2:0]Q;
  wire [0:0]S;
  wire [0:0]WEA;
  wire [15:0]addr2_i;
  wire \axi_araddr_reg[4] ;
  wire \axi_araddr_reg[4]_0 ;
  wire \axi_araddr_reg[4]_1 ;
  wire \axi_araddr_reg[4]_2 ;
  wire \axi_araddr_reg[4]_3 ;
  wire \axi_araddr_reg[4]_4 ;
  wire \axi_rdata[12]_i_4_n_0 ;
  wire \axi_rdata[12]_i_5_n_0 ;
  wire \axi_rdata[14]_i_6_n_0 ;
  wire \axi_rdata[14]_i_7_n_0 ;
  wire \axi_rdata[6]_i_6_n_0 ;
  wire \axi_rdata[6]_i_7_n_0 ;
  wire \axi_rdata[8]_i_4_n_0 ;
  wire \axi_rdata[8]_i_5_n_0 ;
  wire \axi_rdata_reg[1] ;
  wire [3:0]\axi_rdata_reg[23] ;
  wire [3:0]\axi_rdata_reg[27] ;
  wire axif_aclk;
  wire [15:0]axif_wdata;
  wire axil_aclk;
  wire [15:0]axil_wdata;
  wire [14:0]data2_o;
  wire empty00_carry__0;
  wire empty00_carry__1;
  wire empty00_carry__2;
  wire empty_r;
  wire fifo_aempty_o;
  wire fifo_afull_o;
  wire fifo_clear_i;
  wire fifo_clk_i;
  wire [15:0]fifo_data_i;
  wire [15:0]fifo_data_o;
  wire fifo_empty_o;
  wire fifo_full_o;
  wire fifo_in_clear_reg_0;
  wire fifo_in_clear_reg_n_0;
  wire [13:0]fifo_in_count;
  wire \fifo_in_g.fifo_in_i_n_25 ;
  wire \fifo_in_g.fifo_in_i_n_26 ;
  wire \fifo_in_g.fifo_in_i_n_27 ;
  wire \fifo_in_g.fifo_in_i_n_28 ;
  wire \fifo_in_g.fifo_in_i_n_29 ;
  wire \fifo_in_g.fifo_in_i_n_30 ;
  wire \fifo_in_g.fifo_in_i_n_31 ;
  wire \fifo_in_g.fifo_in_i_n_32 ;
  wire \fifo_in_g.fifo_in_i_n_33 ;
  wire \fifo_in_g.fifo_in_i_n_34 ;
  wire \fifo_in_g.fifo_in_i_n_35 ;
  wire \fifo_in_g.fifo_in_i_n_36 ;
  wire \fifo_in_g.fifo_in_i_n_37 ;
  wire \fifo_in_g.fifo_in_i_n_38 ;
  wire \fifo_in_g.fifo_in_i_n_39 ;
  wire \fifo_in_g.fifo_in_i_n_41 ;
  wire \fifo_in_g.fifo_in_i_n_42 ;
  wire \fifo_in_g.fifo_in_i_n_43 ;
  wire \fifo_in_g.fifo_in_i_n_44 ;
  wire \fifo_in_g.fifo_in_i_n_45 ;
  wire \fifo_in_g.fifo_in_i_n_46 ;
  wire \fifo_in_g.fifo_in_i_n_47 ;
  wire \fifo_in_g.fifo_in_i_n_48 ;
  wire \fifo_in_g.fifo_in_i_n_49 ;
  wire \fifo_in_g.fifo_in_i_n_50 ;
  wire \fifo_in_g.fifo_in_i_n_51 ;
  wire \fifo_in_g.fifo_in_i_n_52 ;
  wire \fifo_in_g.fifo_in_i_n_53 ;
  wire fifo_in_under_r__0;
  wire fifo_in_under_r_reg_0;
  wire fifo_out_clear_reg_0;
  wire fifo_out_clear_reg_n_0;
  wire [13:0]fifo_out_count;
  wire fifo_out_over_r__0;
  wire fifo_out_over_r_reg_0;
  wire fifo_out_over_r_reg_1;
  wire fifo_overflow_o;
  wire fifo_re_i;
  wire fifo_underflow_o;
  wire fifo_valid_o;
  wire fifo_we_i;
  wire full_r;
  wire \i_/i_/i___27_carry__0_n_0 ;
  wire \i_/i_/i___27_carry__0_n_1 ;
  wire \i_/i_/i___27_carry__0_n_2 ;
  wire \i_/i_/i___27_carry__0_n_3 ;
  wire \i_/i_/i___27_carry__0_n_4 ;
  wire \i_/i_/i___27_carry__0_n_5 ;
  wire \i_/i_/i___27_carry__0_n_6 ;
  wire \i_/i_/i___27_carry__0_n_7 ;
  wire \i_/i_/i___27_carry__1_n_0 ;
  wire \i_/i_/i___27_carry__1_n_1 ;
  wire \i_/i_/i___27_carry__1_n_2 ;
  wire \i_/i_/i___27_carry__1_n_3 ;
  wire \i_/i_/i___27_carry__1_n_4 ;
  wire \i_/i_/i___27_carry__1_n_5 ;
  wire \i_/i_/i___27_carry__1_n_6 ;
  wire \i_/i_/i___27_carry__1_n_7 ;
  wire \i_/i_/i___27_carry__2_n_3 ;
  wire \i_/i_/i___27_carry__2_n_6 ;
  wire \i_/i_/i___27_carry__2_n_7 ;
  wire \i_/i_/i___27_carry_n_0 ;
  wire \i_/i_/i___27_carry_n_1 ;
  wire \i_/i_/i___27_carry_n_2 ;
  wire \i_/i_/i___27_carry_n_3 ;
  wire \i_/i_/i___27_carry_n_4 ;
  wire \i_/i_/i___27_carry_n_5 ;
  wire \i_/i_/i___27_carry_n_6 ;
  wire \i_/i_/i___27_carry_n_7 ;
  wire \i_/i_/i__carry__0_n_0 ;
  wire \i_/i_/i__carry__0_n_1 ;
  wire \i_/i_/i__carry__0_n_2 ;
  wire \i_/i_/i__carry__0_n_3 ;
  wire \i_/i_/i__carry__0_n_4 ;
  wire \i_/i_/i__carry__0_n_5 ;
  wire \i_/i_/i__carry__0_n_6 ;
  wire \i_/i_/i__carry__0_n_7 ;
  wire \i_/i_/i__carry__1_n_0 ;
  wire \i_/i_/i__carry__1_n_1 ;
  wire \i_/i_/i__carry__1_n_2 ;
  wire \i_/i_/i__carry__1_n_3 ;
  wire \i_/i_/i__carry__1_n_4 ;
  wire \i_/i_/i__carry__1_n_5 ;
  wire \i_/i_/i__carry__1_n_6 ;
  wire \i_/i_/i__carry__1_n_7 ;
  wire \i_/i_/i__carry__2_n_3 ;
  wire \i_/i_/i__carry__2_n_6 ;
  wire \i_/i_/i__carry__2_n_7 ;
  wire \i_/i_/i__carry_n_0 ;
  wire \i_/i_/i__carry_n_1 ;
  wire \i_/i_/i__carry_n_2 ;
  wire \i_/i_/i__carry_n_3 ;
  wire \i_/i_/i__carry_n_4 ;
  wire \i_/i_/i__carry_n_5 ;
  wire \i_/i_/i__carry_n_6 ;
  wire \i_/i_/i__carry_n_7 ;
  wire p_2_in;
  wire p_4_in;
  wire [15:0]ram_addr_i;
  wire ram_clk_i;
  wire [15:0]ram_data_i;
  wire [15:0]ram_data_o;
  wire [0:0]ram_reg_0_0;
  wire [0:0]ram_reg_0_1;
  wire [0:0]ram_reg_0_10;
  wire [0:0]ram_reg_0_11;
  wire [0:0]ram_reg_0_12;
  wire [0:0]ram_reg_0_13;
  wire [0:0]ram_reg_0_14;
  wire [0:0]ram_reg_0_15;
  wire [0:0]ram_reg_0_2;
  wire [0:0]ram_reg_0_3;
  wire [0:0]ram_reg_0_4;
  wire [0:0]ram_reg_0_5;
  wire [0:0]ram_reg_0_6;
  wire [0:0]ram_reg_0_7;
  wire [0:0]ram_reg_0_8;
  wire [0:0]ram_reg_0_9;
  wire [0:0]ram_reg_1_0;
  wire [0:0]ram_reg_1_1;
  wire [0:0]ram_reg_1_10;
  wire [0:0]ram_reg_1_11;
  wire [0:0]ram_reg_1_12;
  wire [0:0]ram_reg_1_13;
  wire [0:0]ram_reg_1_14;
  wire [15:0]ram_reg_1_15;
  wire [0:0]ram_reg_1_2;
  wire [0:0]ram_reg_1_3;
  wire [0:0]ram_reg_1_4;
  wire [0:0]ram_reg_1_5;
  wire [0:0]ram_reg_1_6;
  wire [0:0]ram_reg_1_7;
  wire [0:0]ram_reg_1_8;
  wire [0:0]ram_reg_1_9;
  wire ram_we_i;
  wire [0:0]\rd_ptr_r_reg[0] ;
  wire [3:0]\rd_ptr_r_reg[11] ;
  wire \rd_ptr_r_reg[12] ;
  wire [0:0]\rd_ptr_r_reg[3] ;
  wire [0:0]\rd_ptr_r_reg[3]_0 ;
  wire \rd_ptr_r_reg[3]_1 ;
  wire [3:0]\rd_ptr_r_reg[7] ;
  wire [15:0]reg0_o;
  wire [15:0]reg1_o;
  wire [15:0]reg2_o;
  wire [15:0]reg3_o;
  wire [15:0]reg4_o;
  wire [15:0]reg5_o;
  wire [15:0]reg6_o;
  wire [15:0]reg7_o;
  wire [0:0]\regs_out_reg[1][15]_0 ;
  wire [0:0]\regs_out_reg[2][15]_0 ;
  wire \regs_out_reg[3][0]_0 ;
  wire \regs_out_reg[3][10]_0 ;
  wire \regs_out_reg[3][11]_0 ;
  wire \regs_out_reg[3][13]_0 ;
  wire \regs_out_reg[3][15]_0 ;
  wire [0:0]\regs_out_reg[3][15]_1 ;
  wire \regs_out_reg[3][1]_0 ;
  wire \regs_out_reg[3][2]_0 ;
  wire \regs_out_reg[3][3]_0 ;
  wire \regs_out_reg[3][4]_0 ;
  wire \regs_out_reg[3][5]_0 ;
  wire \regs_out_reg[3][7]_0 ;
  wire \regs_out_reg[3][9]_0 ;
  wire [0:0]\regs_out_reg[4][15]_0 ;
  wire [0:0]\regs_out_reg[5][15]_0 ;
  wire [0:0]\regs_out_reg[6][15]_0 ;
  wire \regs_out_reg[7][0]_0 ;
  wire \regs_out_reg[7][11]_0 ;
  wire \regs_out_reg[7][13]_0 ;
  wire \regs_out_reg[7][15]_0 ;
  wire [0:0]\regs_out_reg[7][15]_1 ;
  wire \regs_out_reg[7][3]_0 ;
  wire \regs_out_reg[7][5]_0 ;
  wire \regs_out_reg[7][7]_0 ;
  wire \regs_out_reg[7][9]_0 ;
  wire [0:0]\wr_ptr_r_reg[0] ;
  wire \wr_ptr_r_reg[12] ;
  wire \wr_ptr_r_reg[3] ;
  wire [0:0]\wr_ptr_r_reg[3]_0 ;
  wire [3:1]\NLW_i_/i_/i___27_carry__2_CO_UNCONNECTED ;
  wire [3:2]\NLW_i_/i_/i___27_carry__2_O_UNCONNECTED ;
  wire [3:1]\NLW_i_/i_/i__carry__2_CO_UNCONNECTED ;
  wire [3:2]\NLW_i_/i_/i__carry__2_O_UNCONNECTED ;

  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[0]_i_6 
       (.I0(reg3_o[0]),
        .I1(reg2_o[0]),
        .I2(Q[1]),
        .I3(reg1_o[0]),
        .I4(Q[0]),
        .I5(reg0_o[0]),
        .O(\regs_out_reg[3][0]_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[0]_i_7 
       (.I0(reg7_o[0]),
        .I1(reg6_o[0]),
        .I2(Q[1]),
        .I3(reg5_o[0]),
        .I4(Q[0]),
        .I5(reg4_o[0]),
        .O(\regs_out_reg[7][0]_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[10]_i_4 
       (.I0(reg3_o[10]),
        .I1(reg2_o[10]),
        .I2(Q[1]),
        .I3(reg1_o[10]),
        .I4(Q[0]),
        .I5(reg0_o[10]),
        .O(\regs_out_reg[3][10]_0 ));
  LUT6 #(
    .INIT(64'h505F3030505F3F3F)) 
    \axi_rdata[11]_i_5 
       (.I0(reg3_o[11]),
        .I1(reg2_o[11]),
        .I2(Q[1]),
        .I3(reg1_o[11]),
        .I4(Q[0]),
        .I5(reg0_o[11]),
        .O(\regs_out_reg[3][11]_0 ));
  LUT6 #(
    .INIT(64'h505F3030505F3F3F)) 
    \axi_rdata[11]_i_6 
       (.I0(reg7_o[11]),
        .I1(reg6_o[11]),
        .I2(Q[1]),
        .I3(reg5_o[11]),
        .I4(Q[0]),
        .I5(reg4_o[11]),
        .O(\regs_out_reg[7][11]_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[12]_i_4 
       (.I0(reg3_o[12]),
        .I1(reg2_o[12]),
        .I2(Q[1]),
        .I3(reg1_o[12]),
        .I4(Q[0]),
        .I5(reg0_o[12]),
        .O(\axi_rdata[12]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[12]_i_5 
       (.I0(reg7_o[12]),
        .I1(reg6_o[12]),
        .I2(Q[1]),
        .I3(reg5_o[12]),
        .I4(Q[0]),
        .I5(reg4_o[12]),
        .O(\axi_rdata[12]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h505F3030505F3F3F)) 
    \axi_rdata[13]_i_4 
       (.I0(reg3_o[13]),
        .I1(reg2_o[13]),
        .I2(Q[1]),
        .I3(reg1_o[13]),
        .I4(Q[0]),
        .I5(reg0_o[13]),
        .O(\regs_out_reg[3][13]_0 ));
  LUT6 #(
    .INIT(64'h505F3030505F3F3F)) 
    \axi_rdata[13]_i_5 
       (.I0(reg7_o[13]),
        .I1(reg6_o[13]),
        .I2(Q[1]),
        .I3(reg5_o[13]),
        .I4(Q[0]),
        .I5(reg4_o[13]),
        .O(\regs_out_reg[7][13]_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[14]_i_6 
       (.I0(reg3_o[14]),
        .I1(reg2_o[14]),
        .I2(Q[1]),
        .I3(reg1_o[14]),
        .I4(Q[0]),
        .I5(reg0_o[14]),
        .O(\axi_rdata[14]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[14]_i_7 
       (.I0(reg7_o[14]),
        .I1(reg6_o[14]),
        .I2(Q[1]),
        .I3(reg5_o[14]),
        .I4(Q[0]),
        .I5(reg4_o[14]),
        .O(\axi_rdata[14]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'h505F3030505F3F3F)) 
    \axi_rdata[15]_i_6 
       (.I0(reg3_o[15]),
        .I1(reg2_o[15]),
        .I2(Q[1]),
        .I3(reg1_o[15]),
        .I4(Q[0]),
        .I5(reg0_o[15]),
        .O(\regs_out_reg[3][15]_0 ));
  LUT6 #(
    .INIT(64'h505F3030505F3F3F)) 
    \axi_rdata[15]_i_7 
       (.I0(reg7_o[15]),
        .I1(reg6_o[15]),
        .I2(Q[1]),
        .I3(reg5_o[15]),
        .I4(Q[0]),
        .I5(reg4_o[15]),
        .O(\regs_out_reg[7][15]_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[1]_i_7 
       (.I0(reg3_o[1]),
        .I1(reg2_o[1]),
        .I2(Q[1]),
        .I3(reg1_o[1]),
        .I4(Q[0]),
        .I5(reg0_o[1]),
        .O(\regs_out_reg[3][1]_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[2]_i_5 
       (.I0(reg3_o[2]),
        .I1(reg2_o[2]),
        .I2(Q[1]),
        .I3(reg1_o[2]),
        .I4(Q[0]),
        .I5(reg0_o[2]),
        .O(\regs_out_reg[3][2]_0 ));
  LUT6 #(
    .INIT(64'h505F3030505F3F3F)) 
    \axi_rdata[3]_i_4 
       (.I0(reg3_o[3]),
        .I1(reg2_o[3]),
        .I2(Q[1]),
        .I3(reg1_o[3]),
        .I4(Q[0]),
        .I5(reg0_o[3]),
        .O(\regs_out_reg[3][3]_0 ));
  LUT6 #(
    .INIT(64'h505F3030505F3F3F)) 
    \axi_rdata[3]_i_5 
       (.I0(reg7_o[3]),
        .I1(reg6_o[3]),
        .I2(Q[1]),
        .I3(reg5_o[3]),
        .I4(Q[0]),
        .I5(reg4_o[3]),
        .O(\regs_out_reg[7][3]_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[4]_i_4 
       (.I0(reg3_o[4]),
        .I1(reg2_o[4]),
        .I2(Q[1]),
        .I3(reg1_o[4]),
        .I4(Q[0]),
        .I5(reg0_o[4]),
        .O(\regs_out_reg[3][4]_0 ));
  LUT6 #(
    .INIT(64'h505F3030505F3F3F)) 
    \axi_rdata[5]_i_4 
       (.I0(reg7_o[5]),
        .I1(reg6_o[5]),
        .I2(Q[1]),
        .I3(reg5_o[5]),
        .I4(Q[0]),
        .I5(reg4_o[5]),
        .O(\regs_out_reg[7][5]_0 ));
  LUT6 #(
    .INIT(64'h505F3030505F3F3F)) 
    \axi_rdata[5]_i_5 
       (.I0(reg3_o[5]),
        .I1(reg2_o[5]),
        .I2(Q[1]),
        .I3(reg1_o[5]),
        .I4(Q[0]),
        .I5(reg0_o[5]),
        .O(\regs_out_reg[3][5]_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[6]_i_6 
       (.I0(reg3_o[6]),
        .I1(reg2_o[6]),
        .I2(Q[1]),
        .I3(reg1_o[6]),
        .I4(Q[0]),
        .I5(reg0_o[6]),
        .O(\axi_rdata[6]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[6]_i_7 
       (.I0(reg7_o[6]),
        .I1(reg6_o[6]),
        .I2(Q[1]),
        .I3(reg5_o[6]),
        .I4(Q[0]),
        .I5(reg4_o[6]),
        .O(\axi_rdata[6]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'h505F3030505F3F3F)) 
    \axi_rdata[7]_i_4 
       (.I0(reg3_o[7]),
        .I1(reg2_o[7]),
        .I2(Q[1]),
        .I3(reg1_o[7]),
        .I4(Q[0]),
        .I5(reg0_o[7]),
        .O(\regs_out_reg[3][7]_0 ));
  LUT6 #(
    .INIT(64'h505F3030505F3F3F)) 
    \axi_rdata[7]_i_5 
       (.I0(reg7_o[7]),
        .I1(reg6_o[7]),
        .I2(Q[1]),
        .I3(reg5_o[7]),
        .I4(Q[0]),
        .I5(reg4_o[7]),
        .O(\regs_out_reg[7][7]_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[8]_i_4 
       (.I0(reg3_o[8]),
        .I1(reg2_o[8]),
        .I2(Q[1]),
        .I3(reg1_o[8]),
        .I4(Q[0]),
        .I5(reg0_o[8]),
        .O(\axi_rdata[8]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[8]_i_5 
       (.I0(reg7_o[8]),
        .I1(reg6_o[8]),
        .I2(Q[1]),
        .I3(reg5_o[8]),
        .I4(Q[0]),
        .I5(reg4_o[8]),
        .O(\axi_rdata[8]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h505F3030505F3F3F)) 
    \axi_rdata[9]_i_4 
       (.I0(reg7_o[9]),
        .I1(reg6_o[9]),
        .I2(Q[1]),
        .I3(reg5_o[9]),
        .I4(Q[0]),
        .I5(reg4_o[9]),
        .O(\regs_out_reg[7][9]_0 ));
  LUT6 #(
    .INIT(64'h505F3030505F3F3F)) 
    \axi_rdata[9]_i_5 
       (.I0(reg3_o[9]),
        .I1(reg2_o[9]),
        .I2(Q[1]),
        .I3(reg1_o[9]),
        .I4(Q[0]),
        .I5(reg0_o[9]),
        .O(\regs_out_reg[3][9]_0 ));
  MUXF7 \axi_rdata_reg[12]_i_3 
       (.I0(\axi_rdata[12]_i_4_n_0 ),
        .I1(\axi_rdata[12]_i_5_n_0 ),
        .O(\axi_araddr_reg[4]_2 ),
        .S(Q[2]));
  MUXF7 \axi_rdata_reg[14]_i_5 
       (.I0(\axi_rdata[14]_i_6_n_0 ),
        .I1(\axi_rdata[14]_i_7_n_0 ),
        .O(\axi_araddr_reg[4]_1 ),
        .S(Q[2]));
  MUXF7 \axi_rdata_reg[6]_i_4 
       (.I0(\axi_rdata[6]_i_6_n_0 ),
        .I1(\axi_rdata[6]_i_7_n_0 ),
        .O(\axi_araddr_reg[4]_4 ),
        .S(Q[2]));
  MUXF7 \axi_rdata_reg[8]_i_3 
       (.I0(\axi_rdata[8]_i_4_n_0 ),
        .I1(\axi_rdata[8]_i_5_n_0 ),
        .O(\axi_araddr_reg[4]_3 ),
        .S(Q[2]));
  xrf_dpp_comblock_0_0_tdpram \dram_g.dram_i 
       (.ADDRARDADDR(ADDRARDADDR),
        .WEA(WEA),
        .addr2_i(addr2_i),
        .axif_aclk(axif_aclk),
        .axif_wdata(axif_wdata),
        .ram_addr_i(ram_addr_i),
        .ram_clk_i(ram_clk_i),
        .ram_data_i(ram_data_i),
        .ram_data_o(ram_data_o),
        .ram_reg_0_0_0(ram_reg_0_0),
        .ram_reg_0_10_0(ram_reg_0_10),
        .ram_reg_0_11_0(ram_reg_0_11),
        .ram_reg_0_12_0(ram_reg_0_12),
        .ram_reg_0_13_0(ram_reg_0_13),
        .ram_reg_0_14_0(ram_reg_0_14),
        .ram_reg_0_15_0(ram_reg_0_15),
        .ram_reg_0_1_0(ram_reg_0_1),
        .ram_reg_0_2_0(ram_reg_0_2),
        .ram_reg_0_3_0(ram_reg_0_3),
        .ram_reg_0_4_0(ram_reg_0_4),
        .ram_reg_0_5_0(ram_reg_0_5),
        .ram_reg_0_6_0(ram_reg_0_6),
        .ram_reg_0_7_0(ram_reg_0_7),
        .ram_reg_0_8_0(ram_reg_0_8),
        .ram_reg_0_9_0(ram_reg_0_9),
        .ram_reg_1_0_0(ram_reg_1_0),
        .ram_reg_1_10_0(ram_reg_1_10),
        .ram_reg_1_11_0(ram_reg_1_11),
        .ram_reg_1_12_0(ram_reg_1_12),
        .ram_reg_1_13_0(ram_reg_1_13),
        .ram_reg_1_14_0(ram_reg_1_14),
        .ram_reg_1_15_0(ram_reg_1_15),
        .ram_reg_1_1_0(ram_reg_1_1),
        .ram_reg_1_2_0(ram_reg_1_2),
        .ram_reg_1_3_0(ram_reg_1_3),
        .ram_reg_1_4_0(ram_reg_1_4),
        .ram_reg_1_5_0(ram_reg_1_5),
        .ram_reg_1_6_0(ram_reg_1_6),
        .ram_reg_1_7_0(ram_reg_1_7),
        .ram_reg_1_8_0(ram_reg_1_8),
        .ram_reg_1_9_0(ram_reg_1_9),
        .ram_we_i(ram_we_i));
  FDRE fifo_in_clear_reg
       (.C(axil_aclk),
        .CE(1'b1),
        .D(fifo_in_clear_reg_0),
        .Q(fifo_in_clear_reg_n_0),
        .R(1'b0));
  xrf_dpp_comblock_0_0_FIFO \fifo_in_g.fifo_in_i 
       (.DI(DI),
        .O({\i_/i_/i__carry_n_4 ,\i_/i_/i__carry_n_5 ,\i_/i_/i__carry_n_6 ,\i_/i_/i__carry_n_7 }),
        .Q(Q),
        .S({\fifo_in_g.fifo_in_i_n_25 ,\fifo_in_g.fifo_in_i_n_26 }),
        .addr2_i(\rd_ptr_r_reg[0] ),
        .\axi_rdata_reg[23] (\axi_rdata_reg[23] ),
        .\axi_rdata_reg[27] (\axi_rdata_reg[27] ),
        .axil_aclk(axil_aclk),
        .data2_o(data2_o),
        .empty00_carry__0_0(empty00_carry__0),
        .empty00_carry__1_0(empty00_carry__1),
        .empty00_carry__2_0(empty00_carry__2),
        .empty_r(empty_r),
        .fifo_afull_o(fifo_afull_o),
        .fifo_clear_i(fifo_clear_i),
        .fifo_clk_i(fifo_clk_i),
        .fifo_data_i(fifo_data_i),
        .fifo_full_o(fifo_full_o),
        .fifo_in_count(fifo_in_count),
        .fifo_in_under_r__0(fifo_in_under_r__0),
        .fifo_out_over_r__0(fifo_out_over_r__0),
        .fifo_out_over_r_reg(fifo_out_over_r_reg_0),
        .fifo_overflow_o(fifo_overflow_o),
        .fifo_we_i(fifo_we_i),
        .full_r_reg_0(\fifo_in_g.fifo_in_i_n_39 ),
        .p_2_in(p_2_in),
        .\rd_ptr_r_reg[0]_0 (O),
        .\rd_ptr_r_reg[11]_0 (\rd_ptr_r_reg[11] ),
        .\rd_ptr_r_reg[11]_1 ({\fifo_in_g.fifo_in_i_n_43 ,\fifo_in_g.fifo_in_i_n_44 ,\fifo_in_g.fifo_in_i_n_45 ,\fifo_in_g.fifo_in_i_n_46 }),
        .\rd_ptr_r_reg[11]_2 ({\i_/i_/i___27_carry__1_n_4 ,\i_/i_/i___27_carry__1_n_5 ,\i_/i_/i___27_carry__1_n_6 ,\i_/i_/i___27_carry__1_n_7 }),
        .\rd_ptr_r_reg[12]_0 (\rd_ptr_r_reg[12] ),
        .\rd_ptr_r_reg[13]_0 ({\fifo_in_g.fifo_in_i_n_41 ,\fifo_in_g.fifo_in_i_n_42 }),
        .\rd_ptr_r_reg[13]_1 ({\i_/i_/i___27_carry__2_n_6 ,\i_/i_/i___27_carry__2_n_7 }),
        .\rd_ptr_r_reg[3]_0 ({\fifo_in_g.fifo_in_i_n_51 ,\fifo_in_g.fifo_in_i_n_52 ,\fifo_in_g.fifo_in_i_n_53 }),
        .\rd_ptr_r_reg[3]_1 ({\i_/i_/i___27_carry_n_4 ,\i_/i_/i___27_carry_n_5 ,\i_/i_/i___27_carry_n_6 ,\i_/i_/i___27_carry_n_7 }),
        .\rd_ptr_r_reg[3]_2 (\rd_ptr_r_reg[3]_1 ),
        .\rd_ptr_r_reg[7]_0 (\rd_ptr_r_reg[7] ),
        .\rd_ptr_r_reg[7]_1 ({\fifo_in_g.fifo_in_i_n_47 ,\fifo_in_g.fifo_in_i_n_48 ,\fifo_in_g.fifo_in_i_n_49 ,\fifo_in_g.fifo_in_i_n_50 }),
        .\rd_ptr_r_reg[7]_2 ({\i_/i_/i___27_carry__0_n_4 ,\i_/i_/i___27_carry__0_n_5 ,\i_/i_/i___27_carry__0_n_6 ,\i_/i_/i___27_carry__0_n_7 }),
        .\wr_ptr_r_reg[0]_0 (fifo_in_clear_reg_n_0),
        .\wr_ptr_r_reg[11]_0 ({\fifo_in_g.fifo_in_i_n_27 ,\fifo_in_g.fifo_in_i_n_28 ,\fifo_in_g.fifo_in_i_n_29 ,\fifo_in_g.fifo_in_i_n_30 }),
        .\wr_ptr_r_reg[11]_1 ({\i_/i_/i__carry__1_n_4 ,\i_/i_/i__carry__1_n_5 ,\i_/i_/i__carry__1_n_6 ,\i_/i_/i__carry__1_n_7 }),
        .\wr_ptr_r_reg[13]_0 ({\i_/i_/i__carry__2_n_6 ,\i_/i_/i__carry__2_n_7 }),
        .\wr_ptr_r_reg[3]_0 ({\fifo_in_g.fifo_in_i_n_35 ,\fifo_in_g.fifo_in_i_n_36 ,\fifo_in_g.fifo_in_i_n_37 ,\fifo_in_g.fifo_in_i_n_38 }),
        .\wr_ptr_r_reg[7]_0 ({\fifo_in_g.fifo_in_i_n_31 ,\fifo_in_g.fifo_in_i_n_32 ,\fifo_in_g.fifo_in_i_n_33 ,\fifo_in_g.fifo_in_i_n_34 }),
        .\wr_ptr_r_reg[7]_1 ({\i_/i_/i__carry__0_n_4 ,\i_/i_/i__carry__0_n_5 ,\i_/i_/i__carry__0_n_6 ,\i_/i_/i__carry__0_n_7 }));
  FDRE #(
    .INIT(1'b0)) 
    fifo_in_under_r_reg
       (.C(axil_aclk),
        .CE(1'b1),
        .D(fifo_in_under_r_reg_0),
        .Q(fifo_in_under_r__0),
        .R(1'b0));
  FDRE fifo_out_clear_reg
       (.C(axil_aclk),
        .CE(1'b1),
        .D(fifo_out_clear_reg_0),
        .Q(fifo_out_clear_reg_n_0),
        .R(1'b0));
  xrf_dpp_comblock_0_0_FIFO_0 \fifo_out_g.fifo_out_i 
       (.O(fifo_out_count[3:0]),
        .Q(Q[2]),
        .S(S),
        .addr1_i(\wr_ptr_r_reg[0] ),
        .\axi_araddr_reg[4] (\axi_araddr_reg[4] ),
        .\axi_araddr_reg[4]_0 (\axi_araddr_reg[4]_0 ),
        .\axi_rdata_reg[1] (\axi_rdata_reg[1] ),
        .axil_aclk(axil_aclk),
        .axil_wdata(axil_wdata),
        .\data_r_reg[1][7] (fifo_out_count[7:4]),
        .fifo_aempty_o(fifo_aempty_o),
        .fifo_clear_i(fifo_clear_i),
        .fifo_clk_i(fifo_clk_i),
        .fifo_data_o(fifo_data_o),
        .fifo_empty_o(fifo_empty_o),
        .fifo_in_count(fifo_in_count[0]),
        .fifo_out_count(fifo_out_count[13:8]),
        .fifo_re_i(fifo_re_i),
        .fifo_underflow_o(fifo_underflow_o),
        .fifo_valid_o(fifo_valid_o),
        .full_r(full_r),
        .p_4_in(p_4_in),
        .\wr_ptr_r_reg[0]_0 (fifo_out_clear_reg_n_0),
        .\wr_ptr_r_reg[12]_0 (\wr_ptr_r_reg[12] ),
        .\wr_ptr_r_reg[3]_0 (\wr_ptr_r_reg[3] ),
        .\wr_ptr_r_reg[3]_1 (\wr_ptr_r_reg[3]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    fifo_out_over_r_reg
       (.C(axil_aclk),
        .CE(1'b1),
        .D(fifo_out_over_r_reg_1),
        .Q(fifo_out_over_r__0),
        .R(1'b0));
  (* ADDER_THRESHOLD = "11" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY4 \i_/i_/i___27_carry 
       (.CI(1'b0),
        .CO({\i_/i_/i___27_carry_n_0 ,\i_/i_/i___27_carry_n_1 ,\i_/i_/i___27_carry_n_2 ,\i_/i_/i___27_carry_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,\rd_ptr_r_reg[3] }),
        .O({\i_/i_/i___27_carry_n_4 ,\i_/i_/i___27_carry_n_5 ,\i_/i_/i___27_carry_n_6 ,\i_/i_/i___27_carry_n_7 }),
        .S({\fifo_in_g.fifo_in_i_n_51 ,\fifo_in_g.fifo_in_i_n_52 ,\fifo_in_g.fifo_in_i_n_53 ,\rd_ptr_r_reg[3]_0 }));
  (* ADDER_THRESHOLD = "11" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY4 \i_/i_/i___27_carry__0 
       (.CI(\i_/i_/i___27_carry_n_0 ),
        .CO({\i_/i_/i___27_carry__0_n_0 ,\i_/i_/i___27_carry__0_n_1 ,\i_/i_/i___27_carry__0_n_2 ,\i_/i_/i___27_carry__0_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\i_/i_/i___27_carry__0_n_4 ,\i_/i_/i___27_carry__0_n_5 ,\i_/i_/i___27_carry__0_n_6 ,\i_/i_/i___27_carry__0_n_7 }),
        .S({\fifo_in_g.fifo_in_i_n_47 ,\fifo_in_g.fifo_in_i_n_48 ,\fifo_in_g.fifo_in_i_n_49 ,\fifo_in_g.fifo_in_i_n_50 }));
  (* ADDER_THRESHOLD = "11" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY4 \i_/i_/i___27_carry__1 
       (.CI(\i_/i_/i___27_carry__0_n_0 ),
        .CO({\i_/i_/i___27_carry__1_n_0 ,\i_/i_/i___27_carry__1_n_1 ,\i_/i_/i___27_carry__1_n_2 ,\i_/i_/i___27_carry__1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\i_/i_/i___27_carry__1_n_4 ,\i_/i_/i___27_carry__1_n_5 ,\i_/i_/i___27_carry__1_n_6 ,\i_/i_/i___27_carry__1_n_7 }),
        .S({\fifo_in_g.fifo_in_i_n_43 ,\fifo_in_g.fifo_in_i_n_44 ,\fifo_in_g.fifo_in_i_n_45 ,\fifo_in_g.fifo_in_i_n_46 }));
  (* ADDER_THRESHOLD = "11" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY4 \i_/i_/i___27_carry__2 
       (.CI(\i_/i_/i___27_carry__1_n_0 ),
        .CO({\NLW_i_/i_/i___27_carry__2_CO_UNCONNECTED [3:1],\i_/i_/i___27_carry__2_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\NLW_i_/i_/i___27_carry__2_O_UNCONNECTED [3:2],\i_/i_/i___27_carry__2_n_6 ,\i_/i_/i___27_carry__2_n_7 }),
        .S({1'b0,1'b0,\fifo_in_g.fifo_in_i_n_41 ,\fifo_in_g.fifo_in_i_n_42 }));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \i_/i_/i__carry 
       (.CI(1'b0),
        .CO({\i_/i_/i__carry_n_0 ,\i_/i_/i__carry_n_1 ,\i_/i_/i__carry_n_2 ,\i_/i_/i__carry_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,\fifo_in_g.fifo_in_i_n_39 }),
        .O({\i_/i_/i__carry_n_4 ,\i_/i_/i__carry_n_5 ,\i_/i_/i__carry_n_6 ,\i_/i_/i__carry_n_7 }),
        .S({\fifo_in_g.fifo_in_i_n_35 ,\fifo_in_g.fifo_in_i_n_36 ,\fifo_in_g.fifo_in_i_n_37 ,\fifo_in_g.fifo_in_i_n_38 }));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \i_/i_/i__carry__0 
       (.CI(\i_/i_/i__carry_n_0 ),
        .CO({\i_/i_/i__carry__0_n_0 ,\i_/i_/i__carry__0_n_1 ,\i_/i_/i__carry__0_n_2 ,\i_/i_/i__carry__0_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\i_/i_/i__carry__0_n_4 ,\i_/i_/i__carry__0_n_5 ,\i_/i_/i__carry__0_n_6 ,\i_/i_/i__carry__0_n_7 }),
        .S({\fifo_in_g.fifo_in_i_n_31 ,\fifo_in_g.fifo_in_i_n_32 ,\fifo_in_g.fifo_in_i_n_33 ,\fifo_in_g.fifo_in_i_n_34 }));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \i_/i_/i__carry__1 
       (.CI(\i_/i_/i__carry__0_n_0 ),
        .CO({\i_/i_/i__carry__1_n_0 ,\i_/i_/i__carry__1_n_1 ,\i_/i_/i__carry__1_n_2 ,\i_/i_/i__carry__1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\i_/i_/i__carry__1_n_4 ,\i_/i_/i__carry__1_n_5 ,\i_/i_/i__carry__1_n_6 ,\i_/i_/i__carry__1_n_7 }),
        .S({\fifo_in_g.fifo_in_i_n_27 ,\fifo_in_g.fifo_in_i_n_28 ,\fifo_in_g.fifo_in_i_n_29 ,\fifo_in_g.fifo_in_i_n_30 }));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \i_/i_/i__carry__2 
       (.CI(\i_/i_/i__carry__1_n_0 ),
        .CO({\NLW_i_/i_/i__carry__2_CO_UNCONNECTED [3:1],\i_/i_/i__carry__2_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\NLW_i_/i_/i__carry__2_O_UNCONNECTED [3:2],\i_/i_/i__carry__2_n_6 ,\i_/i_/i__carry__2_n_7 }),
        .S({1'b0,1'b0,\fifo_in_g.fifo_in_i_n_25 ,\fifo_in_g.fifo_in_i_n_26 }));
  FDRE #(
    .INIT(1'b0)) 
    \regs_out_reg[0][0] 
       (.C(axil_aclk),
        .CE(E),
        .D(axil_wdata[0]),
        .Q(reg0_o[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \regs_out_reg[0][10] 
       (.C(axil_aclk),
        .CE(E),
        .D(axil_wdata[10]),
        .Q(reg0_o[10]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \regs_out_reg[0][11] 
       (.C(axil_aclk),
        .CE(E),
        .D(axil_wdata[11]),
        .Q(reg0_o[11]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \regs_out_reg[0][12] 
       (.C(axil_aclk),
        .CE(E),
        .D(axil_wdata[12]),
        .Q(reg0_o[12]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \regs_out_reg[0][13] 
       (.C(axil_aclk),
        .CE(E),
        .D(axil_wdata[13]),
        .Q(reg0_o[13]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \regs_out_reg[0][14] 
       (.C(axil_aclk),
        .CE(E),
        .D(axil_wdata[14]),
        .Q(reg0_o[14]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \regs_out_reg[0][15] 
       (.C(axil_aclk),
        .CE(E),
        .D(axil_wdata[15]),
        .Q(reg0_o[15]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \regs_out_reg[0][1] 
       (.C(axil_aclk),
        .CE(E),
        .D(axil_wdata[1]),
        .Q(reg0_o[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \regs_out_reg[0][2] 
       (.C(axil_aclk),
        .CE(E),
        .D(axil_wdata[2]),
        .Q(reg0_o[2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \regs_out_reg[0][3] 
       (.C(axil_aclk),
        .CE(E),
        .D(axil_wdata[3]),
        .Q(reg0_o[3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \regs_out_reg[0][4] 
       (.C(axil_aclk),
        .CE(E),
        .D(axil_wdata[4]),
        .Q(reg0_o[4]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \regs_out_reg[0][5] 
       (.C(axil_aclk),
        .CE(E),
        .D(axil_wdata[5]),
        .Q(reg0_o[5]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \regs_out_reg[0][6] 
       (.C(axil_aclk),
        .CE(E),
        .D(axil_wdata[6]),
        .Q(reg0_o[6]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \regs_out_reg[0][7] 
       (.C(axil_aclk),
        .CE(E),
        .D(axil_wdata[7]),
        .Q(reg0_o[7]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \regs_out_reg[0][8] 
       (.C(axil_aclk),
        .CE(E),
        .D(axil_wdata[8]),
        .Q(reg0_o[8]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \regs_out_reg[0][9] 
       (.C(axil_aclk),
        .CE(E),
        .D(axil_wdata[9]),
        .Q(reg0_o[9]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \regs_out_reg[1][0] 
       (.C(axil_aclk),
        .CE(\regs_out_reg[1][15]_0 ),
        .D(axil_wdata[0]),
        .Q(reg1_o[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \regs_out_reg[1][10] 
       (.C(axil_aclk),
        .CE(\regs_out_reg[1][15]_0 ),
        .D(axil_wdata[10]),
        .Q(reg1_o[10]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \regs_out_reg[1][11] 
       (.C(axil_aclk),
        .CE(\regs_out_reg[1][15]_0 ),
        .D(axil_wdata[11]),
        .Q(reg1_o[11]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \regs_out_reg[1][12] 
       (.C(axil_aclk),
        .CE(\regs_out_reg[1][15]_0 ),
        .D(axil_wdata[12]),
        .Q(reg1_o[12]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \regs_out_reg[1][13] 
       (.C(axil_aclk),
        .CE(\regs_out_reg[1][15]_0 ),
        .D(axil_wdata[13]),
        .Q(reg1_o[13]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \regs_out_reg[1][14] 
       (.C(axil_aclk),
        .CE(\regs_out_reg[1][15]_0 ),
        .D(axil_wdata[14]),
        .Q(reg1_o[14]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \regs_out_reg[1][15] 
       (.C(axil_aclk),
        .CE(\regs_out_reg[1][15]_0 ),
        .D(axil_wdata[15]),
        .Q(reg1_o[15]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \regs_out_reg[1][1] 
       (.C(axil_aclk),
        .CE(\regs_out_reg[1][15]_0 ),
        .D(axil_wdata[1]),
        .Q(reg1_o[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \regs_out_reg[1][2] 
       (.C(axil_aclk),
        .CE(\regs_out_reg[1][15]_0 ),
        .D(axil_wdata[2]),
        .Q(reg1_o[2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \regs_out_reg[1][3] 
       (.C(axil_aclk),
        .CE(\regs_out_reg[1][15]_0 ),
        .D(axil_wdata[3]),
        .Q(reg1_o[3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \regs_out_reg[1][4] 
       (.C(axil_aclk),
        .CE(\regs_out_reg[1][15]_0 ),
        .D(axil_wdata[4]),
        .Q(reg1_o[4]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \regs_out_reg[1][5] 
       (.C(axil_aclk),
        .CE(\regs_out_reg[1][15]_0 ),
        .D(axil_wdata[5]),
        .Q(reg1_o[5]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \regs_out_reg[1][6] 
       (.C(axil_aclk),
        .CE(\regs_out_reg[1][15]_0 ),
        .D(axil_wdata[6]),
        .Q(reg1_o[6]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \regs_out_reg[1][7] 
       (.C(axil_aclk),
        .CE(\regs_out_reg[1][15]_0 ),
        .D(axil_wdata[7]),
        .Q(reg1_o[7]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \regs_out_reg[1][8] 
       (.C(axil_aclk),
        .CE(\regs_out_reg[1][15]_0 ),
        .D(axil_wdata[8]),
        .Q(reg1_o[8]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \regs_out_reg[1][9] 
       (.C(axil_aclk),
        .CE(\regs_out_reg[1][15]_0 ),
        .D(axil_wdata[9]),
        .Q(reg1_o[9]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \regs_out_reg[2][0] 
       (.C(axil_aclk),
        .CE(\regs_out_reg[2][15]_0 ),
        .D(axil_wdata[0]),
        .Q(reg2_o[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \regs_out_reg[2][10] 
       (.C(axil_aclk),
        .CE(\regs_out_reg[2][15]_0 ),
        .D(axil_wdata[10]),
        .Q(reg2_o[10]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \regs_out_reg[2][11] 
       (.C(axil_aclk),
        .CE(\regs_out_reg[2][15]_0 ),
        .D(axil_wdata[11]),
        .Q(reg2_o[11]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \regs_out_reg[2][12] 
       (.C(axil_aclk),
        .CE(\regs_out_reg[2][15]_0 ),
        .D(axil_wdata[12]),
        .Q(reg2_o[12]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \regs_out_reg[2][13] 
       (.C(axil_aclk),
        .CE(\regs_out_reg[2][15]_0 ),
        .D(axil_wdata[13]),
        .Q(reg2_o[13]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \regs_out_reg[2][14] 
       (.C(axil_aclk),
        .CE(\regs_out_reg[2][15]_0 ),
        .D(axil_wdata[14]),
        .Q(reg2_o[14]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \regs_out_reg[2][15] 
       (.C(axil_aclk),
        .CE(\regs_out_reg[2][15]_0 ),
        .D(axil_wdata[15]),
        .Q(reg2_o[15]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \regs_out_reg[2][1] 
       (.C(axil_aclk),
        .CE(\regs_out_reg[2][15]_0 ),
        .D(axil_wdata[1]),
        .Q(reg2_o[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \regs_out_reg[2][2] 
       (.C(axil_aclk),
        .CE(\regs_out_reg[2][15]_0 ),
        .D(axil_wdata[2]),
        .Q(reg2_o[2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \regs_out_reg[2][3] 
       (.C(axil_aclk),
        .CE(\regs_out_reg[2][15]_0 ),
        .D(axil_wdata[3]),
        .Q(reg2_o[3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \regs_out_reg[2][4] 
       (.C(axil_aclk),
        .CE(\regs_out_reg[2][15]_0 ),
        .D(axil_wdata[4]),
        .Q(reg2_o[4]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \regs_out_reg[2][5] 
       (.C(axil_aclk),
        .CE(\regs_out_reg[2][15]_0 ),
        .D(axil_wdata[5]),
        .Q(reg2_o[5]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \regs_out_reg[2][6] 
       (.C(axil_aclk),
        .CE(\regs_out_reg[2][15]_0 ),
        .D(axil_wdata[6]),
        .Q(reg2_o[6]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \regs_out_reg[2][7] 
       (.C(axil_aclk),
        .CE(\regs_out_reg[2][15]_0 ),
        .D(axil_wdata[7]),
        .Q(reg2_o[7]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \regs_out_reg[2][8] 
       (.C(axil_aclk),
        .CE(\regs_out_reg[2][15]_0 ),
        .D(axil_wdata[8]),
        .Q(reg2_o[8]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \regs_out_reg[2][9] 
       (.C(axil_aclk),
        .CE(\regs_out_reg[2][15]_0 ),
        .D(axil_wdata[9]),
        .Q(reg2_o[9]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \regs_out_reg[3][0] 
       (.C(axil_aclk),
        .CE(\regs_out_reg[3][15]_1 ),
        .D(axil_wdata[0]),
        .Q(reg3_o[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \regs_out_reg[3][10] 
       (.C(axil_aclk),
        .CE(\regs_out_reg[3][15]_1 ),
        .D(axil_wdata[10]),
        .Q(reg3_o[10]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \regs_out_reg[3][11] 
       (.C(axil_aclk),
        .CE(\regs_out_reg[3][15]_1 ),
        .D(axil_wdata[11]),
        .Q(reg3_o[11]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \regs_out_reg[3][12] 
       (.C(axil_aclk),
        .CE(\regs_out_reg[3][15]_1 ),
        .D(axil_wdata[12]),
        .Q(reg3_o[12]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \regs_out_reg[3][13] 
       (.C(axil_aclk),
        .CE(\regs_out_reg[3][15]_1 ),
        .D(axil_wdata[13]),
        .Q(reg3_o[13]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \regs_out_reg[3][14] 
       (.C(axil_aclk),
        .CE(\regs_out_reg[3][15]_1 ),
        .D(axil_wdata[14]),
        .Q(reg3_o[14]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \regs_out_reg[3][15] 
       (.C(axil_aclk),
        .CE(\regs_out_reg[3][15]_1 ),
        .D(axil_wdata[15]),
        .Q(reg3_o[15]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \regs_out_reg[3][1] 
       (.C(axil_aclk),
        .CE(\regs_out_reg[3][15]_1 ),
        .D(axil_wdata[1]),
        .Q(reg3_o[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \regs_out_reg[3][2] 
       (.C(axil_aclk),
        .CE(\regs_out_reg[3][15]_1 ),
        .D(axil_wdata[2]),
        .Q(reg3_o[2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \regs_out_reg[3][3] 
       (.C(axil_aclk),
        .CE(\regs_out_reg[3][15]_1 ),
        .D(axil_wdata[3]),
        .Q(reg3_o[3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \regs_out_reg[3][4] 
       (.C(axil_aclk),
        .CE(\regs_out_reg[3][15]_1 ),
        .D(axil_wdata[4]),
        .Q(reg3_o[4]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \regs_out_reg[3][5] 
       (.C(axil_aclk),
        .CE(\regs_out_reg[3][15]_1 ),
        .D(axil_wdata[5]),
        .Q(reg3_o[5]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \regs_out_reg[3][6] 
       (.C(axil_aclk),
        .CE(\regs_out_reg[3][15]_1 ),
        .D(axil_wdata[6]),
        .Q(reg3_o[6]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \regs_out_reg[3][7] 
       (.C(axil_aclk),
        .CE(\regs_out_reg[3][15]_1 ),
        .D(axil_wdata[7]),
        .Q(reg3_o[7]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \regs_out_reg[3][8] 
       (.C(axil_aclk),
        .CE(\regs_out_reg[3][15]_1 ),
        .D(axil_wdata[8]),
        .Q(reg3_o[8]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \regs_out_reg[3][9] 
       (.C(axil_aclk),
        .CE(\regs_out_reg[3][15]_1 ),
        .D(axil_wdata[9]),
        .Q(reg3_o[9]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \regs_out_reg[4][0] 
       (.C(axil_aclk),
        .CE(\regs_out_reg[4][15]_0 ),
        .D(axil_wdata[0]),
        .Q(reg4_o[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \regs_out_reg[4][10] 
       (.C(axil_aclk),
        .CE(\regs_out_reg[4][15]_0 ),
        .D(axil_wdata[10]),
        .Q(reg4_o[10]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \regs_out_reg[4][11] 
       (.C(axil_aclk),
        .CE(\regs_out_reg[4][15]_0 ),
        .D(axil_wdata[11]),
        .Q(reg4_o[11]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \regs_out_reg[4][12] 
       (.C(axil_aclk),
        .CE(\regs_out_reg[4][15]_0 ),
        .D(axil_wdata[12]),
        .Q(reg4_o[12]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \regs_out_reg[4][13] 
       (.C(axil_aclk),
        .CE(\regs_out_reg[4][15]_0 ),
        .D(axil_wdata[13]),
        .Q(reg4_o[13]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \regs_out_reg[4][14] 
       (.C(axil_aclk),
        .CE(\regs_out_reg[4][15]_0 ),
        .D(axil_wdata[14]),
        .Q(reg4_o[14]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \regs_out_reg[4][15] 
       (.C(axil_aclk),
        .CE(\regs_out_reg[4][15]_0 ),
        .D(axil_wdata[15]),
        .Q(reg4_o[15]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \regs_out_reg[4][1] 
       (.C(axil_aclk),
        .CE(\regs_out_reg[4][15]_0 ),
        .D(axil_wdata[1]),
        .Q(reg4_o[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \regs_out_reg[4][2] 
       (.C(axil_aclk),
        .CE(\regs_out_reg[4][15]_0 ),
        .D(axil_wdata[2]),
        .Q(reg4_o[2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \regs_out_reg[4][3] 
       (.C(axil_aclk),
        .CE(\regs_out_reg[4][15]_0 ),
        .D(axil_wdata[3]),
        .Q(reg4_o[3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \regs_out_reg[4][4] 
       (.C(axil_aclk),
        .CE(\regs_out_reg[4][15]_0 ),
        .D(axil_wdata[4]),
        .Q(reg4_o[4]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \regs_out_reg[4][5] 
       (.C(axil_aclk),
        .CE(\regs_out_reg[4][15]_0 ),
        .D(axil_wdata[5]),
        .Q(reg4_o[5]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \regs_out_reg[4][6] 
       (.C(axil_aclk),
        .CE(\regs_out_reg[4][15]_0 ),
        .D(axil_wdata[6]),
        .Q(reg4_o[6]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \regs_out_reg[4][7] 
       (.C(axil_aclk),
        .CE(\regs_out_reg[4][15]_0 ),
        .D(axil_wdata[7]),
        .Q(reg4_o[7]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \regs_out_reg[4][8] 
       (.C(axil_aclk),
        .CE(\regs_out_reg[4][15]_0 ),
        .D(axil_wdata[8]),
        .Q(reg4_o[8]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \regs_out_reg[4][9] 
       (.C(axil_aclk),
        .CE(\regs_out_reg[4][15]_0 ),
        .D(axil_wdata[9]),
        .Q(reg4_o[9]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \regs_out_reg[5][0] 
       (.C(axil_aclk),
        .CE(\regs_out_reg[5][15]_0 ),
        .D(axil_wdata[0]),
        .Q(reg5_o[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \regs_out_reg[5][10] 
       (.C(axil_aclk),
        .CE(\regs_out_reg[5][15]_0 ),
        .D(axil_wdata[10]),
        .Q(reg5_o[10]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \regs_out_reg[5][11] 
       (.C(axil_aclk),
        .CE(\regs_out_reg[5][15]_0 ),
        .D(axil_wdata[11]),
        .Q(reg5_o[11]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \regs_out_reg[5][12] 
       (.C(axil_aclk),
        .CE(\regs_out_reg[5][15]_0 ),
        .D(axil_wdata[12]),
        .Q(reg5_o[12]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \regs_out_reg[5][13] 
       (.C(axil_aclk),
        .CE(\regs_out_reg[5][15]_0 ),
        .D(axil_wdata[13]),
        .Q(reg5_o[13]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \regs_out_reg[5][14] 
       (.C(axil_aclk),
        .CE(\regs_out_reg[5][15]_0 ),
        .D(axil_wdata[14]),
        .Q(reg5_o[14]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \regs_out_reg[5][15] 
       (.C(axil_aclk),
        .CE(\regs_out_reg[5][15]_0 ),
        .D(axil_wdata[15]),
        .Q(reg5_o[15]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \regs_out_reg[5][1] 
       (.C(axil_aclk),
        .CE(\regs_out_reg[5][15]_0 ),
        .D(axil_wdata[1]),
        .Q(reg5_o[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \regs_out_reg[5][2] 
       (.C(axil_aclk),
        .CE(\regs_out_reg[5][15]_0 ),
        .D(axil_wdata[2]),
        .Q(reg5_o[2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \regs_out_reg[5][3] 
       (.C(axil_aclk),
        .CE(\regs_out_reg[5][15]_0 ),
        .D(axil_wdata[3]),
        .Q(reg5_o[3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \regs_out_reg[5][4] 
       (.C(axil_aclk),
        .CE(\regs_out_reg[5][15]_0 ),
        .D(axil_wdata[4]),
        .Q(reg5_o[4]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \regs_out_reg[5][5] 
       (.C(axil_aclk),
        .CE(\regs_out_reg[5][15]_0 ),
        .D(axil_wdata[5]),
        .Q(reg5_o[5]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \regs_out_reg[5][6] 
       (.C(axil_aclk),
        .CE(\regs_out_reg[5][15]_0 ),
        .D(axil_wdata[6]),
        .Q(reg5_o[6]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \regs_out_reg[5][7] 
       (.C(axil_aclk),
        .CE(\regs_out_reg[5][15]_0 ),
        .D(axil_wdata[7]),
        .Q(reg5_o[7]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \regs_out_reg[5][8] 
       (.C(axil_aclk),
        .CE(\regs_out_reg[5][15]_0 ),
        .D(axil_wdata[8]),
        .Q(reg5_o[8]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \regs_out_reg[5][9] 
       (.C(axil_aclk),
        .CE(\regs_out_reg[5][15]_0 ),
        .D(axil_wdata[9]),
        .Q(reg5_o[9]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \regs_out_reg[6][0] 
       (.C(axil_aclk),
        .CE(\regs_out_reg[6][15]_0 ),
        .D(axil_wdata[0]),
        .Q(reg6_o[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \regs_out_reg[6][10] 
       (.C(axil_aclk),
        .CE(\regs_out_reg[6][15]_0 ),
        .D(axil_wdata[10]),
        .Q(reg6_o[10]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \regs_out_reg[6][11] 
       (.C(axil_aclk),
        .CE(\regs_out_reg[6][15]_0 ),
        .D(axil_wdata[11]),
        .Q(reg6_o[11]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \regs_out_reg[6][12] 
       (.C(axil_aclk),
        .CE(\regs_out_reg[6][15]_0 ),
        .D(axil_wdata[12]),
        .Q(reg6_o[12]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \regs_out_reg[6][13] 
       (.C(axil_aclk),
        .CE(\regs_out_reg[6][15]_0 ),
        .D(axil_wdata[13]),
        .Q(reg6_o[13]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \regs_out_reg[6][14] 
       (.C(axil_aclk),
        .CE(\regs_out_reg[6][15]_0 ),
        .D(axil_wdata[14]),
        .Q(reg6_o[14]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \regs_out_reg[6][15] 
       (.C(axil_aclk),
        .CE(\regs_out_reg[6][15]_0 ),
        .D(axil_wdata[15]),
        .Q(reg6_o[15]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \regs_out_reg[6][1] 
       (.C(axil_aclk),
        .CE(\regs_out_reg[6][15]_0 ),
        .D(axil_wdata[1]),
        .Q(reg6_o[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \regs_out_reg[6][2] 
       (.C(axil_aclk),
        .CE(\regs_out_reg[6][15]_0 ),
        .D(axil_wdata[2]),
        .Q(reg6_o[2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \regs_out_reg[6][3] 
       (.C(axil_aclk),
        .CE(\regs_out_reg[6][15]_0 ),
        .D(axil_wdata[3]),
        .Q(reg6_o[3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \regs_out_reg[6][4] 
       (.C(axil_aclk),
        .CE(\regs_out_reg[6][15]_0 ),
        .D(axil_wdata[4]),
        .Q(reg6_o[4]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \regs_out_reg[6][5] 
       (.C(axil_aclk),
        .CE(\regs_out_reg[6][15]_0 ),
        .D(axil_wdata[5]),
        .Q(reg6_o[5]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \regs_out_reg[6][6] 
       (.C(axil_aclk),
        .CE(\regs_out_reg[6][15]_0 ),
        .D(axil_wdata[6]),
        .Q(reg6_o[6]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \regs_out_reg[6][7] 
       (.C(axil_aclk),
        .CE(\regs_out_reg[6][15]_0 ),
        .D(axil_wdata[7]),
        .Q(reg6_o[7]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \regs_out_reg[6][8] 
       (.C(axil_aclk),
        .CE(\regs_out_reg[6][15]_0 ),
        .D(axil_wdata[8]),
        .Q(reg6_o[8]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \regs_out_reg[6][9] 
       (.C(axil_aclk),
        .CE(\regs_out_reg[6][15]_0 ),
        .D(axil_wdata[9]),
        .Q(reg6_o[9]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \regs_out_reg[7][0] 
       (.C(axil_aclk),
        .CE(\regs_out_reg[7][15]_1 ),
        .D(axil_wdata[0]),
        .Q(reg7_o[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \regs_out_reg[7][10] 
       (.C(axil_aclk),
        .CE(\regs_out_reg[7][15]_1 ),
        .D(axil_wdata[10]),
        .Q(reg7_o[10]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \regs_out_reg[7][11] 
       (.C(axil_aclk),
        .CE(\regs_out_reg[7][15]_1 ),
        .D(axil_wdata[11]),
        .Q(reg7_o[11]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \regs_out_reg[7][12] 
       (.C(axil_aclk),
        .CE(\regs_out_reg[7][15]_1 ),
        .D(axil_wdata[12]),
        .Q(reg7_o[12]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \regs_out_reg[7][13] 
       (.C(axil_aclk),
        .CE(\regs_out_reg[7][15]_1 ),
        .D(axil_wdata[13]),
        .Q(reg7_o[13]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \regs_out_reg[7][14] 
       (.C(axil_aclk),
        .CE(\regs_out_reg[7][15]_1 ),
        .D(axil_wdata[14]),
        .Q(reg7_o[14]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \regs_out_reg[7][15] 
       (.C(axil_aclk),
        .CE(\regs_out_reg[7][15]_1 ),
        .D(axil_wdata[15]),
        .Q(reg7_o[15]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \regs_out_reg[7][1] 
       (.C(axil_aclk),
        .CE(\regs_out_reg[7][15]_1 ),
        .D(axil_wdata[1]),
        .Q(reg7_o[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \regs_out_reg[7][2] 
       (.C(axil_aclk),
        .CE(\regs_out_reg[7][15]_1 ),
        .D(axil_wdata[2]),
        .Q(reg7_o[2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \regs_out_reg[7][3] 
       (.C(axil_aclk),
        .CE(\regs_out_reg[7][15]_1 ),
        .D(axil_wdata[3]),
        .Q(reg7_o[3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \regs_out_reg[7][4] 
       (.C(axil_aclk),
        .CE(\regs_out_reg[7][15]_1 ),
        .D(axil_wdata[4]),
        .Q(reg7_o[4]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \regs_out_reg[7][5] 
       (.C(axil_aclk),
        .CE(\regs_out_reg[7][15]_1 ),
        .D(axil_wdata[5]),
        .Q(reg7_o[5]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \regs_out_reg[7][6] 
       (.C(axil_aclk),
        .CE(\regs_out_reg[7][15]_1 ),
        .D(axil_wdata[6]),
        .Q(reg7_o[6]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \regs_out_reg[7][7] 
       (.C(axil_aclk),
        .CE(\regs_out_reg[7][15]_1 ),
        .D(axil_wdata[7]),
        .Q(reg7_o[7]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \regs_out_reg[7][8] 
       (.C(axil_aclk),
        .CE(\regs_out_reg[7][15]_1 ),
        .D(axil_wdata[8]),
        .Q(reg7_o[8]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \regs_out_reg[7][9] 
       (.C(axil_aclk),
        .CE(\regs_out_reg[7][15]_1 ),
        .D(axil_wdata[9]),
        .Q(reg7_o[9]),
        .R(1'b0));
endmodule

(* ORIG_REF_NAME = "FIFO" *) 
module xrf_dpp_comblock_0_0_FIFO
   (fifo_full_o,
    empty_r,
    addr2_i,
    fifo_in_count,
    \rd_ptr_r_reg[7]_0 ,
    \rd_ptr_r_reg[11]_0 ,
    S,
    \wr_ptr_r_reg[11]_0 ,
    \wr_ptr_r_reg[7]_0 ,
    \wr_ptr_r_reg[3]_0 ,
    full_r_reg_0,
    fifo_overflow_o,
    \rd_ptr_r_reg[13]_0 ,
    \rd_ptr_r_reg[11]_1 ,
    \rd_ptr_r_reg[7]_1 ,
    \rd_ptr_r_reg[3]_0 ,
    fifo_out_over_r_reg,
    \rd_ptr_r_reg[12]_0 ,
    fifo_afull_o,
    empty00_carry__1_0,
    empty00_carry__0_0,
    empty00_carry__2_0,
    \rd_ptr_r_reg[0]_0 ,
    data2_o,
    fifo_clk_i,
    axil_aclk,
    O,
    \wr_ptr_r_reg[7]_1 ,
    \wr_ptr_r_reg[11]_1 ,
    \wr_ptr_r_reg[13]_0 ,
    \rd_ptr_r_reg[3]_1 ,
    \rd_ptr_r_reg[7]_2 ,
    \rd_ptr_r_reg[11]_2 ,
    \rd_ptr_r_reg[13]_1 ,
    DI,
    \axi_rdata_reg[23] ,
    \axi_rdata_reg[27] ,
    \rd_ptr_r_reg[3]_2 ,
    \wr_ptr_r_reg[0]_0 ,
    fifo_clear_i,
    fifo_we_i,
    fifo_out_over_r__0,
    fifo_in_under_r__0,
    Q,
    p_2_in,
    fifo_data_i);
  output fifo_full_o;
  output empty_r;
  output [0:0]addr2_i;
  output [13:0]fifo_in_count;
  output [3:0]\rd_ptr_r_reg[7]_0 ;
  output [3:0]\rd_ptr_r_reg[11]_0 ;
  output [1:0]S;
  output [3:0]\wr_ptr_r_reg[11]_0 ;
  output [3:0]\wr_ptr_r_reg[7]_0 ;
  output [3:0]\wr_ptr_r_reg[3]_0 ;
  output [0:0]full_r_reg_0;
  output fifo_overflow_o;
  output [1:0]\rd_ptr_r_reg[13]_0 ;
  output [3:0]\rd_ptr_r_reg[11]_1 ;
  output [3:0]\rd_ptr_r_reg[7]_1 ;
  output [2:0]\rd_ptr_r_reg[3]_0 ;
  output fifo_out_over_r_reg;
  output \rd_ptr_r_reg[12]_0 ;
  output fifo_afull_o;
  output empty00_carry__1_0;
  output empty00_carry__0_0;
  output empty00_carry__2_0;
  output [0:0]\rd_ptr_r_reg[0]_0 ;
  output [14:0]data2_o;
  input fifo_clk_i;
  input axil_aclk;
  input [3:0]O;
  input [3:0]\wr_ptr_r_reg[7]_1 ;
  input [3:0]\wr_ptr_r_reg[11]_1 ;
  input [1:0]\wr_ptr_r_reg[13]_0 ;
  input [3:0]\rd_ptr_r_reg[3]_1 ;
  input [3:0]\rd_ptr_r_reg[7]_2 ;
  input [3:0]\rd_ptr_r_reg[11]_2 ;
  input [1:0]\rd_ptr_r_reg[13]_1 ;
  input [0:0]DI;
  input [3:0]\axi_rdata_reg[23] ;
  input [3:0]\axi_rdata_reg[27] ;
  input \rd_ptr_r_reg[3]_2 ;
  input \wr_ptr_r_reg[0]_0 ;
  input fifo_clear_i;
  input fifo_we_i;
  input fifo_out_over_r__0;
  input fifo_in_under_r__0;
  input [2:0]Q;
  input p_2_in;
  input [15:0]fifo_data_i;

  wire [0:0]DI;
  wire [3:0]O;
  wire [2:0]Q;
  wire [1:0]S;
  wire [0:0]addr2_i;
  wire [3:0]\axi_rdata_reg[23] ;
  wire [3:0]\axi_rdata_reg[27] ;
  wire axil_aclk;
  wire [14:0]data2_o;
  wire empty00_carry__0_0;
  wire empty00_carry__0_i_9_n_0;
  wire empty00_carry__0_i_9_n_1;
  wire empty00_carry__0_i_9_n_2;
  wire empty00_carry__0_i_9_n_3;
  wire empty00_carry__0_n_0;
  wire empty00_carry__0_n_1;
  wire empty00_carry__0_n_2;
  wire empty00_carry__0_n_3;
  wire empty00_carry__1_0;
  wire empty00_carry__1_i_9_n_0;
  wire empty00_carry__1_i_9_n_1;
  wire empty00_carry__1_i_9_n_2;
  wire empty00_carry__1_i_9_n_3;
  wire empty00_carry__1_n_0;
  wire empty00_carry__1_n_1;
  wire empty00_carry__1_n_2;
  wire empty00_carry__1_n_3;
  wire empty00_carry__2_0;
  wire empty00_carry__2_i_4_n_3;
  wire empty00_carry__2_i_4_n_6;
  wire empty00_carry__2_i_4_n_7;
  wire empty00_carry__2_n_3;
  wire empty00_carry_i_10__0_n_0;
  wire empty00_carry_i_10__0_n_1;
  wire empty00_carry_i_10__0_n_2;
  wire empty00_carry_i_10__0_n_3;
  wire empty00_carry_i_10__0_n_4;
  wire empty00_carry_i_10__0_n_5;
  wire empty00_carry_i_10__0_n_6;
  wire empty00_carry_i_11__0_n_0;
  wire empty00_carry_n_0;
  wire empty00_carry_n_1;
  wire empty00_carry_n_2;
  wire empty00_carry_n_3;
  wire empty_r;
  wire empty_r_i_2_n_0;
  wire fifo_afull_o;
  wire fifo_afull_o_INST_0_i_1_n_0;
  wire fifo_afull_o_INST_0_i_2_n_0;
  wire fifo_clear_i;
  wire fifo_clk_i;
  wire [15:0]fifo_data_i;
  wire fifo_full_o;
  wire fifo_full_o_INST_0_i_1_n_0;
  wire fifo_full_o_INST_0_i_2_n_0;
  wire [13:0]fifo_in_count;
  wire fifo_in_empty;
  wire fifo_in_under_r__0;
  wire fifo_out_over_r__0;
  wire fifo_out_over_r_reg;
  wire fifo_overflow_o;
  wire fifo_we_i;
  wire full00_carry__0_i_9_n_0;
  wire full00_carry__0_i_9_n_1;
  wire full00_carry__0_i_9_n_2;
  wire full00_carry__0_i_9_n_3;
  wire full00_carry__0_n_0;
  wire full00_carry__0_n_1;
  wire full00_carry__0_n_2;
  wire full00_carry__0_n_3;
  wire full00_carry__0_n_4;
  wire full00_carry__0_n_5;
  wire full00_carry__0_n_6;
  wire full00_carry__0_n_7;
  wire full00_carry__1_i_9_n_0;
  wire full00_carry__1_i_9_n_1;
  wire full00_carry__1_i_9_n_2;
  wire full00_carry__1_i_9_n_3;
  wire full00_carry__1_n_0;
  wire full00_carry__1_n_1;
  wire full00_carry__1_n_2;
  wire full00_carry__1_n_3;
  wire full00_carry__1_n_4;
  wire full00_carry__1_n_5;
  wire full00_carry__1_n_6;
  wire full00_carry__1_n_7;
  wire full00_carry__2_i_4_n_3;
  wire full00_carry__2_n_3;
  wire full00_carry__2_n_6;
  wire full00_carry__2_n_7;
  wire full00_carry_i_10__0_n_0;
  wire full00_carry_i_9__0_n_0;
  wire full00_carry_i_9__0_n_1;
  wire full00_carry_i_9__0_n_2;
  wire full00_carry_i_9__0_n_3;
  wire full00_carry_n_0;
  wire full00_carry_n_1;
  wire full00_carry_n_2;
  wire full00_carry_n_3;
  wire full00_carry_n_4;
  wire full00_carry_n_5;
  wire full00_carry_n_6;
  wire full00_carry_n_7;
  wire full_r;
  wire [0:0]full_r_reg_0;
  wire \g_async.i_sync_rd2wr_n_0 ;
  wire \g_async.i_sync_rd2wr_n_1 ;
  wire \g_async.i_sync_rd2wr_n_10 ;
  wire \g_async.i_sync_rd2wr_n_13 ;
  wire \g_async.i_sync_rd2wr_n_15 ;
  wire \g_async.i_sync_rd2wr_n_2 ;
  wire \g_async.i_sync_rd2wr_n_23 ;
  wire \g_async.i_sync_rd2wr_n_24 ;
  wire \g_async.i_sync_rd2wr_n_25 ;
  wire \g_async.i_sync_rd2wr_n_26 ;
  wire \g_async.i_sync_rd2wr_n_3 ;
  wire \g_async.i_sync_rd2wr_n_4 ;
  wire \g_async.i_sync_rd2wr_n_5 ;
  wire \g_async.i_sync_rd2wr_n_6 ;
  wire \g_async.i_sync_rd2wr_n_7 ;
  wire \g_async.i_sync_rd2wr_n_8 ;
  wire \g_async.i_sync_rd2wr_n_9 ;
  wire \g_async.i_sync_wr2rd_n_0 ;
  wire \g_async.i_sync_wr2rd_n_1 ;
  wire \g_async.i_sync_wr2rd_n_10 ;
  wire \g_async.i_sync_wr2rd_n_11 ;
  wire \g_async.i_sync_wr2rd_n_12 ;
  wire \g_async.i_sync_wr2rd_n_13 ;
  wire \g_async.i_sync_wr2rd_n_14 ;
  wire \g_async.i_sync_wr2rd_n_15 ;
  wire \g_async.i_sync_wr2rd_n_16 ;
  wire \g_async.i_sync_wr2rd_n_17 ;
  wire \g_async.i_sync_wr2rd_n_2 ;
  wire \g_async.i_sync_wr2rd_n_3 ;
  wire \g_async.i_sync_wr2rd_n_4 ;
  wire \g_async.i_sync_wr2rd_n_5 ;
  wire \g_async.i_sync_wr2rd_n_6 ;
  wire \g_async.i_sync_wr2rd_n_7 ;
  wire \g_async.i_sync_wr2rd_n_8 ;
  wire \g_async.i_sync_wr2rd_n_9 ;
  wire i___27_carry_i_10_n_0;
  wire i___27_carry_i_9_n_0;
  wire i__carry_i_6_n_0;
  wire i__carry_i_7_n_0;
  wire i__carry_i_8_n_0;
  wire [12:0]p_1_in;
  wire p_2_in;
  wire p_4_in;
  wire [13:1]rd_ptr_r;
  wire [0:0]\rd_ptr_r_reg[0]_0 ;
  wire [3:0]\rd_ptr_r_reg[11]_0 ;
  wire [3:0]\rd_ptr_r_reg[11]_1 ;
  wire [3:0]\rd_ptr_r_reg[11]_2 ;
  wire \rd_ptr_r_reg[12]_0 ;
  wire [1:0]\rd_ptr_r_reg[13]_0 ;
  wire [1:0]\rd_ptr_r_reg[13]_1 ;
  wire [2:0]\rd_ptr_r_reg[3]_0 ;
  wire [3:0]\rd_ptr_r_reg[3]_1 ;
  wire \rd_ptr_r_reg[3]_2 ;
  wire [3:0]\rd_ptr_r_reg[7]_0 ;
  wire [3:0]\rd_ptr_r_reg[7]_1 ;
  wire [3:0]\rd_ptr_r_reg[7]_2 ;
  wire [13:0]ret;
  wire rst;
  wire [13:0]wr_ptr_r;
  wire \wr_ptr_r_reg[0]_0 ;
  wire [3:0]\wr_ptr_r_reg[11]_0 ;
  wire [3:0]\wr_ptr_r_reg[11]_1 ;
  wire [1:0]\wr_ptr_r_reg[13]_0 ;
  wire [3:0]\wr_ptr_r_reg[3]_0 ;
  wire [3:0]\wr_ptr_r_reg[7]_0 ;
  wire [3:0]\wr_ptr_r_reg[7]_1 ;
  wire [3:1]NLW_empty00_carry__2_CO_UNCONNECTED;
  wire [3:2]NLW_empty00_carry__2_O_UNCONNECTED;
  wire [3:1]NLW_empty00_carry__2_i_4_CO_UNCONNECTED;
  wire [3:2]NLW_empty00_carry__2_i_4_O_UNCONNECTED;
  wire [3:1]NLW_full00_carry__2_CO_UNCONNECTED;
  wire [3:2]NLW_full00_carry__2_O_UNCONNECTED;
  wire [3:1]NLW_full00_carry__2_i_4_CO_UNCONNECTED;
  wire [3:2]NLW_full00_carry__2_i_4_O_UNCONNECTED;

  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    \axi_rdata[1]_i_10 
       (.I0(fifo_in_count[1]),
        .I1(fifo_in_count[2]),
        .I2(fifo_in_count[5]),
        .I3(fifo_in_count[3]),
        .I4(fifo_in_count[4]),
        .O(empty00_carry__0_0));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \axi_rdata[1]_i_8 
       (.I0(fifo_in_count[6]),
        .I1(fifo_in_count[7]),
        .I2(fifo_in_count[9]),
        .I3(fifo_in_count[8]),
        .O(empty00_carry__1_0));
  LUT4 #(
    .INIT(16'h0001)) 
    \axi_rdata[1]_i_9 
       (.I0(fifo_in_count[10]),
        .I1(fifo_in_count[11]),
        .I2(fifo_in_count[13]),
        .I3(fifo_in_count[12]),
        .O(empty00_carry__2_0));
  (* ADDER_THRESHOLD = "35" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY4 empty00_carry
       (.CI(1'b0),
        .CO({empty00_carry_n_0,empty00_carry_n_1,empty00_carry_n_2,empty00_carry_n_3}),
        .CYINIT(1'b1),
        .DI({\g_async.i_sync_wr2rd_n_8 ,\g_async.i_sync_wr2rd_n_15 ,\g_async.i_sync_wr2rd_n_16 ,DI}),
        .O(fifo_in_count[3:0]),
        .S({\g_async.i_sync_wr2rd_n_9 ,\g_async.i_sync_wr2rd_n_10 ,\g_async.i_sync_wr2rd_n_11 ,\g_async.i_sync_wr2rd_n_12 }));
  (* ADDER_THRESHOLD = "35" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY4 empty00_carry__0
       (.CI(empty00_carry_n_0),
        .CO({empty00_carry__0_n_0,empty00_carry__0_n_1,empty00_carry__0_n_2,empty00_carry__0_n_3}),
        .CYINIT(1'b0),
        .DI(\axi_rdata_reg[23] ),
        .O(fifo_in_count[7:4]),
        .S({\g_async.i_sync_wr2rd_n_0 ,\g_async.i_sync_wr2rd_n_1 ,\g_async.i_sync_wr2rd_n_2 ,\g_async.i_sync_wr2rd_n_3 }));
  (* ADDER_THRESHOLD = "35" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY4 empty00_carry__0_i_9
       (.CI(empty00_carry_i_10__0_n_0),
        .CO({empty00_carry__0_i_9_n_0,empty00_carry__0_i_9_n_1,empty00_carry__0_i_9_n_2,empty00_carry__0_i_9_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(\rd_ptr_r_reg[7]_0 ),
        .S(rd_ptr_r[7:4]));
  (* ADDER_THRESHOLD = "35" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY4 empty00_carry__1
       (.CI(empty00_carry__0_n_0),
        .CO({empty00_carry__1_n_0,empty00_carry__1_n_1,empty00_carry__1_n_2,empty00_carry__1_n_3}),
        .CYINIT(1'b0),
        .DI(\axi_rdata_reg[27] ),
        .O(fifo_in_count[11:8]),
        .S({\g_async.i_sync_wr2rd_n_4 ,\g_async.i_sync_wr2rd_n_5 ,\g_async.i_sync_wr2rd_n_6 ,\g_async.i_sync_wr2rd_n_7 }));
  (* ADDER_THRESHOLD = "35" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY4 empty00_carry__1_i_9
       (.CI(empty00_carry__0_i_9_n_0),
        .CO({empty00_carry__1_i_9_n_0,empty00_carry__1_i_9_n_1,empty00_carry__1_i_9_n_2,empty00_carry__1_i_9_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(\rd_ptr_r_reg[11]_0 ),
        .S(rd_ptr_r[11:8]));
  (* ADDER_THRESHOLD = "35" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY4 empty00_carry__2
       (.CI(empty00_carry__1_n_0),
        .CO({NLW_empty00_carry__2_CO_UNCONNECTED[3:1],empty00_carry__2_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,\g_async.i_sync_wr2rd_n_17 }),
        .O({NLW_empty00_carry__2_O_UNCONNECTED[3:2],fifo_in_count[13:12]}),
        .S({1'b0,1'b0,\g_async.i_sync_wr2rd_n_13 ,\g_async.i_sync_wr2rd_n_14 }));
  (* ADDER_THRESHOLD = "35" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY4 empty00_carry__2_i_4
       (.CI(empty00_carry__1_i_9_n_0),
        .CO({NLW_empty00_carry__2_i_4_CO_UNCONNECTED[3:1],empty00_carry__2_i_4_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({NLW_empty00_carry__2_i_4_O_UNCONNECTED[3:2],empty00_carry__2_i_4_n_6,empty00_carry__2_i_4_n_7}),
        .S({1'b0,1'b0,rd_ptr_r[13:12]}));
  (* ADDER_THRESHOLD = "35" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY4 empty00_carry_i_10__0
       (.CI(1'b0),
        .CO({empty00_carry_i_10__0_n_0,empty00_carry_i_10__0_n_1,empty00_carry_i_10__0_n_2,empty00_carry_i_10__0_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,addr2_i}),
        .O({empty00_carry_i_10__0_n_4,empty00_carry_i_10__0_n_5,empty00_carry_i_10__0_n_6,\rd_ptr_r_reg[0]_0 }),
        .S({rd_ptr_r[3:1],empty00_carry_i_11__0_n_0}));
  LUT2 #(
    .INIT(4'h6)) 
    empty00_carry_i_11__0
       (.I0(addr2_i),
        .I1(p_2_in),
        .O(empty00_carry_i_11__0_n_0));
  LUT2 #(
    .INIT(4'h2)) 
    empty_r_i_1
       (.I0(empty_r_i_2_n_0),
        .I1(fifo_in_count[0]),
        .O(fifo_in_empty));
  LUT6 #(
    .INIT(64'h0000000000000001)) 
    empty_r_i_2
       (.I0(empty00_carry__1_0),
        .I1(fifo_in_count[10]),
        .I2(fifo_in_count[11]),
        .I3(fifo_in_count[13]),
        .I4(fifo_in_count[12]),
        .I5(empty00_carry__0_0),
        .O(empty_r_i_2_n_0));
  FDSE empty_r_reg
       (.C(axil_aclk),
        .CE(1'b1),
        .D(fifo_in_empty),
        .Q(empty_r),
        .S(rst));
  LUT6 #(
    .INIT(64'hAAAAEAAAAAAAAAAA)) 
    fifo_afull_o_INST_0
       (.I0(full00_carry__2_n_6),
        .I1(full00_carry__1_n_6),
        .I2(full00_carry__1_n_5),
        .I3(full00_carry_n_6),
        .I4(fifo_afull_o_INST_0_i_1_n_0),
        .I5(fifo_afull_o_INST_0_i_2_n_0),
        .O(fifo_afull_o));
  LUT4 #(
    .INIT(16'h7FFF)) 
    fifo_afull_o_INST_0_i_1
       (.I0(full00_carry__2_n_7),
        .I1(full00_carry__0_n_4),
        .I2(full00_carry__1_n_4),
        .I3(full00_carry__0_n_6),
        .O(fifo_afull_o_INST_0_i_1_n_0));
  LUT6 #(
    .INIT(64'h8000000000000000)) 
    fifo_afull_o_INST_0_i_2
       (.I0(full00_carry__0_n_7),
        .I1(full00_carry_n_5),
        .I2(full00_carry_n_4),
        .I3(full00_carry_n_7),
        .I4(full00_carry__0_n_5),
        .I5(full00_carry__1_n_7),
        .O(fifo_afull_o_INST_0_i_2_n_0));
  LUT6 #(
    .INIT(64'h0000000000000002)) 
    fifo_full_o_INST_0
       (.I0(fifo_full_o_INST_0_i_1_n_0),
        .I1(fifo_full_o_INST_0_i_2_n_0),
        .I2(full00_carry__1_n_5),
        .I3(full00_carry__1_n_7),
        .I4(full00_carry__2_n_7),
        .I5(full00_carry_n_7),
        .O(fifo_full_o));
  LUT6 #(
    .INIT(64'h0000000000000100)) 
    fifo_full_o_INST_0_i_1
       (.I0(full00_carry_n_4),
        .I1(full00_carry_n_5),
        .I2(full00_carry__1_n_4),
        .I3(full00_carry__2_n_6),
        .I4(full00_carry_n_6),
        .I5(full00_carry__0_n_6),
        .O(fifo_full_o_INST_0_i_1_n_0));
  LUT4 #(
    .INIT(16'hFFFE)) 
    fifo_full_o_INST_0_i_2
       (.I0(full00_carry__0_n_5),
        .I1(full00_carry__0_n_7),
        .I2(full00_carry__1_n_6),
        .I3(full00_carry__0_n_4),
        .O(fifo_full_o_INST_0_i_2_n_0));
  LUT2 #(
    .INIT(4'h8)) 
    fifo_overflow_o_INST_0
       (.I0(full_r),
        .I1(fifo_we_i),
        .O(fifo_overflow_o));
  (* ADDER_THRESHOLD = "35" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY4 full00_carry
       (.CI(1'b0),
        .CO({full00_carry_n_0,full00_carry_n_1,full00_carry_n_2,full00_carry_n_3}),
        .CYINIT(1'b1),
        .DI(p_1_in[3:0]),
        .O({full00_carry_n_4,full00_carry_n_5,full00_carry_n_6,full00_carry_n_7}),
        .S({\g_async.i_sync_rd2wr_n_23 ,\g_async.i_sync_rd2wr_n_24 ,\g_async.i_sync_rd2wr_n_25 ,\g_async.i_sync_rd2wr_n_26 }));
  (* ADDER_THRESHOLD = "35" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY4 full00_carry__0
       (.CI(full00_carry_n_0),
        .CO({full00_carry__0_n_0,full00_carry__0_n_1,full00_carry__0_n_2,full00_carry__0_n_3}),
        .CYINIT(1'b0),
        .DI({p_1_in[7:6],\g_async.i_sync_rd2wr_n_13 ,p_1_in[4]}),
        .O({full00_carry__0_n_4,full00_carry__0_n_5,full00_carry__0_n_6,full00_carry__0_n_7}),
        .S({\g_async.i_sync_rd2wr_n_0 ,\g_async.i_sync_rd2wr_n_1 ,\g_async.i_sync_rd2wr_n_2 ,\g_async.i_sync_rd2wr_n_3 }));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 full00_carry__0_i_9
       (.CI(full00_carry_i_9__0_n_0),
        .CO({full00_carry__0_i_9_n_0,full00_carry__0_i_9_n_1,full00_carry__0_i_9_n_2,full00_carry__0_i_9_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(ret[7:4]),
        .S(wr_ptr_r[7:4]));
  (* ADDER_THRESHOLD = "35" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY4 full00_carry__1
       (.CI(full00_carry__0_n_0),
        .CO({full00_carry__1_n_0,full00_carry__1_n_1,full00_carry__1_n_2,full00_carry__1_n_3}),
        .CYINIT(1'b0),
        .DI({\g_async.i_sync_rd2wr_n_15 ,p_1_in[10:9],\g_async.i_sync_rd2wr_n_4 }),
        .O({full00_carry__1_n_4,full00_carry__1_n_5,full00_carry__1_n_6,full00_carry__1_n_7}),
        .S({\g_async.i_sync_rd2wr_n_5 ,\g_async.i_sync_rd2wr_n_6 ,\g_async.i_sync_rd2wr_n_7 ,\g_async.i_sync_rd2wr_n_8 }));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 full00_carry__1_i_9
       (.CI(full00_carry__0_i_9_n_0),
        .CO({full00_carry__1_i_9_n_0,full00_carry__1_i_9_n_1,full00_carry__1_i_9_n_2,full00_carry__1_i_9_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(ret[11:8]),
        .S(wr_ptr_r[11:8]));
  (* ADDER_THRESHOLD = "35" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY4 full00_carry__2
       (.CI(full00_carry__1_n_0),
        .CO({NLW_full00_carry__2_CO_UNCONNECTED[3:1],full00_carry__2_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,p_1_in[12]}),
        .O({NLW_full00_carry__2_O_UNCONNECTED[3:2],full00_carry__2_n_6,full00_carry__2_n_7}),
        .S({1'b0,1'b0,\g_async.i_sync_rd2wr_n_9 ,\g_async.i_sync_rd2wr_n_10 }));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 full00_carry__2_i_4
       (.CI(full00_carry__1_i_9_n_0),
        .CO({NLW_full00_carry__2_i_4_CO_UNCONNECTED[3:1],full00_carry__2_i_4_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({NLW_full00_carry__2_i_4_O_UNCONNECTED[3:2],ret[13:12]}),
        .S({1'b0,1'b0,wr_ptr_r[13:12]}));
  LUT3 #(
    .INIT(8'h9A)) 
    full00_carry_i_10__0
       (.I0(wr_ptr_r[0]),
        .I1(full_r),
        .I2(fifo_we_i),
        .O(full00_carry_i_10__0_n_0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 full00_carry_i_9__0
       (.CI(1'b0),
        .CO({full00_carry_i_9__0_n_0,full00_carry_i_9__0_n_1,full00_carry_i_9__0_n_2,full00_carry_i_9__0_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,wr_ptr_r[0]}),
        .O(ret[3:0]),
        .S({wr_ptr_r[3:1],full00_carry_i_10__0_n_0}));
  LUT2 #(
    .INIT(4'hE)) 
    full_r_i_1
       (.I0(\wr_ptr_r_reg[0]_0 ),
        .I1(fifo_clear_i),
        .O(rst));
  FDRE full_r_reg
       (.C(fifo_clk_i),
        .CE(1'b1),
        .D(fifo_full_o),
        .Q(full_r),
        .R(rst));
  xrf_dpp_comblock_0_0_GraySync_2 \g_async.i_sync_rd2wr 
       (.DI({p_1_in[7:6],\g_async.i_sync_rd2wr_n_13 ,p_1_in[4]}),
        .S({\g_async.i_sync_rd2wr_n_0 ,\g_async.i_sync_rd2wr_n_1 ,\g_async.i_sync_rd2wr_n_2 ,\g_async.i_sync_rd2wr_n_3 }),
        .\data_r_reg[0][0]_0 (addr2_i),
        .\data_r_reg[1][11]_0 ({\g_async.i_sync_rd2wr_n_15 ,p_1_in[10:9]}),
        .\data_r_reg[1][13]_0 ({\g_async.i_sync_rd2wr_n_5 ,\g_async.i_sync_rd2wr_n_6 ,\g_async.i_sync_rd2wr_n_7 ,\g_async.i_sync_rd2wr_n_8 }),
        .\data_r_reg[1][13]_1 ({\g_async.i_sync_rd2wr_n_9 ,\g_async.i_sync_rd2wr_n_10 }),
        .\data_r_reg[1][3]_0 ({\g_async.i_sync_rd2wr_n_23 ,\g_async.i_sync_rd2wr_n_24 ,\g_async.i_sync_rd2wr_n_25 ,\g_async.i_sync_rd2wr_n_26 }),
        .\data_r_reg[1][8]_0 (\g_async.i_sync_rd2wr_n_4 ),
        .fifo_clk_i(fifo_clk_i),
        .full00_carry__2(i__carry_i_6_n_0),
        .p_1_in({p_1_in[12],p_1_in[3:0]}),
        .rd_ptr_r(rd_ptr_r),
        .ret(ret),
        .wr_ptr_r(wr_ptr_r[13]));
  xrf_dpp_comblock_0_0_GraySync_3 \g_async.i_sync_wr2rd 
       (.DI({\g_async.i_sync_wr2rd_n_15 ,\g_async.i_sync_wr2rd_n_16 }),
        .O({empty00_carry_i_10__0_n_4,empty00_carry_i_10__0_n_5,empty00_carry_i_10__0_n_6}),
        .S({\g_async.i_sync_wr2rd_n_0 ,\g_async.i_sync_wr2rd_n_1 ,\g_async.i_sync_wr2rd_n_2 ,\g_async.i_sync_wr2rd_n_3 }),
        .axil_aclk(axil_aclk),
        .\data_r_reg[1][13]_0 ({\g_async.i_sync_wr2rd_n_4 ,\g_async.i_sync_wr2rd_n_5 ,\g_async.i_sync_wr2rd_n_6 ,\g_async.i_sync_wr2rd_n_7 }),
        .\data_r_reg[1][13]_1 ({\g_async.i_sync_wr2rd_n_13 ,\g_async.i_sync_wr2rd_n_14 }),
        .\data_r_reg[1][13]_2 (\g_async.i_sync_wr2rd_n_17 ),
        .\data_r_reg[1][3]_0 (\g_async.i_sync_wr2rd_n_8 ),
        .empty00_carry(\rd_ptr_r_reg[3]_2 ),
        .empty00_carry_0(DI),
        .empty00_carry__0(\rd_ptr_r_reg[7]_0 ),
        .empty00_carry__1(\rd_ptr_r_reg[11]_0 ),
        .empty00_carry__2({empty00_carry__2_i_4_n_6,empty00_carry__2_i_4_n_7}),
        .rd_ptr_r(rd_ptr_r[13]),
        .\rd_ptr_r_reg[0] ({\g_async.i_sync_wr2rd_n_9 ,\g_async.i_sync_wr2rd_n_10 ,\g_async.i_sync_wr2rd_n_11 ,\g_async.i_sync_wr2rd_n_12 }),
        .wr_ptr_r(wr_ptr_r));
  LUT2 #(
    .INIT(4'h2)) 
    i___27_carry__0_i_1
       (.I0(rd_ptr_r[7]),
        .I1(\rd_ptr_r_reg[3]_2 ),
        .O(\rd_ptr_r_reg[7]_1 [3]));
  LUT2 #(
    .INIT(4'h2)) 
    i___27_carry__0_i_2
       (.I0(rd_ptr_r[6]),
        .I1(\rd_ptr_r_reg[3]_2 ),
        .O(\rd_ptr_r_reg[7]_1 [2]));
  LUT2 #(
    .INIT(4'h2)) 
    i___27_carry__0_i_3
       (.I0(rd_ptr_r[5]),
        .I1(\rd_ptr_r_reg[3]_2 ),
        .O(\rd_ptr_r_reg[7]_1 [1]));
  LUT2 #(
    .INIT(4'h2)) 
    i___27_carry__0_i_4
       (.I0(rd_ptr_r[4]),
        .I1(\rd_ptr_r_reg[3]_2 ),
        .O(\rd_ptr_r_reg[7]_1 [0]));
  LUT2 #(
    .INIT(4'h2)) 
    i___27_carry__1_i_1
       (.I0(rd_ptr_r[11]),
        .I1(\rd_ptr_r_reg[3]_2 ),
        .O(\rd_ptr_r_reg[11]_1 [3]));
  LUT2 #(
    .INIT(4'h2)) 
    i___27_carry__1_i_2
       (.I0(rd_ptr_r[10]),
        .I1(\rd_ptr_r_reg[3]_2 ),
        .O(\rd_ptr_r_reg[11]_1 [2]));
  LUT2 #(
    .INIT(4'h2)) 
    i___27_carry__1_i_3
       (.I0(rd_ptr_r[9]),
        .I1(\rd_ptr_r_reg[3]_2 ),
        .O(\rd_ptr_r_reg[11]_1 [1]));
  LUT2 #(
    .INIT(4'h2)) 
    i___27_carry__1_i_4
       (.I0(rd_ptr_r[8]),
        .I1(\rd_ptr_r_reg[3]_2 ),
        .O(\rd_ptr_r_reg[11]_1 [0]));
  LUT2 #(
    .INIT(4'h6)) 
    i___27_carry__2_i_1
       (.I0(rd_ptr_r[13]),
        .I1(\rd_ptr_r_reg[3]_2 ),
        .O(\rd_ptr_r_reg[13]_0 [1]));
  LUT2 #(
    .INIT(4'h2)) 
    i___27_carry__2_i_2
       (.I0(rd_ptr_r[12]),
        .I1(\rd_ptr_r_reg[3]_2 ),
        .O(\rd_ptr_r_reg[13]_0 [0]));
  LUT4 #(
    .INIT(16'h7FFF)) 
    i___27_carry_i_10
       (.I0(rd_ptr_r[9]),
        .I1(rd_ptr_r[8]),
        .I2(rd_ptr_r[11]),
        .I3(rd_ptr_r[10]),
        .O(i___27_carry_i_10_n_0));
  LUT2 #(
    .INIT(4'h2)) 
    i___27_carry_i_2
       (.I0(rd_ptr_r[3]),
        .I1(\rd_ptr_r_reg[3]_2 ),
        .O(\rd_ptr_r_reg[3]_0 [2]));
  LUT2 #(
    .INIT(4'h2)) 
    i___27_carry_i_3
       (.I0(rd_ptr_r[2]),
        .I1(\rd_ptr_r_reg[3]_2 ),
        .O(\rd_ptr_r_reg[3]_0 [1]));
  LUT2 #(
    .INIT(4'h2)) 
    i___27_carry_i_4
       (.I0(rd_ptr_r[1]),
        .I1(\rd_ptr_r_reg[3]_2 ),
        .O(\rd_ptr_r_reg[3]_0 [0]));
  LUT5 #(
    .INIT(32'h20000000)) 
    i___27_carry_i_7
       (.I0(i___27_carry_i_9_n_0),
        .I1(i___27_carry_i_10_n_0),
        .I2(rd_ptr_r[12]),
        .I3(rd_ptr_r[5]),
        .I4(rd_ptr_r[4]),
        .O(\rd_ptr_r_reg[12]_0 ));
  LUT6 #(
    .INIT(64'h8000000000000000)) 
    i___27_carry_i_9
       (.I0(rd_ptr_r[7]),
        .I1(rd_ptr_r[6]),
        .I2(rd_ptr_r[2]),
        .I3(rd_ptr_r[3]),
        .I4(addr2_i),
        .I5(rd_ptr_r[1]),
        .O(i___27_carry_i_9_n_0));
  LUT2 #(
    .INIT(4'h2)) 
    i__carry__0_i_1
       (.I0(wr_ptr_r[7]),
        .I1(i__carry_i_6_n_0),
        .O(\wr_ptr_r_reg[7]_0 [3]));
  LUT2 #(
    .INIT(4'h2)) 
    i__carry__0_i_2
       (.I0(wr_ptr_r[6]),
        .I1(i__carry_i_6_n_0),
        .O(\wr_ptr_r_reg[7]_0 [2]));
  LUT2 #(
    .INIT(4'h2)) 
    i__carry__0_i_3
       (.I0(wr_ptr_r[5]),
        .I1(i__carry_i_6_n_0),
        .O(\wr_ptr_r_reg[7]_0 [1]));
  LUT2 #(
    .INIT(4'h2)) 
    i__carry__0_i_4
       (.I0(wr_ptr_r[4]),
        .I1(i__carry_i_6_n_0),
        .O(\wr_ptr_r_reg[7]_0 [0]));
  LUT2 #(
    .INIT(4'h2)) 
    i__carry__1_i_1
       (.I0(wr_ptr_r[11]),
        .I1(i__carry_i_6_n_0),
        .O(\wr_ptr_r_reg[11]_0 [3]));
  LUT2 #(
    .INIT(4'h2)) 
    i__carry__1_i_2
       (.I0(wr_ptr_r[10]),
        .I1(i__carry_i_6_n_0),
        .O(\wr_ptr_r_reg[11]_0 [2]));
  LUT2 #(
    .INIT(4'h2)) 
    i__carry__1_i_3
       (.I0(wr_ptr_r[9]),
        .I1(i__carry_i_6_n_0),
        .O(\wr_ptr_r_reg[11]_0 [1]));
  LUT2 #(
    .INIT(4'h2)) 
    i__carry__1_i_4
       (.I0(wr_ptr_r[8]),
        .I1(i__carry_i_6_n_0),
        .O(\wr_ptr_r_reg[11]_0 [0]));
  LUT2 #(
    .INIT(4'h6)) 
    i__carry__2_i_1
       (.I0(wr_ptr_r[13]),
        .I1(i__carry_i_6_n_0),
        .O(S[1]));
  LUT2 #(
    .INIT(4'h2)) 
    i__carry__2_i_2
       (.I0(wr_ptr_r[12]),
        .I1(i__carry_i_6_n_0),
        .O(S[0]));
  LUT3 #(
    .INIT(8'h04)) 
    i__carry_i_1
       (.I0(full_r),
        .I1(fifo_we_i),
        .I2(i__carry_i_6_n_0),
        .O(full_r_reg_0));
  LUT2 #(
    .INIT(4'h2)) 
    i__carry_i_2
       (.I0(wr_ptr_r[3]),
        .I1(i__carry_i_6_n_0),
        .O(\wr_ptr_r_reg[3]_0 [3]));
  LUT2 #(
    .INIT(4'h2)) 
    i__carry_i_3
       (.I0(wr_ptr_r[2]),
        .I1(i__carry_i_6_n_0),
        .O(\wr_ptr_r_reg[3]_0 [2]));
  LUT2 #(
    .INIT(4'h2)) 
    i__carry_i_4
       (.I0(wr_ptr_r[1]),
        .I1(i__carry_i_6_n_0),
        .O(\wr_ptr_r_reg[3]_0 [1]));
  LUT4 #(
    .INIT(16'h0D02)) 
    i__carry_i_5
       (.I0(fifo_we_i),
        .I1(full_r),
        .I2(i__carry_i_6_n_0),
        .I3(wr_ptr_r[0]),
        .O(\wr_ptr_r_reg[3]_0 [0]));
  LUT6 #(
    .INIT(64'h0000000040000000)) 
    i__carry_i_6
       (.I0(i__carry_i_7_n_0),
        .I1(wr_ptr_r[9]),
        .I2(wr_ptr_r[8]),
        .I3(wr_ptr_r[1]),
        .I4(wr_ptr_r[0]),
        .I5(i__carry_i_8_n_0),
        .O(i__carry_i_6_n_0));
  LUT4 #(
    .INIT(16'h7FFF)) 
    i__carry_i_7
       (.I0(wr_ptr_r[11]),
        .I1(wr_ptr_r[10]),
        .I2(wr_ptr_r[3]),
        .I3(wr_ptr_r[2]),
        .O(i__carry_i_7_n_0));
  LUT6 #(
    .INIT(64'h7FFFFFFFFFFFFFFF)) 
    i__carry_i_8
       (.I0(wr_ptr_r[4]),
        .I1(wr_ptr_r[5]),
        .I2(wr_ptr_r[12]),
        .I3(wr_ptr_r[6]),
        .I4(wr_ptr_r[7]),
        .I5(p_4_in),
        .O(i__carry_i_8_n_0));
  xrf_dpp_comblock_0_0_tdpram__parameterized0_4 i_memory
       (.Q(Q),
        .WEA(p_4_in),
        .axil_aclk(axil_aclk),
        .data2_o(data2_o),
        .fifo_clk_i(fifo_clk_i),
        .fifo_data_i(fifo_data_i),
        .fifo_in_under_r__0(fifo_in_under_r__0),
        .fifo_out_over_r__0(fifo_out_over_r__0),
        .fifo_out_over_r_reg(fifo_out_over_r_reg),
        .fifo_we_i(fifo_we_i),
        .full_r(full_r),
        .ram_reg_3_0(addr2_i),
        .rd_ptr_r(rd_ptr_r[12:1]),
        .wr_ptr_r(wr_ptr_r[12:0]));
  FDRE #(
    .INIT(1'b0)) 
    \rd_ptr_r_reg[0] 
       (.C(axil_aclk),
        .CE(1'b1),
        .D(\rd_ptr_r_reg[3]_1 [0]),
        .Q(addr2_i),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \rd_ptr_r_reg[10] 
       (.C(axil_aclk),
        .CE(1'b1),
        .D(\rd_ptr_r_reg[11]_2 [2]),
        .Q(rd_ptr_r[10]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \rd_ptr_r_reg[11] 
       (.C(axil_aclk),
        .CE(1'b1),
        .D(\rd_ptr_r_reg[11]_2 [3]),
        .Q(rd_ptr_r[11]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \rd_ptr_r_reg[12] 
       (.C(axil_aclk),
        .CE(1'b1),
        .D(\rd_ptr_r_reg[13]_1 [0]),
        .Q(rd_ptr_r[12]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \rd_ptr_r_reg[13] 
       (.C(axil_aclk),
        .CE(1'b1),
        .D(\rd_ptr_r_reg[13]_1 [1]),
        .Q(rd_ptr_r[13]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \rd_ptr_r_reg[1] 
       (.C(axil_aclk),
        .CE(1'b1),
        .D(\rd_ptr_r_reg[3]_1 [1]),
        .Q(rd_ptr_r[1]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \rd_ptr_r_reg[2] 
       (.C(axil_aclk),
        .CE(1'b1),
        .D(\rd_ptr_r_reg[3]_1 [2]),
        .Q(rd_ptr_r[2]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \rd_ptr_r_reg[3] 
       (.C(axil_aclk),
        .CE(1'b1),
        .D(\rd_ptr_r_reg[3]_1 [3]),
        .Q(rd_ptr_r[3]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \rd_ptr_r_reg[4] 
       (.C(axil_aclk),
        .CE(1'b1),
        .D(\rd_ptr_r_reg[7]_2 [0]),
        .Q(rd_ptr_r[4]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \rd_ptr_r_reg[5] 
       (.C(axil_aclk),
        .CE(1'b1),
        .D(\rd_ptr_r_reg[7]_2 [1]),
        .Q(rd_ptr_r[5]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \rd_ptr_r_reg[6] 
       (.C(axil_aclk),
        .CE(1'b1),
        .D(\rd_ptr_r_reg[7]_2 [2]),
        .Q(rd_ptr_r[6]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \rd_ptr_r_reg[7] 
       (.C(axil_aclk),
        .CE(1'b1),
        .D(\rd_ptr_r_reg[7]_2 [3]),
        .Q(rd_ptr_r[7]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \rd_ptr_r_reg[8] 
       (.C(axil_aclk),
        .CE(1'b1),
        .D(\rd_ptr_r_reg[11]_2 [0]),
        .Q(rd_ptr_r[8]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \rd_ptr_r_reg[9] 
       (.C(axil_aclk),
        .CE(1'b1),
        .D(\rd_ptr_r_reg[11]_2 [1]),
        .Q(rd_ptr_r[9]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \wr_ptr_r_reg[0] 
       (.C(fifo_clk_i),
        .CE(1'b1),
        .D(O[0]),
        .Q(wr_ptr_r[0]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \wr_ptr_r_reg[10] 
       (.C(fifo_clk_i),
        .CE(1'b1),
        .D(\wr_ptr_r_reg[11]_1 [2]),
        .Q(wr_ptr_r[10]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \wr_ptr_r_reg[11] 
       (.C(fifo_clk_i),
        .CE(1'b1),
        .D(\wr_ptr_r_reg[11]_1 [3]),
        .Q(wr_ptr_r[11]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \wr_ptr_r_reg[12] 
       (.C(fifo_clk_i),
        .CE(1'b1),
        .D(\wr_ptr_r_reg[13]_0 [0]),
        .Q(wr_ptr_r[12]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \wr_ptr_r_reg[13] 
       (.C(fifo_clk_i),
        .CE(1'b1),
        .D(\wr_ptr_r_reg[13]_0 [1]),
        .Q(wr_ptr_r[13]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \wr_ptr_r_reg[1] 
       (.C(fifo_clk_i),
        .CE(1'b1),
        .D(O[1]),
        .Q(wr_ptr_r[1]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \wr_ptr_r_reg[2] 
       (.C(fifo_clk_i),
        .CE(1'b1),
        .D(O[2]),
        .Q(wr_ptr_r[2]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \wr_ptr_r_reg[3] 
       (.C(fifo_clk_i),
        .CE(1'b1),
        .D(O[3]),
        .Q(wr_ptr_r[3]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \wr_ptr_r_reg[4] 
       (.C(fifo_clk_i),
        .CE(1'b1),
        .D(\wr_ptr_r_reg[7]_1 [0]),
        .Q(wr_ptr_r[4]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \wr_ptr_r_reg[5] 
       (.C(fifo_clk_i),
        .CE(1'b1),
        .D(\wr_ptr_r_reg[7]_1 [1]),
        .Q(wr_ptr_r[5]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \wr_ptr_r_reg[6] 
       (.C(fifo_clk_i),
        .CE(1'b1),
        .D(\wr_ptr_r_reg[7]_1 [2]),
        .Q(wr_ptr_r[6]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \wr_ptr_r_reg[7] 
       (.C(fifo_clk_i),
        .CE(1'b1),
        .D(\wr_ptr_r_reg[7]_1 [3]),
        .Q(wr_ptr_r[7]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \wr_ptr_r_reg[8] 
       (.C(fifo_clk_i),
        .CE(1'b1),
        .D(\wr_ptr_r_reg[11]_1 [0]),
        .Q(wr_ptr_r[8]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \wr_ptr_r_reg[9] 
       (.C(fifo_clk_i),
        .CE(1'b1),
        .D(\wr_ptr_r_reg[11]_1 [1]),
        .Q(wr_ptr_r[9]),
        .R(rst));
endmodule

(* ORIG_REF_NAME = "FIFO" *) 
module xrf_dpp_comblock_0_0_FIFO_0
   (full_r,
    fifo_empty_o,
    fifo_valid_o,
    addr1_i,
    O,
    \data_r_reg[1][7] ,
    fifo_out_count,
    \axi_araddr_reg[4] ,
    \axi_araddr_reg[4]_0 ,
    fifo_underflow_o,
    \wr_ptr_r_reg[12]_0 ,
    fifo_aempty_o,
    fifo_data_o,
    axil_aclk,
    fifo_clk_i,
    \wr_ptr_r_reg[3]_0 ,
    \axi_rdata_reg[1] ,
    Q,
    fifo_in_count,
    fifo_clear_i,
    \wr_ptr_r_reg[0]_0 ,
    fifo_re_i,
    \wr_ptr_r_reg[3]_1 ,
    S,
    p_4_in,
    axil_wdata);
  output full_r;
  output fifo_empty_o;
  output fifo_valid_o;
  output [0:0]addr1_i;
  output [3:0]O;
  output [3:0]\data_r_reg[1][7] ;
  output [5:0]fifo_out_count;
  output \axi_araddr_reg[4] ;
  output \axi_araddr_reg[4]_0 ;
  output fifo_underflow_o;
  output \wr_ptr_r_reg[12]_0 ;
  output fifo_aempty_o;
  output [15:0]fifo_data_o;
  input axil_aclk;
  input fifo_clk_i;
  input \wr_ptr_r_reg[3]_0 ;
  input \axi_rdata_reg[1] ;
  input [0:0]Q;
  input [0:0]fifo_in_count;
  input fifo_clear_i;
  input \wr_ptr_r_reg[0]_0 ;
  input fifo_re_i;
  input [0:0]\wr_ptr_r_reg[3]_1 ;
  input [0:0]S;
  input p_4_in;
  input [15:0]axil_wdata;

  wire [3:0]O;
  wire [0:0]Q;
  wire [0:0]S;
  wire [0:0]addr1_i;
  wire \axi_araddr_reg[4] ;
  wire \axi_araddr_reg[4]_0 ;
  wire \axi_rdata[0]_i_8_n_0 ;
  wire \axi_rdata[1]_i_11_n_0 ;
  wire \axi_rdata[1]_i_12_n_0 ;
  wire \axi_rdata[1]_i_13_n_0 ;
  wire \axi_rdata_reg[1] ;
  wire axil_aclk;
  wire [15:0]axil_wdata;
  wire [3:0]\data_r_reg[1][7] ;
  wire empty00_carry__0_i_1__0_n_0;
  wire empty00_carry__0_i_2__0_n_0;
  wire empty00_carry__0_i_3__0_n_0;
  wire empty00_carry__0_i_4__0_n_0;
  wire empty00_carry__0_i_9__0_n_0;
  wire empty00_carry__0_i_9__0_n_1;
  wire empty00_carry__0_i_9__0_n_2;
  wire empty00_carry__0_i_9__0_n_3;
  wire empty00_carry__0_i_9__0_n_4;
  wire empty00_carry__0_i_9__0_n_5;
  wire empty00_carry__0_i_9__0_n_6;
  wire empty00_carry__0_i_9__0_n_7;
  wire empty00_carry__0_n_0;
  wire empty00_carry__0_n_1;
  wire empty00_carry__0_n_2;
  wire empty00_carry__0_n_3;
  wire empty00_carry__0_n_4;
  wire empty00_carry__0_n_5;
  wire empty00_carry__0_n_6;
  wire empty00_carry__0_n_7;
  wire empty00_carry__1_i_1__0_n_0;
  wire empty00_carry__1_i_2__0_n_0;
  wire empty00_carry__1_i_3__0_n_0;
  wire empty00_carry__1_i_4__0_n_0;
  wire empty00_carry__1_i_9__0_n_0;
  wire empty00_carry__1_i_9__0_n_1;
  wire empty00_carry__1_i_9__0_n_2;
  wire empty00_carry__1_i_9__0_n_3;
  wire empty00_carry__1_i_9__0_n_4;
  wire empty00_carry__1_i_9__0_n_5;
  wire empty00_carry__1_i_9__0_n_6;
  wire empty00_carry__1_i_9__0_n_7;
  wire empty00_carry__1_n_0;
  wire empty00_carry__1_n_1;
  wire empty00_carry__1_n_2;
  wire empty00_carry__1_n_3;
  wire empty00_carry__1_n_4;
  wire empty00_carry__1_n_5;
  wire empty00_carry__1_n_6;
  wire empty00_carry__1_n_7;
  wire empty00_carry__2_i_4__0_n_3;
  wire empty00_carry__2_i_4__0_n_6;
  wire empty00_carry__2_i_4__0_n_7;
  wire empty00_carry__2_n_3;
  wire empty00_carry__2_n_6;
  wire empty00_carry__2_n_7;
  wire empty00_carry_i_10_n_0;
  wire empty00_carry_i_11_n_0;
  wire empty00_carry_i_11_n_1;
  wire empty00_carry_i_11_n_2;
  wire empty00_carry_i_11_n_3;
  wire empty00_carry_i_11_n_4;
  wire empty00_carry_i_11_n_5;
  wire empty00_carry_i_11_n_6;
  wire empty00_carry_i_11_n_7;
  wire empty00_carry_i_12_n_0;
  wire empty00_carry_i_13_n_0;
  wire empty00_carry_i_14_n_0;
  wire empty00_carry_i_15_n_0;
  wire empty00_carry_i_4__0_n_0;
  wire empty00_carry_n_0;
  wire empty00_carry_n_1;
  wire empty00_carry_n_2;
  wire empty00_carry_n_3;
  wire empty00_carry_n_4;
  wire empty00_carry_n_5;
  wire empty00_carry_n_6;
  wire empty00_carry_n_7;
  wire empty_r;
  wire fifo_aempty_o;
  wire fifo_aempty_o_INST_0_i_1_n_0;
  wire fifo_aempty_o_INST_0_i_2_n_0;
  wire fifo_clear_i;
  wire fifo_clk_i;
  wire [15:0]fifo_data_o;
  wire fifo_empty_o;
  wire [0:0]fifo_in_count;
  wire [5:0]fifo_out_count;
  wire fifo_out_full;
  wire fifo_re_i;
  wire fifo_underflow_o;
  wire fifo_valid_o;
  wire full00_carry__0_i_9__0_n_0;
  wire full00_carry__0_i_9__0_n_1;
  wire full00_carry__0_i_9__0_n_2;
  wire full00_carry__0_i_9__0_n_3;
  wire full00_carry__0_n_0;
  wire full00_carry__0_n_1;
  wire full00_carry__0_n_2;
  wire full00_carry__0_n_3;
  wire full00_carry__1_i_9__0_n_0;
  wire full00_carry__1_i_9__0_n_1;
  wire full00_carry__1_i_9__0_n_2;
  wire full00_carry__1_i_9__0_n_3;
  wire full00_carry__1_n_0;
  wire full00_carry__1_n_1;
  wire full00_carry__1_n_2;
  wire full00_carry__1_n_3;
  wire full00_carry__2_i_4__0_n_3;
  wire full00_carry__2_n_3;
  wire full00_carry_i_10_n_0;
  wire full00_carry_i_10_n_1;
  wire full00_carry_i_10_n_2;
  wire full00_carry_i_10_n_3;
  wire full00_carry_i_11_n_0;
  wire full00_carry_n_0;
  wire full00_carry_n_1;
  wire full00_carry_n_2;
  wire full00_carry_n_3;
  wire full_r;
  wire full_r_i_2_n_0;
  wire full_r_i_3_n_0;
  wire \g_async.i_sync_rd2wr_n_0 ;
  wire \g_async.i_sync_rd2wr_n_1 ;
  wire \g_async.i_sync_rd2wr_n_10 ;
  wire \g_async.i_sync_rd2wr_n_13 ;
  wire \g_async.i_sync_rd2wr_n_15 ;
  wire \g_async.i_sync_rd2wr_n_2 ;
  wire \g_async.i_sync_rd2wr_n_23 ;
  wire \g_async.i_sync_rd2wr_n_24 ;
  wire \g_async.i_sync_rd2wr_n_25 ;
  wire \g_async.i_sync_rd2wr_n_26 ;
  wire \g_async.i_sync_rd2wr_n_3 ;
  wire \g_async.i_sync_rd2wr_n_4 ;
  wire \g_async.i_sync_rd2wr_n_5 ;
  wire \g_async.i_sync_rd2wr_n_6 ;
  wire \g_async.i_sync_rd2wr_n_7 ;
  wire \g_async.i_sync_rd2wr_n_8 ;
  wire \g_async.i_sync_rd2wr_n_9 ;
  wire \g_async.i_sync_wr2rd_n_0 ;
  wire \g_async.i_sync_wr2rd_n_1 ;
  wire \g_async.i_sync_wr2rd_n_10 ;
  wire \g_async.i_sync_wr2rd_n_11 ;
  wire \g_async.i_sync_wr2rd_n_12 ;
  wire \g_async.i_sync_wr2rd_n_13 ;
  wire \g_async.i_sync_wr2rd_n_14 ;
  wire \g_async.i_sync_wr2rd_n_15 ;
  wire \g_async.i_sync_wr2rd_n_16 ;
  wire \g_async.i_sync_wr2rd_n_17 ;
  wire \g_async.i_sync_wr2rd_n_2 ;
  wire \g_async.i_sync_wr2rd_n_3 ;
  wire \g_async.i_sync_wr2rd_n_4 ;
  wire \g_async.i_sync_wr2rd_n_5 ;
  wire \g_async.i_sync_wr2rd_n_6 ;
  wire \g_async.i_sync_wr2rd_n_7 ;
  wire \g_async.i_sync_wr2rd_n_8 ;
  wire \g_async.i_sync_wr2rd_n_9 ;
  wire [12:0]p_1_in;
  wire p_2_in;
  wire p_4_in;
  wire [13:0]rd_ptr_r;
  wire \rd_ptr_r[0]_i_2_n_0 ;
  wire \rd_ptr_r[0]_i_3_n_0 ;
  wire \rd_ptr_r[0]_i_4_n_0 ;
  wire \rd_ptr_r[0]_i_5_n_0 ;
  wire \rd_ptr_r[0]_i_6_n_0 ;
  wire \rd_ptr_r[12]_i_2_n_0 ;
  wire \rd_ptr_r[12]_i_3_n_0 ;
  wire \rd_ptr_r[4]_i_2_n_0 ;
  wire \rd_ptr_r[4]_i_3_n_0 ;
  wire \rd_ptr_r[4]_i_4_n_0 ;
  wire \rd_ptr_r[4]_i_5_n_0 ;
  wire \rd_ptr_r[8]_i_2_n_0 ;
  wire \rd_ptr_r[8]_i_3_n_0 ;
  wire \rd_ptr_r[8]_i_4_n_0 ;
  wire \rd_ptr_r[8]_i_5_n_0 ;
  wire \rd_ptr_r_reg[0]_i_1_n_0 ;
  wire \rd_ptr_r_reg[0]_i_1_n_1 ;
  wire \rd_ptr_r_reg[0]_i_1_n_2 ;
  wire \rd_ptr_r_reg[0]_i_1_n_3 ;
  wire \rd_ptr_r_reg[0]_i_1_n_4 ;
  wire \rd_ptr_r_reg[0]_i_1_n_5 ;
  wire \rd_ptr_r_reg[0]_i_1_n_6 ;
  wire \rd_ptr_r_reg[0]_i_1_n_7 ;
  wire \rd_ptr_r_reg[12]_i_1_n_3 ;
  wire \rd_ptr_r_reg[12]_i_1_n_6 ;
  wire \rd_ptr_r_reg[12]_i_1_n_7 ;
  wire \rd_ptr_r_reg[4]_i_1_n_0 ;
  wire \rd_ptr_r_reg[4]_i_1_n_1 ;
  wire \rd_ptr_r_reg[4]_i_1_n_2 ;
  wire \rd_ptr_r_reg[4]_i_1_n_3 ;
  wire \rd_ptr_r_reg[4]_i_1_n_4 ;
  wire \rd_ptr_r_reg[4]_i_1_n_5 ;
  wire \rd_ptr_r_reg[4]_i_1_n_6 ;
  wire \rd_ptr_r_reg[4]_i_1_n_7 ;
  wire \rd_ptr_r_reg[8]_i_1_n_0 ;
  wire \rd_ptr_r_reg[8]_i_1_n_1 ;
  wire \rd_ptr_r_reg[8]_i_1_n_2 ;
  wire \rd_ptr_r_reg[8]_i_1_n_3 ;
  wire \rd_ptr_r_reg[8]_i_1_n_4 ;
  wire \rd_ptr_r_reg[8]_i_1_n_5 ;
  wire \rd_ptr_r_reg[8]_i_1_n_6 ;
  wire \rd_ptr_r_reg[8]_i_1_n_7 ;
  wire [13:0]ret;
  wire rst;
  wire [13:1]wr_ptr_r;
  wire \wr_ptr_r[0]_i_3_n_0 ;
  wire \wr_ptr_r[0]_i_4_n_0 ;
  wire \wr_ptr_r[0]_i_5_n_0 ;
  wire \wr_ptr_r[0]_i_8_n_0 ;
  wire \wr_ptr_r[0]_i_9_n_0 ;
  wire \wr_ptr_r[12]_i_2_n_0 ;
  wire \wr_ptr_r[12]_i_3_n_0 ;
  wire \wr_ptr_r[4]_i_2_n_0 ;
  wire \wr_ptr_r[4]_i_3_n_0 ;
  wire \wr_ptr_r[4]_i_4_n_0 ;
  wire \wr_ptr_r[4]_i_5_n_0 ;
  wire \wr_ptr_r[8]_i_2_n_0 ;
  wire \wr_ptr_r[8]_i_3_n_0 ;
  wire \wr_ptr_r[8]_i_4_n_0 ;
  wire \wr_ptr_r[8]_i_5_n_0 ;
  wire \wr_ptr_r_reg[0]_0 ;
  wire \wr_ptr_r_reg[0]_i_1_n_0 ;
  wire \wr_ptr_r_reg[0]_i_1_n_1 ;
  wire \wr_ptr_r_reg[0]_i_1_n_2 ;
  wire \wr_ptr_r_reg[0]_i_1_n_3 ;
  wire \wr_ptr_r_reg[0]_i_1_n_4 ;
  wire \wr_ptr_r_reg[0]_i_1_n_5 ;
  wire \wr_ptr_r_reg[0]_i_1_n_6 ;
  wire \wr_ptr_r_reg[0]_i_1_n_7 ;
  wire \wr_ptr_r_reg[12]_0 ;
  wire \wr_ptr_r_reg[12]_i_1_n_3 ;
  wire \wr_ptr_r_reg[12]_i_1_n_6 ;
  wire \wr_ptr_r_reg[12]_i_1_n_7 ;
  wire \wr_ptr_r_reg[3]_0 ;
  wire [0:0]\wr_ptr_r_reg[3]_1 ;
  wire \wr_ptr_r_reg[4]_i_1_n_0 ;
  wire \wr_ptr_r_reg[4]_i_1_n_1 ;
  wire \wr_ptr_r_reg[4]_i_1_n_2 ;
  wire \wr_ptr_r_reg[4]_i_1_n_3 ;
  wire \wr_ptr_r_reg[4]_i_1_n_4 ;
  wire \wr_ptr_r_reg[4]_i_1_n_5 ;
  wire \wr_ptr_r_reg[4]_i_1_n_6 ;
  wire \wr_ptr_r_reg[4]_i_1_n_7 ;
  wire \wr_ptr_r_reg[8]_i_1_n_0 ;
  wire \wr_ptr_r_reg[8]_i_1_n_1 ;
  wire \wr_ptr_r_reg[8]_i_1_n_2 ;
  wire \wr_ptr_r_reg[8]_i_1_n_3 ;
  wire \wr_ptr_r_reg[8]_i_1_n_4 ;
  wire \wr_ptr_r_reg[8]_i_1_n_5 ;
  wire \wr_ptr_r_reg[8]_i_1_n_6 ;
  wire \wr_ptr_r_reg[8]_i_1_n_7 ;
  wire [3:1]NLW_empty00_carry__2_CO_UNCONNECTED;
  wire [3:2]NLW_empty00_carry__2_O_UNCONNECTED;
  wire [3:1]NLW_empty00_carry__2_i_4__0_CO_UNCONNECTED;
  wire [3:2]NLW_empty00_carry__2_i_4__0_O_UNCONNECTED;
  wire [3:1]NLW_full00_carry__2_CO_UNCONNECTED;
  wire [3:2]NLW_full00_carry__2_O_UNCONNECTED;
  wire [3:1]NLW_full00_carry__2_i_4__0_CO_UNCONNECTED;
  wire [3:2]NLW_full00_carry__2_i_4__0_O_UNCONNECTED;
  wire [3:1]\NLW_rd_ptr_r_reg[12]_i_1_CO_UNCONNECTED ;
  wire [3:2]\NLW_rd_ptr_r_reg[12]_i_1_O_UNCONNECTED ;
  wire [3:1]\NLW_wr_ptr_r_reg[12]_i_1_CO_UNCONNECTED ;
  wire [3:2]\NLW_wr_ptr_r_reg[12]_i_1_O_UNCONNECTED ;

  LUT6 #(
    .INIT(64'h020000000200AAAA)) 
    \axi_rdata[0]_i_4 
       (.I0(\axi_rdata_reg[1] ),
        .I1(\axi_rdata[0]_i_8_n_0 ),
        .I2(full_r_i_3_n_0),
        .I3(full_r_i_2_n_0),
        .I4(Q),
        .I5(fifo_in_count),
        .O(\axi_araddr_reg[4] ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \axi_rdata[0]_i_8 
       (.I0(\data_r_reg[1][7] [3]),
        .I1(\data_r_reg[1][7] [2]),
        .I2(O[3]),
        .I3(O[2]),
        .O(\axi_rdata[0]_i_8_n_0 ));
  LUT6 #(
    .INIT(64'h8000000000000000)) 
    \axi_rdata[1]_i_11 
       (.I0(O[0]),
        .I1(fifo_out_count[0]),
        .I2(\data_r_reg[1][7] [0]),
        .I3(\data_r_reg[1][7] [1]),
        .I4(\data_r_reg[1][7] [2]),
        .I5(\data_r_reg[1][7] [3]),
        .O(\axi_rdata[1]_i_11_n_0 ));
  LUT4 #(
    .INIT(16'h7FFF)) 
    \axi_rdata[1]_i_12 
       (.I0(fifo_out_count[3]),
        .I1(fifo_out_count[2]),
        .I2(fifo_out_count[4]),
        .I3(O[3]),
        .O(\axi_rdata[1]_i_12_n_0 ));
  LUT3 #(
    .INIT(8'h7F)) 
    \axi_rdata[1]_i_13 
       (.I0(O[1]),
        .I1(fifo_out_count[1]),
        .I2(O[2]),
        .O(\axi_rdata[1]_i_13_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAAAAA0008AAAA)) 
    \axi_rdata[1]_i_5 
       (.I0(\axi_rdata_reg[1] ),
        .I1(\axi_rdata[1]_i_11_n_0 ),
        .I2(\axi_rdata[1]_i_12_n_0 ),
        .I3(\axi_rdata[1]_i_13_n_0 ),
        .I4(Q),
        .I5(fifo_out_count[5]),
        .O(\axi_araddr_reg[4]_0 ));
  (* ADDER_THRESHOLD = "35" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY4 empty00_carry
       (.CI(1'b0),
        .CO({empty00_carry_n_0,empty00_carry_n_1,empty00_carry_n_2,empty00_carry_n_3}),
        .CYINIT(1'b1),
        .DI({\g_async.i_sync_wr2rd_n_8 ,\g_async.i_sync_wr2rd_n_11 ,\g_async.i_sync_wr2rd_n_12 ,empty00_carry_i_4__0_n_0}),
        .O({empty00_carry_n_4,empty00_carry_n_5,empty00_carry_n_6,empty00_carry_n_7}),
        .S({\g_async.i_sync_wr2rd_n_14 ,\g_async.i_sync_wr2rd_n_15 ,\g_async.i_sync_wr2rd_n_16 ,\g_async.i_sync_wr2rd_n_17 }));
  (* ADDER_THRESHOLD = "35" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY4 empty00_carry__0
       (.CI(empty00_carry_n_0),
        .CO({empty00_carry__0_n_0,empty00_carry__0_n_1,empty00_carry__0_n_2,empty00_carry__0_n_3}),
        .CYINIT(1'b0),
        .DI({empty00_carry__0_i_1__0_n_0,empty00_carry__0_i_2__0_n_0,empty00_carry__0_i_3__0_n_0,empty00_carry__0_i_4__0_n_0}),
        .O({empty00_carry__0_n_4,empty00_carry__0_n_5,empty00_carry__0_n_6,empty00_carry__0_n_7}),
        .S({\g_async.i_sync_wr2rd_n_0 ,\g_async.i_sync_wr2rd_n_1 ,\g_async.i_sync_wr2rd_n_2 ,\g_async.i_sync_wr2rd_n_3 }));
  LUT2 #(
    .INIT(4'hB)) 
    empty00_carry__0_i_1__0
       (.I0(empty00_carry_i_10_n_0),
        .I1(empty00_carry__0_i_9__0_n_4),
        .O(empty00_carry__0_i_1__0_n_0));
  LUT2 #(
    .INIT(4'hB)) 
    empty00_carry__0_i_2__0
       (.I0(empty00_carry_i_10_n_0),
        .I1(empty00_carry__0_i_9__0_n_5),
        .O(empty00_carry__0_i_2__0_n_0));
  LUT2 #(
    .INIT(4'hB)) 
    empty00_carry__0_i_3__0
       (.I0(empty00_carry_i_10_n_0),
        .I1(empty00_carry__0_i_9__0_n_6),
        .O(empty00_carry__0_i_3__0_n_0));
  LUT2 #(
    .INIT(4'hB)) 
    empty00_carry__0_i_4__0
       (.I0(empty00_carry_i_10_n_0),
        .I1(empty00_carry__0_i_9__0_n_7),
        .O(empty00_carry__0_i_4__0_n_0));
  (* ADDER_THRESHOLD = "35" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY4 empty00_carry__0_i_9__0
       (.CI(empty00_carry_i_11_n_0),
        .CO({empty00_carry__0_i_9__0_n_0,empty00_carry__0_i_9__0_n_1,empty00_carry__0_i_9__0_n_2,empty00_carry__0_i_9__0_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({empty00_carry__0_i_9__0_n_4,empty00_carry__0_i_9__0_n_5,empty00_carry__0_i_9__0_n_6,empty00_carry__0_i_9__0_n_7}),
        .S(rd_ptr_r[7:4]));
  (* ADDER_THRESHOLD = "35" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY4 empty00_carry__1
       (.CI(empty00_carry__0_n_0),
        .CO({empty00_carry__1_n_0,empty00_carry__1_n_1,empty00_carry__1_n_2,empty00_carry__1_n_3}),
        .CYINIT(1'b0),
        .DI({empty00_carry__1_i_1__0_n_0,empty00_carry__1_i_2__0_n_0,empty00_carry__1_i_3__0_n_0,empty00_carry__1_i_4__0_n_0}),
        .O({empty00_carry__1_n_4,empty00_carry__1_n_5,empty00_carry__1_n_6,empty00_carry__1_n_7}),
        .S({\g_async.i_sync_wr2rd_n_4 ,\g_async.i_sync_wr2rd_n_5 ,\g_async.i_sync_wr2rd_n_6 ,\g_async.i_sync_wr2rd_n_7 }));
  LUT2 #(
    .INIT(4'hB)) 
    empty00_carry__1_i_1__0
       (.I0(empty00_carry_i_10_n_0),
        .I1(empty00_carry__1_i_9__0_n_4),
        .O(empty00_carry__1_i_1__0_n_0));
  LUT2 #(
    .INIT(4'hB)) 
    empty00_carry__1_i_2__0
       (.I0(empty00_carry_i_10_n_0),
        .I1(empty00_carry__1_i_9__0_n_5),
        .O(empty00_carry__1_i_2__0_n_0));
  LUT2 #(
    .INIT(4'hB)) 
    empty00_carry__1_i_3__0
       (.I0(empty00_carry_i_10_n_0),
        .I1(empty00_carry__1_i_9__0_n_6),
        .O(empty00_carry__1_i_3__0_n_0));
  LUT2 #(
    .INIT(4'hB)) 
    empty00_carry__1_i_4__0
       (.I0(empty00_carry_i_10_n_0),
        .I1(empty00_carry__1_i_9__0_n_7),
        .O(empty00_carry__1_i_4__0_n_0));
  (* ADDER_THRESHOLD = "35" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY4 empty00_carry__1_i_9__0
       (.CI(empty00_carry__0_i_9__0_n_0),
        .CO({empty00_carry__1_i_9__0_n_0,empty00_carry__1_i_9__0_n_1,empty00_carry__1_i_9__0_n_2,empty00_carry__1_i_9__0_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({empty00_carry__1_i_9__0_n_4,empty00_carry__1_i_9__0_n_5,empty00_carry__1_i_9__0_n_6,empty00_carry__1_i_9__0_n_7}),
        .S(rd_ptr_r[11:8]));
  (* ADDER_THRESHOLD = "35" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY4 empty00_carry__2
       (.CI(empty00_carry__1_n_0),
        .CO({NLW_empty00_carry__2_CO_UNCONNECTED[3:1],empty00_carry__2_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,\g_async.i_sync_wr2rd_n_13 }),
        .O({NLW_empty00_carry__2_O_UNCONNECTED[3:2],empty00_carry__2_n_6,empty00_carry__2_n_7}),
        .S({1'b0,1'b0,\g_async.i_sync_wr2rd_n_9 ,\g_async.i_sync_wr2rd_n_10 }));
  (* ADDER_THRESHOLD = "35" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY4 empty00_carry__2_i_4__0
       (.CI(empty00_carry__1_i_9__0_n_0),
        .CO({NLW_empty00_carry__2_i_4__0_CO_UNCONNECTED[3:1],empty00_carry__2_i_4__0_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({NLW_empty00_carry__2_i_4__0_O_UNCONNECTED[3:2],empty00_carry__2_i_4__0_n_6,empty00_carry__2_i_4__0_n_7}),
        .S({1'b0,1'b0,rd_ptr_r[13:12]}));
  LUT6 #(
    .INIT(64'h0400000000000000)) 
    empty00_carry_i_10
       (.I0(empty00_carry_i_12_n_0),
        .I1(empty00_carry_i_13_n_0),
        .I2(empty00_carry_i_14_n_0),
        .I3(rd_ptr_r[12]),
        .I4(rd_ptr_r[5]),
        .I5(rd_ptr_r[4]),
        .O(empty00_carry_i_10_n_0));
  (* ADDER_THRESHOLD = "35" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY4 empty00_carry_i_11
       (.CI(1'b0),
        .CO({empty00_carry_i_11_n_0,empty00_carry_i_11_n_1,empty00_carry_i_11_n_2,empty00_carry_i_11_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,rd_ptr_r[0]}),
        .O({empty00_carry_i_11_n_4,empty00_carry_i_11_n_5,empty00_carry_i_11_n_6,empty00_carry_i_11_n_7}),
        .S({rd_ptr_r[3:1],empty00_carry_i_15_n_0}));
  (* SOFT_HLUTNM = "soft_lutpair48" *) 
  LUT4 #(
    .INIT(16'hBFFF)) 
    empty00_carry_i_12
       (.I0(empty_r),
        .I1(fifo_re_i),
        .I2(rd_ptr_r[7]),
        .I3(rd_ptr_r[6]),
        .O(empty00_carry_i_12_n_0));
  LUT4 #(
    .INIT(16'h8000)) 
    empty00_carry_i_13
       (.I0(rd_ptr_r[11]),
        .I1(rd_ptr_r[10]),
        .I2(rd_ptr_r[3]),
        .I3(rd_ptr_r[2]),
        .O(empty00_carry_i_13_n_0));
  LUT4 #(
    .INIT(16'h7FFF)) 
    empty00_carry_i_14
       (.I0(rd_ptr_r[9]),
        .I1(rd_ptr_r[8]),
        .I2(rd_ptr_r[1]),
        .I3(rd_ptr_r[0]),
        .O(empty00_carry_i_14_n_0));
  LUT3 #(
    .INIT(8'h9A)) 
    empty00_carry_i_15
       (.I0(rd_ptr_r[0]),
        .I1(empty_r),
        .I2(fifo_re_i),
        .O(empty00_carry_i_15_n_0));
  LUT2 #(
    .INIT(4'hB)) 
    empty00_carry_i_4__0
       (.I0(empty00_carry_i_10_n_0),
        .I1(empty00_carry_i_11_n_7),
        .O(empty00_carry_i_4__0_n_0));
  FDSE empty_r_reg
       (.C(fifo_clk_i),
        .CE(1'b1),
        .D(fifo_empty_o),
        .Q(empty_r),
        .S(rst));
  LUT6 #(
    .INIT(64'h0000000000000001)) 
    fifo_aempty_o_INST_0
       (.I0(fifo_aempty_o_INST_0_i_1_n_0),
        .I1(empty00_carry__1_n_5),
        .I2(empty00_carry__1_n_4),
        .I3(empty00_carry__2_n_6),
        .I4(empty00_carry__2_n_7),
        .I5(fifo_aempty_o_INST_0_i_2_n_0),
        .O(fifo_aempty_o));
  LUT4 #(
    .INIT(16'hFFFE)) 
    fifo_aempty_o_INST_0_i_1
       (.I0(empty00_carry__0_n_5),
        .I1(empty00_carry__0_n_4),
        .I2(empty00_carry__1_n_6),
        .I3(empty00_carry__1_n_7),
        .O(fifo_aempty_o_INST_0_i_1_n_0));
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    fifo_aempty_o_INST_0_i_2
       (.I0(empty00_carry_n_6),
        .I1(empty00_carry_n_5),
        .I2(empty00_carry_n_4),
        .I3(empty00_carry__0_n_6),
        .I4(empty00_carry__0_n_7),
        .O(fifo_aempty_o_INST_0_i_2_n_0));
  LUT2 #(
    .INIT(4'h2)) 
    fifo_empty_o_INST_0
       (.I0(fifo_aempty_o),
        .I1(empty00_carry_n_7),
        .O(fifo_empty_o));
  LUT2 #(
    .INIT(4'h8)) 
    fifo_underflow_o_INST_0
       (.I0(empty_r),
        .I1(fifo_re_i),
        .O(fifo_underflow_o));
  (* ADDER_THRESHOLD = "35" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY4 full00_carry
       (.CI(1'b0),
        .CO({full00_carry_n_0,full00_carry_n_1,full00_carry_n_2,full00_carry_n_3}),
        .CYINIT(1'b1),
        .DI(p_1_in[3:0]),
        .O(O),
        .S({\g_async.i_sync_rd2wr_n_23 ,\g_async.i_sync_rd2wr_n_24 ,\g_async.i_sync_rd2wr_n_25 ,\g_async.i_sync_rd2wr_n_26 }));
  (* ADDER_THRESHOLD = "35" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY4 full00_carry__0
       (.CI(full00_carry_n_0),
        .CO({full00_carry__0_n_0,full00_carry__0_n_1,full00_carry__0_n_2,full00_carry__0_n_3}),
        .CYINIT(1'b0),
        .DI({p_1_in[7:6],\g_async.i_sync_rd2wr_n_13 ,p_1_in[4]}),
        .O(\data_r_reg[1][7] ),
        .S({\g_async.i_sync_rd2wr_n_0 ,\g_async.i_sync_rd2wr_n_1 ,\g_async.i_sync_rd2wr_n_2 ,\g_async.i_sync_rd2wr_n_3 }));
  (* ADDER_THRESHOLD = "35" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY4 full00_carry__0_i_9__0
       (.CI(full00_carry_i_10_n_0),
        .CO({full00_carry__0_i_9__0_n_0,full00_carry__0_i_9__0_n_1,full00_carry__0_i_9__0_n_2,full00_carry__0_i_9__0_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(ret[7:4]),
        .S(wr_ptr_r[7:4]));
  (* ADDER_THRESHOLD = "35" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY4 full00_carry__1
       (.CI(full00_carry__0_n_0),
        .CO({full00_carry__1_n_0,full00_carry__1_n_1,full00_carry__1_n_2,full00_carry__1_n_3}),
        .CYINIT(1'b0),
        .DI({\g_async.i_sync_rd2wr_n_15 ,p_1_in[10:9],\g_async.i_sync_rd2wr_n_4 }),
        .O(fifo_out_count[3:0]),
        .S({\g_async.i_sync_rd2wr_n_5 ,\g_async.i_sync_rd2wr_n_6 ,\g_async.i_sync_rd2wr_n_7 ,\g_async.i_sync_rd2wr_n_8 }));
  (* ADDER_THRESHOLD = "35" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY4 full00_carry__1_i_9__0
       (.CI(full00_carry__0_i_9__0_n_0),
        .CO({full00_carry__1_i_9__0_n_0,full00_carry__1_i_9__0_n_1,full00_carry__1_i_9__0_n_2,full00_carry__1_i_9__0_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(ret[11:8]),
        .S(wr_ptr_r[11:8]));
  (* ADDER_THRESHOLD = "35" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY4 full00_carry__2
       (.CI(full00_carry__1_n_0),
        .CO({NLW_full00_carry__2_CO_UNCONNECTED[3:1],full00_carry__2_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,p_1_in[12]}),
        .O({NLW_full00_carry__2_O_UNCONNECTED[3:2],fifo_out_count[5:4]}),
        .S({1'b0,1'b0,\g_async.i_sync_rd2wr_n_9 ,\g_async.i_sync_rd2wr_n_10 }));
  (* ADDER_THRESHOLD = "35" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY4 full00_carry__2_i_4__0
       (.CI(full00_carry__1_i_9__0_n_0),
        .CO({NLW_full00_carry__2_i_4__0_CO_UNCONNECTED[3:1],full00_carry__2_i_4__0_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({NLW_full00_carry__2_i_4__0_O_UNCONNECTED[3:2],ret[13:12]}),
        .S({1'b0,1'b0,wr_ptr_r[13:12]}));
  (* ADDER_THRESHOLD = "35" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY4 full00_carry_i_10
       (.CI(1'b0),
        .CO({full00_carry_i_10_n_0,full00_carry_i_10_n_1,full00_carry_i_10_n_2,full00_carry_i_10_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,addr1_i}),
        .O(ret[3:0]),
        .S({wr_ptr_r[3:1],full00_carry_i_11_n_0}));
  LUT2 #(
    .INIT(4'h6)) 
    full00_carry_i_11
       (.I0(addr1_i),
        .I1(p_4_in),
        .O(full00_carry_i_11_n_0));
  LUT6 #(
    .INIT(64'h0000000000000002)) 
    full_r_i_1__0
       (.I0(full_r_i_2_n_0),
        .I1(full_r_i_3_n_0),
        .I2(\data_r_reg[1][7] [3]),
        .I3(\data_r_reg[1][7] [2]),
        .I4(O[3]),
        .I5(O[2]),
        .O(fifo_out_full));
  LUT6 #(
    .INIT(64'h0000000000000001)) 
    full_r_i_2
       (.I0(fifo_out_count[1]),
        .I1(O[1]),
        .I2(\data_r_reg[1][7] [0]),
        .I3(\data_r_reg[1][7] [1]),
        .I4(fifo_out_count[2]),
        .I5(fifo_out_count[4]),
        .O(full_r_i_2_n_0));
  LUT4 #(
    .INIT(16'hFFFD)) 
    full_r_i_3
       (.I0(fifo_out_count[5]),
        .I1(fifo_out_count[3]),
        .I2(O[0]),
        .I3(fifo_out_count[0]),
        .O(full_r_i_3_n_0));
  FDRE full_r_reg
       (.C(axil_aclk),
        .CE(1'b1),
        .D(fifo_out_full),
        .Q(full_r),
        .R(rst));
  xrf_dpp_comblock_0_0_GraySync \g_async.i_sync_rd2wr 
       (.DI({p_1_in[7:6],\g_async.i_sync_rd2wr_n_13 ,p_1_in[4]}),
        .S({\g_async.i_sync_rd2wr_n_0 ,\g_async.i_sync_rd2wr_n_1 ,\g_async.i_sync_rd2wr_n_2 ,\g_async.i_sync_rd2wr_n_3 }),
        .axil_aclk(axil_aclk),
        .\data_r_reg[1][11]_0 ({\g_async.i_sync_rd2wr_n_15 ,p_1_in[10:9]}),
        .\data_r_reg[1][13]_0 ({\g_async.i_sync_rd2wr_n_5 ,\g_async.i_sync_rd2wr_n_6 ,\g_async.i_sync_rd2wr_n_7 ,\g_async.i_sync_rd2wr_n_8 }),
        .\data_r_reg[1][13]_1 ({\g_async.i_sync_rd2wr_n_9 ,\g_async.i_sync_rd2wr_n_10 }),
        .\data_r_reg[1][3]_0 ({\g_async.i_sync_rd2wr_n_23 ,\g_async.i_sync_rd2wr_n_24 ,\g_async.i_sync_rd2wr_n_25 ,\g_async.i_sync_rd2wr_n_26 }),
        .\data_r_reg[1][8]_0 (\g_async.i_sync_rd2wr_n_4 ),
        .full00_carry__2(\wr_ptr_r_reg[3]_0 ),
        .p_1_in({p_1_in[12],p_1_in[3:0]}),
        .rd_ptr_r(rd_ptr_r),
        .ret(ret),
        .wr_ptr_r(wr_ptr_r[13]));
  xrf_dpp_comblock_0_0_GraySync_1 \g_async.i_sync_wr2rd 
       (.DI({\g_async.i_sync_wr2rd_n_11 ,\g_async.i_sync_wr2rd_n_12 }),
        .O({empty00_carry__0_i_9__0_n_4,empty00_carry__0_i_9__0_n_5,empty00_carry__0_i_9__0_n_6,empty00_carry__0_i_9__0_n_7}),
        .S({\g_async.i_sync_wr2rd_n_0 ,\g_async.i_sync_wr2rd_n_1 ,\g_async.i_sync_wr2rd_n_2 ,\g_async.i_sync_wr2rd_n_3 }),
        .\data_r_reg[0][0]_0 (addr1_i),
        .\data_r_reg[1][13]_0 ({\g_async.i_sync_wr2rd_n_4 ,\g_async.i_sync_wr2rd_n_5 ,\g_async.i_sync_wr2rd_n_6 ,\g_async.i_sync_wr2rd_n_7 }),
        .\data_r_reg[1][13]_1 ({\g_async.i_sync_wr2rd_n_9 ,\g_async.i_sync_wr2rd_n_10 }),
        .\data_r_reg[1][13]_2 (\g_async.i_sync_wr2rd_n_13 ),
        .\data_r_reg[1][3]_0 (\g_async.i_sync_wr2rd_n_8 ),
        .empty00_carry(empty00_carry_i_4__0_n_0),
        .empty00_carry_0({empty00_carry_i_11_n_4,empty00_carry_i_11_n_5,empty00_carry_i_11_n_6}),
        .empty00_carry__1({empty00_carry__1_i_9__0_n_4,empty00_carry__1_i_9__0_n_5,empty00_carry__1_i_9__0_n_6,empty00_carry__1_i_9__0_n_7}),
        .empty00_carry__2(empty00_carry_i_10_n_0),
        .empty00_carry__2_0({empty00_carry__2_i_4__0_n_6,empty00_carry__2_i_4__0_n_7}),
        .fifo_clk_i(fifo_clk_i),
        .rd_ptr_r(rd_ptr_r[13]),
        .\rd_ptr_r_reg[0] ({\g_async.i_sync_wr2rd_n_14 ,\g_async.i_sync_wr2rd_n_15 ,\g_async.i_sync_wr2rd_n_16 ,\g_async.i_sync_wr2rd_n_17 }),
        .wr_ptr_r(wr_ptr_r));
  xrf_dpp_comblock_0_0_tdpram__parameterized0 i_memory
       (.axil_aclk(axil_aclk),
        .axil_wdata(axil_wdata),
        .fifo_clk_i(fifo_clk_i),
        .fifo_data_o(fifo_data_o),
        .p_4_in(p_4_in),
        .ram_reg_3_0(addr1_i),
        .rd_ptr_r(rd_ptr_r[12:0]),
        .wr_ptr_r(wr_ptr_r[12:1]));
  LUT3 #(
    .INIT(8'h04)) 
    \rd_ptr_r[0]_i_2 
       (.I0(empty_r),
        .I1(fifo_re_i),
        .I2(empty00_carry_i_10_n_0),
        .O(\rd_ptr_r[0]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \rd_ptr_r[0]_i_3 
       (.I0(rd_ptr_r[3]),
        .I1(empty00_carry_i_10_n_0),
        .O(\rd_ptr_r[0]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \rd_ptr_r[0]_i_4 
       (.I0(rd_ptr_r[2]),
        .I1(empty00_carry_i_10_n_0),
        .O(\rd_ptr_r[0]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \rd_ptr_r[0]_i_5 
       (.I0(rd_ptr_r[1]),
        .I1(empty00_carry_i_10_n_0),
        .O(\rd_ptr_r[0]_i_5_n_0 ));
  LUT4 #(
    .INIT(16'h0D02)) 
    \rd_ptr_r[0]_i_6 
       (.I0(fifo_re_i),
        .I1(empty_r),
        .I2(empty00_carry_i_10_n_0),
        .I3(rd_ptr_r[0]),
        .O(\rd_ptr_r[0]_i_6_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \rd_ptr_r[12]_i_2 
       (.I0(rd_ptr_r[13]),
        .I1(empty00_carry_i_10_n_0),
        .O(\rd_ptr_r[12]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \rd_ptr_r[12]_i_3 
       (.I0(rd_ptr_r[12]),
        .I1(empty00_carry_i_10_n_0),
        .O(\rd_ptr_r[12]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \rd_ptr_r[4]_i_2 
       (.I0(rd_ptr_r[7]),
        .I1(empty00_carry_i_10_n_0),
        .O(\rd_ptr_r[4]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \rd_ptr_r[4]_i_3 
       (.I0(rd_ptr_r[6]),
        .I1(empty00_carry_i_10_n_0),
        .O(\rd_ptr_r[4]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \rd_ptr_r[4]_i_4 
       (.I0(rd_ptr_r[5]),
        .I1(empty00_carry_i_10_n_0),
        .O(\rd_ptr_r[4]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \rd_ptr_r[4]_i_5 
       (.I0(rd_ptr_r[4]),
        .I1(empty00_carry_i_10_n_0),
        .O(\rd_ptr_r[4]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \rd_ptr_r[8]_i_2 
       (.I0(rd_ptr_r[11]),
        .I1(empty00_carry_i_10_n_0),
        .O(\rd_ptr_r[8]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \rd_ptr_r[8]_i_3 
       (.I0(rd_ptr_r[10]),
        .I1(empty00_carry_i_10_n_0),
        .O(\rd_ptr_r[8]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \rd_ptr_r[8]_i_4 
       (.I0(rd_ptr_r[9]),
        .I1(empty00_carry_i_10_n_0),
        .O(\rd_ptr_r[8]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \rd_ptr_r[8]_i_5 
       (.I0(rd_ptr_r[8]),
        .I1(empty00_carry_i_10_n_0),
        .O(\rd_ptr_r[8]_i_5_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \rd_ptr_r_reg[0] 
       (.C(fifo_clk_i),
        .CE(1'b1),
        .D(\rd_ptr_r_reg[0]_i_1_n_7 ),
        .Q(rd_ptr_r[0]),
        .R(rst));
  (* ADDER_THRESHOLD = "11" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY4 \rd_ptr_r_reg[0]_i_1 
       (.CI(1'b0),
        .CO({\rd_ptr_r_reg[0]_i_1_n_0 ,\rd_ptr_r_reg[0]_i_1_n_1 ,\rd_ptr_r_reg[0]_i_1_n_2 ,\rd_ptr_r_reg[0]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,\rd_ptr_r[0]_i_2_n_0 }),
        .O({\rd_ptr_r_reg[0]_i_1_n_4 ,\rd_ptr_r_reg[0]_i_1_n_5 ,\rd_ptr_r_reg[0]_i_1_n_6 ,\rd_ptr_r_reg[0]_i_1_n_7 }),
        .S({\rd_ptr_r[0]_i_3_n_0 ,\rd_ptr_r[0]_i_4_n_0 ,\rd_ptr_r[0]_i_5_n_0 ,\rd_ptr_r[0]_i_6_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \rd_ptr_r_reg[10] 
       (.C(fifo_clk_i),
        .CE(1'b1),
        .D(\rd_ptr_r_reg[8]_i_1_n_5 ),
        .Q(rd_ptr_r[10]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \rd_ptr_r_reg[11] 
       (.C(fifo_clk_i),
        .CE(1'b1),
        .D(\rd_ptr_r_reg[8]_i_1_n_4 ),
        .Q(rd_ptr_r[11]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \rd_ptr_r_reg[12] 
       (.C(fifo_clk_i),
        .CE(1'b1),
        .D(\rd_ptr_r_reg[12]_i_1_n_7 ),
        .Q(rd_ptr_r[12]),
        .R(rst));
  (* ADDER_THRESHOLD = "11" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY4 \rd_ptr_r_reg[12]_i_1 
       (.CI(\rd_ptr_r_reg[8]_i_1_n_0 ),
        .CO({\NLW_rd_ptr_r_reg[12]_i_1_CO_UNCONNECTED [3:1],\rd_ptr_r_reg[12]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\NLW_rd_ptr_r_reg[12]_i_1_O_UNCONNECTED [3:2],\rd_ptr_r_reg[12]_i_1_n_6 ,\rd_ptr_r_reg[12]_i_1_n_7 }),
        .S({1'b0,1'b0,\rd_ptr_r[12]_i_2_n_0 ,\rd_ptr_r[12]_i_3_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \rd_ptr_r_reg[13] 
       (.C(fifo_clk_i),
        .CE(1'b1),
        .D(\rd_ptr_r_reg[12]_i_1_n_6 ),
        .Q(rd_ptr_r[13]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \rd_ptr_r_reg[1] 
       (.C(fifo_clk_i),
        .CE(1'b1),
        .D(\rd_ptr_r_reg[0]_i_1_n_6 ),
        .Q(rd_ptr_r[1]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \rd_ptr_r_reg[2] 
       (.C(fifo_clk_i),
        .CE(1'b1),
        .D(\rd_ptr_r_reg[0]_i_1_n_5 ),
        .Q(rd_ptr_r[2]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \rd_ptr_r_reg[3] 
       (.C(fifo_clk_i),
        .CE(1'b1),
        .D(\rd_ptr_r_reg[0]_i_1_n_4 ),
        .Q(rd_ptr_r[3]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \rd_ptr_r_reg[4] 
       (.C(fifo_clk_i),
        .CE(1'b1),
        .D(\rd_ptr_r_reg[4]_i_1_n_7 ),
        .Q(rd_ptr_r[4]),
        .R(rst));
  (* ADDER_THRESHOLD = "11" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY4 \rd_ptr_r_reg[4]_i_1 
       (.CI(\rd_ptr_r_reg[0]_i_1_n_0 ),
        .CO({\rd_ptr_r_reg[4]_i_1_n_0 ,\rd_ptr_r_reg[4]_i_1_n_1 ,\rd_ptr_r_reg[4]_i_1_n_2 ,\rd_ptr_r_reg[4]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\rd_ptr_r_reg[4]_i_1_n_4 ,\rd_ptr_r_reg[4]_i_1_n_5 ,\rd_ptr_r_reg[4]_i_1_n_6 ,\rd_ptr_r_reg[4]_i_1_n_7 }),
        .S({\rd_ptr_r[4]_i_2_n_0 ,\rd_ptr_r[4]_i_3_n_0 ,\rd_ptr_r[4]_i_4_n_0 ,\rd_ptr_r[4]_i_5_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \rd_ptr_r_reg[5] 
       (.C(fifo_clk_i),
        .CE(1'b1),
        .D(\rd_ptr_r_reg[4]_i_1_n_6 ),
        .Q(rd_ptr_r[5]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \rd_ptr_r_reg[6] 
       (.C(fifo_clk_i),
        .CE(1'b1),
        .D(\rd_ptr_r_reg[4]_i_1_n_5 ),
        .Q(rd_ptr_r[6]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \rd_ptr_r_reg[7] 
       (.C(fifo_clk_i),
        .CE(1'b1),
        .D(\rd_ptr_r_reg[4]_i_1_n_4 ),
        .Q(rd_ptr_r[7]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \rd_ptr_r_reg[8] 
       (.C(fifo_clk_i),
        .CE(1'b1),
        .D(\rd_ptr_r_reg[8]_i_1_n_7 ),
        .Q(rd_ptr_r[8]),
        .R(rst));
  (* ADDER_THRESHOLD = "11" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY4 \rd_ptr_r_reg[8]_i_1 
       (.CI(\rd_ptr_r_reg[4]_i_1_n_0 ),
        .CO({\rd_ptr_r_reg[8]_i_1_n_0 ,\rd_ptr_r_reg[8]_i_1_n_1 ,\rd_ptr_r_reg[8]_i_1_n_2 ,\rd_ptr_r_reg[8]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\rd_ptr_r_reg[8]_i_1_n_4 ,\rd_ptr_r_reg[8]_i_1_n_5 ,\rd_ptr_r_reg[8]_i_1_n_6 ,\rd_ptr_r_reg[8]_i_1_n_7 }),
        .S({\rd_ptr_r[8]_i_2_n_0 ,\rd_ptr_r[8]_i_3_n_0 ,\rd_ptr_r[8]_i_4_n_0 ,\rd_ptr_r[8]_i_5_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \rd_ptr_r_reg[9] 
       (.C(fifo_clk_i),
        .CE(1'b1),
        .D(\rd_ptr_r_reg[8]_i_1_n_6 ),
        .Q(rd_ptr_r[9]),
        .R(rst));
  LUT2 #(
    .INIT(4'hE)) 
    valid_r_i_1
       (.I0(fifo_clear_i),
        .I1(\wr_ptr_r_reg[0]_0 ),
        .O(rst));
  (* SOFT_HLUTNM = "soft_lutpair48" *) 
  LUT2 #(
    .INIT(4'h2)) 
    valid_r_i_2
       (.I0(fifo_re_i),
        .I1(empty_r),
        .O(p_2_in));
  FDRE valid_r_reg
       (.C(fifo_clk_i),
        .CE(1'b1),
        .D(p_2_in),
        .Q(fifo_valid_o),
        .R(rst));
  LUT2 #(
    .INIT(4'h2)) 
    \wr_ptr_r[0]_i_3 
       (.I0(wr_ptr_r[3]),
        .I1(\wr_ptr_r_reg[3]_0 ),
        .O(\wr_ptr_r[0]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \wr_ptr_r[0]_i_4 
       (.I0(wr_ptr_r[2]),
        .I1(\wr_ptr_r_reg[3]_0 ),
        .O(\wr_ptr_r[0]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \wr_ptr_r[0]_i_5 
       (.I0(wr_ptr_r[1]),
        .I1(\wr_ptr_r_reg[3]_0 ),
        .O(\wr_ptr_r[0]_i_5_n_0 ));
  LUT5 #(
    .INIT(32'h20000000)) 
    \wr_ptr_r[0]_i_7 
       (.I0(\wr_ptr_r[0]_i_8_n_0 ),
        .I1(\wr_ptr_r[0]_i_9_n_0 ),
        .I2(wr_ptr_r[12]),
        .I3(wr_ptr_r[11]),
        .I4(wr_ptr_r[10]),
        .O(\wr_ptr_r_reg[12]_0 ));
  LUT6 #(
    .INIT(64'h8000000000000000)) 
    \wr_ptr_r[0]_i_8 
       (.I0(wr_ptr_r[7]),
        .I1(wr_ptr_r[6]),
        .I2(addr1_i),
        .I3(wr_ptr_r[1]),
        .I4(wr_ptr_r[8]),
        .I5(wr_ptr_r[9]),
        .O(\wr_ptr_r[0]_i_8_n_0 ));
  LUT4 #(
    .INIT(16'h7FFF)) 
    \wr_ptr_r[0]_i_9 
       (.I0(wr_ptr_r[3]),
        .I1(wr_ptr_r[2]),
        .I2(wr_ptr_r[5]),
        .I3(wr_ptr_r[4]),
        .O(\wr_ptr_r[0]_i_9_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \wr_ptr_r[12]_i_2 
       (.I0(wr_ptr_r[13]),
        .I1(\wr_ptr_r_reg[3]_0 ),
        .O(\wr_ptr_r[12]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \wr_ptr_r[12]_i_3 
       (.I0(wr_ptr_r[12]),
        .I1(\wr_ptr_r_reg[3]_0 ),
        .O(\wr_ptr_r[12]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \wr_ptr_r[4]_i_2 
       (.I0(wr_ptr_r[7]),
        .I1(\wr_ptr_r_reg[3]_0 ),
        .O(\wr_ptr_r[4]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \wr_ptr_r[4]_i_3 
       (.I0(wr_ptr_r[6]),
        .I1(\wr_ptr_r_reg[3]_0 ),
        .O(\wr_ptr_r[4]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \wr_ptr_r[4]_i_4 
       (.I0(wr_ptr_r[5]),
        .I1(\wr_ptr_r_reg[3]_0 ),
        .O(\wr_ptr_r[4]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \wr_ptr_r[4]_i_5 
       (.I0(wr_ptr_r[4]),
        .I1(\wr_ptr_r_reg[3]_0 ),
        .O(\wr_ptr_r[4]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \wr_ptr_r[8]_i_2 
       (.I0(wr_ptr_r[11]),
        .I1(\wr_ptr_r_reg[3]_0 ),
        .O(\wr_ptr_r[8]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \wr_ptr_r[8]_i_3 
       (.I0(wr_ptr_r[10]),
        .I1(\wr_ptr_r_reg[3]_0 ),
        .O(\wr_ptr_r[8]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \wr_ptr_r[8]_i_4 
       (.I0(wr_ptr_r[9]),
        .I1(\wr_ptr_r_reg[3]_0 ),
        .O(\wr_ptr_r[8]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \wr_ptr_r[8]_i_5 
       (.I0(wr_ptr_r[8]),
        .I1(\wr_ptr_r_reg[3]_0 ),
        .O(\wr_ptr_r[8]_i_5_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \wr_ptr_r_reg[0] 
       (.C(axil_aclk),
        .CE(1'b1),
        .D(\wr_ptr_r_reg[0]_i_1_n_7 ),
        .Q(addr1_i),
        .R(rst));
  (* ADDER_THRESHOLD = "11" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY4 \wr_ptr_r_reg[0]_i_1 
       (.CI(1'b0),
        .CO({\wr_ptr_r_reg[0]_i_1_n_0 ,\wr_ptr_r_reg[0]_i_1_n_1 ,\wr_ptr_r_reg[0]_i_1_n_2 ,\wr_ptr_r_reg[0]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,\wr_ptr_r_reg[3]_1 }),
        .O({\wr_ptr_r_reg[0]_i_1_n_4 ,\wr_ptr_r_reg[0]_i_1_n_5 ,\wr_ptr_r_reg[0]_i_1_n_6 ,\wr_ptr_r_reg[0]_i_1_n_7 }),
        .S({\wr_ptr_r[0]_i_3_n_0 ,\wr_ptr_r[0]_i_4_n_0 ,\wr_ptr_r[0]_i_5_n_0 ,S}));
  FDRE #(
    .INIT(1'b0)) 
    \wr_ptr_r_reg[10] 
       (.C(axil_aclk),
        .CE(1'b1),
        .D(\wr_ptr_r_reg[8]_i_1_n_5 ),
        .Q(wr_ptr_r[10]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \wr_ptr_r_reg[11] 
       (.C(axil_aclk),
        .CE(1'b1),
        .D(\wr_ptr_r_reg[8]_i_1_n_4 ),
        .Q(wr_ptr_r[11]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \wr_ptr_r_reg[12] 
       (.C(axil_aclk),
        .CE(1'b1),
        .D(\wr_ptr_r_reg[12]_i_1_n_7 ),
        .Q(wr_ptr_r[12]),
        .R(rst));
  (* ADDER_THRESHOLD = "11" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY4 \wr_ptr_r_reg[12]_i_1 
       (.CI(\wr_ptr_r_reg[8]_i_1_n_0 ),
        .CO({\NLW_wr_ptr_r_reg[12]_i_1_CO_UNCONNECTED [3:1],\wr_ptr_r_reg[12]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\NLW_wr_ptr_r_reg[12]_i_1_O_UNCONNECTED [3:2],\wr_ptr_r_reg[12]_i_1_n_6 ,\wr_ptr_r_reg[12]_i_1_n_7 }),
        .S({1'b0,1'b0,\wr_ptr_r[12]_i_2_n_0 ,\wr_ptr_r[12]_i_3_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \wr_ptr_r_reg[13] 
       (.C(axil_aclk),
        .CE(1'b1),
        .D(\wr_ptr_r_reg[12]_i_1_n_6 ),
        .Q(wr_ptr_r[13]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \wr_ptr_r_reg[1] 
       (.C(axil_aclk),
        .CE(1'b1),
        .D(\wr_ptr_r_reg[0]_i_1_n_6 ),
        .Q(wr_ptr_r[1]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \wr_ptr_r_reg[2] 
       (.C(axil_aclk),
        .CE(1'b1),
        .D(\wr_ptr_r_reg[0]_i_1_n_5 ),
        .Q(wr_ptr_r[2]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \wr_ptr_r_reg[3] 
       (.C(axil_aclk),
        .CE(1'b1),
        .D(\wr_ptr_r_reg[0]_i_1_n_4 ),
        .Q(wr_ptr_r[3]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \wr_ptr_r_reg[4] 
       (.C(axil_aclk),
        .CE(1'b1),
        .D(\wr_ptr_r_reg[4]_i_1_n_7 ),
        .Q(wr_ptr_r[4]),
        .R(rst));
  (* ADDER_THRESHOLD = "11" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY4 \wr_ptr_r_reg[4]_i_1 
       (.CI(\wr_ptr_r_reg[0]_i_1_n_0 ),
        .CO({\wr_ptr_r_reg[4]_i_1_n_0 ,\wr_ptr_r_reg[4]_i_1_n_1 ,\wr_ptr_r_reg[4]_i_1_n_2 ,\wr_ptr_r_reg[4]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\wr_ptr_r_reg[4]_i_1_n_4 ,\wr_ptr_r_reg[4]_i_1_n_5 ,\wr_ptr_r_reg[4]_i_1_n_6 ,\wr_ptr_r_reg[4]_i_1_n_7 }),
        .S({\wr_ptr_r[4]_i_2_n_0 ,\wr_ptr_r[4]_i_3_n_0 ,\wr_ptr_r[4]_i_4_n_0 ,\wr_ptr_r[4]_i_5_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \wr_ptr_r_reg[5] 
       (.C(axil_aclk),
        .CE(1'b1),
        .D(\wr_ptr_r_reg[4]_i_1_n_6 ),
        .Q(wr_ptr_r[5]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \wr_ptr_r_reg[6] 
       (.C(axil_aclk),
        .CE(1'b1),
        .D(\wr_ptr_r_reg[4]_i_1_n_5 ),
        .Q(wr_ptr_r[6]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \wr_ptr_r_reg[7] 
       (.C(axil_aclk),
        .CE(1'b1),
        .D(\wr_ptr_r_reg[4]_i_1_n_4 ),
        .Q(wr_ptr_r[7]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \wr_ptr_r_reg[8] 
       (.C(axil_aclk),
        .CE(1'b1),
        .D(\wr_ptr_r_reg[8]_i_1_n_7 ),
        .Q(wr_ptr_r[8]),
        .R(rst));
  (* ADDER_THRESHOLD = "11" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY4 \wr_ptr_r_reg[8]_i_1 
       (.CI(\wr_ptr_r_reg[4]_i_1_n_0 ),
        .CO({\wr_ptr_r_reg[8]_i_1_n_0 ,\wr_ptr_r_reg[8]_i_1_n_1 ,\wr_ptr_r_reg[8]_i_1_n_2 ,\wr_ptr_r_reg[8]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\wr_ptr_r_reg[8]_i_1_n_4 ,\wr_ptr_r_reg[8]_i_1_n_5 ,\wr_ptr_r_reg[8]_i_1_n_6 ,\wr_ptr_r_reg[8]_i_1_n_7 }),
        .S({\wr_ptr_r[8]_i_2_n_0 ,\wr_ptr_r[8]_i_3_n_0 ,\wr_ptr_r[8]_i_4_n_0 ,\wr_ptr_r[8]_i_5_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \wr_ptr_r_reg[9] 
       (.C(axil_aclk),
        .CE(1'b1),
        .D(\wr_ptr_r_reg[8]_i_1_n_6 ),
        .Q(wr_ptr_r[9]),
        .R(rst));
endmodule

(* ORIG_REF_NAME = "GraySync" *) 
module xrf_dpp_comblock_0_0_GraySync
   (S,
    \data_r_reg[1][8]_0 ,
    \data_r_reg[1][13]_0 ,
    \data_r_reg[1][13]_1 ,
    DI,
    \data_r_reg[1][11]_0 ,
    p_1_in,
    \data_r_reg[1][3]_0 ,
    full00_carry__2,
    ret,
    wr_ptr_r,
    rd_ptr_r,
    axil_aclk);
  output [3:0]S;
  output \data_r_reg[1][8]_0 ;
  output [3:0]\data_r_reg[1][13]_0 ;
  output [1:0]\data_r_reg[1][13]_1 ;
  output [3:0]DI;
  output [2:0]\data_r_reg[1][11]_0 ;
  output [4:0]p_1_in;
  output [3:0]\data_r_reg[1][3]_0 ;
  input full00_carry__2;
  input [13:0]ret;
  input [0:0]wr_ptr_r;
  input [13:0]rd_ptr_r;
  input axil_aclk;

  wire [3:0]DI;
  wire [3:0]S;
  wire axil_aclk;
  wire [12:0]bin2gray;
  wire [13:0]\data_r_reg[0]_1 ;
  wire [2:0]\data_r_reg[1][11]_0 ;
  wire [3:0]\data_r_reg[1][13]_0 ;
  wire [1:0]\data_r_reg[1][13]_1 ;
  wire [3:0]\data_r_reg[1][3]_0 ;
  wire \data_r_reg[1][8]_0 ;
  wire \data_r_reg_n_0_[1][0] ;
  wire \data_r_reg_n_0_[1][12] ;
  wire full00_carry__1_i_10__0_n_0;
  wire full00_carry__2;
  wire p_0_in;
  wire p_0_in11_in;
  wire p_0_in14_in;
  wire p_0_in17_in;
  wire p_0_in20_in;
  wire p_0_in23_in;
  wire p_0_in26_in;
  wire p_0_in29_in;
  wire p_0_in2_in;
  wire p_0_in5_in;
  wire p_0_in8_in;
  wire [4:0]p_1_in;
  wire p_1_in_0;
  wire [13:0]rd_ptr_r;
  wire [13:0]ret;
  wire [0:0]wr_ptr_r;

  LUT2 #(
    .INIT(4'h6)) 
    \data_r[0][0]_i_1__1 
       (.I0(rd_ptr_r[0]),
        .I1(rd_ptr_r[1]),
        .O(bin2gray[0]));
  (* SOFT_HLUTNM = "soft_lutpair37" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \data_r[0][10]_i_1__1 
       (.I0(rd_ptr_r[10]),
        .I1(rd_ptr_r[11]),
        .O(bin2gray[10]));
  (* SOFT_HLUTNM = "soft_lutpair36" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \data_r[0][11]_i_1__1 
       (.I0(rd_ptr_r[11]),
        .I1(rd_ptr_r[12]),
        .O(bin2gray[11]));
  (* SOFT_HLUTNM = "soft_lutpair36" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \data_r[0][12]_i_1__1 
       (.I0(rd_ptr_r[13]),
        .I1(rd_ptr_r[12]),
        .O(bin2gray[12]));
  (* SOFT_HLUTNM = "soft_lutpair41" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \data_r[0][1]_i_1__1 
       (.I0(rd_ptr_r[1]),
        .I1(rd_ptr_r[2]),
        .O(bin2gray[1]));
  (* SOFT_HLUTNM = "soft_lutpair41" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \data_r[0][2]_i_1__1 
       (.I0(rd_ptr_r[2]),
        .I1(rd_ptr_r[3]),
        .O(bin2gray[2]));
  (* SOFT_HLUTNM = "soft_lutpair40" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \data_r[0][3]_i_1__1 
       (.I0(rd_ptr_r[3]),
        .I1(rd_ptr_r[4]),
        .O(bin2gray[3]));
  (* SOFT_HLUTNM = "soft_lutpair40" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \data_r[0][4]_i_1__1 
       (.I0(rd_ptr_r[4]),
        .I1(rd_ptr_r[5]),
        .O(bin2gray[4]));
  (* SOFT_HLUTNM = "soft_lutpair39" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \data_r[0][5]_i_1__1 
       (.I0(rd_ptr_r[5]),
        .I1(rd_ptr_r[6]),
        .O(bin2gray[5]));
  (* SOFT_HLUTNM = "soft_lutpair39" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \data_r[0][6]_i_1__1 
       (.I0(rd_ptr_r[6]),
        .I1(rd_ptr_r[7]),
        .O(bin2gray[6]));
  (* SOFT_HLUTNM = "soft_lutpair38" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \data_r[0][7]_i_1__1 
       (.I0(rd_ptr_r[7]),
        .I1(rd_ptr_r[8]),
        .O(bin2gray[7]));
  (* SOFT_HLUTNM = "soft_lutpair38" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \data_r[0][8]_i_1__1 
       (.I0(rd_ptr_r[8]),
        .I1(rd_ptr_r[9]),
        .O(bin2gray[8]));
  (* SOFT_HLUTNM = "soft_lutpair37" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \data_r[0][9]_i_1__1 
       (.I0(rd_ptr_r[9]),
        .I1(rd_ptr_r[10]),
        .O(bin2gray[9]));
  FDRE #(
    .INIT(1'b0)) 
    \data_r_reg[0][0] 
       (.C(axil_aclk),
        .CE(1'b1),
        .D(bin2gray[0]),
        .Q(\data_r_reg[0]_1 [0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_r_reg[0][10] 
       (.C(axil_aclk),
        .CE(1'b1),
        .D(bin2gray[10]),
        .Q(\data_r_reg[0]_1 [10]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_r_reg[0][11] 
       (.C(axil_aclk),
        .CE(1'b1),
        .D(bin2gray[11]),
        .Q(\data_r_reg[0]_1 [11]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_r_reg[0][12] 
       (.C(axil_aclk),
        .CE(1'b1),
        .D(bin2gray[12]),
        .Q(\data_r_reg[0]_1 [12]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_r_reg[0][13] 
       (.C(axil_aclk),
        .CE(1'b1),
        .D(rd_ptr_r[13]),
        .Q(\data_r_reg[0]_1 [13]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_r_reg[0][1] 
       (.C(axil_aclk),
        .CE(1'b1),
        .D(bin2gray[1]),
        .Q(\data_r_reg[0]_1 [1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_r_reg[0][2] 
       (.C(axil_aclk),
        .CE(1'b1),
        .D(bin2gray[2]),
        .Q(\data_r_reg[0]_1 [2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_r_reg[0][3] 
       (.C(axil_aclk),
        .CE(1'b1),
        .D(bin2gray[3]),
        .Q(\data_r_reg[0]_1 [3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_r_reg[0][4] 
       (.C(axil_aclk),
        .CE(1'b1),
        .D(bin2gray[4]),
        .Q(\data_r_reg[0]_1 [4]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_r_reg[0][5] 
       (.C(axil_aclk),
        .CE(1'b1),
        .D(bin2gray[5]),
        .Q(\data_r_reg[0]_1 [5]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_r_reg[0][6] 
       (.C(axil_aclk),
        .CE(1'b1),
        .D(bin2gray[6]),
        .Q(\data_r_reg[0]_1 [6]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_r_reg[0][7] 
       (.C(axil_aclk),
        .CE(1'b1),
        .D(bin2gray[7]),
        .Q(\data_r_reg[0]_1 [7]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_r_reg[0][8] 
       (.C(axil_aclk),
        .CE(1'b1),
        .D(bin2gray[8]),
        .Q(\data_r_reg[0]_1 [8]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_r_reg[0][9] 
       (.C(axil_aclk),
        .CE(1'b1),
        .D(bin2gray[9]),
        .Q(\data_r_reg[0]_1 [9]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_r_reg[1][0] 
       (.C(axil_aclk),
        .CE(1'b1),
        .D(\data_r_reg[0]_1 [0]),
        .Q(\data_r_reg_n_0_[1][0] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_r_reg[1][10] 
       (.C(axil_aclk),
        .CE(1'b1),
        .D(\data_r_reg[0]_1 [10]),
        .Q(p_0_in26_in),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_r_reg[1][11] 
       (.C(axil_aclk),
        .CE(1'b1),
        .D(\data_r_reg[0]_1 [11]),
        .Q(p_0_in29_in),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_r_reg[1][12] 
       (.C(axil_aclk),
        .CE(1'b1),
        .D(\data_r_reg[0]_1 [12]),
        .Q(\data_r_reg_n_0_[1][12] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_r_reg[1][13] 
       (.C(axil_aclk),
        .CE(1'b1),
        .D(\data_r_reg[0]_1 [13]),
        .Q(p_1_in_0),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_r_reg[1][1] 
       (.C(axil_aclk),
        .CE(1'b1),
        .D(\data_r_reg[0]_1 [1]),
        .Q(p_0_in),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_r_reg[1][2] 
       (.C(axil_aclk),
        .CE(1'b1),
        .D(\data_r_reg[0]_1 [2]),
        .Q(p_0_in2_in),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_r_reg[1][3] 
       (.C(axil_aclk),
        .CE(1'b1),
        .D(\data_r_reg[0]_1 [3]),
        .Q(p_0_in5_in),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_r_reg[1][4] 
       (.C(axil_aclk),
        .CE(1'b1),
        .D(\data_r_reg[0]_1 [4]),
        .Q(p_0_in8_in),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_r_reg[1][5] 
       (.C(axil_aclk),
        .CE(1'b1),
        .D(\data_r_reg[0]_1 [5]),
        .Q(p_0_in11_in),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_r_reg[1][6] 
       (.C(axil_aclk),
        .CE(1'b1),
        .D(\data_r_reg[0]_1 [6]),
        .Q(p_0_in14_in),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_r_reg[1][7] 
       (.C(axil_aclk),
        .CE(1'b1),
        .D(\data_r_reg[0]_1 [7]),
        .Q(p_0_in17_in),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_r_reg[1][8] 
       (.C(axil_aclk),
        .CE(1'b1),
        .D(\data_r_reg[0]_1 [8]),
        .Q(p_0_in20_in),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_r_reg[1][9] 
       (.C(axil_aclk),
        .CE(1'b1),
        .D(\data_r_reg[0]_1 [9]),
        .Q(p_0_in23_in),
        .R(1'b0));
  LUT2 #(
    .INIT(4'h6)) 
    full00_carry__0_i_1__0
       (.I0(p_0_in17_in),
        .I1(\data_r_reg[1][8]_0 ),
        .O(DI[3]));
  LUT3 #(
    .INIT(8'h96)) 
    full00_carry__0_i_2__0
       (.I0(p_0_in17_in),
        .I1(\data_r_reg[1][8]_0 ),
        .I2(p_0_in14_in),
        .O(DI[2]));
  LUT4 #(
    .INIT(16'h6996)) 
    full00_carry__0_i_3__0
       (.I0(p_0_in11_in),
        .I1(p_0_in17_in),
        .I2(\data_r_reg[1][8]_0 ),
        .I3(p_0_in14_in),
        .O(DI[1]));
  LUT5 #(
    .INIT(32'h96696996)) 
    full00_carry__0_i_4__0
       (.I0(p_0_in8_in),
        .I1(p_0_in14_in),
        .I2(\data_r_reg[1][8]_0 ),
        .I3(p_0_in17_in),
        .I4(p_0_in11_in),
        .O(DI[0]));
  LUT4 #(
    .INIT(16'h6966)) 
    full00_carry__0_i_5__0
       (.I0(\data_r_reg[1][8]_0 ),
        .I1(p_0_in17_in),
        .I2(full00_carry__2),
        .I3(ret[7]),
        .O(S[3]));
  LUT5 #(
    .INIT(32'h96699696)) 
    full00_carry__0_i_6
       (.I0(p_0_in17_in),
        .I1(\data_r_reg[1][8]_0 ),
        .I2(p_0_in14_in),
        .I3(full00_carry__2),
        .I4(ret[6]),
        .O(S[2]));
  LUT6 #(
    .INIT(64'h6996966969966996)) 
    full00_carry__0_i_7__0
       (.I0(p_0_in14_in),
        .I1(\data_r_reg[1][8]_0 ),
        .I2(p_0_in17_in),
        .I3(p_0_in11_in),
        .I4(full00_carry__2),
        .I5(ret[5]),
        .O(S[1]));
  LUT3 #(
    .INIT(8'h9A)) 
    full00_carry__0_i_8__0
       (.I0(DI[0]),
        .I1(full00_carry__2),
        .I2(ret[4]),
        .O(S[0]));
  LUT5 #(
    .INIT(32'h96696996)) 
    full00_carry__1_i_10__0
       (.I0(p_0_in23_in),
        .I1(p_0_in29_in),
        .I2(\data_r_reg_n_0_[1][12] ),
        .I3(p_1_in_0),
        .I4(p_0_in26_in),
        .O(full00_carry__1_i_10__0_n_0));
  LUT3 #(
    .INIT(8'h69)) 
    full00_carry__1_i_1__0
       (.I0(p_0_in29_in),
        .I1(\data_r_reg_n_0_[1][12] ),
        .I2(p_1_in_0),
        .O(\data_r_reg[1][11]_0 [2]));
  LUT4 #(
    .INIT(16'h9669)) 
    full00_carry__1_i_2__0
       (.I0(p_0_in26_in),
        .I1(p_1_in_0),
        .I2(\data_r_reg_n_0_[1][12] ),
        .I3(p_0_in29_in),
        .O(\data_r_reg[1][11]_0 [1]));
  LUT5 #(
    .INIT(32'h69969669)) 
    full00_carry__1_i_3__0
       (.I0(p_0_in26_in),
        .I1(p_1_in_0),
        .I2(\data_r_reg_n_0_[1][12] ),
        .I3(p_0_in29_in),
        .I4(p_0_in23_in),
        .O(\data_r_reg[1][11]_0 [0]));
  LUT6 #(
    .INIT(64'h9669699669969669)) 
    full00_carry__1_i_4__0
       (.I0(p_0_in20_in),
        .I1(p_0_in26_in),
        .I2(p_1_in_0),
        .I3(\data_r_reg_n_0_[1][12] ),
        .I4(p_0_in29_in),
        .I5(p_0_in23_in),
        .O(\data_r_reg[1][8]_0 ));
  LUT5 #(
    .INIT(32'h69966969)) 
    full00_carry__1_i_5__0
       (.I0(p_1_in_0),
        .I1(\data_r_reg_n_0_[1][12] ),
        .I2(p_0_in29_in),
        .I3(full00_carry__2),
        .I4(ret[11]),
        .O(\data_r_reg[1][13]_0 [3]));
  LUT6 #(
    .INIT(64'h9669699696699669)) 
    full00_carry__1_i_6__0
       (.I0(p_0_in29_in),
        .I1(\data_r_reg_n_0_[1][12] ),
        .I2(p_1_in_0),
        .I3(p_0_in26_in),
        .I4(full00_carry__2),
        .I5(ret[10]),
        .O(\data_r_reg[1][13]_0 [2]));
  LUT3 #(
    .INIT(8'h65)) 
    full00_carry__1_i_7
       (.I0(full00_carry__1_i_10__0_n_0),
        .I1(full00_carry__2),
        .I2(ret[9]),
        .O(\data_r_reg[1][13]_0 [1]));
  LUT3 #(
    .INIT(8'h9A)) 
    full00_carry__1_i_8__0
       (.I0(\data_r_reg[1][8]_0 ),
        .I1(full00_carry__2),
        .I2(ret[8]),
        .O(\data_r_reg[1][13]_0 [0]));
  LUT2 #(
    .INIT(4'h9)) 
    full00_carry__2_i_1__0
       (.I0(\data_r_reg_n_0_[1][12] ),
        .I1(p_1_in_0),
        .O(p_1_in[4]));
  LUT4 #(
    .INIT(16'h59A9)) 
    full00_carry__2_i_2
       (.I0(p_1_in_0),
        .I1(ret[13]),
        .I2(full00_carry__2),
        .I3(wr_ptr_r),
        .O(\data_r_reg[1][13]_1 [1]));
  LUT4 #(
    .INIT(16'h9699)) 
    full00_carry__2_i_3
       (.I0(\data_r_reg_n_0_[1][12] ),
        .I1(p_1_in_0),
        .I2(full00_carry__2),
        .I3(ret[12]),
        .O(\data_r_reg[1][13]_1 [0]));
  LUT6 #(
    .INIT(64'h6996966996696996)) 
    full00_carry_i_1__0
       (.I0(p_0_in5_in),
        .I1(p_0_in11_in),
        .I2(p_0_in17_in),
        .I3(\data_r_reg[1][8]_0 ),
        .I4(p_0_in14_in),
        .I5(p_0_in8_in),
        .O(p_1_in[3]));
  LUT2 #(
    .INIT(4'h6)) 
    full00_carry_i_2__0
       (.I0(p_0_in2_in),
        .I1(p_1_in[3]),
        .O(p_1_in[2]));
  LUT3 #(
    .INIT(8'h96)) 
    full00_carry_i_3__0
       (.I0(p_0_in),
        .I1(p_1_in[3]),
        .I2(p_0_in2_in),
        .O(p_1_in[1]));
  LUT4 #(
    .INIT(16'h6996)) 
    full00_carry_i_4__0
       (.I0(\data_r_reg_n_0_[1][0] ),
        .I1(p_0_in2_in),
        .I2(p_1_in[3]),
        .I3(p_0_in),
        .O(p_1_in[0]));
  LUT3 #(
    .INIT(8'h9A)) 
    full00_carry_i_5__0
       (.I0(p_1_in[3]),
        .I1(full00_carry__2),
        .I2(ret[3]),
        .O(\data_r_reg[1][3]_0 [3]));
  LUT4 #(
    .INIT(16'h6966)) 
    full00_carry_i_6__0
       (.I0(p_1_in[3]),
        .I1(p_0_in2_in),
        .I2(full00_carry__2),
        .I3(ret[2]),
        .O(\data_r_reg[1][3]_0 [2]));
  LUT5 #(
    .INIT(32'h96699696)) 
    full00_carry_i_7__0
       (.I0(p_0_in2_in),
        .I1(p_1_in[3]),
        .I2(p_0_in),
        .I3(full00_carry__2),
        .I4(ret[1]),
        .O(\data_r_reg[1][3]_0 [1]));
  LUT6 #(
    .INIT(64'h6996966969966996)) 
    full00_carry_i_8__0
       (.I0(p_0_in),
        .I1(p_1_in[3]),
        .I2(p_0_in2_in),
        .I3(\data_r_reg_n_0_[1][0] ),
        .I4(full00_carry__2),
        .I5(ret[0]),
        .O(\data_r_reg[1][3]_0 [0]));
endmodule

(* ORIG_REF_NAME = "GraySync" *) 
module xrf_dpp_comblock_0_0_GraySync_1
   (S,
    \data_r_reg[1][13]_0 ,
    \data_r_reg[1][3]_0 ,
    \data_r_reg[1][13]_1 ,
    DI,
    \data_r_reg[1][13]_2 ,
    \rd_ptr_r_reg[0] ,
    O,
    empty00_carry__2,
    empty00_carry__1,
    empty00_carry__2_0,
    rd_ptr_r,
    wr_ptr_r,
    \data_r_reg[0][0]_0 ,
    empty00_carry,
    empty00_carry_0,
    fifo_clk_i);
  output [3:0]S;
  output [3:0]\data_r_reg[1][13]_0 ;
  output \data_r_reg[1][3]_0 ;
  output [1:0]\data_r_reg[1][13]_1 ;
  output [1:0]DI;
  output [0:0]\data_r_reg[1][13]_2 ;
  output [3:0]\rd_ptr_r_reg[0] ;
  input [3:0]O;
  input empty00_carry__2;
  input [3:0]empty00_carry__1;
  input [1:0]empty00_carry__2_0;
  input [0:0]rd_ptr_r;
  input [12:0]wr_ptr_r;
  input \data_r_reg[0][0]_0 ;
  input [0:0]empty00_carry;
  input [2:0]empty00_carry_0;
  input fifo_clk_i;

  wire [1:0]DI;
  wire [3:0]O;
  wire [3:0]S;
  wire [12:0]bin2gray;
  wire \data_r_reg[0][0]_0 ;
  wire [3:0]\data_r_reg[1][13]_0 ;
  wire [1:0]\data_r_reg[1][13]_1 ;
  wire [0:0]\data_r_reg[1][13]_2 ;
  wire \data_r_reg[1][3]_0 ;
  wire \data_r_reg_n_0_[0][0] ;
  wire \data_r_reg_n_0_[0][10] ;
  wire \data_r_reg_n_0_[0][11] ;
  wire \data_r_reg_n_0_[0][12] ;
  wire \data_r_reg_n_0_[0][13] ;
  wire \data_r_reg_n_0_[0][1] ;
  wire \data_r_reg_n_0_[0][2] ;
  wire \data_r_reg_n_0_[0][3] ;
  wire \data_r_reg_n_0_[0][4] ;
  wire \data_r_reg_n_0_[0][5] ;
  wire \data_r_reg_n_0_[0][6] ;
  wire \data_r_reg_n_0_[0][7] ;
  wire \data_r_reg_n_0_[0][8] ;
  wire \data_r_reg_n_0_[0][9] ;
  wire \data_r_reg_n_0_[1][0] ;
  wire \data_r_reg_n_0_[1][12] ;
  wire [0:0]empty00_carry;
  wire [2:0]empty00_carry_0;
  wire empty00_carry__0_i_10__0_n_0;
  wire [3:0]empty00_carry__1;
  wire empty00_carry__1_i_10__0_n_0;
  wire empty00_carry__2;
  wire [1:0]empty00_carry__2_0;
  wire empty00_carry_i_9__0_n_0;
  wire fifo_clk_i;
  wire p_0_in;
  wire p_0_in11_in;
  wire p_0_in14_in;
  wire p_0_in17_in;
  wire p_0_in20_in;
  wire p_0_in23_in;
  wire p_0_in26_in;
  wire p_0_in29_in;
  wire p_0_in2_in;
  wire p_0_in5_in;
  wire p_0_in8_in;
  wire p_1_in;
  wire [0:0]rd_ptr_r;
  wire [3:0]\rd_ptr_r_reg[0] ;
  wire [12:0]wr_ptr_r;

  LUT2 #(
    .INIT(4'h6)) 
    \data_r[0][0]_i_1__2 
       (.I0(\data_r_reg[0][0]_0 ),
        .I1(wr_ptr_r[0]),
        .O(bin2gray[0]));
  (* SOFT_HLUTNM = "soft_lutpair43" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \data_r[0][10]_i_1__2 
       (.I0(wr_ptr_r[9]),
        .I1(wr_ptr_r[10]),
        .O(bin2gray[10]));
  (* SOFT_HLUTNM = "soft_lutpair42" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \data_r[0][11]_i_1__2 
       (.I0(wr_ptr_r[10]),
        .I1(wr_ptr_r[11]),
        .O(bin2gray[11]));
  (* SOFT_HLUTNM = "soft_lutpair42" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \data_r[0][12]_i_1__2 
       (.I0(wr_ptr_r[12]),
        .I1(wr_ptr_r[11]),
        .O(bin2gray[12]));
  (* SOFT_HLUTNM = "soft_lutpair47" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \data_r[0][1]_i_1__2 
       (.I0(wr_ptr_r[0]),
        .I1(wr_ptr_r[1]),
        .O(bin2gray[1]));
  (* SOFT_HLUTNM = "soft_lutpair47" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \data_r[0][2]_i_1__2 
       (.I0(wr_ptr_r[1]),
        .I1(wr_ptr_r[2]),
        .O(bin2gray[2]));
  (* SOFT_HLUTNM = "soft_lutpair46" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \data_r[0][3]_i_1__2 
       (.I0(wr_ptr_r[2]),
        .I1(wr_ptr_r[3]),
        .O(bin2gray[3]));
  (* SOFT_HLUTNM = "soft_lutpair46" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \data_r[0][4]_i_1__2 
       (.I0(wr_ptr_r[3]),
        .I1(wr_ptr_r[4]),
        .O(bin2gray[4]));
  (* SOFT_HLUTNM = "soft_lutpair45" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \data_r[0][5]_i_1__2 
       (.I0(wr_ptr_r[4]),
        .I1(wr_ptr_r[5]),
        .O(bin2gray[5]));
  (* SOFT_HLUTNM = "soft_lutpair45" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \data_r[0][6]_i_1__2 
       (.I0(wr_ptr_r[5]),
        .I1(wr_ptr_r[6]),
        .O(bin2gray[6]));
  (* SOFT_HLUTNM = "soft_lutpair44" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \data_r[0][7]_i_1__2 
       (.I0(wr_ptr_r[6]),
        .I1(wr_ptr_r[7]),
        .O(bin2gray[7]));
  (* SOFT_HLUTNM = "soft_lutpair44" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \data_r[0][8]_i_1__2 
       (.I0(wr_ptr_r[7]),
        .I1(wr_ptr_r[8]),
        .O(bin2gray[8]));
  (* SOFT_HLUTNM = "soft_lutpair43" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \data_r[0][9]_i_1__2 
       (.I0(wr_ptr_r[8]),
        .I1(wr_ptr_r[9]),
        .O(bin2gray[9]));
  FDRE #(
    .INIT(1'b0)) 
    \data_r_reg[0][0] 
       (.C(fifo_clk_i),
        .CE(1'b1),
        .D(bin2gray[0]),
        .Q(\data_r_reg_n_0_[0][0] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_r_reg[0][10] 
       (.C(fifo_clk_i),
        .CE(1'b1),
        .D(bin2gray[10]),
        .Q(\data_r_reg_n_0_[0][10] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_r_reg[0][11] 
       (.C(fifo_clk_i),
        .CE(1'b1),
        .D(bin2gray[11]),
        .Q(\data_r_reg_n_0_[0][11] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_r_reg[0][12] 
       (.C(fifo_clk_i),
        .CE(1'b1),
        .D(bin2gray[12]),
        .Q(\data_r_reg_n_0_[0][12] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_r_reg[0][13] 
       (.C(fifo_clk_i),
        .CE(1'b1),
        .D(wr_ptr_r[12]),
        .Q(\data_r_reg_n_0_[0][13] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_r_reg[0][1] 
       (.C(fifo_clk_i),
        .CE(1'b1),
        .D(bin2gray[1]),
        .Q(\data_r_reg_n_0_[0][1] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_r_reg[0][2] 
       (.C(fifo_clk_i),
        .CE(1'b1),
        .D(bin2gray[2]),
        .Q(\data_r_reg_n_0_[0][2] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_r_reg[0][3] 
       (.C(fifo_clk_i),
        .CE(1'b1),
        .D(bin2gray[3]),
        .Q(\data_r_reg_n_0_[0][3] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_r_reg[0][4] 
       (.C(fifo_clk_i),
        .CE(1'b1),
        .D(bin2gray[4]),
        .Q(\data_r_reg_n_0_[0][4] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_r_reg[0][5] 
       (.C(fifo_clk_i),
        .CE(1'b1),
        .D(bin2gray[5]),
        .Q(\data_r_reg_n_0_[0][5] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_r_reg[0][6] 
       (.C(fifo_clk_i),
        .CE(1'b1),
        .D(bin2gray[6]),
        .Q(\data_r_reg_n_0_[0][6] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_r_reg[0][7] 
       (.C(fifo_clk_i),
        .CE(1'b1),
        .D(bin2gray[7]),
        .Q(\data_r_reg_n_0_[0][7] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_r_reg[0][8] 
       (.C(fifo_clk_i),
        .CE(1'b1),
        .D(bin2gray[8]),
        .Q(\data_r_reg_n_0_[0][8] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_r_reg[0][9] 
       (.C(fifo_clk_i),
        .CE(1'b1),
        .D(bin2gray[9]),
        .Q(\data_r_reg_n_0_[0][9] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_r_reg[1][0] 
       (.C(fifo_clk_i),
        .CE(1'b1),
        .D(\data_r_reg_n_0_[0][0] ),
        .Q(\data_r_reg_n_0_[1][0] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_r_reg[1][10] 
       (.C(fifo_clk_i),
        .CE(1'b1),
        .D(\data_r_reg_n_0_[0][10] ),
        .Q(p_0_in26_in),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_r_reg[1][11] 
       (.C(fifo_clk_i),
        .CE(1'b1),
        .D(\data_r_reg_n_0_[0][11] ),
        .Q(p_0_in29_in),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_r_reg[1][12] 
       (.C(fifo_clk_i),
        .CE(1'b1),
        .D(\data_r_reg_n_0_[0][12] ),
        .Q(\data_r_reg_n_0_[1][12] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_r_reg[1][13] 
       (.C(fifo_clk_i),
        .CE(1'b1),
        .D(\data_r_reg_n_0_[0][13] ),
        .Q(p_1_in),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_r_reg[1][1] 
       (.C(fifo_clk_i),
        .CE(1'b1),
        .D(\data_r_reg_n_0_[0][1] ),
        .Q(p_0_in),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_r_reg[1][2] 
       (.C(fifo_clk_i),
        .CE(1'b1),
        .D(\data_r_reg_n_0_[0][2] ),
        .Q(p_0_in2_in),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_r_reg[1][3] 
       (.C(fifo_clk_i),
        .CE(1'b1),
        .D(\data_r_reg_n_0_[0][3] ),
        .Q(p_0_in5_in),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_r_reg[1][4] 
       (.C(fifo_clk_i),
        .CE(1'b1),
        .D(\data_r_reg_n_0_[0][4] ),
        .Q(p_0_in8_in),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_r_reg[1][5] 
       (.C(fifo_clk_i),
        .CE(1'b1),
        .D(\data_r_reg_n_0_[0][5] ),
        .Q(p_0_in11_in),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_r_reg[1][6] 
       (.C(fifo_clk_i),
        .CE(1'b1),
        .D(\data_r_reg_n_0_[0][6] ),
        .Q(p_0_in14_in),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_r_reg[1][7] 
       (.C(fifo_clk_i),
        .CE(1'b1),
        .D(\data_r_reg_n_0_[0][7] ),
        .Q(p_0_in17_in),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_r_reg[1][8] 
       (.C(fifo_clk_i),
        .CE(1'b1),
        .D(\data_r_reg_n_0_[0][8] ),
        .Q(p_0_in20_in),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_r_reg[1][9] 
       (.C(fifo_clk_i),
        .CE(1'b1),
        .D(\data_r_reg_n_0_[0][9] ),
        .Q(p_0_in23_in),
        .R(1'b0));
  LUT6 #(
    .INIT(64'h9669699669969669)) 
    empty00_carry__0_i_10__0
       (.I0(p_0_in17_in),
        .I1(p_0_in23_in),
        .I2(p_0_in29_in),
        .I3(empty00_carry__1_i_10__0_n_0),
        .I4(p_0_in26_in),
        .I5(p_0_in20_in),
        .O(empty00_carry__0_i_10__0_n_0));
  LUT4 #(
    .INIT(16'h2DD2)) 
    empty00_carry__0_i_5__0
       (.I0(O[3]),
        .I1(empty00_carry__2),
        .I2(empty00_carry_i_9__0_n_0),
        .I3(p_0_in17_in),
        .O(S[3]));
  LUT5 #(
    .INIT(32'hD22D2DD2)) 
    empty00_carry__0_i_6__0
       (.I0(O[2]),
        .I1(empty00_carry__2),
        .I2(p_0_in17_in),
        .I3(empty00_carry_i_9__0_n_0),
        .I4(p_0_in14_in),
        .O(S[2]));
  LUT6 #(
    .INIT(64'h2DD2D22DD22D2DD2)) 
    empty00_carry__0_i_7__0
       (.I0(O[1]),
        .I1(empty00_carry__2),
        .I2(p_0_in14_in),
        .I3(empty00_carry_i_9__0_n_0),
        .I4(p_0_in17_in),
        .I5(p_0_in11_in),
        .O(S[1]));
  LUT6 #(
    .INIT(64'h2DD2D22DD22D2DD2)) 
    empty00_carry__0_i_8__0
       (.I0(O[0]),
        .I1(empty00_carry__2),
        .I2(p_0_in11_in),
        .I3(empty00_carry__0_i_10__0_n_0),
        .I4(p_0_in14_in),
        .I5(p_0_in8_in),
        .O(S[0]));
  LUT2 #(
    .INIT(4'h6)) 
    empty00_carry__1_i_10__0
       (.I0(p_1_in),
        .I1(\data_r_reg_n_0_[1][12] ),
        .O(empty00_carry__1_i_10__0_n_0));
  LUT5 #(
    .INIT(32'h2DD2D22D)) 
    empty00_carry__1_i_5__0
       (.I0(empty00_carry__1[3]),
        .I1(empty00_carry__2),
        .I2(p_1_in),
        .I3(\data_r_reg_n_0_[1][12] ),
        .I4(p_0_in29_in),
        .O(\data_r_reg[1][13]_0 [3]));
  LUT6 #(
    .INIT(64'hD22D2DD22DD2D22D)) 
    empty00_carry__1_i_6__0
       (.I0(empty00_carry__1[2]),
        .I1(empty00_carry__2),
        .I2(p_0_in29_in),
        .I3(\data_r_reg_n_0_[1][12] ),
        .I4(p_1_in),
        .I5(p_0_in26_in),
        .O(\data_r_reg[1][13]_0 [2]));
  LUT6 #(
    .INIT(64'hD22D2DD22DD2D22D)) 
    empty00_carry__1_i_7__0
       (.I0(empty00_carry__1[1]),
        .I1(empty00_carry__2),
        .I2(p_0_in26_in),
        .I3(empty00_carry__1_i_10__0_n_0),
        .I4(p_0_in29_in),
        .I5(p_0_in23_in),
        .O(\data_r_reg[1][13]_0 [1]));
  LUT3 #(
    .INIT(8'hD2)) 
    empty00_carry__1_i_8__0
       (.I0(empty00_carry__1[0]),
        .I1(empty00_carry__2),
        .I2(empty00_carry_i_9__0_n_0),
        .O(\data_r_reg[1][13]_0 [0]));
  LUT2 #(
    .INIT(4'h6)) 
    empty00_carry__2_i_1__0
       (.I0(p_1_in),
        .I1(\data_r_reg_n_0_[1][12] ),
        .O(\data_r_reg[1][13]_2 ));
  LUT4 #(
    .INIT(16'h59A9)) 
    empty00_carry__2_i_2__0
       (.I0(p_1_in),
        .I1(empty00_carry__2_0[1]),
        .I2(empty00_carry__2),
        .I3(rd_ptr_r),
        .O(\data_r_reg[1][13]_1 [1]));
  LUT4 #(
    .INIT(16'hD22D)) 
    empty00_carry__2_i_3__0
       (.I0(empty00_carry__2_0[0]),
        .I1(empty00_carry__2),
        .I2(\data_r_reg_n_0_[1][12] ),
        .I3(p_1_in),
        .O(\data_r_reg[1][13]_1 [0]));
  LUT6 #(
    .INIT(64'h9669699669969669)) 
    empty00_carry_i_1__0
       (.I0(p_0_in5_in),
        .I1(p_0_in11_in),
        .I2(p_0_in17_in),
        .I3(empty00_carry_i_9__0_n_0),
        .I4(p_0_in14_in),
        .I5(p_0_in8_in),
        .O(\data_r_reg[1][3]_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    empty00_carry_i_2
       (.I0(p_0_in2_in),
        .I1(\data_r_reg[1][3]_0 ),
        .O(DI[1]));
  LUT3 #(
    .INIT(8'h96)) 
    empty00_carry_i_3__0
       (.I0(p_0_in),
        .I1(\data_r_reg[1][3]_0 ),
        .I2(p_0_in2_in),
        .O(DI[0]));
  LUT3 #(
    .INIT(8'h2D)) 
    empty00_carry_i_5__0
       (.I0(empty00_carry_0[2]),
        .I1(empty00_carry__2),
        .I2(\data_r_reg[1][3]_0 ),
        .O(\rd_ptr_r_reg[0] [3]));
  LUT4 #(
    .INIT(16'hD22D)) 
    empty00_carry_i_6
       (.I0(empty00_carry_0[1]),
        .I1(empty00_carry__2),
        .I2(\data_r_reg[1][3]_0 ),
        .I3(p_0_in2_in),
        .O(\rd_ptr_r_reg[0] [2]));
  LUT5 #(
    .INIT(32'h2DD2D22D)) 
    empty00_carry_i_7
       (.I0(empty00_carry_0[0]),
        .I1(empty00_carry__2),
        .I2(p_0_in2_in),
        .I3(\data_r_reg[1][3]_0 ),
        .I4(p_0_in),
        .O(\rd_ptr_r_reg[0] [1]));
  LUT5 #(
    .INIT(32'h96696996)) 
    empty00_carry_i_8__0
       (.I0(empty00_carry),
        .I1(p_0_in),
        .I2(\data_r_reg[1][3]_0 ),
        .I3(p_0_in2_in),
        .I4(\data_r_reg_n_0_[1][0] ),
        .O(\rd_ptr_r_reg[0] [0]));
  LUT6 #(
    .INIT(64'h9669699669969669)) 
    empty00_carry_i_9__0
       (.I0(p_0_in20_in),
        .I1(p_0_in26_in),
        .I2(p_1_in),
        .I3(\data_r_reg_n_0_[1][12] ),
        .I4(p_0_in29_in),
        .I5(p_0_in23_in),
        .O(empty00_carry_i_9__0_n_0));
endmodule

(* ORIG_REF_NAME = "GraySync" *) 
module xrf_dpp_comblock_0_0_GraySync_2
   (S,
    \data_r_reg[1][8]_0 ,
    \data_r_reg[1][13]_0 ,
    \data_r_reg[1][13]_1 ,
    DI,
    \data_r_reg[1][11]_0 ,
    p_1_in,
    \data_r_reg[1][3]_0 ,
    full00_carry__2,
    ret,
    wr_ptr_r,
    rd_ptr_r,
    \data_r_reg[0][0]_0 ,
    fifo_clk_i);
  output [3:0]S;
  output \data_r_reg[1][8]_0 ;
  output [3:0]\data_r_reg[1][13]_0 ;
  output [1:0]\data_r_reg[1][13]_1 ;
  output [3:0]DI;
  output [2:0]\data_r_reg[1][11]_0 ;
  output [4:0]p_1_in;
  output [3:0]\data_r_reg[1][3]_0 ;
  input full00_carry__2;
  input [13:0]ret;
  input [0:0]wr_ptr_r;
  input [12:0]rd_ptr_r;
  input \data_r_reg[0][0]_0 ;
  input fifo_clk_i;

  wire [3:0]DI;
  wire [3:0]S;
  wire [12:0]bin2gray;
  wire \data_r_reg[0][0]_0 ;
  wire [13:0]\data_r_reg[0]_0 ;
  wire [2:0]\data_r_reg[1][11]_0 ;
  wire [3:0]\data_r_reg[1][13]_0 ;
  wire [1:0]\data_r_reg[1][13]_1 ;
  wire [3:0]\data_r_reg[1][3]_0 ;
  wire \data_r_reg[1][8]_0 ;
  wire \data_r_reg_n_0_[1][0] ;
  wire \data_r_reg_n_0_[1][12] ;
  wire fifo_clk_i;
  wire full00_carry__1_i_10_n_0;
  wire full00_carry__2;
  wire p_0_in;
  wire p_0_in11_in;
  wire p_0_in14_in;
  wire p_0_in17_in;
  wire p_0_in20_in;
  wire p_0_in23_in;
  wire p_0_in26_in;
  wire p_0_in29_in;
  wire p_0_in2_in;
  wire p_0_in5_in;
  wire p_0_in8_in;
  wire [4:0]p_1_in;
  wire p_1_in_0;
  wire [12:0]rd_ptr_r;
  wire [13:0]ret;
  wire [0:0]wr_ptr_r;

  LUT2 #(
    .INIT(4'h6)) 
    \data_r[0][0]_i_1 
       (.I0(\data_r_reg[0][0]_0 ),
        .I1(rd_ptr_r[0]),
        .O(bin2gray[0]));
  (* SOFT_HLUTNM = "soft_lutpair25" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \data_r[0][10]_i_1 
       (.I0(rd_ptr_r[9]),
        .I1(rd_ptr_r[10]),
        .O(bin2gray[10]));
  (* SOFT_HLUTNM = "soft_lutpair24" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \data_r[0][11]_i_1 
       (.I0(rd_ptr_r[10]),
        .I1(rd_ptr_r[11]),
        .O(bin2gray[11]));
  (* SOFT_HLUTNM = "soft_lutpair24" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \data_r[0][12]_i_1 
       (.I0(rd_ptr_r[12]),
        .I1(rd_ptr_r[11]),
        .O(bin2gray[12]));
  (* SOFT_HLUTNM = "soft_lutpair29" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \data_r[0][1]_i_1 
       (.I0(rd_ptr_r[0]),
        .I1(rd_ptr_r[1]),
        .O(bin2gray[1]));
  (* SOFT_HLUTNM = "soft_lutpair29" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \data_r[0][2]_i_1 
       (.I0(rd_ptr_r[1]),
        .I1(rd_ptr_r[2]),
        .O(bin2gray[2]));
  (* SOFT_HLUTNM = "soft_lutpair28" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \data_r[0][3]_i_1 
       (.I0(rd_ptr_r[2]),
        .I1(rd_ptr_r[3]),
        .O(bin2gray[3]));
  (* SOFT_HLUTNM = "soft_lutpair28" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \data_r[0][4]_i_1 
       (.I0(rd_ptr_r[3]),
        .I1(rd_ptr_r[4]),
        .O(bin2gray[4]));
  (* SOFT_HLUTNM = "soft_lutpair27" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \data_r[0][5]_i_1 
       (.I0(rd_ptr_r[4]),
        .I1(rd_ptr_r[5]),
        .O(bin2gray[5]));
  (* SOFT_HLUTNM = "soft_lutpair27" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \data_r[0][6]_i_1 
       (.I0(rd_ptr_r[5]),
        .I1(rd_ptr_r[6]),
        .O(bin2gray[6]));
  (* SOFT_HLUTNM = "soft_lutpair26" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \data_r[0][7]_i_1 
       (.I0(rd_ptr_r[6]),
        .I1(rd_ptr_r[7]),
        .O(bin2gray[7]));
  (* SOFT_HLUTNM = "soft_lutpair26" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \data_r[0][8]_i_1 
       (.I0(rd_ptr_r[7]),
        .I1(rd_ptr_r[8]),
        .O(bin2gray[8]));
  (* SOFT_HLUTNM = "soft_lutpair25" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \data_r[0][9]_i_1 
       (.I0(rd_ptr_r[8]),
        .I1(rd_ptr_r[9]),
        .O(bin2gray[9]));
  FDRE #(
    .INIT(1'b0)) 
    \data_r_reg[0][0] 
       (.C(fifo_clk_i),
        .CE(1'b1),
        .D(bin2gray[0]),
        .Q(\data_r_reg[0]_0 [0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_r_reg[0][10] 
       (.C(fifo_clk_i),
        .CE(1'b1),
        .D(bin2gray[10]),
        .Q(\data_r_reg[0]_0 [10]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_r_reg[0][11] 
       (.C(fifo_clk_i),
        .CE(1'b1),
        .D(bin2gray[11]),
        .Q(\data_r_reg[0]_0 [11]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_r_reg[0][12] 
       (.C(fifo_clk_i),
        .CE(1'b1),
        .D(bin2gray[12]),
        .Q(\data_r_reg[0]_0 [12]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_r_reg[0][13] 
       (.C(fifo_clk_i),
        .CE(1'b1),
        .D(rd_ptr_r[12]),
        .Q(\data_r_reg[0]_0 [13]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_r_reg[0][1] 
       (.C(fifo_clk_i),
        .CE(1'b1),
        .D(bin2gray[1]),
        .Q(\data_r_reg[0]_0 [1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_r_reg[0][2] 
       (.C(fifo_clk_i),
        .CE(1'b1),
        .D(bin2gray[2]),
        .Q(\data_r_reg[0]_0 [2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_r_reg[0][3] 
       (.C(fifo_clk_i),
        .CE(1'b1),
        .D(bin2gray[3]),
        .Q(\data_r_reg[0]_0 [3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_r_reg[0][4] 
       (.C(fifo_clk_i),
        .CE(1'b1),
        .D(bin2gray[4]),
        .Q(\data_r_reg[0]_0 [4]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_r_reg[0][5] 
       (.C(fifo_clk_i),
        .CE(1'b1),
        .D(bin2gray[5]),
        .Q(\data_r_reg[0]_0 [5]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_r_reg[0][6] 
       (.C(fifo_clk_i),
        .CE(1'b1),
        .D(bin2gray[6]),
        .Q(\data_r_reg[0]_0 [6]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_r_reg[0][7] 
       (.C(fifo_clk_i),
        .CE(1'b1),
        .D(bin2gray[7]),
        .Q(\data_r_reg[0]_0 [7]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_r_reg[0][8] 
       (.C(fifo_clk_i),
        .CE(1'b1),
        .D(bin2gray[8]),
        .Q(\data_r_reg[0]_0 [8]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_r_reg[0][9] 
       (.C(fifo_clk_i),
        .CE(1'b1),
        .D(bin2gray[9]),
        .Q(\data_r_reg[0]_0 [9]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_r_reg[1][0] 
       (.C(fifo_clk_i),
        .CE(1'b1),
        .D(\data_r_reg[0]_0 [0]),
        .Q(\data_r_reg_n_0_[1][0] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_r_reg[1][10] 
       (.C(fifo_clk_i),
        .CE(1'b1),
        .D(\data_r_reg[0]_0 [10]),
        .Q(p_0_in26_in),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_r_reg[1][11] 
       (.C(fifo_clk_i),
        .CE(1'b1),
        .D(\data_r_reg[0]_0 [11]),
        .Q(p_0_in29_in),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_r_reg[1][12] 
       (.C(fifo_clk_i),
        .CE(1'b1),
        .D(\data_r_reg[0]_0 [12]),
        .Q(\data_r_reg_n_0_[1][12] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_r_reg[1][13] 
       (.C(fifo_clk_i),
        .CE(1'b1),
        .D(\data_r_reg[0]_0 [13]),
        .Q(p_1_in_0),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_r_reg[1][1] 
       (.C(fifo_clk_i),
        .CE(1'b1),
        .D(\data_r_reg[0]_0 [1]),
        .Q(p_0_in),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_r_reg[1][2] 
       (.C(fifo_clk_i),
        .CE(1'b1),
        .D(\data_r_reg[0]_0 [2]),
        .Q(p_0_in2_in),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_r_reg[1][3] 
       (.C(fifo_clk_i),
        .CE(1'b1),
        .D(\data_r_reg[0]_0 [3]),
        .Q(p_0_in5_in),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_r_reg[1][4] 
       (.C(fifo_clk_i),
        .CE(1'b1),
        .D(\data_r_reg[0]_0 [4]),
        .Q(p_0_in8_in),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_r_reg[1][5] 
       (.C(fifo_clk_i),
        .CE(1'b1),
        .D(\data_r_reg[0]_0 [5]),
        .Q(p_0_in11_in),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_r_reg[1][6] 
       (.C(fifo_clk_i),
        .CE(1'b1),
        .D(\data_r_reg[0]_0 [6]),
        .Q(p_0_in14_in),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_r_reg[1][7] 
       (.C(fifo_clk_i),
        .CE(1'b1),
        .D(\data_r_reg[0]_0 [7]),
        .Q(p_0_in17_in),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_r_reg[1][8] 
       (.C(fifo_clk_i),
        .CE(1'b1),
        .D(\data_r_reg[0]_0 [8]),
        .Q(p_0_in20_in),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_r_reg[1][9] 
       (.C(fifo_clk_i),
        .CE(1'b1),
        .D(\data_r_reg[0]_0 [9]),
        .Q(p_0_in23_in),
        .R(1'b0));
  LUT2 #(
    .INIT(4'h6)) 
    full00_carry__0_i_1
       (.I0(p_0_in17_in),
        .I1(\data_r_reg[1][8]_0 ),
        .O(DI[3]));
  LUT3 #(
    .INIT(8'h96)) 
    full00_carry__0_i_2
       (.I0(p_0_in17_in),
        .I1(\data_r_reg[1][8]_0 ),
        .I2(p_0_in14_in),
        .O(DI[2]));
  LUT4 #(
    .INIT(16'h6996)) 
    full00_carry__0_i_3
       (.I0(p_0_in11_in),
        .I1(p_0_in17_in),
        .I2(\data_r_reg[1][8]_0 ),
        .I3(p_0_in14_in),
        .O(DI[1]));
  LUT5 #(
    .INIT(32'h96696996)) 
    full00_carry__0_i_4
       (.I0(p_0_in8_in),
        .I1(p_0_in14_in),
        .I2(\data_r_reg[1][8]_0 ),
        .I3(p_0_in17_in),
        .I4(p_0_in11_in),
        .O(DI[0]));
  LUT4 #(
    .INIT(16'h6966)) 
    full00_carry__0_i_5
       (.I0(\data_r_reg[1][8]_0 ),
        .I1(p_0_in17_in),
        .I2(full00_carry__2),
        .I3(ret[7]),
        .O(S[3]));
  LUT5 #(
    .INIT(32'h96699696)) 
    full00_carry__0_i_6__0
       (.I0(p_0_in17_in),
        .I1(\data_r_reg[1][8]_0 ),
        .I2(p_0_in14_in),
        .I3(full00_carry__2),
        .I4(ret[6]),
        .O(S[2]));
  LUT6 #(
    .INIT(64'h6996966969966996)) 
    full00_carry__0_i_7
       (.I0(p_0_in14_in),
        .I1(\data_r_reg[1][8]_0 ),
        .I2(p_0_in17_in),
        .I3(p_0_in11_in),
        .I4(full00_carry__2),
        .I5(ret[5]),
        .O(S[1]));
  LUT3 #(
    .INIT(8'h9A)) 
    full00_carry__0_i_8
       (.I0(DI[0]),
        .I1(full00_carry__2),
        .I2(ret[4]),
        .O(S[0]));
  LUT3 #(
    .INIT(8'h69)) 
    full00_carry__1_i_1
       (.I0(p_0_in29_in),
        .I1(\data_r_reg_n_0_[1][12] ),
        .I2(p_1_in_0),
        .O(\data_r_reg[1][11]_0 [2]));
  LUT5 #(
    .INIT(32'h96696996)) 
    full00_carry__1_i_10
       (.I0(p_0_in23_in),
        .I1(p_0_in29_in),
        .I2(\data_r_reg_n_0_[1][12] ),
        .I3(p_1_in_0),
        .I4(p_0_in26_in),
        .O(full00_carry__1_i_10_n_0));
  LUT4 #(
    .INIT(16'h9669)) 
    full00_carry__1_i_2
       (.I0(p_0_in26_in),
        .I1(p_1_in_0),
        .I2(\data_r_reg_n_0_[1][12] ),
        .I3(p_0_in29_in),
        .O(\data_r_reg[1][11]_0 [1]));
  LUT5 #(
    .INIT(32'h69969669)) 
    full00_carry__1_i_3
       (.I0(p_0_in26_in),
        .I1(p_1_in_0),
        .I2(\data_r_reg_n_0_[1][12] ),
        .I3(p_0_in29_in),
        .I4(p_0_in23_in),
        .O(\data_r_reg[1][11]_0 [0]));
  LUT6 #(
    .INIT(64'h9669699669969669)) 
    full00_carry__1_i_4
       (.I0(p_0_in20_in),
        .I1(p_0_in26_in),
        .I2(p_1_in_0),
        .I3(\data_r_reg_n_0_[1][12] ),
        .I4(p_0_in29_in),
        .I5(p_0_in23_in),
        .O(\data_r_reg[1][8]_0 ));
  LUT5 #(
    .INIT(32'h69966969)) 
    full00_carry__1_i_5
       (.I0(p_1_in_0),
        .I1(\data_r_reg_n_0_[1][12] ),
        .I2(p_0_in29_in),
        .I3(full00_carry__2),
        .I4(ret[11]),
        .O(\data_r_reg[1][13]_0 [3]));
  LUT6 #(
    .INIT(64'h9669699696699669)) 
    full00_carry__1_i_6
       (.I0(p_0_in29_in),
        .I1(\data_r_reg_n_0_[1][12] ),
        .I2(p_1_in_0),
        .I3(p_0_in26_in),
        .I4(full00_carry__2),
        .I5(ret[10]),
        .O(\data_r_reg[1][13]_0 [2]));
  LUT3 #(
    .INIT(8'h65)) 
    full00_carry__1_i_7__0
       (.I0(full00_carry__1_i_10_n_0),
        .I1(full00_carry__2),
        .I2(ret[9]),
        .O(\data_r_reg[1][13]_0 [1]));
  LUT3 #(
    .INIT(8'h9A)) 
    full00_carry__1_i_8
       (.I0(\data_r_reg[1][8]_0 ),
        .I1(full00_carry__2),
        .I2(ret[8]),
        .O(\data_r_reg[1][13]_0 [0]));
  LUT2 #(
    .INIT(4'h9)) 
    full00_carry__2_i_1
       (.I0(\data_r_reg_n_0_[1][12] ),
        .I1(p_1_in_0),
        .O(p_1_in[4]));
  LUT4 #(
    .INIT(16'h59A9)) 
    full00_carry__2_i_2__0
       (.I0(p_1_in_0),
        .I1(ret[13]),
        .I2(full00_carry__2),
        .I3(wr_ptr_r),
        .O(\data_r_reg[1][13]_1 [1]));
  LUT4 #(
    .INIT(16'h9699)) 
    full00_carry__2_i_3__0
       (.I0(\data_r_reg_n_0_[1][12] ),
        .I1(p_1_in_0),
        .I2(full00_carry__2),
        .I3(ret[12]),
        .O(\data_r_reg[1][13]_1 [0]));
  LUT6 #(
    .INIT(64'h6996966996696996)) 
    full00_carry_i_1
       (.I0(p_0_in5_in),
        .I1(p_0_in11_in),
        .I2(p_0_in17_in),
        .I3(\data_r_reg[1][8]_0 ),
        .I4(p_0_in14_in),
        .I5(p_0_in8_in),
        .O(p_1_in[3]));
  LUT2 #(
    .INIT(4'h6)) 
    full00_carry_i_2
       (.I0(p_0_in2_in),
        .I1(p_1_in[3]),
        .O(p_1_in[2]));
  LUT3 #(
    .INIT(8'h96)) 
    full00_carry_i_3
       (.I0(p_0_in),
        .I1(p_1_in[3]),
        .I2(p_0_in2_in),
        .O(p_1_in[1]));
  LUT4 #(
    .INIT(16'h6996)) 
    full00_carry_i_4
       (.I0(\data_r_reg_n_0_[1][0] ),
        .I1(p_0_in2_in),
        .I2(p_1_in[3]),
        .I3(p_0_in),
        .O(p_1_in[0]));
  LUT3 #(
    .INIT(8'h9A)) 
    full00_carry_i_5
       (.I0(p_1_in[3]),
        .I1(full00_carry__2),
        .I2(ret[3]),
        .O(\data_r_reg[1][3]_0 [3]));
  LUT4 #(
    .INIT(16'h6966)) 
    full00_carry_i_6
       (.I0(p_1_in[3]),
        .I1(p_0_in2_in),
        .I2(full00_carry__2),
        .I3(ret[2]),
        .O(\data_r_reg[1][3]_0 [2]));
  LUT5 #(
    .INIT(32'h96699696)) 
    full00_carry_i_7
       (.I0(p_0_in2_in),
        .I1(p_1_in[3]),
        .I2(p_0_in),
        .I3(full00_carry__2),
        .I4(ret[1]),
        .O(\data_r_reg[1][3]_0 [1]));
  LUT6 #(
    .INIT(64'h6996966969966996)) 
    full00_carry_i_8
       (.I0(p_0_in),
        .I1(p_1_in[3]),
        .I2(p_0_in2_in),
        .I3(\data_r_reg_n_0_[1][0] ),
        .I4(full00_carry__2),
        .I5(ret[0]),
        .O(\data_r_reg[1][3]_0 [0]));
endmodule

(* ORIG_REF_NAME = "GraySync" *) 
module xrf_dpp_comblock_0_0_GraySync_3
   (S,
    \data_r_reg[1][13]_0 ,
    \data_r_reg[1][3]_0 ,
    \rd_ptr_r_reg[0] ,
    \data_r_reg[1][13]_1 ,
    DI,
    \data_r_reg[1][13]_2 ,
    empty00_carry__0,
    empty00_carry,
    empty00_carry__1,
    O,
    empty00_carry__2,
    rd_ptr_r,
    wr_ptr_r,
    empty00_carry_0,
    axil_aclk);
  output [3:0]S;
  output [3:0]\data_r_reg[1][13]_0 ;
  output \data_r_reg[1][3]_0 ;
  output [3:0]\rd_ptr_r_reg[0] ;
  output [1:0]\data_r_reg[1][13]_1 ;
  output [1:0]DI;
  output [0:0]\data_r_reg[1][13]_2 ;
  input [3:0]empty00_carry__0;
  input empty00_carry;
  input [3:0]empty00_carry__1;
  input [2:0]O;
  input [1:0]empty00_carry__2;
  input [0:0]rd_ptr_r;
  input [13:0]wr_ptr_r;
  input [0:0]empty00_carry_0;
  input axil_aclk;

  wire [1:0]DI;
  wire [2:0]O;
  wire [3:0]S;
  wire axil_aclk;
  wire [12:0]bin2gray;
  wire [3:0]\data_r_reg[1][13]_0 ;
  wire [1:0]\data_r_reg[1][13]_1 ;
  wire [0:0]\data_r_reg[1][13]_2 ;
  wire \data_r_reg[1][3]_0 ;
  wire \data_r_reg_n_0_[0][0] ;
  wire \data_r_reg_n_0_[0][10] ;
  wire \data_r_reg_n_0_[0][11] ;
  wire \data_r_reg_n_0_[0][12] ;
  wire \data_r_reg_n_0_[0][13] ;
  wire \data_r_reg_n_0_[0][1] ;
  wire \data_r_reg_n_0_[0][2] ;
  wire \data_r_reg_n_0_[0][3] ;
  wire \data_r_reg_n_0_[0][4] ;
  wire \data_r_reg_n_0_[0][5] ;
  wire \data_r_reg_n_0_[0][6] ;
  wire \data_r_reg_n_0_[0][7] ;
  wire \data_r_reg_n_0_[0][8] ;
  wire \data_r_reg_n_0_[0][9] ;
  wire \data_r_reg_n_0_[1][0] ;
  wire \data_r_reg_n_0_[1][12] ;
  wire empty00_carry;
  wire [0:0]empty00_carry_0;
  wire [3:0]empty00_carry__0;
  wire empty00_carry__0_i_10_n_0;
  wire [3:0]empty00_carry__1;
  wire empty00_carry__1_i_10_n_0;
  wire [1:0]empty00_carry__2;
  wire empty00_carry_i_9_n_0;
  wire p_0_in;
  wire p_0_in11_in;
  wire p_0_in14_in;
  wire p_0_in17_in;
  wire p_0_in20_in;
  wire p_0_in23_in;
  wire p_0_in26_in;
  wire p_0_in29_in;
  wire p_0_in2_in;
  wire p_0_in5_in;
  wire p_0_in8_in;
  wire p_1_in;
  wire [0:0]rd_ptr_r;
  wire [3:0]\rd_ptr_r_reg[0] ;
  wire [13:0]wr_ptr_r;

  LUT2 #(
    .INIT(4'h6)) 
    \data_r[0][0]_i_1__0 
       (.I0(wr_ptr_r[0]),
        .I1(wr_ptr_r[1]),
        .O(bin2gray[0]));
  (* SOFT_HLUTNM = "soft_lutpair31" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \data_r[0][10]_i_1__0 
       (.I0(wr_ptr_r[10]),
        .I1(wr_ptr_r[11]),
        .O(bin2gray[10]));
  (* SOFT_HLUTNM = "soft_lutpair30" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \data_r[0][11]_i_1__0 
       (.I0(wr_ptr_r[11]),
        .I1(wr_ptr_r[12]),
        .O(bin2gray[11]));
  (* SOFT_HLUTNM = "soft_lutpair30" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \data_r[0][12]_i_1__0 
       (.I0(wr_ptr_r[13]),
        .I1(wr_ptr_r[12]),
        .O(bin2gray[12]));
  (* SOFT_HLUTNM = "soft_lutpair35" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \data_r[0][1]_i_1__0 
       (.I0(wr_ptr_r[1]),
        .I1(wr_ptr_r[2]),
        .O(bin2gray[1]));
  (* SOFT_HLUTNM = "soft_lutpair35" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \data_r[0][2]_i_1__0 
       (.I0(wr_ptr_r[2]),
        .I1(wr_ptr_r[3]),
        .O(bin2gray[2]));
  (* SOFT_HLUTNM = "soft_lutpair34" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \data_r[0][3]_i_1__0 
       (.I0(wr_ptr_r[3]),
        .I1(wr_ptr_r[4]),
        .O(bin2gray[3]));
  (* SOFT_HLUTNM = "soft_lutpair34" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \data_r[0][4]_i_1__0 
       (.I0(wr_ptr_r[4]),
        .I1(wr_ptr_r[5]),
        .O(bin2gray[4]));
  (* SOFT_HLUTNM = "soft_lutpair33" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \data_r[0][5]_i_1__0 
       (.I0(wr_ptr_r[5]),
        .I1(wr_ptr_r[6]),
        .O(bin2gray[5]));
  (* SOFT_HLUTNM = "soft_lutpair33" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \data_r[0][6]_i_1__0 
       (.I0(wr_ptr_r[6]),
        .I1(wr_ptr_r[7]),
        .O(bin2gray[6]));
  (* SOFT_HLUTNM = "soft_lutpair32" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \data_r[0][7]_i_1__0 
       (.I0(wr_ptr_r[7]),
        .I1(wr_ptr_r[8]),
        .O(bin2gray[7]));
  (* SOFT_HLUTNM = "soft_lutpair32" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \data_r[0][8]_i_1__0 
       (.I0(wr_ptr_r[8]),
        .I1(wr_ptr_r[9]),
        .O(bin2gray[8]));
  (* SOFT_HLUTNM = "soft_lutpair31" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \data_r[0][9]_i_1__0 
       (.I0(wr_ptr_r[9]),
        .I1(wr_ptr_r[10]),
        .O(bin2gray[9]));
  FDRE #(
    .INIT(1'b0)) 
    \data_r_reg[0][0] 
       (.C(axil_aclk),
        .CE(1'b1),
        .D(bin2gray[0]),
        .Q(\data_r_reg_n_0_[0][0] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_r_reg[0][10] 
       (.C(axil_aclk),
        .CE(1'b1),
        .D(bin2gray[10]),
        .Q(\data_r_reg_n_0_[0][10] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_r_reg[0][11] 
       (.C(axil_aclk),
        .CE(1'b1),
        .D(bin2gray[11]),
        .Q(\data_r_reg_n_0_[0][11] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_r_reg[0][12] 
       (.C(axil_aclk),
        .CE(1'b1),
        .D(bin2gray[12]),
        .Q(\data_r_reg_n_0_[0][12] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_r_reg[0][13] 
       (.C(axil_aclk),
        .CE(1'b1),
        .D(wr_ptr_r[13]),
        .Q(\data_r_reg_n_0_[0][13] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_r_reg[0][1] 
       (.C(axil_aclk),
        .CE(1'b1),
        .D(bin2gray[1]),
        .Q(\data_r_reg_n_0_[0][1] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_r_reg[0][2] 
       (.C(axil_aclk),
        .CE(1'b1),
        .D(bin2gray[2]),
        .Q(\data_r_reg_n_0_[0][2] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_r_reg[0][3] 
       (.C(axil_aclk),
        .CE(1'b1),
        .D(bin2gray[3]),
        .Q(\data_r_reg_n_0_[0][3] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_r_reg[0][4] 
       (.C(axil_aclk),
        .CE(1'b1),
        .D(bin2gray[4]),
        .Q(\data_r_reg_n_0_[0][4] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_r_reg[0][5] 
       (.C(axil_aclk),
        .CE(1'b1),
        .D(bin2gray[5]),
        .Q(\data_r_reg_n_0_[0][5] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_r_reg[0][6] 
       (.C(axil_aclk),
        .CE(1'b1),
        .D(bin2gray[6]),
        .Q(\data_r_reg_n_0_[0][6] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_r_reg[0][7] 
       (.C(axil_aclk),
        .CE(1'b1),
        .D(bin2gray[7]),
        .Q(\data_r_reg_n_0_[0][7] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_r_reg[0][8] 
       (.C(axil_aclk),
        .CE(1'b1),
        .D(bin2gray[8]),
        .Q(\data_r_reg_n_0_[0][8] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_r_reg[0][9] 
       (.C(axil_aclk),
        .CE(1'b1),
        .D(bin2gray[9]),
        .Q(\data_r_reg_n_0_[0][9] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_r_reg[1][0] 
       (.C(axil_aclk),
        .CE(1'b1),
        .D(\data_r_reg_n_0_[0][0] ),
        .Q(\data_r_reg_n_0_[1][0] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_r_reg[1][10] 
       (.C(axil_aclk),
        .CE(1'b1),
        .D(\data_r_reg_n_0_[0][10] ),
        .Q(p_0_in26_in),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_r_reg[1][11] 
       (.C(axil_aclk),
        .CE(1'b1),
        .D(\data_r_reg_n_0_[0][11] ),
        .Q(p_0_in29_in),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_r_reg[1][12] 
       (.C(axil_aclk),
        .CE(1'b1),
        .D(\data_r_reg_n_0_[0][12] ),
        .Q(\data_r_reg_n_0_[1][12] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_r_reg[1][13] 
       (.C(axil_aclk),
        .CE(1'b1),
        .D(\data_r_reg_n_0_[0][13] ),
        .Q(p_1_in),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_r_reg[1][1] 
       (.C(axil_aclk),
        .CE(1'b1),
        .D(\data_r_reg_n_0_[0][1] ),
        .Q(p_0_in),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_r_reg[1][2] 
       (.C(axil_aclk),
        .CE(1'b1),
        .D(\data_r_reg_n_0_[0][2] ),
        .Q(p_0_in2_in),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_r_reg[1][3] 
       (.C(axil_aclk),
        .CE(1'b1),
        .D(\data_r_reg_n_0_[0][3] ),
        .Q(p_0_in5_in),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_r_reg[1][4] 
       (.C(axil_aclk),
        .CE(1'b1),
        .D(\data_r_reg_n_0_[0][4] ),
        .Q(p_0_in8_in),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_r_reg[1][5] 
       (.C(axil_aclk),
        .CE(1'b1),
        .D(\data_r_reg_n_0_[0][5] ),
        .Q(p_0_in11_in),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_r_reg[1][6] 
       (.C(axil_aclk),
        .CE(1'b1),
        .D(\data_r_reg_n_0_[0][6] ),
        .Q(p_0_in14_in),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_r_reg[1][7] 
       (.C(axil_aclk),
        .CE(1'b1),
        .D(\data_r_reg_n_0_[0][7] ),
        .Q(p_0_in17_in),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_r_reg[1][8] 
       (.C(axil_aclk),
        .CE(1'b1),
        .D(\data_r_reg_n_0_[0][8] ),
        .Q(p_0_in20_in),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_r_reg[1][9] 
       (.C(axil_aclk),
        .CE(1'b1),
        .D(\data_r_reg_n_0_[0][9] ),
        .Q(p_0_in23_in),
        .R(1'b0));
  LUT6 #(
    .INIT(64'h9669699669969669)) 
    empty00_carry__0_i_10
       (.I0(p_0_in17_in),
        .I1(p_0_in23_in),
        .I2(p_0_in29_in),
        .I3(empty00_carry__1_i_10_n_0),
        .I4(p_0_in26_in),
        .I5(p_0_in20_in),
        .O(empty00_carry__0_i_10_n_0));
  LUT4 #(
    .INIT(16'h2DD2)) 
    empty00_carry__0_i_5
       (.I0(empty00_carry__0[3]),
        .I1(empty00_carry),
        .I2(empty00_carry_i_9_n_0),
        .I3(p_0_in17_in),
        .O(S[3]));
  LUT5 #(
    .INIT(32'hD22D2DD2)) 
    empty00_carry__0_i_6
       (.I0(empty00_carry__0[2]),
        .I1(empty00_carry),
        .I2(p_0_in17_in),
        .I3(empty00_carry_i_9_n_0),
        .I4(p_0_in14_in),
        .O(S[2]));
  LUT6 #(
    .INIT(64'h2DD2D22DD22D2DD2)) 
    empty00_carry__0_i_7
       (.I0(empty00_carry__0[1]),
        .I1(empty00_carry),
        .I2(p_0_in14_in),
        .I3(empty00_carry_i_9_n_0),
        .I4(p_0_in17_in),
        .I5(p_0_in11_in),
        .O(S[1]));
  LUT6 #(
    .INIT(64'h2DD2D22DD22D2DD2)) 
    empty00_carry__0_i_8
       (.I0(empty00_carry__0[0]),
        .I1(empty00_carry),
        .I2(p_0_in11_in),
        .I3(empty00_carry__0_i_10_n_0),
        .I4(p_0_in14_in),
        .I5(p_0_in8_in),
        .O(S[0]));
  LUT2 #(
    .INIT(4'h6)) 
    empty00_carry__1_i_10
       (.I0(p_1_in),
        .I1(\data_r_reg_n_0_[1][12] ),
        .O(empty00_carry__1_i_10_n_0));
  LUT5 #(
    .INIT(32'h2DD2D22D)) 
    empty00_carry__1_i_5
       (.I0(empty00_carry__1[3]),
        .I1(empty00_carry),
        .I2(p_1_in),
        .I3(\data_r_reg_n_0_[1][12] ),
        .I4(p_0_in29_in),
        .O(\data_r_reg[1][13]_0 [3]));
  LUT6 #(
    .INIT(64'hD22D2DD22DD2D22D)) 
    empty00_carry__1_i_6
       (.I0(empty00_carry__1[2]),
        .I1(empty00_carry),
        .I2(p_0_in29_in),
        .I3(\data_r_reg_n_0_[1][12] ),
        .I4(p_1_in),
        .I5(p_0_in26_in),
        .O(\data_r_reg[1][13]_0 [2]));
  LUT6 #(
    .INIT(64'hD22D2DD22DD2D22D)) 
    empty00_carry__1_i_7
       (.I0(empty00_carry__1[1]),
        .I1(empty00_carry),
        .I2(p_0_in26_in),
        .I3(empty00_carry__1_i_10_n_0),
        .I4(p_0_in29_in),
        .I5(p_0_in23_in),
        .O(\data_r_reg[1][13]_0 [1]));
  LUT3 #(
    .INIT(8'hD2)) 
    empty00_carry__1_i_8
       (.I0(empty00_carry__1[0]),
        .I1(empty00_carry),
        .I2(empty00_carry_i_9_n_0),
        .O(\data_r_reg[1][13]_0 [0]));
  LUT2 #(
    .INIT(4'h6)) 
    empty00_carry__2_i_1
       (.I0(p_1_in),
        .I1(\data_r_reg_n_0_[1][12] ),
        .O(\data_r_reg[1][13]_2 ));
  LUT4 #(
    .INIT(16'h59A9)) 
    empty00_carry__2_i_2
       (.I0(p_1_in),
        .I1(empty00_carry__2[1]),
        .I2(empty00_carry),
        .I3(rd_ptr_r),
        .O(\data_r_reg[1][13]_1 [1]));
  LUT4 #(
    .INIT(16'hD22D)) 
    empty00_carry__2_i_3
       (.I0(empty00_carry__2[0]),
        .I1(empty00_carry),
        .I2(\data_r_reg_n_0_[1][12] ),
        .I3(p_1_in),
        .O(\data_r_reg[1][13]_1 [0]));
  LUT6 #(
    .INIT(64'h9669699669969669)) 
    empty00_carry_i_1
       (.I0(p_0_in5_in),
        .I1(p_0_in11_in),
        .I2(p_0_in17_in),
        .I3(empty00_carry_i_9_n_0),
        .I4(p_0_in14_in),
        .I5(p_0_in8_in),
        .O(\data_r_reg[1][3]_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    empty00_carry_i_2__0
       (.I0(p_0_in2_in),
        .I1(\data_r_reg[1][3]_0 ),
        .O(DI[1]));
  LUT3 #(
    .INIT(8'h96)) 
    empty00_carry_i_3
       (.I0(p_0_in),
        .I1(\data_r_reg[1][3]_0 ),
        .I2(p_0_in2_in),
        .O(DI[0]));
  LUT3 #(
    .INIT(8'h2D)) 
    empty00_carry_i_5
       (.I0(O[2]),
        .I1(empty00_carry),
        .I2(\data_r_reg[1][3]_0 ),
        .O(\rd_ptr_r_reg[0] [3]));
  LUT4 #(
    .INIT(16'h9969)) 
    empty00_carry_i_6__0
       (.I0(p_0_in2_in),
        .I1(\data_r_reg[1][3]_0 ),
        .I2(O[1]),
        .I3(empty00_carry),
        .O(\rd_ptr_r_reg[0] [2]));
  LUT5 #(
    .INIT(32'h69699669)) 
    empty00_carry_i_7__0
       (.I0(p_0_in),
        .I1(\data_r_reg[1][3]_0 ),
        .I2(p_0_in2_in),
        .I3(O[0]),
        .I4(empty00_carry),
        .O(\rd_ptr_r_reg[0] [1]));
  LUT5 #(
    .INIT(32'h96696996)) 
    empty00_carry_i_8
       (.I0(empty00_carry_0),
        .I1(p_0_in),
        .I2(\data_r_reg[1][3]_0 ),
        .I3(p_0_in2_in),
        .I4(\data_r_reg_n_0_[1][0] ),
        .O(\rd_ptr_r_reg[0] [0]));
  LUT6 #(
    .INIT(64'h9669699669969669)) 
    empty00_carry_i_9
       (.I0(p_0_in20_in),
        .I1(p_0_in26_in),
        .I2(p_1_in),
        .I3(\data_r_reg_n_0_[1][12] ),
        .I4(p_0_in29_in),
        .I5(p_0_in23_in),
        .O(empty00_carry_i_9_n_0));
endmodule

(* ORIG_REF_NAME = "axi_comblock" *) 
module xrf_dpp_comblock_0_0_axi_comblock
   (axil_awready,
    axil_wready,
    axi_arready_reg,
    axi_awready_reg,
    axif_rdata,
    axi_rvalid_reg,
    axi_wready_reg,
    axif_bvalid,
    ram_data_o,
    fifo_full_o,
    fifo_data_o,
    fifo_empty_o,
    fifo_valid_o,
    reg0_o,
    reg1_o,
    reg2_o,
    reg3_o,
    reg4_o,
    reg5_o,
    reg6_o,
    reg7_o,
    axil_arready,
    axil_rdata,
    axi_rvalid_reg_0,
    fifo_overflow_o,
    fifo_underflow_o,
    fifo_afull_o,
    fifo_aempty_o,
    axif_rlast,
    axil_bvalid,
    axil_awvalid,
    axil_wvalid,
    axif_arvalid,
    axif_aresetn,
    axif_awvalid,
    axif_wvalid,
    axif_wlast,
    axif_bready,
    axif_aclk,
    ram_clk_i,
    ram_addr_i,
    axif_wdata,
    ram_data_i,
    ram_we_i,
    fifo_clk_i,
    axil_aclk,
    fifo_data_i,
    axil_wdata,
    axil_awaddr,
    axil_araddr,
    axil_arvalid,
    axif_arlen,
    axif_awburst,
    axif_awlen,
    axif_arburst,
    fifo_clear_i,
    fifo_we_i,
    fifo_re_i,
    reg2_i,
    reg3_i,
    reg0_i,
    reg1_i,
    axif_rready,
    axif_araddr,
    axif_awaddr,
    axil_aresetn,
    axil_bready,
    axil_rready);
  output axil_awready;
  output axil_wready;
  output axi_arready_reg;
  output axi_awready_reg;
  output [15:0]axif_rdata;
  output axi_rvalid_reg;
  output axi_wready_reg;
  output axif_bvalid;
  output [15:0]ram_data_o;
  output fifo_full_o;
  output [15:0]fifo_data_o;
  output fifo_empty_o;
  output fifo_valid_o;
  output [15:0]reg0_o;
  output [15:0]reg1_o;
  output [15:0]reg2_o;
  output [15:0]reg3_o;
  output [15:0]reg4_o;
  output [15:0]reg5_o;
  output [15:0]reg6_o;
  output [15:0]reg7_o;
  output axil_arready;
  output [31:0]axil_rdata;
  output axi_rvalid_reg_0;
  output fifo_overflow_o;
  output fifo_underflow_o;
  output fifo_afull_o;
  output fifo_aempty_o;
  output axif_rlast;
  output axil_bvalid;
  input axil_awvalid;
  input axil_wvalid;
  input axif_arvalid;
  input axif_aresetn;
  input axif_awvalid;
  input axif_wvalid;
  input axif_wlast;
  input axif_bready;
  input axif_aclk;
  input ram_clk_i;
  input [15:0]ram_addr_i;
  input [15:0]axif_wdata;
  input [15:0]ram_data_i;
  input ram_we_i;
  input fifo_clk_i;
  input axil_aclk;
  input [15:0]fifo_data_i;
  input [15:0]axil_wdata;
  input [5:0]axil_awaddr;
  input [5:0]axil_araddr;
  input axil_arvalid;
  input [7:0]axif_arlen;
  input [1:0]axif_awburst;
  input [7:0]axif_awlen;
  input [1:0]axif_arburst;
  input fifo_clear_i;
  input fifo_we_i;
  input fifo_re_i;
  input [31:0]reg2_i;
  input [31:0]reg3_i;
  input [31:0]reg0_i;
  input [31:0]reg1_i;
  input axif_rready;
  input [15:0]axif_araddr;
  input [15:0]axif_awaddr;
  input axil_aresetn;
  input axil_bready;
  input axil_rready;

  wire AXIF_inst_n_38;
  wire AXIF_inst_n_39;
  wire AXIF_inst_n_40;
  wire AXIF_inst_n_41;
  wire AXIF_inst_n_42;
  wire AXIF_inst_n_43;
  wire AXIF_inst_n_44;
  wire AXIF_inst_n_45;
  wire AXIF_inst_n_46;
  wire AXIF_inst_n_47;
  wire AXIF_inst_n_48;
  wire AXIF_inst_n_49;
  wire AXIF_inst_n_50;
  wire AXIF_inst_n_51;
  wire AXIF_inst_n_52;
  wire AXIF_inst_n_53;
  wire AXIF_inst_n_54;
  wire AXIF_inst_n_55;
  wire AXIF_inst_n_56;
  wire AXIF_inst_n_57;
  wire AXIF_inst_n_58;
  wire AXIF_inst_n_59;
  wire AXIF_inst_n_60;
  wire AXIF_inst_n_61;
  wire AXIF_inst_n_62;
  wire AXIF_inst_n_63;
  wire AXIF_inst_n_64;
  wire AXIF_inst_n_65;
  wire AXIF_inst_n_66;
  wire AXIF_inst_n_67;
  wire AXIF_inst_n_68;
  wire AXIF_inst_n_69;
  wire AXIF_inst_n_70;
  wire AXIF_inst_n_71;
  wire AXIF_inst_n_72;
  wire AXIF_inst_n_73;
  wire AXIF_inst_n_74;
  wire AXIF_inst_n_75;
  wire AXIF_inst_n_76;
  wire AXIF_inst_n_77;
  wire AXIF_inst_n_78;
  wire AXIF_inst_n_79;
  wire AXIF_inst_n_80;
  wire AXIF_inst_n_81;
  wire AXIF_inst_n_82;
  wire AXIF_inst_n_83;
  wire AXIF_inst_n_84;
  wire AXIF_inst_n_85;
  wire AXIL_inst_n_10;
  wire AXIL_inst_n_11;
  wire AXIL_inst_n_13;
  wire AXIL_inst_n_14;
  wire AXIL_inst_n_19;
  wire AXIL_inst_n_21;
  wire AXIL_inst_n_24;
  wire AXIL_inst_n_25;
  wire AXIL_inst_n_26;
  wire AXIL_inst_n_27;
  wire AXIL_inst_n_28;
  wire AXIL_inst_n_29;
  wire AXIL_inst_n_30;
  wire AXIL_inst_n_31;
  wire AXIL_inst_n_32;
  wire AXIL_inst_n_33;
  wire AXIL_inst_n_34;
  wire AXIL_inst_n_35;
  wire AXIL_inst_n_36;
  wire AXIL_inst_n_37;
  wire AXIL_inst_n_8;
  wire axi_arready_reg;
  wire axi_awready_reg;
  wire axi_rvalid_reg;
  wire axi_rvalid_reg_0;
  wire axi_wready_reg;
  wire axif_aclk;
  wire [15:0]axif_araddr;
  wire [1:0]axif_arburst;
  wire axif_aresetn;
  wire [7:0]axif_arlen;
  wire axif_arvalid;
  wire [15:0]axif_awaddr;
  wire [1:0]axif_awburst;
  wire [7:0]axif_awlen;
  wire axif_awvalid;
  wire axif_bready;
  wire axif_bvalid;
  wire [15:0]axif_rdata;
  wire axif_rlast;
  wire axif_rready;
  wire [15:0]axif_wdata;
  wire axif_wlast;
  wire axif_wvalid;
  wire axil_aclk;
  wire [5:0]axil_araddr;
  wire axil_aresetn;
  wire axil_arready;
  wire axil_arvalid;
  wire [5:0]axil_awaddr;
  wire axil_awready;
  wire axil_awvalid;
  wire axil_bready;
  wire axil_bvalid;
  wire [31:0]axil_rdata;
  wire axil_rready;
  wire [15:0]axil_wdata;
  wire axil_wready;
  wire axil_wvalid;
  wire comblock_i_n_137;
  wire comblock_i_n_202;
  wire comblock_i_n_203;
  wire comblock_i_n_204;
  wire comblock_i_n_205;
  wire comblock_i_n_206;
  wire comblock_i_n_207;
  wire comblock_i_n_208;
  wire comblock_i_n_209;
  wire comblock_i_n_210;
  wire comblock_i_n_211;
  wire comblock_i_n_212;
  wire comblock_i_n_213;
  wire comblock_i_n_214;
  wire comblock_i_n_215;
  wire comblock_i_n_216;
  wire comblock_i_n_217;
  wire comblock_i_n_218;
  wire comblock_i_n_219;
  wire comblock_i_n_220;
  wire comblock_i_n_221;
  wire comblock_i_n_222;
  wire comblock_i_n_223;
  wire comblock_i_n_224;
  wire comblock_i_n_37;
  wire comblock_i_n_38;
  wire comblock_i_n_39;
  wire comblock_i_n_40;
  wire comblock_i_n_41;
  wire comblock_i_n_42;
  wire comblock_i_n_43;
  wire comblock_i_n_44;
  wire comblock_i_n_46;
  wire comblock_i_n_62;
  wire comblock_i_n_63;
  wire comblock_i_n_64;
  wire comblock_i_n_66;
  wire comblock_i_n_68;
  wire comblock_i_n_69;
  wire comblock_i_n_70;
  wire comblock_i_n_72;
  wire fifo_aempty_o;
  wire fifo_afull_o;
  wire fifo_clear_i;
  wire fifo_clk_i;
  wire [15:0]fifo_data_i;
  wire [15:0]fifo_data_o;
  wire fifo_empty_o;
  wire fifo_full_o;
  wire [13:0]fifo_in_count;
  wire [15:0]fifo_in_data;
  wire \fifo_in_g.fifo_in_i/empty_r ;
  wire \fifo_in_g.fifo_in_i/p_2_in ;
  wire [0:0]\fifo_in_g.fifo_in_i/rd_ptr_r ;
  wire fifo_in_under_r__0;
  wire [13:0]fifo_out_count;
  wire \fifo_out_g.fifo_out_i/full_r ;
  wire \fifo_out_g.fifo_out_i/p_4_in ;
  wire [0:0]\fifo_out_g.fifo_out_i/wr_ptr_r ;
  wire fifo_out_over_r__0;
  wire fifo_overflow_o;
  wire fifo_re_i;
  wire fifo_underflow_o;
  wire fifo_valid_o;
  wire fifo_we_i;
  wire [17:2]mem_adr;
  wire [15:0]mem_rd_dat;
  wire [15:0]ram_addr_i;
  wire ram_clk_i;
  wire [15:0]ram_data_i;
  wire [15:0]ram_data_o;
  wire ram_we_i;
  wire [31:0]reg0_i;
  wire [15:0]reg0_o;
  wire [31:0]reg1_i;
  wire [15:0]reg1_o;
  wire [31:0]reg2_i;
  wire [15:0]reg2_o;
  wire [31:0]reg3_i;
  wire [15:0]reg3_o;
  wire [15:0]reg4_o;
  wire [15:0]reg5_o;
  wire [15:0]reg6_o;
  wire [15:0]reg7_o;
  wire [4:2]reg_rd_adr;
  wire \regs_out[1]_6 ;
  wire \regs_out[2]_7 ;
  wire \regs_out[3]_8 ;
  wire \regs_out[4]_3 ;
  wire \regs_out[5]_2 ;
  wire \regs_out[6]_4 ;
  wire \regs_out[7]_5 ;

  xrf_dpp_comblock_0_0_AXIF AXIF_inst
       (.ADDRARDADDR(mem_adr),
        .WEA(AXIF_inst_n_54),
        .addr2_i({AXIF_inst_n_38,AXIF_inst_n_39,AXIF_inst_n_40,AXIF_inst_n_41,AXIF_inst_n_42,AXIF_inst_n_43,AXIF_inst_n_44,AXIF_inst_n_45,AXIF_inst_n_46,AXIF_inst_n_47,AXIF_inst_n_48,AXIF_inst_n_49,AXIF_inst_n_50,AXIF_inst_n_51,AXIF_inst_n_52,AXIF_inst_n_53}),
        .axi_arready_reg_0(axi_arready_reg),
        .axi_awready_reg_0(axi_awready_reg),
        .axi_rvalid_reg_0(axi_rvalid_reg),
        .axi_wready_reg_0(axi_wready_reg),
        .axi_wready_reg_1(AXIF_inst_n_55),
        .axi_wready_reg_10(AXIF_inst_n_64),
        .axi_wready_reg_11(AXIF_inst_n_65),
        .axi_wready_reg_12(AXIF_inst_n_66),
        .axi_wready_reg_13(AXIF_inst_n_67),
        .axi_wready_reg_14(AXIF_inst_n_68),
        .axi_wready_reg_15(AXIF_inst_n_69),
        .axi_wready_reg_16(AXIF_inst_n_70),
        .axi_wready_reg_17(AXIF_inst_n_71),
        .axi_wready_reg_18(AXIF_inst_n_72),
        .axi_wready_reg_19(AXIF_inst_n_73),
        .axi_wready_reg_2(AXIF_inst_n_56),
        .axi_wready_reg_20(AXIF_inst_n_74),
        .axi_wready_reg_21(AXIF_inst_n_75),
        .axi_wready_reg_22(AXIF_inst_n_76),
        .axi_wready_reg_23(AXIF_inst_n_77),
        .axi_wready_reg_24(AXIF_inst_n_78),
        .axi_wready_reg_25(AXIF_inst_n_79),
        .axi_wready_reg_26(AXIF_inst_n_80),
        .axi_wready_reg_27(AXIF_inst_n_81),
        .axi_wready_reg_28(AXIF_inst_n_82),
        .axi_wready_reg_29(AXIF_inst_n_83),
        .axi_wready_reg_3(AXIF_inst_n_57),
        .axi_wready_reg_30(AXIF_inst_n_84),
        .axi_wready_reg_31(AXIF_inst_n_85),
        .axi_wready_reg_4(AXIF_inst_n_58),
        .axi_wready_reg_5(AXIF_inst_n_59),
        .axi_wready_reg_6(AXIF_inst_n_60),
        .axi_wready_reg_7(AXIF_inst_n_61),
        .axi_wready_reg_8(AXIF_inst_n_62),
        .axi_wready_reg_9(AXIF_inst_n_63),
        .axif_aclk(axif_aclk),
        .axif_araddr(axif_araddr),
        .axif_arburst(axif_arburst),
        .axif_aresetn(axif_aresetn),
        .axif_arlen(axif_arlen),
        .axif_arvalid(axif_arvalid),
        .axif_awaddr(axif_awaddr),
        .axif_awburst(axif_awburst),
        .axif_awlen(axif_awlen),
        .axif_awvalid(axif_awvalid),
        .axif_bready(axif_bready),
        .axif_bvalid(axif_bvalid),
        .axif_rdata(axif_rdata),
        .axif_rlast(axif_rlast),
        .axif_rready(axif_rready),
        .axif_wlast(axif_wlast),
        .axif_wvalid(axif_wvalid),
        .data2_o(mem_rd_dat));
  xrf_dpp_comblock_0_0_AXIL AXIL_inst
       (.DI(AXIL_inst_n_26),
        .E(\regs_out[5]_2 ),
        .O(comblock_i_n_224),
        .Q(reg_rd_adr),
        .S(AXIL_inst_n_8),
        .\axi_araddr_reg[5]_0 (AXIL_inst_n_35),
        .axi_arready_reg_0(axil_arready),
        .\axi_awaddr_reg[2]_0 (\regs_out[6]_4 ),
        .\axi_awaddr_reg[2]_1 (\regs_out[7]_5 ),
        .\axi_awaddr_reg[2]_2 (AXIL_inst_n_19),
        .\axi_awaddr_reg[2]_3 (\regs_out[2]_7 ),
        .\axi_awaddr_reg[2]_4 (\regs_out[3]_8 ),
        .\axi_awaddr_reg[2]_5 (AXIL_inst_n_24),
        .\axi_awaddr_reg[3]_0 (\regs_out[4]_3 ),
        .\axi_awaddr_reg[3]_1 (\regs_out[1]_6 ),
        .\axi_awaddr_reg[3]_2 (AXIL_inst_n_21),
        .axi_awready_reg_0(axil_awready),
        .\axi_rdata_reg[0]_0 (comblock_i_n_62),
        .\axi_rdata_reg[0]_1 (comblock_i_n_222),
        .\axi_rdata_reg[0]_2 (comblock_i_n_223),
        .\axi_rdata_reg[10]_0 (comblock_i_n_208),
        .\axi_rdata_reg[11]_0 (comblock_i_n_207),
        .\axi_rdata_reg[11]_1 (comblock_i_n_206),
        .\axi_rdata_reg[12]_0 (comblock_i_n_205),
        .\axi_rdata_reg[13]_0 (comblock_i_n_204),
        .\axi_rdata_reg[13]_1 (comblock_i_n_203),
        .\axi_rdata_reg[14]_0 (comblock_i_n_202),
        .\axi_rdata_reg[15]_0 (comblock_i_n_137),
        .\axi_rdata_reg[15]_1 (comblock_i_n_72),
        .\axi_rdata_reg[1]_0 (comblock_i_n_63),
        .\axi_rdata_reg[1]_1 (comblock_i_n_221),
        .\axi_rdata_reg[1]_2 (comblock_i_n_68),
        .\axi_rdata_reg[1]_3 (comblock_i_n_70),
        .\axi_rdata_reg[1]_4 (comblock_i_n_69),
        .\axi_rdata_reg[2]_0 (comblock_i_n_46),
        .\axi_rdata_reg[2]_1 (comblock_i_n_220),
        .\axi_rdata_reg[3]_0 (comblock_i_n_218),
        .\axi_rdata_reg[3]_1 (comblock_i_n_219),
        .\axi_rdata_reg[4]_0 (comblock_i_n_217),
        .\axi_rdata_reg[5]_0 (comblock_i_n_215),
        .\axi_rdata_reg[5]_1 (comblock_i_n_216),
        .\axi_rdata_reg[6]_0 (comblock_i_n_214),
        .\axi_rdata_reg[7]_0 (comblock_i_n_213),
        .\axi_rdata_reg[7]_1 (comblock_i_n_212),
        .\axi_rdata_reg[8]_0 (comblock_i_n_211),
        .\axi_rdata_reg[9]_0 (comblock_i_n_210),
        .\axi_rdata_reg[9]_1 (comblock_i_n_209),
        .axi_rvalid_reg_0(axi_rvalid_reg_0),
        .axi_wready_reg_0(axil_wready),
        .axil_aclk(axil_aclk),
        .axil_araddr(axil_araddr),
        .axil_aresetn(axil_aresetn),
        .axil_arvalid(axil_arvalid),
        .axil_awaddr(axil_awaddr),
        .axil_awvalid(axil_awvalid),
        .axil_bready(axil_bready),
        .axil_bvalid(axil_bvalid),
        .axil_rdata(axil_rdata),
        .axil_rready(axil_rready),
        .axil_wvalid(axil_wvalid),
        .data2_o({fifo_in_data[15:3],fifo_in_data[1:0]}),
        .empty00_carry__0({comblock_i_n_37,comblock_i_n_38,comblock_i_n_39,comblock_i_n_40}),
        .empty00_carry__1({comblock_i_n_41,comblock_i_n_42,comblock_i_n_43,comblock_i_n_44}),
        .empty_r(\fifo_in_g.fifo_in_i/empty_r ),
        .empty_r_reg(AXIL_inst_n_13),
        .empty_r_reg_0(AXIL_inst_n_36),
        .fifo_in_count(fifo_in_count),
        .fifo_in_under_r__0(fifo_in_under_r__0),
        .fifo_in_under_r_reg(AXIL_inst_n_25),
        .fifo_out_count(fifo_out_count),
        .fifo_out_over_r__0(fifo_out_over_r__0),
        .fifo_out_over_r_reg(AXIL_inst_n_14),
        .full_r(\fifo_out_g.fifo_out_i/full_r ),
        .full_r_reg(AXIL_inst_n_10),
        .full_r_reg_0(AXIL_inst_n_37),
        .p_2_in(\fifo_in_g.fifo_in_i/p_2_in ),
        .p_4_in(\fifo_out_g.fifo_out_i/p_4_in ),
        .rd_ptr_r(\fifo_in_g.fifo_in_i/rd_ptr_r ),
        .\rd_ptr_r_reg[0] (AXIL_inst_n_11),
        .\rd_ptr_r_reg[11] ({AXIL_inst_n_31,AXIL_inst_n_32,AXIL_inst_n_33,AXIL_inst_n_34}),
        .\rd_ptr_r_reg[3] (comblock_i_n_64),
        .\rd_ptr_r_reg[7] ({AXIL_inst_n_27,AXIL_inst_n_28,AXIL_inst_n_29,AXIL_inst_n_30}),
        .reg0_i(reg0_i),
        .reg1_i(reg1_i),
        .reg2_i(reg2_i),
        .reg3_i(reg3_i),
        .reg4_o({reg4_o[10],reg4_o[4],reg4_o[2:1]}),
        .reg5_o({reg5_o[10],reg5_o[4],reg5_o[2:1]}),
        .reg6_o({reg6_o[10],reg6_o[4],reg6_o[2:1]}),
        .reg7_o({reg7_o[10],reg7_o[4],reg7_o[2:1]}),
        .wr_ptr_r(\fifo_out_g.fifo_out_i/wr_ptr_r ),
        .\wr_ptr_r_reg[3] (comblock_i_n_66));
  xrf_dpp_comblock_0_0_ComBlock comblock_i
       (.ADDRARDADDR(mem_adr),
        .DI(AXIL_inst_n_26),
        .E(AXIL_inst_n_21),
        .O(comblock_i_n_224),
        .Q(reg_rd_adr),
        .S(AXIL_inst_n_8),
        .WEA(AXIF_inst_n_54),
        .addr2_i({AXIF_inst_n_38,AXIF_inst_n_39,AXIF_inst_n_40,AXIF_inst_n_41,AXIF_inst_n_42,AXIF_inst_n_43,AXIF_inst_n_44,AXIF_inst_n_45,AXIF_inst_n_46,AXIF_inst_n_47,AXIF_inst_n_48,AXIF_inst_n_49,AXIF_inst_n_50,AXIF_inst_n_51,AXIF_inst_n_52,AXIF_inst_n_53}),
        .\axi_araddr_reg[4] (comblock_i_n_62),
        .\axi_araddr_reg[4]_0 (comblock_i_n_63),
        .\axi_araddr_reg[4]_1 (comblock_i_n_202),
        .\axi_araddr_reg[4]_2 (comblock_i_n_205),
        .\axi_araddr_reg[4]_3 (comblock_i_n_211),
        .\axi_araddr_reg[4]_4 (comblock_i_n_214),
        .\axi_rdata_reg[1] (AXIL_inst_n_35),
        .\axi_rdata_reg[23] ({AXIL_inst_n_27,AXIL_inst_n_28,AXIL_inst_n_29,AXIL_inst_n_30}),
        .\axi_rdata_reg[27] ({AXIL_inst_n_31,AXIL_inst_n_32,AXIL_inst_n_33,AXIL_inst_n_34}),
        .axif_aclk(axif_aclk),
        .axif_wdata(axif_wdata),
        .axil_aclk(axil_aclk),
        .axil_wdata(axil_wdata),
        .data2_o({fifo_in_data[15:3],fifo_in_data[1:0]}),
        .empty00_carry__0(comblock_i_n_69),
        .empty00_carry__1(comblock_i_n_68),
        .empty00_carry__2(comblock_i_n_70),
        .empty_r(\fifo_in_g.fifo_in_i/empty_r ),
        .fifo_aempty_o(fifo_aempty_o),
        .fifo_afull_o(fifo_afull_o),
        .fifo_clear_i(fifo_clear_i),
        .fifo_clk_i(fifo_clk_i),
        .fifo_data_i(fifo_data_i),
        .fifo_data_o(fifo_data_o),
        .fifo_empty_o(fifo_empty_o),
        .fifo_full_o(fifo_full_o),
        .fifo_in_clear_reg_0(AXIL_inst_n_24),
        .fifo_in_count(fifo_in_count),
        .fifo_in_under_r__0(fifo_in_under_r__0),
        .fifo_in_under_r_reg_0(AXIL_inst_n_25),
        .fifo_out_clear_reg_0(AXIL_inst_n_19),
        .fifo_out_count(fifo_out_count),
        .fifo_out_over_r__0(fifo_out_over_r__0),
        .fifo_out_over_r_reg_0(comblock_i_n_46),
        .fifo_out_over_r_reg_1(AXIL_inst_n_14),
        .fifo_overflow_o(fifo_overflow_o),
        .fifo_re_i(fifo_re_i),
        .fifo_underflow_o(fifo_underflow_o),
        .fifo_valid_o(fifo_valid_o),
        .fifo_we_i(fifo_we_i),
        .full_r(\fifo_out_g.fifo_out_i/full_r ),
        .p_2_in(\fifo_in_g.fifo_in_i/p_2_in ),
        .p_4_in(\fifo_out_g.fifo_out_i/p_4_in ),
        .ram_addr_i(ram_addr_i),
        .ram_clk_i(ram_clk_i),
        .ram_data_i(ram_data_i),
        .ram_data_o(ram_data_o),
        .ram_reg_0_0(AXIF_inst_n_70),
        .ram_reg_0_1(AXIF_inst_n_72),
        .ram_reg_0_10(AXIF_inst_n_65),
        .ram_reg_0_11(AXIF_inst_n_63),
        .ram_reg_0_12(AXIF_inst_n_61),
        .ram_reg_0_13(AXIF_inst_n_59),
        .ram_reg_0_14(AXIF_inst_n_57),
        .ram_reg_0_15(AXIF_inst_n_55),
        .ram_reg_0_2(AXIF_inst_n_74),
        .ram_reg_0_3(AXIF_inst_n_76),
        .ram_reg_0_4(AXIF_inst_n_78),
        .ram_reg_0_5(AXIF_inst_n_80),
        .ram_reg_0_6(AXIF_inst_n_82),
        .ram_reg_0_7(AXIF_inst_n_84),
        .ram_reg_0_8(AXIF_inst_n_69),
        .ram_reg_0_9(AXIF_inst_n_67),
        .ram_reg_1_0(AXIF_inst_n_71),
        .ram_reg_1_1(AXIF_inst_n_73),
        .ram_reg_1_10(AXIF_inst_n_64),
        .ram_reg_1_11(AXIF_inst_n_62),
        .ram_reg_1_12(AXIF_inst_n_60),
        .ram_reg_1_13(AXIF_inst_n_58),
        .ram_reg_1_14(AXIF_inst_n_56),
        .ram_reg_1_15(mem_rd_dat),
        .ram_reg_1_2(AXIF_inst_n_75),
        .ram_reg_1_3(AXIF_inst_n_77),
        .ram_reg_1_4(AXIF_inst_n_79),
        .ram_reg_1_5(AXIF_inst_n_81),
        .ram_reg_1_6(AXIF_inst_n_83),
        .ram_reg_1_7(AXIF_inst_n_85),
        .ram_reg_1_8(AXIF_inst_n_68),
        .ram_reg_1_9(AXIF_inst_n_66),
        .ram_we_i(ram_we_i),
        .\rd_ptr_r_reg[0] (\fifo_in_g.fifo_in_i/rd_ptr_r ),
        .\rd_ptr_r_reg[11] ({comblock_i_n_41,comblock_i_n_42,comblock_i_n_43,comblock_i_n_44}),
        .\rd_ptr_r_reg[12] (comblock_i_n_64),
        .\rd_ptr_r_reg[3] (AXIL_inst_n_36),
        .\rd_ptr_r_reg[3]_0 (AXIL_inst_n_11),
        .\rd_ptr_r_reg[3]_1 (AXIL_inst_n_13),
        .\rd_ptr_r_reg[7] ({comblock_i_n_37,comblock_i_n_38,comblock_i_n_39,comblock_i_n_40}),
        .reg0_o(reg0_o),
        .reg1_o(reg1_o),
        .reg2_o(reg2_o),
        .reg3_o(reg3_o),
        .reg4_o(reg4_o),
        .reg5_o(reg5_o),
        .reg6_o(reg6_o),
        .reg7_o(reg7_o),
        .\regs_out_reg[1][15]_0 (\regs_out[1]_6 ),
        .\regs_out_reg[2][15]_0 (\regs_out[2]_7 ),
        .\regs_out_reg[3][0]_0 (comblock_i_n_222),
        .\regs_out_reg[3][10]_0 (comblock_i_n_208),
        .\regs_out_reg[3][11]_0 (comblock_i_n_207),
        .\regs_out_reg[3][13]_0 (comblock_i_n_204),
        .\regs_out_reg[3][15]_0 (comblock_i_n_137),
        .\regs_out_reg[3][15]_1 (\regs_out[3]_8 ),
        .\regs_out_reg[3][1]_0 (comblock_i_n_221),
        .\regs_out_reg[3][2]_0 (comblock_i_n_220),
        .\regs_out_reg[3][3]_0 (comblock_i_n_218),
        .\regs_out_reg[3][4]_0 (comblock_i_n_217),
        .\regs_out_reg[3][5]_0 (comblock_i_n_216),
        .\regs_out_reg[3][7]_0 (comblock_i_n_213),
        .\regs_out_reg[3][9]_0 (comblock_i_n_209),
        .\regs_out_reg[4][15]_0 (\regs_out[4]_3 ),
        .\regs_out_reg[5][15]_0 (\regs_out[5]_2 ),
        .\regs_out_reg[6][15]_0 (\regs_out[6]_4 ),
        .\regs_out_reg[7][0]_0 (comblock_i_n_223),
        .\regs_out_reg[7][11]_0 (comblock_i_n_206),
        .\regs_out_reg[7][13]_0 (comblock_i_n_203),
        .\regs_out_reg[7][15]_0 (comblock_i_n_72),
        .\regs_out_reg[7][15]_1 (\regs_out[7]_5 ),
        .\regs_out_reg[7][3]_0 (comblock_i_n_219),
        .\regs_out_reg[7][5]_0 (comblock_i_n_215),
        .\regs_out_reg[7][7]_0 (comblock_i_n_212),
        .\regs_out_reg[7][9]_0 (comblock_i_n_210),
        .\wr_ptr_r_reg[0] (\fifo_out_g.fifo_out_i/wr_ptr_r ),
        .\wr_ptr_r_reg[12] (comblock_i_n_66),
        .\wr_ptr_r_reg[3] (AXIL_inst_n_10),
        .\wr_ptr_r_reg[3]_0 (AXIL_inst_n_37));
endmodule

(* ORIG_REF_NAME = "tdpram" *) 
module xrf_dpp_comblock_0_0_tdpram
   (ram_reg_1_15_0,
    ram_data_o,
    axif_aclk,
    ram_clk_i,
    ADDRARDADDR,
    ram_addr_i,
    axif_wdata,
    ram_data_i,
    ram_reg_0_0_0,
    ram_we_i,
    ram_reg_1_0_0,
    ram_reg_0_1_0,
    ram_reg_1_1_0,
    ram_reg_0_2_0,
    ram_reg_1_2_0,
    ram_reg_0_3_0,
    ram_reg_1_3_0,
    ram_reg_0_4_0,
    ram_reg_1_4_0,
    ram_reg_0_5_0,
    ram_reg_1_5_0,
    ram_reg_0_6_0,
    ram_reg_1_6_0,
    ram_reg_0_7_0,
    ram_reg_1_7_0,
    ram_reg_0_8_0,
    ram_reg_1_8_0,
    ram_reg_0_9_0,
    ram_reg_1_9_0,
    ram_reg_0_10_0,
    ram_reg_1_10_0,
    addr2_i,
    ram_reg_0_11_0,
    ram_reg_1_11_0,
    ram_reg_0_12_0,
    ram_reg_1_12_0,
    ram_reg_0_13_0,
    ram_reg_1_13_0,
    ram_reg_0_14_0,
    ram_reg_1_14_0,
    ram_reg_0_15_0,
    WEA);
  output [15:0]ram_reg_1_15_0;
  output [15:0]ram_data_o;
  input axif_aclk;
  input ram_clk_i;
  input [15:0]ADDRARDADDR;
  input [15:0]ram_addr_i;
  input [15:0]axif_wdata;
  input [15:0]ram_data_i;
  input [0:0]ram_reg_0_0_0;
  input ram_we_i;
  input [0:0]ram_reg_1_0_0;
  input [0:0]ram_reg_0_1_0;
  input [0:0]ram_reg_1_1_0;
  input [0:0]ram_reg_0_2_0;
  input [0:0]ram_reg_1_2_0;
  input [0:0]ram_reg_0_3_0;
  input [0:0]ram_reg_1_3_0;
  input [0:0]ram_reg_0_4_0;
  input [0:0]ram_reg_1_4_0;
  input [0:0]ram_reg_0_5_0;
  input [0:0]ram_reg_1_5_0;
  input [0:0]ram_reg_0_6_0;
  input [0:0]ram_reg_1_6_0;
  input [0:0]ram_reg_0_7_0;
  input [0:0]ram_reg_1_7_0;
  input [0:0]ram_reg_0_8_0;
  input [0:0]ram_reg_1_8_0;
  input [0:0]ram_reg_0_9_0;
  input [0:0]ram_reg_1_9_0;
  input [0:0]ram_reg_0_10_0;
  input [0:0]ram_reg_1_10_0;
  input [15:0]addr2_i;
  input [0:0]ram_reg_0_11_0;
  input [0:0]ram_reg_1_11_0;
  input [0:0]ram_reg_0_12_0;
  input [0:0]ram_reg_1_12_0;
  input [0:0]ram_reg_0_13_0;
  input [0:0]ram_reg_1_13_0;
  input [0:0]ram_reg_0_14_0;
  input [0:0]ram_reg_1_14_0;
  input [0:0]ram_reg_0_15_0;
  input [0:0]WEA;

  wire [15:0]ADDRARDADDR;
  wire [0:0]WEA;
  wire [15:0]addr2_i;
  wire axif_aclk;
  wire [15:0]axif_wdata;
  wire [15:0]ram_addr_i;
  wire ram_clk_i;
  wire [15:0]ram_data_i;
  wire [15:0]ram_data_o;
  wire [0:0]ram_reg_0_0_0;
  wire ram_reg_0_0_n_0;
  wire ram_reg_0_0_n_1;
  wire [0:0]ram_reg_0_10_0;
  wire ram_reg_0_10_n_0;
  wire ram_reg_0_10_n_1;
  wire [0:0]ram_reg_0_11_0;
  wire ram_reg_0_11_n_0;
  wire ram_reg_0_11_n_1;
  wire [0:0]ram_reg_0_12_0;
  wire ram_reg_0_12_n_0;
  wire ram_reg_0_12_n_1;
  wire [0:0]ram_reg_0_13_0;
  wire ram_reg_0_13_n_0;
  wire ram_reg_0_13_n_1;
  wire [0:0]ram_reg_0_14_0;
  wire ram_reg_0_14_n_0;
  wire ram_reg_0_14_n_1;
  wire [0:0]ram_reg_0_15_0;
  wire ram_reg_0_15_n_0;
  wire ram_reg_0_15_n_1;
  wire [0:0]ram_reg_0_1_0;
  wire ram_reg_0_1_n_0;
  wire ram_reg_0_1_n_1;
  wire [0:0]ram_reg_0_2_0;
  wire ram_reg_0_2_n_0;
  wire ram_reg_0_2_n_1;
  wire [0:0]ram_reg_0_3_0;
  wire ram_reg_0_3_n_0;
  wire ram_reg_0_3_n_1;
  wire [0:0]ram_reg_0_4_0;
  wire ram_reg_0_4_n_0;
  wire ram_reg_0_4_n_1;
  wire [0:0]ram_reg_0_5_0;
  wire ram_reg_0_5_n_0;
  wire ram_reg_0_5_n_1;
  wire [0:0]ram_reg_0_6_0;
  wire ram_reg_0_6_n_0;
  wire ram_reg_0_6_n_1;
  wire [0:0]ram_reg_0_7_0;
  wire ram_reg_0_7_n_0;
  wire ram_reg_0_7_n_1;
  wire [0:0]ram_reg_0_8_0;
  wire ram_reg_0_8_n_0;
  wire ram_reg_0_8_n_1;
  wire [0:0]ram_reg_0_9_0;
  wire ram_reg_0_9_n_0;
  wire ram_reg_0_9_n_1;
  wire [0:0]ram_reg_1_0_0;
  wire [0:0]ram_reg_1_10_0;
  wire [0:0]ram_reg_1_11_0;
  wire [0:0]ram_reg_1_12_0;
  wire [0:0]ram_reg_1_13_0;
  wire [0:0]ram_reg_1_14_0;
  wire [15:0]ram_reg_1_15_0;
  wire [0:0]ram_reg_1_1_0;
  wire [0:0]ram_reg_1_2_0;
  wire [0:0]ram_reg_1_3_0;
  wire [0:0]ram_reg_1_4_0;
  wire [0:0]ram_reg_1_5_0;
  wire [0:0]ram_reg_1_6_0;
  wire [0:0]ram_reg_1_7_0;
  wire [0:0]ram_reg_1_8_0;
  wire [0:0]ram_reg_1_9_0;
  wire ram_we_i;
  wire NLW_ram_reg_0_0_DBITERR_UNCONNECTED;
  wire NLW_ram_reg_0_0_INJECTDBITERR_UNCONNECTED;
  wire NLW_ram_reg_0_0_INJECTSBITERR_UNCONNECTED;
  wire NLW_ram_reg_0_0_SBITERR_UNCONNECTED;
  wire [0:0]NLW_ram_reg_0_0_DIPADIP_UNCONNECTED;
  wire [0:0]NLW_ram_reg_0_0_DIPBDIP_UNCONNECTED;
  wire [31:0]NLW_ram_reg_0_0_DOADO_UNCONNECTED;
  wire [31:0]NLW_ram_reg_0_0_DOBDO_UNCONNECTED;
  wire [3:0]NLW_ram_reg_0_0_DOPADOP_UNCONNECTED;
  wire [3:0]NLW_ram_reg_0_0_DOPBDOP_UNCONNECTED;
  wire [7:0]NLW_ram_reg_0_0_ECCPARITY_UNCONNECTED;
  wire [8:0]NLW_ram_reg_0_0_RDADDRECC_UNCONNECTED;
  wire NLW_ram_reg_0_1_DBITERR_UNCONNECTED;
  wire NLW_ram_reg_0_1_INJECTDBITERR_UNCONNECTED;
  wire NLW_ram_reg_0_1_INJECTSBITERR_UNCONNECTED;
  wire NLW_ram_reg_0_1_SBITERR_UNCONNECTED;
  wire [0:0]NLW_ram_reg_0_1_DIPADIP_UNCONNECTED;
  wire [0:0]NLW_ram_reg_0_1_DIPBDIP_UNCONNECTED;
  wire [31:0]NLW_ram_reg_0_1_DOADO_UNCONNECTED;
  wire [31:0]NLW_ram_reg_0_1_DOBDO_UNCONNECTED;
  wire [3:0]NLW_ram_reg_0_1_DOPADOP_UNCONNECTED;
  wire [3:0]NLW_ram_reg_0_1_DOPBDOP_UNCONNECTED;
  wire [7:0]NLW_ram_reg_0_1_ECCPARITY_UNCONNECTED;
  wire [8:0]NLW_ram_reg_0_1_RDADDRECC_UNCONNECTED;
  wire NLW_ram_reg_0_10_DBITERR_UNCONNECTED;
  wire NLW_ram_reg_0_10_INJECTDBITERR_UNCONNECTED;
  wire NLW_ram_reg_0_10_INJECTSBITERR_UNCONNECTED;
  wire NLW_ram_reg_0_10_SBITERR_UNCONNECTED;
  wire [0:0]NLW_ram_reg_0_10_DIPADIP_UNCONNECTED;
  wire [0:0]NLW_ram_reg_0_10_DIPBDIP_UNCONNECTED;
  wire [31:0]NLW_ram_reg_0_10_DOADO_UNCONNECTED;
  wire [31:0]NLW_ram_reg_0_10_DOBDO_UNCONNECTED;
  wire [3:0]NLW_ram_reg_0_10_DOPADOP_UNCONNECTED;
  wire [3:0]NLW_ram_reg_0_10_DOPBDOP_UNCONNECTED;
  wire [7:0]NLW_ram_reg_0_10_ECCPARITY_UNCONNECTED;
  wire [8:0]NLW_ram_reg_0_10_RDADDRECC_UNCONNECTED;
  wire NLW_ram_reg_0_11_DBITERR_UNCONNECTED;
  wire NLW_ram_reg_0_11_INJECTDBITERR_UNCONNECTED;
  wire NLW_ram_reg_0_11_INJECTSBITERR_UNCONNECTED;
  wire NLW_ram_reg_0_11_SBITERR_UNCONNECTED;
  wire [0:0]NLW_ram_reg_0_11_DIPADIP_UNCONNECTED;
  wire [0:0]NLW_ram_reg_0_11_DIPBDIP_UNCONNECTED;
  wire [31:0]NLW_ram_reg_0_11_DOADO_UNCONNECTED;
  wire [31:0]NLW_ram_reg_0_11_DOBDO_UNCONNECTED;
  wire [3:0]NLW_ram_reg_0_11_DOPADOP_UNCONNECTED;
  wire [3:0]NLW_ram_reg_0_11_DOPBDOP_UNCONNECTED;
  wire [7:0]NLW_ram_reg_0_11_ECCPARITY_UNCONNECTED;
  wire [8:0]NLW_ram_reg_0_11_RDADDRECC_UNCONNECTED;
  wire NLW_ram_reg_0_12_DBITERR_UNCONNECTED;
  wire NLW_ram_reg_0_12_INJECTDBITERR_UNCONNECTED;
  wire NLW_ram_reg_0_12_INJECTSBITERR_UNCONNECTED;
  wire NLW_ram_reg_0_12_SBITERR_UNCONNECTED;
  wire [0:0]NLW_ram_reg_0_12_DIPADIP_UNCONNECTED;
  wire [0:0]NLW_ram_reg_0_12_DIPBDIP_UNCONNECTED;
  wire [31:0]NLW_ram_reg_0_12_DOADO_UNCONNECTED;
  wire [31:0]NLW_ram_reg_0_12_DOBDO_UNCONNECTED;
  wire [3:0]NLW_ram_reg_0_12_DOPADOP_UNCONNECTED;
  wire [3:0]NLW_ram_reg_0_12_DOPBDOP_UNCONNECTED;
  wire [7:0]NLW_ram_reg_0_12_ECCPARITY_UNCONNECTED;
  wire [8:0]NLW_ram_reg_0_12_RDADDRECC_UNCONNECTED;
  wire NLW_ram_reg_0_13_DBITERR_UNCONNECTED;
  wire NLW_ram_reg_0_13_INJECTDBITERR_UNCONNECTED;
  wire NLW_ram_reg_0_13_INJECTSBITERR_UNCONNECTED;
  wire NLW_ram_reg_0_13_SBITERR_UNCONNECTED;
  wire [0:0]NLW_ram_reg_0_13_DIPADIP_UNCONNECTED;
  wire [0:0]NLW_ram_reg_0_13_DIPBDIP_UNCONNECTED;
  wire [31:0]NLW_ram_reg_0_13_DOADO_UNCONNECTED;
  wire [31:0]NLW_ram_reg_0_13_DOBDO_UNCONNECTED;
  wire [3:0]NLW_ram_reg_0_13_DOPADOP_UNCONNECTED;
  wire [3:0]NLW_ram_reg_0_13_DOPBDOP_UNCONNECTED;
  wire [7:0]NLW_ram_reg_0_13_ECCPARITY_UNCONNECTED;
  wire [8:0]NLW_ram_reg_0_13_RDADDRECC_UNCONNECTED;
  wire NLW_ram_reg_0_14_DBITERR_UNCONNECTED;
  wire NLW_ram_reg_0_14_INJECTDBITERR_UNCONNECTED;
  wire NLW_ram_reg_0_14_INJECTSBITERR_UNCONNECTED;
  wire NLW_ram_reg_0_14_SBITERR_UNCONNECTED;
  wire [0:0]NLW_ram_reg_0_14_DIPADIP_UNCONNECTED;
  wire [0:0]NLW_ram_reg_0_14_DIPBDIP_UNCONNECTED;
  wire [31:0]NLW_ram_reg_0_14_DOADO_UNCONNECTED;
  wire [31:0]NLW_ram_reg_0_14_DOBDO_UNCONNECTED;
  wire [3:0]NLW_ram_reg_0_14_DOPADOP_UNCONNECTED;
  wire [3:0]NLW_ram_reg_0_14_DOPBDOP_UNCONNECTED;
  wire [7:0]NLW_ram_reg_0_14_ECCPARITY_UNCONNECTED;
  wire [8:0]NLW_ram_reg_0_14_RDADDRECC_UNCONNECTED;
  wire NLW_ram_reg_0_15_DBITERR_UNCONNECTED;
  wire NLW_ram_reg_0_15_INJECTDBITERR_UNCONNECTED;
  wire NLW_ram_reg_0_15_INJECTSBITERR_UNCONNECTED;
  wire NLW_ram_reg_0_15_SBITERR_UNCONNECTED;
  wire [0:0]NLW_ram_reg_0_15_DIPADIP_UNCONNECTED;
  wire [0:0]NLW_ram_reg_0_15_DIPBDIP_UNCONNECTED;
  wire [31:0]NLW_ram_reg_0_15_DOADO_UNCONNECTED;
  wire [31:0]NLW_ram_reg_0_15_DOBDO_UNCONNECTED;
  wire [3:0]NLW_ram_reg_0_15_DOPADOP_UNCONNECTED;
  wire [3:0]NLW_ram_reg_0_15_DOPBDOP_UNCONNECTED;
  wire [7:0]NLW_ram_reg_0_15_ECCPARITY_UNCONNECTED;
  wire [8:0]NLW_ram_reg_0_15_RDADDRECC_UNCONNECTED;
  wire NLW_ram_reg_0_2_DBITERR_UNCONNECTED;
  wire NLW_ram_reg_0_2_INJECTDBITERR_UNCONNECTED;
  wire NLW_ram_reg_0_2_INJECTSBITERR_UNCONNECTED;
  wire NLW_ram_reg_0_2_SBITERR_UNCONNECTED;
  wire [0:0]NLW_ram_reg_0_2_DIPADIP_UNCONNECTED;
  wire [0:0]NLW_ram_reg_0_2_DIPBDIP_UNCONNECTED;
  wire [31:0]NLW_ram_reg_0_2_DOADO_UNCONNECTED;
  wire [31:0]NLW_ram_reg_0_2_DOBDO_UNCONNECTED;
  wire [3:0]NLW_ram_reg_0_2_DOPADOP_UNCONNECTED;
  wire [3:0]NLW_ram_reg_0_2_DOPBDOP_UNCONNECTED;
  wire [7:0]NLW_ram_reg_0_2_ECCPARITY_UNCONNECTED;
  wire [8:0]NLW_ram_reg_0_2_RDADDRECC_UNCONNECTED;
  wire NLW_ram_reg_0_3_DBITERR_UNCONNECTED;
  wire NLW_ram_reg_0_3_INJECTDBITERR_UNCONNECTED;
  wire NLW_ram_reg_0_3_INJECTSBITERR_UNCONNECTED;
  wire NLW_ram_reg_0_3_SBITERR_UNCONNECTED;
  wire [0:0]NLW_ram_reg_0_3_DIPADIP_UNCONNECTED;
  wire [0:0]NLW_ram_reg_0_3_DIPBDIP_UNCONNECTED;
  wire [31:0]NLW_ram_reg_0_3_DOADO_UNCONNECTED;
  wire [31:0]NLW_ram_reg_0_3_DOBDO_UNCONNECTED;
  wire [3:0]NLW_ram_reg_0_3_DOPADOP_UNCONNECTED;
  wire [3:0]NLW_ram_reg_0_3_DOPBDOP_UNCONNECTED;
  wire [7:0]NLW_ram_reg_0_3_ECCPARITY_UNCONNECTED;
  wire [8:0]NLW_ram_reg_0_3_RDADDRECC_UNCONNECTED;
  wire NLW_ram_reg_0_4_DBITERR_UNCONNECTED;
  wire NLW_ram_reg_0_4_INJECTDBITERR_UNCONNECTED;
  wire NLW_ram_reg_0_4_INJECTSBITERR_UNCONNECTED;
  wire NLW_ram_reg_0_4_SBITERR_UNCONNECTED;
  wire [0:0]NLW_ram_reg_0_4_DIPADIP_UNCONNECTED;
  wire [0:0]NLW_ram_reg_0_4_DIPBDIP_UNCONNECTED;
  wire [31:0]NLW_ram_reg_0_4_DOADO_UNCONNECTED;
  wire [31:0]NLW_ram_reg_0_4_DOBDO_UNCONNECTED;
  wire [3:0]NLW_ram_reg_0_4_DOPADOP_UNCONNECTED;
  wire [3:0]NLW_ram_reg_0_4_DOPBDOP_UNCONNECTED;
  wire [7:0]NLW_ram_reg_0_4_ECCPARITY_UNCONNECTED;
  wire [8:0]NLW_ram_reg_0_4_RDADDRECC_UNCONNECTED;
  wire NLW_ram_reg_0_5_DBITERR_UNCONNECTED;
  wire NLW_ram_reg_0_5_INJECTDBITERR_UNCONNECTED;
  wire NLW_ram_reg_0_5_INJECTSBITERR_UNCONNECTED;
  wire NLW_ram_reg_0_5_SBITERR_UNCONNECTED;
  wire [0:0]NLW_ram_reg_0_5_DIPADIP_UNCONNECTED;
  wire [0:0]NLW_ram_reg_0_5_DIPBDIP_UNCONNECTED;
  wire [31:0]NLW_ram_reg_0_5_DOADO_UNCONNECTED;
  wire [31:0]NLW_ram_reg_0_5_DOBDO_UNCONNECTED;
  wire [3:0]NLW_ram_reg_0_5_DOPADOP_UNCONNECTED;
  wire [3:0]NLW_ram_reg_0_5_DOPBDOP_UNCONNECTED;
  wire [7:0]NLW_ram_reg_0_5_ECCPARITY_UNCONNECTED;
  wire [8:0]NLW_ram_reg_0_5_RDADDRECC_UNCONNECTED;
  wire NLW_ram_reg_0_6_DBITERR_UNCONNECTED;
  wire NLW_ram_reg_0_6_INJECTDBITERR_UNCONNECTED;
  wire NLW_ram_reg_0_6_INJECTSBITERR_UNCONNECTED;
  wire NLW_ram_reg_0_6_SBITERR_UNCONNECTED;
  wire [0:0]NLW_ram_reg_0_6_DIPADIP_UNCONNECTED;
  wire [0:0]NLW_ram_reg_0_6_DIPBDIP_UNCONNECTED;
  wire [31:0]NLW_ram_reg_0_6_DOADO_UNCONNECTED;
  wire [31:0]NLW_ram_reg_0_6_DOBDO_UNCONNECTED;
  wire [3:0]NLW_ram_reg_0_6_DOPADOP_UNCONNECTED;
  wire [3:0]NLW_ram_reg_0_6_DOPBDOP_UNCONNECTED;
  wire [7:0]NLW_ram_reg_0_6_ECCPARITY_UNCONNECTED;
  wire [8:0]NLW_ram_reg_0_6_RDADDRECC_UNCONNECTED;
  wire NLW_ram_reg_0_7_DBITERR_UNCONNECTED;
  wire NLW_ram_reg_0_7_INJECTDBITERR_UNCONNECTED;
  wire NLW_ram_reg_0_7_INJECTSBITERR_UNCONNECTED;
  wire NLW_ram_reg_0_7_SBITERR_UNCONNECTED;
  wire [0:0]NLW_ram_reg_0_7_DIPADIP_UNCONNECTED;
  wire [0:0]NLW_ram_reg_0_7_DIPBDIP_UNCONNECTED;
  wire [31:0]NLW_ram_reg_0_7_DOADO_UNCONNECTED;
  wire [31:0]NLW_ram_reg_0_7_DOBDO_UNCONNECTED;
  wire [3:0]NLW_ram_reg_0_7_DOPADOP_UNCONNECTED;
  wire [3:0]NLW_ram_reg_0_7_DOPBDOP_UNCONNECTED;
  wire [7:0]NLW_ram_reg_0_7_ECCPARITY_UNCONNECTED;
  wire [8:0]NLW_ram_reg_0_7_RDADDRECC_UNCONNECTED;
  wire NLW_ram_reg_0_8_DBITERR_UNCONNECTED;
  wire NLW_ram_reg_0_8_INJECTDBITERR_UNCONNECTED;
  wire NLW_ram_reg_0_8_INJECTSBITERR_UNCONNECTED;
  wire NLW_ram_reg_0_8_SBITERR_UNCONNECTED;
  wire [0:0]NLW_ram_reg_0_8_DIPADIP_UNCONNECTED;
  wire [0:0]NLW_ram_reg_0_8_DIPBDIP_UNCONNECTED;
  wire [31:0]NLW_ram_reg_0_8_DOADO_UNCONNECTED;
  wire [31:0]NLW_ram_reg_0_8_DOBDO_UNCONNECTED;
  wire [3:0]NLW_ram_reg_0_8_DOPADOP_UNCONNECTED;
  wire [3:0]NLW_ram_reg_0_8_DOPBDOP_UNCONNECTED;
  wire [7:0]NLW_ram_reg_0_8_ECCPARITY_UNCONNECTED;
  wire [8:0]NLW_ram_reg_0_8_RDADDRECC_UNCONNECTED;
  wire NLW_ram_reg_0_9_DBITERR_UNCONNECTED;
  wire NLW_ram_reg_0_9_INJECTDBITERR_UNCONNECTED;
  wire NLW_ram_reg_0_9_INJECTSBITERR_UNCONNECTED;
  wire NLW_ram_reg_0_9_SBITERR_UNCONNECTED;
  wire [0:0]NLW_ram_reg_0_9_DIPADIP_UNCONNECTED;
  wire [0:0]NLW_ram_reg_0_9_DIPBDIP_UNCONNECTED;
  wire [31:0]NLW_ram_reg_0_9_DOADO_UNCONNECTED;
  wire [31:0]NLW_ram_reg_0_9_DOBDO_UNCONNECTED;
  wire [3:0]NLW_ram_reg_0_9_DOPADOP_UNCONNECTED;
  wire [3:0]NLW_ram_reg_0_9_DOPBDOP_UNCONNECTED;
  wire [7:0]NLW_ram_reg_0_9_ECCPARITY_UNCONNECTED;
  wire [8:0]NLW_ram_reg_0_9_RDADDRECC_UNCONNECTED;
  wire NLW_ram_reg_1_0_CASCADEOUTA_UNCONNECTED;
  wire NLW_ram_reg_1_0_CASCADEOUTB_UNCONNECTED;
  wire NLW_ram_reg_1_0_DBITERR_UNCONNECTED;
  wire NLW_ram_reg_1_0_INJECTDBITERR_UNCONNECTED;
  wire NLW_ram_reg_1_0_INJECTSBITERR_UNCONNECTED;
  wire NLW_ram_reg_1_0_SBITERR_UNCONNECTED;
  wire [0:0]NLW_ram_reg_1_0_DIPADIP_UNCONNECTED;
  wire [0:0]NLW_ram_reg_1_0_DIPBDIP_UNCONNECTED;
  wire [31:1]NLW_ram_reg_1_0_DOADO_UNCONNECTED;
  wire [31:1]NLW_ram_reg_1_0_DOBDO_UNCONNECTED;
  wire [3:0]NLW_ram_reg_1_0_DOPADOP_UNCONNECTED;
  wire [3:0]NLW_ram_reg_1_0_DOPBDOP_UNCONNECTED;
  wire [7:0]NLW_ram_reg_1_0_ECCPARITY_UNCONNECTED;
  wire [8:0]NLW_ram_reg_1_0_RDADDRECC_UNCONNECTED;
  wire NLW_ram_reg_1_1_CASCADEOUTA_UNCONNECTED;
  wire NLW_ram_reg_1_1_CASCADEOUTB_UNCONNECTED;
  wire NLW_ram_reg_1_1_DBITERR_UNCONNECTED;
  wire NLW_ram_reg_1_1_INJECTDBITERR_UNCONNECTED;
  wire NLW_ram_reg_1_1_INJECTSBITERR_UNCONNECTED;
  wire NLW_ram_reg_1_1_SBITERR_UNCONNECTED;
  wire [0:0]NLW_ram_reg_1_1_DIPADIP_UNCONNECTED;
  wire [0:0]NLW_ram_reg_1_1_DIPBDIP_UNCONNECTED;
  wire [31:1]NLW_ram_reg_1_1_DOADO_UNCONNECTED;
  wire [31:1]NLW_ram_reg_1_1_DOBDO_UNCONNECTED;
  wire [3:0]NLW_ram_reg_1_1_DOPADOP_UNCONNECTED;
  wire [3:0]NLW_ram_reg_1_1_DOPBDOP_UNCONNECTED;
  wire [7:0]NLW_ram_reg_1_1_ECCPARITY_UNCONNECTED;
  wire [8:0]NLW_ram_reg_1_1_RDADDRECC_UNCONNECTED;
  wire NLW_ram_reg_1_10_CASCADEOUTA_UNCONNECTED;
  wire NLW_ram_reg_1_10_CASCADEOUTB_UNCONNECTED;
  wire NLW_ram_reg_1_10_DBITERR_UNCONNECTED;
  wire NLW_ram_reg_1_10_INJECTDBITERR_UNCONNECTED;
  wire NLW_ram_reg_1_10_INJECTSBITERR_UNCONNECTED;
  wire NLW_ram_reg_1_10_SBITERR_UNCONNECTED;
  wire [0:0]NLW_ram_reg_1_10_DIPADIP_UNCONNECTED;
  wire [0:0]NLW_ram_reg_1_10_DIPBDIP_UNCONNECTED;
  wire [31:1]NLW_ram_reg_1_10_DOADO_UNCONNECTED;
  wire [31:1]NLW_ram_reg_1_10_DOBDO_UNCONNECTED;
  wire [3:0]NLW_ram_reg_1_10_DOPADOP_UNCONNECTED;
  wire [3:0]NLW_ram_reg_1_10_DOPBDOP_UNCONNECTED;
  wire [7:0]NLW_ram_reg_1_10_ECCPARITY_UNCONNECTED;
  wire [8:0]NLW_ram_reg_1_10_RDADDRECC_UNCONNECTED;
  wire NLW_ram_reg_1_11_CASCADEOUTA_UNCONNECTED;
  wire NLW_ram_reg_1_11_CASCADEOUTB_UNCONNECTED;
  wire NLW_ram_reg_1_11_DBITERR_UNCONNECTED;
  wire NLW_ram_reg_1_11_INJECTDBITERR_UNCONNECTED;
  wire NLW_ram_reg_1_11_INJECTSBITERR_UNCONNECTED;
  wire NLW_ram_reg_1_11_SBITERR_UNCONNECTED;
  wire [0:0]NLW_ram_reg_1_11_DIPADIP_UNCONNECTED;
  wire [0:0]NLW_ram_reg_1_11_DIPBDIP_UNCONNECTED;
  wire [31:1]NLW_ram_reg_1_11_DOADO_UNCONNECTED;
  wire [31:1]NLW_ram_reg_1_11_DOBDO_UNCONNECTED;
  wire [3:0]NLW_ram_reg_1_11_DOPADOP_UNCONNECTED;
  wire [3:0]NLW_ram_reg_1_11_DOPBDOP_UNCONNECTED;
  wire [7:0]NLW_ram_reg_1_11_ECCPARITY_UNCONNECTED;
  wire [8:0]NLW_ram_reg_1_11_RDADDRECC_UNCONNECTED;
  wire NLW_ram_reg_1_12_CASCADEOUTA_UNCONNECTED;
  wire NLW_ram_reg_1_12_CASCADEOUTB_UNCONNECTED;
  wire NLW_ram_reg_1_12_DBITERR_UNCONNECTED;
  wire NLW_ram_reg_1_12_INJECTDBITERR_UNCONNECTED;
  wire NLW_ram_reg_1_12_INJECTSBITERR_UNCONNECTED;
  wire NLW_ram_reg_1_12_SBITERR_UNCONNECTED;
  wire [0:0]NLW_ram_reg_1_12_DIPADIP_UNCONNECTED;
  wire [0:0]NLW_ram_reg_1_12_DIPBDIP_UNCONNECTED;
  wire [31:1]NLW_ram_reg_1_12_DOADO_UNCONNECTED;
  wire [31:1]NLW_ram_reg_1_12_DOBDO_UNCONNECTED;
  wire [3:0]NLW_ram_reg_1_12_DOPADOP_UNCONNECTED;
  wire [3:0]NLW_ram_reg_1_12_DOPBDOP_UNCONNECTED;
  wire [7:0]NLW_ram_reg_1_12_ECCPARITY_UNCONNECTED;
  wire [8:0]NLW_ram_reg_1_12_RDADDRECC_UNCONNECTED;
  wire NLW_ram_reg_1_13_CASCADEOUTA_UNCONNECTED;
  wire NLW_ram_reg_1_13_CASCADEOUTB_UNCONNECTED;
  wire NLW_ram_reg_1_13_DBITERR_UNCONNECTED;
  wire NLW_ram_reg_1_13_INJECTDBITERR_UNCONNECTED;
  wire NLW_ram_reg_1_13_INJECTSBITERR_UNCONNECTED;
  wire NLW_ram_reg_1_13_SBITERR_UNCONNECTED;
  wire [0:0]NLW_ram_reg_1_13_DIPADIP_UNCONNECTED;
  wire [0:0]NLW_ram_reg_1_13_DIPBDIP_UNCONNECTED;
  wire [31:1]NLW_ram_reg_1_13_DOADO_UNCONNECTED;
  wire [31:1]NLW_ram_reg_1_13_DOBDO_UNCONNECTED;
  wire [3:0]NLW_ram_reg_1_13_DOPADOP_UNCONNECTED;
  wire [3:0]NLW_ram_reg_1_13_DOPBDOP_UNCONNECTED;
  wire [7:0]NLW_ram_reg_1_13_ECCPARITY_UNCONNECTED;
  wire [8:0]NLW_ram_reg_1_13_RDADDRECC_UNCONNECTED;
  wire NLW_ram_reg_1_14_CASCADEOUTA_UNCONNECTED;
  wire NLW_ram_reg_1_14_CASCADEOUTB_UNCONNECTED;
  wire NLW_ram_reg_1_14_DBITERR_UNCONNECTED;
  wire NLW_ram_reg_1_14_INJECTDBITERR_UNCONNECTED;
  wire NLW_ram_reg_1_14_INJECTSBITERR_UNCONNECTED;
  wire NLW_ram_reg_1_14_SBITERR_UNCONNECTED;
  wire [0:0]NLW_ram_reg_1_14_DIPADIP_UNCONNECTED;
  wire [0:0]NLW_ram_reg_1_14_DIPBDIP_UNCONNECTED;
  wire [31:1]NLW_ram_reg_1_14_DOADO_UNCONNECTED;
  wire [31:1]NLW_ram_reg_1_14_DOBDO_UNCONNECTED;
  wire [3:0]NLW_ram_reg_1_14_DOPADOP_UNCONNECTED;
  wire [3:0]NLW_ram_reg_1_14_DOPBDOP_UNCONNECTED;
  wire [7:0]NLW_ram_reg_1_14_ECCPARITY_UNCONNECTED;
  wire [8:0]NLW_ram_reg_1_14_RDADDRECC_UNCONNECTED;
  wire NLW_ram_reg_1_15_CASCADEOUTA_UNCONNECTED;
  wire NLW_ram_reg_1_15_CASCADEOUTB_UNCONNECTED;
  wire NLW_ram_reg_1_15_DBITERR_UNCONNECTED;
  wire NLW_ram_reg_1_15_INJECTDBITERR_UNCONNECTED;
  wire NLW_ram_reg_1_15_INJECTSBITERR_UNCONNECTED;
  wire NLW_ram_reg_1_15_SBITERR_UNCONNECTED;
  wire [0:0]NLW_ram_reg_1_15_DIPADIP_UNCONNECTED;
  wire [0:0]NLW_ram_reg_1_15_DIPBDIP_UNCONNECTED;
  wire [31:1]NLW_ram_reg_1_15_DOADO_UNCONNECTED;
  wire [31:1]NLW_ram_reg_1_15_DOBDO_UNCONNECTED;
  wire [3:0]NLW_ram_reg_1_15_DOPADOP_UNCONNECTED;
  wire [3:0]NLW_ram_reg_1_15_DOPBDOP_UNCONNECTED;
  wire [7:0]NLW_ram_reg_1_15_ECCPARITY_UNCONNECTED;
  wire [8:0]NLW_ram_reg_1_15_RDADDRECC_UNCONNECTED;
  wire NLW_ram_reg_1_2_CASCADEOUTA_UNCONNECTED;
  wire NLW_ram_reg_1_2_CASCADEOUTB_UNCONNECTED;
  wire NLW_ram_reg_1_2_DBITERR_UNCONNECTED;
  wire NLW_ram_reg_1_2_INJECTDBITERR_UNCONNECTED;
  wire NLW_ram_reg_1_2_INJECTSBITERR_UNCONNECTED;
  wire NLW_ram_reg_1_2_SBITERR_UNCONNECTED;
  wire [0:0]NLW_ram_reg_1_2_DIPADIP_UNCONNECTED;
  wire [0:0]NLW_ram_reg_1_2_DIPBDIP_UNCONNECTED;
  wire [31:1]NLW_ram_reg_1_2_DOADO_UNCONNECTED;
  wire [31:1]NLW_ram_reg_1_2_DOBDO_UNCONNECTED;
  wire [3:0]NLW_ram_reg_1_2_DOPADOP_UNCONNECTED;
  wire [3:0]NLW_ram_reg_1_2_DOPBDOP_UNCONNECTED;
  wire [7:0]NLW_ram_reg_1_2_ECCPARITY_UNCONNECTED;
  wire [8:0]NLW_ram_reg_1_2_RDADDRECC_UNCONNECTED;
  wire NLW_ram_reg_1_3_CASCADEOUTA_UNCONNECTED;
  wire NLW_ram_reg_1_3_CASCADEOUTB_UNCONNECTED;
  wire NLW_ram_reg_1_3_DBITERR_UNCONNECTED;
  wire NLW_ram_reg_1_3_INJECTDBITERR_UNCONNECTED;
  wire NLW_ram_reg_1_3_INJECTSBITERR_UNCONNECTED;
  wire NLW_ram_reg_1_3_SBITERR_UNCONNECTED;
  wire [0:0]NLW_ram_reg_1_3_DIPADIP_UNCONNECTED;
  wire [0:0]NLW_ram_reg_1_3_DIPBDIP_UNCONNECTED;
  wire [31:1]NLW_ram_reg_1_3_DOADO_UNCONNECTED;
  wire [31:1]NLW_ram_reg_1_3_DOBDO_UNCONNECTED;
  wire [3:0]NLW_ram_reg_1_3_DOPADOP_UNCONNECTED;
  wire [3:0]NLW_ram_reg_1_3_DOPBDOP_UNCONNECTED;
  wire [7:0]NLW_ram_reg_1_3_ECCPARITY_UNCONNECTED;
  wire [8:0]NLW_ram_reg_1_3_RDADDRECC_UNCONNECTED;
  wire NLW_ram_reg_1_4_CASCADEOUTA_UNCONNECTED;
  wire NLW_ram_reg_1_4_CASCADEOUTB_UNCONNECTED;
  wire NLW_ram_reg_1_4_DBITERR_UNCONNECTED;
  wire NLW_ram_reg_1_4_INJECTDBITERR_UNCONNECTED;
  wire NLW_ram_reg_1_4_INJECTSBITERR_UNCONNECTED;
  wire NLW_ram_reg_1_4_SBITERR_UNCONNECTED;
  wire [0:0]NLW_ram_reg_1_4_DIPADIP_UNCONNECTED;
  wire [0:0]NLW_ram_reg_1_4_DIPBDIP_UNCONNECTED;
  wire [31:1]NLW_ram_reg_1_4_DOADO_UNCONNECTED;
  wire [31:1]NLW_ram_reg_1_4_DOBDO_UNCONNECTED;
  wire [3:0]NLW_ram_reg_1_4_DOPADOP_UNCONNECTED;
  wire [3:0]NLW_ram_reg_1_4_DOPBDOP_UNCONNECTED;
  wire [7:0]NLW_ram_reg_1_4_ECCPARITY_UNCONNECTED;
  wire [8:0]NLW_ram_reg_1_4_RDADDRECC_UNCONNECTED;
  wire NLW_ram_reg_1_5_CASCADEOUTA_UNCONNECTED;
  wire NLW_ram_reg_1_5_CASCADEOUTB_UNCONNECTED;
  wire NLW_ram_reg_1_5_DBITERR_UNCONNECTED;
  wire NLW_ram_reg_1_5_INJECTDBITERR_UNCONNECTED;
  wire NLW_ram_reg_1_5_INJECTSBITERR_UNCONNECTED;
  wire NLW_ram_reg_1_5_SBITERR_UNCONNECTED;
  wire [0:0]NLW_ram_reg_1_5_DIPADIP_UNCONNECTED;
  wire [0:0]NLW_ram_reg_1_5_DIPBDIP_UNCONNECTED;
  wire [31:1]NLW_ram_reg_1_5_DOADO_UNCONNECTED;
  wire [31:1]NLW_ram_reg_1_5_DOBDO_UNCONNECTED;
  wire [3:0]NLW_ram_reg_1_5_DOPADOP_UNCONNECTED;
  wire [3:0]NLW_ram_reg_1_5_DOPBDOP_UNCONNECTED;
  wire [7:0]NLW_ram_reg_1_5_ECCPARITY_UNCONNECTED;
  wire [8:0]NLW_ram_reg_1_5_RDADDRECC_UNCONNECTED;
  wire NLW_ram_reg_1_6_CASCADEOUTA_UNCONNECTED;
  wire NLW_ram_reg_1_6_CASCADEOUTB_UNCONNECTED;
  wire NLW_ram_reg_1_6_DBITERR_UNCONNECTED;
  wire NLW_ram_reg_1_6_INJECTDBITERR_UNCONNECTED;
  wire NLW_ram_reg_1_6_INJECTSBITERR_UNCONNECTED;
  wire NLW_ram_reg_1_6_SBITERR_UNCONNECTED;
  wire [0:0]NLW_ram_reg_1_6_DIPADIP_UNCONNECTED;
  wire [0:0]NLW_ram_reg_1_6_DIPBDIP_UNCONNECTED;
  wire [31:1]NLW_ram_reg_1_6_DOADO_UNCONNECTED;
  wire [31:1]NLW_ram_reg_1_6_DOBDO_UNCONNECTED;
  wire [3:0]NLW_ram_reg_1_6_DOPADOP_UNCONNECTED;
  wire [3:0]NLW_ram_reg_1_6_DOPBDOP_UNCONNECTED;
  wire [7:0]NLW_ram_reg_1_6_ECCPARITY_UNCONNECTED;
  wire [8:0]NLW_ram_reg_1_6_RDADDRECC_UNCONNECTED;
  wire NLW_ram_reg_1_7_CASCADEOUTA_UNCONNECTED;
  wire NLW_ram_reg_1_7_CASCADEOUTB_UNCONNECTED;
  wire NLW_ram_reg_1_7_DBITERR_UNCONNECTED;
  wire NLW_ram_reg_1_7_INJECTDBITERR_UNCONNECTED;
  wire NLW_ram_reg_1_7_INJECTSBITERR_UNCONNECTED;
  wire NLW_ram_reg_1_7_SBITERR_UNCONNECTED;
  wire [0:0]NLW_ram_reg_1_7_DIPADIP_UNCONNECTED;
  wire [0:0]NLW_ram_reg_1_7_DIPBDIP_UNCONNECTED;
  wire [31:1]NLW_ram_reg_1_7_DOADO_UNCONNECTED;
  wire [31:1]NLW_ram_reg_1_7_DOBDO_UNCONNECTED;
  wire [3:0]NLW_ram_reg_1_7_DOPADOP_UNCONNECTED;
  wire [3:0]NLW_ram_reg_1_7_DOPBDOP_UNCONNECTED;
  wire [7:0]NLW_ram_reg_1_7_ECCPARITY_UNCONNECTED;
  wire [8:0]NLW_ram_reg_1_7_RDADDRECC_UNCONNECTED;
  wire NLW_ram_reg_1_8_CASCADEOUTA_UNCONNECTED;
  wire NLW_ram_reg_1_8_CASCADEOUTB_UNCONNECTED;
  wire NLW_ram_reg_1_8_DBITERR_UNCONNECTED;
  wire NLW_ram_reg_1_8_INJECTDBITERR_UNCONNECTED;
  wire NLW_ram_reg_1_8_INJECTSBITERR_UNCONNECTED;
  wire NLW_ram_reg_1_8_SBITERR_UNCONNECTED;
  wire [0:0]NLW_ram_reg_1_8_DIPADIP_UNCONNECTED;
  wire [0:0]NLW_ram_reg_1_8_DIPBDIP_UNCONNECTED;
  wire [31:1]NLW_ram_reg_1_8_DOADO_UNCONNECTED;
  wire [31:1]NLW_ram_reg_1_8_DOBDO_UNCONNECTED;
  wire [3:0]NLW_ram_reg_1_8_DOPADOP_UNCONNECTED;
  wire [3:0]NLW_ram_reg_1_8_DOPBDOP_UNCONNECTED;
  wire [7:0]NLW_ram_reg_1_8_ECCPARITY_UNCONNECTED;
  wire [8:0]NLW_ram_reg_1_8_RDADDRECC_UNCONNECTED;
  wire NLW_ram_reg_1_9_CASCADEOUTA_UNCONNECTED;
  wire NLW_ram_reg_1_9_CASCADEOUTB_UNCONNECTED;
  wire NLW_ram_reg_1_9_DBITERR_UNCONNECTED;
  wire NLW_ram_reg_1_9_INJECTDBITERR_UNCONNECTED;
  wire NLW_ram_reg_1_9_INJECTSBITERR_UNCONNECTED;
  wire NLW_ram_reg_1_9_SBITERR_UNCONNECTED;
  wire [0:0]NLW_ram_reg_1_9_DIPADIP_UNCONNECTED;
  wire [0:0]NLW_ram_reg_1_9_DIPBDIP_UNCONNECTED;
  wire [31:1]NLW_ram_reg_1_9_DOADO_UNCONNECTED;
  wire [31:1]NLW_ram_reg_1_9_DOBDO_UNCONNECTED;
  wire [3:0]NLW_ram_reg_1_9_DOPADOP_UNCONNECTED;
  wire [3:0]NLW_ram_reg_1_9_DOPBDOP_UNCONNECTED;
  wire [7:0]NLW_ram_reg_1_9_ECCPARITY_UNCONNECTED;
  wire [8:0]NLW_ram_reg_1_9_RDADDRECC_UNCONNECTED;

  (* \MEM.PORTA.DATA_BIT_LAYOUT  = "p0_d1" *) 
  (* \MEM.PORTB.DATA_BIT_LAYOUT  = "p0_d1" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-7 {cell *THIS*}}" *) 
  (* RTL_RAM_BITS = "1048576" *) 
  (* RTL_RAM_NAME = "U0/comblock_i/dram_g.dram_i/ram_reg_0_0" *) 
  (* RTL_RAM_TYPE = "RAM_TDP" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "32767" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "0" *) 
  (* ram_slice_end = "0" *) 
  RAMB36E1 #(
    .DOA_REG(0),
    .DOB_REG(0),
    .EN_ECC_READ("FALSE"),
    .EN_ECC_WRITE("FALSE"),
    .INITP_00(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_01(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_02(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_03(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_04(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_05(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_06(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_07(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_08(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_09(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_00(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_01(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_02(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_03(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_04(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_05(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_06(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_07(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_08(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_09(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_10(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_11(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_12(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_13(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_14(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_15(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_16(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_17(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_18(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_19(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_20(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_21(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_22(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_23(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_24(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_25(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_26(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_27(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_28(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_29(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_30(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_31(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_32(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_33(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_34(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_35(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_36(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_37(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_38(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_39(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_40(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_41(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_42(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_43(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_44(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_45(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_46(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_47(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_48(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_49(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_50(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_51(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_52(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_53(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_54(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_55(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_56(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_57(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_58(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_59(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_60(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_61(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_62(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_63(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_64(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_65(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_66(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_67(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_68(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_69(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_70(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_71(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_72(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_73(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_74(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_75(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_76(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_77(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_78(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_79(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_A(36'h000000000),
    .INIT_B(36'h000000000),
    .RAM_EXTENSION_A("LOWER"),
    .RAM_EXTENSION_B("LOWER"),
    .RAM_MODE("TDP"),
    .RDADDR_COLLISION_HWCONFIG("DELAYED_WRITE"),
    .READ_WIDTH_A(1),
    .READ_WIDTH_B(1),
    .RSTREG_PRIORITY_A("RSTREG"),
    .RSTREG_PRIORITY_B("RSTREG"),
    .SIM_COLLISION_CHECK("ALL"),
    .SIM_DEVICE("7SERIES"),
    .SRVAL_A(36'h000000000),
    .SRVAL_B(36'h000000000),
    .WRITE_MODE_A("WRITE_FIRST"),
    .WRITE_MODE_B("WRITE_FIRST"),
    .WRITE_WIDTH_A(1),
    .WRITE_WIDTH_B(1)) 
    ram_reg_0_0
       (.ADDRARDADDR(ADDRARDADDR),
        .ADDRBWRADDR(ram_addr_i),
        .CASCADEINA(1'b1),
        .CASCADEINB(1'b1),
        .CASCADEOUTA(ram_reg_0_0_n_0),
        .CASCADEOUTB(ram_reg_0_0_n_1),
        .CLKARDCLK(axif_aclk),
        .CLKBWRCLK(ram_clk_i),
        .DBITERR(NLW_ram_reg_0_0_DBITERR_UNCONNECTED),
        .DIADI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,axif_wdata[0]}),
        .DIBDI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,ram_data_i[0]}),
        .DIPADIP({1'b0,1'b0,1'b0,NLW_ram_reg_0_0_DIPADIP_UNCONNECTED[0]}),
        .DIPBDIP({1'b0,1'b0,1'b0,NLW_ram_reg_0_0_DIPBDIP_UNCONNECTED[0]}),
        .DOADO(NLW_ram_reg_0_0_DOADO_UNCONNECTED[31:0]),
        .DOBDO(NLW_ram_reg_0_0_DOBDO_UNCONNECTED[31:0]),
        .DOPADOP(NLW_ram_reg_0_0_DOPADOP_UNCONNECTED[3:0]),
        .DOPBDOP(NLW_ram_reg_0_0_DOPBDOP_UNCONNECTED[3:0]),
        .ECCPARITY(NLW_ram_reg_0_0_ECCPARITY_UNCONNECTED[7:0]),
        .ENARDEN(1'b1),
        .ENBWREN(1'b1),
        .INJECTDBITERR(NLW_ram_reg_0_0_INJECTDBITERR_UNCONNECTED),
        .INJECTSBITERR(NLW_ram_reg_0_0_INJECTSBITERR_UNCONNECTED),
        .RDADDRECC(NLW_ram_reg_0_0_RDADDRECC_UNCONNECTED[8:0]),
        .REGCEAREGCE(1'b0),
        .REGCEB(1'b0),
        .RSTRAMARSTRAM(1'b0),
        .RSTRAMB(1'b0),
        .RSTREGARSTREG(1'b0),
        .RSTREGB(1'b0),
        .SBITERR(NLW_ram_reg_0_0_SBITERR_UNCONNECTED),
        .WEA({ram_reg_0_0_0,ram_reg_0_0_0,ram_reg_0_0_0,ram_reg_0_0_0}),
        .WEBWE({1'b0,1'b0,1'b0,1'b0,ram_we_i,ram_we_i,ram_we_i,ram_we_i}));
  (* \MEM.PORTA.DATA_BIT_LAYOUT  = "p0_d1" *) 
  (* \MEM.PORTB.DATA_BIT_LAYOUT  = "p0_d1" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-7 {cell *THIS*}}" *) 
  (* RTL_RAM_BITS = "1048576" *) 
  (* RTL_RAM_NAME = "U0/comblock_i/dram_g.dram_i/ram_reg_0_1" *) 
  (* RTL_RAM_TYPE = "RAM_TDP" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "32767" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "1" *) 
  (* ram_slice_end = "1" *) 
  RAMB36E1 #(
    .DOA_REG(0),
    .DOB_REG(0),
    .EN_ECC_READ("FALSE"),
    .EN_ECC_WRITE("FALSE"),
    .INITP_00(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_01(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_02(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_03(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_04(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_05(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_06(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_07(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_08(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_09(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_00(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_01(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_02(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_03(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_04(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_05(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_06(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_07(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_08(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_09(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_10(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_11(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_12(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_13(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_14(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_15(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_16(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_17(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_18(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_19(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_20(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_21(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_22(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_23(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_24(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_25(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_26(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_27(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_28(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_29(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_30(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_31(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_32(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_33(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_34(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_35(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_36(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_37(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_38(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_39(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_40(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_41(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_42(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_43(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_44(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_45(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_46(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_47(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_48(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_49(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_50(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_51(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_52(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_53(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_54(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_55(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_56(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_57(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_58(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_59(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_60(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_61(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_62(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_63(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_64(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_65(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_66(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_67(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_68(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_69(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_70(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_71(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_72(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_73(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_74(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_75(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_76(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_77(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_78(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_79(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_A(36'h000000000),
    .INIT_B(36'h000000000),
    .RAM_EXTENSION_A("LOWER"),
    .RAM_EXTENSION_B("LOWER"),
    .RAM_MODE("TDP"),
    .RDADDR_COLLISION_HWCONFIG("DELAYED_WRITE"),
    .READ_WIDTH_A(1),
    .READ_WIDTH_B(1),
    .RSTREG_PRIORITY_A("RSTREG"),
    .RSTREG_PRIORITY_B("RSTREG"),
    .SIM_COLLISION_CHECK("ALL"),
    .SIM_DEVICE("7SERIES"),
    .SRVAL_A(36'h000000000),
    .SRVAL_B(36'h000000000),
    .WRITE_MODE_A("WRITE_FIRST"),
    .WRITE_MODE_B("WRITE_FIRST"),
    .WRITE_WIDTH_A(1),
    .WRITE_WIDTH_B(1)) 
    ram_reg_0_1
       (.ADDRARDADDR(ADDRARDADDR),
        .ADDRBWRADDR(ram_addr_i),
        .CASCADEINA(1'b1),
        .CASCADEINB(1'b1),
        .CASCADEOUTA(ram_reg_0_1_n_0),
        .CASCADEOUTB(ram_reg_0_1_n_1),
        .CLKARDCLK(axif_aclk),
        .CLKBWRCLK(ram_clk_i),
        .DBITERR(NLW_ram_reg_0_1_DBITERR_UNCONNECTED),
        .DIADI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,axif_wdata[1]}),
        .DIBDI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,ram_data_i[1]}),
        .DIPADIP({1'b0,1'b0,1'b0,NLW_ram_reg_0_1_DIPADIP_UNCONNECTED[0]}),
        .DIPBDIP({1'b0,1'b0,1'b0,NLW_ram_reg_0_1_DIPBDIP_UNCONNECTED[0]}),
        .DOADO(NLW_ram_reg_0_1_DOADO_UNCONNECTED[31:0]),
        .DOBDO(NLW_ram_reg_0_1_DOBDO_UNCONNECTED[31:0]),
        .DOPADOP(NLW_ram_reg_0_1_DOPADOP_UNCONNECTED[3:0]),
        .DOPBDOP(NLW_ram_reg_0_1_DOPBDOP_UNCONNECTED[3:0]),
        .ECCPARITY(NLW_ram_reg_0_1_ECCPARITY_UNCONNECTED[7:0]),
        .ENARDEN(1'b1),
        .ENBWREN(1'b1),
        .INJECTDBITERR(NLW_ram_reg_0_1_INJECTDBITERR_UNCONNECTED),
        .INJECTSBITERR(NLW_ram_reg_0_1_INJECTSBITERR_UNCONNECTED),
        .RDADDRECC(NLW_ram_reg_0_1_RDADDRECC_UNCONNECTED[8:0]),
        .REGCEAREGCE(1'b0),
        .REGCEB(1'b0),
        .RSTRAMARSTRAM(1'b0),
        .RSTRAMB(1'b0),
        .RSTREGARSTREG(1'b0),
        .RSTREGB(1'b0),
        .SBITERR(NLW_ram_reg_0_1_SBITERR_UNCONNECTED),
        .WEA({ram_reg_0_1_0,ram_reg_0_1_0,ram_reg_0_1_0,ram_reg_0_1_0}),
        .WEBWE({1'b0,1'b0,1'b0,1'b0,ram_we_i,ram_we_i,ram_we_i,ram_we_i}));
  (* \MEM.PORTA.DATA_BIT_LAYOUT  = "p0_d1" *) 
  (* \MEM.PORTB.DATA_BIT_LAYOUT  = "p0_d1" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-7 {cell *THIS*}}" *) 
  (* RTL_RAM_BITS = "1048576" *) 
  (* RTL_RAM_NAME = "U0/comblock_i/dram_g.dram_i/ram_reg_0_10" *) 
  (* RTL_RAM_TYPE = "RAM_TDP" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "32767" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "10" *) 
  (* ram_slice_end = "10" *) 
  RAMB36E1 #(
    .DOA_REG(0),
    .DOB_REG(0),
    .EN_ECC_READ("FALSE"),
    .EN_ECC_WRITE("FALSE"),
    .INITP_00(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_01(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_02(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_03(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_04(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_05(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_06(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_07(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_08(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_09(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_00(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_01(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_02(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_03(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_04(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_05(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_06(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_07(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_08(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_09(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_10(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_11(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_12(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_13(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_14(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_15(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_16(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_17(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_18(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_19(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_20(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_21(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_22(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_23(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_24(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_25(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_26(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_27(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_28(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_29(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_30(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_31(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_32(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_33(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_34(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_35(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_36(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_37(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_38(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_39(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_40(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_41(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_42(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_43(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_44(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_45(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_46(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_47(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_48(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_49(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_50(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_51(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_52(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_53(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_54(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_55(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_56(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_57(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_58(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_59(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_60(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_61(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_62(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_63(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_64(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_65(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_66(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_67(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_68(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_69(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_70(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_71(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_72(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_73(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_74(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_75(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_76(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_77(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_78(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_79(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_A(36'h000000000),
    .INIT_B(36'h000000000),
    .RAM_EXTENSION_A("LOWER"),
    .RAM_EXTENSION_B("LOWER"),
    .RAM_MODE("TDP"),
    .RDADDR_COLLISION_HWCONFIG("DELAYED_WRITE"),
    .READ_WIDTH_A(1),
    .READ_WIDTH_B(1),
    .RSTREG_PRIORITY_A("RSTREG"),
    .RSTREG_PRIORITY_B("RSTREG"),
    .SIM_COLLISION_CHECK("ALL"),
    .SIM_DEVICE("7SERIES"),
    .SRVAL_A(36'h000000000),
    .SRVAL_B(36'h000000000),
    .WRITE_MODE_A("WRITE_FIRST"),
    .WRITE_MODE_B("WRITE_FIRST"),
    .WRITE_WIDTH_A(1),
    .WRITE_WIDTH_B(1)) 
    ram_reg_0_10
       (.ADDRARDADDR(ADDRARDADDR),
        .ADDRBWRADDR(ram_addr_i),
        .CASCADEINA(1'b1),
        .CASCADEINB(1'b1),
        .CASCADEOUTA(ram_reg_0_10_n_0),
        .CASCADEOUTB(ram_reg_0_10_n_1),
        .CLKARDCLK(axif_aclk),
        .CLKBWRCLK(ram_clk_i),
        .DBITERR(NLW_ram_reg_0_10_DBITERR_UNCONNECTED),
        .DIADI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,axif_wdata[10]}),
        .DIBDI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,ram_data_i[10]}),
        .DIPADIP({1'b0,1'b0,1'b0,NLW_ram_reg_0_10_DIPADIP_UNCONNECTED[0]}),
        .DIPBDIP({1'b0,1'b0,1'b0,NLW_ram_reg_0_10_DIPBDIP_UNCONNECTED[0]}),
        .DOADO(NLW_ram_reg_0_10_DOADO_UNCONNECTED[31:0]),
        .DOBDO(NLW_ram_reg_0_10_DOBDO_UNCONNECTED[31:0]),
        .DOPADOP(NLW_ram_reg_0_10_DOPADOP_UNCONNECTED[3:0]),
        .DOPBDOP(NLW_ram_reg_0_10_DOPBDOP_UNCONNECTED[3:0]),
        .ECCPARITY(NLW_ram_reg_0_10_ECCPARITY_UNCONNECTED[7:0]),
        .ENARDEN(1'b1),
        .ENBWREN(1'b1),
        .INJECTDBITERR(NLW_ram_reg_0_10_INJECTDBITERR_UNCONNECTED),
        .INJECTSBITERR(NLW_ram_reg_0_10_INJECTSBITERR_UNCONNECTED),
        .RDADDRECC(NLW_ram_reg_0_10_RDADDRECC_UNCONNECTED[8:0]),
        .REGCEAREGCE(1'b0),
        .REGCEB(1'b0),
        .RSTRAMARSTRAM(1'b0),
        .RSTRAMB(1'b0),
        .RSTREGARSTREG(1'b0),
        .RSTREGB(1'b0),
        .SBITERR(NLW_ram_reg_0_10_SBITERR_UNCONNECTED),
        .WEA({ram_reg_0_10_0,ram_reg_0_10_0,ram_reg_0_10_0,ram_reg_0_10_0}),
        .WEBWE({1'b0,1'b0,1'b0,1'b0,ram_we_i,ram_we_i,ram_we_i,ram_we_i}));
  (* \MEM.PORTA.DATA_BIT_LAYOUT  = "p0_d1" *) 
  (* \MEM.PORTB.DATA_BIT_LAYOUT  = "p0_d1" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-7 {cell *THIS*}}" *) 
  (* RTL_RAM_BITS = "1048576" *) 
  (* RTL_RAM_NAME = "U0/comblock_i/dram_g.dram_i/ram_reg_0_11" *) 
  (* RTL_RAM_TYPE = "RAM_TDP" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "32767" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "11" *) 
  (* ram_slice_end = "11" *) 
  RAMB36E1 #(
    .DOA_REG(0),
    .DOB_REG(0),
    .EN_ECC_READ("FALSE"),
    .EN_ECC_WRITE("FALSE"),
    .INITP_00(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_01(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_02(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_03(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_04(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_05(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_06(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_07(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_08(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_09(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_00(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_01(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_02(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_03(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_04(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_05(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_06(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_07(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_08(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_09(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_10(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_11(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_12(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_13(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_14(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_15(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_16(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_17(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_18(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_19(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_20(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_21(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_22(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_23(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_24(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_25(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_26(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_27(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_28(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_29(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_30(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_31(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_32(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_33(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_34(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_35(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_36(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_37(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_38(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_39(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_40(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_41(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_42(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_43(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_44(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_45(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_46(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_47(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_48(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_49(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_50(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_51(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_52(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_53(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_54(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_55(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_56(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_57(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_58(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_59(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_60(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_61(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_62(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_63(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_64(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_65(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_66(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_67(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_68(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_69(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_70(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_71(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_72(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_73(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_74(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_75(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_76(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_77(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_78(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_79(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_A(36'h000000000),
    .INIT_B(36'h000000000),
    .RAM_EXTENSION_A("LOWER"),
    .RAM_EXTENSION_B("LOWER"),
    .RAM_MODE("TDP"),
    .RDADDR_COLLISION_HWCONFIG("DELAYED_WRITE"),
    .READ_WIDTH_A(1),
    .READ_WIDTH_B(1),
    .RSTREG_PRIORITY_A("RSTREG"),
    .RSTREG_PRIORITY_B("RSTREG"),
    .SIM_COLLISION_CHECK("ALL"),
    .SIM_DEVICE("7SERIES"),
    .SRVAL_A(36'h000000000),
    .SRVAL_B(36'h000000000),
    .WRITE_MODE_A("WRITE_FIRST"),
    .WRITE_MODE_B("WRITE_FIRST"),
    .WRITE_WIDTH_A(1),
    .WRITE_WIDTH_B(1)) 
    ram_reg_0_11
       (.ADDRARDADDR(addr2_i),
        .ADDRBWRADDR(ram_addr_i),
        .CASCADEINA(1'b1),
        .CASCADEINB(1'b1),
        .CASCADEOUTA(ram_reg_0_11_n_0),
        .CASCADEOUTB(ram_reg_0_11_n_1),
        .CLKARDCLK(axif_aclk),
        .CLKBWRCLK(ram_clk_i),
        .DBITERR(NLW_ram_reg_0_11_DBITERR_UNCONNECTED),
        .DIADI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,axif_wdata[11]}),
        .DIBDI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,ram_data_i[11]}),
        .DIPADIP({1'b0,1'b0,1'b0,NLW_ram_reg_0_11_DIPADIP_UNCONNECTED[0]}),
        .DIPBDIP({1'b0,1'b0,1'b0,NLW_ram_reg_0_11_DIPBDIP_UNCONNECTED[0]}),
        .DOADO(NLW_ram_reg_0_11_DOADO_UNCONNECTED[31:0]),
        .DOBDO(NLW_ram_reg_0_11_DOBDO_UNCONNECTED[31:0]),
        .DOPADOP(NLW_ram_reg_0_11_DOPADOP_UNCONNECTED[3:0]),
        .DOPBDOP(NLW_ram_reg_0_11_DOPBDOP_UNCONNECTED[3:0]),
        .ECCPARITY(NLW_ram_reg_0_11_ECCPARITY_UNCONNECTED[7:0]),
        .ENARDEN(1'b1),
        .ENBWREN(1'b1),
        .INJECTDBITERR(NLW_ram_reg_0_11_INJECTDBITERR_UNCONNECTED),
        .INJECTSBITERR(NLW_ram_reg_0_11_INJECTSBITERR_UNCONNECTED),
        .RDADDRECC(NLW_ram_reg_0_11_RDADDRECC_UNCONNECTED[8:0]),
        .REGCEAREGCE(1'b0),
        .REGCEB(1'b0),
        .RSTRAMARSTRAM(1'b0),
        .RSTRAMB(1'b0),
        .RSTREGARSTREG(1'b0),
        .RSTREGB(1'b0),
        .SBITERR(NLW_ram_reg_0_11_SBITERR_UNCONNECTED),
        .WEA({ram_reg_0_11_0,ram_reg_0_11_0,ram_reg_0_11_0,ram_reg_0_11_0}),
        .WEBWE({1'b0,1'b0,1'b0,1'b0,ram_we_i,ram_we_i,ram_we_i,ram_we_i}));
  (* \MEM.PORTA.DATA_BIT_LAYOUT  = "p0_d1" *) 
  (* \MEM.PORTB.DATA_BIT_LAYOUT  = "p0_d1" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-7 {cell *THIS*}}" *) 
  (* RTL_RAM_BITS = "1048576" *) 
  (* RTL_RAM_NAME = "U0/comblock_i/dram_g.dram_i/ram_reg_0_12" *) 
  (* RTL_RAM_TYPE = "RAM_TDP" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "32767" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "12" *) 
  (* ram_slice_end = "12" *) 
  RAMB36E1 #(
    .DOA_REG(0),
    .DOB_REG(0),
    .EN_ECC_READ("FALSE"),
    .EN_ECC_WRITE("FALSE"),
    .INITP_00(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_01(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_02(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_03(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_04(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_05(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_06(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_07(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_08(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_09(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_00(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_01(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_02(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_03(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_04(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_05(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_06(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_07(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_08(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_09(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_10(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_11(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_12(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_13(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_14(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_15(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_16(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_17(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_18(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_19(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_20(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_21(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_22(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_23(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_24(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_25(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_26(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_27(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_28(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_29(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_30(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_31(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_32(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_33(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_34(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_35(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_36(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_37(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_38(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_39(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_40(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_41(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_42(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_43(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_44(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_45(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_46(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_47(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_48(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_49(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_50(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_51(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_52(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_53(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_54(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_55(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_56(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_57(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_58(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_59(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_60(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_61(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_62(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_63(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_64(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_65(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_66(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_67(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_68(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_69(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_70(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_71(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_72(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_73(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_74(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_75(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_76(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_77(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_78(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_79(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_A(36'h000000000),
    .INIT_B(36'h000000000),
    .RAM_EXTENSION_A("LOWER"),
    .RAM_EXTENSION_B("LOWER"),
    .RAM_MODE("TDP"),
    .RDADDR_COLLISION_HWCONFIG("DELAYED_WRITE"),
    .READ_WIDTH_A(1),
    .READ_WIDTH_B(1),
    .RSTREG_PRIORITY_A("RSTREG"),
    .RSTREG_PRIORITY_B("RSTREG"),
    .SIM_COLLISION_CHECK("ALL"),
    .SIM_DEVICE("7SERIES"),
    .SRVAL_A(36'h000000000),
    .SRVAL_B(36'h000000000),
    .WRITE_MODE_A("WRITE_FIRST"),
    .WRITE_MODE_B("WRITE_FIRST"),
    .WRITE_WIDTH_A(1),
    .WRITE_WIDTH_B(1)) 
    ram_reg_0_12
       (.ADDRARDADDR(addr2_i),
        .ADDRBWRADDR(ram_addr_i),
        .CASCADEINA(1'b1),
        .CASCADEINB(1'b1),
        .CASCADEOUTA(ram_reg_0_12_n_0),
        .CASCADEOUTB(ram_reg_0_12_n_1),
        .CLKARDCLK(axif_aclk),
        .CLKBWRCLK(ram_clk_i),
        .DBITERR(NLW_ram_reg_0_12_DBITERR_UNCONNECTED),
        .DIADI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,axif_wdata[12]}),
        .DIBDI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,ram_data_i[12]}),
        .DIPADIP({1'b0,1'b0,1'b0,NLW_ram_reg_0_12_DIPADIP_UNCONNECTED[0]}),
        .DIPBDIP({1'b0,1'b0,1'b0,NLW_ram_reg_0_12_DIPBDIP_UNCONNECTED[0]}),
        .DOADO(NLW_ram_reg_0_12_DOADO_UNCONNECTED[31:0]),
        .DOBDO(NLW_ram_reg_0_12_DOBDO_UNCONNECTED[31:0]),
        .DOPADOP(NLW_ram_reg_0_12_DOPADOP_UNCONNECTED[3:0]),
        .DOPBDOP(NLW_ram_reg_0_12_DOPBDOP_UNCONNECTED[3:0]),
        .ECCPARITY(NLW_ram_reg_0_12_ECCPARITY_UNCONNECTED[7:0]),
        .ENARDEN(1'b1),
        .ENBWREN(1'b1),
        .INJECTDBITERR(NLW_ram_reg_0_12_INJECTDBITERR_UNCONNECTED),
        .INJECTSBITERR(NLW_ram_reg_0_12_INJECTSBITERR_UNCONNECTED),
        .RDADDRECC(NLW_ram_reg_0_12_RDADDRECC_UNCONNECTED[8:0]),
        .REGCEAREGCE(1'b0),
        .REGCEB(1'b0),
        .RSTRAMARSTRAM(1'b0),
        .RSTRAMB(1'b0),
        .RSTREGARSTREG(1'b0),
        .RSTREGB(1'b0),
        .SBITERR(NLW_ram_reg_0_12_SBITERR_UNCONNECTED),
        .WEA({ram_reg_0_12_0,ram_reg_0_12_0,ram_reg_0_12_0,ram_reg_0_12_0}),
        .WEBWE({1'b0,1'b0,1'b0,1'b0,ram_we_i,ram_we_i,ram_we_i,ram_we_i}));
  (* \MEM.PORTA.DATA_BIT_LAYOUT  = "p0_d1" *) 
  (* \MEM.PORTB.DATA_BIT_LAYOUT  = "p0_d1" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-7 {cell *THIS*}}" *) 
  (* RTL_RAM_BITS = "1048576" *) 
  (* RTL_RAM_NAME = "U0/comblock_i/dram_g.dram_i/ram_reg_0_13" *) 
  (* RTL_RAM_TYPE = "RAM_TDP" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "32767" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "13" *) 
  (* ram_slice_end = "13" *) 
  RAMB36E1 #(
    .DOA_REG(0),
    .DOB_REG(0),
    .EN_ECC_READ("FALSE"),
    .EN_ECC_WRITE("FALSE"),
    .INITP_00(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_01(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_02(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_03(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_04(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_05(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_06(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_07(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_08(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_09(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_00(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_01(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_02(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_03(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_04(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_05(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_06(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_07(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_08(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_09(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_10(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_11(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_12(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_13(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_14(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_15(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_16(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_17(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_18(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_19(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_20(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_21(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_22(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_23(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_24(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_25(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_26(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_27(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_28(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_29(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_30(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_31(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_32(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_33(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_34(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_35(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_36(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_37(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_38(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_39(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_40(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_41(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_42(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_43(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_44(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_45(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_46(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_47(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_48(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_49(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_50(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_51(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_52(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_53(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_54(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_55(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_56(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_57(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_58(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_59(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_60(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_61(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_62(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_63(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_64(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_65(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_66(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_67(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_68(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_69(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_70(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_71(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_72(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_73(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_74(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_75(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_76(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_77(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_78(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_79(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_A(36'h000000000),
    .INIT_B(36'h000000000),
    .RAM_EXTENSION_A("LOWER"),
    .RAM_EXTENSION_B("LOWER"),
    .RAM_MODE("TDP"),
    .RDADDR_COLLISION_HWCONFIG("DELAYED_WRITE"),
    .READ_WIDTH_A(1),
    .READ_WIDTH_B(1),
    .RSTREG_PRIORITY_A("RSTREG"),
    .RSTREG_PRIORITY_B("RSTREG"),
    .SIM_COLLISION_CHECK("ALL"),
    .SIM_DEVICE("7SERIES"),
    .SRVAL_A(36'h000000000),
    .SRVAL_B(36'h000000000),
    .WRITE_MODE_A("WRITE_FIRST"),
    .WRITE_MODE_B("WRITE_FIRST"),
    .WRITE_WIDTH_A(1),
    .WRITE_WIDTH_B(1)) 
    ram_reg_0_13
       (.ADDRARDADDR(addr2_i),
        .ADDRBWRADDR(ram_addr_i),
        .CASCADEINA(1'b1),
        .CASCADEINB(1'b1),
        .CASCADEOUTA(ram_reg_0_13_n_0),
        .CASCADEOUTB(ram_reg_0_13_n_1),
        .CLKARDCLK(axif_aclk),
        .CLKBWRCLK(ram_clk_i),
        .DBITERR(NLW_ram_reg_0_13_DBITERR_UNCONNECTED),
        .DIADI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,axif_wdata[13]}),
        .DIBDI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,ram_data_i[13]}),
        .DIPADIP({1'b0,1'b0,1'b0,NLW_ram_reg_0_13_DIPADIP_UNCONNECTED[0]}),
        .DIPBDIP({1'b0,1'b0,1'b0,NLW_ram_reg_0_13_DIPBDIP_UNCONNECTED[0]}),
        .DOADO(NLW_ram_reg_0_13_DOADO_UNCONNECTED[31:0]),
        .DOBDO(NLW_ram_reg_0_13_DOBDO_UNCONNECTED[31:0]),
        .DOPADOP(NLW_ram_reg_0_13_DOPADOP_UNCONNECTED[3:0]),
        .DOPBDOP(NLW_ram_reg_0_13_DOPBDOP_UNCONNECTED[3:0]),
        .ECCPARITY(NLW_ram_reg_0_13_ECCPARITY_UNCONNECTED[7:0]),
        .ENARDEN(1'b1),
        .ENBWREN(1'b1),
        .INJECTDBITERR(NLW_ram_reg_0_13_INJECTDBITERR_UNCONNECTED),
        .INJECTSBITERR(NLW_ram_reg_0_13_INJECTSBITERR_UNCONNECTED),
        .RDADDRECC(NLW_ram_reg_0_13_RDADDRECC_UNCONNECTED[8:0]),
        .REGCEAREGCE(1'b0),
        .REGCEB(1'b0),
        .RSTRAMARSTRAM(1'b0),
        .RSTRAMB(1'b0),
        .RSTREGARSTREG(1'b0),
        .RSTREGB(1'b0),
        .SBITERR(NLW_ram_reg_0_13_SBITERR_UNCONNECTED),
        .WEA({ram_reg_0_13_0,ram_reg_0_13_0,ram_reg_0_13_0,ram_reg_0_13_0}),
        .WEBWE({1'b0,1'b0,1'b0,1'b0,ram_we_i,ram_we_i,ram_we_i,ram_we_i}));
  (* \MEM.PORTA.DATA_BIT_LAYOUT  = "p0_d1" *) 
  (* \MEM.PORTB.DATA_BIT_LAYOUT  = "p0_d1" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-7 {cell *THIS*}}" *) 
  (* RTL_RAM_BITS = "1048576" *) 
  (* RTL_RAM_NAME = "U0/comblock_i/dram_g.dram_i/ram_reg_0_14" *) 
  (* RTL_RAM_TYPE = "RAM_TDP" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "32767" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "14" *) 
  (* ram_slice_end = "14" *) 
  RAMB36E1 #(
    .DOA_REG(0),
    .DOB_REG(0),
    .EN_ECC_READ("FALSE"),
    .EN_ECC_WRITE("FALSE"),
    .INITP_00(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_01(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_02(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_03(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_04(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_05(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_06(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_07(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_08(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_09(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_00(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_01(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_02(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_03(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_04(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_05(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_06(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_07(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_08(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_09(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_10(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_11(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_12(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_13(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_14(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_15(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_16(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_17(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_18(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_19(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_20(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_21(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_22(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_23(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_24(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_25(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_26(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_27(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_28(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_29(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_30(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_31(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_32(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_33(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_34(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_35(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_36(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_37(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_38(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_39(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_40(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_41(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_42(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_43(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_44(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_45(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_46(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_47(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_48(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_49(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_50(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_51(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_52(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_53(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_54(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_55(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_56(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_57(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_58(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_59(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_60(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_61(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_62(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_63(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_64(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_65(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_66(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_67(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_68(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_69(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_70(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_71(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_72(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_73(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_74(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_75(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_76(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_77(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_78(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_79(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_A(36'h000000000),
    .INIT_B(36'h000000000),
    .RAM_EXTENSION_A("LOWER"),
    .RAM_EXTENSION_B("LOWER"),
    .RAM_MODE("TDP"),
    .RDADDR_COLLISION_HWCONFIG("DELAYED_WRITE"),
    .READ_WIDTH_A(1),
    .READ_WIDTH_B(1),
    .RSTREG_PRIORITY_A("RSTREG"),
    .RSTREG_PRIORITY_B("RSTREG"),
    .SIM_COLLISION_CHECK("ALL"),
    .SIM_DEVICE("7SERIES"),
    .SRVAL_A(36'h000000000),
    .SRVAL_B(36'h000000000),
    .WRITE_MODE_A("WRITE_FIRST"),
    .WRITE_MODE_B("WRITE_FIRST"),
    .WRITE_WIDTH_A(1),
    .WRITE_WIDTH_B(1)) 
    ram_reg_0_14
       (.ADDRARDADDR(addr2_i),
        .ADDRBWRADDR(ram_addr_i),
        .CASCADEINA(1'b1),
        .CASCADEINB(1'b1),
        .CASCADEOUTA(ram_reg_0_14_n_0),
        .CASCADEOUTB(ram_reg_0_14_n_1),
        .CLKARDCLK(axif_aclk),
        .CLKBWRCLK(ram_clk_i),
        .DBITERR(NLW_ram_reg_0_14_DBITERR_UNCONNECTED),
        .DIADI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,axif_wdata[14]}),
        .DIBDI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,ram_data_i[14]}),
        .DIPADIP({1'b0,1'b0,1'b0,NLW_ram_reg_0_14_DIPADIP_UNCONNECTED[0]}),
        .DIPBDIP({1'b0,1'b0,1'b0,NLW_ram_reg_0_14_DIPBDIP_UNCONNECTED[0]}),
        .DOADO(NLW_ram_reg_0_14_DOADO_UNCONNECTED[31:0]),
        .DOBDO(NLW_ram_reg_0_14_DOBDO_UNCONNECTED[31:0]),
        .DOPADOP(NLW_ram_reg_0_14_DOPADOP_UNCONNECTED[3:0]),
        .DOPBDOP(NLW_ram_reg_0_14_DOPBDOP_UNCONNECTED[3:0]),
        .ECCPARITY(NLW_ram_reg_0_14_ECCPARITY_UNCONNECTED[7:0]),
        .ENARDEN(1'b1),
        .ENBWREN(1'b1),
        .INJECTDBITERR(NLW_ram_reg_0_14_INJECTDBITERR_UNCONNECTED),
        .INJECTSBITERR(NLW_ram_reg_0_14_INJECTSBITERR_UNCONNECTED),
        .RDADDRECC(NLW_ram_reg_0_14_RDADDRECC_UNCONNECTED[8:0]),
        .REGCEAREGCE(1'b0),
        .REGCEB(1'b0),
        .RSTRAMARSTRAM(1'b0),
        .RSTRAMB(1'b0),
        .RSTREGARSTREG(1'b0),
        .RSTREGB(1'b0),
        .SBITERR(NLW_ram_reg_0_14_SBITERR_UNCONNECTED),
        .WEA({ram_reg_0_14_0,ram_reg_0_14_0,ram_reg_0_14_0,ram_reg_0_14_0}),
        .WEBWE({1'b0,1'b0,1'b0,1'b0,ram_we_i,ram_we_i,ram_we_i,ram_we_i}));
  (* \MEM.PORTA.DATA_BIT_LAYOUT  = "p0_d1" *) 
  (* \MEM.PORTB.DATA_BIT_LAYOUT  = "p0_d1" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-7 {cell *THIS*}}" *) 
  (* RTL_RAM_BITS = "1048576" *) 
  (* RTL_RAM_NAME = "U0/comblock_i/dram_g.dram_i/ram_reg_0_15" *) 
  (* RTL_RAM_TYPE = "RAM_TDP" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "32767" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "15" *) 
  (* ram_slice_end = "15" *) 
  RAMB36E1 #(
    .DOA_REG(0),
    .DOB_REG(0),
    .EN_ECC_READ("FALSE"),
    .EN_ECC_WRITE("FALSE"),
    .INITP_00(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_01(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_02(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_03(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_04(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_05(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_06(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_07(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_08(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_09(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_00(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_01(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_02(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_03(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_04(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_05(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_06(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_07(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_08(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_09(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_10(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_11(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_12(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_13(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_14(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_15(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_16(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_17(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_18(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_19(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_20(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_21(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_22(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_23(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_24(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_25(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_26(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_27(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_28(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_29(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_30(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_31(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_32(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_33(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_34(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_35(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_36(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_37(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_38(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_39(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_40(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_41(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_42(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_43(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_44(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_45(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_46(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_47(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_48(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_49(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_50(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_51(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_52(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_53(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_54(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_55(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_56(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_57(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_58(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_59(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_60(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_61(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_62(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_63(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_64(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_65(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_66(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_67(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_68(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_69(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_70(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_71(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_72(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_73(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_74(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_75(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_76(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_77(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_78(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_79(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_A(36'h000000000),
    .INIT_B(36'h000000000),
    .RAM_EXTENSION_A("LOWER"),
    .RAM_EXTENSION_B("LOWER"),
    .RAM_MODE("TDP"),
    .RDADDR_COLLISION_HWCONFIG("DELAYED_WRITE"),
    .READ_WIDTH_A(1),
    .READ_WIDTH_B(1),
    .RSTREG_PRIORITY_A("RSTREG"),
    .RSTREG_PRIORITY_B("RSTREG"),
    .SIM_COLLISION_CHECK("ALL"),
    .SIM_DEVICE("7SERIES"),
    .SRVAL_A(36'h000000000),
    .SRVAL_B(36'h000000000),
    .WRITE_MODE_A("WRITE_FIRST"),
    .WRITE_MODE_B("WRITE_FIRST"),
    .WRITE_WIDTH_A(1),
    .WRITE_WIDTH_B(1)) 
    ram_reg_0_15
       (.ADDRARDADDR(addr2_i),
        .ADDRBWRADDR(ram_addr_i),
        .CASCADEINA(1'b1),
        .CASCADEINB(1'b1),
        .CASCADEOUTA(ram_reg_0_15_n_0),
        .CASCADEOUTB(ram_reg_0_15_n_1),
        .CLKARDCLK(axif_aclk),
        .CLKBWRCLK(ram_clk_i),
        .DBITERR(NLW_ram_reg_0_15_DBITERR_UNCONNECTED),
        .DIADI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,axif_wdata[15]}),
        .DIBDI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,ram_data_i[15]}),
        .DIPADIP({1'b0,1'b0,1'b0,NLW_ram_reg_0_15_DIPADIP_UNCONNECTED[0]}),
        .DIPBDIP({1'b0,1'b0,1'b0,NLW_ram_reg_0_15_DIPBDIP_UNCONNECTED[0]}),
        .DOADO(NLW_ram_reg_0_15_DOADO_UNCONNECTED[31:0]),
        .DOBDO(NLW_ram_reg_0_15_DOBDO_UNCONNECTED[31:0]),
        .DOPADOP(NLW_ram_reg_0_15_DOPADOP_UNCONNECTED[3:0]),
        .DOPBDOP(NLW_ram_reg_0_15_DOPBDOP_UNCONNECTED[3:0]),
        .ECCPARITY(NLW_ram_reg_0_15_ECCPARITY_UNCONNECTED[7:0]),
        .ENARDEN(1'b1),
        .ENBWREN(1'b1),
        .INJECTDBITERR(NLW_ram_reg_0_15_INJECTDBITERR_UNCONNECTED),
        .INJECTSBITERR(NLW_ram_reg_0_15_INJECTSBITERR_UNCONNECTED),
        .RDADDRECC(NLW_ram_reg_0_15_RDADDRECC_UNCONNECTED[8:0]),
        .REGCEAREGCE(1'b0),
        .REGCEB(1'b0),
        .RSTRAMARSTRAM(1'b0),
        .RSTRAMB(1'b0),
        .RSTREGARSTREG(1'b0),
        .RSTREGB(1'b0),
        .SBITERR(NLW_ram_reg_0_15_SBITERR_UNCONNECTED),
        .WEA({ram_reg_0_15_0,ram_reg_0_15_0,ram_reg_0_15_0,ram_reg_0_15_0}),
        .WEBWE({1'b0,1'b0,1'b0,1'b0,ram_we_i,ram_we_i,ram_we_i,ram_we_i}));
  (* \MEM.PORTA.DATA_BIT_LAYOUT  = "p0_d1" *) 
  (* \MEM.PORTB.DATA_BIT_LAYOUT  = "p0_d1" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-7 {cell *THIS*}}" *) 
  (* RTL_RAM_BITS = "1048576" *) 
  (* RTL_RAM_NAME = "U0/comblock_i/dram_g.dram_i/ram_reg_0_2" *) 
  (* RTL_RAM_TYPE = "RAM_TDP" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "32767" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "2" *) 
  (* ram_slice_end = "2" *) 
  RAMB36E1 #(
    .DOA_REG(0),
    .DOB_REG(0),
    .EN_ECC_READ("FALSE"),
    .EN_ECC_WRITE("FALSE"),
    .INITP_00(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_01(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_02(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_03(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_04(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_05(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_06(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_07(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_08(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_09(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_00(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_01(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_02(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_03(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_04(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_05(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_06(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_07(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_08(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_09(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_10(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_11(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_12(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_13(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_14(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_15(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_16(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_17(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_18(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_19(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_20(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_21(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_22(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_23(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_24(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_25(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_26(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_27(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_28(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_29(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_30(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_31(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_32(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_33(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_34(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_35(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_36(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_37(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_38(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_39(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_40(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_41(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_42(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_43(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_44(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_45(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_46(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_47(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_48(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_49(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_50(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_51(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_52(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_53(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_54(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_55(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_56(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_57(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_58(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_59(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_60(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_61(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_62(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_63(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_64(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_65(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_66(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_67(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_68(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_69(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_70(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_71(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_72(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_73(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_74(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_75(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_76(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_77(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_78(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_79(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_A(36'h000000000),
    .INIT_B(36'h000000000),
    .RAM_EXTENSION_A("LOWER"),
    .RAM_EXTENSION_B("LOWER"),
    .RAM_MODE("TDP"),
    .RDADDR_COLLISION_HWCONFIG("DELAYED_WRITE"),
    .READ_WIDTH_A(1),
    .READ_WIDTH_B(1),
    .RSTREG_PRIORITY_A("RSTREG"),
    .RSTREG_PRIORITY_B("RSTREG"),
    .SIM_COLLISION_CHECK("ALL"),
    .SIM_DEVICE("7SERIES"),
    .SRVAL_A(36'h000000000),
    .SRVAL_B(36'h000000000),
    .WRITE_MODE_A("WRITE_FIRST"),
    .WRITE_MODE_B("WRITE_FIRST"),
    .WRITE_WIDTH_A(1),
    .WRITE_WIDTH_B(1)) 
    ram_reg_0_2
       (.ADDRARDADDR(ADDRARDADDR),
        .ADDRBWRADDR(ram_addr_i),
        .CASCADEINA(1'b1),
        .CASCADEINB(1'b1),
        .CASCADEOUTA(ram_reg_0_2_n_0),
        .CASCADEOUTB(ram_reg_0_2_n_1),
        .CLKARDCLK(axif_aclk),
        .CLKBWRCLK(ram_clk_i),
        .DBITERR(NLW_ram_reg_0_2_DBITERR_UNCONNECTED),
        .DIADI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,axif_wdata[2]}),
        .DIBDI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,ram_data_i[2]}),
        .DIPADIP({1'b0,1'b0,1'b0,NLW_ram_reg_0_2_DIPADIP_UNCONNECTED[0]}),
        .DIPBDIP({1'b0,1'b0,1'b0,NLW_ram_reg_0_2_DIPBDIP_UNCONNECTED[0]}),
        .DOADO(NLW_ram_reg_0_2_DOADO_UNCONNECTED[31:0]),
        .DOBDO(NLW_ram_reg_0_2_DOBDO_UNCONNECTED[31:0]),
        .DOPADOP(NLW_ram_reg_0_2_DOPADOP_UNCONNECTED[3:0]),
        .DOPBDOP(NLW_ram_reg_0_2_DOPBDOP_UNCONNECTED[3:0]),
        .ECCPARITY(NLW_ram_reg_0_2_ECCPARITY_UNCONNECTED[7:0]),
        .ENARDEN(1'b1),
        .ENBWREN(1'b1),
        .INJECTDBITERR(NLW_ram_reg_0_2_INJECTDBITERR_UNCONNECTED),
        .INJECTSBITERR(NLW_ram_reg_0_2_INJECTSBITERR_UNCONNECTED),
        .RDADDRECC(NLW_ram_reg_0_2_RDADDRECC_UNCONNECTED[8:0]),
        .REGCEAREGCE(1'b0),
        .REGCEB(1'b0),
        .RSTRAMARSTRAM(1'b0),
        .RSTRAMB(1'b0),
        .RSTREGARSTREG(1'b0),
        .RSTREGB(1'b0),
        .SBITERR(NLW_ram_reg_0_2_SBITERR_UNCONNECTED),
        .WEA({ram_reg_0_2_0,ram_reg_0_2_0,ram_reg_0_2_0,ram_reg_0_2_0}),
        .WEBWE({1'b0,1'b0,1'b0,1'b0,ram_we_i,ram_we_i,ram_we_i,ram_we_i}));
  (* \MEM.PORTA.DATA_BIT_LAYOUT  = "p0_d1" *) 
  (* \MEM.PORTB.DATA_BIT_LAYOUT  = "p0_d1" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-7 {cell *THIS*}}" *) 
  (* RTL_RAM_BITS = "1048576" *) 
  (* RTL_RAM_NAME = "U0/comblock_i/dram_g.dram_i/ram_reg_0_3" *) 
  (* RTL_RAM_TYPE = "RAM_TDP" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "32767" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "3" *) 
  (* ram_slice_end = "3" *) 
  RAMB36E1 #(
    .DOA_REG(0),
    .DOB_REG(0),
    .EN_ECC_READ("FALSE"),
    .EN_ECC_WRITE("FALSE"),
    .INITP_00(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_01(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_02(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_03(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_04(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_05(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_06(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_07(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_08(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_09(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_00(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_01(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_02(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_03(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_04(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_05(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_06(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_07(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_08(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_09(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_10(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_11(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_12(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_13(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_14(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_15(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_16(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_17(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_18(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_19(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_20(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_21(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_22(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_23(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_24(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_25(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_26(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_27(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_28(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_29(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_30(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_31(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_32(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_33(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_34(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_35(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_36(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_37(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_38(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_39(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_40(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_41(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_42(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_43(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_44(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_45(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_46(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_47(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_48(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_49(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_50(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_51(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_52(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_53(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_54(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_55(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_56(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_57(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_58(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_59(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_60(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_61(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_62(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_63(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_64(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_65(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_66(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_67(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_68(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_69(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_70(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_71(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_72(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_73(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_74(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_75(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_76(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_77(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_78(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_79(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_A(36'h000000000),
    .INIT_B(36'h000000000),
    .RAM_EXTENSION_A("LOWER"),
    .RAM_EXTENSION_B("LOWER"),
    .RAM_MODE("TDP"),
    .RDADDR_COLLISION_HWCONFIG("DELAYED_WRITE"),
    .READ_WIDTH_A(1),
    .READ_WIDTH_B(1),
    .RSTREG_PRIORITY_A("RSTREG"),
    .RSTREG_PRIORITY_B("RSTREG"),
    .SIM_COLLISION_CHECK("ALL"),
    .SIM_DEVICE("7SERIES"),
    .SRVAL_A(36'h000000000),
    .SRVAL_B(36'h000000000),
    .WRITE_MODE_A("WRITE_FIRST"),
    .WRITE_MODE_B("WRITE_FIRST"),
    .WRITE_WIDTH_A(1),
    .WRITE_WIDTH_B(1)) 
    ram_reg_0_3
       (.ADDRARDADDR(ADDRARDADDR),
        .ADDRBWRADDR(ram_addr_i),
        .CASCADEINA(1'b1),
        .CASCADEINB(1'b1),
        .CASCADEOUTA(ram_reg_0_3_n_0),
        .CASCADEOUTB(ram_reg_0_3_n_1),
        .CLKARDCLK(axif_aclk),
        .CLKBWRCLK(ram_clk_i),
        .DBITERR(NLW_ram_reg_0_3_DBITERR_UNCONNECTED),
        .DIADI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,axif_wdata[3]}),
        .DIBDI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,ram_data_i[3]}),
        .DIPADIP({1'b0,1'b0,1'b0,NLW_ram_reg_0_3_DIPADIP_UNCONNECTED[0]}),
        .DIPBDIP({1'b0,1'b0,1'b0,NLW_ram_reg_0_3_DIPBDIP_UNCONNECTED[0]}),
        .DOADO(NLW_ram_reg_0_3_DOADO_UNCONNECTED[31:0]),
        .DOBDO(NLW_ram_reg_0_3_DOBDO_UNCONNECTED[31:0]),
        .DOPADOP(NLW_ram_reg_0_3_DOPADOP_UNCONNECTED[3:0]),
        .DOPBDOP(NLW_ram_reg_0_3_DOPBDOP_UNCONNECTED[3:0]),
        .ECCPARITY(NLW_ram_reg_0_3_ECCPARITY_UNCONNECTED[7:0]),
        .ENARDEN(1'b1),
        .ENBWREN(1'b1),
        .INJECTDBITERR(NLW_ram_reg_0_3_INJECTDBITERR_UNCONNECTED),
        .INJECTSBITERR(NLW_ram_reg_0_3_INJECTSBITERR_UNCONNECTED),
        .RDADDRECC(NLW_ram_reg_0_3_RDADDRECC_UNCONNECTED[8:0]),
        .REGCEAREGCE(1'b0),
        .REGCEB(1'b0),
        .RSTRAMARSTRAM(1'b0),
        .RSTRAMB(1'b0),
        .RSTREGARSTREG(1'b0),
        .RSTREGB(1'b0),
        .SBITERR(NLW_ram_reg_0_3_SBITERR_UNCONNECTED),
        .WEA({ram_reg_0_3_0,ram_reg_0_3_0,ram_reg_0_3_0,ram_reg_0_3_0}),
        .WEBWE({1'b0,1'b0,1'b0,1'b0,ram_we_i,ram_we_i,ram_we_i,ram_we_i}));
  (* \MEM.PORTA.DATA_BIT_LAYOUT  = "p0_d1" *) 
  (* \MEM.PORTB.DATA_BIT_LAYOUT  = "p0_d1" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-7 {cell *THIS*}}" *) 
  (* RTL_RAM_BITS = "1048576" *) 
  (* RTL_RAM_NAME = "U0/comblock_i/dram_g.dram_i/ram_reg_0_4" *) 
  (* RTL_RAM_TYPE = "RAM_TDP" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "32767" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "4" *) 
  (* ram_slice_end = "4" *) 
  RAMB36E1 #(
    .DOA_REG(0),
    .DOB_REG(0),
    .EN_ECC_READ("FALSE"),
    .EN_ECC_WRITE("FALSE"),
    .INITP_00(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_01(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_02(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_03(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_04(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_05(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_06(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_07(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_08(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_09(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_00(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_01(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_02(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_03(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_04(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_05(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_06(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_07(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_08(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_09(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_10(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_11(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_12(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_13(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_14(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_15(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_16(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_17(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_18(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_19(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_20(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_21(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_22(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_23(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_24(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_25(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_26(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_27(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_28(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_29(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_30(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_31(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_32(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_33(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_34(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_35(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_36(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_37(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_38(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_39(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_40(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_41(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_42(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_43(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_44(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_45(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_46(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_47(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_48(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_49(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_50(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_51(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_52(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_53(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_54(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_55(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_56(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_57(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_58(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_59(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_60(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_61(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_62(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_63(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_64(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_65(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_66(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_67(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_68(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_69(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_70(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_71(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_72(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_73(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_74(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_75(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_76(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_77(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_78(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_79(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_A(36'h000000000),
    .INIT_B(36'h000000000),
    .RAM_EXTENSION_A("LOWER"),
    .RAM_EXTENSION_B("LOWER"),
    .RAM_MODE("TDP"),
    .RDADDR_COLLISION_HWCONFIG("DELAYED_WRITE"),
    .READ_WIDTH_A(1),
    .READ_WIDTH_B(1),
    .RSTREG_PRIORITY_A("RSTREG"),
    .RSTREG_PRIORITY_B("RSTREG"),
    .SIM_COLLISION_CHECK("ALL"),
    .SIM_DEVICE("7SERIES"),
    .SRVAL_A(36'h000000000),
    .SRVAL_B(36'h000000000),
    .WRITE_MODE_A("WRITE_FIRST"),
    .WRITE_MODE_B("WRITE_FIRST"),
    .WRITE_WIDTH_A(1),
    .WRITE_WIDTH_B(1)) 
    ram_reg_0_4
       (.ADDRARDADDR(ADDRARDADDR),
        .ADDRBWRADDR(ram_addr_i),
        .CASCADEINA(1'b1),
        .CASCADEINB(1'b1),
        .CASCADEOUTA(ram_reg_0_4_n_0),
        .CASCADEOUTB(ram_reg_0_4_n_1),
        .CLKARDCLK(axif_aclk),
        .CLKBWRCLK(ram_clk_i),
        .DBITERR(NLW_ram_reg_0_4_DBITERR_UNCONNECTED),
        .DIADI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,axif_wdata[4]}),
        .DIBDI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,ram_data_i[4]}),
        .DIPADIP({1'b0,1'b0,1'b0,NLW_ram_reg_0_4_DIPADIP_UNCONNECTED[0]}),
        .DIPBDIP({1'b0,1'b0,1'b0,NLW_ram_reg_0_4_DIPBDIP_UNCONNECTED[0]}),
        .DOADO(NLW_ram_reg_0_4_DOADO_UNCONNECTED[31:0]),
        .DOBDO(NLW_ram_reg_0_4_DOBDO_UNCONNECTED[31:0]),
        .DOPADOP(NLW_ram_reg_0_4_DOPADOP_UNCONNECTED[3:0]),
        .DOPBDOP(NLW_ram_reg_0_4_DOPBDOP_UNCONNECTED[3:0]),
        .ECCPARITY(NLW_ram_reg_0_4_ECCPARITY_UNCONNECTED[7:0]),
        .ENARDEN(1'b1),
        .ENBWREN(1'b1),
        .INJECTDBITERR(NLW_ram_reg_0_4_INJECTDBITERR_UNCONNECTED),
        .INJECTSBITERR(NLW_ram_reg_0_4_INJECTSBITERR_UNCONNECTED),
        .RDADDRECC(NLW_ram_reg_0_4_RDADDRECC_UNCONNECTED[8:0]),
        .REGCEAREGCE(1'b0),
        .REGCEB(1'b0),
        .RSTRAMARSTRAM(1'b0),
        .RSTRAMB(1'b0),
        .RSTREGARSTREG(1'b0),
        .RSTREGB(1'b0),
        .SBITERR(NLW_ram_reg_0_4_SBITERR_UNCONNECTED),
        .WEA({ram_reg_0_4_0,ram_reg_0_4_0,ram_reg_0_4_0,ram_reg_0_4_0}),
        .WEBWE({1'b0,1'b0,1'b0,1'b0,ram_we_i,ram_we_i,ram_we_i,ram_we_i}));
  (* \MEM.PORTA.DATA_BIT_LAYOUT  = "p0_d1" *) 
  (* \MEM.PORTB.DATA_BIT_LAYOUT  = "p0_d1" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-7 {cell *THIS*}}" *) 
  (* RTL_RAM_BITS = "1048576" *) 
  (* RTL_RAM_NAME = "U0/comblock_i/dram_g.dram_i/ram_reg_0_5" *) 
  (* RTL_RAM_TYPE = "RAM_TDP" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "32767" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "5" *) 
  (* ram_slice_end = "5" *) 
  RAMB36E1 #(
    .DOA_REG(0),
    .DOB_REG(0),
    .EN_ECC_READ("FALSE"),
    .EN_ECC_WRITE("FALSE"),
    .INITP_00(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_01(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_02(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_03(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_04(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_05(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_06(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_07(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_08(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_09(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_00(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_01(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_02(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_03(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_04(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_05(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_06(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_07(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_08(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_09(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_10(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_11(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_12(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_13(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_14(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_15(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_16(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_17(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_18(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_19(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_20(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_21(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_22(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_23(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_24(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_25(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_26(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_27(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_28(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_29(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_30(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_31(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_32(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_33(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_34(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_35(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_36(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_37(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_38(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_39(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_40(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_41(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_42(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_43(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_44(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_45(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_46(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_47(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_48(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_49(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_50(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_51(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_52(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_53(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_54(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_55(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_56(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_57(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_58(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_59(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_60(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_61(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_62(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_63(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_64(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_65(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_66(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_67(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_68(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_69(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_70(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_71(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_72(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_73(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_74(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_75(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_76(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_77(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_78(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_79(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_A(36'h000000000),
    .INIT_B(36'h000000000),
    .RAM_EXTENSION_A("LOWER"),
    .RAM_EXTENSION_B("LOWER"),
    .RAM_MODE("TDP"),
    .RDADDR_COLLISION_HWCONFIG("DELAYED_WRITE"),
    .READ_WIDTH_A(1),
    .READ_WIDTH_B(1),
    .RSTREG_PRIORITY_A("RSTREG"),
    .RSTREG_PRIORITY_B("RSTREG"),
    .SIM_COLLISION_CHECK("ALL"),
    .SIM_DEVICE("7SERIES"),
    .SRVAL_A(36'h000000000),
    .SRVAL_B(36'h000000000),
    .WRITE_MODE_A("WRITE_FIRST"),
    .WRITE_MODE_B("WRITE_FIRST"),
    .WRITE_WIDTH_A(1),
    .WRITE_WIDTH_B(1)) 
    ram_reg_0_5
       (.ADDRARDADDR(ADDRARDADDR),
        .ADDRBWRADDR(ram_addr_i),
        .CASCADEINA(1'b1),
        .CASCADEINB(1'b1),
        .CASCADEOUTA(ram_reg_0_5_n_0),
        .CASCADEOUTB(ram_reg_0_5_n_1),
        .CLKARDCLK(axif_aclk),
        .CLKBWRCLK(ram_clk_i),
        .DBITERR(NLW_ram_reg_0_5_DBITERR_UNCONNECTED),
        .DIADI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,axif_wdata[5]}),
        .DIBDI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,ram_data_i[5]}),
        .DIPADIP({1'b0,1'b0,1'b0,NLW_ram_reg_0_5_DIPADIP_UNCONNECTED[0]}),
        .DIPBDIP({1'b0,1'b0,1'b0,NLW_ram_reg_0_5_DIPBDIP_UNCONNECTED[0]}),
        .DOADO(NLW_ram_reg_0_5_DOADO_UNCONNECTED[31:0]),
        .DOBDO(NLW_ram_reg_0_5_DOBDO_UNCONNECTED[31:0]),
        .DOPADOP(NLW_ram_reg_0_5_DOPADOP_UNCONNECTED[3:0]),
        .DOPBDOP(NLW_ram_reg_0_5_DOPBDOP_UNCONNECTED[3:0]),
        .ECCPARITY(NLW_ram_reg_0_5_ECCPARITY_UNCONNECTED[7:0]),
        .ENARDEN(1'b1),
        .ENBWREN(1'b1),
        .INJECTDBITERR(NLW_ram_reg_0_5_INJECTDBITERR_UNCONNECTED),
        .INJECTSBITERR(NLW_ram_reg_0_5_INJECTSBITERR_UNCONNECTED),
        .RDADDRECC(NLW_ram_reg_0_5_RDADDRECC_UNCONNECTED[8:0]),
        .REGCEAREGCE(1'b0),
        .REGCEB(1'b0),
        .RSTRAMARSTRAM(1'b0),
        .RSTRAMB(1'b0),
        .RSTREGARSTREG(1'b0),
        .RSTREGB(1'b0),
        .SBITERR(NLW_ram_reg_0_5_SBITERR_UNCONNECTED),
        .WEA({ram_reg_0_5_0,ram_reg_0_5_0,ram_reg_0_5_0,ram_reg_0_5_0}),
        .WEBWE({1'b0,1'b0,1'b0,1'b0,ram_we_i,ram_we_i,ram_we_i,ram_we_i}));
  (* \MEM.PORTA.DATA_BIT_LAYOUT  = "p0_d1" *) 
  (* \MEM.PORTB.DATA_BIT_LAYOUT  = "p0_d1" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-7 {cell *THIS*}}" *) 
  (* RTL_RAM_BITS = "1048576" *) 
  (* RTL_RAM_NAME = "U0/comblock_i/dram_g.dram_i/ram_reg_0_6" *) 
  (* RTL_RAM_TYPE = "RAM_TDP" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "32767" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "6" *) 
  (* ram_slice_end = "6" *) 
  RAMB36E1 #(
    .DOA_REG(0),
    .DOB_REG(0),
    .EN_ECC_READ("FALSE"),
    .EN_ECC_WRITE("FALSE"),
    .INITP_00(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_01(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_02(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_03(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_04(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_05(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_06(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_07(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_08(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_09(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_00(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_01(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_02(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_03(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_04(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_05(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_06(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_07(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_08(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_09(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_10(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_11(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_12(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_13(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_14(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_15(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_16(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_17(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_18(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_19(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_20(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_21(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_22(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_23(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_24(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_25(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_26(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_27(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_28(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_29(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_30(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_31(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_32(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_33(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_34(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_35(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_36(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_37(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_38(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_39(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_40(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_41(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_42(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_43(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_44(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_45(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_46(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_47(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_48(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_49(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_50(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_51(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_52(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_53(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_54(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_55(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_56(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_57(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_58(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_59(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_60(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_61(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_62(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_63(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_64(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_65(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_66(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_67(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_68(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_69(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_70(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_71(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_72(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_73(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_74(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_75(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_76(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_77(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_78(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_79(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_A(36'h000000000),
    .INIT_B(36'h000000000),
    .RAM_EXTENSION_A("LOWER"),
    .RAM_EXTENSION_B("LOWER"),
    .RAM_MODE("TDP"),
    .RDADDR_COLLISION_HWCONFIG("DELAYED_WRITE"),
    .READ_WIDTH_A(1),
    .READ_WIDTH_B(1),
    .RSTREG_PRIORITY_A("RSTREG"),
    .RSTREG_PRIORITY_B("RSTREG"),
    .SIM_COLLISION_CHECK("ALL"),
    .SIM_DEVICE("7SERIES"),
    .SRVAL_A(36'h000000000),
    .SRVAL_B(36'h000000000),
    .WRITE_MODE_A("WRITE_FIRST"),
    .WRITE_MODE_B("WRITE_FIRST"),
    .WRITE_WIDTH_A(1),
    .WRITE_WIDTH_B(1)) 
    ram_reg_0_6
       (.ADDRARDADDR(ADDRARDADDR),
        .ADDRBWRADDR(ram_addr_i),
        .CASCADEINA(1'b1),
        .CASCADEINB(1'b1),
        .CASCADEOUTA(ram_reg_0_6_n_0),
        .CASCADEOUTB(ram_reg_0_6_n_1),
        .CLKARDCLK(axif_aclk),
        .CLKBWRCLK(ram_clk_i),
        .DBITERR(NLW_ram_reg_0_6_DBITERR_UNCONNECTED),
        .DIADI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,axif_wdata[6]}),
        .DIBDI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,ram_data_i[6]}),
        .DIPADIP({1'b0,1'b0,1'b0,NLW_ram_reg_0_6_DIPADIP_UNCONNECTED[0]}),
        .DIPBDIP({1'b0,1'b0,1'b0,NLW_ram_reg_0_6_DIPBDIP_UNCONNECTED[0]}),
        .DOADO(NLW_ram_reg_0_6_DOADO_UNCONNECTED[31:0]),
        .DOBDO(NLW_ram_reg_0_6_DOBDO_UNCONNECTED[31:0]),
        .DOPADOP(NLW_ram_reg_0_6_DOPADOP_UNCONNECTED[3:0]),
        .DOPBDOP(NLW_ram_reg_0_6_DOPBDOP_UNCONNECTED[3:0]),
        .ECCPARITY(NLW_ram_reg_0_6_ECCPARITY_UNCONNECTED[7:0]),
        .ENARDEN(1'b1),
        .ENBWREN(1'b1),
        .INJECTDBITERR(NLW_ram_reg_0_6_INJECTDBITERR_UNCONNECTED),
        .INJECTSBITERR(NLW_ram_reg_0_6_INJECTSBITERR_UNCONNECTED),
        .RDADDRECC(NLW_ram_reg_0_6_RDADDRECC_UNCONNECTED[8:0]),
        .REGCEAREGCE(1'b0),
        .REGCEB(1'b0),
        .RSTRAMARSTRAM(1'b0),
        .RSTRAMB(1'b0),
        .RSTREGARSTREG(1'b0),
        .RSTREGB(1'b0),
        .SBITERR(NLW_ram_reg_0_6_SBITERR_UNCONNECTED),
        .WEA({ram_reg_0_6_0,ram_reg_0_6_0,ram_reg_0_6_0,ram_reg_0_6_0}),
        .WEBWE({1'b0,1'b0,1'b0,1'b0,ram_we_i,ram_we_i,ram_we_i,ram_we_i}));
  (* \MEM.PORTA.DATA_BIT_LAYOUT  = "p0_d1" *) 
  (* \MEM.PORTB.DATA_BIT_LAYOUT  = "p0_d1" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-7 {cell *THIS*}}" *) 
  (* RTL_RAM_BITS = "1048576" *) 
  (* RTL_RAM_NAME = "U0/comblock_i/dram_g.dram_i/ram_reg_0_7" *) 
  (* RTL_RAM_TYPE = "RAM_TDP" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "32767" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "7" *) 
  (* ram_slice_end = "7" *) 
  RAMB36E1 #(
    .DOA_REG(0),
    .DOB_REG(0),
    .EN_ECC_READ("FALSE"),
    .EN_ECC_WRITE("FALSE"),
    .INITP_00(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_01(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_02(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_03(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_04(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_05(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_06(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_07(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_08(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_09(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_00(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_01(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_02(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_03(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_04(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_05(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_06(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_07(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_08(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_09(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_10(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_11(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_12(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_13(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_14(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_15(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_16(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_17(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_18(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_19(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_20(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_21(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_22(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_23(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_24(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_25(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_26(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_27(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_28(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_29(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_30(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_31(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_32(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_33(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_34(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_35(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_36(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_37(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_38(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_39(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_40(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_41(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_42(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_43(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_44(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_45(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_46(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_47(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_48(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_49(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_50(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_51(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_52(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_53(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_54(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_55(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_56(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_57(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_58(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_59(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_60(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_61(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_62(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_63(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_64(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_65(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_66(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_67(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_68(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_69(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_70(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_71(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_72(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_73(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_74(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_75(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_76(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_77(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_78(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_79(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_A(36'h000000000),
    .INIT_B(36'h000000000),
    .RAM_EXTENSION_A("LOWER"),
    .RAM_EXTENSION_B("LOWER"),
    .RAM_MODE("TDP"),
    .RDADDR_COLLISION_HWCONFIG("DELAYED_WRITE"),
    .READ_WIDTH_A(1),
    .READ_WIDTH_B(1),
    .RSTREG_PRIORITY_A("RSTREG"),
    .RSTREG_PRIORITY_B("RSTREG"),
    .SIM_COLLISION_CHECK("ALL"),
    .SIM_DEVICE("7SERIES"),
    .SRVAL_A(36'h000000000),
    .SRVAL_B(36'h000000000),
    .WRITE_MODE_A("WRITE_FIRST"),
    .WRITE_MODE_B("WRITE_FIRST"),
    .WRITE_WIDTH_A(1),
    .WRITE_WIDTH_B(1)) 
    ram_reg_0_7
       (.ADDRARDADDR(ADDRARDADDR),
        .ADDRBWRADDR(ram_addr_i),
        .CASCADEINA(1'b1),
        .CASCADEINB(1'b1),
        .CASCADEOUTA(ram_reg_0_7_n_0),
        .CASCADEOUTB(ram_reg_0_7_n_1),
        .CLKARDCLK(axif_aclk),
        .CLKBWRCLK(ram_clk_i),
        .DBITERR(NLW_ram_reg_0_7_DBITERR_UNCONNECTED),
        .DIADI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,axif_wdata[7]}),
        .DIBDI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,ram_data_i[7]}),
        .DIPADIP({1'b0,1'b0,1'b0,NLW_ram_reg_0_7_DIPADIP_UNCONNECTED[0]}),
        .DIPBDIP({1'b0,1'b0,1'b0,NLW_ram_reg_0_7_DIPBDIP_UNCONNECTED[0]}),
        .DOADO(NLW_ram_reg_0_7_DOADO_UNCONNECTED[31:0]),
        .DOBDO(NLW_ram_reg_0_7_DOBDO_UNCONNECTED[31:0]),
        .DOPADOP(NLW_ram_reg_0_7_DOPADOP_UNCONNECTED[3:0]),
        .DOPBDOP(NLW_ram_reg_0_7_DOPBDOP_UNCONNECTED[3:0]),
        .ECCPARITY(NLW_ram_reg_0_7_ECCPARITY_UNCONNECTED[7:0]),
        .ENARDEN(1'b1),
        .ENBWREN(1'b1),
        .INJECTDBITERR(NLW_ram_reg_0_7_INJECTDBITERR_UNCONNECTED),
        .INJECTSBITERR(NLW_ram_reg_0_7_INJECTSBITERR_UNCONNECTED),
        .RDADDRECC(NLW_ram_reg_0_7_RDADDRECC_UNCONNECTED[8:0]),
        .REGCEAREGCE(1'b0),
        .REGCEB(1'b0),
        .RSTRAMARSTRAM(1'b0),
        .RSTRAMB(1'b0),
        .RSTREGARSTREG(1'b0),
        .RSTREGB(1'b0),
        .SBITERR(NLW_ram_reg_0_7_SBITERR_UNCONNECTED),
        .WEA({ram_reg_0_7_0,ram_reg_0_7_0,ram_reg_0_7_0,ram_reg_0_7_0}),
        .WEBWE({1'b0,1'b0,1'b0,1'b0,ram_we_i,ram_we_i,ram_we_i,ram_we_i}));
  (* \MEM.PORTA.DATA_BIT_LAYOUT  = "p0_d1" *) 
  (* \MEM.PORTB.DATA_BIT_LAYOUT  = "p0_d1" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-7 {cell *THIS*}}" *) 
  (* RTL_RAM_BITS = "1048576" *) 
  (* RTL_RAM_NAME = "U0/comblock_i/dram_g.dram_i/ram_reg_0_8" *) 
  (* RTL_RAM_TYPE = "RAM_TDP" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "32767" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "8" *) 
  (* ram_slice_end = "8" *) 
  RAMB36E1 #(
    .DOA_REG(0),
    .DOB_REG(0),
    .EN_ECC_READ("FALSE"),
    .EN_ECC_WRITE("FALSE"),
    .INITP_00(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_01(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_02(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_03(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_04(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_05(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_06(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_07(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_08(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_09(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_00(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_01(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_02(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_03(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_04(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_05(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_06(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_07(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_08(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_09(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_10(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_11(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_12(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_13(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_14(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_15(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_16(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_17(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_18(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_19(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_20(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_21(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_22(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_23(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_24(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_25(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_26(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_27(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_28(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_29(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_30(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_31(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_32(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_33(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_34(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_35(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_36(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_37(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_38(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_39(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_40(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_41(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_42(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_43(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_44(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_45(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_46(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_47(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_48(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_49(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_50(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_51(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_52(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_53(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_54(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_55(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_56(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_57(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_58(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_59(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_60(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_61(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_62(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_63(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_64(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_65(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_66(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_67(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_68(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_69(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_70(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_71(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_72(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_73(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_74(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_75(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_76(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_77(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_78(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_79(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_A(36'h000000000),
    .INIT_B(36'h000000000),
    .RAM_EXTENSION_A("LOWER"),
    .RAM_EXTENSION_B("LOWER"),
    .RAM_MODE("TDP"),
    .RDADDR_COLLISION_HWCONFIG("DELAYED_WRITE"),
    .READ_WIDTH_A(1),
    .READ_WIDTH_B(1),
    .RSTREG_PRIORITY_A("RSTREG"),
    .RSTREG_PRIORITY_B("RSTREG"),
    .SIM_COLLISION_CHECK("ALL"),
    .SIM_DEVICE("7SERIES"),
    .SRVAL_A(36'h000000000),
    .SRVAL_B(36'h000000000),
    .WRITE_MODE_A("WRITE_FIRST"),
    .WRITE_MODE_B("WRITE_FIRST"),
    .WRITE_WIDTH_A(1),
    .WRITE_WIDTH_B(1)) 
    ram_reg_0_8
       (.ADDRARDADDR(ADDRARDADDR),
        .ADDRBWRADDR(ram_addr_i),
        .CASCADEINA(1'b1),
        .CASCADEINB(1'b1),
        .CASCADEOUTA(ram_reg_0_8_n_0),
        .CASCADEOUTB(ram_reg_0_8_n_1),
        .CLKARDCLK(axif_aclk),
        .CLKBWRCLK(ram_clk_i),
        .DBITERR(NLW_ram_reg_0_8_DBITERR_UNCONNECTED),
        .DIADI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,axif_wdata[8]}),
        .DIBDI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,ram_data_i[8]}),
        .DIPADIP({1'b0,1'b0,1'b0,NLW_ram_reg_0_8_DIPADIP_UNCONNECTED[0]}),
        .DIPBDIP({1'b0,1'b0,1'b0,NLW_ram_reg_0_8_DIPBDIP_UNCONNECTED[0]}),
        .DOADO(NLW_ram_reg_0_8_DOADO_UNCONNECTED[31:0]),
        .DOBDO(NLW_ram_reg_0_8_DOBDO_UNCONNECTED[31:0]),
        .DOPADOP(NLW_ram_reg_0_8_DOPADOP_UNCONNECTED[3:0]),
        .DOPBDOP(NLW_ram_reg_0_8_DOPBDOP_UNCONNECTED[3:0]),
        .ECCPARITY(NLW_ram_reg_0_8_ECCPARITY_UNCONNECTED[7:0]),
        .ENARDEN(1'b1),
        .ENBWREN(1'b1),
        .INJECTDBITERR(NLW_ram_reg_0_8_INJECTDBITERR_UNCONNECTED),
        .INJECTSBITERR(NLW_ram_reg_0_8_INJECTSBITERR_UNCONNECTED),
        .RDADDRECC(NLW_ram_reg_0_8_RDADDRECC_UNCONNECTED[8:0]),
        .REGCEAREGCE(1'b0),
        .REGCEB(1'b0),
        .RSTRAMARSTRAM(1'b0),
        .RSTRAMB(1'b0),
        .RSTREGARSTREG(1'b0),
        .RSTREGB(1'b0),
        .SBITERR(NLW_ram_reg_0_8_SBITERR_UNCONNECTED),
        .WEA({ram_reg_0_8_0,ram_reg_0_8_0,ram_reg_0_8_0,ram_reg_0_8_0}),
        .WEBWE({1'b0,1'b0,1'b0,1'b0,ram_we_i,ram_we_i,ram_we_i,ram_we_i}));
  (* \MEM.PORTA.DATA_BIT_LAYOUT  = "p0_d1" *) 
  (* \MEM.PORTB.DATA_BIT_LAYOUT  = "p0_d1" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-7 {cell *THIS*}}" *) 
  (* RTL_RAM_BITS = "1048576" *) 
  (* RTL_RAM_NAME = "U0/comblock_i/dram_g.dram_i/ram_reg_0_9" *) 
  (* RTL_RAM_TYPE = "RAM_TDP" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "32767" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "9" *) 
  (* ram_slice_end = "9" *) 
  RAMB36E1 #(
    .DOA_REG(0),
    .DOB_REG(0),
    .EN_ECC_READ("FALSE"),
    .EN_ECC_WRITE("FALSE"),
    .INITP_00(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_01(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_02(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_03(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_04(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_05(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_06(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_07(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_08(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_09(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_00(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_01(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_02(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_03(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_04(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_05(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_06(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_07(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_08(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_09(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_10(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_11(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_12(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_13(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_14(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_15(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_16(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_17(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_18(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_19(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_20(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_21(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_22(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_23(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_24(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_25(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_26(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_27(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_28(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_29(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_30(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_31(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_32(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_33(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_34(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_35(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_36(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_37(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_38(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_39(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_40(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_41(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_42(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_43(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_44(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_45(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_46(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_47(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_48(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_49(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_50(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_51(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_52(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_53(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_54(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_55(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_56(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_57(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_58(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_59(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_60(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_61(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_62(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_63(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_64(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_65(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_66(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_67(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_68(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_69(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_70(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_71(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_72(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_73(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_74(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_75(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_76(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_77(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_78(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_79(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_A(36'h000000000),
    .INIT_B(36'h000000000),
    .RAM_EXTENSION_A("LOWER"),
    .RAM_EXTENSION_B("LOWER"),
    .RAM_MODE("TDP"),
    .RDADDR_COLLISION_HWCONFIG("DELAYED_WRITE"),
    .READ_WIDTH_A(1),
    .READ_WIDTH_B(1),
    .RSTREG_PRIORITY_A("RSTREG"),
    .RSTREG_PRIORITY_B("RSTREG"),
    .SIM_COLLISION_CHECK("ALL"),
    .SIM_DEVICE("7SERIES"),
    .SRVAL_A(36'h000000000),
    .SRVAL_B(36'h000000000),
    .WRITE_MODE_A("WRITE_FIRST"),
    .WRITE_MODE_B("WRITE_FIRST"),
    .WRITE_WIDTH_A(1),
    .WRITE_WIDTH_B(1)) 
    ram_reg_0_9
       (.ADDRARDADDR(ADDRARDADDR),
        .ADDRBWRADDR(ram_addr_i),
        .CASCADEINA(1'b1),
        .CASCADEINB(1'b1),
        .CASCADEOUTA(ram_reg_0_9_n_0),
        .CASCADEOUTB(ram_reg_0_9_n_1),
        .CLKARDCLK(axif_aclk),
        .CLKBWRCLK(ram_clk_i),
        .DBITERR(NLW_ram_reg_0_9_DBITERR_UNCONNECTED),
        .DIADI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,axif_wdata[9]}),
        .DIBDI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,ram_data_i[9]}),
        .DIPADIP({1'b0,1'b0,1'b0,NLW_ram_reg_0_9_DIPADIP_UNCONNECTED[0]}),
        .DIPBDIP({1'b0,1'b0,1'b0,NLW_ram_reg_0_9_DIPBDIP_UNCONNECTED[0]}),
        .DOADO(NLW_ram_reg_0_9_DOADO_UNCONNECTED[31:0]),
        .DOBDO(NLW_ram_reg_0_9_DOBDO_UNCONNECTED[31:0]),
        .DOPADOP(NLW_ram_reg_0_9_DOPADOP_UNCONNECTED[3:0]),
        .DOPBDOP(NLW_ram_reg_0_9_DOPBDOP_UNCONNECTED[3:0]),
        .ECCPARITY(NLW_ram_reg_0_9_ECCPARITY_UNCONNECTED[7:0]),
        .ENARDEN(1'b1),
        .ENBWREN(1'b1),
        .INJECTDBITERR(NLW_ram_reg_0_9_INJECTDBITERR_UNCONNECTED),
        .INJECTSBITERR(NLW_ram_reg_0_9_INJECTSBITERR_UNCONNECTED),
        .RDADDRECC(NLW_ram_reg_0_9_RDADDRECC_UNCONNECTED[8:0]),
        .REGCEAREGCE(1'b0),
        .REGCEB(1'b0),
        .RSTRAMARSTRAM(1'b0),
        .RSTRAMB(1'b0),
        .RSTREGARSTREG(1'b0),
        .RSTREGB(1'b0),
        .SBITERR(NLW_ram_reg_0_9_SBITERR_UNCONNECTED),
        .WEA({ram_reg_0_9_0,ram_reg_0_9_0,ram_reg_0_9_0,ram_reg_0_9_0}),
        .WEBWE({1'b0,1'b0,1'b0,1'b0,ram_we_i,ram_we_i,ram_we_i,ram_we_i}));
  (* \MEM.PORTA.DATA_BIT_LAYOUT  = "p0_d1" *) 
  (* \MEM.PORTB.DATA_BIT_LAYOUT  = "p0_d1" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-6 {cell *THIS*}} {SYNTH-7 {cell *THIS*}}" *) 
  (* RTL_RAM_BITS = "1048576" *) 
  (* RTL_RAM_NAME = "U0/comblock_i/dram_g.dram_i/ram_reg_1_0" *) 
  (* RTL_RAM_TYPE = "RAM_TDP" *) 
  (* ram_addr_begin = "32768" *) 
  (* ram_addr_end = "65535" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "0" *) 
  (* ram_slice_end = "0" *) 
  RAMB36E1 #(
    .DOA_REG(0),
    .DOB_REG(0),
    .EN_ECC_READ("FALSE"),
    .EN_ECC_WRITE("FALSE"),
    .INITP_00(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_01(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_02(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_03(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_04(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_05(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_06(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_07(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_08(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_09(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_00(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_01(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_02(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_03(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_04(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_05(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_06(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_07(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_08(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_09(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_10(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_11(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_12(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_13(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_14(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_15(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_16(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_17(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_18(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_19(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_20(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_21(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_22(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_23(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_24(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_25(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_26(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_27(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_28(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_29(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_30(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_31(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_32(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_33(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_34(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_35(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_36(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_37(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_38(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_39(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_40(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_41(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_42(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_43(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_44(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_45(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_46(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_47(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_48(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_49(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_50(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_51(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_52(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_53(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_54(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_55(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_56(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_57(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_58(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_59(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_60(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_61(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_62(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_63(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_64(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_65(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_66(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_67(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_68(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_69(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_70(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_71(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_72(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_73(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_74(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_75(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_76(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_77(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_78(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_79(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_A(36'h000000000),
    .INIT_B(36'h000000000),
    .RAM_EXTENSION_A("UPPER"),
    .RAM_EXTENSION_B("UPPER"),
    .RAM_MODE("TDP"),
    .RDADDR_COLLISION_HWCONFIG("DELAYED_WRITE"),
    .READ_WIDTH_A(1),
    .READ_WIDTH_B(1),
    .RSTREG_PRIORITY_A("RSTREG"),
    .RSTREG_PRIORITY_B("RSTREG"),
    .SIM_COLLISION_CHECK("ALL"),
    .SIM_DEVICE("7SERIES"),
    .SRVAL_A(36'h000000000),
    .SRVAL_B(36'h000000000),
    .WRITE_MODE_A("WRITE_FIRST"),
    .WRITE_MODE_B("WRITE_FIRST"),
    .WRITE_WIDTH_A(1),
    .WRITE_WIDTH_B(1)) 
    ram_reg_1_0
       (.ADDRARDADDR(ADDRARDADDR),
        .ADDRBWRADDR(ram_addr_i),
        .CASCADEINA(ram_reg_0_0_n_0),
        .CASCADEINB(ram_reg_0_0_n_1),
        .CASCADEOUTA(NLW_ram_reg_1_0_CASCADEOUTA_UNCONNECTED),
        .CASCADEOUTB(NLW_ram_reg_1_0_CASCADEOUTB_UNCONNECTED),
        .CLKARDCLK(axif_aclk),
        .CLKBWRCLK(ram_clk_i),
        .DBITERR(NLW_ram_reg_1_0_DBITERR_UNCONNECTED),
        .DIADI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,axif_wdata[0]}),
        .DIBDI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,ram_data_i[0]}),
        .DIPADIP({1'b0,1'b0,1'b0,NLW_ram_reg_1_0_DIPADIP_UNCONNECTED[0]}),
        .DIPBDIP({1'b0,1'b0,1'b0,NLW_ram_reg_1_0_DIPBDIP_UNCONNECTED[0]}),
        .DOADO({NLW_ram_reg_1_0_DOADO_UNCONNECTED[31:1],ram_reg_1_15_0[0]}),
        .DOBDO({NLW_ram_reg_1_0_DOBDO_UNCONNECTED[31:1],ram_data_o[0]}),
        .DOPADOP(NLW_ram_reg_1_0_DOPADOP_UNCONNECTED[3:0]),
        .DOPBDOP(NLW_ram_reg_1_0_DOPBDOP_UNCONNECTED[3:0]),
        .ECCPARITY(NLW_ram_reg_1_0_ECCPARITY_UNCONNECTED[7:0]),
        .ENARDEN(1'b1),
        .ENBWREN(1'b1),
        .INJECTDBITERR(NLW_ram_reg_1_0_INJECTDBITERR_UNCONNECTED),
        .INJECTSBITERR(NLW_ram_reg_1_0_INJECTSBITERR_UNCONNECTED),
        .RDADDRECC(NLW_ram_reg_1_0_RDADDRECC_UNCONNECTED[8:0]),
        .REGCEAREGCE(1'b0),
        .REGCEB(1'b0),
        .RSTRAMARSTRAM(1'b0),
        .RSTRAMB(1'b0),
        .RSTREGARSTREG(1'b0),
        .RSTREGB(1'b0),
        .SBITERR(NLW_ram_reg_1_0_SBITERR_UNCONNECTED),
        .WEA({ram_reg_1_0_0,ram_reg_1_0_0,ram_reg_1_0_0,ram_reg_1_0_0}),
        .WEBWE({1'b0,1'b0,1'b0,1'b0,ram_we_i,ram_we_i,ram_we_i,ram_we_i}));
  (* \MEM.PORTA.DATA_BIT_LAYOUT  = "p0_d1" *) 
  (* \MEM.PORTB.DATA_BIT_LAYOUT  = "p0_d1" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-6 {cell *THIS*}} {SYNTH-7 {cell *THIS*}}" *) 
  (* RTL_RAM_BITS = "1048576" *) 
  (* RTL_RAM_NAME = "U0/comblock_i/dram_g.dram_i/ram_reg_1_1" *) 
  (* RTL_RAM_TYPE = "RAM_TDP" *) 
  (* ram_addr_begin = "32768" *) 
  (* ram_addr_end = "65535" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "1" *) 
  (* ram_slice_end = "1" *) 
  RAMB36E1 #(
    .DOA_REG(0),
    .DOB_REG(0),
    .EN_ECC_READ("FALSE"),
    .EN_ECC_WRITE("FALSE"),
    .INITP_00(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_01(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_02(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_03(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_04(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_05(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_06(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_07(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_08(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_09(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_00(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_01(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_02(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_03(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_04(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_05(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_06(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_07(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_08(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_09(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_10(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_11(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_12(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_13(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_14(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_15(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_16(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_17(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_18(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_19(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_20(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_21(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_22(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_23(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_24(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_25(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_26(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_27(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_28(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_29(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_30(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_31(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_32(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_33(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_34(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_35(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_36(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_37(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_38(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_39(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_40(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_41(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_42(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_43(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_44(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_45(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_46(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_47(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_48(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_49(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_50(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_51(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_52(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_53(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_54(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_55(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_56(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_57(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_58(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_59(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_60(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_61(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_62(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_63(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_64(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_65(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_66(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_67(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_68(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_69(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_70(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_71(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_72(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_73(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_74(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_75(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_76(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_77(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_78(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_79(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_A(36'h000000000),
    .INIT_B(36'h000000000),
    .RAM_EXTENSION_A("UPPER"),
    .RAM_EXTENSION_B("UPPER"),
    .RAM_MODE("TDP"),
    .RDADDR_COLLISION_HWCONFIG("DELAYED_WRITE"),
    .READ_WIDTH_A(1),
    .READ_WIDTH_B(1),
    .RSTREG_PRIORITY_A("RSTREG"),
    .RSTREG_PRIORITY_B("RSTREG"),
    .SIM_COLLISION_CHECK("ALL"),
    .SIM_DEVICE("7SERIES"),
    .SRVAL_A(36'h000000000),
    .SRVAL_B(36'h000000000),
    .WRITE_MODE_A("WRITE_FIRST"),
    .WRITE_MODE_B("WRITE_FIRST"),
    .WRITE_WIDTH_A(1),
    .WRITE_WIDTH_B(1)) 
    ram_reg_1_1
       (.ADDRARDADDR(ADDRARDADDR),
        .ADDRBWRADDR(ram_addr_i),
        .CASCADEINA(ram_reg_0_1_n_0),
        .CASCADEINB(ram_reg_0_1_n_1),
        .CASCADEOUTA(NLW_ram_reg_1_1_CASCADEOUTA_UNCONNECTED),
        .CASCADEOUTB(NLW_ram_reg_1_1_CASCADEOUTB_UNCONNECTED),
        .CLKARDCLK(axif_aclk),
        .CLKBWRCLK(ram_clk_i),
        .DBITERR(NLW_ram_reg_1_1_DBITERR_UNCONNECTED),
        .DIADI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,axif_wdata[1]}),
        .DIBDI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,ram_data_i[1]}),
        .DIPADIP({1'b0,1'b0,1'b0,NLW_ram_reg_1_1_DIPADIP_UNCONNECTED[0]}),
        .DIPBDIP({1'b0,1'b0,1'b0,NLW_ram_reg_1_1_DIPBDIP_UNCONNECTED[0]}),
        .DOADO({NLW_ram_reg_1_1_DOADO_UNCONNECTED[31:1],ram_reg_1_15_0[1]}),
        .DOBDO({NLW_ram_reg_1_1_DOBDO_UNCONNECTED[31:1],ram_data_o[1]}),
        .DOPADOP(NLW_ram_reg_1_1_DOPADOP_UNCONNECTED[3:0]),
        .DOPBDOP(NLW_ram_reg_1_1_DOPBDOP_UNCONNECTED[3:0]),
        .ECCPARITY(NLW_ram_reg_1_1_ECCPARITY_UNCONNECTED[7:0]),
        .ENARDEN(1'b1),
        .ENBWREN(1'b1),
        .INJECTDBITERR(NLW_ram_reg_1_1_INJECTDBITERR_UNCONNECTED),
        .INJECTSBITERR(NLW_ram_reg_1_1_INJECTSBITERR_UNCONNECTED),
        .RDADDRECC(NLW_ram_reg_1_1_RDADDRECC_UNCONNECTED[8:0]),
        .REGCEAREGCE(1'b0),
        .REGCEB(1'b0),
        .RSTRAMARSTRAM(1'b0),
        .RSTRAMB(1'b0),
        .RSTREGARSTREG(1'b0),
        .RSTREGB(1'b0),
        .SBITERR(NLW_ram_reg_1_1_SBITERR_UNCONNECTED),
        .WEA({ram_reg_1_1_0,ram_reg_1_1_0,ram_reg_1_1_0,ram_reg_1_1_0}),
        .WEBWE({1'b0,1'b0,1'b0,1'b0,ram_we_i,ram_we_i,ram_we_i,ram_we_i}));
  (* \MEM.PORTA.DATA_BIT_LAYOUT  = "p0_d1" *) 
  (* \MEM.PORTB.DATA_BIT_LAYOUT  = "p0_d1" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-6 {cell *THIS*}} {SYNTH-7 {cell *THIS*}}" *) 
  (* RTL_RAM_BITS = "1048576" *) 
  (* RTL_RAM_NAME = "U0/comblock_i/dram_g.dram_i/ram_reg_1_10" *) 
  (* RTL_RAM_TYPE = "RAM_TDP" *) 
  (* ram_addr_begin = "32768" *) 
  (* ram_addr_end = "65535" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "10" *) 
  (* ram_slice_end = "10" *) 
  RAMB36E1 #(
    .DOA_REG(0),
    .DOB_REG(0),
    .EN_ECC_READ("FALSE"),
    .EN_ECC_WRITE("FALSE"),
    .INITP_00(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_01(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_02(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_03(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_04(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_05(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_06(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_07(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_08(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_09(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_00(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_01(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_02(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_03(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_04(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_05(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_06(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_07(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_08(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_09(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_10(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_11(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_12(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_13(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_14(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_15(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_16(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_17(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_18(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_19(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_20(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_21(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_22(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_23(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_24(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_25(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_26(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_27(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_28(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_29(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_30(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_31(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_32(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_33(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_34(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_35(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_36(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_37(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_38(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_39(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_40(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_41(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_42(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_43(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_44(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_45(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_46(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_47(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_48(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_49(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_50(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_51(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_52(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_53(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_54(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_55(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_56(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_57(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_58(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_59(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_60(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_61(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_62(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_63(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_64(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_65(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_66(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_67(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_68(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_69(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_70(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_71(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_72(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_73(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_74(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_75(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_76(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_77(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_78(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_79(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_A(36'h000000000),
    .INIT_B(36'h000000000),
    .RAM_EXTENSION_A("UPPER"),
    .RAM_EXTENSION_B("UPPER"),
    .RAM_MODE("TDP"),
    .RDADDR_COLLISION_HWCONFIG("DELAYED_WRITE"),
    .READ_WIDTH_A(1),
    .READ_WIDTH_B(1),
    .RSTREG_PRIORITY_A("RSTREG"),
    .RSTREG_PRIORITY_B("RSTREG"),
    .SIM_COLLISION_CHECK("ALL"),
    .SIM_DEVICE("7SERIES"),
    .SRVAL_A(36'h000000000),
    .SRVAL_B(36'h000000000),
    .WRITE_MODE_A("WRITE_FIRST"),
    .WRITE_MODE_B("WRITE_FIRST"),
    .WRITE_WIDTH_A(1),
    .WRITE_WIDTH_B(1)) 
    ram_reg_1_10
       (.ADDRARDADDR(ADDRARDADDR),
        .ADDRBWRADDR(ram_addr_i),
        .CASCADEINA(ram_reg_0_10_n_0),
        .CASCADEINB(ram_reg_0_10_n_1),
        .CASCADEOUTA(NLW_ram_reg_1_10_CASCADEOUTA_UNCONNECTED),
        .CASCADEOUTB(NLW_ram_reg_1_10_CASCADEOUTB_UNCONNECTED),
        .CLKARDCLK(axif_aclk),
        .CLKBWRCLK(ram_clk_i),
        .DBITERR(NLW_ram_reg_1_10_DBITERR_UNCONNECTED),
        .DIADI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,axif_wdata[10]}),
        .DIBDI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,ram_data_i[10]}),
        .DIPADIP({1'b0,1'b0,1'b0,NLW_ram_reg_1_10_DIPADIP_UNCONNECTED[0]}),
        .DIPBDIP({1'b0,1'b0,1'b0,NLW_ram_reg_1_10_DIPBDIP_UNCONNECTED[0]}),
        .DOADO({NLW_ram_reg_1_10_DOADO_UNCONNECTED[31:1],ram_reg_1_15_0[10]}),
        .DOBDO({NLW_ram_reg_1_10_DOBDO_UNCONNECTED[31:1],ram_data_o[10]}),
        .DOPADOP(NLW_ram_reg_1_10_DOPADOP_UNCONNECTED[3:0]),
        .DOPBDOP(NLW_ram_reg_1_10_DOPBDOP_UNCONNECTED[3:0]),
        .ECCPARITY(NLW_ram_reg_1_10_ECCPARITY_UNCONNECTED[7:0]),
        .ENARDEN(1'b1),
        .ENBWREN(1'b1),
        .INJECTDBITERR(NLW_ram_reg_1_10_INJECTDBITERR_UNCONNECTED),
        .INJECTSBITERR(NLW_ram_reg_1_10_INJECTSBITERR_UNCONNECTED),
        .RDADDRECC(NLW_ram_reg_1_10_RDADDRECC_UNCONNECTED[8:0]),
        .REGCEAREGCE(1'b0),
        .REGCEB(1'b0),
        .RSTRAMARSTRAM(1'b0),
        .RSTRAMB(1'b0),
        .RSTREGARSTREG(1'b0),
        .RSTREGB(1'b0),
        .SBITERR(NLW_ram_reg_1_10_SBITERR_UNCONNECTED),
        .WEA({ram_reg_1_10_0,ram_reg_1_10_0,ram_reg_1_10_0,ram_reg_1_10_0}),
        .WEBWE({1'b0,1'b0,1'b0,1'b0,ram_we_i,ram_we_i,ram_we_i,ram_we_i}));
  (* \MEM.PORTA.DATA_BIT_LAYOUT  = "p0_d1" *) 
  (* \MEM.PORTB.DATA_BIT_LAYOUT  = "p0_d1" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-6 {cell *THIS*}} {SYNTH-7 {cell *THIS*}}" *) 
  (* RTL_RAM_BITS = "1048576" *) 
  (* RTL_RAM_NAME = "U0/comblock_i/dram_g.dram_i/ram_reg_1_11" *) 
  (* RTL_RAM_TYPE = "RAM_TDP" *) 
  (* ram_addr_begin = "32768" *) 
  (* ram_addr_end = "65535" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "11" *) 
  (* ram_slice_end = "11" *) 
  RAMB36E1 #(
    .DOA_REG(0),
    .DOB_REG(0),
    .EN_ECC_READ("FALSE"),
    .EN_ECC_WRITE("FALSE"),
    .INITP_00(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_01(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_02(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_03(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_04(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_05(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_06(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_07(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_08(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_09(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_00(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_01(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_02(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_03(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_04(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_05(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_06(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_07(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_08(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_09(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_10(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_11(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_12(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_13(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_14(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_15(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_16(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_17(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_18(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_19(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_20(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_21(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_22(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_23(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_24(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_25(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_26(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_27(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_28(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_29(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_30(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_31(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_32(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_33(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_34(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_35(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_36(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_37(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_38(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_39(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_40(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_41(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_42(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_43(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_44(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_45(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_46(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_47(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_48(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_49(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_50(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_51(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_52(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_53(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_54(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_55(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_56(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_57(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_58(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_59(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_60(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_61(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_62(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_63(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_64(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_65(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_66(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_67(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_68(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_69(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_70(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_71(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_72(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_73(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_74(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_75(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_76(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_77(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_78(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_79(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_A(36'h000000000),
    .INIT_B(36'h000000000),
    .RAM_EXTENSION_A("UPPER"),
    .RAM_EXTENSION_B("UPPER"),
    .RAM_MODE("TDP"),
    .RDADDR_COLLISION_HWCONFIG("DELAYED_WRITE"),
    .READ_WIDTH_A(1),
    .READ_WIDTH_B(1),
    .RSTREG_PRIORITY_A("RSTREG"),
    .RSTREG_PRIORITY_B("RSTREG"),
    .SIM_COLLISION_CHECK("ALL"),
    .SIM_DEVICE("7SERIES"),
    .SRVAL_A(36'h000000000),
    .SRVAL_B(36'h000000000),
    .WRITE_MODE_A("WRITE_FIRST"),
    .WRITE_MODE_B("WRITE_FIRST"),
    .WRITE_WIDTH_A(1),
    .WRITE_WIDTH_B(1)) 
    ram_reg_1_11
       (.ADDRARDADDR(addr2_i),
        .ADDRBWRADDR(ram_addr_i),
        .CASCADEINA(ram_reg_0_11_n_0),
        .CASCADEINB(ram_reg_0_11_n_1),
        .CASCADEOUTA(NLW_ram_reg_1_11_CASCADEOUTA_UNCONNECTED),
        .CASCADEOUTB(NLW_ram_reg_1_11_CASCADEOUTB_UNCONNECTED),
        .CLKARDCLK(axif_aclk),
        .CLKBWRCLK(ram_clk_i),
        .DBITERR(NLW_ram_reg_1_11_DBITERR_UNCONNECTED),
        .DIADI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,axif_wdata[11]}),
        .DIBDI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,ram_data_i[11]}),
        .DIPADIP({1'b0,1'b0,1'b0,NLW_ram_reg_1_11_DIPADIP_UNCONNECTED[0]}),
        .DIPBDIP({1'b0,1'b0,1'b0,NLW_ram_reg_1_11_DIPBDIP_UNCONNECTED[0]}),
        .DOADO({NLW_ram_reg_1_11_DOADO_UNCONNECTED[31:1],ram_reg_1_15_0[11]}),
        .DOBDO({NLW_ram_reg_1_11_DOBDO_UNCONNECTED[31:1],ram_data_o[11]}),
        .DOPADOP(NLW_ram_reg_1_11_DOPADOP_UNCONNECTED[3:0]),
        .DOPBDOP(NLW_ram_reg_1_11_DOPBDOP_UNCONNECTED[3:0]),
        .ECCPARITY(NLW_ram_reg_1_11_ECCPARITY_UNCONNECTED[7:0]),
        .ENARDEN(1'b1),
        .ENBWREN(1'b1),
        .INJECTDBITERR(NLW_ram_reg_1_11_INJECTDBITERR_UNCONNECTED),
        .INJECTSBITERR(NLW_ram_reg_1_11_INJECTSBITERR_UNCONNECTED),
        .RDADDRECC(NLW_ram_reg_1_11_RDADDRECC_UNCONNECTED[8:0]),
        .REGCEAREGCE(1'b0),
        .REGCEB(1'b0),
        .RSTRAMARSTRAM(1'b0),
        .RSTRAMB(1'b0),
        .RSTREGARSTREG(1'b0),
        .RSTREGB(1'b0),
        .SBITERR(NLW_ram_reg_1_11_SBITERR_UNCONNECTED),
        .WEA({ram_reg_1_11_0,ram_reg_1_11_0,ram_reg_1_11_0,ram_reg_1_11_0}),
        .WEBWE({1'b0,1'b0,1'b0,1'b0,ram_we_i,ram_we_i,ram_we_i,ram_we_i}));
  (* \MEM.PORTA.DATA_BIT_LAYOUT  = "p0_d1" *) 
  (* \MEM.PORTB.DATA_BIT_LAYOUT  = "p0_d1" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-6 {cell *THIS*}} {SYNTH-7 {cell *THIS*}}" *) 
  (* RTL_RAM_BITS = "1048576" *) 
  (* RTL_RAM_NAME = "U0/comblock_i/dram_g.dram_i/ram_reg_1_12" *) 
  (* RTL_RAM_TYPE = "RAM_TDP" *) 
  (* ram_addr_begin = "32768" *) 
  (* ram_addr_end = "65535" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "12" *) 
  (* ram_slice_end = "12" *) 
  RAMB36E1 #(
    .DOA_REG(0),
    .DOB_REG(0),
    .EN_ECC_READ("FALSE"),
    .EN_ECC_WRITE("FALSE"),
    .INITP_00(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_01(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_02(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_03(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_04(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_05(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_06(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_07(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_08(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_09(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_00(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_01(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_02(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_03(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_04(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_05(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_06(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_07(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_08(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_09(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_10(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_11(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_12(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_13(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_14(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_15(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_16(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_17(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_18(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_19(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_20(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_21(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_22(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_23(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_24(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_25(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_26(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_27(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_28(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_29(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_30(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_31(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_32(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_33(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_34(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_35(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_36(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_37(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_38(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_39(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_40(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_41(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_42(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_43(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_44(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_45(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_46(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_47(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_48(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_49(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_50(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_51(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_52(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_53(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_54(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_55(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_56(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_57(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_58(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_59(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_60(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_61(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_62(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_63(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_64(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_65(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_66(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_67(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_68(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_69(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_70(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_71(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_72(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_73(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_74(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_75(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_76(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_77(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_78(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_79(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_A(36'h000000000),
    .INIT_B(36'h000000000),
    .RAM_EXTENSION_A("UPPER"),
    .RAM_EXTENSION_B("UPPER"),
    .RAM_MODE("TDP"),
    .RDADDR_COLLISION_HWCONFIG("DELAYED_WRITE"),
    .READ_WIDTH_A(1),
    .READ_WIDTH_B(1),
    .RSTREG_PRIORITY_A("RSTREG"),
    .RSTREG_PRIORITY_B("RSTREG"),
    .SIM_COLLISION_CHECK("ALL"),
    .SIM_DEVICE("7SERIES"),
    .SRVAL_A(36'h000000000),
    .SRVAL_B(36'h000000000),
    .WRITE_MODE_A("WRITE_FIRST"),
    .WRITE_MODE_B("WRITE_FIRST"),
    .WRITE_WIDTH_A(1),
    .WRITE_WIDTH_B(1)) 
    ram_reg_1_12
       (.ADDRARDADDR(addr2_i),
        .ADDRBWRADDR(ram_addr_i),
        .CASCADEINA(ram_reg_0_12_n_0),
        .CASCADEINB(ram_reg_0_12_n_1),
        .CASCADEOUTA(NLW_ram_reg_1_12_CASCADEOUTA_UNCONNECTED),
        .CASCADEOUTB(NLW_ram_reg_1_12_CASCADEOUTB_UNCONNECTED),
        .CLKARDCLK(axif_aclk),
        .CLKBWRCLK(ram_clk_i),
        .DBITERR(NLW_ram_reg_1_12_DBITERR_UNCONNECTED),
        .DIADI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,axif_wdata[12]}),
        .DIBDI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,ram_data_i[12]}),
        .DIPADIP({1'b0,1'b0,1'b0,NLW_ram_reg_1_12_DIPADIP_UNCONNECTED[0]}),
        .DIPBDIP({1'b0,1'b0,1'b0,NLW_ram_reg_1_12_DIPBDIP_UNCONNECTED[0]}),
        .DOADO({NLW_ram_reg_1_12_DOADO_UNCONNECTED[31:1],ram_reg_1_15_0[12]}),
        .DOBDO({NLW_ram_reg_1_12_DOBDO_UNCONNECTED[31:1],ram_data_o[12]}),
        .DOPADOP(NLW_ram_reg_1_12_DOPADOP_UNCONNECTED[3:0]),
        .DOPBDOP(NLW_ram_reg_1_12_DOPBDOP_UNCONNECTED[3:0]),
        .ECCPARITY(NLW_ram_reg_1_12_ECCPARITY_UNCONNECTED[7:0]),
        .ENARDEN(1'b1),
        .ENBWREN(1'b1),
        .INJECTDBITERR(NLW_ram_reg_1_12_INJECTDBITERR_UNCONNECTED),
        .INJECTSBITERR(NLW_ram_reg_1_12_INJECTSBITERR_UNCONNECTED),
        .RDADDRECC(NLW_ram_reg_1_12_RDADDRECC_UNCONNECTED[8:0]),
        .REGCEAREGCE(1'b0),
        .REGCEB(1'b0),
        .RSTRAMARSTRAM(1'b0),
        .RSTRAMB(1'b0),
        .RSTREGARSTREG(1'b0),
        .RSTREGB(1'b0),
        .SBITERR(NLW_ram_reg_1_12_SBITERR_UNCONNECTED),
        .WEA({ram_reg_1_12_0,ram_reg_1_12_0,ram_reg_1_12_0,ram_reg_1_12_0}),
        .WEBWE({1'b0,1'b0,1'b0,1'b0,ram_we_i,ram_we_i,ram_we_i,ram_we_i}));
  (* \MEM.PORTA.DATA_BIT_LAYOUT  = "p0_d1" *) 
  (* \MEM.PORTB.DATA_BIT_LAYOUT  = "p0_d1" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-6 {cell *THIS*}} {SYNTH-7 {cell *THIS*}}" *) 
  (* RTL_RAM_BITS = "1048576" *) 
  (* RTL_RAM_NAME = "U0/comblock_i/dram_g.dram_i/ram_reg_1_13" *) 
  (* RTL_RAM_TYPE = "RAM_TDP" *) 
  (* ram_addr_begin = "32768" *) 
  (* ram_addr_end = "65535" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "13" *) 
  (* ram_slice_end = "13" *) 
  RAMB36E1 #(
    .DOA_REG(0),
    .DOB_REG(0),
    .EN_ECC_READ("FALSE"),
    .EN_ECC_WRITE("FALSE"),
    .INITP_00(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_01(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_02(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_03(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_04(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_05(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_06(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_07(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_08(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_09(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_00(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_01(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_02(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_03(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_04(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_05(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_06(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_07(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_08(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_09(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_10(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_11(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_12(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_13(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_14(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_15(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_16(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_17(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_18(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_19(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_20(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_21(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_22(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_23(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_24(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_25(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_26(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_27(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_28(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_29(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_30(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_31(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_32(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_33(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_34(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_35(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_36(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_37(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_38(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_39(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_40(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_41(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_42(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_43(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_44(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_45(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_46(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_47(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_48(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_49(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_50(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_51(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_52(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_53(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_54(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_55(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_56(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_57(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_58(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_59(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_60(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_61(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_62(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_63(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_64(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_65(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_66(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_67(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_68(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_69(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_70(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_71(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_72(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_73(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_74(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_75(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_76(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_77(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_78(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_79(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_A(36'h000000000),
    .INIT_B(36'h000000000),
    .RAM_EXTENSION_A("UPPER"),
    .RAM_EXTENSION_B("UPPER"),
    .RAM_MODE("TDP"),
    .RDADDR_COLLISION_HWCONFIG("DELAYED_WRITE"),
    .READ_WIDTH_A(1),
    .READ_WIDTH_B(1),
    .RSTREG_PRIORITY_A("RSTREG"),
    .RSTREG_PRIORITY_B("RSTREG"),
    .SIM_COLLISION_CHECK("ALL"),
    .SIM_DEVICE("7SERIES"),
    .SRVAL_A(36'h000000000),
    .SRVAL_B(36'h000000000),
    .WRITE_MODE_A("WRITE_FIRST"),
    .WRITE_MODE_B("WRITE_FIRST"),
    .WRITE_WIDTH_A(1),
    .WRITE_WIDTH_B(1)) 
    ram_reg_1_13
       (.ADDRARDADDR(addr2_i),
        .ADDRBWRADDR(ram_addr_i),
        .CASCADEINA(ram_reg_0_13_n_0),
        .CASCADEINB(ram_reg_0_13_n_1),
        .CASCADEOUTA(NLW_ram_reg_1_13_CASCADEOUTA_UNCONNECTED),
        .CASCADEOUTB(NLW_ram_reg_1_13_CASCADEOUTB_UNCONNECTED),
        .CLKARDCLK(axif_aclk),
        .CLKBWRCLK(ram_clk_i),
        .DBITERR(NLW_ram_reg_1_13_DBITERR_UNCONNECTED),
        .DIADI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,axif_wdata[13]}),
        .DIBDI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,ram_data_i[13]}),
        .DIPADIP({1'b0,1'b0,1'b0,NLW_ram_reg_1_13_DIPADIP_UNCONNECTED[0]}),
        .DIPBDIP({1'b0,1'b0,1'b0,NLW_ram_reg_1_13_DIPBDIP_UNCONNECTED[0]}),
        .DOADO({NLW_ram_reg_1_13_DOADO_UNCONNECTED[31:1],ram_reg_1_15_0[13]}),
        .DOBDO({NLW_ram_reg_1_13_DOBDO_UNCONNECTED[31:1],ram_data_o[13]}),
        .DOPADOP(NLW_ram_reg_1_13_DOPADOP_UNCONNECTED[3:0]),
        .DOPBDOP(NLW_ram_reg_1_13_DOPBDOP_UNCONNECTED[3:0]),
        .ECCPARITY(NLW_ram_reg_1_13_ECCPARITY_UNCONNECTED[7:0]),
        .ENARDEN(1'b1),
        .ENBWREN(1'b1),
        .INJECTDBITERR(NLW_ram_reg_1_13_INJECTDBITERR_UNCONNECTED),
        .INJECTSBITERR(NLW_ram_reg_1_13_INJECTSBITERR_UNCONNECTED),
        .RDADDRECC(NLW_ram_reg_1_13_RDADDRECC_UNCONNECTED[8:0]),
        .REGCEAREGCE(1'b0),
        .REGCEB(1'b0),
        .RSTRAMARSTRAM(1'b0),
        .RSTRAMB(1'b0),
        .RSTREGARSTREG(1'b0),
        .RSTREGB(1'b0),
        .SBITERR(NLW_ram_reg_1_13_SBITERR_UNCONNECTED),
        .WEA({ram_reg_1_13_0,ram_reg_1_13_0,ram_reg_1_13_0,ram_reg_1_13_0}),
        .WEBWE({1'b0,1'b0,1'b0,1'b0,ram_we_i,ram_we_i,ram_we_i,ram_we_i}));
  (* \MEM.PORTA.DATA_BIT_LAYOUT  = "p0_d1" *) 
  (* \MEM.PORTB.DATA_BIT_LAYOUT  = "p0_d1" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-6 {cell *THIS*}} {SYNTH-7 {cell *THIS*}}" *) 
  (* RTL_RAM_BITS = "1048576" *) 
  (* RTL_RAM_NAME = "U0/comblock_i/dram_g.dram_i/ram_reg_1_14" *) 
  (* RTL_RAM_TYPE = "RAM_TDP" *) 
  (* ram_addr_begin = "32768" *) 
  (* ram_addr_end = "65535" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "14" *) 
  (* ram_slice_end = "14" *) 
  RAMB36E1 #(
    .DOA_REG(0),
    .DOB_REG(0),
    .EN_ECC_READ("FALSE"),
    .EN_ECC_WRITE("FALSE"),
    .INITP_00(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_01(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_02(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_03(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_04(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_05(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_06(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_07(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_08(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_09(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_00(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_01(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_02(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_03(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_04(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_05(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_06(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_07(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_08(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_09(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_10(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_11(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_12(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_13(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_14(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_15(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_16(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_17(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_18(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_19(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_20(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_21(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_22(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_23(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_24(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_25(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_26(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_27(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_28(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_29(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_30(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_31(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_32(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_33(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_34(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_35(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_36(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_37(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_38(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_39(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_40(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_41(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_42(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_43(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_44(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_45(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_46(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_47(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_48(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_49(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_50(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_51(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_52(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_53(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_54(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_55(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_56(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_57(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_58(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_59(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_60(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_61(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_62(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_63(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_64(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_65(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_66(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_67(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_68(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_69(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_70(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_71(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_72(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_73(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_74(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_75(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_76(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_77(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_78(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_79(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_A(36'h000000000),
    .INIT_B(36'h000000000),
    .RAM_EXTENSION_A("UPPER"),
    .RAM_EXTENSION_B("UPPER"),
    .RAM_MODE("TDP"),
    .RDADDR_COLLISION_HWCONFIG("DELAYED_WRITE"),
    .READ_WIDTH_A(1),
    .READ_WIDTH_B(1),
    .RSTREG_PRIORITY_A("RSTREG"),
    .RSTREG_PRIORITY_B("RSTREG"),
    .SIM_COLLISION_CHECK("ALL"),
    .SIM_DEVICE("7SERIES"),
    .SRVAL_A(36'h000000000),
    .SRVAL_B(36'h000000000),
    .WRITE_MODE_A("WRITE_FIRST"),
    .WRITE_MODE_B("WRITE_FIRST"),
    .WRITE_WIDTH_A(1),
    .WRITE_WIDTH_B(1)) 
    ram_reg_1_14
       (.ADDRARDADDR(addr2_i),
        .ADDRBWRADDR(ram_addr_i),
        .CASCADEINA(ram_reg_0_14_n_0),
        .CASCADEINB(ram_reg_0_14_n_1),
        .CASCADEOUTA(NLW_ram_reg_1_14_CASCADEOUTA_UNCONNECTED),
        .CASCADEOUTB(NLW_ram_reg_1_14_CASCADEOUTB_UNCONNECTED),
        .CLKARDCLK(axif_aclk),
        .CLKBWRCLK(ram_clk_i),
        .DBITERR(NLW_ram_reg_1_14_DBITERR_UNCONNECTED),
        .DIADI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,axif_wdata[14]}),
        .DIBDI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,ram_data_i[14]}),
        .DIPADIP({1'b0,1'b0,1'b0,NLW_ram_reg_1_14_DIPADIP_UNCONNECTED[0]}),
        .DIPBDIP({1'b0,1'b0,1'b0,NLW_ram_reg_1_14_DIPBDIP_UNCONNECTED[0]}),
        .DOADO({NLW_ram_reg_1_14_DOADO_UNCONNECTED[31:1],ram_reg_1_15_0[14]}),
        .DOBDO({NLW_ram_reg_1_14_DOBDO_UNCONNECTED[31:1],ram_data_o[14]}),
        .DOPADOP(NLW_ram_reg_1_14_DOPADOP_UNCONNECTED[3:0]),
        .DOPBDOP(NLW_ram_reg_1_14_DOPBDOP_UNCONNECTED[3:0]),
        .ECCPARITY(NLW_ram_reg_1_14_ECCPARITY_UNCONNECTED[7:0]),
        .ENARDEN(1'b1),
        .ENBWREN(1'b1),
        .INJECTDBITERR(NLW_ram_reg_1_14_INJECTDBITERR_UNCONNECTED),
        .INJECTSBITERR(NLW_ram_reg_1_14_INJECTSBITERR_UNCONNECTED),
        .RDADDRECC(NLW_ram_reg_1_14_RDADDRECC_UNCONNECTED[8:0]),
        .REGCEAREGCE(1'b0),
        .REGCEB(1'b0),
        .RSTRAMARSTRAM(1'b0),
        .RSTRAMB(1'b0),
        .RSTREGARSTREG(1'b0),
        .RSTREGB(1'b0),
        .SBITERR(NLW_ram_reg_1_14_SBITERR_UNCONNECTED),
        .WEA({ram_reg_1_14_0,ram_reg_1_14_0,ram_reg_1_14_0,ram_reg_1_14_0}),
        .WEBWE({1'b0,1'b0,1'b0,1'b0,ram_we_i,ram_we_i,ram_we_i,ram_we_i}));
  (* \MEM.PORTA.DATA_BIT_LAYOUT  = "p0_d1" *) 
  (* \MEM.PORTB.DATA_BIT_LAYOUT  = "p0_d1" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-6 {cell *THIS*}} {SYNTH-7 {cell *THIS*}}" *) 
  (* RTL_RAM_BITS = "1048576" *) 
  (* RTL_RAM_NAME = "U0/comblock_i/dram_g.dram_i/ram_reg_1_15" *) 
  (* RTL_RAM_TYPE = "RAM_TDP" *) 
  (* ram_addr_begin = "32768" *) 
  (* ram_addr_end = "65535" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "15" *) 
  (* ram_slice_end = "15" *) 
  RAMB36E1 #(
    .DOA_REG(0),
    .DOB_REG(0),
    .EN_ECC_READ("FALSE"),
    .EN_ECC_WRITE("FALSE"),
    .INITP_00(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_01(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_02(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_03(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_04(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_05(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_06(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_07(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_08(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_09(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_00(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_01(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_02(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_03(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_04(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_05(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_06(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_07(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_08(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_09(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_10(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_11(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_12(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_13(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_14(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_15(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_16(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_17(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_18(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_19(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_20(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_21(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_22(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_23(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_24(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_25(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_26(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_27(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_28(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_29(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_30(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_31(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_32(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_33(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_34(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_35(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_36(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_37(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_38(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_39(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_40(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_41(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_42(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_43(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_44(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_45(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_46(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_47(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_48(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_49(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_50(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_51(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_52(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_53(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_54(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_55(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_56(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_57(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_58(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_59(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_60(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_61(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_62(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_63(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_64(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_65(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_66(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_67(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_68(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_69(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_70(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_71(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_72(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_73(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_74(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_75(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_76(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_77(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_78(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_79(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_A(36'h000000000),
    .INIT_B(36'h000000000),
    .RAM_EXTENSION_A("UPPER"),
    .RAM_EXTENSION_B("UPPER"),
    .RAM_MODE("TDP"),
    .RDADDR_COLLISION_HWCONFIG("DELAYED_WRITE"),
    .READ_WIDTH_A(1),
    .READ_WIDTH_B(1),
    .RSTREG_PRIORITY_A("RSTREG"),
    .RSTREG_PRIORITY_B("RSTREG"),
    .SIM_COLLISION_CHECK("ALL"),
    .SIM_DEVICE("7SERIES"),
    .SRVAL_A(36'h000000000),
    .SRVAL_B(36'h000000000),
    .WRITE_MODE_A("WRITE_FIRST"),
    .WRITE_MODE_B("WRITE_FIRST"),
    .WRITE_WIDTH_A(1),
    .WRITE_WIDTH_B(1)) 
    ram_reg_1_15
       (.ADDRARDADDR(addr2_i),
        .ADDRBWRADDR(ram_addr_i),
        .CASCADEINA(ram_reg_0_15_n_0),
        .CASCADEINB(ram_reg_0_15_n_1),
        .CASCADEOUTA(NLW_ram_reg_1_15_CASCADEOUTA_UNCONNECTED),
        .CASCADEOUTB(NLW_ram_reg_1_15_CASCADEOUTB_UNCONNECTED),
        .CLKARDCLK(axif_aclk),
        .CLKBWRCLK(ram_clk_i),
        .DBITERR(NLW_ram_reg_1_15_DBITERR_UNCONNECTED),
        .DIADI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,axif_wdata[15]}),
        .DIBDI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,ram_data_i[15]}),
        .DIPADIP({1'b0,1'b0,1'b0,NLW_ram_reg_1_15_DIPADIP_UNCONNECTED[0]}),
        .DIPBDIP({1'b0,1'b0,1'b0,NLW_ram_reg_1_15_DIPBDIP_UNCONNECTED[0]}),
        .DOADO({NLW_ram_reg_1_15_DOADO_UNCONNECTED[31:1],ram_reg_1_15_0[15]}),
        .DOBDO({NLW_ram_reg_1_15_DOBDO_UNCONNECTED[31:1],ram_data_o[15]}),
        .DOPADOP(NLW_ram_reg_1_15_DOPADOP_UNCONNECTED[3:0]),
        .DOPBDOP(NLW_ram_reg_1_15_DOPBDOP_UNCONNECTED[3:0]),
        .ECCPARITY(NLW_ram_reg_1_15_ECCPARITY_UNCONNECTED[7:0]),
        .ENARDEN(1'b1),
        .ENBWREN(1'b1),
        .INJECTDBITERR(NLW_ram_reg_1_15_INJECTDBITERR_UNCONNECTED),
        .INJECTSBITERR(NLW_ram_reg_1_15_INJECTSBITERR_UNCONNECTED),
        .RDADDRECC(NLW_ram_reg_1_15_RDADDRECC_UNCONNECTED[8:0]),
        .REGCEAREGCE(1'b0),
        .REGCEB(1'b0),
        .RSTRAMARSTRAM(1'b0),
        .RSTRAMB(1'b0),
        .RSTREGARSTREG(1'b0),
        .RSTREGB(1'b0),
        .SBITERR(NLW_ram_reg_1_15_SBITERR_UNCONNECTED),
        .WEA({WEA,WEA,WEA,WEA}),
        .WEBWE({1'b0,1'b0,1'b0,1'b0,ram_we_i,ram_we_i,ram_we_i,ram_we_i}));
  (* \MEM.PORTA.DATA_BIT_LAYOUT  = "p0_d1" *) 
  (* \MEM.PORTB.DATA_BIT_LAYOUT  = "p0_d1" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-6 {cell *THIS*}} {SYNTH-7 {cell *THIS*}}" *) 
  (* RTL_RAM_BITS = "1048576" *) 
  (* RTL_RAM_NAME = "U0/comblock_i/dram_g.dram_i/ram_reg_1_2" *) 
  (* RTL_RAM_TYPE = "RAM_TDP" *) 
  (* ram_addr_begin = "32768" *) 
  (* ram_addr_end = "65535" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "2" *) 
  (* ram_slice_end = "2" *) 
  RAMB36E1 #(
    .DOA_REG(0),
    .DOB_REG(0),
    .EN_ECC_READ("FALSE"),
    .EN_ECC_WRITE("FALSE"),
    .INITP_00(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_01(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_02(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_03(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_04(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_05(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_06(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_07(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_08(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_09(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_00(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_01(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_02(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_03(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_04(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_05(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_06(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_07(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_08(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_09(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_10(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_11(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_12(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_13(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_14(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_15(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_16(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_17(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_18(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_19(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_20(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_21(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_22(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_23(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_24(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_25(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_26(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_27(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_28(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_29(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_30(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_31(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_32(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_33(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_34(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_35(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_36(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_37(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_38(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_39(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_40(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_41(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_42(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_43(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_44(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_45(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_46(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_47(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_48(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_49(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_50(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_51(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_52(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_53(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_54(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_55(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_56(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_57(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_58(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_59(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_60(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_61(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_62(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_63(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_64(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_65(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_66(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_67(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_68(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_69(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_70(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_71(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_72(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_73(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_74(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_75(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_76(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_77(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_78(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_79(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_A(36'h000000000),
    .INIT_B(36'h000000000),
    .RAM_EXTENSION_A("UPPER"),
    .RAM_EXTENSION_B("UPPER"),
    .RAM_MODE("TDP"),
    .RDADDR_COLLISION_HWCONFIG("DELAYED_WRITE"),
    .READ_WIDTH_A(1),
    .READ_WIDTH_B(1),
    .RSTREG_PRIORITY_A("RSTREG"),
    .RSTREG_PRIORITY_B("RSTREG"),
    .SIM_COLLISION_CHECK("ALL"),
    .SIM_DEVICE("7SERIES"),
    .SRVAL_A(36'h000000000),
    .SRVAL_B(36'h000000000),
    .WRITE_MODE_A("WRITE_FIRST"),
    .WRITE_MODE_B("WRITE_FIRST"),
    .WRITE_WIDTH_A(1),
    .WRITE_WIDTH_B(1)) 
    ram_reg_1_2
       (.ADDRARDADDR(ADDRARDADDR),
        .ADDRBWRADDR(ram_addr_i),
        .CASCADEINA(ram_reg_0_2_n_0),
        .CASCADEINB(ram_reg_0_2_n_1),
        .CASCADEOUTA(NLW_ram_reg_1_2_CASCADEOUTA_UNCONNECTED),
        .CASCADEOUTB(NLW_ram_reg_1_2_CASCADEOUTB_UNCONNECTED),
        .CLKARDCLK(axif_aclk),
        .CLKBWRCLK(ram_clk_i),
        .DBITERR(NLW_ram_reg_1_2_DBITERR_UNCONNECTED),
        .DIADI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,axif_wdata[2]}),
        .DIBDI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,ram_data_i[2]}),
        .DIPADIP({1'b0,1'b0,1'b0,NLW_ram_reg_1_2_DIPADIP_UNCONNECTED[0]}),
        .DIPBDIP({1'b0,1'b0,1'b0,NLW_ram_reg_1_2_DIPBDIP_UNCONNECTED[0]}),
        .DOADO({NLW_ram_reg_1_2_DOADO_UNCONNECTED[31:1],ram_reg_1_15_0[2]}),
        .DOBDO({NLW_ram_reg_1_2_DOBDO_UNCONNECTED[31:1],ram_data_o[2]}),
        .DOPADOP(NLW_ram_reg_1_2_DOPADOP_UNCONNECTED[3:0]),
        .DOPBDOP(NLW_ram_reg_1_2_DOPBDOP_UNCONNECTED[3:0]),
        .ECCPARITY(NLW_ram_reg_1_2_ECCPARITY_UNCONNECTED[7:0]),
        .ENARDEN(1'b1),
        .ENBWREN(1'b1),
        .INJECTDBITERR(NLW_ram_reg_1_2_INJECTDBITERR_UNCONNECTED),
        .INJECTSBITERR(NLW_ram_reg_1_2_INJECTSBITERR_UNCONNECTED),
        .RDADDRECC(NLW_ram_reg_1_2_RDADDRECC_UNCONNECTED[8:0]),
        .REGCEAREGCE(1'b0),
        .REGCEB(1'b0),
        .RSTRAMARSTRAM(1'b0),
        .RSTRAMB(1'b0),
        .RSTREGARSTREG(1'b0),
        .RSTREGB(1'b0),
        .SBITERR(NLW_ram_reg_1_2_SBITERR_UNCONNECTED),
        .WEA({ram_reg_1_2_0,ram_reg_1_2_0,ram_reg_1_2_0,ram_reg_1_2_0}),
        .WEBWE({1'b0,1'b0,1'b0,1'b0,ram_we_i,ram_we_i,ram_we_i,ram_we_i}));
  (* \MEM.PORTA.DATA_BIT_LAYOUT  = "p0_d1" *) 
  (* \MEM.PORTB.DATA_BIT_LAYOUT  = "p0_d1" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-6 {cell *THIS*}} {SYNTH-7 {cell *THIS*}}" *) 
  (* RTL_RAM_BITS = "1048576" *) 
  (* RTL_RAM_NAME = "U0/comblock_i/dram_g.dram_i/ram_reg_1_3" *) 
  (* RTL_RAM_TYPE = "RAM_TDP" *) 
  (* ram_addr_begin = "32768" *) 
  (* ram_addr_end = "65535" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "3" *) 
  (* ram_slice_end = "3" *) 
  RAMB36E1 #(
    .DOA_REG(0),
    .DOB_REG(0),
    .EN_ECC_READ("FALSE"),
    .EN_ECC_WRITE("FALSE"),
    .INITP_00(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_01(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_02(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_03(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_04(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_05(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_06(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_07(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_08(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_09(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_00(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_01(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_02(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_03(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_04(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_05(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_06(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_07(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_08(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_09(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_10(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_11(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_12(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_13(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_14(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_15(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_16(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_17(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_18(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_19(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_20(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_21(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_22(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_23(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_24(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_25(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_26(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_27(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_28(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_29(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_30(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_31(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_32(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_33(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_34(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_35(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_36(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_37(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_38(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_39(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_40(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_41(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_42(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_43(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_44(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_45(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_46(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_47(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_48(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_49(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_50(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_51(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_52(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_53(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_54(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_55(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_56(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_57(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_58(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_59(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_60(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_61(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_62(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_63(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_64(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_65(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_66(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_67(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_68(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_69(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_70(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_71(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_72(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_73(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_74(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_75(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_76(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_77(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_78(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_79(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_A(36'h000000000),
    .INIT_B(36'h000000000),
    .RAM_EXTENSION_A("UPPER"),
    .RAM_EXTENSION_B("UPPER"),
    .RAM_MODE("TDP"),
    .RDADDR_COLLISION_HWCONFIG("DELAYED_WRITE"),
    .READ_WIDTH_A(1),
    .READ_WIDTH_B(1),
    .RSTREG_PRIORITY_A("RSTREG"),
    .RSTREG_PRIORITY_B("RSTREG"),
    .SIM_COLLISION_CHECK("ALL"),
    .SIM_DEVICE("7SERIES"),
    .SRVAL_A(36'h000000000),
    .SRVAL_B(36'h000000000),
    .WRITE_MODE_A("WRITE_FIRST"),
    .WRITE_MODE_B("WRITE_FIRST"),
    .WRITE_WIDTH_A(1),
    .WRITE_WIDTH_B(1)) 
    ram_reg_1_3
       (.ADDRARDADDR(ADDRARDADDR),
        .ADDRBWRADDR(ram_addr_i),
        .CASCADEINA(ram_reg_0_3_n_0),
        .CASCADEINB(ram_reg_0_3_n_1),
        .CASCADEOUTA(NLW_ram_reg_1_3_CASCADEOUTA_UNCONNECTED),
        .CASCADEOUTB(NLW_ram_reg_1_3_CASCADEOUTB_UNCONNECTED),
        .CLKARDCLK(axif_aclk),
        .CLKBWRCLK(ram_clk_i),
        .DBITERR(NLW_ram_reg_1_3_DBITERR_UNCONNECTED),
        .DIADI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,axif_wdata[3]}),
        .DIBDI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,ram_data_i[3]}),
        .DIPADIP({1'b0,1'b0,1'b0,NLW_ram_reg_1_3_DIPADIP_UNCONNECTED[0]}),
        .DIPBDIP({1'b0,1'b0,1'b0,NLW_ram_reg_1_3_DIPBDIP_UNCONNECTED[0]}),
        .DOADO({NLW_ram_reg_1_3_DOADO_UNCONNECTED[31:1],ram_reg_1_15_0[3]}),
        .DOBDO({NLW_ram_reg_1_3_DOBDO_UNCONNECTED[31:1],ram_data_o[3]}),
        .DOPADOP(NLW_ram_reg_1_3_DOPADOP_UNCONNECTED[3:0]),
        .DOPBDOP(NLW_ram_reg_1_3_DOPBDOP_UNCONNECTED[3:0]),
        .ECCPARITY(NLW_ram_reg_1_3_ECCPARITY_UNCONNECTED[7:0]),
        .ENARDEN(1'b1),
        .ENBWREN(1'b1),
        .INJECTDBITERR(NLW_ram_reg_1_3_INJECTDBITERR_UNCONNECTED),
        .INJECTSBITERR(NLW_ram_reg_1_3_INJECTSBITERR_UNCONNECTED),
        .RDADDRECC(NLW_ram_reg_1_3_RDADDRECC_UNCONNECTED[8:0]),
        .REGCEAREGCE(1'b0),
        .REGCEB(1'b0),
        .RSTRAMARSTRAM(1'b0),
        .RSTRAMB(1'b0),
        .RSTREGARSTREG(1'b0),
        .RSTREGB(1'b0),
        .SBITERR(NLW_ram_reg_1_3_SBITERR_UNCONNECTED),
        .WEA({ram_reg_1_3_0,ram_reg_1_3_0,ram_reg_1_3_0,ram_reg_1_3_0}),
        .WEBWE({1'b0,1'b0,1'b0,1'b0,ram_we_i,ram_we_i,ram_we_i,ram_we_i}));
  (* \MEM.PORTA.DATA_BIT_LAYOUT  = "p0_d1" *) 
  (* \MEM.PORTB.DATA_BIT_LAYOUT  = "p0_d1" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-6 {cell *THIS*}} {SYNTH-7 {cell *THIS*}}" *) 
  (* RTL_RAM_BITS = "1048576" *) 
  (* RTL_RAM_NAME = "U0/comblock_i/dram_g.dram_i/ram_reg_1_4" *) 
  (* RTL_RAM_TYPE = "RAM_TDP" *) 
  (* ram_addr_begin = "32768" *) 
  (* ram_addr_end = "65535" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "4" *) 
  (* ram_slice_end = "4" *) 
  RAMB36E1 #(
    .DOA_REG(0),
    .DOB_REG(0),
    .EN_ECC_READ("FALSE"),
    .EN_ECC_WRITE("FALSE"),
    .INITP_00(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_01(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_02(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_03(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_04(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_05(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_06(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_07(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_08(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_09(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_00(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_01(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_02(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_03(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_04(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_05(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_06(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_07(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_08(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_09(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_10(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_11(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_12(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_13(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_14(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_15(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_16(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_17(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_18(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_19(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_20(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_21(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_22(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_23(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_24(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_25(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_26(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_27(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_28(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_29(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_30(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_31(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_32(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_33(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_34(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_35(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_36(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_37(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_38(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_39(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_40(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_41(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_42(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_43(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_44(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_45(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_46(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_47(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_48(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_49(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_50(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_51(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_52(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_53(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_54(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_55(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_56(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_57(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_58(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_59(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_60(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_61(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_62(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_63(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_64(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_65(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_66(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_67(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_68(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_69(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_70(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_71(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_72(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_73(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_74(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_75(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_76(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_77(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_78(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_79(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_A(36'h000000000),
    .INIT_B(36'h000000000),
    .RAM_EXTENSION_A("UPPER"),
    .RAM_EXTENSION_B("UPPER"),
    .RAM_MODE("TDP"),
    .RDADDR_COLLISION_HWCONFIG("DELAYED_WRITE"),
    .READ_WIDTH_A(1),
    .READ_WIDTH_B(1),
    .RSTREG_PRIORITY_A("RSTREG"),
    .RSTREG_PRIORITY_B("RSTREG"),
    .SIM_COLLISION_CHECK("ALL"),
    .SIM_DEVICE("7SERIES"),
    .SRVAL_A(36'h000000000),
    .SRVAL_B(36'h000000000),
    .WRITE_MODE_A("WRITE_FIRST"),
    .WRITE_MODE_B("WRITE_FIRST"),
    .WRITE_WIDTH_A(1),
    .WRITE_WIDTH_B(1)) 
    ram_reg_1_4
       (.ADDRARDADDR(ADDRARDADDR),
        .ADDRBWRADDR(ram_addr_i),
        .CASCADEINA(ram_reg_0_4_n_0),
        .CASCADEINB(ram_reg_0_4_n_1),
        .CASCADEOUTA(NLW_ram_reg_1_4_CASCADEOUTA_UNCONNECTED),
        .CASCADEOUTB(NLW_ram_reg_1_4_CASCADEOUTB_UNCONNECTED),
        .CLKARDCLK(axif_aclk),
        .CLKBWRCLK(ram_clk_i),
        .DBITERR(NLW_ram_reg_1_4_DBITERR_UNCONNECTED),
        .DIADI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,axif_wdata[4]}),
        .DIBDI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,ram_data_i[4]}),
        .DIPADIP({1'b0,1'b0,1'b0,NLW_ram_reg_1_4_DIPADIP_UNCONNECTED[0]}),
        .DIPBDIP({1'b0,1'b0,1'b0,NLW_ram_reg_1_4_DIPBDIP_UNCONNECTED[0]}),
        .DOADO({NLW_ram_reg_1_4_DOADO_UNCONNECTED[31:1],ram_reg_1_15_0[4]}),
        .DOBDO({NLW_ram_reg_1_4_DOBDO_UNCONNECTED[31:1],ram_data_o[4]}),
        .DOPADOP(NLW_ram_reg_1_4_DOPADOP_UNCONNECTED[3:0]),
        .DOPBDOP(NLW_ram_reg_1_4_DOPBDOP_UNCONNECTED[3:0]),
        .ECCPARITY(NLW_ram_reg_1_4_ECCPARITY_UNCONNECTED[7:0]),
        .ENARDEN(1'b1),
        .ENBWREN(1'b1),
        .INJECTDBITERR(NLW_ram_reg_1_4_INJECTDBITERR_UNCONNECTED),
        .INJECTSBITERR(NLW_ram_reg_1_4_INJECTSBITERR_UNCONNECTED),
        .RDADDRECC(NLW_ram_reg_1_4_RDADDRECC_UNCONNECTED[8:0]),
        .REGCEAREGCE(1'b0),
        .REGCEB(1'b0),
        .RSTRAMARSTRAM(1'b0),
        .RSTRAMB(1'b0),
        .RSTREGARSTREG(1'b0),
        .RSTREGB(1'b0),
        .SBITERR(NLW_ram_reg_1_4_SBITERR_UNCONNECTED),
        .WEA({ram_reg_1_4_0,ram_reg_1_4_0,ram_reg_1_4_0,ram_reg_1_4_0}),
        .WEBWE({1'b0,1'b0,1'b0,1'b0,ram_we_i,ram_we_i,ram_we_i,ram_we_i}));
  (* \MEM.PORTA.DATA_BIT_LAYOUT  = "p0_d1" *) 
  (* \MEM.PORTB.DATA_BIT_LAYOUT  = "p0_d1" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-6 {cell *THIS*}} {SYNTH-7 {cell *THIS*}}" *) 
  (* RTL_RAM_BITS = "1048576" *) 
  (* RTL_RAM_NAME = "U0/comblock_i/dram_g.dram_i/ram_reg_1_5" *) 
  (* RTL_RAM_TYPE = "RAM_TDP" *) 
  (* ram_addr_begin = "32768" *) 
  (* ram_addr_end = "65535" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "5" *) 
  (* ram_slice_end = "5" *) 
  RAMB36E1 #(
    .DOA_REG(0),
    .DOB_REG(0),
    .EN_ECC_READ("FALSE"),
    .EN_ECC_WRITE("FALSE"),
    .INITP_00(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_01(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_02(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_03(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_04(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_05(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_06(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_07(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_08(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_09(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_00(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_01(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_02(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_03(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_04(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_05(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_06(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_07(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_08(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_09(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_10(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_11(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_12(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_13(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_14(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_15(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_16(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_17(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_18(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_19(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_20(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_21(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_22(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_23(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_24(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_25(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_26(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_27(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_28(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_29(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_30(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_31(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_32(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_33(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_34(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_35(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_36(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_37(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_38(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_39(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_40(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_41(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_42(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_43(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_44(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_45(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_46(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_47(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_48(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_49(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_50(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_51(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_52(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_53(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_54(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_55(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_56(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_57(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_58(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_59(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_60(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_61(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_62(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_63(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_64(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_65(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_66(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_67(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_68(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_69(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_70(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_71(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_72(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_73(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_74(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_75(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_76(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_77(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_78(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_79(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_A(36'h000000000),
    .INIT_B(36'h000000000),
    .RAM_EXTENSION_A("UPPER"),
    .RAM_EXTENSION_B("UPPER"),
    .RAM_MODE("TDP"),
    .RDADDR_COLLISION_HWCONFIG("DELAYED_WRITE"),
    .READ_WIDTH_A(1),
    .READ_WIDTH_B(1),
    .RSTREG_PRIORITY_A("RSTREG"),
    .RSTREG_PRIORITY_B("RSTREG"),
    .SIM_COLLISION_CHECK("ALL"),
    .SIM_DEVICE("7SERIES"),
    .SRVAL_A(36'h000000000),
    .SRVAL_B(36'h000000000),
    .WRITE_MODE_A("WRITE_FIRST"),
    .WRITE_MODE_B("WRITE_FIRST"),
    .WRITE_WIDTH_A(1),
    .WRITE_WIDTH_B(1)) 
    ram_reg_1_5
       (.ADDRARDADDR(ADDRARDADDR),
        .ADDRBWRADDR(ram_addr_i),
        .CASCADEINA(ram_reg_0_5_n_0),
        .CASCADEINB(ram_reg_0_5_n_1),
        .CASCADEOUTA(NLW_ram_reg_1_5_CASCADEOUTA_UNCONNECTED),
        .CASCADEOUTB(NLW_ram_reg_1_5_CASCADEOUTB_UNCONNECTED),
        .CLKARDCLK(axif_aclk),
        .CLKBWRCLK(ram_clk_i),
        .DBITERR(NLW_ram_reg_1_5_DBITERR_UNCONNECTED),
        .DIADI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,axif_wdata[5]}),
        .DIBDI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,ram_data_i[5]}),
        .DIPADIP({1'b0,1'b0,1'b0,NLW_ram_reg_1_5_DIPADIP_UNCONNECTED[0]}),
        .DIPBDIP({1'b0,1'b0,1'b0,NLW_ram_reg_1_5_DIPBDIP_UNCONNECTED[0]}),
        .DOADO({NLW_ram_reg_1_5_DOADO_UNCONNECTED[31:1],ram_reg_1_15_0[5]}),
        .DOBDO({NLW_ram_reg_1_5_DOBDO_UNCONNECTED[31:1],ram_data_o[5]}),
        .DOPADOP(NLW_ram_reg_1_5_DOPADOP_UNCONNECTED[3:0]),
        .DOPBDOP(NLW_ram_reg_1_5_DOPBDOP_UNCONNECTED[3:0]),
        .ECCPARITY(NLW_ram_reg_1_5_ECCPARITY_UNCONNECTED[7:0]),
        .ENARDEN(1'b1),
        .ENBWREN(1'b1),
        .INJECTDBITERR(NLW_ram_reg_1_5_INJECTDBITERR_UNCONNECTED),
        .INJECTSBITERR(NLW_ram_reg_1_5_INJECTSBITERR_UNCONNECTED),
        .RDADDRECC(NLW_ram_reg_1_5_RDADDRECC_UNCONNECTED[8:0]),
        .REGCEAREGCE(1'b0),
        .REGCEB(1'b0),
        .RSTRAMARSTRAM(1'b0),
        .RSTRAMB(1'b0),
        .RSTREGARSTREG(1'b0),
        .RSTREGB(1'b0),
        .SBITERR(NLW_ram_reg_1_5_SBITERR_UNCONNECTED),
        .WEA({ram_reg_1_5_0,ram_reg_1_5_0,ram_reg_1_5_0,ram_reg_1_5_0}),
        .WEBWE({1'b0,1'b0,1'b0,1'b0,ram_we_i,ram_we_i,ram_we_i,ram_we_i}));
  (* \MEM.PORTA.DATA_BIT_LAYOUT  = "p0_d1" *) 
  (* \MEM.PORTB.DATA_BIT_LAYOUT  = "p0_d1" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-6 {cell *THIS*}} {SYNTH-7 {cell *THIS*}}" *) 
  (* RTL_RAM_BITS = "1048576" *) 
  (* RTL_RAM_NAME = "U0/comblock_i/dram_g.dram_i/ram_reg_1_6" *) 
  (* RTL_RAM_TYPE = "RAM_TDP" *) 
  (* ram_addr_begin = "32768" *) 
  (* ram_addr_end = "65535" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "6" *) 
  (* ram_slice_end = "6" *) 
  RAMB36E1 #(
    .DOA_REG(0),
    .DOB_REG(0),
    .EN_ECC_READ("FALSE"),
    .EN_ECC_WRITE("FALSE"),
    .INITP_00(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_01(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_02(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_03(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_04(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_05(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_06(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_07(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_08(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_09(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_00(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_01(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_02(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_03(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_04(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_05(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_06(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_07(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_08(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_09(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_10(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_11(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_12(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_13(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_14(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_15(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_16(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_17(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_18(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_19(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_20(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_21(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_22(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_23(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_24(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_25(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_26(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_27(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_28(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_29(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_30(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_31(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_32(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_33(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_34(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_35(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_36(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_37(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_38(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_39(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_40(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_41(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_42(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_43(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_44(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_45(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_46(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_47(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_48(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_49(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_50(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_51(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_52(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_53(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_54(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_55(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_56(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_57(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_58(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_59(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_60(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_61(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_62(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_63(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_64(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_65(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_66(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_67(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_68(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_69(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_70(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_71(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_72(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_73(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_74(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_75(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_76(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_77(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_78(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_79(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_A(36'h000000000),
    .INIT_B(36'h000000000),
    .RAM_EXTENSION_A("UPPER"),
    .RAM_EXTENSION_B("UPPER"),
    .RAM_MODE("TDP"),
    .RDADDR_COLLISION_HWCONFIG("DELAYED_WRITE"),
    .READ_WIDTH_A(1),
    .READ_WIDTH_B(1),
    .RSTREG_PRIORITY_A("RSTREG"),
    .RSTREG_PRIORITY_B("RSTREG"),
    .SIM_COLLISION_CHECK("ALL"),
    .SIM_DEVICE("7SERIES"),
    .SRVAL_A(36'h000000000),
    .SRVAL_B(36'h000000000),
    .WRITE_MODE_A("WRITE_FIRST"),
    .WRITE_MODE_B("WRITE_FIRST"),
    .WRITE_WIDTH_A(1),
    .WRITE_WIDTH_B(1)) 
    ram_reg_1_6
       (.ADDRARDADDR(ADDRARDADDR),
        .ADDRBWRADDR(ram_addr_i),
        .CASCADEINA(ram_reg_0_6_n_0),
        .CASCADEINB(ram_reg_0_6_n_1),
        .CASCADEOUTA(NLW_ram_reg_1_6_CASCADEOUTA_UNCONNECTED),
        .CASCADEOUTB(NLW_ram_reg_1_6_CASCADEOUTB_UNCONNECTED),
        .CLKARDCLK(axif_aclk),
        .CLKBWRCLK(ram_clk_i),
        .DBITERR(NLW_ram_reg_1_6_DBITERR_UNCONNECTED),
        .DIADI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,axif_wdata[6]}),
        .DIBDI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,ram_data_i[6]}),
        .DIPADIP({1'b0,1'b0,1'b0,NLW_ram_reg_1_6_DIPADIP_UNCONNECTED[0]}),
        .DIPBDIP({1'b0,1'b0,1'b0,NLW_ram_reg_1_6_DIPBDIP_UNCONNECTED[0]}),
        .DOADO({NLW_ram_reg_1_6_DOADO_UNCONNECTED[31:1],ram_reg_1_15_0[6]}),
        .DOBDO({NLW_ram_reg_1_6_DOBDO_UNCONNECTED[31:1],ram_data_o[6]}),
        .DOPADOP(NLW_ram_reg_1_6_DOPADOP_UNCONNECTED[3:0]),
        .DOPBDOP(NLW_ram_reg_1_6_DOPBDOP_UNCONNECTED[3:0]),
        .ECCPARITY(NLW_ram_reg_1_6_ECCPARITY_UNCONNECTED[7:0]),
        .ENARDEN(1'b1),
        .ENBWREN(1'b1),
        .INJECTDBITERR(NLW_ram_reg_1_6_INJECTDBITERR_UNCONNECTED),
        .INJECTSBITERR(NLW_ram_reg_1_6_INJECTSBITERR_UNCONNECTED),
        .RDADDRECC(NLW_ram_reg_1_6_RDADDRECC_UNCONNECTED[8:0]),
        .REGCEAREGCE(1'b0),
        .REGCEB(1'b0),
        .RSTRAMARSTRAM(1'b0),
        .RSTRAMB(1'b0),
        .RSTREGARSTREG(1'b0),
        .RSTREGB(1'b0),
        .SBITERR(NLW_ram_reg_1_6_SBITERR_UNCONNECTED),
        .WEA({ram_reg_1_6_0,ram_reg_1_6_0,ram_reg_1_6_0,ram_reg_1_6_0}),
        .WEBWE({1'b0,1'b0,1'b0,1'b0,ram_we_i,ram_we_i,ram_we_i,ram_we_i}));
  (* \MEM.PORTA.DATA_BIT_LAYOUT  = "p0_d1" *) 
  (* \MEM.PORTB.DATA_BIT_LAYOUT  = "p0_d1" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-6 {cell *THIS*}} {SYNTH-7 {cell *THIS*}}" *) 
  (* RTL_RAM_BITS = "1048576" *) 
  (* RTL_RAM_NAME = "U0/comblock_i/dram_g.dram_i/ram_reg_1_7" *) 
  (* RTL_RAM_TYPE = "RAM_TDP" *) 
  (* ram_addr_begin = "32768" *) 
  (* ram_addr_end = "65535" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "7" *) 
  (* ram_slice_end = "7" *) 
  RAMB36E1 #(
    .DOA_REG(0),
    .DOB_REG(0),
    .EN_ECC_READ("FALSE"),
    .EN_ECC_WRITE("FALSE"),
    .INITP_00(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_01(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_02(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_03(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_04(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_05(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_06(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_07(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_08(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_09(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_00(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_01(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_02(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_03(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_04(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_05(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_06(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_07(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_08(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_09(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_10(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_11(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_12(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_13(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_14(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_15(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_16(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_17(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_18(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_19(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_20(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_21(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_22(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_23(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_24(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_25(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_26(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_27(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_28(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_29(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_30(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_31(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_32(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_33(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_34(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_35(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_36(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_37(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_38(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_39(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_40(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_41(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_42(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_43(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_44(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_45(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_46(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_47(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_48(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_49(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_50(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_51(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_52(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_53(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_54(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_55(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_56(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_57(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_58(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_59(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_60(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_61(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_62(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_63(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_64(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_65(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_66(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_67(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_68(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_69(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_70(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_71(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_72(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_73(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_74(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_75(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_76(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_77(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_78(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_79(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_A(36'h000000000),
    .INIT_B(36'h000000000),
    .RAM_EXTENSION_A("UPPER"),
    .RAM_EXTENSION_B("UPPER"),
    .RAM_MODE("TDP"),
    .RDADDR_COLLISION_HWCONFIG("DELAYED_WRITE"),
    .READ_WIDTH_A(1),
    .READ_WIDTH_B(1),
    .RSTREG_PRIORITY_A("RSTREG"),
    .RSTREG_PRIORITY_B("RSTREG"),
    .SIM_COLLISION_CHECK("ALL"),
    .SIM_DEVICE("7SERIES"),
    .SRVAL_A(36'h000000000),
    .SRVAL_B(36'h000000000),
    .WRITE_MODE_A("WRITE_FIRST"),
    .WRITE_MODE_B("WRITE_FIRST"),
    .WRITE_WIDTH_A(1),
    .WRITE_WIDTH_B(1)) 
    ram_reg_1_7
       (.ADDRARDADDR(ADDRARDADDR),
        .ADDRBWRADDR(ram_addr_i),
        .CASCADEINA(ram_reg_0_7_n_0),
        .CASCADEINB(ram_reg_0_7_n_1),
        .CASCADEOUTA(NLW_ram_reg_1_7_CASCADEOUTA_UNCONNECTED),
        .CASCADEOUTB(NLW_ram_reg_1_7_CASCADEOUTB_UNCONNECTED),
        .CLKARDCLK(axif_aclk),
        .CLKBWRCLK(ram_clk_i),
        .DBITERR(NLW_ram_reg_1_7_DBITERR_UNCONNECTED),
        .DIADI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,axif_wdata[7]}),
        .DIBDI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,ram_data_i[7]}),
        .DIPADIP({1'b0,1'b0,1'b0,NLW_ram_reg_1_7_DIPADIP_UNCONNECTED[0]}),
        .DIPBDIP({1'b0,1'b0,1'b0,NLW_ram_reg_1_7_DIPBDIP_UNCONNECTED[0]}),
        .DOADO({NLW_ram_reg_1_7_DOADO_UNCONNECTED[31:1],ram_reg_1_15_0[7]}),
        .DOBDO({NLW_ram_reg_1_7_DOBDO_UNCONNECTED[31:1],ram_data_o[7]}),
        .DOPADOP(NLW_ram_reg_1_7_DOPADOP_UNCONNECTED[3:0]),
        .DOPBDOP(NLW_ram_reg_1_7_DOPBDOP_UNCONNECTED[3:0]),
        .ECCPARITY(NLW_ram_reg_1_7_ECCPARITY_UNCONNECTED[7:0]),
        .ENARDEN(1'b1),
        .ENBWREN(1'b1),
        .INJECTDBITERR(NLW_ram_reg_1_7_INJECTDBITERR_UNCONNECTED),
        .INJECTSBITERR(NLW_ram_reg_1_7_INJECTSBITERR_UNCONNECTED),
        .RDADDRECC(NLW_ram_reg_1_7_RDADDRECC_UNCONNECTED[8:0]),
        .REGCEAREGCE(1'b0),
        .REGCEB(1'b0),
        .RSTRAMARSTRAM(1'b0),
        .RSTRAMB(1'b0),
        .RSTREGARSTREG(1'b0),
        .RSTREGB(1'b0),
        .SBITERR(NLW_ram_reg_1_7_SBITERR_UNCONNECTED),
        .WEA({ram_reg_1_7_0,ram_reg_1_7_0,ram_reg_1_7_0,ram_reg_1_7_0}),
        .WEBWE({1'b0,1'b0,1'b0,1'b0,ram_we_i,ram_we_i,ram_we_i,ram_we_i}));
  (* \MEM.PORTA.DATA_BIT_LAYOUT  = "p0_d1" *) 
  (* \MEM.PORTB.DATA_BIT_LAYOUT  = "p0_d1" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-6 {cell *THIS*}} {SYNTH-7 {cell *THIS*}}" *) 
  (* RTL_RAM_BITS = "1048576" *) 
  (* RTL_RAM_NAME = "U0/comblock_i/dram_g.dram_i/ram_reg_1_8" *) 
  (* RTL_RAM_TYPE = "RAM_TDP" *) 
  (* ram_addr_begin = "32768" *) 
  (* ram_addr_end = "65535" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "8" *) 
  (* ram_slice_end = "8" *) 
  RAMB36E1 #(
    .DOA_REG(0),
    .DOB_REG(0),
    .EN_ECC_READ("FALSE"),
    .EN_ECC_WRITE("FALSE"),
    .INITP_00(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_01(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_02(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_03(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_04(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_05(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_06(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_07(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_08(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_09(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_00(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_01(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_02(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_03(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_04(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_05(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_06(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_07(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_08(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_09(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_10(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_11(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_12(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_13(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_14(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_15(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_16(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_17(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_18(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_19(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_20(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_21(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_22(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_23(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_24(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_25(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_26(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_27(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_28(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_29(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_30(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_31(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_32(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_33(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_34(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_35(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_36(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_37(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_38(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_39(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_40(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_41(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_42(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_43(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_44(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_45(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_46(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_47(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_48(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_49(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_50(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_51(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_52(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_53(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_54(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_55(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_56(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_57(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_58(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_59(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_60(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_61(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_62(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_63(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_64(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_65(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_66(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_67(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_68(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_69(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_70(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_71(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_72(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_73(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_74(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_75(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_76(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_77(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_78(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_79(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_A(36'h000000000),
    .INIT_B(36'h000000000),
    .RAM_EXTENSION_A("UPPER"),
    .RAM_EXTENSION_B("UPPER"),
    .RAM_MODE("TDP"),
    .RDADDR_COLLISION_HWCONFIG("DELAYED_WRITE"),
    .READ_WIDTH_A(1),
    .READ_WIDTH_B(1),
    .RSTREG_PRIORITY_A("RSTREG"),
    .RSTREG_PRIORITY_B("RSTREG"),
    .SIM_COLLISION_CHECK("ALL"),
    .SIM_DEVICE("7SERIES"),
    .SRVAL_A(36'h000000000),
    .SRVAL_B(36'h000000000),
    .WRITE_MODE_A("WRITE_FIRST"),
    .WRITE_MODE_B("WRITE_FIRST"),
    .WRITE_WIDTH_A(1),
    .WRITE_WIDTH_B(1)) 
    ram_reg_1_8
       (.ADDRARDADDR(ADDRARDADDR),
        .ADDRBWRADDR(ram_addr_i),
        .CASCADEINA(ram_reg_0_8_n_0),
        .CASCADEINB(ram_reg_0_8_n_1),
        .CASCADEOUTA(NLW_ram_reg_1_8_CASCADEOUTA_UNCONNECTED),
        .CASCADEOUTB(NLW_ram_reg_1_8_CASCADEOUTB_UNCONNECTED),
        .CLKARDCLK(axif_aclk),
        .CLKBWRCLK(ram_clk_i),
        .DBITERR(NLW_ram_reg_1_8_DBITERR_UNCONNECTED),
        .DIADI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,axif_wdata[8]}),
        .DIBDI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,ram_data_i[8]}),
        .DIPADIP({1'b0,1'b0,1'b0,NLW_ram_reg_1_8_DIPADIP_UNCONNECTED[0]}),
        .DIPBDIP({1'b0,1'b0,1'b0,NLW_ram_reg_1_8_DIPBDIP_UNCONNECTED[0]}),
        .DOADO({NLW_ram_reg_1_8_DOADO_UNCONNECTED[31:1],ram_reg_1_15_0[8]}),
        .DOBDO({NLW_ram_reg_1_8_DOBDO_UNCONNECTED[31:1],ram_data_o[8]}),
        .DOPADOP(NLW_ram_reg_1_8_DOPADOP_UNCONNECTED[3:0]),
        .DOPBDOP(NLW_ram_reg_1_8_DOPBDOP_UNCONNECTED[3:0]),
        .ECCPARITY(NLW_ram_reg_1_8_ECCPARITY_UNCONNECTED[7:0]),
        .ENARDEN(1'b1),
        .ENBWREN(1'b1),
        .INJECTDBITERR(NLW_ram_reg_1_8_INJECTDBITERR_UNCONNECTED),
        .INJECTSBITERR(NLW_ram_reg_1_8_INJECTSBITERR_UNCONNECTED),
        .RDADDRECC(NLW_ram_reg_1_8_RDADDRECC_UNCONNECTED[8:0]),
        .REGCEAREGCE(1'b0),
        .REGCEB(1'b0),
        .RSTRAMARSTRAM(1'b0),
        .RSTRAMB(1'b0),
        .RSTREGARSTREG(1'b0),
        .RSTREGB(1'b0),
        .SBITERR(NLW_ram_reg_1_8_SBITERR_UNCONNECTED),
        .WEA({ram_reg_1_8_0,ram_reg_1_8_0,ram_reg_1_8_0,ram_reg_1_8_0}),
        .WEBWE({1'b0,1'b0,1'b0,1'b0,ram_we_i,ram_we_i,ram_we_i,ram_we_i}));
  (* \MEM.PORTA.DATA_BIT_LAYOUT  = "p0_d1" *) 
  (* \MEM.PORTB.DATA_BIT_LAYOUT  = "p0_d1" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-6 {cell *THIS*}} {SYNTH-7 {cell *THIS*}}" *) 
  (* RTL_RAM_BITS = "1048576" *) 
  (* RTL_RAM_NAME = "U0/comblock_i/dram_g.dram_i/ram_reg_1_9" *) 
  (* RTL_RAM_TYPE = "RAM_TDP" *) 
  (* ram_addr_begin = "32768" *) 
  (* ram_addr_end = "65535" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "9" *) 
  (* ram_slice_end = "9" *) 
  RAMB36E1 #(
    .DOA_REG(0),
    .DOB_REG(0),
    .EN_ECC_READ("FALSE"),
    .EN_ECC_WRITE("FALSE"),
    .INITP_00(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_01(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_02(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_03(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_04(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_05(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_06(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_07(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_08(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_09(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_00(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_01(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_02(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_03(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_04(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_05(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_06(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_07(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_08(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_09(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_10(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_11(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_12(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_13(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_14(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_15(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_16(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_17(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_18(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_19(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_20(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_21(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_22(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_23(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_24(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_25(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_26(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_27(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_28(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_29(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_30(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_31(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_32(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_33(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_34(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_35(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_36(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_37(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_38(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_39(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_40(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_41(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_42(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_43(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_44(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_45(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_46(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_47(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_48(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_49(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_50(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_51(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_52(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_53(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_54(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_55(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_56(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_57(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_58(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_59(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_60(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_61(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_62(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_63(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_64(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_65(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_66(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_67(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_68(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_69(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_70(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_71(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_72(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_73(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_74(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_75(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_76(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_77(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_78(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_79(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_A(36'h000000000),
    .INIT_B(36'h000000000),
    .RAM_EXTENSION_A("UPPER"),
    .RAM_EXTENSION_B("UPPER"),
    .RAM_MODE("TDP"),
    .RDADDR_COLLISION_HWCONFIG("DELAYED_WRITE"),
    .READ_WIDTH_A(1),
    .READ_WIDTH_B(1),
    .RSTREG_PRIORITY_A("RSTREG"),
    .RSTREG_PRIORITY_B("RSTREG"),
    .SIM_COLLISION_CHECK("ALL"),
    .SIM_DEVICE("7SERIES"),
    .SRVAL_A(36'h000000000),
    .SRVAL_B(36'h000000000),
    .WRITE_MODE_A("WRITE_FIRST"),
    .WRITE_MODE_B("WRITE_FIRST"),
    .WRITE_WIDTH_A(1),
    .WRITE_WIDTH_B(1)) 
    ram_reg_1_9
       (.ADDRARDADDR(ADDRARDADDR),
        .ADDRBWRADDR(ram_addr_i),
        .CASCADEINA(ram_reg_0_9_n_0),
        .CASCADEINB(ram_reg_0_9_n_1),
        .CASCADEOUTA(NLW_ram_reg_1_9_CASCADEOUTA_UNCONNECTED),
        .CASCADEOUTB(NLW_ram_reg_1_9_CASCADEOUTB_UNCONNECTED),
        .CLKARDCLK(axif_aclk),
        .CLKBWRCLK(ram_clk_i),
        .DBITERR(NLW_ram_reg_1_9_DBITERR_UNCONNECTED),
        .DIADI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,axif_wdata[9]}),
        .DIBDI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,ram_data_i[9]}),
        .DIPADIP({1'b0,1'b0,1'b0,NLW_ram_reg_1_9_DIPADIP_UNCONNECTED[0]}),
        .DIPBDIP({1'b0,1'b0,1'b0,NLW_ram_reg_1_9_DIPBDIP_UNCONNECTED[0]}),
        .DOADO({NLW_ram_reg_1_9_DOADO_UNCONNECTED[31:1],ram_reg_1_15_0[9]}),
        .DOBDO({NLW_ram_reg_1_9_DOBDO_UNCONNECTED[31:1],ram_data_o[9]}),
        .DOPADOP(NLW_ram_reg_1_9_DOPADOP_UNCONNECTED[3:0]),
        .DOPBDOP(NLW_ram_reg_1_9_DOPBDOP_UNCONNECTED[3:0]),
        .ECCPARITY(NLW_ram_reg_1_9_ECCPARITY_UNCONNECTED[7:0]),
        .ENARDEN(1'b1),
        .ENBWREN(1'b1),
        .INJECTDBITERR(NLW_ram_reg_1_9_INJECTDBITERR_UNCONNECTED),
        .INJECTSBITERR(NLW_ram_reg_1_9_INJECTSBITERR_UNCONNECTED),
        .RDADDRECC(NLW_ram_reg_1_9_RDADDRECC_UNCONNECTED[8:0]),
        .REGCEAREGCE(1'b0),
        .REGCEB(1'b0),
        .RSTRAMARSTRAM(1'b0),
        .RSTRAMB(1'b0),
        .RSTREGARSTREG(1'b0),
        .RSTREGB(1'b0),
        .SBITERR(NLW_ram_reg_1_9_SBITERR_UNCONNECTED),
        .WEA({ram_reg_1_9_0,ram_reg_1_9_0,ram_reg_1_9_0,ram_reg_1_9_0}),
        .WEBWE({1'b0,1'b0,1'b0,1'b0,ram_we_i,ram_we_i,ram_we_i,ram_we_i}));
endmodule

(* ORIG_REF_NAME = "tdpram" *) 
module xrf_dpp_comblock_0_0_tdpram__parameterized0
   (fifo_data_o,
    axil_aclk,
    fifo_clk_i,
    p_4_in,
    wr_ptr_r,
    ram_reg_3_0,
    rd_ptr_r,
    axil_wdata);
  output [15:0]fifo_data_o;
  input axil_aclk;
  input fifo_clk_i;
  input p_4_in;
  input [11:0]wr_ptr_r;
  input ram_reg_3_0;
  input [12:0]rd_ptr_r;
  input [15:0]axil_wdata;

  wire axil_aclk;
  wire [15:0]axil_wdata;
  wire fifo_clk_i;
  wire [15:0]fifo_data_o;
  wire p_4_in;
  wire ram_reg_3_0;
  wire [12:0]rd_ptr_r;
  wire [11:0]wr_ptr_r;
  wire NLW_ram_reg_0_CASCADEOUTA_UNCONNECTED;
  wire NLW_ram_reg_0_CASCADEOUTB_UNCONNECTED;
  wire NLW_ram_reg_0_DBITERR_UNCONNECTED;
  wire NLW_ram_reg_0_INJECTDBITERR_UNCONNECTED;
  wire NLW_ram_reg_0_INJECTSBITERR_UNCONNECTED;
  wire NLW_ram_reg_0_SBITERR_UNCONNECTED;
  wire [31:0]NLW_ram_reg_0_DOADO_UNCONNECTED;
  wire [31:4]NLW_ram_reg_0_DOBDO_UNCONNECTED;
  wire [3:0]NLW_ram_reg_0_DOPADOP_UNCONNECTED;
  wire [3:0]NLW_ram_reg_0_DOPBDOP_UNCONNECTED;
  wire [7:0]NLW_ram_reg_0_ECCPARITY_UNCONNECTED;
  wire [8:0]NLW_ram_reg_0_RDADDRECC_UNCONNECTED;
  wire NLW_ram_reg_1_CASCADEOUTA_UNCONNECTED;
  wire NLW_ram_reg_1_CASCADEOUTB_UNCONNECTED;
  wire NLW_ram_reg_1_DBITERR_UNCONNECTED;
  wire NLW_ram_reg_1_INJECTDBITERR_UNCONNECTED;
  wire NLW_ram_reg_1_INJECTSBITERR_UNCONNECTED;
  wire NLW_ram_reg_1_SBITERR_UNCONNECTED;
  wire [31:0]NLW_ram_reg_1_DOADO_UNCONNECTED;
  wire [31:4]NLW_ram_reg_1_DOBDO_UNCONNECTED;
  wire [3:0]NLW_ram_reg_1_DOPADOP_UNCONNECTED;
  wire [3:0]NLW_ram_reg_1_DOPBDOP_UNCONNECTED;
  wire [7:0]NLW_ram_reg_1_ECCPARITY_UNCONNECTED;
  wire [8:0]NLW_ram_reg_1_RDADDRECC_UNCONNECTED;
  wire NLW_ram_reg_2_CASCADEOUTA_UNCONNECTED;
  wire NLW_ram_reg_2_CASCADEOUTB_UNCONNECTED;
  wire NLW_ram_reg_2_DBITERR_UNCONNECTED;
  wire NLW_ram_reg_2_INJECTDBITERR_UNCONNECTED;
  wire NLW_ram_reg_2_INJECTSBITERR_UNCONNECTED;
  wire NLW_ram_reg_2_SBITERR_UNCONNECTED;
  wire [31:0]NLW_ram_reg_2_DOADO_UNCONNECTED;
  wire [31:4]NLW_ram_reg_2_DOBDO_UNCONNECTED;
  wire [3:0]NLW_ram_reg_2_DOPADOP_UNCONNECTED;
  wire [3:0]NLW_ram_reg_2_DOPBDOP_UNCONNECTED;
  wire [7:0]NLW_ram_reg_2_ECCPARITY_UNCONNECTED;
  wire [8:0]NLW_ram_reg_2_RDADDRECC_UNCONNECTED;
  wire NLW_ram_reg_3_CASCADEOUTA_UNCONNECTED;
  wire NLW_ram_reg_3_CASCADEOUTB_UNCONNECTED;
  wire NLW_ram_reg_3_DBITERR_UNCONNECTED;
  wire NLW_ram_reg_3_INJECTDBITERR_UNCONNECTED;
  wire NLW_ram_reg_3_INJECTSBITERR_UNCONNECTED;
  wire NLW_ram_reg_3_SBITERR_UNCONNECTED;
  wire [31:0]NLW_ram_reg_3_DOADO_UNCONNECTED;
  wire [31:4]NLW_ram_reg_3_DOBDO_UNCONNECTED;
  wire [3:0]NLW_ram_reg_3_DOPADOP_UNCONNECTED;
  wire [3:0]NLW_ram_reg_3_DOPBDOP_UNCONNECTED;
  wire [7:0]NLW_ram_reg_3_ECCPARITY_UNCONNECTED;
  wire [8:0]NLW_ram_reg_3_RDADDRECC_UNCONNECTED;

  (* \MEM.PORTA.DATA_BIT_LAYOUT  = "p0_d4" *) 
  (* \MEM.PORTB.DATA_BIT_LAYOUT  = "p0_d4" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-6 {cell *THIS*}}" *) 
  (* RTL_RAM_BITS = "131072" *) 
  (* RTL_RAM_NAME = "U0/comblock_i/fifo_out_g.fifo_out_i/i_memory/ram_reg_0" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "8191" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "0" *) 
  (* ram_slice_end = "3" *) 
  RAMB36E1 #(
    .DOA_REG(0),
    .DOB_REG(0),
    .EN_ECC_READ("FALSE"),
    .EN_ECC_WRITE("FALSE"),
    .INITP_00(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_01(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_02(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_03(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_04(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_05(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_06(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_07(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_08(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_09(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_00(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_01(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_02(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_03(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_04(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_05(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_06(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_07(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_08(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_09(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_10(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_11(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_12(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_13(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_14(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_15(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_16(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_17(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_18(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_19(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_20(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_21(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_22(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_23(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_24(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_25(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_26(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_27(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_28(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_29(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_30(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_31(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_32(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_33(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_34(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_35(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_36(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_37(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_38(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_39(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_40(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_41(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_42(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_43(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_44(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_45(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_46(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_47(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_48(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_49(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_50(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_51(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_52(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_53(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_54(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_55(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_56(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_57(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_58(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_59(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_60(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_61(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_62(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_63(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_64(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_65(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_66(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_67(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_68(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_69(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_70(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_71(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_72(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_73(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_74(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_75(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_76(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_77(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_78(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_79(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_A(36'h000000000),
    .INIT_B(36'h000000000),
    .RAM_EXTENSION_A("NONE"),
    .RAM_EXTENSION_B("NONE"),
    .RAM_MODE("TDP"),
    .RDADDR_COLLISION_HWCONFIG("DELAYED_WRITE"),
    .READ_WIDTH_A(4),
    .READ_WIDTH_B(4),
    .RSTREG_PRIORITY_A("RSTREG"),
    .RSTREG_PRIORITY_B("RSTREG"),
    .SIM_COLLISION_CHECK("ALL"),
    .SIM_DEVICE("7SERIES"),
    .SRVAL_A(36'h000000000),
    .SRVAL_B(36'h000000000),
    .WRITE_MODE_A("NO_CHANGE"),
    .WRITE_MODE_B("WRITE_FIRST"),
    .WRITE_WIDTH_A(4),
    .WRITE_WIDTH_B(4)) 
    ram_reg_0
       (.ADDRARDADDR({1'b1,wr_ptr_r,ram_reg_3_0,1'b0,1'b0}),
        .ADDRBWRADDR({1'b1,rd_ptr_r,1'b0,1'b0}),
        .CASCADEINA(1'b1),
        .CASCADEINB(1'b1),
        .CASCADEOUTA(NLW_ram_reg_0_CASCADEOUTA_UNCONNECTED),
        .CASCADEOUTB(NLW_ram_reg_0_CASCADEOUTB_UNCONNECTED),
        .CLKARDCLK(axil_aclk),
        .CLKBWRCLK(fifo_clk_i),
        .DBITERR(NLW_ram_reg_0_DBITERR_UNCONNECTED),
        .DIADI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,axil_wdata[3:0]}),
        .DIBDI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b1,1'b1,1'b1,1'b1}),
        .DIPADIP({1'b0,1'b0,1'b0,1'b0}),
        .DIPBDIP({1'b0,1'b0,1'b0,1'b0}),
        .DOADO(NLW_ram_reg_0_DOADO_UNCONNECTED[31:0]),
        .DOBDO({NLW_ram_reg_0_DOBDO_UNCONNECTED[31:4],fifo_data_o[3:0]}),
        .DOPADOP(NLW_ram_reg_0_DOPADOP_UNCONNECTED[3:0]),
        .DOPBDOP(NLW_ram_reg_0_DOPBDOP_UNCONNECTED[3:0]),
        .ECCPARITY(NLW_ram_reg_0_ECCPARITY_UNCONNECTED[7:0]),
        .ENARDEN(p_4_in),
        .ENBWREN(1'b1),
        .INJECTDBITERR(NLW_ram_reg_0_INJECTDBITERR_UNCONNECTED),
        .INJECTSBITERR(NLW_ram_reg_0_INJECTSBITERR_UNCONNECTED),
        .RDADDRECC(NLW_ram_reg_0_RDADDRECC_UNCONNECTED[8:0]),
        .REGCEAREGCE(1'b0),
        .REGCEB(1'b0),
        .RSTRAMARSTRAM(1'b0),
        .RSTRAMB(1'b0),
        .RSTREGARSTREG(1'b0),
        .RSTREGB(1'b0),
        .SBITERR(NLW_ram_reg_0_SBITERR_UNCONNECTED),
        .WEA({p_4_in,p_4_in,p_4_in,1'b1}),
        .WEBWE({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}));
  (* \MEM.PORTA.DATA_BIT_LAYOUT  = "p0_d4" *) 
  (* \MEM.PORTB.DATA_BIT_LAYOUT  = "p0_d4" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-6 {cell *THIS*}}" *) 
  (* RTL_RAM_BITS = "131072" *) 
  (* RTL_RAM_NAME = "U0/comblock_i/fifo_out_g.fifo_out_i/i_memory/ram_reg_1" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "8191" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "4" *) 
  (* ram_slice_end = "7" *) 
  RAMB36E1 #(
    .DOA_REG(0),
    .DOB_REG(0),
    .EN_ECC_READ("FALSE"),
    .EN_ECC_WRITE("FALSE"),
    .INITP_00(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_01(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_02(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_03(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_04(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_05(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_06(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_07(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_08(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_09(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_00(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_01(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_02(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_03(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_04(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_05(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_06(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_07(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_08(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_09(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_10(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_11(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_12(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_13(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_14(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_15(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_16(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_17(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_18(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_19(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_20(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_21(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_22(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_23(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_24(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_25(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_26(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_27(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_28(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_29(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_30(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_31(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_32(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_33(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_34(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_35(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_36(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_37(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_38(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_39(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_40(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_41(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_42(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_43(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_44(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_45(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_46(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_47(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_48(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_49(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_50(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_51(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_52(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_53(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_54(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_55(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_56(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_57(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_58(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_59(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_60(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_61(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_62(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_63(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_64(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_65(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_66(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_67(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_68(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_69(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_70(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_71(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_72(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_73(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_74(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_75(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_76(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_77(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_78(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_79(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_A(36'h000000000),
    .INIT_B(36'h000000000),
    .RAM_EXTENSION_A("NONE"),
    .RAM_EXTENSION_B("NONE"),
    .RAM_MODE("TDP"),
    .RDADDR_COLLISION_HWCONFIG("DELAYED_WRITE"),
    .READ_WIDTH_A(4),
    .READ_WIDTH_B(4),
    .RSTREG_PRIORITY_A("RSTREG"),
    .RSTREG_PRIORITY_B("RSTREG"),
    .SIM_COLLISION_CHECK("ALL"),
    .SIM_DEVICE("7SERIES"),
    .SRVAL_A(36'h000000000),
    .SRVAL_B(36'h000000000),
    .WRITE_MODE_A("NO_CHANGE"),
    .WRITE_MODE_B("WRITE_FIRST"),
    .WRITE_WIDTH_A(4),
    .WRITE_WIDTH_B(4)) 
    ram_reg_1
       (.ADDRARDADDR({1'b1,wr_ptr_r,ram_reg_3_0,1'b0,1'b0}),
        .ADDRBWRADDR({1'b1,rd_ptr_r,1'b0,1'b0}),
        .CASCADEINA(1'b1),
        .CASCADEINB(1'b1),
        .CASCADEOUTA(NLW_ram_reg_1_CASCADEOUTA_UNCONNECTED),
        .CASCADEOUTB(NLW_ram_reg_1_CASCADEOUTB_UNCONNECTED),
        .CLKARDCLK(axil_aclk),
        .CLKBWRCLK(fifo_clk_i),
        .DBITERR(NLW_ram_reg_1_DBITERR_UNCONNECTED),
        .DIADI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,axil_wdata[7:4]}),
        .DIBDI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b1,1'b1,1'b1,1'b1}),
        .DIPADIP({1'b0,1'b0,1'b0,1'b0}),
        .DIPBDIP({1'b0,1'b0,1'b0,1'b0}),
        .DOADO(NLW_ram_reg_1_DOADO_UNCONNECTED[31:0]),
        .DOBDO({NLW_ram_reg_1_DOBDO_UNCONNECTED[31:4],fifo_data_o[7:4]}),
        .DOPADOP(NLW_ram_reg_1_DOPADOP_UNCONNECTED[3:0]),
        .DOPBDOP(NLW_ram_reg_1_DOPBDOP_UNCONNECTED[3:0]),
        .ECCPARITY(NLW_ram_reg_1_ECCPARITY_UNCONNECTED[7:0]),
        .ENARDEN(p_4_in),
        .ENBWREN(1'b1),
        .INJECTDBITERR(NLW_ram_reg_1_INJECTDBITERR_UNCONNECTED),
        .INJECTSBITERR(NLW_ram_reg_1_INJECTSBITERR_UNCONNECTED),
        .RDADDRECC(NLW_ram_reg_1_RDADDRECC_UNCONNECTED[8:0]),
        .REGCEAREGCE(1'b0),
        .REGCEB(1'b0),
        .RSTRAMARSTRAM(1'b0),
        .RSTRAMB(1'b0),
        .RSTREGARSTREG(1'b0),
        .RSTREGB(1'b0),
        .SBITERR(NLW_ram_reg_1_SBITERR_UNCONNECTED),
        .WEA({p_4_in,p_4_in,p_4_in,1'b1}),
        .WEBWE({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}));
  (* \MEM.PORTA.DATA_BIT_LAYOUT  = "p0_d4" *) 
  (* \MEM.PORTB.DATA_BIT_LAYOUT  = "p0_d4" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-6 {cell *THIS*}}" *) 
  (* RTL_RAM_BITS = "131072" *) 
  (* RTL_RAM_NAME = "U0/comblock_i/fifo_out_g.fifo_out_i/i_memory/ram_reg_2" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "8191" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "8" *) 
  (* ram_slice_end = "11" *) 
  RAMB36E1 #(
    .DOA_REG(0),
    .DOB_REG(0),
    .EN_ECC_READ("FALSE"),
    .EN_ECC_WRITE("FALSE"),
    .INITP_00(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_01(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_02(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_03(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_04(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_05(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_06(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_07(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_08(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_09(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_00(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_01(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_02(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_03(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_04(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_05(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_06(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_07(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_08(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_09(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_10(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_11(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_12(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_13(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_14(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_15(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_16(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_17(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_18(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_19(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_20(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_21(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_22(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_23(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_24(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_25(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_26(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_27(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_28(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_29(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_30(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_31(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_32(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_33(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_34(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_35(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_36(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_37(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_38(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_39(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_40(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_41(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_42(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_43(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_44(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_45(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_46(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_47(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_48(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_49(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_50(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_51(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_52(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_53(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_54(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_55(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_56(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_57(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_58(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_59(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_60(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_61(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_62(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_63(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_64(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_65(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_66(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_67(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_68(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_69(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_70(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_71(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_72(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_73(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_74(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_75(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_76(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_77(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_78(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_79(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_A(36'h000000000),
    .INIT_B(36'h000000000),
    .RAM_EXTENSION_A("NONE"),
    .RAM_EXTENSION_B("NONE"),
    .RAM_MODE("TDP"),
    .RDADDR_COLLISION_HWCONFIG("DELAYED_WRITE"),
    .READ_WIDTH_A(4),
    .READ_WIDTH_B(4),
    .RSTREG_PRIORITY_A("RSTREG"),
    .RSTREG_PRIORITY_B("RSTREG"),
    .SIM_COLLISION_CHECK("ALL"),
    .SIM_DEVICE("7SERIES"),
    .SRVAL_A(36'h000000000),
    .SRVAL_B(36'h000000000),
    .WRITE_MODE_A("NO_CHANGE"),
    .WRITE_MODE_B("WRITE_FIRST"),
    .WRITE_WIDTH_A(4),
    .WRITE_WIDTH_B(4)) 
    ram_reg_2
       (.ADDRARDADDR({1'b1,wr_ptr_r,ram_reg_3_0,1'b0,1'b0}),
        .ADDRBWRADDR({1'b1,rd_ptr_r,1'b0,1'b0}),
        .CASCADEINA(1'b1),
        .CASCADEINB(1'b1),
        .CASCADEOUTA(NLW_ram_reg_2_CASCADEOUTA_UNCONNECTED),
        .CASCADEOUTB(NLW_ram_reg_2_CASCADEOUTB_UNCONNECTED),
        .CLKARDCLK(axil_aclk),
        .CLKBWRCLK(fifo_clk_i),
        .DBITERR(NLW_ram_reg_2_DBITERR_UNCONNECTED),
        .DIADI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,axil_wdata[11:8]}),
        .DIBDI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b1,1'b1,1'b1,1'b1}),
        .DIPADIP({1'b0,1'b0,1'b0,1'b0}),
        .DIPBDIP({1'b0,1'b0,1'b0,1'b0}),
        .DOADO(NLW_ram_reg_2_DOADO_UNCONNECTED[31:0]),
        .DOBDO({NLW_ram_reg_2_DOBDO_UNCONNECTED[31:4],fifo_data_o[11:8]}),
        .DOPADOP(NLW_ram_reg_2_DOPADOP_UNCONNECTED[3:0]),
        .DOPBDOP(NLW_ram_reg_2_DOPBDOP_UNCONNECTED[3:0]),
        .ECCPARITY(NLW_ram_reg_2_ECCPARITY_UNCONNECTED[7:0]),
        .ENARDEN(p_4_in),
        .ENBWREN(1'b1),
        .INJECTDBITERR(NLW_ram_reg_2_INJECTDBITERR_UNCONNECTED),
        .INJECTSBITERR(NLW_ram_reg_2_INJECTSBITERR_UNCONNECTED),
        .RDADDRECC(NLW_ram_reg_2_RDADDRECC_UNCONNECTED[8:0]),
        .REGCEAREGCE(1'b0),
        .REGCEB(1'b0),
        .RSTRAMARSTRAM(1'b0),
        .RSTRAMB(1'b0),
        .RSTREGARSTREG(1'b0),
        .RSTREGB(1'b0),
        .SBITERR(NLW_ram_reg_2_SBITERR_UNCONNECTED),
        .WEA({p_4_in,p_4_in,p_4_in,1'b1}),
        .WEBWE({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}));
  (* \MEM.PORTA.DATA_BIT_LAYOUT  = "p0_d4" *) 
  (* \MEM.PORTB.DATA_BIT_LAYOUT  = "p0_d4" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-6 {cell *THIS*}}" *) 
  (* RTL_RAM_BITS = "131072" *) 
  (* RTL_RAM_NAME = "U0/comblock_i/fifo_out_g.fifo_out_i/i_memory/ram_reg_3" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "8191" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "12" *) 
  (* ram_slice_end = "15" *) 
  RAMB36E1 #(
    .DOA_REG(0),
    .DOB_REG(0),
    .EN_ECC_READ("FALSE"),
    .EN_ECC_WRITE("FALSE"),
    .INITP_00(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_01(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_02(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_03(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_04(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_05(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_06(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_07(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_08(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_09(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_00(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_01(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_02(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_03(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_04(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_05(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_06(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_07(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_08(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_09(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_10(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_11(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_12(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_13(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_14(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_15(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_16(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_17(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_18(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_19(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_20(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_21(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_22(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_23(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_24(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_25(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_26(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_27(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_28(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_29(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_30(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_31(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_32(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_33(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_34(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_35(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_36(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_37(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_38(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_39(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_40(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_41(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_42(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_43(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_44(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_45(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_46(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_47(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_48(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_49(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_50(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_51(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_52(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_53(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_54(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_55(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_56(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_57(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_58(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_59(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_60(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_61(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_62(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_63(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_64(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_65(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_66(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_67(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_68(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_69(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_70(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_71(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_72(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_73(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_74(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_75(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_76(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_77(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_78(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_79(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_A(36'h000000000),
    .INIT_B(36'h000000000),
    .RAM_EXTENSION_A("NONE"),
    .RAM_EXTENSION_B("NONE"),
    .RAM_MODE("TDP"),
    .RDADDR_COLLISION_HWCONFIG("DELAYED_WRITE"),
    .READ_WIDTH_A(4),
    .READ_WIDTH_B(4),
    .RSTREG_PRIORITY_A("RSTREG"),
    .RSTREG_PRIORITY_B("RSTREG"),
    .SIM_COLLISION_CHECK("ALL"),
    .SIM_DEVICE("7SERIES"),
    .SRVAL_A(36'h000000000),
    .SRVAL_B(36'h000000000),
    .WRITE_MODE_A("NO_CHANGE"),
    .WRITE_MODE_B("WRITE_FIRST"),
    .WRITE_WIDTH_A(4),
    .WRITE_WIDTH_B(4)) 
    ram_reg_3
       (.ADDRARDADDR({1'b1,wr_ptr_r,ram_reg_3_0,1'b0,1'b0}),
        .ADDRBWRADDR({1'b1,rd_ptr_r,1'b0,1'b0}),
        .CASCADEINA(1'b1),
        .CASCADEINB(1'b1),
        .CASCADEOUTA(NLW_ram_reg_3_CASCADEOUTA_UNCONNECTED),
        .CASCADEOUTB(NLW_ram_reg_3_CASCADEOUTB_UNCONNECTED),
        .CLKARDCLK(axil_aclk),
        .CLKBWRCLK(fifo_clk_i),
        .DBITERR(NLW_ram_reg_3_DBITERR_UNCONNECTED),
        .DIADI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,axil_wdata[15:12]}),
        .DIBDI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b1,1'b1,1'b1,1'b1}),
        .DIPADIP({1'b0,1'b0,1'b0,1'b0}),
        .DIPBDIP({1'b0,1'b0,1'b0,1'b0}),
        .DOADO(NLW_ram_reg_3_DOADO_UNCONNECTED[31:0]),
        .DOBDO({NLW_ram_reg_3_DOBDO_UNCONNECTED[31:4],fifo_data_o[15:12]}),
        .DOPADOP(NLW_ram_reg_3_DOPADOP_UNCONNECTED[3:0]),
        .DOPBDOP(NLW_ram_reg_3_DOPBDOP_UNCONNECTED[3:0]),
        .ECCPARITY(NLW_ram_reg_3_ECCPARITY_UNCONNECTED[7:0]),
        .ENARDEN(p_4_in),
        .ENBWREN(1'b1),
        .INJECTDBITERR(NLW_ram_reg_3_INJECTDBITERR_UNCONNECTED),
        .INJECTSBITERR(NLW_ram_reg_3_INJECTSBITERR_UNCONNECTED),
        .RDADDRECC(NLW_ram_reg_3_RDADDRECC_UNCONNECTED[8:0]),
        .REGCEAREGCE(1'b0),
        .REGCEB(1'b0),
        .RSTRAMARSTRAM(1'b0),
        .RSTRAMB(1'b0),
        .RSTREGARSTREG(1'b0),
        .RSTREGB(1'b0),
        .SBITERR(NLW_ram_reg_3_SBITERR_UNCONNECTED),
        .WEA({p_4_in,p_4_in,p_4_in,1'b1}),
        .WEBWE({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}));
endmodule

(* ORIG_REF_NAME = "tdpram" *) 
module xrf_dpp_comblock_0_0_tdpram__parameterized0_4
   (WEA,
    fifo_out_over_r_reg,
    data2_o,
    fifo_we_i,
    full_r,
    fifo_out_over_r__0,
    fifo_in_under_r__0,
    Q,
    fifo_clk_i,
    axil_aclk,
    wr_ptr_r,
    rd_ptr_r,
    ram_reg_3_0,
    fifo_data_i);
  output [0:0]WEA;
  output fifo_out_over_r_reg;
  output [14:0]data2_o;
  input fifo_we_i;
  input full_r;
  input fifo_out_over_r__0;
  input fifo_in_under_r__0;
  input [2:0]Q;
  input fifo_clk_i;
  input axil_aclk;
  input [12:0]wr_ptr_r;
  input [11:0]rd_ptr_r;
  input ram_reg_3_0;
  input [15:0]fifo_data_i;

  wire [2:0]Q;
  wire [0:0]WEA;
  wire axil_aclk;
  wire [14:0]data2_o;
  wire fifo_clk_i;
  wire [15:0]fifo_data_i;
  wire [2:2]fifo_in_data;
  wire fifo_in_under_r__0;
  wire fifo_out_over_r__0;
  wire fifo_out_over_r_reg;
  wire fifo_we_i;
  wire full_r;
  wire ram_reg_3_0;
  wire [11:0]rd_ptr_r;
  wire [12:0]wr_ptr_r;
  wire NLW_ram_reg_0_CASCADEOUTA_UNCONNECTED;
  wire NLW_ram_reg_0_CASCADEOUTB_UNCONNECTED;
  wire NLW_ram_reg_0_DBITERR_UNCONNECTED;
  wire NLW_ram_reg_0_INJECTDBITERR_UNCONNECTED;
  wire NLW_ram_reg_0_INJECTSBITERR_UNCONNECTED;
  wire NLW_ram_reg_0_SBITERR_UNCONNECTED;
  wire [31:0]NLW_ram_reg_0_DOADO_UNCONNECTED;
  wire [31:4]NLW_ram_reg_0_DOBDO_UNCONNECTED;
  wire [3:0]NLW_ram_reg_0_DOPADOP_UNCONNECTED;
  wire [3:0]NLW_ram_reg_0_DOPBDOP_UNCONNECTED;
  wire [7:0]NLW_ram_reg_0_ECCPARITY_UNCONNECTED;
  wire [8:0]NLW_ram_reg_0_RDADDRECC_UNCONNECTED;
  wire NLW_ram_reg_1_CASCADEOUTA_UNCONNECTED;
  wire NLW_ram_reg_1_CASCADEOUTB_UNCONNECTED;
  wire NLW_ram_reg_1_DBITERR_UNCONNECTED;
  wire NLW_ram_reg_1_INJECTDBITERR_UNCONNECTED;
  wire NLW_ram_reg_1_INJECTSBITERR_UNCONNECTED;
  wire NLW_ram_reg_1_SBITERR_UNCONNECTED;
  wire [31:0]NLW_ram_reg_1_DOADO_UNCONNECTED;
  wire [31:4]NLW_ram_reg_1_DOBDO_UNCONNECTED;
  wire [3:0]NLW_ram_reg_1_DOPADOP_UNCONNECTED;
  wire [3:0]NLW_ram_reg_1_DOPBDOP_UNCONNECTED;
  wire [7:0]NLW_ram_reg_1_ECCPARITY_UNCONNECTED;
  wire [8:0]NLW_ram_reg_1_RDADDRECC_UNCONNECTED;
  wire NLW_ram_reg_2_CASCADEOUTA_UNCONNECTED;
  wire NLW_ram_reg_2_CASCADEOUTB_UNCONNECTED;
  wire NLW_ram_reg_2_DBITERR_UNCONNECTED;
  wire NLW_ram_reg_2_INJECTDBITERR_UNCONNECTED;
  wire NLW_ram_reg_2_INJECTSBITERR_UNCONNECTED;
  wire NLW_ram_reg_2_SBITERR_UNCONNECTED;
  wire [31:0]NLW_ram_reg_2_DOADO_UNCONNECTED;
  wire [31:4]NLW_ram_reg_2_DOBDO_UNCONNECTED;
  wire [3:0]NLW_ram_reg_2_DOPADOP_UNCONNECTED;
  wire [3:0]NLW_ram_reg_2_DOPBDOP_UNCONNECTED;
  wire [7:0]NLW_ram_reg_2_ECCPARITY_UNCONNECTED;
  wire [8:0]NLW_ram_reg_2_RDADDRECC_UNCONNECTED;
  wire NLW_ram_reg_3_CASCADEOUTA_UNCONNECTED;
  wire NLW_ram_reg_3_CASCADEOUTB_UNCONNECTED;
  wire NLW_ram_reg_3_DBITERR_UNCONNECTED;
  wire NLW_ram_reg_3_INJECTDBITERR_UNCONNECTED;
  wire NLW_ram_reg_3_INJECTSBITERR_UNCONNECTED;
  wire NLW_ram_reg_3_SBITERR_UNCONNECTED;
  wire [31:0]NLW_ram_reg_3_DOADO_UNCONNECTED;
  wire [31:4]NLW_ram_reg_3_DOBDO_UNCONNECTED;
  wire [3:0]NLW_ram_reg_3_DOPADOP_UNCONNECTED;
  wire [3:0]NLW_ram_reg_3_DOPBDOP_UNCONNECTED;
  wire [7:0]NLW_ram_reg_3_ECCPARITY_UNCONNECTED;
  wire [8:0]NLW_ram_reg_3_RDADDRECC_UNCONNECTED;

  LUT6 #(
    .INIT(64'hFFFF53F0FFFF53FF)) 
    \axi_rdata[2]_i_4 
       (.I0(fifo_out_over_r__0),
        .I1(fifo_in_under_r__0),
        .I2(Q[2]),
        .I3(Q[1]),
        .I4(Q[0]),
        .I5(fifo_in_data),
        .O(fifo_out_over_r_reg));
  (* \MEM.PORTA.DATA_BIT_LAYOUT  = "p0_d4" *) 
  (* \MEM.PORTB.DATA_BIT_LAYOUT  = "p0_d4" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-6 {cell *THIS*}}" *) 
  (* RTL_RAM_BITS = "131072" *) 
  (* RTL_RAM_NAME = "U0/comblock_i/fifo_in_g.fifo_in_i/i_memory/ram_reg_0" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "8191" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "0" *) 
  (* ram_slice_end = "3" *) 
  RAMB36E1 #(
    .DOA_REG(0),
    .DOB_REG(0),
    .EN_ECC_READ("FALSE"),
    .EN_ECC_WRITE("FALSE"),
    .INITP_00(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_01(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_02(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_03(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_04(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_05(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_06(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_07(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_08(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_09(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_00(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_01(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_02(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_03(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_04(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_05(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_06(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_07(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_08(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_09(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_10(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_11(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_12(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_13(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_14(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_15(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_16(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_17(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_18(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_19(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_20(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_21(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_22(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_23(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_24(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_25(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_26(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_27(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_28(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_29(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_30(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_31(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_32(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_33(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_34(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_35(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_36(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_37(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_38(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_39(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_40(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_41(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_42(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_43(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_44(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_45(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_46(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_47(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_48(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_49(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_50(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_51(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_52(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_53(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_54(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_55(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_56(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_57(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_58(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_59(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_60(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_61(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_62(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_63(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_64(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_65(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_66(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_67(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_68(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_69(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_70(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_71(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_72(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_73(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_74(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_75(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_76(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_77(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_78(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_79(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_A(36'h000000000),
    .INIT_B(36'h000000000),
    .RAM_EXTENSION_A("NONE"),
    .RAM_EXTENSION_B("NONE"),
    .RAM_MODE("TDP"),
    .RDADDR_COLLISION_HWCONFIG("DELAYED_WRITE"),
    .READ_WIDTH_A(4),
    .READ_WIDTH_B(4),
    .RSTREG_PRIORITY_A("RSTREG"),
    .RSTREG_PRIORITY_B("RSTREG"),
    .SIM_COLLISION_CHECK("ALL"),
    .SIM_DEVICE("7SERIES"),
    .SRVAL_A(36'h000000000),
    .SRVAL_B(36'h000000000),
    .WRITE_MODE_A("NO_CHANGE"),
    .WRITE_MODE_B("WRITE_FIRST"),
    .WRITE_WIDTH_A(4),
    .WRITE_WIDTH_B(4)) 
    ram_reg_0
       (.ADDRARDADDR({1'b1,wr_ptr_r,1'b0,1'b0}),
        .ADDRBWRADDR({1'b1,rd_ptr_r,ram_reg_3_0,1'b0,1'b0}),
        .CASCADEINA(1'b1),
        .CASCADEINB(1'b1),
        .CASCADEOUTA(NLW_ram_reg_0_CASCADEOUTA_UNCONNECTED),
        .CASCADEOUTB(NLW_ram_reg_0_CASCADEOUTB_UNCONNECTED),
        .CLKARDCLK(fifo_clk_i),
        .CLKBWRCLK(axil_aclk),
        .DBITERR(NLW_ram_reg_0_DBITERR_UNCONNECTED),
        .DIADI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,fifo_data_i[3:0]}),
        .DIBDI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b1,1'b1,1'b1,1'b1}),
        .DIPADIP({1'b0,1'b0,1'b0,1'b0}),
        .DIPBDIP({1'b0,1'b0,1'b0,1'b0}),
        .DOADO(NLW_ram_reg_0_DOADO_UNCONNECTED[31:0]),
        .DOBDO({NLW_ram_reg_0_DOBDO_UNCONNECTED[31:4],data2_o[2],fifo_in_data,data2_o[1:0]}),
        .DOPADOP(NLW_ram_reg_0_DOPADOP_UNCONNECTED[3:0]),
        .DOPBDOP(NLW_ram_reg_0_DOPBDOP_UNCONNECTED[3:0]),
        .ECCPARITY(NLW_ram_reg_0_ECCPARITY_UNCONNECTED[7:0]),
        .ENARDEN(WEA),
        .ENBWREN(1'b1),
        .INJECTDBITERR(NLW_ram_reg_0_INJECTDBITERR_UNCONNECTED),
        .INJECTSBITERR(NLW_ram_reg_0_INJECTSBITERR_UNCONNECTED),
        .RDADDRECC(NLW_ram_reg_0_RDADDRECC_UNCONNECTED[8:0]),
        .REGCEAREGCE(1'b0),
        .REGCEB(1'b0),
        .RSTRAMARSTRAM(1'b0),
        .RSTRAMB(1'b0),
        .RSTREGARSTREG(1'b0),
        .RSTREGB(1'b0),
        .SBITERR(NLW_ram_reg_0_SBITERR_UNCONNECTED),
        .WEA({WEA,WEA,WEA,1'b1}),
        .WEBWE({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}));
  LUT2 #(
    .INIT(4'h2)) 
    ram_reg_0_i_1
       (.I0(fifo_we_i),
        .I1(full_r),
        .O(WEA));
  (* \MEM.PORTA.DATA_BIT_LAYOUT  = "p0_d4" *) 
  (* \MEM.PORTB.DATA_BIT_LAYOUT  = "p0_d4" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-6 {cell *THIS*}}" *) 
  (* RTL_RAM_BITS = "131072" *) 
  (* RTL_RAM_NAME = "U0/comblock_i/fifo_in_g.fifo_in_i/i_memory/ram_reg_1" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "8191" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "4" *) 
  (* ram_slice_end = "7" *) 
  RAMB36E1 #(
    .DOA_REG(0),
    .DOB_REG(0),
    .EN_ECC_READ("FALSE"),
    .EN_ECC_WRITE("FALSE"),
    .INITP_00(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_01(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_02(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_03(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_04(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_05(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_06(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_07(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_08(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_09(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_00(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_01(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_02(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_03(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_04(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_05(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_06(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_07(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_08(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_09(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_10(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_11(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_12(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_13(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_14(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_15(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_16(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_17(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_18(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_19(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_20(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_21(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_22(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_23(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_24(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_25(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_26(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_27(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_28(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_29(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_30(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_31(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_32(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_33(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_34(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_35(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_36(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_37(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_38(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_39(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_40(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_41(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_42(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_43(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_44(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_45(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_46(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_47(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_48(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_49(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_50(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_51(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_52(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_53(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_54(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_55(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_56(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_57(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_58(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_59(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_60(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_61(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_62(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_63(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_64(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_65(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_66(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_67(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_68(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_69(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_70(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_71(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_72(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_73(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_74(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_75(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_76(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_77(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_78(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_79(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_A(36'h000000000),
    .INIT_B(36'h000000000),
    .RAM_EXTENSION_A("NONE"),
    .RAM_EXTENSION_B("NONE"),
    .RAM_MODE("TDP"),
    .RDADDR_COLLISION_HWCONFIG("DELAYED_WRITE"),
    .READ_WIDTH_A(4),
    .READ_WIDTH_B(4),
    .RSTREG_PRIORITY_A("RSTREG"),
    .RSTREG_PRIORITY_B("RSTREG"),
    .SIM_COLLISION_CHECK("ALL"),
    .SIM_DEVICE("7SERIES"),
    .SRVAL_A(36'h000000000),
    .SRVAL_B(36'h000000000),
    .WRITE_MODE_A("NO_CHANGE"),
    .WRITE_MODE_B("WRITE_FIRST"),
    .WRITE_WIDTH_A(4),
    .WRITE_WIDTH_B(4)) 
    ram_reg_1
       (.ADDRARDADDR({1'b1,wr_ptr_r,1'b0,1'b0}),
        .ADDRBWRADDR({1'b1,rd_ptr_r,ram_reg_3_0,1'b0,1'b0}),
        .CASCADEINA(1'b1),
        .CASCADEINB(1'b1),
        .CASCADEOUTA(NLW_ram_reg_1_CASCADEOUTA_UNCONNECTED),
        .CASCADEOUTB(NLW_ram_reg_1_CASCADEOUTB_UNCONNECTED),
        .CLKARDCLK(fifo_clk_i),
        .CLKBWRCLK(axil_aclk),
        .DBITERR(NLW_ram_reg_1_DBITERR_UNCONNECTED),
        .DIADI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,fifo_data_i[7:4]}),
        .DIBDI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b1,1'b1,1'b1,1'b1}),
        .DIPADIP({1'b0,1'b0,1'b0,1'b0}),
        .DIPBDIP({1'b0,1'b0,1'b0,1'b0}),
        .DOADO(NLW_ram_reg_1_DOADO_UNCONNECTED[31:0]),
        .DOBDO({NLW_ram_reg_1_DOBDO_UNCONNECTED[31:4],data2_o[6:3]}),
        .DOPADOP(NLW_ram_reg_1_DOPADOP_UNCONNECTED[3:0]),
        .DOPBDOP(NLW_ram_reg_1_DOPBDOP_UNCONNECTED[3:0]),
        .ECCPARITY(NLW_ram_reg_1_ECCPARITY_UNCONNECTED[7:0]),
        .ENARDEN(WEA),
        .ENBWREN(1'b1),
        .INJECTDBITERR(NLW_ram_reg_1_INJECTDBITERR_UNCONNECTED),
        .INJECTSBITERR(NLW_ram_reg_1_INJECTSBITERR_UNCONNECTED),
        .RDADDRECC(NLW_ram_reg_1_RDADDRECC_UNCONNECTED[8:0]),
        .REGCEAREGCE(1'b0),
        .REGCEB(1'b0),
        .RSTRAMARSTRAM(1'b0),
        .RSTRAMB(1'b0),
        .RSTREGARSTREG(1'b0),
        .RSTREGB(1'b0),
        .SBITERR(NLW_ram_reg_1_SBITERR_UNCONNECTED),
        .WEA({WEA,WEA,WEA,1'b1}),
        .WEBWE({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}));
  (* \MEM.PORTA.DATA_BIT_LAYOUT  = "p0_d4" *) 
  (* \MEM.PORTB.DATA_BIT_LAYOUT  = "p0_d4" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-6 {cell *THIS*}}" *) 
  (* RTL_RAM_BITS = "131072" *) 
  (* RTL_RAM_NAME = "U0/comblock_i/fifo_in_g.fifo_in_i/i_memory/ram_reg_2" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "8191" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "8" *) 
  (* ram_slice_end = "11" *) 
  RAMB36E1 #(
    .DOA_REG(0),
    .DOB_REG(0),
    .EN_ECC_READ("FALSE"),
    .EN_ECC_WRITE("FALSE"),
    .INITP_00(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_01(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_02(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_03(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_04(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_05(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_06(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_07(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_08(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_09(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_00(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_01(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_02(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_03(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_04(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_05(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_06(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_07(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_08(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_09(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_10(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_11(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_12(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_13(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_14(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_15(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_16(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_17(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_18(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_19(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_20(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_21(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_22(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_23(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_24(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_25(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_26(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_27(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_28(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_29(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_30(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_31(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_32(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_33(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_34(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_35(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_36(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_37(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_38(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_39(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_40(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_41(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_42(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_43(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_44(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_45(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_46(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_47(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_48(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_49(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_50(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_51(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_52(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_53(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_54(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_55(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_56(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_57(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_58(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_59(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_60(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_61(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_62(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_63(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_64(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_65(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_66(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_67(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_68(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_69(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_70(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_71(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_72(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_73(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_74(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_75(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_76(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_77(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_78(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_79(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_A(36'h000000000),
    .INIT_B(36'h000000000),
    .RAM_EXTENSION_A("NONE"),
    .RAM_EXTENSION_B("NONE"),
    .RAM_MODE("TDP"),
    .RDADDR_COLLISION_HWCONFIG("DELAYED_WRITE"),
    .READ_WIDTH_A(4),
    .READ_WIDTH_B(4),
    .RSTREG_PRIORITY_A("RSTREG"),
    .RSTREG_PRIORITY_B("RSTREG"),
    .SIM_COLLISION_CHECK("ALL"),
    .SIM_DEVICE("7SERIES"),
    .SRVAL_A(36'h000000000),
    .SRVAL_B(36'h000000000),
    .WRITE_MODE_A("NO_CHANGE"),
    .WRITE_MODE_B("WRITE_FIRST"),
    .WRITE_WIDTH_A(4),
    .WRITE_WIDTH_B(4)) 
    ram_reg_2
       (.ADDRARDADDR({1'b1,wr_ptr_r,1'b0,1'b0}),
        .ADDRBWRADDR({1'b1,rd_ptr_r,ram_reg_3_0,1'b0,1'b0}),
        .CASCADEINA(1'b1),
        .CASCADEINB(1'b1),
        .CASCADEOUTA(NLW_ram_reg_2_CASCADEOUTA_UNCONNECTED),
        .CASCADEOUTB(NLW_ram_reg_2_CASCADEOUTB_UNCONNECTED),
        .CLKARDCLK(fifo_clk_i),
        .CLKBWRCLK(axil_aclk),
        .DBITERR(NLW_ram_reg_2_DBITERR_UNCONNECTED),
        .DIADI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,fifo_data_i[11:8]}),
        .DIBDI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b1,1'b1,1'b1,1'b1}),
        .DIPADIP({1'b0,1'b0,1'b0,1'b0}),
        .DIPBDIP({1'b0,1'b0,1'b0,1'b0}),
        .DOADO(NLW_ram_reg_2_DOADO_UNCONNECTED[31:0]),
        .DOBDO({NLW_ram_reg_2_DOBDO_UNCONNECTED[31:4],data2_o[10:7]}),
        .DOPADOP(NLW_ram_reg_2_DOPADOP_UNCONNECTED[3:0]),
        .DOPBDOP(NLW_ram_reg_2_DOPBDOP_UNCONNECTED[3:0]),
        .ECCPARITY(NLW_ram_reg_2_ECCPARITY_UNCONNECTED[7:0]),
        .ENARDEN(WEA),
        .ENBWREN(1'b1),
        .INJECTDBITERR(NLW_ram_reg_2_INJECTDBITERR_UNCONNECTED),
        .INJECTSBITERR(NLW_ram_reg_2_INJECTSBITERR_UNCONNECTED),
        .RDADDRECC(NLW_ram_reg_2_RDADDRECC_UNCONNECTED[8:0]),
        .REGCEAREGCE(1'b0),
        .REGCEB(1'b0),
        .RSTRAMARSTRAM(1'b0),
        .RSTRAMB(1'b0),
        .RSTREGARSTREG(1'b0),
        .RSTREGB(1'b0),
        .SBITERR(NLW_ram_reg_2_SBITERR_UNCONNECTED),
        .WEA({WEA,WEA,WEA,1'b1}),
        .WEBWE({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}));
  (* \MEM.PORTA.DATA_BIT_LAYOUT  = "p0_d4" *) 
  (* \MEM.PORTB.DATA_BIT_LAYOUT  = "p0_d4" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-6 {cell *THIS*}}" *) 
  (* RTL_RAM_BITS = "131072" *) 
  (* RTL_RAM_NAME = "U0/comblock_i/fifo_in_g.fifo_in_i/i_memory/ram_reg_3" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "8191" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "12" *) 
  (* ram_slice_end = "15" *) 
  RAMB36E1 #(
    .DOA_REG(0),
    .DOB_REG(0),
    .EN_ECC_READ("FALSE"),
    .EN_ECC_WRITE("FALSE"),
    .INITP_00(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_01(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_02(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_03(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_04(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_05(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_06(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_07(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_08(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_09(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_00(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_01(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_02(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_03(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_04(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_05(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_06(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_07(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_08(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_09(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_10(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_11(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_12(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_13(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_14(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_15(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_16(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_17(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_18(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_19(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_20(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_21(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_22(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_23(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_24(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_25(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_26(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_27(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_28(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_29(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_30(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_31(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_32(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_33(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_34(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_35(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_36(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_37(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_38(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_39(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_40(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_41(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_42(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_43(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_44(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_45(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_46(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_47(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_48(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_49(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_50(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_51(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_52(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_53(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_54(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_55(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_56(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_57(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_58(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_59(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_60(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_61(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_62(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_63(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_64(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_65(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_66(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_67(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_68(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_69(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_70(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_71(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_72(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_73(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_74(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_75(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_76(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_77(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_78(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_79(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_A(36'h000000000),
    .INIT_B(36'h000000000),
    .RAM_EXTENSION_A("NONE"),
    .RAM_EXTENSION_B("NONE"),
    .RAM_MODE("TDP"),
    .RDADDR_COLLISION_HWCONFIG("DELAYED_WRITE"),
    .READ_WIDTH_A(4),
    .READ_WIDTH_B(4),
    .RSTREG_PRIORITY_A("RSTREG"),
    .RSTREG_PRIORITY_B("RSTREG"),
    .SIM_COLLISION_CHECK("ALL"),
    .SIM_DEVICE("7SERIES"),
    .SRVAL_A(36'h000000000),
    .SRVAL_B(36'h000000000),
    .WRITE_MODE_A("NO_CHANGE"),
    .WRITE_MODE_B("WRITE_FIRST"),
    .WRITE_WIDTH_A(4),
    .WRITE_WIDTH_B(4)) 
    ram_reg_3
       (.ADDRARDADDR({1'b1,wr_ptr_r,1'b0,1'b0}),
        .ADDRBWRADDR({1'b1,rd_ptr_r,ram_reg_3_0,1'b0,1'b0}),
        .CASCADEINA(1'b1),
        .CASCADEINB(1'b1),
        .CASCADEOUTA(NLW_ram_reg_3_CASCADEOUTA_UNCONNECTED),
        .CASCADEOUTB(NLW_ram_reg_3_CASCADEOUTB_UNCONNECTED),
        .CLKARDCLK(fifo_clk_i),
        .CLKBWRCLK(axil_aclk),
        .DBITERR(NLW_ram_reg_3_DBITERR_UNCONNECTED),
        .DIADI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,fifo_data_i[15:12]}),
        .DIBDI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b1,1'b1,1'b1,1'b1}),
        .DIPADIP({1'b0,1'b0,1'b0,1'b0}),
        .DIPBDIP({1'b0,1'b0,1'b0,1'b0}),
        .DOADO(NLW_ram_reg_3_DOADO_UNCONNECTED[31:0]),
        .DOBDO({NLW_ram_reg_3_DOBDO_UNCONNECTED[31:4],data2_o[14:11]}),
        .DOPADOP(NLW_ram_reg_3_DOPADOP_UNCONNECTED[3:0]),
        .DOPBDOP(NLW_ram_reg_3_DOPBDOP_UNCONNECTED[3:0]),
        .ECCPARITY(NLW_ram_reg_3_ECCPARITY_UNCONNECTED[7:0]),
        .ENARDEN(WEA),
        .ENBWREN(1'b1),
        .INJECTDBITERR(NLW_ram_reg_3_INJECTDBITERR_UNCONNECTED),
        .INJECTSBITERR(NLW_ram_reg_3_INJECTSBITERR_UNCONNECTED),
        .RDADDRECC(NLW_ram_reg_3_RDADDRECC_UNCONNECTED[8:0]),
        .REGCEAREGCE(1'b0),
        .REGCEB(1'b0),
        .RSTRAMARSTRAM(1'b0),
        .RSTRAMB(1'b0),
        .RSTREGARSTREG(1'b0),
        .RSTREGB(1'b0),
        .SBITERR(NLW_ram_reg_3_SBITERR_UNCONNECTED),
        .WEA({WEA,WEA,WEA,1'b1}),
        .WEBWE({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}));
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
