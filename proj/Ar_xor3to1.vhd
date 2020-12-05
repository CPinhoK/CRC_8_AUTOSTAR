library Arithmetic;
library IEEE;
use IEEE.STD_LOGIC_1164.all;

Entity Ar_xor3to1 IS
	PORT(	x0,x1,x2 : IN STD_LOGIC;
			y: OUT STD_LOGIC
	);

END Ar_xor3to1;

ARCHITECTURE Structure of Ar_xor3to1 IS
signal y1 : std_logic;

component Ar_xor2to1
    port(x0,x1 : in STD_LOGIC;
         y: out STD_LOGIC);
  end component;

BEGIN
   xor_1: Ar_xor2to1 port map(x0,x1,y1);
	xor_final: Ar_xor2to1 port map(y1,x2,y);
END Structure;	
