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

-- IP VLNV: IAEA:shaper:shaper:1.0
-- IP Revision: 330452475

LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
USE ieee.numeric_std.ALL;

LIBRARY xil_defaultlib;
USE xil_defaultlib.shaper;

ENTITY bd_LabProject_part2_pulseShaper_0 IS
  PORT (
    r1_b10 : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
    r2_na : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
    r3_nb : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
    r4_na_inv : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
    r5_b00 : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
    r6_b20 : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
    r7_dc_offset : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
    r8_invertoffset_dc_offset : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
    r9_flags : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
    x : IN STD_LOGIC_VECTOR(13 DOWNTO 0);
    clk : IN STD_LOGIC;
    dac_x : OUT STD_LOGIC_VECTOR(13 DOWNTO 0);
    dac_y : OUT STD_LOGIC_VECTOR(13 DOWNTO 0);
    dac_y_impulse : OUT STD_LOGIC_VECTOR(13 DOWNTO 0);
    dac_y_rect : OUT STD_LOGIC_VECTOR(13 DOWNTO 0);
    y : OUT STD_LOGIC_VECTOR(15 DOWNTO 0);
    y_impulse : OUT STD_LOGIC_VECTOR(15 DOWNTO 0);
    y_rect : OUT STD_LOGIC_VECTOR(15 DOWNTO 0)
  );
END bd_LabProject_part2_pulseShaper_0;

ARCHITECTURE bd_LabProject_part2_pulseShaper_0_arch OF bd_LabProject_part2_pulseShaper_0 IS
  ATTRIBUTE DowngradeIPIdentifiedWarnings : STRING;
  ATTRIBUTE DowngradeIPIdentifiedWarnings OF bd_LabProject_part2_pulseShaper_0_arch: ARCHITECTURE IS "yes";
  COMPONENT shaper IS
    PORT (
      r1_b10 : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
      r2_na : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
      r3_nb : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
      r4_na_inv : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
      r5_b00 : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
      r6_b20 : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
      r7_dc_offset : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
      r8_invertoffset_dc_offset : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
      r9_flags : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
      x : IN STD_LOGIC_VECTOR(13 DOWNTO 0);
      clk : IN STD_LOGIC;
      dac_x : OUT STD_LOGIC_VECTOR(13 DOWNTO 0);
      dac_y : OUT STD_LOGIC_VECTOR(13 DOWNTO 0);
      dac_y_impulse : OUT STD_LOGIC_VECTOR(13 DOWNTO 0);
      dac_y_rect : OUT STD_LOGIC_VECTOR(13 DOWNTO 0);
      y : OUT STD_LOGIC_VECTOR(15 DOWNTO 0);
      y_impulse : OUT STD_LOGIC_VECTOR(15 DOWNTO 0);
      y_rect : OUT STD_LOGIC_VECTOR(15 DOWNTO 0)
    );
  END COMPONENT shaper;
  ATTRIBUTE X_CORE_INFO : STRING;
  ATTRIBUTE X_CORE_INFO OF bd_LabProject_part2_pulseShaper_0_arch: ARCHITECTURE IS "shaper,Vivado 2022.2";
  ATTRIBUTE CHECK_LICENSE_TYPE : STRING;
  ATTRIBUTE CHECK_LICENSE_TYPE OF bd_LabProject_part2_pulseShaper_0_arch : ARCHITECTURE IS "bd_LabProject_part2_pulseShaper_0,shaper,{}";
  ATTRIBUTE IP_DEFINITION_SOURCE : STRING;
  ATTRIBUTE IP_DEFINITION_SOURCE OF bd_LabProject_part2_pulseShaper_0_arch: ARCHITECTURE IS "sysgen";
  ATTRIBUTE X_INTERFACE_INFO : STRING;
  ATTRIBUTE X_INTERFACE_PARAMETER : STRING;
  ATTRIBUTE X_INTERFACE_PARAMETER OF clk: SIGNAL IS "XIL_INTERFACENAME clk, FREQ_HZ 50000000, FREQ_TOLERANCE_HZ 0, PHASE 94.0, CLK_DOMAIN /clkDomainCrossing/clk_wiz_1_clk_out1, INSERT_VIP 0";
  ATTRIBUTE X_INTERFACE_INFO OF clk: SIGNAL IS "xilinx.com:signal:clock:1.0 clk CLK";
  ATTRIBUTE X_INTERFACE_PARAMETER OF dac_x: SIGNAL IS "XIL_INTERFACENAME dac_x, LAYERED_METADATA xilinx.com:interface:datatypes:1.0 {DATA {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 14} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0} real {fixed {fractwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}}" & 
" value 0} signed {attribs {resolve_type immediate dependency {} format bool minimum {} maximum {}} value false}}}}}}";
  ATTRIBUTE X_INTERFACE_INFO OF dac_x: SIGNAL IS "xilinx.com:signal:data:1.0 dac_x DATA";
  ATTRIBUTE X_INTERFACE_PARAMETER OF dac_y: SIGNAL IS "XIL_INTERFACENAME dac_y, LAYERED_METADATA xilinx.com:interface:datatypes:1.0 {DATA {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 14} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0} real {fixed {fractwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}}" & 
" value 0} signed {attribs {resolve_type immediate dependency {} format bool minimum {} maximum {}} value false}}}}}}";
  ATTRIBUTE X_INTERFACE_INFO OF dac_y: SIGNAL IS "xilinx.com:signal:data:1.0 dac_y DATA";
  ATTRIBUTE X_INTERFACE_PARAMETER OF dac_y_impulse: SIGNAL IS "XIL_INTERFACENAME dac_y_impulse, LAYERED_METADATA xilinx.com:interface:datatypes:1.0 {DATA {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 14} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0} real {fixed {fractwidth {attribs {resolve_type immediate dependency {} format long minimum {} max" & 
"imum {}} value 0} signed {attribs {resolve_type immediate dependency {} format bool minimum {} maximum {}} value false}}}}}}";
  ATTRIBUTE X_INTERFACE_INFO OF dac_y_impulse: SIGNAL IS "xilinx.com:signal:data:1.0 dac_y_impulse DATA";
  ATTRIBUTE X_INTERFACE_PARAMETER OF dac_y_rect: SIGNAL IS "XIL_INTERFACENAME dac_y_rect, LAYERED_METADATA xilinx.com:interface:datatypes:1.0 {DATA {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 14} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0} real {fixed {fractwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximu" & 
"m {}} value 0} signed {attribs {resolve_type immediate dependency {} format bool minimum {} maximum {}} value false}}}}}}";
  ATTRIBUTE X_INTERFACE_INFO OF dac_y_rect: SIGNAL IS "xilinx.com:signal:data:1.0 dac_y_rect DATA";
  ATTRIBUTE X_INTERFACE_PARAMETER OF r1_b10: SIGNAL IS "XIL_INTERFACENAME r1_b10, LAYERED_METADATA xilinx.com:interface:datatypes:1.0 {DATA {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 32} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0} real {fixed {fractwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}" & 
"} value 0} signed {attribs {resolve_type immediate dependency {} format bool minimum {} maximum {}} value false}}}}}}";
  ATTRIBUTE X_INTERFACE_INFO OF r1_b10: SIGNAL IS "xilinx.com:signal:data:1.0 r1_b10 DATA";
  ATTRIBUTE X_INTERFACE_PARAMETER OF r2_na: SIGNAL IS "XIL_INTERFACENAME r2_na, LAYERED_METADATA xilinx.com:interface:datatypes:1.0 {DATA {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 32} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0} real {fixed {fractwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}}" & 
" value 0} signed {attribs {resolve_type immediate dependency {} format bool minimum {} maximum {}} value false}}}}}}";
  ATTRIBUTE X_INTERFACE_INFO OF r2_na: SIGNAL IS "xilinx.com:signal:data:1.0 r2_na DATA";
  ATTRIBUTE X_INTERFACE_PARAMETER OF r3_nb: SIGNAL IS "XIL_INTERFACENAME r3_nb, LAYERED_METADATA xilinx.com:interface:datatypes:1.0 {DATA {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 32} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0} real {fixed {fractwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}}" & 
" value 0} signed {attribs {resolve_type immediate dependency {} format bool minimum {} maximum {}} value false}}}}}}";
  ATTRIBUTE X_INTERFACE_INFO OF r3_nb: SIGNAL IS "xilinx.com:signal:data:1.0 r3_nb DATA";
  ATTRIBUTE X_INTERFACE_PARAMETER OF r4_na_inv: SIGNAL IS "XIL_INTERFACENAME r4_na_inv, LAYERED_METADATA xilinx.com:interface:datatypes:1.0 {DATA {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 32} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0} real {fixed {fractwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum" & 
" {}} value 0} signed {attribs {resolve_type immediate dependency {} format bool minimum {} maximum {}} value false}}}}}}";
  ATTRIBUTE X_INTERFACE_INFO OF r4_na_inv: SIGNAL IS "xilinx.com:signal:data:1.0 r4_na_inv DATA";
  ATTRIBUTE X_INTERFACE_PARAMETER OF r5_b00: SIGNAL IS "XIL_INTERFACENAME r5_b00, LAYERED_METADATA xilinx.com:interface:datatypes:1.0 {DATA {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 32} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0} real {fixed {fractwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}" & 
"} value 0} signed {attribs {resolve_type immediate dependency {} format bool minimum {} maximum {}} value false}}}}}}";
  ATTRIBUTE X_INTERFACE_INFO OF r5_b00: SIGNAL IS "xilinx.com:signal:data:1.0 r5_b00 DATA";
  ATTRIBUTE X_INTERFACE_PARAMETER OF r6_b20: SIGNAL IS "XIL_INTERFACENAME r6_b20, LAYERED_METADATA xilinx.com:interface:datatypes:1.0 {DATA {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 32} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0} real {fixed {fractwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}" & 
"} value 0} signed {attribs {resolve_type immediate dependency {} format bool minimum {} maximum {}} value false}}}}}}";
  ATTRIBUTE X_INTERFACE_INFO OF r6_b20: SIGNAL IS "xilinx.com:signal:data:1.0 r6_b20 DATA";
  ATTRIBUTE X_INTERFACE_PARAMETER OF r7_dc_offset: SIGNAL IS "XIL_INTERFACENAME r7_dc_offset, LAYERED_METADATA xilinx.com:interface:datatypes:1.0 {DATA {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 32} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0} real {fixed {fractwidth {attribs {resolve_type immediate dependency {} format long minimum {} maxi" & 
"mum {}} value 0} signed {attribs {resolve_type immediate dependency {} format bool minimum {} maximum {}} value false}}}}}}";
  ATTRIBUTE X_INTERFACE_INFO OF r7_dc_offset: SIGNAL IS "xilinx.com:signal:data:1.0 r7_dc_offset DATA";
  ATTRIBUTE X_INTERFACE_PARAMETER OF r8_invertoffset_dc_offset: SIGNAL IS "XIL_INTERFACENAME r8_invertoffset_dc_offset, LAYERED_METADATA xilinx.com:interface:datatypes:1.0 {DATA {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 32} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0} real {fixed {fractwidth {attribs {resolve_type immediate dependency {} format long mi" & 
"nimum {} maximum {}} value 0} signed {attribs {resolve_type immediate dependency {} format bool minimum {} maximum {}} value false}}}}}}";
  ATTRIBUTE X_INTERFACE_INFO OF r8_invertoffset_dc_offset: SIGNAL IS "xilinx.com:signal:data:1.0 r8_invertoffset_dc_offset DATA";
  ATTRIBUTE X_INTERFACE_PARAMETER OF r9_flags: SIGNAL IS "XIL_INTERFACENAME r9_flags, LAYERED_METADATA xilinx.com:interface:datatypes:1.0 {DATA {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 32} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0} real {fixed {fractwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum " & 
"{}} value 0} signed {attribs {resolve_type immediate dependency {} format bool minimum {} maximum {}} value false}}}}}}";
  ATTRIBUTE X_INTERFACE_INFO OF r9_flags: SIGNAL IS "xilinx.com:signal:data:1.0 r9_flags DATA";
  ATTRIBUTE X_INTERFACE_PARAMETER OF x: SIGNAL IS "XIL_INTERFACENAME x, LAYERED_METADATA xilinx.com:interface:datatypes:1.0 {DATA {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 14} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0} real {fixed {fractwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} val" & 
"ue 13} signed {attribs {resolve_type immediate dependency {} format bool minimum {} maximum {}} value true}}}}}}";
  ATTRIBUTE X_INTERFACE_INFO OF x: SIGNAL IS "xilinx.com:signal:data:1.0 x DATA";
  ATTRIBUTE X_INTERFACE_PARAMETER OF y: SIGNAL IS "XIL_INTERFACENAME y, LAYERED_METADATA xilinx.com:interface:datatypes:1.0 {DATA {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 16} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0} real {fixed {fractwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} val" & 
"ue 0} signed {attribs {resolve_type immediate dependency {} format bool minimum {} maximum {}} value false}}}}}}";
  ATTRIBUTE X_INTERFACE_INFO OF y: SIGNAL IS "xilinx.com:signal:data:1.0 y DATA";
  ATTRIBUTE X_INTERFACE_PARAMETER OF y_impulse: SIGNAL IS "XIL_INTERFACENAME y_impulse, LAYERED_METADATA xilinx.com:interface:datatypes:1.0 {DATA {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 16} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0} real {fixed {fractwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum" & 
" {}} value 0} signed {attribs {resolve_type immediate dependency {} format bool minimum {} maximum {}} value false}}}}}}";
  ATTRIBUTE X_INTERFACE_INFO OF y_impulse: SIGNAL IS "xilinx.com:signal:data:1.0 y_impulse DATA";
  ATTRIBUTE X_INTERFACE_PARAMETER OF y_rect: SIGNAL IS "XIL_INTERFACENAME y_rect, LAYERED_METADATA xilinx.com:interface:datatypes:1.0 {DATA {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 16} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0} real {fixed {fractwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}" & 
"} value 0} signed {attribs {resolve_type immediate dependency {} format bool minimum {} maximum {}} value false}}}}}}";
  ATTRIBUTE X_INTERFACE_INFO OF y_rect: SIGNAL IS "xilinx.com:signal:data:1.0 y_rect DATA";
BEGIN
  U0 : shaper
    PORT MAP (
      r1_b10 => r1_b10,
      r2_na => r2_na,
      r3_nb => r3_nb,
      r4_na_inv => r4_na_inv,
      r5_b00 => r5_b00,
      r6_b20 => r6_b20,
      r7_dc_offset => r7_dc_offset,
      r8_invertoffset_dc_offset => r8_invertoffset_dc_offset,
      r9_flags => r9_flags,
      x => x,
      clk => clk,
      dac_x => dac_x,
      dac_y => dac_y,
      dac_y_impulse => dac_y_impulse,
      dac_y_rect => dac_y_rect,
      y => y,
      y_impulse => y_impulse,
      y_rect => y_rect
    );
END bd_LabProject_part2_pulseShaper_0_arch;
