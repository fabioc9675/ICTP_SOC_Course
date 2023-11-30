-- Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2022.2 (lin64) Build 3671981 Fri Oct 14 04:59:54 MDT 2022
-- Date        : Thu Nov 30 17:23:47 2023
-- Host        : node07 running 64-bit CentOS Linux release 7.4.1708 (Core)
-- Command     : write_vhdl -force -mode funcsim
--               /home/argo49/smr3891/labs/project2_xrf/project2_xrf.gen/sources_1/bd/xrf_dpp/ip/xrf_dpp_DPP_module_FIR_0_0/xrf_dpp_DPP_module_FIR_0_0_sim_netlist.vhdl
-- Design      : xrf_dpp_DPP_module_FIR_0_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7z020clg484-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity xrf_dpp_DPP_module_FIR_0_0_edge_detector_1 is
  port (
    clk_i : in STD_LOGIC;
    rst_i : in STD_LOGIC;
    ena_i : in STD_LOGIC;
    data_i : in STD_LOGIC_VECTOR ( 15 downto 0 );
    det_threshold_high_i : in STD_LOGIC_VECTOR ( 15 downto 0 );
    det_threshold_low_i : in STD_LOGIC_VECTOR ( 15 downto 0 );
    arrival_flag_o : out STD_LOGIC;
    rejection_flag_o : out STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of xrf_dpp_DPP_module_FIR_0_0_edge_detector_1 : entity is "edge_detector_1";
  attribute keep_hierarchy : string;
  attribute keep_hierarchy of xrf_dpp_DPP_module_FIR_0_0_edge_detector_1 : entity is "soft";
end xrf_dpp_DPP_module_FIR_0_0_edge_detector_1;

architecture STRUCTURE of xrf_dpp_DPP_module_FIR_0_0_edge_detector_1 is
  signal \<const0>\ : STD_LOGIC;
  signal \FSM_sequential_state[0]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_sequential_state[1]_i_10_n_0\ : STD_LOGIC;
  signal \FSM_sequential_state[1]_i_11_n_0\ : STD_LOGIC;
  signal \FSM_sequential_state[1]_i_12_n_0\ : STD_LOGIC;
  signal \FSM_sequential_state[1]_i_14_n_0\ : STD_LOGIC;
  signal \FSM_sequential_state[1]_i_15_n_0\ : STD_LOGIC;
  signal \FSM_sequential_state[1]_i_16_n_0\ : STD_LOGIC;
  signal \FSM_sequential_state[1]_i_17_n_0\ : STD_LOGIC;
  signal \FSM_sequential_state[1]_i_18_n_0\ : STD_LOGIC;
  signal \FSM_sequential_state[1]_i_19_n_0\ : STD_LOGIC;
  signal \FSM_sequential_state[1]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_sequential_state[1]_i_20_n_0\ : STD_LOGIC;
  signal \FSM_sequential_state[1]_i_21_n_0\ : STD_LOGIC;
  signal \FSM_sequential_state[1]_i_22_n_0\ : STD_LOGIC;
  signal \FSM_sequential_state[1]_i_23_n_0\ : STD_LOGIC;
  signal \FSM_sequential_state[1]_i_24_n_0\ : STD_LOGIC;
  signal \FSM_sequential_state[1]_i_25_n_0\ : STD_LOGIC;
  signal \FSM_sequential_state[1]_i_26_n_0\ : STD_LOGIC;
  signal \FSM_sequential_state[1]_i_27_n_0\ : STD_LOGIC;
  signal \FSM_sequential_state[1]_i_28_n_0\ : STD_LOGIC;
  signal \FSM_sequential_state[1]_i_29_n_0\ : STD_LOGIC;
  signal \FSM_sequential_state[1]_i_30_n_0\ : STD_LOGIC;
  signal \FSM_sequential_state[1]_i_31_n_0\ : STD_LOGIC;
  signal \FSM_sequential_state[1]_i_32_n_0\ : STD_LOGIC;
  signal \FSM_sequential_state[1]_i_33_n_0\ : STD_LOGIC;
  signal \FSM_sequential_state[1]_i_34_n_0\ : STD_LOGIC;
  signal \FSM_sequential_state[1]_i_35_n_0\ : STD_LOGIC;
  signal \FSM_sequential_state[1]_i_36_n_0\ : STD_LOGIC;
  signal \FSM_sequential_state[1]_i_37_n_0\ : STD_LOGIC;
  signal \FSM_sequential_state[1]_i_5_n_0\ : STD_LOGIC;
  signal \FSM_sequential_state[1]_i_6_n_0\ : STD_LOGIC;
  signal \FSM_sequential_state[1]_i_7_n_0\ : STD_LOGIC;
  signal \FSM_sequential_state[1]_i_8_n_0\ : STD_LOGIC;
  signal \FSM_sequential_state[1]_i_9_n_0\ : STD_LOGIC;
  signal \FSM_sequential_state_reg[1]_i_13_n_0\ : STD_LOGIC;
  signal \FSM_sequential_state_reg[1]_i_13_n_1\ : STD_LOGIC;
  signal \FSM_sequential_state_reg[1]_i_13_n_2\ : STD_LOGIC;
  signal \FSM_sequential_state_reg[1]_i_13_n_3\ : STD_LOGIC;
  signal \FSM_sequential_state_reg[1]_i_2_n_0\ : STD_LOGIC;
  signal \FSM_sequential_state_reg[1]_i_2_n_1\ : STD_LOGIC;
  signal \FSM_sequential_state_reg[1]_i_2_n_2\ : STD_LOGIC;
  signal \FSM_sequential_state_reg[1]_i_2_n_3\ : STD_LOGIC;
  signal \FSM_sequential_state_reg[1]_i_3_n_0\ : STD_LOGIC;
  signal \FSM_sequential_state_reg[1]_i_3_n_1\ : STD_LOGIC;
  signal \FSM_sequential_state_reg[1]_i_3_n_2\ : STD_LOGIC;
  signal \FSM_sequential_state_reg[1]_i_3_n_3\ : STD_LOGIC;
  signal \FSM_sequential_state_reg[1]_i_4_n_0\ : STD_LOGIC;
  signal \FSM_sequential_state_reg[1]_i_4_n_1\ : STD_LOGIC;
  signal \FSM_sequential_state_reg[1]_i_4_n_2\ : STD_LOGIC;
  signal \FSM_sequential_state_reg[1]_i_4_n_3\ : STD_LOGIC;
  signal \FSM_sequential_state_reg_n_0_[1]\ : STD_LOGIC;
  signal state : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \NLW_FSM_sequential_state_reg[1]_i_13_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_FSM_sequential_state_reg[1]_i_2_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_FSM_sequential_state_reg[1]_i_3_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_FSM_sequential_state_reg[1]_i_4_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \FSM_sequential_state[0]_i_1\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \FSM_sequential_state[1]_i_1\ : label is "soft_lutpair0";
  attribute FSM_ENCODED_STATES : string;
  attribute FSM_ENCODED_STATES of \FSM_sequential_state_reg[0]\ : label is "reset_st:00,output_pulse_st:10,over_threshold_st:11,waiting_st:01";
  attribute FSM_ENCODED_STATES of \FSM_sequential_state_reg[1]\ : label is "reset_st:00,output_pulse_st:10,over_threshold_st:11,waiting_st:01";
  attribute COMPARATOR_THRESHOLD : integer;
  attribute COMPARATOR_THRESHOLD of \FSM_sequential_state_reg[1]_i_13\ : label is 11;
  attribute COMPARATOR_THRESHOLD of \FSM_sequential_state_reg[1]_i_2\ : label is 11;
  attribute COMPARATOR_THRESHOLD of \FSM_sequential_state_reg[1]_i_3\ : label is 11;
  attribute COMPARATOR_THRESHOLD of \FSM_sequential_state_reg[1]_i_4\ : label is 11;
  attribute mark_debug : string;
  attribute mark_debug of data_i : signal is "true";
begin
  rejection_flag_o <= \<const0>\;
\FSM_sequential_state[0]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BFF0"
    )
        port map (
      I0 => \FSM_sequential_state_reg_n_0_[1]\,
      I1 => \FSM_sequential_state_reg[1]_i_3_n_0\,
      I2 => ena_i,
      I3 => state(0),
      O => \FSM_sequential_state[0]_i_1_n_0\
    );
\FSM_sequential_state[1]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"77FFC000"
    )
        port map (
      I0 => \FSM_sequential_state_reg[1]_i_2_n_0\,
      I1 => state(0),
      I2 => \FSM_sequential_state_reg[1]_i_3_n_0\,
      I3 => ena_i,
      I4 => \FSM_sequential_state_reg_n_0_[1]\,
      O => \FSM_sequential_state[1]_i_1_n_0\
    );
\FSM_sequential_state[1]_i_10\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => det_threshold_low_i(12),
      I1 => data_i(12),
      I2 => det_threshold_low_i(13),
      I3 => data_i(13),
      O => \FSM_sequential_state[1]_i_10_n_0\
    );
\FSM_sequential_state[1]_i_11\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => det_threshold_low_i(10),
      I1 => data_i(10),
      I2 => det_threshold_low_i(11),
      I3 => data_i(11),
      O => \FSM_sequential_state[1]_i_11_n_0\
    );
\FSM_sequential_state[1]_i_12\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => det_threshold_low_i(8),
      I1 => data_i(8),
      I2 => det_threshold_low_i(9),
      I3 => data_i(9),
      O => \FSM_sequential_state[1]_i_12_n_0\
    );
\FSM_sequential_state[1]_i_14\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => data_i(14),
      I1 => det_threshold_high_i(14),
      I2 => det_threshold_high_i(15),
      I3 => data_i(15),
      O => \FSM_sequential_state[1]_i_14_n_0\
    );
\FSM_sequential_state[1]_i_15\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => data_i(12),
      I1 => det_threshold_high_i(12),
      I2 => det_threshold_high_i(13),
      I3 => data_i(13),
      O => \FSM_sequential_state[1]_i_15_n_0\
    );
\FSM_sequential_state[1]_i_16\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => data_i(10),
      I1 => det_threshold_high_i(10),
      I2 => det_threshold_high_i(11),
      I3 => data_i(11),
      O => \FSM_sequential_state[1]_i_16_n_0\
    );
\FSM_sequential_state[1]_i_17\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => data_i(8),
      I1 => det_threshold_high_i(8),
      I2 => det_threshold_high_i(9),
      I3 => data_i(9),
      O => \FSM_sequential_state[1]_i_17_n_0\
    );
\FSM_sequential_state[1]_i_18\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => data_i(14),
      I1 => det_threshold_high_i(14),
      I2 => data_i(15),
      I3 => det_threshold_high_i(15),
      O => \FSM_sequential_state[1]_i_18_n_0\
    );
\FSM_sequential_state[1]_i_19\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => data_i(12),
      I1 => det_threshold_high_i(12),
      I2 => data_i(13),
      I3 => det_threshold_high_i(13),
      O => \FSM_sequential_state[1]_i_19_n_0\
    );
\FSM_sequential_state[1]_i_20\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => data_i(10),
      I1 => det_threshold_high_i(10),
      I2 => data_i(11),
      I3 => det_threshold_high_i(11),
      O => \FSM_sequential_state[1]_i_20_n_0\
    );
\FSM_sequential_state[1]_i_21\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => data_i(8),
      I1 => det_threshold_high_i(8),
      I2 => data_i(9),
      I3 => det_threshold_high_i(9),
      O => \FSM_sequential_state[1]_i_21_n_0\
    );
\FSM_sequential_state[1]_i_22\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => det_threshold_low_i(6),
      I1 => data_i(6),
      I2 => data_i(7),
      I3 => det_threshold_low_i(7),
      O => \FSM_sequential_state[1]_i_22_n_0\
    );
\FSM_sequential_state[1]_i_23\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => det_threshold_low_i(4),
      I1 => data_i(4),
      I2 => data_i(5),
      I3 => det_threshold_low_i(5),
      O => \FSM_sequential_state[1]_i_23_n_0\
    );
\FSM_sequential_state[1]_i_24\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => det_threshold_low_i(2),
      I1 => data_i(2),
      I2 => data_i(3),
      I3 => det_threshold_low_i(3),
      O => \FSM_sequential_state[1]_i_24_n_0\
    );
\FSM_sequential_state[1]_i_25\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => det_threshold_low_i(0),
      I1 => data_i(0),
      I2 => data_i(1),
      I3 => det_threshold_low_i(1),
      O => \FSM_sequential_state[1]_i_25_n_0\
    );
\FSM_sequential_state[1]_i_26\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => det_threshold_low_i(6),
      I1 => data_i(6),
      I2 => det_threshold_low_i(7),
      I3 => data_i(7),
      O => \FSM_sequential_state[1]_i_26_n_0\
    );
\FSM_sequential_state[1]_i_27\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => det_threshold_low_i(4),
      I1 => data_i(4),
      I2 => det_threshold_low_i(5),
      I3 => data_i(5),
      O => \FSM_sequential_state[1]_i_27_n_0\
    );
\FSM_sequential_state[1]_i_28\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => det_threshold_low_i(2),
      I1 => data_i(2),
      I2 => det_threshold_low_i(3),
      I3 => data_i(3),
      O => \FSM_sequential_state[1]_i_28_n_0\
    );
\FSM_sequential_state[1]_i_29\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => det_threshold_low_i(0),
      I1 => data_i(0),
      I2 => det_threshold_low_i(1),
      I3 => data_i(1),
      O => \FSM_sequential_state[1]_i_29_n_0\
    );
\FSM_sequential_state[1]_i_30\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => data_i(6),
      I1 => det_threshold_high_i(6),
      I2 => det_threshold_high_i(7),
      I3 => data_i(7),
      O => \FSM_sequential_state[1]_i_30_n_0\
    );
\FSM_sequential_state[1]_i_31\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => data_i(4),
      I1 => det_threshold_high_i(4),
      I2 => det_threshold_high_i(5),
      I3 => data_i(5),
      O => \FSM_sequential_state[1]_i_31_n_0\
    );
\FSM_sequential_state[1]_i_32\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => data_i(2),
      I1 => det_threshold_high_i(2),
      I2 => det_threshold_high_i(3),
      I3 => data_i(3),
      O => \FSM_sequential_state[1]_i_32_n_0\
    );
\FSM_sequential_state[1]_i_33\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => data_i(0),
      I1 => det_threshold_high_i(0),
      I2 => det_threshold_high_i(1),
      I3 => data_i(1),
      O => \FSM_sequential_state[1]_i_33_n_0\
    );
\FSM_sequential_state[1]_i_34\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => data_i(6),
      I1 => det_threshold_high_i(6),
      I2 => data_i(7),
      I3 => det_threshold_high_i(7),
      O => \FSM_sequential_state[1]_i_34_n_0\
    );
\FSM_sequential_state[1]_i_35\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => data_i(4),
      I1 => det_threshold_high_i(4),
      I2 => data_i(5),
      I3 => det_threshold_high_i(5),
      O => \FSM_sequential_state[1]_i_35_n_0\
    );
\FSM_sequential_state[1]_i_36\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => data_i(2),
      I1 => det_threshold_high_i(2),
      I2 => data_i(3),
      I3 => det_threshold_high_i(3),
      O => \FSM_sequential_state[1]_i_36_n_0\
    );
\FSM_sequential_state[1]_i_37\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => data_i(0),
      I1 => det_threshold_high_i(0),
      I2 => data_i(1),
      I3 => det_threshold_high_i(1),
      O => \FSM_sequential_state[1]_i_37_n_0\
    );
\FSM_sequential_state[1]_i_5\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => det_threshold_low_i(14),
      I1 => data_i(14),
      I2 => data_i(15),
      I3 => det_threshold_low_i(15),
      O => \FSM_sequential_state[1]_i_5_n_0\
    );
\FSM_sequential_state[1]_i_6\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => det_threshold_low_i(12),
      I1 => data_i(12),
      I2 => data_i(13),
      I3 => det_threshold_low_i(13),
      O => \FSM_sequential_state[1]_i_6_n_0\
    );
\FSM_sequential_state[1]_i_7\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => det_threshold_low_i(10),
      I1 => data_i(10),
      I2 => data_i(11),
      I3 => det_threshold_low_i(11),
      O => \FSM_sequential_state[1]_i_7_n_0\
    );
\FSM_sequential_state[1]_i_8\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => det_threshold_low_i(8),
      I1 => data_i(8),
      I2 => data_i(9),
      I3 => det_threshold_low_i(9),
      O => \FSM_sequential_state[1]_i_8_n_0\
    );
\FSM_sequential_state[1]_i_9\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => det_threshold_low_i(14),
      I1 => data_i(14),
      I2 => det_threshold_low_i(15),
      I3 => data_i(15),
      O => \FSM_sequential_state[1]_i_9_n_0\
    );
\FSM_sequential_state_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_i,
      CE => '1',
      D => \FSM_sequential_state[0]_i_1_n_0\,
      Q => state(0),
      R => rst_i
    );
\FSM_sequential_state_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_i,
      CE => '1',
      D => \FSM_sequential_state[1]_i_1_n_0\,
      Q => \FSM_sequential_state_reg_n_0_[1]\,
      R => rst_i
    );
\FSM_sequential_state_reg[1]_i_13\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \FSM_sequential_state_reg[1]_i_13_n_0\,
      CO(2) => \FSM_sequential_state_reg[1]_i_13_n_1\,
      CO(1) => \FSM_sequential_state_reg[1]_i_13_n_2\,
      CO(0) => \FSM_sequential_state_reg[1]_i_13_n_3\,
      CYINIT => '1',
      DI(3) => \FSM_sequential_state[1]_i_30_n_0\,
      DI(2) => \FSM_sequential_state[1]_i_31_n_0\,
      DI(1) => \FSM_sequential_state[1]_i_32_n_0\,
      DI(0) => \FSM_sequential_state[1]_i_33_n_0\,
      O(3 downto 0) => \NLW_FSM_sequential_state_reg[1]_i_13_O_UNCONNECTED\(3 downto 0),
      S(3) => \FSM_sequential_state[1]_i_34_n_0\,
      S(2) => \FSM_sequential_state[1]_i_35_n_0\,
      S(1) => \FSM_sequential_state[1]_i_36_n_0\,
      S(0) => \FSM_sequential_state[1]_i_37_n_0\
    );
\FSM_sequential_state_reg[1]_i_2\: unisim.vcomponents.CARRY4
     port map (
      CI => \FSM_sequential_state_reg[1]_i_4_n_0\,
      CO(3) => \FSM_sequential_state_reg[1]_i_2_n_0\,
      CO(2) => \FSM_sequential_state_reg[1]_i_2_n_1\,
      CO(1) => \FSM_sequential_state_reg[1]_i_2_n_2\,
      CO(0) => \FSM_sequential_state_reg[1]_i_2_n_3\,
      CYINIT => '0',
      DI(3) => \FSM_sequential_state[1]_i_5_n_0\,
      DI(2) => \FSM_sequential_state[1]_i_6_n_0\,
      DI(1) => \FSM_sequential_state[1]_i_7_n_0\,
      DI(0) => \FSM_sequential_state[1]_i_8_n_0\,
      O(3 downto 0) => \NLW_FSM_sequential_state_reg[1]_i_2_O_UNCONNECTED\(3 downto 0),
      S(3) => \FSM_sequential_state[1]_i_9_n_0\,
      S(2) => \FSM_sequential_state[1]_i_10_n_0\,
      S(1) => \FSM_sequential_state[1]_i_11_n_0\,
      S(0) => \FSM_sequential_state[1]_i_12_n_0\
    );
\FSM_sequential_state_reg[1]_i_3\: unisim.vcomponents.CARRY4
     port map (
      CI => \FSM_sequential_state_reg[1]_i_13_n_0\,
      CO(3) => \FSM_sequential_state_reg[1]_i_3_n_0\,
      CO(2) => \FSM_sequential_state_reg[1]_i_3_n_1\,
      CO(1) => \FSM_sequential_state_reg[1]_i_3_n_2\,
      CO(0) => \FSM_sequential_state_reg[1]_i_3_n_3\,
      CYINIT => '0',
      DI(3) => \FSM_sequential_state[1]_i_14_n_0\,
      DI(2) => \FSM_sequential_state[1]_i_15_n_0\,
      DI(1) => \FSM_sequential_state[1]_i_16_n_0\,
      DI(0) => \FSM_sequential_state[1]_i_17_n_0\,
      O(3 downto 0) => \NLW_FSM_sequential_state_reg[1]_i_3_O_UNCONNECTED\(3 downto 0),
      S(3) => \FSM_sequential_state[1]_i_18_n_0\,
      S(2) => \FSM_sequential_state[1]_i_19_n_0\,
      S(1) => \FSM_sequential_state[1]_i_20_n_0\,
      S(0) => \FSM_sequential_state[1]_i_21_n_0\
    );
\FSM_sequential_state_reg[1]_i_4\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \FSM_sequential_state_reg[1]_i_4_n_0\,
      CO(2) => \FSM_sequential_state_reg[1]_i_4_n_1\,
      CO(1) => \FSM_sequential_state_reg[1]_i_4_n_2\,
      CO(0) => \FSM_sequential_state_reg[1]_i_4_n_3\,
      CYINIT => '0',
      DI(3) => \FSM_sequential_state[1]_i_22_n_0\,
      DI(2) => \FSM_sequential_state[1]_i_23_n_0\,
      DI(1) => \FSM_sequential_state[1]_i_24_n_0\,
      DI(0) => \FSM_sequential_state[1]_i_25_n_0\,
      O(3 downto 0) => \NLW_FSM_sequential_state_reg[1]_i_4_O_UNCONNECTED\(3 downto 0),
      S(3) => \FSM_sequential_state[1]_i_26_n_0\,
      S(2) => \FSM_sequential_state[1]_i_27_n_0\,
      S(1) => \FSM_sequential_state[1]_i_28_n_0\,
      S(0) => \FSM_sequential_state[1]_i_29_n_0\
    );
GND: unisim.vcomponents.GND
     port map (
      G => \<const0>\
    );
arrival_flag_o_INST_0: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \FSM_sequential_state_reg_n_0_[1]\,
      I1 => state(0),
      O => arrival_flag_o
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity xrf_dpp_DPP_module_FIR_0_0_fir_derivative_1 is
  port (
    valid_ena : out STD_LOGIC;
    ena_i : out STD_LOGIC;
    Q : out STD_LOGIC_VECTOR ( 15 downto 0 );
    D : out STD_LOGIC_VECTOR ( 15 downto 0 );
    clk_i : in STD_LOGIC;
    rst_i : in STD_LOGIC;
    cf_3_i : in STD_LOGIC_VECTOR ( 4 downto 0 );
    cf_1_i : in STD_LOGIC_VECTOR ( 4 downto 0 );
    ADC_data_i : in STD_LOGIC_VECTOR ( 15 downto 0 );
    cf_2_i : in STD_LOGIC_VECTOR ( 4 downto 0 );
    \out\ : in STD_LOGIC;
    d6_reg_0 : in STD_LOGIC;
    op_mode_i : in STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axis_data_tdata : in STD_LOGIC_VECTOR ( 15 downto 0 );
    \data_o[0]\ : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of xrf_dpp_DPP_module_FIR_0_0_fir_derivative_1 : entity is "fir_derivative_1";
end xrf_dpp_DPP_module_FIR_0_0_fir_derivative_1;

architecture STRUCTURE of xrf_dpp_DPP_module_FIR_0_0_fir_derivative_1 is
  signal \^q\ : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal \_inferred__5/i__carry__0_n_0\ : STD_LOGIC;
  signal \_inferred__5/i__carry__0_n_1\ : STD_LOGIC;
  signal \_inferred__5/i__carry__0_n_2\ : STD_LOGIC;
  signal \_inferred__5/i__carry__0_n_3\ : STD_LOGIC;
  signal \_inferred__5/i__carry__1_n_0\ : STD_LOGIC;
  signal \_inferred__5/i__carry__1_n_1\ : STD_LOGIC;
  signal \_inferred__5/i__carry__1_n_2\ : STD_LOGIC;
  signal \_inferred__5/i__carry__1_n_3\ : STD_LOGIC;
  signal \_inferred__5/i__carry__2_n_1\ : STD_LOGIC;
  signal \_inferred__5/i__carry__2_n_2\ : STD_LOGIC;
  signal \_inferred__5/i__carry__2_n_3\ : STD_LOGIC;
  signal \_inferred__5/i__carry_n_0\ : STD_LOGIC;
  signal \_inferred__5/i__carry_n_1\ : STD_LOGIC;
  signal \_inferred__5/i__carry_n_2\ : STD_LOGIC;
  signal \_inferred__5/i__carry_n_3\ : STD_LOGIC;
  signal d3_reg_i_1_n_0 : STD_LOGIC;
  signal d3_reg_n_106 : STD_LOGIC;
  signal d3_reg_n_107 : STD_LOGIC;
  signal d3_reg_n_108 : STD_LOGIC;
  signal d3_reg_n_109 : STD_LOGIC;
  signal d3_reg_n_110 : STD_LOGIC;
  signal d3_reg_n_111 : STD_LOGIC;
  signal d3_reg_n_112 : STD_LOGIC;
  signal d3_reg_n_113 : STD_LOGIC;
  signal d3_reg_n_114 : STD_LOGIC;
  signal d3_reg_n_115 : STD_LOGIC;
  signal d3_reg_n_116 : STD_LOGIC;
  signal d3_reg_n_117 : STD_LOGIC;
  signal d3_reg_n_118 : STD_LOGIC;
  signal d3_reg_n_119 : STD_LOGIC;
  signal d3_reg_n_120 : STD_LOGIC;
  signal d3_reg_n_121 : STD_LOGIC;
  signal d3_reg_n_122 : STD_LOGIC;
  signal d3_reg_n_123 : STD_LOGIC;
  signal d3_reg_n_124 : STD_LOGIC;
  signal d3_reg_n_125 : STD_LOGIC;
  signal d3_reg_n_126 : STD_LOGIC;
  signal d3_reg_n_127 : STD_LOGIC;
  signal d3_reg_n_128 : STD_LOGIC;
  signal d3_reg_n_129 : STD_LOGIC;
  signal d3_reg_n_130 : STD_LOGIC;
  signal d3_reg_n_131 : STD_LOGIC;
  signal d3_reg_n_132 : STD_LOGIC;
  signal d3_reg_n_133 : STD_LOGIC;
  signal d3_reg_n_134 : STD_LOGIC;
  signal d3_reg_n_135 : STD_LOGIC;
  signal d3_reg_n_136 : STD_LOGIC;
  signal d3_reg_n_137 : STD_LOGIC;
  signal d3_reg_n_138 : STD_LOGIC;
  signal d3_reg_n_139 : STD_LOGIC;
  signal d3_reg_n_140 : STD_LOGIC;
  signal d3_reg_n_141 : STD_LOGIC;
  signal d3_reg_n_142 : STD_LOGIC;
  signal d3_reg_n_143 : STD_LOGIC;
  signal d3_reg_n_144 : STD_LOGIC;
  signal d3_reg_n_145 : STD_LOGIC;
  signal d3_reg_n_146 : STD_LOGIC;
  signal d3_reg_n_147 : STD_LOGIC;
  signal d3_reg_n_148 : STD_LOGIC;
  signal d3_reg_n_149 : STD_LOGIC;
  signal d3_reg_n_150 : STD_LOGIC;
  signal d3_reg_n_151 : STD_LOGIC;
  signal d3_reg_n_152 : STD_LOGIC;
  signal d3_reg_n_153 : STD_LOGIC;
  signal d6_reg_n_106 : STD_LOGIC;
  signal d6_reg_n_107 : STD_LOGIC;
  signal d6_reg_n_108 : STD_LOGIC;
  signal d6_reg_n_109 : STD_LOGIC;
  signal d6_reg_n_110 : STD_LOGIC;
  signal d6_reg_n_111 : STD_LOGIC;
  signal d6_reg_n_112 : STD_LOGIC;
  signal d6_reg_n_113 : STD_LOGIC;
  signal d6_reg_n_114 : STD_LOGIC;
  signal d6_reg_n_115 : STD_LOGIC;
  signal d6_reg_n_116 : STD_LOGIC;
  signal d6_reg_n_117 : STD_LOGIC;
  signal d6_reg_n_118 : STD_LOGIC;
  signal d6_reg_n_119 : STD_LOGIC;
  signal d6_reg_n_120 : STD_LOGIC;
  signal d6_reg_n_121 : STD_LOGIC;
  signal d6_reg_n_122 : STD_LOGIC;
  signal d6_reg_n_123 : STD_LOGIC;
  signal d6_reg_n_124 : STD_LOGIC;
  signal d6_reg_n_125 : STD_LOGIC;
  signal d6_reg_n_126 : STD_LOGIC;
  signal d6_reg_n_127 : STD_LOGIC;
  signal d6_reg_n_128 : STD_LOGIC;
  signal d6_reg_n_129 : STD_LOGIC;
  signal d6_reg_n_130 : STD_LOGIC;
  signal d6_reg_n_131 : STD_LOGIC;
  signal d6_reg_n_132 : STD_LOGIC;
  signal d6_reg_n_133 : STD_LOGIC;
  signal d6_reg_n_134 : STD_LOGIC;
  signal d6_reg_n_135 : STD_LOGIC;
  signal d6_reg_n_136 : STD_LOGIC;
  signal d6_reg_n_137 : STD_LOGIC;
  signal d6_reg_n_138 : STD_LOGIC;
  signal d6_reg_n_139 : STD_LOGIC;
  signal d6_reg_n_140 : STD_LOGIC;
  signal d6_reg_n_141 : STD_LOGIC;
  signal d6_reg_n_142 : STD_LOGIC;
  signal d6_reg_n_143 : STD_LOGIC;
  signal d6_reg_n_144 : STD_LOGIC;
  signal d6_reg_n_145 : STD_LOGIC;
  signal d6_reg_n_146 : STD_LOGIC;
  signal d6_reg_n_147 : STD_LOGIC;
  signal d6_reg_n_148 : STD_LOGIC;
  signal d6_reg_n_149 : STD_LOGIC;
  signal d6_reg_n_150 : STD_LOGIC;
  signal d6_reg_n_151 : STD_LOGIC;
  signal d6_reg_n_152 : STD_LOGIC;
  signal d6_reg_n_153 : STD_LOGIC;
  signal der_sign : STD_LOGIC;
  signal din_1 : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal din_2 : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal din_3 : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal din_4 : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal doutint : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal gtOp : STD_LOGIC;
  signal \gtOp_carry__0_i_1_n_0\ : STD_LOGIC;
  signal \gtOp_carry__0_i_2_n_0\ : STD_LOGIC;
  signal \gtOp_carry__0_i_3_n_0\ : STD_LOGIC;
  signal \gtOp_carry__0_i_4_n_0\ : STD_LOGIC;
  signal \gtOp_carry__0_i_5_n_0\ : STD_LOGIC;
  signal \gtOp_carry__0_i_6_n_0\ : STD_LOGIC;
  signal \gtOp_carry__0_i_7_n_0\ : STD_LOGIC;
  signal \gtOp_carry__0_i_8_n_0\ : STD_LOGIC;
  signal \gtOp_carry__0_n_0\ : STD_LOGIC;
  signal \gtOp_carry__0_n_1\ : STD_LOGIC;
  signal \gtOp_carry__0_n_2\ : STD_LOGIC;
  signal \gtOp_carry__0_n_3\ : STD_LOGIC;
  signal \gtOp_carry__1_i_1_n_0\ : STD_LOGIC;
  signal \gtOp_carry__1_i_2_n_0\ : STD_LOGIC;
  signal \gtOp_carry__1_i_3_n_0\ : STD_LOGIC;
  signal \gtOp_carry__1_i_4_n_0\ : STD_LOGIC;
  signal \gtOp_carry__1_i_5_n_0\ : STD_LOGIC;
  signal \gtOp_carry__1_i_6_n_0\ : STD_LOGIC;
  signal \gtOp_carry__1_i_7_n_0\ : STD_LOGIC;
  signal \gtOp_carry__1_i_8_n_0\ : STD_LOGIC;
  signal \gtOp_carry__1_n_0\ : STD_LOGIC;
  signal \gtOp_carry__1_n_1\ : STD_LOGIC;
  signal \gtOp_carry__1_n_2\ : STD_LOGIC;
  signal \gtOp_carry__1_n_3\ : STD_LOGIC;
  signal \gtOp_carry__2_i_1_n_0\ : STD_LOGIC;
  signal \gtOp_carry__2_i_2_n_0\ : STD_LOGIC;
  signal \gtOp_carry__2_i_3_n_0\ : STD_LOGIC;
  signal \gtOp_carry__2_i_4_n_0\ : STD_LOGIC;
  signal \gtOp_carry__2_n_3\ : STD_LOGIC;
  signal gtOp_carry_i_1_n_0 : STD_LOGIC;
  signal gtOp_carry_i_2_n_0 : STD_LOGIC;
  signal gtOp_carry_i_3_n_0 : STD_LOGIC;
  signal gtOp_carry_i_4_n_0 : STD_LOGIC;
  signal gtOp_carry_i_5_n_0 : STD_LOGIC;
  signal gtOp_carry_i_6_n_0 : STD_LOGIC;
  signal gtOp_carry_i_7_n_0 : STD_LOGIC;
  signal gtOp_carry_i_8_n_0 : STD_LOGIC;
  signal gtOp_carry_n_0 : STD_LOGIC;
  signal gtOp_carry_n_1 : STD_LOGIC;
  signal gtOp_carry_n_2 : STD_LOGIC;
  signal gtOp_carry_n_3 : STD_LOGIC;
  signal \i__carry__0_i_1_n_0\ : STD_LOGIC;
  signal \i__carry__0_i_2_n_0\ : STD_LOGIC;
  signal \i__carry__0_i_3_n_0\ : STD_LOGIC;
  signal \i__carry__0_i_4_n_0\ : STD_LOGIC;
  signal \i__carry__0_i_5_n_0\ : STD_LOGIC;
  signal \i__carry__0_i_6_n_0\ : STD_LOGIC;
  signal \i__carry__0_i_7_n_0\ : STD_LOGIC;
  signal \i__carry__0_i_8_n_0\ : STD_LOGIC;
  signal \i__carry__1_i_1_n_0\ : STD_LOGIC;
  signal \i__carry__1_i_2_n_0\ : STD_LOGIC;
  signal \i__carry__1_i_3_n_0\ : STD_LOGIC;
  signal \i__carry__1_i_4_n_0\ : STD_LOGIC;
  signal \i__carry__1_i_5_n_0\ : STD_LOGIC;
  signal \i__carry__1_i_6_n_0\ : STD_LOGIC;
  signal \i__carry__1_i_7_n_0\ : STD_LOGIC;
  signal \i__carry__1_i_8_n_0\ : STD_LOGIC;
  signal \i__carry__2_i_1_n_0\ : STD_LOGIC;
  signal \i__carry__2_i_2_n_0\ : STD_LOGIC;
  signal \i__carry__2_i_3_n_0\ : STD_LOGIC;
  signal \i__carry__2_i_4_n_0\ : STD_LOGIC;
  signal \i__carry__2_i_5_n_0\ : STD_LOGIC;
  signal \i__carry__2_i_6_n_0\ : STD_LOGIC;
  signal \i__carry__2_i_7_n_0\ : STD_LOGIC;
  signal \i__carry_i_1_n_0\ : STD_LOGIC;
  signal \i__carry_i_2_n_0\ : STD_LOGIC;
  signal \i__carry_i_3_n_0\ : STD_LOGIC;
  signal \i__carry_i_4_n_0\ : STD_LOGIC;
  signal \i__carry_i_5_n_0\ : STD_LOGIC;
  signal \i__carry_i_6_n_0\ : STD_LOGIC;
  signal \i__carry_i_7_n_0\ : STD_LOGIC;
  signal \i__carry_i_8_n_0\ : STD_LOGIC;
  signal \plusOp__0_n_100\ : STD_LOGIC;
  signal \plusOp__0_n_101\ : STD_LOGIC;
  signal \plusOp__0_n_102\ : STD_LOGIC;
  signal \plusOp__0_n_103\ : STD_LOGIC;
  signal \plusOp__0_n_104\ : STD_LOGIC;
  signal \plusOp__0_n_105\ : STD_LOGIC;
  signal \plusOp__0_n_79\ : STD_LOGIC;
  signal \plusOp__0_n_80\ : STD_LOGIC;
  signal \plusOp__0_n_81\ : STD_LOGIC;
  signal \plusOp__0_n_82\ : STD_LOGIC;
  signal \plusOp__0_n_83\ : STD_LOGIC;
  signal \plusOp__0_n_84\ : STD_LOGIC;
  signal \plusOp__0_n_85\ : STD_LOGIC;
  signal \plusOp__0_n_86\ : STD_LOGIC;
  signal \plusOp__0_n_87\ : STD_LOGIC;
  signal \plusOp__0_n_88\ : STD_LOGIC;
  signal \plusOp__0_n_89\ : STD_LOGIC;
  signal \plusOp__0_n_90\ : STD_LOGIC;
  signal \plusOp__0_n_91\ : STD_LOGIC;
  signal \plusOp__0_n_92\ : STD_LOGIC;
  signal \plusOp__0_n_93\ : STD_LOGIC;
  signal \plusOp__0_n_94\ : STD_LOGIC;
  signal \plusOp__0_n_95\ : STD_LOGIC;
  signal \plusOp__0_n_96\ : STD_LOGIC;
  signal \plusOp__0_n_97\ : STD_LOGIC;
  signal \plusOp__0_n_98\ : STD_LOGIC;
  signal \plusOp__0_n_99\ : STD_LOGIC;
  signal \plusOp__1_n_106\ : STD_LOGIC;
  signal \plusOp__1_n_107\ : STD_LOGIC;
  signal \plusOp__1_n_108\ : STD_LOGIC;
  signal \plusOp__1_n_109\ : STD_LOGIC;
  signal \plusOp__1_n_110\ : STD_LOGIC;
  signal \plusOp__1_n_111\ : STD_LOGIC;
  signal \plusOp__1_n_112\ : STD_LOGIC;
  signal \plusOp__1_n_113\ : STD_LOGIC;
  signal \plusOp__1_n_114\ : STD_LOGIC;
  signal \plusOp__1_n_115\ : STD_LOGIC;
  signal \plusOp__1_n_116\ : STD_LOGIC;
  signal \plusOp__1_n_117\ : STD_LOGIC;
  signal \plusOp__1_n_118\ : STD_LOGIC;
  signal \plusOp__1_n_119\ : STD_LOGIC;
  signal \plusOp__1_n_120\ : STD_LOGIC;
  signal \plusOp__1_n_121\ : STD_LOGIC;
  signal \plusOp__1_n_122\ : STD_LOGIC;
  signal \plusOp__1_n_123\ : STD_LOGIC;
  signal \plusOp__1_n_124\ : STD_LOGIC;
  signal \plusOp__1_n_125\ : STD_LOGIC;
  signal \plusOp__1_n_126\ : STD_LOGIC;
  signal \plusOp__1_n_127\ : STD_LOGIC;
  signal \plusOp__1_n_128\ : STD_LOGIC;
  signal \plusOp__1_n_129\ : STD_LOGIC;
  signal \plusOp__1_n_130\ : STD_LOGIC;
  signal \plusOp__1_n_131\ : STD_LOGIC;
  signal \plusOp__1_n_132\ : STD_LOGIC;
  signal \plusOp__1_n_133\ : STD_LOGIC;
  signal \plusOp__1_n_134\ : STD_LOGIC;
  signal \plusOp__1_n_135\ : STD_LOGIC;
  signal \plusOp__1_n_136\ : STD_LOGIC;
  signal \plusOp__1_n_137\ : STD_LOGIC;
  signal \plusOp__1_n_138\ : STD_LOGIC;
  signal \plusOp__1_n_139\ : STD_LOGIC;
  signal \plusOp__1_n_140\ : STD_LOGIC;
  signal \plusOp__1_n_141\ : STD_LOGIC;
  signal \plusOp__1_n_142\ : STD_LOGIC;
  signal \plusOp__1_n_143\ : STD_LOGIC;
  signal \plusOp__1_n_144\ : STD_LOGIC;
  signal \plusOp__1_n_145\ : STD_LOGIC;
  signal \plusOp__1_n_146\ : STD_LOGIC;
  signal \plusOp__1_n_147\ : STD_LOGIC;
  signal \plusOp__1_n_148\ : STD_LOGIC;
  signal \plusOp__1_n_149\ : STD_LOGIC;
  signal \plusOp__1_n_150\ : STD_LOGIC;
  signal \plusOp__1_n_151\ : STD_LOGIC;
  signal \plusOp__1_n_152\ : STD_LOGIC;
  signal \plusOp__1_n_153\ : STD_LOGIC;
  signal \plusOp__1_n_24\ : STD_LOGIC;
  signal \plusOp__1_n_25\ : STD_LOGIC;
  signal \plusOp__1_n_26\ : STD_LOGIC;
  signal \plusOp__1_n_27\ : STD_LOGIC;
  signal \plusOp__1_n_28\ : STD_LOGIC;
  signal \plusOp__1_n_29\ : STD_LOGIC;
  signal \plusOp__1_n_30\ : STD_LOGIC;
  signal \plusOp__1_n_31\ : STD_LOGIC;
  signal \plusOp__1_n_32\ : STD_LOGIC;
  signal \plusOp__1_n_33\ : STD_LOGIC;
  signal \plusOp__1_n_34\ : STD_LOGIC;
  signal \plusOp__1_n_35\ : STD_LOGIC;
  signal \plusOp__1_n_36\ : STD_LOGIC;
  signal \plusOp__1_n_37\ : STD_LOGIC;
  signal \plusOp__1_n_38\ : STD_LOGIC;
  signal \plusOp__1_n_39\ : STD_LOGIC;
  signal \plusOp__1_n_40\ : STD_LOGIC;
  signal \plusOp__1_n_41\ : STD_LOGIC;
  signal \plusOp__1_n_42\ : STD_LOGIC;
  signal \plusOp__1_n_43\ : STD_LOGIC;
  signal \plusOp__1_n_44\ : STD_LOGIC;
  signal \plusOp__1_n_45\ : STD_LOGIC;
  signal \plusOp__1_n_46\ : STD_LOGIC;
  signal \plusOp__1_n_47\ : STD_LOGIC;
  signal \plusOp__1_n_48\ : STD_LOGIC;
  signal \plusOp__1_n_49\ : STD_LOGIC;
  signal \plusOp__1_n_50\ : STD_LOGIC;
  signal \plusOp__1_n_51\ : STD_LOGIC;
  signal \plusOp__1_n_52\ : STD_LOGIC;
  signal \plusOp__1_n_53\ : STD_LOGIC;
  signal \plusOp__2_n_100\ : STD_LOGIC;
  signal \plusOp__2_n_101\ : STD_LOGIC;
  signal \plusOp__2_n_102\ : STD_LOGIC;
  signal \plusOp__2_n_103\ : STD_LOGIC;
  signal \plusOp__2_n_104\ : STD_LOGIC;
  signal \plusOp__2_n_105\ : STD_LOGIC;
  signal \plusOp__2_n_79\ : STD_LOGIC;
  signal \plusOp__2_n_80\ : STD_LOGIC;
  signal \plusOp__2_n_81\ : STD_LOGIC;
  signal \plusOp__2_n_82\ : STD_LOGIC;
  signal \plusOp__2_n_83\ : STD_LOGIC;
  signal \plusOp__2_n_84\ : STD_LOGIC;
  signal \plusOp__2_n_85\ : STD_LOGIC;
  signal \plusOp__2_n_86\ : STD_LOGIC;
  signal \plusOp__2_n_87\ : STD_LOGIC;
  signal \plusOp__2_n_88\ : STD_LOGIC;
  signal \plusOp__2_n_89\ : STD_LOGIC;
  signal \plusOp__2_n_90\ : STD_LOGIC;
  signal \plusOp__2_n_91\ : STD_LOGIC;
  signal \plusOp__2_n_92\ : STD_LOGIC;
  signal \plusOp__2_n_93\ : STD_LOGIC;
  signal \plusOp__2_n_94\ : STD_LOGIC;
  signal \plusOp__2_n_95\ : STD_LOGIC;
  signal \plusOp__2_n_96\ : STD_LOGIC;
  signal \plusOp__2_n_97\ : STD_LOGIC;
  signal \plusOp__2_n_98\ : STD_LOGIC;
  signal \plusOp__2_n_99\ : STD_LOGIC;
  signal plusOp_n_100 : STD_LOGIC;
  signal plusOp_n_101 : STD_LOGIC;
  signal plusOp_n_102 : STD_LOGIC;
  signal plusOp_n_103 : STD_LOGIC;
  signal plusOp_n_104 : STD_LOGIC;
  signal plusOp_n_105 : STD_LOGIC;
  signal plusOp_n_106 : STD_LOGIC;
  signal plusOp_n_107 : STD_LOGIC;
  signal plusOp_n_108 : STD_LOGIC;
  signal plusOp_n_109 : STD_LOGIC;
  signal plusOp_n_110 : STD_LOGIC;
  signal plusOp_n_111 : STD_LOGIC;
  signal plusOp_n_112 : STD_LOGIC;
  signal plusOp_n_113 : STD_LOGIC;
  signal plusOp_n_114 : STD_LOGIC;
  signal plusOp_n_115 : STD_LOGIC;
  signal plusOp_n_116 : STD_LOGIC;
  signal plusOp_n_117 : STD_LOGIC;
  signal plusOp_n_118 : STD_LOGIC;
  signal plusOp_n_119 : STD_LOGIC;
  signal plusOp_n_120 : STD_LOGIC;
  signal plusOp_n_121 : STD_LOGIC;
  signal plusOp_n_122 : STD_LOGIC;
  signal plusOp_n_123 : STD_LOGIC;
  signal plusOp_n_124 : STD_LOGIC;
  signal plusOp_n_125 : STD_LOGIC;
  signal plusOp_n_126 : STD_LOGIC;
  signal plusOp_n_127 : STD_LOGIC;
  signal plusOp_n_128 : STD_LOGIC;
  signal plusOp_n_129 : STD_LOGIC;
  signal plusOp_n_130 : STD_LOGIC;
  signal plusOp_n_131 : STD_LOGIC;
  signal plusOp_n_132 : STD_LOGIC;
  signal plusOp_n_133 : STD_LOGIC;
  signal plusOp_n_134 : STD_LOGIC;
  signal plusOp_n_135 : STD_LOGIC;
  signal plusOp_n_136 : STD_LOGIC;
  signal plusOp_n_137 : STD_LOGIC;
  signal plusOp_n_138 : STD_LOGIC;
  signal plusOp_n_139 : STD_LOGIC;
  signal plusOp_n_140 : STD_LOGIC;
  signal plusOp_n_141 : STD_LOGIC;
  signal plusOp_n_142 : STD_LOGIC;
  signal plusOp_n_143 : STD_LOGIC;
  signal plusOp_n_144 : STD_LOGIC;
  signal plusOp_n_145 : STD_LOGIC;
  signal plusOp_n_146 : STD_LOGIC;
  signal plusOp_n_147 : STD_LOGIC;
  signal plusOp_n_148 : STD_LOGIC;
  signal plusOp_n_149 : STD_LOGIC;
  signal plusOp_n_150 : STD_LOGIC;
  signal plusOp_n_151 : STD_LOGIC;
  signal plusOp_n_152 : STD_LOGIC;
  signal plusOp_n_153 : STD_LOGIC;
  signal plusOp_n_79 : STD_LOGIC;
  signal plusOp_n_80 : STD_LOGIC;
  signal plusOp_n_81 : STD_LOGIC;
  signal plusOp_n_82 : STD_LOGIC;
  signal plusOp_n_83 : STD_LOGIC;
  signal plusOp_n_84 : STD_LOGIC;
  signal plusOp_n_85 : STD_LOGIC;
  signal plusOp_n_86 : STD_LOGIC;
  signal plusOp_n_87 : STD_LOGIC;
  signal plusOp_n_88 : STD_LOGIC;
  signal plusOp_n_89 : STD_LOGIC;
  signal plusOp_n_90 : STD_LOGIC;
  signal plusOp_n_91 : STD_LOGIC;
  signal plusOp_n_92 : STD_LOGIC;
  signal plusOp_n_93 : STD_LOGIC;
  signal plusOp_n_94 : STD_LOGIC;
  signal plusOp_n_95 : STD_LOGIC;
  signal plusOp_n_96 : STD_LOGIC;
  signal plusOp_n_97 : STD_LOGIC;
  signal plusOp_n_98 : STD_LOGIC;
  signal plusOp_n_99 : STD_LOGIC;
  signal \^valid_ena\ : STD_LOGIC;
  signal \NLW__inferred__5/i__carry__2_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  signal NLW_d3_reg_CARRYCASCOUT_UNCONNECTED : STD_LOGIC;
  signal NLW_d3_reg_MULTSIGNOUT_UNCONNECTED : STD_LOGIC;
  signal NLW_d3_reg_OVERFLOW_UNCONNECTED : STD_LOGIC;
  signal NLW_d3_reg_PATTERNBDETECT_UNCONNECTED : STD_LOGIC;
  signal NLW_d3_reg_PATTERNDETECT_UNCONNECTED : STD_LOGIC;
  signal NLW_d3_reg_UNDERFLOW_UNCONNECTED : STD_LOGIC;
  signal NLW_d3_reg_ACOUT_UNCONNECTED : STD_LOGIC_VECTOR ( 29 downto 0 );
  signal NLW_d3_reg_BCOUT_UNCONNECTED : STD_LOGIC_VECTOR ( 17 downto 0 );
  signal NLW_d3_reg_CARRYOUT_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_d3_reg_P_UNCONNECTED : STD_LOGIC_VECTOR ( 47 downto 0 );
  signal NLW_d6_reg_CARRYCASCOUT_UNCONNECTED : STD_LOGIC;
  signal NLW_d6_reg_MULTSIGNOUT_UNCONNECTED : STD_LOGIC;
  signal NLW_d6_reg_OVERFLOW_UNCONNECTED : STD_LOGIC;
  signal NLW_d6_reg_PATTERNBDETECT_UNCONNECTED : STD_LOGIC;
  signal NLW_d6_reg_PATTERNDETECT_UNCONNECTED : STD_LOGIC;
  signal NLW_d6_reg_UNDERFLOW_UNCONNECTED : STD_LOGIC;
  signal NLW_d6_reg_ACOUT_UNCONNECTED : STD_LOGIC_VECTOR ( 29 downto 0 );
  signal NLW_d6_reg_BCOUT_UNCONNECTED : STD_LOGIC_VECTOR ( 17 downto 0 );
  signal NLW_d6_reg_CARRYOUT_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_d6_reg_P_UNCONNECTED : STD_LOGIC_VECTOR ( 47 downto 0 );
  signal NLW_gtOp_carry_O_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_gtOp_carry__0_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_gtOp_carry__1_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_gtOp_carry__2_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 2 );
  signal \NLW_gtOp_carry__2_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_plusOp_CARRYCASCOUT_UNCONNECTED : STD_LOGIC;
  signal NLW_plusOp_MULTSIGNOUT_UNCONNECTED : STD_LOGIC;
  signal NLW_plusOp_OVERFLOW_UNCONNECTED : STD_LOGIC;
  signal NLW_plusOp_PATTERNBDETECT_UNCONNECTED : STD_LOGIC;
  signal NLW_plusOp_PATTERNDETECT_UNCONNECTED : STD_LOGIC;
  signal NLW_plusOp_UNDERFLOW_UNCONNECTED : STD_LOGIC;
  signal NLW_plusOp_ACOUT_UNCONNECTED : STD_LOGIC_VECTOR ( 29 downto 0 );
  signal NLW_plusOp_BCOUT_UNCONNECTED : STD_LOGIC_VECTOR ( 17 downto 0 );
  signal NLW_plusOp_CARRYOUT_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_plusOp_P_UNCONNECTED : STD_LOGIC_VECTOR ( 47 downto 27 );
  signal \NLW_plusOp__0_CARRYCASCOUT_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_plusOp__0_MULTSIGNOUT_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_plusOp__0_OVERFLOW_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_plusOp__0_PATTERNBDETECT_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_plusOp__0_PATTERNDETECT_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_plusOp__0_UNDERFLOW_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_plusOp__0_ACOUT_UNCONNECTED\ : STD_LOGIC_VECTOR ( 29 downto 0 );
  signal \NLW_plusOp__0_BCOUT_UNCONNECTED\ : STD_LOGIC_VECTOR ( 17 downto 0 );
  signal \NLW_plusOp__0_CARRYOUT_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_plusOp__0_P_UNCONNECTED\ : STD_LOGIC_VECTOR ( 47 downto 27 );
  signal \NLW_plusOp__0_PCOUT_UNCONNECTED\ : STD_LOGIC_VECTOR ( 47 downto 0 );
  signal \NLW_plusOp__1_CARRYCASCOUT_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_plusOp__1_MULTSIGNOUT_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_plusOp__1_OVERFLOW_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_plusOp__1_PATTERNBDETECT_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_plusOp__1_PATTERNDETECT_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_plusOp__1_UNDERFLOW_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_plusOp__1_BCOUT_UNCONNECTED\ : STD_LOGIC_VECTOR ( 17 downto 0 );
  signal \NLW_plusOp__1_CARRYOUT_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_plusOp__1_P_UNCONNECTED\ : STD_LOGIC_VECTOR ( 47 downto 0 );
  signal \NLW_plusOp__2_CARRYCASCOUT_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_plusOp__2_MULTSIGNOUT_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_plusOp__2_OVERFLOW_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_plusOp__2_PATTERNBDETECT_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_plusOp__2_PATTERNDETECT_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_plusOp__2_UNDERFLOW_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_plusOp__2_ACOUT_UNCONNECTED\ : STD_LOGIC_VECTOR ( 29 downto 0 );
  signal \NLW_plusOp__2_BCOUT_UNCONNECTED\ : STD_LOGIC_VECTOR ( 17 downto 0 );
  signal \NLW_plusOp__2_CARRYOUT_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_plusOp__2_P_UNCONNECTED\ : STD_LOGIC_VECTOR ( 47 downto 27 );
  signal \NLW_plusOp__2_PCOUT_UNCONNECTED\ : STD_LOGIC_VECTOR ( 47 downto 0 );
  attribute ADDER_THRESHOLD : integer;
  attribute ADDER_THRESHOLD of \_inferred__5/i__carry\ : label is 35;
  attribute METHODOLOGY_DRC_VIOS : string;
  attribute METHODOLOGY_DRC_VIOS of \_inferred__5/i__carry\ : label is "{SYNTH-8 {cell *THIS*}}";
  attribute ADDER_THRESHOLD of \_inferred__5/i__carry__0\ : label is 35;
  attribute METHODOLOGY_DRC_VIOS of \_inferred__5/i__carry__0\ : label is "{SYNTH-8 {cell *THIS*}}";
  attribute ADDER_THRESHOLD of \_inferred__5/i__carry__1\ : label is 35;
  attribute METHODOLOGY_DRC_VIOS of \_inferred__5/i__carry__1\ : label is "{SYNTH-8 {cell *THIS*}}";
  attribute ADDER_THRESHOLD of \_inferred__5/i__carry__2\ : label is 35;
  attribute METHODOLOGY_DRC_VIOS of \_inferred__5/i__carry__2\ : label is "{SYNTH-8 {cell *THIS*}}";
  attribute COMPARATOR_THRESHOLD : integer;
  attribute COMPARATOR_THRESHOLD of gtOp_carry : label is 11;
  attribute COMPARATOR_THRESHOLD of \gtOp_carry__0\ : label is 11;
  attribute COMPARATOR_THRESHOLD of \gtOp_carry__1\ : label is 11;
  attribute COMPARATOR_THRESHOLD of \gtOp_carry__2\ : label is 11;
begin
  Q(15 downto 0) <= \^q\(15 downto 0);
  valid_ena <= \^valid_ena\;
\_inferred__5/i__carry\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \_inferred__5/i__carry_n_0\,
      CO(2) => \_inferred__5/i__carry_n_1\,
      CO(1) => \_inferred__5/i__carry_n_2\,
      CO(0) => \_inferred__5/i__carry_n_3\,
      CYINIT => '1',
      DI(3) => \i__carry_i_1_n_0\,
      DI(2) => \i__carry_i_2_n_0\,
      DI(1) => \i__carry_i_3_n_0\,
      DI(0) => \i__carry_i_4_n_0\,
      O(3 downto 0) => doutint(3 downto 0),
      S(3) => \i__carry_i_5_n_0\,
      S(2) => \i__carry_i_6_n_0\,
      S(1) => \i__carry_i_7_n_0\,
      S(0) => \i__carry_i_8_n_0\
    );
\_inferred__5/i__carry__0\: unisim.vcomponents.CARRY4
     port map (
      CI => \_inferred__5/i__carry_n_0\,
      CO(3) => \_inferred__5/i__carry__0_n_0\,
      CO(2) => \_inferred__5/i__carry__0_n_1\,
      CO(1) => \_inferred__5/i__carry__0_n_2\,
      CO(0) => \_inferred__5/i__carry__0_n_3\,
      CYINIT => '0',
      DI(3) => \i__carry__0_i_1_n_0\,
      DI(2) => \i__carry__0_i_2_n_0\,
      DI(1) => \i__carry__0_i_3_n_0\,
      DI(0) => \i__carry__0_i_4_n_0\,
      O(3 downto 0) => doutint(7 downto 4),
      S(3) => \i__carry__0_i_5_n_0\,
      S(2) => \i__carry__0_i_6_n_0\,
      S(1) => \i__carry__0_i_7_n_0\,
      S(0) => \i__carry__0_i_8_n_0\
    );
\_inferred__5/i__carry__1\: unisim.vcomponents.CARRY4
     port map (
      CI => \_inferred__5/i__carry__0_n_0\,
      CO(3) => \_inferred__5/i__carry__1_n_0\,
      CO(2) => \_inferred__5/i__carry__1_n_1\,
      CO(1) => \_inferred__5/i__carry__1_n_2\,
      CO(0) => \_inferred__5/i__carry__1_n_3\,
      CYINIT => '0',
      DI(3) => \i__carry__1_i_1_n_0\,
      DI(2) => \i__carry__1_i_2_n_0\,
      DI(1) => \i__carry__1_i_3_n_0\,
      DI(0) => \i__carry__1_i_4_n_0\,
      O(3 downto 0) => doutint(11 downto 8),
      S(3) => \i__carry__1_i_5_n_0\,
      S(2) => \i__carry__1_i_6_n_0\,
      S(1) => \i__carry__1_i_7_n_0\,
      S(0) => \i__carry__1_i_8_n_0\
    );
\_inferred__5/i__carry__2\: unisim.vcomponents.CARRY4
     port map (
      CI => \_inferred__5/i__carry__1_n_0\,
      CO(3) => \NLW__inferred__5/i__carry__2_CO_UNCONNECTED\(3),
      CO(2) => \_inferred__5/i__carry__2_n_1\,
      CO(1) => \_inferred__5/i__carry__2_n_2\,
      CO(0) => \_inferred__5/i__carry__2_n_3\,
      CYINIT => '0',
      DI(3) => '0',
      DI(2) => \i__carry__2_i_1_n_0\,
      DI(1) => \i__carry__2_i_2_n_0\,
      DI(0) => \i__carry__2_i_3_n_0\,
      O(3 downto 0) => doutint(15 downto 12),
      S(3) => \i__carry__2_i_4_n_0\,
      S(2) => \i__carry__2_i_5_n_0\,
      S(1) => \i__carry__2_i_6_n_0\,
      S(0) => \i__carry__2_i_7_n_0\
    );
d3_reg: unisim.vcomponents.DSP48E1
    generic map(
      ACASCREG => 2,
      ADREG => 1,
      ALUMODEREG => 0,
      AREG => 2,
      AUTORESET_PATDET => "NO_RESET",
      A_INPUT => "DIRECT",
      BCASCREG => 0,
      BREG => 0,
      B_INPUT => "DIRECT",
      CARRYINREG => 0,
      CARRYINSELREG => 0,
      CREG => 0,
      DREG => 1,
      INMODEREG => 0,
      MASK => X"3FFFFFFFFFFF",
      MREG => 0,
      OPMODEREG => 0,
      PATTERN => X"000000000000",
      PREG => 1,
      SEL_MASK => "MASK",
      SEL_PATTERN => "PATTERN",
      USE_DPORT => false,
      USE_MULT => "MULTIPLY",
      USE_PATTERN_DETECT => "NO_PATDET",
      USE_SIMD => "ONE48"
    )
        port map (
      A(29 downto 16) => B"00000000000000",
      A(15 downto 0) => din_1(15 downto 0),
      ACIN(29 downto 0) => B"000000000000000000000000000000",
      ACOUT(29 downto 0) => NLW_d3_reg_ACOUT_UNCONNECTED(29 downto 0),
      ALUMODE(3 downto 0) => B"0000",
      B(17 downto 5) => B"0000000000000",
      B(4 downto 0) => cf_3_i(4 downto 0),
      BCIN(17 downto 0) => B"000000000000000000",
      BCOUT(17 downto 0) => NLW_d3_reg_BCOUT_UNCONNECTED(17 downto 0),
      C(47 downto 0) => B"111111111111111111111111111111111111111111111111",
      CARRYCASCIN => '0',
      CARRYCASCOUT => NLW_d3_reg_CARRYCASCOUT_UNCONNECTED,
      CARRYIN => '0',
      CARRYINSEL(2 downto 0) => B"000",
      CARRYOUT(3 downto 0) => NLW_d3_reg_CARRYOUT_UNCONNECTED(3 downto 0),
      CEA1 => \^valid_ena\,
      CEA2 => \^valid_ena\,
      CEAD => '0',
      CEALUMODE => '0',
      CEB1 => '0',
      CEB2 => '0',
      CEC => '0',
      CECARRYIN => '0',
      CECTRL => '0',
      CED => '0',
      CEINMODE => '0',
      CEM => '0',
      CEP => d3_reg_i_1_n_0,
      CLK => clk_i,
      D(24 downto 0) => B"0000000000000000000000000",
      INMODE(4 downto 0) => B"00000",
      MULTSIGNIN => '0',
      MULTSIGNOUT => NLW_d3_reg_MULTSIGNOUT_UNCONNECTED,
      OPMODE(6 downto 0) => B"0000101",
      OVERFLOW => NLW_d3_reg_OVERFLOW_UNCONNECTED,
      P(47 downto 0) => NLW_d3_reg_P_UNCONNECTED(47 downto 0),
      PATTERNBDETECT => NLW_d3_reg_PATTERNBDETECT_UNCONNECTED,
      PATTERNDETECT => NLW_d3_reg_PATTERNDETECT_UNCONNECTED,
      PCIN(47 downto 0) => B"000000000000000000000000000000000000000000000000",
      PCOUT(47) => d3_reg_n_106,
      PCOUT(46) => d3_reg_n_107,
      PCOUT(45) => d3_reg_n_108,
      PCOUT(44) => d3_reg_n_109,
      PCOUT(43) => d3_reg_n_110,
      PCOUT(42) => d3_reg_n_111,
      PCOUT(41) => d3_reg_n_112,
      PCOUT(40) => d3_reg_n_113,
      PCOUT(39) => d3_reg_n_114,
      PCOUT(38) => d3_reg_n_115,
      PCOUT(37) => d3_reg_n_116,
      PCOUT(36) => d3_reg_n_117,
      PCOUT(35) => d3_reg_n_118,
      PCOUT(34) => d3_reg_n_119,
      PCOUT(33) => d3_reg_n_120,
      PCOUT(32) => d3_reg_n_121,
      PCOUT(31) => d3_reg_n_122,
      PCOUT(30) => d3_reg_n_123,
      PCOUT(29) => d3_reg_n_124,
      PCOUT(28) => d3_reg_n_125,
      PCOUT(27) => d3_reg_n_126,
      PCOUT(26) => d3_reg_n_127,
      PCOUT(25) => d3_reg_n_128,
      PCOUT(24) => d3_reg_n_129,
      PCOUT(23) => d3_reg_n_130,
      PCOUT(22) => d3_reg_n_131,
      PCOUT(21) => d3_reg_n_132,
      PCOUT(20) => d3_reg_n_133,
      PCOUT(19) => d3_reg_n_134,
      PCOUT(18) => d3_reg_n_135,
      PCOUT(17) => d3_reg_n_136,
      PCOUT(16) => d3_reg_n_137,
      PCOUT(15) => d3_reg_n_138,
      PCOUT(14) => d3_reg_n_139,
      PCOUT(13) => d3_reg_n_140,
      PCOUT(12) => d3_reg_n_141,
      PCOUT(11) => d3_reg_n_142,
      PCOUT(10) => d3_reg_n_143,
      PCOUT(9) => d3_reg_n_144,
      PCOUT(8) => d3_reg_n_145,
      PCOUT(7) => d3_reg_n_146,
      PCOUT(6) => d3_reg_n_147,
      PCOUT(5) => d3_reg_n_148,
      PCOUT(4) => d3_reg_n_149,
      PCOUT(3) => d3_reg_n_150,
      PCOUT(2) => d3_reg_n_151,
      PCOUT(1) => d3_reg_n_152,
      PCOUT(0) => d3_reg_n_153,
      RSTA => rst_i,
      RSTALLCARRYIN => '0',
      RSTALUMODE => '0',
      RSTB => '0',
      RSTC => '0',
      RSTCTRL => '0',
      RSTD => '0',
      RSTINMODE => '0',
      RSTM => '0',
      RSTP => '0',
      UNDERFLOW => NLW_d3_reg_UNDERFLOW_UNCONNECTED
    );
d3_reg_i_1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"08"
    )
        port map (
      I0 => d6_reg_0,
      I1 => \out\,
      I2 => rst_i,
      O => d3_reg_i_1_n_0
    );
d6_reg: unisim.vcomponents.DSP48E1
    generic map(
      ACASCREG => 2,
      ADREG => 1,
      ALUMODEREG => 0,
      AREG => 2,
      AUTORESET_PATDET => "NO_RESET",
      A_INPUT => "DIRECT",
      BCASCREG => 0,
      BREG => 0,
      B_INPUT => "DIRECT",
      CARRYINREG => 0,
      CARRYINSELREG => 0,
      CREG => 0,
      DREG => 1,
      INMODEREG => 0,
      MASK => X"3FFFFFFFFFFF",
      MREG => 0,
      OPMODEREG => 0,
      PATTERN => X"000000000000",
      PREG => 1,
      SEL_MASK => "MASK",
      SEL_PATTERN => "PATTERN",
      USE_DPORT => false,
      USE_MULT => "MULTIPLY",
      USE_PATTERN_DETECT => "NO_PATDET",
      USE_SIMD => "ONE48"
    )
        port map (
      A(29 downto 16) => B"00000000000000",
      A(15 downto 0) => din_4(15 downto 0),
      ACIN(29 downto 0) => B"000000000000000000000000000000",
      ACOUT(29 downto 0) => NLW_d6_reg_ACOUT_UNCONNECTED(29 downto 0),
      ALUMODE(3 downto 0) => B"0000",
      B(17 downto 5) => B"0000000000000",
      B(4 downto 0) => cf_1_i(4 downto 0),
      BCIN(17 downto 0) => B"000000000000000000",
      BCOUT(17 downto 0) => NLW_d6_reg_BCOUT_UNCONNECTED(17 downto 0),
      C(47 downto 0) => B"111111111111111111111111111111111111111111111111",
      CARRYCASCIN => '0',
      CARRYCASCOUT => NLW_d6_reg_CARRYCASCOUT_UNCONNECTED,
      CARRYIN => '0',
      CARRYINSEL(2 downto 0) => B"000",
      CARRYOUT(3 downto 0) => NLW_d6_reg_CARRYOUT_UNCONNECTED(3 downto 0),
      CEA1 => \^valid_ena\,
      CEA2 => \^valid_ena\,
      CEAD => '0',
      CEALUMODE => '0',
      CEB1 => '0',
      CEB2 => '0',
      CEC => '0',
      CECARRYIN => '0',
      CECTRL => '0',
      CED => '0',
      CEINMODE => '0',
      CEM => '0',
      CEP => d3_reg_i_1_n_0,
      CLK => clk_i,
      D(24 downto 0) => B"0000000000000000000000000",
      INMODE(4 downto 0) => B"00000",
      MULTSIGNIN => '0',
      MULTSIGNOUT => NLW_d6_reg_MULTSIGNOUT_UNCONNECTED,
      OPMODE(6 downto 0) => B"0000101",
      OVERFLOW => NLW_d6_reg_OVERFLOW_UNCONNECTED,
      P(47 downto 0) => NLW_d6_reg_P_UNCONNECTED(47 downto 0),
      PATTERNBDETECT => NLW_d6_reg_PATTERNBDETECT_UNCONNECTED,
      PATTERNDETECT => NLW_d6_reg_PATTERNDETECT_UNCONNECTED,
      PCIN(47 downto 0) => B"000000000000000000000000000000000000000000000000",
      PCOUT(47) => d6_reg_n_106,
      PCOUT(46) => d6_reg_n_107,
      PCOUT(45) => d6_reg_n_108,
      PCOUT(44) => d6_reg_n_109,
      PCOUT(43) => d6_reg_n_110,
      PCOUT(42) => d6_reg_n_111,
      PCOUT(41) => d6_reg_n_112,
      PCOUT(40) => d6_reg_n_113,
      PCOUT(39) => d6_reg_n_114,
      PCOUT(38) => d6_reg_n_115,
      PCOUT(37) => d6_reg_n_116,
      PCOUT(36) => d6_reg_n_117,
      PCOUT(35) => d6_reg_n_118,
      PCOUT(34) => d6_reg_n_119,
      PCOUT(33) => d6_reg_n_120,
      PCOUT(32) => d6_reg_n_121,
      PCOUT(31) => d6_reg_n_122,
      PCOUT(30) => d6_reg_n_123,
      PCOUT(29) => d6_reg_n_124,
      PCOUT(28) => d6_reg_n_125,
      PCOUT(27) => d6_reg_n_126,
      PCOUT(26) => d6_reg_n_127,
      PCOUT(25) => d6_reg_n_128,
      PCOUT(24) => d6_reg_n_129,
      PCOUT(23) => d6_reg_n_130,
      PCOUT(22) => d6_reg_n_131,
      PCOUT(21) => d6_reg_n_132,
      PCOUT(20) => d6_reg_n_133,
      PCOUT(19) => d6_reg_n_134,
      PCOUT(18) => d6_reg_n_135,
      PCOUT(17) => d6_reg_n_136,
      PCOUT(16) => d6_reg_n_137,
      PCOUT(15) => d6_reg_n_138,
      PCOUT(14) => d6_reg_n_139,
      PCOUT(13) => d6_reg_n_140,
      PCOUT(12) => d6_reg_n_141,
      PCOUT(11) => d6_reg_n_142,
      PCOUT(10) => d6_reg_n_143,
      PCOUT(9) => d6_reg_n_144,
      PCOUT(8) => d6_reg_n_145,
      PCOUT(7) => d6_reg_n_146,
      PCOUT(6) => d6_reg_n_147,
      PCOUT(5) => d6_reg_n_148,
      PCOUT(4) => d6_reg_n_149,
      PCOUT(3) => d6_reg_n_150,
      PCOUT(2) => d6_reg_n_151,
      PCOUT(1) => d6_reg_n_152,
      PCOUT(0) => d6_reg_n_153,
      RSTA => rst_i,
      RSTALLCARRYIN => '0',
      RSTALUMODE => '0',
      RSTB => '0',
      RSTC => '0',
      RSTCTRL => '0',
      RSTD => '0',
      RSTINMODE => '0',
      RSTM => '0',
      RSTP => '0',
      UNDERFLOW => NLW_d6_reg_UNDERFLOW_UNCONNECTED
    );
\data_muxed_out_reg[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000033E200E2"
    )
        port map (
      I0 => ADC_data_i(0),
      I1 => op_mode_i(1),
      I2 => \^q\(0),
      I3 => op_mode_i(0),
      I4 => m_axis_data_tdata(0),
      I5 => \data_o[0]\(0),
      O => D(0)
    );
\data_muxed_out_reg[10]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000033E200E2"
    )
        port map (
      I0 => ADC_data_i(10),
      I1 => op_mode_i(1),
      I2 => \^q\(10),
      I3 => op_mode_i(0),
      I4 => m_axis_data_tdata(10),
      I5 => \data_o[0]\(0),
      O => D(10)
    );
\data_muxed_out_reg[11]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000033E200E2"
    )
        port map (
      I0 => ADC_data_i(11),
      I1 => op_mode_i(1),
      I2 => \^q\(11),
      I3 => op_mode_i(0),
      I4 => m_axis_data_tdata(11),
      I5 => \data_o[0]\(0),
      O => D(11)
    );
\data_muxed_out_reg[12]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000033E200E2"
    )
        port map (
      I0 => ADC_data_i(12),
      I1 => op_mode_i(1),
      I2 => \^q\(12),
      I3 => op_mode_i(0),
      I4 => m_axis_data_tdata(12),
      I5 => \data_o[0]\(0),
      O => D(12)
    );
\data_muxed_out_reg[13]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000033E200E2"
    )
        port map (
      I0 => ADC_data_i(13),
      I1 => op_mode_i(1),
      I2 => \^q\(13),
      I3 => op_mode_i(0),
      I4 => m_axis_data_tdata(13),
      I5 => \data_o[0]\(0),
      O => D(13)
    );
\data_muxed_out_reg[14]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000033E200E2"
    )
        port map (
      I0 => ADC_data_i(14),
      I1 => op_mode_i(1),
      I2 => \^q\(14),
      I3 => op_mode_i(0),
      I4 => m_axis_data_tdata(14),
      I5 => \data_o[0]\(0),
      O => D(14)
    );
\data_muxed_out_reg[15]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000033E200E2"
    )
        port map (
      I0 => ADC_data_i(15),
      I1 => op_mode_i(1),
      I2 => \^q\(15),
      I3 => op_mode_i(0),
      I4 => m_axis_data_tdata(15),
      I5 => \data_o[0]\(0),
      O => D(15)
    );
\data_muxed_out_reg[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000033E200E2"
    )
        port map (
      I0 => ADC_data_i(1),
      I1 => op_mode_i(1),
      I2 => \^q\(1),
      I3 => op_mode_i(0),
      I4 => m_axis_data_tdata(1),
      I5 => \data_o[0]\(0),
      O => D(1)
    );
\data_muxed_out_reg[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000033E200E2"
    )
        port map (
      I0 => ADC_data_i(2),
      I1 => op_mode_i(1),
      I2 => \^q\(2),
      I3 => op_mode_i(0),
      I4 => m_axis_data_tdata(2),
      I5 => \data_o[0]\(0),
      O => D(2)
    );
\data_muxed_out_reg[3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000033E200E2"
    )
        port map (
      I0 => ADC_data_i(3),
      I1 => op_mode_i(1),
      I2 => \^q\(3),
      I3 => op_mode_i(0),
      I4 => m_axis_data_tdata(3),
      I5 => \data_o[0]\(0),
      O => D(3)
    );
\data_muxed_out_reg[4]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000033E200E2"
    )
        port map (
      I0 => ADC_data_i(4),
      I1 => op_mode_i(1),
      I2 => \^q\(4),
      I3 => op_mode_i(0),
      I4 => m_axis_data_tdata(4),
      I5 => \data_o[0]\(0),
      O => D(4)
    );
\data_muxed_out_reg[5]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000033E200E2"
    )
        port map (
      I0 => ADC_data_i(5),
      I1 => op_mode_i(1),
      I2 => \^q\(5),
      I3 => op_mode_i(0),
      I4 => m_axis_data_tdata(5),
      I5 => \data_o[0]\(0),
      O => D(5)
    );
\data_muxed_out_reg[6]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000033E200E2"
    )
        port map (
      I0 => ADC_data_i(6),
      I1 => op_mode_i(1),
      I2 => \^q\(6),
      I3 => op_mode_i(0),
      I4 => m_axis_data_tdata(6),
      I5 => \data_o[0]\(0),
      O => D(6)
    );
\data_muxed_out_reg[7]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000033E200E2"
    )
        port map (
      I0 => ADC_data_i(7),
      I1 => op_mode_i(1),
      I2 => \^q\(7),
      I3 => op_mode_i(0),
      I4 => m_axis_data_tdata(7),
      I5 => \data_o[0]\(0),
      O => D(7)
    );
\data_muxed_out_reg[8]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000033E200E2"
    )
        port map (
      I0 => ADC_data_i(8),
      I1 => op_mode_i(1),
      I2 => \^q\(8),
      I3 => op_mode_i(0),
      I4 => m_axis_data_tdata(8),
      I5 => \data_o[0]\(0),
      O => D(8)
    );
\data_muxed_out_reg[9]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000033E200E2"
    )
        port map (
      I0 => ADC_data_i(9),
      I1 => op_mode_i(1),
      I2 => \^q\(9),
      I3 => op_mode_i(0),
      I4 => m_axis_data_tdata(9),
      I5 => \data_o[0]\(0),
      O => D(9)
    );
der_sign_reg: unisim.vcomponents.FDRE
     port map (
      C => clk_i,
      CE => d3_reg_i_1_n_0,
      D => gtOp,
      Q => der_sign,
      R => '0'
    );
\din_1[15]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \out\,
      I1 => d6_reg_0,
      O => \^valid_ena\
    );
\din_1_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => clk_i,
      CE => \^valid_ena\,
      D => ADC_data_i(0),
      Q => din_1(0),
      R => rst_i
    );
\din_1_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => clk_i,
      CE => \^valid_ena\,
      D => ADC_data_i(10),
      Q => din_1(10),
      R => rst_i
    );
\din_1_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => clk_i,
      CE => \^valid_ena\,
      D => ADC_data_i(11),
      Q => din_1(11),
      R => rst_i
    );
\din_1_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => clk_i,
      CE => \^valid_ena\,
      D => ADC_data_i(12),
      Q => din_1(12),
      R => rst_i
    );
\din_1_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => clk_i,
      CE => \^valid_ena\,
      D => ADC_data_i(13),
      Q => din_1(13),
      R => rst_i
    );
\din_1_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => clk_i,
      CE => \^valid_ena\,
      D => ADC_data_i(14),
      Q => din_1(14),
      R => rst_i
    );
\din_1_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => clk_i,
      CE => \^valid_ena\,
      D => ADC_data_i(15),
      Q => din_1(15),
      R => rst_i
    );
\din_1_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => clk_i,
      CE => \^valid_ena\,
      D => ADC_data_i(1),
      Q => din_1(1),
      R => rst_i
    );
\din_1_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => clk_i,
      CE => \^valid_ena\,
      D => ADC_data_i(2),
      Q => din_1(2),
      R => rst_i
    );
\din_1_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => clk_i,
      CE => \^valid_ena\,
      D => ADC_data_i(3),
      Q => din_1(3),
      R => rst_i
    );
\din_1_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => clk_i,
      CE => \^valid_ena\,
      D => ADC_data_i(4),
      Q => din_1(4),
      R => rst_i
    );
\din_1_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => clk_i,
      CE => \^valid_ena\,
      D => ADC_data_i(5),
      Q => din_1(5),
      R => rst_i
    );
\din_1_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => clk_i,
      CE => \^valid_ena\,
      D => ADC_data_i(6),
      Q => din_1(6),
      R => rst_i
    );
\din_1_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => clk_i,
      CE => \^valid_ena\,
      D => ADC_data_i(7),
      Q => din_1(7),
      R => rst_i
    );
\din_1_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => clk_i,
      CE => \^valid_ena\,
      D => ADC_data_i(8),
      Q => din_1(8),
      R => rst_i
    );
\din_1_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => clk_i,
      CE => \^valid_ena\,
      D => ADC_data_i(9),
      Q => din_1(9),
      R => rst_i
    );
\din_2_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => clk_i,
      CE => \^valid_ena\,
      D => din_1(0),
      Q => din_2(0),
      R => rst_i
    );
\din_2_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => clk_i,
      CE => \^valid_ena\,
      D => din_1(10),
      Q => din_2(10),
      R => rst_i
    );
\din_2_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => clk_i,
      CE => \^valid_ena\,
      D => din_1(11),
      Q => din_2(11),
      R => rst_i
    );
\din_2_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => clk_i,
      CE => \^valid_ena\,
      D => din_1(12),
      Q => din_2(12),
      R => rst_i
    );
\din_2_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => clk_i,
      CE => \^valid_ena\,
      D => din_1(13),
      Q => din_2(13),
      R => rst_i
    );
\din_2_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => clk_i,
      CE => \^valid_ena\,
      D => din_1(14),
      Q => din_2(14),
      R => rst_i
    );
\din_2_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => clk_i,
      CE => \^valid_ena\,
      D => din_1(15),
      Q => din_2(15),
      R => rst_i
    );
\din_2_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => clk_i,
      CE => \^valid_ena\,
      D => din_1(1),
      Q => din_2(1),
      R => rst_i
    );
\din_2_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => clk_i,
      CE => \^valid_ena\,
      D => din_1(2),
      Q => din_2(2),
      R => rst_i
    );
\din_2_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => clk_i,
      CE => \^valid_ena\,
      D => din_1(3),
      Q => din_2(3),
      R => rst_i
    );
\din_2_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => clk_i,
      CE => \^valid_ena\,
      D => din_1(4),
      Q => din_2(4),
      R => rst_i
    );
\din_2_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => clk_i,
      CE => \^valid_ena\,
      D => din_1(5),
      Q => din_2(5),
      R => rst_i
    );
\din_2_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => clk_i,
      CE => \^valid_ena\,
      D => din_1(6),
      Q => din_2(6),
      R => rst_i
    );
\din_2_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => clk_i,
      CE => \^valid_ena\,
      D => din_1(7),
      Q => din_2(7),
      R => rst_i
    );
\din_2_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => clk_i,
      CE => \^valid_ena\,
      D => din_1(8),
      Q => din_2(8),
      R => rst_i
    );
\din_2_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => clk_i,
      CE => \^valid_ena\,
      D => din_1(9),
      Q => din_2(9),
      R => rst_i
    );
\din_3_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => clk_i,
      CE => \^valid_ena\,
      D => din_2(0),
      Q => din_3(0),
      R => rst_i
    );
\din_3_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => clk_i,
      CE => \^valid_ena\,
      D => din_2(10),
      Q => din_3(10),
      R => rst_i
    );
\din_3_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => clk_i,
      CE => \^valid_ena\,
      D => din_2(11),
      Q => din_3(11),
      R => rst_i
    );
\din_3_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => clk_i,
      CE => \^valid_ena\,
      D => din_2(12),
      Q => din_3(12),
      R => rst_i
    );
\din_3_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => clk_i,
      CE => \^valid_ena\,
      D => din_2(13),
      Q => din_3(13),
      R => rst_i
    );
\din_3_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => clk_i,
      CE => \^valid_ena\,
      D => din_2(14),
      Q => din_3(14),
      R => rst_i
    );
\din_3_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => clk_i,
      CE => \^valid_ena\,
      D => din_2(15),
      Q => din_3(15),
      R => rst_i
    );
\din_3_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => clk_i,
      CE => \^valid_ena\,
      D => din_2(1),
      Q => din_3(1),
      R => rst_i
    );
\din_3_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => clk_i,
      CE => \^valid_ena\,
      D => din_2(2),
      Q => din_3(2),
      R => rst_i
    );
\din_3_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => clk_i,
      CE => \^valid_ena\,
      D => din_2(3),
      Q => din_3(3),
      R => rst_i
    );
\din_3_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => clk_i,
      CE => \^valid_ena\,
      D => din_2(4),
      Q => din_3(4),
      R => rst_i
    );
\din_3_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => clk_i,
      CE => \^valid_ena\,
      D => din_2(5),
      Q => din_3(5),
      R => rst_i
    );
\din_3_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => clk_i,
      CE => \^valid_ena\,
      D => din_2(6),
      Q => din_3(6),
      R => rst_i
    );
\din_3_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => clk_i,
      CE => \^valid_ena\,
      D => din_2(7),
      Q => din_3(7),
      R => rst_i
    );
\din_3_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => clk_i,
      CE => \^valid_ena\,
      D => din_2(8),
      Q => din_3(8),
      R => rst_i
    );
\din_3_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => clk_i,
      CE => \^valid_ena\,
      D => din_2(9),
      Q => din_3(9),
      R => rst_i
    );
\din_4_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => clk_i,
      CE => \^valid_ena\,
      D => din_3(0),
      Q => din_4(0),
      R => rst_i
    );
\din_4_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => clk_i,
      CE => \^valid_ena\,
      D => din_3(10),
      Q => din_4(10),
      R => rst_i
    );
\din_4_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => clk_i,
      CE => \^valid_ena\,
      D => din_3(11),
      Q => din_4(11),
      R => rst_i
    );
\din_4_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => clk_i,
      CE => \^valid_ena\,
      D => din_3(12),
      Q => din_4(12),
      R => rst_i
    );
\din_4_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => clk_i,
      CE => \^valid_ena\,
      D => din_3(13),
      Q => din_4(13),
      R => rst_i
    );
\din_4_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => clk_i,
      CE => \^valid_ena\,
      D => din_3(14),
      Q => din_4(14),
      R => rst_i
    );
\din_4_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => clk_i,
      CE => \^valid_ena\,
      D => din_3(15),
      Q => din_4(15),
      R => rst_i
    );
\din_4_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => clk_i,
      CE => \^valid_ena\,
      D => din_3(1),
      Q => din_4(1),
      R => rst_i
    );
\din_4_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => clk_i,
      CE => \^valid_ena\,
      D => din_3(2),
      Q => din_4(2),
      R => rst_i
    );
\din_4_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => clk_i,
      CE => \^valid_ena\,
      D => din_3(3),
      Q => din_4(3),
      R => rst_i
    );
\din_4_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => clk_i,
      CE => \^valid_ena\,
      D => din_3(4),
      Q => din_4(4),
      R => rst_i
    );
\din_4_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => clk_i,
      CE => \^valid_ena\,
      D => din_3(5),
      Q => din_4(5),
      R => rst_i
    );
\din_4_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => clk_i,
      CE => \^valid_ena\,
      D => din_3(6),
      Q => din_4(6),
      R => rst_i
    );
\din_4_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => clk_i,
      CE => \^valid_ena\,
      D => din_3(7),
      Q => din_4(7),
      R => rst_i
    );
\din_4_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => clk_i,
      CE => \^valid_ena\,
      D => din_3(8),
      Q => din_4(8),
      R => rst_i
    );
\din_4_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => clk_i,
      CE => \^valid_ena\,
      D => din_3(9),
      Q => din_4(9),
      R => rst_i
    );
\doutint_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => clk_i,
      CE => d3_reg_i_1_n_0,
      D => doutint(0),
      Q => \^q\(0),
      R => '0'
    );
\doutint_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => clk_i,
      CE => d3_reg_i_1_n_0,
      D => doutint(10),
      Q => \^q\(10),
      R => '0'
    );
\doutint_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => clk_i,
      CE => d3_reg_i_1_n_0,
      D => doutint(11),
      Q => \^q\(11),
      R => '0'
    );
\doutint_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => clk_i,
      CE => d3_reg_i_1_n_0,
      D => doutint(12),
      Q => \^q\(12),
      R => '0'
    );
\doutint_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => clk_i,
      CE => d3_reg_i_1_n_0,
      D => doutint(13),
      Q => \^q\(13),
      R => '0'
    );
\doutint_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => clk_i,
      CE => d3_reg_i_1_n_0,
      D => doutint(14),
      Q => \^q\(14),
      R => '0'
    );
\doutint_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => clk_i,
      CE => d3_reg_i_1_n_0,
      D => doutint(15),
      Q => \^q\(15),
      R => '0'
    );
\doutint_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => clk_i,
      CE => d3_reg_i_1_n_0,
      D => doutint(1),
      Q => \^q\(1),
      R => '0'
    );
\doutint_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => clk_i,
      CE => d3_reg_i_1_n_0,
      D => doutint(2),
      Q => \^q\(2),
      R => '0'
    );
\doutint_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => clk_i,
      CE => d3_reg_i_1_n_0,
      D => doutint(3),
      Q => \^q\(3),
      R => '0'
    );
\doutint_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => clk_i,
      CE => d3_reg_i_1_n_0,
      D => doutint(4),
      Q => \^q\(4),
      R => '0'
    );
\doutint_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => clk_i,
      CE => d3_reg_i_1_n_0,
      D => doutint(5),
      Q => \^q\(5),
      R => '0'
    );
\doutint_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => clk_i,
      CE => d3_reg_i_1_n_0,
      D => doutint(6),
      Q => \^q\(6),
      R => '0'
    );
\doutint_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => clk_i,
      CE => d3_reg_i_1_n_0,
      D => doutint(7),
      Q => \^q\(7),
      R => '0'
    );
\doutint_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => clk_i,
      CE => d3_reg_i_1_n_0,
      D => doutint(8),
      Q => \^q\(8),
      R => '0'
    );
\doutint_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => clk_i,
      CE => d3_reg_i_1_n_0,
      D => doutint(9),
      Q => \^q\(9),
      R => '0'
    );
edge_detector_i_1: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => der_sign,
      O => ena_i
    );
gtOp_carry: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => gtOp_carry_n_0,
      CO(2) => gtOp_carry_n_1,
      CO(1) => gtOp_carry_n_2,
      CO(0) => gtOp_carry_n_3,
      CYINIT => '0',
      DI(3) => gtOp_carry_i_1_n_0,
      DI(2) => gtOp_carry_i_2_n_0,
      DI(1) => gtOp_carry_i_3_n_0,
      DI(0) => gtOp_carry_i_4_n_0,
      O(3 downto 0) => NLW_gtOp_carry_O_UNCONNECTED(3 downto 0),
      S(3) => gtOp_carry_i_5_n_0,
      S(2) => gtOp_carry_i_6_n_0,
      S(1) => gtOp_carry_i_7_n_0,
      S(0) => gtOp_carry_i_8_n_0
    );
\gtOp_carry__0\: unisim.vcomponents.CARRY4
     port map (
      CI => gtOp_carry_n_0,
      CO(3) => \gtOp_carry__0_n_0\,
      CO(2) => \gtOp_carry__0_n_1\,
      CO(1) => \gtOp_carry__0_n_2\,
      CO(0) => \gtOp_carry__0_n_3\,
      CYINIT => '0',
      DI(3) => \gtOp_carry__0_i_1_n_0\,
      DI(2) => \gtOp_carry__0_i_2_n_0\,
      DI(1) => \gtOp_carry__0_i_3_n_0\,
      DI(0) => \gtOp_carry__0_i_4_n_0\,
      O(3 downto 0) => \NLW_gtOp_carry__0_O_UNCONNECTED\(3 downto 0),
      S(3) => \gtOp_carry__0_i_5_n_0\,
      S(2) => \gtOp_carry__0_i_6_n_0\,
      S(1) => \gtOp_carry__0_i_7_n_0\,
      S(0) => \gtOp_carry__0_i_8_n_0\
    );
\gtOp_carry__0_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => \plusOp__0_n_91\,
      I1 => \plusOp__2_n_91\,
      I2 => \plusOp__2_n_90\,
      I3 => \plusOp__0_n_90\,
      O => \gtOp_carry__0_i_1_n_0\
    );
\gtOp_carry__0_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => \plusOp__0_n_93\,
      I1 => \plusOp__2_n_93\,
      I2 => \plusOp__2_n_92\,
      I3 => \plusOp__0_n_92\,
      O => \gtOp_carry__0_i_2_n_0\
    );
\gtOp_carry__0_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => \plusOp__0_n_95\,
      I1 => \plusOp__2_n_95\,
      I2 => \plusOp__2_n_94\,
      I3 => \plusOp__0_n_94\,
      O => \gtOp_carry__0_i_3_n_0\
    );
\gtOp_carry__0_i_4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => \plusOp__0_n_97\,
      I1 => \plusOp__2_n_97\,
      I2 => \plusOp__2_n_96\,
      I3 => \plusOp__0_n_96\,
      O => \gtOp_carry__0_i_4_n_0\
    );
\gtOp_carry__0_i_5\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => \plusOp__0_n_91\,
      I1 => \plusOp__2_n_91\,
      I2 => \plusOp__0_n_90\,
      I3 => \plusOp__2_n_90\,
      O => \gtOp_carry__0_i_5_n_0\
    );
\gtOp_carry__0_i_6\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => \plusOp__0_n_93\,
      I1 => \plusOp__2_n_93\,
      I2 => \plusOp__0_n_92\,
      I3 => \plusOp__2_n_92\,
      O => \gtOp_carry__0_i_6_n_0\
    );
\gtOp_carry__0_i_7\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => \plusOp__0_n_95\,
      I1 => \plusOp__2_n_95\,
      I2 => \plusOp__0_n_94\,
      I3 => \plusOp__2_n_94\,
      O => \gtOp_carry__0_i_7_n_0\
    );
\gtOp_carry__0_i_8\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => \plusOp__0_n_97\,
      I1 => \plusOp__2_n_97\,
      I2 => \plusOp__0_n_96\,
      I3 => \plusOp__2_n_96\,
      O => \gtOp_carry__0_i_8_n_0\
    );
\gtOp_carry__1\: unisim.vcomponents.CARRY4
     port map (
      CI => \gtOp_carry__0_n_0\,
      CO(3) => \gtOp_carry__1_n_0\,
      CO(2) => \gtOp_carry__1_n_1\,
      CO(1) => \gtOp_carry__1_n_2\,
      CO(0) => \gtOp_carry__1_n_3\,
      CYINIT => '0',
      DI(3) => \gtOp_carry__1_i_1_n_0\,
      DI(2) => \gtOp_carry__1_i_2_n_0\,
      DI(1) => \gtOp_carry__1_i_3_n_0\,
      DI(0) => \gtOp_carry__1_i_4_n_0\,
      O(3 downto 0) => \NLW_gtOp_carry__1_O_UNCONNECTED\(3 downto 0),
      S(3) => \gtOp_carry__1_i_5_n_0\,
      S(2) => \gtOp_carry__1_i_6_n_0\,
      S(1) => \gtOp_carry__1_i_7_n_0\,
      S(0) => \gtOp_carry__1_i_8_n_0\
    );
\gtOp_carry__1_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => \plusOp__0_n_83\,
      I1 => \plusOp__2_n_83\,
      I2 => \plusOp__2_n_82\,
      I3 => \plusOp__0_n_82\,
      O => \gtOp_carry__1_i_1_n_0\
    );
\gtOp_carry__1_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => \plusOp__0_n_85\,
      I1 => \plusOp__2_n_85\,
      I2 => \plusOp__2_n_84\,
      I3 => \plusOp__0_n_84\,
      O => \gtOp_carry__1_i_2_n_0\
    );
\gtOp_carry__1_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => \plusOp__0_n_87\,
      I1 => \plusOp__2_n_87\,
      I2 => \plusOp__2_n_86\,
      I3 => \plusOp__0_n_86\,
      O => \gtOp_carry__1_i_3_n_0\
    );
\gtOp_carry__1_i_4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => \plusOp__0_n_89\,
      I1 => \plusOp__2_n_89\,
      I2 => \plusOp__2_n_88\,
      I3 => \plusOp__0_n_88\,
      O => \gtOp_carry__1_i_4_n_0\
    );
\gtOp_carry__1_i_5\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => \plusOp__0_n_83\,
      I1 => \plusOp__2_n_83\,
      I2 => \plusOp__0_n_82\,
      I3 => \plusOp__2_n_82\,
      O => \gtOp_carry__1_i_5_n_0\
    );
\gtOp_carry__1_i_6\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => \plusOp__0_n_85\,
      I1 => \plusOp__2_n_85\,
      I2 => \plusOp__0_n_84\,
      I3 => \plusOp__2_n_84\,
      O => \gtOp_carry__1_i_6_n_0\
    );
\gtOp_carry__1_i_7\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => \plusOp__0_n_87\,
      I1 => \plusOp__2_n_87\,
      I2 => \plusOp__0_n_86\,
      I3 => \plusOp__2_n_86\,
      O => \gtOp_carry__1_i_7_n_0\
    );
\gtOp_carry__1_i_8\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => \plusOp__0_n_89\,
      I1 => \plusOp__2_n_89\,
      I2 => \plusOp__0_n_88\,
      I3 => \plusOp__2_n_88\,
      O => \gtOp_carry__1_i_8_n_0\
    );
\gtOp_carry__2\: unisim.vcomponents.CARRY4
     port map (
      CI => \gtOp_carry__1_n_0\,
      CO(3 downto 2) => \NLW_gtOp_carry__2_CO_UNCONNECTED\(3 downto 2),
      CO(1) => gtOp,
      CO(0) => \gtOp_carry__2_n_3\,
      CYINIT => '0',
      DI(3 downto 2) => B"00",
      DI(1) => \gtOp_carry__2_i_1_n_0\,
      DI(0) => \gtOp_carry__2_i_2_n_0\,
      O(3 downto 0) => \NLW_gtOp_carry__2_O_UNCONNECTED\(3 downto 0),
      S(3 downto 2) => B"00",
      S(1) => \gtOp_carry__2_i_3_n_0\,
      S(0) => \gtOp_carry__2_i_4_n_0\
    );
\gtOp_carry__2_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \plusOp__0_n_79\,
      I1 => \plusOp__2_n_79\,
      O => \gtOp_carry__2_i_1_n_0\
    );
\gtOp_carry__2_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => \plusOp__0_n_81\,
      I1 => \plusOp__2_n_81\,
      I2 => \plusOp__2_n_80\,
      I3 => \plusOp__0_n_80\,
      O => \gtOp_carry__2_i_2_n_0\
    );
\gtOp_carry__2_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \plusOp__2_n_79\,
      I1 => \plusOp__0_n_79\,
      O => \gtOp_carry__2_i_3_n_0\
    );
\gtOp_carry__2_i_4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => \plusOp__0_n_81\,
      I1 => \plusOp__2_n_81\,
      I2 => \plusOp__0_n_80\,
      I3 => \plusOp__2_n_80\,
      O => \gtOp_carry__2_i_4_n_0\
    );
gtOp_carry_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => \plusOp__0_n_99\,
      I1 => \plusOp__2_n_99\,
      I2 => \plusOp__2_n_98\,
      I3 => \plusOp__0_n_98\,
      O => gtOp_carry_i_1_n_0
    );
gtOp_carry_i_2: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => \plusOp__0_n_101\,
      I1 => \plusOp__2_n_101\,
      I2 => \plusOp__2_n_100\,
      I3 => \plusOp__0_n_100\,
      O => gtOp_carry_i_2_n_0
    );
gtOp_carry_i_3: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => \plusOp__0_n_103\,
      I1 => \plusOp__2_n_103\,
      I2 => \plusOp__2_n_102\,
      I3 => \plusOp__0_n_102\,
      O => gtOp_carry_i_3_n_0
    );
gtOp_carry_i_4: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => \plusOp__0_n_105\,
      I1 => \plusOp__2_n_105\,
      I2 => \plusOp__2_n_104\,
      I3 => \plusOp__0_n_104\,
      O => gtOp_carry_i_4_n_0
    );
gtOp_carry_i_5: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => \plusOp__0_n_99\,
      I1 => \plusOp__2_n_99\,
      I2 => \plusOp__0_n_98\,
      I3 => \plusOp__2_n_98\,
      O => gtOp_carry_i_5_n_0
    );
gtOp_carry_i_6: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => \plusOp__0_n_101\,
      I1 => \plusOp__2_n_101\,
      I2 => \plusOp__0_n_100\,
      I3 => \plusOp__2_n_100\,
      O => gtOp_carry_i_6_n_0
    );
gtOp_carry_i_7: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => \plusOp__0_n_103\,
      I1 => \plusOp__2_n_103\,
      I2 => \plusOp__0_n_102\,
      I3 => \plusOp__2_n_102\,
      O => gtOp_carry_i_7_n_0
    );
gtOp_carry_i_8: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => \plusOp__0_n_105\,
      I1 => \plusOp__2_n_105\,
      I2 => \plusOp__0_n_104\,
      I3 => \plusOp__2_n_104\,
      O => gtOp_carry_i_8_n_0
    );
\i__carry__0_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"53"
    )
        port map (
      I0 => \plusOp__2_n_98\,
      I1 => \plusOp__0_n_98\,
      I2 => gtOp,
      O => \i__carry__0_i_1_n_0\
    );
\i__carry__0_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"53"
    )
        port map (
      I0 => \plusOp__2_n_99\,
      I1 => \plusOp__0_n_99\,
      I2 => gtOp,
      O => \i__carry__0_i_2_n_0\
    );
\i__carry__0_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"53"
    )
        port map (
      I0 => \plusOp__2_n_100\,
      I1 => \plusOp__0_n_100\,
      I2 => gtOp,
      O => \i__carry__0_i_3_n_0\
    );
\i__carry__0_i_4\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"53"
    )
        port map (
      I0 => \plusOp__2_n_101\,
      I1 => \plusOp__0_n_101\,
      I2 => gtOp,
      O => \i__carry__0_i_4_n_0\
    );
\i__carry__0_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \plusOp__2_n_98\,
      I1 => \plusOp__0_n_98\,
      O => \i__carry__0_i_5_n_0\
    );
\i__carry__0_i_6\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \plusOp__2_n_99\,
      I1 => \plusOp__0_n_99\,
      O => \i__carry__0_i_6_n_0\
    );
\i__carry__0_i_7\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \plusOp__2_n_100\,
      I1 => \plusOp__0_n_100\,
      O => \i__carry__0_i_7_n_0\
    );
\i__carry__0_i_8\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \plusOp__2_n_101\,
      I1 => \plusOp__0_n_101\,
      O => \i__carry__0_i_8_n_0\
    );
\i__carry__1_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"53"
    )
        port map (
      I0 => \plusOp__2_n_94\,
      I1 => \plusOp__0_n_94\,
      I2 => gtOp,
      O => \i__carry__1_i_1_n_0\
    );
\i__carry__1_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"53"
    )
        port map (
      I0 => \plusOp__2_n_95\,
      I1 => \plusOp__0_n_95\,
      I2 => gtOp,
      O => \i__carry__1_i_2_n_0\
    );
\i__carry__1_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"53"
    )
        port map (
      I0 => \plusOp__2_n_96\,
      I1 => \plusOp__0_n_96\,
      I2 => gtOp,
      O => \i__carry__1_i_3_n_0\
    );
\i__carry__1_i_4\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"53"
    )
        port map (
      I0 => \plusOp__2_n_97\,
      I1 => \plusOp__0_n_97\,
      I2 => gtOp,
      O => \i__carry__1_i_4_n_0\
    );
\i__carry__1_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \plusOp__2_n_94\,
      I1 => \plusOp__0_n_94\,
      O => \i__carry__1_i_5_n_0\
    );
\i__carry__1_i_6\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \plusOp__2_n_95\,
      I1 => \plusOp__0_n_95\,
      O => \i__carry__1_i_6_n_0\
    );
\i__carry__1_i_7\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \plusOp__2_n_96\,
      I1 => \plusOp__0_n_96\,
      O => \i__carry__1_i_7_n_0\
    );
\i__carry__1_i_8\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \plusOp__2_n_97\,
      I1 => \plusOp__0_n_97\,
      O => \i__carry__1_i_8_n_0\
    );
\i__carry__2_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"53"
    )
        port map (
      I0 => \plusOp__2_n_91\,
      I1 => \plusOp__0_n_91\,
      I2 => gtOp,
      O => \i__carry__2_i_1_n_0\
    );
\i__carry__2_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"53"
    )
        port map (
      I0 => \plusOp__2_n_92\,
      I1 => \plusOp__0_n_92\,
      I2 => gtOp,
      O => \i__carry__2_i_2_n_0\
    );
\i__carry__2_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"53"
    )
        port map (
      I0 => \plusOp__2_n_93\,
      I1 => \plusOp__0_n_93\,
      I2 => gtOp,
      O => \i__carry__2_i_3_n_0\
    );
\i__carry__2_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \plusOp__2_n_90\,
      I1 => \plusOp__0_n_90\,
      O => \i__carry__2_i_4_n_0\
    );
\i__carry__2_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \plusOp__2_n_91\,
      I1 => \plusOp__0_n_91\,
      O => \i__carry__2_i_5_n_0\
    );
\i__carry__2_i_6\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \plusOp__2_n_92\,
      I1 => \plusOp__0_n_92\,
      O => \i__carry__2_i_6_n_0\
    );
\i__carry__2_i_7\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \plusOp__2_n_93\,
      I1 => \plusOp__0_n_93\,
      O => \i__carry__2_i_7_n_0\
    );
\i__carry_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"53"
    )
        port map (
      I0 => \plusOp__2_n_102\,
      I1 => \plusOp__0_n_102\,
      I2 => gtOp,
      O => \i__carry_i_1_n_0\
    );
\i__carry_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"53"
    )
        port map (
      I0 => \plusOp__2_n_103\,
      I1 => \plusOp__0_n_103\,
      I2 => gtOp,
      O => \i__carry_i_2_n_0\
    );
\i__carry_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"53"
    )
        port map (
      I0 => \plusOp__2_n_104\,
      I1 => \plusOp__0_n_104\,
      I2 => gtOp,
      O => \i__carry_i_3_n_0\
    );
\i__carry_i_4\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"53"
    )
        port map (
      I0 => \plusOp__2_n_105\,
      I1 => \plusOp__0_n_105\,
      I2 => gtOp,
      O => \i__carry_i_4_n_0\
    );
\i__carry_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \plusOp__2_n_102\,
      I1 => \plusOp__0_n_102\,
      O => \i__carry_i_5_n_0\
    );
\i__carry_i_6\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \plusOp__2_n_103\,
      I1 => \plusOp__0_n_103\,
      O => \i__carry_i_6_n_0\
    );
\i__carry_i_7\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \plusOp__2_n_104\,
      I1 => \plusOp__0_n_104\,
      O => \i__carry_i_7_n_0\
    );
\i__carry_i_8\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \plusOp__2_n_105\,
      I1 => \plusOp__0_n_105\,
      O => \i__carry_i_8_n_0\
    );
plusOp: unisim.vcomponents.DSP48E1
    generic map(
      ACASCREG => 1,
      ADREG => 1,
      ALUMODEREG => 0,
      AREG => 1,
      AUTORESET_PATDET => "NO_RESET",
      A_INPUT => "DIRECT",
      BCASCREG => 0,
      BREG => 0,
      B_INPUT => "DIRECT",
      CARRYINREG => 0,
      CARRYINSELREG => 0,
      CREG => 1,
      DREG => 1,
      INMODEREG => 0,
      MASK => X"3FFFFFFFFFFF",
      MREG => 1,
      OPMODEREG => 0,
      PATTERN => X"000000000000",
      PREG => 0,
      SEL_MASK => "MASK",
      SEL_PATTERN => "PATTERN",
      USE_DPORT => false,
      USE_MULT => "MULTIPLY",
      USE_PATTERN_DETECT => "NO_PATDET",
      USE_SIMD => "ONE48"
    )
        port map (
      A(29 downto 16) => B"00000000000000",
      A(15 downto 0) => ADC_data_i(15 downto 0),
      ACIN(29 downto 0) => B"000000000000000000000000000000",
      ACOUT(29 downto 0) => NLW_plusOp_ACOUT_UNCONNECTED(29 downto 0),
      ALUMODE(3 downto 0) => B"0000",
      B(17 downto 5) => B"0000000000000",
      B(4 downto 0) => cf_1_i(4 downto 0),
      BCIN(17 downto 0) => B"000000000000000000",
      BCOUT(17 downto 0) => NLW_plusOp_BCOUT_UNCONNECTED(17 downto 0),
      C(47 downto 0) => B"111111111111111111111111111111111111111111111111",
      CARRYCASCIN => '0',
      CARRYCASCOUT => NLW_plusOp_CARRYCASCOUT_UNCONNECTED,
      CARRYIN => '0',
      CARRYINSEL(2 downto 0) => B"000",
      CARRYOUT(3 downto 0) => NLW_plusOp_CARRYOUT_UNCONNECTED(3 downto 0),
      CEA1 => '0',
      CEA2 => \^valid_ena\,
      CEAD => '0',
      CEALUMODE => '0',
      CEB1 => '0',
      CEB2 => '0',
      CEC => '0',
      CECARRYIN => '0',
      CECTRL => '0',
      CED => '0',
      CEINMODE => '0',
      CEM => d3_reg_i_1_n_0,
      CEP => '0',
      CLK => clk_i,
      D(24 downto 0) => B"0000000000000000000000000",
      INMODE(4 downto 0) => B"00000",
      MULTSIGNIN => '0',
      MULTSIGNOUT => NLW_plusOp_MULTSIGNOUT_UNCONNECTED,
      OPMODE(6 downto 0) => B"0010101",
      OVERFLOW => NLW_plusOp_OVERFLOW_UNCONNECTED,
      P(47 downto 27) => NLW_plusOp_P_UNCONNECTED(47 downto 27),
      P(26) => plusOp_n_79,
      P(25) => plusOp_n_80,
      P(24) => plusOp_n_81,
      P(23) => plusOp_n_82,
      P(22) => plusOp_n_83,
      P(21) => plusOp_n_84,
      P(20) => plusOp_n_85,
      P(19) => plusOp_n_86,
      P(18) => plusOp_n_87,
      P(17) => plusOp_n_88,
      P(16) => plusOp_n_89,
      P(15) => plusOp_n_90,
      P(14) => plusOp_n_91,
      P(13) => plusOp_n_92,
      P(12) => plusOp_n_93,
      P(11) => plusOp_n_94,
      P(10) => plusOp_n_95,
      P(9) => plusOp_n_96,
      P(8) => plusOp_n_97,
      P(7) => plusOp_n_98,
      P(6) => plusOp_n_99,
      P(5) => plusOp_n_100,
      P(4) => plusOp_n_101,
      P(3) => plusOp_n_102,
      P(2) => plusOp_n_103,
      P(1) => plusOp_n_104,
      P(0) => plusOp_n_105,
      PATTERNBDETECT => NLW_plusOp_PATTERNBDETECT_UNCONNECTED,
      PATTERNDETECT => NLW_plusOp_PATTERNDETECT_UNCONNECTED,
      PCIN(47) => d3_reg_n_106,
      PCIN(46) => d3_reg_n_107,
      PCIN(45) => d3_reg_n_108,
      PCIN(44) => d3_reg_n_109,
      PCIN(43) => d3_reg_n_110,
      PCIN(42) => d3_reg_n_111,
      PCIN(41) => d3_reg_n_112,
      PCIN(40) => d3_reg_n_113,
      PCIN(39) => d3_reg_n_114,
      PCIN(38) => d3_reg_n_115,
      PCIN(37) => d3_reg_n_116,
      PCIN(36) => d3_reg_n_117,
      PCIN(35) => d3_reg_n_118,
      PCIN(34) => d3_reg_n_119,
      PCIN(33) => d3_reg_n_120,
      PCIN(32) => d3_reg_n_121,
      PCIN(31) => d3_reg_n_122,
      PCIN(30) => d3_reg_n_123,
      PCIN(29) => d3_reg_n_124,
      PCIN(28) => d3_reg_n_125,
      PCIN(27) => d3_reg_n_126,
      PCIN(26) => d3_reg_n_127,
      PCIN(25) => d3_reg_n_128,
      PCIN(24) => d3_reg_n_129,
      PCIN(23) => d3_reg_n_130,
      PCIN(22) => d3_reg_n_131,
      PCIN(21) => d3_reg_n_132,
      PCIN(20) => d3_reg_n_133,
      PCIN(19) => d3_reg_n_134,
      PCIN(18) => d3_reg_n_135,
      PCIN(17) => d3_reg_n_136,
      PCIN(16) => d3_reg_n_137,
      PCIN(15) => d3_reg_n_138,
      PCIN(14) => d3_reg_n_139,
      PCIN(13) => d3_reg_n_140,
      PCIN(12) => d3_reg_n_141,
      PCIN(11) => d3_reg_n_142,
      PCIN(10) => d3_reg_n_143,
      PCIN(9) => d3_reg_n_144,
      PCIN(8) => d3_reg_n_145,
      PCIN(7) => d3_reg_n_146,
      PCIN(6) => d3_reg_n_147,
      PCIN(5) => d3_reg_n_148,
      PCIN(4) => d3_reg_n_149,
      PCIN(3) => d3_reg_n_150,
      PCIN(2) => d3_reg_n_151,
      PCIN(1) => d3_reg_n_152,
      PCIN(0) => d3_reg_n_153,
      PCOUT(47) => plusOp_n_106,
      PCOUT(46) => plusOp_n_107,
      PCOUT(45) => plusOp_n_108,
      PCOUT(44) => plusOp_n_109,
      PCOUT(43) => plusOp_n_110,
      PCOUT(42) => plusOp_n_111,
      PCOUT(41) => plusOp_n_112,
      PCOUT(40) => plusOp_n_113,
      PCOUT(39) => plusOp_n_114,
      PCOUT(38) => plusOp_n_115,
      PCOUT(37) => plusOp_n_116,
      PCOUT(36) => plusOp_n_117,
      PCOUT(35) => plusOp_n_118,
      PCOUT(34) => plusOp_n_119,
      PCOUT(33) => plusOp_n_120,
      PCOUT(32) => plusOp_n_121,
      PCOUT(31) => plusOp_n_122,
      PCOUT(30) => plusOp_n_123,
      PCOUT(29) => plusOp_n_124,
      PCOUT(28) => plusOp_n_125,
      PCOUT(27) => plusOp_n_126,
      PCOUT(26) => plusOp_n_127,
      PCOUT(25) => plusOp_n_128,
      PCOUT(24) => plusOp_n_129,
      PCOUT(23) => plusOp_n_130,
      PCOUT(22) => plusOp_n_131,
      PCOUT(21) => plusOp_n_132,
      PCOUT(20) => plusOp_n_133,
      PCOUT(19) => plusOp_n_134,
      PCOUT(18) => plusOp_n_135,
      PCOUT(17) => plusOp_n_136,
      PCOUT(16) => plusOp_n_137,
      PCOUT(15) => plusOp_n_138,
      PCOUT(14) => plusOp_n_139,
      PCOUT(13) => plusOp_n_140,
      PCOUT(12) => plusOp_n_141,
      PCOUT(11) => plusOp_n_142,
      PCOUT(10) => plusOp_n_143,
      PCOUT(9) => plusOp_n_144,
      PCOUT(8) => plusOp_n_145,
      PCOUT(7) => plusOp_n_146,
      PCOUT(6) => plusOp_n_147,
      PCOUT(5) => plusOp_n_148,
      PCOUT(4) => plusOp_n_149,
      PCOUT(3) => plusOp_n_150,
      PCOUT(2) => plusOp_n_151,
      PCOUT(1) => plusOp_n_152,
      PCOUT(0) => plusOp_n_153,
      RSTA => rst_i,
      RSTALLCARRYIN => '0',
      RSTALUMODE => '0',
      RSTB => '0',
      RSTC => '0',
      RSTCTRL => '0',
      RSTD => '0',
      RSTINMODE => '0',
      RSTM => '0',
      RSTP => '0',
      UNDERFLOW => NLW_plusOp_UNDERFLOW_UNCONNECTED
    );
\plusOp__0\: unisim.vcomponents.DSP48E1
    generic map(
      ACASCREG => 2,
      ADREG => 1,
      ALUMODEREG => 0,
      AREG => 2,
      AUTORESET_PATDET => "NO_RESET",
      A_INPUT => "DIRECT",
      BCASCREG => 0,
      BREG => 0,
      B_INPUT => "DIRECT",
      CARRYINREG => 0,
      CARRYINSELREG => 0,
      CREG => 1,
      DREG => 1,
      INMODEREG => 0,
      MASK => X"3FFFFFFFFFFF",
      MREG => 1,
      OPMODEREG => 0,
      PATTERN => X"000000000000",
      PREG => 0,
      SEL_MASK => "MASK",
      SEL_PATTERN => "PATTERN",
      USE_DPORT => false,
      USE_MULT => "MULTIPLY",
      USE_PATTERN_DETECT => "NO_PATDET",
      USE_SIMD => "ONE48"
    )
        port map (
      A(29 downto 16) => B"00000000000000",
      A(15 downto 0) => ADC_data_i(15 downto 0),
      ACIN(29 downto 0) => B"000000000000000000000000000000",
      ACOUT(29 downto 0) => \NLW_plusOp__0_ACOUT_UNCONNECTED\(29 downto 0),
      ALUMODE(3 downto 0) => B"0000",
      B(17 downto 5) => B"0000000000000",
      B(4 downto 0) => cf_2_i(4 downto 0),
      BCIN(17 downto 0) => B"000000000000000000",
      BCOUT(17 downto 0) => \NLW_plusOp__0_BCOUT_UNCONNECTED\(17 downto 0),
      C(47 downto 0) => B"111111111111111111111111111111111111111111111111",
      CARRYCASCIN => '0',
      CARRYCASCOUT => \NLW_plusOp__0_CARRYCASCOUT_UNCONNECTED\,
      CARRYIN => '0',
      CARRYINSEL(2 downto 0) => B"000",
      CARRYOUT(3 downto 0) => \NLW_plusOp__0_CARRYOUT_UNCONNECTED\(3 downto 0),
      CEA1 => \^valid_ena\,
      CEA2 => \^valid_ena\,
      CEAD => '0',
      CEALUMODE => '0',
      CEB1 => '0',
      CEB2 => '0',
      CEC => '0',
      CECARRYIN => '0',
      CECTRL => '0',
      CED => '0',
      CEINMODE => '0',
      CEM => d3_reg_i_1_n_0,
      CEP => '0',
      CLK => clk_i,
      D(24 downto 0) => B"0000000000000000000000000",
      INMODE(4 downto 0) => B"00000",
      MULTSIGNIN => '0',
      MULTSIGNOUT => \NLW_plusOp__0_MULTSIGNOUT_UNCONNECTED\,
      OPMODE(6 downto 0) => B"0010101",
      OVERFLOW => \NLW_plusOp__0_OVERFLOW_UNCONNECTED\,
      P(47 downto 27) => \NLW_plusOp__0_P_UNCONNECTED\(47 downto 27),
      P(26) => \plusOp__0_n_79\,
      P(25) => \plusOp__0_n_80\,
      P(24) => \plusOp__0_n_81\,
      P(23) => \plusOp__0_n_82\,
      P(22) => \plusOp__0_n_83\,
      P(21) => \plusOp__0_n_84\,
      P(20) => \plusOp__0_n_85\,
      P(19) => \plusOp__0_n_86\,
      P(18) => \plusOp__0_n_87\,
      P(17) => \plusOp__0_n_88\,
      P(16) => \plusOp__0_n_89\,
      P(15) => \plusOp__0_n_90\,
      P(14) => \plusOp__0_n_91\,
      P(13) => \plusOp__0_n_92\,
      P(12) => \plusOp__0_n_93\,
      P(11) => \plusOp__0_n_94\,
      P(10) => \plusOp__0_n_95\,
      P(9) => \plusOp__0_n_96\,
      P(8) => \plusOp__0_n_97\,
      P(7) => \plusOp__0_n_98\,
      P(6) => \plusOp__0_n_99\,
      P(5) => \plusOp__0_n_100\,
      P(4) => \plusOp__0_n_101\,
      P(3) => \plusOp__0_n_102\,
      P(2) => \plusOp__0_n_103\,
      P(1) => \plusOp__0_n_104\,
      P(0) => \plusOp__0_n_105\,
      PATTERNBDETECT => \NLW_plusOp__0_PATTERNBDETECT_UNCONNECTED\,
      PATTERNDETECT => \NLW_plusOp__0_PATTERNDETECT_UNCONNECTED\,
      PCIN(47) => plusOp_n_106,
      PCIN(46) => plusOp_n_107,
      PCIN(45) => plusOp_n_108,
      PCIN(44) => plusOp_n_109,
      PCIN(43) => plusOp_n_110,
      PCIN(42) => plusOp_n_111,
      PCIN(41) => plusOp_n_112,
      PCIN(40) => plusOp_n_113,
      PCIN(39) => plusOp_n_114,
      PCIN(38) => plusOp_n_115,
      PCIN(37) => plusOp_n_116,
      PCIN(36) => plusOp_n_117,
      PCIN(35) => plusOp_n_118,
      PCIN(34) => plusOp_n_119,
      PCIN(33) => plusOp_n_120,
      PCIN(32) => plusOp_n_121,
      PCIN(31) => plusOp_n_122,
      PCIN(30) => plusOp_n_123,
      PCIN(29) => plusOp_n_124,
      PCIN(28) => plusOp_n_125,
      PCIN(27) => plusOp_n_126,
      PCIN(26) => plusOp_n_127,
      PCIN(25) => plusOp_n_128,
      PCIN(24) => plusOp_n_129,
      PCIN(23) => plusOp_n_130,
      PCIN(22) => plusOp_n_131,
      PCIN(21) => plusOp_n_132,
      PCIN(20) => plusOp_n_133,
      PCIN(19) => plusOp_n_134,
      PCIN(18) => plusOp_n_135,
      PCIN(17) => plusOp_n_136,
      PCIN(16) => plusOp_n_137,
      PCIN(15) => plusOp_n_138,
      PCIN(14) => plusOp_n_139,
      PCIN(13) => plusOp_n_140,
      PCIN(12) => plusOp_n_141,
      PCIN(11) => plusOp_n_142,
      PCIN(10) => plusOp_n_143,
      PCIN(9) => plusOp_n_144,
      PCIN(8) => plusOp_n_145,
      PCIN(7) => plusOp_n_146,
      PCIN(6) => plusOp_n_147,
      PCIN(5) => plusOp_n_148,
      PCIN(4) => plusOp_n_149,
      PCIN(3) => plusOp_n_150,
      PCIN(2) => plusOp_n_151,
      PCIN(1) => plusOp_n_152,
      PCIN(0) => plusOp_n_153,
      PCOUT(47 downto 0) => \NLW_plusOp__0_PCOUT_UNCONNECTED\(47 downto 0),
      RSTA => rst_i,
      RSTALLCARRYIN => '0',
      RSTALUMODE => '0',
      RSTB => '0',
      RSTC => '0',
      RSTCTRL => '0',
      RSTD => '0',
      RSTINMODE => '0',
      RSTM => '0',
      RSTP => '0',
      UNDERFLOW => \NLW_plusOp__0_UNDERFLOW_UNCONNECTED\
    );
\plusOp__1\: unisim.vcomponents.DSP48E1
    generic map(
      ACASCREG => 1,
      ADREG => 1,
      ALUMODEREG => 0,
      AREG => 2,
      AUTORESET_PATDET => "NO_RESET",
      A_INPUT => "DIRECT",
      BCASCREG => 0,
      BREG => 0,
      B_INPUT => "DIRECT",
      CARRYINREG => 0,
      CARRYINSELREG => 0,
      CREG => 1,
      DREG => 1,
      INMODEREG => 0,
      MASK => X"3FFFFFFFFFFF",
      MREG => 1,
      OPMODEREG => 0,
      PATTERN => X"000000000000",
      PREG => 0,
      SEL_MASK => "MASK",
      SEL_PATTERN => "PATTERN",
      USE_DPORT => false,
      USE_MULT => "MULTIPLY",
      USE_PATTERN_DETECT => "NO_PATDET",
      USE_SIMD => "ONE48"
    )
        port map (
      A(29 downto 16) => B"00000000000000",
      A(15 downto 0) => din_2(15 downto 0),
      ACIN(29 downto 0) => B"000000000000000000000000000000",
      ACOUT(29) => \plusOp__1_n_24\,
      ACOUT(28) => \plusOp__1_n_25\,
      ACOUT(27) => \plusOp__1_n_26\,
      ACOUT(26) => \plusOp__1_n_27\,
      ACOUT(25) => \plusOp__1_n_28\,
      ACOUT(24) => \plusOp__1_n_29\,
      ACOUT(23) => \plusOp__1_n_30\,
      ACOUT(22) => \plusOp__1_n_31\,
      ACOUT(21) => \plusOp__1_n_32\,
      ACOUT(20) => \plusOp__1_n_33\,
      ACOUT(19) => \plusOp__1_n_34\,
      ACOUT(18) => \plusOp__1_n_35\,
      ACOUT(17) => \plusOp__1_n_36\,
      ACOUT(16) => \plusOp__1_n_37\,
      ACOUT(15) => \plusOp__1_n_38\,
      ACOUT(14) => \plusOp__1_n_39\,
      ACOUT(13) => \plusOp__1_n_40\,
      ACOUT(12) => \plusOp__1_n_41\,
      ACOUT(11) => \plusOp__1_n_42\,
      ACOUT(10) => \plusOp__1_n_43\,
      ACOUT(9) => \plusOp__1_n_44\,
      ACOUT(8) => \plusOp__1_n_45\,
      ACOUT(7) => \plusOp__1_n_46\,
      ACOUT(6) => \plusOp__1_n_47\,
      ACOUT(5) => \plusOp__1_n_48\,
      ACOUT(4) => \plusOp__1_n_49\,
      ACOUT(3) => \plusOp__1_n_50\,
      ACOUT(2) => \plusOp__1_n_51\,
      ACOUT(1) => \plusOp__1_n_52\,
      ACOUT(0) => \plusOp__1_n_53\,
      ALUMODE(3 downto 0) => B"0000",
      B(17 downto 5) => B"0000000000000",
      B(4 downto 0) => cf_3_i(4 downto 0),
      BCIN(17 downto 0) => B"000000000000000000",
      BCOUT(17 downto 0) => \NLW_plusOp__1_BCOUT_UNCONNECTED\(17 downto 0),
      C(47 downto 0) => B"111111111111111111111111111111111111111111111111",
      CARRYCASCIN => '0',
      CARRYCASCOUT => \NLW_plusOp__1_CARRYCASCOUT_UNCONNECTED\,
      CARRYIN => '0',
      CARRYINSEL(2 downto 0) => B"000",
      CARRYOUT(3 downto 0) => \NLW_plusOp__1_CARRYOUT_UNCONNECTED\(3 downto 0),
      CEA1 => \^valid_ena\,
      CEA2 => \^valid_ena\,
      CEAD => '0',
      CEALUMODE => '0',
      CEB1 => '0',
      CEB2 => '0',
      CEC => '0',
      CECARRYIN => '0',
      CECTRL => '0',
      CED => '0',
      CEINMODE => '0',
      CEM => d3_reg_i_1_n_0,
      CEP => '0',
      CLK => clk_i,
      D(24 downto 0) => B"0000000000000000000000000",
      INMODE(4 downto 0) => B"00000",
      MULTSIGNIN => '0',
      MULTSIGNOUT => \NLW_plusOp__1_MULTSIGNOUT_UNCONNECTED\,
      OPMODE(6 downto 0) => B"0010101",
      OVERFLOW => \NLW_plusOp__1_OVERFLOW_UNCONNECTED\,
      P(47 downto 0) => \NLW_plusOp__1_P_UNCONNECTED\(47 downto 0),
      PATTERNBDETECT => \NLW_plusOp__1_PATTERNBDETECT_UNCONNECTED\,
      PATTERNDETECT => \NLW_plusOp__1_PATTERNDETECT_UNCONNECTED\,
      PCIN(47) => d6_reg_n_106,
      PCIN(46) => d6_reg_n_107,
      PCIN(45) => d6_reg_n_108,
      PCIN(44) => d6_reg_n_109,
      PCIN(43) => d6_reg_n_110,
      PCIN(42) => d6_reg_n_111,
      PCIN(41) => d6_reg_n_112,
      PCIN(40) => d6_reg_n_113,
      PCIN(39) => d6_reg_n_114,
      PCIN(38) => d6_reg_n_115,
      PCIN(37) => d6_reg_n_116,
      PCIN(36) => d6_reg_n_117,
      PCIN(35) => d6_reg_n_118,
      PCIN(34) => d6_reg_n_119,
      PCIN(33) => d6_reg_n_120,
      PCIN(32) => d6_reg_n_121,
      PCIN(31) => d6_reg_n_122,
      PCIN(30) => d6_reg_n_123,
      PCIN(29) => d6_reg_n_124,
      PCIN(28) => d6_reg_n_125,
      PCIN(27) => d6_reg_n_126,
      PCIN(26) => d6_reg_n_127,
      PCIN(25) => d6_reg_n_128,
      PCIN(24) => d6_reg_n_129,
      PCIN(23) => d6_reg_n_130,
      PCIN(22) => d6_reg_n_131,
      PCIN(21) => d6_reg_n_132,
      PCIN(20) => d6_reg_n_133,
      PCIN(19) => d6_reg_n_134,
      PCIN(18) => d6_reg_n_135,
      PCIN(17) => d6_reg_n_136,
      PCIN(16) => d6_reg_n_137,
      PCIN(15) => d6_reg_n_138,
      PCIN(14) => d6_reg_n_139,
      PCIN(13) => d6_reg_n_140,
      PCIN(12) => d6_reg_n_141,
      PCIN(11) => d6_reg_n_142,
      PCIN(10) => d6_reg_n_143,
      PCIN(9) => d6_reg_n_144,
      PCIN(8) => d6_reg_n_145,
      PCIN(7) => d6_reg_n_146,
      PCIN(6) => d6_reg_n_147,
      PCIN(5) => d6_reg_n_148,
      PCIN(4) => d6_reg_n_149,
      PCIN(3) => d6_reg_n_150,
      PCIN(2) => d6_reg_n_151,
      PCIN(1) => d6_reg_n_152,
      PCIN(0) => d6_reg_n_153,
      PCOUT(47) => \plusOp__1_n_106\,
      PCOUT(46) => \plusOp__1_n_107\,
      PCOUT(45) => \plusOp__1_n_108\,
      PCOUT(44) => \plusOp__1_n_109\,
      PCOUT(43) => \plusOp__1_n_110\,
      PCOUT(42) => \plusOp__1_n_111\,
      PCOUT(41) => \plusOp__1_n_112\,
      PCOUT(40) => \plusOp__1_n_113\,
      PCOUT(39) => \plusOp__1_n_114\,
      PCOUT(38) => \plusOp__1_n_115\,
      PCOUT(37) => \plusOp__1_n_116\,
      PCOUT(36) => \plusOp__1_n_117\,
      PCOUT(35) => \plusOp__1_n_118\,
      PCOUT(34) => \plusOp__1_n_119\,
      PCOUT(33) => \plusOp__1_n_120\,
      PCOUT(32) => \plusOp__1_n_121\,
      PCOUT(31) => \plusOp__1_n_122\,
      PCOUT(30) => \plusOp__1_n_123\,
      PCOUT(29) => \plusOp__1_n_124\,
      PCOUT(28) => \plusOp__1_n_125\,
      PCOUT(27) => \plusOp__1_n_126\,
      PCOUT(26) => \plusOp__1_n_127\,
      PCOUT(25) => \plusOp__1_n_128\,
      PCOUT(24) => \plusOp__1_n_129\,
      PCOUT(23) => \plusOp__1_n_130\,
      PCOUT(22) => \plusOp__1_n_131\,
      PCOUT(21) => \plusOp__1_n_132\,
      PCOUT(20) => \plusOp__1_n_133\,
      PCOUT(19) => \plusOp__1_n_134\,
      PCOUT(18) => \plusOp__1_n_135\,
      PCOUT(17) => \plusOp__1_n_136\,
      PCOUT(16) => \plusOp__1_n_137\,
      PCOUT(15) => \plusOp__1_n_138\,
      PCOUT(14) => \plusOp__1_n_139\,
      PCOUT(13) => \plusOp__1_n_140\,
      PCOUT(12) => \plusOp__1_n_141\,
      PCOUT(11) => \plusOp__1_n_142\,
      PCOUT(10) => \plusOp__1_n_143\,
      PCOUT(9) => \plusOp__1_n_144\,
      PCOUT(8) => \plusOp__1_n_145\,
      PCOUT(7) => \plusOp__1_n_146\,
      PCOUT(6) => \plusOp__1_n_147\,
      PCOUT(5) => \plusOp__1_n_148\,
      PCOUT(4) => \plusOp__1_n_149\,
      PCOUT(3) => \plusOp__1_n_150\,
      PCOUT(2) => \plusOp__1_n_151\,
      PCOUT(1) => \plusOp__1_n_152\,
      PCOUT(0) => \plusOp__1_n_153\,
      RSTA => rst_i,
      RSTALLCARRYIN => '0',
      RSTALUMODE => '0',
      RSTB => '0',
      RSTC => '0',
      RSTCTRL => '0',
      RSTD => '0',
      RSTINMODE => '0',
      RSTM => '0',
      RSTP => '0',
      UNDERFLOW => \NLW_plusOp__1_UNDERFLOW_UNCONNECTED\
    );
\plusOp__2\: unisim.vcomponents.DSP48E1
    generic map(
      ACASCREG => 2,
      ADREG => 1,
      ALUMODEREG => 0,
      AREG => 2,
      AUTORESET_PATDET => "NO_RESET",
      A_INPUT => "CASCADE",
      BCASCREG => 0,
      BREG => 0,
      B_INPUT => "DIRECT",
      CARRYINREG => 0,
      CARRYINSELREG => 0,
      CREG => 1,
      DREG => 1,
      INMODEREG => 0,
      MASK => X"3FFFFFFFFFFF",
      MREG => 1,
      OPMODEREG => 0,
      PATTERN => X"000000000000",
      PREG => 0,
      SEL_MASK => "MASK",
      SEL_PATTERN => "PATTERN",
      USE_DPORT => false,
      USE_MULT => "MULTIPLY",
      USE_PATTERN_DETECT => "NO_PATDET",
      USE_SIMD => "ONE48"
    )
        port map (
      A(29 downto 0) => B"000000000000000000000000000000",
      ACIN(29) => \plusOp__1_n_24\,
      ACIN(28) => \plusOp__1_n_25\,
      ACIN(27) => \plusOp__1_n_26\,
      ACIN(26) => \plusOp__1_n_27\,
      ACIN(25) => \plusOp__1_n_28\,
      ACIN(24) => \plusOp__1_n_29\,
      ACIN(23) => \plusOp__1_n_30\,
      ACIN(22) => \plusOp__1_n_31\,
      ACIN(21) => \plusOp__1_n_32\,
      ACIN(20) => \plusOp__1_n_33\,
      ACIN(19) => \plusOp__1_n_34\,
      ACIN(18) => \plusOp__1_n_35\,
      ACIN(17) => \plusOp__1_n_36\,
      ACIN(16) => \plusOp__1_n_37\,
      ACIN(15) => \plusOp__1_n_38\,
      ACIN(14) => \plusOp__1_n_39\,
      ACIN(13) => \plusOp__1_n_40\,
      ACIN(12) => \plusOp__1_n_41\,
      ACIN(11) => \plusOp__1_n_42\,
      ACIN(10) => \plusOp__1_n_43\,
      ACIN(9) => \plusOp__1_n_44\,
      ACIN(8) => \plusOp__1_n_45\,
      ACIN(7) => \plusOp__1_n_46\,
      ACIN(6) => \plusOp__1_n_47\,
      ACIN(5) => \plusOp__1_n_48\,
      ACIN(4) => \plusOp__1_n_49\,
      ACIN(3) => \plusOp__1_n_50\,
      ACIN(2) => \plusOp__1_n_51\,
      ACIN(1) => \plusOp__1_n_52\,
      ACIN(0) => \plusOp__1_n_53\,
      ACOUT(29 downto 0) => \NLW_plusOp__2_ACOUT_UNCONNECTED\(29 downto 0),
      ALUMODE(3 downto 0) => B"0000",
      B(17 downto 5) => B"0000000000000",
      B(4 downto 0) => cf_2_i(4 downto 0),
      BCIN(17 downto 0) => B"000000000000000000",
      BCOUT(17 downto 0) => \NLW_plusOp__2_BCOUT_UNCONNECTED\(17 downto 0),
      C(47 downto 0) => B"111111111111111111111111111111111111111111111111",
      CARRYCASCIN => '0',
      CARRYCASCOUT => \NLW_plusOp__2_CARRYCASCOUT_UNCONNECTED\,
      CARRYIN => '0',
      CARRYINSEL(2 downto 0) => B"000",
      CARRYOUT(3 downto 0) => \NLW_plusOp__2_CARRYOUT_UNCONNECTED\(3 downto 0),
      CEA1 => \^valid_ena\,
      CEA2 => \^valid_ena\,
      CEAD => '0',
      CEALUMODE => '0',
      CEB1 => '0',
      CEB2 => '0',
      CEC => '0',
      CECARRYIN => '0',
      CECTRL => '0',
      CED => '0',
      CEINMODE => '0',
      CEM => d3_reg_i_1_n_0,
      CEP => '0',
      CLK => clk_i,
      D(24 downto 0) => B"0000000000000000000000000",
      INMODE(4 downto 0) => B"00000",
      MULTSIGNIN => '0',
      MULTSIGNOUT => \NLW_plusOp__2_MULTSIGNOUT_UNCONNECTED\,
      OPMODE(6 downto 0) => B"0010101",
      OVERFLOW => \NLW_plusOp__2_OVERFLOW_UNCONNECTED\,
      P(47 downto 27) => \NLW_plusOp__2_P_UNCONNECTED\(47 downto 27),
      P(26) => \plusOp__2_n_79\,
      P(25) => \plusOp__2_n_80\,
      P(24) => \plusOp__2_n_81\,
      P(23) => \plusOp__2_n_82\,
      P(22) => \plusOp__2_n_83\,
      P(21) => \plusOp__2_n_84\,
      P(20) => \plusOp__2_n_85\,
      P(19) => \plusOp__2_n_86\,
      P(18) => \plusOp__2_n_87\,
      P(17) => \plusOp__2_n_88\,
      P(16) => \plusOp__2_n_89\,
      P(15) => \plusOp__2_n_90\,
      P(14) => \plusOp__2_n_91\,
      P(13) => \plusOp__2_n_92\,
      P(12) => \plusOp__2_n_93\,
      P(11) => \plusOp__2_n_94\,
      P(10) => \plusOp__2_n_95\,
      P(9) => \plusOp__2_n_96\,
      P(8) => \plusOp__2_n_97\,
      P(7) => \plusOp__2_n_98\,
      P(6) => \plusOp__2_n_99\,
      P(5) => \plusOp__2_n_100\,
      P(4) => \plusOp__2_n_101\,
      P(3) => \plusOp__2_n_102\,
      P(2) => \plusOp__2_n_103\,
      P(1) => \plusOp__2_n_104\,
      P(0) => \plusOp__2_n_105\,
      PATTERNBDETECT => \NLW_plusOp__2_PATTERNBDETECT_UNCONNECTED\,
      PATTERNDETECT => \NLW_plusOp__2_PATTERNDETECT_UNCONNECTED\,
      PCIN(47) => \plusOp__1_n_106\,
      PCIN(46) => \plusOp__1_n_107\,
      PCIN(45) => \plusOp__1_n_108\,
      PCIN(44) => \plusOp__1_n_109\,
      PCIN(43) => \plusOp__1_n_110\,
      PCIN(42) => \plusOp__1_n_111\,
      PCIN(41) => \plusOp__1_n_112\,
      PCIN(40) => \plusOp__1_n_113\,
      PCIN(39) => \plusOp__1_n_114\,
      PCIN(38) => \plusOp__1_n_115\,
      PCIN(37) => \plusOp__1_n_116\,
      PCIN(36) => \plusOp__1_n_117\,
      PCIN(35) => \plusOp__1_n_118\,
      PCIN(34) => \plusOp__1_n_119\,
      PCIN(33) => \plusOp__1_n_120\,
      PCIN(32) => \plusOp__1_n_121\,
      PCIN(31) => \plusOp__1_n_122\,
      PCIN(30) => \plusOp__1_n_123\,
      PCIN(29) => \plusOp__1_n_124\,
      PCIN(28) => \plusOp__1_n_125\,
      PCIN(27) => \plusOp__1_n_126\,
      PCIN(26) => \plusOp__1_n_127\,
      PCIN(25) => \plusOp__1_n_128\,
      PCIN(24) => \plusOp__1_n_129\,
      PCIN(23) => \plusOp__1_n_130\,
      PCIN(22) => \plusOp__1_n_131\,
      PCIN(21) => \plusOp__1_n_132\,
      PCIN(20) => \plusOp__1_n_133\,
      PCIN(19) => \plusOp__1_n_134\,
      PCIN(18) => \plusOp__1_n_135\,
      PCIN(17) => \plusOp__1_n_136\,
      PCIN(16) => \plusOp__1_n_137\,
      PCIN(15) => \plusOp__1_n_138\,
      PCIN(14) => \plusOp__1_n_139\,
      PCIN(13) => \plusOp__1_n_140\,
      PCIN(12) => \plusOp__1_n_141\,
      PCIN(11) => \plusOp__1_n_142\,
      PCIN(10) => \plusOp__1_n_143\,
      PCIN(9) => \plusOp__1_n_144\,
      PCIN(8) => \plusOp__1_n_145\,
      PCIN(7) => \plusOp__1_n_146\,
      PCIN(6) => \plusOp__1_n_147\,
      PCIN(5) => \plusOp__1_n_148\,
      PCIN(4) => \plusOp__1_n_149\,
      PCIN(3) => \plusOp__1_n_150\,
      PCIN(2) => \plusOp__1_n_151\,
      PCIN(1) => \plusOp__1_n_152\,
      PCIN(0) => \plusOp__1_n_153\,
      PCOUT(47 downto 0) => \NLW_plusOp__2_PCOUT_UNCONNECTED\(47 downto 0),
      RSTA => rst_i,
      RSTALLCARRYIN => '0',
      RSTALUMODE => '0',
      RSTB => '0',
      RSTC => '0',
      RSTCTRL => '0',
      RSTD => '0',
      RSTINMODE => '0',
      RSTM => '0',
      RSTP => '0',
      UNDERFLOW => \NLW_plusOp__2_UNDERFLOW_UNCONNECTED\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity xrf_dpp_DPP_module_FIR_0_0_long_FIR_DPP is
  port (
    m_axis_data_tdata : out STD_LOGIC_VECTOR ( 15 downto 0 );
    clk_i : in STD_LOGIC;
    ADC_data_i : in STD_LOGIC_VECTOR ( 15 downto 0 );
    \out\ : in STD_LOGIC;
    \FSM_sequential_state_r_reg[0]_0\ : in STD_LOGIC;
    rst_i : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of xrf_dpp_DPP_module_FIR_0_0_long_FIR_DPP : entity is "long_FIR_DPP";
end xrf_dpp_DPP_module_FIR_0_0_long_FIR_DPP;

architecture STRUCTURE of xrf_dpp_DPP_module_FIR_0_0_long_FIR_DPP is
  component xrf_dpp_DPP_module_FIR_0_0_fir_compiler_0 is
  port (
    aclk : in STD_LOGIC;
    s_axis_data_tvalid : in STD_LOGIC;
    s_axis_data_tready : out STD_LOGIC;
    s_axis_data_tdata : in STD_LOGIC_VECTOR ( 15 downto 0 );
    m_axis_data_tvalid : out STD_LOGIC;
    m_axis_data_tdata : out STD_LOGIC_VECTOR ( 15 downto 0 )
  );
  end component xrf_dpp_DPP_module_FIR_0_0_fir_compiler_0;
  signal \FSM_sequential_state_r[0]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_sequential_state_r[1]_i_1_n_0\ : STD_LOGIC;
  signal m_tvalid : STD_LOGIC;
  signal s_tready : STD_LOGIC;
  signal s_tvalid : STD_LOGIC;
  signal \s_tvalid__0\ : STD_LOGIC;
  signal s_tvalid_reg_i_1_n_0 : STD_LOGIC;
  signal s_tvalid_reg_i_3_n_0 : STD_LOGIC;
  signal \state_r__0\ : STD_LOGIC_VECTOR ( 1 downto 0 );
  attribute syn_black_box : string;
  attribute syn_black_box of FIR_Amplitude : label is "TRUE";
  attribute x_core_info : string;
  attribute x_core_info of FIR_Amplitude : label is "fir_compiler_v7_2_18,Vivado 2022.2";
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \FSM_sequential_state_r[1]_i_1\ : label is "soft_lutpair1";
  attribute FSM_ENCODED_STATES : string;
  attribute FSM_ENCODED_STATES of \FSM_sequential_state_r_reg[0]\ : label is "ready_wait_st:01,valid_assert_st:10,reset_st:00,valid_data_st:11";
  attribute FSM_ENCODED_STATES of \FSM_sequential_state_r_reg[1]\ : label is "ready_wait_st:01,valid_assert_st:10,reset_st:00,valid_data_st:11";
  attribute SOFT_HLUTNM of s_tvalid_reg_i_1 : label is "soft_lutpair1";
begin
FIR_Amplitude: component xrf_dpp_DPP_module_FIR_0_0_fir_compiler_0
     port map (
      aclk => clk_i,
      m_axis_data_tdata(15 downto 0) => m_axis_data_tdata(15 downto 0),
      m_axis_data_tvalid => m_tvalid,
      s_axis_data_tdata(15 downto 0) => ADC_data_i(15 downto 0),
      s_axis_data_tready => s_tready,
      s_axis_data_tvalid => s_tvalid
    );
\FSM_sequential_state_r[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F878F078F8F8F0F8"
    )
        port map (
      I0 => \out\,
      I1 => \FSM_sequential_state_r_reg[0]_0\,
      I2 => \state_r__0\(0),
      I3 => \state_r__0\(1),
      I4 => m_tvalid,
      I5 => s_tready,
      O => \FSM_sequential_state_r[0]_i_1_n_0\
    );
\FSM_sequential_state_r[1]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FF80FF00"
    )
        port map (
      I0 => \out\,
      I1 => \FSM_sequential_state_r_reg[0]_0\,
      I2 => \state_r__0\(0),
      I3 => \state_r__0\(1),
      I4 => s_tready,
      O => \FSM_sequential_state_r[1]_i_1_n_0\
    );
\FSM_sequential_state_r_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_i,
      CE => '1',
      D => \FSM_sequential_state_r[0]_i_1_n_0\,
      Q => \state_r__0\(0),
      R => rst_i
    );
\FSM_sequential_state_r_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_i,
      CE => '1',
      D => \FSM_sequential_state_r[1]_i_1_n_0\,
      Q => \state_r__0\(1),
      R => rst_i
    );
s_tvalid_reg: unisim.vcomponents.LDCP
    generic map(
      INIT => '0'
    )
        port map (
      CLR => \s_tvalid__0\,
      D => '1',
      G => s_tvalid_reg_i_1_n_0,
      PRE => s_tvalid_reg_i_3_n_0,
      Q => s_tvalid
    );
s_tvalid_reg_i_1: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \state_r__0\(0),
      I1 => \state_r__0\(1),
      O => s_tvalid_reg_i_1_n_0
    );
s_tvalid_reg_i_2: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \state_r__0\(0),
      I1 => \state_r__0\(1),
      O => \s_tvalid__0\
    );
s_tvalid_reg_i_3: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \state_r__0\(0),
      I1 => \state_r__0\(1),
      O => s_tvalid_reg_i_3_n_0
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity xrf_dpp_DPP_module_FIR_0_0_DPP_module_FIR is
  port (
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
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of xrf_dpp_DPP_module_FIR_0_0_DPP_module_FIR : entity is "DPP_module_FIR";
  attribute TAP_N : integer;
  attribute TAP_N of xrf_dpp_DPP_module_FIR_0_0_DPP_module_FIR : entity is 23;
  attribute keep_hierarchy : string;
  attribute keep_hierarchy of xrf_dpp_DPP_module_FIR_0_0_DPP_module_FIR : entity is "soft";
end xrf_dpp_DPP_module_FIR_0_0_DPP_module_FIR;

architecture STRUCTURE of xrf_dpp_DPP_module_FIR_0_0_DPP_module_FIR is
  signal data_from_amplitude : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal data_from_derivative : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal \^ena_i\ : STD_LOGIC;
  attribute MARK_DEBUG : boolean;
  attribute MARK_DEBUG of ena_i : signal is std.standard.true;
  signal fir_derivative_n_18 : STD_LOGIC;
  signal fir_derivative_n_19 : STD_LOGIC;
  signal fir_derivative_n_20 : STD_LOGIC;
  signal fir_derivative_n_21 : STD_LOGIC;
  signal fir_derivative_n_22 : STD_LOGIC;
  signal fir_derivative_n_23 : STD_LOGIC;
  signal fir_derivative_n_24 : STD_LOGIC;
  signal fir_derivative_n_25 : STD_LOGIC;
  signal fir_derivative_n_26 : STD_LOGIC;
  signal fir_derivative_n_27 : STD_LOGIC;
  signal fir_derivative_n_28 : STD_LOGIC;
  signal fir_derivative_n_29 : STD_LOGIC;
  signal fir_derivative_n_30 : STD_LOGIC;
  signal fir_derivative_n_31 : STD_LOGIC;
  signal fir_derivative_n_32 : STD_LOGIC;
  signal fir_derivative_n_33 : STD_LOGIC;
  signal n_valid_der : STD_LOGIC;
  signal next_state : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal pulse_detection : STD_LOGIC;
  signal state : STD_LOGIC_VECTOR ( 1 downto 0 );
  attribute MARK_DEBUG of state : signal is std.standard.true;
  signal valid_delayed : STD_LOGIC_VECTOR ( 20 to 20 );
  signal \valid_delayed[20]_i_1_n_0\ : STD_LOGIC;
  signal \valid_delayed__0\ : STD_LOGIC_VECTOR ( 19 downto 0 );
  signal valid_ena : STD_LOGIC;
  signal NLW_edge_detector_rejection_flag_o_UNCONNECTED : STD_LOGIC;
  attribute XILINX_LEGACY_PRIM : string;
  attribute XILINX_LEGACY_PRIM of \data_muxed_out_reg[0]\ : label is "LD";
  attribute XILINX_TRANSFORM_PINMAP : string;
  attribute XILINX_TRANSFORM_PINMAP of \data_muxed_out_reg[0]\ : label is "VCC:GE GND:CLR";
  attribute XILINX_LEGACY_PRIM of \data_muxed_out_reg[10]\ : label is "LD";
  attribute XILINX_TRANSFORM_PINMAP of \data_muxed_out_reg[10]\ : label is "VCC:GE GND:CLR";
  attribute XILINX_LEGACY_PRIM of \data_muxed_out_reg[11]\ : label is "LD";
  attribute XILINX_TRANSFORM_PINMAP of \data_muxed_out_reg[11]\ : label is "VCC:GE GND:CLR";
  attribute XILINX_LEGACY_PRIM of \data_muxed_out_reg[12]\ : label is "LD";
  attribute XILINX_TRANSFORM_PINMAP of \data_muxed_out_reg[12]\ : label is "VCC:GE GND:CLR";
  attribute XILINX_LEGACY_PRIM of \data_muxed_out_reg[13]\ : label is "LD";
  attribute XILINX_TRANSFORM_PINMAP of \data_muxed_out_reg[13]\ : label is "VCC:GE GND:CLR";
  attribute XILINX_LEGACY_PRIM of \data_muxed_out_reg[14]\ : label is "LD";
  attribute XILINX_TRANSFORM_PINMAP of \data_muxed_out_reg[14]\ : label is "VCC:GE GND:CLR";
  attribute XILINX_LEGACY_PRIM of \data_muxed_out_reg[15]\ : label is "LD";
  attribute XILINX_TRANSFORM_PINMAP of \data_muxed_out_reg[15]\ : label is "VCC:GE GND:CLR";
  attribute XILINX_LEGACY_PRIM of \data_muxed_out_reg[1]\ : label is "LD";
  attribute XILINX_TRANSFORM_PINMAP of \data_muxed_out_reg[1]\ : label is "VCC:GE GND:CLR";
  attribute XILINX_LEGACY_PRIM of \data_muxed_out_reg[2]\ : label is "LD";
  attribute XILINX_TRANSFORM_PINMAP of \data_muxed_out_reg[2]\ : label is "VCC:GE GND:CLR";
  attribute XILINX_LEGACY_PRIM of \data_muxed_out_reg[3]\ : label is "LD";
  attribute XILINX_TRANSFORM_PINMAP of \data_muxed_out_reg[3]\ : label is "VCC:GE GND:CLR";
  attribute XILINX_LEGACY_PRIM of \data_muxed_out_reg[4]\ : label is "LD";
  attribute XILINX_TRANSFORM_PINMAP of \data_muxed_out_reg[4]\ : label is "VCC:GE GND:CLR";
  attribute XILINX_LEGACY_PRIM of \data_muxed_out_reg[5]\ : label is "LD";
  attribute XILINX_TRANSFORM_PINMAP of \data_muxed_out_reg[5]\ : label is "VCC:GE GND:CLR";
  attribute XILINX_LEGACY_PRIM of \data_muxed_out_reg[6]\ : label is "LD";
  attribute XILINX_TRANSFORM_PINMAP of \data_muxed_out_reg[6]\ : label is "VCC:GE GND:CLR";
  attribute XILINX_LEGACY_PRIM of \data_muxed_out_reg[7]\ : label is "LD";
  attribute XILINX_TRANSFORM_PINMAP of \data_muxed_out_reg[7]\ : label is "VCC:GE GND:CLR";
  attribute XILINX_LEGACY_PRIM of \data_muxed_out_reg[8]\ : label is "LD";
  attribute XILINX_TRANSFORM_PINMAP of \data_muxed_out_reg[8]\ : label is "VCC:GE GND:CLR";
  attribute XILINX_LEGACY_PRIM of \data_muxed_out_reg[9]\ : label is "LD";
  attribute XILINX_TRANSFORM_PINMAP of \data_muxed_out_reg[9]\ : label is "VCC:GE GND:CLR";
  attribute KEEP_HIERARCHY of edge_detector : label is "soft";
  attribute KEEP : string;
  attribute KEEP of \state_reg[0]\ : label is "yes";
  attribute mark_debug_string : string;
  attribute mark_debug_string of \state_reg[0]\ : label is "true";
  attribute KEEP of \state_reg[1]\ : label is "yes";
  attribute mark_debug_string of \state_reg[1]\ : label is "true";
  attribute mark_debug_string of ena_i : signal is "true";
  attribute mark_debug_string of fifo_wr_en_mux_out : signal is "true";
  attribute mark_debug_string of valid_i : signal is "true";
  attribute mark_debug_string of data_o : signal is "true";
begin
  \^ena_i\ <= ena_i;
  read_ena_o <= \^ena_i\;
\data_muxed_out_reg[0]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => fir_derivative_n_33,
      G => state(1),
      GE => '1',
      Q => data_o(0)
    );
\data_muxed_out_reg[10]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => fir_derivative_n_23,
      G => state(1),
      GE => '1',
      Q => data_o(10)
    );
\data_muxed_out_reg[11]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => fir_derivative_n_22,
      G => state(1),
      GE => '1',
      Q => data_o(11)
    );
\data_muxed_out_reg[12]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => fir_derivative_n_21,
      G => state(1),
      GE => '1',
      Q => data_o(12)
    );
\data_muxed_out_reg[13]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => fir_derivative_n_20,
      G => state(1),
      GE => '1',
      Q => data_o(13)
    );
\data_muxed_out_reg[14]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => fir_derivative_n_19,
      G => state(1),
      GE => '1',
      Q => data_o(14)
    );
\data_muxed_out_reg[15]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => fir_derivative_n_18,
      G => state(1),
      GE => '1',
      Q => data_o(15)
    );
\data_muxed_out_reg[1]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => fir_derivative_n_32,
      G => state(1),
      GE => '1',
      Q => data_o(1)
    );
\data_muxed_out_reg[2]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => fir_derivative_n_31,
      G => state(1),
      GE => '1',
      Q => data_o(2)
    );
\data_muxed_out_reg[3]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => fir_derivative_n_30,
      G => state(1),
      GE => '1',
      Q => data_o(3)
    );
\data_muxed_out_reg[4]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => fir_derivative_n_29,
      G => state(1),
      GE => '1',
      Q => data_o(4)
    );
\data_muxed_out_reg[5]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => fir_derivative_n_28,
      G => state(1),
      GE => '1',
      Q => data_o(5)
    );
\data_muxed_out_reg[6]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => fir_derivative_n_27,
      G => state(1),
      GE => '1',
      Q => data_o(6)
    );
\data_muxed_out_reg[7]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => fir_derivative_n_26,
      G => state(1),
      GE => '1',
      Q => data_o(7)
    );
\data_muxed_out_reg[8]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => fir_derivative_n_25,
      G => state(1),
      GE => '1',
      Q => data_o(8)
    );
\data_muxed_out_reg[9]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => fir_derivative_n_24,
      G => state(1),
      GE => '1',
      Q => data_o(9)
    );
do_long_FIR: entity work.xrf_dpp_DPP_module_FIR_0_0_long_FIR_DPP
     port map (
      ADC_data_i(15 downto 0) => ADC_data_i(15 downto 0),
      \FSM_sequential_state_r_reg[0]_0\ => valid_i,
      clk_i => clk_i,
      m_axis_data_tdata(15 downto 0) => data_from_amplitude(15 downto 0),
      \out\ => \^ena_i\,
      rst_i => rst_i
    );
edge_detector: entity work.xrf_dpp_DPP_module_FIR_0_0_edge_detector_1
     port map (
      arrival_flag_o => pulse_detection,
      clk_i => clk_i,
      data_i(15 downto 0) => data_from_derivative(15 downto 0),
      det_threshold_high_i(15 downto 0) => det_threshold_high_i(15 downto 0),
      det_threshold_low_i(15 downto 0) => det_threshold_low_i(15 downto 0),
      ena_i => n_valid_der,
      rejection_flag_o => NLW_edge_detector_rejection_flag_o_UNCONNECTED,
      rst_i => rst_i
    );
fifo_wr_en_mux_out_inferred_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"11510000"
    )
        port map (
      I0 => state(0),
      I1 => op_mode_i(0),
      I2 => valid_delayed(20),
      I3 => op_mode_i(1),
      I4 => state(1),
      O => fifo_wr_en_mux_out
    );
fir_derivative: entity work.xrf_dpp_DPP_module_FIR_0_0_fir_derivative_1
     port map (
      ADC_data_i(15 downto 0) => ADC_data_i(15 downto 0),
      D(15) => fir_derivative_n_18,
      D(14) => fir_derivative_n_19,
      D(13) => fir_derivative_n_20,
      D(12) => fir_derivative_n_21,
      D(11) => fir_derivative_n_22,
      D(10) => fir_derivative_n_23,
      D(9) => fir_derivative_n_24,
      D(8) => fir_derivative_n_25,
      D(7) => fir_derivative_n_26,
      D(6) => fir_derivative_n_27,
      D(5) => fir_derivative_n_28,
      D(4) => fir_derivative_n_29,
      D(3) => fir_derivative_n_30,
      D(2) => fir_derivative_n_31,
      D(1) => fir_derivative_n_32,
      D(0) => fir_derivative_n_33,
      Q(15 downto 0) => data_from_derivative(15 downto 0),
      cf_1_i(4 downto 0) => cf_1_i(4 downto 0),
      cf_2_i(4 downto 0) => cf_2_i(4 downto 0),
      cf_3_i(4 downto 0) => cf_3_i(4 downto 0),
      clk_i => clk_i,
      d6_reg_0 => \^ena_i\,
      \data_o[0]\(0) => state(0),
      ena_i => n_valid_der,
      m_axis_data_tdata(15 downto 0) => data_from_amplitude(15 downto 0),
      op_mode_i(1 downto 0) => op_mode_i(1 downto 0),
      \out\ => valid_i,
      rst_i => rst_i,
      valid_ena => valid_ena
    );
\state[0]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => state(0),
      I1 => state(1),
      O => next_state(0)
    );
\state[1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => state(0),
      I1 => state(1),
      O => next_state(1)
    );
\state_reg[0]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk_i,
      CE => valid_ena,
      D => next_state(0),
      Q => state(0),
      S => rst_i
    );
\state_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_i,
      CE => valid_ena,
      D => next_state(1),
      Q => state(1),
      R => rst_i
    );
\valid_delayed[20]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => state(1),
      I1 => state(0),
      O => \valid_delayed[20]_i_1_n_0\
    );
\valid_delayed_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => clk_i,
      CE => \valid_delayed[20]_i_1_n_0\,
      D => pulse_detection,
      Q => \valid_delayed__0\(0),
      R => rst_i
    );
\valid_delayed_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => clk_i,
      CE => \valid_delayed[20]_i_1_n_0\,
      D => \valid_delayed__0\(9),
      Q => \valid_delayed__0\(10),
      R => rst_i
    );
\valid_delayed_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => clk_i,
      CE => \valid_delayed[20]_i_1_n_0\,
      D => \valid_delayed__0\(10),
      Q => \valid_delayed__0\(11),
      R => rst_i
    );
\valid_delayed_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => clk_i,
      CE => \valid_delayed[20]_i_1_n_0\,
      D => \valid_delayed__0\(11),
      Q => \valid_delayed__0\(12),
      R => rst_i
    );
\valid_delayed_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => clk_i,
      CE => \valid_delayed[20]_i_1_n_0\,
      D => \valid_delayed__0\(12),
      Q => \valid_delayed__0\(13),
      R => rst_i
    );
\valid_delayed_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => clk_i,
      CE => \valid_delayed[20]_i_1_n_0\,
      D => \valid_delayed__0\(13),
      Q => \valid_delayed__0\(14),
      R => rst_i
    );
\valid_delayed_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => clk_i,
      CE => \valid_delayed[20]_i_1_n_0\,
      D => \valid_delayed__0\(14),
      Q => \valid_delayed__0\(15),
      R => rst_i
    );
\valid_delayed_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => clk_i,
      CE => \valid_delayed[20]_i_1_n_0\,
      D => \valid_delayed__0\(15),
      Q => \valid_delayed__0\(16),
      R => rst_i
    );
\valid_delayed_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => clk_i,
      CE => \valid_delayed[20]_i_1_n_0\,
      D => \valid_delayed__0\(16),
      Q => \valid_delayed__0\(17),
      R => rst_i
    );
\valid_delayed_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => clk_i,
      CE => \valid_delayed[20]_i_1_n_0\,
      D => \valid_delayed__0\(17),
      Q => \valid_delayed__0\(18),
      R => rst_i
    );
\valid_delayed_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => clk_i,
      CE => \valid_delayed[20]_i_1_n_0\,
      D => \valid_delayed__0\(18),
      Q => \valid_delayed__0\(19),
      R => rst_i
    );
\valid_delayed_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => clk_i,
      CE => \valid_delayed[20]_i_1_n_0\,
      D => \valid_delayed__0\(0),
      Q => \valid_delayed__0\(1),
      R => rst_i
    );
\valid_delayed_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => clk_i,
      CE => \valid_delayed[20]_i_1_n_0\,
      D => \valid_delayed__0\(19),
      Q => valid_delayed(20),
      R => rst_i
    );
\valid_delayed_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => clk_i,
      CE => \valid_delayed[20]_i_1_n_0\,
      D => \valid_delayed__0\(1),
      Q => \valid_delayed__0\(2),
      R => rst_i
    );
\valid_delayed_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => clk_i,
      CE => \valid_delayed[20]_i_1_n_0\,
      D => \valid_delayed__0\(2),
      Q => \valid_delayed__0\(3),
      R => rst_i
    );
\valid_delayed_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => clk_i,
      CE => \valid_delayed[20]_i_1_n_0\,
      D => \valid_delayed__0\(3),
      Q => \valid_delayed__0\(4),
      R => rst_i
    );
\valid_delayed_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => clk_i,
      CE => \valid_delayed[20]_i_1_n_0\,
      D => \valid_delayed__0\(4),
      Q => \valid_delayed__0\(5),
      R => rst_i
    );
\valid_delayed_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => clk_i,
      CE => \valid_delayed[20]_i_1_n_0\,
      D => \valid_delayed__0\(5),
      Q => \valid_delayed__0\(6),
      R => rst_i
    );
\valid_delayed_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => clk_i,
      CE => \valid_delayed[20]_i_1_n_0\,
      D => \valid_delayed__0\(6),
      Q => \valid_delayed__0\(7),
      R => rst_i
    );
\valid_delayed_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => clk_i,
      CE => \valid_delayed[20]_i_1_n_0\,
      D => \valid_delayed__0\(7),
      Q => \valid_delayed__0\(8),
      R => rst_i
    );
\valid_delayed_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => clk_i,
      CE => \valid_delayed[20]_i_1_n_0\,
      D => \valid_delayed__0\(8),
      Q => \valid_delayed__0\(9),
      R => rst_i
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity xrf_dpp_DPP_module_FIR_0_0 is
  port (
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
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of xrf_dpp_DPP_module_FIR_0_0 : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of xrf_dpp_DPP_module_FIR_0_0 : entity is "xrf_dpp_DPP_module_FIR_0_0,DPP_module_FIR,{}";
  attribute downgradeipidentifiedwarnings : string;
  attribute downgradeipidentifiedwarnings of xrf_dpp_DPP_module_FIR_0_0 : entity is "yes";
  attribute ip_definition_source : string;
  attribute ip_definition_source of xrf_dpp_DPP_module_FIR_0_0 : entity is "module_ref";
  attribute x_core_info : string;
  attribute x_core_info of xrf_dpp_DPP_module_FIR_0_0 : entity is "DPP_module_FIR,Vivado 2022.2";
end xrf_dpp_DPP_module_FIR_0_0;

architecture STRUCTURE of xrf_dpp_DPP_module_FIR_0_0 is
  attribute KEEP_HIERARCHY : string;
  attribute KEEP_HIERARCHY of U0 : label is "soft";
  attribute TAP_N : integer;
  attribute TAP_N of U0 : label is 23;
begin
U0: entity work.xrf_dpp_DPP_module_FIR_0_0_DPP_module_FIR
     port map (
      ADC_data_i(15 downto 0) => ADC_data_i(15 downto 0),
      cf_1_i(4 downto 0) => cf_1_i(4 downto 0),
      cf_2_i(4 downto 0) => cf_2_i(4 downto 0),
      cf_3_i(4 downto 0) => cf_3_i(4 downto 0),
      clk_i => clk_i,
      data_o(15 downto 0) => data_o(15 downto 0),
      det_threshold_high_i(15 downto 0) => det_threshold_high_i(15 downto 0),
      det_threshold_low_i(15 downto 0) => det_threshold_low_i(15 downto 0),
      ena_i => ena_i,
      fifo_wr_en_mux_out => fifo_wr_en_mux_out,
      op_mode_i(1 downto 0) => op_mode_i(1 downto 0),
      read_ena_o => read_ena_o,
      rst_i => rst_i,
      valid_i => valid_i
    );
end STRUCTURE;
