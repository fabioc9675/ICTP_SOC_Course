----------------------------------------------------------------------------------
-- Company: MLAB (ICTP-INFN)
-- Engineers: A. Cicuttin, M.L. Crespo
--            B. Valinoti
-- Create Date:    10:38:36 08/27/2015 
-- Design Name: 
-- Module Name:    edge_detector_1 - Behavioral 
-- Project Name: 
-- Target Devices: 
-- Tool versions: 
-- Description: 
-- 		This module takes the derivative of a synchronous input data stream 
--			provided by the module "fir_derivative" and generates: 
--			1) the "arrival_flag" lasting on clock cycle each time data goes beyond "threshold_high"
--			2) the "rejection_flag" starting when data_in goes beyond "threshold_high" and ending when 
--				data_in goes below "threshold_low"
--			Two different threshold to provide some histeresis (kind off Schmidt triggering)
--      	If another photon arrives before going below threshold_low then it is not detected
--          3)
--			
-- Dependencies: Uses module "fir_derivative_1.vhd"
--
-- Revision: 
-- Revision 0.01 - File Created
-- Revision 0.02 - Bruno Valinoti -- Removed sirio signals and renamed interface, added enable.
--                 Removed libraries not used and changed the name of the entity and file
-- Additional Comments: 
--
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.numeric_std.all;
use IEEE.std_logic_signed.all;

entity edge_detector_1 is
   Port ( 
   --Inputs
      clk_i  : in  std_logic;
      rst_i  : in  std_logic;
      ena_i  : in  std_logic;
      data_i : in  std_logic_vector (15 downto 0); 
      --Parameters
      det_threshold_high_i : in  std_logic_vector (15 downto 0); -- Absolute threshold to detect pulse arrival
      det_threshold_low_i  : in  std_logic_vector (15 downto 0); -- Absolute threshold to go to the "waiting_state" (it should be slightly lower than "threshold_high")
      --Outputs
      arrival_flag_o   : out  std_logic;     -- it is rised only one clock pulse when "data_in" cross upwards "threshold" 
      rejection_flag_o : out  std_logic);  -- it is kept high while over threshold 

end edge_detector_1; 

architecture Behavioral of edge_detector_1 is
  -- For the finite state machine
  type state_type is (reset_st, waiting_st, output_pulse_st, over_threshold_st); 
  signal state, next_state : state_type; 
  signal arrival_flag_reg : std_logic;
  -- DEBUG signals
  attribute mark_debug : string;
  attribute mark_debug of data_i : signal is "true";
begin 
 
--Updating states
   SYNC_PROC: process (clk_i)
   begin
      if rising_edge(clk_i) then
         if rst_i = '1' then
            state <= reset_st;			
         elsif ena_i = '1' then 
            state <= next_state;
         else
            state <= state;
         end if;        
      end if;
   end process;
 
   --MOORE State-Machine - Outputs based on state only
   OUTPUT_DECODE: process (state)
   begin
      if state = reset_st then
         arrival_flag_reg  <= '0';      
         rejection_flag_o  <= '0';  		
      elsif state = waiting_st then
         arrival_flag_reg  <= '0';      
         rejection_flag_o  <= '0';				
      elsif state = output_pulse_st  then
         arrival_flag_reg  <= '1';      
         rejection_flag_o  <= '1';  
      elsif state = over_threshold_st then
         arrival_flag_reg  <= '0';      
         rejection_flag_o  <= '1';  
      else
         arrival_flag_reg  <= '0';      
         rejection_flag_o  <= '0';				         
      end if;
 
   end process;
 
   NEXT_STATE_DECODE: process (state, data_i, det_threshold_low_i, det_threshold_high_i )
   begin
      --declare default state for next_state to avoid latches
      next_state <= state;  --default is to stay in current state
      case (state) is
         when reset_st =>
            next_state <= waiting_st;
         when waiting_st =>
            if unsigned(data_i) >= unsigned(det_threshold_high_i) then
               next_state <= output_pulse_st; 
            else
               next_state <= waiting_st; 
            end if;
         when output_pulse_st =>
            next_state <= over_threshold_st; 
         when over_threshold_st =>
            if unsigned(data_i) < unsigned(det_threshold_low_i) then
               next_state <= waiting_st;
            else
               next_state <= over_threshold_st;
            end if;
         when others =>
            next_state <= reset_st;
      end case;      
   end process;

   arrival_flag_o <= arrival_flag_reg; 

end Behavioral;

