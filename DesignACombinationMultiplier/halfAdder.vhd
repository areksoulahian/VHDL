library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity halfAdder is
    Port ( a : in STD_LOGIC;
           b : in STD_LOGIC;
           cOut : out STD_LOGIC;
           sum : out STD_LOGIC);
end halfAdder;

architecture Behavioral of halfAdder is

begin
sum <= a xor b;
cOut <= a and b;

end Behavioral;
