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

-- IP VLNV: IAEA:peak_detector:peak_detector:1.0
-- IP Revision: 331646087

LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
USE ieee.numeric_std.ALL;

LIBRARY xil_defaultlib;
USE xil_defaultlib.peak_detector;

ENTITY bd_LabProject_part2_peak_detector_0_0 IS
  PORT (
    r1_x_delay : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
    r2_x_noise : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
    r3_x_min_max : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
    r4_en_pkd : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
    x : IN STD_LOGIC_VECTOR(15 DOWNTO 0);
    clk : IN STD_LOGIC;
    dac_peak_amp : OUT STD_LOGIC_VECTOR(13 DOWNTO 0);
    peak_amp : OUT STD_LOGIC_VECTOR(15 DOWNTO 0);
    peak_amp_rdy : OUT STD_LOGIC_VECTOR(0 DOWNTO 0);
    pulse_delayed : OUT STD_LOGIC_VECTOR(15 DOWNTO 0);
    state : OUT STD_LOGIC_VECTOR(2 DOWNTO 0)
  );
END bd_LabProject_part2_peak_detector_0_0;

ARCHITECTURE bd_LabProject_part2_peak_detector_0_0_arch OF bd_LabProject_part2_peak_detector_0_0 IS
  ATTRIBUTE DowngradeIPIdentifiedWarnings : STRING;
  ATTRIBUTE DowngradeIPIdentifiedWarnings OF bd_LabProject_part2_peak_detector_0_0_arch: ARCHITECTURE IS "yes";
  COMPONENT peak_detector IS
    PORT (
      r1_x_delay : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
      r2_x_noise : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
      r3_x_min_max : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
      r4_en_pkd : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
      x : IN STD_LOGIC_VECTOR(15 DOWNTO 0);
      clk : IN STD_LOGIC;
      dac_peak_amp : OUT STD_LOGIC_VECTOR(13 DOWNTO 0);
      peak_amp : OUT STD_LOGIC_VECTOR(15 DOWNTO 0);
      peak_amp_rdy : OUT STD_LOGIC_VECTOR(0 DOWNTO 0);
      pulse_delayed : OUT STD_LOGIC_VECTOR(15 DOWNTO 0);
      state : OUT STD_LOGIC_VECTOR(2 DOWNTO 0)
    );
  END COMPONENT peak_detector;
  ATTRIBUTE X_INTERFACE_INFO : STRING;
  ATTRIBUTE X_INTERFACE_PARAMETER : STRING;
  ATTRIBUTE X_INTERFACE_PARAMETER OF clk: SIGNAL IS "XIL_INTERFACENAME clk, FREQ_HZ 50000000, FREQ_TOLERANCE_HZ 0, PHASE 94.0, CLK_DOMAIN /clkDomainCrossing/clk_wiz_1_clk_out1, INSERT_VIP 0";
  ATTRIBUTE X_INTERFACE_INFO OF clk: SIGNAL IS "xilinx.com:signal:clock:1.0 clk CLK";
  ATTRIBUTE X_INTERFACE_PARAMETER OF dac_peak_amp: SIGNAL IS "XIL_INTERFACENAME dac_peak_amp, LAYERED_METADATA xilinx.com:interface:datatypes:1.0 {DATA {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 14} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0} real {fixed {fractwidth {attribs {resolve_type immediate dependency {} format long minimum {} maxi" & 
"mum {}} value 0} signed {attribs {resolve_type immediate dependency {} format bool minimum {} maximum {}} value false}}}}}}";
  ATTRIBUTE X_INTERFACE_INFO OF dac_peak_amp: SIGNAL IS "xilinx.com:signal:data:1.0 dac_peak_amp DATA";
  ATTRIBUTE X_INTERFACE_PARAMETER OF peak_amp: SIGNAL IS "XIL_INTERFACENAME peak_amp, LAYERED_METADATA xilinx.com:interface:datatypes:1.0 {DATA {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 16} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0} real {fixed {fractwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum " & 
"{}} value 0} signed {attribs {resolve_type immediate dependency {} format bool minimum {} maximum {}} value false}}}}}}";
  ATTRIBUTE X_INTERFACE_INFO OF peak_amp: SIGNAL IS "xilinx.com:signal:data:1.0 peak_amp DATA";
  ATTRIBUTE X_INTERFACE_PARAMETER OF peak_amp_rdy: SIGNAL IS "XIL_INTERFACENAME peak_amp_rdy, LAYERED_METADATA xilinx.com:interface:datatypes:1.0 {DATA {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 1} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0} real {fixed {fractwidth {attribs {resolve_type immediate dependency {} format long minimum {} maxim" & 
"um {}} value 0} signed {attribs {resolve_type immediate dependency {} format bool minimum {} maximum {}} value false}}}}}}";
  ATTRIBUTE X_INTERFACE_INFO OF peak_amp_rdy: SIGNAL IS "xilinx.com:signal:data:1.0 peak_amp_rdy DATA";
  ATTRIBUTE X_INTERFACE_PARAMETER OF pulse_delayed: SIGNAL IS "XIL_INTERFACENAME pulse_delayed, LAYERED_METADATA xilinx.com:interface:datatypes:1.0 {DATA {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 16} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0} real {fixed {fractwidth {attribs {resolve_type immediate dependency {} format long minimum {} max" & 
"imum {}} value 0} signed {attribs {resolve_type immediate dependency {} format bool minimum {} maximum {}} value false}}}}}}";
  ATTRIBUTE X_INTERFACE_INFO OF pulse_delayed: SIGNAL IS "xilinx.com:signal:data:1.0 pulse_delayed DATA";
  ATTRIBUTE X_INTERFACE_PARAMETER OF r1_x_delay: SIGNAL IS "XIL_INTERFACENAME r1_x_delay, LAYERED_METADATA xilinx.com:interface:datatypes:1.0 {DATA {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 32} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0} real {fixed {fractwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximu" & 
"m {}} value 0} signed {attribs {resolve_type immediate dependency {} format bool minimum {} maximum {}} value false}}}}}}";
  ATTRIBUTE X_INTERFACE_INFO OF r1_x_delay: SIGNAL IS "xilinx.com:signal:data:1.0 r1_x_delay DATA";
  ATTRIBUTE X_INTERFACE_PARAMETER OF r2_x_noise: SIGNAL IS "XIL_INTERFACENAME r2_x_noise, LAYERED_METADATA xilinx.com:interface:datatypes:1.0 {DATA {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 32} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0} real {fixed {fractwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximu" & 
"m {}} value 0} signed {attribs {resolve_type immediate dependency {} format bool minimum {} maximum {}} value false}}}}}}";
  ATTRIBUTE X_INTERFACE_INFO OF r2_x_noise: SIGNAL IS "xilinx.com:signal:data:1.0 r2_x_noise DATA";
  ATTRIBUTE X_INTERFACE_PARAMETER OF r3_x_min_max: SIGNAL IS "XIL_INTERFACENAME r3_x_min_max, LAYERED_METADATA xilinx.com:interface:datatypes:1.0 {DATA {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 32} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0} real {fixed {fractwidth {attribs {resolve_type immediate dependency {} format long minimum {} maxi" & 
"mum {}} value 0} signed {attribs {resolve_type immediate dependency {} format bool minimum {} maximum {}} value false}}}}}}";
  ATTRIBUTE X_INTERFACE_INFO OF r3_x_min_max: SIGNAL IS "xilinx.com:signal:data:1.0 r3_x_min_max DATA";
  ATTRIBUTE X_INTERFACE_PARAMETER OF r4_en_pkd: SIGNAL IS "XIL_INTERFACENAME r4_en_pkd, LAYERED_METADATA xilinx.com:interface:datatypes:1.0 {DATA {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 32} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0} real {fixed {fractwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum" & 
" {}} value 0} signed {attribs {resolve_type immediate dependency {} format bool minimum {} maximum {}} value false}}}}}}";
  ATTRIBUTE X_INTERFACE_INFO OF r4_en_pkd: SIGNAL IS "xilinx.com:signal:data:1.0 r4_en_pkd DATA";
  ATTRIBUTE X_INTERFACE_PARAMETER OF state: SIGNAL IS "XIL_INTERFACENAME state, LAYERED_METADATA xilinx.com:interface:datatypes:1.0 {DATA {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 3} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0} real {fixed {fractwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} " & 
"value 0} signed {attribs {resolve_type immediate dependency {} format bool minimum {} maximum {}} value false}}}}}}";
  ATTRIBUTE X_INTERFACE_INFO OF state: SIGNAL IS "xilinx.com:signal:data:1.0 state DATA";
  ATTRIBUTE X_INTERFACE_PARAMETER OF x: SIGNAL IS "XIL_INTERFACENAME x, LAYERED_METADATA xilinx.com:interface:datatypes:1.0 {DATA {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 16} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0} real {fixed {fractwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} val" & 
"ue 14} signed {attribs {resolve_type immediate dependency {} format bool minimum {} maximum {}} value true}}}}}}";
  ATTRIBUTE X_INTERFACE_INFO OF x: SIGNAL IS "xilinx.com:signal:data:1.0 x DATA";
BEGIN
  U0 : peak_detector
    PORT MAP (
      r1_x_delay => r1_x_delay,
      r2_x_noise => r2_x_noise,
      r3_x_min_max => r3_x_min_max,
      r4_en_pkd => r4_en_pkd,
      x => x,
      clk => clk,
      dac_peak_amp => dac_peak_amp,
      peak_amp => peak_amp,
      peak_amp_rdy => peak_amp_rdy,
      pulse_delayed => pulse_delayed,
      state => state
    );
END bd_LabProject_part2_peak_detector_0_0_arch;
