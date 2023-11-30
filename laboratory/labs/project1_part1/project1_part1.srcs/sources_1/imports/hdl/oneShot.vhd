----------------------------------------------------------------------------------
-- Company: MLab, STI Unit, ICTP
-- Engineer: Ivan Morales
-- 
-- Create Date: 11/13/2023 03:03:28 PM
-- Design Name: 
-- Module Name: oneShotTimer - Behavioral
-- Project Name: 
-- Target Devices: 
-- Tool Versions: 
-- Description: Creates a pulse of variable length (pulse_len)
--              whenever a trigger input (trig_in) is detected
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

entity oneShotTimer is
    Generic(
        DATA_BUS_WIDTH : NATURAL := 16
    );

    Port(
        clk : in std_logic;
        aresetn : in std_logic;
        ce : in std_logic;
        trig_in : in std_logic;
        pulse_len : in std_logic_vector(DATA_BUS_WIDTH - 1 downto 0);
        trig_out : out std_logic
    );
end oneShotTimer;

architecture Behavioral of oneShotTimer is

    signal lastTrig_in : std_logic;
    signal counter : integer range 0 to 2**DATA_BUS_WIDTH - 1;

begin

    process(clk, aresetn)
    begin

        if aresetn = '0' then
            lastTrig_in <= '0';
            counter <= 0;
        elsif rising_edge(clk) then
            lastTrig_in <= trig_in; -- Registered (one clk cycle delayed)
            if(lastTrig_in = '0' and trig_in = '1') then -- Trigger condition
                counter <= 1; 
            elsif((counter < to_integer(unsigned(pulse_len))) and (counter /= 0)) then
                counter <= counter + 1;
            else
                counter <= 0;
            end if;
            
        end if;

    end process;

    trig_out <= '1' when counter /= 0 else '0';

end Behavioral;