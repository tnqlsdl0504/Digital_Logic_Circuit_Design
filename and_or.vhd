
LIBRARY ieee;
USE ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;
use ieee.std_logic_unsigned.all;

ENTITY and_or IS
  PORT (
    a, b, c, d      : IN  std_logic;
    out1, out2		: OUT std_logic
    );
END and_or;

ARCHITECTURE bhv OF and_or IS

BEGIN
	
  out1 <= a and b and c and d;
	out2 <= a or b or c or d;

END bhv;
