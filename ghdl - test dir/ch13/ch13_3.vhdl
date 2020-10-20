-----------------------------------------------
-- Register: 8-bit Register with load enable.

-- Required signals:
-- CLK,LD: in std_logic;
-- D_IN: in std_logic_vector(7 downto 0);
-- D_OUT: out std_logic_vector(7 downto 0);
-----------------------------------------------

library ieee;
use ieee.std_logic_1164.all;  

entity ch13_3 is
    port (
    CLK: in std_logic;
    LD: in std_logic;
    D_IN: in std_logic_vector(7 downto 0);
    D_OUT: out std_logic_vector(7 downto 0));
end ch13_3;

architecture behavioral of ch13_3 is
begin
process (CLK)
begin
    if (rising_edge(CLK)) then
        if (LD = '1') then -- positive logic for LD
            D_OUT <= D_IN;
        end if;
    end if;
end process;
end behavioral; 