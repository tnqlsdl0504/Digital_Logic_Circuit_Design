library ieee;
use ieee.std_logic_1164.all;

entity D_latch is
    port(
        en : in std_logic;
        D  : in std_logic;
        Q  : out std_logic
    );
end entity D_latch;

architecture bhv of D_latch is
begin
    process(en, D)
    begin
        if (en = '1') then
            Q <= D;
        end if;
    end process;
end architecture bhv;
