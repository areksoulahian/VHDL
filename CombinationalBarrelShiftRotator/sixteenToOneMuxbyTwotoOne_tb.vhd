library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
-- testbench not fully completed

entity sixteenToOneMuxbyTwotoOne_tb is
--  Port ( );
end sixteenToOneMuxbyTwotoOne_tb;

architecture Behavioral of sixteenToOneMuxbyTwotoOne_tb is

component SixteenToOneMuxbyTwotoOne
  port ( a, c,
        e, g, i, k, m,
        o,
        a1,
        c1,
        e1,
        g1,
        i1,
        k1,
        m1,
        o1,
        amt, amt1, amt2, amt3 : in STD_LOGIC;
        tempc1, tempc2, tempc3,
        tempc4, tempc5, tempc6,
        tempc7, tempc8, tempc9,
        tempc10, tempc11, tempc12,
        tempc13, tempc14, tempc15,
        tempc16 : out STD_LOGIC );
end component;

--signals
signal amt : std_logic := '0';
signal amt1 : std_logic := '0';
signal amt2 : std_logic := '0';
signal amt3 : std_logic := '0';
signal a : std_logic := '0';
signal c : std_logic := '0';
signal e : std_logic := '0';
signal g : std_logic := '0';
signal i : std_logic := '0';
signal k : std_logic := '0';
signal m : std_logic := '0';

signal o : std_logic := '0';
signal a1 : std_logic := '0';
signal c1 : std_logic := '0';
signal e1 : std_logic := '0';
signal g1 : std_logic := '0';
signal i1 : std_logic := '0';
signal k1 : std_logic := '0';
signal m1 : std_logic := '0';
signal o1 : std_logic := '0';
--output signal
signal y : std_logic;

begin


end Behavioral;


