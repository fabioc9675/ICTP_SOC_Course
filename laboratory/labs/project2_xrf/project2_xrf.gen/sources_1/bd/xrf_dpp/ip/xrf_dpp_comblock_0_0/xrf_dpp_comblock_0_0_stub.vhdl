-- Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2022.2 (lin64) Build 3671981 Fri Oct 14 04:59:54 MDT 2022
-- Date        : Thu Nov 30 17:25:12 2023
-- Host        : node07 running 64-bit CentOS Linux release 7.4.1708 (Core)
-- Command     : write_vhdl -force -mode synth_stub
--               /home/argo49/smr3891/labs/project2_xrf/project2_xrf.gen/sources_1/bd/xrf_dpp/ip/xrf_dpp_comblock_0_0/xrf_dpp_comblock_0_0_stub.vhdl
-- Design      : xrf_dpp_comblock_0_0
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xc7z020clg484-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity xrf_dpp_comblock_0_0 is
  Port ( 
    reg0_i : in STD_LOGIC_VECTOR ( 31 downto 0 );
    reg1_i : in STD_LOGIC_VECTOR ( 31 downto 0 );
    reg2_i : in STD_LOGIC_VECTOR ( 31 downto 0 );
    reg3_i : in STD_LOGIC_VECTOR ( 31 downto 0 );
    reg0_o : out STD_LOGIC_VECTOR ( 15 downto 0 );
    reg1_o : out STD_LOGIC_VECTOR ( 15 downto 0 );
    reg2_o : out STD_LOGIC_VECTOR ( 15 downto 0 );
    reg3_o : out STD_LOGIC_VECTOR ( 15 downto 0 );
    reg4_o : out STD_LOGIC_VECTOR ( 15 downto 0 );
    reg5_o : out STD_LOGIC_VECTOR ( 15 downto 0 );
    reg6_o : out STD_LOGIC_VECTOR ( 15 downto 0 );
    reg7_o : out STD_LOGIC_VECTOR ( 15 downto 0 );
    ram_clk_i : in STD_LOGIC;
    ram_we_i : in STD_LOGIC;
    ram_addr_i : in STD_LOGIC_VECTOR ( 15 downto 0 );
    ram_data_i : in STD_LOGIC_VECTOR ( 15 downto 0 );
    ram_data_o : out STD_LOGIC_VECTOR ( 15 downto 0 );
    fifo_clk_i : in STD_LOGIC;
    fifo_clear_i : in STD_LOGIC;
    fifo_we_i : in STD_LOGIC;
    fifo_data_i : in STD_LOGIC_VECTOR ( 15 downto 0 );
    fifo_full_o : out STD_LOGIC;
    fifo_afull_o : out STD_LOGIC;
    fifo_overflow_o : out STD_LOGIC;
    fifo_re_i : in STD_LOGIC;
    fifo_data_o : out STD_LOGIC_VECTOR ( 15 downto 0 );
    fifo_valid_o : out STD_LOGIC;
    fifo_empty_o : out STD_LOGIC;
    fifo_aempty_o : out STD_LOGIC;
    fifo_underflow_o : out STD_LOGIC;
    axil_aclk : in STD_LOGIC;
    axil_aresetn : in STD_LOGIC;
    axil_awaddr : in STD_LOGIC_VECTOR ( 7 downto 0 );
    axil_awprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    axil_awvalid : in STD_LOGIC;
    axil_awready : out STD_LOGIC;
    axil_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    axil_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    axil_wvalid : in STD_LOGIC;
    axil_wready : out STD_LOGIC;
    axil_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    axil_bvalid : out STD_LOGIC;
    axil_bready : in STD_LOGIC;
    axil_araddr : in STD_LOGIC_VECTOR ( 7 downto 0 );
    axil_arprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    axil_arvalid : in STD_LOGIC;
    axil_arready : out STD_LOGIC;
    axil_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    axil_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    axil_rvalid : out STD_LOGIC;
    axil_rready : in STD_LOGIC;
    axif_aclk : in STD_LOGIC;
    axif_aresetn : in STD_LOGIC;
    axif_awaddr : in STD_LOGIC_VECTOR ( 17 downto 0 );
    axif_awlen : in STD_LOGIC_VECTOR ( 7 downto 0 );
    axif_awsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    axif_awburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    axif_awlock : in STD_LOGIC;
    axif_awcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    axif_awprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    axif_awqos : in STD_LOGIC_VECTOR ( 3 downto 0 );
    axif_awregion : in STD_LOGIC_VECTOR ( 3 downto 0 );
    axif_awuser : in STD_LOGIC_VECTOR ( 0 to 0 );
    axif_awvalid : in STD_LOGIC;
    axif_awready : out STD_LOGIC;
    axif_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    axif_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    axif_wlast : in STD_LOGIC;
    axif_wuser : in STD_LOGIC_VECTOR ( 0 to 0 );
    axif_wvalid : in STD_LOGIC;
    axif_wready : out STD_LOGIC;
    axif_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    axif_buser : out STD_LOGIC_VECTOR ( 0 to 0 );
    axif_bvalid : out STD_LOGIC;
    axif_bready : in STD_LOGIC;
    axif_araddr : in STD_LOGIC_VECTOR ( 17 downto 0 );
    axif_arlen : in STD_LOGIC_VECTOR ( 7 downto 0 );
    axif_arsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    axif_arburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    axif_arlock : in STD_LOGIC;
    axif_arcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    axif_arprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    axif_arqos : in STD_LOGIC_VECTOR ( 3 downto 0 );
    axif_arregion : in STD_LOGIC_VECTOR ( 3 downto 0 );
    axif_aruser : in STD_LOGIC_VECTOR ( 0 to 0 );
    axif_arvalid : in STD_LOGIC;
    axif_arready : out STD_LOGIC;
    axif_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    axif_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    axif_rlast : out STD_LOGIC;
    axif_ruser : out STD_LOGIC_VECTOR ( 0 to 0 );
    axif_rvalid : out STD_LOGIC;
    axif_rready : in STD_LOGIC
  );

end xrf_dpp_comblock_0_0;

architecture stub of xrf_dpp_comblock_0_0 is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
attribute black_box_pad_pin of stub : architecture is "reg0_i[31:0],reg1_i[31:0],reg2_i[31:0],reg3_i[31:0],reg0_o[15:0],reg1_o[15:0],reg2_o[15:0],reg3_o[15:0],reg4_o[15:0],reg5_o[15:0],reg6_o[15:0],reg7_o[15:0],ram_clk_i,ram_we_i,ram_addr_i[15:0],ram_data_i[15:0],ram_data_o[15:0],fifo_clk_i,fifo_clear_i,fifo_we_i,fifo_data_i[15:0],fifo_full_o,fifo_afull_o,fifo_overflow_o,fifo_re_i,fifo_data_o[15:0],fifo_valid_o,fifo_empty_o,fifo_aempty_o,fifo_underflow_o,axil_aclk,axil_aresetn,axil_awaddr[7:0],axil_awprot[2:0],axil_awvalid,axil_awready,axil_wdata[31:0],axil_wstrb[3:0],axil_wvalid,axil_wready,axil_bresp[1:0],axil_bvalid,axil_bready,axil_araddr[7:0],axil_arprot[2:0],axil_arvalid,axil_arready,axil_rdata[31:0],axil_rresp[1:0],axil_rvalid,axil_rready,axif_aclk,axif_aresetn,axif_awaddr[17:0],axif_awlen[7:0],axif_awsize[2:0],axif_awburst[1:0],axif_awlock,axif_awcache[3:0],axif_awprot[2:0],axif_awqos[3:0],axif_awregion[3:0],axif_awuser[0:0],axif_awvalid,axif_awready,axif_wdata[31:0],axif_wstrb[3:0],axif_wlast,axif_wuser[0:0],axif_wvalid,axif_wready,axif_bresp[1:0],axif_buser[0:0],axif_bvalid,axif_bready,axif_araddr[17:0],axif_arlen[7:0],axif_arsize[2:0],axif_arburst[1:0],axif_arlock,axif_arcache[3:0],axif_arprot[2:0],axif_arqos[3:0],axif_arregion[3:0],axif_aruser[0:0],axif_arvalid,axif_arready,axif_rdata[31:0],axif_rresp[1:0],axif_rlast,axif_ruser[0:0],axif_rvalid,axif_rready";
attribute x_core_info : string;
attribute x_core_info of stub : architecture is "axi_comblock,Vivado 2022.2";
begin
end;
