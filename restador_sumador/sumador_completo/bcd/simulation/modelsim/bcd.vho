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

-- DATE "02/22/2024 21:58:36"

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

ENTITY 	bcd IS
    PORT (
	IA : IN std_logic;
	IB : IN std_logic;
	IC : IN std_logic;
	ID : IN std_logic;
	ABCDEFG : BUFFER std_logic_vector(6 DOWNTO 0)
	);
END bcd;

-- Design Ports Information
-- ABCDEFG[0]	=>  Location: PIN_R1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ABCDEFG[1]	=>  Location: PIN_M5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ABCDEFG[2]	=>  Location: PIN_P4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ABCDEFG[3]	=>  Location: PIN_R21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ABCDEFG[4]	=>  Location: PIN_M2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ABCDEFG[5]	=>  Location: PIN_B10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ABCDEFG[6]	=>  Location: PIN_E4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ID	=>  Location: PIN_AA1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- IC	=>  Location: PIN_J3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- IB	=>  Location: PIN_L16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- IA	=>  Location: PIN_T11,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF bcd IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_IA : std_logic;
SIGNAL ww_IB : std_logic;
SIGNAL ww_IC : std_logic;
SIGNAL ww_ID : std_logic;
SIGNAL ww_ABCDEFG : std_logic_vector(6 DOWNTO 0);
SIGNAL \ABCDEFG[0]~output_o\ : std_logic;
SIGNAL \ABCDEFG[1]~output_o\ : std_logic;
SIGNAL \ABCDEFG[2]~output_o\ : std_logic;
SIGNAL \ABCDEFG[3]~output_o\ : std_logic;
SIGNAL \ABCDEFG[4]~output_o\ : std_logic;
SIGNAL \ABCDEFG[5]~output_o\ : std_logic;
SIGNAL \ABCDEFG[6]~output_o\ : std_logic;
SIGNAL \IA~input_o\ : std_logic;
SIGNAL \ID~input_o\ : std_logic;
SIGNAL \IC~input_o\ : std_logic;
SIGNAL \IB~input_o\ : std_logic;
SIGNAL \Mux6~0_combout\ : std_logic;
SIGNAL \Mux5~0_combout\ : std_logic;
SIGNAL \Mux4~0_combout\ : std_logic;
SIGNAL \Mux3~0_combout\ : std_logic;
SIGNAL \Mux2~0_combout\ : std_logic;
SIGNAL \Mux1~0_combout\ : std_logic;
SIGNAL \Mux0~0_combout\ : std_logic;
SIGNAL \ALT_INV_Mux6~0_combout\ : std_logic;

BEGIN

ww_IA <= IA;
ww_IB <= IB;
ww_IC <= IC;
ww_ID <= ID;
ABCDEFG <= ww_ABCDEFG;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
\ALT_INV_Mux6~0_combout\ <= NOT \Mux6~0_combout\;

-- Location: IOOBUF_X0_Y10_N9
\ABCDEFG[0]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ALT_INV_Mux6~0_combout\,
	devoe => ww_devoe,
	o => \ABCDEFG[0]~output_o\);

-- Location: IOOBUF_X0_Y11_N9
\ABCDEFG[1]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux5~0_combout\,
	devoe => ww_devoe,
	o => \ABCDEFG[1]~output_o\);

-- Location: IOOBUF_X0_Y10_N23
\ABCDEFG[2]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux4~0_combout\,
	devoe => ww_devoe,
	o => \ABCDEFG[2]~output_o\);

-- Location: IOOBUF_X41_Y10_N9
\ABCDEFG[3]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux3~0_combout\,
	devoe => ww_devoe,
	o => \ABCDEFG[3]~output_o\);

-- Location: IOOBUF_X0_Y13_N16
\ABCDEFG[4]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux2~0_combout\,
	devoe => ww_devoe,
	o => \ABCDEFG[4]~output_o\);

-- Location: IOOBUF_X16_Y29_N23
\ABCDEFG[5]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux1~0_combout\,
	devoe => ww_devoe,
	o => \ABCDEFG[5]~output_o\);

-- Location: IOOBUF_X0_Y26_N2
\ABCDEFG[6]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux0~0_combout\,
	devoe => ww_devoe,
	o => \ABCDEFG[6]~output_o\);

-- Location: IOIBUF_X16_Y0_N15
\IA~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_IA,
	o => \IA~input_o\);

-- Location: IOIBUF_X0_Y5_N15
\ID~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_ID,
	o => \ID~input_o\);

-- Location: IOIBUF_X0_Y21_N22
\IC~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_IC,
	o => \IC~input_o\);

-- Location: IOIBUF_X41_Y17_N8
\IB~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_IB,
	o => \IB~input_o\);

-- Location: LCCOMB_X1_Y13_N8
\Mux6~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux6~0_combout\ = (\IC~input_o\ & (!\IA~input_o\ & ((!\IB~input_o\) # (!\ID~input_o\)))) # (!\IC~input_o\ & (\IA~input_o\ $ (((\IB~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001010101011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IA~input_o\,
	datab => \ID~input_o\,
	datac => \IC~input_o\,
	datad => \IB~input_o\,
	combout => \Mux6~0_combout\);

-- Location: LCCOMB_X1_Y13_N18
\Mux5~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux5~0_combout\ = (\ID~input_o\ & ((\IC~input_o\) # (\IA~input_o\ $ (!\IB~input_o\)))) # (!\ID~input_o\ & ((\IB~input_o\ & (\IA~input_o\)) # (!\IB~input_o\ & ((\IC~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011110100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IA~input_o\,
	datab => \ID~input_o\,
	datac => \IC~input_o\,
	datad => \IB~input_o\,
	combout => \Mux5~0_combout\);

-- Location: LCCOMB_X1_Y13_N20
\Mux4~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux4~0_combout\ = (\ID~input_o\) # ((\IC~input_o\ & (\IA~input_o\)) # (!\IC~input_o\ & ((\IB~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111111101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IA~input_o\,
	datab => \ID~input_o\,
	datac => \IC~input_o\,
	datad => \IB~input_o\,
	combout => \Mux4~0_combout\);

-- Location: LCCOMB_X1_Y13_N6
\Mux3~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux3~0_combout\ = (\ID~input_o\ & ((\IA~input_o\) # (\IC~input_o\ $ (!\IB~input_o\)))) # (!\ID~input_o\ & ((\IC~input_o\ & (\IA~input_o\)) # (!\IC~input_o\ & ((\IB~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101110101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IA~input_o\,
	datab => \ID~input_o\,
	datac => \IC~input_o\,
	datad => \IB~input_o\,
	combout => \Mux3~0_combout\);

-- Location: LCCOMB_X1_Y13_N16
\Mux2~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux2~0_combout\ = (\IB~input_o\ & (\IA~input_o\)) # (!\IB~input_o\ & (\IC~input_o\ & ((\IA~input_o\) # (!\ID~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IA~input_o\,
	datab => \ID~input_o\,
	datac => \IC~input_o\,
	datad => \IB~input_o\,
	combout => \Mux2~0_combout\);

-- Location: LCCOMB_X1_Y13_N10
\Mux1~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux1~0_combout\ = (\IA~input_o\ & (((\IC~input_o\) # (\IB~input_o\)))) # (!\IA~input_o\ & (\IB~input_o\ & (\ID~input_o\ $ (\IC~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IA~input_o\,
	datab => \ID~input_o\,
	datac => \IC~input_o\,
	datad => \IB~input_o\,
	combout => \Mux1~0_combout\);

-- Location: LCCOMB_X1_Y13_N12
\Mux0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux0~0_combout\ = (\IC~input_o\ & (\IA~input_o\)) # (!\IC~input_o\ & (\IB~input_o\ $ (((!\IA~input_o\ & \ID~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101110100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IA~input_o\,
	datab => \ID~input_o\,
	datac => \IC~input_o\,
	datad => \IB~input_o\,
	combout => \Mux0~0_combout\);

ww_ABCDEFG(0) <= \ABCDEFG[0]~output_o\;

ww_ABCDEFG(1) <= \ABCDEFG[1]~output_o\;

ww_ABCDEFG(2) <= \ABCDEFG[2]~output_o\;

ww_ABCDEFG(3) <= \ABCDEFG[3]~output_o\;

ww_ABCDEFG(4) <= \ABCDEFG[4]~output_o\;

ww_ABCDEFG(5) <= \ABCDEFG[5]~output_o\;

ww_ABCDEFG(6) <= \ABCDEFG[6]~output_o\;
END structure;


