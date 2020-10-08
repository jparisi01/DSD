---------------------------------------------------
-- D flip-flop: RET D flip-flop with single output

-- Required signals:
-- CLK,D: in std_logic;
-- Q: out std_logic;
---------------------------------------------------
library ieee;
use ieee.std_logic_1164.all;        

entity ch13_1 is
    port( D: in std_logic;
    CLK: in std_logic;
    Q: out std_logic);
    end ch13_1;

architecture behavioral of ch13_1 is
begin
process (CLK)
begin
if (rising_edge(CLK)) then
Q <= D;
end if;
end process;

end behavioral; 