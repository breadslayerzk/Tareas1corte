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

-- DATE "02/27/2024 20:06:54"

-- 
-- Device: Altera EP3C16F484C6 Package FBGA484
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY CYCLONEIII;
LIBRARY IEEE;
USE CYCLONEIII.CYCLONEIII_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	restador IS
    PORT (
	a : IN std_logic_vector(1 DOWNTO 0);
	b : IN std_logic_vector(1 DOWNTO 0);
	f : OUT std_logic_vector(1 DOWNTO 0);
	g : OUT std_logic
	);
END restador;

-- Design Ports Information
-- f[0]	=>  Location: PIN_P1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- f[1]	=>  Location: PIN_Y4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- g	=>  Location: PIN_J2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a[0]	=>  Location: PIN_N5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- b[0]	=>  Location: PIN_P4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a[1]	=>  Location: PIN_R1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- b[1]	=>  Location: PIN_P2,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF restador IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_a : std_logic_vector(1 DOWNTO 0);
SIGNAL ww_b : std_logic_vector(1 DOWNTO 0);
SIGNAL ww_f : std_logic_vector(1 DOWNTO 0);
SIGNAL ww_g : std_logic;
SIGNAL \f[0]~output_o\ : std_logic;
SIGNAL \f[1]~output_o\ : std_logic;
SIGNAL \g~output_o\ : std_logic;
SIGNAL \a[0]~input_o\ : std_logic;
SIGNAL \b[0]~input_o\ : std_logic;
SIGNAL \Add0~0_combout\ : std_logic;
SIGNAL \b[1]~input_o\ : std_logic;
SIGNAL \a[1]~input_o\ : std_logic;
SIGNAL \f[1]~0_combout\ : std_logic;
SIGNAL \f[0]$latch~combout\ : std_logic;
SIGNAL \Add0~1_combout\ : std_logic;
SIGNAL \f[1]$latch~combout\ : std_logic;
SIGNAL \comb~0_combout\ : std_logic;
SIGNAL \LessThan0~0_combout\ : std_logic;
SIGNAL \g$latch~combout\ : std_logic;

BEGIN

ww_a <= a;
ww_b <= b;
f <= ww_f;
g <= ww_g;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

-- Location: IOOBUF_X0_Y11_N23
\f[0]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \f[0]$latch~combout\,
	devoe => ww_devoe,
	o => \f[0]~output_o\);

-- Location: IOOBUF_X3_Y0_N9
\f[1]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \f[1]$latch~combout\,
	devoe => ww_devoe,
	o => \f[1]~output_o\);

-- Location: IOOBUF_X0_Y20_N2
\g~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \g$latch~combout\,
	devoe => ww_devoe,
	o => \g~output_o\);

-- Location: IOIBUF_X0_Y10_N15
\a[0]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a(0),
	o => \a[0]~input_o\);

-- Location: IOIBUF_X0_Y10_N22
\b[0]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_b(0),
	o => \b[0]~input_o\);

-- Location: LCCOMB_X1_Y10_N0
\Add0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add0~0_combout\ = \a[0]~input_o\ $ (\b[0]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a[0]~input_o\,
	datad => \b[0]~input_o\,
	combout => \Add0~0_combout\);

-- Location: IOIBUF_X0_Y11_N15
\b[1]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_b(1),
	o => \b[1]~input_o\);

-- Location: IOIBUF_X0_Y10_N8
\a[1]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a(1),
	o => \a[1]~input_o\);

-- Location: LCCOMB_X1_Y10_N2
\f[1]~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \f[1]~0_combout\ = (\a[0]~input_o\ & ((\b[1]~input_o\ $ (\a[1]~input_o\)) # (!\b[0]~input_o\))) # (!\a[0]~input_o\ & ((\b[0]~input_o\) # (\b[1]~input_o\ $ (\a[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110111111110110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a[0]~input_o\,
	datab => \b[0]~input_o\,
	datac => \b[1]~input_o\,
	datad => \a[1]~input_o\,
	combout => \f[1]~0_combout\);

-- Location: LCCOMB_X1_Y10_N10
\f[0]$latch\ : cycloneiii_lcell_comb
-- Equation(s):
-- \f[0]$latch~combout\ = (\Add0~0_combout\ & \f[1]~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Add0~0_combout\,
	datac => \f[1]~0_combout\,
	datad => \f[0]$latch~combout\,
	combout => \f[0]$latch~combout\);

-- Location: LCCOMB_X1_Y10_N12
\Add0~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add0~1_combout\ = \b[1]~input_o\ $ (\a[1]~input_o\ $ (((\a[0]~input_o\) # (!\b[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011010001001011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a[0]~input_o\,
	datab => \b[0]~input_o\,
	datac => \b[1]~input_o\,
	datad => \a[1]~input_o\,
	combout => \Add0~1_combout\);

-- Location: LCCOMB_X1_Y10_N28
\f[1]$latch\ : cycloneiii_lcell_comb
-- Equation(s):
-- \f[1]$latch~combout\ = (!\Add0~1_combout\ & \f[1]~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~1_combout\,
	datab => \f[1]~0_combout\,
	datad => \f[1]$latch~combout\,
	combout => \f[1]$latch~combout\);

-- Location: LCCOMB_X1_Y10_N6
\comb~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \comb~0_combout\ = (\b[1]~input_o\ & (\a[1]~input_o\ & ((\a[0]~input_o\) # (!\b[0]~input_o\)))) # (!\b[1]~input_o\ & ((\a[0]~input_o\) # ((\a[1]~input_o\) # (!\b[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111100001011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a[0]~input_o\,
	datab => \b[0]~input_o\,
	datac => \b[1]~input_o\,
	datad => \a[1]~input_o\,
	combout => \comb~0_combout\);

-- Location: LCCOMB_X1_Y10_N24
\LessThan0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LessThan0~0_combout\ = (\b[1]~input_o\ & (((!\a[0]~input_o\ & \b[0]~input_o\)) # (!\a[1]~input_o\))) # (!\b[1]~input_o\ & (!\a[0]~input_o\ & (\b[0]~input_o\ & !\a[1]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000011110100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a[0]~input_o\,
	datab => \b[0]~input_o\,
	datac => \b[1]~input_o\,
	datad => \a[1]~input_o\,
	combout => \LessThan0~0_combout\);

-- Location: LCCOMB_X1_Y10_N30
\g$latch\ : cycloneiii_lcell_comb
-- Equation(s):
-- \g$latch~combout\ = (!\comb~0_combout\ & ((\g$latch~combout\) # (\LessThan0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \comb~0_combout\,
	datac => \g$latch~combout\,
	datad => \LessThan0~0_combout\,
	combout => \g$latch~combout\);

ww_f(0) <= \f[0]~output_o\;

ww_f(1) <= \f[1]~output_o\;

ww_g <= \g~output_o\;
END structure;


