----------------------------------------------------------------------------------
-- Company: MLab, STI Unit, ICTP
-- Engineer: Ivan Morales
-- 
-- Create Date: 11/13/2023 04:17:11 PM
-- Design Name: 
-- Module Name: ringBuffer - Behavioral
-- Project Name: 
-- Target Devices: 
-- Tool Versions: 
-- Description: Circular buffer to store a pulse event after a trigger is detected
--              Based on the work from: https://vhdlwhiz.com/ring-buffer-fifo/
--              
-- 
-- Dependencies: 
-- 
-- Revision:
-- Revision 0.01 - File Created
-- Additional Comments:
-- 
----------------------------------------------------------------------------------

library ieee;
use ieee.std_logic_1164.all;
 
entity ring_buffer is
  generic (
    RAM_WIDTH : natural := 14;
    RAM_DEPTH : natural := 10
  );
  port (
    clk : in std_logic;
    aresetn : in std_logic;
 
    -- Write port
    wr_en : in std_logic;
    wr_data : in std_logic_vector(RAM_WIDTH - 1 downto 0);
 
    -- Read port
    rd_en : in std_logic;
    rd_valid : out std_logic;
    rd_data : out std_logic_vector(RAM_WIDTH - 1 downto 0)
 
  );
end ring_buffer;
 
architecture rtl of ring_buffer is
 
  type ram_type is array (0 to RAM_DEPTH - 1) of
    std_logic_vector(wr_data'range);
  signal ram : ram_type;
 
  subtype index_type is integer range ram_type'range;
  signal head : index_type;
  signal tail : index_type;
 
  signal empty_i : std_logic;
  signal full_i : std_logic;
  signal fill_count_i : integer range RAM_DEPTH - 1 downto 0;
 
  -- Increment and wrap
  procedure incr(signal index : inout index_type) is
  begin
    if index = index_type'high then
      index <= index_type'low;
    else
      index <= index + 1;
    end if;
  end procedure;
 
begin
 
  -- Set the flags
  empty_i <= '1' when fill_count_i = 0 else '0';
  full_i <= '1' when fill_count_i >= RAM_DEPTH - 1 else '0';
 
  -- Update the head pointer in write
  PROC_HEAD : process(clk, aresetn)
  begin
    if(aresetn = '0') then
        head <= 0;
    elsif (rising_edge(clk)) then
        if wr_en = '1' and full_i = '0' then
            incr(head);
        end if;
    end if;
  end process;
 
  -- Update the tail pointer on read and pulse valid
  PROC_TAIL : process(clk)
  begin
    if(aresetn = '0') then
        tail <= 0;
        rd_valid <= '0';
    elsif rising_edge(clk) then
        rd_valid <= '0';
 
        if rd_en = '1' and empty_i = '0' then
          incr(tail);
          rd_valid <= '1';
        end if;
    end if;
  end process;
 
  -- Write to and read from the RAM
  PROC_RAM : process(clk)
  begin
    if rising_edge(clk) then
      ram(head) <= wr_data;
      rd_data <= ram(tail);
    end if;
  end process;
 
  -- Update the fill count
  PROC_COUNT : process(head, tail)
  begin
    if head < tail then
      fill_count_i <= head - tail + RAM_DEPTH;
    else
      fill_count_i <= head - tail;
    end if;
  end process;
 
end architecture;