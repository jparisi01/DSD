--  https://electronicstopper.blogspot.com/2017/07/t-flip-flop-in-vhdl-with-testbench.html
LIBRARY ieee;
USE ieee.std_logic_1164.ALL;

ENTITY ch13_1_tb IS
END ch13_1_tb;

ARCHITECTURE behavior OF ch13_1_tb IS 

    COMPONENT ch13_1
    PORT(
         D : IN  std_logic;
         CLK : IN  std_logic;
         Q : OUT  std_logic
        );
    END COMPONENT;
    
   signal D : std_logic := '0';
   signal clk : std_logic := '0';
   signal Q : std_logic := '0';

   constant clk_period : time := 10 ns;

BEGIN

   uut: ch13_1 PORT MAP (
          D => D,
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

  D <= '0';
  wait for 50 ns;
  
  D <= '1';  
  wait for 50 ns;

  wait;
  end process;

END;
