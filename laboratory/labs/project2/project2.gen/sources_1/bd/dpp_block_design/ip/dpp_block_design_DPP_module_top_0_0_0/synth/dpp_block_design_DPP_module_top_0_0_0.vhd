-- (c) Copyright 1995-2023 Xilinx, Inc. All rights reserved.
-- 
-- This file contains confidential and proprietary information
-- of Xilinx, Inc. and is protected under U.S. and
-- international copyright and other intellectual property
-- laws.
-- 
-- DISCLAIMER
-- This disclaimer is not a license and does not grant any
-- rights to the materials distributed herewith. Except as
-- otherwise provided in a valid license issued to you by
-- Xilinx, and to the maximum extent permitted by applicable
-- law: (1) THESE MATERIALS ARE MADE AVAILABLE "AS IS" AND
-- WITH ALL FAULTS, AND XILINX HEREBY DISCLAIMS ALL WARRANTIES
-- AND CONDITIONS, EXPRESS, IMPLIED, OR STATUTORY, INCLUDING
-- BUT NOT LIMITED TO WARRANTIES OF MERCHANTABILITY, NON-
-- INFRINGEMENT, OR FITNESS FOR ANY PARTICULAR PURPOSE; and
-- (2) Xilinx shall not be liable (whether in contract or tort,
-- including negligence, or under any other theory of
-- liability) for any loss or damage of any kind or nature
-- related to, arising under or in connection with these
-- materials, including for any direct, or any indirect,
-- special, incidental, or consequential loss or damage
-- (including loss of data, profits, goodwill, or any type of
-- loss or damage suffered as a result of any action brought
-- by a third party) even if such damage or loss was
-- reasonably foreseeable or Xilinx had been advised of the
-- possibility of the same.
-- 
-- CRITICAL APPLICATIONS
-- Xilinx products are not designed or intended to be fail-
-- safe, or for use in any application requiring fail-safe
-- performance, such as life-support or safety devices or
-- systems, Class III medical devices, nuclear facilities,
-- applications related to the deployment of airbags, or any
-- other applications that could lead to death, personal
-- injury, or severe property or environmental damage
-- (individually and collectively, "Critical
-- Applications"). Customer assumes the sole risk and
-- liability of any use of Xilinx products in Critical
-- Applications, subject only to applicable laws and
-- regulations governing limitations on product liability.
-- 
-- THIS COPYRIGHT NOTICE AND DISCLAIMER MUST BE RETAINED AS
-- PART OF THIS FILE AT ALL TIMES.
-- 
-- DO NOT MODIFY THIS FILE.

-- IP VLNV: xilinx.com:module_ref:DPP_module_top_0:1.0
-- IP Revision: 1

LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
USE ieee.numeric_std.ALL;

ENTITY dpp_block_design_DPP_module_top_0_0_0 IS
  PORT (
    clk_i : IN STD_LOGIC;
    rst_i : IN STD_LOGIC;
    ena_i : IN STD_LOGIC;
    ADC_data_i : IN STD_LOGIC_VECTOR(11 DOWNTO 0);
    valid_i : IN STD_LOGIC;
    threshold_high_i : IN STD_LOGIC_VECTOR(15 DOWNTO 0);
    op_mode_i : IN STD_LOGIC_VECTOR(1 DOWNTO 0);
    data_o : OUT STD_LOGIC_VECTOR(15 DOWNTO 0);
    fifo_wr_en_mux_out : OUT STD_LOGIC
  );
END dpp_block_design_DPP_module_top_0_0_0;

ARCHITECTURE dpp_block_design_DPP_module_top_0_0_0_arch OF dpp_block_design_DPP_module_top_0_0_0 IS
  ATTRIBUTE DowngradeIPIdentifiedWarnings : STRING;
  ATTRIBUTE DowngradeIPIdentifiedWarnings OF dpp_block_design_DPP_module_top_0_0_0_arch: ARCHITECTURE IS "yes";
  COMPONENT DPP_module_top_0 IS
    PORT (
      clk_i : IN STD_LOGIC;
      rst_i : IN STD_LOGIC;
      ena_i : IN STD_LOGIC;
      ADC_data_i : IN STD_LOGIC_VECTOR(11 DOWNTO 0);
      valid_i : IN STD_LOGIC;
      threshold_high_i : IN STD_LOGIC_VECTOR(15 DOWNTO 0);
      op_mode_i : IN STD_LOGIC_VECTOR(1 DOWNTO 0);
      data_o : OUT STD_LOGIC_VECTOR(15 DOWNTO 0);
      fifo_wr_en_mux_out : OUT STD_LOGIC
    );
  END COMPONENT DPP_module_top_0;
  ATTRIBUTE X_CORE_INFO : STRING;
  ATTRIBUTE X_CORE_INFO OF dpp_block_design_DPP_module_top_0_0_0_arch: ARCHITECTURE IS "DPP_module_top_0,Vivado 2022.2";
  ATTRIBUTE CHECK_LICENSE_TYPE : STRING;
  ATTRIBUTE CHECK_LICENSE_TYPE OF dpp_block_design_DPP_module_top_0_0_0_arch : ARCHITECTURE IS "dpp_block_design_DPP_module_top_0_0_0,DPP_module_top_0,{}";
  ATTRIBUTE CORE_GENERATION_INFO : STRING;
  ATTRIBUTE CORE_GENERATION_INFO OF dpp_block_design_DPP_module_top_0_0_0_arch: ARCHITECTURE IS "dpp_block_design_DPP_module_top_0_0_0,DPP_module_top_0,{x_ipProduct=Vivado 2022.2,x_ipVendor=xilinx.com,x_ipLibrary=module_ref,x_ipName=DPP_module_top_0,x_ipVersion=1.0,x_ipCoreRevision=1,x_ipLanguage=VHDL,x_ipSimLanguage=VHDL}";
  ATTRIBUTE IP_DEFINITION_SOURCE : STRING;
  ATTRIBUTE IP_DEFINITION_SOURCE OF dpp_block_design_DPP_module_top_0_0_0_arch: ARCHITECTURE IS "module_ref";
BEGIN
  U0 : DPP_module_top_0
    PORT MAP (
      clk_i => clk_i,
      rst_i => rst_i,
      ena_i => ena_i,
      ADC_data_i => ADC_data_i,
      valid_i => valid_i,
      threshold_high_i => threshold_high_i,
      op_mode_i => op_mode_i,
      data_o => data_o,
      fifo_wr_en_mux_out => fifo_wr_en_mux_out
    );
END dpp_block_design_DPP_module_top_0_0_0_arch;
