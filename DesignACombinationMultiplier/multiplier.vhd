library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity multiplier is
    Port ( x : in STD_LOGIC_VECTOR (3 downto 0);
           y : in STD_LOGIC_VECTOR (3 downto 0);
           p : out STD_LOGIC_VECTOR (7 downto 0));
end multiplier;

architecture Behavioral of multiplier is
-- declaration for halfAdder
component halfAdder is
    Port ( a : in STD_LOGIC;
           b : in STD_LOGIC;
           sum : out STD_LOGIC;
           cOut: out STD_LOGIC);
end component halfAdder;

-- declaration for fullAdder
component fullAdder is
    Port ( a : in STD_LOGIC;
           b : in STD_LOGIC;
           cIn : in STD_LOGIC;
           sum : out STD_LOGIC;
           cOut: out STD_LOGIC);
end component fullAdder;
--signals
--halfAdder03 signals
signal x0y1, x1y0, sum03, c03 : STD_LOGIC;
--fullAdder02 signals
signal x2y0, x1y1, sum02 , c02 : STD_LOGIC;
--fullAdder01 signals
signal x3y0, x2y1, sum01, c01 : STD_LOGIC;
--halfAdder00 signals
signal x3y1,sum00, c00 : STD_LOGIC;
--halfAdder13 signals
signal x0y2, sum13, c13 : STD_LOGIC;
--fullAdder12 signals
signal x1y2, sum12, c12 : STD_LOGIC;
--fullAdder11 signals
signal x2y2, sum11, c11 : STD_LOGIC;
--fullAdder10 signals
signal x3y2, sum10, c10 : STD_LOGIC;
--halfAdder23 signals
signal x0y3, sum23, c23 : STD_LOGIC;
--fullAdder22 signals
signal x1y3, sum22, c22 : STD_LOGIC;
--fullAdder21 signals
signal x2y3, sum21, c21 : STD_LOGIC;
--fullAdder20 signals
signal x3y3, sum20, c20 : STD_LOGIC;


begin
-- mapping the multiplier ports
--HA03
x0y1 <= x(0) and y(1);
x1y0 <= x(1) and y(0);
--FA02
x2y0 <= x(2) and y(0);
x1y1 <= x(1) and y(1);
--FA01
x3y0 <= x(3) and y(0);
x2y1 <= x(2) and y(1);
--HA00
x3y1 <= x(3) and y(1);
--HA13
x0y2 <= x(0) and y(2);
--FA12
x1y2 <= x(1) and y(2);
--FA11
x2y2 <= x(2) and y(2);
--FA10
x3y2 <= x(3) and y(2);
--HA23
x0y3 <= x(0) and y(3);
--FA22
x1y3 <= x(1) and y(3);
--FA21
x2y3 <= x(2) and y(3);
--FA20
x3y3 <= x(3) and y(3);


--comp03 is the first half adder
comp03: halfAdder port map (a=>x1y0 ,b=>x0y1 ,sum =>sum03 , cOut => c03 );
comp02: fullAdder port map (a=>x2y0 ,b=>x1y1 , cIn => c03, sum =>sum02 , cOut => c02 );
comp01: fullAdder port map (a=>x3y0 ,b=>x2y1 , cIn => c02, sum =>sum01 , cOut => c01 );
comp00: halfAdder port map (a=>c02  ,b=>x3y1 , sum =>sum00 , cOut => c00 );
--comp13 is the second half adder
comp13: halfAdder port map (a=>sum02 ,b=>x0y2 , sum =>sum13 , cOut => c13 );
comp12: fullAdder port map (a=>sum01 ,b=>x1y2 , cIn => c13, sum =>sum12 , cOut => c12 );
comp11: fullAdder port map (a=>sum00 ,b=>x2y2 , cIn => c12, sum =>sum11 , cOut => c11 );
comp10: fullAdder port map (a=>c00   ,b=>x3y2 , cIn => c11, sum =>sum10 , cOut => c10 );
--comp23 is the second half adder
comp23: halfAdder port map (a=>sum12 ,b=>x0y3 , sum =>sum23 , cOut => c23 );
comp22: fullAdder port map (a=>sum11 ,b=>x1y3 , cIn => c23, sum =>sum22 , cOut => c22 );
comp21: fullAdder port map (a=>sum10 ,b=>x2y3 , cIn => c22, sum =>sum21 , cOut => c21 );
comp20: fullAdder port map (a=>c10   ,b=>x3y3 , cIn => c21, sum =>sum02 , cOut => c20 );


--product components
p(0) <= x(0) and y(0);
p(1) <= sum03;
p(2) <= sum13;
p(3) <= sum23;
p(4) <= sum22;
p(5) <= sum21;
p(6) <= sum20;
p(7) <= c20;
--end product components



end Behavioral;

