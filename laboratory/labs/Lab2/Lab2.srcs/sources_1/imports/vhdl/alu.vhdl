----------------------------------------------------------------------------------
-- Company: International Centre for Theoretical Physics - Multidisciplinary Laboratory
-- Engineer: Bruno Valinoti -- bvalinot@ictp.it
-- 
-- Create Date: 10/25/2023 04:03:53 PM
-- Design Name: ALU for SMR3891
-- Module Name: ALU - Behavioral
-- Project Name: Arithmetic Logic Unit
-- Target Devices: ZedBoard
-- Tool Versions: 
-- Description : This block is a Synchronic ALU
-- 
-- Dependencies: 
-- 
-- Revision:
-- Revision 1.00 - File Created
-- Additional Comments:
-- Distributed under the BSD 3-Clause License
----
----  |opcode | opetation|
----  |-------|----------|
----- |      0|   zero   |  puts a zero at the output
----- |      1|   sum    |  adds A + B
----- |      2| subtract |  subtracts B from A
----- |      3|    or    |  makes the logical or between A and B
----- |      4|   and    |  makes the logical and between A and B
----- |      5|   xor    |  makes the logical xor between A and B
----- |      6|   ror    |  shifts right B positions from A
----- |      7|   rol    |  shifts left B positions from A
----------------------------------------------------------------------------------


library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;


entity alu is
  generic( WIDTH : natural := 16);
	port(
       clk_i     : in  std_logic;                           -- input clock
       rst_i     : in  std_logic;                           -- input reset
       op_code_i : in  std_logic_vector(2 downto 0);        -- operation code
       data_a_i  : in  std_logic_vector(WIDTH-1 downto 0);  -- operand A
       data_b_i  : in  std_logic_vector(WIDTH-1 downto 0);  -- operand B
       data_o    : out std_logic_vector(WIDTH-1 downto 0);  -- result
       status_o  : out std_logic_vector(1 downto 0)         -- status O Z 
    );
end;

architecture rtl of alu is   
signal mid_sum_r  : std_logic_vector(WIDTH downto 0):=(others => '0');
signal mid_sub_r  : std_logic_vector(WIDTH downto 0):=(others => '0');
signal mid_or_r   : std_logic_vector(WIDTH-1 downto 0):=(others => '0');
signal mid_and_r  : std_logic_vector(WIDTH-1 downto 0):=(others => '0');
signal mid_xor_r  : std_logic_vector(WIDTH-1 downto 0):=(others => '0');
signal mid_ror_r  : std_logic_vector(2*WIDTH downto 0):=(others => '0');
signal mid_rol_r  : std_logic_vector(2*WIDTH downto 0):=(others => '0');
signal status_r   : std_logic_vector(1 downto 0):=(others => '0');      
signal result_r   : std_logic_vector(WIDTH-1 downto 0):=(others => '0');

begin

do_sum : process (clk_i)
   begin
      if rst_i = '1' then
         result_r <= (others => '0');
      elsif rising_edge(clk_i) then
-- The op_code_i is used to select the signal of the operation performed
        case (op_code_i) is
            when "000" =>
               result_r <= (others => '0');
            when "001" =>
               result_r <= mid_sum_r(WIDTH-1 downto 0);
            when "010" =>
               result_r <= mid_sub_r(WIDTH-1 downto 0);
            when "011" =>
               result_r <= mid_or_r; -- Added by Fabian
            when "100" =>
               result_r <= mid_and_r; -- Added by Fabian
            when "101" =>
               result_r <= mid_xor_r; -- Added by Fabian
            when "110" =>
               result_r <= mid_ror_r(WIDTH-1 downto 0);
            when "111" =>
               result_r <= mid_rol_r(WIDTH-1 downto 0);
            when others =>
               result_r <= (others => '0');
         end case;
      end if;
   end process;

-- Remember that you have to perform casting depending on the type of the signal or port that you are using.
-- This section of the code performs the operations: sum, sub, ror, rol
   mid_sum_r <= std_logic_vector("0" & unsigned(data_a_i) + unsigned(data_b_i));
   mid_sub_r <= std_logic_vector("0" & unsigned(data_a_i) - unsigned(data_b_i));
   mid_or_r  <= data_a_i or data_b_i;
   mid_and_r <= data_a_i and data_b_i;
   mid_xor_r <= data_a_i xor data_b_i;
   mid_ror_r(WIDTH-1 downto 0) <= std_logic_vector(shift_right(unsigned(data_a_i),to_integer(unsigned(data_b_i))));
   mid_rol_r(WIDTH-1 downto 0) <= std_logic_vector(shift_left(unsigned(data_a_i),to_integer(unsigned(data_b_i))));
   
-- This section of the code sets the status of the carry bit
   status_r(0) <=  mid_sub_r(WIDTH) when op_code_i = "010" else 
                   mid_sum_r(WIDTH) when op_code_i = "001" else '0'; 
                     
-- ########## Student code excersize section ##########
-- Add the code that execute the logical operations: or, and, xor.

   -- mid_or_r  <= data_a_i ? data_b_i;
   -- mid_and_r <= ;
   -- mid_xor_r <= ;

-- Complete the status bit of ZERO, it must be '1' when the result is a zero, and '0' in the other cases
   status_r(1) <= '1' when result_r = "0" else '0';

-- ########## End of the code excersize section ##########

-- Set the outputs for the block                     
   status_o <= status_r;
   data_o   <= result_r;
   
end architecture rtl;
