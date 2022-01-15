library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity sadder is
    Port ( x : in STD_LOGIC;
           y : in STD_LOGIC;
           clk : in STD_LOGIC;
           reset : in STD_LOGIC;
           s : out STD_LOGIC);
end sadder;

architecture Behavioral of sadder is

component fulladder is
    Port ( a : in STD_LOGIC;
           b : in STD_LOGIC;
           cin : in STD_LOGIC;
           cout : out STD_LOGIC;
           sum : out STD_LOGIC);
end component fulladder;

component dflipflop is
    Port ( d : in STD_LOGIC;
           clk : in STD_LOGIC;
           rst : in STD_LOGIC;
           q : out STD_LOGIC);
end component dflipflop;

component siso is
    Port ( d : in STD_LOGIC;
           rst : in STD_LOGIC;
           clk : in STD_LOGIC;
           q : out STD_LOGIC);
end component siso;

signal s_x, s_y, s_out : std_logic;
signal dout : std_logic;
signal cout1 : std_logic;


begin

fa:     fulladder port map(a => s_y, b => s_x, cin => dout, cout => cout1, sum => s_out);
dff:    dflipflop port map(d => cout1, clk => clk, rst => reset, q => dout);
siso_1: siso port map(d => y, rst => reset , clk => clk, q => s_y);
siso_2: siso port map(d => x, rst => reset , clk => clk, q => s_x);
siso_3: siso port map(d => s_out, rst => reset , clk => clk, q => s);

end Behavioral;
