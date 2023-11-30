-- Generated from Simulink block peak_detector/axiBusDomain
library IEEE;
use IEEE.std_logic_1164.all;
library xil_defaultlib;
use xil_defaultlib.conv_pkg.all;
entity peak_detector_axibusdomain is
  port (
    r1_x_delay : in std_logic_vector( 32-1 downto 0 );
    r2_x_noise : in std_logic_vector( 32-1 downto 0 );
    r3_x_min_max : in std_logic_vector( 32-1 downto 0 );
    r4_en_pkd : in std_logic_vector( 32-1 downto 0 )
  );
end peak_detector_axibusdomain;
architecture structural of peak_detector_axibusdomain is 
  signal r1_x_delay_net : std_logic_vector( 32-1 downto 0 );
  signal r2_x_noise_net : std_logic_vector( 32-1 downto 0 );
  signal r4_en_pkd_net : std_logic_vector( 32-1 downto 0 );
  signal r3_x_min_max_net : std_logic_vector( 32-1 downto 0 );
begin
  r1_x_delay_net <= r1_x_delay;
  r2_x_noise_net <= r2_x_noise;
  r3_x_min_max_net <= r3_x_min_max;
  r4_en_pkd_net <= r4_en_pkd;
end structural;
-- Generated from Simulink block peak_detector/signalDomain/format_dac
library IEEE;
use IEEE.std_logic_1164.all;
library xil_defaultlib;
use xil_defaultlib.conv_pkg.all;
entity peak_detector_format_dac is
  port (
    in1 : in std_logic_vector( 16-1 downto 0 );
    clk_1 : in std_logic;
    ce_1 : in std_logic;
    out1 : out std_logic_vector( 14-1 downto 0 )
  );
end peak_detector_format_dac;
architecture structural of peak_detector_format_dac is 
  signal negate_op_net : std_logic_vector( 17-1 downto 0 );
  signal clk_net : std_logic;
  signal ce_net : std_logic;
  signal mcode1_xmax_net : std_logic_vector( 16-1 downto 0 );
  signal constant7_op_net : std_logic_vector( 14-1 downto 0 );
  signal logical_y_net : std_logic_vector( 14-1 downto 0 );
  signal slice_y_net : std_logic_vector( 14-1 downto 0 );
begin
  out1 <= logical_y_net;
  mcode1_xmax_net <= in1;
  clk_net <= clk_1;
  ce_net <= ce_1;
  constant7 : entity xil_defaultlib.sysgen_constant_4171fa8991 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    op => constant7_op_net
  );
  logical : entity xil_defaultlib.sysgen_logical_38a5424d30 
  port map (
    clr => '0',
    d0 => slice_y_net,
    d1 => constant7_op_net,
    clk => clk_net,
    ce => ce_net,
    y => logical_y_net
  );
  negate : entity xil_defaultlib.sysgen_negate_7cf071ca87 
  port map (
    clr => '0',
    ip => mcode1_xmax_net,
    clk => clk_net,
    ce => ce_net,
    op => negate_op_net
  );
  slice : entity xil_defaultlib.peak_detector_xlslice 
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
-- Generated from Simulink block peak_detector/signalDomain/peakDetector/delayLine
library IEEE;
use IEEE.std_logic_1164.all;
library xil_defaultlib;
use xil_defaultlib.conv_pkg.all;
entity peak_detector_delayline is
  port (
    din : in std_logic_vector( 16-1 downto 0 );
    addr : in std_logic_vector( 10-1 downto 0 );
    clk_1 : in std_logic;
    ce_1 : in std_logic;
    dout : out std_logic_vector( 16-1 downto 0 )
  );
end peak_detector_delayline;
architecture structural of peak_detector_delayline is 
  signal reinterpret3_output_port_net_x0 : std_logic_vector( 16-1 downto 0 );
  signal ce_net : std_logic;
  signal clk_net : std_logic;
  signal constant_op_net : std_logic_vector( 10-1 downto 0 );
  signal single_port_ram_data_out_net : std_logic_vector( 16-1 downto 0 );
  signal reinterpret3_output_port_net : std_logic_vector( 10-1 downto 0 );
  signal reinterpret3_output_port_net_x1 : std_logic_vector( 10-1 downto 0 );
  signal counter_op_net : std_logic_vector( 10-1 downto 0 );
  signal relational_op_net : std_logic_vector( 1-1 downto 0 );
  signal slice3_y_net : std_logic_vector( 10-1 downto 0 );
  signal constant1_op_net : std_logic_vector( 1-1 downto 0 );
begin
  dout <= single_port_ram_data_out_net;
  reinterpret3_output_port_net_x0 <= din;
  reinterpret3_output_port_net <= addr;
  clk_net <= clk_1;
  ce_net <= ce_1;
  constant_x0 : entity xil_defaultlib.sysgen_constant_d3ac20869d 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    op => constant_op_net
  );
  constant1 : entity xil_defaultlib.sysgen_constant_97bcd651c6 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    op => constant1_op_net
  );
  counter : entity xil_defaultlib.peak_detector_xlcounter_free 
  generic map (
    core_name0 => "peak_detector_c_counter_binary_v12_0_i0",
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
  reinterpret3 : entity xil_defaultlib.sysgen_reinterpret_0c5f44f606 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    input_port => slice3_y_net,
    output_port => reinterpret3_output_port_net_x1
  );
  relational : entity xil_defaultlib.sysgen_relational_384ec697c6 
  port map (
    clr => '0',
    a => reinterpret3_output_port_net_x1,
    b => counter_op_net,
    clk => clk_net,
    ce => ce_net,
    op => relational_op_net
  );
  single_port_ram : entity xil_defaultlib.peak_detector_xlspram 
  generic map (
    init_value => b"0000000000000000",
    latency => 1,
    mem_init_file => "xpm_f5fed5_vivado.mem",
    mem_size => 16384,
    mem_type => "block",
    read_reset_val => "0",
    width => 16,
    width_addr => 10,
    write_mode_a => "read_first",
    xpm_lat => 1
  )
  port map (
    en => "1",
    rst => "0",
    addr => counter_op_net,
    data_in => reinterpret3_output_port_net_x0,
    we => constant1_op_net,
    clk => clk_net,
    ce => ce_net,
    data_out => single_port_ram_data_out_net
  );
  slice3 : entity xil_defaultlib.peak_detector_xlslice 
  generic map (
    new_lsb => 0,
    new_msb => 9,
    x_width => 10,
    y_width => 10
  )
  port map (
    x => reinterpret3_output_port_net,
    y => slice3_y_net
  );
end structural;
-- Generated from Simulink block peak_detector/signalDomain/peakDetector/math
library IEEE;
use IEEE.std_logic_1164.all;
library xil_defaultlib;
use xil_defaultlib.conv_pkg.all;
entity peak_detector_math is
  port (
    x : in std_logic_vector( 16-1 downto 0 );
    xnoise : in std_logic_vector( 16-1 downto 0 );
    xdelay : in std_logic_vector( 16-1 downto 0 );
    clk_1 : in std_logic;
    ce_1 : in std_logic;
    x_m_xnoise : out std_logic_vector( 16-1 downto 0 );
    xdelay_m_xnoise : out std_logic_vector( 16-1 downto 0 )
  );
end peak_detector_math;
architecture structural of peak_detector_math is 
  signal addsub_s_net : std_logic_vector( 16-1 downto 0 );
  signal addsub1_s_net : std_logic_vector( 16-1 downto 0 );
  signal reinterpret3_output_port_net_x0 : std_logic_vector( 16-1 downto 0 );
  signal reinterpret3_output_port_net : std_logic_vector( 16-1 downto 0 );
  signal single_port_ram_data_out_net : std_logic_vector( 16-1 downto 0 );
  signal clk_net : std_logic;
  signal ce_net : std_logic;
begin
  x_m_xnoise <= addsub_s_net;
  xdelay_m_xnoise <= addsub1_s_net;
  reinterpret3_output_port_net <= x;
  reinterpret3_output_port_net_x0 <= xnoise;
  single_port_ram_data_out_net <= xdelay;
  clk_net <= clk_1;
  ce_net <= ce_1;
  addsub : entity xil_defaultlib.peak_detector_xladdsub 
  generic map (
    a_arith => xlSigned,
    a_bin_pt => 14,
    a_width => 16,
    b_arith => xlSigned,
    b_bin_pt => 14,
    b_width => 16,
    c_has_c_out => 0,
    c_latency => 1,
    c_output_width => 17,
    core_name0 => "peak_detector_c_addsub_v12_0_i0",
    extra_registers => 0,
    full_s_arith => 2,
    full_s_width => 17,
    latency => 1,
    overflow => 2,
    quantization => 2,
    s_arith => xlSigned,
    s_bin_pt => 14,
    s_width => 16
  )
  port map (
    clr => '0',
    en => "1",
    a => reinterpret3_output_port_net,
    b => reinterpret3_output_port_net_x0,
    clk => clk_net,
    ce => ce_net,
    s => addsub_s_net
  );
  addsub1 : entity xil_defaultlib.peak_detector_xladdsub 
  generic map (
    a_arith => xlSigned,
    a_bin_pt => 14,
    a_width => 16,
    b_arith => xlSigned,
    b_bin_pt => 14,
    b_width => 16,
    c_has_c_out => 0,
    c_latency => 1,
    c_output_width => 17,
    core_name0 => "peak_detector_c_addsub_v12_0_i0",
    extra_registers => 0,
    full_s_arith => 2,
    full_s_width => 17,
    latency => 1,
    overflow => 2,
    quantization => 2,
    s_arith => xlSigned,
    s_bin_pt => 14,
    s_width => 16
  )
  port map (
    clr => '0',
    en => "1",
    a => single_port_ram_data_out_net,
    b => reinterpret3_output_port_net_x0,
    clk => clk_net,
    ce => ce_net,
    s => addsub1_s_net
  );
end structural;
-- Generated from Simulink block peak_detector/signalDomain/peakDetector/risingEdgeTrigger
library IEEE;
use IEEE.std_logic_1164.all;
library xil_defaultlib;
use xil_defaultlib.conv_pkg.all;
entity peak_detector_risingedgetrigger is
  port (
    x : in std_logic_vector( 1-1 downto 0 );
    clk_1 : in std_logic;
    ce_1 : in std_logic;
    re_trigg : out std_logic_vector( 1-1 downto 0 )
  );
end peak_detector_risingedgetrigger;
architecture structural of peak_detector_risingedgetrigger is 
  signal ce_net : std_logic;
  signal mcode_pkd_net : std_logic_vector( 1-1 downto 0 );
  signal mcode_re_net : std_logic_vector( 1-1 downto 0 );
  signal clk_net : std_logic;
  signal mcode_y_net : std_logic_vector( 1-1 downto 0 );
  signal reinterpret_output_port_net : std_logic_vector( 1-1 downto 0 );
  signal slice_y_net : std_logic_vector( 1-1 downto 0 );
begin
  re_trigg <= mcode_re_net;
  mcode_pkd_net <= x;
  clk_net <= clk_1;
  ce_net <= ce_1;
  mcode : entity xil_defaultlib.sysgen_mcode_block_7981bf2648 
  port map (
    clr => '0',
    x => reinterpret_output_port_net,
    clk => clk_net,
    ce => ce_net,
    y => mcode_y_net,
    re => mcode_re_net
  );
  reinterpret : entity xil_defaultlib.sysgen_reinterpret_4b904b009a 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    input_port => slice_y_net,
    output_port => reinterpret_output_port_net
  );
  slice : entity xil_defaultlib.peak_detector_xlslice 
  generic map (
    new_lsb => 0,
    new_msb => 0,
    x_width => 1,
    y_width => 1
  )
  port map (
    x => mcode_pkd_net,
    y => slice_y_net
  );
end structural;
-- Generated from Simulink block peak_detector/signalDomain/peakDetector/toBool
library IEEE;
use IEEE.std_logic_1164.all;
library xil_defaultlib;
use xil_defaultlib.conv_pkg.all;
entity peak_detector_tobool_x0 is
  port (
    in1 : in std_logic_vector( 1-1 downto 0 );
    clk_1 : in std_logic;
    ce_1 : in std_logic;
    out1 : out std_logic_vector( 1-1 downto 0 )
  );
end peak_detector_tobool_x0;
architecture structural of peak_detector_tobool_x0 is 
  signal ce_net : std_logic;
  signal clk_net : std_logic;
  signal slice_y_net : std_logic_vector( 1-1 downto 0 );
  signal convert_dout_net_x0 : std_logic_vector( 1-1 downto 0 );
  signal convert_dout_net : std_logic_vector( 1-1 downto 0 );
begin
  out1 <= convert_dout_net_x0;
  convert_dout_net <= in1;
  clk_net <= clk_1;
  ce_net <= ce_1;
  convert : entity xil_defaultlib.peak_detector_xlconvert 
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
    din => slice_y_net,
    clk => clk_net,
    ce => ce_net,
    dout => convert_dout_net_x0
  );
  slice : entity xil_defaultlib.peak_detector_xlslice 
  generic map (
    new_lsb => 0,
    new_msb => 0,
    x_width => 1,
    y_width => 1
  )
  port map (
    x => convert_dout_net,
    y => slice_y_net
  );
end structural;
-- Generated from Simulink block peak_detector/signalDomain/peakDetector/toSFIx
library IEEE;
use IEEE.std_logic_1164.all;
library xil_defaultlib;
use xil_defaultlib.conv_pkg.all;
entity peak_detector_tosfix is
  port (
    in1 : in std_logic_vector( 32-1 downto 0 );
    out1 : out std_logic_vector( 16-1 downto 0 )
  );
end peak_detector_tosfix;
architecture structural of peak_detector_tosfix is 
  signal reinterpret3_output_port_net : std_logic_vector( 16-1 downto 0 );
  signal register1_q_net : std_logic_vector( 32-1 downto 0 );
  signal slice3_y_net : std_logic_vector( 16-1 downto 0 );
begin
  out1 <= reinterpret3_output_port_net;
  register1_q_net <= in1;
  reinterpret3 : entity xil_defaultlib.sysgen_reinterpret_bae48be5e4 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    input_port => slice3_y_net,
    output_port => reinterpret3_output_port_net
  );
  slice3 : entity xil_defaultlib.peak_detector_xlslice 
  generic map (
    new_lsb => 0,
    new_msb => 15,
    x_width => 32,
    y_width => 16
  )
  port map (
    x => register1_q_net,
    y => slice3_y_net
  );
end structural;
-- Generated from Simulink block peak_detector/signalDomain/peakDetector/toSFIx1
library IEEE;
use IEEE.std_logic_1164.all;
library xil_defaultlib;
use xil_defaultlib.conv_pkg.all;
entity peak_detector_tosfix1 is
  port (
    in1 : in std_logic_vector( 16-1 downto 0 );
    out1 : out std_logic_vector( 16-1 downto 0 )
  );
end peak_detector_tosfix1;
architecture structural of peak_detector_tosfix1 is 
  signal reinterpret3_output_port_net : std_logic_vector( 16-1 downto 0 );
  signal x_net : std_logic_vector( 16-1 downto 0 );
  signal slice3_y_net : std_logic_vector( 16-1 downto 0 );
begin
  out1 <= reinterpret3_output_port_net;
  x_net <= in1;
  reinterpret3 : entity xil_defaultlib.sysgen_reinterpret_bae48be5e4 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    input_port => slice3_y_net,
    output_port => reinterpret3_output_port_net
  );
  slice3 : entity xil_defaultlib.peak_detector_xlslice 
  generic map (
    new_lsb => 0,
    new_msb => 15,
    x_width => 16,
    y_width => 16
  )
  port map (
    x => x_net,
    y => slice3_y_net
  );
end structural;
-- Generated from Simulink block peak_detector/signalDomain/peakDetector/toSFIx2
library IEEE;
use IEEE.std_logic_1164.all;
library xil_defaultlib;
use xil_defaultlib.conv_pkg.all;
entity peak_detector_tosfix2 is
  port (
    in1 : in std_logic_vector( 16-1 downto 0 );
    out1 : out std_logic_vector( 16-1 downto 0 )
  );
end peak_detector_tosfix2;
architecture structural of peak_detector_tosfix2 is 
  signal slice1_y_net : std_logic_vector( 16-1 downto 0 );
  signal slice3_y_net : std_logic_vector( 16-1 downto 0 );
  signal reinterpret3_output_port_net : std_logic_vector( 16-1 downto 0 );
begin
  out1 <= reinterpret3_output_port_net;
  slice1_y_net <= in1;
  reinterpret3 : entity xil_defaultlib.sysgen_reinterpret_bae48be5e4 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    input_port => slice3_y_net,
    output_port => reinterpret3_output_port_net
  );
  slice3 : entity xil_defaultlib.peak_detector_xlslice 
  generic map (
    new_lsb => 0,
    new_msb => 15,
    x_width => 16,
    y_width => 16
  )
  port map (
    x => slice1_y_net,
    y => slice3_y_net
  );
end structural;
-- Generated from Simulink block peak_detector/signalDomain/peakDetector/toSFIx3
library IEEE;
use IEEE.std_logic_1164.all;
library xil_defaultlib;
use xil_defaultlib.conv_pkg.all;
entity peak_detector_tosfix3 is
  port (
    in1 : in std_logic_vector( 16-1 downto 0 );
    out1 : out std_logic_vector( 16-1 downto 0 )
  );
end peak_detector_tosfix3;
architecture structural of peak_detector_tosfix3 is 
  signal slice2_y_net : std_logic_vector( 16-1 downto 0 );
  signal reinterpret3_output_port_net : std_logic_vector( 16-1 downto 0 );
  signal slice3_y_net : std_logic_vector( 16-1 downto 0 );
begin
  out1 <= reinterpret3_output_port_net;
  slice2_y_net <= in1;
  reinterpret3 : entity xil_defaultlib.sysgen_reinterpret_bae48be5e4 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    input_port => slice3_y_net,
    output_port => reinterpret3_output_port_net
  );
  slice3 : entity xil_defaultlib.peak_detector_xlslice 
  generic map (
    new_lsb => 0,
    new_msb => 15,
    x_width => 16,
    y_width => 16
  )
  port map (
    x => slice2_y_net,
    y => slice3_y_net
  );
end structural;
-- Generated from Simulink block peak_detector/signalDomain/peakDetector/toUFix
library IEEE;
use IEEE.std_logic_1164.all;
library xil_defaultlib;
use xil_defaultlib.conv_pkg.all;
entity peak_detector_toufix is
  port (
    in1 : in std_logic_vector( 32-1 downto 0 );
    out1 : out std_logic_vector( 10-1 downto 0 )
  );
end peak_detector_toufix;
architecture structural of peak_detector_toufix is 
  signal reinterpret3_output_port_net : std_logic_vector( 10-1 downto 0 );
  signal slice3_y_net : std_logic_vector( 10-1 downto 0 );
  signal register_q_net : std_logic_vector( 32-1 downto 0 );
begin
  out1 <= reinterpret3_output_port_net;
  register_q_net <= in1;
  reinterpret3 : entity xil_defaultlib.sysgen_reinterpret_0c5f44f606 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    input_port => slice3_y_net,
    output_port => reinterpret3_output_port_net
  );
  slice3 : entity xil_defaultlib.peak_detector_xlslice 
  generic map (
    new_lsb => 0,
    new_msb => 9,
    x_width => 32,
    y_width => 10
  )
  port map (
    x => register_q_net,
    y => slice3_y_net
  );
end structural;
-- Generated from Simulink block peak_detector/signalDomain/peakDetector
library IEEE;
use IEEE.std_logic_1164.all;
library xil_defaultlib;
use xil_defaultlib.conv_pkg.all;
entity peak_detector_peakdetector is
  port (
    x : in std_logic_vector( 16-1 downto 0 );
    x_delay : in std_logic_vector( 32-1 downto 0 );
    x_noise : in std_logic_vector( 32-1 downto 0 );
    x_min : in std_logic_vector( 16-1 downto 0 );
    x_max : in std_logic_vector( 16-1 downto 0 );
    en : in std_logic_vector( 1-1 downto 0 );
    clk_1 : in std_logic;
    ce_1 : in std_logic;
    peak : out std_logic_vector( 1-1 downto 0 );
    peak_amp : out std_logic_vector( 16-1 downto 0 );
    pulse_delayed : out std_logic_vector( 16-1 downto 0 );
    state : out std_logic_vector( 3-1 downto 0 )
  );
end peak_detector_peakdetector;
architecture structural of peak_detector_peakdetector is 
  signal register_q_net : std_logic_vector( 32-1 downto 0 );
  signal ce_net : std_logic;
  signal addsub_s_net : std_logic_vector( 16-1 downto 0 );
  signal reinterpret3_output_port_net : std_logic_vector( 16-1 downto 0 );
  signal single_port_ram_data_out_net : std_logic_vector( 16-1 downto 0 );
  signal addsub1_s_net : std_logic_vector( 16-1 downto 0 );
  signal convert_dout_net : std_logic_vector( 1-1 downto 0 );
  signal mcode_state_out_net : std_logic_vector( 3-1 downto 0 );
  signal reinterpret3_output_port_net_x1 : std_logic_vector( 16-1 downto 0 );
  signal mcode_re_net : std_logic_vector( 1-1 downto 0 );
  signal reinterpret3_output_port_net_x2 : std_logic_vector( 16-1 downto 0 );
  signal x_net : std_logic_vector( 16-1 downto 0 );
  signal mcode1_xmax_net : std_logic_vector( 16-1 downto 0 );
  signal reinterpret3_output_port_net_x0 : std_logic_vector( 16-1 downto 0 );
  signal mcode_pkd_net : std_logic_vector( 1-1 downto 0 );
  signal clk_net : std_logic;
  signal register1_q_net : std_logic_vector( 32-1 downto 0 );
  signal slice1_y_net : std_logic_vector( 16-1 downto 0 );
  signal slice2_y_net : std_logic_vector( 16-1 downto 0 );
  signal convert_dout_net_x0 : std_logic_vector( 1-1 downto 0 );
  signal reinterpret3_output_port_net_x3 : std_logic_vector( 10-1 downto 0 );
  signal mcode_cmp_en_net : std_logic_vector( 1-1 downto 0 );
  signal mcode_cmp_rst_net : std_logic_vector( 1-1 downto 0 );
begin
  peak <= mcode_re_net;
  peak_amp <= mcode1_xmax_net;
  pulse_delayed <= addsub1_s_net;
  state <= mcode_state_out_net;
  x_net <= x;
  register_q_net <= x_delay;
  register1_q_net <= x_noise;
  slice1_y_net <= x_min;
  slice2_y_net <= x_max;
  convert_dout_net_x0 <= en;
  clk_net <= clk_1;
  ce_net <= ce_1;
  delayline : entity xil_defaultlib.peak_detector_delayline 
  port map (
    din => reinterpret3_output_port_net_x0,
    addr => reinterpret3_output_port_net_x3,
    clk_1 => clk_net,
    ce_1 => ce_net,
    dout => single_port_ram_data_out_net
  );
  math : entity xil_defaultlib.peak_detector_math 
  port map (
    x => reinterpret3_output_port_net_x0,
    xnoise => reinterpret3_output_port_net,
    xdelay => single_port_ram_data_out_net,
    clk_1 => clk_net,
    ce_1 => ce_net,
    x_m_xnoise => addsub_s_net,
    xdelay_m_xnoise => addsub1_s_net
  );
  risingedgetrigger : entity xil_defaultlib.peak_detector_risingedgetrigger 
  port map (
    x => mcode_pkd_net,
    clk_1 => clk_net,
    ce_1 => ce_net,
    re_trigg => mcode_re_net
  );
  tobool : entity xil_defaultlib.peak_detector_tobool_x0 
  port map (
    in1 => convert_dout_net_x0,
    clk_1 => clk_net,
    ce_1 => ce_net,
    out1 => convert_dout_net
  );
  tosfix : entity xil_defaultlib.peak_detector_tosfix 
  port map (
    in1 => register1_q_net,
    out1 => reinterpret3_output_port_net
  );
  tosfix1 : entity xil_defaultlib.peak_detector_tosfix1 
  port map (
    in1 => x_net,
    out1 => reinterpret3_output_port_net_x0
  );
  tosfix2 : entity xil_defaultlib.peak_detector_tosfix2 
  port map (
    in1 => slice1_y_net,
    out1 => reinterpret3_output_port_net_x1
  );
  tosfix3 : entity xil_defaultlib.peak_detector_tosfix3 
  port map (
    in1 => slice2_y_net,
    out1 => reinterpret3_output_port_net_x2
  );
  toufix : entity xil_defaultlib.peak_detector_toufix 
  port map (
    in1 => register_q_net,
    out1 => reinterpret3_output_port_net_x3
  );
  mcode : entity xil_defaultlib.sysgen_mcode_block_de97dfc667 
  port map (
    clr => '0',
    x => reinterpret3_output_port_net_x0,
    xdelay => single_port_ram_data_out_net,
    xnoise => reinterpret3_output_port_net,
    en => convert_dout_net,
    x_m_xnoise => addsub_s_net,
    xdelay_m_xnoise => addsub1_s_net,
    xmin => reinterpret3_output_port_net_x1,
    xmax => reinterpret3_output_port_net_x2,
    clk => clk_net,
    ce => ce_net,
    pkd => mcode_pkd_net,
    cmp_en => mcode_cmp_en_net,
    cmp_rst => mcode_cmp_rst_net,
    state_out => mcode_state_out_net
  );
  mcode1 : entity xil_defaultlib.sysgen_mcode_block_528dae7611 
  port map (
    clr => '0',
    x => reinterpret3_output_port_net_x0,
    rst => mcode_cmp_rst_net,
    en => mcode_cmp_en_net,
    clk => clk_net,
    ce => ce_net,
    xmax => mcode1_xmax_net
  );
end structural;
-- Generated from Simulink block peak_detector/signalDomain/toBool
library IEEE;
use IEEE.std_logic_1164.all;
library xil_defaultlib;
use xil_defaultlib.conv_pkg.all;
entity peak_detector_tobool is
  port (
    in1 : in std_logic_vector( 1-1 downto 0 );
    clk_1 : in std_logic;
    ce_1 : in std_logic;
    out1 : out std_logic_vector( 1-1 downto 0 )
  );
end peak_detector_tobool;
architecture structural of peak_detector_tobool is 
  signal convert_dout_net : std_logic_vector( 1-1 downto 0 );
  signal slice_y_net_x0 : std_logic_vector( 1-1 downto 0 );
  signal ce_net : std_logic;
  signal slice_y_net : std_logic_vector( 1-1 downto 0 );
  signal clk_net : std_logic;
begin
  out1 <= convert_dout_net;
  slice_y_net_x0 <= in1;
  clk_net <= clk_1;
  ce_net <= ce_1;
  convert : entity xil_defaultlib.peak_detector_xlconvert 
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
    din => slice_y_net,
    clk => clk_net,
    ce => ce_net,
    dout => convert_dout_net
  );
  slice : entity xil_defaultlib.peak_detector_xlslice 
  generic map (
    new_lsb => 0,
    new_msb => 0,
    x_width => 1,
    y_width => 1
  )
  port map (
    x => slice_y_net_x0,
    y => slice_y_net
  );
end structural;
-- Generated from Simulink block peak_detector/signalDomain
library IEEE;
use IEEE.std_logic_1164.all;
library xil_defaultlib;
use xil_defaultlib.conv_pkg.all;
entity peak_detector_signaldomain is
  port (
    x_delay : in std_logic_vector( 32-1 downto 0 );
    x_noise : in std_logic_vector( 32-1 downto 0 );
    x_min_max : in std_logic_vector( 32-1 downto 0 );
    en_pkd : in std_logic_vector( 32-1 downto 0 );
    x : in std_logic_vector( 16-1 downto 0 );
    clk_1 : in std_logic;
    ce_1 : in std_logic;
    dac_peak_amp : out std_logic_vector( 14-1 downto 0 );
    peak_amp : out std_logic_vector( 16-1 downto 0 );
    peak_amp_rdy : out std_logic_vector( 1-1 downto 0 );
    pulse_delayed : out std_logic_vector( 16-1 downto 0 );
    state : out std_logic_vector( 3-1 downto 0 )
  );
end peak_detector_signaldomain;
architecture structural of peak_detector_signaldomain is 
  signal register2_q_net : std_logic_vector( 32-1 downto 0 );
  signal logical_y_net : std_logic_vector( 14-1 downto 0 );
  signal reinterpret_output_port_net : std_logic_vector( 16-1 downto 0 );
  signal register1_q_net : std_logic_vector( 32-1 downto 0 );
  signal reinterpret2_output_port_net : std_logic_vector( 1-1 downto 0 );
  signal mcode_state_out_net : std_logic_vector( 3-1 downto 0 );
  signal x_net : std_logic_vector( 16-1 downto 0 );
  signal clk_net : std_logic;
  signal ce_net : std_logic;
  signal reinterpret1_output_port_net : std_logic_vector( 16-1 downto 0 );
  signal register_q_net : std_logic_vector( 32-1 downto 0 );
  signal mcode1_xmax_net : std_logic_vector( 16-1 downto 0 );
  signal addsub1_s_net : std_logic_vector( 16-1 downto 0 );
  signal slice1_y_net : std_logic_vector( 16-1 downto 0 );
  signal register4_q_net : std_logic_vector( 32-1 downto 0 );
  signal mcode_re_net : std_logic_vector( 1-1 downto 0 );
  signal slice2_y_net : std_logic_vector( 16-1 downto 0 );
  signal slice_y_net : std_logic_vector( 1-1 downto 0 );
  signal convert_dout_net : std_logic_vector( 1-1 downto 0 );
begin
  register_q_net <= x_delay;
  register1_q_net <= x_noise;
  register2_q_net <= x_min_max;
  register4_q_net <= en_pkd;
  dac_peak_amp <= logical_y_net;
  peak_amp <= reinterpret_output_port_net;
  peak_amp_rdy <= reinterpret2_output_port_net;
  pulse_delayed <= reinterpret1_output_port_net;
  state <= mcode_state_out_net;
  x_net <= x;
  clk_net <= clk_1;
  ce_net <= ce_1;
  format_dac : entity xil_defaultlib.peak_detector_format_dac 
  port map (
    in1 => mcode1_xmax_net,
    clk_1 => clk_net,
    ce_1 => ce_net,
    out1 => logical_y_net
  );
  peakdetector : entity xil_defaultlib.peak_detector_peakdetector 
  port map (
    x => x_net,
    x_delay => register_q_net,
    x_noise => register1_q_net,
    x_min => slice1_y_net,
    x_max => slice2_y_net,
    en => convert_dout_net,
    clk_1 => clk_net,
    ce_1 => ce_net,
    peak => mcode_re_net,
    peak_amp => mcode1_xmax_net,
    pulse_delayed => addsub1_s_net,
    state => mcode_state_out_net
  );
  tobool : entity xil_defaultlib.peak_detector_tobool 
  port map (
    in1 => slice_y_net,
    clk_1 => clk_net,
    ce_1 => ce_net,
    out1 => convert_dout_net
  );
  reinterpret : entity xil_defaultlib.sysgen_reinterpret_b875eb6c7e 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    input_port => mcode1_xmax_net,
    output_port => reinterpret_output_port_net
  );
  reinterpret1 : entity xil_defaultlib.sysgen_reinterpret_b875eb6c7e 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    input_port => addsub1_s_net,
    output_port => reinterpret1_output_port_net
  );
  reinterpret2 : entity xil_defaultlib.sysgen_reinterpret_56dc5679ac 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    input_port => mcode_re_net,
    output_port => reinterpret2_output_port_net
  );
  slice : entity xil_defaultlib.peak_detector_xlslice 
  generic map (
    new_lsb => 2,
    new_msb => 2,
    x_width => 32,
    y_width => 1
  )
  port map (
    x => register4_q_net,
    y => slice_y_net
  );
  slice1 : entity xil_defaultlib.peak_detector_xlslice 
  generic map (
    new_lsb => 0,
    new_msb => 15,
    x_width => 32,
    y_width => 16
  )
  port map (
    x => register2_q_net,
    y => slice1_y_net
  );
  slice2 : entity xil_defaultlib.peak_detector_xlslice 
  generic map (
    new_lsb => 16,
    new_msb => 31,
    x_width => 32,
    y_width => 16
  )
  port map (
    x => register2_q_net,
    y => slice2_y_net
  );
end structural;
-- Generated from Simulink block peak_detector_struct
library IEEE;
use IEEE.std_logic_1164.all;
library xil_defaultlib;
use xil_defaultlib.conv_pkg.all;
entity peak_detector_struct is
  port (
    r1_x_delay : in std_logic_vector( 32-1 downto 0 );
    r2_x_noise : in std_logic_vector( 32-1 downto 0 );
    r3_x_min_max : in std_logic_vector( 32-1 downto 0 );
    r4_en_pkd : in std_logic_vector( 32-1 downto 0 );
    x : in std_logic_vector( 16-1 downto 0 );
    clk_1 : in std_logic;
    ce_1 : in std_logic;
    dac_peak_amp : out std_logic_vector( 14-1 downto 0 );
    peak_amp : out std_logic_vector( 16-1 downto 0 );
    peak_amp_rdy : out std_logic_vector( 1-1 downto 0 );
    pulse_delayed : out std_logic_vector( 16-1 downto 0 );
    state : out std_logic_vector( 3-1 downto 0 )
  );
end peak_detector_struct;
architecture structural of peak_detector_struct is 
  signal r4_en_pkd_net : std_logic_vector( 32-1 downto 0 );
  signal r1_x_delay_net : std_logic_vector( 32-1 downto 0 );
  signal logical_y_net : std_logic_vector( 14-1 downto 0 );
  signal r3_x_min_max_net : std_logic_vector( 32-1 downto 0 );
  signal r2_x_noise_net : std_logic_vector( 32-1 downto 0 );
  signal register_q_net : std_logic_vector( 32-1 downto 0 );
  signal register4_q_net : std_logic_vector( 32-1 downto 0 );
  signal register1_q_net : std_logic_vector( 32-1 downto 0 );
  signal reinterpret2_output_port_net : std_logic_vector( 1-1 downto 0 );
  signal register2_q_net : std_logic_vector( 32-1 downto 0 );
  signal reinterpret_output_port_net : std_logic_vector( 16-1 downto 0 );
  signal clk_net : std_logic;
  signal ce_net : std_logic;
  signal x_net : std_logic_vector( 16-1 downto 0 );
  signal reinterpret1_output_port_net : std_logic_vector( 16-1 downto 0 );
  signal mcode_state_out_net : std_logic_vector( 3-1 downto 0 );
begin
  r1_x_delay_net <= r1_x_delay;
  r2_x_noise_net <= r2_x_noise;
  r3_x_min_max_net <= r3_x_min_max;
  r4_en_pkd_net <= r4_en_pkd;
  dac_peak_amp <= logical_y_net;
  peak_amp <= reinterpret_output_port_net;
  peak_amp_rdy <= reinterpret2_output_port_net;
  pulse_delayed <= reinterpret1_output_port_net;
  state <= mcode_state_out_net;
  x_net <= x;
  clk_net <= clk_1;
  ce_net <= ce_1;
  axibusdomain : entity xil_defaultlib.peak_detector_axibusdomain 
  port map (
    r1_x_delay => r1_x_delay_net,
    r2_x_noise => r2_x_noise_net,
    r3_x_min_max => r3_x_min_max_net,
    r4_en_pkd => r4_en_pkd_net
  );
  signaldomain : entity xil_defaultlib.peak_detector_signaldomain 
  port map (
    x_delay => register_q_net,
    x_noise => register1_q_net,
    x_min_max => register2_q_net,
    en_pkd => register4_q_net,
    x => x_net,
    clk_1 => clk_net,
    ce_1 => ce_net,
    dac_peak_amp => logical_y_net,
    peak_amp => reinterpret_output_port_net,
    peak_amp_rdy => reinterpret2_output_port_net,
    pulse_delayed => reinterpret1_output_port_net,
    state => mcode_state_out_net
  );
  register_x0 : entity xil_defaultlib.peak_detector_xlregister 
  generic map (
    d_width => 32,
    init_value => b"00000000000000000000000000000000"
  )
  port map (
    en => "1",
    rst => "0",
    d => r1_x_delay_net,
    clk => clk_net,
    ce => ce_net,
    q => register_q_net
  );
  register1 : entity xil_defaultlib.peak_detector_xlregister 
  generic map (
    d_width => 32,
    init_value => b"00000000000000000000000000000000"
  )
  port map (
    en => "1",
    rst => "0",
    d => r2_x_noise_net,
    clk => clk_net,
    ce => ce_net,
    q => register1_q_net
  );
  register2 : entity xil_defaultlib.peak_detector_xlregister 
  generic map (
    d_width => 32,
    init_value => b"00000000000000000000000000000000"
  )
  port map (
    en => "1",
    rst => "0",
    d => r3_x_min_max_net,
    clk => clk_net,
    ce => ce_net,
    q => register2_q_net
  );
  register4 : entity xil_defaultlib.peak_detector_xlregister 
  generic map (
    d_width => 32,
    init_value => b"00000000000000000000000000000100"
  )
  port map (
    en => "1",
    rst => "0",
    d => r4_en_pkd_net,
    clk => clk_net,
    ce => ce_net,
    q => register4_q_net
  );
end structural;
-- Generated from Simulink block 
library IEEE;
use IEEE.std_logic_1164.all;
library xil_defaultlib;
use xil_defaultlib.conv_pkg.all;
entity peak_detector_default_clock_driver is
  port (
    peak_detector_sysclk : in std_logic;
    peak_detector_sysce : in std_logic;
    peak_detector_sysclr : in std_logic;
    peak_detector_clk1 : out std_logic;
    peak_detector_ce1 : out std_logic
  );
end peak_detector_default_clock_driver;
architecture structural of peak_detector_default_clock_driver is 
begin
  clockdriver : entity xil_defaultlib.xlclockdriver 
  generic map (
    period => 1,
    log_2_period => 1
  )
  port map (
    sysclk => peak_detector_sysclk,
    sysce => peak_detector_sysce,
    sysclr => peak_detector_sysclr,
    clk => peak_detector_clk1,
    ce => peak_detector_ce1
  );
end structural;
-- Generated from Simulink block 
library IEEE;
use IEEE.std_logic_1164.all;
library xil_defaultlib;
use xil_defaultlib.conv_pkg.all;
entity peak_detector is
  port (
    r1_x_delay : in std_logic_vector( 32-1 downto 0 );
    r2_x_noise : in std_logic_vector( 32-1 downto 0 );
    r3_x_min_max : in std_logic_vector( 32-1 downto 0 );
    r4_en_pkd : in std_logic_vector( 32-1 downto 0 );
    x : in std_logic_vector( 16-1 downto 0 );
    clk : in std_logic;
    dac_peak_amp : out std_logic_vector( 14-1 downto 0 );
    peak_amp : out std_logic_vector( 16-1 downto 0 );
    peak_amp_rdy : out std_logic_vector( 1-1 downto 0 );
    pulse_delayed : out std_logic_vector( 16-1 downto 0 );
    state : out std_logic_vector( 3-1 downto 0 )
  );
end peak_detector;
architecture structural of peak_detector is 
  attribute core_generation_info : string;
  attribute core_generation_info of structural : architecture is "peak_detector,sysgen_core_2022_2,{,compilation=IP Catalog,block_icon_display=Default,family=zynq,part=xc7z020,speed=-1,package=clg484,synthesis_language=vhdl,hdl_library=xil_defaultlib,synthesis_strategy=Vivado Synthesis Defaults,implementation_strategy=Vivado Implementation Defaults,testbench=0,interface_doc=1,ce_clr=0,clock_period=20,system_simulink_period=2e-08,waveform_viewer=0,axilite_interface=0,ip_catalog_plugin=0,hwcosim_burst_mode=0,simulation_time=0.004,addsub=2,constant=3,convert=2,counter=1,logical=1,mcode=3,negate=1,register=4,reinterpret=10,relational=1,slice=13,spram=1,}";
  signal clk_1_net : std_logic;
  signal ce_1_net : std_logic;
begin
  peak_detector_default_clock_driver : entity xil_defaultlib.peak_detector_default_clock_driver 
  port map (
    peak_detector_sysclk => clk,
    peak_detector_sysce => '1',
    peak_detector_sysclr => '0',
    peak_detector_clk1 => clk_1_net,
    peak_detector_ce1 => ce_1_net
  );
  peak_detector_struct : entity xil_defaultlib.peak_detector_struct 
  port map (
    r1_x_delay => r1_x_delay,
    r2_x_noise => r2_x_noise,
    r3_x_min_max => r3_x_min_max,
    r4_en_pkd => r4_en_pkd,
    x => x,
    clk_1 => clk_1_net,
    ce_1 => ce_1_net,
    dac_peak_amp => dac_peak_amp,
    peak_amp => peak_amp,
    peak_amp_rdy => peak_amp_rdy,
    pulse_delayed => pulse_delayed,
    state => state
  );
end structural;
