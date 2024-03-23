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

-- DATE "02/22/2024 21:59:43"

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

ENTITY 	tabla IS
    PORT (
	A : IN std_logic;
	B : IN std_logic;
	C : IN std_logic;
	D : IN std_logic;
	E : IN std_logic;
	ABCDEFG : BUFFER std_logic_vector(7 DOWNTO 0)
	);
END tabla;

-- Design Ports Information
-- ABCDEFG[0]	=>  Location: PIN_J7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ABCDEFG[1]	=>  Location: PIN_U2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ABCDEFG[2]	=>  Location: PIN_M2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ABCDEFG[3]	=>  Location: PIN_V5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ABCDEFG[4]	=>  Location: PIN_G10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ABCDEFG[5]	=>  Location: PIN_R2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ABCDEFG[6]	=>  Location: PIN_M1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ABCDEFG[7]	=>  Location: PIN_V3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- E	=>  Location: PIN_K7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D	=>  Location: PIN_R1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- C	=>  Location: PIN_A3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B	=>  Location: PIN_L16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A	=>  Location: PIN_T11,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF tabla IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_A : std_logic;
SIGNAL ww_B : std_logic;
SIGNAL ww_C : std_logic;
SIGNAL ww_D : std_logic;
SIGNAL ww_E : std_logic;
SIGNAL ww_ABCDEFG : std_logic_vector(7 DOWNTO 0);
SIGNAL \ABCDEFG[0]~output_o\ : std_logic;
SIGNAL \ABCDEFG[1]~output_o\ : std_logic;
SIGNAL \ABCDEFG[2]~output_o\ : std_logic;
SIGNAL \ABCDEFG[3]~output_o\ : std_logic;
SIGNAL \ABCDEFG[4]~output_o\ : std_logic;
SIGNAL \ABCDEFG[5]~output_o\ : std_logic;
SIGNAL \ABCDEFG[6]~output_o\ : std_logic;
SIGNAL \ABCDEFG[7]~output_o\ : std_logic;
SIGNAL \E~input_o\ : std_logic;
SIGNAL \D~input_o\ : std_logic;
SIGNAL \A~input_o\ : std_logic;
SIGNAL \C~input_o\ : std_logic;
SIGNAL \B~input_o\ : std_logic;
SIGNAL \Mux4~0_combout\ : std_logic;
SIGNAL \Mux3~0_combout\ : std_logic;
SIGNAL \Mux2~0_combout\ : std_logic;
SIGNAL \Mux1~0_combout\ : std_logic;
SIGNAL \Mux1~1_combout\ : std_logic;
SIGNAL \Mux0~0_combout\ : std_logic;
SIGNAL \ALT_INV_Mux0~0_combout\ : std_logic;

BEGIN

ww_A <= A;
ww_B <= B;
ww_C <= C;
ww_D <= D;
ww_E <= E;
ABCDEFG <= ww_ABCDEFG;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
\ALT_INV_Mux0~0_combout\ <= NOT \Mux0~0_combout\;

-- Location: IOOBUF_X0_Y22_N16
\ABCDEFG[0]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \E~input_o\,
	devoe => ww_devoe,
	o => \ABCDEFG[0]~output_o\);

-- Location: IOOBUF_X0_Y9_N9
\ABCDEFG[1]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux4~0_combout\,
	devoe => ww_devoe,
	o => \ABCDEFG[1]~output_o\);

-- Location: IOOBUF_X0_Y13_N16
\ABCDEFG[2]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux3~0_combout\,
	devoe => ww_devoe,
	o => \ABCDEFG[2]~output_o\);

-- Location: IOOBUF_X3_Y0_N30
\ABCDEFG[3]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux2~0_combout\,
	devoe => ww_devoe,
	o => \ABCDEFG[3]~output_o\);

-- Location: IOOBUF_X9_Y29_N16
\ABCDEFG[4]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux1~1_combout\,
	devoe => ww_devoe,
	o => \ABCDEFG[4]~output_o\);

-- Location: IOOBUF_X0_Y10_N2
\ABCDEFG[5]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ALT_INV_Mux0~0_combout\,
	devoe => ww_devoe,
	o => \ABCDEFG[5]~output_o\);

-- Location: IOOBUF_X0_Y13_N23
\ABCDEFG[6]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \ABCDEFG[6]~output_o\);

-- Location: IOOBUF_X0_Y4_N2
\ABCDEFG[7]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \ABCDEFG[7]~output_o\);

-- Location: IOIBUF_X0_Y22_N22
\E~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_E,
	o => \E~input_o\);

-- Location: IOIBUF_X0_Y10_N8
\D~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_D,
	o => \D~input_o\);

-- Location: IOIBUF_X16_Y0_N15
\A~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A,
	o => \A~input_o\);

-- Location: IOIBUF_X3_Y29_N1
\C~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_C,
	o => \C~input_o\);

-- Location: IOIBUF_X41_Y17_N8
\B~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B,
	o => \B~input_o\);

-- Location: LCCOMB_X1_Y10_N16
\Mux4~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux4~0_combout\ = (\D~input_o\ & (\B~input_o\ $ (((\C~input_o\) # (!\A~input_o\))))) # (!\D~input_o\ & ((\A~input_o\ & (!\C~input_o\ & !\B~input_o\)) # (!\A~input_o\ & (\C~input_o\ & \B~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001100010100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \D~input_o\,
	datab => \A~input_o\,
	datac => \C~input_o\,
	datad => \B~input_o\,
	combout => \Mux4~0_combout\);

-- Location: LCCOMB_X1_Y10_N10
\Mux3~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux3~0_combout\ = (\A~input_o\ & (!\C~input_o\ & ((\B~input_o\) # (!\D~input_o\)))) # (!\A~input_o\ & (\C~input_o\ & ((\D~input_o\) # (!\B~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010110000110100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \D~input_o\,
	datab => \A~input_o\,
	datac => \C~input_o\,
	datad => \B~input_o\,
	combout => \Mux3~0_combout\);

-- Location: LCCOMB_X1_Y10_N12
\Mux2~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux2~0_combout\ = (\D~input_o\ & (\A~input_o\ & (!\C~input_o\ & !\B~input_o\))) # (!\D~input_o\ & (\B~input_o\ & (\A~input_o\ $ (!\C~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \D~input_o\,
	datab => \A~input_o\,
	datac => \C~input_o\,
	datad => \B~input_o\,
	combout => \Mux2~0_combout\);

-- Location: LCCOMB_X1_Y10_N6
\Mux1~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux1~0_combout\ = (\D~input_o\ & ((\B~input_o\) # (!\E~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \D~input_o\,
	datab => \E~input_o\,
	datad => \B~input_o\,
	combout => \Mux1~0_combout\);

-- Location: LCCOMB_X1_Y10_N24
\Mux1~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux1~1_combout\ = (\C~input_o\ & (\B~input_o\ & ((\Mux1~0_combout\) # (!\A~input_o\)))) # (!\C~input_o\ & ((\A~input_o\ & ((!\B~input_o\))) # (!\A~input_o\ & (\Mux1~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011001000001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux1~0_combout\,
	datab => \A~input_o\,
	datac => \C~input_o\,
	datad => \B~input_o\,
	combout => \Mux1~1_combout\);

-- Location: LCCOMB_X1_Y10_N26
\Mux0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux0~0_combout\ = ((!\C~input_o\ & !\B~input_o\)) # (!\A~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \A~input_o\,
	datac => \C~input_o\,
	datad => \B~input_o\,
	combout => \Mux0~0_combout\);

ww_ABCDEFG(0) <= \ABCDEFG[0]~output_o\;

ww_ABCDEFG(1) <= \ABCDEFG[1]~output_o\;

ww_ABCDEFG(2) <= \ABCDEFG[2]~output_o\;

ww_ABCDEFG(3) <= \ABCDEFG[3]~output_o\;

ww_ABCDEFG(4) <= \ABCDEFG[4]~output_o\;

ww_ABCDEFG(5) <= \ABCDEFG[5]~output_o\;

ww_ABCDEFG(6) <= \ABCDEFG[6]~output_o\;

ww_ABCDEFG(7) <= \ABCDEFG[7]~output_o\;
END structure;


