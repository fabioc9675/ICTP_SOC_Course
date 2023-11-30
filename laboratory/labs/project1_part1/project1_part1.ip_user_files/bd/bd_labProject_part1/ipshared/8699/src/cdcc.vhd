----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 04/07/2021 04:10:37 PM
-- Design Name: 
-- Module Name: cdcc - Behavioral
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
library UNISIM;
use IEEE.STD_LOGIC_1164.ALL;
use UNISIM.VComponents.all;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity CDCC is
generic(
    NUMBER_OF_BITS : integer := 14); -- number of signals to be synced
port(
    clk_src     : in  std_logic;                                        -- input clk (source clock)
    clk_dst     : in  std_logic;                                        -- input clk (dest clock)
    data_in     : in  std_logic_vector(NUMBER_OF_BITS - 1 downto 0);    -- data to be synced
    data_out    : out std_logic_vector(NUMBER_OF_BITS - 1 downto 0)     -- synced data to clk_dst
    );
end CDCC;

architecture RTL of CDCC is
    
    signal data_in_reg          : std_logic_vector(NUMBER_OF_BITS - 1 downto 0) := (others => '0');
    signal data_sync_stage_0    : std_logic_vector(NUMBER_OF_BITS - 1 downto 0) := (others => '0');
    signal data_out_s_int       : std_logic_vector(NUMBER_OF_BITS - 1 downto 0) := (others => '0');

begin

-------------------------------------------------------
-- Register the input signals
-------------------------------------------------------
reg_input_CDCC: for I in 0 to (NUMBER_OF_BITS - 1) generate
FDRE_reg_input_CDCC: FDRE
    generic map (INIT => '0')
    port map(
        Q   => data_in_reg(I),
        C   => clk_src,
        CE  => '1',
        R   => '0',
        D   => data_in(I)
        );
end generate reg_input_CDCC;

-------------------------------------------------------
-- Synchronization stage 0
-------------------------------------------------------
sync_block_CDCC_0: for I in 0 to (NUMBER_OF_BITS - 1) generate
FDRE_sync_CDCC_0: FDRE
    generic map (INIT => '0')
    port map(
        Q   => data_sync_stage_0(I),
        C   => clk_dst,
        CE  => '1',
        R   => '0',
        D   => data_in_reg(I)
        );
end generate sync_block_CDCC_0;

-------------------------------------------------------
-- Synchronization stage 1
-------------------------------------------------------
sync_block_CDCC_1: for I in 0 to (NUMBER_OF_BITS - 1) generate
FDRE_sync_CDCC_1: FDRE
    generic map (INIT => '0')
    port map(
        Q   => data_out_s_int(I),
        C   => clk_dst,
        CE  => '1',
        R   => '0',
        D   => data_sync_stage_0(I)
        );
end generate sync_block_CDCC_1;

    data_out  <= data_out_s_int;
    
end RTL;


