----------------------------------------------------------------------------------
-- Company: International Centre for Theoretical Physics - Multidisciplinary Laboratory
-- Engineer: Bruno Valinoti -- bvalinot@ictp.it, Maynor Ballina
-- 
-- Create Date: 10/26/2023 12:44:40 PM
-- Design Name: 
-- Module Name: alu_tb - Behavioral
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
-- Distributed under the BSD 3-Clause License
----------------------------------------------------------------------------------


library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;


entity alu_tb is
--  Port ( );
end alu_tb;

architecture Behavioral of alu_tb is
   constant WIDTH  : natural := 17;
   signal clk      : std_logic;
   signal rst      : std_logic;
   signal op_code  : std_logic_vector(2 downto 0);
   signal data_a   : std_logic_vector(WIDTH-1 downto 0):= (others=>'0');
   signal data_b   : std_logic_vector(WIDTH-1 downto 0):= (others=>'0');
   signal result   : std_logic_vector(WIDTH-1 downto 0):= (others=>'0');
   signal status   : std_logic_vector(1 downto 0);
   signal stop     : boolean := FALSE;
   constant N_SAMPL: integer := 1; 

begin

   do_clock : entity work.Clock
   port map(
      clk_o  => clk,
      rst_o  => rst,
      stop_i => stop
   );

   -- Instatiate the device under test DUT
   dut: entity work.alu
   generic map ( WIDTH => WIDTH)
   port map(
	   clk_i     => clk,
	   rst_i     => rst,
       op_code_i => op_code,
       data_a_i  => data_a,
       data_b_i  => data_b,
       data_o    => result,
       status_o  => status        -- status O Z 
    );
   
   test_dut : process
-- definition and initialization of result variables for the testbench
      variable aux_result  : unsigned(WIDTH-1 downto 0):= (others=>'0');
      variable aux_slv     : std_logic_vector(WIDTH-1 downto 0):= (others=>'0');
      begin
-- ## Simutation Initiates ##
-- Change the stimulus variables
-- Initialization of the data values to 0
         data_a <= (others => '0');
         data_b <= (others => '0');
-- Set the operation code to perform a addition
         op_code <= "001";  
         wait until rst = '0';
         wait for 10 ns;
-- This section will increment the data_a value by 1, since the operation code is "001" 
-- the alu will add the value of data_a and data_b. When the clock performs a rising edge, 
-- the data_a value is set to 1
         wait until rising_edge(clk);
         data_a <= std_logic_vector(to_unsigned(1,data_a'length)); -- to_unsigned(signal to convert, length resulting vector)
         wait for 10 ns;
         wait until rising_edge(clk);
         data_a <= std_logic_vector(to_unsigned(2,data_a'length)); -- increment data_a value
         wait for 10 ns;
         wait until rising_edge(clk);
         data_a <= std_logic_vector(to_unsigned(3,data_a'length)); -- increment data_a value
         wait for 200 ns;

----- TEST adding  OPERATION CODE "001"
         data_a <= (others => '0');
         data_b <= (others => '0');
         op_code <= "001";
         -- A scan is carried out through all the possible values ​​of data_a(i) and data_b(j)
         for j in 2**data_b'length-2 to 2**data_b'length-1 loop
            for i in 0 to 2**data_a'length-1 loop
               data_a <= std_logic_vector(to_unsigned(i,data_a'length));
               data_b <= std_logic_vector(to_unsigned(j,data_b'length));
               wait for 1 ps;
               wait until rising_edge(clk);
               -- performs the a auxiliary addition
               aux_result :=  unsigned(data_a) + unsigned(data_b);
               wait for 1 ps;
-- A common way to write a self-checking testbench is with assert statements. Just like in other programming languages, 
-- assert statements in simulated VHDL will check a condition and, upon failure of that condition, report a state.
               -- verifies the result with the aux_result to identify and error on the ALU code
               assert result = std_logic_vector(aux_result) report "Assertion violation." severity error;         
            end loop;
         end loop;

----- TEST adding  OPERATION CODE "010"
         data_a <= (others => '0');
         data_b <= (others => '0');
         op_code <= "010";  
         for j in 2**data_b'length-2 to 2**data_b'length-1 loop -- define the end of the loop
            for i in 0 to 2**(data_a'length)-1 loop
               data_a <= std_logic_vector(to_unsigned(i,data_a'length));
               data_b <= std_logic_vector(to_unsigned(j,data_b'length));
               wait for 1 ps;
               wait until rising_edge(clk);
               aux_result :=  unsigned(data_a) - unsigned(data_b);
               wait for 1 ps;
               assert result = std_logic_vector(aux_result) report "Assertion violation." severity error;         
            end loop;
         end loop;
         


----- TEST adding  OPERATION CODE "011"
         data_a <= (others => '0');
         data_b <= (others => '0');
         op_code <= "011";  
         for j in 2**data_b'length-2 to 2**data_b'length-1 loop -- define the end of the loop
            for i in 0 to 2**(data_a'length)-1 loop
               data_a <= std_logic_vector(to_unsigned(i,data_a'length));
               data_b <= std_logic_vector(to_unsigned(j,data_b'length));
               wait for 1 ps;
               wait until rising_edge(clk);
               aux_result :=  unsigned(data_a) - unsigned(data_b);
               wait for 1 ps;
               assert result = std_logic_vector(aux_result) report "Assertion violation." severity error;         
            end loop;
         end loop;
         


----- TEST adding  OPERATION CODE "100"
         data_a <= (others => '0');
         data_b <= (others => '0');
         op_code <= "100";  
         for j in 2**data_b'length-2 to 2**data_b'length-1 loop -- define the end of the loop
            for i in 0 to 2**(data_a'length)-1 loop
               data_a <= std_logic_vector(to_unsigned(i,data_a'length));
               data_b <= std_logic_vector(to_unsigned(j,data_b'length));
               wait for 1 ps;
               wait until rising_edge(clk);
               aux_result :=  unsigned(data_a) - unsigned(data_b);
               wait for 1 ps;
               assert result = std_logic_vector(aux_result) report "Assertion violation." severity error;         
            end loop;
         end loop;
         
         
----- TEST adding  OPERATION CODE "101"
         data_a <= (others => '0');
         data_b <= (others => '0');
         op_code <= "101";  
         for j in 2**data_b'length-2 to 2**data_b'length-1 loop -- define the end of the loop
            for i in 0 to 2**(data_a'length)-1 loop
               data_a <= std_logic_vector(to_unsigned(i,data_a'length));
               data_b <= std_logic_vector(to_unsigned(j,data_b'length));
               wait for 1 ps;
               wait until rising_edge(clk);
               aux_result :=  unsigned(data_a) - unsigned(data_b);
               wait for 1 ps;
               assert result = std_logic_vector(aux_result) report "Assertion violation." severity error;         
            end loop;
         end loop;

----- Add another test for the ror or the rol

-- ## Simutation Ends ##
         stop <= TRUE;
         wait for 1 ns;
         wait;
   end process test_dut;

end Behavioral;