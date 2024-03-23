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

-- DATE "02/23/2024 15:32:00"

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

ENTITY 	comple IS
    PORT (
	A : IN std_logic_vector(3 DOWNTO 0);
	B : IN std_logic_vector(3 DOWNTO 0);
	C : IN std_logic;
	F : OUT std_logic_vector(6 DOWNTO 0);
	G : OUT std_logic_vector(6 DOWNTO 0)
	);
END comple;

-- Design Ports Information
-- C	=>  Location: PIN_T16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- F[0]	=>  Location: PIN_N8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- F[1]	=>  Location: PIN_Y2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- F[2]	=>  Location: PIN_R6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- F[3]	=>  Location: PIN_P8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- F[4]	=>  Location: PIN_R5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- F[5]	=>  Location: PIN_F9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- F[6]	=>  Location: PIN_V5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- G[0]	=>  Location: PIN_J7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- G[1]	=>  Location: PIN_L21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- G[2]	=>  Location: PIN_D10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- G[3]	=>  Location: PIN_AB7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- G[4]	=>  Location: PIN_F10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- G[5]	=>  Location: PIN_V7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- G[6]	=>  Location: PIN_P20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[0]	=>  Location: PIN_T7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[0]	=>  Location: PIN_R8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[1]	=>  Location: PIN_R2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[1]	=>  Location: PIN_T5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[3]	=>  Location: PIN_R12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[3]	=>  Location: PIN_P5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[2]	=>  Location: PIN_P6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[2]	=>  Location: PIN_R9,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF comple IS
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
SIGNAL \A[0]~input_o\ : std_logic;
SIGNAL \B[0]~input_o\ : std_logic;
SIGNAL \B[1]~input_o\ : std_logic;
SIGNAL \A[1]~input_o\ : std_logic;
SIGNAL \U1|A2|HA2|F~0_combout\ : std_logic;
SIGNAL \B[3]~input_o\ : std_logic;
SIGNAL \B[2]~input_o\ : std_logic;
SIGNAL \A[2]~input_o\ : std_logic;
SIGNAL \U1|A2|G~0_combout\ : std_logic;
SIGNAL \U1|A3|G~0_combout\ : std_logic;
SIGNAL \A[3]~input_o\ : std_logic;
SIGNAL \U1|A4|G~0_combout\ : std_logic;
SIGNAL \U2|Mux0~2_combout\ : std_logic;
SIGNAL \U1|A3|HA2|F~0_combout\ : std_logic;
SIGNAL \U1|A1|HA1|F~combout\ : std_logic;
SIGNAL \U2|Mux1~0_combout\ : std_logic;
SIGNAL \U1|A4|HA2|F~combout\ : std_logic;
SIGNAL \U2|Mux1~1_combout\ : std_logic;
SIGNAL \U3|Mux5~0_combout\ : std_logic;
SIGNAL \U2|Mux1~2_combout\ : std_logic;
SIGNAL \U3|Mux0~0_combout\ : std_logic;
SIGNAL \U3|Mux0~1_combout\ : std_logic;
SIGNAL \U2|Mux4~0_combout\ : std_logic;
SIGNAL \U2|Mux2~0_combout\ : std_logic;
SIGNAL \U2|Mux3~0_combout\ : std_logic;
SIGNAL \U4|Mux6~0_combout\ : std_logic;
SIGNAL \U4|Mux5~0_combout\ : std_logic;
SIGNAL \U4|Mux4~0_combout\ : std_logic;
SIGNAL \U4|Mux3~0_combout\ : std_logic;
SIGNAL \U4|Mux2~0_combout\ : std_logic;
SIGNAL \U4|Mux1~0_combout\ : std_logic;
SIGNAL \U4|Mux0~0_combout\ : std_logic;
SIGNAL \U4|ALT_INV_Mux6~0_combout\ : std_logic;
SIGNAL \U3|ALT_INV_Mux0~1_combout\ : std_logic;

BEGIN

ww_A <= A;
ww_B <= B;
ww_C <= C;
F <= ww_F;
G <= ww_G;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
\U4|ALT_INV_Mux6~0_combout\ <= NOT \U4|Mux6~0_combout\;
\U3|ALT_INV_Mux0~1_combout\ <= NOT \U3|Mux0~1_combout\;

-- Location: IOOBUF_X0_Y7_N9
\F[0]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U2|Mux0~2_combout\,
	devoe => ww_devoe,
	o => \F[0]~output_o\);

-- Location: IOOBUF_X0_Y6_N2
\F[1]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U3|Mux5~0_combout\,
	devoe => ww_devoe,
	o => \F[1]~output_o\);

-- Location: IOOBUF_X0_Y3_N9
\F[2]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U2|Mux1~2_combout\,
	devoe => ww_devoe,
	o => \F[2]~output_o\);

-- Location: IOOBUF_X0_Y2_N16
\F[3]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U3|Mux0~0_combout\,
	devoe => ww_devoe,
	o => \F[3]~output_o\);

-- Location: IOOBUF_X0_Y4_N16
\F[4]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U3|ALT_INV_Mux0~1_combout\,
	devoe => ww_devoe,
	o => \F[4]~output_o\);

-- Location: IOOBUF_X7_Y29_N23
\F[5]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \F[5]~output_o\);

-- Location: IOOBUF_X3_Y0_N30
\F[6]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U3|Mux0~0_combout\,
	devoe => ww_devoe,
	o => \F[6]~output_o\);

-- Location: IOOBUF_X0_Y22_N16
\G[0]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U4|ALT_INV_Mux6~0_combout\,
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
	i => \U4|Mux5~0_combout\,
	devoe => ww_devoe,
	o => \G[1]~output_o\);

-- Location: IOOBUF_X16_Y29_N2
\G[2]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U4|Mux4~0_combout\,
	devoe => ww_devoe,
	o => \G[2]~output_o\);

-- Location: IOOBUF_X11_Y0_N9
\G[3]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U4|Mux3~0_combout\,
	devoe => ww_devoe,
	o => \G[3]~output_o\);

-- Location: IOOBUF_X7_Y29_N30
\G[4]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U4|Mux2~0_combout\,
	devoe => ww_devoe,
	o => \G[4]~output_o\);

-- Location: IOOBUF_X7_Y0_N16
\G[5]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U4|Mux1~0_combout\,
	devoe => ww_devoe,
	o => \G[5]~output_o\);

-- Location: IOOBUF_X41_Y10_N2
\G[6]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U4|Mux0~0_combout\,
	devoe => ww_devoe,
	o => \G[6]~output_o\);

-- Location: IOIBUF_X0_Y2_N22
\A[0]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(0),
	o => \A[0]~input_o\);

-- Location: IOIBUF_X0_Y2_N8
\B[0]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(0),
	o => \B[0]~input_o\);

-- Location: IOIBUF_X0_Y3_N1
\B[1]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(1),
	o => \B[1]~input_o\);

-- Location: IOIBUF_X0_Y10_N1
\A[1]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(1),
	o => \A[1]~input_o\);

-- Location: LCCOMB_X1_Y2_N10
\U1|A2|HA2|F~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U1|A2|HA2|F~0_combout\ = \B[1]~input_o\ $ (\A[1]~input_o\ $ (((\A[0]~input_o\ & \B[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000011101111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[0]~input_o\,
	datab => \B[0]~input_o\,
	datac => \B[1]~input_o\,
	datad => \A[1]~input_o\,
	combout => \U1|A2|HA2|F~0_combout\);

-- Location: IOIBUF_X0_Y8_N8
\B[3]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(3),
	o => \B[3]~input_o\);

-- Location: IOIBUF_X1_Y0_N29
\B[2]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(2),
	o => \B[2]~input_o\);

-- Location: IOIBUF_X0_Y4_N8
\A[2]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(2),
	o => \A[2]~input_o\);

-- Location: LCCOMB_X1_Y2_N4
\U1|A2|G~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U1|A2|G~0_combout\ = (\B[1]~input_o\ & ((\A[1]~input_o\) # ((\A[0]~input_o\ & \B[0]~input_o\)))) # (!\B[1]~input_o\ & (\A[0]~input_o\ & (\B[0]~input_o\ & \A[1]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[0]~input_o\,
	datab => \B[0]~input_o\,
	datac => \B[1]~input_o\,
	datad => \A[1]~input_o\,
	combout => \U1|A2|G~0_combout\);

-- Location: LCCOMB_X1_Y2_N6
\U1|A3|G~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U1|A3|G~0_combout\ = (\B[2]~input_o\ & ((\A[2]~input_o\) # (\U1|A2|G~0_combout\))) # (!\B[2]~input_o\ & (\A[2]~input_o\ & \U1|A2|G~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \B[2]~input_o\,
	datac => \A[2]~input_o\,
	datad => \U1|A2|G~0_combout\,
	combout => \U1|A3|G~0_combout\);

-- Location: IOIBUF_X5_Y0_N29
\A[3]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(3),
	o => \A[3]~input_o\);

-- Location: LCCOMB_X4_Y6_N0
\U1|A4|G~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U1|A4|G~0_combout\ = (\B[3]~input_o\ & ((\U1|A3|G~0_combout\) # (\A[3]~input_o\))) # (!\B[3]~input_o\ & (\U1|A3|G~0_combout\ & \A[3]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \B[3]~input_o\,
	datac => \U1|A3|G~0_combout\,
	datad => \A[3]~input_o\,
	combout => \U1|A4|G~0_combout\);

-- Location: LCCOMB_X1_Y2_N20
\U2|Mux0~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U2|Mux0~2_combout\ = ((!\U1|A2|HA2|F~0_combout\ & (\B[0]~input_o\ $ (!\A[0]~input_o\)))) # (!\U1|A4|G~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|A2|HA2|F~0_combout\,
	datab => \B[0]~input_o\,
	datac => \A[0]~input_o\,
	datad => \U1|A4|G~0_combout\,
	combout => \U2|Mux0~2_combout\);

-- Location: LCCOMB_X1_Y2_N16
\U1|A3|HA2|F~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U1|A3|HA2|F~0_combout\ = \B[2]~input_o\ $ (\A[2]~input_o\ $ (\U1|A2|G~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \B[2]~input_o\,
	datac => \A[2]~input_o\,
	datad => \U1|A2|G~0_combout\,
	combout => \U1|A3|HA2|F~0_combout\);

-- Location: LCCOMB_X1_Y2_N8
\U1|A1|HA1|F\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U1|A1|HA1|F~combout\ = \B[0]~input_o\ $ (\A[0]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \B[0]~input_o\,
	datad => \A[0]~input_o\,
	combout => \U1|A1|HA1|F~combout\);

-- Location: LCCOMB_X1_Y2_N26
\U2|Mux1~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U2|Mux1~0_combout\ = (!\U1|A3|HA2|F~0_combout\ & ((\U1|A2|HA2|F~0_combout\ & (\U1|A1|HA1|F~combout\ & !\U1|A4|G~0_combout\)) # (!\U1|A2|HA2|F~0_combout\ & (!\U1|A1|HA1|F~combout\ & \U1|A4|G~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|A2|HA2|F~0_combout\,
	datab => \U1|A3|HA2|F~0_combout\,
	datac => \U1|A1|HA1|F~combout\,
	datad => \U1|A4|G~0_combout\,
	combout => \U2|Mux1~0_combout\);

-- Location: LCCOMB_X4_Y6_N10
\U1|A4|HA2|F\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U1|A4|HA2|F~combout\ = \B[3]~input_o\ $ (\U1|A3|G~0_combout\ $ (\A[3]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \B[3]~input_o\,
	datac => \U1|A3|G~0_combout\,
	datad => \A[3]~input_o\,
	combout => \U1|A4|HA2|F~combout\);

-- Location: LCCOMB_X1_Y2_N28
\U2|Mux1~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U2|Mux1~1_combout\ = (\U1|A2|HA2|F~0_combout\ & (((!\U1|A1|HA1|F~combout\)))) # (!\U1|A2|HA2|F~0_combout\ & ((\U1|A1|HA1|F~combout\ & ((\U1|A4|G~0_combout\))) # (!\U1|A1|HA1|F~combout\ & (\U1|A4|HA2|F~combout\ & !\U1|A4|G~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101000001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|A2|HA2|F~0_combout\,
	datab => \U1|A4|HA2|F~combout\,
	datac => \U1|A1|HA1|F~combout\,
	datad => \U1|A4|G~0_combout\,
	combout => \U2|Mux1~1_combout\);

-- Location: LCCOMB_X1_Y2_N30
\U3|Mux5~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U3|Mux5~0_combout\ = ((\U2|Mux1~0_combout\) # ((\U1|A3|HA2|F~0_combout\ & !\U2|Mux1~1_combout\))) # (!\U2|Mux0~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010111111101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U2|Mux0~2_combout\,
	datab => \U1|A3|HA2|F~0_combout\,
	datac => \U2|Mux1~0_combout\,
	datad => \U2|Mux1~1_combout\,
	combout => \U3|Mux5~0_combout\);

-- Location: LCCOMB_X1_Y2_N0
\U2|Mux1~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U2|Mux1~2_combout\ = (\U2|Mux1~0_combout\) # ((!\U2|Mux1~1_combout\ & \U1|A3|HA2|F~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U2|Mux1~1_combout\,
	datac => \U2|Mux1~0_combout\,
	datad => \U1|A3|HA2|F~0_combout\,
	combout => \U2|Mux1~2_combout\);

-- Location: LCCOMB_X1_Y2_N2
\U3|Mux0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U3|Mux0~0_combout\ = (\U2|Mux0~2_combout\ & ((\U2|Mux1~0_combout\) # ((\U1|A3|HA2|F~0_combout\ & !\U2|Mux1~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U2|Mux0~2_combout\,
	datab => \U1|A3|HA2|F~0_combout\,
	datac => \U2|Mux1~0_combout\,
	datad => \U2|Mux1~1_combout\,
	combout => \U3|Mux0~0_combout\);

-- Location: LCCOMB_X1_Y2_N12
\U3|Mux0~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U3|Mux0~1_combout\ = (\U2|Mux0~2_combout\) # ((\U2|Mux1~0_combout\) # ((\U1|A3|HA2|F~0_combout\ & !\U2|Mux1~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U2|Mux0~2_combout\,
	datab => \U1|A3|HA2|F~0_combout\,
	datac => \U2|Mux1~0_combout\,
	datad => \U2|Mux1~1_combout\,
	combout => \U3|Mux0~1_combout\);

-- Location: LCCOMB_X1_Y2_N14
\U2|Mux4~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U2|Mux4~0_combout\ = (\U1|A3|HA2|F~0_combout\ & (\U1|A1|HA1|F~combout\ $ (((\U1|A2|HA2|F~0_combout\) # (!\U1|A4|G~0_combout\))))) # (!\U1|A3|HA2|F~0_combout\ & ((\U1|A2|HA2|F~0_combout\ & (\U1|A1|HA1|F~combout\ & !\U1|A4|G~0_combout\)) # 
-- (!\U1|A2|HA2|F~0_combout\ & (!\U1|A1|HA1|F~combout\ & \U1|A4|G~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100100100101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|A2|HA2|F~0_combout\,
	datab => \U1|A3|HA2|F~0_combout\,
	datac => \U1|A1|HA1|F~combout\,
	datad => \U1|A4|G~0_combout\,
	combout => \U2|Mux4~0_combout\);

-- Location: LCCOMB_X1_Y2_N18
\U2|Mux2~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U2|Mux2~0_combout\ = (\U1|A3|HA2|F~0_combout\ & (!\U1|A2|HA2|F~0_combout\ & (!\U1|A1|HA1|F~combout\ & \U1|A4|G~0_combout\))) # (!\U1|A3|HA2|F~0_combout\ & (\U1|A1|HA1|F~combout\ & (\U1|A2|HA2|F~0_combout\ $ (!\U1|A4|G~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010010000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|A2|HA2|F~0_combout\,
	datab => \U1|A3|HA2|F~0_combout\,
	datac => \U1|A1|HA1|F~combout\,
	datad => \U1|A4|G~0_combout\,
	combout => \U2|Mux2~0_combout\);

-- Location: LCCOMB_X1_Y2_N24
\U2|Mux3~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U2|Mux3~0_combout\ = (\U1|A2|HA2|F~0_combout\ & (!\U1|A4|G~0_combout\ & ((\U1|A3|HA2|F~0_combout\) # (!\U1|A1|HA1|F~combout\)))) # (!\U1|A2|HA2|F~0_combout\ & (\U1|A4|G~0_combout\ & ((\U1|A1|HA1|F~combout\) # (!\U1|A3|HA2|F~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000110001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|A2|HA2|F~0_combout\,
	datab => \U1|A3|HA2|F~0_combout\,
	datac => \U1|A1|HA1|F~combout\,
	datad => \U1|A4|G~0_combout\,
	combout => \U2|Mux3~0_combout\);

-- Location: LCCOMB_X7_Y20_N24
\U4|Mux6~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U4|Mux6~0_combout\ = (\U2|Mux4~0_combout\ & (!\U2|Mux2~0_combout\ & ((!\U1|A4|HA2|F~combout\) # (!\U2|Mux3~0_combout\)))) # (!\U2|Mux4~0_combout\ & (\U2|Mux2~0_combout\ $ ((\U2|Mux3~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001011000110110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U2|Mux4~0_combout\,
	datab => \U2|Mux2~0_combout\,
	datac => \U2|Mux3~0_combout\,
	datad => \U1|A4|HA2|F~combout\,
	combout => \U4|Mux6~0_combout\);

-- Location: LCCOMB_X7_Y20_N2
\U4|Mux5~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U4|Mux5~0_combout\ = (\U2|Mux3~0_combout\ & ((\U2|Mux2~0_combout\) # ((\U2|Mux4~0_combout\ & \U1|A4|HA2|F~combout\)))) # (!\U2|Mux3~0_combout\ & ((\U2|Mux4~0_combout\) # ((!\U2|Mux2~0_combout\ & \U1|A4|HA2|F~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101111001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U2|Mux4~0_combout\,
	datab => \U2|Mux2~0_combout\,
	datac => \U2|Mux3~0_combout\,
	datad => \U1|A4|HA2|F~combout\,
	combout => \U4|Mux5~0_combout\);

-- Location: LCCOMB_X7_Y20_N4
\U4|Mux4~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U4|Mux4~0_combout\ = (\U1|A4|HA2|F~combout\) # ((\U2|Mux4~0_combout\ & (\U2|Mux2~0_combout\)) # (!\U2|Mux4~0_combout\ & ((\U2|Mux3~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U2|Mux4~0_combout\,
	datab => \U2|Mux2~0_combout\,
	datac => \U2|Mux3~0_combout\,
	datad => \U1|A4|HA2|F~combout\,
	combout => \U4|Mux4~0_combout\);

-- Location: LCCOMB_X7_Y20_N6
\U4|Mux3~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U4|Mux3~0_combout\ = (\U2|Mux3~0_combout\ & ((\U2|Mux2~0_combout\) # (\U2|Mux4~0_combout\ $ (!\U1|A4|HA2|F~combout\)))) # (!\U2|Mux3~0_combout\ & ((\U2|Mux4~0_combout\ & (\U2|Mux2~0_combout\)) # (!\U2|Mux4~0_combout\ & ((\U1|A4|HA2|F~combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110111011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U2|Mux4~0_combout\,
	datab => \U2|Mux2~0_combout\,
	datac => \U2|Mux3~0_combout\,
	datad => \U1|A4|HA2|F~combout\,
	combout => \U4|Mux3~0_combout\);

-- Location: LCCOMB_X7_Y20_N0
\U4|Mux2~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U4|Mux2~0_combout\ = (\U2|Mux3~0_combout\ & (((\U2|Mux2~0_combout\)))) # (!\U2|Mux3~0_combout\ & (\U2|Mux4~0_combout\ & ((\U2|Mux2~0_combout\) # (!\U1|A4|HA2|F~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U2|Mux4~0_combout\,
	datab => \U2|Mux2~0_combout\,
	datac => \U2|Mux3~0_combout\,
	datad => \U1|A4|HA2|F~combout\,
	combout => \U4|Mux2~0_combout\);

-- Location: LCCOMB_X7_Y20_N18
\U4|Mux1~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U4|Mux1~0_combout\ = (\U2|Mux2~0_combout\ & ((\U2|Mux4~0_combout\) # ((\U2|Mux3~0_combout\)))) # (!\U2|Mux2~0_combout\ & (\U2|Mux3~0_combout\ & (\U2|Mux4~0_combout\ $ (\U1|A4|HA2|F~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U2|Mux4~0_combout\,
	datab => \U2|Mux2~0_combout\,
	datac => \U2|Mux3~0_combout\,
	datad => \U1|A4|HA2|F~combout\,
	combout => \U4|Mux1~0_combout\);

-- Location: LCCOMB_X7_Y20_N20
\U4|Mux0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U4|Mux0~0_combout\ = (\U2|Mux4~0_combout\ & (\U2|Mux2~0_combout\)) # (!\U2|Mux4~0_combout\ & (\U2|Mux3~0_combout\ $ (((!\U2|Mux2~0_combout\ & \U1|A4|HA2|F~combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100111011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U2|Mux4~0_combout\,
	datab => \U2|Mux2~0_combout\,
	datac => \U2|Mux3~0_combout\,
	datad => \U1|A4|HA2|F~combout\,
	combout => \U4|Mux0~0_combout\);

-- Location: IOIBUF_X37_Y0_N8
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


