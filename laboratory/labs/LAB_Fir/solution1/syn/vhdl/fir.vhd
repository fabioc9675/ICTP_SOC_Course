-- ==============================================================
-- RTL generated by Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2022.2 (64-bit)
-- Version: 2022.2
-- Copyright (C) Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- 
-- ===========================================================

library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

entity fir is
port (
    y_TDATA : OUT STD_LOGIC_VECTOR (31 downto 0);
    x_TDATA : IN STD_LOGIC_VECTOR (31 downto 0);
    ap_clk : IN STD_LOGIC;
    ap_rst_n : IN STD_LOGIC;
    x_TVALID : IN STD_LOGIC;
    x_TREADY : OUT STD_LOGIC;
    ap_start : IN STD_LOGIC;
    y_TVALID : OUT STD_LOGIC;
    y_TREADY : IN STD_LOGIC;
    ap_done : OUT STD_LOGIC;
    ap_ready : OUT STD_LOGIC;
    ap_idle : OUT STD_LOGIC );
end;


architecture behav of fir is 
    attribute CORE_GENERATION_INFO : STRING;
    attribute CORE_GENERATION_INFO of behav : architecture is
    "fir_fir,hls_ip_2022_2,{HLS_INPUT_TYPE=cxx,HLS_INPUT_FLOAT=0,HLS_INPUT_FIXED=0,HLS_INPUT_PART=xc7z020-clg484-3,HLS_INPUT_CLOCK=10.000000,HLS_INPUT_ARCH=dataflow,HLS_SYN_CLOCK=6.210000,HLS_SYN_LAT=184,HLS_SYN_TPT=185,HLS_SYN_MEM=0,HLS_SYN_DSP=0,HLS_SYN_FF=6038,HLS_SYN_LUT=2220,HLS_VERSION=2022_2}";
    constant ap_const_logic_1 : STD_LOGIC := '1';
    constant ap_const_logic_0 : STD_LOGIC := '0';

    signal ap_rst_n_inv : STD_LOGIC;
    signal Loop_Shift_Accum_Loop_proc2_U0_ap_start : STD_LOGIC;
    signal Loop_Shift_Accum_Loop_proc2_U0_ap_done : STD_LOGIC;
    signal Loop_Shift_Accum_Loop_proc2_U0_ap_continue : STD_LOGIC;
    signal Loop_Shift_Accum_Loop_proc2_U0_ap_idle : STD_LOGIC;
    signal Loop_Shift_Accum_Loop_proc2_U0_ap_ready : STD_LOGIC;
    signal Loop_Shift_Accum_Loop_proc2_U0_x_TREADY : STD_LOGIC;
    signal Loop_Shift_Accum_Loop_proc2_U0_ap_return : STD_LOGIC_VECTOR (31 downto 0);
    signal acc_loc_channel_full_n : STD_LOGIC;
    signal Block_for_end_proc_U0_ap_start : STD_LOGIC;
    signal Block_for_end_proc_U0_ap_done : STD_LOGIC;
    signal Block_for_end_proc_U0_ap_continue : STD_LOGIC;
    signal Block_for_end_proc_U0_ap_idle : STD_LOGIC;
    signal Block_for_end_proc_U0_ap_ready : STD_LOGIC;
    signal Block_for_end_proc_U0_y_TDATA : STD_LOGIC_VECTOR (31 downto 0);
    signal Block_for_end_proc_U0_y_TVALID : STD_LOGIC;
    signal acc_loc_channel_dout : STD_LOGIC_VECTOR (31 downto 0);
    signal acc_loc_channel_num_data_valid : STD_LOGIC_VECTOR (1 downto 0);
    signal acc_loc_channel_fifo_cap : STD_LOGIC_VECTOR (1 downto 0);
    signal acc_loc_channel_empty_n : STD_LOGIC;

    component fir_Loop_Shift_Accum_Loop_proc2 IS
    port (
        ap_clk : IN STD_LOGIC;
        ap_rst : IN STD_LOGIC;
        ap_start : IN STD_LOGIC;
        ap_done : OUT STD_LOGIC;
        ap_continue : IN STD_LOGIC;
        ap_idle : OUT STD_LOGIC;
        ap_ready : OUT STD_LOGIC;
        x_TVALID : IN STD_LOGIC;
        x_TDATA : IN STD_LOGIC_VECTOR (31 downto 0);
        x_TREADY : OUT STD_LOGIC;
        ap_return : OUT STD_LOGIC_VECTOR (31 downto 0) );
    end component;


    component fir_Block_for_end_proc IS
    port (
        ap_clk : IN STD_LOGIC;
        ap_rst : IN STD_LOGIC;
        ap_start : IN STD_LOGIC;
        ap_done : OUT STD_LOGIC;
        ap_continue : IN STD_LOGIC;
        ap_idle : OUT STD_LOGIC;
        ap_ready : OUT STD_LOGIC;
        p_read : IN STD_LOGIC_VECTOR (31 downto 0);
        y_TDATA : OUT STD_LOGIC_VECTOR (31 downto 0);
        y_TVALID : OUT STD_LOGIC;
        y_TREADY : IN STD_LOGIC );
    end component;


    component fir_fifo_w32_d2_S IS
    port (
        clk : IN STD_LOGIC;
        reset : IN STD_LOGIC;
        if_read_ce : IN STD_LOGIC;
        if_write_ce : IN STD_LOGIC;
        if_din : IN STD_LOGIC_VECTOR (31 downto 0);
        if_full_n : OUT STD_LOGIC;
        if_write : IN STD_LOGIC;
        if_dout : OUT STD_LOGIC_VECTOR (31 downto 0);
        if_num_data_valid : OUT STD_LOGIC_VECTOR (1 downto 0);
        if_fifo_cap : OUT STD_LOGIC_VECTOR (1 downto 0);
        if_empty_n : OUT STD_LOGIC;
        if_read : IN STD_LOGIC );
    end component;



begin
    Loop_Shift_Accum_Loop_proc2_U0 : component fir_Loop_Shift_Accum_Loop_proc2
    port map (
        ap_clk => ap_clk,
        ap_rst => ap_rst_n_inv,
        ap_start => Loop_Shift_Accum_Loop_proc2_U0_ap_start,
        ap_done => Loop_Shift_Accum_Loop_proc2_U0_ap_done,
        ap_continue => Loop_Shift_Accum_Loop_proc2_U0_ap_continue,
        ap_idle => Loop_Shift_Accum_Loop_proc2_U0_ap_idle,
        ap_ready => Loop_Shift_Accum_Loop_proc2_U0_ap_ready,
        x_TVALID => x_TVALID,
        x_TDATA => x_TDATA,
        x_TREADY => Loop_Shift_Accum_Loop_proc2_U0_x_TREADY,
        ap_return => Loop_Shift_Accum_Loop_proc2_U0_ap_return);

    Block_for_end_proc_U0 : component fir_Block_for_end_proc
    port map (
        ap_clk => ap_clk,
        ap_rst => ap_rst_n_inv,
        ap_start => Block_for_end_proc_U0_ap_start,
        ap_done => Block_for_end_proc_U0_ap_done,
        ap_continue => Block_for_end_proc_U0_ap_continue,
        ap_idle => Block_for_end_proc_U0_ap_idle,
        ap_ready => Block_for_end_proc_U0_ap_ready,
        p_read => acc_loc_channel_dout,
        y_TDATA => Block_for_end_proc_U0_y_TDATA,
        y_TVALID => Block_for_end_proc_U0_y_TVALID,
        y_TREADY => y_TREADY);

    acc_loc_channel_U : component fir_fifo_w32_d2_S
    port map (
        clk => ap_clk,
        reset => ap_rst_n_inv,
        if_read_ce => ap_const_logic_1,
        if_write_ce => ap_const_logic_1,
        if_din => Loop_Shift_Accum_Loop_proc2_U0_ap_return,
        if_full_n => acc_loc_channel_full_n,
        if_write => Loop_Shift_Accum_Loop_proc2_U0_ap_done,
        if_dout => acc_loc_channel_dout,
        if_num_data_valid => acc_loc_channel_num_data_valid,
        if_fifo_cap => acc_loc_channel_fifo_cap,
        if_empty_n => acc_loc_channel_empty_n,
        if_read => Block_for_end_proc_U0_ap_ready);




    Block_for_end_proc_U0_ap_continue <= ap_const_logic_1;
    Block_for_end_proc_U0_ap_start <= acc_loc_channel_empty_n;
    Loop_Shift_Accum_Loop_proc2_U0_ap_continue <= acc_loc_channel_full_n;
    Loop_Shift_Accum_Loop_proc2_U0_ap_start <= ap_start;
    ap_done <= Block_for_end_proc_U0_ap_done;
    ap_idle <= ((ap_const_logic_1 xor acc_loc_channel_empty_n) and Loop_Shift_Accum_Loop_proc2_U0_ap_idle and Block_for_end_proc_U0_ap_idle);
    ap_ready <= Loop_Shift_Accum_Loop_proc2_U0_ap_ready;

    ap_rst_n_inv_assign_proc : process(ap_rst_n)
    begin
                ap_rst_n_inv <= not(ap_rst_n);
    end process;

    x_TREADY <= Loop_Shift_Accum_Loop_proc2_U0_x_TREADY;
    y_TDATA <= Block_for_end_proc_U0_y_TDATA;
    y_TVALID <= Block_for_end_proc_U0_y_TVALID;
end behav;
