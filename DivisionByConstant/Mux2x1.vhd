library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity Mux2x1 is
    Port ( SEL : in STD_LOGIC; --selectLine
           a, b : in STD_LOGIC_VECTOR;
           y : out STD_LOGIC_VECTOR);
end Mux2x1;

architecture Behavioral of Mux2x1 is

begin
--y is equal to a when select is 1 otherwise b
y <= a when(SEL = '1') else b;

end Behavioral;
