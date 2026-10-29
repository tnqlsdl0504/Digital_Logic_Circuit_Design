-- Library and package
library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;
use ieee.std_logic_unsigned.all;

-- entity
entity mux8_1 is
    port(
        d0, d1, d2, d3, d4, d5, d6, d7 : in std_logic;
        ch   : in std_logic_vector(2 downto 0);
        data : out std_logic
    );
end entity mux8_1;

-- architecture
architecture bhv of mux8_1 is
begin
    process(d0, d1, d2, d3, d4, d5, d6, d7, ch)
    begin
        case ch is
            when "000" => data <= d0;
            when "001" => data <= d1;
            when "010" => data <= d2;
            when "011" => data <= d3;
            when "100" => data <= d4;
            when "101" => data <= d5;
            when "110" => data <= d6;
            when "111" => data <= d7;
            when others => data <= '0';
        end case;
    end process;
end architecture bhv;