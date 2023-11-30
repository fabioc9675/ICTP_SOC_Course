----------------------------------------------------------------------------------
-- Company: ICTP Multidisciplinary Laboratory
-- Engineer: Bruno Valinoti -- bvalinot@ictp.it
-- 
-- Create Date: 03/08/2023 01:55:58 PM
-- Design Name: 
-- Module Name: DPP_module_FIR_tb - Behavioral
-- Project Name: 
-- Target Devices: 
-- Tool Versions: 
-- Description: 
-- 
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
library std;
use std.textio.all;
-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity DPP_module_FIR_tb is
--  Port ( );
end DPP_module_FIR_tb;

architecture Behavioral of DPP_module_FIR_tb is

   signal clk      : std_logic;
   signal rst      : std_logic;
   signal n_rst    : std_logic;
   signal ena      : std_logic:='0';
   signal cha      : std_logic_vector(15 downto 0):= (others=>'0');
   signal stop     : boolean := FALSE;
   constant N_SAMPL: integer := 1; 
   type t_int_array is array( integer range <> ) of integer;

   signal data_in        : std_logic_vector (15 downto 0):= (others=>'0');
   signal threshold_high : std_logic_vector (15 downto 0):= (others=>'0');
   signal threshold_low  : std_logic_vector (15 downto 0):= (others=>'0');
   signal op_mode        : std_logic_vector (1 downto 0):= "01";
   signal data_to_fifo   : std_logic_vector (15 downto 0);
   signal cf_1, cf_2, cf_3 : std_logic_vector (4 downto 0):= (others=>'0');
   signal data_valid     : std_logic; 
-------				
   signal fifo_wr_en_mux_out :  std_logic;
begin

   do_clock : entity work.Clock
   port map(
      clk_o  => clk,
      rst_o  => rst,
      stop_i => stop
   );

   dut : entity work.DPP_module_FIR
   port map (
           clk_i  => clk,
           rst_i  => rst,
           ena_i  => ena,
           ADC_data_i => data_in(15 downto 0),
           valid_i => data_valid,
			--Parameters        
           det_threshold_high_i => threshold_high, -- Absolute threshold to detect pulse arrival
           det_threshold_low_i  => threshold_low, -- Absolute threshold to go to the "waiting_state" (it should be slightly lower than "threshold_high")
           cf_1_i => cf_1,
           cf_2_i => cf_2,
           cf_3_i => cf_3,
           op_mode_i => op_mode,
			--Outputs
           data_o   => data_to_fifo,
           fifo_wr_en_mux_out => fifo_wr_en_mux_out
      );


   test_dut : process
     -- file cha_file   : text open read_mode is "20220715_183828541082_2ch_10_aligned.txt"; --"ecal_pulse.csv"; --"20220715_183914383680_28_9_aligned.txt";--"ecal_pulse.csv";
      file cha_file   : text open read_mode is "out.dat"; --"ecal_pulse.csv"; --"20220715_183914383680_28_9_aligned.txt";--"ecal_pulse.csv";

      variable a_row  : line;
      variable a_read : t_int_array(1 to N_SAMPL);
      begin
         wait for 200 ns;
         cf_1 <= "00001";  --1
         cf_2 <= "00011";  --3
         cf_3 <= "00101";  --5
         wait for 10 ns;
         data_valid <= '0';
         ena <= '1';
         threshold_high <= std_logic_vector(to_unsigned(2500,16));
         threshold_low  <= std_logic_vector(to_unsigned(30,16));
         file_open(cha_file,"out.dat", READ_MODE);
         
         -- signal read from FILE
         while not endfile(cha_file)  loop
            readline(cha_file, a_row);
            for i in 1 to N_SAMPL loop
               read(a_row,a_read(i));
               cha <= std_logic_vector(to_unsigned(a_read(i),16));
               wait for 1 ns;
               data_valid <= '1';
               data_in <= cha;
               wait for 1 ns;
               report "The value of adcA_" & integer'image(i) &" is: " & integer'image(a_read(i));
               wait until rising_edge(clk);
            end loop;
         end loop;
         data_valid <= '0';
         wait for 200 ns;
         file_close(cha_file); 
         file_open(cha_file,"out.dat", READ_MODE);

         while not endfile(cha_file)  loop
            readline(cha_file, a_row);
            for i in 1 to N_SAMPL loop
               read(a_row,a_read(i));
               cha <= std_logic_vector(to_unsigned(a_read(i),16));
               wait for 1 ns;
               data_valid <= '1';
               data_in <= cha;
               wait for 1 ns;
               report "The value of adcA_" & integer'image(i) &" is: " & integer'image(a_read(i));
               wait until rising_edge(clk);
            end loop;
         end loop;
         data_valid <= '0';

         stop <= TRUE;
         wait for 1 ns;
         file_close(cha_file);
         wait;
   end process test_dut;

   do_write_file: process
      file     wr_file: text open write_mode is "pulse_out.csv";
      variable row    : line;
   begin
      file_open(wr_file, "pulse_out.csv", WRITE_MODE);
      while stop = FALSE loop
         wait until rising_edge(fifo_wr_en_mux_out);
         wait for 1 ns;
         write(row, to_integer(unsigned(data_to_fifo)));
         writeline(wr_file,row);
      end loop;
      file_close(wr_file);
      wait;
   end process do_write_file;

end Behavioral;
