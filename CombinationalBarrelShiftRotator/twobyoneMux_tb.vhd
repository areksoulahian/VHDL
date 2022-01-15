library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity twobyoneMux_tb is
--  Port ( );
end twobyoneMux_tb;

architecture Behavioral of twobyoneMux_tb is

component twobyonemux
    port (amt : in std_logic; --selectLine
           a : in std_logic;
           b : in std_logic;
           y : out std_logic);
end component;

--signals
signal amt : std_logic := '0';
signal a : std_logic := '0';
signal b : std_logic := '0';
--output signal
signal y : std_logic;

begin
--instantiate unit under test (uut)
uut: twobyoneMux Port Map (
    a => a,
    b => b,
    amt => amt,
    y => y);
    
    process -- stimulus
    begin
        wait for 100ns;
        a <= '1';
        b <= '0';
        amt <= '0';
        
        wait for 100ns;
        amt <= '1';
    end process;
end Behavioral;
