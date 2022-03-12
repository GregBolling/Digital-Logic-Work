-- Copyright (C) 2018  Intel Corporation. All rights reserved.
-- Your use of Intel Corporation's design tools, logic functions 
-- and other software and tools, and its AMPP partner logic 
-- functions, and any output files from any of the foregoing 
-- (including device programming or simulation files), and any 
-- associated documentation or information are expressly subject 
-- to the terms and conditions of the Intel Program License 
-- Subscription Agreement, the Intel Quartus Prime License Agreement,
-- the Intel FPGA IP License Agreement, or other applicable license
-- agreement, including, without limitation, that your use is for
-- the sole purpose of programming logic devices manufactured by
-- Intel and sold by Intel or its authorized distributors.  Please
-- refer to the applicable agreement for further details.

-- VENDOR "Altera"
-- PROGRAM "Quartus Prime"
-- VERSION "Version 18.1.0 Build 625 09/12/2018 SJ Lite Edition"

-- DATE "03/27/2020 21:42:26"

-- 
-- Device: Altera 10M02SCU169C8G Package UFBGA169
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY FIFTYFIVENM;
LIBRARY IEEE;
USE FIFTYFIVENM.FIFTYFIVENM_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	hard_block IS
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic
	);
END hard_block;

-- Design Ports Information
-- ~ALTERA_TMS~	=>  Location: PIN_G1,	 I/O Standard: 2.5 V Schmitt Trigger,	 Current Strength: Default
-- ~ALTERA_TCK~	=>  Location: PIN_G2,	 I/O Standard: 2.5 V Schmitt Trigger,	 Current Strength: Default
-- ~ALTERA_TDI~	=>  Location: PIN_F5,	 I/O Standard: 2.5 V Schmitt Trigger,	 Current Strength: Default
-- ~ALTERA_TDO~	=>  Location: PIN_F6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_CONFIG_SEL~	=>  Location: PIN_D7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_nCONFIG~	=>  Location: PIN_E7,	 I/O Standard: 2.5 V Schmitt Trigger,	 Current Strength: Default
-- ~ALTERA_nSTATUS~	=>  Location: PIN_C4,	 I/O Standard: 2.5 V Schmitt Trigger,	 Current Strength: Default
-- ~ALTERA_CONF_DONE~	=>  Location: PIN_C5,	 I/O Standard: 2.5 V Schmitt Trigger,	 Current Strength: Default


ARCHITECTURE structure OF hard_block IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL \~ALTERA_TMS~~padout\ : std_logic;
SIGNAL \~ALTERA_TCK~~padout\ : std_logic;
SIGNAL \~ALTERA_TDI~~padout\ : std_logic;
SIGNAL \~ALTERA_CONFIG_SEL~~padout\ : std_logic;
SIGNAL \~ALTERA_nCONFIG~~padout\ : std_logic;
SIGNAL \~ALTERA_nSTATUS~~padout\ : std_logic;
SIGNAL \~ALTERA_CONF_DONE~~padout\ : std_logic;
SIGNAL \~ALTERA_TMS~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_TCK~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_TDI~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_CONFIG_SEL~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_nCONFIG~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_nSTATUS~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_CONF_DONE~~ibuf_o\ : std_logic;

BEGIN

ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
END structure;


LIBRARY FIFTYFIVENM;
LIBRARY IEEE;
USE FIFTYFIVENM.FIFTYFIVENM_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	DesignProblem2 IS
    PORT (
	Switch1 : IN std_logic;
	Switch2 : IN std_logic;
	Switch3 : IN std_logic;
	Switch4 : IN std_logic;
	SevenSeg : OUT std_logic_vector(6 DOWNTO 0);
	display : OUT std_logic_vector(3 DOWNTO 0)
	);
END DesignProblem2;

-- Design Ports Information
-- SevenSeg[0]	=>  Location: PIN_K8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SevenSeg[1]	=>  Location: PIN_K12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SevenSeg[2]	=>  Location: PIN_M9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SevenSeg[3]	=>  Location: PIN_M10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SevenSeg[4]	=>  Location: PIN_M11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SevenSeg[5]	=>  Location: PIN_M12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SevenSeg[6]	=>  Location: PIN_D11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- display[0]	=>  Location: PIN_J2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- display[1]	=>  Location: PIN_K5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- display[2]	=>  Location: PIN_H2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- display[3]	=>  Location: PIN_H3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Switch2	=>  Location: PIN_H13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Switch3	=>  Location: PIN_J13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Switch4	=>  Location: PIN_L13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Switch1	=>  Location: PIN_G13,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF DesignProblem2 IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_Switch1 : std_logic;
SIGNAL ww_Switch2 : std_logic;
SIGNAL ww_Switch3 : std_logic;
SIGNAL ww_Switch4 : std_logic;
SIGNAL ww_SevenSeg : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_display : std_logic_vector(3 DOWNTO 0);
SIGNAL \~QUARTUS_CREATED_GND~I_combout\ : std_logic;
SIGNAL \~QUARTUS_CREATED_UNVM~~busy\ : std_logic;
SIGNAL \SevenSeg[0]~output_o\ : std_logic;
SIGNAL \SevenSeg[1]~output_o\ : std_logic;
SIGNAL \SevenSeg[2]~output_o\ : std_logic;
SIGNAL \SevenSeg[3]~output_o\ : std_logic;
SIGNAL \SevenSeg[4]~output_o\ : std_logic;
SIGNAL \SevenSeg[5]~output_o\ : std_logic;
SIGNAL \SevenSeg[6]~output_o\ : std_logic;
SIGNAL \display[0]~output_o\ : std_logic;
SIGNAL \display[1]~output_o\ : std_logic;
SIGNAL \display[2]~output_o\ : std_logic;
SIGNAL \display[3]~output_o\ : std_logic;
SIGNAL \Switch3~input_o\ : std_logic;
SIGNAL \Switch2~input_o\ : std_logic;
SIGNAL \Switch4~input_o\ : std_logic;
SIGNAL \Switch1~input_o\ : std_logic;
SIGNAL \SegA~0_combout\ : std_logic;
SIGNAL \SegB~0_combout\ : std_logic;
SIGNAL \SegC~0_combout\ : std_logic;
SIGNAL \SegD~0_combout\ : std_logic;
SIGNAL \SegE~0_combout\ : std_logic;
SIGNAL \SegF~0_combout\ : std_logic;
SIGNAL \SegG~0_combout\ : std_logic;
SIGNAL \ALT_INV_SegG~0_combout\ : std_logic;
SIGNAL \ALT_INV_SegF~0_combout\ : std_logic;
SIGNAL \ALT_INV_SegE~0_combout\ : std_logic;
SIGNAL \ALT_INV_SegD~0_combout\ : std_logic;
SIGNAL \ALT_INV_SegC~0_combout\ : std_logic;
SIGNAL \ALT_INV_SegB~0_combout\ : std_logic;
SIGNAL \ALT_INV_SegA~0_combout\ : std_logic;

COMPONENT hard_block
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic);
END COMPONENT;

BEGIN

ww_Switch1 <= Switch1;
ww_Switch2 <= Switch2;
ww_Switch3 <= Switch3;
ww_Switch4 <= Switch4;
SevenSeg <= ww_SevenSeg;
display <= ww_display;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
\ALT_INV_SegG~0_combout\ <= NOT \SegG~0_combout\;
\ALT_INV_SegF~0_combout\ <= NOT \SegF~0_combout\;
\ALT_INV_SegE~0_combout\ <= NOT \SegE~0_combout\;
\ALT_INV_SegD~0_combout\ <= NOT \SegD~0_combout\;
\ALT_INV_SegC~0_combout\ <= NOT \SegC~0_combout\;
\ALT_INV_SegB~0_combout\ <= NOT \SegB~0_combout\;
\ALT_INV_SegA~0_combout\ <= NOT \SegA~0_combout\;
auto_generated_inst : hard_block
PORT MAP (
	devoe => ww_devoe,
	devclrn => ww_devclrn,
	devpor => ww_devpor);

-- Location: LCCOMB_X6_Y5_N16
\~QUARTUS_CREATED_GND~I\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \~QUARTUS_CREATED_GND~I_combout\ = GND

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \~QUARTUS_CREATED_GND~I_combout\);

-- Location: IOOBUF_X16_Y0_N30
\SevenSeg[0]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ALT_INV_SegA~0_combout\,
	devoe => ww_devoe,
	o => \SevenSeg[0]~output_o\);

-- Location: IOOBUF_X18_Y2_N23
\SevenSeg[1]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ALT_INV_SegB~0_combout\,
	devoe => ww_devoe,
	o => \SevenSeg[1]~output_o\);

-- Location: IOOBUF_X6_Y0_N9
\SevenSeg[2]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ALT_INV_SegC~0_combout\,
	devoe => ww_devoe,
	o => \SevenSeg[2]~output_o\);

-- Location: IOOBUF_X16_Y0_N9
\SevenSeg[3]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ALT_INV_SegD~0_combout\,
	devoe => ww_devoe,
	o => \SevenSeg[3]~output_o\);

-- Location: IOOBUF_X14_Y0_N16
\SevenSeg[4]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ALT_INV_SegE~0_combout\,
	devoe => ww_devoe,
	o => \SevenSeg[4]~output_o\);

-- Location: IOOBUF_X11_Y0_N2
\SevenSeg[5]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ALT_INV_SegF~0_combout\,
	devoe => ww_devoe,
	o => \SevenSeg[5]~output_o\);

-- Location: IOOBUF_X18_Y14_N16
\SevenSeg[6]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ALT_INV_SegG~0_combout\,
	devoe => ww_devoe,
	o => \SevenSeg[6]~output_o\);

-- Location: IOOBUF_X0_Y5_N9
\display[0]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \display[0]~output_o\);

-- Location: IOOBUF_X3_Y0_N23
\display[1]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \display[1]~output_o\);

-- Location: IOOBUF_X10_Y10_N16
\display[2]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \display[2]~output_o\);

-- Location: IOOBUF_X10_Y10_N23
\display[3]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \display[3]~output_o\);

-- Location: IOIBUF_X18_Y3_N8
\Switch3~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Switch3,
	o => \Switch3~input_o\);

-- Location: IOIBUF_X18_Y3_N1
\Switch2~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Switch2,
	o => \Switch2~input_o\);

-- Location: IOIBUF_X18_Y2_N8
\Switch4~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Switch4,
	o => \Switch4~input_o\);

-- Location: IOIBUF_X18_Y4_N8
\Switch1~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Switch1,
	o => \Switch1~input_o\);

-- Location: LCCOMB_X12_Y1_N8
\SegA~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \SegA~0_combout\ = (\Switch3~input_o\ & ((\Switch2~input_o\) # ((\Switch4~input_o\ & !\Switch1~input_o\)))) # (!\Switch3~input_o\ & (((\Switch4~input_o\ & !\Switch1~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100011111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Switch3~input_o\,
	datab => \Switch2~input_o\,
	datac => \Switch4~input_o\,
	datad => \Switch1~input_o\,
	combout => \SegA~0_combout\);

-- Location: LCCOMB_X12_Y1_N2
\SegB~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \SegB~0_combout\ = (\Switch4~input_o\ & (\Switch3~input_o\ $ (((!\Switch2~input_o\ & !\Switch1~input_o\))))) # (!\Switch4~input_o\ & (((\Switch1~input_o\)) # (!\Switch3~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Switch3~input_o\,
	datab => \Switch2~input_o\,
	datac => \Switch4~input_o\,
	datad => \Switch1~input_o\,
	combout => \SegB~0_combout\);

-- Location: LCCOMB_X12_Y1_N28
\SegC~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \SegC~0_combout\ = (\Switch3~input_o\ & (\Switch2~input_o\ $ ((!\Switch4~input_o\)))) # (!\Switch3~input_o\ & (((!\Switch2~input_o\ & !\Switch1~input_o\)) # (!\Switch4~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000011110010111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Switch3~input_o\,
	datab => \Switch2~input_o\,
	datac => \Switch4~input_o\,
	datad => \Switch1~input_o\,
	combout => \SegC~0_combout\);

-- Location: LCCOMB_X12_Y1_N22
\SegD~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \SegD~0_combout\ = (\Switch3~input_o\ & ((\Switch4~input_o\) # (!\Switch2~input_o\))) # (!\Switch3~input_o\ & (\Switch2~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011011100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Switch3~input_o\,
	datab => \Switch2~input_o\,
	datac => \Switch4~input_o\,
	combout => \SegD~0_combout\);

-- Location: LCCOMB_X12_Y1_N24
\SegE~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \SegE~0_combout\ = (((!\Switch4~input_o\ & !\Switch1~input_o\)) # (!\Switch2~input_o\)) # (!\Switch3~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111011101111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Switch3~input_o\,
	datab => \Switch2~input_o\,
	datac => \Switch4~input_o\,
	datad => \Switch1~input_o\,
	combout => \SegE~0_combout\);

-- Location: LCCOMB_X12_Y1_N10
\SegF~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \SegF~0_combout\ = (\Switch4~input_o\) # ((\Switch3~input_o\ & ((!\Switch1~input_o\))) # (!\Switch3~input_o\ & (!\Switch2~input_o\ & \Switch1~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000111111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Switch3~input_o\,
	datab => \Switch2~input_o\,
	datac => \Switch4~input_o\,
	datad => \Switch1~input_o\,
	combout => \SegF~0_combout\);

-- Location: LCCOMB_X12_Y1_N12
\SegG~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \SegG~0_combout\ = (\Switch2~input_o\) # ((\Switch3~input_o\ & (!\Switch4~input_o\ & !\Switch1~input_o\)) # (!\Switch3~input_o\ & ((!\Switch1~input_o\) # (!\Switch4~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110111011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Switch3~input_o\,
	datab => \Switch2~input_o\,
	datac => \Switch4~input_o\,
	datad => \Switch1~input_o\,
	combout => \SegG~0_combout\);

-- Location: UNVM_X0_Y8_N40
\~QUARTUS_CREATED_UNVM~\ : fiftyfivenm_unvm
-- pragma translate_off
GENERIC MAP (
	addr_range1_end_addr => -1,
	addr_range1_offset => -1,
	addr_range2_offset => -1,
	is_compressed_image => "false",
	is_dual_boot => "false",
	is_eram_skip => "false",
	max_ufm_valid_addr => -1,
	max_valid_addr => -1,
	min_ufm_valid_addr => -1,
	min_valid_addr => -1,
	part_name => "quartus_created_unvm",
	reserve_block => "true")
-- pragma translate_on
PORT MAP (
	nosc_ena => \~QUARTUS_CREATED_GND~I_combout\,
	busy => \~QUARTUS_CREATED_UNVM~~busy\);

ww_SevenSeg(0) <= \SevenSeg[0]~output_o\;

ww_SevenSeg(1) <= \SevenSeg[1]~output_o\;

ww_SevenSeg(2) <= \SevenSeg[2]~output_o\;

ww_SevenSeg(3) <= \SevenSeg[3]~output_o\;

ww_SevenSeg(4) <= \SevenSeg[4]~output_o\;

ww_SevenSeg(5) <= \SevenSeg[5]~output_o\;

ww_SevenSeg(6) <= \SevenSeg[6]~output_o\;

ww_display(0) <= \display[0]~output_o\;

ww_display(1) <= \display[1]~output_o\;

ww_display(2) <= \display[2]~output_o\;

ww_display(3) <= \display[3]~output_o\;
END structure;


