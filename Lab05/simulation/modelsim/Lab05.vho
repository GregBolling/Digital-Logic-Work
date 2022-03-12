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

-- DATE "04/05/2020 22:51:19"

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

ENTITY 	Lab05 IS
    PORT (
	CLK : IN std_logic;
	reset : IN std_logic;
	instruction : IN std_logic_vector(2 DOWNTO 0);
	destination : IN std_logic_vector(1 DOWNTO 0);
	start : IN std_logic;
	BUS_IN : IN std_logic_vector(2 DOWNTO 0);
	COUT : OUT std_logic;
	BUS_OUT : OUT std_logic_vector(3 DOWNTO 0);
	started : OUT std_logic;
	done : OUT std_logic
	);
END Lab05;

-- Design Ports Information
-- COUT	=>  Location: PIN_E6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- BUS_OUT[0]	=>  Location: PIN_K6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- BUS_OUT[1]	=>  Location: PIN_F12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- BUS_OUT[2]	=>  Location: PIN_E3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- BUS_OUT[3]	=>  Location: PIN_E4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- started	=>  Location: PIN_L2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- done	=>  Location: PIN_J5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- reset	=>  Location: PIN_G4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- instruction[0]	=>  Location: PIN_J13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- start	=>  Location: PIN_H8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- instruction[2]	=>  Location: PIN_G13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- instruction[1]	=>  Location: PIN_H13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- destination[1]	=>  Location: PIN_L13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- destination[0]	=>  Location: PIN_M13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- BUS_IN[2]	=>  Location: PIN_N12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- BUS_IN[1]	=>  Location: PIN_N10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- BUS_IN[0]	=>  Location: PIN_K2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- CLK	=>  Location: PIN_H4,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF Lab05 IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_CLK : std_logic;
SIGNAL ww_reset : std_logic;
SIGNAL ww_instruction : std_logic_vector(2 DOWNTO 0);
SIGNAL ww_destination : std_logic_vector(1 DOWNTO 0);
SIGNAL ww_start : std_logic;
SIGNAL ww_BUS_IN : std_logic_vector(2 DOWNTO 0);
SIGNAL ww_COUT : std_logic;
SIGNAL ww_BUS_OUT : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_started : std_logic;
SIGNAL ww_done : std_logic;
SIGNAL \CLK~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \Clk1Hz~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \~QUARTUS_CREATED_GND~I_combout\ : std_logic;
SIGNAL \~QUARTUS_CREATED_UNVM~~busy\ : std_logic;
SIGNAL \COUT~output_o\ : std_logic;
SIGNAL \BUS_OUT[0]~output_o\ : std_logic;
SIGNAL \BUS_OUT[1]~output_o\ : std_logic;
SIGNAL \BUS_OUT[2]~output_o\ : std_logic;
SIGNAL \BUS_OUT[3]~output_o\ : std_logic;
SIGNAL \started~output_o\ : std_logic;
SIGNAL \done~output_o\ : std_logic;
SIGNAL \CLK~input_o\ : std_logic;
SIGNAL \CLK~inputclkctrl_outclk\ : std_logic;
SIGNAL \Add0~0_combout\ : std_logic;
SIGNAL \reset~input_o\ : std_logic;
SIGNAL \Add0~1\ : std_logic;
SIGNAL \Add0~2_combout\ : std_logic;
SIGNAL \Add0~3\ : std_logic;
SIGNAL \Add0~4_combout\ : std_logic;
SIGNAL \Add0~5\ : std_logic;
SIGNAL \Add0~6_combout\ : std_logic;
SIGNAL \Equal0~7_combout\ : std_logic;
SIGNAL \Add0~7\ : std_logic;
SIGNAL \Add0~8_combout\ : std_logic;
SIGNAL \Add0~9\ : std_logic;
SIGNAL \Add0~10_combout\ : std_logic;
SIGNAL \Add0~11\ : std_logic;
SIGNAL \Add0~12_combout\ : std_logic;
SIGNAL \Add0~13\ : std_logic;
SIGNAL \Add0~14_combout\ : std_logic;
SIGNAL \count~6_combout\ : std_logic;
SIGNAL \Add0~15\ : std_logic;
SIGNAL \Add0~16_combout\ : std_logic;
SIGNAL \Add0~17\ : std_logic;
SIGNAL \Add0~18_combout\ : std_logic;
SIGNAL \Add0~19\ : std_logic;
SIGNAL \Add0~20_combout\ : std_logic;
SIGNAL \count~5_combout\ : std_logic;
SIGNAL \Add0~21\ : std_logic;
SIGNAL \Add0~22_combout\ : std_logic;
SIGNAL \Equal0~5_combout\ : std_logic;
SIGNAL \Equal0~6_combout\ : std_logic;
SIGNAL \Add0~23\ : std_logic;
SIGNAL \Add0~24_combout\ : std_logic;
SIGNAL \Add0~25\ : std_logic;
SIGNAL \Add0~26_combout\ : std_logic;
SIGNAL \Add0~27\ : std_logic;
SIGNAL \Add0~28_combout\ : std_logic;
SIGNAL \Add0~29\ : std_logic;
SIGNAL \Add0~30_combout\ : std_logic;
SIGNAL \count~4_combout\ : std_logic;
SIGNAL \Equal0~3_combout\ : std_logic;
SIGNAL \Add0~31\ : std_logic;
SIGNAL \Add0~32_combout\ : std_logic;
SIGNAL \Add0~33\ : std_logic;
SIGNAL \Add0~34_combout\ : std_logic;
SIGNAL \count~3_combout\ : std_logic;
SIGNAL \Add0~35\ : std_logic;
SIGNAL \Add0~36_combout\ : std_logic;
SIGNAL \count~2_combout\ : std_logic;
SIGNAL \Add0~37\ : std_logic;
SIGNAL \Add0~38_combout\ : std_logic;
SIGNAL \count~1_combout\ : std_logic;
SIGNAL \Add0~39\ : std_logic;
SIGNAL \Add0~40_combout\ : std_logic;
SIGNAL \count~0_combout\ : std_logic;
SIGNAL \Add0~41\ : std_logic;
SIGNAL \Add0~42_combout\ : std_logic;
SIGNAL \Add0~43\ : std_logic;
SIGNAL \Add0~44_combout\ : std_logic;
SIGNAL \Add0~45\ : std_logic;
SIGNAL \Add0~46_combout\ : std_logic;
SIGNAL \Equal0~1_combout\ : std_logic;
SIGNAL \Equal0~2_combout\ : std_logic;
SIGNAL \Add0~47\ : std_logic;
SIGNAL \Add0~48_combout\ : std_logic;
SIGNAL \Add0~49\ : std_logic;
SIGNAL \Add0~50_combout\ : std_logic;
SIGNAL \Add0~51\ : std_logic;
SIGNAL \Add0~52_combout\ : std_logic;
SIGNAL \Add0~53\ : std_logic;
SIGNAL \Add0~54_combout\ : std_logic;
SIGNAL \Equal0~0_combout\ : std_logic;
SIGNAL \Equal0~4_combout\ : std_logic;
SIGNAL \Equal0~8_combout\ : std_logic;
SIGNAL \Clk1Hz~0_combout\ : std_logic;
SIGNAL \Clk1Hz~feeder_combout\ : std_logic;
SIGNAL \Clk1Hz~q\ : std_logic;
SIGNAL \Clk1Hz~clkctrl_outclk\ : std_logic;
SIGNAL \destination[1]~input_o\ : std_logic;
SIGNAL \instruction[1]~input_o\ : std_logic;
SIGNAL \instruction[0]~input_o\ : std_logic;
SIGNAL \start~input_o\ : std_logic;
SIGNAL \Control|Selector4~0_combout\ : std_logic;
SIGNAL \instruction[2]~input_o\ : std_logic;
SIGNAL \Control|Selector4~1_combout\ : std_logic;
SIGNAL \Control|Selector1~0_combout\ : std_logic;
SIGNAL \Control|present_state.CopyA1~q\ : std_logic;
SIGNAL \Control|Selector7~0_combout\ : std_logic;
SIGNAL \Control|present_state.COPYB1~q\ : std_logic;
SIGNAL \Control|Selector1~1_combout\ : std_logic;
SIGNAL \Control|present_state.Load1~q\ : std_logic;
SIGNAL \Control|WideOr1~1_combout\ : std_logic;
SIGNAL \Control|Selector10~0_combout\ : std_logic;
SIGNAL \Control|present_state.AND1~q\ : std_logic;
SIGNAL \Control|Selector16~0_combout\ : std_logic;
SIGNAL \Control|present_state.ADD1~q\ : std_logic;
SIGNAL \Control|Selector13~0_combout\ : std_logic;
SIGNAL \Control|present_state.OR1~q\ : std_logic;
SIGNAL \Control|WideOr0~0_combout\ : std_logic;
SIGNAL \Control|WideOr0~1_combout\ : std_logic;
SIGNAL \Control|Selector0~0_combout\ : std_logic;
SIGNAL \Control|Selector0~1_combout\ : std_logic;
SIGNAL \Control|present_state.Waiting~q\ : std_logic;
SIGNAL \Control|Selector19~0_combout\ : std_logic;
SIGNAL \Control|Selector19~1_combout\ : std_logic;
SIGNAL \Control|present_state.SUB1~q\ : std_logic;
SIGNAL \destination[0]~input_o\ : std_logic;
SIGNAL \Control|Selector21~0_combout\ : std_logic;
SIGNAL \Control|present_state.SUB_B~q\ : std_logic;
SIGNAL \Control|Selector18~0_combout\ : std_logic;
SIGNAL \Control|present_state.ADD_B~q\ : std_logic;
SIGNAL \Control|Selector17~0_combout\ : std_logic;
SIGNAL \Control|present_state.ADD_A~feeder_combout\ : std_logic;
SIGNAL \Control|present_state.ADD_A~q\ : std_logic;
SIGNAL \Control|Selector20~0_combout\ : std_logic;
SIGNAL \Control|present_state.SUB_A~q\ : std_logic;
SIGNAL \Control|WideOr7~1_combout\ : std_logic;
SIGNAL \Control|Selector15~0_combout\ : std_logic;
SIGNAL \Control|present_state.OR_B~q\ : std_logic;
SIGNAL \Control|Selector14~0_combout\ : std_logic;
SIGNAL \Control|present_state.OR_A~q\ : std_logic;
SIGNAL \Control|WideOr7~0_combout\ : std_logic;
SIGNAL \Control|Selector11~0_combout\ : std_logic;
SIGNAL \Control|present_state.AND_A~q\ : std_logic;
SIGNAL \Control|Selector12~0_combout\ : std_logic;
SIGNAL \Control|present_state.AND_B~q\ : std_logic;
SIGNAL \Control|WideOr8~0_combout\ : std_logic;
SIGNAL \TheRegDatapath|TheALU|Mux0~0_combout\ : std_logic;
SIGNAL \Control|Selector2~0_combout\ : std_logic;
SIGNAL \Control|present_state.LoadA~q\ : std_logic;
SIGNAL \Control|Selector9~0_combout\ : std_logic;
SIGNAL \Control|present_state.COPYB_B~q\ : std_logic;
SIGNAL \Control|Selector8~0_combout\ : std_logic;
SIGNAL \Control|present_state.CopyB_A~q\ : std_logic;
SIGNAL \Control|Selector3~0_combout\ : std_logic;
SIGNAL \Control|present_state.LoadB~q\ : std_logic;
SIGNAL \Control|WideOr2~0_combout\ : std_logic;
SIGNAL \Control|Selector6~0_combout\ : std_logic;
SIGNAL \Control|present_state.CopyA_B~q\ : std_logic;
SIGNAL \Control|WideOr6~0_combout\ : std_logic;
SIGNAL \Control|WideOr6~combout\ : std_logic;
SIGNAL \Control|Selector5~0_combout\ : std_logic;
SIGNAL \Control|present_state.CopyA_A~q\ : std_logic;
SIGNAL \Control|WideOr1~0_combout\ : std_logic;
SIGNAL \Control|WideOr1~combout\ : std_logic;
SIGNAL \TheRegDatapath|Mux0~0_combout\ : std_logic;
SIGNAL \Control|WideOr7~combout\ : std_logic;
SIGNAL \TheRegDatapath|TheALU|Add0~20_combout\ : std_logic;
SIGNAL \TheRegDatapath|TheALU|Add0~1_combout\ : std_logic;
SIGNAL \BUS_IN[2]~input_o\ : std_logic;
SIGNAL \TheRegDatapath|Mux1~1_combout\ : std_logic;
SIGNAL \TheRegDatapath|TheALU|Add0~22_combout\ : std_logic;
SIGNAL \TheRegDatapath|TheALU|Add0~3_combout\ : std_logic;
SIGNAL \BUS_IN[1]~input_o\ : std_logic;
SIGNAL \TheRegDatapath|TheALU|Add0~23_combout\ : std_logic;
SIGNAL \TheRegDatapath|TheALU|Add0~5_combout\ : std_logic;
SIGNAL \BUS_IN[0]~input_o\ : std_logic;
SIGNAL \Control|WideOr5~1_combout\ : std_logic;
SIGNAL \Control|WideOr5~0_combout\ : std_logic;
SIGNAL \Control|WideOr5~combout\ : std_logic;
SIGNAL \TheRegDatapath|TheALU|Add0~25_combout\ : std_logic;
SIGNAL \TheRegDatapath|TheALU|Add0~6_combout\ : std_logic;
SIGNAL \TheRegDatapath|TheALU|Add0~9_combout\ : std_logic;
SIGNAL \TheRegDatapath|TheALU|Add0~26_combout\ : std_logic;
SIGNAL \TheRegDatapath|Mux3~0_combout\ : std_logic;
SIGNAL \TheRegDatapath|Mux3~1_combout\ : std_logic;
SIGNAL \TheRegDatapath|TheALU|Add0~7_combout\ : std_logic;
SIGNAL \TheRegDatapath|TheALU|Add0~8_combout\ : std_logic;
SIGNAL \TheRegDatapath|TheALU|Add0~10\ : std_logic;
SIGNAL \TheRegDatapath|TheALU|Add0~11_combout\ : std_logic;
SIGNAL \TheRegDatapath|TheALU|Add0~24_combout\ : std_logic;
SIGNAL \TheRegDatapath|Mux2~0_combout\ : std_logic;
SIGNAL \TheRegDatapath|Mux2~1_combout\ : std_logic;
SIGNAL \TheRegDatapath|TheALU|Add0~4_combout\ : std_logic;
SIGNAL \TheRegDatapath|TheALU|Add0~12\ : std_logic;
SIGNAL \TheRegDatapath|TheALU|Add0~13_combout\ : std_logic;
SIGNAL \TheRegDatapath|Mux1~0_combout\ : std_logic;
SIGNAL \TheRegDatapath|Mux1~2_combout\ : std_logic;
SIGNAL \TheRegDatapath|TheALU|Add0~2_combout\ : std_logic;
SIGNAL \TheRegDatapath|TheALU|Add0~14\ : std_logic;
SIGNAL \TheRegDatapath|TheALU|Add0~15_combout\ : std_logic;
SIGNAL \TheRegDatapath|TheALU|Add0~21_combout\ : std_logic;
SIGNAL \TheRegDatapath|Mux0~1_combout\ : std_logic;
SIGNAL \TheRegDatapath|TheALU|Add0~0_combout\ : std_logic;
SIGNAL \TheRegDatapath|TheALU|Add0~16\ : std_logic;
SIGNAL \TheRegDatapath|TheALU|Add0~17_combout\ : std_logic;
SIGNAL \TheRegDatapath|TheALU|Add0~19_combout\ : std_logic;
SIGNAL \Control|done~q\ : std_logic;
SIGNAL \DataPrint~0_combout\ : std_logic;
SIGNAL \dataout[1]~feeder_combout\ : std_logic;
SIGNAL \TheRegDatapath|TheALU|Add0~27_combout\ : std_logic;
SIGNAL \dataout[2]~feeder_combout\ : std_logic;
SIGNAL \TheRegDatapath|RegisterA\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \TheRegDatapath|RegisterB\ : std_logic_vector(3 DOWNTO 0);
SIGNAL dataout : std_logic_vector(3 DOWNTO 0);
SIGNAL \TheRegDatapath|RegisterC\ : std_logic_vector(3 DOWNTO 0);
SIGNAL count : std_logic_vector(27 DOWNTO 0);
SIGNAL \ALT_INV_reset~input_o\ : std_logic;

COMPONENT hard_block
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic);
END COMPONENT;

BEGIN

ww_CLK <= CLK;
ww_reset <= reset;
ww_instruction <= instruction;
ww_destination <= destination;
ww_start <= start;
ww_BUS_IN <= BUS_IN;
COUT <= ww_COUT;
BUS_OUT <= ww_BUS_OUT;
started <= ww_started;
done <= ww_done;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\CLK~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \CLK~input_o\);

\Clk1Hz~clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \Clk1Hz~q\);
\ALT_INV_reset~input_o\ <= NOT \reset~input_o\;
auto_generated_inst : hard_block
PORT MAP (
	devoe => ww_devoe,
	devclrn => ww_devclrn,
	devpor => ww_devpor);

-- Location: LCCOMB_X10_Y6_N4
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

-- Location: IOOBUF_X6_Y7_N23
\COUT~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \TheRegDatapath|TheALU|Add0~19_combout\,
	devoe => ww_devoe,
	o => \COUT~output_o\);

-- Location: IOOBUF_X9_Y0_N30
\BUS_OUT[0]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => dataout(0),
	devoe => ww_devoe,
	o => \BUS_OUT[0]~output_o\);

-- Location: IOOBUF_X18_Y9_N23
\BUS_OUT[1]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => dataout(1),
	devoe => ww_devoe,
	o => \BUS_OUT[1]~output_o\);

-- Location: IOOBUF_X10_Y15_N16
\BUS_OUT[2]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => dataout(2),
	devoe => ww_devoe,
	o => \BUS_OUT[2]~output_o\);

-- Location: IOOBUF_X10_Y15_N23
\BUS_OUT[3]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => dataout(3),
	devoe => ww_devoe,
	o => \BUS_OUT[3]~output_o\);

-- Location: IOOBUF_X0_Y3_N9
\started~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Control|present_state.Waiting~q\,
	devoe => ww_devoe,
	o => \started~output_o\);

-- Location: IOOBUF_X3_Y0_N16
\done~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Control|done~q\,
	devoe => ww_devoe,
	o => \done~output_o\);

-- Location: IOIBUF_X0_Y4_N22
\CLK~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_CLK,
	o => \CLK~input_o\);

-- Location: CLKCTRL_G4
\CLK~inputclkctrl\ : fiftyfivenm_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \CLK~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \CLK~inputclkctrl_outclk\);

-- Location: LCCOMB_X12_Y7_N4
\Add0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~0_combout\ = count(0) $ (VCC)
-- \Add0~1\ = CARRY(count(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => count(0),
	datad => VCC,
	combout => \Add0~0_combout\,
	cout => \Add0~1\);

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

-- Location: FF_X12_Y7_N5
\count[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \Add0~0_combout\,
	clrn => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count(0));

-- Location: LCCOMB_X12_Y7_N6
\Add0~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~2_combout\ = (count(1) & (!\Add0~1\)) # (!count(1) & ((\Add0~1\) # (GND)))
-- \Add0~3\ = CARRY((!\Add0~1\) # (!count(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => count(1),
	datad => VCC,
	cin => \Add0~1\,
	combout => \Add0~2_combout\,
	cout => \Add0~3\);

-- Location: FF_X12_Y7_N7
\count[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \Add0~2_combout\,
	clrn => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count(1));

-- Location: LCCOMB_X12_Y7_N8
\Add0~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~4_combout\ = (count(2) & (\Add0~3\ $ (GND))) # (!count(2) & (!\Add0~3\ & VCC))
-- \Add0~5\ = CARRY((count(2) & !\Add0~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => count(2),
	datad => VCC,
	cin => \Add0~3\,
	combout => \Add0~4_combout\,
	cout => \Add0~5\);

-- Location: FF_X12_Y7_N9
\count[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \Add0~4_combout\,
	clrn => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count(2));

-- Location: LCCOMB_X12_Y7_N10
\Add0~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~6_combout\ = (count(3) & (!\Add0~5\)) # (!count(3) & ((\Add0~5\) # (GND)))
-- \Add0~7\ = CARRY((!\Add0~5\) # (!count(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => count(3),
	datad => VCC,
	cin => \Add0~5\,
	combout => \Add0~6_combout\,
	cout => \Add0~7\);

-- Location: FF_X12_Y7_N11
\count[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \Add0~6_combout\,
	clrn => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count(3));

-- Location: LCCOMB_X11_Y7_N20
\Equal0~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Equal0~7_combout\ = (count(1) & (count(3) & (count(2) & count(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => count(1),
	datab => count(3),
	datac => count(2),
	datad => count(0),
	combout => \Equal0~7_combout\);

-- Location: LCCOMB_X12_Y7_N12
\Add0~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~8_combout\ = (count(4) & (\Add0~7\ $ (GND))) # (!count(4) & (!\Add0~7\ & VCC))
-- \Add0~9\ = CARRY((count(4) & !\Add0~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => count(4),
	datad => VCC,
	cin => \Add0~7\,
	combout => \Add0~8_combout\,
	cout => \Add0~9\);

-- Location: FF_X12_Y7_N13
\count[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \Add0~8_combout\,
	clrn => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count(4));

-- Location: LCCOMB_X12_Y7_N14
\Add0~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~10_combout\ = (count(5) & (!\Add0~9\)) # (!count(5) & ((\Add0~9\) # (GND)))
-- \Add0~11\ = CARRY((!\Add0~9\) # (!count(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => count(5),
	datad => VCC,
	cin => \Add0~9\,
	combout => \Add0~10_combout\,
	cout => \Add0~11\);

-- Location: FF_X12_Y7_N15
\count[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \Add0~10_combout\,
	clrn => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count(5));

-- Location: LCCOMB_X12_Y7_N16
\Add0~12\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~12_combout\ = (count(6) & (\Add0~11\ $ (GND))) # (!count(6) & (!\Add0~11\ & VCC))
-- \Add0~13\ = CARRY((count(6) & !\Add0~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => count(6),
	datad => VCC,
	cin => \Add0~11\,
	combout => \Add0~12_combout\,
	cout => \Add0~13\);

-- Location: FF_X12_Y7_N17
\count[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \Add0~12_combout\,
	clrn => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count(6));

-- Location: LCCOMB_X12_Y7_N18
\Add0~14\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~14_combout\ = (count(7) & (!\Add0~13\)) # (!count(7) & ((\Add0~13\) # (GND)))
-- \Add0~15\ = CARRY((!\Add0~13\) # (!count(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => count(7),
	datad => VCC,
	cin => \Add0~13\,
	combout => \Add0~14_combout\,
	cout => \Add0~15\);

-- Location: LCCOMB_X11_Y6_N28
\count~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \count~6_combout\ = (\Add0~14_combout\ & !\Equal0~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Add0~14_combout\,
	datad => \Equal0~8_combout\,
	combout => \count~6_combout\);

-- Location: FF_X11_Y6_N29
\count[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \count~6_combout\,
	clrn => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count(7));

-- Location: LCCOMB_X12_Y7_N20
\Add0~16\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~16_combout\ = (count(8) & (\Add0~15\ $ (GND))) # (!count(8) & (!\Add0~15\ & VCC))
-- \Add0~17\ = CARRY((count(8) & !\Add0~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => count(8),
	datad => VCC,
	cin => \Add0~15\,
	combout => \Add0~16_combout\,
	cout => \Add0~17\);

-- Location: FF_X12_Y7_N21
\count[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \Add0~16_combout\,
	clrn => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count(8));

-- Location: LCCOMB_X12_Y7_N22
\Add0~18\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~18_combout\ = (count(9) & (!\Add0~17\)) # (!count(9) & ((\Add0~17\) # (GND)))
-- \Add0~19\ = CARRY((!\Add0~17\) # (!count(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => count(9),
	datad => VCC,
	cin => \Add0~17\,
	combout => \Add0~18_combout\,
	cout => \Add0~19\);

-- Location: FF_X12_Y7_N23
\count[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \Add0~18_combout\,
	clrn => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count(9));

-- Location: LCCOMB_X12_Y7_N24
\Add0~20\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~20_combout\ = (count(10) & (\Add0~19\ $ (GND))) # (!count(10) & (!\Add0~19\ & VCC))
-- \Add0~21\ = CARRY((count(10) & !\Add0~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => count(10),
	datad => VCC,
	cin => \Add0~19\,
	combout => \Add0~20_combout\,
	cout => \Add0~21\);

-- Location: LCCOMB_X12_Y7_N0
\count~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \count~5_combout\ = (!\Equal0~8_combout\ & \Add0~20_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Equal0~8_combout\,
	datad => \Add0~20_combout\,
	combout => \count~5_combout\);

-- Location: FF_X12_Y7_N1
\count[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \count~5_combout\,
	clrn => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count(10));

-- Location: LCCOMB_X12_Y7_N26
\Add0~22\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~22_combout\ = (count(11) & (!\Add0~21\)) # (!count(11) & ((\Add0~21\) # (GND)))
-- \Add0~23\ = CARRY((!\Add0~21\) # (!count(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => count(11),
	datad => VCC,
	cin => \Add0~21\,
	combout => \Add0~22_combout\,
	cout => \Add0~23\);

-- Location: FF_X12_Y7_N27
\count[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \Add0~22_combout\,
	clrn => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count(11));

-- Location: LCCOMB_X12_Y7_N2
\Equal0~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Equal0~5_combout\ = (!count(9) & (!count(8) & (!count(11) & count(10))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => count(9),
	datab => count(8),
	datac => count(11),
	datad => count(10),
	combout => \Equal0~5_combout\);

-- Location: LCCOMB_X11_Y6_N30
\Equal0~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Equal0~6_combout\ = (count(4) & (!count(7) & (count(6) & count(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => count(4),
	datab => count(7),
	datac => count(6),
	datad => count(5),
	combout => \Equal0~6_combout\);

-- Location: LCCOMB_X12_Y7_N28
\Add0~24\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~24_combout\ = (count(12) & (\Add0~23\ $ (GND))) # (!count(12) & (!\Add0~23\ & VCC))
-- \Add0~25\ = CARRY((count(12) & !\Add0~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => count(12),
	datad => VCC,
	cin => \Add0~23\,
	combout => \Add0~24_combout\,
	cout => \Add0~25\);

-- Location: FF_X12_Y7_N29
\count[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \Add0~24_combout\,
	clrn => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count(12));

-- Location: LCCOMB_X12_Y7_N30
\Add0~26\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~26_combout\ = (count(13) & (!\Add0~25\)) # (!count(13) & ((\Add0~25\) # (GND)))
-- \Add0~27\ = CARRY((!\Add0~25\) # (!count(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => count(13),
	datad => VCC,
	cin => \Add0~25\,
	combout => \Add0~26_combout\,
	cout => \Add0~27\);

-- Location: FF_X12_Y7_N31
\count[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \Add0~26_combout\,
	clrn => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count(13));

-- Location: LCCOMB_X12_Y6_N0
\Add0~28\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~28_combout\ = (count(14) & (\Add0~27\ $ (GND))) # (!count(14) & (!\Add0~27\ & VCC))
-- \Add0~29\ = CARRY((count(14) & !\Add0~27\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => count(14),
	datad => VCC,
	cin => \Add0~27\,
	combout => \Add0~28_combout\,
	cout => \Add0~29\);

-- Location: FF_X12_Y6_N1
\count[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \Add0~28_combout\,
	clrn => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count(14));

-- Location: LCCOMB_X12_Y6_N2
\Add0~30\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~30_combout\ = (count(15) & (!\Add0~29\)) # (!count(15) & ((\Add0~29\) # (GND)))
-- \Add0~31\ = CARRY((!\Add0~29\) # (!count(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => count(15),
	datad => VCC,
	cin => \Add0~29\,
	combout => \Add0~30_combout\,
	cout => \Add0~31\);

-- Location: LCCOMB_X11_Y6_N6
\count~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \count~4_combout\ = (!\Equal0~8_combout\ & \Add0~30_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Equal0~8_combout\,
	datad => \Add0~30_combout\,
	combout => \count~4_combout\);

-- Location: FF_X11_Y6_N7
\count[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \count~4_combout\,
	clrn => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count(15));

-- Location: LCCOMB_X11_Y6_N22
\Equal0~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Equal0~3_combout\ = (count(15) & (!count(14) & (!count(13) & !count(12))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => count(15),
	datab => count(14),
	datac => count(13),
	datad => count(12),
	combout => \Equal0~3_combout\);

-- Location: LCCOMB_X12_Y6_N4
\Add0~32\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~32_combout\ = (count(16) & (\Add0~31\ $ (GND))) # (!count(16) & (!\Add0~31\ & VCC))
-- \Add0~33\ = CARRY((count(16) & !\Add0~31\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => count(16),
	datad => VCC,
	cin => \Add0~31\,
	combout => \Add0~32_combout\,
	cout => \Add0~33\);

-- Location: FF_X12_Y6_N5
\count[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \Add0~32_combout\,
	clrn => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count(16));

-- Location: LCCOMB_X12_Y6_N6
\Add0~34\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~34_combout\ = (count(17) & (!\Add0~33\)) # (!count(17) & ((\Add0~33\) # (GND)))
-- \Add0~35\ = CARRY((!\Add0~33\) # (!count(17)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => count(17),
	datad => VCC,
	cin => \Add0~33\,
	combout => \Add0~34_combout\,
	cout => \Add0~35\);

-- Location: LCCOMB_X12_Y6_N30
\count~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \count~3_combout\ = (!\Equal0~8_combout\ & \Add0~34_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Equal0~8_combout\,
	datad => \Add0~34_combout\,
	combout => \count~3_combout\);

-- Location: FF_X12_Y6_N31
\count[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \count~3_combout\,
	clrn => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count(17));

-- Location: LCCOMB_X12_Y6_N8
\Add0~36\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~36_combout\ = (count(18) & (\Add0~35\ $ (GND))) # (!count(18) & (!\Add0~35\ & VCC))
-- \Add0~37\ = CARRY((count(18) & !\Add0~35\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => count(18),
	datad => VCC,
	cin => \Add0~35\,
	combout => \Add0~36_combout\,
	cout => \Add0~37\);

-- Location: LCCOMB_X12_Y6_N28
\count~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \count~2_combout\ = (\Add0~36_combout\ & !\Equal0~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Add0~36_combout\,
	datad => \Equal0~8_combout\,
	combout => \count~2_combout\);

-- Location: FF_X12_Y6_N29
\count[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \count~2_combout\,
	clrn => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count(18));

-- Location: LCCOMB_X12_Y6_N10
\Add0~38\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~38_combout\ = (count(19) & (!\Add0~37\)) # (!count(19) & ((\Add0~37\) # (GND)))
-- \Add0~39\ = CARRY((!\Add0~37\) # (!count(19)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => count(19),
	datad => VCC,
	cin => \Add0~37\,
	combout => \Add0~38_combout\,
	cout => \Add0~39\);

-- Location: LCCOMB_X11_Y6_N16
\count~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \count~1_combout\ = (\Add0~38_combout\ & !\Equal0~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Add0~38_combout\,
	datad => \Equal0~8_combout\,
	combout => \count~1_combout\);

-- Location: FF_X11_Y6_N17
\count[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \count~1_combout\,
	clrn => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count(19));

-- Location: LCCOMB_X12_Y6_N12
\Add0~40\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~40_combout\ = (count(20) & (\Add0~39\ $ (GND))) # (!count(20) & (!\Add0~39\ & VCC))
-- \Add0~41\ = CARRY((count(20) & !\Add0~39\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => count(20),
	datad => VCC,
	cin => \Add0~39\,
	combout => \Add0~40_combout\,
	cout => \Add0~41\);

-- Location: LCCOMB_X11_Y6_N26
\count~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \count~0_combout\ = (\Add0~40_combout\ & !\Equal0~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Add0~40_combout\,
	datad => \Equal0~8_combout\,
	combout => \count~0_combout\);

-- Location: FF_X11_Y6_N27
\count[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \count~0_combout\,
	clrn => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count(20));

-- Location: LCCOMB_X12_Y6_N14
\Add0~42\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~42_combout\ = (count(21) & (!\Add0~41\)) # (!count(21) & ((\Add0~41\) # (GND)))
-- \Add0~43\ = CARRY((!\Add0~41\) # (!count(21)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => count(21),
	datad => VCC,
	cin => \Add0~41\,
	combout => \Add0~42_combout\,
	cout => \Add0~43\);

-- Location: FF_X12_Y6_N15
\count[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \Add0~42_combout\,
	clrn => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count(21));

-- Location: LCCOMB_X12_Y6_N16
\Add0~44\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~44_combout\ = (count(22) & (\Add0~43\ $ (GND))) # (!count(22) & (!\Add0~43\ & VCC))
-- \Add0~45\ = CARRY((count(22) & !\Add0~43\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => count(22),
	datad => VCC,
	cin => \Add0~43\,
	combout => \Add0~44_combout\,
	cout => \Add0~45\);

-- Location: FF_X12_Y6_N17
\count[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \Add0~44_combout\,
	clrn => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count(22));

-- Location: LCCOMB_X12_Y6_N18
\Add0~46\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~46_combout\ = (count(23) & (!\Add0~45\)) # (!count(23) & ((\Add0~45\) # (GND)))
-- \Add0~47\ = CARRY((!\Add0~45\) # (!count(23)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => count(23),
	datad => VCC,
	cin => \Add0~45\,
	combout => \Add0~46_combout\,
	cout => \Add0~47\);

-- Location: FF_X12_Y6_N19
\count[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \Add0~46_combout\,
	clrn => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count(23));

-- Location: LCCOMB_X11_Y6_N14
\Equal0~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Equal0~1_combout\ = (count(20) & (!count(23) & (!count(21) & !count(22))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => count(20),
	datab => count(23),
	datac => count(21),
	datad => count(22),
	combout => \Equal0~1_combout\);

-- Location: LCCOMB_X11_Y6_N8
\Equal0~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Equal0~2_combout\ = (count(17) & (count(19) & (!count(16) & count(18))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => count(17),
	datab => count(19),
	datac => count(16),
	datad => count(18),
	combout => \Equal0~2_combout\);

-- Location: LCCOMB_X12_Y6_N20
\Add0~48\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~48_combout\ = (count(24) & (\Add0~47\ $ (GND))) # (!count(24) & (!\Add0~47\ & VCC))
-- \Add0~49\ = CARRY((count(24) & !\Add0~47\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => count(24),
	datad => VCC,
	cin => \Add0~47\,
	combout => \Add0~48_combout\,
	cout => \Add0~49\);

-- Location: FF_X12_Y6_N21
\count[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \Add0~48_combout\,
	clrn => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count(24));

-- Location: LCCOMB_X12_Y6_N22
\Add0~50\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~50_combout\ = (count(25) & (!\Add0~49\)) # (!count(25) & ((\Add0~49\) # (GND)))
-- \Add0~51\ = CARRY((!\Add0~49\) # (!count(25)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => count(25),
	datad => VCC,
	cin => \Add0~49\,
	combout => \Add0~50_combout\,
	cout => \Add0~51\);

-- Location: FF_X12_Y6_N23
\count[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \Add0~50_combout\,
	clrn => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count(25));

-- Location: LCCOMB_X12_Y6_N24
\Add0~52\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~52_combout\ = (count(26) & (\Add0~51\ $ (GND))) # (!count(26) & (!\Add0~51\ & VCC))
-- \Add0~53\ = CARRY((count(26) & !\Add0~51\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => count(26),
	datad => VCC,
	cin => \Add0~51\,
	combout => \Add0~52_combout\,
	cout => \Add0~53\);

-- Location: FF_X12_Y6_N25
\count[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \Add0~52_combout\,
	clrn => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count(26));

-- Location: LCCOMB_X12_Y6_N26
\Add0~54\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~54_combout\ = \Add0~53\ $ (count(27))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => count(27),
	cin => \Add0~53\,
	combout => \Add0~54_combout\);

-- Location: FF_X12_Y6_N27
\count[27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \Add0~54_combout\,
	clrn => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count(27));

-- Location: LCCOMB_X11_Y6_N10
\Equal0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Equal0~0_combout\ = (!count(26) & (!count(25) & (!count(24) & !count(27))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => count(26),
	datab => count(25),
	datac => count(24),
	datad => count(27),
	combout => \Equal0~0_combout\);

-- Location: LCCOMB_X11_Y6_N24
\Equal0~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Equal0~4_combout\ = (\Equal0~3_combout\ & (\Equal0~1_combout\ & (\Equal0~2_combout\ & \Equal0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal0~3_combout\,
	datab => \Equal0~1_combout\,
	datac => \Equal0~2_combout\,
	datad => \Equal0~0_combout\,
	combout => \Equal0~4_combout\);

-- Location: LCCOMB_X11_Y6_N20
\Equal0~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Equal0~8_combout\ = (\Equal0~7_combout\ & (\Equal0~5_combout\ & (\Equal0~6_combout\ & \Equal0~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal0~7_combout\,
	datab => \Equal0~5_combout\,
	datac => \Equal0~6_combout\,
	datad => \Equal0~4_combout\,
	combout => \Equal0~8_combout\);

-- Location: LCCOMB_X11_Y6_N18
\Clk1Hz~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Clk1Hz~0_combout\ = \Clk1Hz~q\ $ (\Equal0~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Clk1Hz~q\,
	datad => \Equal0~8_combout\,
	combout => \Clk1Hz~0_combout\);

-- Location: LCCOMB_X11_Y6_N12
\Clk1Hz~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Clk1Hz~feeder_combout\ = \Clk1Hz~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Clk1Hz~0_combout\,
	combout => \Clk1Hz~feeder_combout\);

-- Location: FF_X11_Y6_N13
Clk1Hz : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \Clk1Hz~feeder_combout\,
	clrn => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Clk1Hz~q\);

-- Location: CLKCTRL_G2
\Clk1Hz~clkctrl\ : fiftyfivenm_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \Clk1Hz~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \Clk1Hz~clkctrl_outclk\);

-- Location: IOIBUF_X18_Y2_N8
\destination[1]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_destination(1),
	o => \destination[1]~input_o\);

-- Location: IOIBUF_X18_Y3_N1
\instruction[1]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_instruction(1),
	o => \instruction[1]~input_o\);

-- Location: IOIBUF_X18_Y3_N8
\instruction[0]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_instruction(0),
	o => \instruction[0]~input_o\);

-- Location: IOIBUF_X18_Y4_N15
\start~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_start,
	o => \start~input_o\);

-- Location: LCCOMB_X12_Y4_N8
\Control|Selector4~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Control|Selector4~0_combout\ = (!\Control|present_state.Waiting~q\ & (\instruction[0]~input_o\ & \start~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Control|present_state.Waiting~q\,
	datac => \instruction[0]~input_o\,
	datad => \start~input_o\,
	combout => \Control|Selector4~0_combout\);

-- Location: IOIBUF_X18_Y4_N8
\instruction[2]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_instruction(2),
	o => \instruction[2]~input_o\);

-- Location: LCCOMB_X12_Y4_N6
\Control|Selector4~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Control|Selector4~1_combout\ = (!\instruction[1]~input_o\ & (\Control|Selector4~0_combout\ & !\instruction[2]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \instruction[1]~input_o\,
	datac => \Control|Selector4~0_combout\,
	datad => \instruction[2]~input_o\,
	combout => \Control|Selector4~1_combout\);

-- Location: LCCOMB_X12_Y4_N24
\Control|Selector1~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Control|Selector1~0_combout\ = (\Control|present_state.Waiting~q\ & (!\destination[1]~input_o\ & (!\Control|WideOr0~1_combout\))) # (!\Control|present_state.Waiting~q\ & (((\start~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011011100000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \destination[1]~input_o\,
	datab => \Control|present_state.Waiting~q\,
	datac => \Control|WideOr0~1_combout\,
	datad => \start~input_o\,
	combout => \Control|Selector1~0_combout\);

-- Location: FF_X12_Y4_N7
\Control|present_state.CopyA1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk1Hz~clkctrl_outclk\,
	d => \Control|Selector4~1_combout\,
	clrn => \ALT_INV_reset~input_o\,
	ena => \Control|Selector1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Control|present_state.CopyA1~q\);

-- Location: LCCOMB_X12_Y4_N4
\Control|Selector7~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Control|Selector7~0_combout\ = (\Control|Selector19~0_combout\ & (\instruction[1]~input_o\ & !\instruction[2]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Control|Selector19~0_combout\,
	datab => \instruction[1]~input_o\,
	datad => \instruction[2]~input_o\,
	combout => \Control|Selector7~0_combout\);

-- Location: FF_X12_Y4_N5
\Control|present_state.COPYB1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk1Hz~clkctrl_outclk\,
	d => \Control|Selector7~0_combout\,
	clrn => \ALT_INV_reset~input_o\,
	ena => \Control|Selector1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Control|present_state.COPYB1~q\);

-- Location: LCCOMB_X12_Y4_N12
\Control|Selector1~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Control|Selector1~1_combout\ = (\Control|Selector19~0_combout\ & (!\instruction[1]~input_o\ & !\instruction[2]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Control|Selector19~0_combout\,
	datab => \instruction[1]~input_o\,
	datad => \instruction[2]~input_o\,
	combout => \Control|Selector1~1_combout\);

-- Location: FF_X12_Y4_N13
\Control|present_state.Load1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk1Hz~clkctrl_outclk\,
	d => \Control|Selector1~1_combout\,
	clrn => \ALT_INV_reset~input_o\,
	ena => \Control|Selector1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Control|present_state.Load1~q\);

-- Location: LCCOMB_X12_Y4_N26
\Control|WideOr1~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Control|WideOr1~1_combout\ = (!\Control|present_state.CopyA1~q\ & (\Control|present_state.Waiting~q\ & (!\Control|present_state.COPYB1~q\ & !\Control|present_state.Load1~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Control|present_state.CopyA1~q\,
	datab => \Control|present_state.Waiting~q\,
	datac => \Control|present_state.COPYB1~q\,
	datad => \Control|present_state.Load1~q\,
	combout => \Control|WideOr1~1_combout\);

-- Location: LCCOMB_X12_Y4_N14
\Control|Selector10~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Control|Selector10~0_combout\ = (\instruction[1]~input_o\ & (\Control|Selector4~0_combout\ & !\instruction[2]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \instruction[1]~input_o\,
	datac => \Control|Selector4~0_combout\,
	datad => \instruction[2]~input_o\,
	combout => \Control|Selector10~0_combout\);

-- Location: FF_X12_Y4_N15
\Control|present_state.AND1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk1Hz~clkctrl_outclk\,
	d => \Control|Selector10~0_combout\,
	clrn => \ALT_INV_reset~input_o\,
	ena => \Control|Selector1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Control|present_state.AND1~q\);

-- Location: LCCOMB_X12_Y4_N0
\Control|Selector16~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Control|Selector16~0_combout\ = (!\instruction[1]~input_o\ & (\Control|Selector4~0_combout\ & \instruction[2]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \instruction[1]~input_o\,
	datac => \Control|Selector4~0_combout\,
	datad => \instruction[2]~input_o\,
	combout => \Control|Selector16~0_combout\);

-- Location: FF_X12_Y4_N1
\Control|present_state.ADD1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk1Hz~clkctrl_outclk\,
	d => \Control|Selector16~0_combout\,
	clrn => \ALT_INV_reset~input_o\,
	ena => \Control|Selector1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Control|present_state.ADD1~q\);

-- Location: LCCOMB_X12_Y4_N20
\Control|Selector13~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Control|Selector13~0_combout\ = (\Control|Selector19~0_combout\ & (!\instruction[1]~input_o\ & \instruction[2]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Control|Selector19~0_combout\,
	datab => \instruction[1]~input_o\,
	datad => \instruction[2]~input_o\,
	combout => \Control|Selector13~0_combout\);

-- Location: FF_X11_Y4_N29
\Control|present_state.OR1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk1Hz~clkctrl_outclk\,
	asdata => \Control|Selector13~0_combout\,
	clrn => \ALT_INV_reset~input_o\,
	sload => VCC,
	ena => \Control|Selector1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Control|present_state.OR1~q\);

-- Location: LCCOMB_X11_Y4_N28
\Control|WideOr0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Control|WideOr0~0_combout\ = (\Control|present_state.ADD1~q\) # ((\Control|present_state.OR1~q\) # (\Control|present_state.SUB1~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Control|present_state.ADD1~q\,
	datac => \Control|present_state.OR1~q\,
	datad => \Control|present_state.SUB1~q\,
	combout => \Control|WideOr0~0_combout\);

-- Location: LCCOMB_X12_Y4_N30
\Control|WideOr0~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Control|WideOr0~1_combout\ = (\Control|WideOr1~1_combout\ & (!\Control|present_state.AND1~q\ & !\Control|WideOr0~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Control|WideOr1~1_combout\,
	datab => \Control|present_state.AND1~q\,
	datac => \Control|WideOr0~0_combout\,
	combout => \Control|WideOr0~1_combout\);

-- Location: LCCOMB_X12_Y4_N2
\Control|Selector0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Control|Selector0~0_combout\ = (\instruction[1]~input_o\ & (\Control|Selector4~0_combout\ & \instruction[2]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \instruction[1]~input_o\,
	datac => \Control|Selector4~0_combout\,
	datad => \instruction[2]~input_o\,
	combout => \Control|Selector0~0_combout\);

-- Location: LCCOMB_X12_Y4_N28
\Control|Selector0~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Control|Selector0~1_combout\ = (!\Control|WideOr0~1_combout\ & (!\Control|Selector0~0_combout\ & ((\Control|present_state.Waiting~q\) # (\start~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000100010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Control|WideOr0~1_combout\,
	datab => \Control|Selector0~0_combout\,
	datac => \Control|present_state.Waiting~q\,
	datad => \start~input_o\,
	combout => \Control|Selector0~1_combout\);

-- Location: FF_X12_Y4_N29
\Control|present_state.Waiting\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk1Hz~clkctrl_outclk\,
	d => \Control|Selector0~1_combout\,
	clrn => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Control|present_state.Waiting~q\);

-- Location: LCCOMB_X12_Y4_N10
\Control|Selector19~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Control|Selector19~0_combout\ = (!\Control|present_state.Waiting~q\ & (!\instruction[0]~input_o\ & \start~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Control|present_state.Waiting~q\,
	datac => \instruction[0]~input_o\,
	datad => \start~input_o\,
	combout => \Control|Selector19~0_combout\);

-- Location: LCCOMB_X12_Y4_N18
\Control|Selector19~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Control|Selector19~1_combout\ = (\Control|Selector19~0_combout\ & (\instruction[1]~input_o\ & \instruction[2]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Control|Selector19~0_combout\,
	datab => \instruction[1]~input_o\,
	datad => \instruction[2]~input_o\,
	combout => \Control|Selector19~1_combout\);

-- Location: FF_X12_Y4_N19
\Control|present_state.SUB1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk1Hz~clkctrl_outclk\,
	d => \Control|Selector19~1_combout\,
	clrn => \ALT_INV_reset~input_o\,
	ena => \Control|Selector1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Control|present_state.SUB1~q\);

-- Location: IOIBUF_X11_Y0_N8
\destination[0]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_destination(0),
	o => \destination[0]~input_o\);

-- Location: LCCOMB_X11_Y4_N30
\Control|Selector21~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Control|Selector21~0_combout\ = (!\destination[1]~input_o\ & (\Control|present_state.SUB1~q\ & \destination[0]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \destination[1]~input_o\,
	datab => \Control|present_state.SUB1~q\,
	datac => \destination[0]~input_o\,
	combout => \Control|Selector21~0_combout\);

-- Location: FF_X11_Y4_N31
\Control|present_state.SUB_B\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk1Hz~clkctrl_outclk\,
	d => \Control|Selector21~0_combout\,
	clrn => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Control|present_state.SUB_B~q\);

-- Location: LCCOMB_X11_Y4_N8
\Control|Selector18~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Control|Selector18~0_combout\ = (!\destination[1]~input_o\ & (\Control|present_state.ADD1~q\ & \destination[0]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \destination[1]~input_o\,
	datab => \Control|present_state.ADD1~q\,
	datac => \destination[0]~input_o\,
	combout => \Control|Selector18~0_combout\);

-- Location: FF_X11_Y4_N9
\Control|present_state.ADD_B\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk1Hz~clkctrl_outclk\,
	d => \Control|Selector18~0_combout\,
	clrn => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Control|present_state.ADD_B~q\);

-- Location: LCCOMB_X10_Y4_N18
\Control|Selector17~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Control|Selector17~0_combout\ = (!\destination[0]~input_o\ & (\Control|present_state.ADD1~q\ & !\destination[1]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \destination[0]~input_o\,
	datac => \Control|present_state.ADD1~q\,
	datad => \destination[1]~input_o\,
	combout => \Control|Selector17~0_combout\);

-- Location: LCCOMB_X11_Y4_N4
\Control|present_state.ADD_A~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Control|present_state.ADD_A~feeder_combout\ = \Control|Selector17~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Control|Selector17~0_combout\,
	combout => \Control|present_state.ADD_A~feeder_combout\);

-- Location: FF_X11_Y4_N5
\Control|present_state.ADD_A\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk1Hz~clkctrl_outclk\,
	d => \Control|present_state.ADD_A~feeder_combout\,
	clrn => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Control|present_state.ADD_A~q\);

-- Location: LCCOMB_X11_Y4_N18
\Control|Selector20~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Control|Selector20~0_combout\ = (!\destination[1]~input_o\ & (\Control|present_state.SUB1~q\ & !\destination[0]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \destination[1]~input_o\,
	datab => \Control|present_state.SUB1~q\,
	datac => \destination[0]~input_o\,
	combout => \Control|Selector20~0_combout\);

-- Location: FF_X11_Y4_N19
\Control|present_state.SUB_A\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk1Hz~clkctrl_outclk\,
	d => \Control|Selector20~0_combout\,
	clrn => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Control|present_state.SUB_A~q\);

-- Location: LCCOMB_X11_Y4_N0
\Control|WideOr7~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Control|WideOr7~1_combout\ = (!\Control|present_state.SUB_B~q\ & (!\Control|present_state.ADD_B~q\ & (!\Control|present_state.ADD_A~q\ & !\Control|present_state.SUB_A~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Control|present_state.SUB_B~q\,
	datab => \Control|present_state.ADD_B~q\,
	datac => \Control|present_state.ADD_A~q\,
	datad => \Control|present_state.SUB_A~q\,
	combout => \Control|WideOr7~1_combout\);

-- Location: LCCOMB_X11_Y4_N24
\Control|Selector15~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Control|Selector15~0_combout\ = (!\destination[1]~input_o\ & (\destination[0]~input_o\ & \Control|present_state.OR1~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \destination[1]~input_o\,
	datac => \destination[0]~input_o\,
	datad => \Control|present_state.OR1~q\,
	combout => \Control|Selector15~0_combout\);

-- Location: FF_X11_Y4_N25
\Control|present_state.OR_B\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk1Hz~clkctrl_outclk\,
	d => \Control|Selector15~0_combout\,
	clrn => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Control|present_state.OR_B~q\);

-- Location: LCCOMB_X11_Y4_N22
\Control|Selector14~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Control|Selector14~0_combout\ = (!\destination[1]~input_o\ & (!\destination[0]~input_o\ & \Control|present_state.OR1~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \destination[1]~input_o\,
	datac => \destination[0]~input_o\,
	datad => \Control|present_state.OR1~q\,
	combout => \Control|Selector14~0_combout\);

-- Location: FF_X11_Y4_N23
\Control|present_state.OR_A\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk1Hz~clkctrl_outclk\,
	d => \Control|Selector14~0_combout\,
	clrn => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Control|present_state.OR_A~q\);

-- Location: LCCOMB_X11_Y4_N26
\Control|WideOr7~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Control|WideOr7~0_combout\ = (\Control|present_state.OR_B~q\) # ((\Control|present_state.OR_A~q\) # (\Control|present_state.OR1~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Control|present_state.OR_B~q\,
	datac => \Control|present_state.OR_A~q\,
	datad => \Control|present_state.OR1~q\,
	combout => \Control|WideOr7~0_combout\);

-- Location: LCCOMB_X10_Y5_N20
\Control|Selector11~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Control|Selector11~0_combout\ = (!\destination[0]~input_o\ & (\Control|present_state.AND1~q\ & !\destination[1]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \destination[0]~input_o\,
	datab => \Control|present_state.AND1~q\,
	datad => \destination[1]~input_o\,
	combout => \Control|Selector11~0_combout\);

-- Location: FF_X10_Y5_N21
\Control|present_state.AND_A\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk1Hz~clkctrl_outclk\,
	d => \Control|Selector11~0_combout\,
	clrn => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Control|present_state.AND_A~q\);

-- Location: LCCOMB_X10_Y5_N26
\Control|Selector12~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Control|Selector12~0_combout\ = (\destination[0]~input_o\ & (\Control|present_state.AND1~q\ & !\destination[1]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \destination[0]~input_o\,
	datab => \Control|present_state.AND1~q\,
	datad => \destination[1]~input_o\,
	combout => \Control|Selector12~0_combout\);

-- Location: FF_X10_Y5_N27
\Control|present_state.AND_B\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk1Hz~clkctrl_outclk\,
	d => \Control|Selector12~0_combout\,
	clrn => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Control|present_state.AND_B~q\);

-- Location: LCCOMB_X11_Y5_N18
\Control|WideOr8~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Control|WideOr8~0_combout\ = (\Control|present_state.AND_A~q\) # ((\Control|present_state.AND_B~q\) # (\Control|present_state.AND1~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Control|present_state.AND_A~q\,
	datac => \Control|present_state.AND_B~q\,
	datad => \Control|present_state.AND1~q\,
	combout => \Control|WideOr8~0_combout\);

-- Location: LCCOMB_X12_Y5_N28
\TheRegDatapath|TheALU|Mux0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \TheRegDatapath|TheALU|Mux0~0_combout\ = (\Control|WideOr7~1_combout\ & (!\Control|present_state.ADD1~q\ & (\Control|WideOr7~0_combout\ $ (\Control|WideOr8~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Control|WideOr7~1_combout\,
	datab => \Control|WideOr7~0_combout\,
	datac => \Control|present_state.ADD1~q\,
	datad => \Control|WideOr8~0_combout\,
	combout => \TheRegDatapath|TheALU|Mux0~0_combout\);

-- Location: LCCOMB_X11_Y4_N16
\Control|Selector2~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Control|Selector2~0_combout\ = (!\destination[1]~input_o\ & (\Control|present_state.Load1~q\ & !\destination[0]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \destination[1]~input_o\,
	datab => \Control|present_state.Load1~q\,
	datac => \destination[0]~input_o\,
	combout => \Control|Selector2~0_combout\);

-- Location: FF_X11_Y4_N17
\Control|present_state.LoadA\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk1Hz~clkctrl_outclk\,
	d => \Control|Selector2~0_combout\,
	clrn => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Control|present_state.LoadA~q\);

-- Location: LCCOMB_X10_Y5_N4
\Control|Selector9~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Control|Selector9~0_combout\ = (\Control|present_state.COPYB1~q\ & (\destination[0]~input_o\ & !\destination[1]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Control|present_state.COPYB1~q\,
	datac => \destination[0]~input_o\,
	datad => \destination[1]~input_o\,
	combout => \Control|Selector9~0_combout\);

-- Location: FF_X10_Y5_N5
\Control|present_state.COPYB_B\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk1Hz~clkctrl_outclk\,
	d => \Control|Selector9~0_combout\,
	clrn => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Control|present_state.COPYB_B~q\);

-- Location: LCCOMB_X10_Y5_N6
\Control|Selector8~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Control|Selector8~0_combout\ = (\Control|present_state.COPYB1~q\ & (!\destination[0]~input_o\ & !\destination[1]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Control|present_state.COPYB1~q\,
	datac => \destination[0]~input_o\,
	datad => \destination[1]~input_o\,
	combout => \Control|Selector8~0_combout\);

-- Location: FF_X10_Y5_N7
\Control|present_state.CopyB_A\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk1Hz~clkctrl_outclk\,
	d => \Control|Selector8~0_combout\,
	clrn => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Control|present_state.CopyB_A~q\);

-- Location: LCCOMB_X11_Y4_N6
\Control|Selector3~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Control|Selector3~0_combout\ = (!\destination[1]~input_o\ & (\Control|present_state.Load1~q\ & \destination[0]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \destination[1]~input_o\,
	datab => \Control|present_state.Load1~q\,
	datac => \destination[0]~input_o\,
	combout => \Control|Selector3~0_combout\);

-- Location: FF_X11_Y4_N7
\Control|present_state.LoadB\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk1Hz~clkctrl_outclk\,
	d => \Control|Selector3~0_combout\,
	clrn => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Control|present_state.LoadB~q\);

-- Location: LCCOMB_X11_Y5_N0
\Control|WideOr2~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Control|WideOr2~0_combout\ = (\Control|present_state.LoadA~q\) # ((\Control|present_state.COPYB_B~q\) # ((\Control|present_state.CopyB_A~q\) # (\Control|present_state.LoadB~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Control|present_state.LoadA~q\,
	datab => \Control|present_state.COPYB_B~q\,
	datac => \Control|present_state.CopyB_A~q\,
	datad => \Control|present_state.LoadB~q\,
	combout => \Control|WideOr2~0_combout\);

-- Location: LCCOMB_X11_Y4_N14
\Control|Selector6~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Control|Selector6~0_combout\ = (!\destination[1]~input_o\ & (\destination[0]~input_o\ & \Control|present_state.CopyA1~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \destination[1]~input_o\,
	datac => \destination[0]~input_o\,
	datad => \Control|present_state.CopyA1~q\,
	combout => \Control|Selector6~0_combout\);

-- Location: FF_X11_Y4_N15
\Control|present_state.CopyA_B\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk1Hz~clkctrl_outclk\,
	d => \Control|Selector6~0_combout\,
	clrn => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Control|present_state.CopyA_B~q\);

-- Location: LCCOMB_X11_Y4_N2
\Control|WideOr6~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Control|WideOr6~0_combout\ = (\Control|present_state.LoadB~q\) # ((\Control|present_state.SUB_B~q\) # ((\Control|present_state.CopyA_B~q\) # (\Control|present_state.ADD_B~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Control|present_state.LoadB~q\,
	datab => \Control|present_state.SUB_B~q\,
	datac => \Control|present_state.CopyA_B~q\,
	datad => \Control|present_state.ADD_B~q\,
	combout => \Control|WideOr6~0_combout\);

-- Location: LCCOMB_X10_Y5_N14
\Control|WideOr6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Control|WideOr6~combout\ = (\Control|WideOr6~0_combout\) # ((\Control|present_state.COPYB_B~q\) # ((\Control|present_state.OR_B~q\) # (\Control|present_state.AND_B~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Control|WideOr6~0_combout\,
	datab => \Control|present_state.COPYB_B~q\,
	datac => \Control|present_state.OR_B~q\,
	datad => \Control|present_state.AND_B~q\,
	combout => \Control|WideOr6~combout\);

-- Location: FF_X12_Y5_N9
\TheRegDatapath|RegisterB[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk1Hz~clkctrl_outclk\,
	d => \TheRegDatapath|Mux0~1_combout\,
	clrn => \ALT_INV_reset~input_o\,
	ena => \Control|WideOr6~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \TheRegDatapath|RegisterB\(3));

-- Location: LCCOMB_X11_Y4_N20
\Control|Selector5~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Control|Selector5~0_combout\ = (!\destination[1]~input_o\ & (!\destination[0]~input_o\ & \Control|present_state.CopyA1~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \destination[1]~input_o\,
	datac => \destination[0]~input_o\,
	datad => \Control|present_state.CopyA1~q\,
	combout => \Control|Selector5~0_combout\);

-- Location: FF_X11_Y4_N21
\Control|present_state.CopyA_A\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk1Hz~clkctrl_outclk\,
	d => \Control|Selector5~0_combout\,
	clrn => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Control|present_state.CopyA_A~q\);

-- Location: LCCOMB_X11_Y4_N12
\Control|WideOr1~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Control|WideOr1~0_combout\ = (\Control|present_state.LoadB~q\) # ((\Control|present_state.LoadA~q\) # ((\Control|present_state.CopyA_B~q\) # (\Control|present_state.CopyA_A~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Control|present_state.LoadB~q\,
	datab => \Control|present_state.LoadA~q\,
	datac => \Control|present_state.CopyA_B~q\,
	datad => \Control|present_state.CopyA_A~q\,
	combout => \Control|WideOr1~0_combout\);

-- Location: LCCOMB_X12_Y4_N16
\Control|WideOr1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Control|WideOr1~combout\ = (\Control|present_state.AND1~q\) # ((\Control|WideOr1~0_combout\) # (!\Control|WideOr1~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Control|present_state.AND1~q\,
	datac => \Control|WideOr1~1_combout\,
	datad => \Control|WideOr1~0_combout\,
	combout => \Control|WideOr1~combout\);

-- Location: LCCOMB_X11_Y5_N10
\TheRegDatapath|Mux0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \TheRegDatapath|Mux0~0_combout\ = (\Control|WideOr2~0_combout\ & (\TheRegDatapath|RegisterB\(3) & ((!\Control|WideOr1~combout\)))) # (!\Control|WideOr2~0_combout\ & (((\TheRegDatapath|RegisterA\(3) & \Control|WideOr1~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \TheRegDatapath|RegisterB\(3),
	datab => \Control|WideOr2~0_combout\,
	datac => \TheRegDatapath|RegisterA\(3),
	datad => \Control|WideOr1~combout\,
	combout => \TheRegDatapath|Mux0~0_combout\);

-- Location: LCCOMB_X11_Y4_N10
\Control|WideOr7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Control|WideOr7~combout\ = (\Control|present_state.ADD1~q\) # ((\Control|WideOr7~0_combout\) # (!\Control|WideOr7~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Control|present_state.ADD1~q\,
	datac => \Control|WideOr7~0_combout\,
	datad => \Control|WideOr7~1_combout\,
	combout => \Control|WideOr7~combout\);

-- Location: LCCOMB_X11_Y5_N22
\TheRegDatapath|TheALU|Add0~20\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \TheRegDatapath|TheALU|Add0~20_combout\ = (\Control|WideOr7~combout\ & ((\TheRegDatapath|RegisterA\(3)) # (\TheRegDatapath|RegisterB\(3)))) # (!\Control|WideOr7~combout\ & (\TheRegDatapath|RegisterA\(3) & \TheRegDatapath|RegisterB\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Control|WideOr7~combout\,
	datab => \TheRegDatapath|RegisterA\(3),
	datad => \TheRegDatapath|RegisterB\(3),
	combout => \TheRegDatapath|TheALU|Add0~20_combout\);

-- Location: LCCOMB_X11_Y5_N6
\TheRegDatapath|TheALU|Add0~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \TheRegDatapath|TheALU|Add0~1_combout\ = (\Control|WideOr7~combout\ & (\TheRegDatapath|RegisterB\(3))) # (!\Control|WideOr7~combout\ & ((!\TheRegDatapath|RegisterA\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \TheRegDatapath|RegisterB\(3),
	datab => \TheRegDatapath|RegisterA\(3),
	datad => \Control|WideOr7~combout\,
	combout => \TheRegDatapath|TheALU|Add0~1_combout\);

-- Location: IOIBUF_X9_Y0_N15
\BUS_IN[2]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_BUS_IN(2),
	o => \BUS_IN[2]~input_o\);

-- Location: LCCOMB_X11_Y5_N12
\TheRegDatapath|Mux1~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \TheRegDatapath|Mux1~1_combout\ = (\Control|WideOr2~0_combout\ & ((\BUS_IN[2]~input_o\) # ((!\Control|WideOr1~combout\)))) # (!\Control|WideOr2~0_combout\ & (((\TheRegDatapath|RegisterA\(2) & \Control|WideOr1~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Control|WideOr2~0_combout\,
	datab => \BUS_IN[2]~input_o\,
	datac => \TheRegDatapath|RegisterA\(2),
	datad => \Control|WideOr1~combout\,
	combout => \TheRegDatapath|Mux1~1_combout\);

-- Location: FF_X11_Y5_N27
\TheRegDatapath|RegisterB[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk1Hz~clkctrl_outclk\,
	d => \TheRegDatapath|Mux1~2_combout\,
	clrn => \ALT_INV_reset~input_o\,
	ena => \Control|WideOr6~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \TheRegDatapath|RegisterB\(2));

-- Location: LCCOMB_X11_Y5_N8
\TheRegDatapath|TheALU|Add0~22\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \TheRegDatapath|TheALU|Add0~22_combout\ = (\TheRegDatapath|RegisterA\(2) & ((\TheRegDatapath|RegisterB\(2)) # (\Control|WideOr7~combout\))) # (!\TheRegDatapath|RegisterA\(2) & (\TheRegDatapath|RegisterB\(2) & \Control|WideOr7~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \TheRegDatapath|RegisterA\(2),
	datab => \TheRegDatapath|RegisterB\(2),
	datad => \Control|WideOr7~combout\,
	combout => \TheRegDatapath|TheALU|Add0~22_combout\);

-- Location: LCCOMB_X12_Y5_N4
\TheRegDatapath|TheALU|Add0~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \TheRegDatapath|TheALU|Add0~3_combout\ = (\Control|WideOr7~combout\ & ((\TheRegDatapath|RegisterB\(2)))) # (!\Control|WideOr7~combout\ & (!\TheRegDatapath|RegisterA\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000001010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \TheRegDatapath|RegisterA\(2),
	datac => \TheRegDatapath|RegisterB\(2),
	datad => \Control|WideOr7~combout\,
	combout => \TheRegDatapath|TheALU|Add0~3_combout\);

-- Location: IOIBUF_X11_Y0_N22
\BUS_IN[1]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_BUS_IN(1),
	o => \BUS_IN[1]~input_o\);

-- Location: FF_X11_Y5_N15
\TheRegDatapath|RegisterB[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk1Hz~clkctrl_outclk\,
	d => \TheRegDatapath|Mux2~1_combout\,
	clrn => \ALT_INV_reset~input_o\,
	ena => \Control|WideOr6~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \TheRegDatapath|RegisterB\(1));

-- Location: LCCOMB_X12_Y5_N26
\TheRegDatapath|TheALU|Add0~23\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \TheRegDatapath|TheALU|Add0~23_combout\ = (\TheRegDatapath|RegisterB\(1) & ((\TheRegDatapath|RegisterA\(1)) # (\Control|WideOr7~combout\))) # (!\TheRegDatapath|RegisterB\(1) & (\TheRegDatapath|RegisterA\(1) & \Control|WideOr7~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \TheRegDatapath|RegisterB\(1),
	datac => \TheRegDatapath|RegisterA\(1),
	datad => \Control|WideOr7~combout\,
	combout => \TheRegDatapath|TheALU|Add0~23_combout\);

-- Location: LCCOMB_X12_Y5_N2
\TheRegDatapath|TheALU|Add0~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \TheRegDatapath|TheALU|Add0~5_combout\ = (\Control|WideOr7~combout\ & (\TheRegDatapath|RegisterB\(1))) # (!\Control|WideOr7~combout\ & ((!\TheRegDatapath|RegisterA\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \TheRegDatapath|RegisterB\(1),
	datac => \TheRegDatapath|RegisterA\(1),
	datad => \Control|WideOr7~combout\,
	combout => \TheRegDatapath|TheALU|Add0~5_combout\);

-- Location: IOIBUF_X0_Y2_N8
\BUS_IN[0]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_BUS_IN(0),
	o => \BUS_IN[0]~input_o\);

-- Location: LCCOMB_X10_Y5_N22
\Control|WideOr5~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Control|WideOr5~1_combout\ = (\Control|present_state.CopyB_A~q\) # ((\Control|present_state.AND_A~q\) # ((\Control|present_state.SUB1~q\) # (\Control|present_state.OR_A~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Control|present_state.CopyB_A~q\,
	datab => \Control|present_state.AND_A~q\,
	datac => \Control|present_state.SUB1~q\,
	datad => \Control|present_state.OR_A~q\,
	combout => \Control|WideOr5~1_combout\);

-- Location: LCCOMB_X10_Y4_N0
\Control|WideOr5~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Control|WideOr5~0_combout\ = (\Control|present_state.SUB_A~q\) # ((\Control|present_state.LoadA~q\) # ((\Control|present_state.CopyA_A~q\) # (\Control|present_state.ADD_A~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Control|present_state.SUB_A~q\,
	datab => \Control|present_state.LoadA~q\,
	datac => \Control|present_state.CopyA_A~q\,
	datad => \Control|present_state.ADD_A~q\,
	combout => \Control|WideOr5~0_combout\);

-- Location: LCCOMB_X10_Y5_N12
\Control|WideOr5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Control|WideOr5~combout\ = (\Control|WideOr5~1_combout\) # (\Control|WideOr5~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Control|WideOr5~1_combout\,
	datad => \Control|WideOr5~0_combout\,
	combout => \Control|WideOr5~combout\);

-- Location: FF_X11_Y5_N9
\TheRegDatapath|RegisterA[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk1Hz~clkctrl_outclk\,
	asdata => \TheRegDatapath|Mux3~1_combout\,
	clrn => \ALT_INV_reset~input_o\,
	sload => VCC,
	ena => \Control|WideOr5~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \TheRegDatapath|RegisterA\(0));

-- Location: LCCOMB_X10_Y5_N30
\TheRegDatapath|TheALU|Add0~25\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \TheRegDatapath|TheALU|Add0~25_combout\ = (\TheRegDatapath|RegisterB\(0) & ((\TheRegDatapath|RegisterA\(0)) # (\Control|WideOr7~combout\))) # (!\TheRegDatapath|RegisterB\(0) & (\TheRegDatapath|RegisterA\(0) & \Control|WideOr7~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \TheRegDatapath|RegisterB\(0),
	datab => \TheRegDatapath|RegisterA\(0),
	datad => \Control|WideOr7~combout\,
	combout => \TheRegDatapath|TheALU|Add0~25_combout\);

-- Location: LCCOMB_X12_Y5_N0
\TheRegDatapath|TheALU|Add0~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \TheRegDatapath|TheALU|Add0~6_combout\ = (\TheRegDatapath|RegisterA\(0)) # ((!\Control|present_state.ADD1~q\ & (!\Control|WideOr7~0_combout\ & \Control|WideOr7~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \TheRegDatapath|RegisterA\(0),
	datab => \Control|present_state.ADD1~q\,
	datac => \Control|WideOr7~0_combout\,
	datad => \Control|WideOr7~1_combout\,
	combout => \TheRegDatapath|TheALU|Add0~6_combout\);

-- Location: LCCOMB_X12_Y5_N14
\TheRegDatapath|TheALU|Add0~9\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \TheRegDatapath|TheALU|Add0~9_combout\ = (\TheRegDatapath|TheALU|Add0~8_combout\ & (\TheRegDatapath|TheALU|Add0~6_combout\ $ (VCC))) # (!\TheRegDatapath|TheALU|Add0~8_combout\ & (\TheRegDatapath|TheALU|Add0~6_combout\ & VCC))
-- \TheRegDatapath|TheALU|Add0~10\ = CARRY((\TheRegDatapath|TheALU|Add0~8_combout\ & \TheRegDatapath|TheALU|Add0~6_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \TheRegDatapath|TheALU|Add0~8_combout\,
	datab => \TheRegDatapath|TheALU|Add0~6_combout\,
	datad => VCC,
	combout => \TheRegDatapath|TheALU|Add0~9_combout\,
	cout => \TheRegDatapath|TheALU|Add0~10\);

-- Location: LCCOMB_X10_Y5_N8
\TheRegDatapath|TheALU|Add0~26\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \TheRegDatapath|TheALU|Add0~26_combout\ = (\TheRegDatapath|TheALU|Mux0~0_combout\ & (\TheRegDatapath|TheALU|Add0~25_combout\)) # (!\TheRegDatapath|TheALU|Mux0~0_combout\ & ((\TheRegDatapath|TheALU|Add0~9_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \TheRegDatapath|TheALU|Add0~25_combout\,
	datac => \TheRegDatapath|TheALU|Mux0~0_combout\,
	datad => \TheRegDatapath|TheALU|Add0~9_combout\,
	combout => \TheRegDatapath|TheALU|Add0~26_combout\);

-- Location: LCCOMB_X11_Y5_N20
\TheRegDatapath|Mux3~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \TheRegDatapath|Mux3~0_combout\ = (\Control|WideOr1~combout\ & (((\Control|WideOr2~0_combout\)))) # (!\Control|WideOr1~combout\ & ((\Control|WideOr2~0_combout\ & (\TheRegDatapath|RegisterB\(0))) # (!\Control|WideOr2~0_combout\ & 
-- ((\TheRegDatapath|TheALU|Add0~26_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \TheRegDatapath|RegisterB\(0),
	datab => \Control|WideOr1~combout\,
	datac => \Control|WideOr2~0_combout\,
	datad => \TheRegDatapath|TheALU|Add0~26_combout\,
	combout => \TheRegDatapath|Mux3~0_combout\);

-- Location: LCCOMB_X11_Y5_N30
\TheRegDatapath|Mux3~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \TheRegDatapath|Mux3~1_combout\ = (\Control|WideOr1~combout\ & ((\TheRegDatapath|Mux3~0_combout\ & (\BUS_IN[0]~input_o\)) # (!\TheRegDatapath|Mux3~0_combout\ & ((\TheRegDatapath|RegisterA\(0)))))) # (!\Control|WideOr1~combout\ & 
-- (((\TheRegDatapath|Mux3~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \BUS_IN[0]~input_o\,
	datab => \Control|WideOr1~combout\,
	datac => \TheRegDatapath|RegisterA\(0),
	datad => \TheRegDatapath|Mux3~0_combout\,
	combout => \TheRegDatapath|Mux3~1_combout\);

-- Location: FF_X11_Y5_N23
\TheRegDatapath|RegisterB[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk1Hz~clkctrl_outclk\,
	asdata => \TheRegDatapath|Mux3~1_combout\,
	clrn => \ALT_INV_reset~input_o\,
	sload => VCC,
	ena => \Control|WideOr6~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \TheRegDatapath|RegisterB\(0));

-- Location: LCCOMB_X11_Y5_N28
\TheRegDatapath|TheALU|Add0~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \TheRegDatapath|TheALU|Add0~7_combout\ = (\Control|present_state.ADD1~q\ & (\TheRegDatapath|RegisterB\(0))) # (!\Control|present_state.ADD1~q\ & ((!\TheRegDatapath|RegisterA\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \TheRegDatapath|RegisterB\(0),
	datac => \TheRegDatapath|RegisterA\(0),
	datad => \Control|present_state.ADD1~q\,
	combout => \TheRegDatapath|TheALU|Add0~7_combout\);

-- Location: LCCOMB_X12_Y5_N6
\TheRegDatapath|TheALU|Add0~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \TheRegDatapath|TheALU|Add0~8_combout\ = (\Control|WideOr7~1_combout\ & ((\Control|WideOr7~0_combout\ & (\TheRegDatapath|RegisterB\(0))) # (!\Control|WideOr7~0_combout\ & ((\TheRegDatapath|TheALU|Add0~7_combout\))))) # (!\Control|WideOr7~1_combout\ & 
-- (\TheRegDatapath|RegisterB\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111011000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Control|WideOr7~1_combout\,
	datab => \TheRegDatapath|RegisterB\(0),
	datac => \Control|WideOr7~0_combout\,
	datad => \TheRegDatapath|TheALU|Add0~7_combout\,
	combout => \TheRegDatapath|TheALU|Add0~8_combout\);

-- Location: LCCOMB_X12_Y5_N16
\TheRegDatapath|TheALU|Add0~11\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \TheRegDatapath|TheALU|Add0~11_combout\ = (\TheRegDatapath|TheALU|Add0~4_combout\ & ((\TheRegDatapath|TheALU|Add0~5_combout\ & (\TheRegDatapath|TheALU|Add0~10\ & VCC)) # (!\TheRegDatapath|TheALU|Add0~5_combout\ & (!\TheRegDatapath|TheALU|Add0~10\)))) # 
-- (!\TheRegDatapath|TheALU|Add0~4_combout\ & ((\TheRegDatapath|TheALU|Add0~5_combout\ & (!\TheRegDatapath|TheALU|Add0~10\)) # (!\TheRegDatapath|TheALU|Add0~5_combout\ & ((\TheRegDatapath|TheALU|Add0~10\) # (GND)))))
-- \TheRegDatapath|TheALU|Add0~12\ = CARRY((\TheRegDatapath|TheALU|Add0~4_combout\ & (!\TheRegDatapath|TheALU|Add0~5_combout\ & !\TheRegDatapath|TheALU|Add0~10\)) # (!\TheRegDatapath|TheALU|Add0~4_combout\ & ((!\TheRegDatapath|TheALU|Add0~10\) # 
-- (!\TheRegDatapath|TheALU|Add0~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \TheRegDatapath|TheALU|Add0~4_combout\,
	datab => \TheRegDatapath|TheALU|Add0~5_combout\,
	datad => VCC,
	cin => \TheRegDatapath|TheALU|Add0~10\,
	combout => \TheRegDatapath|TheALU|Add0~11_combout\,
	cout => \TheRegDatapath|TheALU|Add0~12\);

-- Location: LCCOMB_X12_Y5_N24
\TheRegDatapath|TheALU|Add0~24\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \TheRegDatapath|TheALU|Add0~24_combout\ = (\TheRegDatapath|TheALU|Mux0~0_combout\ & (\TheRegDatapath|TheALU|Add0~23_combout\)) # (!\TheRegDatapath|TheALU|Mux0~0_combout\ & ((\TheRegDatapath|TheALU|Add0~11_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \TheRegDatapath|TheALU|Mux0~0_combout\,
	datac => \TheRegDatapath|TheALU|Add0~23_combout\,
	datad => \TheRegDatapath|TheALU|Add0~11_combout\,
	combout => \TheRegDatapath|TheALU|Add0~24_combout\);

-- Location: LCCOMB_X11_Y5_N2
\TheRegDatapath|Mux2~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \TheRegDatapath|Mux2~0_combout\ = (\Control|WideOr1~combout\ & ((\TheRegDatapath|RegisterA\(1)) # ((\Control|WideOr2~0_combout\)))) # (!\Control|WideOr1~combout\ & (((!\Control|WideOr2~0_combout\ & \TheRegDatapath|TheALU|Add0~24_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \TheRegDatapath|RegisterA\(1),
	datab => \Control|WideOr1~combout\,
	datac => \Control|WideOr2~0_combout\,
	datad => \TheRegDatapath|TheALU|Add0~24_combout\,
	combout => \TheRegDatapath|Mux2~0_combout\);

-- Location: LCCOMB_X11_Y5_N14
\TheRegDatapath|Mux2~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \TheRegDatapath|Mux2~1_combout\ = (\Control|WideOr2~0_combout\ & ((\TheRegDatapath|Mux2~0_combout\ & (\BUS_IN[1]~input_o\)) # (!\TheRegDatapath|Mux2~0_combout\ & ((\TheRegDatapath|RegisterB\(1)))))) # (!\Control|WideOr2~0_combout\ & 
-- (((\TheRegDatapath|Mux2~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Control|WideOr2~0_combout\,
	datab => \BUS_IN[1]~input_o\,
	datac => \TheRegDatapath|RegisterB\(1),
	datad => \TheRegDatapath|Mux2~0_combout\,
	combout => \TheRegDatapath|Mux2~1_combout\);

-- Location: FF_X11_Y5_N7
\TheRegDatapath|RegisterA[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk1Hz~clkctrl_outclk\,
	asdata => \TheRegDatapath|Mux2~1_combout\,
	clrn => \ALT_INV_reset~input_o\,
	sload => VCC,
	ena => \Control|WideOr5~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \TheRegDatapath|RegisterA\(1));

-- Location: LCCOMB_X11_Y5_N16
\TheRegDatapath|TheALU|Add0~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \TheRegDatapath|TheALU|Add0~4_combout\ = (\TheRegDatapath|RegisterA\(1) & (((\Control|WideOr7~0_combout\) # (\Control|present_state.ADD1~q\)) # (!\Control|WideOr7~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \TheRegDatapath|RegisterA\(1),
	datab => \Control|WideOr7~1_combout\,
	datac => \Control|WideOr7~0_combout\,
	datad => \Control|present_state.ADD1~q\,
	combout => \TheRegDatapath|TheALU|Add0~4_combout\);

-- Location: LCCOMB_X12_Y5_N18
\TheRegDatapath|TheALU|Add0~13\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \TheRegDatapath|TheALU|Add0~13_combout\ = ((\TheRegDatapath|TheALU|Add0~2_combout\ $ (\TheRegDatapath|TheALU|Add0~3_combout\ $ (!\TheRegDatapath|TheALU|Add0~12\)))) # (GND)
-- \TheRegDatapath|TheALU|Add0~14\ = CARRY((\TheRegDatapath|TheALU|Add0~2_combout\ & ((\TheRegDatapath|TheALU|Add0~3_combout\) # (!\TheRegDatapath|TheALU|Add0~12\))) # (!\TheRegDatapath|TheALU|Add0~2_combout\ & (\TheRegDatapath|TheALU|Add0~3_combout\ & 
-- !\TheRegDatapath|TheALU|Add0~12\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \TheRegDatapath|TheALU|Add0~2_combout\,
	datab => \TheRegDatapath|TheALU|Add0~3_combout\,
	datad => VCC,
	cin => \TheRegDatapath|TheALU|Add0~12\,
	combout => \TheRegDatapath|TheALU|Add0~13_combout\,
	cout => \TheRegDatapath|TheALU|Add0~14\);

-- Location: LCCOMB_X11_Y5_N24
\TheRegDatapath|Mux1~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \TheRegDatapath|Mux1~0_combout\ = (\TheRegDatapath|TheALU|Mux0~0_combout\ & (\TheRegDatapath|TheALU|Add0~22_combout\)) # (!\TheRegDatapath|TheALU|Mux0~0_combout\ & ((\TheRegDatapath|TheALU|Add0~13_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \TheRegDatapath|TheALU|Mux0~0_combout\,
	datac => \TheRegDatapath|TheALU|Add0~22_combout\,
	datad => \TheRegDatapath|TheALU|Add0~13_combout\,
	combout => \TheRegDatapath|Mux1~0_combout\);

-- Location: LCCOMB_X11_Y5_N26
\TheRegDatapath|Mux1~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \TheRegDatapath|Mux1~2_combout\ = (\TheRegDatapath|Mux1~1_combout\ & ((\Control|WideOr1~combout\) # ((\TheRegDatapath|RegisterB\(2))))) # (!\TheRegDatapath|Mux1~1_combout\ & (!\Control|WideOr1~combout\ & ((\TheRegDatapath|Mux1~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \TheRegDatapath|Mux1~1_combout\,
	datab => \Control|WideOr1~combout\,
	datac => \TheRegDatapath|RegisterB\(2),
	datad => \TheRegDatapath|Mux1~0_combout\,
	combout => \TheRegDatapath|Mux1~2_combout\);

-- Location: FF_X11_Y5_N13
\TheRegDatapath|RegisterA[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk1Hz~clkctrl_outclk\,
	asdata => \TheRegDatapath|Mux1~2_combout\,
	clrn => \ALT_INV_reset~input_o\,
	sload => VCC,
	ena => \Control|WideOr5~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \TheRegDatapath|RegisterA\(2));

-- Location: LCCOMB_X12_Y5_N30
\TheRegDatapath|TheALU|Add0~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \TheRegDatapath|TheALU|Add0~2_combout\ = (\TheRegDatapath|RegisterA\(2) & (((\Control|present_state.ADD1~q\) # (\Control|WideOr7~0_combout\)) # (!\Control|WideOr7~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Control|WideOr7~1_combout\,
	datab => \Control|present_state.ADD1~q\,
	datac => \Control|WideOr7~0_combout\,
	datad => \TheRegDatapath|RegisterA\(2),
	combout => \TheRegDatapath|TheALU|Add0~2_combout\);

-- Location: LCCOMB_X12_Y5_N20
\TheRegDatapath|TheALU|Add0~15\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \TheRegDatapath|TheALU|Add0~15_combout\ = (\TheRegDatapath|TheALU|Add0~0_combout\ & ((\TheRegDatapath|TheALU|Add0~1_combout\ & (\TheRegDatapath|TheALU|Add0~14\ & VCC)) # (!\TheRegDatapath|TheALU|Add0~1_combout\ & (!\TheRegDatapath|TheALU|Add0~14\)))) # 
-- (!\TheRegDatapath|TheALU|Add0~0_combout\ & ((\TheRegDatapath|TheALU|Add0~1_combout\ & (!\TheRegDatapath|TheALU|Add0~14\)) # (!\TheRegDatapath|TheALU|Add0~1_combout\ & ((\TheRegDatapath|TheALU|Add0~14\) # (GND)))))
-- \TheRegDatapath|TheALU|Add0~16\ = CARRY((\TheRegDatapath|TheALU|Add0~0_combout\ & (!\TheRegDatapath|TheALU|Add0~1_combout\ & !\TheRegDatapath|TheALU|Add0~14\)) # (!\TheRegDatapath|TheALU|Add0~0_combout\ & ((!\TheRegDatapath|TheALU|Add0~14\) # 
-- (!\TheRegDatapath|TheALU|Add0~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \TheRegDatapath|TheALU|Add0~0_combout\,
	datab => \TheRegDatapath|TheALU|Add0~1_combout\,
	datad => VCC,
	cin => \TheRegDatapath|TheALU|Add0~14\,
	combout => \TheRegDatapath|TheALU|Add0~15_combout\,
	cout => \TheRegDatapath|TheALU|Add0~16\);

-- Location: LCCOMB_X12_Y5_N12
\TheRegDatapath|TheALU|Add0~21\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \TheRegDatapath|TheALU|Add0~21_combout\ = (\TheRegDatapath|TheALU|Mux0~0_combout\ & (\TheRegDatapath|TheALU|Add0~20_combout\)) # (!\TheRegDatapath|TheALU|Mux0~0_combout\ & ((\TheRegDatapath|TheALU|Add0~15_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \TheRegDatapath|TheALU|Mux0~0_combout\,
	datac => \TheRegDatapath|TheALU|Add0~20_combout\,
	datad => \TheRegDatapath|TheALU|Add0~15_combout\,
	combout => \TheRegDatapath|TheALU|Add0~21_combout\);

-- Location: LCCOMB_X12_Y5_N8
\TheRegDatapath|Mux0~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \TheRegDatapath|Mux0~1_combout\ = (\TheRegDatapath|Mux0~0_combout\) # ((!\Control|WideOr2~0_combout\ & (!\Control|WideOr1~combout\ & \TheRegDatapath|TheALU|Add0~21_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Control|WideOr2~0_combout\,
	datab => \TheRegDatapath|Mux0~0_combout\,
	datac => \Control|WideOr1~combout\,
	datad => \TheRegDatapath|TheALU|Add0~21_combout\,
	combout => \TheRegDatapath|Mux0~1_combout\);

-- Location: FF_X11_Y5_N5
\TheRegDatapath|RegisterA[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk1Hz~clkctrl_outclk\,
	asdata => \TheRegDatapath|Mux0~1_combout\,
	clrn => \ALT_INV_reset~input_o\,
	sload => VCC,
	ena => \Control|WideOr5~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \TheRegDatapath|RegisterA\(3));

-- Location: LCCOMB_X11_Y5_N4
\TheRegDatapath|TheALU|Add0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \TheRegDatapath|TheALU|Add0~0_combout\ = (\TheRegDatapath|RegisterA\(3) & ((\Control|present_state.ADD1~q\) # ((\Control|WideOr7~0_combout\) # (!\Control|WideOr7~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Control|present_state.ADD1~q\,
	datab => \Control|WideOr7~1_combout\,
	datac => \TheRegDatapath|RegisterA\(3),
	datad => \Control|WideOr7~0_combout\,
	combout => \TheRegDatapath|TheALU|Add0~0_combout\);

-- Location: LCCOMB_X12_Y5_N22
\TheRegDatapath|TheALU|Add0~17\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \TheRegDatapath|TheALU|Add0~17_combout\ = !\TheRegDatapath|TheALU|Add0~16\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \TheRegDatapath|TheALU|Add0~16\,
	combout => \TheRegDatapath|TheALU|Add0~17_combout\);

-- Location: LCCOMB_X10_Y5_N28
\TheRegDatapath|TheALU|Add0~19\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \TheRegDatapath|TheALU|Add0~19_combout\ = (!\TheRegDatapath|TheALU|Mux0~0_combout\ & \TheRegDatapath|TheALU|Add0~17_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \TheRegDatapath|TheALU|Mux0~0_combout\,
	datad => \TheRegDatapath|TheALU|Add0~17_combout\,
	combout => \TheRegDatapath|TheALU|Add0~19_combout\);

-- Location: FF_X10_Y5_N9
\TheRegDatapath|RegisterC[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk1Hz~clkctrl_outclk\,
	d => \TheRegDatapath|TheALU|Add0~26_combout\,
	clrn => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \TheRegDatapath|RegisterC\(0));

-- Location: FF_X12_Y4_N23
\Control|done\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk1Hz~clkctrl_outclk\,
	asdata => \Control|WideOr0~1_combout\,
	clrn => \ALT_INV_reset~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Control|done~q\);

-- Location: LCCOMB_X12_Y4_N22
\DataPrint~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \DataPrint~0_combout\ = (\Control|done~q\ & (\instruction[2]~input_o\ $ (((\instruction[0]~input_o\ & \instruction[1]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instruction[0]~input_o\,
	datab => \instruction[1]~input_o\,
	datac => \Control|done~q\,
	datad => \instruction[2]~input_o\,
	combout => \DataPrint~0_combout\);

-- Location: FF_X10_Y5_N31
\dataout[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk1Hz~clkctrl_outclk\,
	asdata => \TheRegDatapath|RegisterC\(0),
	clrn => \ALT_INV_reset~input_o\,
	sload => VCC,
	ena => \DataPrint~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => dataout(0));

-- Location: FF_X12_Y5_N25
\TheRegDatapath|RegisterC[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk1Hz~clkctrl_outclk\,
	d => \TheRegDatapath|TheALU|Add0~24_combout\,
	clrn => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \TheRegDatapath|RegisterC\(1));

-- Location: LCCOMB_X10_Y5_N16
\dataout[1]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \dataout[1]~feeder_combout\ = \TheRegDatapath|RegisterC\(1)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \TheRegDatapath|RegisterC\(1),
	combout => \dataout[1]~feeder_combout\);

-- Location: FF_X10_Y5_N17
\dataout[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk1Hz~clkctrl_outclk\,
	d => \dataout[1]~feeder_combout\,
	clrn => \ALT_INV_reset~input_o\,
	ena => \DataPrint~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => dataout(1));

-- Location: LCCOMB_X12_Y5_N10
\TheRegDatapath|TheALU|Add0~27\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \TheRegDatapath|TheALU|Add0~27_combout\ = (\TheRegDatapath|TheALU|Mux0~0_combout\ & (\TheRegDatapath|TheALU|Add0~22_combout\)) # (!\TheRegDatapath|TheALU|Mux0~0_combout\ & ((\TheRegDatapath|TheALU|Add0~13_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \TheRegDatapath|TheALU|Mux0~0_combout\,
	datac => \TheRegDatapath|TheALU|Add0~22_combout\,
	datad => \TheRegDatapath|TheALU|Add0~13_combout\,
	combout => \TheRegDatapath|TheALU|Add0~27_combout\);

-- Location: FF_X12_Y5_N11
\TheRegDatapath|RegisterC[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk1Hz~clkctrl_outclk\,
	d => \TheRegDatapath|TheALU|Add0~27_combout\,
	clrn => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \TheRegDatapath|RegisterC\(2));

-- Location: LCCOMB_X10_Y5_N18
\dataout[2]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \dataout[2]~feeder_combout\ = \TheRegDatapath|RegisterC\(2)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \TheRegDatapath|RegisterC\(2),
	combout => \dataout[2]~feeder_combout\);

-- Location: FF_X10_Y5_N19
\dataout[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk1Hz~clkctrl_outclk\,
	d => \dataout[2]~feeder_combout\,
	clrn => \ALT_INV_reset~input_o\,
	ena => \DataPrint~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => dataout(2));

-- Location: FF_X12_Y5_N13
\TheRegDatapath|RegisterC[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk1Hz~clkctrl_outclk\,
	d => \TheRegDatapath|TheALU|Add0~21_combout\,
	clrn => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \TheRegDatapath|RegisterC\(3));

-- Location: FF_X10_Y5_N25
\dataout[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk1Hz~clkctrl_outclk\,
	asdata => \TheRegDatapath|RegisterC\(3),
	clrn => \ALT_INV_reset~input_o\,
	sload => VCC,
	ena => \DataPrint~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => dataout(3));

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

ww_COUT <= \COUT~output_o\;

ww_BUS_OUT(0) <= \BUS_OUT[0]~output_o\;

ww_BUS_OUT(1) <= \BUS_OUT[1]~output_o\;

ww_BUS_OUT(2) <= \BUS_OUT[2]~output_o\;

ww_BUS_OUT(3) <= \BUS_OUT[3]~output_o\;

ww_started <= \started~output_o\;

ww_done <= \done~output_o\;
END structure;


