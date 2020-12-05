library Arithmetic;
library IEEE;
use IEEE.STD_LOGIC_1164.all;
Entity Ar_xor2to1 IS
	PORT(	x0,x1 : IN STD_LOGIC;
			y: OUT STD_LOGIC
	);

END Ar_xor2to1;

ARCHITECTURE logicFUNCTION of Ar_xor2to1 IS
BEGIN
	y<= x0 xor x1 AFTER 2ns;
END logicFUNCTION;