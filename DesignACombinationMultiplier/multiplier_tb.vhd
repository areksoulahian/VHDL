library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity multiplier_tb is
--  Port ( );
end multiplier_tb;

architecture Behavioral of multiplier_tb is

component multiplier is
    Port ( x : in STD_LOGIC_VECTOR (3 downto 0);
           y : in STD_LOGIC_VECTOR (3 downto 0);
           p : out STD_LOGIC_VECTOR (7 downto 0));
end component multiplier;

--signals
signal x_tb : STD_LOGIC_VECTOR (3 downto 0);
signal y_tb : STD_LOGIC_VECTOR (3 downto 0);
signal p_tb : STD_LOGIC_VECTOR (7 downto 0);
--end signals

begin
unitUnderTest : multiplier port map (
    x => x_tb,
    y => y_tb,
    p => p_tb
);

--test process
stimulus: process
begin
    x_tb <= "0000";
    y_tb <= "0001";
    wait for 10 ns;
    x_tb <= "0010";
    y_tb <= "0001";
    wait for 10 ns;
    x_tb <= "0001";
    y_tb <= "0011";
    wait for 10 ns;
    x_tb <= "0011";
    y_tb <= "0011";
    wait for 10 ns;
    end process;

    end Behavioral;
    