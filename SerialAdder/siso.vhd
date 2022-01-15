library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity siso is
    Port ( d : in STD_LOGIC;
           rst : in STD_LOGIC;
           clk : in STD_LOGIC;
           q : out STD_LOGIC);
end siso;

architecture Behavioral of siso is
signal tmp_sig: std_logic_vector(16 downto 0);
constant WIDTH: integer := 16;

begin

process (clk, rst)
    begin
        if rst = '1' then
            tmp_sig <= (others => '0');
        elsif rising_edge(clk) then
            for i in 0 to WIDTH-2 loop
                 tmp_sig(i+1) <= tmp_sig(i);
        end loop;
            tmp_sig(0) <= d;
      end if;
end process;
q <= tmp_sig(WIDTH-1);


end Behavioral;
