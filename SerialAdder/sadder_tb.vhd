Library ieee;
use ieee.std_logic_1164.all;

entity sadder_tb is
end sadder_tb;

architecture behavior of sadder_tb is

    component sadder
        Port ( x : in STD_LOGIC;
                y : in STD_LOGIC;
                clk : in STD_LOGIC;
                reset : in STD_LOGIC;
                s : out STD_LOGIC );
end component sadder;

signal clk, reset : std_logic := '0';
signal x, y : std_logic := '0';
signal s : std_logic;

constant clock_period : time := 10 ns;

begin
uut: sadder port map (x => x, y => y, clk => clk, reset => reset, s => s);

clock_process: process
begin
    clk <= '0';
    wait for clock_period/2;
    clk <= '1';
    wait for clock_period/2;
end process;
 
 --
 stimulus_process: process
 begin  
    wait until rising_edge(clk);
    reset <= '1';
    wait for 20ns;
    reset <= '0';
    -- add two 16 bits numbers,
    -- 1010000011110110 + 1010000000111111 = 00010100000100110101
    -- read LSB first
    x <= '0'; y <= '1'; wait for 10ns;
    x <= '1'; y <= '1'; wait for 10ns;
    x <= '1'; y <= '1'; wait for 10ns;
    x <= '0'; y <= '1'; wait for 10ns;
    
    x <= '1'; y <= '1'; wait for 10ns;
    x <= '1'; y <= '1'; wait for 10ns;
    x <= '1'; y <= '0'; wait for 10ns;
    x <= '1'; y <= '0'; wait for 10ns;
    
    x <= '0'; y <= '0'; wait for 10ns;
    x <= '0'; y <= '0'; wait for 10ns;
    x <= '0'; y <= '0'; wait for 10ns;
    x <= '0'; y <= '0'; wait for 10ns;
    
    x <= '0'; y <= '0'; wait for 10ns;
    x <= '1'; y <= '1'; wait for 10ns;
    x <= '0'; y <= '0'; wait for 10ns;
    x <= '1'; y <= '1'; wait for 10ns;
    
    --reset <= '1';
    wait;
end process;
End Behavioral;
