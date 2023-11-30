--------------------------------------------------------------------------------
--                            IntAdder_8_f400_uid2
--                      (IntAdderClassical_8_F400_uid4)
-- This operator is part of the Infinite Virtual Library FloPoCoLib
-- All rights reserved 
-- Authors: Bogdan Pasca, Florent de Dinechin (2008-2010)
--------------------------------------------------------------------------------
-- Pipeline depth: 0 cycles

library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;
use ieee.std_logic_unsigned.all;
library std;
use std.textio.all;
library work;

entity IntAdder_8_f400_uid2 is
   port ( clk, rst : in std_logic;
          X : in  std_logic_vector(7 downto 0);
          Y : in  std_logic_vector(7 downto 0);
          Cin : in  std_logic;
          R : out  std_logic_vector(7 downto 0)   );
end entity;

architecture arch of IntAdder_8_f400_uid2 is
begin
   process(clk)
      begin
         if clk'event and clk = '1' then
         end if;
      end process;
   --Classical
    R <= X + Y + Cin;
end architecture;

--------------------------------------------------------------------------------
--                  TestBench_IntAdder_8_f400_uid2_F400_uid8
-- This operator is part of the Infinite Virtual Library FloPoCoLib
-- All rights reserved 
-- Authors: Florent de Dinechin, Cristian Klein, Nicolas Brunie (2007-2010)
--------------------------------------------------------------------------------
library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;
use ieee.std_logic_unsigned.all;
library std;
use std.textio.all;
library work;

entity TestBench_IntAdder_8_f400_uid2_F400_uid8 is
end entity;

architecture behavorial of TestBench_IntAdder_8_f400_uid2_F400_uid8 is
   component IntAdder_8_f400_uid2 is
      port ( clk, rst : in std_logic;
             X : in  std_logic_vector(7 downto 0);
             Y : in  std_logic_vector(7 downto 0);
             Cin : in  std_logic;
             R : out  std_logic_vector(7 downto 0)   );
   end component;
   signal X :  std_logic_vector(7 downto 0);
   signal Y :  std_logic_vector(7 downto 0);
   signal Cin :  std_logic;
   signal R :  std_logic_vector(7 downto 0);
   signal clk :  std_logic;
   signal rst :  std_logic;

   -- FP compare function (found vs. real)
   function fp_equal(a : std_logic_vector; b : std_logic_vector) return boolean is
   begin
      if b(b'high downto b'high-1) = "01" then
         return a = b;
      elsif b(b'high downto b'high-1) = "11" then
         return (a(a'high downto a'high-1)=b(b'high downto b'high-1));
      else
         return a(a'high downto a'high-2) = b(b'high downto b'high-2);
      end if;
   end;



 -- converts std_logic into a character
   function chr(sl: std_logic) return character is
      variable c: character;
   begin
      case sl is
         when 'U' => c:= 'U';
         when 'X' => c:= 'X';
         when '0' => c:= '0';
         when '1' => c:= '1';
         when 'Z' => c:= 'Z';
         when 'W' => c:= 'W';
         when 'L' => c:= 'L';
         when 'H' => c:= 'H';
         when '-' => c:= '-';
      end case;
      return c;
   end chr;
   -- converts bit to std_logic (1 to 1)
   function to_stdlogic(b : bit) return std_logic is
       variable sl : std_logic;
   begin
      case b is 
         when '0' => sl := '0';
         when '1' => sl := '1';
      end case;
      return sl;
   end to_stdlogic;
   -- converts std_logic into a string (1 to 1)
   function str(sl: std_logic) return string is
    variable s: string(1 to 1);
    begin
      s(1) := chr(sl);
      return s;
   end str;
   -- converts std_logic_vector into a string (binary base)
   -- (this also takes care of the fact that the range of
   --  a string is natural while a std_logic_vector may
   --  have an integer range)
   function str(slv: std_logic_vector) return string is
      variable result : string (1 to slv'length);
      variable r : integer;
   begin
      r := 1;
      for i in slv'range loop
         result(r) := chr(slv(i));
         r := r + 1;
      end loop;
      return result;
   end str;




   -- test isZero
   function iszero(a : std_logic_vector) return boolean is
   begin
      return  a = (a'high downto 0 => '0');
   end;


   -- FP IEEE compare function (found vs. real)
   function fp_equal_ieee(a : std_logic_vector; b : std_logic_vector; we : integer; wf : integer) return boolean is
   begin
      if a(wf+we downto wf) = b(wf+we downto wf) and b(we+wf-1 downto wf) = (we downto 1 => '1') then
         if iszero(b(wf-1 downto 0)) then return  iszero(a(wf-1 downto 0));
         else return not iszero(a(wf - 1 downto 0));
         end if;
      else
         return a(a'high downto 0) = b(b'high downto 0);
      end if;
   end;
begin
   test: IntAdder_8_f400_uid2  -- pipelineDepth=0 maxInDelay=0
      port map ( clk  => clk,
                 rst  => rst,
                 Cin => Cin,
                 R => R,
                 X => X,
                 Y => Y);
   -- Ticking clock signal
   process
   begin
      clk <= '0';
      wait for 5 ns;
      clk <= '1';
      wait for 5 ns;
   end process;

   -- Reading the input from a file 
   process
      variable inline : line; 
      variable counter : integer := 1;
      variable errorCounter : integer := 0;
      variable possibilityNumber : integer := 0;
      variable localErrorCounter : integer := 0;
      variable tmpChar : character;
      file inputsFile : text is "test.input"; 
      variable V_X : bit_vector(7 downto 0);
      variable V_Y : bit_vector(7 downto 0);
      variable V_Cin : bit_vector(0 downto 0);
      variable V_R : bit_vector(7 downto 0);
   begin
      -- Send reset
      rst <= '1';
      wait for 10 ns;
      rst <= '0';
      while not endfile(inputsFile) loop
          -- positionning inputs
         readline(inputsFile,inline);
         read(inline ,V_X);
         read(inline,tmpChar);
         X <= to_stdlogicvector(V_X);
         read(inline ,V_Y);
         read(inline,tmpChar);
         Y <= to_stdlogicvector(V_Y);
         read(inline ,V_Cin);
         read(inline,tmpChar);
         Cin <= to_stdlogicvector(V_Cin)(0);
         readline(inputsFile,inline);
         wait for 10 ns;
      end loop;
      wait for 10000 ns; -- wait for simulation to finish
   end process;
          -- verifying the corresponding output
         process
      variable inline0 : line; 
      variable inline : line; 
      variable counter : integer := 1;
      variable errorCounter : integer := 0;
      variable possibilityNumber : integer := 0;
      variable localErrorCounter : integer := 0;
      variable tmpChar : character;
      file inputsFile : text is "test.input"; 
      variable V_R : bit_vector(7 downto 0);
      variable expected_R: string (1 to 1000);
      variable expected_size_R : integer;
   begin
          wait for 10 ns;
      wait for 2 ns; -- wait for pipeline to flush
      while not endfile(inputsFile) loop
          -- positionning inputs
         readline(inputsFile,inline0);
         readline(inputsFile,inline);
         read(inline, possibilityNumber);
         localErrorCounter := 0; -- 0 means error
         read(inline,tmpChar);
         expected_size_R := inline'Length;
         expected_R := inline.all & (expected_size_R+1 to 1000 => ' ');
         if possibilityNumber = 0 then
            localErrorCounter := 0;
         elsif possibilityNumber = 1 then 
            read(inline ,V_R);
            if not (R= to_stdlogicvector(V_R)) then 
               assert false report("Line " & integer'image(counter) & " of input file, incorrect output for R: " & lf & "  expected value: " & expected_R(1 to expected_size_R) & lf & "          result: " & str(R)) ;
               errorCounter := errorCounter + 1; -- incrementing global error counter
            end if;
         else
            for i in possibilityNumber downto 1 loop 
               read(inline ,V_R);
               read(inline,tmpChar);
               if (R= to_stdlogicvector(V_R))  then localErrorCounter := 1; end if;
            end loop;
             if (localErrorCounter = 0) then 
               errorCounter := errorCounter + 1; -- incrementing global error counter
               assert false report("Line " & integer'image(counter) & " of input file, incorrect output for R: " & lf & " expected values: " & expected_R(1 to expected_size_R) & lf & "          result: " & str(R)) ;
            end if;
         end if;
          wait for 10 ns; -- wait for pipeline to flush
         counter := counter + 2;
      end loop;
      report (integer'image(errorCounter) & " error(s) encoutered.");
      report "End of simulation" severity note;
   end process;

end architecture;
