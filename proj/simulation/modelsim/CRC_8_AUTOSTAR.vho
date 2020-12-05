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

-- VENDOR "Altera"
-- PROGRAM "Quartus Prime"
-- VERSION "Version 20.1.0 Build 711 06/05/2020 SJ Lite Edition"

-- DATE "12/05/2020 01:44:57"

-- 
-- Device: Altera EP4CGX15BF14C6 Package FBGA169
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY CYCLONEIV;
LIBRARY IEEE;
USE CYCLONEIV.CYCLONEIV_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	hard_block IS
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic
	);
END hard_block;

-- Design Ports Information
-- ~ALTERA_NCEO~	=>  Location: PIN_N5,	 I/O Standard: 2.5 V,	 Current Strength: 16mA
-- ~ALTERA_DATA0~	=>  Location: PIN_A5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_ASDO~	=>  Location: PIN_B5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_NCSO~	=>  Location: PIN_C5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_DCLK~	=>  Location: PIN_A4,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF hard_block IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL \~ALTERA_DATA0~~padout\ : std_logic;
SIGNAL \~ALTERA_ASDO~~padout\ : std_logic;
SIGNAL \~ALTERA_NCSO~~padout\ : std_logic;
SIGNAL \~ALTERA_DATA0~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_ASDO~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_NCSO~~ibuf_o\ : std_logic;

BEGIN

ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
END structure;


LIBRARY CYCLONEIV;
LIBRARY IEEE;
USE CYCLONEIV.CYCLONEIV_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	CRC_8_Encoder IS
    PORT (
	d_in : IN std_logic_vector(15 DOWNTO 0);
	crc_r : OUT std_logic_vector(7 DOWNTO 0)
	);
END CRC_8_Encoder;

-- Design Ports Information
-- crc_r[0]	=>  Location: PIN_H12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- crc_r[1]	=>  Location: PIN_M11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- crc_r[2]	=>  Location: PIN_K8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- crc_r[3]	=>  Location: PIN_N12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- crc_r[4]	=>  Location: PIN_L12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- crc_r[5]	=>  Location: PIN_K9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- crc_r[6]	=>  Location: PIN_J13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- crc_r[7]	=>  Location: PIN_K13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- d_in[10]	=>  Location: PIN_L9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- d_in[11]	=>  Location: PIN_G13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- d_in[9]	=>  Location: PIN_H13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- d_in[12]	=>  Location: PIN_L11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- d_in[7]	=>  Location: PIN_M7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- d_in[8]	=>  Location: PIN_N7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- d_in[0]	=>  Location: PIN_M9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- d_in[5]	=>  Location: PIN_N10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- d_in[3]	=>  Location: PIN_H10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- d_in[15]	=>  Location: PIN_L13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- d_in[6]	=>  Location: PIN_K12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- d_in[1]	=>  Location: PIN_K10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- d_in[4]	=>  Location: PIN_K11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- d_in[13]	=>  Location: PIN_N13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- d_in[2]	=>  Location: PIN_M13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- d_in[14]	=>  Location: PIN_N11,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF CRC_8_Encoder IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_d_in : std_logic_vector(15 DOWNTO 0);
SIGNAL ww_crc_r : std_logic_vector(7 DOWNTO 0);
SIGNAL \crc_r[0]~output_o\ : std_logic;
SIGNAL \crc_r[1]~output_o\ : std_logic;
SIGNAL \crc_r[2]~output_o\ : std_logic;
SIGNAL \crc_r[3]~output_o\ : std_logic;
SIGNAL \crc_r[4]~output_o\ : std_logic;
SIGNAL \crc_r[5]~output_o\ : std_logic;
SIGNAL \crc_r[6]~output_o\ : std_logic;
SIGNAL \crc_r[7]~output_o\ : std_logic;
SIGNAL \d_in[7]~input_o\ : std_logic;
SIGNAL \d_in[15]~input_o\ : std_logic;
SIGNAL \d_in[5]~input_o\ : std_logic;
SIGNAL \d_in[0]~input_o\ : std_logic;
SIGNAL \d_in[3]~input_o\ : std_logic;
SIGNAL \r0|xor_final|y~0_combout\ : std_logic;
SIGNAL \d_in[8]~input_o\ : std_logic;
SIGNAL \d_in[9]~input_o\ : std_logic;
SIGNAL \d_in[12]~input_o\ : std_logic;
SIGNAL \d_in[10]~input_o\ : std_logic;
SIGNAL \d_in[11]~input_o\ : std_logic;
SIGNAL \m9to12|xor_final|y~0_combout\ : std_logic;
SIGNAL \r0|xor_final|y~1_combout\ : std_logic;
SIGNAL \d_in[4]~input_o\ : std_logic;
SIGNAL \d_in[1]~input_o\ : std_logic;
SIGNAL \d_in[6]~input_o\ : std_logic;
SIGNAL \r2|xor_final|y~0_combout\ : std_logic;
SIGNAL \r2|xor_final|y~1_combout\ : std_logic;
SIGNAL \d_in[13]~input_o\ : std_logic;
SIGNAL \r1|xor_final|y~combout\ : std_logic;
SIGNAL \d_in[14]~input_o\ : std_logic;
SIGNAL \d_in[2]~input_o\ : std_logic;
SIGNAL \r2|xor_final|y~2_combout\ : std_logic;
SIGNAL \r3|y~0_combout\ : std_logic;
SIGNAL \r3|y~combout\ : std_logic;
SIGNAL \r6|xor_final|y~0_combout\ : std_logic;
SIGNAL \r4|xor_final|y~combout\ : std_logic;
SIGNAL \m6to9|xor_final|y~0_combout\ : std_logic;
SIGNAL \r7|xor_final|y~0_combout\ : std_logic;
SIGNAL \r5|xor_final|y~combout\ : std_logic;
SIGNAL \r6|xor_final|y~1_combout\ : std_logic;
SIGNAL \r7|xor_final|y~combout\ : std_logic;

COMPONENT hard_block
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic);
END COMPONENT;

BEGIN

ww_d_in <= d_in;
crc_r <= ww_crc_r;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
auto_generated_inst : hard_block
PORT MAP (
	devoe => ww_devoe,
	devclrn => ww_devclrn,
	devpor => ww_devpor);

-- Location: IOOBUF_X33_Y14_N9
\crc_r[0]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \r0|xor_final|y~1_combout\,
	devoe => ww_devoe,
	o => \crc_r[0]~output_o\);

-- Location: IOOBUF_X29_Y0_N9
\crc_r[1]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \r1|xor_final|y~combout\,
	devoe => ww_devoe,
	o => \crc_r[1]~output_o\);

-- Location: IOOBUF_X22_Y0_N9
\crc_r[2]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \r2|xor_final|y~2_combout\,
	devoe => ww_devoe,
	o => \crc_r[2]~output_o\);

-- Location: IOOBUF_X29_Y0_N2
\crc_r[3]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \r3|y~combout\,
	devoe => ww_devoe,
	o => \crc_r[3]~output_o\);

-- Location: IOOBUF_X33_Y12_N2
\crc_r[4]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \r4|xor_final|y~combout\,
	devoe => ww_devoe,
	o => \crc_r[4]~output_o\);

-- Location: IOOBUF_X22_Y0_N2
\crc_r[5]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \r5|xor_final|y~combout\,
	devoe => ww_devoe,
	o => \crc_r[5]~output_o\);

-- Location: IOOBUF_X33_Y15_N9
\crc_r[6]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \r6|xor_final|y~1_combout\,
	devoe => ww_devoe,
	o => \crc_r[6]~output_o\);

-- Location: IOOBUF_X33_Y15_N2
\crc_r[7]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \r7|xor_final|y~combout\,
	devoe => ww_devoe,
	o => \crc_r[7]~output_o\);

-- Location: IOIBUF_X16_Y0_N8
\d_in[7]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_d_in(7),
	o => \d_in[7]~input_o\);

-- Location: IOIBUF_X33_Y12_N8
\d_in[15]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_d_in(15),
	o => \d_in[15]~input_o\);

-- Location: IOIBUF_X26_Y0_N8
\d_in[5]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_d_in(5),
	o => \d_in[5]~input_o\);

-- Location: IOIBUF_X24_Y0_N1
\d_in[0]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_d_in(0),
	o => \d_in[0]~input_o\);

-- Location: IOIBUF_X33_Y14_N1
\d_in[3]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_d_in(3),
	o => \d_in[3]~input_o\);

-- Location: LCCOMB_X31_Y9_N2
\r0|xor_final|y~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \r0|xor_final|y~0_combout\ = \d_in[15]~input_o\ $ (\d_in[5]~input_o\ $ (\d_in[0]~input_o\ $ (\d_in[3]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \d_in[15]~input_o\,
	datab => \d_in[5]~input_o\,
	datac => \d_in[0]~input_o\,
	datad => \d_in[3]~input_o\,
	combout => \r0|xor_final|y~0_combout\);

-- Location: IOIBUF_X16_Y0_N1
\d_in[8]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_d_in(8),
	o => \d_in[8]~input_o\);

-- Location: IOIBUF_X33_Y16_N15
\d_in[9]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_d_in(9),
	o => \d_in[9]~input_o\);

-- Location: IOIBUF_X31_Y0_N1
\d_in[12]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_d_in(12),
	o => \d_in[12]~input_o\);

-- Location: IOIBUF_X24_Y0_N8
\d_in[10]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_d_in(10),
	o => \d_in[10]~input_o\);

-- Location: IOIBUF_X33_Y16_N22
\d_in[11]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_d_in(11),
	o => \d_in[11]~input_o\);

-- Location: LCCOMB_X31_Y9_N24
\m9to12|xor_final|y~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \m9to12|xor_final|y~0_combout\ = \d_in[9]~input_o\ $ (\d_in[12]~input_o\ $ (\d_in[10]~input_o\ $ (\d_in[11]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \d_in[9]~input_o\,
	datab => \d_in[12]~input_o\,
	datac => \d_in[10]~input_o\,
	datad => \d_in[11]~input_o\,
	combout => \m9to12|xor_final|y~0_combout\);

-- Location: LCCOMB_X31_Y9_N12
\r0|xor_final|y~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \r0|xor_final|y~1_combout\ = \d_in[7]~input_o\ $ (\r0|xor_final|y~0_combout\ $ (\d_in[8]~input_o\ $ (\m9to12|xor_final|y~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \d_in[7]~input_o\,
	datab => \r0|xor_final|y~0_combout\,
	datac => \d_in[8]~input_o\,
	datad => \m9to12|xor_final|y~0_combout\,
	combout => \r0|xor_final|y~1_combout\);

-- Location: IOIBUF_X33_Y11_N1
\d_in[4]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_d_in(4),
	o => \d_in[4]~input_o\);

-- Location: IOIBUF_X31_Y0_N8
\d_in[1]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_d_in(1),
	o => \d_in[1]~input_o\);

-- Location: IOIBUF_X33_Y11_N8
\d_in[6]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_d_in(6),
	o => \d_in[6]~input_o\);

-- Location: LCCOMB_X31_Y9_N14
\r2|xor_final|y~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \r2|xor_final|y~0_combout\ = \d_in[4]~input_o\ $ (\d_in[0]~input_o\ $ (\d_in[1]~input_o\ $ (\d_in[6]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \d_in[4]~input_o\,
	datab => \d_in[0]~input_o\,
	datac => \d_in[1]~input_o\,
	datad => \d_in[6]~input_o\,
	combout => \r2|xor_final|y~0_combout\);

-- Location: LCCOMB_X31_Y9_N8
\r2|xor_final|y~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \r2|xor_final|y~1_combout\ = \d_in[15]~input_o\ $ (\r2|xor_final|y~0_combout\ $ (\d_in[3]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010101011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \d_in[15]~input_o\,
	datac => \r2|xor_final|y~0_combout\,
	datad => \d_in[3]~input_o\,
	combout => \r2|xor_final|y~1_combout\);

-- Location: IOIBUF_X33_Y10_N8
\d_in[13]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_d_in(13),
	o => \d_in[13]~input_o\);

-- Location: LCCOMB_X31_Y9_N18
\r1|xor_final|y\ : cycloneiv_lcell_comb
-- Equation(s):
-- \r1|xor_final|y~combout\ = \d_in[7]~input_o\ $ (\d_in[5]~input_o\ $ (\r2|xor_final|y~1_combout\ $ (\d_in[13]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \d_in[7]~input_o\,
	datab => \d_in[5]~input_o\,
	datac => \r2|xor_final|y~1_combout\,
	datad => \d_in[13]~input_o\,
	combout => \r1|xor_final|y~combout\);

-- Location: IOIBUF_X26_Y0_N1
\d_in[14]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_d_in(14),
	o => \d_in[14]~input_o\);

-- Location: IOIBUF_X33_Y10_N1
\d_in[2]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_d_in(2),
	o => \d_in[2]~input_o\);

-- Location: LCCOMB_X31_Y9_N20
\r2|xor_final|y~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \r2|xor_final|y~2_combout\ = \d_in[14]~input_o\ $ (\m9to12|xor_final|y~0_combout\ $ (\r2|xor_final|y~1_combout\ $ (\d_in[2]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \d_in[14]~input_o\,
	datab => \m9to12|xor_final|y~0_combout\,
	datac => \r2|xor_final|y~1_combout\,
	datad => \d_in[2]~input_o\,
	combout => \r2|xor_final|y~2_combout\);

-- Location: LCCOMB_X31_Y9_N30
\r3|y~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \r3|y~0_combout\ = \d_in[8]~input_o\ $ (\d_in[0]~input_o\ $ (\d_in[1]~input_o\ $ (\d_in[4]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \d_in[8]~input_o\,
	datab => \d_in[0]~input_o\,
	datac => \d_in[1]~input_o\,
	datad => \d_in[4]~input_o\,
	combout => \r3|y~0_combout\);

-- Location: LCCOMB_X31_Y9_N16
\r3|y\ : cycloneiv_lcell_comb
-- Equation(s):
-- \r3|y~combout\ = \d_in[9]~input_o\ $ (\d_in[2]~input_o\ $ (\r3|y~0_combout\ $ (\d_in[13]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \d_in[9]~input_o\,
	datab => \d_in[2]~input_o\,
	datac => \r3|y~0_combout\,
	datad => \d_in[13]~input_o\,
	combout => \r3|y~combout\);

-- Location: LCCOMB_X31_Y9_N26
\r6|xor_final|y~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \r6|xor_final|y~0_combout\ = \d_in[1]~input_o\ $ (\d_in[5]~input_o\ $ (\d_in[10]~input_o\ $ (\d_in[3]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \d_in[1]~input_o\,
	datab => \d_in[5]~input_o\,
	datac => \d_in[10]~input_o\,
	datad => \d_in[3]~input_o\,
	combout => \r6|xor_final|y~0_combout\);

-- Location: LCCOMB_X31_Y9_N28
\r4|xor_final|y\ : cycloneiv_lcell_comb
-- Equation(s):
-- \r4|xor_final|y~combout\ = \d_in[14]~input_o\ $ (\d_in[2]~input_o\ $ (\r6|xor_final|y~0_combout\ $ (\d_in[9]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \d_in[14]~input_o\,
	datab => \d_in[2]~input_o\,
	datac => \r6|xor_final|y~0_combout\,
	datad => \d_in[9]~input_o\,
	combout => \r4|xor_final|y~combout\);

-- Location: LCCOMB_X31_Y9_N22
\m6to9|xor_final|y~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \m6to9|xor_final|y~0_combout\ = \d_in[7]~input_o\ $ (\d_in[6]~input_o\ $ (\d_in[8]~input_o\ $ (\d_in[9]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \d_in[7]~input_o\,
	datab => \d_in[6]~input_o\,
	datac => \d_in[8]~input_o\,
	datad => \d_in[9]~input_o\,
	combout => \m6to9|xor_final|y~0_combout\);

-- Location: LCCOMB_X31_Y9_N0
\r7|xor_final|y~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \r7|xor_final|y~0_combout\ = \m6to9|xor_final|y~0_combout\ $ (\d_in[2]~input_o\ $ (\d_in[4]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100101100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \m6to9|xor_final|y~0_combout\,
	datab => \d_in[2]~input_o\,
	datad => \d_in[4]~input_o\,
	combout => \r7|xor_final|y~0_combout\);

-- Location: LCCOMB_X31_Y9_N10
\r5|xor_final|y\ : cycloneiv_lcell_comb
-- Equation(s):
-- \r5|xor_final|y~combout\ = \d_in[12]~input_o\ $ (\d_in[5]~input_o\ $ (\d_in[0]~input_o\ $ (\r7|xor_final|y~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \d_in[12]~input_o\,
	datab => \d_in[5]~input_o\,
	datac => \d_in[0]~input_o\,
	datad => \r7|xor_final|y~0_combout\,
	combout => \r5|xor_final|y~combout\);

-- Location: LCCOMB_X31_Y9_N4
\r6|xor_final|y~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \r6|xor_final|y~1_combout\ = \r6|xor_final|y~0_combout\ $ (\m6to9|xor_final|y~0_combout\ $ (\d_in[13]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010101011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \r6|xor_final|y~0_combout\,
	datac => \m6to9|xor_final|y~0_combout\,
	datad => \d_in[13]~input_o\,
	combout => \r6|xor_final|y~1_combout\);

-- Location: LCCOMB_X31_Y9_N6
\r7|xor_final|y\ : cycloneiv_lcell_comb
-- Equation(s):
-- \r7|xor_final|y~combout\ = \d_in[14]~input_o\ $ (\r7|xor_final|y~0_combout\ $ (\d_in[10]~input_o\ $ (\d_in[11]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \d_in[14]~input_o\,
	datab => \r7|xor_final|y~0_combout\,
	datac => \d_in[10]~input_o\,
	datad => \d_in[11]~input_o\,
	combout => \r7|xor_final|y~combout\);

ww_crc_r(0) <= \crc_r[0]~output_o\;

ww_crc_r(1) <= \crc_r[1]~output_o\;

ww_crc_r(2) <= \crc_r[2]~output_o\;

ww_crc_r(3) <= \crc_r[3]~output_o\;

ww_crc_r(4) <= \crc_r[4]~output_o\;

ww_crc_r(5) <= \crc_r[5]~output_o\;

ww_crc_r(6) <= \crc_r[6]~output_o\;

ww_crc_r(7) <= \crc_r[7]~output_o\;
END structure;


