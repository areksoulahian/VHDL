library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity twoByOneMux is
    Port ( amt : in STD_LOGIC; --selectLine
           a : in STD_LOGIC;
           b : in STD_LOGIC;
           y : out STD_LOGIC);
end twoByOneMux;

architecture Behavioral of twoByOneMux is

begin
--y is equal to a when select is 1 otherwise b
y <= a when(amt = '1') else b;

end Behavioral;
