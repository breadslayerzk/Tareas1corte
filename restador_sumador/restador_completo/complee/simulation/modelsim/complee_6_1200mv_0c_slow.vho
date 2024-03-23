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

-- DATE "02/29/2024 17:47:27"

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

ENTITY 	complee IS
    PORT (
	A : IN std_logic_vector(3 DOWNTO 0);
	B : IN std_logic_vector(3 DOWNTO 0);
	C : IN std_logic;
	F : OUT std_logic_vector(6 DOWNTO 0);
	G : OUT std_logic_vector(6 DOWNTO 0)
	);
END complee;

-- Design Ports Information
-- C	=>  Location: PIN_F17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- F[0]	=>  Location: PIN_K21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- F[1]	=>  Location: PIN_H22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- F[2]	=>  Location: PIN_K16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- F[3]	=>  Location: PIN_J22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- F[4]	=>  Location: PIN_J15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- F[5]	=>  Location: PIN_J16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- F[6]	=>  Location: PIN_K18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- G[0]	=>  Location: PIN_L22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- G[1]	=>  Location: PIN_L21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- G[2]	=>  Location: PIN_H21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- G[3]	=>  Location: PIN_K17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- G[4]	=>  Location: PIN_J21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- G[5]	=>  Location: PIN_E12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- G[6]	=>  Location: PIN_J18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[0]	=>  Location: PIN_M16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[0]	=>  Location: PIN_L16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[3]	=>  Location: PIN_K15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[2]	=>  Location: PIN_M21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[2]	=>  Location: PIN_K19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[3]	=>  Location: PIN_L15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[1]	=>  Location: PIN_M19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[1]	=>  Location: PIN_M20,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF complee IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_A : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_B : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_C : std_logic;
SIGNAL ww_F : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_G : std_logic_vector(6 DOWNTO 0);
SIGNAL \U1|f[3]~4clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \C~input_o\ : std_logic;
SIGNAL \F[0]~output_o\ : std_logic;
SIGNAL \F[1]~output_o\ : std_logic;
SIGNAL \F[2]~output_o\ : std_logic;
SIGNAL \F[3]~output_o\ : std_logic;
SIGNAL \F[4]~output_o\ : std_logic;
SIGNAL \F[5]~output_o\ : std_logic;
SIGNAL \F[6]~output_o\ : std_logic;
SIGNAL \G[0]~output_o\ : std_logic;
SIGNAL \G[1]~output_o\ : std_logic;
SIGNAL \G[2]~output_o\ : std_logic;
SIGNAL \G[3]~output_o\ : std_logic;
SIGNAL \G[4]~output_o\ : std_logic;
SIGNAL \G[5]~output_o\ : std_logic;
SIGNAL \G[6]~output_o\ : std_logic;
SIGNAL \B[1]~input_o\ : std_logic;
SIGNAL \A[1]~input_o\ : std_logic;
SIGNAL \U1|Equal0~1_combout\ : std_logic;
SIGNAL \B[2]~input_o\ : std_logic;
SIGNAL \A[3]~input_o\ : std_logic;
SIGNAL \B[3]~input_o\ : std_logic;
SIGNAL \A[2]~input_o\ : std_logic;
SIGNAL \U1|Equal0~0_combout\ : std_logic;
SIGNAL \B[0]~input_o\ : std_logic;
SIGNAL \A[0]~input_o\ : std_logic;
SIGNAL \U1|Equal0~2_combout\ : std_logic;
SIGNAL \U1|Add0~1\ : std_logic;
SIGNAL \U1|Add0~2_combout\ : std_logic;
SIGNAL \U1|LessThan0~0_combout\ : std_logic;
SIGNAL \U1|LessThan1~0_combout\ : std_logic;
SIGNAL \U1|LessThan1~1_combout\ : std_logic;
SIGNAL \U1|LessThan1~2_combout\ : std_logic;
SIGNAL \U1|LessThan0~1_combout\ : std_logic;
SIGNAL \U1|f[3]~4_combout\ : std_logic;
SIGNAL \U1|f[3]~4clkctrl_outclk\ : std_logic;
SIGNAL \U1|Equal0~3_combout\ : std_logic;
SIGNAL \U1|LessThan0~2_combout\ : std_logic;
SIGNAL \U1|comb~0_combout\ : std_logic;
SIGNAL \U1|g~combout\ : std_logic;
SIGNAL \U1|Add0~3\ : std_logic;
SIGNAL \U1|Add0~4_combout\ : std_logic;
SIGNAL \U1|Add0~5\ : std_logic;
SIGNAL \U1|Add0~6_combout\ : std_logic;
SIGNAL \U2|Mux3~0_combout\ : std_logic;
SIGNAL \U2|Mux2~0_combout\ : std_logic;
SIGNAL \U1|Add0~0_combout\ : std_logic;
SIGNAL \U2|Mux4~0_combout\ : std_logic;
SIGNAL \U4|Mux6~0_combout\ : std_logic;
SIGNAL \U4|Mux5~0_combout\ : std_logic;
SIGNAL \U4|Mux4~2_combout\ : std_logic;
SIGNAL \U4|Mux4~3_combout\ : std_logic;
SIGNAL \U4|Mux3~0_combout\ : std_logic;
SIGNAL \U4|Mux2~2_combout\ : std_logic;
SIGNAL \U4|Mux2~3_combout\ : std_logic;
SIGNAL \U4|Mux1~0_combout\ : std_logic;
SIGNAL \U4|Mux0~0_combout\ : std_logic;
SIGNAL \U2|Mux0~0_combout\ : std_logic;
SIGNAL \U3|Mux5~4_combout\ : std_logic;
SIGNAL \U2|Mux1~0_combout\ : std_logic;
SIGNAL \U3|Mux0~7_combout\ : std_logic;
SIGNAL \U3|Mux0~6_combout\ : std_logic;
SIGNAL \U1|f\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \U3|ALT_INV_Mux0~6_combout\ : std_logic;
SIGNAL \U4|ALT_INV_Mux6~0_combout\ : std_logic;

BEGIN

ww_A <= A;
ww_B <= B;
ww_C <= C;
F <= ww_F;
G <= ww_G;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\U1|f[3]~4clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \U1|f[3]~4_combout\);
\U3|ALT_INV_Mux0~6_combout\ <= NOT \U3|Mux0~6_combout\;
\U4|ALT_INV_Mux6~0_combout\ <= NOT \U4|Mux6~0_combout\;

-- Location: IOOBUF_X41_Y19_N9
\F[0]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U4|ALT_INV_Mux6~0_combout\,
	devoe => ww_devoe,
	o => \F[0]~output_o\);

-- Location: IOOBUF_X41_Y20_N2
\F[1]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U4|Mux5~0_combout\,
	devoe => ww_devoe,
	o => \F[1]~output_o\);

-- Location: IOOBUF_X41_Y20_N9
\F[2]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U4|Mux4~3_combout\,
	devoe => ww_devoe,
	o => \F[2]~output_o\);

-- Location: IOOBUF_X41_Y19_N2
\F[3]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U4|Mux3~0_combout\,
	devoe => ww_devoe,
	o => \F[3]~output_o\);

-- Location: IOOBUF_X41_Y19_N23
\F[4]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U4|Mux2~3_combout\,
	devoe => ww_devoe,
	o => \F[4]~output_o\);

-- Location: IOOBUF_X41_Y20_N16
\F[5]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U4|Mux1~0_combout\,
	devoe => ww_devoe,
	o => \F[5]~output_o\);

-- Location: IOOBUF_X41_Y21_N9
\F[6]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U4|Mux0~0_combout\,
	devoe => ww_devoe,
	o => \F[6]~output_o\);

-- Location: IOOBUF_X41_Y18_N23
\G[0]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U2|Mux0~0_combout\,
	devoe => ww_devoe,
	o => \G[0]~output_o\);

-- Location: IOOBUF_X41_Y18_N16
\G[1]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U3|Mux5~4_combout\,
	devoe => ww_devoe,
	o => \G[1]~output_o\);

-- Location: IOOBUF_X41_Y21_N23
\G[2]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U2|Mux1~0_combout\,
	devoe => ww_devoe,
	o => \G[2]~output_o\);

-- Location: IOOBUF_X41_Y21_N16
\G[3]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U3|Mux0~7_combout\,
	devoe => ww_devoe,
	o => \G[3]~output_o\);

-- Location: IOOBUF_X41_Y20_N23
\G[4]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U3|ALT_INV_Mux0~6_combout\,
	devoe => ww_devoe,
	o => \G[4]~output_o\);

-- Location: IOOBUF_X21_Y29_N16
\G[5]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \G[5]~output_o\);

-- Location: IOOBUF_X41_Y21_N2
\G[6]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U3|Mux0~7_combout\,
	devoe => ww_devoe,
	o => \G[6]~output_o\);

-- Location: IOIBUF_X41_Y14_N8
\B[1]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(1),
	o => \B[1]~input_o\);

-- Location: IOIBUF_X41_Y14_N15
\A[1]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(1),
	o => \A[1]~input_o\);

-- Location: LCCOMB_X40_Y17_N20
\U1|Equal0~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U1|Equal0~1_combout\ = \B[1]~input_o\ $ (!\A[1]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101001010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[1]~input_o\,
	datad => \A[1]~input_o\,
	combout => \U1|Equal0~1_combout\);

-- Location: IOIBUF_X41_Y14_N22
\B[2]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(2),
	o => \B[2]~input_o\);

-- Location: IOIBUF_X41_Y17_N1
\A[3]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(3),
	o => \A[3]~input_o\);

-- Location: IOIBUF_X41_Y18_N8
\B[3]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(3),
	o => \B[3]~input_o\);

-- Location: IOIBUF_X41_Y18_N1
\A[2]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(2),
	o => \A[2]~input_o\);

-- Location: LCCOMB_X40_Y17_N16
\U1|Equal0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U1|Equal0~0_combout\ = (\B[2]~input_o\ & (\A[2]~input_o\ & (\A[3]~input_o\ $ (!\B[3]~input_o\)))) # (!\B[2]~input_o\ & (!\A[2]~input_o\ & (\A[3]~input_o\ $ (!\B[3]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000001001000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[2]~input_o\,
	datab => \A[3]~input_o\,
	datac => \B[3]~input_o\,
	datad => \A[2]~input_o\,
	combout => \U1|Equal0~0_combout\);

-- Location: IOIBUF_X41_Y14_N1
\B[0]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(0),
	o => \B[0]~input_o\);

-- Location: IOIBUF_X41_Y17_N8
\A[0]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(0),
	o => \A[0]~input_o\);

-- Location: LCCOMB_X40_Y17_N14
\U1|Equal0~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U1|Equal0~2_combout\ = (\U1|Equal0~1_combout\ & (\U1|Equal0~0_combout\ & (\B[0]~input_o\ $ (!\A[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|Equal0~1_combout\,
	datab => \U1|Equal0~0_combout\,
	datac => \B[0]~input_o\,
	datad => \A[0]~input_o\,
	combout => \U1|Equal0~2_combout\);

-- Location: LCCOMB_X40_Y17_N6
\U1|Add0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U1|Add0~0_combout\ = (\B[0]~input_o\ & (\A[0]~input_o\ $ (VCC))) # (!\B[0]~input_o\ & ((\A[0]~input_o\) # (GND)))
-- \U1|Add0~1\ = CARRY((\A[0]~input_o\) # (!\B[0]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011011011101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[0]~input_o\,
	datab => \A[0]~input_o\,
	datad => VCC,
	combout => \U1|Add0~0_combout\,
	cout => \U1|Add0~1\);

-- Location: LCCOMB_X40_Y17_N8
\U1|Add0~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U1|Add0~2_combout\ = (\B[1]~input_o\ & ((\A[1]~input_o\ & (!\U1|Add0~1\)) # (!\A[1]~input_o\ & ((\U1|Add0~1\) # (GND))))) # (!\B[1]~input_o\ & ((\A[1]~input_o\ & (\U1|Add0~1\ & VCC)) # (!\A[1]~input_o\ & (!\U1|Add0~1\))))
-- \U1|Add0~3\ = CARRY((\B[1]~input_o\ & ((!\U1|Add0~1\) # (!\A[1]~input_o\))) # (!\B[1]~input_o\ & (!\A[1]~input_o\ & !\U1|Add0~1\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \B[1]~input_o\,
	datab => \A[1]~input_o\,
	datad => VCC,
	cin => \U1|Add0~1\,
	combout => \U1|Add0~2_combout\,
	cout => \U1|Add0~3\);

-- Location: LCCOMB_X40_Y17_N26
\U1|LessThan0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U1|LessThan0~0_combout\ = (\A[3]~input_o\ & (\B[2]~input_o\ & (\B[3]~input_o\ & !\A[2]~input_o\))) # (!\A[3]~input_o\ & ((\B[3]~input_o\) # ((\B[2]~input_o\ & !\A[2]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000010110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[2]~input_o\,
	datab => \A[3]~input_o\,
	datac => \B[3]~input_o\,
	datad => \A[2]~input_o\,
	combout => \U1|LessThan0~0_combout\);

-- Location: LCCOMB_X40_Y17_N30
\U1|LessThan1~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U1|LessThan1~0_combout\ = (\A[3]~input_o\ & (((!\B[2]~input_o\ & \A[2]~input_o\)) # (!\B[3]~input_o\))) # (!\A[3]~input_o\ & (!\B[2]~input_o\ & (!\B[3]~input_o\ & \A[2]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100110100001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[2]~input_o\,
	datab => \A[3]~input_o\,
	datac => \B[3]~input_o\,
	datad => \A[2]~input_o\,
	combout => \U1|LessThan1~0_combout\);

-- Location: LCCOMB_X40_Y15_N18
\U1|LessThan1~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U1|LessThan1~1_combout\ = (\A[1]~input_o\ & (((!\B[0]~input_o\ & \A[0]~input_o\)) # (!\B[1]~input_o\))) # (!\A[1]~input_o\ & (!\B[1]~input_o\ & (!\B[0]~input_o\ & \A[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010101100100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[1]~input_o\,
	datab => \B[1]~input_o\,
	datac => \B[0]~input_o\,
	datad => \A[0]~input_o\,
	combout => \U1|LessThan1~1_combout\);

-- Location: LCCOMB_X40_Y15_N26
\U1|LessThan1~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U1|LessThan1~2_combout\ = (\U1|LessThan1~0_combout\) # ((\U1|Equal0~0_combout\ & \U1|LessThan1~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U1|Equal0~0_combout\,
	datac => \U1|LessThan1~0_combout\,
	datad => \U1|LessThan1~1_combout\,
	combout => \U1|LessThan1~2_combout\);

-- Location: LCCOMB_X40_Y15_N28
\U1|LessThan0~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U1|LessThan0~1_combout\ = (\A[1]~input_o\ & (\B[1]~input_o\ & (\B[0]~input_o\ & !\A[0]~input_o\))) # (!\A[1]~input_o\ & ((\B[1]~input_o\) # ((\B[0]~input_o\ & !\A[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010011010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[1]~input_o\,
	datab => \B[1]~input_o\,
	datac => \B[0]~input_o\,
	datad => \A[0]~input_o\,
	combout => \U1|LessThan0~1_combout\);

-- Location: LCCOMB_X40_Y15_N14
\U1|f[3]~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U1|f[3]~4_combout\ = (\U1|LessThan0~0_combout\) # ((\U1|LessThan1~2_combout\) # ((\U1|Equal0~0_combout\ & \U1|LessThan0~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|Equal0~0_combout\,
	datab => \U1|LessThan0~0_combout\,
	datac => \U1|LessThan1~2_combout\,
	datad => \U1|LessThan0~1_combout\,
	combout => \U1|f[3]~4_combout\);

-- Location: CLKCTRL_G7
\U1|f[3]~4clkctrl\ : cycloneiii_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \U1|f[3]~4clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \U1|f[3]~4clkctrl_outclk\);

-- Location: LCCOMB_X40_Y17_N0
\U1|f[1]\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U1|f\(1) = (!\U1|Equal0~2_combout\ & ((GLOBAL(\U1|f[3]~4clkctrl_outclk\) & ((\U1|Add0~2_combout\))) # (!GLOBAL(\U1|f[3]~4clkctrl_outclk\) & (\U1|f\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|Equal0~2_combout\,
	datab => \U1|f\(1),
	datac => \U1|Add0~2_combout\,
	datad => \U1|f[3]~4clkctrl_outclk\,
	combout => \U1|f\(1));

-- Location: LCCOMB_X40_Y15_N24
\U1|Equal0~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U1|Equal0~3_combout\ = (\A[1]~input_o\ & (\B[1]~input_o\ & (\B[0]~input_o\ $ (!\A[0]~input_o\)))) # (!\A[1]~input_o\ & (!\B[1]~input_o\ & (\B[0]~input_o\ $ (!\A[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000010000100001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[1]~input_o\,
	datab => \B[0]~input_o\,
	datac => \B[1]~input_o\,
	datad => \A[0]~input_o\,
	combout => \U1|Equal0~3_combout\);

-- Location: LCCOMB_X40_Y15_N22
\U1|LessThan0~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U1|LessThan0~2_combout\ = (\U1|LessThan0~0_combout\) # ((\U1|Equal0~0_combout\ & \U1|LessThan0~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100011111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|Equal0~0_combout\,
	datab => \U1|LessThan0~1_combout\,
	datac => \U1|LessThan0~0_combout\,
	combout => \U1|LessThan0~2_combout\);

-- Location: LCCOMB_X40_Y15_N6
\U1|comb~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U1|comb~0_combout\ = (\U1|LessThan1~2_combout\ & (((\U1|Equal0~3_combout\ & \U1|Equal0~0_combout\)) # (!\U1|LessThan0~2_combout\))) # (!\U1|LessThan1~2_combout\ & (\U1|Equal0~3_combout\ & ((\U1|Equal0~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|LessThan1~2_combout\,
	datab => \U1|Equal0~3_combout\,
	datac => \U1|LessThan0~2_combout\,
	datad => \U1|Equal0~0_combout\,
	combout => \U1|comb~0_combout\);

-- Location: LCCOMB_X40_Y15_N20
\U1|g\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U1|g~combout\ = (!\U1|comb~0_combout\ & ((\U1|LessThan0~2_combout\) # (\U1|g~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|comb~0_combout\,
	datac => \U1|LessThan0~2_combout\,
	datad => \U1|g~combout\,
	combout => \U1|g~combout\);

-- Location: LCCOMB_X40_Y17_N10
\U1|Add0~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U1|Add0~4_combout\ = ((\B[2]~input_o\ $ (\A[2]~input_o\ $ (\U1|Add0~3\)))) # (GND)
-- \U1|Add0~5\ = CARRY((\B[2]~input_o\ & (\A[2]~input_o\ & !\U1|Add0~3\)) # (!\B[2]~input_o\ & ((\A[2]~input_o\) # (!\U1|Add0~3\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \B[2]~input_o\,
	datab => \A[2]~input_o\,
	datad => VCC,
	cin => \U1|Add0~3\,
	combout => \U1|Add0~4_combout\,
	cout => \U1|Add0~5\);

-- Location: LCCOMB_X40_Y17_N2
\U1|f[2]\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U1|f\(2) = (!\U1|Equal0~2_combout\ & ((GLOBAL(\U1|f[3]~4clkctrl_outclk\) & (\U1|Add0~4_combout\)) # (!GLOBAL(\U1|f[3]~4clkctrl_outclk\) & ((\U1|f\(2))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|Add0~4_combout\,
	datab => \U1|Equal0~2_combout\,
	datac => \U1|f\(2),
	datad => \U1|f[3]~4clkctrl_outclk\,
	combout => \U1|f\(2));

-- Location: LCCOMB_X40_Y17_N12
\U1|Add0~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U1|Add0~6_combout\ = \B[3]~input_o\ $ (\A[3]~input_o\ $ (!\U1|Add0~5\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101101001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \B[3]~input_o\,
	datab => \A[3]~input_o\,
	cin => \U1|Add0~5\,
	combout => \U1|Add0~6_combout\);

-- Location: LCCOMB_X40_Y17_N4
\U1|f[3]\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U1|f\(3) = (!\U1|Equal0~2_combout\ & ((GLOBAL(\U1|f[3]~4clkctrl_outclk\) & (\U1|Add0~6_combout\)) # (!GLOBAL(\U1|f[3]~4clkctrl_outclk\) & ((\U1|f\(3))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|Add0~6_combout\,
	datab => \U1|Equal0~2_combout\,
	datac => \U1|f\(3),
	datad => \U1|f[3]~4clkctrl_outclk\,
	combout => \U1|f\(3));

-- Location: LCCOMB_X40_Y20_N26
\U2|Mux3~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U2|Mux3~0_combout\ = (\U1|g~combout\ & (!\U1|f\(2) & ((\U1|f\(3)) # (!\U1|f\(1))))) # (!\U1|g~combout\ & (\U1|f\(2) & ((\U1|f\(1)) # (!\U1|f\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010110000110100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|f\(1),
	datab => \U1|g~combout\,
	datac => \U1|f\(2),
	datad => \U1|f\(3),
	combout => \U2|Mux3~0_combout\);

-- Location: LCCOMB_X40_Y20_N20
\U2|Mux2~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U2|Mux2~0_combout\ = (\U1|f\(1) & (\U1|g~combout\ & (!\U1|f\(2) & !\U1|f\(3)))) # (!\U1|f\(1) & (\U1|f\(3) & (\U1|g~combout\ $ (!\U1|f\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|f\(1),
	datab => \U1|g~combout\,
	datac => \U1|f\(2),
	datad => \U1|f\(3),
	combout => \U2|Mux2~0_combout\);

-- Location: LCCOMB_X40_Y17_N18
\U1|f[0]\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U1|f\(0) = (!\U1|Equal0~2_combout\ & ((GLOBAL(\U1|f[3]~4clkctrl_outclk\) & (\U1|Add0~0_combout\)) # (!GLOBAL(\U1|f[3]~4clkctrl_outclk\) & ((\U1|f\(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|Equal0~2_combout\,
	datab => \U1|Add0~0_combout\,
	datac => \U1|f\(0),
	datad => \U1|f[3]~4clkctrl_outclk\,
	combout => \U1|f\(0));

-- Location: LCCOMB_X40_Y20_N28
\U2|Mux4~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U2|Mux4~0_combout\ = (\U1|f\(1) & (\U1|f\(3) $ (((\U1|f\(2)) # (!\U1|g~combout\))))) # (!\U1|f\(1) & ((\U1|g~combout\ & (!\U1|f\(2) & !\U1|f\(3))) # (!\U1|g~combout\ & (\U1|f\(2) & \U1|f\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001100010100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|f\(1),
	datab => \U1|g~combout\,
	datac => \U1|f\(2),
	datad => \U1|f\(3),
	combout => \U2|Mux4~0_combout\);

-- Location: LCCOMB_X40_Y20_N30
\U4|Mux6~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U4|Mux6~0_combout\ = (\U2|Mux3~0_combout\ & (!\U2|Mux2~0_combout\ & ((!\U2|Mux4~0_combout\) # (!\U1|f\(0))))) # (!\U2|Mux3~0_combout\ & (\U2|Mux2~0_combout\ $ (((\U2|Mux4~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001001101100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U2|Mux3~0_combout\,
	datab => \U2|Mux2~0_combout\,
	datac => \U1|f\(0),
	datad => \U2|Mux4~0_combout\,
	combout => \U4|Mux6~0_combout\);

-- Location: LCCOMB_X40_Y20_N16
\U4|Mux5~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U4|Mux5~0_combout\ = (\U2|Mux3~0_combout\ & ((\U2|Mux2~0_combout\) # ((\U1|f\(0) & \U2|Mux4~0_combout\)))) # (!\U2|Mux3~0_combout\ & ((\U2|Mux4~0_combout\) # ((!\U2|Mux2~0_combout\ & \U1|f\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110110011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U2|Mux3~0_combout\,
	datab => \U2|Mux2~0_combout\,
	datac => \U1|f\(0),
	datad => \U2|Mux4~0_combout\,
	combout => \U4|Mux5~0_combout\);

-- Location: LCCOMB_X40_Y20_N2
\U4|Mux4~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U4|Mux4~2_combout\ = (\U1|g~combout\ & (!\U1|f\(1) & (!\U1|f\(2) & \U1|f\(3)))) # (!\U1|g~combout\ & (\U1|f\(2) & (\U1|f\(1) $ (!\U1|f\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010010000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|f\(1),
	datab => \U1|g~combout\,
	datac => \U1|f\(2),
	datad => \U1|f\(3),
	combout => \U4|Mux4~2_combout\);

-- Location: LCCOMB_X40_Y20_N24
\U4|Mux4~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U4|Mux4~3_combout\ = (\U1|f\(0)) # (\U4|Mux4~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \U1|f\(0),
	datad => \U4|Mux4~2_combout\,
	combout => \U4|Mux4~3_combout\);

-- Location: LCCOMB_X40_Y20_N14
\U4|Mux3~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U4|Mux3~0_combout\ = (\U2|Mux3~0_combout\ & ((\U2|Mux2~0_combout\) # (\U1|f\(0) $ (!\U2|Mux4~0_combout\)))) # (!\U2|Mux3~0_combout\ & ((\U2|Mux4~0_combout\ & (\U2|Mux2~0_combout\)) # (!\U2|Mux4~0_combout\ & ((\U1|f\(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110011011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U2|Mux3~0_combout\,
	datab => \U2|Mux2~0_combout\,
	datac => \U1|f\(0),
	datad => \U2|Mux4~0_combout\,
	combout => \U4|Mux3~0_combout\);

-- Location: LCCOMB_X40_Y20_N18
\U4|Mux2~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U4|Mux2~2_combout\ = (\U1|f\(1) & (!\U1|f\(3) & (\U1|g~combout\ $ (!\U1|f\(2))))) # (!\U1|f\(1) & (!\U1|g~combout\ & (\U1|f\(2) & \U1|f\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000010000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|f\(1),
	datab => \U1|g~combout\,
	datac => \U1|f\(2),
	datad => \U1|f\(3),
	combout => \U4|Mux2~2_combout\);

-- Location: LCCOMB_X40_Y20_N8
\U4|Mux2~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U4|Mux2~3_combout\ = (!\U1|f\(0) & \U4|Mux2~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \U1|f\(0),
	datad => \U4|Mux2~2_combout\,
	combout => \U4|Mux2~3_combout\);

-- Location: LCCOMB_X40_Y20_N12
\U4|Mux1~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U4|Mux1~0_combout\ = (\U2|Mux3~0_combout\ & ((\U2|Mux2~0_combout\) # (\U1|f\(0) $ (\U2|Mux4~0_combout\)))) # (!\U2|Mux3~0_combout\ & (\U2|Mux2~0_combout\ & ((\U2|Mux4~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U2|Mux3~0_combout\,
	datab => \U2|Mux2~0_combout\,
	datac => \U1|f\(0),
	datad => \U2|Mux4~0_combout\,
	combout => \U4|Mux1~0_combout\);

-- Location: LCCOMB_X40_Y20_N10
\U4|Mux0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U4|Mux0~0_combout\ = (\U2|Mux4~0_combout\ & (((\U2|Mux2~0_combout\)))) # (!\U2|Mux4~0_combout\ & (\U2|Mux3~0_combout\ $ (((!\U2|Mux2~0_combout\ & \U1|f\(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U2|Mux3~0_combout\,
	datab => \U2|Mux2~0_combout\,
	datac => \U1|f\(0),
	datad => \U2|Mux4~0_combout\,
	combout => \U4|Mux0~0_combout\);

-- Location: LCCOMB_X40_Y17_N24
\U2|Mux0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U2|Mux0~0_combout\ = ((!\U1|f\(3) & !\U1|f\(2))) # (!\U1|g~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|g~combout\,
	datac => \U1|f\(3),
	datad => \U1|f\(2),
	combout => \U2|Mux0~0_combout\);

-- Location: LCCOMB_X40_Y17_N28
\U3|Mux5~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U3|Mux5~4_combout\ = (\U1|g~combout\) # ((\U1|f\(3) & ((\U1|f\(2)) # (\U1|f\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|g~combout\,
	datab => \U1|f\(3),
	datac => \U1|f\(2),
	datad => \U1|f\(1),
	combout => \U3|Mux5~4_combout\);

-- Location: LCCOMB_X40_Y20_N0
\U2|Mux1~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U2|Mux1~0_combout\ = (\U1|g~combout\ & ((\U1|f\(2) & (\U1|f\(1) & \U1|f\(3))) # (!\U1|f\(2) & ((!\U1|f\(3)))))) # (!\U1|g~combout\ & (\U1|f\(3) & ((\U1|f\(1)) # (\U1|f\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011001000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|f\(1),
	datab => \U1|g~combout\,
	datac => \U1|f\(2),
	datad => \U1|f\(3),
	combout => \U2|Mux1~0_combout\);

-- Location: LCCOMB_X40_Y20_N4
\U3|Mux0~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U3|Mux0~7_combout\ = (\U1|g~combout\ & (((!\U1|f\(2) & !\U1|f\(3))))) # (!\U1|g~combout\ & (\U1|f\(3) & ((\U1|f\(1)) # (\U1|f\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|f\(1),
	datab => \U1|g~combout\,
	datac => \U1|f\(2),
	datad => \U1|f\(3),
	combout => \U3|Mux0~7_combout\);

-- Location: LCCOMB_X40_Y20_N6
\U3|Mux0~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U3|Mux0~6_combout\ = ((\U1|f\(2) & (\U1|f\(1) & \U1|f\(3))) # (!\U1|f\(2) & ((!\U1|f\(3))))) # (!\U1|g~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011001100111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|f\(1),
	datab => \U1|g~combout\,
	datac => \U1|f\(2),
	datad => \U1|f\(3),
	combout => \U3|Mux0~6_combout\);

-- Location: IOIBUF_X41_Y27_N8
\C~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_C,
	o => \C~input_o\);

ww_F(0) <= \F[0]~output_o\;

ww_F(1) <= \F[1]~output_o\;

ww_F(2) <= \F[2]~output_o\;

ww_F(3) <= \F[3]~output_o\;

ww_F(4) <= \F[4]~output_o\;

ww_F(5) <= \F[5]~output_o\;

ww_F(6) <= \F[6]~output_o\;

ww_G(0) <= \G[0]~output_o\;

ww_G(1) <= \G[1]~output_o\;

ww_G(2) <= \G[2]~output_o\;

ww_G(3) <= \G[3]~output_o\;

ww_G(4) <= \G[4]~output_o\;

ww_G(5) <= \G[5]~output_o\;

ww_G(6) <= \G[6]~output_o\;
END structure;


