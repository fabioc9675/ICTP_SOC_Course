--Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
----------------------------------------------------------------------------------
--Tool Version: Vivado v.2022.2 (lin64) Build 3671981 Fri Oct 14 04:59:54 MDT 2022
--Date        : Tue Nov 28 17:29:28 2023
--Host        : ins45238 running 64-bit Ubuntu 22.04.3 LTS
--Command     : generate_target bd_LabProject_part2.bd
--Design      : bd_LabProject_part2
--Purpose     : IP block netlist
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity clkDomainCrossing_imp_BDW94J is
  port (
    adc_data_in : in STD_LOGIC_VECTOR ( 13 downto 0 );
    adc_data_to_dpp : out STD_LOGIC_VECTOR ( 13 downto 0 );
    clk_adc : out STD_LOGIC;
    clk_dac : out STD_LOGIC;
    clk_dpp : out STD_LOGIC;
    clk_ps7 : in STD_LOGIC;
    dac_data_from_mux : in STD_LOGIC_VECTOR ( 13 downto 0 );
    dac_data_out : out STD_LOGIC_VECTOR ( 13 downto 0 );
    resetn : in STD_LOGIC
  );
end clkDomainCrossing_imp_BDW94J;

architecture STRUCTURE of clkDomainCrossing_imp_BDW94J is
  component bd_LabProject_part2_CDCC_ADC_0 is
  port (
    clk_src : in STD_LOGIC;
    clk_dst : in STD_LOGIC;
    data_in : in STD_LOGIC_VECTOR ( 13 downto 0 );
    data_out : out STD_LOGIC_VECTOR ( 13 downto 0 )
  );
  end component bd_LabProject_part2_CDCC_ADC_0;
  component bd_LabProject_part2_CDCC_DAC_0 is
  port (
    clk_src : in STD_LOGIC;
    clk_dst : in STD_LOGIC;
    data_in : in STD_LOGIC_VECTOR ( 13 downto 0 );
    data_out : out STD_LOGIC_VECTOR ( 13 downto 0 )
  );
  end component bd_LabProject_part2_CDCC_DAC_0;
  component bd_LabProject_part2_clk_wiz_1_0 is
  port (
    resetn : in STD_LOGIC;
    clk_in1 : in STD_LOGIC;
    clk_dpp : out STD_LOGIC;
    clk_adc : out STD_LOGIC;
    clk_dac : out STD_LOGIC
  );
  end component bd_LabProject_part2_clk_wiz_1_0;
  signal CDCC_ADC_data_out : STD_LOGIC_VECTOR ( 13 downto 0 );
  signal CDCC_DAC_data_out : STD_LOGIC_VECTOR ( 13 downto 0 );
  signal Op1_1 : STD_LOGIC_VECTOR ( 13 downto 0 );
  signal adc_data_1 : STD_LOGIC_VECTOR ( 13 downto 0 );
  signal clk_wiz_0_clk_adc : STD_LOGIC;
  signal clk_wiz_0_clk_dac : STD_LOGIC;
  signal clk_wiz_0_clk_dpp : STD_LOGIC;
  signal processing_system7_0_FCLK_CLK0 : STD_LOGIC;
  signal processing_system7_0_FCLK_RESET0_N : STD_LOGIC;
begin
  Op1_1(13 downto 0) <= dac_data_from_mux(13 downto 0);
  adc_data_1(13 downto 0) <= adc_data_in(13 downto 0);
  adc_data_to_dpp(13 downto 0) <= CDCC_ADC_data_out(13 downto 0);
  clk_adc <= clk_wiz_0_clk_adc;
  clk_dac <= clk_wiz_0_clk_dac;
  clk_dpp <= clk_wiz_0_clk_dpp;
  dac_data_out(13 downto 0) <= CDCC_DAC_data_out(13 downto 0);
  processing_system7_0_FCLK_CLK0 <= clk_ps7;
  processing_system7_0_FCLK_RESET0_N <= resetn;
CDCC_ADC: component bd_LabProject_part2_CDCC_ADC_0
     port map (
      clk_dst => clk_wiz_0_clk_dpp,
      clk_src => clk_wiz_0_clk_adc,
      data_in(13 downto 0) => adc_data_1(13 downto 0),
      data_out(13 downto 0) => CDCC_ADC_data_out(13 downto 0)
    );
CDCC_DAC: component bd_LabProject_part2_CDCC_DAC_0
     port map (
      clk_dst => clk_wiz_0_clk_dac,
      clk_src => clk_wiz_0_clk_dpp,
      data_in(13 downto 0) => Op1_1(13 downto 0),
      data_out(13 downto 0) => CDCC_DAC_data_out(13 downto 0)
    );
clk_wiz_1: component bd_LabProject_part2_clk_wiz_1_0
     port map (
      clk_adc => clk_wiz_0_clk_adc,
      clk_dac => clk_wiz_0_clk_dac,
      clk_dpp => clk_wiz_0_clk_dpp,
      clk_in1 => processing_system7_0_FCLK_CLK0,
      resetn => processing_system7_0_FCLK_RESET0_N
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity twosComplement_imp_1QJEAQX is
  port (
    Op1 : in STD_LOGIC_VECTOR ( 13 downto 0 );
    Res : out STD_LOGIC_VECTOR ( 13 downto 0 )
  );
end twosComplement_imp_1QJEAQX;

architecture STRUCTURE of twosComplement_imp_1QJEAQX is
  component bd_LabProject_part2_util_vector_logic_0_0 is
  port (
    Op1 : in STD_LOGIC_VECTOR ( 13 downto 0 );
    Op2 : in STD_LOGIC_VECTOR ( 13 downto 0 );
    Res : out STD_LOGIC_VECTOR ( 13 downto 0 )
  );
  end component bd_LabProject_part2_util_vector_logic_0_0;
  component bd_LabProject_part2_xlconstant_0_0 is
  port (
    dout : out STD_LOGIC_VECTOR ( 13 downto 0 )
  );
  end component bd_LabProject_part2_xlconstant_0_0;
  signal Op1_1 : STD_LOGIC_VECTOR ( 13 downto 0 );
  signal util_vector_logic_0_Res : STD_LOGIC_VECTOR ( 13 downto 0 );
  signal xlconstant_0_dout : STD_LOGIC_VECTOR ( 13 downto 0 );
begin
  Op1_1(13 downto 0) <= Op1(13 downto 0);
  Res(13 downto 0) <= util_vector_logic_0_Res(13 downto 0);
util_vector_logic_0: component bd_LabProject_part2_util_vector_logic_0_0
     port map (
      Op1(13 downto 0) => Op1_1(13 downto 0),
      Op2(13 downto 0) => xlconstant_0_dout(13 downto 0),
      Res(13 downto 0) => util_vector_logic_0_Res(13 downto 0)
    );
xlconstant_0: component bd_LabProject_part2_xlconstant_0_0
     port map (
      dout(13 downto 0) => xlconstant_0_dout(13 downto 0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity oscilloscope_imp_KTN66L is
  port (
    aresetn : in STD_LOGIC;
    clk : in STD_LOGIC;
    data_in : in STD_LOGIC_VECTOR ( 13 downto 0 );
    fifo_a_full_i : in STD_LOGIC_VECTOR ( 0 to 0 );
    fifo_data_o : out STD_LOGIC_VECTOR ( 13 downto 0 );
    fifo_data_we_o : out STD_LOGIC;
    pulse_len : in STD_LOGIC_VECTOR ( 31 downto 0 );
    samplesBeforeTrigger : in STD_LOGIC_VECTOR ( 31 downto 0 );
    threshold : in STD_LOGIC_VECTOR ( 31 downto 0 )
  );
end oscilloscope_imp_KTN66L;

architecture STRUCTURE of oscilloscope_imp_KTN66L is
  component bd_LabProject_part2_crossLevelTrigger_0 is
  port (
    clk : in STD_LOGIC;
    aresetn : in STD_LOGIC;
    dIn : in STD_LOGIC_VECTOR ( 13 downto 0 );
    threshold : in STD_LOGIC_VECTOR ( 13 downto 0 );
    edgeSel : in STD_LOGIC;
    trigger : out STD_LOGIC
  );
  end component bd_LabProject_part2_crossLevelTrigger_0;
  component bd_LabProject_part2_delayShiftReg_0 is
  port (
    A : in STD_LOGIC_VECTOR ( 9 downto 0 );
    D : in STD_LOGIC_VECTOR ( 13 downto 0 );
    CLK : in STD_LOGIC;
    Q : out STD_LOGIC_VECTOR ( 13 downto 0 )
  );
  end component bd_LabProject_part2_delayShiftReg_0;
  component bd_LabProject_part2_oneShotTimer_0 is
  port (
    clk : in STD_LOGIC;
    aresetn : in STD_LOGIC;
    ce : in STD_LOGIC;
    trig_in : in STD_LOGIC;
    pulse_len : in STD_LOGIC_VECTOR ( 15 downto 0 );
    trig_out : out STD_LOGIC
  );
  end component bd_LabProject_part2_oneShotTimer_0;
  component bd_LabProject_part2_ring_buffer_0 is
  port (
    clk : in STD_LOGIC;
    aresetn : in STD_LOGIC;
    wr_en : in STD_LOGIC;
    wr_data : in STD_LOGIC_VECTOR ( 13 downto 0 );
    rd_en : in STD_LOGIC;
    rd_valid : out STD_LOGIC;
    rd_data : out STD_LOGIC_VECTOR ( 13 downto 0 )
  );
  end component bd_LabProject_part2_ring_buffer_0;
  component bd_LabProject_part2_triggerEnable_0 is
  port (
    dout : out STD_LOGIC_VECTOR ( 0 to 0 )
  );
  end component bd_LabProject_part2_triggerEnable_0;
  component bd_LabProject_part2_trigger_edgeSelect_0 is
  port (
    dout : out STD_LOGIC_VECTOR ( 0 to 0 )
  );
  end component bd_LabProject_part2_trigger_edgeSelect_0;
  component bd_LabProject_part2_util_vector_logic_0_1 is
  port (
    Op1 : in STD_LOGIC_VECTOR ( 0 to 0 );
    Res : out STD_LOGIC_VECTOR ( 0 to 0 )
  );
  end component bd_LabProject_part2_util_vector_logic_0_1;
  signal A_1 : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal Op2_1 : STD_LOGIC_VECTOR ( 0 to 0 );
  signal c_shift_ram_0_Q : STD_LOGIC_VECTOR ( 13 downto 0 );
  signal clkDomainCrossing_clk_dpp : STD_LOGIC;
  signal crossLevelTriggerBlo_0_trigger : STD_LOGIC;
  signal data_in_1 : STD_LOGIC_VECTOR ( 13 downto 0 );
  signal oneShotTimer_0_trig_out : STD_LOGIC;
  signal pulse_len_1 : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal ring_buffer_0_rd_data : STD_LOGIC_VECTOR ( 13 downto 0 );
  signal ring_buffer_0_rd_valid : STD_LOGIC;
  signal rst_clk_wiz_0_50M_peripheral_aresetn : STD_LOGIC;
  signal threshold_1 : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal triggerEnable_dout : STD_LOGIC_VECTOR ( 0 to 0 );
  signal trigger_edgeSelect_dout : STD_LOGIC_VECTOR ( 0 to 0 );
  signal twosComplement_Res : STD_LOGIC_VECTOR ( 13 downto 0 );
  signal util_vector_logic_0_Res : STD_LOGIC_VECTOR ( 0 to 0 );
begin
  A_1(31 downto 0) <= samplesBeforeTrigger(31 downto 0);
  Op2_1(0) <= fifo_a_full_i(0);
  clkDomainCrossing_clk_dpp <= clk;
  data_in_1(13 downto 0) <= data_in(13 downto 0);
  fifo_data_o(13 downto 0) <= ring_buffer_0_rd_data(13 downto 0);
  fifo_data_we_o <= ring_buffer_0_rd_valid;
  pulse_len_1(31 downto 0) <= pulse_len(31 downto 0);
  rst_clk_wiz_0_50M_peripheral_aresetn <= aresetn;
  threshold_1(31 downto 0) <= threshold(31 downto 0);
crossLevelTrigger: component bd_LabProject_part2_crossLevelTrigger_0
     port map (
      aresetn => rst_clk_wiz_0_50M_peripheral_aresetn,
      clk => clkDomainCrossing_clk_dpp,
      dIn(13 downto 0) => twosComplement_Res(13 downto 0),
      edgeSel => trigger_edgeSelect_dout(0),
      threshold(13 downto 0) => threshold_1(13 downto 0),
      trigger => crossLevelTriggerBlo_0_trigger
    );
delayShiftReg: component bd_LabProject_part2_delayShiftReg_0
     port map (
      A(9 downto 0) => A_1(9 downto 0),
      CLK => clkDomainCrossing_clk_dpp,
      D(13 downto 0) => twosComplement_Res(13 downto 0),
      Q(13 downto 0) => c_shift_ram_0_Q(13 downto 0)
    );
oneShotTimer: component bd_LabProject_part2_oneShotTimer_0
     port map (
      aresetn => rst_clk_wiz_0_50M_peripheral_aresetn,
      ce => triggerEnable_dout(0),
      clk => clkDomainCrossing_clk_dpp,
      pulse_len(15 downto 0) => pulse_len_1(15 downto 0),
      trig_in => crossLevelTriggerBlo_0_trigger,
      trig_out => oneShotTimer_0_trig_out
    );
ring_buffer: component bd_LabProject_part2_ring_buffer_0
     port map (
      aresetn => rst_clk_wiz_0_50M_peripheral_aresetn,
      clk => clkDomainCrossing_clk_dpp,
      rd_data(13 downto 0) => ring_buffer_0_rd_data(13 downto 0),
      rd_en => util_vector_logic_0_Res(0),
      rd_valid => ring_buffer_0_rd_valid,
      wr_data(13 downto 0) => c_shift_ram_0_Q(13 downto 0),
      wr_en => oneShotTimer_0_trig_out
    );
triggerEnable: component bd_LabProject_part2_triggerEnable_0
     port map (
      dout(0) => triggerEnable_dout(0)
    );
trigger_edgeSelect: component bd_LabProject_part2_trigger_edgeSelect_0
     port map (
      dout(0) => trigger_edgeSelect_dout(0)
    );
twosComplement: entity work.twosComplement_imp_1QJEAQX
     port map (
      Op1(13 downto 0) => data_in_1(13 downto 0),
      Res(13 downto 0) => twosComplement_Res(13 downto 0)
    );
util_vector_logic_0: component bd_LabProject_part2_util_vector_logic_0_1
     port map (
      Op1(0) => Op2_1(0),
      Res(0) => util_vector_logic_0_Res(0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity bd_LabProject_part2 is
  port (
    DDR_addr : inout STD_LOGIC_VECTOR ( 14 downto 0 );
    DDR_ba : inout STD_LOGIC_VECTOR ( 2 downto 0 );
    DDR_cas_n : inout STD_LOGIC;
    DDR_ck_n : inout STD_LOGIC;
    DDR_ck_p : inout STD_LOGIC;
    DDR_cke : inout STD_LOGIC;
    DDR_cs_n : inout STD_LOGIC;
    DDR_dm : inout STD_LOGIC_VECTOR ( 3 downto 0 );
    DDR_dq : inout STD_LOGIC_VECTOR ( 31 downto 0 );
    DDR_dqs_n : inout STD_LOGIC_VECTOR ( 3 downto 0 );
    DDR_dqs_p : inout STD_LOGIC_VECTOR ( 3 downto 0 );
    DDR_odt : inout STD_LOGIC;
    DDR_ras_n : inout STD_LOGIC;
    DDR_reset_n : inout STD_LOGIC;
    DDR_we_n : inout STD_LOGIC;
    FIXED_IO_ddr_vrn : inout STD_LOGIC;
    FIXED_IO_ddr_vrp : inout STD_LOGIC;
    FIXED_IO_mio : inout STD_LOGIC_VECTOR ( 53 downto 0 );
    FIXED_IO_ps_clk : inout STD_LOGIC;
    FIXED_IO_ps_porb : inout STD_LOGIC;
    FIXED_IO_ps_srstb : inout STD_LOGIC;
    adc_clk : out STD_LOGIC;
    adc_data : in STD_LOGIC_VECTOR ( 13 downto 0 );
    dac_clk : out STD_LOGIC;
    dac_data : out STD_LOGIC_VECTOR ( 13 downto 0 )
  );
  attribute CORE_GENERATION_INFO : string;
  attribute CORE_GENERATION_INFO of bd_LabProject_part2 : entity is "bd_LabProject_part2,IP_Integrator,{x_ipVendor=xilinx.com,x_ipLibrary=BlockDiagram,x_ipName=bd_LabProject_part2,x_ipVersion=1.00.a,x_ipLanguage=VHDL,numBlks=25,numReposBlks=22,numNonXlnxBlks=5,numHierBlks=3,maxHierDepth=2,numSysgenBlks=2,numHlsBlks=0,numHdlrefBlks=4,numPkgbdBlks=0,bdsource=USER,synth_mode=Global}";
  attribute HW_HANDOFF : string;
  attribute HW_HANDOFF of bd_LabProject_part2 : entity is "bd_LabProject_part2.hwdef";
end bd_LabProject_part2;

architecture STRUCTURE of bd_LabProject_part2 is
  component bd_LabProject_part2_axi_smc_0 is
  port (
    aclk : in STD_LOGIC;
    aresetn : in STD_LOGIC;
    S00_AXI_awid : in STD_LOGIC_VECTOR ( 11 downto 0 );
    S00_AXI_awaddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S00_AXI_awlen : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S00_AXI_awsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S00_AXI_awburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    S00_AXI_awlock : in STD_LOGIC_VECTOR ( 1 downto 0 );
    S00_AXI_awcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S00_AXI_awprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S00_AXI_awqos : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S00_AXI_awvalid : in STD_LOGIC;
    S00_AXI_awready : out STD_LOGIC;
    S00_AXI_wid : in STD_LOGIC_VECTOR ( 11 downto 0 );
    S00_AXI_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S00_AXI_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S00_AXI_wlast : in STD_LOGIC;
    S00_AXI_wvalid : in STD_LOGIC;
    S00_AXI_wready : out STD_LOGIC;
    S00_AXI_bid : out STD_LOGIC_VECTOR ( 11 downto 0 );
    S00_AXI_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S00_AXI_bvalid : out STD_LOGIC;
    S00_AXI_bready : in STD_LOGIC;
    S00_AXI_arid : in STD_LOGIC_VECTOR ( 11 downto 0 );
    S00_AXI_araddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S00_AXI_arlen : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S00_AXI_arsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S00_AXI_arburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    S00_AXI_arlock : in STD_LOGIC_VECTOR ( 1 downto 0 );
    S00_AXI_arcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S00_AXI_arprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S00_AXI_arqos : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S00_AXI_arvalid : in STD_LOGIC;
    S00_AXI_arready : out STD_LOGIC;
    S00_AXI_rid : out STD_LOGIC_VECTOR ( 11 downto 0 );
    S00_AXI_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    S00_AXI_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S00_AXI_rlast : out STD_LOGIC;
    S00_AXI_rvalid : out STD_LOGIC;
    S00_AXI_rready : in STD_LOGIC;
    M00_AXI_awaddr : out STD_LOGIC_VECTOR ( 12 downto 0 );
    M00_AXI_awlen : out STD_LOGIC_VECTOR ( 7 downto 0 );
    M00_AXI_awsize : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M00_AXI_awburst : out STD_LOGIC_VECTOR ( 1 downto 0 );
    M00_AXI_awlock : out STD_LOGIC_VECTOR ( 0 to 0 );
    M00_AXI_awcache : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M00_AXI_awprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M00_AXI_awqos : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M00_AXI_awvalid : out STD_LOGIC;
    M00_AXI_awready : in STD_LOGIC;
    M00_AXI_wdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M00_AXI_wstrb : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M00_AXI_wlast : out STD_LOGIC;
    M00_AXI_wvalid : out STD_LOGIC;
    M00_AXI_wready : in STD_LOGIC;
    M00_AXI_bresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M00_AXI_bvalid : in STD_LOGIC;
    M00_AXI_bready : out STD_LOGIC;
    M00_AXI_araddr : out STD_LOGIC_VECTOR ( 12 downto 0 );
    M00_AXI_arlen : out STD_LOGIC_VECTOR ( 7 downto 0 );
    M00_AXI_arsize : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M00_AXI_arburst : out STD_LOGIC_VECTOR ( 1 downto 0 );
    M00_AXI_arlock : out STD_LOGIC_VECTOR ( 0 to 0 );
    M00_AXI_arcache : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M00_AXI_arprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M00_AXI_arqos : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M00_AXI_arvalid : out STD_LOGIC;
    M00_AXI_arready : in STD_LOGIC;
    M00_AXI_rdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    M00_AXI_rresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M00_AXI_rlast : in STD_LOGIC;
    M00_AXI_rvalid : in STD_LOGIC;
    M00_AXI_rready : out STD_LOGIC;
    M01_AXI_awaddr : out STD_LOGIC_VECTOR ( 7 downto 0 );
    M01_AXI_awprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M01_AXI_awvalid : out STD_LOGIC;
    M01_AXI_awready : in STD_LOGIC;
    M01_AXI_wdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M01_AXI_wstrb : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M01_AXI_wvalid : out STD_LOGIC;
    M01_AXI_wready : in STD_LOGIC;
    M01_AXI_bresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M01_AXI_bvalid : in STD_LOGIC;
    M01_AXI_bready : out STD_LOGIC;
    M01_AXI_araddr : out STD_LOGIC_VECTOR ( 7 downto 0 );
    M01_AXI_arprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M01_AXI_arvalid : out STD_LOGIC;
    M01_AXI_arready : in STD_LOGIC;
    M01_AXI_rdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    M01_AXI_rresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M01_AXI_rvalid : in STD_LOGIC;
    M01_AXI_rready : out STD_LOGIC
  );
  end component bd_LabProject_part2_axi_smc_0;
  component bd_LabProject_part2_comblock_0_0 is
  port (
    reg0_o : out STD_LOGIC_VECTOR ( 31 downto 0 );
    reg1_o : out STD_LOGIC_VECTOR ( 31 downto 0 );
    reg2_o : out STD_LOGIC_VECTOR ( 31 downto 0 );
    reg3_o : out STD_LOGIC_VECTOR ( 31 downto 0 );
    reg4_o : out STD_LOGIC_VECTOR ( 31 downto 0 );
    reg5_o : out STD_LOGIC_VECTOR ( 31 downto 0 );
    reg6_o : out STD_LOGIC_VECTOR ( 31 downto 0 );
    reg7_o : out STD_LOGIC_VECTOR ( 31 downto 0 );
    reg8_o : out STD_LOGIC_VECTOR ( 31 downto 0 );
    reg9_o : out STD_LOGIC_VECTOR ( 31 downto 0 );
    reg10_o : out STD_LOGIC_VECTOR ( 31 downto 0 );
    reg11_o : out STD_LOGIC_VECTOR ( 31 downto 0 );
    reg12_o : out STD_LOGIC_VECTOR ( 31 downto 0 );
    reg13_o : out STD_LOGIC_VECTOR ( 31 downto 0 );
    reg14_o : out STD_LOGIC_VECTOR ( 31 downto 0 );
    reg15_o : out STD_LOGIC_VECTOR ( 31 downto 0 );
    ram_clk_i : in STD_LOGIC;
    ram_we_i : in STD_LOGIC;
    ram_addr_i : in STD_LOGIC_VECTOR ( 10 downto 0 );
    ram_data_i : in STD_LOGIC_VECTOR ( 31 downto 0 );
    ram_data_o : out STD_LOGIC_VECTOR ( 31 downto 0 );
    fifo_clk_i : in STD_LOGIC;
    fifo_clear_i : in STD_LOGIC;
    fifo_we_i : in STD_LOGIC;
    fifo_data_i : in STD_LOGIC_VECTOR ( 13 downto 0 );
    fifo_full_o : out STD_LOGIC;
    fifo_afull_o : out STD_LOGIC;
    fifo_overflow_o : out STD_LOGIC;
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
    axif_awaddr : in STD_LOGIC_VECTOR ( 12 downto 0 );
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
    axif_araddr : in STD_LOGIC_VECTOR ( 12 downto 0 );
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
  end component bd_LabProject_part2_comblock_0_0;
  component bd_LabProject_part2_dacMux_0 is
  port (
    sel : in STD_LOGIC_VECTOR ( 2 downto 0 );
    x0 : in STD_LOGIC_VECTOR ( 13 downto 0 );
    x1 : in STD_LOGIC_VECTOR ( 13 downto 0 );
    x2 : in STD_LOGIC_VECTOR ( 13 downto 0 );
    x3 : in STD_LOGIC_VECTOR ( 13 downto 0 );
    x4 : in STD_LOGIC_VECTOR ( 13 downto 0 );
    x5 : in STD_LOGIC_VECTOR ( 13 downto 0 );
    x6 : in STD_LOGIC_VECTOR ( 13 downto 0 );
    x7 : in STD_LOGIC_VECTOR ( 13 downto 0 );
    y : out STD_LOGIC_VECTOR ( 13 downto 0 )
  );
  end component bd_LabProject_part2_dacMux_0;
  component bd_LabProject_part2_histogram_gen_0 is
  port (
    bram_addr : out STD_LOGIC_VECTOR ( 10 downto 0 );
    bram_dout : in STD_LOGIC_VECTOR ( 31 downto 0 );
    bram_we : out STD_LOGIC;
    bram_din : out STD_LOGIC_VECTOR ( 31 downto 0 );
    peak_amp : in STD_LOGIC_VECTOR ( 15 downto 0 );
    peak_amp_rdy : in STD_LOGIC;
    rstn : in STD_LOGIC;
    clk : in STD_LOGIC
  );
  end component bd_LabProject_part2_histogram_gen_0;
  component bd_LabProject_part2_peak_detector_0_0 is
  port (
    r1_x_delay : in STD_LOGIC_VECTOR ( 31 downto 0 );
    r2_x_noise : in STD_LOGIC_VECTOR ( 31 downto 0 );
    r3_x_min_max : in STD_LOGIC_VECTOR ( 31 downto 0 );
    r4_en_pkd : in STD_LOGIC_VECTOR ( 31 downto 0 );
    x : in STD_LOGIC_VECTOR ( 15 downto 0 );
    clk : in STD_LOGIC;
    dac_peak_amp : out STD_LOGIC_VECTOR ( 13 downto 0 );
    peak_amp : out STD_LOGIC_VECTOR ( 15 downto 0 );
    peak_amp_rdy : out STD_LOGIC_VECTOR ( 0 to 0 );
    pulse_delayed : out STD_LOGIC_VECTOR ( 15 downto 0 );
    state : out STD_LOGIC_VECTOR ( 2 downto 0 )
  );
  end component bd_LabProject_part2_peak_detector_0_0;
  component bd_LabProject_part2_processing_system7_0_0 is
  port (
    M_AXI_GP0_ARVALID : out STD_LOGIC;
    M_AXI_GP0_AWVALID : out STD_LOGIC;
    M_AXI_GP0_BREADY : out STD_LOGIC;
    M_AXI_GP0_RREADY : out STD_LOGIC;
    M_AXI_GP0_WLAST : out STD_LOGIC;
    M_AXI_GP0_WVALID : out STD_LOGIC;
    M_AXI_GP0_ARID : out STD_LOGIC_VECTOR ( 11 downto 0 );
    M_AXI_GP0_AWID : out STD_LOGIC_VECTOR ( 11 downto 0 );
    M_AXI_GP0_WID : out STD_LOGIC_VECTOR ( 11 downto 0 );
    M_AXI_GP0_ARBURST : out STD_LOGIC_VECTOR ( 1 downto 0 );
    M_AXI_GP0_ARLOCK : out STD_LOGIC_VECTOR ( 1 downto 0 );
    M_AXI_GP0_ARSIZE : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M_AXI_GP0_AWBURST : out STD_LOGIC_VECTOR ( 1 downto 0 );
    M_AXI_GP0_AWLOCK : out STD_LOGIC_VECTOR ( 1 downto 0 );
    M_AXI_GP0_AWSIZE : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M_AXI_GP0_ARPROT : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M_AXI_GP0_AWPROT : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M_AXI_GP0_ARADDR : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_GP0_AWADDR : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_GP0_WDATA : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_GP0_ARCACHE : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M_AXI_GP0_ARLEN : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M_AXI_GP0_ARQOS : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M_AXI_GP0_AWCACHE : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M_AXI_GP0_AWLEN : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M_AXI_GP0_AWQOS : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M_AXI_GP0_WSTRB : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M_AXI_GP0_ACLK : in STD_LOGIC;
    M_AXI_GP0_ARREADY : in STD_LOGIC;
    M_AXI_GP0_AWREADY : in STD_LOGIC;
    M_AXI_GP0_BVALID : in STD_LOGIC;
    M_AXI_GP0_RLAST : in STD_LOGIC;
    M_AXI_GP0_RVALID : in STD_LOGIC;
    M_AXI_GP0_WREADY : in STD_LOGIC;
    M_AXI_GP0_BID : in STD_LOGIC_VECTOR ( 11 downto 0 );
    M_AXI_GP0_RID : in STD_LOGIC_VECTOR ( 11 downto 0 );
    M_AXI_GP0_BRESP : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M_AXI_GP0_RRESP : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M_AXI_GP0_RDATA : in STD_LOGIC_VECTOR ( 31 downto 0 );
    FCLK_CLK0 : out STD_LOGIC;
    FCLK_RESET0_N : out STD_LOGIC;
    MIO : inout STD_LOGIC_VECTOR ( 53 downto 0 );
    DDR_CAS_n : inout STD_LOGIC;
    DDR_CKE : inout STD_LOGIC;
    DDR_Clk_n : inout STD_LOGIC;
    DDR_Clk : inout STD_LOGIC;
    DDR_CS_n : inout STD_LOGIC;
    DDR_DRSTB : inout STD_LOGIC;
    DDR_ODT : inout STD_LOGIC;
    DDR_RAS_n : inout STD_LOGIC;
    DDR_WEB : inout STD_LOGIC;
    DDR_BankAddr : inout STD_LOGIC_VECTOR ( 2 downto 0 );
    DDR_Addr : inout STD_LOGIC_VECTOR ( 14 downto 0 );
    DDR_VRN : inout STD_LOGIC;
    DDR_VRP : inout STD_LOGIC;
    DDR_DM : inout STD_LOGIC_VECTOR ( 3 downto 0 );
    DDR_DQ : inout STD_LOGIC_VECTOR ( 31 downto 0 );
    DDR_DQS_n : inout STD_LOGIC_VECTOR ( 3 downto 0 );
    DDR_DQS : inout STD_LOGIC_VECTOR ( 3 downto 0 );
    PS_SRSTB : inout STD_LOGIC;
    PS_CLK : inout STD_LOGIC;
    PS_PORB : inout STD_LOGIC
  );
  end component bd_LabProject_part2_processing_system7_0_0;
  component bd_LabProject_part2_pulseInvertFlag_0 is
  port (
    dout : out STD_LOGIC_VECTOR ( 31 downto 0 )
  );
  end component bd_LabProject_part2_pulseInvertFlag_0;
  component bd_LabProject_part2_pulseShaper_0 is
  port (
    r1_b10 : in STD_LOGIC_VECTOR ( 31 downto 0 );
    r2_na : in STD_LOGIC_VECTOR ( 31 downto 0 );
    r3_nb : in STD_LOGIC_VECTOR ( 31 downto 0 );
    r4_na_inv : in STD_LOGIC_VECTOR ( 31 downto 0 );
    r5_b00 : in STD_LOGIC_VECTOR ( 31 downto 0 );
    r6_b20 : in STD_LOGIC_VECTOR ( 31 downto 0 );
    r7_dc_offset : in STD_LOGIC_VECTOR ( 31 downto 0 );
    r8_invertoffset_dc_offset : in STD_LOGIC_VECTOR ( 31 downto 0 );
    r9_flags : in STD_LOGIC_VECTOR ( 31 downto 0 );
    x : in STD_LOGIC_VECTOR ( 13 downto 0 );
    clk : in STD_LOGIC;
    dac_x : out STD_LOGIC_VECTOR ( 13 downto 0 );
    dac_y : out STD_LOGIC_VECTOR ( 13 downto 0 );
    dac_y_impulse : out STD_LOGIC_VECTOR ( 13 downto 0 );
    dac_y_rect : out STD_LOGIC_VECTOR ( 13 downto 0 );
    y : out STD_LOGIC_VECTOR ( 15 downto 0 );
    y_impulse : out STD_LOGIC_VECTOR ( 15 downto 0 );
    y_rect : out STD_LOGIC_VECTOR ( 15 downto 0 )
  );
  end component bd_LabProject_part2_pulseShaper_0;
  component bd_LabProject_part2_rst_clk_wiz_0_50M_0 is
  port (
    slowest_sync_clk : in STD_LOGIC;
    ext_reset_in : in STD_LOGIC;
    aux_reset_in : in STD_LOGIC;
    mb_debug_sys_rst : in STD_LOGIC;
    dcm_locked : in STD_LOGIC;
    mb_reset : out STD_LOGIC;
    bus_struct_reset : out STD_LOGIC_VECTOR ( 0 to 0 );
    peripheral_reset : out STD_LOGIC_VECTOR ( 0 to 0 );
    interconnect_aresetn : out STD_LOGIC_VECTOR ( 0 to 0 );
    peripheral_aresetn : out STD_LOGIC_VECTOR ( 0 to 0 )
  );
  end component bd_LabProject_part2_rst_clk_wiz_0_50M_0;
  component bd_LabProject_part2_rst_ps7_0_50M_0 is
  port (
    slowest_sync_clk : in STD_LOGIC;
    ext_reset_in : in STD_LOGIC;
    aux_reset_in : in STD_LOGIC;
    mb_debug_sys_rst : in STD_LOGIC;
    dcm_locked : in STD_LOGIC;
    mb_reset : out STD_LOGIC;
    bus_struct_reset : out STD_LOGIC_VECTOR ( 0 to 0 );
    peripheral_reset : out STD_LOGIC_VECTOR ( 0 to 0 );
    interconnect_aresetn : out STD_LOGIC_VECTOR ( 0 to 0 );
    peripheral_aresetn : out STD_LOGIC_VECTOR ( 0 to 0 )
  );
  end component bd_LabProject_part2_rst_ps7_0_50M_0;
  signal CDCC_DAC_data_out : STD_LOGIC_VECTOR ( 13 downto 0 );
  signal Op1_1 : STD_LOGIC_VECTOR ( 13 downto 0 );
  signal adc_data_1 : STD_LOGIC_VECTOR ( 13 downto 0 );
  signal axi_smc_M00_AXI_ARADDR : STD_LOGIC_VECTOR ( 12 downto 0 );
  signal axi_smc_M00_AXI_ARBURST : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal axi_smc_M00_AXI_ARCACHE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal axi_smc_M00_AXI_ARLEN : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal axi_smc_M00_AXI_ARLOCK : STD_LOGIC_VECTOR ( 0 to 0 );
  signal axi_smc_M00_AXI_ARPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal axi_smc_M00_AXI_ARQOS : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal axi_smc_M00_AXI_ARREADY : STD_LOGIC;
  signal axi_smc_M00_AXI_ARSIZE : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal axi_smc_M00_AXI_ARVALID : STD_LOGIC;
  signal axi_smc_M00_AXI_AWADDR : STD_LOGIC_VECTOR ( 12 downto 0 );
  signal axi_smc_M00_AXI_AWBURST : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal axi_smc_M00_AXI_AWCACHE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal axi_smc_M00_AXI_AWLEN : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal axi_smc_M00_AXI_AWLOCK : STD_LOGIC_VECTOR ( 0 to 0 );
  signal axi_smc_M00_AXI_AWPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal axi_smc_M00_AXI_AWQOS : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal axi_smc_M00_AXI_AWREADY : STD_LOGIC;
  signal axi_smc_M00_AXI_AWSIZE : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal axi_smc_M00_AXI_AWVALID : STD_LOGIC;
  signal axi_smc_M00_AXI_BREADY : STD_LOGIC;
  signal axi_smc_M00_AXI_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal axi_smc_M00_AXI_BVALID : STD_LOGIC;
  signal axi_smc_M00_AXI_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal axi_smc_M00_AXI_RLAST : STD_LOGIC;
  signal axi_smc_M00_AXI_RREADY : STD_LOGIC;
  signal axi_smc_M00_AXI_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal axi_smc_M00_AXI_RVALID : STD_LOGIC;
  signal axi_smc_M00_AXI_WDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal axi_smc_M00_AXI_WLAST : STD_LOGIC;
  signal axi_smc_M00_AXI_WREADY : STD_LOGIC;
  signal axi_smc_M00_AXI_WSTRB : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal axi_smc_M00_AXI_WVALID : STD_LOGIC;
  signal axi_smc_M01_AXI_ARADDR : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal axi_smc_M01_AXI_ARPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal axi_smc_M01_AXI_ARREADY : STD_LOGIC;
  signal axi_smc_M01_AXI_ARVALID : STD_LOGIC;
  signal axi_smc_M01_AXI_AWADDR : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal axi_smc_M01_AXI_AWPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal axi_smc_M01_AXI_AWREADY : STD_LOGIC;
  signal axi_smc_M01_AXI_AWVALID : STD_LOGIC;
  signal axi_smc_M01_AXI_BREADY : STD_LOGIC;
  signal axi_smc_M01_AXI_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal axi_smc_M01_AXI_BVALID : STD_LOGIC;
  signal axi_smc_M01_AXI_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal axi_smc_M01_AXI_RREADY : STD_LOGIC;
  signal axi_smc_M01_AXI_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal axi_smc_M01_AXI_RVALID : STD_LOGIC;
  signal axi_smc_M01_AXI_WDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal axi_smc_M01_AXI_WREADY : STD_LOGIC;
  signal axi_smc_M01_AXI_WSTRB : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal axi_smc_M01_AXI_WVALID : STD_LOGIC;
  signal clkDomainCrossing_clk_adc_0 : STD_LOGIC;
  signal clkDomainCrossing_clk_dac_0 : STD_LOGIC;
  signal clkDomainCrossing_clk_dpp : STD_LOGIC;
  signal clk_ps7_1 : STD_LOGIC;
  signal comblock_0_ram_data_o : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal comblock_0_reg0_o : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal comblock_0_reg10_o : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal comblock_0_reg11_o : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal comblock_0_reg12_o : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal comblock_0_reg13_o : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal comblock_0_reg14_o : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal comblock_0_reg15_o : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal comblock_0_reg1_o : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal comblock_0_reg2_o : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal comblock_0_reg3_o : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal comblock_0_reg4_o : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal comblock_0_reg5_o : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal comblock_0_reg6_o : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal comblock_0_reg7_o : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal comblock_0_reg8_o : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal comblock_0_reg9_o : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal dacMux_y : STD_LOGIC_VECTOR ( 13 downto 0 );
  signal fifo_a_full_i_1 : STD_LOGIC;
  signal histogram_gen_bram_addr : STD_LOGIC_VECTOR ( 10 downto 0 );
  signal histogram_gen_bram_din : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal histogram_gen_bram_we : STD_LOGIC;
  signal oscilloscope_fifo_data_o : STD_LOGIC_VECTOR ( 13 downto 0 );
  signal oscilloscope_fifo_data_we_o : STD_LOGIC;
  signal peak_detector_0_dac_peak_amp : STD_LOGIC_VECTOR ( 13 downto 0 );
  signal peak_detector_0_peak_amp : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal peak_detector_0_peak_amp_rdy : STD_LOGIC_VECTOR ( 0 to 0 );
  signal processing_system7_0_DDR_ADDR : STD_LOGIC_VECTOR ( 14 downto 0 );
  signal processing_system7_0_DDR_BA : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal processing_system7_0_DDR_CAS_N : STD_LOGIC;
  signal processing_system7_0_DDR_CKE : STD_LOGIC;
  signal processing_system7_0_DDR_CK_N : STD_LOGIC;
  signal processing_system7_0_DDR_CK_P : STD_LOGIC;
  signal processing_system7_0_DDR_CS_N : STD_LOGIC;
  signal processing_system7_0_DDR_DM : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal processing_system7_0_DDR_DQ : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal processing_system7_0_DDR_DQS_N : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal processing_system7_0_DDR_DQS_P : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal processing_system7_0_DDR_ODT : STD_LOGIC;
  signal processing_system7_0_DDR_RAS_N : STD_LOGIC;
  signal processing_system7_0_DDR_RESET_N : STD_LOGIC;
  signal processing_system7_0_DDR_WE_N : STD_LOGIC;
  signal processing_system7_0_FCLK_RESET0_N : STD_LOGIC;
  signal processing_system7_0_FIXED_IO_DDR_VRN : STD_LOGIC;
  signal processing_system7_0_FIXED_IO_DDR_VRP : STD_LOGIC;
  signal processing_system7_0_FIXED_IO_MIO : STD_LOGIC_VECTOR ( 53 downto 0 );
  signal processing_system7_0_FIXED_IO_PS_CLK : STD_LOGIC;
  signal processing_system7_0_FIXED_IO_PS_PORB : STD_LOGIC;
  signal processing_system7_0_FIXED_IO_PS_SRSTB : STD_LOGIC;
  signal processing_system7_0_M_AXI_GP0_ARADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal processing_system7_0_M_AXI_GP0_ARBURST : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal processing_system7_0_M_AXI_GP0_ARCACHE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal processing_system7_0_M_AXI_GP0_ARID : STD_LOGIC_VECTOR ( 11 downto 0 );
  signal processing_system7_0_M_AXI_GP0_ARLEN : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal processing_system7_0_M_AXI_GP0_ARLOCK : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal processing_system7_0_M_AXI_GP0_ARPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal processing_system7_0_M_AXI_GP0_ARQOS : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal processing_system7_0_M_AXI_GP0_ARREADY : STD_LOGIC;
  signal processing_system7_0_M_AXI_GP0_ARSIZE : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal processing_system7_0_M_AXI_GP0_ARVALID : STD_LOGIC;
  signal processing_system7_0_M_AXI_GP0_AWADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal processing_system7_0_M_AXI_GP0_AWBURST : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal processing_system7_0_M_AXI_GP0_AWCACHE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal processing_system7_0_M_AXI_GP0_AWID : STD_LOGIC_VECTOR ( 11 downto 0 );
  signal processing_system7_0_M_AXI_GP0_AWLEN : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal processing_system7_0_M_AXI_GP0_AWLOCK : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal processing_system7_0_M_AXI_GP0_AWPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal processing_system7_0_M_AXI_GP0_AWQOS : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal processing_system7_0_M_AXI_GP0_AWREADY : STD_LOGIC;
  signal processing_system7_0_M_AXI_GP0_AWSIZE : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal processing_system7_0_M_AXI_GP0_AWVALID : STD_LOGIC;
  signal processing_system7_0_M_AXI_GP0_BID : STD_LOGIC_VECTOR ( 11 downto 0 );
  signal processing_system7_0_M_AXI_GP0_BREADY : STD_LOGIC;
  signal processing_system7_0_M_AXI_GP0_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal processing_system7_0_M_AXI_GP0_BVALID : STD_LOGIC;
  signal processing_system7_0_M_AXI_GP0_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal processing_system7_0_M_AXI_GP0_RID : STD_LOGIC_VECTOR ( 11 downto 0 );
  signal processing_system7_0_M_AXI_GP0_RLAST : STD_LOGIC;
  signal processing_system7_0_M_AXI_GP0_RREADY : STD_LOGIC;
  signal processing_system7_0_M_AXI_GP0_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal processing_system7_0_M_AXI_GP0_RVALID : STD_LOGIC;
  signal processing_system7_0_M_AXI_GP0_WDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal processing_system7_0_M_AXI_GP0_WID : STD_LOGIC_VECTOR ( 11 downto 0 );
  signal processing_system7_0_M_AXI_GP0_WLAST : STD_LOGIC;
  signal processing_system7_0_M_AXI_GP0_WREADY : STD_LOGIC;
  signal processing_system7_0_M_AXI_GP0_WSTRB : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal processing_system7_0_M_AXI_GP0_WVALID : STD_LOGIC;
  signal pulseShaper_dac_x : STD_LOGIC_VECTOR ( 13 downto 0 );
  signal pulseShaper_dac_y : STD_LOGIC_VECTOR ( 13 downto 0 );
  signal pulseShaper_dac_y_impulse : STD_LOGIC_VECTOR ( 13 downto 0 );
  signal pulseShaper_dac_y_rect : STD_LOGIC_VECTOR ( 13 downto 0 );
  signal pulseShaper_y : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal rst_clk_wiz_0_50M_peripheral_aresetn : STD_LOGIC_VECTOR ( 0 to 0 );
  signal rst_ps7_0_50M_peripheral_aresetn : STD_LOGIC_VECTOR ( 0 to 0 );
  signal xlconstant_0_dout : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal NLW_comblock_0_fifo_full_o_UNCONNECTED : STD_LOGIC;
  signal NLW_comblock_0_fifo_overflow_o_UNCONNECTED : STD_LOGIC;
  signal NLW_comblock_0_axif_buser_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_comblock_0_axif_ruser_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_peak_detector_0_pulse_delayed_UNCONNECTED : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal NLW_peak_detector_0_state_UNCONNECTED : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal NLW_pulseShaper_y_impulse_UNCONNECTED : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal NLW_pulseShaper_y_rect_UNCONNECTED : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal NLW_rst_clk_wiz_0_50M_mb_reset_UNCONNECTED : STD_LOGIC;
  signal NLW_rst_clk_wiz_0_50M_bus_struct_reset_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_rst_clk_wiz_0_50M_interconnect_aresetn_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_rst_clk_wiz_0_50M_peripheral_reset_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_rst_ps7_0_50M_mb_reset_UNCONNECTED : STD_LOGIC;
  signal NLW_rst_ps7_0_50M_bus_struct_reset_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_rst_ps7_0_50M_interconnect_aresetn_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_rst_ps7_0_50M_peripheral_reset_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  attribute X_INTERFACE_INFO : string;
  attribute X_INTERFACE_INFO of DDR_cas_n : signal is "xilinx.com:interface:ddrx:1.0 DDR CAS_N";
  attribute X_INTERFACE_INFO of DDR_ck_n : signal is "xilinx.com:interface:ddrx:1.0 DDR CK_N";
  attribute X_INTERFACE_INFO of DDR_ck_p : signal is "xilinx.com:interface:ddrx:1.0 DDR CK_P";
  attribute X_INTERFACE_INFO of DDR_cke : signal is "xilinx.com:interface:ddrx:1.0 DDR CKE";
  attribute X_INTERFACE_INFO of DDR_cs_n : signal is "xilinx.com:interface:ddrx:1.0 DDR CS_N";
  attribute X_INTERFACE_INFO of DDR_odt : signal is "xilinx.com:interface:ddrx:1.0 DDR ODT";
  attribute X_INTERFACE_INFO of DDR_ras_n : signal is "xilinx.com:interface:ddrx:1.0 DDR RAS_N";
  attribute X_INTERFACE_INFO of DDR_reset_n : signal is "xilinx.com:interface:ddrx:1.0 DDR RESET_N";
  attribute X_INTERFACE_INFO of DDR_we_n : signal is "xilinx.com:interface:ddrx:1.0 DDR WE_N";
  attribute X_INTERFACE_INFO of FIXED_IO_ddr_vrn : signal is "xilinx.com:display_processing_system7:fixedio:1.0 FIXED_IO DDR_VRN";
  attribute X_INTERFACE_PARAMETER : string;
  attribute X_INTERFACE_PARAMETER of FIXED_IO_ddr_vrn : signal is "XIL_INTERFACENAME FIXED_IO, CAN_DEBUG false";
  attribute X_INTERFACE_INFO of FIXED_IO_ddr_vrp : signal is "xilinx.com:display_processing_system7:fixedio:1.0 FIXED_IO DDR_VRP";
  attribute X_INTERFACE_INFO of FIXED_IO_ps_clk : signal is "xilinx.com:display_processing_system7:fixedio:1.0 FIXED_IO PS_CLK";
  attribute X_INTERFACE_INFO of FIXED_IO_ps_porb : signal is "xilinx.com:display_processing_system7:fixedio:1.0 FIXED_IO PS_PORB";
  attribute X_INTERFACE_INFO of FIXED_IO_ps_srstb : signal is "xilinx.com:display_processing_system7:fixedio:1.0 FIXED_IO PS_SRSTB";
  attribute X_INTERFACE_INFO of adc_clk : signal is "xilinx.com:signal:clock:1.0 CLK.ADC_CLK CLK";
  attribute X_INTERFACE_PARAMETER of adc_clk : signal is "XIL_INTERFACENAME CLK.ADC_CLK, CLK_DOMAIN /clkDomainCrossing/clk_wiz_1_clk_out1, FREQ_HZ 50000000, FREQ_TOLERANCE_HZ 0, INSERT_VIP 0, PHASE 0.0";
  attribute X_INTERFACE_INFO of dac_clk : signal is "xilinx.com:signal:clock:1.0 CLK.DAC_CLK CLK";
  attribute X_INTERFACE_PARAMETER of dac_clk : signal is "XIL_INTERFACENAME CLK.DAC_CLK, CLK_DOMAIN /clkDomainCrossing/clk_wiz_1_clk_out1, FREQ_HZ 50000000, FREQ_TOLERANCE_HZ 0, INSERT_VIP 0, PHASE 134.0";
  attribute X_INTERFACE_INFO of DDR_addr : signal is "xilinx.com:interface:ddrx:1.0 DDR ADDR";
  attribute X_INTERFACE_PARAMETER of DDR_addr : signal is "XIL_INTERFACENAME DDR, AXI_ARBITRATION_SCHEME TDM, BURST_LENGTH 8, CAN_DEBUG false, CAS_LATENCY 11, CAS_WRITE_LATENCY 11, CS_ENABLED true, DATA_MASK_ENABLED true, DATA_WIDTH 8, MEMORY_TYPE COMPONENTS, MEM_ADDR_MAP ROW_COLUMN_BANK, SLOT Single, TIMEPERIOD_PS 1250";
  attribute X_INTERFACE_INFO of DDR_ba : signal is "xilinx.com:interface:ddrx:1.0 DDR BA";
  attribute X_INTERFACE_INFO of DDR_dm : signal is "xilinx.com:interface:ddrx:1.0 DDR DM";
  attribute X_INTERFACE_INFO of DDR_dq : signal is "xilinx.com:interface:ddrx:1.0 DDR DQ";
  attribute X_INTERFACE_INFO of DDR_dqs_n : signal is "xilinx.com:interface:ddrx:1.0 DDR DQS_N";
  attribute X_INTERFACE_INFO of DDR_dqs_p : signal is "xilinx.com:interface:ddrx:1.0 DDR DQS_P";
  attribute X_INTERFACE_INFO of FIXED_IO_mio : signal is "xilinx.com:display_processing_system7:fixedio:1.0 FIXED_IO MIO";
  attribute X_INTERFACE_INFO of adc_data : signal is "xilinx.com:signal:data:1.0 DATA.ADC_DATA DATA";
  attribute X_INTERFACE_PARAMETER of adc_data : signal is "XIL_INTERFACENAME DATA.ADC_DATA, LAYERED_METADATA undef";
begin
  adc_clk <= clkDomainCrossing_clk_adc_0;
  adc_data_1(13 downto 0) <= adc_data(13 downto 0);
  dac_clk <= clkDomainCrossing_clk_dac_0;
  dac_data(13 downto 0) <= CDCC_DAC_data_out(13 downto 0);
axi_smc: component bd_LabProject_part2_axi_smc_0
     port map (
      M00_AXI_araddr(12 downto 0) => axi_smc_M00_AXI_ARADDR(12 downto 0),
      M00_AXI_arburst(1 downto 0) => axi_smc_M00_AXI_ARBURST(1 downto 0),
      M00_AXI_arcache(3 downto 0) => axi_smc_M00_AXI_ARCACHE(3 downto 0),
      M00_AXI_arlen(7 downto 0) => axi_smc_M00_AXI_ARLEN(7 downto 0),
      M00_AXI_arlock(0) => axi_smc_M00_AXI_ARLOCK(0),
      M00_AXI_arprot(2 downto 0) => axi_smc_M00_AXI_ARPROT(2 downto 0),
      M00_AXI_arqos(3 downto 0) => axi_smc_M00_AXI_ARQOS(3 downto 0),
      M00_AXI_arready => axi_smc_M00_AXI_ARREADY,
      M00_AXI_arsize(2 downto 0) => axi_smc_M00_AXI_ARSIZE(2 downto 0),
      M00_AXI_arvalid => axi_smc_M00_AXI_ARVALID,
      M00_AXI_awaddr(12 downto 0) => axi_smc_M00_AXI_AWADDR(12 downto 0),
      M00_AXI_awburst(1 downto 0) => axi_smc_M00_AXI_AWBURST(1 downto 0),
      M00_AXI_awcache(3 downto 0) => axi_smc_M00_AXI_AWCACHE(3 downto 0),
      M00_AXI_awlen(7 downto 0) => axi_smc_M00_AXI_AWLEN(7 downto 0),
      M00_AXI_awlock(0) => axi_smc_M00_AXI_AWLOCK(0),
      M00_AXI_awprot(2 downto 0) => axi_smc_M00_AXI_AWPROT(2 downto 0),
      M00_AXI_awqos(3 downto 0) => axi_smc_M00_AXI_AWQOS(3 downto 0),
      M00_AXI_awready => axi_smc_M00_AXI_AWREADY,
      M00_AXI_awsize(2 downto 0) => axi_smc_M00_AXI_AWSIZE(2 downto 0),
      M00_AXI_awvalid => axi_smc_M00_AXI_AWVALID,
      M00_AXI_bready => axi_smc_M00_AXI_BREADY,
      M00_AXI_bresp(1 downto 0) => axi_smc_M00_AXI_BRESP(1 downto 0),
      M00_AXI_bvalid => axi_smc_M00_AXI_BVALID,
      M00_AXI_rdata(31 downto 0) => axi_smc_M00_AXI_RDATA(31 downto 0),
      M00_AXI_rlast => axi_smc_M00_AXI_RLAST,
      M00_AXI_rready => axi_smc_M00_AXI_RREADY,
      M00_AXI_rresp(1 downto 0) => axi_smc_M00_AXI_RRESP(1 downto 0),
      M00_AXI_rvalid => axi_smc_M00_AXI_RVALID,
      M00_AXI_wdata(31 downto 0) => axi_smc_M00_AXI_WDATA(31 downto 0),
      M00_AXI_wlast => axi_smc_M00_AXI_WLAST,
      M00_AXI_wready => axi_smc_M00_AXI_WREADY,
      M00_AXI_wstrb(3 downto 0) => axi_smc_M00_AXI_WSTRB(3 downto 0),
      M00_AXI_wvalid => axi_smc_M00_AXI_WVALID,
      M01_AXI_araddr(7 downto 0) => axi_smc_M01_AXI_ARADDR(7 downto 0),
      M01_AXI_arprot(2 downto 0) => axi_smc_M01_AXI_ARPROT(2 downto 0),
      M01_AXI_arready => axi_smc_M01_AXI_ARREADY,
      M01_AXI_arvalid => axi_smc_M01_AXI_ARVALID,
      M01_AXI_awaddr(7 downto 0) => axi_smc_M01_AXI_AWADDR(7 downto 0),
      M01_AXI_awprot(2 downto 0) => axi_smc_M01_AXI_AWPROT(2 downto 0),
      M01_AXI_awready => axi_smc_M01_AXI_AWREADY,
      M01_AXI_awvalid => axi_smc_M01_AXI_AWVALID,
      M01_AXI_bready => axi_smc_M01_AXI_BREADY,
      M01_AXI_bresp(1 downto 0) => axi_smc_M01_AXI_BRESP(1 downto 0),
      M01_AXI_bvalid => axi_smc_M01_AXI_BVALID,
      M01_AXI_rdata(31 downto 0) => axi_smc_M01_AXI_RDATA(31 downto 0),
      M01_AXI_rready => axi_smc_M01_AXI_RREADY,
      M01_AXI_rresp(1 downto 0) => axi_smc_M01_AXI_RRESP(1 downto 0),
      M01_AXI_rvalid => axi_smc_M01_AXI_RVALID,
      M01_AXI_wdata(31 downto 0) => axi_smc_M01_AXI_WDATA(31 downto 0),
      M01_AXI_wready => axi_smc_M01_AXI_WREADY,
      M01_AXI_wstrb(3 downto 0) => axi_smc_M01_AXI_WSTRB(3 downto 0),
      M01_AXI_wvalid => axi_smc_M01_AXI_WVALID,
      S00_AXI_araddr(31 downto 0) => processing_system7_0_M_AXI_GP0_ARADDR(31 downto 0),
      S00_AXI_arburst(1 downto 0) => processing_system7_0_M_AXI_GP0_ARBURST(1 downto 0),
      S00_AXI_arcache(3 downto 0) => processing_system7_0_M_AXI_GP0_ARCACHE(3 downto 0),
      S00_AXI_arid(11 downto 0) => processing_system7_0_M_AXI_GP0_ARID(11 downto 0),
      S00_AXI_arlen(3 downto 0) => processing_system7_0_M_AXI_GP0_ARLEN(3 downto 0),
      S00_AXI_arlock(1 downto 0) => processing_system7_0_M_AXI_GP0_ARLOCK(1 downto 0),
      S00_AXI_arprot(2 downto 0) => processing_system7_0_M_AXI_GP0_ARPROT(2 downto 0),
      S00_AXI_arqos(3 downto 0) => processing_system7_0_M_AXI_GP0_ARQOS(3 downto 0),
      S00_AXI_arready => processing_system7_0_M_AXI_GP0_ARREADY,
      S00_AXI_arsize(2 downto 0) => processing_system7_0_M_AXI_GP0_ARSIZE(2 downto 0),
      S00_AXI_arvalid => processing_system7_0_M_AXI_GP0_ARVALID,
      S00_AXI_awaddr(31 downto 0) => processing_system7_0_M_AXI_GP0_AWADDR(31 downto 0),
      S00_AXI_awburst(1 downto 0) => processing_system7_0_M_AXI_GP0_AWBURST(1 downto 0),
      S00_AXI_awcache(3 downto 0) => processing_system7_0_M_AXI_GP0_AWCACHE(3 downto 0),
      S00_AXI_awid(11 downto 0) => processing_system7_0_M_AXI_GP0_AWID(11 downto 0),
      S00_AXI_awlen(3 downto 0) => processing_system7_0_M_AXI_GP0_AWLEN(3 downto 0),
      S00_AXI_awlock(1 downto 0) => processing_system7_0_M_AXI_GP0_AWLOCK(1 downto 0),
      S00_AXI_awprot(2 downto 0) => processing_system7_0_M_AXI_GP0_AWPROT(2 downto 0),
      S00_AXI_awqos(3 downto 0) => processing_system7_0_M_AXI_GP0_AWQOS(3 downto 0),
      S00_AXI_awready => processing_system7_0_M_AXI_GP0_AWREADY,
      S00_AXI_awsize(2 downto 0) => processing_system7_0_M_AXI_GP0_AWSIZE(2 downto 0),
      S00_AXI_awvalid => processing_system7_0_M_AXI_GP0_AWVALID,
      S00_AXI_bid(11 downto 0) => processing_system7_0_M_AXI_GP0_BID(11 downto 0),
      S00_AXI_bready => processing_system7_0_M_AXI_GP0_BREADY,
      S00_AXI_bresp(1 downto 0) => processing_system7_0_M_AXI_GP0_BRESP(1 downto 0),
      S00_AXI_bvalid => processing_system7_0_M_AXI_GP0_BVALID,
      S00_AXI_rdata(31 downto 0) => processing_system7_0_M_AXI_GP0_RDATA(31 downto 0),
      S00_AXI_rid(11 downto 0) => processing_system7_0_M_AXI_GP0_RID(11 downto 0),
      S00_AXI_rlast => processing_system7_0_M_AXI_GP0_RLAST,
      S00_AXI_rready => processing_system7_0_M_AXI_GP0_RREADY,
      S00_AXI_rresp(1 downto 0) => processing_system7_0_M_AXI_GP0_RRESP(1 downto 0),
      S00_AXI_rvalid => processing_system7_0_M_AXI_GP0_RVALID,
      S00_AXI_wdata(31 downto 0) => processing_system7_0_M_AXI_GP0_WDATA(31 downto 0),
      S00_AXI_wid(11 downto 0) => processing_system7_0_M_AXI_GP0_WID(11 downto 0),
      S00_AXI_wlast => processing_system7_0_M_AXI_GP0_WLAST,
      S00_AXI_wready => processing_system7_0_M_AXI_GP0_WREADY,
      S00_AXI_wstrb(3 downto 0) => processing_system7_0_M_AXI_GP0_WSTRB(3 downto 0),
      S00_AXI_wvalid => processing_system7_0_M_AXI_GP0_WVALID,
      aclk => clk_ps7_1,
      aresetn => rst_ps7_0_50M_peripheral_aresetn(0)
    );
clkDomainCrossing: entity work.clkDomainCrossing_imp_BDW94J
     port map (
      adc_data_in(13 downto 0) => adc_data_1(13 downto 0),
      adc_data_to_dpp(13 downto 0) => Op1_1(13 downto 0),
      clk_adc => clkDomainCrossing_clk_adc_0,
      clk_dac => clkDomainCrossing_clk_dac_0,
      clk_dpp => clkDomainCrossing_clk_dpp,
      clk_ps7 => clk_ps7_1,
      dac_data_from_mux(13 downto 0) => dacMux_y(13 downto 0),
      dac_data_out(13 downto 0) => CDCC_DAC_data_out(13 downto 0),
      resetn => processing_system7_0_FCLK_RESET0_N
    );
comblock_0: component bd_LabProject_part2_comblock_0_0
     port map (
      axif_aclk => clk_ps7_1,
      axif_araddr(12 downto 0) => axi_smc_M00_AXI_ARADDR(12 downto 0),
      axif_arburst(1 downto 0) => axi_smc_M00_AXI_ARBURST(1 downto 0),
      axif_arcache(3 downto 0) => axi_smc_M00_AXI_ARCACHE(3 downto 0),
      axif_aresetn => rst_ps7_0_50M_peripheral_aresetn(0),
      axif_arlen(7 downto 0) => axi_smc_M00_AXI_ARLEN(7 downto 0),
      axif_arlock => axi_smc_M00_AXI_ARLOCK(0),
      axif_arprot(2 downto 0) => axi_smc_M00_AXI_ARPROT(2 downto 0),
      axif_arqos(3 downto 0) => axi_smc_M00_AXI_ARQOS(3 downto 0),
      axif_arready => axi_smc_M00_AXI_ARREADY,
      axif_arregion(3 downto 0) => B"0000",
      axif_arsize(2 downto 0) => axi_smc_M00_AXI_ARSIZE(2 downto 0),
      axif_aruser(0) => '0',
      axif_arvalid => axi_smc_M00_AXI_ARVALID,
      axif_awaddr(12 downto 0) => axi_smc_M00_AXI_AWADDR(12 downto 0),
      axif_awburst(1 downto 0) => axi_smc_M00_AXI_AWBURST(1 downto 0),
      axif_awcache(3 downto 0) => axi_smc_M00_AXI_AWCACHE(3 downto 0),
      axif_awlen(7 downto 0) => axi_smc_M00_AXI_AWLEN(7 downto 0),
      axif_awlock => axi_smc_M00_AXI_AWLOCK(0),
      axif_awprot(2 downto 0) => axi_smc_M00_AXI_AWPROT(2 downto 0),
      axif_awqos(3 downto 0) => axi_smc_M00_AXI_AWQOS(3 downto 0),
      axif_awready => axi_smc_M00_AXI_AWREADY,
      axif_awregion(3 downto 0) => B"0000",
      axif_awsize(2 downto 0) => axi_smc_M00_AXI_AWSIZE(2 downto 0),
      axif_awuser(0) => '0',
      axif_awvalid => axi_smc_M00_AXI_AWVALID,
      axif_bready => axi_smc_M00_AXI_BREADY,
      axif_bresp(1 downto 0) => axi_smc_M00_AXI_BRESP(1 downto 0),
      axif_buser(0) => NLW_comblock_0_axif_buser_UNCONNECTED(0),
      axif_bvalid => axi_smc_M00_AXI_BVALID,
      axif_rdata(31 downto 0) => axi_smc_M00_AXI_RDATA(31 downto 0),
      axif_rlast => axi_smc_M00_AXI_RLAST,
      axif_rready => axi_smc_M00_AXI_RREADY,
      axif_rresp(1 downto 0) => axi_smc_M00_AXI_RRESP(1 downto 0),
      axif_ruser(0) => NLW_comblock_0_axif_ruser_UNCONNECTED(0),
      axif_rvalid => axi_smc_M00_AXI_RVALID,
      axif_wdata(31 downto 0) => axi_smc_M00_AXI_WDATA(31 downto 0),
      axif_wlast => axi_smc_M00_AXI_WLAST,
      axif_wready => axi_smc_M00_AXI_WREADY,
      axif_wstrb(3 downto 0) => axi_smc_M00_AXI_WSTRB(3 downto 0),
      axif_wuser(0) => '0',
      axif_wvalid => axi_smc_M00_AXI_WVALID,
      axil_aclk => clk_ps7_1,
      axil_araddr(7 downto 0) => axi_smc_M01_AXI_ARADDR(7 downto 0),
      axil_aresetn => rst_ps7_0_50M_peripheral_aresetn(0),
      axil_arprot(2 downto 0) => axi_smc_M01_AXI_ARPROT(2 downto 0),
      axil_arready => axi_smc_M01_AXI_ARREADY,
      axil_arvalid => axi_smc_M01_AXI_ARVALID,
      axil_awaddr(7 downto 0) => axi_smc_M01_AXI_AWADDR(7 downto 0),
      axil_awprot(2 downto 0) => axi_smc_M01_AXI_AWPROT(2 downto 0),
      axil_awready => axi_smc_M01_AXI_AWREADY,
      axil_awvalid => axi_smc_M01_AXI_AWVALID,
      axil_bready => axi_smc_M01_AXI_BREADY,
      axil_bresp(1 downto 0) => axi_smc_M01_AXI_BRESP(1 downto 0),
      axil_bvalid => axi_smc_M01_AXI_BVALID,
      axil_rdata(31 downto 0) => axi_smc_M01_AXI_RDATA(31 downto 0),
      axil_rready => axi_smc_M01_AXI_RREADY,
      axil_rresp(1 downto 0) => axi_smc_M01_AXI_RRESP(1 downto 0),
      axil_rvalid => axi_smc_M01_AXI_RVALID,
      axil_wdata(31 downto 0) => axi_smc_M01_AXI_WDATA(31 downto 0),
      axil_wready => axi_smc_M01_AXI_WREADY,
      axil_wstrb(3 downto 0) => axi_smc_M01_AXI_WSTRB(3 downto 0),
      axil_wvalid => axi_smc_M01_AXI_WVALID,
      fifo_afull_o => fifo_a_full_i_1,
      fifo_clear_i => '0',
      fifo_clk_i => clkDomainCrossing_clk_dpp,
      fifo_data_i(13 downto 0) => oscilloscope_fifo_data_o(13 downto 0),
      fifo_full_o => NLW_comblock_0_fifo_full_o_UNCONNECTED,
      fifo_overflow_o => NLW_comblock_0_fifo_overflow_o_UNCONNECTED,
      fifo_we_i => oscilloscope_fifo_data_we_o,
      ram_addr_i(10 downto 0) => histogram_gen_bram_addr(10 downto 0),
      ram_clk_i => clkDomainCrossing_clk_dpp,
      ram_data_i(31 downto 0) => histogram_gen_bram_din(31 downto 0),
      ram_data_o(31 downto 0) => comblock_0_ram_data_o(31 downto 0),
      ram_we_i => histogram_gen_bram_we,
      reg0_o(31 downto 0) => comblock_0_reg0_o(31 downto 0),
      reg10_o(31 downto 0) => comblock_0_reg10_o(31 downto 0),
      reg11_o(31 downto 0) => comblock_0_reg11_o(31 downto 0),
      reg12_o(31 downto 0) => comblock_0_reg12_o(31 downto 0),
      reg13_o(31 downto 0) => comblock_0_reg13_o(31 downto 0),
      reg14_o(31 downto 0) => comblock_0_reg14_o(31 downto 0),
      reg15_o(31 downto 0) => comblock_0_reg15_o(31 downto 0),
      reg1_o(31 downto 0) => comblock_0_reg1_o(31 downto 0),
      reg2_o(31 downto 0) => comblock_0_reg2_o(31 downto 0),
      reg3_o(31 downto 0) => comblock_0_reg3_o(31 downto 0),
      reg4_o(31 downto 0) => comblock_0_reg4_o(31 downto 0),
      reg5_o(31 downto 0) => comblock_0_reg5_o(31 downto 0),
      reg6_o(31 downto 0) => comblock_0_reg6_o(31 downto 0),
      reg7_o(31 downto 0) => comblock_0_reg7_o(31 downto 0),
      reg8_o(31 downto 0) => comblock_0_reg8_o(31 downto 0),
      reg9_o(31 downto 0) => comblock_0_reg9_o(31 downto 0)
    );
dacMux: component bd_LabProject_part2_dacMux_0
     port map (
      sel(2 downto 0) => comblock_0_reg15_o(2 downto 0),
      x0(13 downto 0) => pulseShaper_dac_x(13 downto 0),
      x1(13 downto 0) => pulseShaper_dac_y(13 downto 0),
      x2(13 downto 0) => pulseShaper_dac_y_impulse(13 downto 0),
      x3(13 downto 0) => pulseShaper_dac_y_rect(13 downto 0),
      x4(13 downto 0) => peak_detector_0_dac_peak_amp(13 downto 0),
      x5(13 downto 0) => B"00000000000000",
      x6(13 downto 0) => B"00000000000000",
      x7(13 downto 0) => B"00000000000000",
      y(13 downto 0) => dacMux_y(13 downto 0)
    );
histogram_gen: component bd_LabProject_part2_histogram_gen_0
     port map (
      bram_addr(10 downto 0) => histogram_gen_bram_addr(10 downto 0),
      bram_din(31 downto 0) => histogram_gen_bram_din(31 downto 0),
      bram_dout(31 downto 0) => comblock_0_ram_data_o(31 downto 0),
      bram_we => histogram_gen_bram_we,
      clk => clkDomainCrossing_clk_dpp,
      peak_amp(15 downto 0) => peak_detector_0_peak_amp(15 downto 0),
      peak_amp_rdy => peak_detector_0_peak_amp_rdy(0),
      rstn => rst_clk_wiz_0_50M_peripheral_aresetn(0)
    );
oscilloscope: entity work.oscilloscope_imp_KTN66L
     port map (
      aresetn => rst_clk_wiz_0_50M_peripheral_aresetn(0),
      clk => clkDomainCrossing_clk_dpp,
      data_in(13 downto 0) => Op1_1(13 downto 0),
      fifo_a_full_i(0) => fifo_a_full_i_1,
      fifo_data_o(13 downto 0) => oscilloscope_fifo_data_o(13 downto 0),
      fifo_data_we_o => oscilloscope_fifo_data_we_o,
      pulse_len(31 downto 0) => comblock_0_reg0_o(31 downto 0),
      samplesBeforeTrigger(31 downto 0) => comblock_0_reg1_o(31 downto 0),
      threshold(31 downto 0) => comblock_0_reg2_o(31 downto 0)
    );
peak_detector_0: component bd_LabProject_part2_peak_detector_0_0
     port map (
      clk => clkDomainCrossing_clk_dpp,
      dac_peak_amp(13 downto 0) => peak_detector_0_dac_peak_amp(13 downto 0),
      peak_amp(15 downto 0) => peak_detector_0_peak_amp(15 downto 0),
      peak_amp_rdy(0) => peak_detector_0_peak_amp_rdy(0),
      pulse_delayed(15 downto 0) => NLW_peak_detector_0_pulse_delayed_UNCONNECTED(15 downto 0),
      r1_x_delay(31 downto 0) => comblock_0_reg11_o(31 downto 0),
      r2_x_noise(31 downto 0) => comblock_0_reg12_o(31 downto 0),
      r3_x_min_max(31 downto 0) => comblock_0_reg13_o(31 downto 0),
      r4_en_pkd(31 downto 0) => comblock_0_reg14_o(31 downto 0),
      state(2 downto 0) => NLW_peak_detector_0_state_UNCONNECTED(2 downto 0),
      x(15 downto 0) => pulseShaper_y(15 downto 0)
    );
processing_system7_0: component bd_LabProject_part2_processing_system7_0_0
     port map (
      DDR_Addr(14 downto 0) => DDR_addr(14 downto 0),
      DDR_BankAddr(2 downto 0) => DDR_ba(2 downto 0),
      DDR_CAS_n => DDR_cas_n,
      DDR_CKE => DDR_cke,
      DDR_CS_n => DDR_cs_n,
      DDR_Clk => DDR_ck_p,
      DDR_Clk_n => DDR_ck_n,
      DDR_DM(3 downto 0) => DDR_dm(3 downto 0),
      DDR_DQ(31 downto 0) => DDR_dq(31 downto 0),
      DDR_DQS(3 downto 0) => DDR_dqs_p(3 downto 0),
      DDR_DQS_n(3 downto 0) => DDR_dqs_n(3 downto 0),
      DDR_DRSTB => DDR_reset_n,
      DDR_ODT => DDR_odt,
      DDR_RAS_n => DDR_ras_n,
      DDR_VRN => FIXED_IO_ddr_vrn,
      DDR_VRP => FIXED_IO_ddr_vrp,
      DDR_WEB => DDR_we_n,
      FCLK_CLK0 => clk_ps7_1,
      FCLK_RESET0_N => processing_system7_0_FCLK_RESET0_N,
      MIO(53 downto 0) => FIXED_IO_mio(53 downto 0),
      M_AXI_GP0_ACLK => clk_ps7_1,
      M_AXI_GP0_ARADDR(31 downto 0) => processing_system7_0_M_AXI_GP0_ARADDR(31 downto 0),
      M_AXI_GP0_ARBURST(1 downto 0) => processing_system7_0_M_AXI_GP0_ARBURST(1 downto 0),
      M_AXI_GP0_ARCACHE(3 downto 0) => processing_system7_0_M_AXI_GP0_ARCACHE(3 downto 0),
      M_AXI_GP0_ARID(11 downto 0) => processing_system7_0_M_AXI_GP0_ARID(11 downto 0),
      M_AXI_GP0_ARLEN(3 downto 0) => processing_system7_0_M_AXI_GP0_ARLEN(3 downto 0),
      M_AXI_GP0_ARLOCK(1 downto 0) => processing_system7_0_M_AXI_GP0_ARLOCK(1 downto 0),
      M_AXI_GP0_ARPROT(2 downto 0) => processing_system7_0_M_AXI_GP0_ARPROT(2 downto 0),
      M_AXI_GP0_ARQOS(3 downto 0) => processing_system7_0_M_AXI_GP0_ARQOS(3 downto 0),
      M_AXI_GP0_ARREADY => processing_system7_0_M_AXI_GP0_ARREADY,
      M_AXI_GP0_ARSIZE(2 downto 0) => processing_system7_0_M_AXI_GP0_ARSIZE(2 downto 0),
      M_AXI_GP0_ARVALID => processing_system7_0_M_AXI_GP0_ARVALID,
      M_AXI_GP0_AWADDR(31 downto 0) => processing_system7_0_M_AXI_GP0_AWADDR(31 downto 0),
      M_AXI_GP0_AWBURST(1 downto 0) => processing_system7_0_M_AXI_GP0_AWBURST(1 downto 0),
      M_AXI_GP0_AWCACHE(3 downto 0) => processing_system7_0_M_AXI_GP0_AWCACHE(3 downto 0),
      M_AXI_GP0_AWID(11 downto 0) => processing_system7_0_M_AXI_GP0_AWID(11 downto 0),
      M_AXI_GP0_AWLEN(3 downto 0) => processing_system7_0_M_AXI_GP0_AWLEN(3 downto 0),
      M_AXI_GP0_AWLOCK(1 downto 0) => processing_system7_0_M_AXI_GP0_AWLOCK(1 downto 0),
      M_AXI_GP0_AWPROT(2 downto 0) => processing_system7_0_M_AXI_GP0_AWPROT(2 downto 0),
      M_AXI_GP0_AWQOS(3 downto 0) => processing_system7_0_M_AXI_GP0_AWQOS(3 downto 0),
      M_AXI_GP0_AWREADY => processing_system7_0_M_AXI_GP0_AWREADY,
      M_AXI_GP0_AWSIZE(2 downto 0) => processing_system7_0_M_AXI_GP0_AWSIZE(2 downto 0),
      M_AXI_GP0_AWVALID => processing_system7_0_M_AXI_GP0_AWVALID,
      M_AXI_GP0_BID(11 downto 0) => processing_system7_0_M_AXI_GP0_BID(11 downto 0),
      M_AXI_GP0_BREADY => processing_system7_0_M_AXI_GP0_BREADY,
      M_AXI_GP0_BRESP(1 downto 0) => processing_system7_0_M_AXI_GP0_BRESP(1 downto 0),
      M_AXI_GP0_BVALID => processing_system7_0_M_AXI_GP0_BVALID,
      M_AXI_GP0_RDATA(31 downto 0) => processing_system7_0_M_AXI_GP0_RDATA(31 downto 0),
      M_AXI_GP0_RID(11 downto 0) => processing_system7_0_M_AXI_GP0_RID(11 downto 0),
      M_AXI_GP0_RLAST => processing_system7_0_M_AXI_GP0_RLAST,
      M_AXI_GP0_RREADY => processing_system7_0_M_AXI_GP0_RREADY,
      M_AXI_GP0_RRESP(1 downto 0) => processing_system7_0_M_AXI_GP0_RRESP(1 downto 0),
      M_AXI_GP0_RVALID => processing_system7_0_M_AXI_GP0_RVALID,
      M_AXI_GP0_WDATA(31 downto 0) => processing_system7_0_M_AXI_GP0_WDATA(31 downto 0),
      M_AXI_GP0_WID(11 downto 0) => processing_system7_0_M_AXI_GP0_WID(11 downto 0),
      M_AXI_GP0_WLAST => processing_system7_0_M_AXI_GP0_WLAST,
      M_AXI_GP0_WREADY => processing_system7_0_M_AXI_GP0_WREADY,
      M_AXI_GP0_WSTRB(3 downto 0) => processing_system7_0_M_AXI_GP0_WSTRB(3 downto 0),
      M_AXI_GP0_WVALID => processing_system7_0_M_AXI_GP0_WVALID,
      PS_CLK => FIXED_IO_ps_clk,
      PS_PORB => FIXED_IO_ps_porb,
      PS_SRSTB => FIXED_IO_ps_srstb
    );
pulseInvertFlag: component bd_LabProject_part2_pulseInvertFlag_0
     port map (
      dout(31 downto 0) => xlconstant_0_dout(31 downto 0)
    );
pulseShaper: component bd_LabProject_part2_pulseShaper_0
     port map (
      clk => clkDomainCrossing_clk_dpp,
      dac_x(13 downto 0) => pulseShaper_dac_x(13 downto 0),
      dac_y(13 downto 0) => pulseShaper_dac_y(13 downto 0),
      dac_y_impulse(13 downto 0) => pulseShaper_dac_y_impulse(13 downto 0),
      dac_y_rect(13 downto 0) => pulseShaper_dac_y_rect(13 downto 0),
      r1_b10(31 downto 0) => comblock_0_reg3_o(31 downto 0),
      r2_na(31 downto 0) => comblock_0_reg4_o(31 downto 0),
      r3_nb(31 downto 0) => comblock_0_reg5_o(31 downto 0),
      r4_na_inv(31 downto 0) => comblock_0_reg6_o(31 downto 0),
      r5_b00(31 downto 0) => comblock_0_reg7_o(31 downto 0),
      r6_b20(31 downto 0) => comblock_0_reg8_o(31 downto 0),
      r7_dc_offset(31 downto 0) => comblock_0_reg9_o(31 downto 0),
      r8_invertoffset_dc_offset(31 downto 0) => comblock_0_reg10_o(31 downto 0),
      r9_flags(31 downto 0) => xlconstant_0_dout(31 downto 0),
      x(13 downto 0) => Op1_1(13 downto 0),
      y(15 downto 0) => pulseShaper_y(15 downto 0),
      y_impulse(15 downto 0) => NLW_pulseShaper_y_impulse_UNCONNECTED(15 downto 0),
      y_rect(15 downto 0) => NLW_pulseShaper_y_rect_UNCONNECTED(15 downto 0)
    );
rst_clk_wiz_0_50M: component bd_LabProject_part2_rst_clk_wiz_0_50M_0
     port map (
      aux_reset_in => '1',
      bus_struct_reset(0) => NLW_rst_clk_wiz_0_50M_bus_struct_reset_UNCONNECTED(0),
      dcm_locked => '1',
      ext_reset_in => processing_system7_0_FCLK_RESET0_N,
      interconnect_aresetn(0) => NLW_rst_clk_wiz_0_50M_interconnect_aresetn_UNCONNECTED(0),
      mb_debug_sys_rst => '0',
      mb_reset => NLW_rst_clk_wiz_0_50M_mb_reset_UNCONNECTED,
      peripheral_aresetn(0) => rst_clk_wiz_0_50M_peripheral_aresetn(0),
      peripheral_reset(0) => NLW_rst_clk_wiz_0_50M_peripheral_reset_UNCONNECTED(0),
      slowest_sync_clk => clkDomainCrossing_clk_dpp
    );
rst_ps7_0_50M: component bd_LabProject_part2_rst_ps7_0_50M_0
     port map (
      aux_reset_in => '1',
      bus_struct_reset(0) => NLW_rst_ps7_0_50M_bus_struct_reset_UNCONNECTED(0),
      dcm_locked => '1',
      ext_reset_in => processing_system7_0_FCLK_RESET0_N,
      interconnect_aresetn(0) => NLW_rst_ps7_0_50M_interconnect_aresetn_UNCONNECTED(0),
      mb_debug_sys_rst => '0',
      mb_reset => NLW_rst_ps7_0_50M_mb_reset_UNCONNECTED,
      peripheral_aresetn(0) => rst_ps7_0_50M_peripheral_aresetn(0),
      peripheral_reset(0) => NLW_rst_ps7_0_50M_peripheral_reset_UNCONNECTED(0),
      slowest_sync_clk => clk_ps7_1
    );
end STRUCTURE;
