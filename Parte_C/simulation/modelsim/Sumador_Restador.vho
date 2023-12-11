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
-- VERSION "Version 13.0.1 Build 232 06/12/2013 Service Pack 1 SJ Web Edition"

-- DATE "12/11/2023 03:30:19"

-- 
-- Device: Altera EP3C80F780C7 Package FBGA780
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY ALTERA;
LIBRARY CYCLONEIII;
LIBRARY IEEE;
USE ALTERA.ALTERA_PRIMITIVES_COMPONENTS.ALL;
USE CYCLONEIII.CYCLONEIII_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	Block1 IS
    PORT (
	clock : IN std_logic;
	A3 : IN std_logic;
	B3 : IN std_logic;
	A2 : IN std_logic;
	B2 : IN std_logic;
	A1 : IN std_logic;
	B1 : IN std_logic;
	A0 : IN std_logic;
	B0 : IN std_logic;
	SOR : IN std_logic;
	S0 : OUT std_logic;
	S1 : OUT std_logic;
	S2 : OUT std_logic;
	S3yN : OUT std_logic;
	Z : OUT std_logic;
	C : OUT std_logic;
	V : OUT std_logic
	);
END Block1;

-- Design Ports Information
-- S0	=>  Location: PIN_AE15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S1	=>  Location: PIN_AF18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S2	=>  Location: PIN_AG19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S3yN	=>  Location: PIN_AF19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Z	=>  Location: PIN_AE20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- C	=>  Location: PIN_AD15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- V	=>  Location: PIN_AC17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clock	=>  Location: PIN_AD18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A0	=>  Location: PIN_AB16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B0	=>  Location: PIN_AF25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A1	=>  Location: PIN_AC15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SOR	=>  Location: PIN_AG23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B1	=>  Location: PIN_AB17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A2	=>  Location: PIN_AC18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B2	=>  Location: PIN_AD21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A3	=>  Location: PIN_AC21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B3	=>  Location: PIN_AG17,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF Block1 IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_clock : std_logic;
SIGNAL ww_A3 : std_logic;
SIGNAL ww_B3 : std_logic;
SIGNAL ww_A2 : std_logic;
SIGNAL ww_B2 : std_logic;
SIGNAL ww_A1 : std_logic;
SIGNAL ww_B1 : std_logic;
SIGNAL ww_A0 : std_logic;
SIGNAL ww_B0 : std_logic;
SIGNAL ww_SOR : std_logic;
SIGNAL ww_S0 : std_logic;
SIGNAL ww_S1 : std_logic;
SIGNAL ww_S2 : std_logic;
SIGNAL ww_S3yN : std_logic;
SIGNAL ww_Z : std_logic;
SIGNAL ww_C : std_logic;
SIGNAL ww_V : std_logic;
SIGNAL \b2v_inst19|Q~q\ : std_logic;
SIGNAL \A0~input_o\ : std_logic;
SIGNAL \b2v_inst19|Q~feeder_combout\ : std_logic;
SIGNAL \S0~output_o\ : std_logic;
SIGNAL \S1~output_o\ : std_logic;
SIGNAL \S2~output_o\ : std_logic;
SIGNAL \S3yN~output_o\ : std_logic;
SIGNAL \Z~output_o\ : std_logic;
SIGNAL \C~output_o\ : std_logic;
SIGNAL \V~output_o\ : std_logic;
SIGNAL \clock~input_o\ : std_logic;
SIGNAL \B0~input_o\ : std_logic;
SIGNAL \b2v_inst21|Q~feeder_combout\ : std_logic;
SIGNAL \b2v_inst21|Q~q\ : std_logic;
SIGNAL \b2v_inst4|suma~0_combout\ : std_logic;
SIGNAL \b2v_inst28|Q~q\ : std_logic;
SIGNAL \A1~input_o\ : std_logic;
SIGNAL \b2v_inst8|Q~q\ : std_logic;
SIGNAL \SOR~input_o\ : std_logic;
SIGNAL \b2v_inst22|Q~q\ : std_logic;
SIGNAL \b2v_inst4|carry_out~1_combout\ : std_logic;
SIGNAL \b2v_inst4|carry_out~0_combout\ : std_logic;
SIGNAL \b2v_inst3|suma~combout\ : std_logic;
SIGNAL \b2v_inst29|Q~q\ : std_logic;
SIGNAL \B2~input_o\ : std_logic;
SIGNAL \b2v_inst6|Q~q\ : std_logic;
SIGNAL \A2~input_o\ : std_logic;
SIGNAL \b2v_inst5|Q~q\ : std_logic;
SIGNAL \B1~input_o\ : std_logic;
SIGNAL \b2v_inst7|Q~q\ : std_logic;
SIGNAL \SYNTHESIZED_WIRE_26~combout\ : std_logic;
SIGNAL \b2v_inst3|carry_out~0_combout\ : std_logic;
SIGNAL \b2v_inst2|suma~0_combout\ : std_logic;
SIGNAL \b2v_inst30|Q~q\ : std_logic;
SIGNAL \B3~input_o\ : std_logic;
SIGNAL \b2v_inst14|Q~feeder_combout\ : std_logic;
SIGNAL \b2v_inst14|Q~q\ : std_logic;
SIGNAL \A3~input_o\ : std_logic;
SIGNAL \b2v_inst13|Q~q\ : std_logic;
SIGNAL \b2v_inst2|carry_out~0_combout\ : std_logic;
SIGNAL \b2v_inst1|suma~0_combout\ : std_logic;
SIGNAL \b2v_inst31|Q~q\ : std_logic;
SIGNAL \SYNTHESIZED_WIRE_30~0_combout\ : std_logic;
SIGNAL \b2v_inst32|Q~q\ : std_logic;
SIGNAL \SYNTHESIZED_WIRE_31~combout\ : std_logic;
SIGNAL \b2v_inst33|Q~q\ : std_logic;
SIGNAL \SYNTHESIZED_WIRE_32~combout\ : std_logic;
SIGNAL \b2v_inst34|Q~q\ : std_logic;

BEGIN

ww_clock <= clock;
ww_A3 <= A3;
ww_B3 <= B3;
ww_A2 <= A2;
ww_B2 <= B2;
ww_A1 <= A1;
ww_B1 <= B1;
ww_A0 <= A0;
ww_B0 <= B0;
ww_SOR <= SOR;
S0 <= ww_S0;
S1 <= ww_S1;
S2 <= ww_S2;
S3yN <= ww_S3yN;
Z <= ww_Z;
C <= ww_C;
V <= ww_V;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

-- Location: FF_X72_Y1_N27
\b2v_inst19|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => \b2v_inst19|Q~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst19|Q~q\);

-- Location: IOIBUF_X56_Y0_N22
\A0~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A0,
	o => \A0~input_o\);

-- Location: LCCOMB_X72_Y1_N26
\b2v_inst19|Q~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \b2v_inst19|Q~feeder_combout\ = \A0~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \A0~input_o\,
	combout => \b2v_inst19|Q~feeder_combout\);

-- Location: IOOBUF_X51_Y0_N9
\S0~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \b2v_inst28|Q~q\,
	devoe => ww_devoe,
	o => \S0~output_o\);

-- Location: IOOBUF_X62_Y0_N2
\S1~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \b2v_inst29|Q~q\,
	devoe => ww_devoe,
	o => \S1~output_o\);

-- Location: IOOBUF_X60_Y0_N23
\S2~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \b2v_inst30|Q~q\,
	devoe => ww_devoe,
	o => \S2~output_o\);

-- Location: IOOBUF_X69_Y0_N2
\S3yN~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \b2v_inst31|Q~q\,
	devoe => ww_devoe,
	o => \S3yN~output_o\);

-- Location: IOOBUF_X71_Y0_N9
\Z~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \b2v_inst32|Q~q\,
	devoe => ww_devoe,
	o => \Z~output_o\);

-- Location: IOOBUF_X51_Y0_N16
\C~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \b2v_inst33|Q~q\,
	devoe => ww_devoe,
	o => \C~output_o\);

-- Location: IOOBUF_X60_Y0_N9
\V~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \b2v_inst34|Q~q\,
	devoe => ww_devoe,
	o => \V~output_o\);

-- Location: IOIBUF_X73_Y0_N22
\clock~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_clock,
	o => \clock~input_o\);

-- Location: IOIBUF_X71_Y0_N15
\B0~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B0,
	o => \B0~input_o\);

-- Location: LCCOMB_X72_Y1_N16
\b2v_inst21|Q~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \b2v_inst21|Q~feeder_combout\ = \B0~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \B0~input_o\,
	combout => \b2v_inst21|Q~feeder_combout\);

-- Location: FF_X72_Y1_N17
\b2v_inst21|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => \b2v_inst21|Q~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst21|Q~q\);

-- Location: LCCOMB_X72_Y1_N10
\b2v_inst4|suma~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \b2v_inst4|suma~0_combout\ = \b2v_inst19|Q~q\ $ (\b2v_inst21|Q~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst19|Q~q\,
	datad => \b2v_inst21|Q~q\,
	combout => \b2v_inst4|suma~0_combout\);

-- Location: FF_X72_Y1_N13
\b2v_inst28|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	asdata => \b2v_inst4|suma~0_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst28|Q~q\);

-- Location: IOIBUF_X51_Y0_N22
\A1~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A1,
	o => \A1~input_o\);

-- Location: FF_X72_Y1_N1
\b2v_inst8|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	asdata => \A1~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst8|Q~q\);

-- Location: IOIBUF_X67_Y0_N8
\SOR~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SOR,
	o => \SOR~input_o\);

-- Location: FF_X72_Y1_N11
\b2v_inst22|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	asdata => \SOR~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst22|Q~q\);

-- Location: LCCOMB_X72_Y1_N28
\b2v_inst4|carry_out~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \b2v_inst4|carry_out~1_combout\ = (\b2v_inst22|Q~q\ & (\b2v_inst19|Q~q\ $ (!\b2v_inst21|Q~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst19|Q~q\,
	datab => \b2v_inst21|Q~q\,
	datad => \b2v_inst22|Q~q\,
	combout => \b2v_inst4|carry_out~1_combout\);

-- Location: LCCOMB_X72_Y1_N12
\b2v_inst4|carry_out~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \b2v_inst4|carry_out~0_combout\ = (\b2v_inst19|Q~q\ & (\b2v_inst21|Q~q\ $ (\b2v_inst22|Q~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst19|Q~q\,
	datab => \b2v_inst21|Q~q\,
	datad => \b2v_inst22|Q~q\,
	combout => \b2v_inst4|carry_out~0_combout\);

-- Location: LCCOMB_X72_Y1_N14
\b2v_inst3|suma\ : cycloneiii_lcell_comb
-- Equation(s):
-- \b2v_inst3|suma~combout\ = \SYNTHESIZED_WIRE_26~combout\ $ (\b2v_inst8|Q~q\ $ (((\b2v_inst4|carry_out~1_combout\) # (\b2v_inst4|carry_out~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SYNTHESIZED_WIRE_26~combout\,
	datab => \b2v_inst8|Q~q\,
	datac => \b2v_inst4|carry_out~1_combout\,
	datad => \b2v_inst4|carry_out~0_combout\,
	combout => \b2v_inst3|suma~combout\);

-- Location: FF_X72_Y1_N15
\b2v_inst29|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => \b2v_inst3|suma~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst29|Q~q\);

-- Location: IOIBUF_X88_Y0_N15
\B2~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B2,
	o => \B2~input_o\);

-- Location: FF_X72_Y1_N5
\b2v_inst6|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	asdata => \B2~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst6|Q~q\);

-- Location: IOIBUF_X73_Y0_N1
\A2~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A2,
	o => \A2~input_o\);

-- Location: FF_X72_Y1_N7
\b2v_inst5|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	asdata => \A2~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst5|Q~q\);

-- Location: IOIBUF_X76_Y0_N1
\B1~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B1,
	o => \B1~input_o\);

-- Location: FF_X72_Y1_N3
\b2v_inst7|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	asdata => \B1~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst7|Q~q\);

-- Location: LCCOMB_X72_Y1_N2
SYNTHESIZED_WIRE_26 : cycloneiii_lcell_comb
-- Equation(s):
-- \SYNTHESIZED_WIRE_26~combout\ = \b2v_inst7|Q~q\ $ (\b2v_inst22|Q~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \b2v_inst7|Q~q\,
	datad => \b2v_inst22|Q~q\,
	combout => \SYNTHESIZED_WIRE_26~combout\);

-- Location: LCCOMB_X72_Y1_N0
\b2v_inst3|carry_out~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \b2v_inst3|carry_out~0_combout\ = (\b2v_inst8|Q~q\ & ((\b2v_inst4|carry_out~0_combout\) # ((\b2v_inst4|carry_out~1_combout\) # (\SYNTHESIZED_WIRE_26~combout\)))) # (!\b2v_inst8|Q~q\ & (\SYNTHESIZED_WIRE_26~combout\ & ((\b2v_inst4|carry_out~0_combout\) # 
-- (\b2v_inst4|carry_out~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst4|carry_out~0_combout\,
	datab => \b2v_inst4|carry_out~1_combout\,
	datac => \b2v_inst8|Q~q\,
	datad => \SYNTHESIZED_WIRE_26~combout\,
	combout => \b2v_inst3|carry_out~0_combout\);

-- Location: LCCOMB_X72_Y1_N8
\b2v_inst2|suma~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \b2v_inst2|suma~0_combout\ = \b2v_inst22|Q~q\ $ (\b2v_inst6|Q~q\ $ (\b2v_inst5|Q~q\ $ (\b2v_inst3|carry_out~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst22|Q~q\,
	datab => \b2v_inst6|Q~q\,
	datac => \b2v_inst5|Q~q\,
	datad => \b2v_inst3|carry_out~0_combout\,
	combout => \b2v_inst2|suma~0_combout\);

-- Location: FF_X72_Y1_N9
\b2v_inst30|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => \b2v_inst2|suma~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst30|Q~q\);

-- Location: IOIBUF_X53_Y0_N22
\B3~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B3,
	o => \B3~input_o\);

-- Location: LCCOMB_X72_Y1_N22
\b2v_inst14|Q~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \b2v_inst14|Q~feeder_combout\ = \B3~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \B3~input_o\,
	combout => \b2v_inst14|Q~feeder_combout\);

-- Location: FF_X72_Y1_N23
\b2v_inst14|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => \b2v_inst14|Q~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst14|Q~q\);

-- Location: IOIBUF_X88_Y0_N22
\A3~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A3,
	o => \A3~input_o\);

-- Location: FF_X72_Y1_N29
\b2v_inst13|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	asdata => \A3~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst13|Q~q\);

-- Location: LCCOMB_X72_Y1_N6
\b2v_inst2|carry_out~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \b2v_inst2|carry_out~0_combout\ = (\b2v_inst5|Q~q\ & ((\b2v_inst3|carry_out~0_combout\) # (\b2v_inst22|Q~q\ $ (\b2v_inst6|Q~q\)))) # (!\b2v_inst5|Q~q\ & (\b2v_inst3|carry_out~0_combout\ & (\b2v_inst22|Q~q\ $ (\b2v_inst6|Q~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011001100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst22|Q~q\,
	datab => \b2v_inst6|Q~q\,
	datac => \b2v_inst5|Q~q\,
	datad => \b2v_inst3|carry_out~0_combout\,
	combout => \b2v_inst2|carry_out~0_combout\);

-- Location: LCCOMB_X72_Y1_N18
\b2v_inst1|suma~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \b2v_inst1|suma~0_combout\ = \b2v_inst22|Q~q\ $ (\b2v_inst14|Q~q\ $ (\b2v_inst13|Q~q\ $ (\b2v_inst2|carry_out~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst22|Q~q\,
	datab => \b2v_inst14|Q~q\,
	datac => \b2v_inst13|Q~q\,
	datad => \b2v_inst2|carry_out~0_combout\,
	combout => \b2v_inst1|suma~0_combout\);

-- Location: FF_X72_Y1_N19
\b2v_inst31|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => \b2v_inst1|suma~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst31|Q~q\);

-- Location: LCCOMB_X72_Y1_N20
\SYNTHESIZED_WIRE_30~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \SYNTHESIZED_WIRE_30~0_combout\ = (((!\b2v_inst1|suma~0_combout\) # (!\b2v_inst2|suma~0_combout\)) # (!\b2v_inst3|suma~combout\)) # (!\b2v_inst4|suma~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst4|suma~0_combout\,
	datab => \b2v_inst3|suma~combout\,
	datac => \b2v_inst2|suma~0_combout\,
	datad => \b2v_inst1|suma~0_combout\,
	combout => \SYNTHESIZED_WIRE_30~0_combout\);

-- Location: FF_X72_Y1_N21
\b2v_inst32|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => \SYNTHESIZED_WIRE_30~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst32|Q~q\);

-- Location: LCCOMB_X72_Y1_N30
SYNTHESIZED_WIRE_31 : cycloneiii_lcell_comb
-- Equation(s):
-- \SYNTHESIZED_WIRE_31~combout\ = (\b2v_inst2|carry_out~0_combout\ & ((\b2v_inst13|Q~q\ & ((!\b2v_inst22|Q~q\))) # (!\b2v_inst13|Q~q\ & (\b2v_inst14|Q~q\)))) # (!\b2v_inst2|carry_out~0_combout\ & ((\b2v_inst13|Q~q\ & (\b2v_inst14|Q~q\)) # (!\b2v_inst13|Q~q\ 
-- & ((\b2v_inst22|Q~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100110111101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst2|carry_out~0_combout\,
	datab => \b2v_inst14|Q~q\,
	datac => \b2v_inst13|Q~q\,
	datad => \b2v_inst22|Q~q\,
	combout => \SYNTHESIZED_WIRE_31~combout\);

-- Location: FF_X72_Y1_N31
\b2v_inst33|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => \SYNTHESIZED_WIRE_31~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst33|Q~q\);

-- Location: LCCOMB_X72_Y1_N24
SYNTHESIZED_WIRE_32 : cycloneiii_lcell_comb
-- Equation(s):
-- \SYNTHESIZED_WIRE_32~combout\ = (\b2v_inst14|Q~q\ & (\b2v_inst13|Q~q\ & (\b2v_inst2|carry_out~0_combout\ $ (!\b2v_inst22|Q~q\)))) # (!\b2v_inst14|Q~q\ & (!\b2v_inst13|Q~q\ & (\b2v_inst2|carry_out~0_combout\ $ (\b2v_inst22|Q~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000101000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst2|carry_out~0_combout\,
	datab => \b2v_inst14|Q~q\,
	datac => \b2v_inst13|Q~q\,
	datad => \b2v_inst22|Q~q\,
	combout => \SYNTHESIZED_WIRE_32~combout\);

-- Location: FF_X72_Y1_N25
\b2v_inst34|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => \SYNTHESIZED_WIRE_32~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst34|Q~q\);

ww_S0 <= \S0~output_o\;

ww_S1 <= \S1~output_o\;

ww_S2 <= \S2~output_o\;

ww_S3yN <= \S3yN~output_o\;

ww_Z <= \Z~output_o\;

ww_C <= \C~output_o\;

ww_V <= \V~output_o\;
END structure;


