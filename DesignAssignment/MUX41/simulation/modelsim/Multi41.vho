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

-- DATE "05/12/2025 02:33:37"

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

ENTITY 	Multi41 IS
    PORT (
	F : OUT std_logic;
	S1 : IN std_logic;
	S0 : IN std_logic;
	I0 : IN std_logic;
	I2 : IN std_logic;
	I3 : IN std_logic;
	I1 : IN std_logic
	);
END Multi41;

-- Design Ports Information
-- F	=>  Location: PIN_M4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- I2	=>  Location: PIN_M6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S1	=>  Location: PIN_N4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- I1	=>  Location: PIN_C6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S0	=>  Location: PIN_L4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- I0	=>  Location: PIN_N10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- I3	=>  Location: PIN_L5,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF Multi41 IS
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
SIGNAL ww_S1 : std_logic;
SIGNAL ww_S0 : std_logic;
SIGNAL ww_I0 : std_logic;
SIGNAL ww_I2 : std_logic;
SIGNAL ww_I3 : std_logic;
SIGNAL ww_I1 : std_logic;
SIGNAL \F~output_o\ : std_logic;
SIGNAL \I3~input_o\ : std_logic;
SIGNAL \S0~input_o\ : std_logic;
SIGNAL \S1~input_o\ : std_logic;
SIGNAL \I1~input_o\ : std_logic;
SIGNAL \I0~input_o\ : std_logic;
SIGNAL \inst4~0_combout\ : std_logic;
SIGNAL \I2~input_o\ : std_logic;
SIGNAL \inst4~1_combout\ : std_logic;

BEGIN

F <= ww_F;
ww_S1 <= S1;
ww_S0 <= S0;
ww_I0 <= I0;
ww_I2 <= I2;
ww_I3 <= I3;
ww_I1 <= I1;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

-- Location: IOOBUF_X8_Y0_N2
\F~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst4~1_combout\,
	devoe => ww_devoe,
	o => \F~output_o\);

-- Location: IOIBUF_X14_Y0_N8
\I3~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_I3,
	o => \I3~input_o\);

-- Location: IOIBUF_X8_Y0_N8
\S0~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_S0,
	o => \S0~input_o\);

-- Location: IOIBUF_X10_Y0_N8
\S1~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_S1,
	o => \S1~input_o\);

-- Location: IOIBUF_X14_Y31_N1
\I1~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_I1,
	o => \I1~input_o\);

-- Location: IOIBUF_X26_Y0_N8
\I0~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_I0,
	o => \I0~input_o\);

-- Location: LCCOMB_X11_Y1_N0
\inst4~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst4~0_combout\ = (\S0~input_o\ & ((\S1~input_o\) # ((\I1~input_o\)))) # (!\S0~input_o\ & (!\S1~input_o\ & ((\I0~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \S0~input_o\,
	datab => \S1~input_o\,
	datac => \I1~input_o\,
	datad => \I0~input_o\,
	combout => \inst4~0_combout\);

-- Location: IOIBUF_X12_Y0_N8
\I2~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_I2,
	o => \I2~input_o\);

-- Location: LCCOMB_X11_Y1_N2
\inst4~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst4~1_combout\ = (\inst4~0_combout\ & ((\I3~input_o\) # ((!\S1~input_o\)))) # (!\inst4~0_combout\ & (((\I2~input_o\ & \S1~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \I3~input_o\,
	datab => \inst4~0_combout\,
	datac => \I2~input_o\,
	datad => \S1~input_o\,
	combout => \inst4~1_combout\);

ww_F <= \F~output_o\;
END structure;


