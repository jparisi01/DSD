------------------------------------------------------------------
-- Comparator: Implemented as a behavioral model. The outputs
-- include equals, less than and greater than status.

-- Required signals:
-- CLK: in std_logic;
-- A_IN, B_IN: in std_logic_vector(7 downto 0);
-- ALB, AGB, AEB: out std_logic
------------------------------------------------------------------

process(CLK)
begin
if ( A_IN < B_IN ) then ALB <= '1';
else ALB <= '0';
end if;
if ( A_IN > B_IN ) then AGB <= '1';
else AGB <= '0';
end if;
if ( A_IN = B_IN ) then AEB <= '1';
else AEB <= '0';
end if;
end process;