-- Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2022.2 (lin64) Build 3671981 Fri Oct 14 04:59:54 MDT 2022
-- Date        : Thu Nov 30 14:22:13 2023
-- Host        : ins45238 running 64-bit Ubuntu 22.04.3 LTS
-- Command     : write_vhdl -force -mode funcsim
--               /home/argo49/smr3891/labs/project2/project2.gen/sources_1/bd/dpp_block_design/ip/dpp_block_design_DPP_module_top_0_0_0/dpp_block_design_DPP_module_top_0_0_0_sim_netlist.vhdl
-- Design      : dpp_block_design_DPP_module_top_0_0_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7z020clg484-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity dpp_block_design_DPP_module_top_0_0_0_edge_detector_0 is
  port (
    clk_i : in STD_LOGIC;
    rst_i : in STD_LOGIC;
    ena_i : in STD_LOGIC;
    data_i : in STD_LOGIC_VECTOR ( 15 downto 0 );
    threshold_high_i : in STD_LOGIC_VECTOR ( 15 downto 0 );
    arrival_flag_o : out STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of dpp_block_design_DPP_module_top_0_0_0_edge_detector_0 : entity is "edge_detector_0";
end dpp_block_design_DPP_module_top_0_0_0_edge_detector_0;

architecture STRUCTURE of dpp_block_design_DPP_module_top_0_0_0_edge_detector_0 is
  signal \FSM_sequential_state[0]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_sequential_state[1]_i_10_n_0\ : STD_LOGIC;
  signal \FSM_sequential_state[1]_i_12_n_0\ : STD_LOGIC;
  signal \FSM_sequential_state[1]_i_13_n_0\ : STD_LOGIC;
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
  signal \FSM_sequential_state[1]_i_5_n_0\ : STD_LOGIC;
  signal \FSM_sequential_state[1]_i_6_n_0\ : STD_LOGIC;
  signal \FSM_sequential_state[1]_i_7_n_0\ : STD_LOGIC;
  signal \FSM_sequential_state[1]_i_8_n_0\ : STD_LOGIC;
  signal \FSM_sequential_state[1]_i_9_n_0\ : STD_LOGIC;
  signal \FSM_sequential_state_reg[1]_i_11_n_0\ : STD_LOGIC;
  signal \FSM_sequential_state_reg[1]_i_11_n_1\ : STD_LOGIC;
  signal \FSM_sequential_state_reg[1]_i_11_n_2\ : STD_LOGIC;
  signal \FSM_sequential_state_reg[1]_i_11_n_3\ : STD_LOGIC;
  signal \FSM_sequential_state_reg[1]_i_2_n_1\ : STD_LOGIC;
  signal \FSM_sequential_state_reg[1]_i_2_n_2\ : STD_LOGIC;
  signal \FSM_sequential_state_reg[1]_i_2_n_3\ : STD_LOGIC;
  signal \FSM_sequential_state_reg[1]_i_3_n_1\ : STD_LOGIC;
  signal \FSM_sequential_state_reg[1]_i_3_n_2\ : STD_LOGIC;
  signal \FSM_sequential_state_reg[1]_i_3_n_3\ : STD_LOGIC;
  signal \FSM_sequential_state_reg[1]_i_4_n_0\ : STD_LOGIC;
  signal \FSM_sequential_state_reg[1]_i_4_n_1\ : STD_LOGIC;
  signal \FSM_sequential_state_reg[1]_i_4_n_2\ : STD_LOGIC;
  signal \FSM_sequential_state_reg[1]_i_4_n_3\ : STD_LOGIC;
  signal arrival_flag_reg : STD_LOGIC;
  signal arrival_flag_reg_reg_i_2_n_0 : STD_LOGIC;
  signal arrival_flag_reg_reg_i_3_n_0 : STD_LOGIC;
  signal gtOp : STD_LOGIC;
  signal ltOp : STD_LOGIC;
  signal state : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal \NLW_FSM_sequential_state_reg[1]_i_11_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_FSM_sequential_state_reg[1]_i_2_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_FSM_sequential_state_reg[1]_i_3_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_FSM_sequential_state_reg[1]_i_4_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \FSM_sequential_state[0]_i_1\ : label is "soft_lutpair2";
  attribute FSM_ENCODED_STATES : string;
  attribute FSM_ENCODED_STATES of \FSM_sequential_state_reg[0]\ : label is "reset_st:00,output_pulse_st:10,over_threshold_st:11,waiting_st:01";
  attribute FSM_ENCODED_STATES of \FSM_sequential_state_reg[1]\ : label is "reset_st:00,output_pulse_st:10,over_threshold_st:11,waiting_st:01";
  attribute COMPARATOR_THRESHOLD : integer;
  attribute COMPARATOR_THRESHOLD of \FSM_sequential_state_reg[1]_i_11\ : label is 11;
  attribute COMPARATOR_THRESHOLD of \FSM_sequential_state_reg[1]_i_2\ : label is 11;
  attribute COMPARATOR_THRESHOLD of \FSM_sequential_state_reg[1]_i_3\ : label is 11;
  attribute COMPARATOR_THRESHOLD of \FSM_sequential_state_reg[1]_i_4\ : label is 11;
  attribute SOFT_HLUTNM of arrival_flag_reg_reg_i_1 : label is "soft_lutpair2";
begin
\FSM_sequential_state[0]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0000EE6E"
    )
        port map (
      I0 => state(0),
      I1 => ena_i,
      I2 => gtOp,
      I3 => state(1),
      I4 => rst_i,
      O => \FSM_sequential_state[0]_i_1_n_0\
    );
\FSM_sequential_state[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000062AAEAAA"
    )
        port map (
      I0 => state(1),
      I1 => ena_i,
      I2 => gtOp,
      I3 => state(0),
      I4 => ltOp,
      I5 => rst_i,
      O => \FSM_sequential_state[1]_i_1_n_0\
    );
\FSM_sequential_state[1]_i_10\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => data_i(8),
      I1 => threshold_high_i(8),
      I2 => data_i(9),
      I3 => threshold_high_i(9),
      O => \FSM_sequential_state[1]_i_10_n_0\
    );
\FSM_sequential_state[1]_i_12\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => threshold_high_i(14),
      I1 => threshold_high_i(15),
      O => \FSM_sequential_state[1]_i_12_n_0\
    );
\FSM_sequential_state[1]_i_13\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => threshold_high_i(12),
      I1 => threshold_high_i(13),
      O => \FSM_sequential_state[1]_i_13_n_0\
    );
\FSM_sequential_state[1]_i_14\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => threshold_high_i(10),
      I1 => data_i(10),
      I2 => data_i(11),
      I3 => threshold_high_i(11),
      O => \FSM_sequential_state[1]_i_14_n_0\
    );
\FSM_sequential_state[1]_i_15\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => threshold_high_i(8),
      I1 => data_i(8),
      I2 => data_i(9),
      I3 => threshold_high_i(9),
      O => \FSM_sequential_state[1]_i_15_n_0\
    );
\FSM_sequential_state[1]_i_16\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => threshold_high_i(14),
      I1 => threshold_high_i(15),
      O => \FSM_sequential_state[1]_i_16_n_0\
    );
\FSM_sequential_state[1]_i_17\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => threshold_high_i(12),
      I1 => threshold_high_i(13),
      O => \FSM_sequential_state[1]_i_17_n_0\
    );
\FSM_sequential_state[1]_i_18\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => threshold_high_i(10),
      I1 => data_i(10),
      I2 => threshold_high_i(11),
      I3 => data_i(11),
      O => \FSM_sequential_state[1]_i_18_n_0\
    );
\FSM_sequential_state[1]_i_19\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => threshold_high_i(8),
      I1 => data_i(8),
      I2 => threshold_high_i(9),
      I3 => data_i(9),
      O => \FSM_sequential_state[1]_i_19_n_0\
    );
\FSM_sequential_state[1]_i_20\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => data_i(6),
      I1 => threshold_high_i(6),
      I2 => threshold_high_i(7),
      I3 => data_i(7),
      O => \FSM_sequential_state[1]_i_20_n_0\
    );
\FSM_sequential_state[1]_i_21\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => data_i(4),
      I1 => threshold_high_i(4),
      I2 => threshold_high_i(5),
      I3 => data_i(5),
      O => \FSM_sequential_state[1]_i_21_n_0\
    );
\FSM_sequential_state[1]_i_22\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => data_i(2),
      I1 => threshold_high_i(2),
      I2 => threshold_high_i(3),
      I3 => data_i(3),
      O => \FSM_sequential_state[1]_i_22_n_0\
    );
\FSM_sequential_state[1]_i_23\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => data_i(0),
      I1 => threshold_high_i(0),
      I2 => threshold_high_i(1),
      I3 => data_i(1),
      O => \FSM_sequential_state[1]_i_23_n_0\
    );
\FSM_sequential_state[1]_i_24\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => data_i(6),
      I1 => threshold_high_i(6),
      I2 => data_i(7),
      I3 => threshold_high_i(7),
      O => \FSM_sequential_state[1]_i_24_n_0\
    );
\FSM_sequential_state[1]_i_25\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => data_i(4),
      I1 => threshold_high_i(4),
      I2 => data_i(5),
      I3 => threshold_high_i(5),
      O => \FSM_sequential_state[1]_i_25_n_0\
    );
\FSM_sequential_state[1]_i_26\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => data_i(2),
      I1 => threshold_high_i(2),
      I2 => data_i(3),
      I3 => threshold_high_i(3),
      O => \FSM_sequential_state[1]_i_26_n_0\
    );
\FSM_sequential_state[1]_i_27\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => data_i(0),
      I1 => threshold_high_i(0),
      I2 => data_i(1),
      I3 => threshold_high_i(1),
      O => \FSM_sequential_state[1]_i_27_n_0\
    );
\FSM_sequential_state[1]_i_28\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => threshold_high_i(6),
      I1 => data_i(6),
      I2 => data_i(7),
      I3 => threshold_high_i(7),
      O => \FSM_sequential_state[1]_i_28_n_0\
    );
\FSM_sequential_state[1]_i_29\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => threshold_high_i(4),
      I1 => data_i(4),
      I2 => data_i(5),
      I3 => threshold_high_i(5),
      O => \FSM_sequential_state[1]_i_29_n_0\
    );
\FSM_sequential_state[1]_i_30\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => threshold_high_i(2),
      I1 => data_i(2),
      I2 => data_i(3),
      I3 => threshold_high_i(3),
      O => \FSM_sequential_state[1]_i_30_n_0\
    );
\FSM_sequential_state[1]_i_31\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => threshold_high_i(0),
      I1 => data_i(0),
      I2 => data_i(1),
      I3 => threshold_high_i(1),
      O => \FSM_sequential_state[1]_i_31_n_0\
    );
\FSM_sequential_state[1]_i_32\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => threshold_high_i(6),
      I1 => data_i(6),
      I2 => threshold_high_i(7),
      I3 => data_i(7),
      O => \FSM_sequential_state[1]_i_32_n_0\
    );
\FSM_sequential_state[1]_i_33\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => threshold_high_i(4),
      I1 => data_i(4),
      I2 => threshold_high_i(5),
      I3 => data_i(5),
      O => \FSM_sequential_state[1]_i_33_n_0\
    );
\FSM_sequential_state[1]_i_34\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => threshold_high_i(2),
      I1 => data_i(2),
      I2 => threshold_high_i(3),
      I3 => data_i(3),
      O => \FSM_sequential_state[1]_i_34_n_0\
    );
\FSM_sequential_state[1]_i_35\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => threshold_high_i(0),
      I1 => data_i(0),
      I2 => threshold_high_i(1),
      I3 => data_i(1),
      O => \FSM_sequential_state[1]_i_35_n_0\
    );
\FSM_sequential_state[1]_i_5\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => data_i(10),
      I1 => threshold_high_i(10),
      I2 => threshold_high_i(11),
      I3 => data_i(11),
      O => \FSM_sequential_state[1]_i_5_n_0\
    );
\FSM_sequential_state[1]_i_6\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => data_i(8),
      I1 => threshold_high_i(8),
      I2 => threshold_high_i(9),
      I3 => data_i(9),
      O => \FSM_sequential_state[1]_i_6_n_0\
    );
\FSM_sequential_state[1]_i_7\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => threshold_high_i(14),
      I1 => threshold_high_i(15),
      O => \FSM_sequential_state[1]_i_7_n_0\
    );
\FSM_sequential_state[1]_i_8\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => threshold_high_i(12),
      I1 => threshold_high_i(13),
      O => \FSM_sequential_state[1]_i_8_n_0\
    );
\FSM_sequential_state[1]_i_9\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => data_i(10),
      I1 => threshold_high_i(10),
      I2 => data_i(11),
      I3 => threshold_high_i(11),
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
      R => '0'
    );
\FSM_sequential_state_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_i,
      CE => '1',
      D => \FSM_sequential_state[1]_i_1_n_0\,
      Q => state(1),
      R => '0'
    );
\FSM_sequential_state_reg[1]_i_11\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \FSM_sequential_state_reg[1]_i_11_n_0\,
      CO(2) => \FSM_sequential_state_reg[1]_i_11_n_1\,
      CO(1) => \FSM_sequential_state_reg[1]_i_11_n_2\,
      CO(0) => \FSM_sequential_state_reg[1]_i_11_n_3\,
      CYINIT => '0',
      DI(3) => \FSM_sequential_state[1]_i_28_n_0\,
      DI(2) => \FSM_sequential_state[1]_i_29_n_0\,
      DI(1) => \FSM_sequential_state[1]_i_30_n_0\,
      DI(0) => \FSM_sequential_state[1]_i_31_n_0\,
      O(3 downto 0) => \NLW_FSM_sequential_state_reg[1]_i_11_O_UNCONNECTED\(3 downto 0),
      S(3) => \FSM_sequential_state[1]_i_32_n_0\,
      S(2) => \FSM_sequential_state[1]_i_33_n_0\,
      S(1) => \FSM_sequential_state[1]_i_34_n_0\,
      S(0) => \FSM_sequential_state[1]_i_35_n_0\
    );
\FSM_sequential_state_reg[1]_i_2\: unisim.vcomponents.CARRY4
     port map (
      CI => \FSM_sequential_state_reg[1]_i_4_n_0\,
      CO(3) => gtOp,
      CO(2) => \FSM_sequential_state_reg[1]_i_2_n_1\,
      CO(1) => \FSM_sequential_state_reg[1]_i_2_n_2\,
      CO(0) => \FSM_sequential_state_reg[1]_i_2_n_3\,
      CYINIT => '0',
      DI(3) => threshold_high_i(15),
      DI(2) => '0',
      DI(1) => \FSM_sequential_state[1]_i_5_n_0\,
      DI(0) => \FSM_sequential_state[1]_i_6_n_0\,
      O(3 downto 0) => \NLW_FSM_sequential_state_reg[1]_i_2_O_UNCONNECTED\(3 downto 0),
      S(3) => \FSM_sequential_state[1]_i_7_n_0\,
      S(2) => \FSM_sequential_state[1]_i_8_n_0\,
      S(1) => \FSM_sequential_state[1]_i_9_n_0\,
      S(0) => \FSM_sequential_state[1]_i_10_n_0\
    );
\FSM_sequential_state_reg[1]_i_3\: unisim.vcomponents.CARRY4
     port map (
      CI => \FSM_sequential_state_reg[1]_i_11_n_0\,
      CO(3) => ltOp,
      CO(2) => \FSM_sequential_state_reg[1]_i_3_n_1\,
      CO(1) => \FSM_sequential_state_reg[1]_i_3_n_2\,
      CO(0) => \FSM_sequential_state_reg[1]_i_3_n_3\,
      CYINIT => '0',
      DI(3) => \FSM_sequential_state[1]_i_12_n_0\,
      DI(2) => \FSM_sequential_state[1]_i_13_n_0\,
      DI(1) => \FSM_sequential_state[1]_i_14_n_0\,
      DI(0) => \FSM_sequential_state[1]_i_15_n_0\,
      O(3 downto 0) => \NLW_FSM_sequential_state_reg[1]_i_3_O_UNCONNECTED\(3 downto 0),
      S(3) => \FSM_sequential_state[1]_i_16_n_0\,
      S(2) => \FSM_sequential_state[1]_i_17_n_0\,
      S(1) => \FSM_sequential_state[1]_i_18_n_0\,
      S(0) => \FSM_sequential_state[1]_i_19_n_0\
    );
\FSM_sequential_state_reg[1]_i_4\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \FSM_sequential_state_reg[1]_i_4_n_0\,
      CO(2) => \FSM_sequential_state_reg[1]_i_4_n_1\,
      CO(1) => \FSM_sequential_state_reg[1]_i_4_n_2\,
      CO(0) => \FSM_sequential_state_reg[1]_i_4_n_3\,
      CYINIT => '0',
      DI(3) => \FSM_sequential_state[1]_i_20_n_0\,
      DI(2) => \FSM_sequential_state[1]_i_21_n_0\,
      DI(1) => \FSM_sequential_state[1]_i_22_n_0\,
      DI(0) => \FSM_sequential_state[1]_i_23_n_0\,
      O(3 downto 0) => \NLW_FSM_sequential_state_reg[1]_i_4_O_UNCONNECTED\(3 downto 0),
      S(3) => \FSM_sequential_state[1]_i_24_n_0\,
      S(2) => \FSM_sequential_state[1]_i_25_n_0\,
      S(1) => \FSM_sequential_state[1]_i_26_n_0\,
      S(0) => \FSM_sequential_state[1]_i_27_n_0\
    );
arrival_flag_reg_reg: unisim.vcomponents.LDCP
     port map (
      CLR => arrival_flag_reg_reg_i_2_n_0,
      D => '0',
      G => arrival_flag_reg,
      PRE => arrival_flag_reg_reg_i_3_n_0,
      Q => arrival_flag_o
    );
arrival_flag_reg_reg_i_1: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => state(0),
      I1 => state(1),
      O => arrival_flag_reg
    );
arrival_flag_reg_reg_i_2: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => state(1),
      O => arrival_flag_reg_reg_i_2_n_0
    );
arrival_flag_reg_reg_i_3: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => state(1),
      I1 => state(0),
      O => arrival_flag_reg_reg_i_3_n_0
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity dpp_block_design_DPP_module_top_0_0_0_fir_derivative_0 is
  port (
    clk_i : in STD_LOGIC;
    rst_i : in STD_LOGIC;
    ena_i : in STD_LOGIC;
    data_i : in STD_LOGIC_VECTOR ( 11 downto 0 );
    der_sign : out STD_LOGIC;
    data_o : out STD_LOGIC_VECTOR ( 15 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of dpp_block_design_DPP_module_top_0_0_0_fir_derivative_0 : entity is "fir_derivative_0";
  attribute d_width : integer;
  attribute d_width of dpp_block_design_DPP_module_top_0_0_0_fir_derivative_0 : entity is 12;
end dpp_block_design_DPP_module_top_0_0_0_fir_derivative_0;

architecture STRUCTURE of dpp_block_design_DPP_module_top_0_0_0_fir_derivative_0 is
  signal \<const0>\ : STD_LOGIC;
  signal \^data_o\ : STD_LOGIC_VECTOR ( 11 downto 0 );
  signal der_sign_i_10_n_0 : STD_LOGIC;
  signal der_sign_i_11_n_0 : STD_LOGIC;
  signal der_sign_i_12_n_0 : STD_LOGIC;
  signal der_sign_i_13_n_0 : STD_LOGIC;
  signal der_sign_i_14_n_0 : STD_LOGIC;
  signal der_sign_i_15_n_0 : STD_LOGIC;
  signal der_sign_i_1_n_0 : STD_LOGIC;
  signal der_sign_i_4_n_0 : STD_LOGIC;
  signal der_sign_i_5_n_0 : STD_LOGIC;
  signal der_sign_i_6_n_0 : STD_LOGIC;
  signal der_sign_i_7_n_0 : STD_LOGIC;
  signal der_sign_i_8_n_0 : STD_LOGIC;
  signal der_sign_i_9_n_0 : STD_LOGIC;
  signal der_sign_reg_i_2_n_3 : STD_LOGIC;
  signal der_sign_reg_i_3_n_0 : STD_LOGIC;
  signal der_sign_reg_i_3_n_1 : STD_LOGIC;
  signal der_sign_reg_i_3_n_2 : STD_LOGIC;
  signal der_sign_reg_i_3_n_3 : STD_LOGIC;
  signal din_1 : STD_LOGIC_VECTOR ( 11 downto 0 );
  signal din_2 : STD_LOGIC_VECTOR ( 11 downto 0 );
  signal doutint0_in : STD_LOGIC_VECTOR ( 11 downto 0 );
  signal \doutint[11]_i_5_n_0\ : STD_LOGIC;
  signal \doutint[11]_i_6_n_0\ : STD_LOGIC;
  signal \doutint[11]_i_7_n_0\ : STD_LOGIC;
  signal \doutint[11]_i_8_n_0\ : STD_LOGIC;
  signal \doutint[3]_i_6_n_0\ : STD_LOGIC;
  signal \doutint[3]_i_7_n_0\ : STD_LOGIC;
  signal \doutint[3]_i_8_n_0\ : STD_LOGIC;
  signal \doutint[3]_i_9_n_0\ : STD_LOGIC;
  signal \doutint[7]_i_6_n_0\ : STD_LOGIC;
  signal \doutint[7]_i_7_n_0\ : STD_LOGIC;
  signal \doutint[7]_i_8_n_0\ : STD_LOGIC;
  signal \doutint[7]_i_9_n_0\ : STD_LOGIC;
  signal \doutint_reg[11]_i_1_n_1\ : STD_LOGIC;
  signal \doutint_reg[11]_i_1_n_2\ : STD_LOGIC;
  signal \doutint_reg[11]_i_1_n_3\ : STD_LOGIC;
  signal \doutint_reg[3]_i_1_n_0\ : STD_LOGIC;
  signal \doutint_reg[3]_i_1_n_1\ : STD_LOGIC;
  signal \doutint_reg[3]_i_1_n_2\ : STD_LOGIC;
  signal \doutint_reg[3]_i_1_n_3\ : STD_LOGIC;
  signal \doutint_reg[7]_i_1_n_0\ : STD_LOGIC;
  signal \doutint_reg[7]_i_1_n_1\ : STD_LOGIC;
  signal \doutint_reg[7]_i_1_n_2\ : STD_LOGIC;
  signal \doutint_reg[7]_i_1_n_3\ : STD_LOGIC;
  signal gtOp : STD_LOGIC;
  signal p_1_in : STD_LOGIC_VECTOR ( 10 downto 0 );
  signal NLW_der_sign_reg_i_2_CO_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 2 );
  signal NLW_der_sign_reg_i_2_O_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_der_sign_reg_i_3_O_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_doutint_reg[11]_i_1_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  attribute COMPARATOR_THRESHOLD : integer;
  attribute COMPARATOR_THRESHOLD of der_sign_reg_i_2 : label is 11;
  attribute COMPARATOR_THRESHOLD of der_sign_reg_i_3 : label is 11;
  attribute ADDER_THRESHOLD : integer;
  attribute ADDER_THRESHOLD of \doutint_reg[11]_i_1\ : label is 35;
  attribute METHODOLOGY_DRC_VIOS : string;
  attribute METHODOLOGY_DRC_VIOS of \doutint_reg[11]_i_1\ : label is "{SYNTH-8 {cell *THIS*}}";
  attribute ADDER_THRESHOLD of \doutint_reg[3]_i_1\ : label is 35;
  attribute METHODOLOGY_DRC_VIOS of \doutint_reg[3]_i_1\ : label is "{SYNTH-8 {cell *THIS*}}";
  attribute ADDER_THRESHOLD of \doutint_reg[7]_i_1\ : label is 35;
  attribute METHODOLOGY_DRC_VIOS of \doutint_reg[7]_i_1\ : label is "{SYNTH-8 {cell *THIS*}}";
begin
  data_o(15) <= \<const0>\;
  data_o(14) <= \<const0>\;
  data_o(13) <= \<const0>\;
  data_o(12) <= \<const0>\;
  data_o(11 downto 0) <= \^data_o\(11 downto 0);
GND: unisim.vcomponents.GND
     port map (
      G => \<const0>\
    );
der_sign_i_1: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => ena_i,
      I1 => rst_i,
      O => der_sign_i_1_n_0
    );
der_sign_i_10: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => din_1(2),
      I1 => din_2(2),
      I2 => din_2(3),
      I3 => din_1(3),
      O => der_sign_i_10_n_0
    );
der_sign_i_11: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => din_1(0),
      I1 => din_2(0),
      I2 => din_2(1),
      I3 => din_1(1),
      O => der_sign_i_11_n_0
    );
der_sign_i_12: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => din_1(6),
      I1 => din_2(6),
      I2 => din_1(7),
      I3 => din_2(7),
      O => der_sign_i_12_n_0
    );
der_sign_i_13: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => din_1(4),
      I1 => din_2(4),
      I2 => din_1(5),
      I3 => din_2(5),
      O => der_sign_i_13_n_0
    );
der_sign_i_14: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => din_1(2),
      I1 => din_2(2),
      I2 => din_1(3),
      I3 => din_2(3),
      O => der_sign_i_14_n_0
    );
der_sign_i_15: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => din_1(0),
      I1 => din_2(0),
      I2 => din_1(1),
      I3 => din_2(1),
      O => der_sign_i_15_n_0
    );
der_sign_i_4: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => din_1(10),
      I1 => din_2(10),
      I2 => din_2(11),
      I3 => din_1(11),
      O => der_sign_i_4_n_0
    );
der_sign_i_5: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => din_1(8),
      I1 => din_2(8),
      I2 => din_2(9),
      I3 => din_1(9),
      O => der_sign_i_5_n_0
    );
der_sign_i_6: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => din_1(10),
      I1 => din_2(10),
      I2 => din_1(11),
      I3 => din_2(11),
      O => der_sign_i_6_n_0
    );
der_sign_i_7: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => din_1(8),
      I1 => din_2(8),
      I2 => din_1(9),
      I3 => din_2(9),
      O => der_sign_i_7_n_0
    );
der_sign_i_8: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => din_1(6),
      I1 => din_2(6),
      I2 => din_2(7),
      I3 => din_1(7),
      O => der_sign_i_8_n_0
    );
der_sign_i_9: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => din_1(4),
      I1 => din_2(4),
      I2 => din_2(5),
      I3 => din_1(5),
      O => der_sign_i_9_n_0
    );
der_sign_reg: unisim.vcomponents.FDRE
     port map (
      C => clk_i,
      CE => der_sign_i_1_n_0,
      D => gtOp,
      Q => der_sign,
      R => '0'
    );
der_sign_reg_i_2: unisim.vcomponents.CARRY4
     port map (
      CI => der_sign_reg_i_3_n_0,
      CO(3 downto 2) => NLW_der_sign_reg_i_2_CO_UNCONNECTED(3 downto 2),
      CO(1) => gtOp,
      CO(0) => der_sign_reg_i_2_n_3,
      CYINIT => '0',
      DI(3 downto 2) => B"00",
      DI(1) => der_sign_i_4_n_0,
      DI(0) => der_sign_i_5_n_0,
      O(3 downto 0) => NLW_der_sign_reg_i_2_O_UNCONNECTED(3 downto 0),
      S(3 downto 2) => B"00",
      S(1) => der_sign_i_6_n_0,
      S(0) => der_sign_i_7_n_0
    );
der_sign_reg_i_3: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => der_sign_reg_i_3_n_0,
      CO(2) => der_sign_reg_i_3_n_1,
      CO(1) => der_sign_reg_i_3_n_2,
      CO(0) => der_sign_reg_i_3_n_3,
      CYINIT => '0',
      DI(3) => der_sign_i_8_n_0,
      DI(2) => der_sign_i_9_n_0,
      DI(1) => der_sign_i_10_n_0,
      DI(0) => der_sign_i_11_n_0,
      O(3 downto 0) => NLW_der_sign_reg_i_3_O_UNCONNECTED(3 downto 0),
      S(3) => der_sign_i_12_n_0,
      S(2) => der_sign_i_13_n_0,
      S(1) => der_sign_i_14_n_0,
      S(0) => der_sign_i_15_n_0
    );
\din_1_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => clk_i,
      CE => ena_i,
      D => data_i(0),
      Q => din_1(0),
      R => rst_i
    );
\din_1_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => clk_i,
      CE => ena_i,
      D => data_i(10),
      Q => din_1(10),
      R => rst_i
    );
\din_1_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => clk_i,
      CE => ena_i,
      D => data_i(11),
      Q => din_1(11),
      R => rst_i
    );
\din_1_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => clk_i,
      CE => ena_i,
      D => data_i(1),
      Q => din_1(1),
      R => rst_i
    );
\din_1_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => clk_i,
      CE => ena_i,
      D => data_i(2),
      Q => din_1(2),
      R => rst_i
    );
\din_1_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => clk_i,
      CE => ena_i,
      D => data_i(3),
      Q => din_1(3),
      R => rst_i
    );
\din_1_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => clk_i,
      CE => ena_i,
      D => data_i(4),
      Q => din_1(4),
      R => rst_i
    );
\din_1_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => clk_i,
      CE => ena_i,
      D => data_i(5),
      Q => din_1(5),
      R => rst_i
    );
\din_1_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => clk_i,
      CE => ena_i,
      D => data_i(6),
      Q => din_1(6),
      R => rst_i
    );
\din_1_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => clk_i,
      CE => ena_i,
      D => data_i(7),
      Q => din_1(7),
      R => rst_i
    );
\din_1_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => clk_i,
      CE => ena_i,
      D => data_i(8),
      Q => din_1(8),
      R => rst_i
    );
\din_1_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => clk_i,
      CE => ena_i,
      D => data_i(9),
      Q => din_1(9),
      R => rst_i
    );
\din_2_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => clk_i,
      CE => ena_i,
      D => din_1(0),
      Q => din_2(0),
      R => rst_i
    );
\din_2_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => clk_i,
      CE => ena_i,
      D => din_1(10),
      Q => din_2(10),
      R => rst_i
    );
\din_2_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => clk_i,
      CE => ena_i,
      D => din_1(11),
      Q => din_2(11),
      R => rst_i
    );
\din_2_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => clk_i,
      CE => ena_i,
      D => din_1(1),
      Q => din_2(1),
      R => rst_i
    );
\din_2_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => clk_i,
      CE => ena_i,
      D => din_1(2),
      Q => din_2(2),
      R => rst_i
    );
\din_2_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => clk_i,
      CE => ena_i,
      D => din_1(3),
      Q => din_2(3),
      R => rst_i
    );
\din_2_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => clk_i,
      CE => ena_i,
      D => din_1(4),
      Q => din_2(4),
      R => rst_i
    );
\din_2_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => clk_i,
      CE => ena_i,
      D => din_1(5),
      Q => din_2(5),
      R => rst_i
    );
\din_2_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => clk_i,
      CE => ena_i,
      D => din_1(6),
      Q => din_2(6),
      R => rst_i
    );
\din_2_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => clk_i,
      CE => ena_i,
      D => din_1(7),
      Q => din_2(7),
      R => rst_i
    );
\din_2_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => clk_i,
      CE => ena_i,
      D => din_1(8),
      Q => din_2(8),
      R => rst_i
    );
\din_2_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => clk_i,
      CE => ena_i,
      D => din_1(9),
      Q => din_2(9),
      R => rst_i
    );
\doutint[11]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"53"
    )
        port map (
      I0 => din_2(10),
      I1 => din_1(10),
      I2 => gtOp,
      O => p_1_in(10)
    );
\doutint[11]_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"53"
    )
        port map (
      I0 => din_2(9),
      I1 => din_1(9),
      I2 => gtOp,
      O => p_1_in(9)
    );
\doutint[11]_i_4\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"53"
    )
        port map (
      I0 => din_2(8),
      I1 => din_1(8),
      I2 => gtOp,
      O => p_1_in(8)
    );
\doutint[11]_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => din_2(11),
      I1 => din_1(11),
      O => \doutint[11]_i_5_n_0\
    );
\doutint[11]_i_6\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => din_2(10),
      I1 => din_1(10),
      O => \doutint[11]_i_6_n_0\
    );
\doutint[11]_i_7\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => din_2(9),
      I1 => din_1(9),
      O => \doutint[11]_i_7_n_0\
    );
\doutint[11]_i_8\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => din_2(8),
      I1 => din_1(8),
      O => \doutint[11]_i_8_n_0\
    );
\doutint[3]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"53"
    )
        port map (
      I0 => din_2(3),
      I1 => din_1(3),
      I2 => gtOp,
      O => p_1_in(3)
    );
\doutint[3]_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"53"
    )
        port map (
      I0 => din_2(2),
      I1 => din_1(2),
      I2 => gtOp,
      O => p_1_in(2)
    );
\doutint[3]_i_4\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"53"
    )
        port map (
      I0 => din_2(1),
      I1 => din_1(1),
      I2 => gtOp,
      O => p_1_in(1)
    );
\doutint[3]_i_5\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"53"
    )
        port map (
      I0 => din_2(0),
      I1 => din_1(0),
      I2 => gtOp,
      O => p_1_in(0)
    );
\doutint[3]_i_6\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => din_2(3),
      I1 => din_1(3),
      O => \doutint[3]_i_6_n_0\
    );
\doutint[3]_i_7\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => din_2(2),
      I1 => din_1(2),
      O => \doutint[3]_i_7_n_0\
    );
\doutint[3]_i_8\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => din_2(1),
      I1 => din_1(1),
      O => \doutint[3]_i_8_n_0\
    );
\doutint[3]_i_9\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => din_2(0),
      I1 => din_1(0),
      O => \doutint[3]_i_9_n_0\
    );
\doutint[7]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"53"
    )
        port map (
      I0 => din_2(7),
      I1 => din_1(7),
      I2 => gtOp,
      O => p_1_in(7)
    );
\doutint[7]_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"53"
    )
        port map (
      I0 => din_2(6),
      I1 => din_1(6),
      I2 => gtOp,
      O => p_1_in(6)
    );
\doutint[7]_i_4\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"53"
    )
        port map (
      I0 => din_2(5),
      I1 => din_1(5),
      I2 => gtOp,
      O => p_1_in(5)
    );
\doutint[7]_i_5\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"53"
    )
        port map (
      I0 => din_2(4),
      I1 => din_1(4),
      I2 => gtOp,
      O => p_1_in(4)
    );
\doutint[7]_i_6\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => din_2(7),
      I1 => din_1(7),
      O => \doutint[7]_i_6_n_0\
    );
\doutint[7]_i_7\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => din_2(6),
      I1 => din_1(6),
      O => \doutint[7]_i_7_n_0\
    );
\doutint[7]_i_8\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => din_2(5),
      I1 => din_1(5),
      O => \doutint[7]_i_8_n_0\
    );
\doutint[7]_i_9\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => din_2(4),
      I1 => din_1(4),
      O => \doutint[7]_i_9_n_0\
    );
\doutint_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => clk_i,
      CE => der_sign_i_1_n_0,
      D => doutint0_in(0),
      Q => \^data_o\(0),
      R => '0'
    );
\doutint_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => clk_i,
      CE => der_sign_i_1_n_0,
      D => doutint0_in(10),
      Q => \^data_o\(10),
      R => '0'
    );
\doutint_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => clk_i,
      CE => der_sign_i_1_n_0,
      D => doutint0_in(11),
      Q => \^data_o\(11),
      R => '0'
    );
\doutint_reg[11]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \doutint_reg[7]_i_1_n_0\,
      CO(3) => \NLW_doutint_reg[11]_i_1_CO_UNCONNECTED\(3),
      CO(2) => \doutint_reg[11]_i_1_n_1\,
      CO(1) => \doutint_reg[11]_i_1_n_2\,
      CO(0) => \doutint_reg[11]_i_1_n_3\,
      CYINIT => '0',
      DI(3) => '0',
      DI(2 downto 0) => p_1_in(10 downto 8),
      O(3 downto 0) => doutint0_in(11 downto 8),
      S(3) => \doutint[11]_i_5_n_0\,
      S(2) => \doutint[11]_i_6_n_0\,
      S(1) => \doutint[11]_i_7_n_0\,
      S(0) => \doutint[11]_i_8_n_0\
    );
\doutint_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => clk_i,
      CE => der_sign_i_1_n_0,
      D => doutint0_in(1),
      Q => \^data_o\(1),
      R => '0'
    );
\doutint_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => clk_i,
      CE => der_sign_i_1_n_0,
      D => doutint0_in(2),
      Q => \^data_o\(2),
      R => '0'
    );
\doutint_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => clk_i,
      CE => der_sign_i_1_n_0,
      D => doutint0_in(3),
      Q => \^data_o\(3),
      R => '0'
    );
\doutint_reg[3]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \doutint_reg[3]_i_1_n_0\,
      CO(2) => \doutint_reg[3]_i_1_n_1\,
      CO(1) => \doutint_reg[3]_i_1_n_2\,
      CO(0) => \doutint_reg[3]_i_1_n_3\,
      CYINIT => '1',
      DI(3 downto 0) => p_1_in(3 downto 0),
      O(3 downto 0) => doutint0_in(3 downto 0),
      S(3) => \doutint[3]_i_6_n_0\,
      S(2) => \doutint[3]_i_7_n_0\,
      S(1) => \doutint[3]_i_8_n_0\,
      S(0) => \doutint[3]_i_9_n_0\
    );
\doutint_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => clk_i,
      CE => der_sign_i_1_n_0,
      D => doutint0_in(4),
      Q => \^data_o\(4),
      R => '0'
    );
\doutint_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => clk_i,
      CE => der_sign_i_1_n_0,
      D => doutint0_in(5),
      Q => \^data_o\(5),
      R => '0'
    );
\doutint_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => clk_i,
      CE => der_sign_i_1_n_0,
      D => doutint0_in(6),
      Q => \^data_o\(6),
      R => '0'
    );
\doutint_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => clk_i,
      CE => der_sign_i_1_n_0,
      D => doutint0_in(7),
      Q => \^data_o\(7),
      R => '0'
    );
\doutint_reg[7]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \doutint_reg[3]_i_1_n_0\,
      CO(3) => \doutint_reg[7]_i_1_n_0\,
      CO(2) => \doutint_reg[7]_i_1_n_1\,
      CO(1) => \doutint_reg[7]_i_1_n_2\,
      CO(0) => \doutint_reg[7]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => p_1_in(7 downto 4),
      O(3 downto 0) => doutint0_in(7 downto 4),
      S(3) => \doutint[7]_i_6_n_0\,
      S(2) => \doutint[7]_i_7_n_0\,
      S(1) => \doutint[7]_i_8_n_0\,
      S(0) => \doutint[7]_i_9_n_0\
    );
\doutint_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => clk_i,
      CE => der_sign_i_1_n_0,
      D => doutint0_in(8),
      Q => \^data_o\(8),
      R => '0'
    );
\doutint_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => clk_i,
      CE => der_sign_i_1_n_0,
      D => doutint0_in(9),
      Q => \^data_o\(9),
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity dpp_block_design_DPP_module_top_0_0_0_output_mux is
  port (
    op_mode_i : in STD_LOGIC_VECTOR ( 1 downto 0 );
    fifo_wr_en_i : in STD_LOGIC;
    FIR_data_i : in STD_LOGIC_VECTOR ( 15 downto 0 );
    ADC_data_i : in STD_LOGIC_VECTOR ( 11 downto 0 );
    FIR_deriv_i : in STD_LOGIC_VECTOR ( 15 downto 0 );
    fifo_wr_en_o : out STD_LOGIC;
    data_o : out STD_LOGIC_VECTOR ( 15 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of dpp_block_design_DPP_module_top_0_0_0_output_mux : entity is "output_mux";
end dpp_block_design_DPP_module_top_0_0_0_output_mux;

architecture STRUCTURE of dpp_block_design_DPP_module_top_0_0_0_output_mux is
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \data_o[12]_INST_0\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \data_o[13]_INST_0\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \data_o[14]_INST_0\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of fifo_wr_en_o_INST_0 : label is "soft_lutpair0";
begin
\data_o[0]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8B8FF00"
    )
        port map (
      I0 => FIR_deriv_i(0),
      I1 => op_mode_i(1),
      I2 => ADC_data_i(0),
      I3 => FIR_data_i(0),
      I4 => op_mode_i(0),
      O => data_o(0)
    );
\data_o[10]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8B8FF00"
    )
        port map (
      I0 => FIR_deriv_i(10),
      I1 => op_mode_i(1),
      I2 => ADC_data_i(10),
      I3 => FIR_data_i(10),
      I4 => op_mode_i(0),
      O => data_o(10)
    );
\data_o[11]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8B8FF00"
    )
        port map (
      I0 => FIR_deriv_i(11),
      I1 => op_mode_i(1),
      I2 => ADC_data_i(11),
      I3 => FIR_data_i(11),
      I4 => op_mode_i(0),
      O => data_o(11)
    );
\data_o[12]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => FIR_data_i(12),
      I1 => op_mode_i(0),
      O => data_o(12)
    );
\data_o[13]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => FIR_data_i(13),
      I1 => op_mode_i(0),
      O => data_o(13)
    );
\data_o[14]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => FIR_data_i(14),
      I1 => op_mode_i(0),
      O => data_o(14)
    );
\data_o[15]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => FIR_data_i(15),
      I1 => op_mode_i(0),
      O => data_o(15)
    );
\data_o[1]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8B8FF00"
    )
        port map (
      I0 => FIR_deriv_i(1),
      I1 => op_mode_i(1),
      I2 => ADC_data_i(1),
      I3 => FIR_data_i(1),
      I4 => op_mode_i(0),
      O => data_o(1)
    );
\data_o[2]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8B8FF00"
    )
        port map (
      I0 => FIR_deriv_i(2),
      I1 => op_mode_i(1),
      I2 => ADC_data_i(2),
      I3 => FIR_data_i(2),
      I4 => op_mode_i(0),
      O => data_o(2)
    );
\data_o[3]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8B8FF00"
    )
        port map (
      I0 => FIR_deriv_i(3),
      I1 => op_mode_i(1),
      I2 => ADC_data_i(3),
      I3 => FIR_data_i(3),
      I4 => op_mode_i(0),
      O => data_o(3)
    );
\data_o[4]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8B8FF00"
    )
        port map (
      I0 => FIR_deriv_i(4),
      I1 => op_mode_i(1),
      I2 => ADC_data_i(4),
      I3 => FIR_data_i(4),
      I4 => op_mode_i(0),
      O => data_o(4)
    );
\data_o[5]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8B8FF00"
    )
        port map (
      I0 => FIR_deriv_i(5),
      I1 => op_mode_i(1),
      I2 => ADC_data_i(5),
      I3 => FIR_data_i(5),
      I4 => op_mode_i(0),
      O => data_o(5)
    );
\data_o[6]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8B8FF00"
    )
        port map (
      I0 => FIR_deriv_i(6),
      I1 => op_mode_i(1),
      I2 => ADC_data_i(6),
      I3 => FIR_data_i(6),
      I4 => op_mode_i(0),
      O => data_o(6)
    );
\data_o[7]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8B8FF00"
    )
        port map (
      I0 => FIR_deriv_i(7),
      I1 => op_mode_i(1),
      I2 => ADC_data_i(7),
      I3 => FIR_data_i(7),
      I4 => op_mode_i(0),
      O => data_o(7)
    );
\data_o[8]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8B8FF00"
    )
        port map (
      I0 => FIR_deriv_i(8),
      I1 => op_mode_i(1),
      I2 => ADC_data_i(8),
      I3 => FIR_data_i(8),
      I4 => op_mode_i(0),
      O => data_o(8)
    );
\data_o[9]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8B8FF00"
    )
        port map (
      I0 => FIR_deriv_i(9),
      I1 => op_mode_i(1),
      I2 => ADC_data_i(9),
      I3 => FIR_data_i(9),
      I4 => op_mode_i(0),
      O => data_o(9)
    );
fifo_wr_en_o_INST_0: unisim.vcomponents.LUT3
    generic map(
      INIT => X"FE"
    )
        port map (
      I0 => op_mode_i(1),
      I1 => op_mode_i(0),
      I2 => fifo_wr_en_i,
      O => fifo_wr_en_o
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity dpp_block_design_DPP_module_top_0_0_0_DPP_module_top_0 is
  port (
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
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of dpp_block_design_DPP_module_top_0_0_0_DPP_module_top_0 : entity is "DPP_module_top_0";
  attribute keep_hierarchy : string;
  attribute keep_hierarchy of dpp_block_design_DPP_module_top_0_0_0_DPP_module_top_0 : entity is "soft";
end dpp_block_design_DPP_module_top_0_0_0_DPP_module_top_0;

architecture STRUCTURE of dpp_block_design_DPP_module_top_0_0_0_DPP_module_top_0 is
  signal FIFO_wr_en : STD_LOGIC;
  attribute MARK_DEBUG : boolean;
  attribute MARK_DEBUG of FIFO_wr_en : signal is std.standard.true;
  signal FIR_Derivative_data : STD_LOGIC_VECTOR ( 11 downto 0 );
  signal FIR_data_out : STD_LOGIC_VECTOR ( 15 downto 0 );
  attribute MARK_DEBUG of FIR_data_out : signal is std.standard.true;
  signal ddly_0 : STD_LOGIC_VECTOR ( 11 downto 0 );
  signal fifo_wr_en_mux : STD_LOGIC;
  attribute MARK_DEBUG of fifo_wr_en_mux : signal is std.standard.true;
  signal photon_arrival : STD_LOGIC;
  attribute MARK_DEBUG of photon_arrival : signal is std.standard.true;
  signal read_ena : STD_LOGIC;
  attribute MARK_DEBUG of read_ena : signal is std.standard.true;
  signal valid_der : STD_LOGIC;
  signal wren_dly : STD_LOGIC;
  attribute MARK_DEBUG of wren_dly : signal is std.standard.true;
  signal NLW_fir_derivative_data_o_UNCONNECTED : STD_LOGIC_VECTOR ( 15 downto 12 );
  attribute KEEP_HIERARCHY of edge_detector : label is "soft";
  attribute KEEP_HIERARCHY of fir_derivative : label is "soft";
  attribute d_width : integer;
  attribute d_width of fir_derivative : label is 12;
  attribute KEEP_HIERARCHY of my_op_mode_dec : label is "soft";
  attribute KEEP : string;
  attribute KEEP of wren_dly_reg : label is "yes";
  attribute mark_debug_string : string;
  attribute mark_debug_string of wren_dly_reg : label is "true";
  attribute mark_debug_string of valid_i : signal is "true";
  attribute mark_debug_string of ADC_data_i : signal is "true";
  attribute mark_debug_string of op_mode_i : signal is "true";
begin
  fifo_wr_en_mux_out <= fifo_wr_en_mux;
FIFO_wr_en_inferred_i_1: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => photon_arrival,
      I1 => wren_dly,
      O => FIFO_wr_en
    );
\ddly_0_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => clk_i,
      CE => read_ena,
      D => ADC_data_i(0),
      Q => ddly_0(0),
      R => '0'
    );
\ddly_0_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => clk_i,
      CE => read_ena,
      D => ADC_data_i(10),
      Q => ddly_0(10),
      R => '0'
    );
\ddly_0_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => clk_i,
      CE => read_ena,
      D => ADC_data_i(11),
      Q => ddly_0(11),
      R => '0'
    );
\ddly_0_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => clk_i,
      CE => read_ena,
      D => ADC_data_i(1),
      Q => ddly_0(1),
      R => '0'
    );
\ddly_0_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => clk_i,
      CE => read_ena,
      D => ADC_data_i(2),
      Q => ddly_0(2),
      R => '0'
    );
\ddly_0_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => clk_i,
      CE => read_ena,
      D => ADC_data_i(3),
      Q => ddly_0(3),
      R => '0'
    );
\ddly_0_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => clk_i,
      CE => read_ena,
      D => ADC_data_i(4),
      Q => ddly_0(4),
      R => '0'
    );
\ddly_0_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => clk_i,
      CE => read_ena,
      D => ADC_data_i(5),
      Q => ddly_0(5),
      R => '0'
    );
\ddly_0_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => clk_i,
      CE => read_ena,
      D => ADC_data_i(6),
      Q => ddly_0(6),
      R => '0'
    );
\ddly_0_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => clk_i,
      CE => read_ena,
      D => ADC_data_i(7),
      Q => ddly_0(7),
      R => '0'
    );
\ddly_0_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => clk_i,
      CE => read_ena,
      D => ADC_data_i(8),
      Q => ddly_0(8),
      R => '0'
    );
\ddly_0_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => clk_i,
      CE => read_ena,
      D => ADC_data_i(9),
      Q => ddly_0(9),
      R => '0'
    );
\ddly_1_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => clk_i,
      CE => read_ena,
      D => ddly_0(0),
      Q => FIR_data_out(0),
      R => '0'
    );
\ddly_1_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => clk_i,
      CE => read_ena,
      D => ddly_0(10),
      Q => FIR_data_out(10),
      R => '0'
    );
\ddly_1_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => clk_i,
      CE => read_ena,
      D => ddly_0(11),
      Q => FIR_data_out(11),
      R => '0'
    );
\ddly_1_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => clk_i,
      CE => read_ena,
      D => ddly_0(1),
      Q => FIR_data_out(1),
      R => '0'
    );
\ddly_1_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => clk_i,
      CE => read_ena,
      D => ddly_0(2),
      Q => FIR_data_out(2),
      R => '0'
    );
\ddly_1_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => clk_i,
      CE => read_ena,
      D => ddly_0(3),
      Q => FIR_data_out(3),
      R => '0'
    );
\ddly_1_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => clk_i,
      CE => read_ena,
      D => ddly_0(4),
      Q => FIR_data_out(4),
      R => '0'
    );
\ddly_1_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => clk_i,
      CE => read_ena,
      D => ddly_0(5),
      Q => FIR_data_out(5),
      R => '0'
    );
\ddly_1_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => clk_i,
      CE => read_ena,
      D => ddly_0(6),
      Q => FIR_data_out(6),
      R => '0'
    );
\ddly_1_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => clk_i,
      CE => read_ena,
      D => ddly_0(7),
      Q => FIR_data_out(7),
      R => '0'
    );
\ddly_1_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => clk_i,
      CE => read_ena,
      D => ddly_0(8),
      Q => FIR_data_out(8),
      R => '0'
    );
\ddly_1_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => clk_i,
      CE => read_ena,
      D => ddly_0(9),
      Q => FIR_data_out(9),
      R => '0'
    );
edge_detector: entity work.dpp_block_design_DPP_module_top_0_0_0_edge_detector_0
     port map (
      arrival_flag_o => photon_arrival,
      clk_i => clk_i,
      data_i(15 downto 12) => B"0000",
      data_i(11 downto 0) => FIR_Derivative_data(11 downto 0),
      ena_i => ena_i,
      rst_i => rst_i,
      threshold_high_i(15 downto 0) => threshold_high_i(15 downto 0)
    );
fir_derivative: entity work.dpp_block_design_DPP_module_top_0_0_0_fir_derivative_0
     port map (
      clk_i => clk_i,
      data_i(11 downto 0) => ADC_data_i(11 downto 0),
      data_o(15 downto 12) => NLW_fir_derivative_data_o_UNCONNECTED(15 downto 12),
      data_o(11 downto 0) => FIR_Derivative_data(11 downto 0),
      der_sign => valid_der,
      ena_i => read_ena,
      rst_i => rst_i
    );
i_0: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => '0',
      O => FIR_data_out(15)
    );
i_1: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => '0',
      O => FIR_data_out(14)
    );
i_2: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => '0',
      O => FIR_data_out(13)
    );
i_3: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => '0',
      O => FIR_data_out(12)
    );
my_op_mode_dec: entity work.dpp_block_design_DPP_module_top_0_0_0_output_mux
     port map (
      ADC_data_i(11 downto 0) => ADC_data_i(11 downto 0),
      FIR_data_i(15 downto 0) => FIR_data_out(15 downto 0),
      FIR_deriv_i(15 downto 12) => B"0000",
      FIR_deriv_i(11 downto 0) => FIR_Derivative_data(11 downto 0),
      data_o(15 downto 0) => data_o(15 downto 0),
      fifo_wr_en_i => FIFO_wr_en,
      fifo_wr_en_o => fifo_wr_en_mux,
      op_mode_i(1 downto 0) => op_mode_i(1 downto 0)
    );
read_ena_inferred_i_1: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => valid_i,
      I1 => ena_i,
      O => read_ena
    );
wren_dly_reg: unisim.vcomponents.FDRE
     port map (
      C => clk_i,
      CE => read_ena,
      D => valid_der,
      Q => wren_dly,
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity dpp_block_design_DPP_module_top_0_0_0 is
  port (
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
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of dpp_block_design_DPP_module_top_0_0_0 : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of dpp_block_design_DPP_module_top_0_0_0 : entity is "dpp_block_design_DPP_module_top_0_0_0,DPP_module_top_0,{}";
  attribute downgradeipidentifiedwarnings : string;
  attribute downgradeipidentifiedwarnings of dpp_block_design_DPP_module_top_0_0_0 : entity is "yes";
  attribute ip_definition_source : string;
  attribute ip_definition_source of dpp_block_design_DPP_module_top_0_0_0 : entity is "module_ref";
  attribute x_core_info : string;
  attribute x_core_info of dpp_block_design_DPP_module_top_0_0_0 : entity is "DPP_module_top_0,Vivado 2022.2";
end dpp_block_design_DPP_module_top_0_0_0;

architecture STRUCTURE of dpp_block_design_DPP_module_top_0_0_0 is
  attribute KEEP_HIERARCHY : string;
  attribute KEEP_HIERARCHY of U0 : label is "soft";
begin
U0: entity work.dpp_block_design_DPP_module_top_0_0_0_DPP_module_top_0
     port map (
      ADC_data_i(11 downto 0) => ADC_data_i(11 downto 0),
      clk_i => clk_i,
      data_o(15 downto 0) => data_o(15 downto 0),
      ena_i => ena_i,
      fifo_wr_en_mux_out => fifo_wr_en_mux_out,
      op_mode_i(1 downto 0) => op_mode_i(1 downto 0),
      rst_i => rst_i,
      threshold_high_i(15 downto 0) => threshold_high_i(15 downto 0),
      valid_i => valid_i
    );
end STRUCTURE;
