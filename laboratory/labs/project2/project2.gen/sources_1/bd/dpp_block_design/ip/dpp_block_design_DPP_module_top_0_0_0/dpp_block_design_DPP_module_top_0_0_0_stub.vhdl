-- Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2022.2 (lin64) Build 3671981 Fri Oct 14 04:59:54 MDT 2022
-- Date        : Thu Nov 30 14:22:12 2023
-- Host        : ins45238 running 64-bit Ubuntu 22.04.3 LTS
-- Command     : write_vhdl -force -mode synth_stub
--               /home/argo49/smr3891/labs/project2/project2.gen/sources_1/bd/dpp_block_design/ip/dpp_block_design_DPP_module_top_0_0_0/dpp_block_design_DPP_module_top_0_0_0_stub.vhdl
-- Design      : dpp_block_design_DPP_module_top_0_0_0
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xc7z020clg484-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity dpp_block_design_DPP_module_top_0_0_0 is
  Port ( 
    clk_i : in STD_LOGIC;
    rst_i : in STD_LOGIC;
    ena_i : in STD_LOGIC;
    ADC_data_i : in STD_LOGIC_VECTOR ( 11 downto 0 );
    valid_i : in STD_LOGIC;
    threshold_high_i : in STD_LOGIC_VECTOR ( 15 downto 0 );
    op_mode_i : in STD_LOGIC_VECTOR ( 1 downto 0 );
    data_o : out STD_LOGIC_VECTOR ( 15 downto 0 );
    fifo_wr_en_mux_out : out STD_LOGIC
  );

end dpp_block_design_DPP_module_top_0_0_0;

architecture stub of dpp_block_design_DPP_module_top_0_0_0 is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
attribute black_box_pad_pin of stub : architecture is "clk_i,rst_i,ena_i,ADC_data_i[11:0],valid_i,threshold_high_i[15:0],op_mode_i[1:0],data_o[15:0],fifo_wr_en_mux_out";
attribute x_core_info : string;
attribute x_core_info of stub : architecture is "DPP_module_top_0,Vivado 2022.2";
begin
end;
