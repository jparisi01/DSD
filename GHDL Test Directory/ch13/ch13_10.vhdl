-------------------------------------------------------------------
-- Decoder: 3:8 decoder with active high outputs implemented as
-- combinatorial circuit with selective signal assignment statement

-- Required signals:
-- D_IN: in std_logic_vector(2 downto 0);
-- FOUT: out std_logic_vector(7 downto 0);
-------------------------------------------------------------------

with D_IN select
F_OUT <= "00000001" when "000",
"00000010" when "001",
"00000100" when "010",
"00001000" when "011",
"00010000" when "100",
"00100000" when "101",
"01000000" when "110",
"10000000" when "111",
"00000000" when others;