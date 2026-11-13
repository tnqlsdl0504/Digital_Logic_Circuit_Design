library ieee;
use ieee.std_logic_1164.all;

entity DFF_async is
    port(
        clk : in std_logic;
        D   : in std_logic;
        clr : in std_logic;
        set : in std_logic;
        Q   : out std_logic
    );
end entity DFF_async;

architecture bhv of DFF_async is
begin
    process(clk, clr, set)
    begin
        -- 1순위: Asynchronous Clear
        if clr = '1' then
            Q <= '0';
        -- 2순위: Asynchronous Set
        elsif set = '1' then
            Q <= '1';
        -- 3순위: Normal D Flip-Flop on rising edge
        elsif rising_edge(clk) then
            Q <= D;
        end if;
    end process;
end architecture bhv;