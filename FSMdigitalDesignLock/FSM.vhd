library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity FSM is
    Port ( Clk : in STD_LOGIC;
           Reset : in STD_LOGIC;
           num : in STD_LOGIC;
           x : in std_logic_vector(3 downto 0);
           door : out STD_LOGIC); --tick
end FSM;

architecture Behavioral of FSM is
type stateType is (s0,s1,s2,s3,err);
signal current_state, next_state: stateType;

begin
--basic setup
    process(clk, reset, x)
    begin
        if (clk'event and clk = '1') then
            if (reset = '1' OR x = "0001" ) then -- s0 if reset
                current_state <= s0;
            else
                current_state <= next_state;
            end if;
        end if;
    end process;

--mealy setup
--0001 0010 0100 1000 0000
    process(current_state, x)
    begin
        next_state <= current_state;
        
        case current_state is
            when s0 =>
                door <= '0';              
                if (x = "0010") then
                    if (num = '1') then
                        next_state <= s1;
                    elsif (num = '0') then
                        next_state <= s0;
                    end if;
                else
                next_state <= err;
                end if;

             when s1 =>
                door <= '0';              
                if (x = "0100") then
                    if (num = '1') then
                        next_state <= s2;
                    elsif (num = '0') then
                        next_state <= s1;
                    end if;
                else
                    next_state <= err;
                end if;

            when s2 =>
                door <= '0';              
                if (x = "1000") then
                    if (num = '1') then
                        next_state <= s3;
                    elsif (num = '0') then
                        next_state <= s2;
                    end if;
                else
                    next_state <= err;
                end if;
            when s3 =>
                door <= '1';
                    next_state <= s3; 
            when err =>
                door <= '0';
                    next_state <= err;
             when others =>
                door <= '0';
                next_state <= s0;
        end case;
    end process;
            

end Behavioral;
