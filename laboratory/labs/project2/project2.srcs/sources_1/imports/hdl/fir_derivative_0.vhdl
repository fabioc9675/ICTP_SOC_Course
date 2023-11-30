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
--      	its "derivative". 
-- Dependencies: 
--
-- Revision: 
-- Revision 0.01 - File Created
-- Revision 0.02 --  Bruno Valinoti 09.12.2020
--          Renamed interface signals and removed signals not used, changed name of the file and entity.
--          Removed Libraries not used
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.std_logic_unsigned.all;

entity fir_derivative_0 is 
   generic ( 
	   d_width: natural:=12);  --data width  
   Port ( 
      clk_i  :  in std_logic;
      rst_i  :  in std_logic;
      ena_i  :  in std_logic;
      data_i :  in std_logic_vector (d_width-1 downto 0);
      der_sign : out std_logic;
      data_o : out std_logic_vector (15 downto 0)); -- one bit is gained with derivative
end fir_derivative_0;


architecture Behavioral of fir_derivative_0 is
   signal din     : std_logic_vector(d_width-1 downto 0);
   signal doutint : std_logic_vector(d_width-1 downto 0);
   signal din_1, din_2 : std_logic_vector(d_width-1 downto 0);   
begin

   din <= data_i;
   data_o <= "0000" & doutint; --Only used the Least Significnat Segment

FIR_Derivative_Process: process (clk_i)
   begin
      if rising_edge(clk_i) then
        if rst_i = '1' then  
           din_1 <= (others => '0');   -- Shifting in data
           din_2 <= (others => '0');
        else
           if ena_i = '1' then
              din_1 <= din;               -- Shifting data
              din_2 <= din_1;
	   	      if din_1 > din_2 then
	   	         doutint <= din_1 - din_2; -- Derivative
		         der_sign <= '1';
		      else 
                 doutint <= din_2 - din_1;
                 der_sign <= '0';
              end if;
            end if;    
         end if;        
      end if;
   end process;

end Behavioral;

