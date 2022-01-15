library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity fullAdder is
    Port ( a : in STD_LOGIC;
           b : in STD_LOGIC;
           cIn : in STD_LOGIC;
           sum : out STD_LOGIC;
           cOut : out STD_LOGIC);
end fullAdder;

architecture Behavioral of fullAdder is

begin
sum <= a xor b xor cIn;
cOut <= (a and b) or (a and cIn) or (b and cIn);


end Behavioral;
