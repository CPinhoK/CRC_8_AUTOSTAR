-- Copyright (C) 2020  Intel Corporation. All rights reserved.
-- Your use of Intel Corporation's design tools, logic functions 
-- and other software and tools, and any partner logic 
-- functions, and any output files from any of the foregoing 
-- (including device programming or simulation files), and any 
-- associated documentation or information are expressly subject 
-- to the terms and conditions of the Intel Program License 
-- Subscription Agreement, the Intel Quartus Prime License Agreement,
-- the Intel FPGA IP License Agreement, or other applicable license
-- agreement, including, without limitation, that your use is for
-- the sole purpose of programming logic devices manufactured by
-- Intel and sold by Intel or its authorized distributors.  Please
-- refer to the applicable agreement for further details, at
-- https://fpgasoftware.intel.com/eula.

-- *****************************************************************************
-- This file contains a Vhdl test bench with test vectors .The test vectors     
-- are exported from a vector file in the Quartus Waveform Editor and apply to  
-- the top level entity of the current Quartus project .The user can use this   
-- testbench to simulate his design using a third-party simulation tool .       
-- *****************************************************************************
-- Generated on "12/05/2020 01:49:15"
                                                             
-- Vhdl Test Bench(with test vectors) for design  :          CRC_8_Encoder
-- 
-- Simulation tool : 3rd Party
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY CRC_8_Encoder_vhd_vec_tst IS
END CRC_8_Encoder_vhd_vec_tst;
ARCHITECTURE CRC_8_Encoder_arch OF CRC_8_Encoder_vhd_vec_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL crc_r : STD_LOGIC_VECTOR(7 DOWNTO 0);
SIGNAL d_in : STD_LOGIC_VECTOR(15 DOWNTO 0);
COMPONENT CRC_8_Encoder
	PORT (
	crc_r : OUT STD_LOGIC_VECTOR(7 DOWNTO 0);
	d_in : IN STD_LOGIC_VECTOR(15 DOWNTO 0)
	);
END COMPONENT;
BEGIN
	i1 : CRC_8_Encoder
	PORT MAP (
-- list connections between master ports and signals
	crc_r => crc_r,
	d_in => d_in
	);
-- d_in[15]
t_prcs_d_in_15: PROCESS
BEGIN
	d_in(15) <= '0';
WAIT;
END PROCESS t_prcs_d_in_15;
-- d_in[14]
t_prcs_d_in_14: PROCESS
BEGIN
	d_in(14) <= '0';
WAIT;
END PROCESS t_prcs_d_in_14;
-- d_in[13]
t_prcs_d_in_13: PROCESS
BEGIN
	d_in(13) <= '0';
WAIT;
END PROCESS t_prcs_d_in_13;
-- d_in[12]
t_prcs_d_in_12: PROCESS
BEGIN
	d_in(12) <= '0';
WAIT;
END PROCESS t_prcs_d_in_12;
-- d_in[11]
t_prcs_d_in_11: PROCESS
BEGIN
	d_in(11) <= '0';
WAIT;
END PROCESS t_prcs_d_in_11;
-- d_in[10]
t_prcs_d_in_10: PROCESS
BEGIN
	d_in(10) <= '0';
WAIT;
END PROCESS t_prcs_d_in_10;
-- d_in[9]
t_prcs_d_in_9: PROCESS
BEGIN
	d_in(9) <= '0';
WAIT;
END PROCESS t_prcs_d_in_9;
-- d_in[8]
t_prcs_d_in_8: PROCESS
BEGIN
	d_in(8) <= '0';
WAIT;
END PROCESS t_prcs_d_in_8;
-- d_in[7]
t_prcs_d_in_7: PROCESS
BEGIN
	d_in(7) <= '0';
WAIT;
END PROCESS t_prcs_d_in_7;
-- d_in[6]
t_prcs_d_in_6: PROCESS
BEGIN
	d_in(6) <= '0';
WAIT;
END PROCESS t_prcs_d_in_6;
-- d_in[5]
t_prcs_d_in_5: PROCESS
BEGIN
	d_in(5) <= '0';
WAIT;
END PROCESS t_prcs_d_in_5;
-- d_in[4]
t_prcs_d_in_4: PROCESS
BEGIN
	d_in(4) <= '0';
WAIT;
END PROCESS t_prcs_d_in_4;
-- d_in[3]
t_prcs_d_in_3: PROCESS
BEGIN
	d_in(3) <= '0';
WAIT;
END PROCESS t_prcs_d_in_3;
-- d_in[2]
t_prcs_d_in_2: PROCESS
BEGIN
	d_in(2) <= '1';
WAIT;
END PROCESS t_prcs_d_in_2;
-- d_in[1]
t_prcs_d_in_1: PROCESS
BEGIN
	d_in(1) <= '1';
WAIT;
END PROCESS t_prcs_d_in_1;
-- d_in[0]
t_prcs_d_in_0: PROCESS
BEGIN
	d_in(0) <= '1';
WAIT;
END PROCESS t_prcs_d_in_0;
END CRC_8_Encoder_arch;
