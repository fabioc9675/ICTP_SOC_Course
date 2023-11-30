----------------------------------------------------------------------------------
-- Company: ICTP Multidisciplinary Laboratory
-- Engineer: Bruno Valinoti -- bvalinot@ictp.it
-- 
-- Create Date: 12/12/2022 08:54:44 PM
-- Design Name: 
-- Module Name: FIR_DPP_tb - Behavioral
-- Project Name: 
-- Target Devices: 
-- Tool Versions: 
-- Description: 
--  Leer un archivo de pulsos a 100 MHz, ingresarlos al FIR, controlando las seniales de AXIS
-- Dependencies: 
-- 
-- Revision:
-- Revision 0.01 - File Created
-- Additional Comments:
-- 
----------------------------------------------------------------------------------


library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;
library UNISIM;
use UNISIM.VComponents.all;
library std;
use std.textio.all;

entity FIR_DPP_tb is
--  Port ( );
end FIR_DPP_tb;

architecture Behavioral of FIR_DPP_tb is
   signal clk, clk_80 : std_logic;
   signal rst      : std_logic;
   signal n_rst    : std_logic;
   signal ena      : std_logic:='0';
   signal cha      : std_logic_vector(15 downto 0):= (others=>'0');
   signal datao    : std_logic_vector(23 downto 0):= (others=>'0');
   signal stop     : boolean := FALSE;
   constant N_SAMPL: integer := 1; 
   type t_int_array is array( integer range <> ) of integer;

   signal data_in        : std_logic_vector (15 downto 0):= (others=>'0');
   signal threshold_high : std_logic_vector (15 downto 0):= (others=>'0');
   signal threshold_low  : std_logic_vector (15 downto 0):= (others=>'0');
   signal op_mode        : std_logic_vector (1 downto 0):= "00";
   signal data_to_fifo   : std_logic_vector (15 downto 0);
   signal cf_1, cf_2, cf_3 : std_logic_vector (4 downto 0):= (others=>'0');
   signal s_tvalid, s_tready : std_logic := '0';
   signal s_tdata        : std_logic_vector (15 downto 0):= (others=>'0');
   signal m_tvalid, m_tready : std_logic := '0';
   signal m_tdata        : std_logic_vector (23 downto 0):= (others=>'0');  

------
-------				
   signal fifo_wr_en_mux_out :  std_logic;
begin

   do_clock_100 : entity work.Clock
   generic map(
      FREQUENCY => 100e6
   )
   port map(
      clk_o  => clk,
      rst_o  => rst,
      stop_i => stop
   );

   do_clock_80 : entity work.Clock
   generic map(
      FREQUENCY => 80e6
   )
   port map(
      clk_o  => clk_80,
      rst_o  => open,
      stop_i => stop
   );

   n_rst <= not(rst);

   FIR_instantiate: entity work.fir_compiler_0
   port map(
      aclk => clk,
      s_axis_data_tvalid => s_tvalid,  -- (input)  This comes from the data valid from the FIFO 
      s_axis_data_tready => s_tready,  -- (output) This to the FIFO read enable
      s_axis_data_tdata  => s_tdata ,  -- (input)  This goes to the input fifo with an enable
      m_axis_data_tvalid => m_tvalid,  -- (output)
      m_axis_data_tdata  => m_tdata    -- (output) 
   );

   test_dut : process
      file cha_file   : text open read_mode is "ecal_pulse.csv";
      file out_file   : text open write_mode is "trap_filter_32_six0.csv";
      variable a_row  : line;
      variable out_row  : line;
      variable a_read : t_int_array(1 to N_SAMPL);
      variable out_write : t_int_array(1 to N_SAMPL);
      begin
         wait for 200 ns;
         cf_1 <= "00001";  --1
         cf_2 <= "00011";  --3
         cf_3 <= "00101";  --5
         s_tvalid <= '0';
         s_tdata <= (others => '0');
         wait for 10 ns;
         ena <= '1';
      --   threshold_high <= std_logic_vector(to_unsigned(750,16));
       --  threshold_low  <= std_logic_vector(to_unsigned(650,16));
         file_open(cha_file, "salida.csv", READ_MODE);
         file_open(out_file, "trap_filter_32_six0.csv", WRITE_MODE);
         -- signal read from FILE
         while not endfile(cha_file)  loop
            readline(cha_file, a_row);
            for i in 1 to N_SAMPL loop
               read(a_row,a_read(i));
               cha <= std_logic_vector(to_unsigned(a_read(i),16));
               s_tvalid <= '1';
               s_tdata <= cha;
               wait for 1 ns;
    --           wait until s_tready = '1'; 
               data_in <= cha;
     --          report "The value of adcA_" & integer'image(i) &" is: " & integer'image(a_read(i));
               wait until rising_edge(clk_80);
               write(out_row,to_integer(signed(m_tdata)));
            end loop;
            writeline(out_file, out_row);
         end loop;
         s_tvalid <= '0';
         wait for 200 ns;
         stop <= TRUE;
         wait for 1 ns;
         file_close(cha_file);
         wait;
   end process test_dut;


end Behavioral;
