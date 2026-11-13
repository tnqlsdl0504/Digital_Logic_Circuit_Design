library ieee;
use ieee.std_logic_1164.all;

entity JK_flip_flop is
    port(
        clk  : in std_logic;
        J, K : in std_logic;
        Q    : out std_logic
    );
end entity JK_flip_flop;

architecture bhv of JK_flip_flop is
    signal Q_internal : std_logic := '0';
begin
    Q <= Q_internal;

    process(clk)
    begin
        if rising_edge(clk) then
            if (J = '0' and K = '0') then
                Q_internal <= Q_internal;      -- Hold
            elsif (J = '0' and K = '1') then
                Q_internal <= '0';             -- Reset
            elsif (J = '1' and K = '0') then
                Q_internal <= '1';             -- Set
            elsif (J = '1' and K = '1') then
                Q_internal <= not Q_internal;  -- Toggle
            end if;
        end if;
    end process;
end architecture bhv;