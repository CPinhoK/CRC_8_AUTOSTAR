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

-- DATE "12/09/2020 13:06:58"

-- 
-- Device: Altera EP4CGX15BF14C6 Package FBGA169
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY ALTERA;
LIBRARY CYCLONEIV;
LIBRARY IEEE;
USE ALTERA.ALTERA_PRIMITIVES_COMPONENTS.ALL;
USE CYCLONEIV.CYCLONEIV_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	CRC_8_Checker_Serial IS
    PORT (
	clk : IN std_logic;
	reset : IN std_logic;
	data_in : IN std_logic;
	error : OUT std_logic
	);
END CRC_8_Checker_Serial;

ARCHITECTURE structure OF CRC_8_Checker_Serial IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_clk : std_logic;
SIGNAL ww_reset : std_logic;
SIGNAL ww_data_in : std_logic;
SIGNAL ww_error : std_logic;
SIGNAL \error~output_o\ : std_logic;
SIGNAL \clk~input_o\ : std_logic;
SIGNAL \current[0]~35_combout\ : std_logic;
SIGNAL \current[3]~42\ : std_logic;
SIGNAL \current[4]~45_combout\ : std_logic;
SIGNAL \Equal0~9_combout\ : std_logic;
SIGNAL \current[4]~101_combout\ : std_logic;
SIGNAL \reset~input_o\ : std_logic;
SIGNAL \current[5]~48\ : std_logic;
SIGNAL \current[6]~49_combout\ : std_logic;
SIGNAL \current[6]~50\ : std_logic;
SIGNAL \current[7]~51_combout\ : std_logic;
SIGNAL \current[7]~52\ : std_logic;
SIGNAL \current[8]~53_combout\ : std_logic;
SIGNAL \current[8]~54\ : std_logic;
SIGNAL \current[9]~55_combout\ : std_logic;
SIGNAL \current[9]~56\ : std_logic;
SIGNAL \current[10]~57_combout\ : std_logic;
SIGNAL \current[10]~58\ : std_logic;
SIGNAL \current[11]~59_combout\ : std_logic;
SIGNAL \current[11]~60\ : std_logic;
SIGNAL \current[12]~61_combout\ : std_logic;
SIGNAL \current[12]~62\ : std_logic;
SIGNAL \current[13]~63_combout\ : std_logic;
SIGNAL \current[13]~64\ : std_logic;
SIGNAL \current[14]~65_combout\ : std_logic;
SIGNAL \current[14]~66\ : std_logic;
SIGNAL \current[15]~67_combout\ : std_logic;
SIGNAL \current[15]~68\ : std_logic;
SIGNAL \current[16]~69_combout\ : std_logic;
SIGNAL \current[16]~70\ : std_logic;
SIGNAL \current[17]~71_combout\ : std_logic;
SIGNAL \current[17]~72\ : std_logic;
SIGNAL \current[18]~73_combout\ : std_logic;
SIGNAL \current[18]~74\ : std_logic;
SIGNAL \current[19]~75_combout\ : std_logic;
SIGNAL \current[19]~76\ : std_logic;
SIGNAL \current[20]~77_combout\ : std_logic;
SIGNAL \current[20]~78\ : std_logic;
SIGNAL \current[21]~79_combout\ : std_logic;
SIGNAL \current[21]~80\ : std_logic;
SIGNAL \current[22]~81_combout\ : std_logic;
SIGNAL \current[22]~82\ : std_logic;
SIGNAL \current[23]~83_combout\ : std_logic;
SIGNAL \current[23]~84\ : std_logic;
SIGNAL \current[24]~85_combout\ : std_logic;
SIGNAL \Equal0~5_combout\ : std_logic;
SIGNAL \current[24]~86\ : std_logic;
SIGNAL \current[25]~87_combout\ : std_logic;
SIGNAL \current[25]~88\ : std_logic;
SIGNAL \current[26]~89_combout\ : std_logic;
SIGNAL \current[26]~90\ : std_logic;
SIGNAL \current[27]~91_combout\ : std_logic;
SIGNAL \current[27]~92\ : std_logic;
SIGNAL \current[28]~93_combout\ : std_logic;
SIGNAL \Equal0~6_combout\ : std_logic;
SIGNAL \current[28]~94\ : std_logic;
SIGNAL \current[29]~95_combout\ : std_logic;
SIGNAL \current[29]~96\ : std_logic;
SIGNAL \current[30]~97_combout\ : std_logic;
SIGNAL \current[30]~98\ : std_logic;
SIGNAL \current[31]~99_combout\ : std_logic;
SIGNAL \Equal0~7_combout\ : std_logic;
SIGNAL \Equal0~8_combout\ : std_logic;
SIGNAL \Equal9~0_combout\ : std_logic;
SIGNAL \Equal8~0_combout\ : std_logic;
SIGNAL \Equal0~10_combout\ : std_logic;
SIGNAL \truecrc_r~15_combout\ : std_logic;
SIGNAL \Equal0~11_combout\ : std_logic;
SIGNAL \Equal0~12_combout\ : std_logic;
SIGNAL \Equal1~0_combout\ : std_logic;
SIGNAL \Equal1~1_combout\ : std_logic;
SIGNAL \truecrc_r~4_combout\ : std_logic;
SIGNAL \truecrc_r~5_combout\ : std_logic;
SIGNAL \Equal16~0_combout\ : std_logic;
SIGNAL \Equal17~0_combout\ : std_logic;
SIGNAL \current~34_combout\ : std_logic;
SIGNAL \current~44_combout\ : std_logic;
SIGNAL \current[4]~46\ : std_logic;
SIGNAL \current[5]~47_combout\ : std_logic;
SIGNAL \Equal0~0_combout\ : std_logic;
SIGNAL \Equal0~1_combout\ : std_logic;
SIGNAL \Equal0~2_combout\ : std_logic;
SIGNAL \Equal0~3_combout\ : std_logic;
SIGNAL \Equal0~4_combout\ : std_logic;
SIGNAL \Equal8~1_combout\ : std_logic;
SIGNAL \current[0]~102_combout\ : std_logic;
SIGNAL \current[0]~36\ : std_logic;
SIGNAL \current[1]~37_combout\ : std_logic;
SIGNAL \current[1]~38\ : std_logic;
SIGNAL \current[2]~39_combout\ : std_logic;
SIGNAL \current[2]~40\ : std_logic;
SIGNAL \current[3]~41_combout\ : std_logic;
SIGNAL \current[3]~43_combout\ : std_logic;
SIGNAL \Equal24~0_combout\ : std_logic;
SIGNAL \data_in~input_o\ : std_logic;
SIGNAL \Equal9~1_combout\ : std_logic;
SIGNAL \d_in[6]~0_combout\ : std_logic;
SIGNAL \Equal6~0_combout\ : std_logic;
SIGNAL \d_in[9]~1_combout\ : std_logic;
SIGNAL \Equal8~2_combout\ : std_logic;
SIGNAL \d_in[7]~2_combout\ : std_logic;
SIGNAL \Equal7~0_combout\ : std_logic;
SIGNAL \d_in[8]~3_combout\ : std_logic;
SIGNAL \crc_encoding|m6to9|xor_final|y~0_combout\ : std_logic;
SIGNAL \Equal11~0_combout\ : std_logic;
SIGNAL \d_in[4]~4_combout\ : std_logic;
SIGNAL \Equal13~0_combout\ : std_logic;
SIGNAL \d_in[2]~5_combout\ : std_logic;
SIGNAL \crc_error_7|y~0_combout\ : std_logic;
SIGNAL \Equal5~0_combout\ : std_logic;
SIGNAL \d_in[10]~6_combout\ : std_logic;
SIGNAL \Equal4~0_combout\ : std_logic;
SIGNAL \d_in[11]~7_combout\ : std_logic;
SIGNAL \Equal1~2_combout\ : std_logic;
SIGNAL \d_in[14]~8_combout\ : std_logic;
SIGNAL \Equal16~1_combout\ : std_logic;
SIGNAL \truecrc_r[7]~6_combout\ : std_logic;
SIGNAL \crc_error_7|y~1_combout\ : std_logic;
SIGNAL \Equal15~0_combout\ : std_logic;
SIGNAL \d_in[0]~9_combout\ : std_logic;
SIGNAL \Equal3~0_combout\ : std_logic;
SIGNAL \d_in[12]~10_combout\ : std_logic;
SIGNAL \Equal10~0_combout\ : std_logic;
SIGNAL \d_in[5]~11_combout\ : std_logic;
SIGNAL \truecrc_r[5]~7_combout\ : std_logic;
SIGNAL \Equal18~0_combout\ : std_logic;
SIGNAL \truecrc_r[5]~16_combout\ : std_logic;
SIGNAL \truecrc_r[5]~8_combout\ : std_logic;
SIGNAL \crc_error_5|y~0_combout\ : std_logic;
SIGNAL \varerror~0_combout\ : std_logic;
SIGNAL \Equal2~0_combout\ : std_logic;
SIGNAL \d_in[13]~12_combout\ : std_logic;
SIGNAL \Equal17~1_combout\ : std_logic;
SIGNAL \truecrc_r[6]~9_combout\ : std_logic;
SIGNAL \crc_error_6|y~0_combout\ : std_logic;
SIGNAL \Equal12~0_combout\ : std_logic;
SIGNAL \d_in[3]~13_combout\ : std_logic;
SIGNAL \Equal14~0_combout\ : std_logic;
SIGNAL \d_in[1]~14_combout\ : std_logic;
SIGNAL \crc_error_6|y~1_combout\ : std_logic;
SIGNAL \Equal19~0_combout\ : std_logic;
SIGNAL \truecrc_r[4]~10_combout\ : std_logic;
SIGNAL \crc_error_4|y~0_combout\ : std_logic;
SIGNAL \varerror~1_combout\ : std_logic;
SIGNAL \Equal0~13_combout\ : std_logic;
SIGNAL \d_in[15]~15_combout\ : std_logic;
SIGNAL \crc_error_2|y~0_combout\ : std_logic;
SIGNAL \crc_error_2|y~1_combout\ : std_logic;
SIGNAL \Equal22~0_combout\ : std_logic;
SIGNAL \truecrc_r[1]~11_combout\ : std_logic;
SIGNAL \crc_error_1|y~0_combout\ : std_logic;
SIGNAL \varerror~2_combout\ : std_logic;
SIGNAL \crc_encoding|m9to12|xor_final|y~0_combout\ : std_logic;
SIGNAL \Equal21~0_combout\ : std_logic;
SIGNAL \truecrc_r[2]~12_combout\ : std_logic;
SIGNAL \crc_error_2|y~2_combout\ : std_logic;
SIGNAL \varerror~3_combout\ : std_logic;
SIGNAL \crc_error_0|y~0_combout\ : std_logic;
SIGNAL \Equal23~0_combout\ : std_logic;
SIGNAL \truecrc_r[0]~13_combout\ : std_logic;
SIGNAL \crc_error_0|y~1_combout\ : std_logic;
SIGNAL \Equal20~0_combout\ : std_logic;
SIGNAL \truecrc_r[3]~14_combout\ : std_logic;
SIGNAL \crc_error_3|y~0_combout\ : std_logic;
SIGNAL \crc_error_3|y~1_combout\ : std_logic;
SIGNAL \varerror~4_combout\ : std_logic;
SIGNAL \error~2_combout\ : std_logic;
SIGNAL \current~103_combout\ : std_logic;
SIGNAL \error~4_combout\ : std_logic;
SIGNAL \error~3_combout\ : std_logic;
SIGNAL \error~reg0_q\ : std_logic;
SIGNAL current : std_logic_vector(31 DOWNTO 0);
SIGNAL d_in : std_logic_vector(15 DOWNTO 0);
SIGNAL truecrc_r : std_logic_vector(7 DOWNTO 0);

BEGIN

ww_clk <= clk;
ww_reset <= reset;
ww_data_in <= data_in;
error <= ww_error;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\error~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \error~reg0_q\,
	devoe => ww_devoe,
	o => \error~output_o\);

\clk~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_clk,
	o => \clk~input_o\);

\current[0]~35\ : cycloneiv_lcell_comb
-- Equation(s):
-- \current[0]~35_combout\ = current(0) $ (VCC)
-- \current[0]~36\ = CARRY(current(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => current(0),
	datad => VCC,
	combout => \current[0]~35_combout\,
	cout => \current[0]~36\);

\current[3]~41\ : cycloneiv_lcell_comb
-- Equation(s):
-- \current[3]~41_combout\ = (current(3) & (!\current[2]~40\)) # (!current(3) & ((\current[2]~40\) # (GND)))
-- \current[3]~42\ = CARRY((!\current[2]~40\) # (!current(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => current(3),
	datad => VCC,
	cin => \current[2]~40\,
	combout => \current[3]~41_combout\,
	cout => \current[3]~42\);

\current[4]~45\ : cycloneiv_lcell_comb
-- Equation(s):
-- \current[4]~45_combout\ = (current(4) & (\current[3]~42\ $ (GND))) # (!current(4) & (!\current[3]~42\ & VCC))
-- \current[4]~46\ = CARRY((current(4) & !\current[3]~42\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => current(4),
	datad => VCC,
	cin => \current[3]~42\,
	combout => \current[4]~45_combout\,
	cout => \current[4]~46\);

\Equal0~9\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Equal0~9_combout\ = (!current(1) & !current(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => current(1),
	datad => current(2),
	combout => \Equal0~9_combout\);

\current[4]~101\ : cycloneiv_lcell_comb
-- Equation(s):
-- \current[4]~101_combout\ = (current(4) & (((!\Equal0~9_combout\) # (!\Equal8~1_combout\)) # (!current(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => current(4),
	datab => current(0),
	datac => \Equal8~1_combout\,
	datad => \Equal0~9_combout\,
	combout => \current[4]~101_combout\);

\reset~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_reset,
	o => \reset~input_o\);

\current[5]~47\ : cycloneiv_lcell_comb
-- Equation(s):
-- \current[5]~47_combout\ = (current(5) & (!\current[4]~46\)) # (!current(5) & ((\current[4]~46\) # (GND)))
-- \current[5]~48\ = CARRY((!\current[4]~46\) # (!current(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => current(5),
	datad => VCC,
	cin => \current[4]~46\,
	combout => \current[5]~47_combout\,
	cout => \current[5]~48\);

\current[6]~49\ : cycloneiv_lcell_comb
-- Equation(s):
-- \current[6]~49_combout\ = (current(6) & (\current[5]~48\ $ (GND))) # (!current(6) & (!\current[5]~48\ & VCC))
-- \current[6]~50\ = CARRY((current(6) & !\current[5]~48\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => current(6),
	datad => VCC,
	cin => \current[5]~48\,
	combout => \current[6]~49_combout\,
	cout => \current[6]~50\);

\current[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \current[6]~49_combout\,
	asdata => current(6),
	sclr => \reset~input_o\,
	sload => \current~44_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => current(6));

\current[7]~51\ : cycloneiv_lcell_comb
-- Equation(s):
-- \current[7]~51_combout\ = (current(7) & (!\current[6]~50\)) # (!current(7) & ((\current[6]~50\) # (GND)))
-- \current[7]~52\ = CARRY((!\current[6]~50\) # (!current(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => current(7),
	datad => VCC,
	cin => \current[6]~50\,
	combout => \current[7]~51_combout\,
	cout => \current[7]~52\);

\current[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \current[7]~51_combout\,
	asdata => current(7),
	sclr => \reset~input_o\,
	sload => \current~44_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => current(7));

\current[8]~53\ : cycloneiv_lcell_comb
-- Equation(s):
-- \current[8]~53_combout\ = (current(8) & (\current[7]~52\ $ (GND))) # (!current(8) & (!\current[7]~52\ & VCC))
-- \current[8]~54\ = CARRY((current(8) & !\current[7]~52\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => current(8),
	datad => VCC,
	cin => \current[7]~52\,
	combout => \current[8]~53_combout\,
	cout => \current[8]~54\);

\current[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \current[8]~53_combout\,
	asdata => current(8),
	sclr => \reset~input_o\,
	sload => \current~44_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => current(8));

\current[9]~55\ : cycloneiv_lcell_comb
-- Equation(s):
-- \current[9]~55_combout\ = (current(9) & (!\current[8]~54\)) # (!current(9) & ((\current[8]~54\) # (GND)))
-- \current[9]~56\ = CARRY((!\current[8]~54\) # (!current(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => current(9),
	datad => VCC,
	cin => \current[8]~54\,
	combout => \current[9]~55_combout\,
	cout => \current[9]~56\);

\current[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \current[9]~55_combout\,
	asdata => current(9),
	sclr => \reset~input_o\,
	sload => \current~44_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => current(9));

\current[10]~57\ : cycloneiv_lcell_comb
-- Equation(s):
-- \current[10]~57_combout\ = (current(10) & (\current[9]~56\ $ (GND))) # (!current(10) & (!\current[9]~56\ & VCC))
-- \current[10]~58\ = CARRY((current(10) & !\current[9]~56\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => current(10),
	datad => VCC,
	cin => \current[9]~56\,
	combout => \current[10]~57_combout\,
	cout => \current[10]~58\);

\current[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \current[10]~57_combout\,
	asdata => current(10),
	sclr => \reset~input_o\,
	sload => \current~44_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => current(10));

\current[11]~59\ : cycloneiv_lcell_comb
-- Equation(s):
-- \current[11]~59_combout\ = (current(11) & (!\current[10]~58\)) # (!current(11) & ((\current[10]~58\) # (GND)))
-- \current[11]~60\ = CARRY((!\current[10]~58\) # (!current(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => current(11),
	datad => VCC,
	cin => \current[10]~58\,
	combout => \current[11]~59_combout\,
	cout => \current[11]~60\);

\current[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \current[11]~59_combout\,
	asdata => current(11),
	sclr => \reset~input_o\,
	sload => \current~44_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => current(11));

\current[12]~61\ : cycloneiv_lcell_comb
-- Equation(s):
-- \current[12]~61_combout\ = (current(12) & (\current[11]~60\ $ (GND))) # (!current(12) & (!\current[11]~60\ & VCC))
-- \current[12]~62\ = CARRY((current(12) & !\current[11]~60\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => current(12),
	datad => VCC,
	cin => \current[11]~60\,
	combout => \current[12]~61_combout\,
	cout => \current[12]~62\);

\current[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \current[12]~61_combout\,
	asdata => current(12),
	sclr => \reset~input_o\,
	sload => \current~44_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => current(12));

\current[13]~63\ : cycloneiv_lcell_comb
-- Equation(s):
-- \current[13]~63_combout\ = (current(13) & (!\current[12]~62\)) # (!current(13) & ((\current[12]~62\) # (GND)))
-- \current[13]~64\ = CARRY((!\current[12]~62\) # (!current(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => current(13),
	datad => VCC,
	cin => \current[12]~62\,
	combout => \current[13]~63_combout\,
	cout => \current[13]~64\);

\current[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \current[13]~63_combout\,
	asdata => current(13),
	sclr => \reset~input_o\,
	sload => \current~44_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => current(13));

\current[14]~65\ : cycloneiv_lcell_comb
-- Equation(s):
-- \current[14]~65_combout\ = (current(14) & (\current[13]~64\ $ (GND))) # (!current(14) & (!\current[13]~64\ & VCC))
-- \current[14]~66\ = CARRY((current(14) & !\current[13]~64\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => current(14),
	datad => VCC,
	cin => \current[13]~64\,
	combout => \current[14]~65_combout\,
	cout => \current[14]~66\);

\current[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \current[14]~65_combout\,
	asdata => current(14),
	sclr => \reset~input_o\,
	sload => \current~44_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => current(14));

\current[15]~67\ : cycloneiv_lcell_comb
-- Equation(s):
-- \current[15]~67_combout\ = (current(15) & (!\current[14]~66\)) # (!current(15) & ((\current[14]~66\) # (GND)))
-- \current[15]~68\ = CARRY((!\current[14]~66\) # (!current(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => current(15),
	datad => VCC,
	cin => \current[14]~66\,
	combout => \current[15]~67_combout\,
	cout => \current[15]~68\);

\current[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \current[15]~67_combout\,
	asdata => current(15),
	sclr => \reset~input_o\,
	sload => \current~44_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => current(15));

\current[16]~69\ : cycloneiv_lcell_comb
-- Equation(s):
-- \current[16]~69_combout\ = (current(16) & (\current[15]~68\ $ (GND))) # (!current(16) & (!\current[15]~68\ & VCC))
-- \current[16]~70\ = CARRY((current(16) & !\current[15]~68\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => current(16),
	datad => VCC,
	cin => \current[15]~68\,
	combout => \current[16]~69_combout\,
	cout => \current[16]~70\);

\current[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \current[16]~69_combout\,
	asdata => current(16),
	sclr => \reset~input_o\,
	sload => \current~44_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => current(16));

\current[17]~71\ : cycloneiv_lcell_comb
-- Equation(s):
-- \current[17]~71_combout\ = (current(17) & (!\current[16]~70\)) # (!current(17) & ((\current[16]~70\) # (GND)))
-- \current[17]~72\ = CARRY((!\current[16]~70\) # (!current(17)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => current(17),
	datad => VCC,
	cin => \current[16]~70\,
	combout => \current[17]~71_combout\,
	cout => \current[17]~72\);

\current[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \current[17]~71_combout\,
	asdata => current(17),
	sclr => \reset~input_o\,
	sload => \current~44_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => current(17));

\current[18]~73\ : cycloneiv_lcell_comb
-- Equation(s):
-- \current[18]~73_combout\ = (current(18) & (\current[17]~72\ $ (GND))) # (!current(18) & (!\current[17]~72\ & VCC))
-- \current[18]~74\ = CARRY((current(18) & !\current[17]~72\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => current(18),
	datad => VCC,
	cin => \current[17]~72\,
	combout => \current[18]~73_combout\,
	cout => \current[18]~74\);

\current[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \current[18]~73_combout\,
	asdata => current(18),
	sclr => \reset~input_o\,
	sload => \current~44_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => current(18));

\current[19]~75\ : cycloneiv_lcell_comb
-- Equation(s):
-- \current[19]~75_combout\ = (current(19) & (!\current[18]~74\)) # (!current(19) & ((\current[18]~74\) # (GND)))
-- \current[19]~76\ = CARRY((!\current[18]~74\) # (!current(19)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => current(19),
	datad => VCC,
	cin => \current[18]~74\,
	combout => \current[19]~75_combout\,
	cout => \current[19]~76\);

\current[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \current[19]~75_combout\,
	asdata => current(19),
	sclr => \reset~input_o\,
	sload => \current~44_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => current(19));

\current[20]~77\ : cycloneiv_lcell_comb
-- Equation(s):
-- \current[20]~77_combout\ = (current(20) & (\current[19]~76\ $ (GND))) # (!current(20) & (!\current[19]~76\ & VCC))
-- \current[20]~78\ = CARRY((current(20) & !\current[19]~76\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => current(20),
	datad => VCC,
	cin => \current[19]~76\,
	combout => \current[20]~77_combout\,
	cout => \current[20]~78\);

\current[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \current[20]~77_combout\,
	asdata => current(20),
	sclr => \reset~input_o\,
	sload => \current~44_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => current(20));

\current[21]~79\ : cycloneiv_lcell_comb
-- Equation(s):
-- \current[21]~79_combout\ = (current(21) & (!\current[20]~78\)) # (!current(21) & ((\current[20]~78\) # (GND)))
-- \current[21]~80\ = CARRY((!\current[20]~78\) # (!current(21)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => current(21),
	datad => VCC,
	cin => \current[20]~78\,
	combout => \current[21]~79_combout\,
	cout => \current[21]~80\);

\current[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \current[21]~79_combout\,
	asdata => current(21),
	sclr => \reset~input_o\,
	sload => \current~44_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => current(21));

\current[22]~81\ : cycloneiv_lcell_comb
-- Equation(s):
-- \current[22]~81_combout\ = (current(22) & (\current[21]~80\ $ (GND))) # (!current(22) & (!\current[21]~80\ & VCC))
-- \current[22]~82\ = CARRY((current(22) & !\current[21]~80\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => current(22),
	datad => VCC,
	cin => \current[21]~80\,
	combout => \current[22]~81_combout\,
	cout => \current[22]~82\);

\current[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \current[22]~81_combout\,
	asdata => current(22),
	sclr => \reset~input_o\,
	sload => \current~44_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => current(22));

\current[23]~83\ : cycloneiv_lcell_comb
-- Equation(s):
-- \current[23]~83_combout\ = (current(23) & (!\current[22]~82\)) # (!current(23) & ((\current[22]~82\) # (GND)))
-- \current[23]~84\ = CARRY((!\current[22]~82\) # (!current(23)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => current(23),
	datad => VCC,
	cin => \current[22]~82\,
	combout => \current[23]~83_combout\,
	cout => \current[23]~84\);

\current[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \current[23]~83_combout\,
	asdata => current(23),
	sclr => \reset~input_o\,
	sload => \current~44_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => current(23));

\current[24]~85\ : cycloneiv_lcell_comb
-- Equation(s):
-- \current[24]~85_combout\ = (current(24) & (\current[23]~84\ $ (GND))) # (!current(24) & (!\current[23]~84\ & VCC))
-- \current[24]~86\ = CARRY((current(24) & !\current[23]~84\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => current(24),
	datad => VCC,
	cin => \current[23]~84\,
	combout => \current[24]~85_combout\,
	cout => \current[24]~86\);

\current[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \current[24]~85_combout\,
	asdata => current(24),
	sclr => \reset~input_o\,
	sload => \current~44_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => current(24));

\Equal0~5\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Equal0~5_combout\ = (!current(21) & (!current(22) & (!current(23) & !current(24))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => current(21),
	datab => current(22),
	datac => current(23),
	datad => current(24),
	combout => \Equal0~5_combout\);

\current[25]~87\ : cycloneiv_lcell_comb
-- Equation(s):
-- \current[25]~87_combout\ = (current(25) & (!\current[24]~86\)) # (!current(25) & ((\current[24]~86\) # (GND)))
-- \current[25]~88\ = CARRY((!\current[24]~86\) # (!current(25)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => current(25),
	datad => VCC,
	cin => \current[24]~86\,
	combout => \current[25]~87_combout\,
	cout => \current[25]~88\);

\current[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \current[25]~87_combout\,
	asdata => current(25),
	sclr => \reset~input_o\,
	sload => \current~44_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => current(25));

\current[26]~89\ : cycloneiv_lcell_comb
-- Equation(s):
-- \current[26]~89_combout\ = (current(26) & (\current[25]~88\ $ (GND))) # (!current(26) & (!\current[25]~88\ & VCC))
-- \current[26]~90\ = CARRY((current(26) & !\current[25]~88\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => current(26),
	datad => VCC,
	cin => \current[25]~88\,
	combout => \current[26]~89_combout\,
	cout => \current[26]~90\);

\current[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \current[26]~89_combout\,
	asdata => current(26),
	sclr => \reset~input_o\,
	sload => \current~44_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => current(26));

\current[27]~91\ : cycloneiv_lcell_comb
-- Equation(s):
-- \current[27]~91_combout\ = (current(27) & (!\current[26]~90\)) # (!current(27) & ((\current[26]~90\) # (GND)))
-- \current[27]~92\ = CARRY((!\current[26]~90\) # (!current(27)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => current(27),
	datad => VCC,
	cin => \current[26]~90\,
	combout => \current[27]~91_combout\,
	cout => \current[27]~92\);

\current[27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \current[27]~91_combout\,
	asdata => current(27),
	sclr => \reset~input_o\,
	sload => \current~44_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => current(27));

\current[28]~93\ : cycloneiv_lcell_comb
-- Equation(s):
-- \current[28]~93_combout\ = (current(28) & (\current[27]~92\ $ (GND))) # (!current(28) & (!\current[27]~92\ & VCC))
-- \current[28]~94\ = CARRY((current(28) & !\current[27]~92\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => current(28),
	datad => VCC,
	cin => \current[27]~92\,
	combout => \current[28]~93_combout\,
	cout => \current[28]~94\);

\current[28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \current[28]~93_combout\,
	asdata => current(28),
	sclr => \reset~input_o\,
	sload => \current~44_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => current(28));

\Equal0~6\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Equal0~6_combout\ = (!current(25) & (!current(26) & (!current(27) & !current(28))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => current(25),
	datab => current(26),
	datac => current(27),
	datad => current(28),
	combout => \Equal0~6_combout\);

\current[29]~95\ : cycloneiv_lcell_comb
-- Equation(s):
-- \current[29]~95_combout\ = (current(29) & (!\current[28]~94\)) # (!current(29) & ((\current[28]~94\) # (GND)))
-- \current[29]~96\ = CARRY((!\current[28]~94\) # (!current(29)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => current(29),
	datad => VCC,
	cin => \current[28]~94\,
	combout => \current[29]~95_combout\,
	cout => \current[29]~96\);

\current[29]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \current[29]~95_combout\,
	asdata => current(29),
	sclr => \reset~input_o\,
	sload => \current~44_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => current(29));

\current[30]~97\ : cycloneiv_lcell_comb
-- Equation(s):
-- \current[30]~97_combout\ = (current(30) & (\current[29]~96\ $ (GND))) # (!current(30) & (!\current[29]~96\ & VCC))
-- \current[30]~98\ = CARRY((current(30) & !\current[29]~96\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => current(30),
	datad => VCC,
	cin => \current[29]~96\,
	combout => \current[30]~97_combout\,
	cout => \current[30]~98\);

\current[30]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \current[30]~97_combout\,
	asdata => current(30),
	sclr => \reset~input_o\,
	sload => \current~44_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => current(30));

\current[31]~99\ : cycloneiv_lcell_comb
-- Equation(s):
-- \current[31]~99_combout\ = current(31) $ (\current[30]~98\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => current(31),
	cin => \current[30]~98\,
	combout => \current[31]~99_combout\);

\current[31]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \current[31]~99_combout\,
	asdata => current(31),
	sclr => \reset~input_o\,
	sload => \current~44_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => current(31));

\Equal0~7\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Equal0~7_combout\ = (\Equal0~6_combout\ & (!current(29) & (!current(30) & !current(31))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal0~6_combout\,
	datab => current(29),
	datac => current(30),
	datad => current(31),
	combout => \Equal0~7_combout\);

\Equal0~8\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Equal0~8_combout\ = (\Equal0~4_combout\ & (\Equal0~5_combout\ & \Equal0~7_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal0~4_combout\,
	datab => \Equal0~5_combout\,
	datac => \Equal0~7_combout\,
	combout => \Equal0~8_combout\);

\Equal9~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Equal9~0_combout\ = (current(0) & (current(3) & (\Equal0~8_combout\ & !current(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => current(0),
	datab => current(3),
	datac => \Equal0~8_combout\,
	datad => current(4),
	combout => \Equal9~0_combout\);

\Equal8~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Equal8~0_combout\ = (current(3) & (\Equal0~8_combout\ & (!current(0) & !current(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => current(3),
	datab => \Equal0~8_combout\,
	datac => current(0),
	datad => current(4),
	combout => \Equal8~0_combout\);

\Equal0~10\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Equal0~10_combout\ = (\Equal0~4_combout\ & (\Equal0~5_combout\ & (\Equal0~7_combout\ & !current(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal0~4_combout\,
	datab => \Equal0~5_combout\,
	datac => \Equal0~7_combout\,
	datad => current(3),
	combout => \Equal0~10_combout\);

\truecrc_r~15\ : cycloneiv_lcell_comb
-- Equation(s):
-- \truecrc_r~15_combout\ = (\Equal8~0_combout\) # ((!current(1) & (!current(2) & \Equal0~10_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => current(1),
	datab => current(2),
	datac => \Equal8~0_combout\,
	datad => \Equal0~10_combout\,
	combout => \truecrc_r~15_combout\);

\Equal0~11\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Equal0~11_combout\ = (!current(0) & (!current(4) & !current(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => current(0),
	datab => current(4),
	datac => current(3),
	combout => \Equal0~11_combout\);

\Equal0~12\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Equal0~12_combout\ = (\Equal0~4_combout\ & (\Equal0~5_combout\ & (\Equal0~7_combout\ & \Equal0~11_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal0~4_combout\,
	datab => \Equal0~5_combout\,
	datac => \Equal0~7_combout\,
	datad => \Equal0~11_combout\,
	combout => \Equal0~12_combout\);

\Equal1~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Equal1~0_combout\ = (current(0) & (!current(4) & !current(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => current(0),
	datab => current(4),
	datac => current(3),
	combout => \Equal1~0_combout\);

\Equal1~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Equal1~1_combout\ = (\Equal0~4_combout\ & (\Equal0~5_combout\ & (\Equal0~7_combout\ & \Equal1~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal0~4_combout\,
	datab => \Equal0~5_combout\,
	datac => \Equal0~7_combout\,
	datad => \Equal1~0_combout\,
	combout => \Equal1~1_combout\);

\truecrc_r~4\ : cycloneiv_lcell_comb
-- Equation(s):
-- \truecrc_r~4_combout\ = (current(2) & ((\Equal0~12_combout\) # ((\Equal1~1_combout\)))) # (!current(2) & (current(1) & ((\Equal0~12_combout\) # (\Equal1~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => current(2),
	datab => \Equal0~12_combout\,
	datac => \Equal1~1_combout\,
	datad => current(1),
	combout => \truecrc_r~4_combout\);

\truecrc_r~5\ : cycloneiv_lcell_comb
-- Equation(s):
-- \truecrc_r~5_combout\ = (!\Equal9~0_combout\ & (!\truecrc_r~15_combout\ & !\truecrc_r~4_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal9~0_combout\,
	datab => \truecrc_r~15_combout\,
	datac => \truecrc_r~4_combout\,
	combout => \truecrc_r~5_combout\);

\Equal16~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Equal16~0_combout\ = (current(4) & (\Equal0~10_combout\ & !current(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => current(4),
	datab => \Equal0~10_combout\,
	datad => current(0),
	combout => \Equal16~0_combout\);

\Equal17~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Equal17~0_combout\ = (current(0) & (current(4) & \Equal0~10_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => current(0),
	datab => current(4),
	datac => \Equal0~10_combout\,
	combout => \Equal17~0_combout\);

\current~34\ : cycloneiv_lcell_comb
-- Equation(s):
-- \current~34_combout\ = (current(1) & (!\Equal16~0_combout\ & (!\Equal17~0_combout\))) # (!current(1) & (((!\Equal16~0_combout\ & !\Equal17~0_combout\)) # (!current(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001101010111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => current(1),
	datab => \Equal16~0_combout\,
	datac => \Equal17~0_combout\,
	datad => current(2),
	combout => \current~34_combout\);

\current~44\ : cycloneiv_lcell_comb
-- Equation(s):
-- \current~44_combout\ = (\truecrc_r~5_combout\ & (\current~34_combout\ & ((current(0)) # (!\Equal24~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal24~0_combout\,
	datab => current(0),
	datac => \truecrc_r~5_combout\,
	datad => \current~34_combout\,
	combout => \current~44_combout\);

\current[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \current[4]~45_combout\,
	asdata => \current[4]~101_combout\,
	sclr => \reset~input_o\,
	sload => \current~44_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => current(4));

\current[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \current[5]~47_combout\,
	asdata => current(5),
	sclr => \reset~input_o\,
	sload => \current~44_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => current(5));

\Equal0~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Equal0~0_combout\ = (!current(5) & (!current(6) & (!current(7) & !current(8))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => current(5),
	datab => current(6),
	datac => current(7),
	datad => current(8),
	combout => \Equal0~0_combout\);

\Equal0~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Equal0~1_combout\ = (!current(9) & (!current(10) & (!current(11) & !current(12))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => current(9),
	datab => current(10),
	datac => current(11),
	datad => current(12),
	combout => \Equal0~1_combout\);

\Equal0~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Equal0~2_combout\ = (!current(13) & (!current(14) & (!current(15) & !current(16))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => current(13),
	datab => current(14),
	datac => current(15),
	datad => current(16),
	combout => \Equal0~2_combout\);

\Equal0~3\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Equal0~3_combout\ = (!current(17) & (!current(18) & (!current(19) & !current(20))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => current(17),
	datab => current(18),
	datac => current(19),
	datad => current(20),
	combout => \Equal0~3_combout\);

\Equal0~4\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Equal0~4_combout\ = (\Equal0~0_combout\ & (\Equal0~1_combout\ & (\Equal0~2_combout\ & \Equal0~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal0~0_combout\,
	datab => \Equal0~1_combout\,
	datac => \Equal0~2_combout\,
	datad => \Equal0~3_combout\,
	combout => \Equal0~4_combout\);

\Equal8~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Equal8~1_combout\ = (current(3) & (\Equal0~4_combout\ & (\Equal0~5_combout\ & \Equal0~7_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => current(3),
	datab => \Equal0~4_combout\,
	datac => \Equal0~5_combout\,
	datad => \Equal0~7_combout\,
	combout => \Equal8~1_combout\);

\current[0]~102\ : cycloneiv_lcell_comb
-- Equation(s):
-- \current[0]~102_combout\ = (current(0) & (((!\Equal0~9_combout\) # (!current(4))) # (!\Equal8~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => current(0),
	datab => \Equal8~1_combout\,
	datac => current(4),
	datad => \Equal0~9_combout\,
	combout => \current[0]~102_combout\);

\current[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \current[0]~35_combout\,
	asdata => \current[0]~102_combout\,
	sclr => \reset~input_o\,
	sload => \current~44_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => current(0));

\current[1]~37\ : cycloneiv_lcell_comb
-- Equation(s):
-- \current[1]~37_combout\ = (current(1) & (!\current[0]~36\)) # (!current(1) & ((\current[0]~36\) # (GND)))
-- \current[1]~38\ = CARRY((!\current[0]~36\) # (!current(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => current(1),
	datad => VCC,
	cin => \current[0]~36\,
	combout => \current[1]~37_combout\,
	cout => \current[1]~38\);

\current[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \current[1]~37_combout\,
	asdata => current(1),
	sclr => \reset~input_o\,
	sload => \current~44_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => current(1));

\current[2]~39\ : cycloneiv_lcell_comb
-- Equation(s):
-- \current[2]~39_combout\ = (current(2) & (\current[1]~38\ $ (GND))) # (!current(2) & (!\current[1]~38\ & VCC))
-- \current[2]~40\ = CARRY((current(2) & !\current[1]~38\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => current(2),
	datad => VCC,
	cin => \current[1]~38\,
	combout => \current[2]~39_combout\,
	cout => \current[2]~40\);

\current[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \current[2]~39_combout\,
	asdata => current(2),
	sclr => \reset~input_o\,
	sload => \current~44_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => current(2));

\current[3]~43\ : cycloneiv_lcell_comb
-- Equation(s):
-- \current[3]~43_combout\ = (current(3) & ((!\Equal24~0_combout\) # (!current(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => current(3),
	datac => current(0),
	datad => \Equal24~0_combout\,
	combout => \current[3]~43_combout\);

\current[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \current[3]~41_combout\,
	asdata => \current[3]~43_combout\,
	sclr => \reset~input_o\,
	sload => \current~44_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => current(3));

\Equal24~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Equal24~0_combout\ = (current(3) & (\Equal0~8_combout\ & (current(4) & \Equal0~9_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => current(3),
	datab => \Equal0~8_combout\,
	datac => current(4),
	datad => \Equal0~9_combout\,
	combout => \Equal24~0_combout\);

\data_in~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_data_in,
	o => \data_in~input_o\);

\Equal9~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Equal9~1_combout\ = (current(0) & (\Equal8~1_combout\ & (\Equal0~9_combout\ & !current(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => current(0),
	datab => \Equal8~1_combout\,
	datac => \Equal0~9_combout\,
	datad => current(4),
	combout => \Equal9~1_combout\);

\d_in[6]~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \d_in[6]~0_combout\ = (\Equal9~1_combout\ & ((\reset~input_o\ & (d_in(6))) # (!\reset~input_o\ & ((\data_in~input_o\))))) # (!\Equal9~1_combout\ & (d_in(6)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => d_in(6),
	datab => \data_in~input_o\,
	datac => \Equal9~1_combout\,
	datad => \reset~input_o\,
	combout => \d_in[6]~0_combout\);

\d_in[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \d_in[6]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => d_in(6));

\Equal6~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Equal6~0_combout\ = (current(1) & (current(2) & \Equal0~12_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => current(1),
	datab => current(2),
	datac => \Equal0~12_combout\,
	combout => \Equal6~0_combout\);

\d_in[9]~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \d_in[9]~1_combout\ = (\Equal6~0_combout\ & ((\reset~input_o\ & (d_in(9))) # (!\reset~input_o\ & ((\data_in~input_o\))))) # (!\Equal6~0_combout\ & (d_in(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => d_in(9),
	datab => \data_in~input_o\,
	datac => \Equal6~0_combout\,
	datad => \reset~input_o\,
	combout => \d_in[9]~1_combout\);

\d_in[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \d_in[9]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => d_in(9));

\Equal8~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Equal8~2_combout\ = (\Equal8~1_combout\ & (\Equal0~9_combout\ & (!current(0) & !current(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal8~1_combout\,
	datab => \Equal0~9_combout\,
	datac => current(0),
	datad => current(4),
	combout => \Equal8~2_combout\);

\d_in[7]~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \d_in[7]~2_combout\ = (\Equal8~2_combout\ & ((\reset~input_o\ & (d_in(7))) # (!\reset~input_o\ & ((\data_in~input_o\))))) # (!\Equal8~2_combout\ & (d_in(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => d_in(7),
	datab => \data_in~input_o\,
	datac => \Equal8~2_combout\,
	datad => \reset~input_o\,
	combout => \d_in[7]~2_combout\);

\d_in[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \d_in[7]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => d_in(7));

\Equal7~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Equal7~0_combout\ = (current(1) & (current(2) & \Equal1~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => current(1),
	datab => current(2),
	datac => \Equal1~1_combout\,
	combout => \Equal7~0_combout\);

\d_in[8]~3\ : cycloneiv_lcell_comb
-- Equation(s):
-- \d_in[8]~3_combout\ = (\Equal7~0_combout\ & ((\reset~input_o\ & (d_in(8))) # (!\reset~input_o\ & ((\data_in~input_o\))))) # (!\Equal7~0_combout\ & (d_in(8)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => d_in(8),
	datab => \data_in~input_o\,
	datac => \Equal7~0_combout\,
	datad => \reset~input_o\,
	combout => \d_in[8]~3_combout\);

\d_in[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \d_in[8]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => d_in(8));

\crc_encoding|m6to9|xor_final|y~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \crc_encoding|m6to9|xor_final|y~0_combout\ = d_in(6) $ (d_in(9) $ (d_in(7) $ (d_in(8))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => d_in(6),
	datab => d_in(9),
	datac => d_in(7),
	datad => d_in(8),
	combout => \crc_encoding|m6to9|xor_final|y~0_combout\);

\Equal11~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Equal11~0_combout\ = (current(1) & (\Equal9~0_combout\ & !current(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => current(1),
	datab => \Equal9~0_combout\,
	datad => current(2),
	combout => \Equal11~0_combout\);

\d_in[4]~4\ : cycloneiv_lcell_comb
-- Equation(s):
-- \d_in[4]~4_combout\ = (\Equal11~0_combout\ & ((\reset~input_o\ & (d_in(4))) # (!\reset~input_o\ & ((\data_in~input_o\))))) # (!\Equal11~0_combout\ & (d_in(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => d_in(4),
	datab => \data_in~input_o\,
	datac => \Equal11~0_combout\,
	datad => \reset~input_o\,
	combout => \d_in[4]~4_combout\);

\d_in[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \d_in[4]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => d_in(4));

\Equal13~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Equal13~0_combout\ = (current(2) & (\Equal9~0_combout\ & !current(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => current(2),
	datab => \Equal9~0_combout\,
	datad => current(1),
	combout => \Equal13~0_combout\);

\d_in[2]~5\ : cycloneiv_lcell_comb
-- Equation(s):
-- \d_in[2]~5_combout\ = (\Equal13~0_combout\ & ((\reset~input_o\ & (d_in(2))) # (!\reset~input_o\ & ((\data_in~input_o\))))) # (!\Equal13~0_combout\ & (d_in(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => d_in(2),
	datab => \data_in~input_o\,
	datac => \Equal13~0_combout\,
	datad => \reset~input_o\,
	combout => \d_in[2]~5_combout\);

\d_in[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \d_in[2]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => d_in(2));

\crc_error_7|y~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \crc_error_7|y~0_combout\ = d_in(4) $ (d_in(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => d_in(4),
	datad => d_in(2),
	combout => \crc_error_7|y~0_combout\);

\Equal5~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Equal5~0_combout\ = (current(2) & (\Equal1~1_combout\ & !current(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => current(2),
	datab => \Equal1~1_combout\,
	datad => current(1),
	combout => \Equal5~0_combout\);

\d_in[10]~6\ : cycloneiv_lcell_comb
-- Equation(s):
-- \d_in[10]~6_combout\ = (\Equal5~0_combout\ & ((\reset~input_o\ & (d_in(10))) # (!\reset~input_o\ & ((\data_in~input_o\))))) # (!\Equal5~0_combout\ & (d_in(10)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => d_in(10),
	datab => \data_in~input_o\,
	datac => \Equal5~0_combout\,
	datad => \reset~input_o\,
	combout => \d_in[10]~6_combout\);

\d_in[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \d_in[10]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => d_in(10));

\Equal4~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Equal4~0_combout\ = (current(2) & (\Equal0~12_combout\ & !current(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => current(2),
	datab => \Equal0~12_combout\,
	datad => current(1),
	combout => \Equal4~0_combout\);

\d_in[11]~7\ : cycloneiv_lcell_comb
-- Equation(s):
-- \d_in[11]~7_combout\ = (\Equal4~0_combout\ & ((\reset~input_o\ & (d_in(11))) # (!\reset~input_o\ & ((\data_in~input_o\))))) # (!\Equal4~0_combout\ & (d_in(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => d_in(11),
	datab => \data_in~input_o\,
	datac => \Equal4~0_combout\,
	datad => \reset~input_o\,
	combout => \d_in[11]~7_combout\);

\d_in[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \d_in[11]~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => d_in(11));

\Equal1~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Equal1~2_combout\ = (current(0) & (\Equal0~9_combout\ & (\Equal0~10_combout\ & !current(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => current(0),
	datab => \Equal0~9_combout\,
	datac => \Equal0~10_combout\,
	datad => current(4),
	combout => \Equal1~2_combout\);

\d_in[14]~8\ : cycloneiv_lcell_comb
-- Equation(s):
-- \d_in[14]~8_combout\ = (\Equal1~2_combout\ & ((\reset~input_o\ & (d_in(14))) # (!\reset~input_o\ & ((\data_in~input_o\))))) # (!\Equal1~2_combout\ & (d_in(14)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => d_in(14),
	datab => \data_in~input_o\,
	datac => \Equal1~2_combout\,
	datad => \reset~input_o\,
	combout => \d_in[14]~8_combout\);

\d_in[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \d_in[14]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => d_in(14));

\Equal16~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Equal16~1_combout\ = (current(4) & (\Equal0~9_combout\ & (\Equal0~10_combout\ & !current(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => current(4),
	datab => \Equal0~9_combout\,
	datac => \Equal0~10_combout\,
	datad => current(0),
	combout => \Equal16~1_combout\);

\truecrc_r[7]~6\ : cycloneiv_lcell_comb
-- Equation(s):
-- \truecrc_r[7]~6_combout\ = (\Equal16~1_combout\ & ((\reset~input_o\ & (truecrc_r(7))) # (!\reset~input_o\ & ((\data_in~input_o\))))) # (!\Equal16~1_combout\ & (truecrc_r(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => truecrc_r(7),
	datab => \data_in~input_o\,
	datac => \Equal16~1_combout\,
	datad => \reset~input_o\,
	combout => \truecrc_r[7]~6_combout\);

\truecrc_r[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \truecrc_r[7]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => truecrc_r(7));

\crc_error_7|y~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \crc_error_7|y~1_combout\ = d_in(10) $ (d_in(11) $ (d_in(14) $ (truecrc_r(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => d_in(10),
	datab => d_in(11),
	datac => d_in(14),
	datad => truecrc_r(7),
	combout => \crc_error_7|y~1_combout\);

\Equal15~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Equal15~0_combout\ = (current(1) & (current(2) & \Equal9~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => current(1),
	datab => current(2),
	datac => \Equal9~0_combout\,
	combout => \Equal15~0_combout\);

\d_in[0]~9\ : cycloneiv_lcell_comb
-- Equation(s):
-- \d_in[0]~9_combout\ = (\Equal15~0_combout\ & ((\reset~input_o\ & (d_in(0))) # (!\reset~input_o\ & ((\data_in~input_o\))))) # (!\Equal15~0_combout\ & (d_in(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => d_in(0),
	datab => \data_in~input_o\,
	datac => \Equal15~0_combout\,
	datad => \reset~input_o\,
	combout => \d_in[0]~9_combout\);

\d_in[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \d_in[0]~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => d_in(0));

\Equal3~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Equal3~0_combout\ = (current(1) & (\Equal1~1_combout\ & !current(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => current(1),
	datab => \Equal1~1_combout\,
	datad => current(2),
	combout => \Equal3~0_combout\);

\d_in[12]~10\ : cycloneiv_lcell_comb
-- Equation(s):
-- \d_in[12]~10_combout\ = (\Equal3~0_combout\ & ((\reset~input_o\ & (d_in(12))) # (!\reset~input_o\ & ((\data_in~input_o\))))) # (!\Equal3~0_combout\ & (d_in(12)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => d_in(12),
	datab => \data_in~input_o\,
	datac => \Equal3~0_combout\,
	datad => \reset~input_o\,
	combout => \d_in[12]~10_combout\);

\d_in[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \d_in[12]~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => d_in(12));

\Equal10~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Equal10~0_combout\ = (current(1) & (\Equal8~0_combout\ & !current(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => current(1),
	datab => \Equal8~0_combout\,
	datad => current(2),
	combout => \Equal10~0_combout\);

\d_in[5]~11\ : cycloneiv_lcell_comb
-- Equation(s):
-- \d_in[5]~11_combout\ = (\Equal10~0_combout\ & ((\reset~input_o\ & (d_in(5))) # (!\reset~input_o\ & ((\data_in~input_o\))))) # (!\Equal10~0_combout\ & (d_in(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => d_in(5),
	datab => \data_in~input_o\,
	datac => \Equal10~0_combout\,
	datad => \reset~input_o\,
	combout => \d_in[5]~11_combout\);

\d_in[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \d_in[5]~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => d_in(5));

\truecrc_r[5]~7\ : cycloneiv_lcell_comb
-- Equation(s):
-- \truecrc_r[5]~7_combout\ = (\truecrc_r~5_combout\ & (\data_in~input_o\ & !\reset~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \truecrc_r~5_combout\,
	datab => \data_in~input_o\,
	datad => \reset~input_o\,
	combout => \truecrc_r[5]~7_combout\);

\Equal18~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Equal18~0_combout\ = (current(1) & (\Equal16~0_combout\ & !current(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => current(1),
	datab => \Equal16~0_combout\,
	datad => current(2),
	combout => \Equal18~0_combout\);

\truecrc_r[5]~16\ : cycloneiv_lcell_comb
-- Equation(s):
-- \truecrc_r[5]~16_combout\ = (!\Equal9~0_combout\ & (!\truecrc_r~15_combout\ & (!\truecrc_r~4_combout\ & !\reset~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal9~0_combout\,
	datab => \truecrc_r~15_combout\,
	datac => \truecrc_r~4_combout\,
	datad => \reset~input_o\,
	combout => \truecrc_r[5]~16_combout\);

\truecrc_r[5]~8\ : cycloneiv_lcell_comb
-- Equation(s):
-- \truecrc_r[5]~8_combout\ = (\Equal18~0_combout\ & ((\truecrc_r[5]~7_combout\) # ((truecrc_r(5) & !\truecrc_r[5]~16_combout\)))) # (!\Equal18~0_combout\ & (((truecrc_r(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110011101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \truecrc_r[5]~7_combout\,
	datab => truecrc_r(5),
	datac => \Equal18~0_combout\,
	datad => \truecrc_r[5]~16_combout\,
	combout => \truecrc_r[5]~8_combout\);

\truecrc_r[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \truecrc_r[5]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => truecrc_r(5));

\crc_error_5|y~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \crc_error_5|y~0_combout\ = d_in(0) $ (d_in(12) $ (d_in(5) $ (truecrc_r(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => d_in(0),
	datab => d_in(12),
	datac => d_in(5),
	datad => truecrc_r(5),
	combout => \crc_error_5|y~0_combout\);

\varerror~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \varerror~0_combout\ = (\crc_error_7|y~1_combout\ & ((\crc_encoding|m6to9|xor_final|y~0_combout\ $ (!\crc_error_7|y~0_combout\)) # (!\crc_error_5|y~0_combout\))) # (!\crc_error_7|y~1_combout\ & ((\crc_error_5|y~0_combout\) # 
-- (\crc_encoding|m6to9|xor_final|y~0_combout\ $ (\crc_error_7|y~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001111111110110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \crc_encoding|m6to9|xor_final|y~0_combout\,
	datab => \crc_error_7|y~0_combout\,
	datac => \crc_error_7|y~1_combout\,
	datad => \crc_error_5|y~0_combout\,
	combout => \varerror~0_combout\);

\Equal2~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Equal2~0_combout\ = (current(1) & (\Equal0~12_combout\ & !current(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => current(1),
	datab => \Equal0~12_combout\,
	datad => current(2),
	combout => \Equal2~0_combout\);

\d_in[13]~12\ : cycloneiv_lcell_comb
-- Equation(s):
-- \d_in[13]~12_combout\ = (\Equal2~0_combout\ & ((\reset~input_o\ & (d_in(13))) # (!\reset~input_o\ & ((\data_in~input_o\))))) # (!\Equal2~0_combout\ & (d_in(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => d_in(13),
	datab => \data_in~input_o\,
	datac => \Equal2~0_combout\,
	datad => \reset~input_o\,
	combout => \d_in[13]~12_combout\);

\d_in[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \d_in[13]~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => d_in(13));

\Equal17~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Equal17~1_combout\ = (current(0) & (current(4) & (\Equal0~9_combout\ & \Equal0~10_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => current(0),
	datab => current(4),
	datac => \Equal0~9_combout\,
	datad => \Equal0~10_combout\,
	combout => \Equal17~1_combout\);

\truecrc_r[6]~9\ : cycloneiv_lcell_comb
-- Equation(s):
-- \truecrc_r[6]~9_combout\ = (\Equal17~1_combout\ & ((\reset~input_o\ & (truecrc_r(6))) # (!\reset~input_o\ & ((\data_in~input_o\))))) # (!\Equal17~1_combout\ & (truecrc_r(6)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => truecrc_r(6),
	datab => \data_in~input_o\,
	datac => \Equal17~1_combout\,
	datad => \reset~input_o\,
	combout => \truecrc_r[6]~9_combout\);

\truecrc_r[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \truecrc_r[6]~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => truecrc_r(6));

\crc_error_6|y~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \crc_error_6|y~0_combout\ = d_in(13) $ (truecrc_r(6))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => d_in(13),
	datad => truecrc_r(6),
	combout => \crc_error_6|y~0_combout\);

\Equal12~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Equal12~0_combout\ = (current(2) & (\Equal8~0_combout\ & !current(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => current(2),
	datab => \Equal8~0_combout\,
	datad => current(1),
	combout => \Equal12~0_combout\);

\d_in[3]~13\ : cycloneiv_lcell_comb
-- Equation(s):
-- \d_in[3]~13_combout\ = (\Equal12~0_combout\ & ((\reset~input_o\ & (d_in(3))) # (!\reset~input_o\ & ((\data_in~input_o\))))) # (!\Equal12~0_combout\ & (d_in(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => d_in(3),
	datab => \data_in~input_o\,
	datac => \Equal12~0_combout\,
	datad => \reset~input_o\,
	combout => \d_in[3]~13_combout\);

\d_in[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \d_in[3]~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => d_in(3));

\Equal14~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Equal14~0_combout\ = (current(1) & (current(2) & \Equal8~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => current(1),
	datab => current(2),
	datac => \Equal8~0_combout\,
	combout => \Equal14~0_combout\);

\d_in[1]~14\ : cycloneiv_lcell_comb
-- Equation(s):
-- \d_in[1]~14_combout\ = (\Equal14~0_combout\ & ((\reset~input_o\ & (d_in(1))) # (!\reset~input_o\ & ((\data_in~input_o\))))) # (!\Equal14~0_combout\ & (d_in(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => d_in(1),
	datab => \data_in~input_o\,
	datac => \Equal14~0_combout\,
	datad => \reset~input_o\,
	combout => \d_in[1]~14_combout\);

\d_in[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \d_in[1]~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => d_in(1));

\crc_error_6|y~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \crc_error_6|y~1_combout\ = d_in(3) $ (d_in(1) $ (d_in(10) $ (d_in(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => d_in(3),
	datab => d_in(1),
	datac => d_in(10),
	datad => d_in(5),
	combout => \crc_error_6|y~1_combout\);

\Equal19~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Equal19~0_combout\ = (current(1) & (\Equal17~0_combout\ & !current(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => current(1),
	datab => \Equal17~0_combout\,
	datad => current(2),
	combout => \Equal19~0_combout\);

\truecrc_r[4]~10\ : cycloneiv_lcell_comb
-- Equation(s):
-- \truecrc_r[4]~10_combout\ = (\Equal19~0_combout\ & ((\reset~input_o\ & (truecrc_r(4))) # (!\reset~input_o\ & ((\data_in~input_o\))))) # (!\Equal19~0_combout\ & (truecrc_r(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => truecrc_r(4),
	datab => \data_in~input_o\,
	datac => \Equal19~0_combout\,
	datad => \reset~input_o\,
	combout => \truecrc_r[4]~10_combout\);

\truecrc_r[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \truecrc_r[4]~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => truecrc_r(4));

\crc_error_4|y~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \crc_error_4|y~0_combout\ = d_in(9) $ (d_in(2) $ (d_in(14) $ (truecrc_r(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => d_in(9),
	datab => d_in(2),
	datac => d_in(14),
	datad => truecrc_r(4),
	combout => \crc_error_4|y~0_combout\);

\varerror~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \varerror~1_combout\ = (\crc_error_6|y~1_combout\ & ((\crc_encoding|m6to9|xor_final|y~0_combout\ $ (!\crc_error_6|y~0_combout\)) # (!\crc_error_4|y~0_combout\))) # (!\crc_error_6|y~1_combout\ & ((\crc_error_4|y~0_combout\) # 
-- (\crc_encoding|m6to9|xor_final|y~0_combout\ $ (\crc_error_6|y~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001111111110110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \crc_encoding|m6to9|xor_final|y~0_combout\,
	datab => \crc_error_6|y~0_combout\,
	datac => \crc_error_6|y~1_combout\,
	datad => \crc_error_4|y~0_combout\,
	combout => \varerror~1_combout\);

\Equal0~13\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Equal0~13_combout\ = (\Equal0~9_combout\ & (\Equal0~10_combout\ & (!current(0) & !current(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal0~9_combout\,
	datab => \Equal0~10_combout\,
	datac => current(0),
	datad => current(4),
	combout => \Equal0~13_combout\);

\d_in[15]~15\ : cycloneiv_lcell_comb
-- Equation(s):
-- \d_in[15]~15_combout\ = (\Equal0~13_combout\ & ((\reset~input_o\ & (d_in(15))) # (!\reset~input_o\ & ((\data_in~input_o\))))) # (!\Equal0~13_combout\ & (d_in(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => d_in(15),
	datab => \data_in~input_o\,
	datac => \Equal0~13_combout\,
	datad => \reset~input_o\,
	combout => \d_in[15]~15_combout\);

\d_in[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \d_in[15]~15_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => d_in(15));

\crc_error_2|y~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \crc_error_2|y~0_combout\ = d_in(6) $ (d_in(0) $ (d_in(1) $ (d_in(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => d_in(6),
	datab => d_in(0),
	datac => d_in(1),
	datad => d_in(4),
	combout => \crc_error_2|y~0_combout\);

\crc_error_2|y~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \crc_error_2|y~1_combout\ = d_in(3) $ (d_in(15) $ (\crc_error_2|y~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011010010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => d_in(3),
	datab => d_in(15),
	datac => \crc_error_2|y~0_combout\,
	combout => \crc_error_2|y~1_combout\);

\Equal22~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Equal22~0_combout\ = (current(1) & (current(2) & \Equal16~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => current(1),
	datab => current(2),
	datac => \Equal16~0_combout\,
	combout => \Equal22~0_combout\);

\truecrc_r[1]~11\ : cycloneiv_lcell_comb
-- Equation(s):
-- \truecrc_r[1]~11_combout\ = (\Equal22~0_combout\ & ((\truecrc_r[5]~7_combout\) # ((truecrc_r(1) & !\truecrc_r[5]~16_combout\)))) # (!\Equal22~0_combout\ & (((truecrc_r(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110011101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \truecrc_r[5]~7_combout\,
	datab => truecrc_r(1),
	datac => \Equal22~0_combout\,
	datad => \truecrc_r[5]~16_combout\,
	combout => \truecrc_r[1]~11_combout\);

\truecrc_r[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \truecrc_r[1]~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => truecrc_r(1));

\crc_error_1|y~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \crc_error_1|y~0_combout\ = d_in(7) $ (d_in(5) $ (truecrc_r(1) $ (d_in(13))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => d_in(7),
	datab => d_in(5),
	datac => truecrc_r(1),
	datad => d_in(13),
	combout => \crc_error_1|y~0_combout\);

\varerror~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \varerror~2_combout\ = (\varerror~1_combout\) # (\crc_error_2|y~1_combout\ $ (\crc_error_1|y~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111111111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \varerror~1_combout\,
	datac => \crc_error_2|y~1_combout\,
	datad => \crc_error_1|y~0_combout\,
	combout => \varerror~2_combout\);

\crc_encoding|m9to12|xor_final|y~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \crc_encoding|m9to12|xor_final|y~0_combout\ = d_in(10) $ (d_in(11) $ (d_in(9) $ (d_in(12))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => d_in(10),
	datab => d_in(11),
	datac => d_in(9),
	datad => d_in(12),
	combout => \crc_encoding|m9to12|xor_final|y~0_combout\);

\Equal21~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Equal21~0_combout\ = (current(2) & (\Equal17~0_combout\ & !current(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => current(2),
	datab => \Equal17~0_combout\,
	datad => current(1),
	combout => \Equal21~0_combout\);

\truecrc_r[2]~12\ : cycloneiv_lcell_comb
-- Equation(s):
-- \truecrc_r[2]~12_combout\ = (\Equal21~0_combout\ & ((\truecrc_r[5]~7_combout\) # ((truecrc_r(2) & !\truecrc_r[5]~16_combout\)))) # (!\Equal21~0_combout\ & (((truecrc_r(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110011101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \truecrc_r[5]~7_combout\,
	datab => truecrc_r(2),
	datac => \Equal21~0_combout\,
	datad => \truecrc_r[5]~16_combout\,
	combout => \truecrc_r[2]~12_combout\);

\truecrc_r[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \truecrc_r[2]~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => truecrc_r(2));

\crc_error_2|y~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \crc_error_2|y~2_combout\ = \crc_encoding|m9to12|xor_final|y~0_combout\ $ (truecrc_r(2) $ (d_in(2) $ (d_in(14))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \crc_encoding|m9to12|xor_final|y~0_combout\,
	datab => truecrc_r(2),
	datac => d_in(2),
	datad => d_in(14),
	combout => \crc_error_2|y~2_combout\);

\varerror~3\ : cycloneiv_lcell_comb
-- Equation(s):
-- \varerror~3_combout\ = (\varerror~0_combout\) # ((\varerror~2_combout\) # (\crc_error_2|y~1_combout\ $ (\crc_error_2|y~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \varerror~0_combout\,
	datab => \varerror~2_combout\,
	datac => \crc_error_2|y~1_combout\,
	datad => \crc_error_2|y~2_combout\,
	combout => \varerror~3_combout\);

\crc_error_0|y~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \crc_error_0|y~0_combout\ = d_in(0) $ (d_in(7) $ (d_in(8) $ (d_in(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => d_in(0),
	datab => d_in(7),
	datac => d_in(8),
	datad => d_in(5),
	combout => \crc_error_0|y~0_combout\);

\Equal23~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Equal23~0_combout\ = (current(1) & (current(2) & \Equal17~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => current(1),
	datab => current(2),
	datac => \Equal17~0_combout\,
	combout => \Equal23~0_combout\);

\truecrc_r[0]~13\ : cycloneiv_lcell_comb
-- Equation(s):
-- \truecrc_r[0]~13_combout\ = (\Equal23~0_combout\ & ((\truecrc_r[5]~7_combout\) # ((truecrc_r(0) & !\truecrc_r[5]~16_combout\)))) # (!\Equal23~0_combout\ & (((truecrc_r(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110011101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \truecrc_r[5]~7_combout\,
	datab => truecrc_r(0),
	datac => \Equal23~0_combout\,
	datad => \truecrc_r[5]~16_combout\,
	combout => \truecrc_r[0]~13_combout\);

\truecrc_r[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \truecrc_r[0]~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => truecrc_r(0));

\crc_error_0|y~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \crc_error_0|y~1_combout\ = d_in(3) $ (d_in(15) $ (\crc_error_0|y~0_combout\ $ (truecrc_r(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => d_in(3),
	datab => d_in(15),
	datac => \crc_error_0|y~0_combout\,
	datad => truecrc_r(0),
	combout => \crc_error_0|y~1_combout\);

\Equal20~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Equal20~0_combout\ = (current(2) & (\Equal16~0_combout\ & !current(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => current(2),
	datab => \Equal16~0_combout\,
	datad => current(1),
	combout => \Equal20~0_combout\);

\truecrc_r[3]~14\ : cycloneiv_lcell_comb
-- Equation(s):
-- \truecrc_r[3]~14_combout\ = (\Equal20~0_combout\ & ((\truecrc_r[5]~7_combout\) # ((truecrc_r(3) & !\truecrc_r[5]~16_combout\)))) # (!\Equal20~0_combout\ & (((truecrc_r(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110011101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \truecrc_r[5]~7_combout\,
	datab => truecrc_r(3),
	datac => \Equal20~0_combout\,
	datad => \truecrc_r[5]~16_combout\,
	combout => \truecrc_r[3]~14_combout\);

\truecrc_r[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \truecrc_r[3]~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => truecrc_r(3));

\crc_error_3|y~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \crc_error_3|y~0_combout\ = d_in(0) $ (d_in(1) $ (d_in(4) $ (truecrc_r(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => d_in(0),
	datab => d_in(1),
	datac => d_in(4),
	datad => truecrc_r(3),
	combout => \crc_error_3|y~0_combout\);

\crc_error_3|y~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \crc_error_3|y~1_combout\ = d_in(9) $ (d_in(2) $ (d_in(8) $ (d_in(13))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => d_in(9),
	datab => d_in(2),
	datac => d_in(8),
	datad => d_in(13),
	combout => \crc_error_3|y~1_combout\);

\varerror~4\ : cycloneiv_lcell_comb
-- Equation(s):
-- \varerror~4_combout\ = (\crc_encoding|m9to12|xor_final|y~0_combout\ & ((\crc_error_3|y~0_combout\ $ (\crc_error_3|y~1_combout\)) # (!\crc_error_0|y~1_combout\))) # (!\crc_encoding|m9to12|xor_final|y~0_combout\ & ((\crc_error_0|y~1_combout\) # 
-- (\crc_error_3|y~0_combout\ $ (\crc_error_3|y~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110111111110110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \crc_encoding|m9to12|xor_final|y~0_combout\,
	datab => \crc_error_0|y~1_combout\,
	datac => \crc_error_3|y~0_combout\,
	datad => \crc_error_3|y~1_combout\,
	combout => \varerror~4_combout\);

\error~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \error~2_combout\ = (\Equal24~0_combout\ & (!current(0) & ((\varerror~3_combout\) # (\varerror~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal24~0_combout\,
	datab => \varerror~3_combout\,
	datac => \varerror~4_combout\,
	datad => current(0),
	combout => \error~2_combout\);

\current~103\ : cycloneiv_lcell_comb
-- Equation(s):
-- \current~103_combout\ = (!\Equal9~0_combout\ & (!\truecrc_r~15_combout\ & (!\truecrc_r~4_combout\ & \current~34_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal9~0_combout\,
	datab => \truecrc_r~15_combout\,
	datac => \truecrc_r~4_combout\,
	datad => \current~34_combout\,
	combout => \current~103_combout\);

\error~4\ : cycloneiv_lcell_comb
-- Equation(s):
-- \error~4_combout\ = (current(1)) # ((current(2)) # ((!current(4)) # (!\Equal8~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => current(1),
	datab => current(2),
	datac => \Equal8~1_combout\,
	datad => current(4),
	combout => \error~4_combout\);

\error~3\ : cycloneiv_lcell_comb
-- Equation(s):
-- \error~3_combout\ = (\current~103_combout\ & ((\error~2_combout\) # ((\error~reg0_q\ & \error~4_combout\)))) # (!\current~103_combout\ & (\error~reg0_q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \error~reg0_q\,
	datab => \error~2_combout\,
	datac => \current~103_combout\,
	datad => \error~4_combout\,
	combout => \error~3_combout\);

\error~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \error~3_combout\,
	sclr => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \error~reg0_q\);

ww_error <= \error~output_o\;
END structure;


