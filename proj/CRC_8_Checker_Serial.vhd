library Arithmetic;

library IEEE;

use IEEE.STD_LOGIC_1164.all;
use Arithmetic.all;

ENTITY CRC_8_Checker_Serial IS
	PORT(
			clk     :in  std_logic;
			reset   :in  std_logic;
			--crc_result:out std_logic_vector(7 downto 0);   --TESTING PURPOSES
			data_in :in  std_logic;
			error	  :out std_logic
	);


END CRC_8_Checker_Serial;

ARCHITECTURE Structure OF CRC_8_Checker_Serial IS

component Ar_xor2to1
    port(x0,x1 : in STD_LOGIC;
         y: out STD_LOGIC);
end component;

Component CRC_8_Encoder IS
	PORT( d_in: in std_logic_vector(15 downto 0);
			crc_r :out std_logic_vector(7 downto 0));
END Component;

shared variable current : integer := 0;
SIGNAL d_in:  std_logic_vector(15 downto 0);
SIGNAL crc_r: std_logic_vector(7 downto 0);
SIGNAL truecrc_r: std_logic_vector(7 downto 0);
SIGNAL errorcheck: std_logic_vector(7 downto 0);
signal C_7,C_6,C_5,C_4,C_3,C_2,C_1,C_0,varerror:STD_LOGIC;

BEGIN
										
process (clk) begin
	if (rising_edge(clk)) then
		if (reset = '1') then
			error <= '0';
			current := 0;
		elsif (current = 0) then
			d_in(15)<=data_in;
			current:=current+1;
		elsif (current = 1) then
			d_in(14)<=data_in;
			current:=current+1;
		elsif (current = 2) then
			d_in(13)<=data_in;
			current:=current+1;
		elsif (current = 3) then
			d_in(12)<=data_in;
			current:=current+1;
		elsif (current = 4) then
			d_in(11)<=data_in;
			current:=current+1;
		elsif (current = 5) then
			d_in(10)<=data_in;
			current:=current+1;
		elsif (current = 6) then
			d_in(9)<=data_in;
			current:=current+1;
		elsif (current = 7) then
			d_in(8)<=data_in;
			current:=current+1;
		elsif (current = 8) then
			d_in(7)<=data_in;
			current:=current+1;
		elsif (current = 9) then
			d_in(6)<=data_in;
			current:=current+1;
		elsif (current = 10) then
			d_in(5)<=data_in;
			current:=current+1;
		elsif (current = 11) then
			d_in(4)<=data_in;
			current:=current+1;
		elsif (current = 12) then
			d_in(3)<=data_in;
			current:=current+1;
		elsif (current = 13) then
			d_in(2)<=data_in;
			current:=current+1;
		elsif (current = 14) then
			d_in(1)<=data_in;
			current:=current+1;
		elsif (current = 15) then
			d_in(0)<=data_in;
			current:=current+1;	
		elsif (current = 16) then
			current:=current+1;
			truecrc_r(7)<=data_in;

		elsif (current = 17) then
			current:=current+1;
			truecrc_r(6)<=data_in;

		elsif (current = 18) then
			current:=current+1;
			truecrc_r(5)<=data_in;

		elsif (current = 19) then
			current:=current+1;
			truecrc_r(4)<=data_in;

		elsif (current = 20) then
			current:=current+1;
			truecrc_r(3)<=data_in;

		elsif (current = 21) then
			current:=current+1;
			truecrc_r(2)<=data_in;

		elsif (current = 22) then
			current:=current+1;
			truecrc_r(1)<=data_in;

		elsif (current = 23) then
			truecrc_r(0)<=data_in;
			current:=current+1;
		elsif (current = 24) then
			--outputs the error
			current:=current+1;
			error <=varerror;
		elsif (current = 25) then
			--this is to reset the error output and current var
			current:=0;
			error <= '0';
		end if;
	end if;
end process;
crc_encoding:CRC_8_Encoder port map(d_in,crc_r);
crc_error_7:Ar_xor2to1  port map(crc_r(7),truecrc_r(7),errorcheck(7));
crc_error_6:Ar_xor2to1  port map(crc_r(6),truecrc_r(6),errorcheck(6));
crc_error_5:Ar_xor2to1  port map(crc_r(5),truecrc_r(5),errorcheck(5));
crc_error_4:Ar_xor2to1  port map(crc_r(4),truecrc_r(4),errorcheck(4));
crc_error_3:Ar_xor2to1  port map(crc_r(3),truecrc_r(3),errorcheck(3));
crc_error_2:Ar_xor2to1  port map(crc_r(2),truecrc_r(2),errorcheck(2));
crc_error_1:Ar_xor2to1  port map(crc_r(1),truecrc_r(1),errorcheck(1));
crc_error_0:Ar_xor2to1  port map(crc_r(0),truecrc_r(0),errorcheck(0));

C_7<=errorcheck(7);
C_6<=errorcheck(6);
C_5<=errorcheck(5);
C_4<=errorcheck(4);
C_3<=errorcheck(3);
C_2<=errorcheck(2);
C_1<=errorcheck(1);
C_0<=errorcheck(0);
--crc_result<=crc_r; --TESTING PURPOSES
varerror<=C_0 or C_1 or C_2 or C_3 or C_4 or C_5 or C_6 or C_7;
END Structure;