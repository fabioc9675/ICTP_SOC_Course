----------------------------------------------------------------------------------
-- Company: ICTP Multidiciplinary Laboratory
-- Engineer: Bruno Valinoti - bvalinot@ictp.it
-- 
-- Create Date: 09/11/2023 
-- Create Date:
-- Design Name: 
-- Module Name: output_mux - Behavioral
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

 -- Definition of Operation modes (op_mode_i)
   -- 00 : Amplitudes acquisition
   -- 01 : Input signal
   -- 10 : Long FIR continuous output
   -- 11 : Derivative FIR continuous output
----------------------------------------------------------------------------------


library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity output_mux is
   Port ( 
      op_mode_i      : in  std_logic_vector (1 downto 0);
      fifo_wr_en_i   : in  std_logic;
      FIR_data_i     : in  std_logic_vector (15 downto 0);
      ADC_data_i     : in  std_logic_vector (11 downto 0);
      FIR_deriv_i    : in  std_logic_vector (15 downto 0);
      fifo_wr_en_o   : out std_logic;
      data_o         : out std_logic_vector (15 downto 0));
end output_mux;

architecture Behavioral of output_mux is
    signal wr_en_temp : STD_LOGIC;
    signal out_mux_temp : STD_LOGIC_VECTOR (15 downto 0);
begin

   fifo_wr_en_o <= wr_en_temp;
   data_o       <= out_mux_temp;

OPERATION_MODE_DECODING: process (op_mode_i, fifo_wr_en_i, ADC_data_i, FIR_data_i, FIR_deriv_i)
   begin
      case (op_mode_i) is
      when "00" =>          	-- Normal: Amplitudes Acquisition 
         wr_en_temp   <= fifo_wr_en_i;
         out_mux_temp <= FIR_data_i; 
      when "01" =>				-- ADC debbuging: Continuous ADC Data Acquisition 
         wr_en_temp   <= '1';
         out_mux_temp <= "0000"& ADC_data_i;				
      when "10" =>				-- FIR debbuging: Continuous output FIR Acquisition 
         wr_en_temp   <= '1';
         out_mux_temp <= FIR_data_i;
      when "11" =>             -- FIR deriv : Continuous output of derivative FIR 
         wr_en_temp   <= '1'; 
         out_mux_temp <= FIR_deriv_i; 			
      when others =>
         wr_en_temp   <= fifo_wr_en_i;
         out_mux_temp <= FIR_data_i; 
      end case;      
   end process;

end Behavioral;
