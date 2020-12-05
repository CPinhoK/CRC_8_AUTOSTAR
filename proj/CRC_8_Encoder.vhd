library Arithmetic;

library IEEE;

use IEEE.STD_LOGIC_1164.all;
use Arithmetic.all;

ENTITY CRC_8_Encoder IS
	PORT( d_in: in std_logic_vector(15 downto 0);
			crc_r :out std_logic_vector(7 downto 0));
END CRC_8_Encoder;

ARCHITECTURE Structural OF CRC_8_Encoder IS
	signal d9to12,d0and1,d3and4,d6and15,d2and9,d6to9:STD_LOGIC;
	signal int_r0_0357 :STD_LOGIC;
	signal int_r1_013456_15:STD_LOGIC;
	signal int_r2_013469_10_11_12_15:STD_LOGIC;
	signal int_r3:STD_LOGIC;
	signal int_r4:STD_LOGIC;
	signal int_r5:STD_LOGIC;
	signal int_r6:STD_LOGIC;
	signal int_r7:STD_LOGIC;
	
component Ar_xor2to1
    port(x0,x1 : in STD_LOGIC;
         y: out STD_LOGIC);
end component;

component Ar_xor3to1
    port(x0,x1,x2 : in STD_LOGIC;
         y: out STD_LOGIC);
end component; 

component Ar_xor4to1
    port(x0,x1,x2,x3 : in STD_LOGIC;
         y: out STD_LOGIC);
end component;  

BEGIN
---for r0 and r2
m9to12 :Ar_xor4to1 port map(d_in(9),d_in(10),d_in(11),d_in(12),d9to12);
---for r1 and r2 and r3
m0and1	 :Ar_xor2to1 port map(d_in(0),d_in(1),d0and1);
---for r1 and r2
m3and4  :Ar_xor2to1 port map(d_in(3),d_in(4),d3and4);
m6and15 :Ar_xor2to1 port map(d_in(6),d_in(15),d6and15);
---for r3 and r4
m2and9  :Ar_xor2to1 port map(d_in(2),d_in(9),d2and9);
---for r5 and r6 and r7
m6to9  :Ar_xor4to1 port map(d_in(6),d_in(7),d_in(8),d_in(9),d6to9);

---for r0
mint_r0_0357 :Ar_xor4to1 port map(d_in(0),d_in(3),d_in(5),d_in(7),int_r0_0357);
r0 		   :Ar_xor4to1 port map(int_r0_0357,d_in(8),d9to12,d_in(15),crc_r(0));

---for r1
mint_r1_013456_15 :Ar_xor4to1 port map(d0and1,d3and4,d6and15,d_in(5),int_r1_013456_15);
r1 		   :Ar_xor3to1 port map(int_r1_013456_15,d_in(7),d_in(13),crc_r(1));

---for r2
mint_r2_013469_10_11_12_15 :Ar_xor4to1 port map(d0and1,d3and4,d6and15,d9to12,int_r2_013469_10_11_12_15);
r2 			:Ar_xor3to1 port map(int_r2_013469_10_11_12_15,d_in(2),d_in(14),crc_r(2));	

---for r3
mint_r3 		:Ar_xor4to1 port map(d0and1,d2and9,d_in(4),d_in(8),int_r3);
r3				:Ar_xor2to1 port map(int_r3,d_in(13),crc_r(3));

---for r4
mint_r4 		:Ar_xor4to1 port map(d_in(1),d2and9,d_in(3),d_in(5),int_r4);
r4				:Ar_xor3to1 port map(int_r4,d_in(10),d_in(14),crc_r(4));

---for r5
mint_r5		:Ar_xor4to1 port map(d_in(0),d_in(2),d_in(4),d_in(5),int_r5);
r5				:Ar_xor3to1 port map(int_r5,d6to9,d_in(12),crc_r(5));

---for r6
mint_r6		:Ar_xor4to1 port map(d_in(1),d_in(3),d_in(5),d_in(10),int_r6);
r6				:Ar_xor3to1 port map(int_r6,d6to9,d_in(13),crc_r(6));


---for r7
mint_r7		:Ar_xor4to1 port map(d_in(2),d_in(4),d_in(10),d_in(11),int_r7);
r7				:Ar_xor3to1 port map(int_r7,d6to9,d_in(14),crc_r(7));


END Structural;