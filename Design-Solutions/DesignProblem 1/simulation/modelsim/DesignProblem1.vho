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

-- DATE "04/03/2020 21:36:04"

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

ENTITY 	DesignProblem1 IS
    PORT (
	Switch1 : IN std_logic;
	Switch2 : IN std_logic;
	Switch3 : IN std_logic;
	Switch4 : IN std_logic;
	Switch5 : IN std_logic;
	LEDOut : BUFFER std_logic_vector(3 DOWNTO 0)
	);
END DesignProblem1;

-- Design Ports Information
-- LEDOut[0]	=>  Location: PIN_K6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDOut[1]	=>  Location: PIN_F12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDOut[2]	=>  Location: PIN_E3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDOut[3]	=>  Location: PIN_E4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Switch2	=>  Location: PIN_H13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Switch5	=>  Location: PIN_M13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Switch1	=>  Location: PIN_G13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Switch4	=>  Location: PIN_L13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Switch3	=>  Location: PIN_J13,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF DesignProblem1 IS
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
SIGNAL ww_Switch5 : std_logic;
SIGNAL ww_LEDOut : std_logic_vector(3 DOWNTO 0);
SIGNAL \~QUARTUS_CREATED_GND~I_combout\ : std_logic;
SIGNAL \~QUARTUS_CREATED_UNVM~~busy\ : std_logic;
SIGNAL \LEDOut[0]~output_o\ : std_logic;
SIGNAL \LEDOut[1]~output_o\ : std_logic;
SIGNAL \LEDOut[2]~output_o\ : std_logic;
SIGNAL \LEDOut[3]~output_o\ : std_logic;
SIGNAL \Switch5~input_o\ : std_logic;
SIGNAL \Switch2~input_o\ : std_logic;
SIGNAL \z1~0_combout\ : std_logic;
SIGNAL \Switch4~input_o\ : std_logic;
SIGNAL \Switch1~input_o\ : std_logic;
SIGNAL \LEDOut~0_combout\ : std_logic;
SIGNAL \LEDOut~1_combout\ : std_logic;
SIGNAL \Switch3~input_o\ : std_logic;
SIGNAL \LEDOut~2_combout\ : std_logic;
SIGNAL \LEDOut~3_combout\ : std_logic;
SIGNAL \LEDOut~4_combout\ : std_logic;
SIGNAL \ALT_INV_LEDOut~4_combout\ : std_logic;
SIGNAL \ALT_INV_LEDOut~2_combout\ : std_logic;
SIGNAL \ALT_INV_z1~0_combout\ : std_logic;

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
ww_Switch5 <= Switch5;
LEDOut <= ww_LEDOut;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
\ALT_INV_LEDOut~4_combout\ <= NOT \LEDOut~4_combout\;
\ALT_INV_LEDOut~2_combout\ <= NOT \LEDOut~2_combout\;
\ALT_INV_z1~0_combout\ <= NOT \z1~0_combout\;
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

-- Location: IOOBUF_X9_Y0_N30
\LEDOut[0]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ALT_INV_z1~0_combout\,
	devoe => ww_devoe,
	o => \LEDOut[0]~output_o\);

-- Location: IOOBUF_X18_Y9_N23
\LEDOut[1]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \LEDOut~0_combout\,
	devoe => ww_devoe,
	o => \LEDOut[1]~output_o\);

-- Location: IOOBUF_X10_Y15_N16
\LEDOut[2]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ALT_INV_LEDOut~2_combout\,
	devoe => ww_devoe,
	o => \LEDOut[2]~output_o\);

-- Location: IOOBUF_X10_Y15_N23
\LEDOut[3]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ALT_INV_LEDOut~4_combout\,
	devoe => ww_devoe,
	o => \LEDOut[3]~output_o\);

-- Location: IOIBUF_X11_Y0_N8
\Switch5~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Switch5,
	o => \Switch5~input_o\);

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

-- Location: LCCOMB_X11_Y1_N8
\z1~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \z1~0_combout\ = (!\Switch2~input_o\) # (!\Switch5~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111100111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Switch5~input_o\,
	datac => \Switch2~input_o\,
	combout => \z1~0_combout\);

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

-- Location: LCCOMB_X11_Y14_N0
\LEDOut~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \LEDOut~0_combout\ = (\Switch2~input_o\ & (\Switch4~input_o\ $ (((\Switch1~input_o\ & \Switch5~input_o\))))) # (!\Switch2~input_o\ & (((\Switch1~input_o\ & \Switch5~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Switch2~input_o\,
	datab => \Switch4~input_o\,
	datac => \Switch1~input_o\,
	datad => \Switch5~input_o\,
	combout => \LEDOut~0_combout\);

-- Location: LCCOMB_X11_Y14_N10
\LEDOut~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \LEDOut~1_combout\ = (!\Switch4~input_o\) # (!\Switch1~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111101011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Switch1~input_o\,
	datac => \Switch4~input_o\,
	combout => \LEDOut~1_combout\);

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

-- Location: LCCOMB_X11_Y14_N12
\LEDOut~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \LEDOut~2_combout\ = (\Switch3~input_o\ & (((!\Switch2~input_o\)))) # (!\Switch3~input_o\ & ((\LEDOut~1_combout\) # ((\Switch5~input_o\ & \Switch2~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LEDOut~1_combout\,
	datab => \Switch5~input_o\,
	datac => \Switch2~input_o\,
	datad => \Switch3~input_o\,
	combout => \LEDOut~2_combout\);

-- Location: LCCOMB_X11_Y14_N6
\LEDOut~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \LEDOut~3_combout\ = (!\Switch3~input_o\ & (((!\Switch4~input_o\) # (!\Switch5~input_o\)) # (!\Switch2~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Switch2~input_o\,
	datab => \Switch5~input_o\,
	datac => \Switch4~input_o\,
	datad => \Switch3~input_o\,
	combout => \LEDOut~3_combout\);

-- Location: LCCOMB_X11_Y14_N16
\LEDOut~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \LEDOut~4_combout\ = (\LEDOut~3_combout\) # (!\Switch1~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LEDOut~3_combout\,
	datac => \Switch1~input_o\,
	combout => \LEDOut~4_combout\);

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

ww_LEDOut(0) <= \LEDOut[0]~output_o\;

ww_LEDOut(1) <= \LEDOut[1]~output_o\;

ww_LEDOut(2) <= \LEDOut[2]~output_o\;

ww_LEDOut(3) <= \LEDOut[3]~output_o\;
END structure;


