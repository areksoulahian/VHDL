library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity dflipflop_tb is
--  Port ( );
end dflipflop_tb;

architecture Behavioral of dflipflop_tb is

component dflipflop is
    Port ( d : in STD_LOGIC;
           clk : in STD_LOGIC;
           rst : in STD_LOGIC;
           q : out STD_LOGIC);
end component dflipflop;

signal d_tb : STD_LOGIC;
signal clk_tb : STD_LOGIC;
signal rst_tb : STD_LOGIC;
signal q_tb : STD_LOGIC;


constant clk_p: time := 10ns;

begin
uut: dflipflop port map(d => d_tb, rst => rst_tb, clk => clk_tb, q => q_tb);

-- making the clock
    process
    begin

    clk_tb <= '1';
    wait for clk_p/2; --5 ns
    clk_tb <= '0';
    wait for clk_p/2; --5 ns

    end process;

    process
    begin

    rst_tb <= '1';
    wait for clk_p;
    rst_tb <= '0';
    wait;

    end process;

    process
    begin

        wait for clk_p;
    
        d_tb <= '1';
        wait for clk_p;
        d_tb <= '0';
        wait for clk_p;
        d_tb <= '1';
        wait for clk_p;
        d_tb <= '1';
        wait for clk_p;
        d_tb <= '0';
        wait for clk_p;
        d_tb <= '1';
        wait for clk_p;
        d_tb <= '0';
        wait for clk_p;
        d_tb <= '1';
        wait for clk_p;
        d_tb <= '1';
        wait for clk_p;
        d_tb <= '0';
        wait for clk_p;
        d_tb <= '1';
        wait for clk_p;
        d_tb <= '0';
        wait for clk_p;
        d_tb <= '1';
        wait;
    
        end process;
    
    end Behavioral;
    