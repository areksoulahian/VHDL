library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity FSM_tb is
--  Port ( );
end FSM_tb;

architecture Behavioral of FSM_tb is
    component FSM is
        Port ( Clk : in STD_LOGIC;
               Reset : in STD_LOGIC;
               num: in STD_LOGIC;
               x : in std_logic_vector( 3 downto 0);
               door : out STD_LOGIC );
    end component FSM;

signal clk_tb, reset_tb: std_logic;
signal num_tb: std_logic;
signal x_tb: std_logic_vector (3 downto 0);
signal door_tb: std_logic;

constant clock_period : time := 40ns;

begin
uut: FSM port map (
    clk => clk_tb,
    reset => reset_tb,
    x => x_tb,  
    num => num_tb,
    door => door_tb
    );
--clock process
    process
        begin
            clk_tb <='0';
            wait for clock_period/2;
            clk_tb <='1';
            wait for clock_period/2;
    end process;


--input process
--0001 0010 0100 1000 0000
    process
        begin
            reset_tb <='1';           
            num_tb <= '0';
            x_tb<="0001";
            wait for clock_period;
      
            reset_tb <='0';
            num_tb <= '1';
            x_tb<="0010";
            wait for clock_period;
            
            reset_tb <='0';
            num_tb <= '1';
            x_tb<="0100";
            wait for clock_period;
            
            reset_tb <='0';
            num_tb <= '1';
            x_tb<="1000";
            wait for clock_period;

            ----------------------
            
            reset_tb <='1';           
            num_tb <= '0';
            x_tb<="0001";
            wait for clock_period;
            
            reset_tb <='0';
            num_tb <= '1';
            x_tb<="0010";
            wait for clock_period;
            
            reset_tb <='0';
            num_tb <= '1';
            x_tb<="0100";
            wait for clock_period;
            
            reset_tb <='0';
            num_tb <= '0'; -- not unlocking
            x_tb<="1000";
            wait for clock_period;

            ----------------------
            
            reset_tb <='1';           
            num_tb <= '0';
            x_tb<="0001";
            wait for clock_period;
            
            reset_tb <='0';
            num_tb <= '1';
            x_tb<="0010";
            wait for clock_period;
            
            reset_tb <='0';
            num_tb <= '0'; --will go back to itself
            x_tb<="0100";
            wait for clock_period;
            
            reset_tb <='0';
            num_tb <= '1';
            x_tb<="1000";
            wait for clock_period;

            ----------------------
            
             reset_tb <='1';           
            num_tb <= '0';
            x_tb<="0001";
            wait for clock_period;
            
            reset_tb <='0';
            num_tb <= '0'; --will go back to itself
            x_tb<="0010";
            wait for clock_period;
            
            reset_tb <='0';
            num_tb <= '1';
            x_tb<="0100";
            wait for clock_period;
            
            reset_tb <='0';
            num_tb <= '1';
            x_tb<="1000";
            wait for clock_period;

            ----------------------

            wait;
        end process;
end Behavioral;
