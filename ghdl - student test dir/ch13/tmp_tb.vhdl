-- author : Jake Foglia

LIBRARY ieee;
USE ieee.std_logic_1164.ALL;

ENTITY ch13_2_tb IS
END ch13_2_tb;

ARCHITECTURE behavior OF ch13_2_tb IS 

    COMPONENT ch13_2
    PORT(
         D : IN  std_logic;
         S: IN std_logic;
         CLK : IN  std_logic;
         Q : OUT  std_logic
        );
    END COMPONENT;
    
   signal D : std_logic := '0';
   signal S : std_logic := '0';
   signal CLK : std_logic := '0';
   signal Q : std_logic := '0';

   constant clk_period : time := 10 ns;

BEGIN

   uut: ch13_2 PORT MAP (
          D => D,
          S => S,
          CLK => CLK,
          Q => Q
        );

  clk_process :process
  begin
  CLK <= '0';
  wait for clk_period/2;
  CLK <= '1';
  wait for clk_period/2;
  if NOW > 200 ns then
  wait;
  end if;
  end process;

  stim_proc: process
  begin  

  S <= '0'; -- start with S taking precedence over clock, so Q <= '1' 
  D <= '0';
  wait for 50 ns;
  
  D <= '1';  
  wait for 50 ns;

  S <= '1'; -- clock will now take precedence (falling edge will result is Q <= D)
  D <= '0';
  wait for 50 ns;
  
  D <= '1';  
  wait for 50 ns;  

  wait;
  end process;


END;
