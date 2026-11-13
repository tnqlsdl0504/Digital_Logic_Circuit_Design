library ieee;
use ieee.std_logic_1164.all;

entity D_flip_flop is
    port(
        clk : in std_logic;
        D   : in std_logic;
        Q   : out std_logic
    );
end entity D_flip_flop;

architecture bhv of D_flip_flop is
begin
    process(clk)
    begin
        if rising_edge(clk) then
            Q <= D;
        end if;
    end process;
end architecture bhv;