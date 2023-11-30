library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity dacMux is

    Generic(
        DATA_BUS_WIDTH : NATURAL := 14
        );

    port (
      sel  : in  STD_LOGIC_VECTOR(3 - 1 downto 0);
      x0   : in  STD_LOGIC_VECTOR(DATA_BUS_WIDTH - 1 downto 0);
      x1   : in  STD_LOGIC_VECTOR(DATA_BUS_WIDTH - 1 downto 0);
      x2   : in  STD_LOGIC_VECTOR(DATA_BUS_WIDTH - 1 downto 0);
      x3   : in  STD_LOGIC_VECTOR(DATA_BUS_WIDTH - 1 downto 0);
      x4   : in  STD_LOGIC_VECTOR(DATA_BUS_WIDTH - 1 downto 0);
      x5   : in  STD_LOGIC_VECTOR(DATA_BUS_WIDTH - 1 downto 0);
      x6   : in  STD_LOGIC_VECTOR(DATA_BUS_WIDTH - 1 downto 0);
      x7   : in  STD_LOGIC_VECTOR(DATA_BUS_WIDTH - 1 downto 0);
      y    : out STD_LOGIC_VECTOR(DATA_BUS_WIDTH - 1 downto 0)
    );

end dacMux;

architecture Behavioral of dacMux is
begin

process(sel)
begin
    case sel is
        when "000" => y <= x0;
        when "001" => y <= x1;
        when "010" => y <= x2;
        when "011" => y <= x3;
        when "100" => y <= x4;
        when "101" => y <= x5;
        when "110" => y <= x6;
        when "111" => y <= x7;
        when others => y <= x0;
    end case;
end process;
    
end Behavioral;