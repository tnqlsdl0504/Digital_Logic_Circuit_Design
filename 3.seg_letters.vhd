-- Library and package
library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;
use ieee.std_logic_unsigned.all;

-- entity
entity seg_letters is
    port(
        en      : in std_logic;
        dat     : in std_logic_vector(2 downto 0);
        display : out std_logic_vector(7 downto 0)
    );
end entity seg_letters;

-- architecture
architecture bhv of seg_letters is
begin
    process(en, dat)
    begin
        if en = '0' then
            display <= "00000000";
        else
            case dat is
                when "000" => display <= "11101110"; -- a (A)
                when "001" => display <= "00111110"; -- b
                when "010" => display <= "10011100"; -- c (C)
                when "011" => display <= "01111010"; -- d
                when "100" => display <= "10001110"; -- f (F)
                when "101" => display <= "11110110"; -- g
                when others => display <= "00000000";
            end case;
        end if;
    end process;
end architecture bhv;