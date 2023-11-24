//Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2022.2 (lin64) Build 3671981 Fri Oct 14 04:59:54 MDT 2022
//Date        : Fri Nov 24 22:56:58 2023
//Host        : ins45238 running 64-bit Ubuntu 22.04.3 LTS
//Command     : generate_target bd_Lab4_ADC_DAC.bd
//Design      : bd_Lab4_ADC_DAC
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module PMOD_AD1_imp_CD2D1C
   (adc_cs_n,
    adc_data_in,
    adc_re_i,
    adc_sck,
    adc_tdata,
    adc_tvalid_o,
    clk,
    reset_n);
  output [0:0]adc_cs_n;
  input adc_data_in;
  input [31:0]adc_re_i;
  output adc_sck;
  output [15:0]adc_tdata;
  output [0:0]adc_tvalid_o;
  input clk;
  input reset_n;

  wire [31:0]comblock_0_reg0_o;
  wire data_in_0_0_1;
  wire edgeDetector_0_pulseOut;
  wire [11:0]pmod_adc_ad7476a_0_adc_0_data;
  wire [0:0]pmod_adc_ad7476a_0_cs_n;
  wire pmod_adc_ad7476a_0_dataValid;
  wire pmod_adc_ad7476a_0_sck;
  wire processing_system7_0_FCLK_CLK0;
  wire rst_ps7_0_100M_peripheral_aresetn;
  wire [0:0]util_vector_logic_0_Res;
  wire [15:0]xlconcat_0_dout;
  wire [3:0]xlconstant_2_dout;

  assign adc_cs_n[0] = pmod_adc_ad7476a_0_cs_n;
  assign adc_sck = pmod_adc_ad7476a_0_sck;
  assign adc_tdata[15:0] = xlconcat_0_dout;
  assign adc_tvalid_o[0] = util_vector_logic_0_Res;
  assign comblock_0_reg0_o = adc_re_i[31:0];
  assign data_in_0_0_1 = adc_data_in;
  assign processing_system7_0_FCLK_CLK0 = clk;
  assign rst_ps7_0_100M_peripheral_aresetn = reset_n;
  bd_Lab4_ADC_DAC_edgeDetector_0_0 edgeDetector_0
       (.arestn_i(rst_ps7_0_100M_peripheral_aresetn),
        .clk_i(processing_system7_0_FCLK_CLK0),
        .pulseIn(pmod_adc_ad7476a_0_dataValid),
        .pulseOut(edgeDetector_0_pulseOut));
  bd_Lab4_ADC_DAC_pmod_adc_ad7476a_0_0 pmod_adc_ad7476a_0
       (.adc_0_data(pmod_adc_ad7476a_0_adc_0_data),
        .clk(processing_system7_0_FCLK_CLK0),
        .cs_n(pmod_adc_ad7476a_0_cs_n),
        .dataValid(pmod_adc_ad7476a_0_dataValid),
        .data_in_0(data_in_0_0_1),
        .data_in_1(data_in_0_0_1),
        .reset_n(rst_ps7_0_100M_peripheral_aresetn),
        .sck(pmod_adc_ad7476a_0_sck));
  bd_Lab4_ADC_DAC_util_vector_logic_0_0 util_vector_logic_0
       (.Op1(edgeDetector_0_pulseOut),
        .Op2(comblock_0_reg0_o[0]),
        .Res(util_vector_logic_0_Res));
  bd_Lab4_ADC_DAC_xlconcat_0_0 xlconcat_0
       (.In0(pmod_adc_ad7476a_0_adc_0_data),
        .In1(xlconstant_2_dout),
        .dout(xlconcat_0_dout));
  bd_Lab4_ADC_DAC_xlconstant_2_0 xlconstant_2
       (.dout(xlconstant_2_dout));
endmodule

module PMOD_DA1_imp_GVTW4R
   (CLK,
    Op2,
    Q,
    SCLR,
    dac_2_ctrl,
    dac_2_data,
    dac_mosi_a,
    dac_mosi_b,
    dac_sclk,
    dac_ss_n,
    reset_n);
  input CLK;
  input [31:0]Op2;
  output [11:0]Q;
  input SCLR;
  input [31:0]dac_2_ctrl;
  input [7:0]dac_2_data;
  output dac_mosi_a;
  output dac_mosi_b;
  output dac_sclk;
  output [0:0]dac_ss_n;
  input reset_n;

  wire [11:0]c_counter_binary_0_Q;
  wire [7:0]comblock_0_ram_data_o;
  wire [31:0]comblock_0_reg1_o;
  wire [31:0]comblock_0_reg2_o;
  wire pmod_dac_ad7303_0_busy;
  wire pmod_dac_ad7303_0_mosi_0;
  wire pmod_dac_ad7303_0_mosi_1;
  wire pmod_dac_ad7303_0_sclk;
  wire [0:0]pmod_dac_ad7303_0_ss_n;
  wire processing_system7_0_FCLK_CLK0;
  wire rst_ps7_0_100M_peripheral_aresetn;
  wire rst_ps7_0_100M_peripheral_reset;
  wire [0:0]util_vector_logic_0_Res1;
  wire [0:0]util_vector_logic_1_Res;

  assign Q[11:0] = c_counter_binary_0_Q;
  assign comblock_0_ram_data_o = dac_2_data[7:0];
  assign comblock_0_reg1_o = Op2[31:0];
  assign comblock_0_reg2_o = dac_2_ctrl[31:0];
  assign dac_mosi_a = pmod_dac_ad7303_0_mosi_0;
  assign dac_mosi_b = pmod_dac_ad7303_0_mosi_1;
  assign dac_sclk = pmod_dac_ad7303_0_sclk;
  assign dac_ss_n[0] = pmod_dac_ad7303_0_ss_n;
  assign processing_system7_0_FCLK_CLK0 = CLK;
  assign rst_ps7_0_100M_peripheral_aresetn = reset_n;
  assign rst_ps7_0_100M_peripheral_reset = SCLR;
  bd_Lab4_ADC_DAC_c_counter_binary_0_0 c_counter_binary_0
       (.CE(util_vector_logic_1_Res),
        .CLK(processing_system7_0_FCLK_CLK0),
        .Q(c_counter_binary_0_Q),
        .SCLR(rst_ps7_0_100M_peripheral_reset));
  bd_Lab4_ADC_DAC_pmod_dac_ad7303_0_0 pmod_dac_ad7303_0
       (.busy(pmod_dac_ad7303_0_busy),
        .clk(processing_system7_0_FCLK_CLK0),
        .dac_1_ctrl(comblock_0_reg2_o[5:0]),
        .dac_1_data(comblock_0_ram_data_o),
        .dac_2_ctrl(comblock_0_reg2_o[5:0]),
        .dac_2_data(comblock_0_ram_data_o),
        .dac_tx_ena(util_vector_logic_1_Res),
        .mosi_0(pmod_dac_ad7303_0_mosi_0),
        .mosi_1(pmod_dac_ad7303_0_mosi_1),
        .reset_n(rst_ps7_0_100M_peripheral_aresetn),
        .sclk(pmod_dac_ad7303_0_sclk),
        .ss_n(pmod_dac_ad7303_0_ss_n));
  bd_Lab4_ADC_DAC_util_vector_logic_0_1 util_vector_logic_0
       (.Op1(pmod_dac_ad7303_0_busy),
        .Res(util_vector_logic_0_Res1));
  bd_Lab4_ADC_DAC_util_vector_logic_1_0 util_vector_logic_1
       (.Op1(util_vector_logic_0_Res1),
        .Op2(comblock_0_reg1_o[0]),
        .Res(util_vector_logic_1_Res));
endmodule

(* CORE_GENERATION_INFO = "bd_Lab4_ADC_DAC,IP_Integrator,{x_ipVendor=xilinx.com,x_ipLibrary=BlockDiagram,x_ipName=bd_Lab4_ADC_DAC,x_ipVersion=1.00.a,x_ipLanguage=VERILOG,numBlks=21,numReposBlks=19,numNonXlnxBlks=1,numHierBlks=2,maxHierDepth=1,numSysgenBlks=0,numHlsBlks=1,numHdlrefBlks=3,numPkgbdBlks=0,bdsource=USER,synth_mode=Global}" *) (* HW_HANDOFF = "bd_Lab4_ADC_DAC.hwdef" *) 
module bd_Lab4_ADC_DAC
   (DDR_addr,
    DDR_ba,
    DDR_cas_n,
    DDR_ck_n,
    DDR_ck_p,
    DDR_cke,
    DDR_cs_n,
    DDR_dm,
    DDR_dq,
    DDR_dqs_n,
    DDR_dqs_p,
    DDR_odt,
    DDR_ras_n,
    DDR_reset_n,
    DDR_we_n,
    FIXED_IO_ddr_vrn,
    FIXED_IO_ddr_vrp,
    FIXED_IO_mio,
    FIXED_IO_ps_clk,
    FIXED_IO_ps_porb,
    FIXED_IO_ps_srstb,
    adc_cs_n,
    adc_data_in,
    adc_sck,
    dac_mosi_a,
    dac_mosi_b,
    dac_sclk,
    dac_ss_n);
  (* X_INTERFACE_INFO = "xilinx.com:interface:ddrx:1.0 DDR ADDR" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME DDR, AXI_ARBITRATION_SCHEME TDM, BURST_LENGTH 8, CAN_DEBUG false, CAS_LATENCY 11, CAS_WRITE_LATENCY 11, CS_ENABLED true, DATA_MASK_ENABLED true, DATA_WIDTH 8, MEMORY_TYPE COMPONENTS, MEM_ADDR_MAP ROW_COLUMN_BANK, SLOT Single, TIMEPERIOD_PS 1250" *) inout [14:0]DDR_addr;
  (* X_INTERFACE_INFO = "xilinx.com:interface:ddrx:1.0 DDR BA" *) inout [2:0]DDR_ba;
  (* X_INTERFACE_INFO = "xilinx.com:interface:ddrx:1.0 DDR CAS_N" *) inout DDR_cas_n;
  (* X_INTERFACE_INFO = "xilinx.com:interface:ddrx:1.0 DDR CK_N" *) inout DDR_ck_n;
  (* X_INTERFACE_INFO = "xilinx.com:interface:ddrx:1.0 DDR CK_P" *) inout DDR_ck_p;
  (* X_INTERFACE_INFO = "xilinx.com:interface:ddrx:1.0 DDR CKE" *) inout DDR_cke;
  (* X_INTERFACE_INFO = "xilinx.com:interface:ddrx:1.0 DDR CS_N" *) inout DDR_cs_n;
  (* X_INTERFACE_INFO = "xilinx.com:interface:ddrx:1.0 DDR DM" *) inout [3:0]DDR_dm;
  (* X_INTERFACE_INFO = "xilinx.com:interface:ddrx:1.0 DDR DQ" *) inout [31:0]DDR_dq;
  (* X_INTERFACE_INFO = "xilinx.com:interface:ddrx:1.0 DDR DQS_N" *) inout [3:0]DDR_dqs_n;
  (* X_INTERFACE_INFO = "xilinx.com:interface:ddrx:1.0 DDR DQS_P" *) inout [3:0]DDR_dqs_p;
  (* X_INTERFACE_INFO = "xilinx.com:interface:ddrx:1.0 DDR ODT" *) inout DDR_odt;
  (* X_INTERFACE_INFO = "xilinx.com:interface:ddrx:1.0 DDR RAS_N" *) inout DDR_ras_n;
  (* X_INTERFACE_INFO = "xilinx.com:interface:ddrx:1.0 DDR RESET_N" *) inout DDR_reset_n;
  (* X_INTERFACE_INFO = "xilinx.com:interface:ddrx:1.0 DDR WE_N" *) inout DDR_we_n;
  (* X_INTERFACE_INFO = "xilinx.com:display_processing_system7:fixedio:1.0 FIXED_IO DDR_VRN" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME FIXED_IO, CAN_DEBUG false" *) inout FIXED_IO_ddr_vrn;
  (* X_INTERFACE_INFO = "xilinx.com:display_processing_system7:fixedio:1.0 FIXED_IO DDR_VRP" *) inout FIXED_IO_ddr_vrp;
  (* X_INTERFACE_INFO = "xilinx.com:display_processing_system7:fixedio:1.0 FIXED_IO MIO" *) inout [53:0]FIXED_IO_mio;
  (* X_INTERFACE_INFO = "xilinx.com:display_processing_system7:fixedio:1.0 FIXED_IO PS_CLK" *) inout FIXED_IO_ps_clk;
  (* X_INTERFACE_INFO = "xilinx.com:display_processing_system7:fixedio:1.0 FIXED_IO PS_PORB" *) inout FIXED_IO_ps_porb;
  (* X_INTERFACE_INFO = "xilinx.com:display_processing_system7:fixedio:1.0 FIXED_IO PS_SRSTB" *) inout FIXED_IO_ps_srstb;
  output [0:0]adc_cs_n;
  input adc_data_in;
  output adc_sck;
  output dac_mosi_a;
  output dac_mosi_b;
  output dac_sclk;
  output [0:0]dac_ss_n;

  wire [13:0]axi_smc_M00_AXI_ARADDR;
  wire [1:0]axi_smc_M00_AXI_ARBURST;
  wire [3:0]axi_smc_M00_AXI_ARCACHE;
  wire [7:0]axi_smc_M00_AXI_ARLEN;
  wire [0:0]axi_smc_M00_AXI_ARLOCK;
  wire [2:0]axi_smc_M00_AXI_ARPROT;
  wire [3:0]axi_smc_M00_AXI_ARQOS;
  wire axi_smc_M00_AXI_ARREADY;
  wire [2:0]axi_smc_M00_AXI_ARSIZE;
  wire axi_smc_M00_AXI_ARVALID;
  wire [13:0]axi_smc_M00_AXI_AWADDR;
  wire [1:0]axi_smc_M00_AXI_AWBURST;
  wire [3:0]axi_smc_M00_AXI_AWCACHE;
  wire [7:0]axi_smc_M00_AXI_AWLEN;
  wire [0:0]axi_smc_M00_AXI_AWLOCK;
  wire [2:0]axi_smc_M00_AXI_AWPROT;
  wire [3:0]axi_smc_M00_AXI_AWQOS;
  wire axi_smc_M00_AXI_AWREADY;
  wire [2:0]axi_smc_M00_AXI_AWSIZE;
  wire axi_smc_M00_AXI_AWVALID;
  wire axi_smc_M00_AXI_BREADY;
  wire [1:0]axi_smc_M00_AXI_BRESP;
  wire axi_smc_M00_AXI_BVALID;
  wire [31:0]axi_smc_M00_AXI_RDATA;
  wire axi_smc_M00_AXI_RLAST;
  wire axi_smc_M00_AXI_RREADY;
  wire [1:0]axi_smc_M00_AXI_RRESP;
  wire axi_smc_M00_AXI_RVALID;
  wire [31:0]axi_smc_M00_AXI_WDATA;
  wire axi_smc_M00_AXI_WLAST;
  wire axi_smc_M00_AXI_WREADY;
  wire [3:0]axi_smc_M00_AXI_WSTRB;
  wire axi_smc_M00_AXI_WVALID;
  wire [7:0]axi_smc_M01_AXI_ARADDR;
  wire [2:0]axi_smc_M01_AXI_ARPROT;
  wire axi_smc_M01_AXI_ARREADY;
  wire axi_smc_M01_AXI_ARVALID;
  wire [7:0]axi_smc_M01_AXI_AWADDR;
  wire [2:0]axi_smc_M01_AXI_AWPROT;
  wire axi_smc_M01_AXI_AWREADY;
  wire axi_smc_M01_AXI_AWVALID;
  wire axi_smc_M01_AXI_BREADY;
  wire [1:0]axi_smc_M01_AXI_BRESP;
  wire axi_smc_M01_AXI_BVALID;
  wire [31:0]axi_smc_M01_AXI_RDATA;
  wire axi_smc_M01_AXI_RREADY;
  wire [1:0]axi_smc_M01_AXI_RRESP;
  wire axi_smc_M01_AXI_RVALID;
  wire [31:0]axi_smc_M01_AXI_WDATA;
  wire axi_smc_M01_AXI_WREADY;
  wire [3:0]axi_smc_M01_AXI_WSTRB;
  wire axi_smc_M01_AXI_WVALID;
  wire [11:0]c_counter_binary_0_Q;
  wire clk_wiz_0_locked;
  wire comblock_0_fifo_afull_o;
  wire [7:0]comblock_0_ram_data_o;
  wire [31:0]comblock_0_reg0_o;
  wire [31:0]comblock_0_reg1_o;
  wire [31:0]comblock_0_reg2_o;
  wire data_in_0_0_1;
  wire [31:0]fir_1_y_TDATA;
  wire fir_1_y_TVALID;
  wire [0:0]pmod_adc_ad7476a_0_cs_n;
  wire pmod_adc_ad7476a_0_sck;
  wire pmod_dac_ad7303_0_mosi_0;
  wire pmod_dac_ad7303_0_mosi_1;
  wire pmod_dac_ad7303_0_sclk;
  wire [0:0]pmod_dac_ad7303_0_ss_n;
  wire [14:0]processing_system7_0_DDR_ADDR;
  wire [2:0]processing_system7_0_DDR_BA;
  wire processing_system7_0_DDR_CAS_N;
  wire processing_system7_0_DDR_CKE;
  wire processing_system7_0_DDR_CK_N;
  wire processing_system7_0_DDR_CK_P;
  wire processing_system7_0_DDR_CS_N;
  wire [3:0]processing_system7_0_DDR_DM;
  wire [31:0]processing_system7_0_DDR_DQ;
  wire [3:0]processing_system7_0_DDR_DQS_N;
  wire [3:0]processing_system7_0_DDR_DQS_P;
  wire processing_system7_0_DDR_ODT;
  wire processing_system7_0_DDR_RAS_N;
  wire processing_system7_0_DDR_RESET_N;
  wire processing_system7_0_DDR_WE_N;
  wire processing_system7_0_FCLK_CLK0;
  wire processing_system7_0_FCLK_CLK1;
  wire processing_system7_0_FCLK_RESET0_N;
  wire processing_system7_0_FIXED_IO_DDR_VRN;
  wire processing_system7_0_FIXED_IO_DDR_VRP;
  wire [53:0]processing_system7_0_FIXED_IO_MIO;
  wire processing_system7_0_FIXED_IO_PS_CLK;
  wire processing_system7_0_FIXED_IO_PS_PORB;
  wire processing_system7_0_FIXED_IO_PS_SRSTB;
  wire [31:0]processing_system7_0_M_AXI_GP0_ARADDR;
  wire [1:0]processing_system7_0_M_AXI_GP0_ARBURST;
  wire [3:0]processing_system7_0_M_AXI_GP0_ARCACHE;
  wire [11:0]processing_system7_0_M_AXI_GP0_ARID;
  wire [3:0]processing_system7_0_M_AXI_GP0_ARLEN;
  wire [1:0]processing_system7_0_M_AXI_GP0_ARLOCK;
  wire [2:0]processing_system7_0_M_AXI_GP0_ARPROT;
  wire [3:0]processing_system7_0_M_AXI_GP0_ARQOS;
  wire processing_system7_0_M_AXI_GP0_ARREADY;
  wire [2:0]processing_system7_0_M_AXI_GP0_ARSIZE;
  wire processing_system7_0_M_AXI_GP0_ARVALID;
  wire [31:0]processing_system7_0_M_AXI_GP0_AWADDR;
  wire [1:0]processing_system7_0_M_AXI_GP0_AWBURST;
  wire [3:0]processing_system7_0_M_AXI_GP0_AWCACHE;
  wire [11:0]processing_system7_0_M_AXI_GP0_AWID;
  wire [3:0]processing_system7_0_M_AXI_GP0_AWLEN;
  wire [1:0]processing_system7_0_M_AXI_GP0_AWLOCK;
  wire [2:0]processing_system7_0_M_AXI_GP0_AWPROT;
  wire [3:0]processing_system7_0_M_AXI_GP0_AWQOS;
  wire processing_system7_0_M_AXI_GP0_AWREADY;
  wire [2:0]processing_system7_0_M_AXI_GP0_AWSIZE;
  wire processing_system7_0_M_AXI_GP0_AWVALID;
  wire [11:0]processing_system7_0_M_AXI_GP0_BID;
  wire processing_system7_0_M_AXI_GP0_BREADY;
  wire [1:0]processing_system7_0_M_AXI_GP0_BRESP;
  wire processing_system7_0_M_AXI_GP0_BVALID;
  wire [31:0]processing_system7_0_M_AXI_GP0_RDATA;
  wire [11:0]processing_system7_0_M_AXI_GP0_RID;
  wire processing_system7_0_M_AXI_GP0_RLAST;
  wire processing_system7_0_M_AXI_GP0_RREADY;
  wire [1:0]processing_system7_0_M_AXI_GP0_RRESP;
  wire processing_system7_0_M_AXI_GP0_RVALID;
  wire [31:0]processing_system7_0_M_AXI_GP0_WDATA;
  wire [11:0]processing_system7_0_M_AXI_GP0_WID;
  wire processing_system7_0_M_AXI_GP0_WLAST;
  wire processing_system7_0_M_AXI_GP0_WREADY;
  wire [3:0]processing_system7_0_M_AXI_GP0_WSTRB;
  wire processing_system7_0_M_AXI_GP0_WVALID;
  wire [0:0]rst_ps7_0_100M_peripheral_aresetn;
  wire [0:0]rst_ps7_0_100M_peripheral_reset;
  wire [15:0]s_axis_tdata_1;
  wire [0:0]util_vector_logic_0_Res;
  wire [0:0]util_vector_logic_0_Res1;
  wire [0:0]xlconstant_0_dout;
  wire [0:0]xlconstant_1_dout;
  wire [0:0]xlconstant_2_dout;

  assign adc_cs_n[0] = pmod_adc_ad7476a_0_cs_n;
  assign adc_sck = pmod_adc_ad7476a_0_sck;
  assign dac_mosi_a = pmod_dac_ad7303_0_mosi_0;
  assign dac_mosi_b = pmod_dac_ad7303_0_mosi_1;
  assign dac_sclk = pmod_dac_ad7303_0_sclk;
  assign dac_ss_n[0] = pmod_dac_ad7303_0_ss_n;
  assign data_in_0_0_1 = adc_data_in;
  PMOD_AD1_imp_CD2D1C PMOD_AD1
       (.adc_cs_n(pmod_adc_ad7476a_0_cs_n),
        .adc_data_in(data_in_0_0_1),
        .adc_re_i(comblock_0_reg0_o),
        .adc_sck(pmod_adc_ad7476a_0_sck),
        .adc_tdata(s_axis_tdata_1),
        .adc_tvalid_o(util_vector_logic_0_Res),
        .clk(processing_system7_0_FCLK_CLK0),
        .reset_n(rst_ps7_0_100M_peripheral_aresetn));
  PMOD_DA1_imp_GVTW4R PMOD_DA1
       (.CLK(processing_system7_0_FCLK_CLK0),
        .Op2(comblock_0_reg1_o),
        .Q(c_counter_binary_0_Q),
        .SCLR(rst_ps7_0_100M_peripheral_reset),
        .dac_2_ctrl(comblock_0_reg2_o),
        .dac_2_data(comblock_0_ram_data_o),
        .dac_mosi_a(pmod_dac_ad7303_0_mosi_0),
        .dac_mosi_b(pmod_dac_ad7303_0_mosi_1),
        .dac_sclk(pmod_dac_ad7303_0_sclk),
        .dac_ss_n(pmod_dac_ad7303_0_ss_n),
        .reset_n(rst_ps7_0_100M_peripheral_aresetn));
  bd_Lab4_ADC_DAC_axi_smc_0 axi_smc
       (.M00_AXI_araddr(axi_smc_M00_AXI_ARADDR),
        .M00_AXI_arburst(axi_smc_M00_AXI_ARBURST),
        .M00_AXI_arcache(axi_smc_M00_AXI_ARCACHE),
        .M00_AXI_arlen(axi_smc_M00_AXI_ARLEN),
        .M00_AXI_arlock(axi_smc_M00_AXI_ARLOCK),
        .M00_AXI_arprot(axi_smc_M00_AXI_ARPROT),
        .M00_AXI_arqos(axi_smc_M00_AXI_ARQOS),
        .M00_AXI_arready(axi_smc_M00_AXI_ARREADY),
        .M00_AXI_arsize(axi_smc_M00_AXI_ARSIZE),
        .M00_AXI_arvalid(axi_smc_M00_AXI_ARVALID),
        .M00_AXI_awaddr(axi_smc_M00_AXI_AWADDR),
        .M00_AXI_awburst(axi_smc_M00_AXI_AWBURST),
        .M00_AXI_awcache(axi_smc_M00_AXI_AWCACHE),
        .M00_AXI_awlen(axi_smc_M00_AXI_AWLEN),
        .M00_AXI_awlock(axi_smc_M00_AXI_AWLOCK),
        .M00_AXI_awprot(axi_smc_M00_AXI_AWPROT),
        .M00_AXI_awqos(axi_smc_M00_AXI_AWQOS),
        .M00_AXI_awready(axi_smc_M00_AXI_AWREADY),
        .M00_AXI_awsize(axi_smc_M00_AXI_AWSIZE),
        .M00_AXI_awvalid(axi_smc_M00_AXI_AWVALID),
        .M00_AXI_bready(axi_smc_M00_AXI_BREADY),
        .M00_AXI_bresp(axi_smc_M00_AXI_BRESP),
        .M00_AXI_bvalid(axi_smc_M00_AXI_BVALID),
        .M00_AXI_rdata(axi_smc_M00_AXI_RDATA),
        .M00_AXI_rlast(axi_smc_M00_AXI_RLAST),
        .M00_AXI_rready(axi_smc_M00_AXI_RREADY),
        .M00_AXI_rresp(axi_smc_M00_AXI_RRESP),
        .M00_AXI_rvalid(axi_smc_M00_AXI_RVALID),
        .M00_AXI_wdata(axi_smc_M00_AXI_WDATA),
        .M00_AXI_wlast(axi_smc_M00_AXI_WLAST),
        .M00_AXI_wready(axi_smc_M00_AXI_WREADY),
        .M00_AXI_wstrb(axi_smc_M00_AXI_WSTRB),
        .M00_AXI_wvalid(axi_smc_M00_AXI_WVALID),
        .M01_AXI_araddr(axi_smc_M01_AXI_ARADDR),
        .M01_AXI_arprot(axi_smc_M01_AXI_ARPROT),
        .M01_AXI_arready(axi_smc_M01_AXI_ARREADY),
        .M01_AXI_arvalid(axi_smc_M01_AXI_ARVALID),
        .M01_AXI_awaddr(axi_smc_M01_AXI_AWADDR),
        .M01_AXI_awprot(axi_smc_M01_AXI_AWPROT),
        .M01_AXI_awready(axi_smc_M01_AXI_AWREADY),
        .M01_AXI_awvalid(axi_smc_M01_AXI_AWVALID),
        .M01_AXI_bready(axi_smc_M01_AXI_BREADY),
        .M01_AXI_bresp(axi_smc_M01_AXI_BRESP),
        .M01_AXI_bvalid(axi_smc_M01_AXI_BVALID),
        .M01_AXI_rdata(axi_smc_M01_AXI_RDATA),
        .M01_AXI_rready(axi_smc_M01_AXI_RREADY),
        .M01_AXI_rresp(axi_smc_M01_AXI_RRESP),
        .M01_AXI_rvalid(axi_smc_M01_AXI_RVALID),
        .M01_AXI_wdata(axi_smc_M01_AXI_WDATA),
        .M01_AXI_wready(axi_smc_M01_AXI_WREADY),
        .M01_AXI_wstrb(axi_smc_M01_AXI_WSTRB),
        .M01_AXI_wvalid(axi_smc_M01_AXI_WVALID),
        .S00_AXI_araddr(processing_system7_0_M_AXI_GP0_ARADDR),
        .S00_AXI_arburst(processing_system7_0_M_AXI_GP0_ARBURST),
        .S00_AXI_arcache(processing_system7_0_M_AXI_GP0_ARCACHE),
        .S00_AXI_arid(processing_system7_0_M_AXI_GP0_ARID),
        .S00_AXI_arlen(processing_system7_0_M_AXI_GP0_ARLEN),
        .S00_AXI_arlock(processing_system7_0_M_AXI_GP0_ARLOCK),
        .S00_AXI_arprot(processing_system7_0_M_AXI_GP0_ARPROT),
        .S00_AXI_arqos(processing_system7_0_M_AXI_GP0_ARQOS),
        .S00_AXI_arready(processing_system7_0_M_AXI_GP0_ARREADY),
        .S00_AXI_arsize(processing_system7_0_M_AXI_GP0_ARSIZE),
        .S00_AXI_arvalid(processing_system7_0_M_AXI_GP0_ARVALID),
        .S00_AXI_awaddr(processing_system7_0_M_AXI_GP0_AWADDR),
        .S00_AXI_awburst(processing_system7_0_M_AXI_GP0_AWBURST),
        .S00_AXI_awcache(processing_system7_0_M_AXI_GP0_AWCACHE),
        .S00_AXI_awid(processing_system7_0_M_AXI_GP0_AWID),
        .S00_AXI_awlen(processing_system7_0_M_AXI_GP0_AWLEN),
        .S00_AXI_awlock(processing_system7_0_M_AXI_GP0_AWLOCK),
        .S00_AXI_awprot(processing_system7_0_M_AXI_GP0_AWPROT),
        .S00_AXI_awqos(processing_system7_0_M_AXI_GP0_AWQOS),
        .S00_AXI_awready(processing_system7_0_M_AXI_GP0_AWREADY),
        .S00_AXI_awsize(processing_system7_0_M_AXI_GP0_AWSIZE),
        .S00_AXI_awvalid(processing_system7_0_M_AXI_GP0_AWVALID),
        .S00_AXI_bid(processing_system7_0_M_AXI_GP0_BID),
        .S00_AXI_bready(processing_system7_0_M_AXI_GP0_BREADY),
        .S00_AXI_bresp(processing_system7_0_M_AXI_GP0_BRESP),
        .S00_AXI_bvalid(processing_system7_0_M_AXI_GP0_BVALID),
        .S00_AXI_rdata(processing_system7_0_M_AXI_GP0_RDATA),
        .S00_AXI_rid(processing_system7_0_M_AXI_GP0_RID),
        .S00_AXI_rlast(processing_system7_0_M_AXI_GP0_RLAST),
        .S00_AXI_rready(processing_system7_0_M_AXI_GP0_RREADY),
        .S00_AXI_rresp(processing_system7_0_M_AXI_GP0_RRESP),
        .S00_AXI_rvalid(processing_system7_0_M_AXI_GP0_RVALID),
        .S00_AXI_wdata(processing_system7_0_M_AXI_GP0_WDATA),
        .S00_AXI_wid(processing_system7_0_M_AXI_GP0_WID),
        .S00_AXI_wlast(processing_system7_0_M_AXI_GP0_WLAST),
        .S00_AXI_wready(processing_system7_0_M_AXI_GP0_WREADY),
        .S00_AXI_wstrb(processing_system7_0_M_AXI_GP0_WSTRB),
        .S00_AXI_wvalid(processing_system7_0_M_AXI_GP0_WVALID),
        .aclk(processing_system7_0_FCLK_CLK0),
        .aresetn(rst_ps7_0_100M_peripheral_aresetn));
  bd_Lab4_ADC_DAC_clk_wiz_0_0 clk_wiz_0
       (.clk_120MHz(processing_system7_0_FCLK_CLK0),
        .clk_in1(processing_system7_0_FCLK_CLK1),
        .locked(clk_wiz_0_locked),
        .resetn(processing_system7_0_FCLK_RESET0_N));
  bd_Lab4_ADC_DAC_comblock_0_0 comblock_0
       (.axif_aclk(processing_system7_0_FCLK_CLK0),
        .axif_araddr(axi_smc_M00_AXI_ARADDR),
        .axif_arburst(axi_smc_M00_AXI_ARBURST),
        .axif_arcache(axi_smc_M00_AXI_ARCACHE),
        .axif_aresetn(rst_ps7_0_100M_peripheral_aresetn),
        .axif_arlen(axi_smc_M00_AXI_ARLEN),
        .axif_arlock(axi_smc_M00_AXI_ARLOCK),
        .axif_arprot(axi_smc_M00_AXI_ARPROT),
        .axif_arqos(axi_smc_M00_AXI_ARQOS),
        .axif_arready(axi_smc_M00_AXI_ARREADY),
        .axif_arregion({1'b0,1'b0,1'b0,1'b0}),
        .axif_arsize(axi_smc_M00_AXI_ARSIZE),
        .axif_aruser(1'b0),
        .axif_arvalid(axi_smc_M00_AXI_ARVALID),
        .axif_awaddr(axi_smc_M00_AXI_AWADDR),
        .axif_awburst(axi_smc_M00_AXI_AWBURST),
        .axif_awcache(axi_smc_M00_AXI_AWCACHE),
        .axif_awlen(axi_smc_M00_AXI_AWLEN),
        .axif_awlock(axi_smc_M00_AXI_AWLOCK),
        .axif_awprot(axi_smc_M00_AXI_AWPROT),
        .axif_awqos(axi_smc_M00_AXI_AWQOS),
        .axif_awready(axi_smc_M00_AXI_AWREADY),
        .axif_awregion({1'b0,1'b0,1'b0,1'b0}),
        .axif_awsize(axi_smc_M00_AXI_AWSIZE),
        .axif_awuser(1'b0),
        .axif_awvalid(axi_smc_M00_AXI_AWVALID),
        .axif_bready(axi_smc_M00_AXI_BREADY),
        .axif_bresp(axi_smc_M00_AXI_BRESP),
        .axif_bvalid(axi_smc_M00_AXI_BVALID),
        .axif_rdata(axi_smc_M00_AXI_RDATA),
        .axif_rlast(axi_smc_M00_AXI_RLAST),
        .axif_rready(axi_smc_M00_AXI_RREADY),
        .axif_rresp(axi_smc_M00_AXI_RRESP),
        .axif_rvalid(axi_smc_M00_AXI_RVALID),
        .axif_wdata(axi_smc_M00_AXI_WDATA),
        .axif_wlast(axi_smc_M00_AXI_WLAST),
        .axif_wready(axi_smc_M00_AXI_WREADY),
        .axif_wstrb(axi_smc_M00_AXI_WSTRB),
        .axif_wuser(1'b0),
        .axif_wvalid(axi_smc_M00_AXI_WVALID),
        .axil_aclk(processing_system7_0_FCLK_CLK0),
        .axil_araddr(axi_smc_M01_AXI_ARADDR),
        .axil_aresetn(rst_ps7_0_100M_peripheral_aresetn),
        .axil_arprot(axi_smc_M01_AXI_ARPROT),
        .axil_arready(axi_smc_M01_AXI_ARREADY),
        .axil_arvalid(axi_smc_M01_AXI_ARVALID),
        .axil_awaddr(axi_smc_M01_AXI_AWADDR),
        .axil_awprot(axi_smc_M01_AXI_AWPROT),
        .axil_awready(axi_smc_M01_AXI_AWREADY),
        .axil_awvalid(axi_smc_M01_AXI_AWVALID),
        .axil_bready(axi_smc_M01_AXI_BREADY),
        .axil_bresp(axi_smc_M01_AXI_BRESP),
        .axil_bvalid(axi_smc_M01_AXI_BVALID),
        .axil_rdata(axi_smc_M01_AXI_RDATA),
        .axil_rready(axi_smc_M01_AXI_RREADY),
        .axil_rresp(axi_smc_M01_AXI_RRESP),
        .axil_rvalid(axi_smc_M01_AXI_RVALID),
        .axil_wdata(axi_smc_M01_AXI_WDATA),
        .axil_wready(axi_smc_M01_AXI_WREADY),
        .axil_wstrb(axi_smc_M01_AXI_WSTRB),
        .axil_wvalid(axi_smc_M01_AXI_WVALID),
        .fifo_afull_o(comblock_0_fifo_afull_o),
        .fifo_clear_i(xlconstant_0_dout),
        .fifo_clk_i(processing_system7_0_FCLK_CLK0),
        .fifo_data_i(fir_1_y_TDATA[15:0]),
        .fifo_we_i(fir_1_y_TVALID),
        .ram_addr_i(c_counter_binary_0_Q),
        .ram_clk_i(processing_system7_0_FCLK_CLK0),
        .ram_data_i({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .ram_data_o(comblock_0_ram_data_o),
        .ram_we_i(xlconstant_1_dout),
        .reg0_o(comblock_0_reg0_o),
        .reg1_o(comblock_0_reg1_o),
        .reg2_o(comblock_0_reg2_o));
  bd_Lab4_ADC_DAC_fir_1_0 fir_0
       (.ap_clk(processing_system7_0_FCLK_CLK0),
        .ap_rst_n(rst_ps7_0_100M_peripheral_aresetn),
        .ap_start(xlconstant_2_dout),
        .x_TDATA({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,s_axis_tdata_1}),
        .x_TVALID(util_vector_logic_0_Res),
        .y_TDATA(fir_1_y_TDATA),
        .y_TREADY(util_vector_logic_0_Res1),
        .y_TVALID(fir_1_y_TVALID));
  bd_Lab4_ADC_DAC_processing_system7_0_0 processing_system7_0
       (.DDR_Addr(DDR_addr[14:0]),
        .DDR_BankAddr(DDR_ba[2:0]),
        .DDR_CAS_n(DDR_cas_n),
        .DDR_CKE(DDR_cke),
        .DDR_CS_n(DDR_cs_n),
        .DDR_Clk(DDR_ck_p),
        .DDR_Clk_n(DDR_ck_n),
        .DDR_DM(DDR_dm[3:0]),
        .DDR_DQ(DDR_dq[31:0]),
        .DDR_DQS(DDR_dqs_p[3:0]),
        .DDR_DQS_n(DDR_dqs_n[3:0]),
        .DDR_DRSTB(DDR_reset_n),
        .DDR_ODT(DDR_odt),
        .DDR_RAS_n(DDR_ras_n),
        .DDR_VRN(FIXED_IO_ddr_vrn),
        .DDR_VRP(FIXED_IO_ddr_vrp),
        .DDR_WEB(DDR_we_n),
        .FCLK_CLK0(processing_system7_0_FCLK_CLK1),
        .FCLK_RESET0_N(processing_system7_0_FCLK_RESET0_N),
        .MIO(FIXED_IO_mio[53:0]),
        .M_AXI_GP0_ACLK(processing_system7_0_FCLK_CLK0),
        .M_AXI_GP0_ARADDR(processing_system7_0_M_AXI_GP0_ARADDR),
        .M_AXI_GP0_ARBURST(processing_system7_0_M_AXI_GP0_ARBURST),
        .M_AXI_GP0_ARCACHE(processing_system7_0_M_AXI_GP0_ARCACHE),
        .M_AXI_GP0_ARID(processing_system7_0_M_AXI_GP0_ARID),
        .M_AXI_GP0_ARLEN(processing_system7_0_M_AXI_GP0_ARLEN),
        .M_AXI_GP0_ARLOCK(processing_system7_0_M_AXI_GP0_ARLOCK),
        .M_AXI_GP0_ARPROT(processing_system7_0_M_AXI_GP0_ARPROT),
        .M_AXI_GP0_ARQOS(processing_system7_0_M_AXI_GP0_ARQOS),
        .M_AXI_GP0_ARREADY(processing_system7_0_M_AXI_GP0_ARREADY),
        .M_AXI_GP0_ARSIZE(processing_system7_0_M_AXI_GP0_ARSIZE),
        .M_AXI_GP0_ARVALID(processing_system7_0_M_AXI_GP0_ARVALID),
        .M_AXI_GP0_AWADDR(processing_system7_0_M_AXI_GP0_AWADDR),
        .M_AXI_GP0_AWBURST(processing_system7_0_M_AXI_GP0_AWBURST),
        .M_AXI_GP0_AWCACHE(processing_system7_0_M_AXI_GP0_AWCACHE),
        .M_AXI_GP0_AWID(processing_system7_0_M_AXI_GP0_AWID),
        .M_AXI_GP0_AWLEN(processing_system7_0_M_AXI_GP0_AWLEN),
        .M_AXI_GP0_AWLOCK(processing_system7_0_M_AXI_GP0_AWLOCK),
        .M_AXI_GP0_AWPROT(processing_system7_0_M_AXI_GP0_AWPROT),
        .M_AXI_GP0_AWQOS(processing_system7_0_M_AXI_GP0_AWQOS),
        .M_AXI_GP0_AWREADY(processing_system7_0_M_AXI_GP0_AWREADY),
        .M_AXI_GP0_AWSIZE(processing_system7_0_M_AXI_GP0_AWSIZE),
        .M_AXI_GP0_AWVALID(processing_system7_0_M_AXI_GP0_AWVALID),
        .M_AXI_GP0_BID(processing_system7_0_M_AXI_GP0_BID),
        .M_AXI_GP0_BREADY(processing_system7_0_M_AXI_GP0_BREADY),
        .M_AXI_GP0_BRESP(processing_system7_0_M_AXI_GP0_BRESP),
        .M_AXI_GP0_BVALID(processing_system7_0_M_AXI_GP0_BVALID),
        .M_AXI_GP0_RDATA(processing_system7_0_M_AXI_GP0_RDATA),
        .M_AXI_GP0_RID(processing_system7_0_M_AXI_GP0_RID),
        .M_AXI_GP0_RLAST(processing_system7_0_M_AXI_GP0_RLAST),
        .M_AXI_GP0_RREADY(processing_system7_0_M_AXI_GP0_RREADY),
        .M_AXI_GP0_RRESP(processing_system7_0_M_AXI_GP0_RRESP),
        .M_AXI_GP0_RVALID(processing_system7_0_M_AXI_GP0_RVALID),
        .M_AXI_GP0_WDATA(processing_system7_0_M_AXI_GP0_WDATA),
        .M_AXI_GP0_WID(processing_system7_0_M_AXI_GP0_WID),
        .M_AXI_GP0_WLAST(processing_system7_0_M_AXI_GP0_WLAST),
        .M_AXI_GP0_WREADY(processing_system7_0_M_AXI_GP0_WREADY),
        .M_AXI_GP0_WSTRB(processing_system7_0_M_AXI_GP0_WSTRB),
        .M_AXI_GP0_WVALID(processing_system7_0_M_AXI_GP0_WVALID),
        .PS_CLK(FIXED_IO_ps_clk),
        .PS_PORB(FIXED_IO_ps_porb),
        .PS_SRSTB(FIXED_IO_ps_srstb));
  bd_Lab4_ADC_DAC_rst_ps7_0_100M_0 rst_ps7_0_100M
       (.aux_reset_in(1'b1),
        .dcm_locked(clk_wiz_0_locked),
        .ext_reset_in(processing_system7_0_FCLK_RESET0_N),
        .mb_debug_sys_rst(1'b0),
        .peripheral_aresetn(rst_ps7_0_100M_peripheral_aresetn),
        .peripheral_reset(rst_ps7_0_100M_peripheral_reset),
        .slowest_sync_clk(processing_system7_0_FCLK_CLK0));
  bd_Lab4_ADC_DAC_util_vector_logic_0_2 util_vector_logic_0
       (.Op1(comblock_0_fifo_afull_o),
        .Res(util_vector_logic_0_Res1));
  bd_Lab4_ADC_DAC_xlconstant_0_0 xlconstant_0
       (.dout(xlconstant_0_dout));
  bd_Lab4_ADC_DAC_xlconstant_1_0 xlconstant_1
       (.dout(xlconstant_1_dout));
  bd_Lab4_ADC_DAC_xlconstant_2_1 xlconstant_2
       (.dout(xlconstant_2_dout));
endmodule
