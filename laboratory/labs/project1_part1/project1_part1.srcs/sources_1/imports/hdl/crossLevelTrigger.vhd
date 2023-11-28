----------------------------------------------------------------------------------
-- Company: 
-- Engineer: Ivan Morales
-- 
-- Create Date: 12/08/2022 03:23:44 PM
-- Design Name: 
-- Module Name: crossLevelTriggerBlock - Behavioral
-- Project Name: 
-- Target Devices: 
-- Tool Versions: 
-- Description: Cross-level trigger detector
-- 				Generates a one-clock-cycle pulse whenever
--				a trigger event is detected.
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


entity crossLevelTriggerBlock is
    Generic(
        DATA_BUS_WIDTH : NATURAL := 14
    );
    Port ( clk : in STD_LOGIC;
           aresetn : in STD_LOGIC;
           dIn : in STD_LOGIC_VECTOR (DATA_BUS_WIDTH - 1 downto 0);
           threshold : in STD_LOGIC_VECTOR (DATA_BUS_WIDTH - 1 downto 0);
           edgeSel : in STD_LOGIC; -- 0: PosEdge, 1: NegEdge
           trigger : out STD_LOGIC);
end crossLevelTriggerBlock;

architecture Behavioral of crossLevelTriggerBlock is
    signal lastVal : std_logic_vector(DATA_BUS_WIDTH - 1 downto 0);
begin
    
    process(clk, aresetn)
    begin
        
        if (aresetn = '0') then
            trigger <= '0';
        elsif (rising_edge(clk)) then
            lastVal <= dIn;
            if (edgeSel = '0') then -- Positive slope cross-level trigger
                if (unsigned(lastVal) < unsigned(threshold) and unsigned(dIn) >= unsigned(threshold)) then
                    trigger <= '1';
            	else
                    trigger <= '0';
                end if;
            else -- Negative slope cross-level trigger
                if (unsigned(lastVal) > unsigned(threshold) and unsigned(dIn) <= unsigned(threshold)) then
                    trigger <= '1';
                else
                    trigger <= '0';
                end if;
            end if;
        end if;
        
    end process;


end Behavioral;
