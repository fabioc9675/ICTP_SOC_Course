----------------------------------------------------------------------------------
-- Company: MLAB (ICTP-INFN)
-- Engineers: A. Cicuttin, M.L. Crespo, B. Valinoti
-- 
-- Create Date:    10:38:36 08/27/2015 
-- Design Name: 
-- Module Name:    fir_derivative_0 - Behavioral 
--                 fir_derivative -- 09.1.2020
-- Project Name: 
-- Target Devices: 
-- Tool versions: 
-- Description: 
-- 		This module takes the synchronous input data stream  "data_in" and generates 
--      its "average derivative" at the same rate by mean of a six taps FIR with 
--      hardcoded coefficients (-3,-5,-9,9,5,3). 
-- Dependencies: 
--
-- Revision: 
-- Revision 0.01 - File Created
-- Additional Comments: 
--			A  more efficient implementation
--			could be implemented with power of two coefficients (e.g. -2,-4,-8,-16,16,8,4,2) or similar
--Revision 0.02 --  Bruno Valinoti 09.12.2020
--          Renamed interface signals and removed signals not used, changed name of the file and entity.
--          Removed Libraries not used
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.std_logic_unsigned.all;

entity fir_derivative_1 is 
   generic ( 
	   d_width: natural:=12);  --data width  
   Port ( 
      clk_i  :  in std_logic;
	  rst_i  :  in std_logic;
	  ena_i  :  in std_logic;
      data_i :  in std_logic_vector (d_width-1 downto 0);
      cf_1_i :  in std_logic_vector (4 downto 0);
      cf_2_i :  in std_logic_vector (4 downto 0);
      cf_3_i :  in std_logic_vector (4 downto 0);
      der_sign : out std_logic;
	  data_o : out std_logic_vector (15 downto 0)); -- one bit is gained with derivative
end fir_derivative_1;


architecture Behavioral of fir_derivative_1 is
   signal din     : std_logic_vector(d_width + 5 downto 0);
   signal doutint : std_logic_vector(d_width + 5 + 5 downto 0); --5 due to mult by 5 bits. 5 due to five additons
   signal din_1, din_2, din_3 , din_4 , din_5 , din_6 : std_logic_vector(d_width + 5 downto 0);   
   signal d1, d2, d3, d4, d5, d6 : std_logic_vector((d_width +5 + 5) downto 0):=(others => '0') ;   
begin

   din <= ("000000" & data_i);
   data_o <= doutint(15 downto 0); --Only used the Least Significnat Segment

FIR_Derivative_Process: process (clk_i)
      variable aux_pos : std_logic_vector (d_width + 5 + 5 downto 0);
      variable aux_neg : std_logic_vector (d_width + 5 + 5 downto 0);
   begin
      if rising_edge(clk_i) then
        if rst_i = '1' then  
           din_1 <= (others => '0');       -- Shifting in data
           din_2 <= (others => '0');
           din_3 <= (others => '0');
           din_4 <= (others => '0');
           din_5 <= (others => '0');
           din_6 <= (others => '0');  
        elsif ena_i = '1' then
           din_1 <= din;        -- Shifting data
           din_2 <= din_1;
           din_3 <= din_2;
           din_4 <= din_3;
           din_5 <= din_4;
           din_6 <= din_5;
			
           d1 <= cf_1_i * din_1;  -- Multiplication coef * data
           d2 <= cf_2_i * din_2;
           d3 <= cf_3_i * din_3;
           d4 <= cf_3_i * din_4;
           d5 <= cf_2_i * din_5;
           d6 <= cf_1_i * din_6;
		   aux_pos := (d1 + d2 + d3);
		   aux_neg := ( d4 + d5 + d6);
		   if aux_pos > aux_neg then
		      doutint <= aux_pos - aux_neg; -- Derivative
		      der_sign <= '1';
		   else 
              doutint <= aux_neg - aux_pos;
              der_sign <= '0';
           end if;
         end if;        
      end if;
   end process;

end Behavioral;

