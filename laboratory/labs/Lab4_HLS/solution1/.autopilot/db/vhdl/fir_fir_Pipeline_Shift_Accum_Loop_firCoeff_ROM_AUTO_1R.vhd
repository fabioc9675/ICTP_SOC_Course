-- ==============================================================
-- Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2022.2 (64-bit)
-- Version: 2022.2
-- Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- ==============================================================
library ieee; 
use ieee.std_logic_1164.all; 
use ieee.std_logic_unsigned.all;

entity fir_fir_Pipeline_Shift_Accum_Loop_firCoeff_ROM_AUTO_1R is 
    generic(
             DataWidth     : integer := 12; 
             AddressWidth     : integer := 8; 
             AddressRange    : integer := 181
    ); 
    port (
 
          address0        : in std_logic_vector(AddressWidth-1 downto 0); 
          ce0             : in std_logic; 
          q0              : out std_logic_vector(DataWidth-1 downto 0);

          reset               : in std_logic;
          clk                 : in std_logic
    ); 
end entity; 


architecture rtl of fir_fir_Pipeline_Shift_Accum_Loop_firCoeff_ROM_AUTO_1R is 
 
signal address0_tmp : std_logic_vector(AddressWidth-1 downto 0); 

type mem_array is array (0 to AddressRange-1) of std_logic_vector (DataWidth-1 downto 0); 

signal mem0 : mem_array := (
    0 => "110111011111", 1 => "111110100100", 2 => "111110100000", 3 => "111110011110", 
    4 => "111110011111", 5 => "111110100011", 6 => "111110101010", 7 => "111110110011", 
    8 => "111110111111", 9 => "111111001101", 10 => "111111011101", 11 => "111111101111", 
    12 => "000000000001", 13 => "000000010011", 14 => "000000100100", 15 => "000000110101", 
    16 => "000001000100", 17 => "000001010000", 18 => "000001011010", 19 => "000001100001", 
    20 => "000001100101", 21 => "000001100110", 22 => "000001100011", 23 => "000001011101", 
    24 => "000001010100", 25 => "000001001010", 26 => "000000111101", 27 => "000000110000", 
    28 => "000000100011", 29 => "000000010111", 30 => "000000001101", 31 => "000000000110", 
    32 => "000000000010", 33 => "000000000010", 34 => "000000001000", 35 => "000000010010", 
    36 => "000000100001", 37 => "000000110110", 38 => "000001010000", 39 => "000001101110", 
    40 => "000010010000", 41 => "000010110101", 42 => "000011011010", 43 => "000100000000", 
    44 => "000100100100", 45 => "000101000100", 46 => "000101100000", 47 => "000101110100", 
    48 => "000110000000", 49 => "000110000011", 50 => "000101111010", 51 => "000101100101", 
    52 => "000101000100", 53 => "000100010110", 54 => "000011011010", 55 => "000010010011", 
    56 => "000001000001", 57 => "111111100100", 58 => "111110000000", 59 => "111100010101", 
    60 => "111010100111", 61 => "111000111001", 62 => "110111001101", 63 => "110101100110", 
    64 => "110100001000", 65 => "110010110101", 66 => "110001110001", 67 => "110000111101", 
    68 => "110000011101", 69 => "110000010001", 70 => "110000011100", 71 => "110000111110", 
    72 => "110001110110", 73 => "110011000110", 74 => "110100101011", 75 => "110110100100", 
    76 => "111000101110", 77 => "111011001000", 78 => "111101101101", 79 => "000000011010", 
    80 => "000011001011", 81 => "000101111100", 82 => "001000101000", 83 => "001011001100", 
    84 => "001101100100", 85 => "001111101011", 86 => "010001011110", 87 => "010010111011", 
    88 => "010100000000", 89 => "010100101001", 90 => "010100110111", 91 => "010100101001", 
    92 => "010100000000", 93 => "010010111011", 94 => "010001011110", 95 => "001111101011", 
    96 => "001101100100", 97 => "001011001100", 98 => "001000101000", 99 => "000101111100", 
    100 => "000011001011", 101 => "000000011010", 102 => "111101101101", 103 => "111011001000", 
    104 => "111000101110", 105 => "110110100100", 106 => "110100101011", 107 => "110011000110", 
    108 => "110001110110", 109 => "110000111110", 110 => "110000011100", 111 => "110000010001", 
    112 => "110000011101", 113 => "110000111101", 114 => "110001110001", 115 => "110010110101", 
    116 => "110100001000", 117 => "110101100110", 118 => "110111001101", 119 => "111000111001", 
    120 => "111010100111", 121 => "111100010101", 122 => "111110000000", 123 => "111111100100", 
    124 => "000001000001", 125 => "000010010011", 126 => "000011011010", 127 => "000100010110", 
    128 => "000101000100", 129 => "000101100101", 130 => "000101111010", 131 => "000110000011", 
    132 => "000110000000", 133 => "000101110100", 134 => "000101100000", 135 => "000101000100", 
    136 => "000100100100", 137 => "000100000000", 138 => "000011011010", 139 => "000010110101", 
    140 => "000010010000", 141 => "000001101110", 142 => "000001010000", 143 => "000000110110", 
    144 => "000000100001", 145 => "000000010010", 146 => "000000001000", 147 => "000000000010", 
    148 => "000000000010", 149 => "000000000110", 150 => "000000001101", 151 => "000000010111", 
    152 => "000000100011", 153 => "000000110000", 154 => "000000111101", 155 => "000001001010", 
    156 => "000001010100", 157 => "000001011101", 158 => "000001100011", 159 => "000001100110", 
    160 => "000001100101", 161 => "000001100001", 162 => "000001011010", 163 => "000001010000", 
    164 => "000001000100", 165 => "000000110101", 166 => "000000100100", 167 => "000000010011", 
    168 => "000000000001", 169 => "111111101111", 170 => "111111011101", 171 => "111111001101", 
    172 => "111110111111", 173 => "111110110011", 174 => "111110101010", 175 => "111110100011", 
    176 => "111110011111", 177 => "111110011110", 178 => "111110100000", 179 => "111110100100", 
    180 => "110111011111");



begin 

 
memory_access_guard_0: process (address0) 
begin
      address0_tmp <= address0;
--synthesis translate_off
      if (CONV_INTEGER(address0) > AddressRange-1) then
           address0_tmp <= (others => '0');
      else 
           address0_tmp <= address0;
      end if;
--synthesis translate_on
end process;

p_rom_access: process (clk)  
begin 
    if (clk'event and clk = '1') then
 
        if (ce0 = '1') then  
            q0 <= mem0(CONV_INTEGER(address0_tmp)); 
        end if;

end if;
end process;

end rtl;

