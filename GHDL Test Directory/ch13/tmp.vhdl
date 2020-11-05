---------------------------------------------------
-- D flip-flop: RET D flip-flop with single output

-- Required signals:
-- CLK,D: in std_logic;
-- Q: out std_logic;
---------------------------------------------------
library ieee;
use ieee.std_logic_1164.all;        

entity ch13_2 is
    port (
    D: in std_logic;
    S: in std_logic;
    CLK: in std_logic;
    
    Q: out std_logic );
    end ch13_2;

architecture behavioral of ch13_2 is
begin
process (CLK,S)
begin
    if (S = '0') then
        Q <= '1';
    elsif (falling_edge(CLK)) then
        Q <= D;
    end if;
end process;
    
end behavioral; 