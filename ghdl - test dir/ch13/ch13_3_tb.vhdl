-- author : Jake Foglia

LIBRARY ieee;
USE ieee.std_logic_1164.ALL;

ENTITY ch13_3_tb IS
END ch13_3_tb;

ARCHITECTURE behavior OF ch13_3_tb IS 

  COMPONENT ch13_3
    PORT(
        CLK : IN  std_logic;
        LD : IN  std_logic;
        D_IN: IN std_logic_vector(7 downto 0);
        D_OUT: OUT std_logic_vector(7 downto 0));
    END COMPONENT;
    

   signal CLK : std_logic := '0';
   signal LD : std_logic := '0';

   signal D_IN : std_logic_vector (7 downto 0) := "01010101";
   signal D_OUT : std_logic_vector (7 downto 0);

   constant clk_period : time := 10 ns;

BEGIN

   uut: ch13_3 PORT MAP (
          CLK => CLK,
          LD => LD,
          D_IN => D_IN,
          D_OUT => D_OUT
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


  LD <= '0';
  wait for 200 ns;
  
  LD <= '1';  
  wait for 200 ns;  

  wait;
  end process;
END;
