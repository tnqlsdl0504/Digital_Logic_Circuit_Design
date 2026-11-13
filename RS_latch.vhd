library ieee;
use ieee.std_logic_1164.all;

entity RS_latch is
    port(
        R, S  : in std_logic;
        Q, nQ : out std_logic
    );
end entity RS_latch;

architecture bhv of RS_latch is
    signal Q_int, nQ_int : std_logic := '0';
begin
    Q_int  <= R nor nQ_int;
    nQ_int <= S nor Q_int;
    Q  <= Q_int;
    nQ <= nQ_int;
end architecture bhv;