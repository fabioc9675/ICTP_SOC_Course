----------------------------------------------------------------------------------
-- Company: ICTP Multidiciplinary Laboratory
-- Engineer: Bruno Valinoti - bvalinot@ictp.it
-- 
-- Create Date: 09/11/2023 
-- Design Name: DPP Top level 
-- Module Name:    top_macromodule - Behavioral 
-- Project Name: Light Digital Pulse Processor
-- Target Devices: ZedBoard
-- Tool versions: 
-- Description: 
--
-- Dependencies: 
--
-- Revision: 
-- Revision 0.01 - File Created
-- Additional Comments:  Light Digital Pulse Processor for the smr3891 school
--
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;
use IEEE.std_logic_signed.all;

entity DPP_module_top_0 is
   Port (    
   --Global signals
      clk_i      : in  std_logic;
      rst_i      : in  std_logic;
      ena_i      : in  std_logic;
      ADC_data_i : in  std_logic_vector (11 downto 0);
      valid_i    : in  std_logic;
   --Input parameters
      threshold_high_i : in  std_logic_vector (15 downto 0);
      op_mode_i        : in  std_logic_vector (1 downto 0);       
      data_o           : out std_logic_vector (15 downto 0);
   -------				
      fifo_wr_en_mux_out: out std_logic
);
			  
end DPP_module_top_0;

architecture Behavioral of DPP_module_top_0 is
--Signals
signal FIR_Derivative_data : std_logic_vector(15 downto 0) ; --This is the data stream out of the derivative filter
signal ddly_0, ddly_1      : std_logic_vector(15 downto 0) ;
signal photon_arrival      : std_logic; --
signal FIFO_wr_en          : std_logic; --
signal wren_dly            : std_logic; 
signal FIR_data_out        : std_logic_vector(15 downto 0) ; ----Main_fir data out
signal fifo_wr_en_mux      : std_logic; --
signal FIFO_DATA_IN_mux    : STD_LOGIC_VECTOR (15 downto 0);
signal valid_der           : std_logic;
signal read_ena            : std_logic;
--
attribute mark_debug : string;
attribute keep : string;
attribute mark_debug of ADC_data_i: signal is "true";
attribute mark_debug of op_mode_i : signal is "true";
attribute mark_debug of valid_i   : signal is "true";
attribute mark_debug of fifo_wr_en_mux : signal is "true";
attribute mark_debug of FIFO_wr_en: signal is "true";
attribute mark_debug of wren_dly  : signal is "true";
attribute mark_debug of read_ena  : signal is "true";
attribute mark_debug of photon_arrival : signal is "true";
attribute mark_debug of FIR_data_out : signal is "true";

begin

-- COMPONENTS INSTANTIATION SECTION
   my_op_mode_dec: entity work.output_mux PORT MAP(
    op_mode_i => op_mode_i,
    fifo_wr_en_i => FIFO_wr_en,
    FIR_data_i => FIR_data_out,
    ADC_data_i => ADC_data_i,
    FIR_deriv_i => FIR_Derivative_data,
    fifo_wr_en_o => FIFO_wr_en_mux,
    data_o => FIFO_DATA_IN_mux
    );
    data_o <= FIFO_DATA_IN_mux;

    read_ena <= valid_i and ena_i;
    fir_derivative : entity work.fir_derivative_0
      port map (
         clk_i  => clk_i, 
         rst_i  => rst_i,
         ena_i  => read_ena,
         data_i => ADC_data_i, 
         der_sign => valid_der,
         data_o => FIR_Derivative_data  
   );
	
   edge_detector : entity work.edge_detector_0
      port map (
         clk_i  => clk_i, 
         rst_i  => rst_i,
         ena_i  => ena_i, 
         data_i => FIR_Derivative_data, 
         ---
         threshold_high_i =>  threshold_high_i, 
         -- 
         arrival_flag_o   => photon_arrival
      );

   FIR_data_out <= ddly_1 ; -- "0000" & ADC_data_i;  -- TODO: Apply the filter
   fifo_wr_en_mux_out <= fifo_wr_en_mux;
   FIFO_wr_en <= photon_arrival and wren_dly;  --TODO: Delay the "arrival_flag" the latency 

   do_delay: process(clk_i) 
   begin
      if rising_edge(clk_i) then
         if read_ena = '1' then
            ddly_0 <= "0000" & ADC_data_i;
            ddly_1 <= ddly_0;
            wren_dly <= valid_der;
         end if;
      end if;
   end process do_delay;
   
end Behavioral;
