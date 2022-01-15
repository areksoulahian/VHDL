library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity fulladder_tb is
--  Port ( );
end fulladder_tb;

architecture Behavioral of fulladder_tb is

component fulladder is
    Port ( a : in STD_LOGIC;
           b : in STD_LOGIC;
           cin : in STD_LOGIC;
           cout : out STD_LOGIC;
           sum : out STD_LOGIC);
end component fulladder;

signal a_tb : STD_LOGIC;
signal b_tb : STD_LOGIC;
signal cin_tb : STD_LOGIC;
signal cout_tb : STD_LOGIC;
signal sum_tb : STD_LOGIC;

begin
 

 uut: fulladder PORT MAP (
                 A => A_tb,
                 B => B_tb,
                 Cin => Cin_tb,
                 sum => sum_tb,
                 Cout => Cout_tb);
 
process
 begin
 -- hold reset state for 100 ns.
 wait for 100 ns;
 
 -- insert stimulus here
 A_tb <= '1';
 B_tb <= '0';
 Cin_tb <= '0';
 wait for 10 ns;
 
 A_tb <= '0';
 B_tb <= '1';
 Cin_tb <= '0';
 wait for 10 ns;
 
 A_tb <= '1';
 B_tb <= '1';
 Cin_tb <= '0';
 wait for 10 ns;
 
 A_tb <= '0';
 B_tb <= '0';
 Cin_tb <= '1';
 wait for 10 ns;
 
 A_tb <= '1';
 B_tb <= '0';
 Cin_tb <= '1';
 wait for 10 ns;
 
 A_tb <= '0';
 B_tb <= '1';
 Cin_tb <= '1';
 wait for 10 ns;
 
 A_tb <= '1';
 B_tb <= '1';
 Cin_tb <= '1';
 wait for 10 ns;
 
 end process;


end Behavioral;
