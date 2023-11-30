----------------------------------------------------------------------------------
-- Company: ICTP MLab -- INTI
-- Engineer: Bruno Valinoti - bvalinot@ictp.it - valinoti@inti.gob.ar
-- 
-- Create Date: 03/06/2023 01:11:18 PM
-- Design Name: 
-- Module Name: DPP_module_FIR - Behavioral
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
use IEEE.NUMERIC_STD.ALL;



entity DPP_module_FIR is
 generic ( 
      TAP_N : natural := 23
 );
 port (
       --Global signals
      clk_i      : in  std_logic;
      rst_i      : in  std_logic;
      ena_i      : in  std_logic;
      ADC_data_i : in  std_logic_vector (15 downto 0); -- data from ComBlock FIFO
      valid_i    : in  std_logic;
      read_ena_o : out std_logic;
	--Input parameters
      cf_1_i : in std_logic_vector(4 downto 0);
      cf_2_i : in std_logic_vector(4 downto 0);
      cf_3_i : in std_logic_vector(4 downto 0);
    --Long FIR Coefficient reload signals
      det_threshold_high_i : in  std_logic_vector (15 downto 0);
      det_threshold_low_i  : in  std_logic_vector (15 downto 0);
      op_mode_i        : in  std_logic_vector (1 downto 0);
--      delay_tap_i      : in  std_logic_vector (15 downto 0);       
      data_o           : out std_logic_vector (15 downto 0);
    -------				
      fifo_wr_en_mux_out: out std_logic
 );
end DPP_module_FIR;

architecture Behavioral of DPP_module_FIR is
   signal data_in             : std_logic_vector(15 downto 0);
   -- detection branch signals
   signal detection_data_in   : std_logic_vector(15 downto 0);
   signal deteection_data_out : std_logic_vector(15 downto 0);
   signal pulse_detection     : std_logic;
   signal rejection_flag      : std_logic;
   signal valid_der           : std_logic;
   signal n_valid_der         : std_logic;
   signal valid_ena           : std_logic;
   
   -- multiplexed data
   signal data_muxed_out      : std_logic_vector(15 downto 0);
   signal data_from_derivative: std_logic_vector(15 downto 0);
   signal data_from_amplitude : std_logic_vector(15 downto 0);
   signal data_from_ADC       : std_logic_vector(15 downto 0);
   -- Main FSM
   type   state_t is (RESET_S, IDLE_S, OP_S);
   signal state, next_state : state_t := IDLE_S;
--   signal delay, delay_next
   signal valid_delayed : std_logic_vector(TAP_N-1 downto 0);
   signal valid_output  : std_logic;
   signal valid_filt_amp : std_logic;
   
   --
   attribute mark_debug : string;
   attribute mark_debug of data_o : signal is "true";
   attribute mark_debug of fifo_wr_en_mux_out: signal is "true";
   attribute mark_debug of valid_i: signal is "true";
   attribute mark_debug of ena_i  : signal is "true";
   attribute mark_debug of state  : signal is "true";
   
   
begin

    fir_derivative : entity work.fir_derivative_1
      generic map(d_width => 16)
      port map (
         clk_i  => clk_i, 
         rst_i  => rst_i,
         ena_i  => valid_ena,
         data_i => ADC_data_i, 
         cf_1_i => cf_1_i,
         cf_2_i => cf_2_i,
         cf_3_i => cf_3_i,
         der_sign => valid_der,
         data_o => data_from_derivative  
   );
   n_valid_der <= not(valid_der);
   valid_ena   <= valid_i and ena_i;	
   edge_detector : entity work.edge_detector_1
      port map (
         clk_i  => clk_i, 
         rst_i  => rst_i,
         ena_i  => n_valid_der, 
         data_i => data_from_derivative, 
         ---
         det_threshold_high_i =>  det_threshold_high_i, 
         det_threshold_low_i  =>  det_threshold_low_i,
         -- 
         arrival_flag_o   => pulse_detection, 
         rejection_flag_o => rejection_flag
   );

  
   do_long_FIR: entity work.long_FIR_DPP
   port map(
      clk_i  => clk_i,
      rst_i  => rst_i,
      ena_i  => valid_ena,
      data_i => data_from_ADC,
      data_o => data_from_amplitude,
      valid_o=> valid_filt_amp
   );
   data_from_ADC <=  ADC_data_i;
   
   read_ena_o <= ena_i;
   
   

   do_sync_state: process(clk_i)
   begin
      if rising_edge(clk_i) then
         if rst_i = '1' then 
            state <= IDLE_S;
         elsif valid_ena = '1' then
            state <= next_state;
         end if;
      end if;
   end process do_sync_state;

next_state_decode: process (state, ADC_data_i, op_mode_i)
   begin
      --declare default state for next_state to avoid latches
      next_state <= state;  --default is to stay in current state
      case (state) is
         when RESET_S =>
            next_state <= IDLE_S;
         when IDLE_S =>
            next_state <= OP_S;
         when OP_S =>
            next_state <= OP_S;
         when others =>
            next_state <= RESET_S;
      end case;
   end process;

output_decode: process (op_mode_i, valid_delayed, data_from_derivative, data_from_amplitude, valid_i, ena_i)
   begin
      case (state) is
         when RESET_S =>
            fifo_wr_en_mux_out <= '0';
         when IDLE_S =>
            fifo_wr_en_mux_out <= '0';
         when OP_S =>
            if (op_mode_i = b"00") then
               fifo_wr_en_mux_out <= '1';
               data_muxed_out <= ADC_data_i;
            elsif (op_mode_i = b"01") then
               fifo_wr_en_mux_out <= '1' and valid_delayed(TAP_N-3);
               data_muxed_out <= data_from_amplitude;
            elsif (op_mode_i = b"10") then
               fifo_wr_en_mux_out <= '1';
               data_muxed_out <= data_from_derivative;
            else
               fifo_wr_en_mux_out <= '0';
               data_muxed_out <= (others => '0');
            end if; 
         when others =>
            fifo_wr_en_mux_out <= '0';
            data_muxed_out <= (others => '0');
      end case;      
end process output_decode;
data_o <= data_muxed_out;

-- DELAY signal
do_delay: process(clk_i)
begin
   if rising_edge(clk_i) then
      if rst_i = '1' then 
         valid_delayed <= (others => '0');
      else
         if state = OP_S then
            valid_delayed <= valid_delayed(TAP_N-2 downto 0) & pulse_detection;
         else
            valid_delayed <= valid_delayed;
         end if;
      end if;
   end if;
end process do_delay;



end Behavioral;
