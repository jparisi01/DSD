-- author : Jake Foglia

-- author: Jake Foglia

LIBRARY ieee;
USE ieee.std_logic_1164.ALL;

ENTITY ch13_4_tb IS
END ch13_4_tb;

ARCHITECTURE behavior OF ch13_4_tb IS 

  COMPONENT ch13_4
    PORT(
        RESET : IN  std_logic;
        CLK : IN  std_logic;
        LD : IN  std_logic;
        UP : IN  std_logic;
        DIN: IN std_logic_vector(7 downto 0);

        COUNT: OUT std_logic_vector(7 downto 0));
    END COMPONENT;
    

    signal RESET : std_logic := '0';
    signal CLK : std_logic := '0';
    signal LD : std_logic := '0';
    signal UP : std_logic := '0';

    signal DIN : std_logic_vector (7 downto 0) := "01010101";
    signal COUNT : std_logic_vector (7 downto 0);

    constant clk_period : time := 10 ns;

BEGIN

    uut: ch13_4 PORT MAP (
        RESET => RESET,
        CLK => CLK,
        LD => LD,
        UP => UP,
        DIN => DIN,
        COUNT => COUNT
        );

clk_process: process
begin
    CLK <= '0';
    wait for clk_period/2;

    CLK <= '1';
    wait for clk_period/2;

    if NOW > 400 ns then
      wait;
  
    end if;
end process;

stim_proc: process
begin  

    RESET <= '0'; 
    LD <= '0';
    UP <= '0';
    wait for 50 ns;

    UP <= '1';
    wait for 50 ns;

    LD <= '1';
    UP <= '0';
    wait for 50 ns;

    UP <= '1';
    wait for 50 ns;


    RESET <= '1'; 
    LD <= '0';
    UP <= '0';
    wait for 50 ns;

    UP <= '1';
    wait for 50 ns;

    LD <= '1';
    UP <= '0';
    wait for 50 ns;

    UP <= '1';
    wait for 50 ns;
    wait;
end process;
END;
