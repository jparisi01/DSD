----------------------------------------------------------------
-- A 4:1 multiplexer implemented as behavioral model using case
-- statement.

-- Required signals:
-- SEL: in std_logic_vector(1 downto 0);
-- A, B, C, D: in std_logic;
-- MUX_OUT: out std_logic;
----------------------------------------------------------------

process (SEL, A, B, C, D)
begin
case SEL is
when "00" => MUX_OUT <= A;
when "01" => MUX_OUT <= B;
when "10" => MUX_OUT <= C;
when "11" => MUX_OUT <= D;
when others => (others => '0');
end case;
end process;