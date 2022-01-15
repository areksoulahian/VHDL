

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity Comparator_8bit is
    Port ( a : in STD_LOGIC_VECTOR (7 downto 0);
           b : in STD_LOGIC_VECTOR (7 downto 0);
           OUPUT_greater : out STD_LOGIC;
           OUPUT_equal : out STD_LOGIC;
           OUPUT_less : out STD_LOGIC);
end Comparator_8bit;

architecture Behavioral of Comparator_8bit is
    signal output_greater : std_logic;
    signal output_equal : std_logic;
    signal output_less : std_logic;
    

begin
    OUTPUT_greater <= '1' when (a > b)
    else '0';
    OUTPUT_equal <= '1' when (a = b)
    else '0';
    OUTPUT_less <= '0' when (a < b)
    else '0';

end behavioral;
