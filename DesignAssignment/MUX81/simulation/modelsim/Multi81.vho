-- Copyright (C) 1991-2013 Altera Corporation
-- Your use of Altera Corporation's design tools, logic functions 
-- and other software and tools, and its AMPP partner logic 
-- functions, and any output files from any of the foregoing 
-- (including device programming or simulation files), and any 
-- associated documentation or information are expressly subject 
-- to the terms and conditions of the Altera Program License 
-- Subscription Agreement, Altera MegaCore Function License 
-- Agreement, or other applicable license agreement, including, 
-- without limitation, that your use is for the sole purpose of 
-- programming logic devices manufactured by Altera and sold by 
-- Altera or its authorized distributors.  Please refer to the 
-- applicable agreement for further details.

-- VENDOR "Altera"
-- PROGRAM "Quartus II 64-Bit"
-- VERSION "Version 13.1.0 Build 162 10/23/2013 SJ Web Edition"

-- DATE "05/12/2025 03:04:57"

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

ENTITY 	Multi81 IS
    PORT (
	F : OUT std_logic;
	S2 : IN std_logic;
	S1 : IN std_logic;
	S0 : IN std_logic;
	I4 : IN std_logic;
	I6 : IN std_logic;
	I7 : IN std_logic;
	I5 : IN std_logic;
	I0 : IN std_logic;
	I2 : IN std_logic;
	I3 : IN std_logic;
	I1 : IN std_logic
	);
END Multi81;

-- Design Ports Information
-- F	=>  Location: PIN_A11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S2	=>  Location: PIN_N8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- I7	=>  Location: PIN_K8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- I6	=>  Location: PIN_L5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S0	=>  Location: PIN_A6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- I5	=>  Location: PIN_J13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- I4	=>  Location: PIN_H10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S1	=>  Location: PIN_L7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- I3	=>  Location: PIN_M11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- I2	=>  Location: PIN_M9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- I1	=>  Location: PIN_G13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- I0	=>  Location: PIN_H13,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF Multi81 IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_F : std_logic;
SIGNAL ww_S2 : std_logic;
SIGNAL ww_S1 : std_logic;
SIGNAL ww_S0 : std_logic;
SIGNAL ww_I4 : std_logic;
SIGNAL ww_I6 : std_logic;
SIGNAL ww_I7 : std_logic;
SIGNAL ww_I5 : std_logic;
SIGNAL ww_I0 : std_logic;
SIGNAL ww_I2 : std_logic;
SIGNAL ww_I3 : std_logic;
SIGNAL ww_I1 : std_logic;
SIGNAL \F~output_o\ : std_logic;
SIGNAL \I2~input_o\ : std_logic;
SIGNAL \S2~input_o\ : std_logic;
SIGNAL \S0~input_o\ : std_logic;
SIGNAL \I3~input_o\ : std_logic;
SIGNAL \inst3~3_combout\ : std_logic;
SIGNAL \I0~input_o\ : std_logic;
SIGNAL \I1~input_o\ : std_logic;
SIGNAL \inst3~4_combout\ : std_logic;
SIGNAL \S1~input_o\ : std_logic;
SIGNAL \I6~input_o\ : std_logic;
SIGNAL \I7~input_o\ : std_logic;
SIGNAL \inst3~0_combout\ : std_logic;
SIGNAL \I4~input_o\ : std_logic;
SIGNAL \I5~input_o\ : std_logic;
SIGNAL \inst3~1_combout\ : std_logic;
SIGNAL \inst3~2_combout\ : std_logic;
SIGNAL \inst3~5_combout\ : std_logic;

BEGIN

F <= ww_F;
ww_S2 <= S2;
ww_S1 <= S1;
ww_S0 <= S0;
ww_I4 <= I4;
ww_I6 <= I6;
ww_I7 <= I7;
ww_I5 <= I5;
ww_I0 <= I0;
ww_I2 <= I2;
ww_I3 <= I3;
ww_I1 <= I1;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

-- Location: IOOBUF_X20_Y31_N2
\F~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst3~5_combout\,
	devoe => ww_devoe,
	o => \F~output_o\);

-- Location: IOIBUF_X24_Y0_N1
\I2~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_I2,
	o => \I2~input_o\);

-- Location: IOIBUF_X20_Y0_N8
\S2~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_S2,
	o => \S2~input_o\);

-- Location: IOIBUF_X10_Y31_N1
\S0~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_S0,
	o => \S0~input_o\);

-- Location: IOIBUF_X29_Y0_N8
\I3~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_I3,
	o => \I3~input_o\);

-- Location: LCCOMB_X23_Y20_N6
\inst3~3\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst3~3_combout\ = (!\S2~input_o\ & ((\S0~input_o\ & ((\I3~input_o\))) # (!\S0~input_o\ & (\I2~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \I2~input_o\,
	datab => \S2~input_o\,
	datac => \S0~input_o\,
	datad => \I3~input_o\,
	combout => \inst3~3_combout\);

-- Location: IOIBUF_X33_Y16_N15
\I0~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_I0,
	o => \I0~input_o\);

-- Location: IOIBUF_X33_Y16_N22
\I1~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_I1,
	o => \I1~input_o\);

-- Location: LCCOMB_X23_Y20_N24
\inst3~4\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst3~4_combout\ = (!\S2~input_o\ & ((\S0~input_o\ & ((\I1~input_o\))) # (!\S0~input_o\ & (\I0~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \I0~input_o\,
	datab => \S2~input_o\,
	datac => \S0~input_o\,
	datad => \I1~input_o\,
	combout => \inst3~4_combout\);

-- Location: IOIBUF_X14_Y0_N1
\S1~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_S1,
	o => \S1~input_o\);

-- Location: IOIBUF_X14_Y0_N8
\I6~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_I6,
	o => \I6~input_o\);

-- Location: IOIBUF_X22_Y0_N8
\I7~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_I7,
	o => \I7~input_o\);

-- Location: LCCOMB_X23_Y20_N0
\inst3~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst3~0_combout\ = (\S2~input_o\ & ((\S0~input_o\ & ((\I7~input_o\))) # (!\S0~input_o\ & (\I6~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \I6~input_o\,
	datab => \S0~input_o\,
	datac => \I7~input_o\,
	datad => \S2~input_o\,
	combout => \inst3~0_combout\);

-- Location: IOIBUF_X33_Y14_N1
\I4~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_I4,
	o => \I4~input_o\);

-- Location: IOIBUF_X33_Y15_N8
\I5~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_I5,
	o => \I5~input_o\);

-- Location: LCCOMB_X23_Y20_N2
\inst3~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst3~1_combout\ = (\S2~input_o\ & ((\S0~input_o\ & ((\I5~input_o\))) # (!\S0~input_o\ & (\I4~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \I4~input_o\,
	datab => \S2~input_o\,
	datac => \S0~input_o\,
	datad => \I5~input_o\,
	combout => \inst3~1_combout\);

-- Location: LCCOMB_X23_Y20_N12
\inst3~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst3~2_combout\ = (\S1~input_o\ & (\inst3~0_combout\)) # (!\S1~input_o\ & ((\inst3~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst3~0_combout\,
	datac => \S1~input_o\,
	datad => \inst3~1_combout\,
	combout => \inst3~2_combout\);

-- Location: LCCOMB_X23_Y20_N18
\inst3~5\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst3~5_combout\ = (\inst3~2_combout\) # ((\S1~input_o\ & (\inst3~3_combout\)) # (!\S1~input_o\ & ((\inst3~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3~3_combout\,
	datab => \inst3~4_combout\,
	datac => \S1~input_o\,
	datad => \inst3~2_combout\,
	combout => \inst3~5_combout\);

ww_F <= \F~output_o\;
END structure;


