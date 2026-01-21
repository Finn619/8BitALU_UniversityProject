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

-- DATE "05/12/2025 22:42:51"

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

ENTITY 	ALU IS
    PORT (
	Z : OUT std_logic;
	S : IN std_logic_vector(3 DOWNTO 0);
	A : IN std_logic_vector(3 DOWNTO 0);
	B : IN std_logic_vector(3 DOWNTO 0);
	F : OUT std_logic_vector(3 DOWNTO 0);
	C : OUT std_logic;
	V : OUT std_logic;
	N : OUT std_logic
	);
END ALU;

-- Design Ports Information
-- Z	=>  Location: PIN_K8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- F[3]	=>  Location: PIN_K13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- F[2]	=>  Location: PIN_M13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- F[1]	=>  Location: PIN_K9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- F[0]	=>  Location: PIN_N10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- C	=>  Location: PIN_N8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- V	=>  Location: PIN_N4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- N	=>  Location: PIN_N12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[2]	=>  Location: PIN_M7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[2]	=>  Location: PIN_N7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[1]	=>  Location: PIN_M11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[3]	=>  Location: PIN_L7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[0]	=>  Location: PIN_K10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[3]	=>  Location: PIN_M9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[0]	=>  Location: PIN_N9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[3]	=>  Location: PIN_N13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[2]	=>  Location: PIN_L11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[1]	=>  Location: PIN_L9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[1]	=>  Location: PIN_N6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[0]	=>  Location: PIN_H12,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF ALU IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_Z : std_logic;
SIGNAL ww_S : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_A : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_B : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_F : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_C : std_logic;
SIGNAL ww_V : std_logic;
SIGNAL ww_N : std_logic;
SIGNAL \Z~output_o\ : std_logic;
SIGNAL \F[3]~output_o\ : std_logic;
SIGNAL \F[2]~output_o\ : std_logic;
SIGNAL \F[1]~output_o\ : std_logic;
SIGNAL \F[0]~output_o\ : std_logic;
SIGNAL \C~output_o\ : std_logic;
SIGNAL \V~output_o\ : std_logic;
SIGNAL \N~output_o\ : std_logic;
SIGNAL \A[3]~input_o\ : std_logic;
SIGNAL \S[1]~input_o\ : std_logic;
SIGNAL \S[0]~input_o\ : std_logic;
SIGNAL \A[2]~input_o\ : std_logic;
SIGNAL \inst4|inst9~2_combout\ : std_logic;
SIGNAL \A[1]~input_o\ : std_logic;
SIGNAL \inst4|inst9~0_combout\ : std_logic;
SIGNAL \S[3]~input_o\ : std_logic;
SIGNAL \S[2]~input_o\ : std_logic;
SIGNAL \B[2]~input_o\ : std_logic;
SIGNAL \A[0]~input_o\ : std_logic;
SIGNAL \B[0]~input_o\ : std_logic;
SIGNAL \inst|inst|inst28~0_combout\ : std_logic;
SIGNAL \B[1]~input_o\ : std_logic;
SIGNAL \inst|inst|inst5~combout\ : std_logic;
SIGNAL \inst|inst|inst8~0_combout\ : std_logic;
SIGNAL \inst|inst|inst23~0_combout\ : std_logic;
SIGNAL \inst|inst|inst21~0_combout\ : std_logic;
SIGNAL \inst|inst|inst11~combout\ : std_logic;
SIGNAL \inst4|inst9~1_combout\ : std_logic;
SIGNAL \inst4|inst9~3_combout\ : std_logic;
SIGNAL \inst4|inst6~1_combout\ : std_logic;
SIGNAL \inst4|inst6~2_combout\ : std_logic;
SIGNAL \inst4|inst6~3_combout\ : std_logic;
SIGNAL \inst4|inst6~0_combout\ : std_logic;
SIGNAL \inst4|inst6~4_combout\ : std_logic;
SIGNAL \inst4|inst6~5_combout\ : std_logic;
SIGNAL \inst|inst|inst20~0_combout\ : std_logic;
SIGNAL \inst4|inst4~0_combout\ : std_logic;
SIGNAL \inst4|inst6~6_combout\ : std_logic;
SIGNAL \inst4|inst6~7_combout\ : std_logic;
SIGNAL \inst4|inst6~8_combout\ : std_logic;
SIGNAL \inst4|inst4~2_combout\ : std_logic;
SIGNAL \inst4|inst4~5_combout\ : std_logic;
SIGNAL \inst4|inst4~6_combout\ : std_logic;
SIGNAL \inst4|inst4~3_combout\ : std_logic;
SIGNAL \inst4|inst4~1_combout\ : std_logic;
SIGNAL \inst4|inst4~4_combout\ : std_logic;
SIGNAL \B[3]~input_o\ : std_logic;
SIGNAL \inst|inst|inst15~combout\ : std_logic;
SIGNAL \inst|inst5~combout\ : std_logic;
SIGNAL \inst|inst|inst10~combout\ : std_logic;
SIGNAL \inst|inst|inst12~0_combout\ : std_logic;
SIGNAL \inst|inst|inst22~0_combout\ : std_logic;
SIGNAL \inst4|inst12~3_combout\ : std_logic;
SIGNAL \inst4|inst12~4_combout\ : std_logic;
SIGNAL \inst4|inst12~2_combout\ : std_logic;
SIGNAL \inst4|inst12~6_combout\ : std_logic;
SIGNAL \inst4|inst12~5_combout\ : std_logic;
SIGNAL \inst5|inst1~0_combout\ : std_logic;
SIGNAL \inst|inst|inst18~combout\ : std_logic;
SIGNAL \inst|inst|inst12~1_combout\ : std_logic;
SIGNAL \inst|inst|inst12~2_combout\ : std_logic;
SIGNAL \inst5|inst8~0_combout\ : std_logic;
SIGNAL \inst5|inst8~1_combout\ : std_logic;
SIGNAL \inst5|inst14~0_combout\ : std_logic;
SIGNAL \inst5|inst15~2_combout\ : std_logic;

BEGIN

Z <= ww_Z;
ww_S <= S;
ww_A <= A;
ww_B <= B;
F <= ww_F;
C <= ww_C;
V <= ww_V;
N <= ww_N;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

-- Location: IOOBUF_X22_Y0_N9
\Z~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst5|inst1~0_combout\,
	devoe => ww_devoe,
	o => \Z~output_o\);

-- Location: IOOBUF_X33_Y15_N2
\F[3]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst4|inst12~5_combout\,
	devoe => ww_devoe,
	o => \F[3]~output_o\);

-- Location: IOOBUF_X33_Y10_N2
\F[2]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst4|inst9~3_combout\,
	devoe => ww_devoe,
	o => \F[2]~output_o\);

-- Location: IOOBUF_X22_Y0_N2
\F[1]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst4|inst6~8_combout\,
	devoe => ww_devoe,
	o => \F[1]~output_o\);

-- Location: IOOBUF_X26_Y0_N9
\F[0]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst4|inst4~4_combout\,
	devoe => ww_devoe,
	o => \F[0]~output_o\);

-- Location: IOOBUF_X20_Y0_N9
\C~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst5|inst8~1_combout\,
	devoe => ww_devoe,
	o => \C~output_o\);

-- Location: IOOBUF_X10_Y0_N9
\V~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst5|inst14~0_combout\,
	devoe => ww_devoe,
	o => \V~output_o\);

-- Location: IOOBUF_X29_Y0_N2
\N~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst5|inst15~2_combout\,
	devoe => ww_devoe,
	o => \N~output_o\);

-- Location: IOIBUF_X14_Y0_N1
\A[3]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(3),
	o => \A[3]~input_o\);

-- Location: IOIBUF_X29_Y0_N8
\S[1]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_S(1),
	o => \S[1]~input_o\);

-- Location: IOIBUF_X31_Y0_N8
\S[0]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_S(0),
	o => \S[0]~input_o\);

-- Location: IOIBUF_X16_Y0_N1
\A[2]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(2),
	o => \A[2]~input_o\);

-- Location: LCCOMB_X25_Y2_N10
\inst4|inst9~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst4|inst9~2_combout\ = (\S[1]~input_o\ & ((\S[0]~input_o\ $ (!\A[2]~input_o\)))) # (!\S[1]~input_o\ & (\A[3]~input_o\ & (!\S[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001000001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[3]~input_o\,
	datab => \S[1]~input_o\,
	datac => \S[0]~input_o\,
	datad => \A[2]~input_o\,
	combout => \inst4|inst9~2_combout\);

-- Location: IOIBUF_X24_Y0_N8
\A[1]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(1),
	o => \A[1]~input_o\);

-- Location: LCCOMB_X25_Y2_N14
\inst4|inst9~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst4|inst9~0_combout\ = (\A[3]~input_o\ & ((\A[1]~input_o\) # (\S[1]~input_o\ $ (\S[0]~input_o\)))) # (!\A[3]~input_o\ & (\A[1]~input_o\ & (\S[1]~input_o\ $ (!\S[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101100101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[3]~input_o\,
	datab => \S[1]~input_o\,
	datac => \S[0]~input_o\,
	datad => \A[1]~input_o\,
	combout => \inst4|inst9~0_combout\);

-- Location: IOIBUF_X24_Y0_N1
\S[3]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_S(3),
	o => \S[3]~input_o\);

-- Location: IOIBUF_X16_Y0_N8
\S[2]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_S(2),
	o => \S[2]~input_o\);

-- Location: IOIBUF_X31_Y0_N1
\B[2]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(2),
	o => \B[2]~input_o\);

-- Location: IOIBUF_X20_Y0_N1
\A[0]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(0),
	o => \A[0]~input_o\);

-- Location: IOIBUF_X33_Y14_N8
\B[0]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(0),
	o => \B[0]~input_o\);

-- Location: LCCOMB_X23_Y2_N16
\inst|inst|inst28~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst|inst|inst28~0_combout\ = (\S[0]~input_o\ & (\A[0]~input_o\ $ (!\B[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \A[0]~input_o\,
	datac => \S[0]~input_o\,
	datad => \B[0]~input_o\,
	combout => \inst|inst|inst28~0_combout\);

-- Location: IOIBUF_X12_Y0_N1
\B[1]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(1),
	o => \B[1]~input_o\);

-- Location: LCCOMB_X24_Y2_N4
\inst|inst|inst5\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst|inst|inst5~combout\ = \A[1]~input_o\ $ (\B[1]~input_o\ $ (\S[0]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \A[1]~input_o\,
	datac => \B[1]~input_o\,
	datad => \S[0]~input_o\,
	combout => \inst|inst|inst5~combout\);

-- Location: LCCOMB_X24_Y2_N26
\inst|inst|inst8~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst|inst|inst8~0_combout\ = (\A[1]~input_o\ & (\B[1]~input_o\ $ (\S[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \A[1]~input_o\,
	datac => \B[1]~input_o\,
	datad => \S[0]~input_o\,
	combout => \inst|inst|inst8~0_combout\);

-- Location: LCCOMB_X23_Y2_N2
\inst|inst|inst23~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst|inst|inst23~0_combout\ = (\A[0]~input_o\ & (\S[0]~input_o\ $ (\B[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \A[0]~input_o\,
	datac => \S[0]~input_o\,
	datad => \B[0]~input_o\,
	combout => \inst|inst|inst23~0_combout\);

-- Location: LCCOMB_X24_Y2_N22
\inst|inst|inst21~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst|inst|inst21~0_combout\ = (\inst|inst|inst8~0_combout\) # ((\inst|inst|inst5~combout\ & ((\inst|inst|inst28~0_combout\) # (\inst|inst|inst23~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst|inst28~0_combout\,
	datab => \inst|inst|inst5~combout\,
	datac => \inst|inst|inst8~0_combout\,
	datad => \inst|inst|inst23~0_combout\,
	combout => \inst|inst|inst21~0_combout\);

-- Location: LCCOMB_X24_Y2_N24
\inst|inst|inst11\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst|inst|inst11~combout\ = \A[2]~input_o\ $ (\B[2]~input_o\ $ (\inst|inst|inst21~0_combout\ $ (\S[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[2]~input_o\,
	datab => \B[2]~input_o\,
	datac => \inst|inst|inst21~0_combout\,
	datad => \S[0]~input_o\,
	combout => \inst|inst|inst11~combout\);

-- Location: LCCOMB_X25_Y2_N8
\inst4|inst9~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst4|inst9~1_combout\ = (\S[3]~input_o\ & (((\S[2]~input_o\)))) # (!\S[3]~input_o\ & ((\S[2]~input_o\ & (!\A[2]~input_o\)) # (!\S[2]~input_o\ & ((\inst|inst|inst11~combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101001111010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[2]~input_o\,
	datab => \S[3]~input_o\,
	datac => \S[2]~input_o\,
	datad => \inst|inst|inst11~combout\,
	combout => \inst4|inst9~1_combout\);

-- Location: LCCOMB_X25_Y2_N12
\inst4|inst9~3\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst4|inst9~3_combout\ = (\inst4|inst9~1_combout\ & ((\inst4|inst9~2_combout\) # ((!\S[3]~input_o\)))) # (!\inst4|inst9~1_combout\ & (((\inst4|inst9~0_combout\ & \S[3]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|inst9~2_combout\,
	datab => \inst4|inst9~0_combout\,
	datac => \inst4|inst9~1_combout\,
	datad => \S[3]~input_o\,
	combout => \inst4|inst9~3_combout\);

-- Location: LCCOMB_X23_Y2_N28
\inst4|inst6~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst4|inst6~1_combout\ = (!\S[0]~input_o\ & \S[3]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \S[0]~input_o\,
	datac => \S[3]~input_o\,
	combout => \inst4|inst6~1_combout\);

-- Location: LCCOMB_X25_Y2_N22
\inst4|inst6~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst4|inst6~2_combout\ = (\A[2]~input_o\ & (\inst4|inst6~1_combout\ & (\S[2]~input_o\ $ (\S[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[2]~input_o\,
	datab => \inst4|inst6~1_combout\,
	datac => \S[2]~input_o\,
	datad => \S[1]~input_o\,
	combout => \inst4|inst6~2_combout\);

-- Location: LCCOMB_X23_Y2_N12
\inst4|inst6~3\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst4|inst6~3_combout\ = (\S[0]~input_o\ & ((\S[1]~input_o\ & (\A[0]~input_o\)) # (!\S[1]~input_o\ & ((\A[2]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \S[1]~input_o\,
	datab => \A[0]~input_o\,
	datac => \S[0]~input_o\,
	datad => \A[2]~input_o\,
	combout => \inst4|inst6~3_combout\);

-- Location: LCCOMB_X23_Y2_N24
\inst4|inst6~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst4|inst6~0_combout\ = (!\S[2]~input_o\ & \S[3]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \S[2]~input_o\,
	datac => \S[3]~input_o\,
	combout => \inst4|inst6~0_combout\);

-- Location: LCCOMB_X23_Y2_N22
\inst4|inst6~4\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst4|inst6~4_combout\ = (\S[1]~input_o\ & (((!\A[1]~input_o\ & \S[2]~input_o\)))) # (!\S[1]~input_o\ & (\A[0]~input_o\ & ((!\S[2]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \S[1]~input_o\,
	datab => \A[0]~input_o\,
	datac => \A[1]~input_o\,
	datad => \S[2]~input_o\,
	combout => \inst4|inst6~4_combout\);

-- Location: LCCOMB_X23_Y2_N0
\inst4|inst6~5\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst4|inst6~5_combout\ = (\inst4|inst6~3_combout\ & ((\inst4|inst6~0_combout\) # ((\inst4|inst6~4_combout\ & \inst4|inst6~1_combout\)))) # (!\inst4|inst6~3_combout\ & (((\inst4|inst6~4_combout\ & \inst4|inst6~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|inst6~3_combout\,
	datab => \inst4|inst6~0_combout\,
	datac => \inst4|inst6~4_combout\,
	datad => \inst4|inst6~1_combout\,
	combout => \inst4|inst6~5_combout\);

-- Location: LCCOMB_X23_Y2_N18
\inst|inst|inst20~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst|inst|inst20~0_combout\ = (\B[0]~input_o\ & (\A[0]~input_o\)) # (!\B[0]~input_o\ & ((\S[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \A[0]~input_o\,
	datac => \S[0]~input_o\,
	datad => \B[0]~input_o\,
	combout => \inst|inst|inst20~0_combout\);

-- Location: LCCOMB_X25_Y2_N2
\inst4|inst4~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst4|inst4~0_combout\ = (!\S[3]~input_o\ & !\S[2]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \S[3]~input_o\,
	datac => \S[2]~input_o\,
	combout => \inst4|inst4~0_combout\);

-- Location: LCCOMB_X25_Y2_N24
\inst4|inst6~6\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst4|inst6~6_combout\ = (\inst4|inst6~5_combout\) # ((\inst4|inst4~0_combout\ & (\inst|inst|inst5~combout\ $ (\inst|inst|inst20~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|inst6~5_combout\,
	datab => \inst|inst|inst5~combout\,
	datac => \inst|inst|inst20~0_combout\,
	datad => \inst4|inst4~0_combout\,
	combout => \inst4|inst6~6_combout\);

-- Location: LCCOMB_X25_Y2_N18
\inst4|inst6~7\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst4|inst6~7_combout\ = (\A[1]~input_o\ & (\S[3]~input_o\ & (\S[0]~input_o\ & \S[1]~input_o\))) # (!\A[1]~input_o\ & (!\S[3]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001000100010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[1]~input_o\,
	datab => \S[3]~input_o\,
	datac => \S[0]~input_o\,
	datad => \S[1]~input_o\,
	combout => \inst4|inst6~7_combout\);

-- Location: LCCOMB_X25_Y2_N20
\inst4|inst6~8\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst4|inst6~8_combout\ = (\inst4|inst6~2_combout\) # ((\inst4|inst6~6_combout\) # ((\S[2]~input_o\ & \inst4|inst6~7_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|inst6~2_combout\,
	datab => \inst4|inst6~6_combout\,
	datac => \S[2]~input_o\,
	datad => \inst4|inst6~7_combout\,
	combout => \inst4|inst6~8_combout\);

-- Location: LCCOMB_X23_Y2_N6
\inst4|inst4~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst4|inst4~2_combout\ = (\S[1]~input_o\ & \S[3]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \S[1]~input_o\,
	datac => \S[3]~input_o\,
	combout => \inst4|inst4~2_combout\);

-- Location: LCCOMB_X23_Y2_N4
\inst4|inst4~5\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst4|inst4~5_combout\ = (\S[1]~input_o\ & (\S[2]~input_o\ & (\A[0]~input_o\ $ (!\S[0]~input_o\)))) # (!\S[1]~input_o\ & ((\S[0]~input_o\ $ (\S[2]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000011101010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \S[1]~input_o\,
	datab => \A[0]~input_o\,
	datac => \S[0]~input_o\,
	datad => \S[2]~input_o\,
	combout => \inst4|inst4~5_combout\);

-- Location: LCCOMB_X23_Y2_N14
\inst4|inst4~6\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst4|inst4~6_combout\ = (\S[3]~input_o\ & (\inst4|inst4~5_combout\ & ((\S[1]~input_o\) # (\A[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \S[1]~input_o\,
	datab => \A[1]~input_o\,
	datac => \S[3]~input_o\,
	datad => \inst4|inst4~5_combout\,
	combout => \inst4|inst4~6_combout\);

-- Location: LCCOMB_X23_Y2_N8
\inst4|inst4~3\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst4|inst4~3_combout\ = (!\S[2]~input_o\ & ((\S[0]~input_o\ & (\A[3]~input_o\)) # (!\S[0]~input_o\ & ((\A[1]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[3]~input_o\,
	datab => \A[1]~input_o\,
	datac => \S[0]~input_o\,
	datad => \S[2]~input_o\,
	combout => \inst4|inst4~3_combout\);

-- Location: LCCOMB_X23_Y2_N20
\inst4|inst4~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst4|inst4~1_combout\ = (!\S[3]~input_o\ & (\A[0]~input_o\ $ (((\S[2]~input_o\) # (\B[0]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100000110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \S[2]~input_o\,
	datab => \A[0]~input_o\,
	datac => \S[3]~input_o\,
	datad => \B[0]~input_o\,
	combout => \inst4|inst4~1_combout\);

-- Location: LCCOMB_X23_Y2_N10
\inst4|inst4~4\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst4|inst4~4_combout\ = (\inst4|inst4~6_combout\) # ((\inst4|inst4~1_combout\) # ((\inst4|inst4~2_combout\ & \inst4|inst4~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|inst4~2_combout\,
	datab => \inst4|inst4~6_combout\,
	datac => \inst4|inst4~3_combout\,
	datad => \inst4|inst4~1_combout\,
	combout => \inst4|inst4~4_combout\);

-- Location: IOIBUF_X33_Y10_N8
\B[3]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(3),
	o => \B[3]~input_o\);

-- Location: LCCOMB_X24_Y2_N8
\inst|inst|inst15\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst|inst|inst15~combout\ = \A[3]~input_o\ $ (\B[3]~input_o\ $ (\S[0]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \A[3]~input_o\,
	datac => \B[3]~input_o\,
	datad => \S[0]~input_o\,
	combout => \inst|inst|inst15~combout\);

-- Location: LCCOMB_X24_Y2_N16
\inst|inst5\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst|inst5~combout\ = \B[2]~input_o\ $ (\S[0]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \B[2]~input_o\,
	datad => \S[0]~input_o\,
	combout => \inst|inst5~combout\);

-- Location: LCCOMB_X24_Y2_N10
\inst|inst|inst10\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst|inst|inst10~combout\ = \A[2]~input_o\ $ (\B[2]~input_o\ $ (\S[0]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100101100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[2]~input_o\,
	datab => \B[2]~input_o\,
	datad => \S[0]~input_o\,
	combout => \inst|inst|inst10~combout\);

-- Location: LCCOMB_X24_Y2_N6
\inst|inst|inst12~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst|inst|inst12~0_combout\ = (\inst|inst|inst5~combout\ & (\inst|inst|inst10~combout\ & ((\inst|inst|inst23~0_combout\) # (\inst|inst|inst28~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst|inst23~0_combout\,
	datab => \inst|inst|inst5~combout\,
	datac => \inst|inst|inst28~0_combout\,
	datad => \inst|inst|inst10~combout\,
	combout => \inst|inst|inst12~0_combout\);

-- Location: LCCOMB_X24_Y2_N20
\inst|inst|inst22~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst|inst|inst22~0_combout\ = (\inst|inst|inst12~0_combout\) # ((\A[2]~input_o\ & ((\inst|inst5~combout\) # (\inst|inst|inst8~0_combout\))) # (!\A[2]~input_o\ & (\inst|inst5~combout\ & \inst|inst|inst8~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[2]~input_o\,
	datab => \inst|inst5~combout\,
	datac => \inst|inst|inst8~0_combout\,
	datad => \inst|inst|inst12~0_combout\,
	combout => \inst|inst|inst22~0_combout\);

-- Location: LCCOMB_X23_Y2_N26
\inst4|inst12~3\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst4|inst12~3_combout\ = (\S[3]~input_o\ & (\S[1]~input_o\ & (\S[0]~input_o\ $ (!\A[3]~input_o\)))) # (!\S[3]~input_o\ & (((!\A[3]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000001110101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \S[3]~input_o\,
	datab => \S[0]~input_o\,
	datac => \S[1]~input_o\,
	datad => \A[3]~input_o\,
	combout => \inst4|inst12~3_combout\);

-- Location: LCCOMB_X23_Y2_N30
\inst4|inst12~4\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst4|inst12~4_combout\ = (\inst4|inst12~3_combout\) # ((\inst4|inst6~1_combout\ & (!\S[1]~input_o\ & \A[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|inst12~3_combout\,
	datab => \inst4|inst6~1_combout\,
	datac => \S[1]~input_o\,
	datad => \A[0]~input_o\,
	combout => \inst4|inst12~4_combout\);

-- Location: LCCOMB_X25_Y2_N16
\inst4|inst12~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst4|inst12~2_combout\ = (\S[1]~input_o\ & ((\S[0]~input_o\ & ((\A[2]~input_o\))) # (!\S[0]~input_o\ & (\A[3]~input_o\)))) # (!\S[1]~input_o\ & (((!\S[0]~input_o\ & \A[2]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[3]~input_o\,
	datab => \S[1]~input_o\,
	datac => \S[0]~input_o\,
	datad => \A[2]~input_o\,
	combout => \inst4|inst12~2_combout\);

-- Location: LCCOMB_X25_Y2_N4
\inst4|inst12~6\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst4|inst12~6_combout\ = (\S[2]~input_o\ & (\inst4|inst12~4_combout\)) # (!\S[2]~input_o\ & (((\S[3]~input_o\ & \inst4|inst12~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \S[2]~input_o\,
	datab => \inst4|inst12~4_combout\,
	datac => \S[3]~input_o\,
	datad => \inst4|inst12~2_combout\,
	combout => \inst4|inst12~6_combout\);

-- Location: LCCOMB_X25_Y2_N28
\inst4|inst12~5\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst4|inst12~5_combout\ = (\inst4|inst12~6_combout\) # ((\inst4|inst4~0_combout\ & (\inst|inst|inst15~combout\ $ (\inst|inst|inst22~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst|inst15~combout\,
	datab => \inst|inst|inst22~0_combout\,
	datac => \inst4|inst12~6_combout\,
	datad => \inst4|inst4~0_combout\,
	combout => \inst4|inst12~5_combout\);

-- Location: LCCOMB_X25_Y2_N30
\inst5|inst1~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst5|inst1~0_combout\ = (!\inst4|inst9~3_combout\ & (!\inst4|inst6~8_combout\ & (!\inst4|inst4~4_combout\ & !\inst4|inst12~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|inst9~3_combout\,
	datab => \inst4|inst6~8_combout\,
	datac => \inst4|inst4~4_combout\,
	datad => \inst4|inst12~5_combout\,
	combout => \inst5|inst1~0_combout\);

-- Location: LCCOMB_X24_Y2_N0
\inst|inst|inst18\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst|inst|inst18~combout\ = (\A[3]~input_o\ & (\B[3]~input_o\ $ (\S[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \A[3]~input_o\,
	datac => \B[3]~input_o\,
	datad => \S[0]~input_o\,
	combout => \inst|inst|inst18~combout\);

-- Location: LCCOMB_X24_Y2_N2
\inst|inst|inst12~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst|inst|inst12~1_combout\ = (\inst|inst|inst15~combout\ & ((\inst|inst|inst8~0_combout\ & ((\A[2]~input_o\) # (\inst|inst5~combout\))) # (!\inst|inst|inst8~0_combout\ & (\A[2]~input_o\ & \inst|inst5~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst|inst8~0_combout\,
	datab => \A[2]~input_o\,
	datac => \inst|inst|inst15~combout\,
	datad => \inst|inst5~combout\,
	combout => \inst|inst|inst12~1_combout\);

-- Location: LCCOMB_X24_Y2_N28
\inst|inst|inst12~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst|inst|inst12~2_combout\ = (\inst|inst|inst18~combout\) # ((\inst|inst|inst12~1_combout\) # ((\inst|inst|inst12~0_combout\ & \inst|inst|inst15~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst|inst12~0_combout\,
	datab => \inst|inst|inst18~combout\,
	datac => \inst|inst|inst15~combout\,
	datad => \inst|inst|inst12~1_combout\,
	combout => \inst|inst|inst12~2_combout\);

-- Location: LCCOMB_X24_Y2_N14
\inst5|inst8~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst5|inst8~0_combout\ = (\inst|inst|inst21~0_combout\) # (\inst|inst|inst12~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|inst|inst21~0_combout\,
	datad => \inst|inst|inst12~2_combout\,
	combout => \inst5|inst8~0_combout\);

-- Location: LCCOMB_X25_Y2_N0
\inst5|inst8~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst5|inst8~1_combout\ = (\inst4|inst4~0_combout\ & ((\inst5|inst8~0_combout\) # ((\inst|inst|inst22~0_combout\) # (\inst|inst|inst20~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|inst8~0_combout\,
	datab => \inst|inst|inst22~0_combout\,
	datac => \inst|inst|inst20~0_combout\,
	datad => \inst4|inst4~0_combout\,
	combout => \inst5|inst8~1_combout\);

-- Location: LCCOMB_X25_Y2_N26
\inst5|inst14~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst5|inst14~0_combout\ = (\S[1]~input_o\ & (\inst4|inst4~0_combout\ & (\inst|inst|inst22~0_combout\ $ (\inst|inst|inst12~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \S[1]~input_o\,
	datab => \inst|inst|inst22~0_combout\,
	datac => \inst|inst|inst12~2_combout\,
	datad => \inst4|inst4~0_combout\,
	combout => \inst5|inst14~0_combout\);

-- Location: LCCOMB_X25_Y2_N6
\inst5|inst15~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst5|inst15~2_combout\ = (!\S[2]~input_o\ & (\inst4|inst12~5_combout\ & (!\S[3]~input_o\ & \S[1]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \S[2]~input_o\,
	datab => \inst4|inst12~5_combout\,
	datac => \S[3]~input_o\,
	datad => \S[1]~input_o\,
	combout => \inst5|inst15~2_combout\);

ww_Z <= \Z~output_o\;

ww_F(3) <= \F[3]~output_o\;

ww_F(2) <= \F[2]~output_o\;

ww_F(1) <= \F[1]~output_o\;

ww_F(0) <= \F[0]~output_o\;

ww_C <= \C~output_o\;

ww_V <= \V~output_o\;

ww_N <= \N~output_o\;
END structure;


