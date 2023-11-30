----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 11/29/2023 05:38:19 PM
-- Design Name: 
-- Module Name: AdderFab - Behavioral
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

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity AdderFab is
    Port ( inA  : in  STD_LOGIC_VECTOR (7 downto 0);
           inB  : in  STD_LOGIC_VECTOR (7 downto 0);
           outP : out STD_LOGIC_VECTOR (7 downto 0);
           sel  : in  STD_LOGIC_VECTOR (2 downto 0));
end AdderFab;

architecture Behavioral of AdderFab is

signal o: STD_LOGIC_VECTOR (7 downto 0);
signal s: STD_LOGIC_VECTOR (2 downto 0);



begin

  s <= sel;
 process(s)
 begin
    case (s) is
        when "000" => o <= inA and  inB;
        when "001" => o <= inA or   inB;
        when "010" => o <= inA xor  inB;
        when "011" => o <= inA xnor inB;
        when "100" => o <= inA nand inB;
        when "101" => o <= inA nor  inB;
        when "110" => o <= not inA;
        when "111" => o <= not inB;
        when others => o <= "11110000";
    end case;
        
end process;

outP <= o;

end Behavioral;
