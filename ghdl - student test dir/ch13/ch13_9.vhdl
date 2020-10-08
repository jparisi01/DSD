------------------------------------------------------------
-- A 4:1 multiplexer implemented as data-flow model using a
-- selective signal assignment statement.

-- Required signals:
-- SEL: in std_logic_vector(1 downto 0);
-- A, B, C, D: in std_logic;
-- MUX_OUT: out std_logic;
------------------------------------------------------------

with SEL select
MUX_OUT <= A when "00",
B when "01",
C when "10",
D when "11",
(others => '0') when others;
