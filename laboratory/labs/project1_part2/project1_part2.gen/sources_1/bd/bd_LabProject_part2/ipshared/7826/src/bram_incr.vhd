----------------------------------------------------------------------------------
-- Company: IAEA
-- Engineer: M.B.
-- 
-- Create Date: 10.12.2017 15:27:29
-- Design Name: 
-- Module Name: bram_incr - Behavioral
-- Project Name: MCA
-- Target Devices: Zynq
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
use IEEE.NUMERIC_STD.ALL;
use IEEE.std_logic_unsigned.all;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity bram_incr is
   Generic( BRAM_ADDRESS_SIZE: INTEGER := 11);
   port 
      (
      --bram address is byte address
      bram_addr : out STD_LOGIC_VECTOR ( BRAM_ADDRESS_SIZE - 1 downto 0 );
      bram_dout : in STD_LOGIC_VECTOR ( 31 downto 0 );
      bram_we : out STD_LOGIC;
      bram_din : out STD_LOGIC_VECTOR ( 31 downto 0 );
      peak_amp : in STD_LOGIC_VECTOR ( 15 downto 0 );
      peak_amp_rdy : in STD_LOGIC;
      rstn :  STD_LOGIC;
      clk :  STD_LOGIC
      );                     
end bram_incr;

architecture Behavioral of bram_incr is
   signal doutb : std_logic_vector(31 downto 0) := (others => '0');
   signal wea : std_logic := '0';
   signal uData, uSum : unsigned(31 downto 0); -- := (others => '0');
   signal Data, Sum : std_logic_vector(31 downto 0);

   --state machine
   type state_type is (st1_idle, st2_read, st3_increment, st4_store); 
   signal state, next_state : state_type; 
   signal web :std_logic := '0';  
   signal inc :std_logic := '0';  

   begin

   --bram address is byte address; lowest two bits must be zero
   bram_addr <=  peak_amp(14 downto 15 - BRAM_ADDRESS_SIZE);
   Data <= bram_dout;
   bram_we <= web;
   bram_din <= Sum;
      
   --
   -- MOORE State-Machine for 'Add 1' cycle to write on port B
   --
   SYNC_PROC: process ( clk)
      begin
      if ( clk'event and  clk = '1') then
        if (rstn = '0') then
           state <= st1_idle;
        else
           state <= next_state;
        end if;        
      end if;
      end process;
    
   OUTPUT_DECODE: process (state)
      begin
      --decode internal output signals
      if state = st1_idle then
         web <= '0';
         inc <= '0';
      elsif state = st2_read then
         web <= '0';
         inc <= '0';
      elsif state = st3_increment then
         web <= '0';
         inc <= '1';
      elsif state = st4_store then
         web <= '1';
         inc <= '0';
      else 
         web <= '0';
         inc <= '0';
      end if;
      end process;
    
   NEXT_STATE_DECODE: process (state, peak_amp_rdy)
      begin
      --declare default state for next_state to avoid latches
      next_state <= state;  --default is to stay in current state
      --insert statements to decode next_state
      --below is a simple example
      case (state) is
         when st1_idle =>
            if peak_amp_rdy = '1' then
               next_state <= st2_read;
            else 
               next_state <= st1_idle;
            end if;
         when st2_read =>
            next_state <= st3_increment;
         when st3_increment =>
            next_state <= st4_store;
         when st4_store =>
            next_state <= st1_idle;
         when others =>
            next_state <= st1_idle;
      end case;      
      end process;

    --
    --increment and latch
    --
   regadder: process(inc,uData)
      begin
         if inc = '1' then 
            uSum <= uData + 1;
         end if;
      end process;

   Sum <= std_logic_vector(uSum);
   uData <= unsigned(Data);

end Behavioral;
