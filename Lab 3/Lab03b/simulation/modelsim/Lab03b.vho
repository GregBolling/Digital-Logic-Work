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

-- DATE "02/27/2020 00:55:08"

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

ENTITY 	Lab03b IS
    PORT (
	clock : IN std_logic;
	reset : IN std_logic;
	LED : BUFFER std_logic_vector(7 DOWNTO 0)
	);
END Lab03b;

-- Design Ports Information
-- LED[0]	=>  Location: PIN_K7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LED[1]	=>  Location: PIN_G13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LED[2]	=>  Location: PIN_H13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LED[3]	=>  Location: PIN_J13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LED[4]	=>  Location: PIN_L13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LED[5]	=>  Location: PIN_M13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LED[6]	=>  Location: PIN_N12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LED[7]	=>  Location: PIN_N10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- reset	=>  Location: PIN_G4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clock	=>  Location: PIN_H4,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF Lab03b IS
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
SIGNAL ww_reset : std_logic;
SIGNAL ww_LED : std_logic_vector(7 DOWNTO 0);
SIGNAL \clock~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \U0|slow_clock~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \~QUARTUS_CREATED_GND~I_combout\ : std_logic;
SIGNAL \~QUARTUS_CREATED_UNVM~~busy\ : std_logic;
SIGNAL \LED[0]~output_o\ : std_logic;
SIGNAL \LED[1]~output_o\ : std_logic;
SIGNAL \LED[2]~output_o\ : std_logic;
SIGNAL \LED[3]~output_o\ : std_logic;
SIGNAL \LED[4]~output_o\ : std_logic;
SIGNAL \LED[5]~output_o\ : std_logic;
SIGNAL \LED[6]~output_o\ : std_logic;
SIGNAL \LED[7]~output_o\ : std_logic;
SIGNAL \clock~input_o\ : std_logic;
SIGNAL \clock~inputclkctrl_outclk\ : std_logic;
SIGNAL \reset~input_o\ : std_logic;
SIGNAL \U0|Add0~0_combout\ : std_logic;
SIGNAL \U0|Add0~1\ : std_logic;
SIGNAL \U0|Add0~3\ : std_logic;
SIGNAL \U0|Add0~4_combout\ : std_logic;
SIGNAL \U0|Add0~5\ : std_logic;
SIGNAL \U0|Add0~6_combout\ : std_logic;
SIGNAL \U0|Add0~7\ : std_logic;
SIGNAL \U0|Add0~9\ : std_logic;
SIGNAL \U0|Add0~10_combout\ : std_logic;
SIGNAL \U0|Add0~11\ : std_logic;
SIGNAL \U0|Add0~12_combout\ : std_logic;
SIGNAL \U0|Add0~13\ : std_logic;
SIGNAL \U0|Add0~14_combout\ : std_logic;
SIGNAL \U0|Add0~15\ : std_logic;
SIGNAL \U0|Add0~16_combout\ : std_logic;
SIGNAL \U0|count~4_combout\ : std_logic;
SIGNAL \U0|Add0~17\ : std_logic;
SIGNAL \U0|Add0~18_combout\ : std_logic;
SIGNAL \U0|Add0~19\ : std_logic;
SIGNAL \U0|Add0~20_combout\ : std_logic;
SIGNAL \U0|Add0~21\ : std_logic;
SIGNAL \U0|Add0~22_combout\ : std_logic;
SIGNAL \U0|Add0~23\ : std_logic;
SIGNAL \U0|Add0~24_combout\ : std_logic;
SIGNAL \U0|count~3_combout\ : std_logic;
SIGNAL \U0|Add0~25\ : std_logic;
SIGNAL \U0|Add0~26_combout\ : std_logic;
SIGNAL \U0|Add0~27\ : std_logic;
SIGNAL \U0|Add0~28_combout\ : std_logic;
SIGNAL \U0|Add0~29\ : std_logic;
SIGNAL \U0|Add0~30_combout\ : std_logic;
SIGNAL \U0|Add0~31\ : std_logic;
SIGNAL \U0|Add0~32_combout\ : std_logic;
SIGNAL \U0|count~2_combout\ : std_logic;
SIGNAL \U0|Add0~33\ : std_logic;
SIGNAL \U0|Add0~34_combout\ : std_logic;
SIGNAL \U0|Add0~35\ : std_logic;
SIGNAL \U0|Add0~36_combout\ : std_logic;
SIGNAL \U0|Add0~37\ : std_logic;
SIGNAL \U0|Add0~38_combout\ : std_logic;
SIGNAL \U0|Add0~39\ : std_logic;
SIGNAL \U0|Add0~40_combout\ : std_logic;
SIGNAL \U0|count~7_combout\ : std_logic;
SIGNAL \U0|Add0~41\ : std_logic;
SIGNAL \U0|Add0~42_combout\ : std_logic;
SIGNAL \U0|Add0~43\ : std_logic;
SIGNAL \U0|Add0~44_combout\ : std_logic;
SIGNAL \U0|Add0~45\ : std_logic;
SIGNAL \U0|Add0~46_combout\ : std_logic;
SIGNAL \U0|Equal0~0_combout\ : std_logic;
SIGNAL \U0|Equal0~1_combout\ : std_logic;
SIGNAL \U0|Equal0~3_combout\ : std_logic;
SIGNAL \U0|Equal0~2_combout\ : std_logic;
SIGNAL \U0|Equal0~4_combout\ : std_logic;
SIGNAL \U0|Add0~8_combout\ : std_logic;
SIGNAL \U0|count~5_combout\ : std_logic;
SIGNAL \U0|Equal0~5_combout\ : std_logic;
SIGNAL \U0|Add0~2_combout\ : std_logic;
SIGNAL \U0|count~6_combout\ : std_logic;
SIGNAL \U0|Equal0~6_combout\ : std_logic;
SIGNAL \U0|Equal0~7_combout\ : std_logic;
SIGNAL \U0|slow_clock~0_combout\ : std_logic;
SIGNAL \U0|slow_clock~feeder_combout\ : std_logic;
SIGNAL \U0|slow_clock~q\ : std_logic;
SIGNAL \U0|slow_clock~clkctrl_outclk\ : std_logic;
SIGNAL \U1|shift_reg[7]~7_combout\ : std_logic;
SIGNAL \U1|shift_reg~6_combout\ : std_logic;
SIGNAL \U1|shift_reg~5_combout\ : std_logic;
SIGNAL \U1|shift_reg~4_combout\ : std_logic;
SIGNAL \U1|shift_reg~3_combout\ : std_logic;
SIGNAL \U1|shift_reg~2_combout\ : std_logic;
SIGNAL \U1|shift_reg~1_combout\ : std_logic;
SIGNAL \U1|shift_reg~0_combout\ : std_logic;
SIGNAL \U1|shift_reg\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \U0|count\ : std_logic_vector(23 DOWNTO 0);
SIGNAL \ALT_INV_reset~input_o\ : std_logic;

COMPONENT hard_block
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic);
END COMPONENT;

BEGIN

ww_clock <= clock;
ww_reset <= reset;
LED <= ww_LED;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\clock~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \clock~input_o\);

\U0|slow_clock~clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \U0|slow_clock~q\);
\ALT_INV_reset~input_o\ <= NOT \reset~input_o\;
auto_generated_inst : hard_block
PORT MAP (
	devoe => ww_devoe,
	devclrn => ww_devclrn,
	devpor => ww_devpor);

-- Location: LCCOMB_X11_Y9_N12
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

-- Location: IOOBUF_X9_Y0_N2
\LED[0]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U1|shift_reg\(0),
	devoe => ww_devoe,
	o => \LED[0]~output_o\);

-- Location: IOOBUF_X18_Y4_N9
\LED[1]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U1|shift_reg\(1),
	devoe => ww_devoe,
	o => \LED[1]~output_o\);

-- Location: IOOBUF_X18_Y3_N2
\LED[2]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U1|shift_reg\(2),
	devoe => ww_devoe,
	o => \LED[2]~output_o\);

-- Location: IOOBUF_X18_Y3_N9
\LED[3]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U1|shift_reg\(3),
	devoe => ww_devoe,
	o => \LED[3]~output_o\);

-- Location: IOOBUF_X18_Y2_N9
\LED[4]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U1|shift_reg\(4),
	devoe => ww_devoe,
	o => \LED[4]~output_o\);

-- Location: IOOBUF_X11_Y0_N9
\LED[5]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U1|shift_reg\(5),
	devoe => ww_devoe,
	o => \LED[5]~output_o\);

-- Location: IOOBUF_X9_Y0_N16
\LED[6]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U1|shift_reg\(6),
	devoe => ww_devoe,
	o => \LED[6]~output_o\);

-- Location: IOOBUF_X11_Y0_N23
\LED[7]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U1|shift_reg\(7),
	devoe => ww_devoe,
	o => \LED[7]~output_o\);

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

-- Location: IOIBUF_X10_Y11_N22
\reset~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_reset,
	o => \reset~input_o\);

-- Location: LCCOMB_X16_Y6_N8
\U0|Add0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U0|Add0~0_combout\ = \U0|count\(0) $ (VCC)
-- \U0|Add0~1\ = CARRY(\U0|count\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U0|count\(0),
	datad => VCC,
	combout => \U0|Add0~0_combout\,
	cout => \U0|Add0~1\);

-- Location: FF_X16_Y6_N9
\U0|count[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \U0|Add0~0_combout\,
	clrn => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U0|count\(0));

-- Location: LCCOMB_X16_Y6_N10
\U0|Add0~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U0|Add0~2_combout\ = (\U0|count\(1) & (!\U0|Add0~1\)) # (!\U0|count\(1) & ((\U0|Add0~1\) # (GND)))
-- \U0|Add0~3\ = CARRY((!\U0|Add0~1\) # (!\U0|count\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U0|count\(1),
	datad => VCC,
	cin => \U0|Add0~1\,
	combout => \U0|Add0~2_combout\,
	cout => \U0|Add0~3\);

-- Location: LCCOMB_X16_Y6_N12
\U0|Add0~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U0|Add0~4_combout\ = (\U0|count\(2) & (\U0|Add0~3\ $ (GND))) # (!\U0|count\(2) & (!\U0|Add0~3\ & VCC))
-- \U0|Add0~5\ = CARRY((\U0|count\(2) & !\U0|Add0~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U0|count\(2),
	datad => VCC,
	cin => \U0|Add0~3\,
	combout => \U0|Add0~4_combout\,
	cout => \U0|Add0~5\);

-- Location: FF_X16_Y6_N13
\U0|count[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \U0|Add0~4_combout\,
	clrn => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U0|count\(2));

-- Location: LCCOMB_X16_Y6_N14
\U0|Add0~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U0|Add0~6_combout\ = (\U0|count\(3) & (!\U0|Add0~5\)) # (!\U0|count\(3) & ((\U0|Add0~5\) # (GND)))
-- \U0|Add0~7\ = CARRY((!\U0|Add0~5\) # (!\U0|count\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U0|count\(3),
	datad => VCC,
	cin => \U0|Add0~5\,
	combout => \U0|Add0~6_combout\,
	cout => \U0|Add0~7\);

-- Location: FF_X16_Y6_N15
\U0|count[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \U0|Add0~6_combout\,
	clrn => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U0|count\(3));

-- Location: LCCOMB_X16_Y6_N16
\U0|Add0~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U0|Add0~8_combout\ = (\U0|count\(4) & (\U0|Add0~7\ $ (GND))) # (!\U0|count\(4) & (!\U0|Add0~7\ & VCC))
-- \U0|Add0~9\ = CARRY((\U0|count\(4) & !\U0|Add0~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U0|count\(4),
	datad => VCC,
	cin => \U0|Add0~7\,
	combout => \U0|Add0~8_combout\,
	cout => \U0|Add0~9\);

-- Location: LCCOMB_X16_Y6_N18
\U0|Add0~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U0|Add0~10_combout\ = (\U0|count\(5) & (!\U0|Add0~9\)) # (!\U0|count\(5) & ((\U0|Add0~9\) # (GND)))
-- \U0|Add0~11\ = CARRY((!\U0|Add0~9\) # (!\U0|count\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U0|count\(5),
	datad => VCC,
	cin => \U0|Add0~9\,
	combout => \U0|Add0~10_combout\,
	cout => \U0|Add0~11\);

-- Location: FF_X16_Y6_N19
\U0|count[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \U0|Add0~10_combout\,
	clrn => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U0|count\(5));

-- Location: LCCOMB_X16_Y6_N20
\U0|Add0~12\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U0|Add0~12_combout\ = (\U0|count\(6) & (\U0|Add0~11\ $ (GND))) # (!\U0|count\(6) & (!\U0|Add0~11\ & VCC))
-- \U0|Add0~13\ = CARRY((\U0|count\(6) & !\U0|Add0~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U0|count\(6),
	datad => VCC,
	cin => \U0|Add0~11\,
	combout => \U0|Add0~12_combout\,
	cout => \U0|Add0~13\);

-- Location: FF_X16_Y6_N21
\U0|count[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \U0|Add0~12_combout\,
	clrn => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U0|count\(6));

-- Location: LCCOMB_X16_Y6_N22
\U0|Add0~14\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U0|Add0~14_combout\ = (\U0|count\(7) & (!\U0|Add0~13\)) # (!\U0|count\(7) & ((\U0|Add0~13\) # (GND)))
-- \U0|Add0~15\ = CARRY((!\U0|Add0~13\) # (!\U0|count\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U0|count\(7),
	datad => VCC,
	cin => \U0|Add0~13\,
	combout => \U0|Add0~14_combout\,
	cout => \U0|Add0~15\);

-- Location: FF_X16_Y6_N23
\U0|count[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \U0|Add0~14_combout\,
	clrn => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U0|count\(7));

-- Location: LCCOMB_X16_Y6_N24
\U0|Add0~16\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U0|Add0~16_combout\ = (\U0|count\(8) & (\U0|Add0~15\ $ (GND))) # (!\U0|count\(8) & (!\U0|Add0~15\ & VCC))
-- \U0|Add0~17\ = CARRY((\U0|count\(8) & !\U0|Add0~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U0|count\(8),
	datad => VCC,
	cin => \U0|Add0~15\,
	combout => \U0|Add0~16_combout\,
	cout => \U0|Add0~17\);

-- Location: LCCOMB_X16_Y6_N4
\U0|count~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U0|count~4_combout\ = (\U0|Add0~16_combout\ & (((!\U0|Equal0~4_combout\) # (!\U0|Equal0~6_combout\)) # (!\U0|Equal0~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U0|Equal0~5_combout\,
	datab => \U0|Equal0~6_combout\,
	datac => \U0|Equal0~4_combout\,
	datad => \U0|Add0~16_combout\,
	combout => \U0|count~4_combout\);

-- Location: FF_X16_Y6_N5
\U0|count[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \U0|count~4_combout\,
	clrn => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U0|count\(8));

-- Location: LCCOMB_X16_Y6_N26
\U0|Add0~18\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U0|Add0~18_combout\ = (\U0|count\(9) & (!\U0|Add0~17\)) # (!\U0|count\(9) & ((\U0|Add0~17\) # (GND)))
-- \U0|Add0~19\ = CARRY((!\U0|Add0~17\) # (!\U0|count\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U0|count\(9),
	datad => VCC,
	cin => \U0|Add0~17\,
	combout => \U0|Add0~18_combout\,
	cout => \U0|Add0~19\);

-- Location: FF_X16_Y6_N27
\U0|count[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \U0|Add0~18_combout\,
	clrn => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U0|count\(9));

-- Location: LCCOMB_X16_Y6_N28
\U0|Add0~20\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U0|Add0~20_combout\ = (\U0|count\(10) & (\U0|Add0~19\ $ (GND))) # (!\U0|count\(10) & (!\U0|Add0~19\ & VCC))
-- \U0|Add0~21\ = CARRY((\U0|count\(10) & !\U0|Add0~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U0|count\(10),
	datad => VCC,
	cin => \U0|Add0~19\,
	combout => \U0|Add0~20_combout\,
	cout => \U0|Add0~21\);

-- Location: FF_X16_Y6_N29
\U0|count[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \U0|Add0~20_combout\,
	clrn => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U0|count\(10));

-- Location: LCCOMB_X16_Y6_N30
\U0|Add0~22\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U0|Add0~22_combout\ = (\U0|count\(11) & (!\U0|Add0~21\)) # (!\U0|count\(11) & ((\U0|Add0~21\) # (GND)))
-- \U0|Add0~23\ = CARRY((!\U0|Add0~21\) # (!\U0|count\(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U0|count\(11),
	datad => VCC,
	cin => \U0|Add0~21\,
	combout => \U0|Add0~22_combout\,
	cout => \U0|Add0~23\);

-- Location: FF_X16_Y6_N31
\U0|count[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \U0|Add0~22_combout\,
	clrn => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U0|count\(11));

-- Location: LCCOMB_X16_Y5_N0
\U0|Add0~24\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U0|Add0~24_combout\ = (\U0|count\(12) & (\U0|Add0~23\ $ (GND))) # (!\U0|count\(12) & (!\U0|Add0~23\ & VCC))
-- \U0|Add0~25\ = CARRY((\U0|count\(12) & !\U0|Add0~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U0|count\(12),
	datad => VCC,
	cin => \U0|Add0~23\,
	combout => \U0|Add0~24_combout\,
	cout => \U0|Add0~25\);

-- Location: LCCOMB_X16_Y5_N28
\U0|count~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U0|count~3_combout\ = (\U0|Add0~24_combout\ & (((!\U0|Equal0~6_combout\) # (!\U0|Equal0~4_combout\)) # (!\U0|Equal0~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U0|Equal0~5_combout\,
	datab => \U0|Equal0~4_combout\,
	datac => \U0|Equal0~6_combout\,
	datad => \U0|Add0~24_combout\,
	combout => \U0|count~3_combout\);

-- Location: FF_X16_Y5_N29
\U0|count[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \U0|count~3_combout\,
	clrn => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U0|count\(12));

-- Location: LCCOMB_X16_Y5_N2
\U0|Add0~26\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U0|Add0~26_combout\ = (\U0|count\(13) & (!\U0|Add0~25\)) # (!\U0|count\(13) & ((\U0|Add0~25\) # (GND)))
-- \U0|Add0~27\ = CARRY((!\U0|Add0~25\) # (!\U0|count\(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U0|count\(13),
	datad => VCC,
	cin => \U0|Add0~25\,
	combout => \U0|Add0~26_combout\,
	cout => \U0|Add0~27\);

-- Location: FF_X16_Y5_N3
\U0|count[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \U0|Add0~26_combout\,
	clrn => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U0|count\(13));

-- Location: LCCOMB_X16_Y5_N4
\U0|Add0~28\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U0|Add0~28_combout\ = (\U0|count\(14) & (\U0|Add0~27\ $ (GND))) # (!\U0|count\(14) & (!\U0|Add0~27\ & VCC))
-- \U0|Add0~29\ = CARRY((\U0|count\(14) & !\U0|Add0~27\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U0|count\(14),
	datad => VCC,
	cin => \U0|Add0~27\,
	combout => \U0|Add0~28_combout\,
	cout => \U0|Add0~29\);

-- Location: FF_X16_Y5_N5
\U0|count[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \U0|Add0~28_combout\,
	clrn => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U0|count\(14));

-- Location: LCCOMB_X16_Y5_N6
\U0|Add0~30\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U0|Add0~30_combout\ = (\U0|count\(15) & (!\U0|Add0~29\)) # (!\U0|count\(15) & ((\U0|Add0~29\) # (GND)))
-- \U0|Add0~31\ = CARRY((!\U0|Add0~29\) # (!\U0|count\(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U0|count\(15),
	datad => VCC,
	cin => \U0|Add0~29\,
	combout => \U0|Add0~30_combout\,
	cout => \U0|Add0~31\);

-- Location: FF_X16_Y5_N7
\U0|count[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \U0|Add0~30_combout\,
	clrn => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U0|count\(15));

-- Location: LCCOMB_X16_Y5_N8
\U0|Add0~32\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U0|Add0~32_combout\ = (\U0|count\(16) & (\U0|Add0~31\ $ (GND))) # (!\U0|count\(16) & (!\U0|Add0~31\ & VCC))
-- \U0|Add0~33\ = CARRY((\U0|count\(16) & !\U0|Add0~31\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U0|count\(16),
	datad => VCC,
	cin => \U0|Add0~31\,
	combout => \U0|Add0~32_combout\,
	cout => \U0|Add0~33\);

-- Location: LCCOMB_X16_Y5_N30
\U0|count~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U0|count~2_combout\ = (\U0|Add0~32_combout\ & (((!\U0|Equal0~5_combout\) # (!\U0|Equal0~4_combout\)) # (!\U0|Equal0~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U0|Equal0~6_combout\,
	datab => \U0|Equal0~4_combout\,
	datac => \U0|Add0~32_combout\,
	datad => \U0|Equal0~5_combout\,
	combout => \U0|count~2_combout\);

-- Location: FF_X16_Y5_N31
\U0|count[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \U0|count~2_combout\,
	clrn => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U0|count\(16));

-- Location: LCCOMB_X16_Y5_N10
\U0|Add0~34\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U0|Add0~34_combout\ = (\U0|count\(17) & (!\U0|Add0~33\)) # (!\U0|count\(17) & ((\U0|Add0~33\) # (GND)))
-- \U0|Add0~35\ = CARRY((!\U0|Add0~33\) # (!\U0|count\(17)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U0|count\(17),
	datad => VCC,
	cin => \U0|Add0~33\,
	combout => \U0|Add0~34_combout\,
	cout => \U0|Add0~35\);

-- Location: FF_X16_Y5_N11
\U0|count[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \U0|Add0~34_combout\,
	clrn => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U0|count\(17));

-- Location: LCCOMB_X16_Y5_N12
\U0|Add0~36\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U0|Add0~36_combout\ = (\U0|count\(18) & (\U0|Add0~35\ $ (GND))) # (!\U0|count\(18) & (!\U0|Add0~35\ & VCC))
-- \U0|Add0~37\ = CARRY((\U0|count\(18) & !\U0|Add0~35\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U0|count\(18),
	datad => VCC,
	cin => \U0|Add0~35\,
	combout => \U0|Add0~36_combout\,
	cout => \U0|Add0~37\);

-- Location: FF_X16_Y5_N13
\U0|count[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \U0|Add0~36_combout\,
	clrn => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U0|count\(18));

-- Location: LCCOMB_X16_Y5_N14
\U0|Add0~38\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U0|Add0~38_combout\ = (\U0|count\(19) & (!\U0|Add0~37\)) # (!\U0|count\(19) & ((\U0|Add0~37\) # (GND)))
-- \U0|Add0~39\ = CARRY((!\U0|Add0~37\) # (!\U0|count\(19)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U0|count\(19),
	datad => VCC,
	cin => \U0|Add0~37\,
	combout => \U0|Add0~38_combout\,
	cout => \U0|Add0~39\);

-- Location: FF_X16_Y5_N15
\U0|count[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \U0|Add0~38_combout\,
	clrn => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U0|count\(19));

-- Location: LCCOMB_X16_Y5_N16
\U0|Add0~40\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U0|Add0~40_combout\ = (\U0|count\(20) & (\U0|Add0~39\ $ (GND))) # (!\U0|count\(20) & (!\U0|Add0~39\ & VCC))
-- \U0|Add0~41\ = CARRY((\U0|count\(20) & !\U0|Add0~39\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U0|count\(20),
	datad => VCC,
	cin => \U0|Add0~39\,
	combout => \U0|Add0~40_combout\,
	cout => \U0|Add0~41\);

-- Location: LCCOMB_X16_Y5_N24
\U0|count~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U0|count~7_combout\ = (\U0|Add0~40_combout\ & (((!\U0|Equal0~6_combout\) # (!\U0|Equal0~4_combout\)) # (!\U0|Equal0~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U0|Equal0~5_combout\,
	datab => \U0|Equal0~4_combout\,
	datac => \U0|Equal0~6_combout\,
	datad => \U0|Add0~40_combout\,
	combout => \U0|count~7_combout\);

-- Location: FF_X16_Y5_N25
\U0|count[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \U0|count~7_combout\,
	clrn => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U0|count\(20));

-- Location: LCCOMB_X16_Y5_N18
\U0|Add0~42\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U0|Add0~42_combout\ = (\U0|count\(21) & (!\U0|Add0~41\)) # (!\U0|count\(21) & ((\U0|Add0~41\) # (GND)))
-- \U0|Add0~43\ = CARRY((!\U0|Add0~41\) # (!\U0|count\(21)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U0|count\(21),
	datad => VCC,
	cin => \U0|Add0~41\,
	combout => \U0|Add0~42_combout\,
	cout => \U0|Add0~43\);

-- Location: FF_X16_Y5_N19
\U0|count[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \U0|Add0~42_combout\,
	clrn => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U0|count\(21));

-- Location: LCCOMB_X16_Y5_N20
\U0|Add0~44\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U0|Add0~44_combout\ = (\U0|count\(22) & (\U0|Add0~43\ $ (GND))) # (!\U0|count\(22) & (!\U0|Add0~43\ & VCC))
-- \U0|Add0~45\ = CARRY((\U0|count\(22) & !\U0|Add0~43\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U0|count\(22),
	datad => VCC,
	cin => \U0|Add0~43\,
	combout => \U0|Add0~44_combout\,
	cout => \U0|Add0~45\);

-- Location: FF_X16_Y5_N21
\U0|count[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \U0|Add0~44_combout\,
	clrn => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U0|count\(22));

-- Location: LCCOMB_X16_Y5_N22
\U0|Add0~46\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U0|Add0~46_combout\ = \U0|count\(23) $ (\U0|Add0~45\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U0|count\(23),
	cin => \U0|Add0~45\,
	combout => \U0|Add0~46_combout\);

-- Location: FF_X16_Y5_N23
\U0|count[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \U0|Add0~46_combout\,
	clrn => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U0|count\(23));

-- Location: LCCOMB_X17_Y6_N26
\U0|Equal0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U0|Equal0~0_combout\ = (\U0|count\(20) & (!\U0|count\(22) & (!\U0|count\(21) & !\U0|count\(23))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U0|count\(20),
	datab => \U0|count\(22),
	datac => \U0|count\(21),
	datad => \U0|count\(23),
	combout => \U0|Equal0~0_combout\);

-- Location: LCCOMB_X17_Y5_N0
\U0|Equal0~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U0|Equal0~1_combout\ = (!\U0|count\(19) & (\U0|count\(16) & (!\U0|count\(18) & !\U0|count\(17))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U0|count\(19),
	datab => \U0|count\(16),
	datac => \U0|count\(18),
	datad => \U0|count\(17),
	combout => \U0|Equal0~1_combout\);

-- Location: LCCOMB_X16_Y6_N6
\U0|Equal0~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U0|Equal0~3_combout\ = (!\U0|count\(9) & (\U0|count\(8) & (!\U0|count\(11) & !\U0|count\(10))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U0|count\(9),
	datab => \U0|count\(8),
	datac => \U0|count\(11),
	datad => \U0|count\(10),
	combout => \U0|Equal0~3_combout\);

-- Location: LCCOMB_X16_Y5_N26
\U0|Equal0~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U0|Equal0~2_combout\ = (!\U0|count\(15) & (\U0|count\(12) & (!\U0|count\(14) & !\U0|count\(13))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U0|count\(15),
	datab => \U0|count\(12),
	datac => \U0|count\(14),
	datad => \U0|count\(13),
	combout => \U0|Equal0~2_combout\);

-- Location: LCCOMB_X17_Y6_N20
\U0|Equal0~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U0|Equal0~4_combout\ = (\U0|Equal0~0_combout\ & (\U0|Equal0~1_combout\ & (\U0|Equal0~3_combout\ & \U0|Equal0~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U0|Equal0~0_combout\,
	datab => \U0|Equal0~1_combout\,
	datac => \U0|Equal0~3_combout\,
	datad => \U0|Equal0~2_combout\,
	combout => \U0|Equal0~4_combout\);

-- Location: LCCOMB_X16_Y6_N0
\U0|count~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U0|count~5_combout\ = (\U0|Add0~8_combout\ & (((!\U0|Equal0~4_combout\) # (!\U0|Equal0~6_combout\)) # (!\U0|Equal0~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U0|Equal0~5_combout\,
	datab => \U0|Equal0~6_combout\,
	datac => \U0|Equal0~4_combout\,
	datad => \U0|Add0~8_combout\,
	combout => \U0|count~5_combout\);

-- Location: FF_X16_Y6_N1
\U0|count[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \U0|count~5_combout\,
	clrn => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U0|count\(4));

-- Location: LCCOMB_X17_Y6_N30
\U0|Equal0~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U0|Equal0~5_combout\ = (\U0|count\(4) & (!\U0|count\(5) & (!\U0|count\(6) & !\U0|count\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U0|count\(4),
	datab => \U0|count\(5),
	datac => \U0|count\(6),
	datad => \U0|count\(7),
	combout => \U0|Equal0~5_combout\);

-- Location: LCCOMB_X16_Y6_N2
\U0|count~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U0|count~6_combout\ = (\U0|Add0~2_combout\ & (((!\U0|Equal0~4_combout\) # (!\U0|Equal0~6_combout\)) # (!\U0|Equal0~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U0|Equal0~5_combout\,
	datab => \U0|Equal0~6_combout\,
	datac => \U0|Equal0~4_combout\,
	datad => \U0|Add0~2_combout\,
	combout => \U0|count~6_combout\);

-- Location: FF_X16_Y6_N3
\U0|count[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \U0|count~6_combout\,
	clrn => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U0|count\(1));

-- Location: LCCOMB_X17_Y6_N24
\U0|Equal0~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U0|Equal0~6_combout\ = (!\U0|count\(1) & (\U0|count\(0) & (!\U0|count\(2) & !\U0|count\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U0|count\(1),
	datab => \U0|count\(0),
	datac => \U0|count\(2),
	datad => \U0|count\(3),
	combout => \U0|Equal0~6_combout\);

-- Location: LCCOMB_X17_Y6_N18
\U0|Equal0~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U0|Equal0~7_combout\ = (\U0|Equal0~6_combout\ & (\U0|Equal0~5_combout\ & \U0|Equal0~4_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U0|Equal0~6_combout\,
	datac => \U0|Equal0~5_combout\,
	datad => \U0|Equal0~4_combout\,
	combout => \U0|Equal0~7_combout\);

-- Location: LCCOMB_X17_Y6_N16
\U0|slow_clock~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U0|slow_clock~0_combout\ = \U0|slow_clock~q\ $ (((!\reset~input_o\ & \U0|Equal0~7_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reset~input_o\,
	datac => \U0|slow_clock~q\,
	datad => \U0|Equal0~7_combout\,
	combout => \U0|slow_clock~0_combout\);

-- Location: LCCOMB_X17_Y6_N22
\U0|slow_clock~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U0|slow_clock~feeder_combout\ = \U0|slow_clock~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U0|slow_clock~0_combout\,
	combout => \U0|slow_clock~feeder_combout\);

-- Location: FF_X17_Y6_N23
\U0|slow_clock\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \U0|slow_clock~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U0|slow_clock~q\);

-- Location: CLKCTRL_G5
\U0|slow_clock~clkctrl\ : fiftyfivenm_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \U0|slow_clock~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \U0|slow_clock~clkctrl_outclk\);

-- Location: LCCOMB_X17_Y3_N14
\U1|shift_reg[7]~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U1|shift_reg[7]~7_combout\ = !\U1|shift_reg\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \U1|shift_reg\(0),
	combout => \U1|shift_reg[7]~7_combout\);

-- Location: FF_X17_Y3_N15
\U1|shift_reg[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U0|slow_clock~clkctrl_outclk\,
	d => \U1|shift_reg[7]~7_combout\,
	clrn => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|shift_reg\(7));

-- Location: LCCOMB_X17_Y3_N16
\U1|shift_reg~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U1|shift_reg~6_combout\ = (\U1|shift_reg\(7)) # (!\U1|shift_reg\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \U1|shift_reg\(7),
	datad => \U1|shift_reg\(0),
	combout => \U1|shift_reg~6_combout\);

-- Location: FF_X17_Y3_N17
\U1|shift_reg[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U0|slow_clock~clkctrl_outclk\,
	d => \U1|shift_reg~6_combout\,
	clrn => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|shift_reg\(6));

-- Location: LCCOMB_X17_Y3_N26
\U1|shift_reg~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U1|shift_reg~5_combout\ = (\U1|shift_reg\(6)) # (!\U1|shift_reg\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U1|shift_reg\(6),
	datad => \U1|shift_reg\(0),
	combout => \U1|shift_reg~5_combout\);

-- Location: FF_X17_Y3_N27
\U1|shift_reg[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U0|slow_clock~clkctrl_outclk\,
	d => \U1|shift_reg~5_combout\,
	clrn => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|shift_reg\(5));

-- Location: LCCOMB_X17_Y3_N4
\U1|shift_reg~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U1|shift_reg~4_combout\ = (\U1|shift_reg\(5)) # (!\U1|shift_reg\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \U1|shift_reg\(5),
	datad => \U1|shift_reg\(0),
	combout => \U1|shift_reg~4_combout\);

-- Location: FF_X17_Y3_N5
\U1|shift_reg[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U0|slow_clock~clkctrl_outclk\,
	d => \U1|shift_reg~4_combout\,
	clrn => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|shift_reg\(4));

-- Location: LCCOMB_X17_Y3_N30
\U1|shift_reg~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U1|shift_reg~3_combout\ = (\U1|shift_reg\(4)) # (!\U1|shift_reg\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \U1|shift_reg\(4),
	datad => \U1|shift_reg\(0),
	combout => \U1|shift_reg~3_combout\);

-- Location: FF_X17_Y3_N31
\U1|shift_reg[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U0|slow_clock~clkctrl_outclk\,
	d => \U1|shift_reg~3_combout\,
	clrn => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|shift_reg\(3));

-- Location: LCCOMB_X17_Y3_N8
\U1|shift_reg~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U1|shift_reg~2_combout\ = (\U1|shift_reg\(3)) # (!\U1|shift_reg\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \U1|shift_reg\(3),
	datad => \U1|shift_reg\(0),
	combout => \U1|shift_reg~2_combout\);

-- Location: FF_X17_Y3_N9
\U1|shift_reg[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U0|slow_clock~clkctrl_outclk\,
	d => \U1|shift_reg~2_combout\,
	clrn => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|shift_reg\(2));

-- Location: LCCOMB_X17_Y3_N6
\U1|shift_reg~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U1|shift_reg~1_combout\ = (\U1|shift_reg\(2)) # (!\U1|shift_reg\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \U1|shift_reg\(2),
	datad => \U1|shift_reg\(0),
	combout => \U1|shift_reg~1_combout\);

-- Location: FF_X17_Y3_N7
\U1|shift_reg[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U0|slow_clock~clkctrl_outclk\,
	d => \U1|shift_reg~1_combout\,
	clrn => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|shift_reg\(1));

-- Location: LCCOMB_X17_Y3_N28
\U1|shift_reg~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U1|shift_reg~0_combout\ = (\U1|shift_reg\(1)) # (!\U1|shift_reg\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \U1|shift_reg\(0),
	datad => \U1|shift_reg\(1),
	combout => \U1|shift_reg~0_combout\);

-- Location: FF_X17_Y3_N29
\U1|shift_reg[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U0|slow_clock~clkctrl_outclk\,
	d => \U1|shift_reg~0_combout\,
	clrn => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|shift_reg\(0));

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

ww_LED(0) <= \LED[0]~output_o\;

ww_LED(1) <= \LED[1]~output_o\;

ww_LED(2) <= \LED[2]~output_o\;

ww_LED(3) <= \LED[3]~output_o\;

ww_LED(4) <= \LED[4]~output_o\;

ww_LED(5) <= \LED[5]~output_o\;

ww_LED(6) <= \LED[6]~output_o\;

ww_LED(7) <= \LED[7]~output_o\;
END structure;


