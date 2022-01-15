library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.std_logic_unsigned.all;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity DIV_CONST is
    Port ( DIVIDEND : in STD_LOGIC_VECTOR( 7 downto 0);
           REMAINDER : out STD_LOGIC_VECTOR(5 downto 0);
           QUOTIENT : out STD_LOGIC_VECTOR(2 downto 0));
end DIV_CONST;

architecture Behavioral of DIV_CONST is
    --MUX
    component Mux2x1
        port ( a, b : in STD_LOGIC_VECTOR;
                 SEL: in STD_LOGIC;
                 y : out STD_LOGIC_VECTOR);
    end component;
    --COMPARATOR
    component Comparator_8bit
    Port ( a : in STD_LOGIC_VECTOR (7 downto 0);
    b : in STD_LOGIC_VECTOR (7 downto 0);
    OUPUT_greater : out STD_LOGIC;
    OUPUT_equal : out STD_LOGIC;
    OUPUT_less : out STD_LOGIC);
end component;
--SUBTRACTOR
component subtractor_8bit
port( A : in std_logic_vector(7 downto 0);
   B : in std_logic_vector(7 downto 0);
 result : out std_logic_vector(7 downto 0));  
end component;

signal sub1,sub2,sub3,sub4,sub5 : std_logic_vector(7 downto 0);
signal sel1,sel2,sel3,sel4,sel5 : std_logic;
signal mux1,mux2,mux3,mux4,mux5 : std_logic_vector( 2 downto 0);

 
begin
s1: subtractor_8bit port map(A=>"00101111", B=>DIVIDEND, result=>sub1);
c1: comparator_8bit port map(a=>"00101111", b=>DIVIDEND, OUPUT_greater => sel1 ,OUPUT_equal => sel1, OUPUT_less => sel1);
m1: mux2x1 port map(a =>sub1, b=> "0000" , SEL =>sel1, y=>mux1);

s2: subtractor_8bit port map(A=>"00101111", B=>mux1, result=>sub2);
c2: comparator_8bit port map(a=>"00101111", b=>mux1, OUPUT_greater => sel2 ,OUPUT_equal => sel2, OUPUT_less => sel2);
m2: mux2x1 port map(a =>sub2, b=> "0000" , SEL =>sel2, y=>mux2);

s3: subtractor_8bit port map(A=>"00101111", B=>mux2, result=>sub3);
c3: comparator_8bit port map(a=>"00101111", b=>mux2, OUPUT_greater => sel3 ,OUPUT_equal => sel3, OUPUT_less => sel3);
m3: mux2x1 port map(a =>sub3, b=> "0000" , SEL =>sel3, y=>mux3);

s4: subtractor_8bit port map(A=>"00101111", B=>mux3, result=>sub3);
c4: comparator_8bit port map(a=>"00101111", b=>mux3, OUPUT_greater => sel4 ,OUPUT_equal => sel4, OUPUT_less => sel4);
m4: mux2x1 port map(a =>sub4, b=> "0000" , SEL =>sel4, y=>mux4);

s5: subtractor_8bit port map(A=>"00101111", B=>mux4, result=>sub4);
c5: comparator_8bit port map(a=>"00101111", b=>mux4, OUPUT_greater => sel5 ,OUPUT_equal => sel5, OUPUT_less => sel5);
m5: mux2x1 port map(a =>sub5, b=> "0000" , SEL =>sel5, y=>mux5);

--
--QUOTIENT <= (mux1 and mux2 and mux3 and mux4);  

end Behavioral;
