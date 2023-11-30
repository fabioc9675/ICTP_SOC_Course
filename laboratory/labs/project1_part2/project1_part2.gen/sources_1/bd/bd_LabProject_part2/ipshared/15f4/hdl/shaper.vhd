-- Generated from Simulink block shaper/axi_clk_domain
library IEEE;
use IEEE.std_logic_1164.all;
library xil_defaultlib;
use xil_defaultlib.conv_pkg.all;
entity shaper_axi_clk_domain is
  port (
    r1_b10 : in std_logic_vector( 32-1 downto 0 );
    r2_na : in std_logic_vector( 32-1 downto 0 );
    r3_nb : in std_logic_vector( 32-1 downto 0 );
    r4_na_inv : in std_logic_vector( 32-1 downto 0 );
    r5_b00 : in std_logic_vector( 32-1 downto 0 );
    r6_b20 : in std_logic_vector( 32-1 downto 0 );
    r7_dc_offset : in std_logic_vector( 32-1 downto 0 );
    r8_invertoffset_dc_offset : in std_logic_vector( 32-1 downto 0 );
    r9_flags : in std_logic_vector( 32-1 downto 0 )
  );
end shaper_axi_clk_domain;
architecture structural of shaper_axi_clk_domain is 
  signal r1_b10_net : std_logic_vector( 32-1 downto 0 );
  signal r2_na_net : std_logic_vector( 32-1 downto 0 );
  signal r4_na_inv_net : std_logic_vector( 32-1 downto 0 );
  signal r6_b20_net : std_logic_vector( 32-1 downto 0 );
  signal r7_dc_offset_net : std_logic_vector( 32-1 downto 0 );
  signal r8_invertoffset_dc_offset_net : std_logic_vector( 32-1 downto 0 );
  signal r9_flags_net : std_logic_vector( 32-1 downto 0 );
  signal r3_nb_net : std_logic_vector( 32-1 downto 0 );
  signal r5_b00_net : std_logic_vector( 32-1 downto 0 );
begin
  r1_b10_net <= r1_b10;
  r2_na_net <= r2_na;
  r3_nb_net <= r3_nb;
  r4_na_inv_net <= r4_na_inv;
  r5_b00_net <= r5_b00;
  r6_b20_net <= r6_b20;
  r7_dc_offset_net <= r7_dc_offset;
  r8_invertoffset_dc_offset_net <= r8_invertoffset_dc_offset;
  r9_flags_net <= r9_flags;
end structural;
-- Generated from Simulink block shaper/filter_clk_domain/Filter/Normalization
library IEEE;
use IEEE.std_logic_1164.all;
library xil_defaultlib;
use xil_defaultlib.conv_pkg.all;
entity shaper_normalization is
  port (
    in1 : in std_logic_vector( 26-1 downto 0 );
    nf : in std_logic_vector( 32-1 downto 0 );
    clk_1 : in std_logic;
    ce_1 : in std_logic;
    out1 : out std_logic_vector( 16-1 downto 0 )
  );
end shaper_normalization;
architecture structural of shaper_normalization is 
  signal slice2_y_net : std_logic_vector( 26-1 downto 0 );
  signal delay_q_net : std_logic_vector( 16-1 downto 0 );
  signal convert_dout_net : std_logic_vector( 26-1 downto 0 );
  signal mult_p_net : std_logic_vector( 16-1 downto 0 );
  signal ce_net : std_logic;
  signal register_na_inv_q_net : std_logic_vector( 32-1 downto 0 );
  signal reinterpret2_output_port_net : std_logic_vector( 26-1 downto 0 );
  signal clk_net : std_logic;
begin
  out1 <= delay_q_net;
  convert_dout_net <= in1;
  register_na_inv_q_net <= nf;
  clk_net <= clk_1;
  ce_net <= ce_1;
  delay : entity xil_defaultlib.shaper_xldelay 
  generic map (
    latency => 3,
    reg_retiming => 0,
    reset => 0,
    width => 16
  )
  port map (
    en => '1',
    rst => '0',
    d => mult_p_net,
    clk => clk_net,
    ce => ce_net,
    q => delay_q_net
  );
  mult : entity xil_defaultlib.shaper_xlmult 
  generic map (
    a_arith => xlSigned,
    a_bin_pt => 14,
    a_width => 26,
    b_arith => xlUnsigned,
    b_bin_pt => 25,
    b_width => 26,
    c_a_type => 0,
    c_a_width => 26,
    c_b_type => 1,
    c_b_width => 26,
    c_baat => 26,
    c_output_width => 52,
    c_type => 0,
    core_name0 => "shaper_mult_gen_v12_0_i0",
    extra_registers => 0,
    multsign => 2,
    overflow => 2,
    p_arith => xlSigned,
    p_bin_pt => 14,
    p_width => 16,
    quantization => 2
  )
  port map (
    clr => '0',
    core_clr => '1',
    en => "1",
    rst => "0",
    a => convert_dout_net,
    b => reinterpret2_output_port_net,
    clk => clk_net,
    ce => ce_net,
    core_clk => clk_net,
    core_ce => ce_net,
    p => mult_p_net
  );
  reinterpret2 : entity xil_defaultlib.sysgen_reinterpret_a60c8d3955 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    input_port => slice2_y_net,
    output_port => reinterpret2_output_port_net
  );
  slice2 : entity xil_defaultlib.shaper_xlslice 
  generic map (
    new_lsb => 0,
    new_msb => 25,
    x_width => 32,
    y_width => 26
  )
  port map (
    x => register_na_inv_q_net,
    y => slice2_y_net
  );
end structural;
-- Generated from Simulink block shaper/filter_clk_domain/Filter/SecondPoleCorrection/toUFix
library IEEE;
use IEEE.std_logic_1164.all;
library xil_defaultlib;
use xil_defaultlib.conv_pkg.all;
entity shaper_toufix is
  port (
    in1 : in std_logic_vector( 32-1 downto 0 );
    out1 : out std_logic_vector( 32-1 downto 0 )
  );
end shaper_toufix;
architecture structural of shaper_toufix is 
  signal register_b00_q_net : std_logic_vector( 32-1 downto 0 );
  signal reinterpret3_output_port_net : std_logic_vector( 32-1 downto 0 );
  signal slice3_y_net : std_logic_vector( 32-1 downto 0 );
begin
  out1 <= reinterpret3_output_port_net;
  register_b00_q_net <= in1;
  reinterpret3 : entity xil_defaultlib.sysgen_reinterpret_a49404f6a7 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    input_port => slice3_y_net,
    output_port => reinterpret3_output_port_net
  );
  slice3 : entity xil_defaultlib.shaper_xlslice 
  generic map (
    new_lsb => 0,
    new_msb => 31,
    x_width => 32,
    y_width => 32
  )
  port map (
    x => register_b00_q_net,
    y => slice3_y_net
  );
end structural;
-- Generated from Simulink block shaper/filter_clk_domain/Filter/SecondPoleCorrection/toUFix1
library IEEE;
use IEEE.std_logic_1164.all;
library xil_defaultlib;
use xil_defaultlib.conv_pkg.all;
entity shaper_toufix1 is
  port (
    in1 : in std_logic_vector( 32-1 downto 0 );
    out1 : out std_logic_vector( 24-1 downto 0 )
  );
end shaper_toufix1;
architecture structural of shaper_toufix1 is 
  signal register_b20_q_net : std_logic_vector( 32-1 downto 0 );
  signal reinterpret3_output_port_net : std_logic_vector( 24-1 downto 0 );
  signal slice3_y_net : std_logic_vector( 24-1 downto 0 );
begin
  out1 <= reinterpret3_output_port_net;
  register_b20_q_net <= in1;
  reinterpret3 : entity xil_defaultlib.sysgen_reinterpret_1cdbf48fea 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    input_port => slice3_y_net,
    output_port => reinterpret3_output_port_net
  );
  slice3 : entity xil_defaultlib.shaper_xlslice 
  generic map (
    new_lsb => 0,
    new_msb => 23,
    x_width => 32,
    y_width => 24
  )
  port map (
    x => register_b20_q_net,
    y => slice3_y_net
  );
end structural;
-- Generated from Simulink block shaper/filter_clk_domain/Filter/SecondPoleCorrection
library IEEE;
use IEEE.std_logic_1164.all;
library xil_defaultlib;
use xil_defaultlib.conv_pkg.all;
entity shaper_secondpolecorrection is
  port (
    in1 : in std_logic_vector( 16-1 downto 0 );
    b00 : in std_logic_vector( 32-1 downto 0 );
    b20 : in std_logic_vector( 32-1 downto 0 );
    clk_1 : in std_logic;
    ce_1 : in std_logic;
    out1 : out std_logic_vector( 26-1 downto 0 )
  );
end shaper_secondpolecorrection;
architecture structural of shaper_secondpolecorrection is 
  signal delay2_q_net : std_logic_vector( 32-1 downto 0 );
  signal multiplier2_p_net : std_logic_vector( 32-1 downto 0 );
  signal reinterpret3_output_port_net : std_logic_vector( 24-1 downto 0 );
  signal ce_net : std_logic;
  signal delay3_q_net : std_logic_vector( 32-1 downto 0 );
  signal multiplier1_p_net : std_logic_vector( 32-1 downto 0 );
  signal clk_net : std_logic;
  signal register_b00_q_net : std_logic_vector( 32-1 downto 0 );
  signal register_b20_q_net : std_logic_vector( 32-1 downto 0 );
  signal delay4_q_net : std_logic_vector( 26-1 downto 0 );
  signal reinterpret3_output_port_net_x0 : std_logic_vector( 32-1 downto 0 );
  signal delay1_q_net : std_logic_vector( 32-1 downto 0 );
  signal delay_q_net : std_logic_vector( 32-1 downto 0 );
  signal mcode_y_net : std_logic_vector( 16-1 downto 0 );
  signal subtractor_s_net : std_logic_vector( 26-1 downto 0 );
begin
  out1 <= delay4_q_net;
  mcode_y_net <= in1;
  register_b00_q_net <= b00;
  register_b20_q_net <= b20;
  clk_net <= clk_1;
  ce_net <= ce_1;
  toufix : entity xil_defaultlib.shaper_toufix 
  port map (
    in1 => register_b00_q_net,
    out1 => reinterpret3_output_port_net_x0
  );
  toufix1 : entity xil_defaultlib.shaper_toufix1 
  port map (
    in1 => register_b20_q_net,
    out1 => reinterpret3_output_port_net
  );
  delay : entity xil_defaultlib.shaper_xldelay 
  generic map (
    latency => 1,
    reg_retiming => 0,
    reset => 0,
    width => 32
  )
  port map (
    en => '1',
    rst => '0',
    d => delay3_q_net,
    clk => clk_net,
    ce => ce_net,
    q => delay_q_net
  );
  delay1 : entity xil_defaultlib.shaper_xldelay 
  generic map (
    latency => 3,
    reg_retiming => 0,
    reset => 0,
    width => 32
  )
  port map (
    en => '1',
    rst => '0',
    d => delay3_q_net,
    clk => clk_net,
    ce => ce_net,
    q => delay1_q_net
  );
  delay2 : entity xil_defaultlib.shaper_xldelay 
  generic map (
    latency => 3,
    reg_retiming => 0,
    reset => 0,
    width => 32
  )
  port map (
    en => '1',
    rst => '0',
    d => multiplier2_p_net,
    clk => clk_net,
    ce => ce_net,
    q => delay2_q_net
  );
  delay3 : entity xil_defaultlib.shaper_xldelay 
  generic map (
    latency => 3,
    reg_retiming => 0,
    reset => 0,
    width => 32
  )
  port map (
    en => '1',
    rst => '0',
    d => multiplier1_p_net,
    clk => clk_net,
    ce => ce_net,
    q => delay3_q_net
  );
  delay4 : entity xil_defaultlib.shaper_xldelay 
  generic map (
    latency => 3,
    reg_retiming => 0,
    reset => 0,
    width => 26
  )
  port map (
    en => '1',
    rst => '0',
    d => subtractor_s_net,
    clk => clk_net,
    ce => ce_net,
    q => delay4_q_net
  );
  multiplier1 : entity xil_defaultlib.shaper_xlmult 
  generic map (
    a_arith => xlSigned,
    a_bin_pt => 14,
    a_width => 16,
    b_arith => xlUnsigned,
    b_bin_pt => 24,
    b_width => 32,
    c_a_type => 0,
    c_a_width => 16,
    c_b_type => 1,
    c_b_width => 32,
    c_baat => 16,
    c_output_width => 48,
    c_type => 0,
    core_name0 => "shaper_mult_gen_v12_0_i1",
    extra_registers => 0,
    multsign => 2,
    overflow => 2,
    p_arith => xlSigned,
    p_bin_pt => 24,
    p_width => 32,
    quantization => 1
  )
  port map (
    clr => '0',
    core_clr => '1',
    en => "1",
    rst => "0",
    a => mcode_y_net,
    b => reinterpret3_output_port_net_x0,
    clk => clk_net,
    ce => ce_net,
    core_clk => clk_net,
    core_ce => ce_net,
    p => multiplier1_p_net
  );
  multiplier2 : entity xil_defaultlib.shaper_xlmult 
  generic map (
    a_arith => xlSigned,
    a_bin_pt => 24,
    a_width => 32,
    b_arith => xlUnsigned,
    b_bin_pt => 24,
    b_width => 24,
    c_a_type => 0,
    c_a_width => 32,
    c_b_type => 1,
    c_b_width => 24,
    c_baat => 32,
    c_output_width => 56,
    c_type => 0,
    core_name0 => "shaper_mult_gen_v12_0_i2",
    extra_registers => 0,
    multsign => 2,
    overflow => 2,
    p_arith => xlSigned,
    p_bin_pt => 24,
    p_width => 32,
    quantization => 1
  )
  port map (
    clr => '0',
    core_clr => '1',
    en => "1",
    rst => "0",
    a => delay_q_net,
    b => reinterpret3_output_port_net,
    clk => clk_net,
    ce => ce_net,
    core_clk => clk_net,
    core_ce => ce_net,
    p => multiplier2_p_net
  );
  subtractor : entity xil_defaultlib.shaper_xladdsub 
  generic map (
    a_arith => xlSigned,
    a_bin_pt => 24,
    a_width => 32,
    b_arith => xlSigned,
    b_bin_pt => 24,
    b_width => 32,
    c_has_c_out => 0,
    c_latency => 0,
    c_output_width => 33,
    core_name0 => "shaper_c_addsub_v12_0_i0",
    extra_registers => 0,
    full_s_arith => 2,
    full_s_width => 33,
    latency => 0,
    overflow => 2,
    quantization => 1,
    s_arith => xlSigned,
    s_bin_pt => 24,
    s_width => 26
  )
  port map (
    clr => '0',
    en => "1",
    a => delay1_q_net,
    b => delay2_q_net,
    clk => clk_net,
    ce => ce_net,
    s => subtractor_s_net
  );
end structural;
-- Generated from Simulink block shaper/filter_clk_domain/Filter/movingAverage1/delayLine
library IEEE;
use IEEE.std_logic_1164.all;
library xil_defaultlib;
use xil_defaultlib.conv_pkg.all;
entity shaper_delayline_x0 is
  port (
    din : in std_logic_vector( 30-1 downto 0 );
    addr : in std_logic_vector( 32-1 downto 0 );
    clk_1 : in std_logic;
    ce_1 : in std_logic;
    dout : out std_logic_vector( 30-1 downto 0 )
  );
end shaper_delayline_x0;
architecture structural of shaper_delayline_x0 is 
  signal constant_op_net : std_logic_vector( 10-1 downto 0 );
  signal single_port_ram_data_out_net : std_logic_vector( 30-1 downto 0 );
  signal clk_net : std_logic;
  signal relational_op_net : std_logic_vector( 1-1 downto 0 );
  signal constant1_op_net : std_logic_vector( 1-1 downto 0 );
  signal register_na_q_net : std_logic_vector( 32-1 downto 0 );
  signal counter_op_net : std_logic_vector( 10-1 downto 0 );
  signal ce_net : std_logic;
  signal accumulator_q_net : std_logic_vector( 30-1 downto 0 );
  signal reinterpret3_output_port_net : std_logic_vector( 10-1 downto 0 );
  signal slice3_y_net : std_logic_vector( 10-1 downto 0 );
begin
  dout <= single_port_ram_data_out_net;
  accumulator_q_net <= din;
  register_na_q_net <= addr;
  clk_net <= clk_1;
  ce_net <= ce_1;
  constant_x0 : entity xil_defaultlib.sysgen_constant_0a1632bad0 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    op => constant_op_net
  );
  constant1 : entity xil_defaultlib.sysgen_constant_5ff2b537ee 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    op => constant1_op_net
  );
  counter : entity xil_defaultlib.shaper_xlcounter_free 
  generic map (
    core_name0 => "shaper_c_counter_binary_v12_0_i0",
    op_arith => xlUnsigned,
    op_width => 10
  )
  port map (
    en => "1",
    rst => "0",
    clr => '0',
    load => relational_op_net,
    din => constant_op_net,
    clk => clk_net,
    ce => ce_net,
    op => counter_op_net
  );
  reinterpret3 : entity xil_defaultlib.sysgen_reinterpret_4ba09cd993 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    input_port => slice3_y_net,
    output_port => reinterpret3_output_port_net
  );
  relational : entity xil_defaultlib.sysgen_relational_1931267d49 
  port map (
    clr => '0',
    a => reinterpret3_output_port_net,
    b => counter_op_net,
    clk => clk_net,
    ce => ce_net,
    op => relational_op_net
  );
  single_port_ram : entity xil_defaultlib.shaper_xlspram 
  generic map (
    init_value => b"000000000000000000000000000000",
    latency => 1,
    mem_init_file => "xpm_f5fed5_vivado.mem",
    mem_size => 30720,
    mem_type => "block",
    read_reset_val => "0",
    width => 30,
    width_addr => 10,
    write_mode_a => "read_first",
    xpm_lat => 1
  )
  port map (
    en => "1",
    rst => "0",
    addr => counter_op_net,
    data_in => accumulator_q_net,
    we => constant1_op_net,
    clk => clk_net,
    ce => ce_net,
    data_out => single_port_ram_data_out_net
  );
  slice3 : entity xil_defaultlib.shaper_xlslice 
  generic map (
    new_lsb => 0,
    new_msb => 9,
    x_width => 32,
    y_width => 10
  )
  port map (
    x => register_na_q_net,
    y => slice3_y_net
  );
end structural;
-- Generated from Simulink block shaper/filter_clk_domain/Filter/movingAverage1
library IEEE;
use IEEE.std_logic_1164.all;
library xil_defaultlib;
use xil_defaultlib.conv_pkg.all;
entity shaper_movingaverage1 is
  port (
    in1 : in std_logic_vector( 26-1 downto 0 );
    n : in std_logic_vector( 32-1 downto 0 );
    clk_1 : in std_logic;
    ce_1 : in std_logic;
    out1 : out std_logic_vector( 16-1 downto 0 )
  );
end shaper_movingaverage1;
architecture structural of shaper_movingaverage1 is 
  signal sub_s_net : std_logic_vector( 30-1 downto 0 );
  signal clk_net : std_logic;
  signal accumulator_q_net : std_logic_vector( 30-1 downto 0 );
  signal ce_net : std_logic;
  signal single_port_ram_data_out_net : std_logic_vector( 30-1 downto 0 );
  signal convert_dout_net : std_logic_vector( 16-1 downto 0 );
  signal adder_s_net : std_logic_vector( 26-1 downto 0 );
  signal register_na_q_net : std_logic_vector( 32-1 downto 0 );
begin
  out1 <= convert_dout_net;
  adder_s_net <= in1;
  register_na_q_net <= n;
  clk_net <= clk_1;
  ce_net <= ce_1;
  delayline : entity xil_defaultlib.shaper_delayline_x0 
  port map (
    din => accumulator_q_net,
    addr => register_na_q_net,
    clk_1 => clk_net,
    ce_1 => ce_net,
    dout => single_port_ram_data_out_net
  );
  accumulator : entity xil_defaultlib.sysgen_accum_2a2dbe8914 
  port map (
    clr => '0',
    b => adder_s_net,
    clk => clk_net,
    ce => ce_net,
    q => accumulator_q_net
  );
  convert : entity xil_defaultlib.shaper_xlconvert 
  generic map (
    bool_conversion => 0,
    din_arith => 2,
    din_bin_pt => 24,
    din_width => 30,
    dout_arith => 2,
    dout_bin_pt => 14,
    dout_width => 16,
    latency => 1,
    overflow => xlSaturate,
    quantization => xlRound
  )
  port map (
    clr => '0',
    en => "1",
    din => sub_s_net,
    clk => clk_net,
    ce => ce_net,
    dout => convert_dout_net
  );
  sub : entity xil_defaultlib.shaper_xladdsub 
  generic map (
    a_arith => xlSigned,
    a_bin_pt => 24,
    a_width => 30,
    b_arith => xlSigned,
    b_bin_pt => 24,
    b_width => 30,
    c_has_c_out => 0,
    c_latency => 1,
    c_output_width => 31,
    core_name0 => "shaper_c_addsub_v12_0_i1",
    extra_registers => 0,
    full_s_arith => 2,
    full_s_width => 31,
    latency => 1,
    overflow => 1,
    quantization => 2,
    s_arith => xlSigned,
    s_bin_pt => 24,
    s_width => 30
  )
  port map (
    clr => '0',
    en => "1",
    a => accumulator_q_net,
    b => single_port_ram_data_out_net,
    clk => clk_net,
    ce => ce_net,
    s => sub_s_net
  );
end structural;
-- Generated from Simulink block shaper/filter_clk_domain/Filter/movingAverage2/delayLine
library IEEE;
use IEEE.std_logic_1164.all;
library xil_defaultlib;
use xil_defaultlib.conv_pkg.all;
entity shaper_delayline is
  port (
    din : in std_logic_vector( 26-1 downto 0 );
    addr : in std_logic_vector( 32-1 downto 0 );
    clk_1 : in std_logic;
    ce_1 : in std_logic;
    dout : out std_logic_vector( 26-1 downto 0 )
  );
end shaper_delayline;
architecture structural of shaper_delayline is 
  signal accumulator_q_net : std_logic_vector( 26-1 downto 0 );
  signal register_nb_q_net : std_logic_vector( 32-1 downto 0 );
  signal single_port_ram_data_out_net : std_logic_vector( 26-1 downto 0 );
  signal clk_net : std_logic;
  signal constant1_op_net : std_logic_vector( 1-1 downto 0 );
  signal ce_net : std_logic;
  signal constant_op_net : std_logic_vector( 10-1 downto 0 );
  signal slice3_y_net : std_logic_vector( 10-1 downto 0 );
  signal counter_op_net : std_logic_vector( 10-1 downto 0 );
  signal reinterpret3_output_port_net : std_logic_vector( 10-1 downto 0 );
  signal relational_op_net : std_logic_vector( 1-1 downto 0 );
begin
  dout <= single_port_ram_data_out_net;
  accumulator_q_net <= din;
  register_nb_q_net <= addr;
  clk_net <= clk_1;
  ce_net <= ce_1;
  constant_x0 : entity xil_defaultlib.sysgen_constant_0a1632bad0 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    op => constant_op_net
  );
  constant1 : entity xil_defaultlib.sysgen_constant_5ff2b537ee 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    op => constant1_op_net
  );
  counter : entity xil_defaultlib.shaper_xlcounter_free 
  generic map (
    core_name0 => "shaper_c_counter_binary_v12_0_i0",
    op_arith => xlUnsigned,
    op_width => 10
  )
  port map (
    en => "1",
    rst => "0",
    clr => '0',
    load => relational_op_net,
    din => constant_op_net,
    clk => clk_net,
    ce => ce_net,
    op => counter_op_net
  );
  reinterpret3 : entity xil_defaultlib.sysgen_reinterpret_4ba09cd993 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    input_port => slice3_y_net,
    output_port => reinterpret3_output_port_net
  );
  relational : entity xil_defaultlib.sysgen_relational_1931267d49 
  port map (
    clr => '0',
    a => reinterpret3_output_port_net,
    b => counter_op_net,
    clk => clk_net,
    ce => ce_net,
    op => relational_op_net
  );
  single_port_ram : entity xil_defaultlib.shaper_xlspram 
  generic map (
    init_value => b"00000000000000000000000000",
    latency => 1,
    mem_init_file => "xpm_f5fed5_vivado.mem",
    mem_size => 26624,
    mem_type => "block",
    read_reset_val => "0",
    width => 26,
    width_addr => 10,
    write_mode_a => "read_first",
    xpm_lat => 1
  )
  port map (
    en => "1",
    rst => "0",
    addr => counter_op_net,
    data_in => accumulator_q_net,
    we => constant1_op_net,
    clk => clk_net,
    ce => ce_net,
    data_out => single_port_ram_data_out_net
  );
  slice3 : entity xil_defaultlib.shaper_xlslice 
  generic map (
    new_lsb => 0,
    new_msb => 9,
    x_width => 32,
    y_width => 10
  )
  port map (
    x => register_nb_q_net,
    y => slice3_y_net
  );
end structural;
-- Generated from Simulink block shaper/filter_clk_domain/Filter/movingAverage2
library IEEE;
use IEEE.std_logic_1164.all;
library xil_defaultlib;
use xil_defaultlib.conv_pkg.all;
entity shaper_movingaverage2 is
  port (
    in1 : in std_logic_vector( 16-1 downto 0 );
    n : in std_logic_vector( 32-1 downto 0 );
    clk_1 : in std_logic;
    ce_1 : in std_logic;
    out1 : out std_logic_vector( 26-1 downto 0 )
  );
end shaper_movingaverage2;
architecture structural of shaper_movingaverage2 is 
  signal clk_net : std_logic;
  signal ce_net : std_logic;
  signal single_port_ram_data_out_net : std_logic_vector( 26-1 downto 0 );
  signal convert_dout_net_x0 : std_logic_vector( 16-1 downto 0 );
  signal convert_dout_net : std_logic_vector( 26-1 downto 0 );
  signal sub_s_net : std_logic_vector( 26-1 downto 0 );
  signal accumulator_q_net : std_logic_vector( 26-1 downto 0 );
  signal register_nb_q_net : std_logic_vector( 32-1 downto 0 );
begin
  out1 <= convert_dout_net;
  convert_dout_net_x0 <= in1;
  register_nb_q_net <= n;
  clk_net <= clk_1;
  ce_net <= ce_1;
  delayline : entity xil_defaultlib.shaper_delayline 
  port map (
    din => accumulator_q_net,
    addr => register_nb_q_net,
    clk_1 => clk_net,
    ce_1 => ce_net,
    dout => single_port_ram_data_out_net
  );
  accumulator : entity xil_defaultlib.sysgen_accum_bc3a051e16 
  port map (
    clr => '0',
    b => convert_dout_net_x0,
    clk => clk_net,
    ce => ce_net,
    q => accumulator_q_net
  );
  convert : entity xil_defaultlib.shaper_xlconvert 
  generic map (
    bool_conversion => 0,
    din_arith => 2,
    din_bin_pt => 14,
    din_width => 26,
    dout_arith => 2,
    dout_bin_pt => 14,
    dout_width => 26,
    latency => 1,
    overflow => xlSaturate,
    quantization => xlRound
  )
  port map (
    clr => '0',
    en => "1",
    din => sub_s_net,
    clk => clk_net,
    ce => ce_net,
    dout => convert_dout_net
  );
  sub : entity xil_defaultlib.shaper_xladdsub 
  generic map (
    a_arith => xlSigned,
    a_bin_pt => 14,
    a_width => 26,
    b_arith => xlSigned,
    b_bin_pt => 14,
    b_width => 26,
    c_has_c_out => 0,
    c_latency => 1,
    c_output_width => 27,
    core_name0 => "shaper_c_addsub_v12_0_i2",
    extra_registers => 0,
    full_s_arith => 2,
    full_s_width => 27,
    latency => 1,
    overflow => 1,
    quantization => 2,
    s_arith => xlSigned,
    s_bin_pt => 14,
    s_width => 26
  )
  port map (
    clr => '0',
    en => "1",
    a => accumulator_q_net,
    b => single_port_ram_data_out_net,
    clk => clk_net,
    ce => ce_net,
    s => sub_s_net
  );
end structural;
-- Generated from Simulink block shaper/filter_clk_domain/Filter/offset/toSFIx
library IEEE;
use IEEE.std_logic_1164.all;
library xil_defaultlib;
use xil_defaultlib.conv_pkg.all;
entity shaper_tosfix is
  port (
    in1 : in std_logic_vector( 32-1 downto 0 );
    out1 : out std_logic_vector( 26-1 downto 0 )
  );
end shaper_tosfix;
architecture structural of shaper_tosfix is 
  signal slice3_y_net : std_logic_vector( 26-1 downto 0 );
  signal reinterpret3_output_port_net : std_logic_vector( 26-1 downto 0 );
  signal register_dc_offset_q_net : std_logic_vector( 32-1 downto 0 );
begin
  out1 <= reinterpret3_output_port_net;
  register_dc_offset_q_net <= in1;
  reinterpret3 : entity xil_defaultlib.sysgen_reinterpret_38cb764ea6 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    input_port => slice3_y_net,
    output_port => reinterpret3_output_port_net
  );
  slice3 : entity xil_defaultlib.shaper_xlslice 
  generic map (
    new_lsb => 0,
    new_msb => 25,
    x_width => 32,
    y_width => 26
  )
  port map (
    x => register_dc_offset_q_net,
    y => slice3_y_net
  );
end structural;
-- Generated from Simulink block shaper/filter_clk_domain/Filter/offset
library IEEE;
use IEEE.std_logic_1164.all;
library xil_defaultlib;
use xil_defaultlib.conv_pkg.all;
entity shaper_offset is
  port (
    in1 : in std_logic_vector( 26-1 downto 0 );
    in2 : in std_logic_vector( 32-1 downto 0 );
    clk_1 : in std_logic;
    ce_1 : in std_logic;
    out1 : out std_logic_vector( 26-1 downto 0 )
  );
end shaper_offset;
architecture structural of shaper_offset is 
  signal reinterpret3_output_port_net : std_logic_vector( 26-1 downto 0 );
  signal adder_s_net : std_logic_vector( 26-1 downto 0 );
  signal delay3_q_net : std_logic_vector( 26-1 downto 0 );
  signal clk_net : std_logic;
  signal ce_net : std_logic;
  signal register_dc_offset_q_net : std_logic_vector( 32-1 downto 0 );
begin
  out1 <= adder_s_net;
  delay3_q_net <= in1;
  register_dc_offset_q_net <= in2;
  clk_net <= clk_1;
  ce_net <= ce_1;
  tosfix : entity xil_defaultlib.shaper_tosfix 
  port map (
    in1 => register_dc_offset_q_net,
    out1 => reinterpret3_output_port_net
  );
  adder : entity xil_defaultlib.shaper_xladdsub 
  generic map (
    a_arith => xlSigned,
    a_bin_pt => 24,
    a_width => 26,
    b_arith => xlSigned,
    b_bin_pt => 24,
    b_width => 26,
    c_has_c_out => 0,
    c_latency => 1,
    c_output_width => 27,
    core_name0 => "shaper_c_addsub_v12_0_i3",
    extra_registers => 0,
    full_s_arith => 2,
    full_s_width => 27,
    latency => 1,
    overflow => 2,
    quantization => 1,
    s_arith => xlSigned,
    s_bin_pt => 24,
    s_width => 26
  )
  port map (
    clr => '0',
    en => "1",
    a => delay3_q_net,
    b => reinterpret3_output_port_net,
    clk => clk_net,
    ce => ce_net,
    s => adder_s_net
  );
end structural;
-- Generated from Simulink block shaper/filter_clk_domain/Filter/pulseUnfolder
library IEEE;
use IEEE.std_logic_1164.all;
library xil_defaultlib;
use xil_defaultlib.conv_pkg.all;
entity shaper_pulseunfolder is
  port (
    in1 : in std_logic_vector( 26-1 downto 0 );
    b10 : in std_logic_vector( 32-1 downto 0 );
    clk_1 : in std_logic;
    ce_1 : in std_logic;
    out1 : out std_logic_vector( 26-1 downto 0 )
  );
end shaper_pulseunfolder;
architecture structural of shaper_pulseunfolder is 
  signal register_b10_q_net : std_logic_vector( 32-1 downto 0 );
  signal delay4_q_net : std_logic_vector( 26-1 downto 0 );
  signal delay3_q_net : std_logic_vector( 26-1 downto 0 );
  signal delay1_q_net : std_logic_vector( 26-1 downto 0 );
  signal mult_p_net : std_logic_vector( 26-1 downto 0 );
  signal ce_net : std_logic;
  signal clk_net : std_logic;
  signal delay_q_net : std_logic_vector( 26-1 downto 0 );
  signal reinterpret5_output_port_net : std_logic_vector( 24-1 downto 0 );
  signal sub_s_net : std_logic_vector( 26-1 downto 0 );
  signal slice5_y_net : std_logic_vector( 24-1 downto 0 );
  signal delay2_q_net : std_logic_vector( 26-1 downto 0 );
begin
  out1 <= delay3_q_net;
  delay4_q_net <= in1;
  register_b10_q_net <= b10;
  clk_net <= clk_1;
  ce_net <= ce_1;
  delay : entity xil_defaultlib.shaper_xldelay 
  generic map (
    latency => 1,
    reg_retiming => 0,
    reset => 0,
    width => 26
  )
  port map (
    en => '1',
    rst => '0',
    d => delay4_q_net,
    clk => clk_net,
    ce => ce_net,
    q => delay_q_net
  );
  delay1 : entity xil_defaultlib.shaper_xldelay 
  generic map (
    latency => 3,
    reg_retiming => 0,
    reset => 0,
    width => 26
  )
  port map (
    en => '1',
    rst => '0',
    d => mult_p_net,
    clk => clk_net,
    ce => ce_net,
    q => delay1_q_net
  );
  delay2 : entity xil_defaultlib.shaper_xldelay 
  generic map (
    latency => 3,
    reg_retiming => 0,
    reset => 0,
    width => 26
  )
  port map (
    en => '1',
    rst => '0',
    d => delay4_q_net,
    clk => clk_net,
    ce => ce_net,
    q => delay2_q_net
  );
  delay3 : entity xil_defaultlib.shaper_xldelay 
  generic map (
    latency => 3,
    reg_retiming => 0,
    reset => 0,
    width => 26
  )
  port map (
    en => '1',
    rst => '0',
    d => sub_s_net,
    clk => clk_net,
    ce => ce_net,
    q => delay3_q_net
  );
  mult : entity xil_defaultlib.shaper_xlmult 
  generic map (
    a_arith => xlSigned,
    a_bin_pt => 24,
    a_width => 26,
    b_arith => xlUnsigned,
    b_bin_pt => 24,
    b_width => 24,
    c_a_type => 0,
    c_a_width => 26,
    c_b_type => 1,
    c_b_width => 24,
    c_baat => 26,
    c_output_width => 50,
    c_type => 0,
    core_name0 => "shaper_mult_gen_v12_0_i3",
    extra_registers => 0,
    multsign => 2,
    overflow => 1,
    p_arith => xlSigned,
    p_bin_pt => 24,
    p_width => 26,
    quantization => 2
  )
  port map (
    clr => '0',
    core_clr => '1',
    en => "1",
    rst => "0",
    a => delay_q_net,
    b => reinterpret5_output_port_net,
    clk => clk_net,
    ce => ce_net,
    core_clk => clk_net,
    core_ce => ce_net,
    p => mult_p_net
  );
  reinterpret5 : entity xil_defaultlib.sysgen_reinterpret_1cdbf48fea 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    input_port => slice5_y_net,
    output_port => reinterpret5_output_port_net
  );
  slice5 : entity xil_defaultlib.shaper_xlslice 
  generic map (
    new_lsb => 0,
    new_msb => 23,
    x_width => 32,
    y_width => 24
  )
  port map (
    x => register_b10_q_net,
    y => slice5_y_net
  );
  sub : entity xil_defaultlib.shaper_xladdsub 
  generic map (
    a_arith => xlSigned,
    a_bin_pt => 24,
    a_width => 26,
    b_arith => xlSigned,
    b_bin_pt => 24,
    b_width => 26,
    c_has_c_out => 0,
    c_latency => 0,
    c_output_width => 27,
    core_name0 => "shaper_c_addsub_v12_0_i4",
    extra_registers => 0,
    full_s_arith => 2,
    full_s_width => 27,
    latency => 0,
    overflow => 1,
    quantization => 2,
    s_arith => xlSigned,
    s_bin_pt => 24,
    s_width => 26
  )
  port map (
    clr => '0',
    en => "1",
    a => delay2_q_net,
    b => delay1_q_net,
    clk => clk_net,
    ce => ce_net,
    s => sub_s_net
  );
end structural;
-- Generated from Simulink block shaper/filter_clk_domain/Filter
library IEEE;
use IEEE.std_logic_1164.all;
library xil_defaultlib;
use xil_defaultlib.conv_pkg.all;
entity shaper_filter is
  port (
    in_x0 : in std_logic_vector( 16-1 downto 0 );
    b10 : in std_logic_vector( 32-1 downto 0 );
    na : in std_logic_vector( 32-1 downto 0 );
    nb : in std_logic_vector( 32-1 downto 0 );
    na_inv : in std_logic_vector( 32-1 downto 0 );
    b00 : in std_logic_vector( 32-1 downto 0 );
    b20 : in std_logic_vector( 32-1 downto 0 );
    dc_offset : in std_logic_vector( 32-1 downto 0 );
    clk_1 : in std_logic;
    ce_1 : in std_logic;
    out_x0 : out std_logic_vector( 16-1 downto 0 );
    impulse : out std_logic_vector( 26-1 downto 0 );
    rect : out std_logic_vector( 16-1 downto 0 )
  );
end shaper_filter;
architecture structural of shaper_filter is 
  signal delay_q_net : std_logic_vector( 16-1 downto 0 );
  signal delay3_q_net : std_logic_vector( 26-1 downto 0 );
  signal mcode_y_net : std_logic_vector( 16-1 downto 0 );
  signal convert_dout_net : std_logic_vector( 16-1 downto 0 );
  signal register_dc_offset_q_net : std_logic_vector( 32-1 downto 0 );
  signal clk_net : std_logic;
  signal register_na_inv_q_net : std_logic_vector( 32-1 downto 0 );
  signal ce_net : std_logic;
  signal convert_dout_net_x0 : std_logic_vector( 26-1 downto 0 );
  signal register_na_q_net : std_logic_vector( 32-1 downto 0 );
  signal delay4_q_net : std_logic_vector( 26-1 downto 0 );
  signal register_b10_q_net : std_logic_vector( 32-1 downto 0 );
  signal register_b20_q_net : std_logic_vector( 32-1 downto 0 );
  signal register_b00_q_net : std_logic_vector( 32-1 downto 0 );
  signal adder_s_net : std_logic_vector( 26-1 downto 0 );
  signal register_nb_q_net : std_logic_vector( 32-1 downto 0 );
begin
  out_x0 <= delay_q_net;
  impulse <= delay3_q_net;
  rect <= convert_dout_net;
  mcode_y_net <= in_x0;
  register_b10_q_net <= b10;
  register_na_q_net <= na;
  register_nb_q_net <= nb;
  register_na_inv_q_net <= na_inv;
  register_b00_q_net <= b00;
  register_b20_q_net <= b20;
  register_dc_offset_q_net <= dc_offset;
  clk_net <= clk_1;
  ce_net <= ce_1;
  normalization : entity xil_defaultlib.shaper_normalization 
  port map (
    in1 => convert_dout_net_x0,
    nf => register_na_inv_q_net,
    clk_1 => clk_net,
    ce_1 => ce_net,
    out1 => delay_q_net
  );
  secondpolecorrection : entity xil_defaultlib.shaper_secondpolecorrection 
  port map (
    in1 => mcode_y_net,
    b00 => register_b00_q_net,
    b20 => register_b20_q_net,
    clk_1 => clk_net,
    ce_1 => ce_net,
    out1 => delay4_q_net
  );
  movingaverage1 : entity xil_defaultlib.shaper_movingaverage1 
  port map (
    in1 => adder_s_net,
    n => register_na_q_net,
    clk_1 => clk_net,
    ce_1 => ce_net,
    out1 => convert_dout_net
  );
  movingaverage2 : entity xil_defaultlib.shaper_movingaverage2 
  port map (
    in1 => convert_dout_net,
    n => register_nb_q_net,
    clk_1 => clk_net,
    ce_1 => ce_net,
    out1 => convert_dout_net_x0
  );
  offset : entity xil_defaultlib.shaper_offset 
  port map (
    in1 => delay3_q_net,
    in2 => register_dc_offset_q_net,
    clk_1 => clk_net,
    ce_1 => ce_net,
    out1 => adder_s_net
  );
  pulseunfolder : entity xil_defaultlib.shaper_pulseunfolder 
  port map (
    in1 => delay4_q_net,
    b10 => register_b10_q_net,
    clk_1 => clk_net,
    ce_1 => ce_net,
    out1 => delay3_q_net
  );
end structural;
-- Generated from Simulink block shaper/filter_clk_domain/InvertOffset/signInverter
library IEEE;
use IEEE.std_logic_1164.all;
library xil_defaultlib;
use xil_defaultlib.conv_pkg.all;
entity shaper_signinverter is
  port (
    x : in std_logic_vector( 16-1 downto 0 );
    en : in std_logic_vector( 1-1 downto 0 );
    clk_1 : in std_logic;
    ce_1 : in std_logic;
    y : out std_logic_vector( 16-1 downto 0 )
  );
end shaper_signinverter;
architecture structural of shaper_signinverter is 
  signal mcode_y_net : std_logic_vector( 16-1 downto 0 );
  signal convert_dout_net_x0 : std_logic_vector( 16-1 downto 0 );
  signal slice_y_net : std_logic_vector( 1-1 downto 0 );
  signal clk_net : std_logic;
  signal ce_net : std_logic;
  signal convert_dout_net : std_logic_vector( 1-1 downto 0 );
  signal slice_y_net_x0 : std_logic_vector( 1-1 downto 0 );
begin
  y <= mcode_y_net;
  convert_dout_net_x0 <= x;
  slice_y_net <= en;
  clk_net <= clk_1;
  ce_net <= ce_1;
  convert : entity xil_defaultlib.shaper_xlconvert 
  generic map (
    bool_conversion => 1,
    din_arith => 1,
    din_bin_pt => 0,
    din_width => 1,
    dout_arith => 1,
    dout_bin_pt => 0,
    dout_width => 1,
    latency => 0,
    overflow => xlWrap,
    quantization => xlTruncate
  )
  port map (
    clr => '0',
    en => "1",
    din => slice_y_net_x0,
    clk => clk_net,
    ce => ce_net,
    dout => convert_dout_net
  );
  mcode : entity xil_defaultlib.sysgen_mcode_block_19fdac68ff 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    x => convert_dout_net_x0,
    en => convert_dout_net,
    y => mcode_y_net
  );
  slice : entity xil_defaultlib.shaper_xlslice 
  generic map (
    new_lsb => 0,
    new_msb => 0,
    x_width => 1,
    y_width => 1
  )
  port map (
    x => slice_y_net,
    y => slice_y_net_x0
  );
end structural;
-- Generated from Simulink block shaper/filter_clk_domain/InvertOffset/toSFIx
library IEEE;
use IEEE.std_logic_1164.all;
library xil_defaultlib;
use xil_defaultlib.conv_pkg.all;
entity shaper_tosfix_x0 is
  port (
    in1 : in std_logic_vector( 32-1 downto 0 );
    out1 : out std_logic_vector( 14-1 downto 0 )
  );
end shaper_tosfix_x0;
architecture structural of shaper_tosfix_x0 is 
  signal reinterpret3_output_port_net : std_logic_vector( 14-1 downto 0 );
  signal slice3_y_net : std_logic_vector( 14-1 downto 0 );
  signal registe_invertoffset_dc_offset_q_net : std_logic_vector( 32-1 downto 0 );
begin
  out1 <= reinterpret3_output_port_net;
  registe_invertoffset_dc_offset_q_net <= in1;
  reinterpret3 : entity xil_defaultlib.sysgen_reinterpret_1c13fa7b60 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    input_port => slice3_y_net,
    output_port => reinterpret3_output_port_net
  );
  slice3 : entity xil_defaultlib.shaper_xlslice 
  generic map (
    new_lsb => 0,
    new_msb => 13,
    x_width => 32,
    y_width => 14
  )
  port map (
    x => registe_invertoffset_dc_offset_q_net,
    y => slice3_y_net
  );
end structural;
-- Generated from Simulink block shaper/filter_clk_domain/InvertOffset
library IEEE;
use IEEE.std_logic_1164.all;
library xil_defaultlib;
use xil_defaultlib.conv_pkg.all;
entity shaper_invertoffset is
  port (
    in1 : in std_logic_vector( 14-1 downto 0 );
    offset : in std_logic_vector( 32-1 downto 0 );
    invert : in std_logic_vector( 1-1 downto 0 );
    clk_1 : in std_logic;
    ce_1 : in std_logic;
    rect : out std_logic_vector( 16-1 downto 0 )
  );
end shaper_invertoffset;
architecture structural of shaper_invertoffset is 
  signal mcode_y_net : std_logic_vector( 16-1 downto 0 );
  signal adder_s_net : std_logic_vector( 15-1 downto 0 );
  signal x_net : std_logic_vector( 14-1 downto 0 );
  signal slice_y_net : std_logic_vector( 1-1 downto 0 );
  signal clk_net : std_logic;
  signal convert_dout_net : std_logic_vector( 16-1 downto 0 );
  signal reinterpret3_output_port_net : std_logic_vector( 14-1 downto 0 );
  signal registe_invertoffset_dc_offset_q_net : std_logic_vector( 32-1 downto 0 );
  signal ce_net : std_logic;
begin
  rect <= mcode_y_net;
  x_net <= in1;
  registe_invertoffset_dc_offset_q_net <= offset;
  slice_y_net <= invert;
  clk_net <= clk_1;
  ce_net <= ce_1;
  signinverter : entity xil_defaultlib.shaper_signinverter 
  port map (
    x => convert_dout_net,
    en => slice_y_net,
    clk_1 => clk_net,
    ce_1 => ce_net,
    y => mcode_y_net
  );
  tosfix : entity xil_defaultlib.shaper_tosfix_x0 
  port map (
    in1 => registe_invertoffset_dc_offset_q_net,
    out1 => reinterpret3_output_port_net
  );
  adder : entity xil_defaultlib.shaper_xladdsub 
  generic map (
    a_arith => xlSigned,
    a_bin_pt => 13,
    a_width => 14,
    b_arith => xlSigned,
    b_bin_pt => 13,
    b_width => 14,
    c_has_c_out => 0,
    c_latency => 1,
    c_output_width => 15,
    core_name0 => "shaper_c_addsub_v12_0_i5",
    extra_registers => 0,
    full_s_arith => 2,
    full_s_width => 15,
    latency => 1,
    overflow => 2,
    quantization => 1,
    s_arith => xlSigned,
    s_bin_pt => 13,
    s_width => 15
  )
  port map (
    clr => '0',
    en => "1",
    a => x_net,
    b => reinterpret3_output_port_net,
    clk => clk_net,
    ce => ce_net,
    s => adder_s_net
  );
  convert : entity xil_defaultlib.shaper_xlconvert 
  generic map (
    bool_conversion => 0,
    din_arith => 2,
    din_bin_pt => 13,
    din_width => 15,
    dout_arith => 2,
    dout_bin_pt => 14,
    dout_width => 16,
    latency => 1,
    overflow => xlSaturate,
    quantization => xlTruncate
  )
  port map (
    clr => '0',
    en => "1",
    din => adder_s_net,
    clk => clk_net,
    ce => ce_net,
    dout => convert_dout_net
  );
end structural;
-- Generated from Simulink block shaper/filter_clk_domain/format_dac
library IEEE;
use IEEE.std_logic_1164.all;
library xil_defaultlib;
use xil_defaultlib.conv_pkg.all;
entity shaper_format_dac is
  port (
    rect : in std_logic_vector( 16-1 downto 0 );
    clk_1 : in std_logic;
    ce_1 : in std_logic;
    out1 : out std_logic_vector( 14-1 downto 0 )
  );
end shaper_format_dac;
architecture structural of shaper_format_dac is 
  signal ce_net : std_logic;
  signal logical_y_net : std_logic_vector( 14-1 downto 0 );
  signal clk_net : std_logic;
  signal negate_op_net : std_logic_vector( 17-1 downto 0 );
  signal delay_q_net : std_logic_vector( 16-1 downto 0 );
  signal slice_y_net : std_logic_vector( 14-1 downto 0 );
  signal constant7_op_net : std_logic_vector( 14-1 downto 0 );
begin
  out1 <= logical_y_net;
  delay_q_net <= rect;
  clk_net <= clk_1;
  ce_net <= ce_1;
  constant7 : entity xil_defaultlib.sysgen_constant_7902a7f3fc 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    op => constant7_op_net
  );
  logical : entity xil_defaultlib.sysgen_logical_a96d04752f 
  port map (
    clr => '0',
    d0 => slice_y_net,
    d1 => constant7_op_net,
    clk => clk_net,
    ce => ce_net,
    y => logical_y_net
  );
  slice : entity xil_defaultlib.shaper_xlslice 
  generic map (
    new_lsb => 2,
    new_msb => 15,
    x_width => 17,
    y_width => 14
  )
  port map (
    x => negate_op_net,
    y => slice_y_net
  );
  negate : entity xil_defaultlib.sysgen_negate_0f8c3ca9c0 
  port map (
    clr => '0',
    ip => delay_q_net,
    clk => clk_net,
    ce => ce_net,
    op => negate_op_net
  );
end structural;
-- Generated from Simulink block shaper/filter_clk_domain/format_dac1
library IEEE;
use IEEE.std_logic_1164.all;
library xil_defaultlib;
use xil_defaultlib.conv_pkg.all;
entity shaper_format_dac1 is
  port (
    rect : in std_logic_vector( 16-1 downto 0 );
    clk_1 : in std_logic;
    ce_1 : in std_logic;
    out1 : out std_logic_vector( 14-1 downto 0 )
  );
end shaper_format_dac1;
architecture structural of shaper_format_dac1 is 
  signal logical_y_net : std_logic_vector( 14-1 downto 0 );
  signal ce_net : std_logic;
  signal convert1_dout_net : std_logic_vector( 16-1 downto 0 );
  signal clk_net : std_logic;
  signal slice_y_net : std_logic_vector( 14-1 downto 0 );
  signal negate_op_net : std_logic_vector( 17-1 downto 0 );
  signal constant7_op_net : std_logic_vector( 14-1 downto 0 );
begin
  out1 <= logical_y_net;
  convert1_dout_net <= rect;
  clk_net <= clk_1;
  ce_net <= ce_1;
  constant7 : entity xil_defaultlib.sysgen_constant_7902a7f3fc 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    op => constant7_op_net
  );
  logical : entity xil_defaultlib.sysgen_logical_a96d04752f 
  port map (
    clr => '0',
    d0 => slice_y_net,
    d1 => constant7_op_net,
    clk => clk_net,
    ce => ce_net,
    y => logical_y_net
  );
  negate : entity xil_defaultlib.sysgen_negate_0f8c3ca9c0 
  port map (
    clr => '0',
    ip => convert1_dout_net,
    clk => clk_net,
    ce => ce_net,
    op => negate_op_net
  );
  slice : entity xil_defaultlib.shaper_xlslice 
  generic map (
    new_lsb => 2,
    new_msb => 15,
    x_width => 17,
    y_width => 14
  )
  port map (
    x => negate_op_net,
    y => slice_y_net
  );
end structural;
-- Generated from Simulink block shaper/filter_clk_domain/format_dac2
library IEEE;
use IEEE.std_logic_1164.all;
library xil_defaultlib;
use xil_defaultlib.conv_pkg.all;
entity shaper_format_dac2 is
  port (
    rect : in std_logic_vector( 16-1 downto 0 );
    clk_1 : in std_logic;
    ce_1 : in std_logic;
    out1 : out std_logic_vector( 14-1 downto 0 )
  );
end shaper_format_dac2;
architecture structural of shaper_format_dac2 is 
  signal convert_dout_net : std_logic_vector( 16-1 downto 0 );
  signal slice_y_net : std_logic_vector( 14-1 downto 0 );
  signal constant7_op_net : std_logic_vector( 14-1 downto 0 );
  signal negate_op_net : std_logic_vector( 17-1 downto 0 );
  signal clk_net : std_logic;
  signal logical_y_net : std_logic_vector( 14-1 downto 0 );
  signal ce_net : std_logic;
begin
  out1 <= logical_y_net;
  convert_dout_net <= rect;
  clk_net <= clk_1;
  ce_net <= ce_1;
  constant7 : entity xil_defaultlib.sysgen_constant_7902a7f3fc 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    op => constant7_op_net
  );
  logical : entity xil_defaultlib.sysgen_logical_a96d04752f 
  port map (
    clr => '0',
    d0 => slice_y_net,
    d1 => constant7_op_net,
    clk => clk_net,
    ce => ce_net,
    y => logical_y_net
  );
  negate : entity xil_defaultlib.sysgen_negate_0f8c3ca9c0 
  port map (
    clr => '0',
    ip => convert_dout_net,
    clk => clk_net,
    ce => ce_net,
    op => negate_op_net
  );
  slice : entity xil_defaultlib.shaper_xlslice 
  generic map (
    new_lsb => 2,
    new_msb => 15,
    x_width => 17,
    y_width => 14
  )
  port map (
    x => negate_op_net,
    y => slice_y_net
  );
end structural;
-- Generated from Simulink block shaper/filter_clk_domain/format_dac3
library IEEE;
use IEEE.std_logic_1164.all;
library xil_defaultlib;
use xil_defaultlib.conv_pkg.all;
entity shaper_format_dac3 is
  port (
    rect : in std_logic_vector( 16-1 downto 0 );
    clk_1 : in std_logic;
    ce_1 : in std_logic;
    out1 : out std_logic_vector( 14-1 downto 0 )
  );
end shaper_format_dac3;
architecture structural of shaper_format_dac3 is 
  signal constant7_op_net : std_logic_vector( 14-1 downto 0 );
  signal ce_net : std_logic;
  signal clk_net : std_logic;
  signal slice_y_net : std_logic_vector( 14-1 downto 0 );
  signal negate_op_net : std_logic_vector( 17-1 downto 0 );
  signal logical_y_net : std_logic_vector( 14-1 downto 0 );
  signal mcode_y_net : std_logic_vector( 16-1 downto 0 );
begin
  out1 <= logical_y_net;
  mcode_y_net <= rect;
  clk_net <= clk_1;
  ce_net <= ce_1;
  constant7 : entity xil_defaultlib.sysgen_constant_7902a7f3fc 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    op => constant7_op_net
  );
  logical : entity xil_defaultlib.sysgen_logical_a96d04752f 
  port map (
    clr => '0',
    d0 => slice_y_net,
    d1 => constant7_op_net,
    clk => clk_net,
    ce => ce_net,
    y => logical_y_net
  );
  negate : entity xil_defaultlib.sysgen_negate_0f8c3ca9c0 
  port map (
    clr => '0',
    ip => mcode_y_net,
    clk => clk_net,
    ce => ce_net,
    op => negate_op_net
  );
  slice : entity xil_defaultlib.shaper_xlslice 
  generic map (
    new_lsb => 2,
    new_msb => 15,
    x_width => 17,
    y_width => 14
  )
  port map (
    x => negate_op_net,
    y => slice_y_net
  );
end structural;
-- Generated from Simulink block shaper/filter_clk_domain
library IEEE;
use IEEE.std_logic_1164.all;
library xil_defaultlib;
use xil_defaultlib.conv_pkg.all;
entity shaper_filter_clk_domain is
  port (
    b10 : in std_logic_vector( 32-1 downto 0 );
    na : in std_logic_vector( 32-1 downto 0 );
    nb : in std_logic_vector( 32-1 downto 0 );
    na_inv : in std_logic_vector( 32-1 downto 0 );
    b00 : in std_logic_vector( 32-1 downto 0 );
    b20 : in std_logic_vector( 32-1 downto 0 );
    dc_offset : in std_logic_vector( 32-1 downto 0 );
    invertoffset_dc_offset : in std_logic_vector( 32-1 downto 0 );
    flags : in std_logic_vector( 32-1 downto 0 );
    x : in std_logic_vector( 14-1 downto 0 );
    clk_1 : in std_logic;
    ce_1 : in std_logic;
    dac_x : out std_logic_vector( 14-1 downto 0 );
    dac_y : out std_logic_vector( 14-1 downto 0 );
    dac_y_impulse : out std_logic_vector( 14-1 downto 0 );
    dac_y_rect : out std_logic_vector( 14-1 downto 0 );
    y : out std_logic_vector( 16-1 downto 0 );
    y_impulse : out std_logic_vector( 16-1 downto 0 );
    y_rect : out std_logic_vector( 16-1 downto 0 )
  );
end shaper_filter_clk_domain;
architecture structural of shaper_filter_clk_domain is 
  signal register_b20_q_net : std_logic_vector( 32-1 downto 0 );
  signal register_dc_offset_q_net : std_logic_vector( 32-1 downto 0 );
  signal registe_invertoffset_dc_offset_q_net : std_logic_vector( 32-1 downto 0 );
  signal register_na_q_net : std_logic_vector( 32-1 downto 0 );
  signal register_nb_q_net : std_logic_vector( 32-1 downto 0 );
  signal register_b10_q_net : std_logic_vector( 32-1 downto 0 );
  signal register_na_inv_q_net : std_logic_vector( 32-1 downto 0 );
  signal register_b00_q_net : std_logic_vector( 32-1 downto 0 );
  signal logical_y_net_x1 : std_logic_vector( 14-1 downto 0 );
  signal reinterpret2_output_port_net : std_logic_vector( 16-1 downto 0 );
  signal mcode_y_net : std_logic_vector( 16-1 downto 0 );
  signal logical_y_net : std_logic_vector( 14-1 downto 0 );
  signal slice_y_net : std_logic_vector( 1-1 downto 0 );
  signal convert_dout_net_x0 : std_logic_vector( 16-1 downto 0 );
  signal register_flags_q_net : std_logic_vector( 32-1 downto 0 );
  signal reinterpret1_output_port_net : std_logic_vector( 16-1 downto 0 );
  signal clk_net : std_logic;
  signal ce_net : std_logic;
  signal delay3_q_net : std_logic_vector( 26-1 downto 0 );
  signal convert_dout_net : std_logic_vector( 16-1 downto 0 );
  signal delay_q_net : std_logic_vector( 16-1 downto 0 );
  signal convert1_dout_net : std_logic_vector( 16-1 downto 0 );
  signal reinterpret3_output_port_net : std_logic_vector( 16-1 downto 0 );
  signal logical_y_net_x0 : std_logic_vector( 14-1 downto 0 );
  signal x_net : std_logic_vector( 14-1 downto 0 );
  signal logical_y_net_x2 : std_logic_vector( 14-1 downto 0 );
begin
  register_b10_q_net <= b10;
  register_na_q_net <= na;
  register_nb_q_net <= nb;
  register_na_inv_q_net <= na_inv;
  register_b00_q_net <= b00;
  register_b20_q_net <= b20;
  register_dc_offset_q_net <= dc_offset;
  registe_invertoffset_dc_offset_q_net <= invertoffset_dc_offset;
  register_flags_q_net <= flags;
  dac_x <= logical_y_net_x2;
  dac_y <= logical_y_net;
  dac_y_impulse <= logical_y_net_x0;
  dac_y_rect <= logical_y_net_x1;
  x_net <= x;
  y <= reinterpret1_output_port_net;
  y_impulse <= reinterpret2_output_port_net;
  y_rect <= reinterpret3_output_port_net;
  clk_net <= clk_1;
  ce_net <= ce_1;
  filter : entity xil_defaultlib.shaper_filter 
  port map (
    in_x0 => mcode_y_net,
    b10 => register_b10_q_net,
    na => register_na_q_net,
    nb => register_nb_q_net,
    na_inv => register_na_inv_q_net,
    b00 => register_b00_q_net,
    b20 => register_b20_q_net,
    dc_offset => register_dc_offset_q_net,
    clk_1 => clk_net,
    ce_1 => ce_net,
    out_x0 => delay_q_net,
    impulse => delay3_q_net,
    rect => convert_dout_net
  );
  invertoffset : entity xil_defaultlib.shaper_invertoffset 
  port map (
    in1 => x_net,
    offset => registe_invertoffset_dc_offset_q_net,
    invert => slice_y_net,
    clk_1 => clk_net,
    ce_1 => ce_net,
    rect => mcode_y_net
  );
  format_dac : entity xil_defaultlib.shaper_format_dac 
  port map (
    rect => delay_q_net,
    clk_1 => clk_net,
    ce_1 => ce_net,
    out1 => logical_y_net
  );
  format_dac1 : entity xil_defaultlib.shaper_format_dac1 
  port map (
    rect => convert1_dout_net,
    clk_1 => clk_net,
    ce_1 => ce_net,
    out1 => logical_y_net_x0
  );
  format_dac2 : entity xil_defaultlib.shaper_format_dac2 
  port map (
    rect => convert_dout_net_x0,
    clk_1 => clk_net,
    ce_1 => ce_net,
    out1 => logical_y_net_x1
  );
  format_dac3 : entity xil_defaultlib.shaper_format_dac3 
  port map (
    rect => mcode_y_net,
    clk_1 => clk_net,
    ce_1 => ce_net,
    out1 => logical_y_net_x2
  );
  convert : entity xil_defaultlib.shaper_xlconvert 
  generic map (
    bool_conversion => 0,
    din_arith => 2,
    din_bin_pt => 14,
    din_width => 16,
    dout_arith => 2,
    dout_bin_pt => 14,
    dout_width => 16,
    latency => 1,
    overflow => xlSaturate,
    quantization => xlTruncate
  )
  port map (
    clr => '0',
    en => "1",
    din => convert_dout_net,
    clk => clk_net,
    ce => ce_net,
    dout => convert_dout_net_x0
  );
  convert1 : entity xil_defaultlib.shaper_xlconvert 
  generic map (
    bool_conversion => 0,
    din_arith => 2,
    din_bin_pt => 24,
    din_width => 26,
    dout_arith => 2,
    dout_bin_pt => 14,
    dout_width => 16,
    latency => 1,
    overflow => xlSaturate,
    quantization => xlTruncate
  )
  port map (
    clr => '0',
    en => "1",
    din => delay3_q_net,
    clk => clk_net,
    ce => ce_net,
    dout => convert1_dout_net
  );
  reinterpret1 : entity xil_defaultlib.sysgen_reinterpret_b49c565758 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    input_port => delay_q_net,
    output_port => reinterpret1_output_port_net
  );
  reinterpret2 : entity xil_defaultlib.sysgen_reinterpret_b49c565758 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    input_port => convert1_dout_net,
    output_port => reinterpret2_output_port_net
  );
  reinterpret3 : entity xil_defaultlib.sysgen_reinterpret_b49c565758 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    input_port => convert_dout_net_x0,
    output_port => reinterpret3_output_port_net
  );
  slice : entity xil_defaultlib.shaper_xlslice 
  generic map (
    new_lsb => 0,
    new_msb => 0,
    x_width => 32,
    y_width => 1
  )
  port map (
    x => register_flags_q_net,
    y => slice_y_net
  );
end structural;
-- Generated from Simulink block shaper_struct
library IEEE;
use IEEE.std_logic_1164.all;
library xil_defaultlib;
use xil_defaultlib.conv_pkg.all;
entity shaper_struct is
  port (
    r1_b10 : in std_logic_vector( 32-1 downto 0 );
    r2_na : in std_logic_vector( 32-1 downto 0 );
    r3_nb : in std_logic_vector( 32-1 downto 0 );
    r4_na_inv : in std_logic_vector( 32-1 downto 0 );
    r5_b00 : in std_logic_vector( 32-1 downto 0 );
    r6_b20 : in std_logic_vector( 32-1 downto 0 );
    r7_dc_offset : in std_logic_vector( 32-1 downto 0 );
    r8_invertoffset_dc_offset : in std_logic_vector( 32-1 downto 0 );
    r9_flags : in std_logic_vector( 32-1 downto 0 );
    x : in std_logic_vector( 14-1 downto 0 );
    clk_1 : in std_logic;
    ce_1 : in std_logic;
    dac_x : out std_logic_vector( 14-1 downto 0 );
    dac_y : out std_logic_vector( 14-1 downto 0 );
    dac_y_impulse : out std_logic_vector( 14-1 downto 0 );
    dac_y_rect : out std_logic_vector( 14-1 downto 0 );
    y : out std_logic_vector( 16-1 downto 0 );
    y_impulse : out std_logic_vector( 16-1 downto 0 );
    y_rect : out std_logic_vector( 16-1 downto 0 )
  );
end shaper_struct;
architecture structural of shaper_struct is 
  signal r3_nb_net : std_logic_vector( 32-1 downto 0 );
  signal r4_na_inv_net : std_logic_vector( 32-1 downto 0 );
  signal r5_b00_net : std_logic_vector( 32-1 downto 0 );
  signal r1_b10_net : std_logic_vector( 32-1 downto 0 );
  signal r2_na_net : std_logic_vector( 32-1 downto 0 );
  signal r6_b20_net : std_logic_vector( 32-1 downto 0 );
  signal r7_dc_offset_net : std_logic_vector( 32-1 downto 0 );
  signal reinterpret3_output_port_net : std_logic_vector( 16-1 downto 0 );
  signal ce_net : std_logic;
  signal logical_y_net_x0 : std_logic_vector( 14-1 downto 0 );
  signal reinterpret1_output_port_net : std_logic_vector( 16-1 downto 0 );
  signal reinterpret2_output_port_net : std_logic_vector( 16-1 downto 0 );
  signal r8_invertoffset_dc_offset_net : std_logic_vector( 32-1 downto 0 );
  signal logical_y_net : std_logic_vector( 14-1 downto 0 );
  signal r9_flags_net : std_logic_vector( 32-1 downto 0 );
  signal logical_y_net_x1 : std_logic_vector( 14-1 downto 0 );
  signal logical_y_net_x2 : std_logic_vector( 14-1 downto 0 );
  signal x_net : std_logic_vector( 14-1 downto 0 );
  signal clk_net : std_logic;
  signal register_na_inv_q_net : std_logic_vector( 32-1 downto 0 );
  signal register_b20_q_net : std_logic_vector( 32-1 downto 0 );
  signal registe_invertoffset_dc_offset_q_net : std_logic_vector( 32-1 downto 0 );
  signal register_na_q_net : std_logic_vector( 32-1 downto 0 );
  signal register_b10_q_net : std_logic_vector( 32-1 downto 0 );
  signal register_b00_q_net : std_logic_vector( 32-1 downto 0 );
  signal register_flags_q_net : std_logic_vector( 32-1 downto 0 );
  signal register_dc_offset_q_net : std_logic_vector( 32-1 downto 0 );
  signal register_nb_q_net : std_logic_vector( 32-1 downto 0 );
begin
  r1_b10_net <= r1_b10;
  r2_na_net <= r2_na;
  r3_nb_net <= r3_nb;
  r4_na_inv_net <= r4_na_inv;
  r5_b00_net <= r5_b00;
  r6_b20_net <= r6_b20;
  r7_dc_offset_net <= r7_dc_offset;
  r8_invertoffset_dc_offset_net <= r8_invertoffset_dc_offset;
  r9_flags_net <= r9_flags;
  dac_x <= logical_y_net;
  dac_y <= logical_y_net_x1;
  dac_y_impulse <= logical_y_net_x2;
  dac_y_rect <= logical_y_net_x0;
  x_net <= x;
  y <= reinterpret1_output_port_net;
  y_impulse <= reinterpret2_output_port_net;
  y_rect <= reinterpret3_output_port_net;
  clk_net <= clk_1;
  ce_net <= ce_1;
  axi_clk_domain : entity xil_defaultlib.shaper_axi_clk_domain 
  port map (
    r1_b10 => r1_b10_net,
    r2_na => r2_na_net,
    r3_nb => r3_nb_net,
    r4_na_inv => r4_na_inv_net,
    r5_b00 => r5_b00_net,
    r6_b20 => r6_b20_net,
    r7_dc_offset => r7_dc_offset_net,
    r8_invertoffset_dc_offset => r8_invertoffset_dc_offset_net,
    r9_flags => r9_flags_net
  );
  filter_clk_domain : entity xil_defaultlib.shaper_filter_clk_domain 
  port map (
    b10 => register_b10_q_net,
    na => register_na_q_net,
    nb => register_nb_q_net,
    na_inv => register_na_inv_q_net,
    b00 => register_b00_q_net,
    b20 => register_b20_q_net,
    dc_offset => register_dc_offset_q_net,
    invertoffset_dc_offset => registe_invertoffset_dc_offset_q_net,
    flags => register_flags_q_net,
    x => x_net,
    clk_1 => clk_net,
    ce_1 => ce_net,
    dac_x => logical_y_net,
    dac_y => logical_y_net_x1,
    dac_y_impulse => logical_y_net_x2,
    dac_y_rect => logical_y_net_x0,
    y => reinterpret1_output_port_net,
    y_impulse => reinterpret2_output_port_net,
    y_rect => reinterpret3_output_port_net
  );
  registe_invertoffset_dc_offset : entity xil_defaultlib.shaper_xlregister 
  generic map (
    d_width => 32,
    init_value => b"00000000000000000000000000000000"
  )
  port map (
    en => "1",
    rst => "0",
    d => r8_invertoffset_dc_offset_net,
    clk => clk_net,
    ce => ce_net,
    q => registe_invertoffset_dc_offset_q_net
  );
  register_b00 : entity xil_defaultlib.shaper_xlregister 
  generic map (
    d_width => 32,
    init_value => b"00000111111010011111011100011100"
  )
  port map (
    en => "1",
    rst => "0",
    d => r5_b00_net,
    clk => clk_net,
    ce => ce_net,
    q => register_b00_q_net
  );
  register_b10 : entity xil_defaultlib.shaper_xlregister 
  generic map (
    d_width => 32,
    init_value => b"00000000111110111011101111000010"
  )
  port map (
    en => "1",
    rst => "0",
    d => r1_b10_net,
    clk => clk_net,
    ce => ce_net,
    q => register_b10_q_net
  );
  register_b20 : entity xil_defaultlib.shaper_xlregister 
  generic map (
    d_width => 32,
    init_value => b"00000000111010011100000011111000"
  )
  port map (
    en => "1",
    rst => "0",
    d => r6_b20_net,
    clk => clk_net,
    ce => ce_net,
    q => register_b20_q_net
  );
  register_dc_offset : entity xil_defaultlib.shaper_xlregister 
  generic map (
    d_width => 32,
    init_value => b"00000000000000000000000000000000"
  )
  port map (
    en => "1",
    rst => "0",
    d => r7_dc_offset_net,
    clk => clk_net,
    ce => ce_net,
    q => register_dc_offset_q_net
  );
  register_flags : entity xil_defaultlib.shaper_xlregister 
  generic map (
    d_width => 32,
    init_value => b"00000000000000000000000000000001"
  )
  port map (
    en => "1",
    rst => "0",
    d => r9_flags_net,
    clk => clk_net,
    ce => ce_net,
    q => register_flags_q_net
  );
  register_na : entity xil_defaultlib.shaper_xlregister 
  generic map (
    d_width => 32,
    init_value => b"00000000000000000000000001111010"
  )
  port map (
    en => "1",
    rst => "0",
    d => r2_na_net,
    clk => clk_net,
    ce => ce_net,
    q => register_na_q_net
  );
  register_na_inv : entity xil_defaultlib.shaper_xlregister 
  generic map (
    d_width => 32,
    init_value => b"00000000000001000001100010010011"
  )
  port map (
    en => "1",
    rst => "0",
    d => r4_na_inv_net,
    clk => clk_net,
    ce => ce_net,
    q => register_na_inv_q_net
  );
  register_nb : entity xil_defaultlib.shaper_xlregister 
  generic map (
    d_width => 32,
    init_value => b"00000000000000000000000001111111"
  )
  port map (
    en => "1",
    rst => "0",
    d => r3_nb_net,
    clk => clk_net,
    ce => ce_net,
    q => register_nb_q_net
  );
end structural;
-- Generated from Simulink block 
library IEEE;
use IEEE.std_logic_1164.all;
library xil_defaultlib;
use xil_defaultlib.conv_pkg.all;
entity shaper_default_clock_driver is
  port (
    shaper_sysclk : in std_logic;
    shaper_sysce : in std_logic;
    shaper_sysclr : in std_logic;
    shaper_clk1 : out std_logic;
    shaper_ce1 : out std_logic
  );
end shaper_default_clock_driver;
architecture structural of shaper_default_clock_driver is 
begin
  clockdriver : entity xil_defaultlib.xlclockdriver 
  generic map (
    period => 1,
    log_2_period => 1
  )
  port map (
    sysclk => shaper_sysclk,
    sysce => shaper_sysce,
    sysclr => shaper_sysclr,
    clk => shaper_clk1,
    ce => shaper_ce1
  );
end structural;
-- Generated from Simulink block 
library IEEE;
use IEEE.std_logic_1164.all;
library xil_defaultlib;
use xil_defaultlib.conv_pkg.all;
entity shaper is
  port (
    r1_b10 : in std_logic_vector( 32-1 downto 0 );
    r2_na : in std_logic_vector( 32-1 downto 0 );
    r3_nb : in std_logic_vector( 32-1 downto 0 );
    r4_na_inv : in std_logic_vector( 32-1 downto 0 );
    r5_b00 : in std_logic_vector( 32-1 downto 0 );
    r6_b20 : in std_logic_vector( 32-1 downto 0 );
    r7_dc_offset : in std_logic_vector( 32-1 downto 0 );
    r8_invertoffset_dc_offset : in std_logic_vector( 32-1 downto 0 );
    r9_flags : in std_logic_vector( 32-1 downto 0 );
    x : in std_logic_vector( 14-1 downto 0 );
    clk : in std_logic;
    dac_x : out std_logic_vector( 14-1 downto 0 );
    dac_y : out std_logic_vector( 14-1 downto 0 );
    dac_y_impulse : out std_logic_vector( 14-1 downto 0 );
    dac_y_rect : out std_logic_vector( 14-1 downto 0 );
    y : out std_logic_vector( 16-1 downto 0 );
    y_impulse : out std_logic_vector( 16-1 downto 0 );
    y_rect : out std_logic_vector( 16-1 downto 0 )
  );
end shaper;
architecture structural of shaper is 
  attribute core_generation_info : string;
  attribute core_generation_info of structural : architecture is "shaper,sysgen_core_2022_2,{,compilation=IP Catalog,block_icon_display=Default,family=zynq,part=xc7z020,speed=-1,package=clg484,synthesis_language=vhdl,hdl_library=xil_defaultlib,synthesis_strategy=Vivado Synthesis Defaults,implementation_strategy=Vivado Implementation Defaults,testbench=0,interface_doc=1,ce_clr=0,clock_period=10,system_simulink_period=2e-08,waveform_viewer=0,axilite_interface=0,ip_catalog_plugin=0,hwcosim_burst_mode=0,simulation_time=0.0004,accum=2,addsub=6,constant=8,convert=6,counter=2,delay=10,logical=4,mcode=1,mult=4,negate=4,register=9,reinterpret=11,relational=2,slice=14,spram=2,}";
  signal clk_1_net : std_logic;
  signal ce_1_net : std_logic;
begin
  shaper_default_clock_driver : entity xil_defaultlib.shaper_default_clock_driver 
  port map (
    shaper_sysclk => clk,
    shaper_sysce => '1',
    shaper_sysclr => '0',
    shaper_clk1 => clk_1_net,
    shaper_ce1 => ce_1_net
  );
  shaper_struct : entity xil_defaultlib.shaper_struct 
  port map (
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
    clk_1 => clk_1_net,
    ce_1 => ce_1_net,
    dac_x => dac_x,
    dac_y => dac_y,
    dac_y_impulse => dac_y_impulse,
    dac_y_rect => dac_y_rect,
    y => y,
    y_impulse => y_impulse,
    y_rect => y_rect
  );
end structural;
