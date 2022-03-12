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

-- DATE "04/03/2020 16:13:25"

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


LIBRARY ALTERA;
LIBRARY FIFTYFIVENM;
LIBRARY IEEE;
USE ALTERA.ALTERA_PRIMITIVES_COMPONENTS.ALL;
USE FIFTYFIVENM.FIFTYFIVENM_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	DesignProblem4Part2a IS
    PORT (
	display : BUFFER std_logic_vector(3 DOWNTO 0);
	clock : IN std_logic;
	w : IN std_logic;
	x : IN std_logic;
	y : IN std_logic;
	z : IN std_logic;
	a : BUFFER std_logic;
	b : BUFFER std_logic;
	c : BUFFER std_logic;
	d : BUFFER std_logic;
	e : BUFFER std_logic;
	f : BUFFER std_logic;
	g : BUFFER std_logic
	);
END DesignProblem4Part2a;

-- Design Ports Information
-- display[0]	=>  Location: PIN_J2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- display[1]	=>  Location: PIN_K5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- display[2]	=>  Location: PIN_H2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- display[3]	=>  Location: PIN_H3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a	=>  Location: PIN_D11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- b	=>  Location: PIN_M12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- c	=>  Location: PIN_M11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- d	=>  Location: PIN_M10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- e	=>  Location: PIN_M9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- f	=>  Location: PIN_K12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- g	=>  Location: PIN_K8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- z	=>  Location: PIN_L13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- y	=>  Location: PIN_J13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- x	=>  Location: PIN_H13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- w	=>  Location: PIN_G13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clock	=>  Location: PIN_H4,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF DesignProblem4Part2a IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_display : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_clock : std_logic;
SIGNAL ww_w : std_logic;
SIGNAL ww_x : std_logic;
SIGNAL ww_y : std_logic;
SIGNAL ww_z : std_logic;
SIGNAL ww_a : std_logic;
SIGNAL ww_b : std_logic;
SIGNAL ww_c : std_logic;
SIGNAL ww_d : std_logic;
SIGNAL ww_e : std_logic;
SIGNAL ww_f : std_logic;
SIGNAL ww_g : std_logic;
SIGNAL \clock~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \~QUARTUS_CREATED_GND~I_combout\ : std_logic;
SIGNAL \~QUARTUS_CREATED_UNVM~~busy\ : std_logic;
SIGNAL \display[0]~output_o\ : std_logic;
SIGNAL \display[1]~output_o\ : std_logic;
SIGNAL \display[2]~output_o\ : std_logic;
SIGNAL \display[3]~output_o\ : std_logic;
SIGNAL \a~output_o\ : std_logic;
SIGNAL \b~output_o\ : std_logic;
SIGNAL \c~output_o\ : std_logic;
SIGNAL \d~output_o\ : std_logic;
SIGNAL \e~output_o\ : std_logic;
SIGNAL \f~output_o\ : std_logic;
SIGNAL \g~output_o\ : std_logic;
SIGNAL \clock~input_o\ : std_logic;
SIGNAL \clock~inputclkctrl_outclk\ : std_logic;
SIGNAL \y~input_o\ : std_logic;
SIGNAL \x~input_o\ : std_logic;
SIGNAL \z~input_o\ : std_logic;
SIGNAL \w~input_o\ : std_logic;
SIGNAL \TheRam~0_combout\ : std_logic;
SIGNAL \TheRam~1_combout\ : std_logic;
SIGNAL \TheRam~2_combout\ : std_logic;
SIGNAL \TheRam~3_combout\ : std_logic;
SIGNAL \TheRam~4_combout\ : std_logic;
SIGNAL \TheRam~5_combout\ : std_logic;
SIGNAL \TheRam~6_combout\ : std_logic;
SIGNAL outval : std_logic_vector(7 DOWNTO 0);

COMPONENT hard_block
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic);
END COMPONENT;

BEGIN

display <= ww_display;
ww_clock <= clock;
ww_w <= w;
ww_x <= x;
ww_y <= y;
ww_z <= z;
a <= ww_a;
b <= ww_b;
c <= ww_c;
d <= ww_d;
e <= ww_e;
f <= ww_f;
g <= ww_g;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\clock~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \clock~input_o\);
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

-- Location: IOOBUF_X18_Y14_N16
\a~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => outval(0),
	devoe => ww_devoe,
	o => \a~output_o\);

-- Location: IOOBUF_X11_Y0_N2
\b~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => outval(1),
	devoe => ww_devoe,
	o => \b~output_o\);

-- Location: IOOBUF_X14_Y0_N16
\c~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => outval(2),
	devoe => ww_devoe,
	o => \c~output_o\);

-- Location: IOOBUF_X16_Y0_N9
\d~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => outval(3),
	devoe => ww_devoe,
	o => \d~output_o\);

-- Location: IOOBUF_X6_Y0_N9
\e~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => outval(4),
	devoe => ww_devoe,
	o => \e~output_o\);

-- Location: IOOBUF_X18_Y2_N23
\f~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => outval(5),
	devoe => ww_devoe,
	o => \f~output_o\);

-- Location: IOOBUF_X16_Y0_N30
\g~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => outval(6),
	devoe => ww_devoe,
	o => \g~output_o\);

-- Location: IOIBUF_X0_Y4_N22
\clock~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_clock,
	o => \clock~input_o\);

-- Location: CLKCTRL_G4
\clock~inputclkctrl\ : fiftyfivenm_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \clock~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \clock~inputclkctrl_outclk\);

-- Location: IOIBUF_X18_Y3_N8
\y~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_y,
	o => \y~input_o\);

-- Location: IOIBUF_X18_Y3_N1
\x~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_x,
	o => \x~input_o\);

-- Location: IOIBUF_X18_Y2_N8
\z~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_z,
	o => \z~input_o\);

-- Location: IOIBUF_X18_Y4_N8
\w~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_w,
	o => \w~input_o\);

-- Location: LCCOMB_X16_Y2_N16
\TheRam~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \TheRam~0_combout\ = (!\x~input_o\ & ((\y~input_o\ & (\z~input_o\ $ (\w~input_o\))) # (!\y~input_o\ & (\z~input_o\ & \w~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001001000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \y~input_o\,
	datab => \x~input_o\,
	datac => \z~input_o\,
	datad => \w~input_o\,
	combout => \TheRam~0_combout\);

-- Location: FF_X16_Y2_N17
\outval[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \TheRam~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => outval(0));

-- Location: LCCOMB_X16_Y2_N2
\TheRam~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \TheRam~1_combout\ = (!\z~input_o\ & ((\y~input_o\ & (!\x~input_o\ & \w~input_o\)) # (!\y~input_o\ & (\x~input_o\ & !\w~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \y~input_o\,
	datab => \x~input_o\,
	datac => \z~input_o\,
	datad => \w~input_o\,
	combout => \TheRam~1_combout\);

-- Location: FF_X16_Y2_N3
\outval[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \TheRam~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => outval(1));

-- Location: LCCOMB_X16_Y2_N28
\TheRam~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \TheRam~2_combout\ = (\y~input_o\ & (\x~input_o\ & (\z~input_o\ & !\w~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \y~input_o\,
	datab => \x~input_o\,
	datac => \z~input_o\,
	datad => \w~input_o\,
	combout => \TheRam~2_combout\);

-- Location: FF_X16_Y2_N29
\outval[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \TheRam~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => outval(2));

-- Location: LCCOMB_X16_Y2_N14
\TheRam~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \TheRam~3_combout\ = (\y~input_o\ & (\x~input_o\ & (!\z~input_o\ & !\w~input_o\))) # (!\y~input_o\ & (!\x~input_o\ & ((\z~input_o\) # (\w~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000100011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \y~input_o\,
	datab => \x~input_o\,
	datac => \z~input_o\,
	datad => \w~input_o\,
	combout => \TheRam~3_combout\);

-- Location: FF_X16_Y2_N15
\outval[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \TheRam~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => outval(3));

-- Location: LCCOMB_X16_Y2_N0
\TheRam~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \TheRam~4_combout\ = (\y~input_o\ & (!\w~input_o\ & (\x~input_o\ $ (\z~input_o\)))) # (!\y~input_o\ & (\z~input_o\ & (\x~input_o\ $ (\w~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000001101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \y~input_o\,
	datab => \x~input_o\,
	datac => \z~input_o\,
	datad => \w~input_o\,
	combout => \TheRam~4_combout\);

-- Location: FF_X16_Y2_N1
\outval[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \TheRam~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => outval(4));

-- Location: LCCOMB_X16_Y2_N26
\TheRam~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \TheRam~5_combout\ = (\y~input_o\ & (!\w~input_o\ & ((!\z~input_o\) # (!\x~input_o\)))) # (!\y~input_o\ & (\z~input_o\ & (\x~input_o\ $ (\w~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000001101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \y~input_o\,
	datab => \x~input_o\,
	datac => \z~input_o\,
	datad => \w~input_o\,
	combout => \TheRam~5_combout\);

-- Location: FF_X16_Y2_N27
\outval[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \TheRam~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => outval(5));

-- Location: LCCOMB_X16_Y2_N12
\TheRam~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \TheRam~6_combout\ = (\y~input_o\ & (!\x~input_o\ & (!\z~input_o\))) # (!\y~input_o\ & ((\x~input_o\ & (!\z~input_o\ & !\w~input_o\)) # (!\x~input_o\ & ((\w~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001001100000110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \y~input_o\,
	datab => \x~input_o\,
	datac => \z~input_o\,
	datad => \w~input_o\,
	combout => \TheRam~6_combout\);

-- Location: FF_X16_Y2_N13
\outval[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \TheRam~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => outval(6));

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

ww_display(0) <= \display[0]~output_o\;

ww_display(1) <= \display[1]~output_o\;

ww_display(2) <= \display[2]~output_o\;

ww_display(3) <= \display[3]~output_o\;

ww_a <= \a~output_o\;

ww_b <= \b~output_o\;

ww_c <= \c~output_o\;

ww_d <= \d~output_o\;

ww_e <= \e~output_o\;

ww_f <= \f~output_o\;

ww_g <= \g~output_o\;
END structure;


