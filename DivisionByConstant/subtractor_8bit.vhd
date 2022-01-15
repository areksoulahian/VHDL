
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;


entity subtractor_8bit is
    port( A, B : in std_logic_vector(7 downto 0) ;
            result: out std_logic_vector(7 downto 0));  
end subtractor_8bit;

architecture Behavioral of subtractor_8bit is

begin
   --result <= (A xor B);
   result <= (A - B);

end Behavioral;


