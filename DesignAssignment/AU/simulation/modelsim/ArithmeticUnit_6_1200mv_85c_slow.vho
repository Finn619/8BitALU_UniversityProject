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

-- DATE "05/12/2025 01:59:13"

-- 
-- Device: Altera EP3C5F256C6 Package FBGA256
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY CYCLONEIII;
LIBRARY IEEE;
USE CYCLONEIII.CYCLONEIII_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	ArithmeticUnit IS
    PORT (
	V : OUT std_logic;
	S0 : IN std_logic;
	A : IN std_logic_vector(3 DOWNTO 0);
	B : IN std_logic_vector(3 DOWNTO 0);
	C : OUT std_logic;
	F : OUT std_logic_vector(3 DOWNTO 0)
	);
END ArithmeticUnit;

-- Design Ports Information
-- V	=>  Location: PIN_M10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- C	=>  Location: PIN_P6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- F[3]	=>  Location: PIN_P3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- F[2]	=>  Location: PIN_N3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- F[1]	=>  Location: PIN_R4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- F[0]	=>  Location: PIN_J11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[2]	=>  Location: PIN_K1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S0	=>  Location: PIN_C9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[2]	=>  Location: PIN_R1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[1]	=>  Location: PIN_P2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[1]	=>  Location: PIN_P1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[0]	=>  Location: PIN_K2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[0]	=>  Location: PIN_E7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[3]	=>  Location: PIN_G1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[3]	=>  Location: PIN_L4,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF ArithmeticUnit IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_V : std_logic;
SIGNAL ww_S0 : std_logic;
SIGNAL ww_A : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_B : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_C : std_logic;
SIGNAL ww_F : std_logic_vector(3 DOWNTO 0);
SIGNAL \V~output_o\ : std_logic;
SIGNAL \C~output_o\ : std_logic;
SIGNAL \F[3]~output_o\ : std_logic;
SIGNAL \F[2]~output_o\ : std_logic;
SIGNAL \F[1]~output_o\ : std_logic;
SIGNAL \F[0]~output_o\ : std_logic;
SIGNAL \B[2]~input_o\ : std_logic;
SIGNAL \S0~input_o\ : std_logic;
SIGNAL \inst5~combout\ : std_logic;
SIGNAL \A[0]~input_o\ : std_logic;
SIGNAL \B[0]~input_o\ : std_logic;
SIGNAL \inst|inst23~0_combout\ : std_logic;
SIGNAL \A[1]~input_o\ : std_logic;
SIGNAL \B[1]~input_o\ : std_logic;
SIGNAL \inst|inst5~combout\ : std_logic;
SIGNAL \A[2]~input_o\ : std_logic;
SIGNAL \inst|inst10~combout\ : std_logic;
SIGNAL \inst|inst28~0_combout\ : std_logic;
SIGNAL \inst|inst22~0_combout\ : std_logic;
SIGNAL \inst|inst8~0_combout\ : std_logic;
SIGNAL \inst|inst22~1_combout\ : std_logic;
SIGNAL \A[3]~input_o\ : std_logic;
SIGNAL \B[3]~input_o\ : std_logic;
SIGNAL \inst|inst18~combout\ : std_logic;
SIGNAL \inst|inst15~combout\ : std_logic;
SIGNAL \inst|inst12~0_combout\ : std_logic;
SIGNAL \inst|inst12~1_combout\ : std_logic;
SIGNAL \inst2~combout\ : std_logic;
SIGNAL \inst|inst21~0_combout\ : std_logic;
SIGNAL \inst|inst20~0_combout\ : std_logic;
SIGNAL \inst1~combout\ : std_logic;
SIGNAL \inst|inst16~combout\ : std_logic;
SIGNAL \inst|inst11~combout\ : std_logic;
SIGNAL \inst|inst6~combout\ : std_logic;
SIGNAL \inst|inst1~0_combout\ : std_logic;

BEGIN

V <= ww_V;
ww_S0 <= S0;
ww_A <= A;
ww_B <= B;
C <= ww_C;
F <= ww_F;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

-- Location: IOOBUF_X28_Y0_N2
\V~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst2~combout\,
	devoe => ww_devoe,
	o => \V~output_o\);

-- Location: IOOBUF_X7_Y0_N2
\C~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst1~combout\,
	devoe => ww_devoe,
	o => \C~output_o\);

-- Location: IOOBUF_X1_Y0_N16
\F[3]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|inst16~combout\,
	devoe => ww_devoe,
	o => \F[3]~output_o\);

-- Location: IOOBUF_X1_Y0_N23
\F[2]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|inst11~combout\,
	devoe => ww_devoe,
	o => \F[2]~output_o\);

-- Location: IOOBUF_X5_Y0_N23
\F[1]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|inst6~combout\,
	devoe => ww_devoe,
	o => \F[1]~output_o\);

-- Location: IOOBUF_X34_Y9_N23
\F[0]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|inst1~0_combout\,
	devoe => ww_devoe,
	o => \F[0]~output_o\);

-- Location: IOIBUF_X0_Y5_N22
\B[2]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(2),
	o => \B[2]~input_o\);

-- Location: IOIBUF_X18_Y24_N8
\S0~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_S0,
	o => \S0~input_o\);

-- Location: LCCOMB_X1_Y4_N6
inst5 : cycloneiii_lcell_comb
-- Equation(s):
-- \inst5~combout\ = \B[2]~input_o\ $ (\S0~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[2]~input_o\,
	datac => \S0~input_o\,
	combout => \inst5~combout\);

-- Location: IOIBUF_X0_Y8_N1
\A[0]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(0),
	o => \A[0]~input_o\);

-- Location: IOIBUF_X7_Y24_N1
\B[0]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(0),
	o => \B[0]~input_o\);

-- Location: LCCOMB_X22_Y3_N2
\inst|inst23~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|inst23~0_combout\ = (\A[0]~input_o\ & (\B[0]~input_o\ $ (\S0~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \A[0]~input_o\,
	datac => \B[0]~input_o\,
	datad => \S0~input_o\,
	combout => \inst|inst23~0_combout\);

-- Location: IOIBUF_X0_Y4_N15
\A[1]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(1),
	o => \A[1]~input_o\);

-- Location: IOIBUF_X0_Y4_N22
\B[1]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(1),
	o => \B[1]~input_o\);

-- Location: LCCOMB_X1_Y4_N2
\inst|inst5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|inst5~combout\ = \A[1]~input_o\ $ (\S0~input_o\ $ (\B[1]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010101011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[1]~input_o\,
	datac => \S0~input_o\,
	datad => \B[1]~input_o\,
	combout => \inst|inst5~combout\);

-- Location: IOIBUF_X0_Y8_N8
\A[2]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(2),
	o => \A[2]~input_o\);

-- Location: LCCOMB_X1_Y4_N8
\inst|inst10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|inst10~combout\ = \B[2]~input_o\ $ (\A[2]~input_o\ $ (\S0~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011010010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[2]~input_o\,
	datab => \A[2]~input_o\,
	datac => \S0~input_o\,
	combout => \inst|inst10~combout\);

-- Location: LCCOMB_X22_Y3_N0
\inst|inst28~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|inst28~0_combout\ = (\S0~input_o\ & (\A[0]~input_o\ $ (!\B[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \A[0]~input_o\,
	datac => \B[0]~input_o\,
	datad => \S0~input_o\,
	combout => \inst|inst28~0_combout\);

-- Location: LCCOMB_X1_Y4_N4
\inst|inst22~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|inst22~0_combout\ = (\inst|inst5~combout\ & (\inst|inst10~combout\ & ((\inst|inst23~0_combout\) # (\inst|inst28~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst23~0_combout\,
	datab => \inst|inst5~combout\,
	datac => \inst|inst10~combout\,
	datad => \inst|inst28~0_combout\,
	combout => \inst|inst22~0_combout\);

-- Location: LCCOMB_X1_Y4_N24
\inst|inst8~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|inst8~0_combout\ = (\A[1]~input_o\ & (\S0~input_o\ $ (\B[1]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[1]~input_o\,
	datac => \S0~input_o\,
	datad => \B[1]~input_o\,
	combout => \inst|inst8~0_combout\);

-- Location: LCCOMB_X1_Y4_N10
\inst|inst22~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|inst22~1_combout\ = (\inst|inst22~0_combout\) # ((\inst5~combout\ & ((\A[2]~input_o\) # (\inst|inst8~0_combout\))) # (!\inst5~combout\ & (\A[2]~input_o\ & \inst|inst8~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5~combout\,
	datab => \inst|inst22~0_combout\,
	datac => \A[2]~input_o\,
	datad => \inst|inst8~0_combout\,
	combout => \inst|inst22~1_combout\);

-- Location: IOIBUF_X0_Y18_N22
\A[3]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(3),
	o => \A[3]~input_o\);

-- Location: IOIBUF_X0_Y6_N22
\B[3]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(3),
	o => \B[3]~input_o\);

-- Location: LCCOMB_X1_Y4_N12
\inst|inst18\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|inst18~combout\ = (\A[3]~input_o\ & (\B[3]~input_o\ $ (\S0~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010100000101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[3]~input_o\,
	datab => \B[3]~input_o\,
	datac => \S0~input_o\,
	combout => \inst|inst18~combout\);

-- Location: LCCOMB_X1_Y4_N30
\inst|inst15\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|inst15~combout\ = \A[3]~input_o\ $ (\B[3]~input_o\ $ (\S0~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011010010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[3]~input_o\,
	datab => \B[3]~input_o\,
	datac => \S0~input_o\,
	combout => \inst|inst15~combout\);

-- Location: LCCOMB_X1_Y4_N16
\inst|inst12~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|inst12~0_combout\ = (\inst|inst15~combout\ & ((\inst|inst8~0_combout\ & ((\A[2]~input_o\) # (\inst5~combout\))) # (!\inst|inst8~0_combout\ & (\A[2]~input_o\ & \inst5~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst15~combout\,
	datab => \inst|inst8~0_combout\,
	datac => \A[2]~input_o\,
	datad => \inst5~combout\,
	combout => \inst|inst12~0_combout\);

-- Location: LCCOMB_X1_Y4_N26
\inst|inst12~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|inst12~1_combout\ = (\inst|inst18~combout\) # ((\inst|inst12~0_combout\) # ((\inst|inst22~0_combout\ & \inst|inst15~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst18~combout\,
	datab => \inst|inst22~0_combout\,
	datac => \inst|inst15~combout\,
	datad => \inst|inst12~0_combout\,
	combout => \inst|inst12~1_combout\);

-- Location: LCCOMB_X5_Y2_N24
inst2 : cycloneiii_lcell_comb
-- Equation(s):
-- \inst2~combout\ = \inst|inst22~1_combout\ $ (\inst|inst12~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|inst22~1_combout\,
	datad => \inst|inst12~1_combout\,
	combout => \inst2~combout\);

-- Location: LCCOMB_X1_Y4_N28
\inst|inst21~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|inst21~0_combout\ = (\inst|inst8~0_combout\) # ((\inst|inst5~combout\ & ((\inst|inst28~0_combout\) # (\inst|inst23~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst28~0_combout\,
	datab => \inst|inst8~0_combout\,
	datac => \inst|inst23~0_combout\,
	datad => \inst|inst5~combout\,
	combout => \inst|inst21~0_combout\);

-- Location: LCCOMB_X1_Y4_N22
\inst|inst20~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|inst20~0_combout\ = (\B[0]~input_o\ & (\A[0]~input_o\)) # (!\B[0]~input_o\ & ((\S0~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[0]~input_o\,
	datac => \S0~input_o\,
	datad => \B[0]~input_o\,
	combout => \inst|inst20~0_combout\);

-- Location: LCCOMB_X1_Y4_N0
inst1 : cycloneiii_lcell_comb
-- Equation(s):
-- \inst1~combout\ = (\inst|inst12~1_combout\) # ((\inst|inst21~0_combout\) # ((\inst|inst20~0_combout\) # (\inst|inst22~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst12~1_combout\,
	datab => \inst|inst21~0_combout\,
	datac => \inst|inst20~0_combout\,
	datad => \inst|inst22~1_combout\,
	combout => \inst1~combout\);

-- Location: LCCOMB_X1_Y4_N18
\inst|inst16\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|inst16~combout\ = \A[3]~input_o\ $ (\B[3]~input_o\ $ (\S0~input_o\ $ (\inst|inst22~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[3]~input_o\,
	datab => \B[3]~input_o\,
	datac => \S0~input_o\,
	datad => \inst|inst22~1_combout\,
	combout => \inst|inst16~combout\);

-- Location: LCCOMB_X1_Y4_N20
\inst|inst11\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|inst11~combout\ = \B[2]~input_o\ $ (\A[2]~input_o\ $ (\S0~input_o\ $ (\inst|inst21~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[2]~input_o\,
	datab => \A[2]~input_o\,
	datac => \S0~input_o\,
	datad => \inst|inst21~0_combout\,
	combout => \inst|inst11~combout\);

-- Location: LCCOMB_X1_Y4_N14
\inst|inst6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|inst6~combout\ = \inst|inst20~0_combout\ $ (\B[1]~input_o\ $ (\S0~input_o\ $ (\A[1]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst20~0_combout\,
	datab => \B[1]~input_o\,
	datac => \S0~input_o\,
	datad => \A[1]~input_o\,
	combout => \inst|inst6~combout\);

-- Location: LCCOMB_X22_Y3_N20
\inst|inst1~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|inst1~0_combout\ = \A[0]~input_o\ $ (\B[0]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \A[0]~input_o\,
	datac => \B[0]~input_o\,
	combout => \inst|inst1~0_combout\);

ww_V <= \V~output_o\;

ww_C <= \C~output_o\;

ww_F(3) <= \F[3]~output_o\;

ww_F(2) <= \F[2]~output_o\;

ww_F(1) <= \F[1]~output_o\;

ww_F(0) <= \F[0]~output_o\;
END structure;


