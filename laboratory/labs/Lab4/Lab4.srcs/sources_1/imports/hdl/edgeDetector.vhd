------------------------------------------------------------
--
-- FileName:        edgeDetector.vhd
-- Dependencies:    None
-- Design software: AMD Vivado 2022.2
-- Design based on: 
-- https://surf-vhdl.com/how-to-design-a-good-edge-detector/
-- 
-- Version History
-- Version 1.0  2023/10/27  Ivan Morales (MLab, ICTP)
-- 
------------------------------------------------------------

library ieee;
use ieee.std_logic_1164.all;

entity edgeDetector is
    port(
        clk_i       :   in      std_logic;
        arestn_i    :   in      std_logic;
        pulseIn     :   in      std_logic;
        pulseOut    :   out     std_logic
    );
end edgeDetector;

architecture behavioral of edgeDetector is
    signal delayedIn1    : std_logic;
    signal delayedIn2    : std_logic;

begin

    process(clk_i, arestn_i)
    begin
    if(arestn_i = '0') then
        delayedIn1 <= '0';
        delayedIn2 <= '0';
    elsif(rising_edge(clk_i)) then
        delayedIn1 <= pulseIn; -- Input delayed by 1 clk cycle
        delayedIn2 <= delayedIn1; -- "  delayed by 2 clk cycles
    end if;

    end process;

    -- Whenever the 1-clk-del. signal is HIGH and the 2-clk-delayed
    -- signal is LOW, a rising edge has happened

    pulseOut <= delayedIn1 and not delayedIn2;

end behavioral;
