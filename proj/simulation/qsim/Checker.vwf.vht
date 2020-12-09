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
-- Generated on "12/09/2020 13:06:57"
                                                             
-- Vhdl Test Bench(with test vectors) for design  :          CRC_8_Checker_Serial
-- 
-- Simulation tool : 3rd Party
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY CRC_8_Checker_Serial_vhd_vec_tst IS
END CRC_8_Checker_Serial_vhd_vec_tst;
ARCHITECTURE CRC_8_Checker_Serial_arch OF CRC_8_Checker_Serial_vhd_vec_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL clk : STD_LOGIC;
SIGNAL data_in : STD_LOGIC;
SIGNAL error : STD_LOGIC;
SIGNAL reset : STD_LOGIC;
COMPONENT CRC_8_Checker_Serial
	PORT (
	clk : IN STD_LOGIC;
	data_in : IN STD_LOGIC;
	error : OUT STD_LOGIC;
	reset : IN STD_LOGIC
	);
END COMPONENT;
BEGIN
	i1 : CRC_8_Checker_Serial
	PORT MAP (
-- list connections between master ports and signals
	clk => clk,
	data_in => data_in,
	error => error,
	reset => reset
	);

-- clk
t_prcs_clk: PROCESS
BEGIN
LOOP
	clk <= '0';
	WAIT FOR 12500 ps;
	clk <= '1';
	WAIT FOR 12500 ps;
	IF (NOW >= 1000000 ps) THEN WAIT; END IF;
END LOOP;
END PROCESS t_prcs_clk;

-- data_in
t_prcs_data_in: PROCESS
BEGIN
	data_in <= '0';
	WAIT FOR 380000 ps;
	data_in <= '1';
	WAIT FOR 10000 ps;
	data_in <= '0';
	WAIT FOR 70000 ps;
	data_in <= '1';
	WAIT FOR 10000 ps;
	data_in <= '0';
	WAIT FOR 40000 ps;
	data_in <= '1';
	WAIT FOR 90000 ps;
	data_in <= '0';
WAIT;
END PROCESS t_prcs_data_in;

-- reset
t_prcs_reset: PROCESS
BEGIN
	reset <= '0';
WAIT;
END PROCESS t_prcs_reset;
END CRC_8_Checker_Serial_arch;
