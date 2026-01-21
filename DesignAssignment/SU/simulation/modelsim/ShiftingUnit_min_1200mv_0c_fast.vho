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

-- DATE "05/12/2025 15:30:54"

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

ENTITY 	ShiftingUnit IS
    PORT (
	F : OUT std_logic_vector(3 DOWNTO 0);
	S2 : IN std_logic;
	S1 : IN std_logic;
	S0 : IN std_logic;
	A : IN std_logic_vector(3 DOWNTO 0)
	);
END ShiftingUnit;

-- Design Ports Information
-- F[3]	=>  Location: PIN_M9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- F[2]	=>  Location: PIN_N9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- F[1]	=>  Location: PIN_A12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- F[0]	=>  Location: PIN_N12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S2	=>  Location: PIN_N8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S1	=>  Location: PIN_N11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S0	=>  Location: PIN_L9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[3]	=>  Location: PIN_K8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[2]	=>  Location: PIN_N6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[0]	=>  Location: PIN_L7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[1]	=>  Location: PIN_K9,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF ShiftingUnit IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_F : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_S2 : std_logic;
SIGNAL ww_S1 : std_logic;
SIGNAL ww_S0 : std_logic;
SIGNAL ww_A : std_logic_vector(3 DOWNTO 0);
SIGNAL \F[3]~output_o\ : std_logic;
SIGNAL \F[2]~output_o\ : std_logic;
SIGNAL \F[1]~output_o\ : std_logic;
SIGNAL \F[0]~output_o\ : std_logic;
SIGNAL \S0~input_o\ : std_logic;
SIGNAL \S2~input_o\ : std_logic;
SIGNAL \S1~input_o\ : std_logic;
SIGNAL \inst1|inst3~0_combout\ : std_logic;
SIGNAL \A[3]~input_o\ : std_logic;
SIGNAL \A[2]~input_o\ : std_logic;
SIGNAL \inst|inst3~1_combout\ : std_logic;
SIGNAL \A[0]~input_o\ : std_logic;
SIGNAL \inst|inst3~2_combout\ : std_logic;
SIGNAL \inst|inst3~0_combout\ : std_logic;
SIGNAL \inst|inst3~3_combout\ : std_logic;
SIGNAL \inst3|inst3~2_combout\ : std_logic;
SIGNAL \A[1]~input_o\ : std_logic;
SIGNAL \inst3|inst3~1_combout\ : std_logic;
SIGNAL \inst3|inst3~0_combout\ : std_logic;
SIGNAL \inst3|inst3~3_combout\ : std_logic;
SIGNAL \inst2|inst3~0_combout\ : std_logic;
SIGNAL \inst2|inst3~1_combout\ : std_logic;
SIGNAL \inst1|inst3~3_combout\ : std_logic;
SIGNAL \inst1|inst3~2_combout\ : std_logic;
SIGNAL \inst1|inst3~1_combout\ : std_logic;
SIGNAL \inst1|inst3~4_combout\ : std_logic;

BEGIN

F <= ww_F;
ww_S2 <= S2;
ww_S1 <= S1;
ww_S0 <= S0;
ww_A <= A;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

-- Location: IOOBUF_X24_Y0_N2
\F[3]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|inst3~3_combout\,
	devoe => ww_devoe,
	o => \F[3]~output_o\);

-- Location: IOOBUF_X20_Y0_N2
\F[2]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst3|inst3~3_combout\,
	devoe => ww_devoe,
	o => \F[2]~output_o\);

-- Location: IOOBUF_X20_Y31_N9
\F[1]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst2|inst3~1_combout\,
	devoe => ww_devoe,
	o => \F[1]~output_o\);

-- Location: IOOBUF_X29_Y0_N2
\F[0]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst1|inst3~4_combout\,
	devoe => ww_devoe,
	o => \F[0]~output_o\);

-- Location: IOIBUF_X24_Y0_N8
\S0~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_S0,
	o => \S0~input_o\);

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

-- Location: IOIBUF_X26_Y0_N1
\S1~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_S1,
	o => \S1~input_o\);

-- Location: LCCOMB_X23_Y1_N10
\inst1|inst3~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst1|inst3~0_combout\ = (!\S2~input_o\ & \S1~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \S2~input_o\,
	datad => \S1~input_o\,
	combout => \inst1|inst3~0_combout\);

-- Location: IOIBUF_X22_Y0_N8
\A[3]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(3),
	o => \A[3]~input_o\);

-- Location: IOIBUF_X12_Y0_N1
\A[2]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(2),
	o => \A[2]~input_o\);

-- Location: LCCOMB_X23_Y1_N28
\inst|inst3~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst|inst3~1_combout\ = (\inst1|inst3~0_combout\ & ((\S0~input_o\ & ((\A[2]~input_o\))) # (!\S0~input_o\ & (\A[3]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|inst3~0_combout\,
	datab => \A[3]~input_o\,
	datac => \A[2]~input_o\,
	datad => \S0~input_o\,
	combout => \inst|inst3~1_combout\);

-- Location: IOIBUF_X14_Y0_N1
\A[0]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(0),
	o => \A[0]~input_o\);

-- Location: LCCOMB_X23_Y1_N22
\inst|inst3~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst|inst3~2_combout\ = (!\S1~input_o\ & ((\S2~input_o\ & ((\A[0]~input_o\))) # (!\S2~input_o\ & (\A[2]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[2]~input_o\,
	datab => \A[0]~input_o\,
	datac => \S2~input_o\,
	datad => \S1~input_o\,
	combout => \inst|inst3~2_combout\);

-- Location: LCCOMB_X23_Y1_N8
\inst|inst3~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst|inst3~0_combout\ = (\S2~input_o\ & (\S1~input_o\ & (\S0~input_o\ $ (!\A[3]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \S0~input_o\,
	datab => \A[3]~input_o\,
	datac => \S2~input_o\,
	datad => \S1~input_o\,
	combout => \inst|inst3~0_combout\);

-- Location: LCCOMB_X23_Y1_N0
\inst|inst3~3\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst|inst3~3_combout\ = (\inst|inst3~1_combout\) # ((\inst|inst3~0_combout\) # ((!\S0~input_o\ & \inst|inst3~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111011100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \S0~input_o\,
	datab => \inst|inst3~1_combout\,
	datac => \inst|inst3~2_combout\,
	datad => \inst|inst3~0_combout\,
	combout => \inst|inst3~3_combout\);

-- Location: LCCOMB_X23_Y1_N6
\inst3|inst3~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst3|inst3~2_combout\ = (\S2~input_o\ & \S0~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \S2~input_o\,
	datad => \S0~input_o\,
	combout => \inst3|inst3~2_combout\);

-- Location: IOIBUF_X22_Y0_N1
\A[1]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(1),
	o => \A[1]~input_o\);

-- Location: LCCOMB_X23_Y1_N20
\inst3|inst3~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst3|inst3~1_combout\ = (\S2~input_o\ & (!\A[2]~input_o\)) # (!\S2~input_o\ & ((\A[1]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111101010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[2]~input_o\,
	datac => \S2~input_o\,
	datad => \A[1]~input_o\,
	combout => \inst3|inst3~1_combout\);

-- Location: LCCOMB_X23_Y1_N18
\inst3|inst3~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst3|inst3~0_combout\ = \S0~input_o\ $ (\S2~input_o\ $ (\S1~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010101011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \S0~input_o\,
	datac => \S2~input_o\,
	datad => \S1~input_o\,
	combout => \inst3|inst3~0_combout\);

-- Location: LCCOMB_X23_Y1_N16
\inst3|inst3~3\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst3|inst3~3_combout\ = (\inst3|inst3~2_combout\ & (!\inst3|inst3~1_combout\ & ((\inst3|inst3~0_combout\)))) # (!\inst3|inst3~2_combout\ & ((\inst3|inst3~0_combout\ & ((\A[3]~input_o\))) # (!\inst3|inst3~0_combout\ & (\inst3|inst3~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111001001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|inst3~2_combout\,
	datab => \inst3|inst3~1_combout\,
	datac => \A[3]~input_o\,
	datad => \inst3|inst3~0_combout\,
	combout => \inst3|inst3~3_combout\);

-- Location: LCCOMB_X23_Y1_N2
\inst2|inst3~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst2|inst3~0_combout\ = (\S2~input_o\ & ((!\A[1]~input_o\))) # (!\S2~input_o\ & (\A[0]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \A[0]~input_o\,
	datac => \S2~input_o\,
	datad => \A[1]~input_o\,
	combout => \inst2|inst3~0_combout\);

-- Location: LCCOMB_X23_Y1_N4
\inst2|inst3~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst2|inst3~1_combout\ = (\inst3|inst3~2_combout\ & (\inst3|inst3~0_combout\ & ((!\inst2|inst3~0_combout\)))) # (!\inst3|inst3~2_combout\ & ((\inst3|inst3~0_combout\ & (\A[2]~input_o\)) # (!\inst3|inst3~0_combout\ & ((\inst2|inst3~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|inst3~2_combout\,
	datab => \inst3|inst3~0_combout\,
	datac => \A[2]~input_o\,
	datad => \inst2|inst3~0_combout\,
	combout => \inst2|inst3~1_combout\);

-- Location: LCCOMB_X23_Y1_N26
\inst1|inst3~3\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst1|inst3~3_combout\ = (\S0~input_o\ & ((\A[3]~input_o\))) # (!\S0~input_o\ & (\A[1]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \S0~input_o\,
	datab => \A[1]~input_o\,
	datad => \A[3]~input_o\,
	combout => \inst1|inst3~3_combout\);

-- Location: LCCOMB_X23_Y1_N24
\inst1|inst3~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst1|inst3~2_combout\ = (\A[1]~input_o\ & (!\S1~input_o\ & (\S0~input_o\ $ (\S2~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \S0~input_o\,
	datab => \A[1]~input_o\,
	datac => \S2~input_o\,
	datad => \S1~input_o\,
	combout => \inst1|inst3~2_combout\);

-- Location: LCCOMB_X23_Y1_N14
\inst1|inst3~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst1|inst3~1_combout\ = (\S2~input_o\ & (\S1~input_o\ & (\S0~input_o\ $ (!\A[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \S0~input_o\,
	datab => \A[0]~input_o\,
	datac => \S2~input_o\,
	datad => \S1~input_o\,
	combout => \inst1|inst3~1_combout\);

-- Location: LCCOMB_X23_Y1_N12
\inst1|inst3~4\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst1|inst3~4_combout\ = (\inst1|inst3~2_combout\) # ((\inst1|inst3~1_combout\) # ((\inst1|inst3~3_combout\ & \inst1|inst3~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|inst3~3_combout\,
	datab => \inst1|inst3~2_combout\,
	datac => \inst1|inst3~1_combout\,
	datad => \inst1|inst3~0_combout\,
	combout => \inst1|inst3~4_combout\);

ww_F(3) <= \F[3]~output_o\;

ww_F(2) <= \F[2]~output_o\;

ww_F(1) <= \F[1]~output_o\;

ww_F(0) <= \F[0]~output_o\;
END structure;


