----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 11/29/2023 08:10:48 PM
-- Design Name: 
-- Module Name: adder_test - Behavioral
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
use IEEE.std_logic_unsigned.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity adder_test is
--  Port ( );
end adder_test;

architecture Behavioral of adder_test is

    component AdderFab
    Port ( inA  : in  STD_LOGIC_VECTOR (7 downto 0);
           inB  : in  STD_LOGIC_VECTOR (7 downto 0);
           outP : out STD_LOGIC_VECTOR (7 downto 0);
           sel  : in  STD_LOGIC_VECTOR (2 downto 0));
    end component;
    
    signal inA, inB: STD_LOGIC_VECTOR (7 downto 0) := (others => '0');
    signal sel, i: std_logic_vector (2 downto 0) := (others => '0');
    signal outP: STD_LOGIC_VECTOR (7 downto 0);
    

begin

-- instantiation of the signals
    uut: AdderFab port map(
            inA => inA,
            inB => inB,
            outP => outP,
            sel => sel
            );

    stim_proc: process
    begin
    -- reset values
        inA <= "00001111";
        inB <= "01010101";
        sel <= "000";
        
        for i in 0 to 7 loop
            sel <= sel + '1';
            wait for 100 ns;
        end loop;
    
    
    end process;

end Behavioral;
