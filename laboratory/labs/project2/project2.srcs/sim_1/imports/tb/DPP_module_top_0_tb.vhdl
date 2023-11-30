----------------------------------------------------------------------------------
-- Company: ICTP MLab
-- Engineer: B. Valinoti -- bvalinot@ictp.it
-- 
-- Create Date: 12/11/2020 01:16:26 PM
-- Design Name: 
-- Module Name: DPP_module_top_tb - Behavioral
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

entity DPP_module_top_tb_0 is
--  Port ( );
end DPP_module_top_tb_0;

architecture Behavioral of DPP_module_top_tb_0 is

   signal clk      : std_logic;
   signal rst      : std_logic;
   signal n_rst    : std_logic;
   signal valid    : std_logic:='0';
   signal ena      : std_logic:='0';
   signal cha      : std_logic_vector(15 downto 0):= (others=>'0');
   signal datao    : std_logic_vector(23 downto 0):= (others=>'0');
   signal stop     : boolean := FALSE;
   constant N_SAMPL: integer := 1; 
   type t_int_array is array( integer range <> ) of integer;

   signal data_in        : std_logic_vector (15 downto 0):= (others=>'0');
   signal threshold_high : std_logic_vector (15 downto 0):= (others=>'0');
   signal op_mode        : std_logic_vector (1 downto 0):= "00";
   signal data_to_fifo   : std_logic_vector (15 downto 0);

-------				
   signal fifo_wr_en_mux_out :  std_logic;
begin

   do_clock : entity work.Clock
   port map(
      clk_o  => clk,
      rst_o  => rst,
      stop_i => stop
   );
   n_rst <= not(rst);

   dut : entity work.DPP_module_top_0
   port map (
           clk_i  => clk,
           rst_i  => rst,
           ena_i  => ena,
           valid_i=> valid,
           ADC_data_i => data_in(11 downto 0),
			--Parameters        
           threshold_high_i => threshold_high, -- Absolute threshold to detect pulse arrival
           op_mode_i => op_mode,
			--Outputs
           data_o   => data_to_fifo,
           fifo_wr_en_mux_out => fifo_wr_en_mux_out
      );


   test_dut : process
      file cha_file   : text open read_mode is "signal_pulse.csv";
      variable a_row  : line;
      variable a_read : t_int_array(1 to N_SAMPL);
      begin
         wait for 200 ns;
         ena <= '1';
         threshold_high <= std_logic_vector(to_unsigned(80,16));
         file_open(cha_file, "signal_pulse.csv", READ_MODE); 
         
         -- signal read from FILE
         while not endfile(cha_file)  loop
            readline(cha_file, a_row);
            for i in 1 to N_SAMPL loop
               read(a_row,a_read(i));
               cha <= std_logic_vector(to_unsigned(a_read(i),16));
               valid <= '1';
               wait for 1 ns;
               data_in <= cha;
               report "The value of adcA_" & integer'image(i) &" is: " & integer'image(a_read(i));
               wait until rising_edge(clk);
            end loop;
         end loop;
         valid <= '0';
         wait for 20 us;
         stop <= TRUE;
         wait for 1 ns;
         file_close(cha_file);
         wait;
   end process test_dut;



end Behavioral;
