----------------------------------------------------------------------------------
-- Company: ICTP - Multidisciplinary Laboratory --- INTI
-- Engineer: Bruno Valinoti - bvalinot@ictp.it
-- 
-- Create Date: 12/14/2022 12:34:49 PM
-- Design Name: 
-- Module Name: long_FIR_DPP - Behavioral
-- Project Name: DPP
-- Target Devices: 
-- Tool Versions: 
-- Description: This IP receives the data from a single channel and apply the FIR filter
--              for amplitude extraction. The output is a continuous data stream, the 
--              filter has a delay of N samples. After the detection of the pulse the 
--              master should wait those N +1  samples + 4/5 of the peak value; or extract 
--              the maximum value of the output. 
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
use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
library UNISIM;
use UNISIM.VComponents.all;

entity long_FIR_DPP is
   generic(
      DIN_WIDTH  : natural:=16;
      DOUT_WIDTH : natural:=16
   );
   port ( 
       clk_i   :  in STD_LOGIC; --This must be the clock of the AXIS
       rst_i   :  in STD_LOGIC;
       ena_i   :  in STD_LOGIC;
       data_i  :  in STD_LOGIC_VECTOR (DIN_WIDTH-1  downto 0);
       data_o  : out STD_LOGIC_VECTOR (DOUT_WIDTH-1 downto 0);
       valid_o : out STD_LOGIC
    );
end long_FIR_DPP;

architecture Behavioral of long_FIR_DPP is
      signal count_r,count_next  : unsigned(15 downto 0);
      signal s_tvalid : std_logic:='0';
      signal m_tvalid : std_logic:='0';
      signal s_tready : std_logic:='0';
      signal s_tdata  : std_logic_vector( DIN_WIDTH-1 downto 0):= (others=>'0');
      signal m_tdata  : std_logic_vector(32-1 downto 0):= (others=>'0');
      signal valid_r  : std_logic:='0';

      type state_type is (reset_st, valid_assert_st, ready_wait_st, valid_data_st); 
      signal state_r, state_next : state_type; 
begin

   FIR_Amplitude: entity work.fir_compiler_0
   port map(
      aclk => clk_i,
      s_axis_data_tvalid => s_tvalid,  -- (input)  This comes from the data valid from the FIFO 
      s_axis_data_tready => s_tready,  -- (output) This to the FIFO read enable
      s_axis_data_tdata  => s_tdata ,  -- (input)  This goes to the input fifo with an enable
      m_axis_data_tvalid => m_tvalid,  -- (output)
      m_axis_data_tdata  => m_tdata(15 downto 0)    -- (output) 
   );
   s_tdata <= data_i;
   valid_o <= valid_r; -- data_o is delayey in one cycle
   data_o  <= m_tdata(15 downto 0); -- Division by 32 (N of filter coefficients)

   SYNC_PROC: process (clk_i)
   begin
      if rising_edge(clk_i) then
         if rst_i = '1' then
            state_r <= reset_st;			
         elsif ena_i = '1' then 
            state_r <= state_next;
         else
            state_r <= state_r;
         end if;        
      end if;
   end process;   
   
   NEXT_STATE_DECODE: process (state_r, s_tdata, s_tready , m_tdata, m_tvalid )
   begin
      --declare default state for next_state to avoid latches
      state_next <= state_r;  --default is to stay in current state
      case (state_r) is
         when reset_st =>
            state_next <= ready_wait_st;
         when ready_wait_st =>
            if s_tready = '1' then
               state_next <= valid_assert_st; 
            end if;         
         when valid_assert_st =>
            if m_tvalid = '1' then
               state_next <= valid_data_st;
            end if; 
         when valid_data_st =>
            state_next <= valid_data_st;
         when others =>
            state_next <= reset_st;
      end case;      
   end process;

   OUTPUT_DECODE: process(state_r) --reset_st, valid_assert_st, ready_wait_st, valid_data_st
   begin
      if state_r = reset_st then
         s_tvalid  <= '0';      
--         data_o    <= (others => '0');
         valid_r   <= '0';
      elsif state_r = valid_assert_st then
         s_tvalid  <= '1';      
--         data_o    <= (others => '0');
         valid_r   <= '0';
      elsif state_r = ready_wait_st  then
         s_tvalid  <= '1';      
--         data_o    <= (others => '0');
         valid_r   <= '0';
      elsif state_r = valid_data_st then
         s_tvalid <= '1';
         if m_tvalid = '1' then
            valid_r   <= '1';
         else
            valid_r   <= '0';
         end if;
      end if;
   end process;
   
end Behavioral;
