-- Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2022.2 (lin64) Build 3671981 Fri Oct 14 04:59:54 MDT 2022
-- Date        : Thu Nov 30 17:23:46 2023
-- Host        : node07 running 64-bit CentOS Linux release 7.4.1708 (Core)
-- Command     : write_vhdl -force -mode synth_stub
--               /home/argo49/smr3891/labs/project2_xrf/project2_xrf.gen/sources_1/bd/xrf_dpp/ip/xrf_dpp_DPP_module_FIR_0_0/xrf_dpp_DPP_module_FIR_0_0_stub.vhdl
-- Design      : xrf_dpp_DPP_module_FIR_0_0
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xc7z020clg484-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity xrf_dpp_DPP_module_FIR_0_0 is
  Port ( 
    clk_i : in STD_LOGIC;
    rst_i : in STD_LOGIC;
    ena_i : in STD_LOGIC;
    ADC_data_i : in STD_LOGIC_VECTOR ( 15 downto 0 );
    valid_i : in STD_LOGIC;
    read_ena_o : out STD_LOGIC;
    cf_1_i : in STD_LOGIC_VECTOR ( 4 downto 0 );
    cf_2_i : in STD_LOGIC_VECTOR ( 4 downto 0 );
    cf_3_i : in STD_LOGIC_VECTOR ( 4 downto 0 );
    det_threshold_high_i : in STD_LOGIC_VECTOR ( 15 downto 0 );
    det_threshold_low_i : in STD_LOGIC_VECTOR ( 15 downto 0 );
    op_mode_i : in STD_LOGIC_VECTOR ( 1 downto 0 );
    data_o : out STD_LOGIC_VECTOR ( 15 downto 0 );
    fifo_wr_en_mux_out : out STD_LOGIC
  );

end xrf_dpp_DPP_module_FIR_0_0;

architecture stub of xrf_dpp_DPP_module_FIR_0_0 is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
attribute black_box_pad_pin of stub : architecture is "clk_i,rst_i,ena_i,ADC_data_i[15:0],valid_i,read_ena_o,cf_1_i[4:0],cf_2_i[4:0],cf_3_i[4:0],det_threshold_high_i[15:0],det_threshold_low_i[15:0],op_mode_i[1:0],data_o[15:0],fifo_wr_en_mux_out";
attribute x_core_info : string;
attribute x_core_info of stub : architecture is "DPP_module_FIR,Vivado 2022.2";
begin
end;
