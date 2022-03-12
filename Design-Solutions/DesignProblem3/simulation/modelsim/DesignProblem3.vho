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

-- DATE "04/03/2020 21:56:41"

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

ENTITY 	DesignProblem3 IS
    PORT (
	clock : IN std_logic;
	resetin : IN std_logic;
	Switch5 : IN std_logic;
	PushButton1 : IN std_logic;
	PushButton2 : IN std_logic;
	LED0 : BUFFER std_logic;
	LED1 : BUFFER std_logic;
	Buzzer : BUFFER std_logic;
	display : BUFFER std_logic_vector(3 DOWNTO 0);
	SevenSeg : BUFFER std_logic_vector(6 DOWNTO 0)
	);
END DesignProblem3;

-- Design Ports Information
-- LED0	=>  Location: PIN_E4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LED1	=>  Location: PIN_E3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Buzzer	=>  Location: PIN_F4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- display[0]	=>  Location: PIN_J2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- display[1]	=>  Location: PIN_K5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- display[2]	=>  Location: PIN_H2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- display[3]	=>  Location: PIN_H3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SevenSeg[0]	=>  Location: PIN_K8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SevenSeg[1]	=>  Location: PIN_K12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SevenSeg[2]	=>  Location: PIN_M9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SevenSeg[3]	=>  Location: PIN_M10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SevenSeg[4]	=>  Location: PIN_M11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SevenSeg[5]	=>  Location: PIN_M12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SevenSeg[6]	=>  Location: PIN_D11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- resetin	=>  Location: PIN_N10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Switch5	=>  Location: PIN_M13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PushButton1	=>  Location: PIN_G4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PushButton2	=>  Location: PIN_H8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clock	=>  Location: PIN_H4,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF DesignProblem3 IS
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
SIGNAL ww_resetin : std_logic;
SIGNAL ww_Switch5 : std_logic;
SIGNAL ww_PushButton1 : std_logic;
SIGNAL ww_PushButton2 : std_logic;
SIGNAL ww_LED0 : std_logic;
SIGNAL ww_LED1 : std_logic;
SIGNAL ww_Buzzer : std_logic;
SIGNAL ww_display : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_SevenSeg : std_logic_vector(6 DOWNTO 0);
SIGNAL \clock~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \Clk1Hz~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \~QUARTUS_CREATED_GND~I_combout\ : std_logic;
SIGNAL \~QUARTUS_CREATED_UNVM~~busy\ : std_logic;
SIGNAL \LED0~output_o\ : std_logic;
SIGNAL \LED1~output_o\ : std_logic;
SIGNAL \Buzzer~output_o\ : std_logic;
SIGNAL \display[0]~output_o\ : std_logic;
SIGNAL \display[1]~output_o\ : std_logic;
SIGNAL \display[2]~output_o\ : std_logic;
SIGNAL \display[3]~output_o\ : std_logic;
SIGNAL \SevenSeg[0]~output_o\ : std_logic;
SIGNAL \SevenSeg[1]~output_o\ : std_logic;
SIGNAL \SevenSeg[2]~output_o\ : std_logic;
SIGNAL \SevenSeg[3]~output_o\ : std_logic;
SIGNAL \SevenSeg[4]~output_o\ : std_logic;
SIGNAL \SevenSeg[5]~output_o\ : std_logic;
SIGNAL \SevenSeg[6]~output_o\ : std_logic;
SIGNAL \clock~input_o\ : std_logic;
SIGNAL \clock~inputclkctrl_outclk\ : std_logic;
SIGNAL \Add0~0_combout\ : std_logic;
SIGNAL \resetin~input_o\ : std_logic;
SIGNAL \Add0~1\ : std_logic;
SIGNAL \Add0~2_combout\ : std_logic;
SIGNAL \Add0~3\ : std_logic;
SIGNAL \Add0~4_combout\ : std_logic;
SIGNAL \Add0~5\ : std_logic;
SIGNAL \Add0~6_combout\ : std_logic;
SIGNAL \Add0~7\ : std_logic;
SIGNAL \Add0~8_combout\ : std_logic;
SIGNAL \Add0~9\ : std_logic;
SIGNAL \Add0~10_combout\ : std_logic;
SIGNAL \Add0~11\ : std_logic;
SIGNAL \Add0~12_combout\ : std_logic;
SIGNAL \Add0~13\ : std_logic;
SIGNAL \Add0~14_combout\ : std_logic;
SIGNAL \count~6_combout\ : std_logic;
SIGNAL \Equal6~6_combout\ : std_logic;
SIGNAL \Add0~15\ : std_logic;
SIGNAL \Add0~16_combout\ : std_logic;
SIGNAL \Add0~17\ : std_logic;
SIGNAL \Add0~18_combout\ : std_logic;
SIGNAL \Add0~19\ : std_logic;
SIGNAL \Add0~20_combout\ : std_logic;
SIGNAL \count~5_combout\ : std_logic;
SIGNAL \Add0~21\ : std_logic;
SIGNAL \Add0~22_combout\ : std_logic;
SIGNAL \Equal6~5_combout\ : std_logic;
SIGNAL \Equal6~7_combout\ : std_logic;
SIGNAL \Add0~23\ : std_logic;
SIGNAL \Add0~24_combout\ : std_logic;
SIGNAL \Add0~25\ : std_logic;
SIGNAL \Add0~26_combout\ : std_logic;
SIGNAL \Add0~27\ : std_logic;
SIGNAL \Add0~28_combout\ : std_logic;
SIGNAL \Add0~29\ : std_logic;
SIGNAL \Add0~30_combout\ : std_logic;
SIGNAL \count~4_combout\ : std_logic;
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
SIGNAL \Add0~47\ : std_logic;
SIGNAL \Add0~48_combout\ : std_logic;
SIGNAL \Add0~49\ : std_logic;
SIGNAL \Add0~50_combout\ : std_logic;
SIGNAL \Add0~51\ : std_logic;
SIGNAL \Add0~52_combout\ : std_logic;
SIGNAL \Add0~53\ : std_logic;
SIGNAL \Add0~54_combout\ : std_logic;
SIGNAL \Equal6~0_combout\ : std_logic;
SIGNAL \Equal6~1_combout\ : std_logic;
SIGNAL \Equal6~2_combout\ : std_logic;
SIGNAL \Equal6~3_combout\ : std_logic;
SIGNAL \Equal6~4_combout\ : std_logic;
SIGNAL \Equal6~8_combout\ : std_logic;
SIGNAL \Clk1Hz~0_combout\ : std_logic;
SIGNAL \Clk1Hz~feeder_combout\ : std_logic;
SIGNAL \Clk1Hz~q\ : std_logic;
SIGNAL \Clk1Hz~clkctrl_outclk\ : std_logic;
SIGNAL \PushButton1~input_o\ : std_logic;
SIGNAL \PushButton2~input_o\ : std_logic;
SIGNAL \FSMDisplay|Selector1~0_combout\ : std_logic;
SIGNAL \FSMDisplay|present_state.Set_Minute~q\ : std_logic;
SIGNAL \FSMDisplay|next_state.Set_Hour~0_combout\ : std_logic;
SIGNAL \FSMDisplay|present_state.Set_Hour~q\ : std_logic;
SIGNAL \FSMDisplay|Selector0~1_combout\ : std_logic;
SIGNAL \Switch5~input_o\ : std_logic;
SIGNAL \FSMDisplay|next_state.Alarm1~0_combout\ : std_logic;
SIGNAL \TimeOfDay|MinsDigitBCD[0]~4_combout\ : std_logic;
SIGNAL \TimeOfDay|MinsDigitBCD~0_combout\ : std_logic;
SIGNAL \TimeOfDay|MinsDigitBCD[2]~2_combout\ : std_logic;
SIGNAL \TimeOfDay|MinsDigitBCD~3_combout\ : std_logic;
SIGNAL \TimeOfDay|MinsDigitBCD~1_combout\ : std_logic;
SIGNAL \BCD_Alarm[1]~feeder_combout\ : std_logic;
SIGNAL \FSMDisplay|AlarmEnabledSet~0_combout\ : std_logic;
SIGNAL \FSMDisplay|NextStatesProc~0_combout\ : std_logic;
SIGNAL \FSMDisplay|NextStatesProc~1_combout\ : std_logic;
SIGNAL \TimeOfDay|Equal0~0_combout\ : std_logic;
SIGNAL \TimeOfDay|MinsTensBCD~2_combout\ : std_logic;
SIGNAL \FSMDisplay|CntEn~0_combout\ : std_logic;
SIGNAL \TimeOfDay|MinsTensBCD[0]~3_combout\ : std_logic;
SIGNAL \TimeOfDay|MinsTensBCD~9_combout\ : std_logic;
SIGNAL \TimeOfDay|MinsTensBCD[1]~7_combout\ : std_logic;
SIGNAL \Equal2~0_combout\ : std_logic;
SIGNAL \TimeOfDay|MinsTensBCD~8_combout\ : std_logic;
SIGNAL \TimeOfDay|MinsTensBCD[1]~4_combout\ : std_logic;
SIGNAL \TimeOfDay|MinsTensBCD[1]~5_combout\ : std_logic;
SIGNAL \TimeOfDay|MinsTensBCD~6_combout\ : std_logic;
SIGNAL \BCD_Alarm[4]~0_combout\ : std_logic;
SIGNAL \FSMDisplay|NextStatesProc~2_combout\ : std_logic;
SIGNAL \FSMDisplay|NextStatesProc~3_combout\ : std_logic;
SIGNAL \FSMDisplay|Selector2~0_combout\ : std_logic;
SIGNAL \FSMDisplay|Selector2~1_combout\ : std_logic;
SIGNAL \FSMDisplay|Selector2~2_combout\ : std_logic;
SIGNAL \FSMDisplay|present_state.Set_Alarm~q\ : std_logic;
SIGNAL \FSMDisplay|next_state.AlarmClearSwitch~1_combout\ : std_logic;
SIGNAL \FSMDisplay|present_state.AlarmClearSwitch~q\ : std_logic;
SIGNAL \FSMDisplay|Selector0~0_combout\ : std_logic;
SIGNAL \FSMDisplay|Selector0~2_combout\ : std_logic;
SIGNAL \FSMDisplay|present_state.Time_Now~q\ : std_logic;
SIGNAL \FSMDisplay|next_state.AlarmClearSwitch~0_combout\ : std_logic;
SIGNAL \FSMDisplay|AlarmEnabled~0_combout\ : std_logic;
SIGNAL \FSMDisplay|AlarmEnabled~q\ : std_logic;
SIGNAL \FSMDisplay|WideOr6~0_combout\ : std_logic;
SIGNAL \SecondMuxand7Seg|OutputBuzzer~combout\ : std_logic;
SIGNAL \SecondMuxand7Seg|present_state.S1~0_combout\ : std_logic;
SIGNAL \SecondMuxand7Seg|present_state.S1~q\ : std_logic;
SIGNAL \SecondMuxand7Seg|present_state.S2~q\ : std_logic;
SIGNAL \SecondMuxand7Seg|present_state.S3~q\ : std_logic;
SIGNAL \SecondMuxand7Seg|present_state.S0~0_combout\ : std_logic;
SIGNAL \SecondMuxand7Seg|present_state.S0~q\ : std_logic;
SIGNAL \SecondMuxand7Seg|OutputDisplay[0]~0_combout\ : std_logic;
SIGNAL \comb~1_combout\ : std_logic;
SIGNAL \comb~0_combout\ : std_logic;
SIGNAL \AMDMPM[0]~0_combout\ : std_logic;
SIGNAL \comb~2_combout\ : std_logic;
SIGNAL \MinutesDisplay|Mux6~0_combout\ : std_logic;
SIGNAL \SecondMuxand7Seg|GrabOne[0]~0_combout\ : std_logic;
SIGNAL \FSMDisplay|NextStatesProc~4_combout\ : std_logic;
SIGNAL \FSMDisplay|next_state.Alarm1~1_combout\ : std_logic;
SIGNAL \FSMDisplay|present_state.Alarm1~q\ : std_logic;
SIGNAL \FSMDisplay|next_state.Alarm2~0_combout\ : std_logic;
SIGNAL \FSMDisplay|present_state.Alarm2~q\ : std_logic;
SIGNAL \FSMDisplay|next_state.Alarm3~0_combout\ : std_logic;
SIGNAL \FSMDisplay|present_state.Alarm3~q\ : std_logic;
SIGNAL \FSMDisplay|next_state.Alarm4~0_combout\ : std_logic;
SIGNAL \FSMDisplay|present_state.Alarm4~q\ : std_logic;
SIGNAL \FSMDisplay|next_state.Alarm5~0_combout\ : std_logic;
SIGNAL \FSMDisplay|present_state.Alarm5~q\ : std_logic;
SIGNAL \FSMDisplay|next_state.Alarm6~0_combout\ : std_logic;
SIGNAL \FSMDisplay|present_state.Alarm6~q\ : std_logic;
SIGNAL \FSMDisplay|next_state.Alarm7~0_combout\ : std_logic;
SIGNAL \FSMDisplay|present_state.Alarm7~q\ : std_logic;
SIGNAL \FSMDisplay|next_state.Alarm8~0_combout\ : std_logic;
SIGNAL \FSMDisplay|present_state.Alarm8~q\ : std_logic;
SIGNAL \FSMDisplay|next_state.Alarm9~0_combout\ : std_logic;
SIGNAL \FSMDisplay|present_state.Alarm9~q\ : std_logic;
SIGNAL \FSMDisplay|next_state.Alarm10~0_combout\ : std_logic;
SIGNAL \FSMDisplay|present_state.Alarm10~q\ : std_logic;
SIGNAL \FSMDisplay|WideOr2~0_combout\ : std_logic;
SIGNAL \FSMDisplay|present_state.Alarm11~q\ : std_logic;
SIGNAL \FSMDisplay|WideOr6~combout\ : std_logic;
SIGNAL \SecondMuxand7Seg|Selector6~1_combout\ : std_logic;
SIGNAL \OutBCD[4]~4_combout\ : std_logic;
SIGNAL \OutBCD[5]~5_combout\ : std_logic;
SIGNAL \OutBCD[7]~7_combout\ : std_logic;
SIGNAL \OutBCD[6]~6_combout\ : std_logic;
SIGNAL \MinutesDisplay|Mux13~0_combout\ : std_logic;
SIGNAL \SecondMuxand7Seg|Selector6~2_combout\ : std_logic;
SIGNAL \OutBCD[9]~1_combout\ : std_logic;
SIGNAL \OutBCD[11]~3_combout\ : std_logic;
SIGNAL \OutBCD[8]~0_combout\ : std_logic;
SIGNAL \OutBCD[10]~2_combout\ : std_logic;
SIGNAL \HoursDisplay|Mux6~0_combout\ : std_logic;
SIGNAL \SecondMuxand7Seg|Selector6~0_combout\ : std_logic;
SIGNAL \SecondMuxand7Seg|Selector6~3_combout\ : std_logic;
SIGNAL \MinutesDisplay|Mux12~0_combout\ : std_logic;
SIGNAL \MinutesDisplay|Mux2~0_combout\ : std_logic;
SIGNAL \SecondMuxand7Seg|Selector5~1_combout\ : std_logic;
SIGNAL \SecondMuxand7Seg|Selector5~2_combout\ : std_logic;
SIGNAL \HoursDisplay|Mux5~0_combout\ : std_logic;
SIGNAL \SecondMuxand7Seg|Selector5~0_combout\ : std_logic;
SIGNAL \SecondMuxand7Seg|Selector5~3_combout\ : std_logic;
SIGNAL \MinutesDisplay|Mux11~0_combout\ : std_logic;
SIGNAL \SecondMuxand7Seg|Selector4~1_combout\ : std_logic;
SIGNAL \HoursDisplay|Mux4~0_combout\ : std_logic;
SIGNAL \SecondMuxand7Seg|Selector4~0_combout\ : std_logic;
SIGNAL \SecondMuxand7Seg|Selector4~2_combout\ : std_logic;
SIGNAL \HoursDisplay|Mux3~0_combout\ : std_logic;
SIGNAL \SecondMuxand7Seg|Selector3~0_combout\ : std_logic;
SIGNAL \MinutesDisplay|Mux10~0_combout\ : std_logic;
SIGNAL \MinutesDisplay|Mux3~0_combout\ : std_logic;
SIGNAL \SecondMuxand7Seg|Selector3~1_combout\ : std_logic;
SIGNAL \SecondMuxand7Seg|Selector3~2_combout\ : std_logic;
SIGNAL \SecondMuxand7Seg|Selector3~3_combout\ : std_logic;
SIGNAL \MinutesDisplay|Mux2~1_combout\ : std_logic;
SIGNAL \SecondMuxand7Seg|Selector2~1_combout\ : std_logic;
SIGNAL \MinutesDisplay|Mux9~0_combout\ : std_logic;
SIGNAL \SecondMuxand7Seg|Selector2~2_combout\ : std_logic;
SIGNAL \HoursDisplay|Mux2~0_combout\ : std_logic;
SIGNAL \SecondMuxand7Seg|Selector2~0_combout\ : std_logic;
SIGNAL \SecondMuxand7Seg|Selector2~3_combout\ : std_logic;
SIGNAL \MinutesDisplay|Mux8~0_combout\ : std_logic;
SIGNAL \SecondMuxand7Seg|Selector1~1_combout\ : std_logic;
SIGNAL \HoursDisplay|Mux1~0_combout\ : std_logic;
SIGNAL \SecondMuxand7Seg|Selector1~0_combout\ : std_logic;
SIGNAL \SecondMuxand7Seg|Selector1~2_combout\ : std_logic;
SIGNAL \HoursDisplay|Mux0~0_combout\ : std_logic;
SIGNAL \SecondMuxand7Seg|Selector0~0_combout\ : std_logic;
SIGNAL \MinutesDisplay|Mux0~0_combout\ : std_logic;
SIGNAL \MinutesDisplay|Mux7~0_combout\ : std_logic;
SIGNAL \SecondMuxand7Seg|Selector0~1_combout\ : std_logic;
SIGNAL \SecondMuxand7Seg|Selector0~2_combout\ : std_logic;
SIGNAL \SecondMuxand7Seg|Selector0~3_combout\ : std_logic;
SIGNAL \SecondMuxand7Seg|GrabTwo\ : std_logic_vector(6 DOWNTO 0);
SIGNAL BCD_Alarm : std_logic_vector(7 DOWNTO 0);
SIGNAL \TimeOfDay|MinsTensBCD\ : std_logic_vector(3 DOWNTO 0);
SIGNAL AMDMPM : std_logic_vector(3 DOWNTO 0);
SIGNAL \SecondMuxand7Seg|GrabThree\ : std_logic_vector(6 DOWNTO 0);
SIGNAL \SecondMuxand7Seg|GrabOne\ : std_logic_vector(6 DOWNTO 0);
SIGNAL \TimeOfDay|MinsDigitBCD\ : std_logic_vector(3 DOWNTO 0);
SIGNAL count : std_logic_vector(27 DOWNTO 0);
SIGNAL \ALT_INV_resetin~input_o\ : std_logic;
SIGNAL \SecondMuxand7Seg|ALT_INV_OutputDisplay[0]~0_combout\ : std_logic;
SIGNAL \SecondMuxand7Seg|ALT_INV_OutputBuzzer~combout\ : std_logic;

COMPONENT hard_block
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic);
END COMPONENT;

BEGIN

ww_clock <= clock;
ww_resetin <= resetin;
ww_Switch5 <= Switch5;
ww_PushButton1 <= PushButton1;
ww_PushButton2 <= PushButton2;
LED0 <= ww_LED0;
LED1 <= ww_LED1;
Buzzer <= ww_Buzzer;
display <= ww_display;
SevenSeg <= ww_SevenSeg;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\clock~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \clock~input_o\);

\Clk1Hz~clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \Clk1Hz~q\);
\ALT_INV_resetin~input_o\ <= NOT \resetin~input_o\;
\SecondMuxand7Seg|ALT_INV_OutputDisplay[0]~0_combout\ <= NOT \SecondMuxand7Seg|OutputDisplay[0]~0_combout\;
\SecondMuxand7Seg|ALT_INV_OutputBuzzer~combout\ <= NOT \SecondMuxand7Seg|OutputBuzzer~combout\;
auto_generated_inst : hard_block
PORT MAP (
	devoe => ww_devoe,
	devclrn => ww_devclrn,
	devpor => ww_devpor);

-- Location: LCCOMB_X11_Y8_N0
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

-- Location: IOOBUF_X10_Y15_N23
\LED0~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \FSMDisplay|AlarmEnabled~q\,
	devoe => ww_devoe,
	o => \LED0~output_o\);

-- Location: IOOBUF_X10_Y15_N16
\LED1~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \FSMDisplay|WideOr6~0_combout\,
	devoe => ww_devoe,
	o => \LED1~output_o\);

-- Location: IOOBUF_X10_Y11_N16
\Buzzer~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \SecondMuxand7Seg|ALT_INV_OutputBuzzer~combout\,
	devoe => ww_devoe,
	o => \Buzzer~output_o\);

-- Location: IOOBUF_X0_Y5_N9
\display[0]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \SecondMuxand7Seg|ALT_INV_OutputDisplay[0]~0_combout\,
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
	i => \SecondMuxand7Seg|present_state.S1~q\,
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
	i => \SecondMuxand7Seg|present_state.S2~q\,
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
	i => \SecondMuxand7Seg|present_state.S3~q\,
	devoe => ww_devoe,
	o => \display[3]~output_o\);

-- Location: IOOBUF_X16_Y0_N30
\SevenSeg[0]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \SecondMuxand7Seg|Selector6~3_combout\,
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
	i => \SecondMuxand7Seg|Selector5~3_combout\,
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
	i => \SecondMuxand7Seg|Selector4~2_combout\,
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
	i => \SecondMuxand7Seg|Selector3~3_combout\,
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
	i => \SecondMuxand7Seg|Selector2~3_combout\,
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
	i => \SecondMuxand7Seg|Selector1~2_combout\,
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
	i => \SecondMuxand7Seg|Selector0~3_combout\,
	devoe => ww_devoe,
	o => \SevenSeg[6]~output_o\);

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

-- Location: LCCOMB_X16_Y4_N4
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

-- Location: IOIBUF_X11_Y0_N22
\resetin~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_resetin,
	o => \resetin~input_o\);

-- Location: FF_X16_Y4_N5
\count[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \Add0~0_combout\,
	clrn => \ALT_INV_resetin~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count(0));

-- Location: LCCOMB_X16_Y4_N6
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

-- Location: FF_X16_Y4_N7
\count[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \Add0~2_combout\,
	clrn => \ALT_INV_resetin~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count(1));

-- Location: LCCOMB_X16_Y4_N8
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

-- Location: FF_X16_Y4_N9
\count[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \Add0~4_combout\,
	clrn => \ALT_INV_resetin~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count(2));

-- Location: LCCOMB_X16_Y4_N10
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

-- Location: FF_X16_Y4_N11
\count[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \Add0~6_combout\,
	clrn => \ALT_INV_resetin~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count(3));

-- Location: LCCOMB_X16_Y4_N12
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

-- Location: FF_X16_Y4_N13
\count[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \Add0~8_combout\,
	clrn => \ALT_INV_resetin~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count(4));

-- Location: LCCOMB_X16_Y4_N14
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

-- Location: FF_X16_Y4_N15
\count[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \Add0~10_combout\,
	clrn => \ALT_INV_resetin~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count(5));

-- Location: LCCOMB_X16_Y4_N16
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

-- Location: FF_X16_Y4_N17
\count[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \Add0~12_combout\,
	clrn => \ALT_INV_resetin~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count(6));

-- Location: LCCOMB_X16_Y4_N18
\Add0~14\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~14_combout\ = (count(7) & (!\Add0~13\)) # (!count(7) & ((\Add0~13\) # (GND)))
-- \Add0~15\ = CARRY((!\Add0~13\) # (!count(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => count(7),
	datad => VCC,
	cin => \Add0~13\,
	combout => \Add0~14_combout\,
	cout => \Add0~15\);

-- Location: LCCOMB_X17_Y3_N0
\count~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \count~6_combout\ = (!\Equal6~8_combout\ & \Add0~14_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal6~8_combout\,
	datad => \Add0~14_combout\,
	combout => \count~6_combout\);

-- Location: FF_X17_Y3_N1
\count[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \count~6_combout\,
	clrn => \ALT_INV_resetin~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count(7));

-- Location: LCCOMB_X17_Y3_N26
\Equal6~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Equal6~6_combout\ = (count(4) & (!count(7) & (count(5) & count(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => count(4),
	datab => count(7),
	datac => count(5),
	datad => count(6),
	combout => \Equal6~6_combout\);

-- Location: LCCOMB_X16_Y4_N20
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

-- Location: FF_X16_Y4_N21
\count[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \Add0~16_combout\,
	clrn => \ALT_INV_resetin~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count(8));

-- Location: LCCOMB_X16_Y4_N22
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

-- Location: FF_X16_Y4_N23
\count[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \Add0~18_combout\,
	clrn => \ALT_INV_resetin~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count(9));

-- Location: LCCOMB_X16_Y4_N24
\Add0~20\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~20_combout\ = (count(10) & (\Add0~19\ $ (GND))) # (!count(10) & (!\Add0~19\ & VCC))
-- \Add0~21\ = CARRY((count(10) & !\Add0~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => count(10),
	datad => VCC,
	cin => \Add0~19\,
	combout => \Add0~20_combout\,
	cout => \Add0~21\);

-- Location: LCCOMB_X17_Y3_N28
\count~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \count~5_combout\ = (!\Equal6~8_combout\ & \Add0~20_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal6~8_combout\,
	datad => \Add0~20_combout\,
	combout => \count~5_combout\);

-- Location: FF_X17_Y3_N29
\count[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \count~5_combout\,
	clrn => \ALT_INV_resetin~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count(10));

-- Location: LCCOMB_X16_Y4_N26
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

-- Location: FF_X16_Y4_N27
\count[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \Add0~22_combout\,
	clrn => \ALT_INV_resetin~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count(11));

-- Location: LCCOMB_X17_Y3_N24
\Equal6~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Equal6~5_combout\ = (!count(8) & (count(10) & (!count(9) & !count(11))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => count(8),
	datab => count(10),
	datac => count(9),
	datad => count(11),
	combout => \Equal6~5_combout\);

-- Location: LCCOMB_X16_Y4_N0
\Equal6~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Equal6~7_combout\ = (count(1) & (count(0) & (count(2) & count(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => count(1),
	datab => count(0),
	datac => count(2),
	datad => count(3),
	combout => \Equal6~7_combout\);

-- Location: LCCOMB_X16_Y4_N28
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

-- Location: FF_X16_Y4_N29
\count[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \Add0~24_combout\,
	clrn => \ALT_INV_resetin~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count(12));

-- Location: LCCOMB_X16_Y4_N30
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

-- Location: FF_X16_Y4_N31
\count[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \Add0~26_combout\,
	clrn => \ALT_INV_resetin~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count(13));

-- Location: LCCOMB_X16_Y3_N0
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

-- Location: FF_X16_Y3_N1
\count[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \Add0~28_combout\,
	clrn => \ALT_INV_resetin~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count(14));

-- Location: LCCOMB_X16_Y3_N2
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

-- Location: LCCOMB_X17_Y3_N18
\count~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \count~4_combout\ = (!\Equal6~8_combout\ & \Add0~30_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal6~8_combout\,
	datad => \Add0~30_combout\,
	combout => \count~4_combout\);

-- Location: FF_X17_Y3_N19
\count[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \count~4_combout\,
	clrn => \ALT_INV_resetin~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count(15));

-- Location: LCCOMB_X16_Y3_N4
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

-- Location: FF_X16_Y3_N5
\count[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \Add0~32_combout\,
	clrn => \ALT_INV_resetin~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count(16));

-- Location: LCCOMB_X16_Y3_N6
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

-- Location: LCCOMB_X16_Y3_N30
\count~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \count~3_combout\ = (!\Equal6~8_combout\ & \Add0~34_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal6~8_combout\,
	datad => \Add0~34_combout\,
	combout => \count~3_combout\);

-- Location: FF_X16_Y3_N31
\count[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \count~3_combout\,
	clrn => \ALT_INV_resetin~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count(17));

-- Location: LCCOMB_X16_Y3_N8
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

-- Location: LCCOMB_X16_Y3_N28
\count~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \count~2_combout\ = (\Add0~36_combout\ & !\Equal6~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Add0~36_combout\,
	datad => \Equal6~8_combout\,
	combout => \count~2_combout\);

-- Location: FF_X16_Y3_N29
\count[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \count~2_combout\,
	clrn => \ALT_INV_resetin~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count(18));

-- Location: LCCOMB_X16_Y3_N10
\Add0~38\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~38_combout\ = (count(19) & (!\Add0~37\)) # (!count(19) & ((\Add0~37\) # (GND)))
-- \Add0~39\ = CARRY((!\Add0~37\) # (!count(19)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => count(19),
	datad => VCC,
	cin => \Add0~37\,
	combout => \Add0~38_combout\,
	cout => \Add0~39\);

-- Location: LCCOMB_X17_Y3_N8
\count~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \count~1_combout\ = (!\Equal6~8_combout\ & \Add0~38_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal6~8_combout\,
	datad => \Add0~38_combout\,
	combout => \count~1_combout\);

-- Location: FF_X17_Y3_N9
\count[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \count~1_combout\,
	clrn => \ALT_INV_resetin~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count(19));

-- Location: LCCOMB_X16_Y3_N12
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

-- Location: LCCOMB_X17_Y3_N30
\count~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \count~0_combout\ = (!\Equal6~8_combout\ & \Add0~40_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal6~8_combout\,
	datad => \Add0~40_combout\,
	combout => \count~0_combout\);

-- Location: FF_X17_Y3_N31
\count[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \count~0_combout\,
	clrn => \ALT_INV_resetin~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count(20));

-- Location: LCCOMB_X16_Y3_N14
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

-- Location: FF_X16_Y3_N15
\count[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \Add0~42_combout\,
	clrn => \ALT_INV_resetin~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count(21));

-- Location: LCCOMB_X16_Y3_N16
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

-- Location: FF_X16_Y3_N17
\count[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \Add0~44_combout\,
	clrn => \ALT_INV_resetin~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count(22));

-- Location: LCCOMB_X16_Y3_N18
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

-- Location: FF_X16_Y3_N19
\count[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \Add0~46_combout\,
	clrn => \ALT_INV_resetin~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count(23));

-- Location: LCCOMB_X16_Y3_N20
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

-- Location: FF_X16_Y3_N21
\count[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \Add0~48_combout\,
	clrn => \ALT_INV_resetin~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count(24));

-- Location: LCCOMB_X16_Y3_N22
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

-- Location: FF_X16_Y3_N23
\count[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \Add0~50_combout\,
	clrn => \ALT_INV_resetin~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count(25));

-- Location: LCCOMB_X16_Y3_N24
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

-- Location: FF_X16_Y3_N25
\count[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \Add0~52_combout\,
	clrn => \ALT_INV_resetin~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count(26));

-- Location: LCCOMB_X16_Y3_N26
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

-- Location: FF_X16_Y3_N27
\count[27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \Add0~54_combout\,
	clrn => \ALT_INV_resetin~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count(27));

-- Location: LCCOMB_X17_Y3_N12
\Equal6~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Equal6~0_combout\ = (!count(24) & (!count(26) & (!count(27) & !count(25))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => count(24),
	datab => count(26),
	datac => count(27),
	datad => count(25),
	combout => \Equal6~0_combout\);

-- Location: LCCOMB_X17_Y3_N14
\Equal6~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Equal6~1_combout\ = (!count(22) & (!count(23) & (count(20) & !count(21))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => count(22),
	datab => count(23),
	datac => count(20),
	datad => count(21),
	combout => \Equal6~1_combout\);

-- Location: LCCOMB_X17_Y3_N4
\Equal6~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Equal6~2_combout\ = (count(18) & (!count(16) & (count(19) & count(17))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => count(18),
	datab => count(16),
	datac => count(19),
	datad => count(17),
	combout => \Equal6~2_combout\);

-- Location: LCCOMB_X17_Y3_N20
\Equal6~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Equal6~3_combout\ = (!count(14) & (count(15) & (!count(13) & !count(12))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => count(14),
	datab => count(15),
	datac => count(13),
	datad => count(12),
	combout => \Equal6~3_combout\);

-- Location: LCCOMB_X17_Y3_N10
\Equal6~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Equal6~4_combout\ = (\Equal6~0_combout\ & (\Equal6~1_combout\ & (\Equal6~2_combout\ & \Equal6~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal6~0_combout\,
	datab => \Equal6~1_combout\,
	datac => \Equal6~2_combout\,
	datad => \Equal6~3_combout\,
	combout => \Equal6~4_combout\);

-- Location: LCCOMB_X17_Y3_N6
\Equal6~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Equal6~8_combout\ = (\Equal6~6_combout\ & (\Equal6~5_combout\ & (\Equal6~7_combout\ & \Equal6~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal6~6_combout\,
	datab => \Equal6~5_combout\,
	datac => \Equal6~7_combout\,
	datad => \Equal6~4_combout\,
	combout => \Equal6~8_combout\);

-- Location: LCCOMB_X17_Y3_N22
\Clk1Hz~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Clk1Hz~0_combout\ = \Clk1Hz~q\ $ (\Equal6~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Clk1Hz~q\,
	datad => \Equal6~8_combout\,
	combout => \Clk1Hz~0_combout\);

-- Location: LCCOMB_X17_Y3_N16
\Clk1Hz~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Clk1Hz~feeder_combout\ = \Clk1Hz~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Clk1Hz~0_combout\,
	combout => \Clk1Hz~feeder_combout\);

-- Location: FF_X17_Y3_N17
Clk1Hz : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \Clk1Hz~feeder_combout\,
	clrn => \ALT_INV_resetin~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Clk1Hz~q\);

-- Location: CLKCTRL_G9
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

-- Location: IOIBUF_X10_Y11_N22
\PushButton1~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_PushButton1,
	o => \PushButton1~input_o\);

-- Location: IOIBUF_X18_Y4_N15
\PushButton2~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_PushButton2,
	o => \PushButton2~input_o\);

-- Location: LCCOMB_X11_Y3_N8
\FSMDisplay|Selector1~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \FSMDisplay|Selector1~0_combout\ = (\PushButton2~input_o\ & ((\FSMDisplay|present_state.Set_Minute~q\) # ((!\PushButton1~input_o\ & !\FSMDisplay|present_state.Time_Now~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PushButton1~input_o\,
	datab => \PushButton2~input_o\,
	datac => \FSMDisplay|present_state.Set_Minute~q\,
	datad => \FSMDisplay|present_state.Time_Now~q\,
	combout => \FSMDisplay|Selector1~0_combout\);

-- Location: FF_X11_Y3_N9
\FSMDisplay|present_state.Set_Minute\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk1Hz~clkctrl_outclk\,
	d => \FSMDisplay|Selector1~0_combout\,
	clrn => \ALT_INV_resetin~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FSMDisplay|present_state.Set_Minute~q\);

-- Location: LCCOMB_X12_Y2_N0
\FSMDisplay|next_state.Set_Hour~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \FSMDisplay|next_state.Set_Hour~0_combout\ = (\PushButton1~input_o\ & ((\FSMDisplay|present_state.Set_Hour~q\) # (!\FSMDisplay|present_state.Time_Now~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \PushButton1~input_o\,
	datac => \FSMDisplay|present_state.Set_Hour~q\,
	datad => \FSMDisplay|present_state.Time_Now~q\,
	combout => \FSMDisplay|next_state.Set_Hour~0_combout\);

-- Location: FF_X12_Y2_N1
\FSMDisplay|present_state.Set_Hour\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk1Hz~clkctrl_outclk\,
	d => \FSMDisplay|next_state.Set_Hour~0_combout\,
	clrn => \ALT_INV_resetin~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FSMDisplay|present_state.Set_Hour~q\);

-- Location: LCCOMB_X11_Y3_N16
\FSMDisplay|Selector0~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \FSMDisplay|Selector0~1_combout\ = (\PushButton1~input_o\ & (!\PushButton2~input_o\ & (\FSMDisplay|present_state.Set_Minute~q\))) # (!\PushButton1~input_o\ & ((\FSMDisplay|present_state.Set_Hour~q\) # ((!\PushButton2~input_o\ & 
-- \FSMDisplay|present_state.Set_Minute~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111010100110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PushButton1~input_o\,
	datab => \PushButton2~input_o\,
	datac => \FSMDisplay|present_state.Set_Minute~q\,
	datad => \FSMDisplay|present_state.Set_Hour~q\,
	combout => \FSMDisplay|Selector0~1_combout\);

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

-- Location: LCCOMB_X12_Y2_N22
\FSMDisplay|next_state.Alarm1~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \FSMDisplay|next_state.Alarm1~0_combout\ = (!\PushButton2~input_o\ & (!\PushButton1~input_o\ & !\FSMDisplay|present_state.Time_Now~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PushButton2~input_o\,
	datab => \PushButton1~input_o\,
	datad => \FSMDisplay|present_state.Time_Now~q\,
	combout => \FSMDisplay|next_state.Alarm1~0_combout\);

-- Location: LCCOMB_X9_Y2_N22
\TimeOfDay|MinsDigitBCD[0]~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \TimeOfDay|MinsDigitBCD[0]~4_combout\ = !\TimeOfDay|MinsDigitBCD\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \TimeOfDay|MinsDigitBCD\(0),
	combout => \TimeOfDay|MinsDigitBCD[0]~4_combout\);

-- Location: LCCOMB_X10_Y2_N10
\TimeOfDay|MinsDigitBCD~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \TimeOfDay|MinsDigitBCD~0_combout\ = (\FSMDisplay|present_state.Set_Minute~q\ & (\PushButton1~input_o\)) # (!\FSMDisplay|present_state.Set_Minute~q\ & ((!\FSMDisplay|present_state.Set_Hour~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PushButton1~input_o\,
	datab => \FSMDisplay|present_state.Set_Hour~q\,
	datad => \FSMDisplay|present_state.Set_Minute~q\,
	combout => \TimeOfDay|MinsDigitBCD~0_combout\);

-- Location: FF_X9_Y2_N23
\TimeOfDay|MinsDigitBCD[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk1Hz~clkctrl_outclk\,
	d => \TimeOfDay|MinsDigitBCD[0]~4_combout\,
	clrn => \ALT_INV_resetin~input_o\,
	ena => \TimeOfDay|MinsDigitBCD~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \TimeOfDay|MinsDigitBCD\(0));

-- Location: LCCOMB_X10_Y2_N8
\TimeOfDay|MinsDigitBCD[2]~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \TimeOfDay|MinsDigitBCD[2]~2_combout\ = \TimeOfDay|MinsDigitBCD\(2) $ (((\TimeOfDay|MinsDigitBCD\(1) & (\TimeOfDay|MinsDigitBCD\(0) & \TimeOfDay|MinsDigitBCD~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \TimeOfDay|MinsDigitBCD\(1),
	datab => \TimeOfDay|MinsDigitBCD\(0),
	datac => \TimeOfDay|MinsDigitBCD\(2),
	datad => \TimeOfDay|MinsDigitBCD~0_combout\,
	combout => \TimeOfDay|MinsDigitBCD[2]~2_combout\);

-- Location: FF_X10_Y2_N9
\TimeOfDay|MinsDigitBCD[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk1Hz~clkctrl_outclk\,
	d => \TimeOfDay|MinsDigitBCD[2]~2_combout\,
	clrn => \ALT_INV_resetin~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \TimeOfDay|MinsDigitBCD\(2));

-- Location: LCCOMB_X9_Y2_N14
\TimeOfDay|MinsDigitBCD~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \TimeOfDay|MinsDigitBCD~3_combout\ = (\TimeOfDay|MinsDigitBCD\(0) & ((\TimeOfDay|MinsDigitBCD\(2) & (\TimeOfDay|MinsDigitBCD\(3) $ (\TimeOfDay|MinsDigitBCD\(1)))) # (!\TimeOfDay|MinsDigitBCD\(2) & (\TimeOfDay|MinsDigitBCD\(3) & 
-- \TimeOfDay|MinsDigitBCD\(1))))) # (!\TimeOfDay|MinsDigitBCD\(0) & (((\TimeOfDay|MinsDigitBCD\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100011010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \TimeOfDay|MinsDigitBCD\(0),
	datab => \TimeOfDay|MinsDigitBCD\(2),
	datac => \TimeOfDay|MinsDigitBCD\(3),
	datad => \TimeOfDay|MinsDigitBCD\(1),
	combout => \TimeOfDay|MinsDigitBCD~3_combout\);

-- Location: FF_X9_Y2_N15
\TimeOfDay|MinsDigitBCD[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk1Hz~clkctrl_outclk\,
	d => \TimeOfDay|MinsDigitBCD~3_combout\,
	clrn => \ALT_INV_resetin~input_o\,
	ena => \TimeOfDay|MinsDigitBCD~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \TimeOfDay|MinsDigitBCD\(3));

-- Location: LCCOMB_X9_Y2_N10
\TimeOfDay|MinsDigitBCD~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \TimeOfDay|MinsDigitBCD~1_combout\ = (\TimeOfDay|MinsDigitBCD\(1) & (((!\TimeOfDay|MinsDigitBCD\(0))))) # (!\TimeOfDay|MinsDigitBCD\(1) & (\TimeOfDay|MinsDigitBCD\(0) & ((\TimeOfDay|MinsDigitBCD\(2)) # (!\TimeOfDay|MinsDigitBCD\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \TimeOfDay|MinsDigitBCD\(3),
	datab => \TimeOfDay|MinsDigitBCD\(2),
	datac => \TimeOfDay|MinsDigitBCD\(1),
	datad => \TimeOfDay|MinsDigitBCD\(0),
	combout => \TimeOfDay|MinsDigitBCD~1_combout\);

-- Location: FF_X9_Y2_N11
\TimeOfDay|MinsDigitBCD[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk1Hz~clkctrl_outclk\,
	d => \TimeOfDay|MinsDigitBCD~1_combout\,
	clrn => \ALT_INV_resetin~input_o\,
	ena => \TimeOfDay|MinsDigitBCD~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \TimeOfDay|MinsDigitBCD\(1));

-- Location: LCCOMB_X9_Y2_N24
\BCD_Alarm[1]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \BCD_Alarm[1]~feeder_combout\ = \TimeOfDay|MinsDigitBCD\(1)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \TimeOfDay|MinsDigitBCD\(1),
	combout => \BCD_Alarm[1]~feeder_combout\);

-- Location: LCCOMB_X11_Y2_N22
\FSMDisplay|AlarmEnabledSet~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \FSMDisplay|AlarmEnabledSet~0_combout\ = (!\FSMDisplay|AlarmEnabled~q\ & (\Switch5~input_o\ & !\FSMDisplay|present_state.Time_Now~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FSMDisplay|AlarmEnabled~q\,
	datab => \Switch5~input_o\,
	datad => \FSMDisplay|present_state.Time_Now~q\,
	combout => \FSMDisplay|AlarmEnabledSet~0_combout\);

-- Location: FF_X9_Y2_N25
\BCD_Alarm[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk1Hz~clkctrl_outclk\,
	d => \BCD_Alarm[1]~feeder_combout\,
	clrn => \ALT_INV_resetin~input_o\,
	ena => \FSMDisplay|AlarmEnabledSet~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => BCD_Alarm(1));

-- Location: FF_X9_Y2_N1
\BCD_Alarm[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk1Hz~clkctrl_outclk\,
	asdata => \TimeOfDay|MinsDigitBCD\(0),
	clrn => \ALT_INV_resetin~input_o\,
	sload => VCC,
	ena => \FSMDisplay|AlarmEnabledSet~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => BCD_Alarm(0));

-- Location: LCCOMB_X9_Y2_N0
\FSMDisplay|NextStatesProc~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \FSMDisplay|NextStatesProc~0_combout\ = (\TimeOfDay|MinsDigitBCD\(0) & (BCD_Alarm(0) & (BCD_Alarm(1) $ (!\TimeOfDay|MinsDigitBCD\(1))))) # (!\TimeOfDay|MinsDigitBCD\(0) & (!BCD_Alarm(0) & (BCD_Alarm(1) $ (!\TimeOfDay|MinsDigitBCD\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000010000100001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \TimeOfDay|MinsDigitBCD\(0),
	datab => BCD_Alarm(1),
	datac => BCD_Alarm(0),
	datad => \TimeOfDay|MinsDigitBCD\(1),
	combout => \FSMDisplay|NextStatesProc~0_combout\);

-- Location: FF_X10_Y2_N11
\BCD_Alarm[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk1Hz~clkctrl_outclk\,
	asdata => \TimeOfDay|MinsDigitBCD\(2),
	clrn => \ALT_INV_resetin~input_o\,
	sload => VCC,
	ena => \FSMDisplay|AlarmEnabledSet~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => BCD_Alarm(2));

-- Location: FF_X10_Y2_N23
\BCD_Alarm[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk1Hz~clkctrl_outclk\,
	asdata => \TimeOfDay|MinsDigitBCD\(3),
	clrn => \ALT_INV_resetin~input_o\,
	sload => VCC,
	ena => \FSMDisplay|AlarmEnabledSet~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => BCD_Alarm(3));

-- Location: LCCOMB_X10_Y2_N12
\FSMDisplay|NextStatesProc~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \FSMDisplay|NextStatesProc~1_combout\ = (BCD_Alarm(2) & (\TimeOfDay|MinsDigitBCD\(2) & (BCD_Alarm(3) $ (!\TimeOfDay|MinsDigitBCD\(3))))) # (!BCD_Alarm(2) & (!\TimeOfDay|MinsDigitBCD\(2) & (BCD_Alarm(3) $ (!\TimeOfDay|MinsDigitBCD\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001000000001001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => BCD_Alarm(2),
	datab => \TimeOfDay|MinsDigitBCD\(2),
	datac => BCD_Alarm(3),
	datad => \TimeOfDay|MinsDigitBCD\(3),
	combout => \FSMDisplay|NextStatesProc~1_combout\);

-- Location: LCCOMB_X9_Y2_N26
\TimeOfDay|Equal0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \TimeOfDay|Equal0~0_combout\ = (\TimeOfDay|MinsDigitBCD\(0) & (\TimeOfDay|MinsDigitBCD\(3) & (!\TimeOfDay|MinsDigitBCD\(2) & !\TimeOfDay|MinsDigitBCD\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \TimeOfDay|MinsDigitBCD\(0),
	datab => \TimeOfDay|MinsDigitBCD\(3),
	datac => \TimeOfDay|MinsDigitBCD\(2),
	datad => \TimeOfDay|MinsDigitBCD\(1),
	combout => \TimeOfDay|Equal0~0_combout\);

-- Location: LCCOMB_X12_Y3_N28
\TimeOfDay|MinsTensBCD~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \TimeOfDay|MinsTensBCD~2_combout\ = (\PushButton2~input_o\ & \FSMDisplay|present_state.Set_Hour~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PushButton2~input_o\,
	datad => \FSMDisplay|present_state.Set_Hour~q\,
	combout => \TimeOfDay|MinsTensBCD~2_combout\);

-- Location: LCCOMB_X11_Y3_N22
\FSMDisplay|CntEn~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \FSMDisplay|CntEn~0_combout\ = (!\FSMDisplay|present_state.Set_Minute~q\ & !\FSMDisplay|present_state.Set_Hour~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \FSMDisplay|present_state.Set_Minute~q\,
	datad => \FSMDisplay|present_state.Set_Hour~q\,
	combout => \FSMDisplay|CntEn~0_combout\);

-- Location: LCCOMB_X12_Y2_N28
\TimeOfDay|MinsTensBCD[0]~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \TimeOfDay|MinsTensBCD[0]~3_combout\ = \TimeOfDay|MinsTensBCD\(0) $ (((\TimeOfDay|MinsTensBCD~2_combout\) # ((\TimeOfDay|Equal0~0_combout\ & \FSMDisplay|CntEn~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111000111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \TimeOfDay|Equal0~0_combout\,
	datab => \TimeOfDay|MinsTensBCD~2_combout\,
	datac => \TimeOfDay|MinsTensBCD\(0),
	datad => \FSMDisplay|CntEn~0_combout\,
	combout => \TimeOfDay|MinsTensBCD[0]~3_combout\);

-- Location: FF_X12_Y2_N29
\TimeOfDay|MinsTensBCD[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk1Hz~clkctrl_outclk\,
	d => \TimeOfDay|MinsTensBCD[0]~3_combout\,
	clrn => \ALT_INV_resetin~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \TimeOfDay|MinsTensBCD\(0));

-- Location: LCCOMB_X14_Y2_N30
\TimeOfDay|MinsTensBCD~9\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \TimeOfDay|MinsTensBCD~9_combout\ = (\TimeOfDay|MinsTensBCD[1]~5_combout\ & (\TimeOfDay|MinsTensBCD\(2) $ (((!\TimeOfDay|MinsTensBCD\(0) & \TimeOfDay|MinsTensBCD\(1))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \TimeOfDay|MinsTensBCD\(0),
	datab => \TimeOfDay|MinsTensBCD\(1),
	datac => \TimeOfDay|MinsTensBCD\(2),
	datad => \TimeOfDay|MinsTensBCD[1]~5_combout\,
	combout => \TimeOfDay|MinsTensBCD~9_combout\);

-- Location: LCCOMB_X14_Y2_N6
\TimeOfDay|MinsTensBCD[1]~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \TimeOfDay|MinsTensBCD[1]~7_combout\ = (\FSMDisplay|present_state.Set_Hour~q\ & (\PushButton2~input_o\)) # (!\FSMDisplay|present_state.Set_Hour~q\ & (((!\FSMDisplay|present_state.Set_Minute~q\ & \TimeOfDay|Equal0~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000110110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FSMDisplay|present_state.Set_Hour~q\,
	datab => \PushButton2~input_o\,
	datac => \FSMDisplay|present_state.Set_Minute~q\,
	datad => \TimeOfDay|Equal0~0_combout\,
	combout => \TimeOfDay|MinsTensBCD[1]~7_combout\);

-- Location: FF_X14_Y2_N31
\TimeOfDay|MinsTensBCD[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk1Hz~clkctrl_outclk\,
	d => \TimeOfDay|MinsTensBCD~9_combout\,
	clrn => \ALT_INV_resetin~input_o\,
	ena => \TimeOfDay|MinsTensBCD[1]~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \TimeOfDay|MinsTensBCD\(2));

-- Location: LCCOMB_X14_Y2_N28
\Equal2~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Equal2~0_combout\ = (\TimeOfDay|MinsTensBCD\(1) & !\TimeOfDay|MinsTensBCD\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \TimeOfDay|MinsTensBCD\(1),
	datac => \TimeOfDay|MinsTensBCD\(0),
	combout => \Equal2~0_combout\);

-- Location: LCCOMB_X14_Y2_N4
\TimeOfDay|MinsTensBCD~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \TimeOfDay|MinsTensBCD~8_combout\ = (\TimeOfDay|MinsTensBCD[1]~5_combout\ & (\TimeOfDay|MinsTensBCD\(3) $ (((\TimeOfDay|MinsTensBCD\(2) & \Equal2~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \TimeOfDay|MinsTensBCD\(2),
	datab => \Equal2~0_combout\,
	datac => \TimeOfDay|MinsTensBCD\(3),
	datad => \TimeOfDay|MinsTensBCD[1]~5_combout\,
	combout => \TimeOfDay|MinsTensBCD~8_combout\);

-- Location: FF_X14_Y2_N5
\TimeOfDay|MinsTensBCD[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk1Hz~clkctrl_outclk\,
	d => \TimeOfDay|MinsTensBCD~8_combout\,
	clrn => \ALT_INV_resetin~input_o\,
	ena => \TimeOfDay|MinsTensBCD[1]~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \TimeOfDay|MinsTensBCD\(3));

-- Location: LCCOMB_X14_Y2_N22
\TimeOfDay|MinsTensBCD[1]~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \TimeOfDay|MinsTensBCD[1]~4_combout\ = ((\TimeOfDay|MinsTensBCD\(3)) # ((!\TimeOfDay|MinsTensBCD\(1)) # (!\TimeOfDay|MinsTensBCD\(0)))) # (!\TimeOfDay|MinsTensBCD\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \TimeOfDay|MinsTensBCD\(2),
	datab => \TimeOfDay|MinsTensBCD\(3),
	datac => \TimeOfDay|MinsTensBCD\(0),
	datad => \TimeOfDay|MinsTensBCD\(1),
	combout => \TimeOfDay|MinsTensBCD[1]~4_combout\);

-- Location: LCCOMB_X14_Y2_N20
\TimeOfDay|MinsTensBCD[1]~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \TimeOfDay|MinsTensBCD[1]~5_combout\ = (\TimeOfDay|MinsTensBCD[1]~4_combout\) # ((!\FSMDisplay|present_state.Set_Hour~q\ & (!\FSMDisplay|present_state.Set_Minute~q\ & !\TimeOfDay|Equal0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FSMDisplay|present_state.Set_Hour~q\,
	datab => \FSMDisplay|present_state.Set_Minute~q\,
	datac => \TimeOfDay|MinsTensBCD[1]~4_combout\,
	datad => \TimeOfDay|Equal0~0_combout\,
	combout => \TimeOfDay|MinsTensBCD[1]~5_combout\);

-- Location: LCCOMB_X14_Y2_N12
\TimeOfDay|MinsTensBCD~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \TimeOfDay|MinsTensBCD~6_combout\ = (\TimeOfDay|MinsTensBCD[1]~5_combout\ & (\TimeOfDay|MinsTensBCD\(0) $ (!\TimeOfDay|MinsTensBCD\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \TimeOfDay|MinsTensBCD\(0),
	datac => \TimeOfDay|MinsTensBCD\(1),
	datad => \TimeOfDay|MinsTensBCD[1]~5_combout\,
	combout => \TimeOfDay|MinsTensBCD~6_combout\);

-- Location: FF_X14_Y2_N13
\TimeOfDay|MinsTensBCD[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk1Hz~clkctrl_outclk\,
	d => \TimeOfDay|MinsTensBCD~6_combout\,
	clrn => \ALT_INV_resetin~input_o\,
	ena => \TimeOfDay|MinsTensBCD[1]~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \TimeOfDay|MinsTensBCD\(1));

-- Location: FF_X10_Y2_N21
\BCD_Alarm[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk1Hz~clkctrl_outclk\,
	asdata => \TimeOfDay|MinsTensBCD\(1),
	clrn => \ALT_INV_resetin~input_o\,
	sload => VCC,
	ena => \FSMDisplay|AlarmEnabledSet~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => BCD_Alarm(5));

-- Location: LCCOMB_X10_Y2_N14
\BCD_Alarm[4]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \BCD_Alarm[4]~0_combout\ = !\TimeOfDay|MinsTensBCD\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \TimeOfDay|MinsTensBCD\(0),
	combout => \BCD_Alarm[4]~0_combout\);

-- Location: FF_X10_Y2_N15
\BCD_Alarm[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk1Hz~clkctrl_outclk\,
	d => \BCD_Alarm[4]~0_combout\,
	clrn => \ALT_INV_resetin~input_o\,
	ena => \FSMDisplay|AlarmEnabledSet~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => BCD_Alarm(4));

-- Location: LCCOMB_X12_Y2_N26
\FSMDisplay|NextStatesProc~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \FSMDisplay|NextStatesProc~2_combout\ = (BCD_Alarm(5) & (\TimeOfDay|MinsTensBCD\(1) & (\TimeOfDay|MinsTensBCD\(0) $ (BCD_Alarm(4))))) # (!BCD_Alarm(5) & (!\TimeOfDay|MinsTensBCD\(1) & (\TimeOfDay|MinsTensBCD\(0) $ (BCD_Alarm(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000110000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => BCD_Alarm(5),
	datab => \TimeOfDay|MinsTensBCD\(0),
	datac => \TimeOfDay|MinsTensBCD\(1),
	datad => BCD_Alarm(4),
	combout => \FSMDisplay|NextStatesProc~2_combout\);

-- Location: FF_X12_Y2_N23
\BCD_Alarm[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk1Hz~clkctrl_outclk\,
	asdata => \TimeOfDay|MinsTensBCD\(2),
	clrn => \ALT_INV_resetin~input_o\,
	sload => VCC,
	ena => \FSMDisplay|AlarmEnabledSet~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => BCD_Alarm(6));

-- Location: FF_X10_Y2_N29
\BCD_Alarm[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk1Hz~clkctrl_outclk\,
	asdata => \TimeOfDay|MinsTensBCD\(3),
	clrn => \ALT_INV_resetin~input_o\,
	sload => VCC,
	ena => \FSMDisplay|AlarmEnabledSet~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => BCD_Alarm(7));

-- Location: LCCOMB_X12_Y2_N12
\FSMDisplay|NextStatesProc~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \FSMDisplay|NextStatesProc~3_combout\ = (\TimeOfDay|MinsTensBCD\(2) & (BCD_Alarm(6) & (\TimeOfDay|MinsTensBCD\(3) $ (!BCD_Alarm(7))))) # (!\TimeOfDay|MinsTensBCD\(2) & (!BCD_Alarm(6) & (\TimeOfDay|MinsTensBCD\(3) $ (!BCD_Alarm(7)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001000000001001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \TimeOfDay|MinsTensBCD\(2),
	datab => BCD_Alarm(6),
	datac => \TimeOfDay|MinsTensBCD\(3),
	datad => BCD_Alarm(7),
	combout => \FSMDisplay|NextStatesProc~3_combout\);

-- Location: LCCOMB_X12_Y2_N18
\FSMDisplay|Selector2~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \FSMDisplay|Selector2~0_combout\ = ((!\FSMDisplay|NextStatesProc~3_combout\) # (!\FSMDisplay|NextStatesProc~2_combout\)) # (!\FSMDisplay|AlarmEnabled~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \FSMDisplay|AlarmEnabled~q\,
	datac => \FSMDisplay|NextStatesProc~2_combout\,
	datad => \FSMDisplay|NextStatesProc~3_combout\,
	combout => \FSMDisplay|Selector2~0_combout\);

-- Location: LCCOMB_X12_Y2_N4
\FSMDisplay|Selector2~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \FSMDisplay|Selector2~1_combout\ = (\FSMDisplay|next_state.Alarm1~0_combout\ & (((\FSMDisplay|Selector2~0_combout\) # (!\FSMDisplay|NextStatesProc~1_combout\)) # (!\FSMDisplay|NextStatesProc~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FSMDisplay|next_state.Alarm1~0_combout\,
	datab => \FSMDisplay|NextStatesProc~0_combout\,
	datac => \FSMDisplay|NextStatesProc~1_combout\,
	datad => \FSMDisplay|Selector2~0_combout\,
	combout => \FSMDisplay|Selector2~1_combout\);

-- Location: LCCOMB_X10_Y2_N2
\FSMDisplay|Selector2~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \FSMDisplay|Selector2~2_combout\ = (\Switch5~input_o\ & ((\FSMDisplay|present_state.Set_Alarm~q\) # (\FSMDisplay|Selector2~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Switch5~input_o\,
	datac => \FSMDisplay|present_state.Set_Alarm~q\,
	datad => \FSMDisplay|Selector2~1_combout\,
	combout => \FSMDisplay|Selector2~2_combout\);

-- Location: FF_X10_Y2_N3
\FSMDisplay|present_state.Set_Alarm\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk1Hz~clkctrl_outclk\,
	d => \FSMDisplay|Selector2~2_combout\,
	clrn => \ALT_INV_resetin~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FSMDisplay|present_state.Set_Alarm~q\);

-- Location: LCCOMB_X11_Y3_N24
\FSMDisplay|next_state.AlarmClearSwitch~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \FSMDisplay|next_state.AlarmClearSwitch~1_combout\ = (!\FSMDisplay|present_state.Set_Alarm~q\ & (\FSMDisplay|CntEn~0_combout\ & (\Switch5~input_o\ & \FSMDisplay|present_state.Time_Now~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FSMDisplay|present_state.Set_Alarm~q\,
	datab => \FSMDisplay|CntEn~0_combout\,
	datac => \Switch5~input_o\,
	datad => \FSMDisplay|present_state.Time_Now~q\,
	combout => \FSMDisplay|next_state.AlarmClearSwitch~1_combout\);

-- Location: FF_X11_Y3_N25
\FSMDisplay|present_state.AlarmClearSwitch\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk1Hz~clkctrl_outclk\,
	d => \FSMDisplay|next_state.AlarmClearSwitch~1_combout\,
	clrn => \ALT_INV_resetin~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FSMDisplay|present_state.AlarmClearSwitch~q\);

-- Location: LCCOMB_X10_Y2_N20
\FSMDisplay|Selector0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \FSMDisplay|Selector0~0_combout\ = (!\Switch5~input_o\ & ((\FSMDisplay|present_state.Set_Alarm~q\) # (\FSMDisplay|present_state.AlarmClearSwitch~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Switch5~input_o\,
	datab => \FSMDisplay|present_state.Set_Alarm~q\,
	datad => \FSMDisplay|present_state.AlarmClearSwitch~q\,
	combout => \FSMDisplay|Selector0~0_combout\);

-- Location: LCCOMB_X12_Y2_N2
\FSMDisplay|Selector0~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \FSMDisplay|Selector0~2_combout\ = (!\FSMDisplay|Selector0~1_combout\ & (!\FSMDisplay|Selector0~0_combout\ & ((\Switch5~input_o\) # (!\FSMDisplay|Selector2~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FSMDisplay|Selector0~1_combout\,
	datab => \Switch5~input_o\,
	datac => \FSMDisplay|Selector2~1_combout\,
	datad => \FSMDisplay|Selector0~0_combout\,
	combout => \FSMDisplay|Selector0~2_combout\);

-- Location: FF_X12_Y2_N3
\FSMDisplay|present_state.Time_Now\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk1Hz~clkctrl_outclk\,
	d => \FSMDisplay|Selector0~2_combout\,
	clrn => \ALT_INV_resetin~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FSMDisplay|present_state.Time_Now~q\);

-- Location: LCCOMB_X11_Y3_N20
\FSMDisplay|next_state.AlarmClearSwitch~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \FSMDisplay|next_state.AlarmClearSwitch~0_combout\ = (!\FSMDisplay|present_state.Set_Alarm~q\ & (!\FSMDisplay|present_state.Set_Minute~q\ & (\FSMDisplay|present_state.Time_Now~q\ & !\FSMDisplay|present_state.Set_Hour~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FSMDisplay|present_state.Set_Alarm~q\,
	datab => \FSMDisplay|present_state.Set_Minute~q\,
	datac => \FSMDisplay|present_state.Time_Now~q\,
	datad => \FSMDisplay|present_state.Set_Hour~q\,
	combout => \FSMDisplay|next_state.AlarmClearSwitch~0_combout\);

-- Location: LCCOMB_X11_Y3_N30
\FSMDisplay|AlarmEnabled~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \FSMDisplay|AlarmEnabled~0_combout\ = (\FSMDisplay|present_state.Time_Now~q\ & (\FSMDisplay|AlarmEnabled~q\ & ((\FSMDisplay|present_state.AlarmClearSwitch~q\) # (!\FSMDisplay|next_state.AlarmClearSwitch~0_combout\)))) # 
-- (!\FSMDisplay|present_state.Time_Now~q\ & (((!\FSMDisplay|AlarmEnabled~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000010110100101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FSMDisplay|present_state.Time_Now~q\,
	datab => \FSMDisplay|present_state.AlarmClearSwitch~q\,
	datac => \FSMDisplay|AlarmEnabled~q\,
	datad => \FSMDisplay|next_state.AlarmClearSwitch~0_combout\,
	combout => \FSMDisplay|AlarmEnabled~0_combout\);

-- Location: FF_X11_Y3_N31
\FSMDisplay|AlarmEnabled\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk1Hz~clkctrl_outclk\,
	d => \FSMDisplay|AlarmEnabled~0_combout\,
	clrn => \ALT_INV_resetin~input_o\,
	ena => \Switch5~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FSMDisplay|AlarmEnabled~q\);

-- Location: LCCOMB_X11_Y3_N18
\FSMDisplay|WideOr6~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \FSMDisplay|WideOr6~0_combout\ = (!\FSMDisplay|present_state.Set_Alarm~q\ & (\FSMDisplay|present_state.Time_Now~q\ & (\FSMDisplay|CntEn~0_combout\ & !\FSMDisplay|present_state.AlarmClearSwitch~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FSMDisplay|present_state.Set_Alarm~q\,
	datab => \FSMDisplay|present_state.Time_Now~q\,
	datac => \FSMDisplay|CntEn~0_combout\,
	datad => \FSMDisplay|present_state.AlarmClearSwitch~q\,
	combout => \FSMDisplay|WideOr6~0_combout\);

-- Location: LCCOMB_X11_Y3_N10
\SecondMuxand7Seg|OutputBuzzer\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \SecondMuxand7Seg|OutputBuzzer~combout\ = (\resetin~input_o\) # ((\FSMDisplay|present_state.AlarmClearSwitch~q\) # (!\FSMDisplay|next_state.AlarmClearSwitch~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \resetin~input_o\,
	datab => \FSMDisplay|present_state.AlarmClearSwitch~q\,
	datad => \FSMDisplay|next_state.AlarmClearSwitch~0_combout\,
	combout => \SecondMuxand7Seg|OutputBuzzer~combout\);

-- Location: LCCOMB_X11_Y2_N30
\SecondMuxand7Seg|present_state.S1~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \SecondMuxand7Seg|present_state.S1~0_combout\ = !\SecondMuxand7Seg|present_state.S0~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \SecondMuxand7Seg|present_state.S0~q\,
	combout => \SecondMuxand7Seg|present_state.S1~0_combout\);

-- Location: FF_X11_Y2_N31
\SecondMuxand7Seg|present_state.S1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \SecondMuxand7Seg|present_state.S1~0_combout\,
	clrn => \ALT_INV_resetin~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \SecondMuxand7Seg|present_state.S1~q\);

-- Location: FF_X11_Y2_N27
\SecondMuxand7Seg|present_state.S2\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \SecondMuxand7Seg|present_state.S1~q\,
	clrn => \ALT_INV_resetin~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \SecondMuxand7Seg|present_state.S2~q\);

-- Location: FF_X11_Y2_N17
\SecondMuxand7Seg|present_state.S3\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \SecondMuxand7Seg|present_state.S2~q\,
	clrn => \ALT_INV_resetin~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \SecondMuxand7Seg|present_state.S3~q\);

-- Location: LCCOMB_X11_Y2_N18
\SecondMuxand7Seg|present_state.S0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \SecondMuxand7Seg|present_state.S0~0_combout\ = !\SecondMuxand7Seg|present_state.S3~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \SecondMuxand7Seg|present_state.S3~q\,
	combout => \SecondMuxand7Seg|present_state.S0~0_combout\);

-- Location: FF_X11_Y2_N19
\SecondMuxand7Seg|present_state.S0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \SecondMuxand7Seg|present_state.S0~0_combout\,
	clrn => \ALT_INV_resetin~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \SecondMuxand7Seg|present_state.S0~q\);

-- Location: LCCOMB_X10_Y3_N8
\SecondMuxand7Seg|OutputDisplay[0]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \SecondMuxand7Seg|OutputDisplay[0]~0_combout\ = (\SecondMuxand7Seg|present_state.S0~q\) # (\resetin~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \SecondMuxand7Seg|present_state.S0~q\,
	datad => \resetin~input_o\,
	combout => \SecondMuxand7Seg|OutputDisplay[0]~0_combout\);

-- Location: LCCOMB_X14_Y2_N0
\comb~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \comb~1_combout\ = (\TimeOfDay|MinsTensBCD\(2) & (!\TimeOfDay|MinsTensBCD\(3) & (\TimeOfDay|MinsTensBCD\(1) $ (!\TimeOfDay|MinsTensBCD\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \TimeOfDay|MinsTensBCD\(1),
	datab => \TimeOfDay|MinsTensBCD\(0),
	datac => \TimeOfDay|MinsTensBCD\(2),
	datad => \TimeOfDay|MinsTensBCD\(3),
	combout => \comb~1_combout\);

-- Location: LCCOMB_X14_Y2_N26
\comb~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \comb~0_combout\ = (!\TimeOfDay|MinsTensBCD\(3) & (\TimeOfDay|MinsTensBCD\(2) $ (((\TimeOfDay|MinsTensBCD\(1)) # (!\TimeOfDay|MinsTensBCD\(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \TimeOfDay|MinsTensBCD\(1),
	datab => \TimeOfDay|MinsTensBCD\(0),
	datac => \TimeOfDay|MinsTensBCD\(2),
	datad => \TimeOfDay|MinsTensBCD\(3),
	combout => \comb~0_combout\);

-- Location: LCCOMB_X14_Y2_N16
\AMDMPM[1]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- AMDMPM(1) = (!\comb~1_combout\ & ((\comb~0_combout\) # (AMDMPM(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \comb~1_combout\,
	datac => \comb~0_combout\,
	datad => AMDMPM(1),
	combout => AMDMPM(1));

-- Location: LCCOMB_X14_Y2_N24
\AMDMPM[0]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \AMDMPM[0]~0_combout\ = (!\TimeOfDay|MinsTensBCD\(3) & ((\TimeOfDay|MinsTensBCD\(1) & (!\TimeOfDay|MinsTensBCD\(0) & !\TimeOfDay|MinsTensBCD\(2))) # (!\TimeOfDay|MinsTensBCD\(1) & (\TimeOfDay|MinsTensBCD\(0) & \TimeOfDay|MinsTensBCD\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \TimeOfDay|MinsTensBCD\(1),
	datab => \TimeOfDay|MinsTensBCD\(0),
	datac => \TimeOfDay|MinsTensBCD\(2),
	datad => \TimeOfDay|MinsTensBCD\(3),
	combout => \AMDMPM[0]~0_combout\);

-- Location: LCCOMB_X14_Y2_N18
\comb~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \comb~2_combout\ = (!\TimeOfDay|MinsTensBCD\(3) & (\TimeOfDay|MinsTensBCD\(1) $ (!\TimeOfDay|MinsTensBCD\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000100100001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \TimeOfDay|MinsTensBCD\(1),
	datab => \TimeOfDay|MinsTensBCD\(3),
	datac => \TimeOfDay|MinsTensBCD\(0),
	combout => \comb~2_combout\);

-- Location: LCCOMB_X14_Y2_N14
\AMDMPM[0]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- AMDMPM(0) = (!\comb~2_combout\ & ((\AMDMPM[0]~0_combout\) # (AMDMPM(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \AMDMPM[0]~0_combout\,
	datac => \comb~2_combout\,
	datad => AMDMPM(0),
	combout => AMDMPM(0));

-- Location: LCCOMB_X14_Y2_N10
\AMDMPM[2]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- AMDMPM(2) = (!\comb~0_combout\ & ((\comb~1_combout\) # (AMDMPM(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \comb~1_combout\,
	datac => \comb~0_combout\,
	datad => AMDMPM(2),
	combout => AMDMPM(2));

-- Location: LCCOMB_X7_Y2_N30
\MinutesDisplay|Mux6~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \MinutesDisplay|Mux6~0_combout\ = (AMDMPM(2)) # ((AMDMPM(1) & AMDMPM(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => AMDMPM(1),
	datac => AMDMPM(0),
	datad => AMDMPM(2),
	combout => \MinutesDisplay|Mux6~0_combout\);

-- Location: LCCOMB_X11_Y2_N0
\SecondMuxand7Seg|GrabOne[0]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \SecondMuxand7Seg|GrabOne[0]~0_combout\ = (!\resetin~input_o\ & !\FSMDisplay|present_state.Time_Now~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \resetin~input_o\,
	datad => \FSMDisplay|present_state.Time_Now~q\,
	combout => \SecondMuxand7Seg|GrabOne[0]~0_combout\);

-- Location: FF_X7_Y2_N31
\SecondMuxand7Seg|GrabOne[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \MinutesDisplay|Mux6~0_combout\,
	ena => \SecondMuxand7Seg|GrabOne[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \SecondMuxand7Seg|GrabOne\(0));

-- Location: LCCOMB_X12_Y2_N10
\FSMDisplay|NextStatesProc~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \FSMDisplay|NextStatesProc~4_combout\ = (\FSMDisplay|NextStatesProc~3_combout\ & (\FSMDisplay|NextStatesProc~1_combout\ & (\FSMDisplay|NextStatesProc~0_combout\ & \FSMDisplay|NextStatesProc~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FSMDisplay|NextStatesProc~3_combout\,
	datab => \FSMDisplay|NextStatesProc~1_combout\,
	datac => \FSMDisplay|NextStatesProc~0_combout\,
	datad => \FSMDisplay|NextStatesProc~2_combout\,
	combout => \FSMDisplay|NextStatesProc~4_combout\);

-- Location: LCCOMB_X12_Y2_N20
\FSMDisplay|next_state.Alarm1~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \FSMDisplay|next_state.Alarm1~1_combout\ = (\FSMDisplay|AlarmEnabled~q\ & (\FSMDisplay|next_state.Alarm1~0_combout\ & \FSMDisplay|NextStatesProc~4_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \FSMDisplay|AlarmEnabled~q\,
	datac => \FSMDisplay|next_state.Alarm1~0_combout\,
	datad => \FSMDisplay|NextStatesProc~4_combout\,
	combout => \FSMDisplay|next_state.Alarm1~1_combout\);

-- Location: FF_X12_Y2_N21
\FSMDisplay|present_state.Alarm1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk1Hz~clkctrl_outclk\,
	d => \FSMDisplay|next_state.Alarm1~1_combout\,
	clrn => \ALT_INV_resetin~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FSMDisplay|present_state.Alarm1~q\);

-- Location: LCCOMB_X12_Y2_N14
\FSMDisplay|next_state.Alarm2~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \FSMDisplay|next_state.Alarm2~0_combout\ = (!\Switch5~input_o\ & \FSMDisplay|present_state.Alarm1~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Switch5~input_o\,
	datad => \FSMDisplay|present_state.Alarm1~q\,
	combout => \FSMDisplay|next_state.Alarm2~0_combout\);

-- Location: FF_X12_Y2_N15
\FSMDisplay|present_state.Alarm2\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk1Hz~clkctrl_outclk\,
	d => \FSMDisplay|next_state.Alarm2~0_combout\,
	clrn => \ALT_INV_resetin~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FSMDisplay|present_state.Alarm2~q\);

-- Location: LCCOMB_X12_Y2_N16
\FSMDisplay|next_state.Alarm3~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \FSMDisplay|next_state.Alarm3~0_combout\ = (!\Switch5~input_o\ & \FSMDisplay|present_state.Alarm2~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Switch5~input_o\,
	datad => \FSMDisplay|present_state.Alarm2~q\,
	combout => \FSMDisplay|next_state.Alarm3~0_combout\);

-- Location: FF_X12_Y2_N17
\FSMDisplay|present_state.Alarm3\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk1Hz~clkctrl_outclk\,
	d => \FSMDisplay|next_state.Alarm3~0_combout\,
	clrn => \ALT_INV_resetin~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FSMDisplay|present_state.Alarm3~q\);

-- Location: LCCOMB_X12_Y2_N30
\FSMDisplay|next_state.Alarm4~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \FSMDisplay|next_state.Alarm4~0_combout\ = (!\Switch5~input_o\ & \FSMDisplay|present_state.Alarm3~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Switch5~input_o\,
	datad => \FSMDisplay|present_state.Alarm3~q\,
	combout => \FSMDisplay|next_state.Alarm4~0_combout\);

-- Location: FF_X12_Y2_N31
\FSMDisplay|present_state.Alarm4\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk1Hz~clkctrl_outclk\,
	d => \FSMDisplay|next_state.Alarm4~0_combout\,
	clrn => \ALT_INV_resetin~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FSMDisplay|present_state.Alarm4~q\);

-- Location: LCCOMB_X12_Y2_N24
\FSMDisplay|next_state.Alarm5~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \FSMDisplay|next_state.Alarm5~0_combout\ = (!\Switch5~input_o\ & \FSMDisplay|present_state.Alarm4~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Switch5~input_o\,
	datac => \FSMDisplay|present_state.Alarm4~q\,
	combout => \FSMDisplay|next_state.Alarm5~0_combout\);

-- Location: FF_X12_Y2_N25
\FSMDisplay|present_state.Alarm5\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk1Hz~clkctrl_outclk\,
	d => \FSMDisplay|next_state.Alarm5~0_combout\,
	clrn => \ALT_INV_resetin~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FSMDisplay|present_state.Alarm5~q\);

-- Location: LCCOMB_X12_Y2_N6
\FSMDisplay|next_state.Alarm6~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \FSMDisplay|next_state.Alarm6~0_combout\ = (!\Switch5~input_o\ & \FSMDisplay|present_state.Alarm5~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Switch5~input_o\,
	datad => \FSMDisplay|present_state.Alarm5~q\,
	combout => \FSMDisplay|next_state.Alarm6~0_combout\);

-- Location: FF_X12_Y2_N7
\FSMDisplay|present_state.Alarm6\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk1Hz~clkctrl_outclk\,
	d => \FSMDisplay|next_state.Alarm6~0_combout\,
	clrn => \ALT_INV_resetin~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FSMDisplay|present_state.Alarm6~q\);

-- Location: LCCOMB_X15_Y2_N28
\FSMDisplay|next_state.Alarm7~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \FSMDisplay|next_state.Alarm7~0_combout\ = (!\Switch5~input_o\ & \FSMDisplay|present_state.Alarm6~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Switch5~input_o\,
	datad => \FSMDisplay|present_state.Alarm6~q\,
	combout => \FSMDisplay|next_state.Alarm7~0_combout\);

-- Location: FF_X15_Y2_N29
\FSMDisplay|present_state.Alarm7\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk1Hz~clkctrl_outclk\,
	d => \FSMDisplay|next_state.Alarm7~0_combout\,
	clrn => \ALT_INV_resetin~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FSMDisplay|present_state.Alarm7~q\);

-- Location: LCCOMB_X15_Y2_N18
\FSMDisplay|next_state.Alarm8~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \FSMDisplay|next_state.Alarm8~0_combout\ = (!\Switch5~input_o\ & \FSMDisplay|present_state.Alarm7~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Switch5~input_o\,
	datad => \FSMDisplay|present_state.Alarm7~q\,
	combout => \FSMDisplay|next_state.Alarm8~0_combout\);

-- Location: FF_X15_Y2_N19
\FSMDisplay|present_state.Alarm8\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk1Hz~clkctrl_outclk\,
	d => \FSMDisplay|next_state.Alarm8~0_combout\,
	clrn => \ALT_INV_resetin~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FSMDisplay|present_state.Alarm8~q\);

-- Location: LCCOMB_X15_Y2_N0
\FSMDisplay|next_state.Alarm9~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \FSMDisplay|next_state.Alarm9~0_combout\ = (!\Switch5~input_o\ & \FSMDisplay|present_state.Alarm8~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Switch5~input_o\,
	datad => \FSMDisplay|present_state.Alarm8~q\,
	combout => \FSMDisplay|next_state.Alarm9~0_combout\);

-- Location: FF_X15_Y2_N1
\FSMDisplay|present_state.Alarm9\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk1Hz~clkctrl_outclk\,
	d => \FSMDisplay|next_state.Alarm9~0_combout\,
	clrn => \ALT_INV_resetin~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FSMDisplay|present_state.Alarm9~q\);

-- Location: LCCOMB_X11_Y3_N26
\FSMDisplay|next_state.Alarm10~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \FSMDisplay|next_state.Alarm10~0_combout\ = (!\Switch5~input_o\ & \FSMDisplay|present_state.Alarm9~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Switch5~input_o\,
	datad => \FSMDisplay|present_state.Alarm9~q\,
	combout => \FSMDisplay|next_state.Alarm10~0_combout\);

-- Location: FF_X11_Y3_N27
\FSMDisplay|present_state.Alarm10\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk1Hz~clkctrl_outclk\,
	d => \FSMDisplay|next_state.Alarm10~0_combout\,
	clrn => \ALT_INV_resetin~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FSMDisplay|present_state.Alarm10~q\);

-- Location: LCCOMB_X11_Y3_N28
\FSMDisplay|WideOr2~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \FSMDisplay|WideOr2~0_combout\ = (\FSMDisplay|present_state.Alarm10~q\) # (\FSMDisplay|present_state.Alarm11~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FSMDisplay|present_state.Alarm10~q\,
	datac => \FSMDisplay|present_state.Alarm11~q\,
	combout => \FSMDisplay|WideOr2~0_combout\);

-- Location: FF_X11_Y3_N29
\FSMDisplay|present_state.Alarm11\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk1Hz~clkctrl_outclk\,
	d => \FSMDisplay|WideOr2~0_combout\,
	clrn => \ALT_INV_resetin~input_o\,
	sclr => \Switch5~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FSMDisplay|present_state.Alarm11~q\);

-- Location: LCCOMB_X11_Y3_N12
\FSMDisplay|WideOr6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \FSMDisplay|WideOr6~combout\ = (\FSMDisplay|present_state.Alarm11~q\) # ((\FSMDisplay|present_state.AlarmClearSwitch~q\) # (!\FSMDisplay|next_state.AlarmClearSwitch~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \FSMDisplay|present_state.Alarm11~q\,
	datac => \FSMDisplay|present_state.AlarmClearSwitch~q\,
	datad => \FSMDisplay|next_state.AlarmClearSwitch~0_combout\,
	combout => \FSMDisplay|WideOr6~combout\);

-- Location: LCCOMB_X9_Y2_N16
\SecondMuxand7Seg|Selector6~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \SecondMuxand7Seg|Selector6~1_combout\ = (\SecondMuxand7Seg|present_state.S1~q\ & (((\FSMDisplay|WideOr6~combout\)))) # (!\SecondMuxand7Seg|present_state.S1~q\ & ((\FSMDisplay|WideOr6~combout\ & (\MinutesDisplay|Mux6~0_combout\)) # 
-- (!\FSMDisplay|WideOr6~combout\ & ((\SecondMuxand7Seg|GrabOne\(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MinutesDisplay|Mux6~0_combout\,
	datab => \SecondMuxand7Seg|GrabOne\(0),
	datac => \SecondMuxand7Seg|present_state.S1~q\,
	datad => \FSMDisplay|WideOr6~combout\,
	combout => \SecondMuxand7Seg|Selector6~1_combout\);

-- Location: LCCOMB_X9_Y2_N12
\OutBCD[4]~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \OutBCD[4]~4_combout\ = (\FSMDisplay|present_state.Set_Alarm~q\ & (BCD_Alarm(0))) # (!\FSMDisplay|present_state.Set_Alarm~q\ & ((\TimeOfDay|MinsDigitBCD\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => BCD_Alarm(0),
	datac => \TimeOfDay|MinsDigitBCD\(0),
	datad => \FSMDisplay|present_state.Set_Alarm~q\,
	combout => \OutBCD[4]~4_combout\);

-- Location: LCCOMB_X9_Y2_N28
\OutBCD[5]~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \OutBCD[5]~5_combout\ = (\FSMDisplay|present_state.Set_Alarm~q\ & ((BCD_Alarm(1)))) # (!\FSMDisplay|present_state.Set_Alarm~q\ & (\TimeOfDay|MinsDigitBCD\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \TimeOfDay|MinsDigitBCD\(1),
	datab => BCD_Alarm(1),
	datad => \FSMDisplay|present_state.Set_Alarm~q\,
	combout => \OutBCD[5]~5_combout\);

-- Location: LCCOMB_X10_Y2_N24
\OutBCD[7]~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \OutBCD[7]~7_combout\ = (\FSMDisplay|present_state.Set_Alarm~q\ & (BCD_Alarm(3))) # (!\FSMDisplay|present_state.Set_Alarm~q\ & ((\TimeOfDay|MinsDigitBCD\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \FSMDisplay|present_state.Set_Alarm~q\,
	datac => BCD_Alarm(3),
	datad => \TimeOfDay|MinsDigitBCD\(3),
	combout => \OutBCD[7]~7_combout\);

-- Location: LCCOMB_X9_Y2_N8
\OutBCD[6]~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \OutBCD[6]~6_combout\ = (\FSMDisplay|present_state.Set_Alarm~q\ & (BCD_Alarm(2))) # (!\FSMDisplay|present_state.Set_Alarm~q\ & ((\TimeOfDay|MinsDigitBCD\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => BCD_Alarm(2),
	datac => \TimeOfDay|MinsDigitBCD\(2),
	datad => \FSMDisplay|present_state.Set_Alarm~q\,
	combout => \OutBCD[6]~6_combout\);

-- Location: LCCOMB_X7_Y2_N8
\MinutesDisplay|Mux13~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \MinutesDisplay|Mux13~0_combout\ = (\OutBCD[4]~4_combout\ & (\OutBCD[7]~7_combout\ $ (((!\OutBCD[5]~5_combout\ & !\OutBCD[6]~6_combout\))))) # (!\OutBCD[4]~4_combout\ & (\OutBCD[6]~6_combout\ & ((\OutBCD[7]~7_combout\) # (!\OutBCD[5]~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000110000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \OutBCD[4]~4_combout\,
	datab => \OutBCD[5]~5_combout\,
	datac => \OutBCD[7]~7_combout\,
	datad => \OutBCD[6]~6_combout\,
	combout => \MinutesDisplay|Mux13~0_combout\);

-- Location: FF_X7_Y2_N21
\SecondMuxand7Seg|GrabTwo[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \MinutesDisplay|Mux13~0_combout\,
	sload => VCC,
	ena => \SecondMuxand7Seg|GrabOne[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \SecondMuxand7Seg|GrabTwo\(0));

-- Location: LCCOMB_X7_Y2_N20
\SecondMuxand7Seg|Selector6~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \SecondMuxand7Seg|Selector6~2_combout\ = (\SecondMuxand7Seg|Selector6~1_combout\ & ((\MinutesDisplay|Mux13~0_combout\) # ((!\SecondMuxand7Seg|present_state.S1~q\)))) # (!\SecondMuxand7Seg|Selector6~1_combout\ & (((\SecondMuxand7Seg|GrabTwo\(0) & 
-- \SecondMuxand7Seg|present_state.S1~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SecondMuxand7Seg|Selector6~1_combout\,
	datab => \MinutesDisplay|Mux13~0_combout\,
	datac => \SecondMuxand7Seg|GrabTwo\(0),
	datad => \SecondMuxand7Seg|present_state.S1~q\,
	combout => \SecondMuxand7Seg|Selector6~2_combout\);

-- Location: LCCOMB_X10_Y2_N6
\OutBCD[9]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \OutBCD[9]~1_combout\ = (\FSMDisplay|present_state.Set_Alarm~q\ & (BCD_Alarm(5))) # (!\FSMDisplay|present_state.Set_Alarm~q\ & ((\TimeOfDay|MinsTensBCD\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => BCD_Alarm(5),
	datac => \FSMDisplay|present_state.Set_Alarm~q\,
	datad => \TimeOfDay|MinsTensBCD\(1),
	combout => \OutBCD[9]~1_combout\);

-- Location: LCCOMB_X10_Y2_N22
\OutBCD[11]~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \OutBCD[11]~3_combout\ = (\FSMDisplay|present_state.Set_Alarm~q\ & (BCD_Alarm(7))) # (!\FSMDisplay|present_state.Set_Alarm~q\ & ((\TimeOfDay|MinsTensBCD\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => BCD_Alarm(7),
	datab => \FSMDisplay|present_state.Set_Alarm~q\,
	datad => \TimeOfDay|MinsTensBCD\(3),
	combout => \OutBCD[11]~3_combout\);

-- Location: LCCOMB_X10_Y2_N30
\OutBCD[8]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \OutBCD[8]~0_combout\ = (\FSMDisplay|present_state.Set_Alarm~q\ & (BCD_Alarm(4))) # (!\FSMDisplay|present_state.Set_Alarm~q\ & ((!\TimeOfDay|MinsTensBCD\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => BCD_Alarm(4),
	datac => \FSMDisplay|present_state.Set_Alarm~q\,
	datad => \TimeOfDay|MinsTensBCD\(0),
	combout => \OutBCD[8]~0_combout\);

-- Location: LCCOMB_X10_Y2_N28
\OutBCD[10]~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \OutBCD[10]~2_combout\ = (\FSMDisplay|present_state.Set_Alarm~q\ & (BCD_Alarm(6))) # (!\FSMDisplay|present_state.Set_Alarm~q\ & ((\TimeOfDay|MinsTensBCD\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => BCD_Alarm(6),
	datab => \FSMDisplay|present_state.Set_Alarm~q\,
	datad => \TimeOfDay|MinsTensBCD\(2),
	combout => \OutBCD[10]~2_combout\);

-- Location: LCCOMB_X10_Y2_N18
\HoursDisplay|Mux6~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \HoursDisplay|Mux6~0_combout\ = (\OutBCD[9]~1_combout\ & (\OutBCD[11]~3_combout\ & ((\OutBCD[8]~0_combout\) # (\OutBCD[10]~2_combout\)))) # (!\OutBCD[9]~1_combout\ & (\OutBCD[10]~2_combout\ $ (((!\OutBCD[11]~3_combout\ & \OutBCD[8]~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110110010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \OutBCD[9]~1_combout\,
	datab => \OutBCD[11]~3_combout\,
	datac => \OutBCD[8]~0_combout\,
	datad => \OutBCD[10]~2_combout\,
	combout => \HoursDisplay|Mux6~0_combout\);

-- Location: FF_X11_Y2_N29
\SecondMuxand7Seg|GrabThree[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \HoursDisplay|Mux6~0_combout\,
	sload => VCC,
	ena => \SecondMuxand7Seg|GrabOne[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \SecondMuxand7Seg|GrabThree\(0));

-- Location: LCCOMB_X11_Y2_N28
\SecondMuxand7Seg|Selector6~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \SecondMuxand7Seg|Selector6~0_combout\ = (\SecondMuxand7Seg|present_state.S2~q\ & ((\FSMDisplay|WideOr6~combout\ & (\HoursDisplay|Mux6~0_combout\)) # (!\FSMDisplay|WideOr6~combout\ & ((\SecondMuxand7Seg|GrabThree\(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \HoursDisplay|Mux6~0_combout\,
	datab => \FSMDisplay|WideOr6~combout\,
	datac => \SecondMuxand7Seg|GrabThree\(0),
	datad => \SecondMuxand7Seg|present_state.S2~q\,
	combout => \SecondMuxand7Seg|Selector6~0_combout\);

-- Location: LCCOMB_X9_Y2_N20
\SecondMuxand7Seg|Selector6~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \SecondMuxand7Seg|Selector6~3_combout\ = (\SecondMuxand7Seg|present_state.S3~q\) # ((\SecondMuxand7Seg|Selector6~0_combout\) # ((\SecondMuxand7Seg|Selector6~2_combout\ & !\SecondMuxand7Seg|present_state.S2~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SecondMuxand7Seg|Selector6~2_combout\,
	datab => \SecondMuxand7Seg|present_state.S3~q\,
	datac => \SecondMuxand7Seg|present_state.S2~q\,
	datad => \SecondMuxand7Seg|Selector6~0_combout\,
	combout => \SecondMuxand7Seg|Selector6~3_combout\);

-- Location: LCCOMB_X9_Y2_N2
\MinutesDisplay|Mux12~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \MinutesDisplay|Mux12~0_combout\ = (\OutBCD[6]~6_combout\ & ((\OutBCD[7]~7_combout\) # (\OutBCD[4]~4_combout\ $ (\OutBCD[5]~5_combout\)))) # (!\OutBCD[6]~6_combout\ & (((\OutBCD[5]~5_combout\ & \OutBCD[7]~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110001100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \OutBCD[4]~4_combout\,
	datab => \OutBCD[5]~5_combout\,
	datac => \OutBCD[6]~6_combout\,
	datad => \OutBCD[7]~7_combout\,
	combout => \MinutesDisplay|Mux12~0_combout\);

-- Location: FF_X7_Y2_N7
\SecondMuxand7Seg|GrabTwo[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \MinutesDisplay|Mux12~0_combout\,
	sload => VCC,
	ena => \SecondMuxand7Seg|GrabOne[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \SecondMuxand7Seg|GrabTwo\(1));

-- Location: LCCOMB_X7_Y2_N12
\MinutesDisplay|Mux2~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \MinutesDisplay|Mux2~0_combout\ = (AMDMPM(1)) # (AMDMPM(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => AMDMPM(1),
	datad => AMDMPM(2),
	combout => \MinutesDisplay|Mux2~0_combout\);

-- Location: FF_X7_Y2_N13
\SecondMuxand7Seg|GrabOne[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \MinutesDisplay|Mux2~0_combout\,
	ena => \SecondMuxand7Seg|GrabOne[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \SecondMuxand7Seg|GrabOne\(1));

-- Location: LCCOMB_X7_Y2_N2
\SecondMuxand7Seg|Selector5~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \SecondMuxand7Seg|Selector5~1_combout\ = (\FSMDisplay|WideOr6~combout\ & ((\MinutesDisplay|Mux2~0_combout\) # ((\SecondMuxand7Seg|present_state.S1~q\)))) # (!\FSMDisplay|WideOr6~combout\ & (((\SecondMuxand7Seg|GrabOne\(1) & 
-- !\SecondMuxand7Seg|present_state.S1~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MinutesDisplay|Mux2~0_combout\,
	datab => \FSMDisplay|WideOr6~combout\,
	datac => \SecondMuxand7Seg|GrabOne\(1),
	datad => \SecondMuxand7Seg|present_state.S1~q\,
	combout => \SecondMuxand7Seg|Selector5~1_combout\);

-- Location: LCCOMB_X7_Y2_N6
\SecondMuxand7Seg|Selector5~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \SecondMuxand7Seg|Selector5~2_combout\ = (\SecondMuxand7Seg|present_state.S1~q\ & ((\SecondMuxand7Seg|Selector5~1_combout\ & (\MinutesDisplay|Mux12~0_combout\)) # (!\SecondMuxand7Seg|Selector5~1_combout\ & ((\SecondMuxand7Seg|GrabTwo\(1)))))) # 
-- (!\SecondMuxand7Seg|present_state.S1~q\ & (((\SecondMuxand7Seg|Selector5~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MinutesDisplay|Mux12~0_combout\,
	datab => \SecondMuxand7Seg|present_state.S1~q\,
	datac => \SecondMuxand7Seg|GrabTwo\(1),
	datad => \SecondMuxand7Seg|Selector5~1_combout\,
	combout => \SecondMuxand7Seg|Selector5~2_combout\);

-- Location: LCCOMB_X10_Y2_N26
\HoursDisplay|Mux5~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \HoursDisplay|Mux5~0_combout\ = (\OutBCD[10]~2_combout\ & ((\OutBCD[11]~3_combout\) # (\OutBCD[9]~1_combout\ $ (\OutBCD[8]~0_combout\)))) # (!\OutBCD[10]~2_combout\ & (\OutBCD[9]~1_combout\ & ((\OutBCD[11]~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \OutBCD[9]~1_combout\,
	datab => \OutBCD[10]~2_combout\,
	datac => \OutBCD[8]~0_combout\,
	datad => \OutBCD[11]~3_combout\,
	combout => \HoursDisplay|Mux5~0_combout\);

-- Location: FF_X11_Y2_N13
\SecondMuxand7Seg|GrabThree[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \HoursDisplay|Mux5~0_combout\,
	sload => VCC,
	ena => \SecondMuxand7Seg|GrabOne[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \SecondMuxand7Seg|GrabThree\(1));

-- Location: LCCOMB_X11_Y2_N12
\SecondMuxand7Seg|Selector5~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \SecondMuxand7Seg|Selector5~0_combout\ = (\SecondMuxand7Seg|present_state.S2~q\ & ((\FSMDisplay|WideOr6~combout\ & (\HoursDisplay|Mux5~0_combout\)) # (!\FSMDisplay|WideOr6~combout\ & ((\SecondMuxand7Seg|GrabThree\(1))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \HoursDisplay|Mux5~0_combout\,
	datab => \SecondMuxand7Seg|present_state.S2~q\,
	datac => \SecondMuxand7Seg|GrabThree\(1),
	datad => \FSMDisplay|WideOr6~combout\,
	combout => \SecondMuxand7Seg|Selector5~0_combout\);

-- Location: LCCOMB_X11_Y4_N24
\SecondMuxand7Seg|Selector5~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \SecondMuxand7Seg|Selector5~3_combout\ = (\SecondMuxand7Seg|Selector5~0_combout\) # ((\SecondMuxand7Seg|present_state.S3~q\) # ((\SecondMuxand7Seg|Selector5~2_combout\ & !\SecondMuxand7Seg|present_state.S2~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SecondMuxand7Seg|Selector5~2_combout\,
	datab => \SecondMuxand7Seg|Selector5~0_combout\,
	datac => \SecondMuxand7Seg|present_state.S2~q\,
	datad => \SecondMuxand7Seg|present_state.S3~q\,
	combout => \SecondMuxand7Seg|Selector5~3_combout\);

-- Location: LCCOMB_X7_Y2_N22
\MinutesDisplay|Mux11~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \MinutesDisplay|Mux11~0_combout\ = (\OutBCD[6]~6_combout\ & (((\OutBCD[7]~7_combout\)))) # (!\OutBCD[6]~6_combout\ & (\OutBCD[5]~5_combout\ & ((\OutBCD[7]~7_combout\) # (!\OutBCD[4]~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \OutBCD[4]~4_combout\,
	datab => \OutBCD[5]~5_combout\,
	datac => \OutBCD[7]~7_combout\,
	datad => \OutBCD[6]~6_combout\,
	combout => \MinutesDisplay|Mux11~0_combout\);

-- Location: FF_X7_Y2_N17
\SecondMuxand7Seg|GrabTwo[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \MinutesDisplay|Mux11~0_combout\,
	sload => VCC,
	ena => \SecondMuxand7Seg|GrabOne[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \SecondMuxand7Seg|GrabTwo\(2));

-- Location: LCCOMB_X7_Y2_N16
\SecondMuxand7Seg|Selector4~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \SecondMuxand7Seg|Selector4~1_combout\ = (\SecondMuxand7Seg|Selector5~1_combout\ & ((\MinutesDisplay|Mux11~0_combout\) # ((!\SecondMuxand7Seg|present_state.S1~q\)))) # (!\SecondMuxand7Seg|Selector5~1_combout\ & (((\SecondMuxand7Seg|GrabTwo\(2) & 
-- \SecondMuxand7Seg|present_state.S1~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MinutesDisplay|Mux11~0_combout\,
	datab => \SecondMuxand7Seg|Selector5~1_combout\,
	datac => \SecondMuxand7Seg|GrabTwo\(2),
	datad => \SecondMuxand7Seg|present_state.S1~q\,
	combout => \SecondMuxand7Seg|Selector4~1_combout\);

-- Location: LCCOMB_X10_Y2_N4
\HoursDisplay|Mux4~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \HoursDisplay|Mux4~0_combout\ = (\OutBCD[10]~2_combout\ & (((\OutBCD[11]~3_combout\)))) # (!\OutBCD[10]~2_combout\ & (\OutBCD[9]~1_combout\ & ((\OutBCD[11]~3_combout\) # (!\OutBCD[8]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \OutBCD[9]~1_combout\,
	datab => \OutBCD[10]~2_combout\,
	datac => \OutBCD[8]~0_combout\,
	datad => \OutBCD[11]~3_combout\,
	combout => \HoursDisplay|Mux4~0_combout\);

-- Location: FF_X11_Y2_N25
\SecondMuxand7Seg|GrabThree[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \HoursDisplay|Mux4~0_combout\,
	sload => VCC,
	ena => \SecondMuxand7Seg|GrabOne[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \SecondMuxand7Seg|GrabThree\(2));

-- Location: LCCOMB_X11_Y2_N24
\SecondMuxand7Seg|Selector4~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \SecondMuxand7Seg|Selector4~0_combout\ = (\SecondMuxand7Seg|present_state.S2~q\ & ((\FSMDisplay|WideOr6~combout\ & (\HoursDisplay|Mux4~0_combout\)) # (!\FSMDisplay|WideOr6~combout\ & ((\SecondMuxand7Seg|GrabThree\(2))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FSMDisplay|WideOr6~combout\,
	datab => \HoursDisplay|Mux4~0_combout\,
	datac => \SecondMuxand7Seg|GrabThree\(2),
	datad => \SecondMuxand7Seg|present_state.S2~q\,
	combout => \SecondMuxand7Seg|Selector4~0_combout\);

-- Location: LCCOMB_X7_Y2_N0
\SecondMuxand7Seg|Selector4~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \SecondMuxand7Seg|Selector4~2_combout\ = (\SecondMuxand7Seg|present_state.S3~q\) # ((\SecondMuxand7Seg|Selector4~0_combout\) # ((\SecondMuxand7Seg|Selector4~1_combout\ & !\SecondMuxand7Seg|present_state.S2~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SecondMuxand7Seg|present_state.S3~q\,
	datab => \SecondMuxand7Seg|Selector4~1_combout\,
	datac => \SecondMuxand7Seg|Selector4~0_combout\,
	datad => \SecondMuxand7Seg|present_state.S2~q\,
	combout => \SecondMuxand7Seg|Selector4~2_combout\);

-- Location: LCCOMB_X10_Y2_N0
\HoursDisplay|Mux3~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \HoursDisplay|Mux3~0_combout\ = (\OutBCD[9]~1_combout\ & ((\OutBCD[8]~0_combout\ & (\OutBCD[10]~2_combout\)) # (!\OutBCD[8]~0_combout\ & ((\OutBCD[11]~3_combout\))))) # (!\OutBCD[9]~1_combout\ & (\OutBCD[8]~0_combout\ $ (((\OutBCD[10]~2_combout\ & 
-- !\OutBCD[11]~3_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101101010010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \OutBCD[9]~1_combout\,
	datab => \OutBCD[10]~2_combout\,
	datac => \OutBCD[8]~0_combout\,
	datad => \OutBCD[11]~3_combout\,
	combout => \HoursDisplay|Mux3~0_combout\);

-- Location: FF_X11_Y2_N23
\SecondMuxand7Seg|GrabThree[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \HoursDisplay|Mux3~0_combout\,
	sload => VCC,
	ena => \SecondMuxand7Seg|GrabOne[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \SecondMuxand7Seg|GrabThree\(3));

-- Location: LCCOMB_X12_Y2_N8
\SecondMuxand7Seg|Selector3~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \SecondMuxand7Seg|Selector3~0_combout\ = (\SecondMuxand7Seg|present_state.S2~q\ & ((\FSMDisplay|WideOr6~combout\ & (\HoursDisplay|Mux3~0_combout\)) # (!\FSMDisplay|WideOr6~combout\ & ((\SecondMuxand7Seg|GrabThree\(3))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000110010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \HoursDisplay|Mux3~0_combout\,
	datab => \SecondMuxand7Seg|present_state.S2~q\,
	datac => \FSMDisplay|WideOr6~combout\,
	datad => \SecondMuxand7Seg|GrabThree\(3),
	combout => \SecondMuxand7Seg|Selector3~0_combout\);

-- Location: LCCOMB_X9_Y2_N4
\MinutesDisplay|Mux10~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \MinutesDisplay|Mux10~0_combout\ = (\OutBCD[5]~5_combout\ & ((\OutBCD[4]~4_combout\ & (\OutBCD[6]~6_combout\)) # (!\OutBCD[4]~4_combout\ & ((\OutBCD[7]~7_combout\))))) # (!\OutBCD[5]~5_combout\ & (\OutBCD[4]~4_combout\ $ (((\OutBCD[6]~6_combout\ & 
-- !\OutBCD[7]~7_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011010010010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \OutBCD[4]~4_combout\,
	datab => \OutBCD[5]~5_combout\,
	datac => \OutBCD[6]~6_combout\,
	datad => \OutBCD[7]~7_combout\,
	combout => \MinutesDisplay|Mux10~0_combout\);

-- Location: FF_X14_Y2_N3
\SecondMuxand7Seg|GrabTwo[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \MinutesDisplay|Mux10~0_combout\,
	sload => VCC,
	ena => \SecondMuxand7Seg|GrabOne[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \SecondMuxand7Seg|GrabTwo\(3));

-- Location: LCCOMB_X11_Y2_N10
\MinutesDisplay|Mux3~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \MinutesDisplay|Mux3~0_combout\ = (AMDMPM(0) & ((AMDMPM(2)) # (!AMDMPM(1)))) # (!AMDMPM(0) & ((AMDMPM(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => AMDMPM(2),
	datac => AMDMPM(0),
	datad => AMDMPM(1),
	combout => \MinutesDisplay|Mux3~0_combout\);

-- Location: FF_X11_Y2_N11
\SecondMuxand7Seg|GrabOne[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \MinutesDisplay|Mux3~0_combout\,
	ena => \SecondMuxand7Seg|GrabOne[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \SecondMuxand7Seg|GrabOne\(3));

-- Location: LCCOMB_X11_Y2_N6
\SecondMuxand7Seg|Selector3~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \SecondMuxand7Seg|Selector3~1_combout\ = (\SecondMuxand7Seg|present_state.S1~q\ & (((\FSMDisplay|WideOr6~combout\)))) # (!\SecondMuxand7Seg|present_state.S1~q\ & ((\FSMDisplay|WideOr6~combout\ & (\MinutesDisplay|Mux3~0_combout\)) # 
-- (!\FSMDisplay|WideOr6~combout\ & ((\SecondMuxand7Seg|GrabOne\(3))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MinutesDisplay|Mux3~0_combout\,
	datab => \SecondMuxand7Seg|present_state.S1~q\,
	datac => \FSMDisplay|WideOr6~combout\,
	datad => \SecondMuxand7Seg|GrabOne\(3),
	combout => \SecondMuxand7Seg|Selector3~1_combout\);

-- Location: LCCOMB_X14_Y2_N2
\SecondMuxand7Seg|Selector3~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \SecondMuxand7Seg|Selector3~2_combout\ = (\SecondMuxand7Seg|present_state.S1~q\ & ((\SecondMuxand7Seg|Selector3~1_combout\ & (\MinutesDisplay|Mux10~0_combout\)) # (!\SecondMuxand7Seg|Selector3~1_combout\ & ((\SecondMuxand7Seg|GrabTwo\(3)))))) # 
-- (!\SecondMuxand7Seg|present_state.S1~q\ & (((\SecondMuxand7Seg|Selector3~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SecondMuxand7Seg|present_state.S1~q\,
	datab => \MinutesDisplay|Mux10~0_combout\,
	datac => \SecondMuxand7Seg|GrabTwo\(3),
	datad => \SecondMuxand7Seg|Selector3~1_combout\,
	combout => \SecondMuxand7Seg|Selector3~2_combout\);

-- Location: LCCOMB_X14_Y2_N8
\SecondMuxand7Seg|Selector3~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \SecondMuxand7Seg|Selector3~3_combout\ = (\SecondMuxand7Seg|present_state.S3~q\) # ((\SecondMuxand7Seg|Selector3~0_combout\) # ((!\SecondMuxand7Seg|present_state.S2~q\ & \SecondMuxand7Seg|Selector3~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111111101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SecondMuxand7Seg|present_state.S3~q\,
	datab => \SecondMuxand7Seg|Selector3~0_combout\,
	datac => \SecondMuxand7Seg|present_state.S2~q\,
	datad => \SecondMuxand7Seg|Selector3~2_combout\,
	combout => \SecondMuxand7Seg|Selector3~3_combout\);

-- Location: LCCOMB_X11_Y2_N20
\MinutesDisplay|Mux2~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \MinutesDisplay|Mux2~1_combout\ = (AMDMPM(2)) # ((AMDMPM(0)) # (AMDMPM(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => AMDMPM(2),
	datac => AMDMPM(0),
	datad => AMDMPM(1),
	combout => \MinutesDisplay|Mux2~1_combout\);

-- Location: FF_X11_Y2_N21
\SecondMuxand7Seg|GrabOne[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \MinutesDisplay|Mux2~1_combout\,
	ena => \SecondMuxand7Seg|GrabOne[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \SecondMuxand7Seg|GrabOne\(4));

-- Location: LCCOMB_X9_Y2_N18
\SecondMuxand7Seg|Selector2~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \SecondMuxand7Seg|Selector2~1_combout\ = (\SecondMuxand7Seg|present_state.S1~q\ & (((\FSMDisplay|WideOr6~combout\)))) # (!\SecondMuxand7Seg|present_state.S1~q\ & ((\FSMDisplay|WideOr6~combout\ & (\MinutesDisplay|Mux2~1_combout\)) # 
-- (!\FSMDisplay|WideOr6~combout\ & ((\SecondMuxand7Seg|GrabOne\(4))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MinutesDisplay|Mux2~1_combout\,
	datab => \SecondMuxand7Seg|GrabOne\(4),
	datac => \SecondMuxand7Seg|present_state.S1~q\,
	datad => \FSMDisplay|WideOr6~combout\,
	combout => \SecondMuxand7Seg|Selector2~1_combout\);

-- Location: LCCOMB_X7_Y2_N4
\MinutesDisplay|Mux9~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \MinutesDisplay|Mux9~0_combout\ = (\OutBCD[4]~4_combout\) # ((\OutBCD[5]~5_combout\ & (\OutBCD[7]~7_combout\)) # (!\OutBCD[5]~5_combout\ & ((\OutBCD[6]~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101111101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \OutBCD[4]~4_combout\,
	datab => \OutBCD[5]~5_combout\,
	datac => \OutBCD[7]~7_combout\,
	datad => \OutBCD[6]~6_combout\,
	combout => \MinutesDisplay|Mux9~0_combout\);

-- Location: FF_X7_Y2_N15
\SecondMuxand7Seg|GrabTwo[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \MinutesDisplay|Mux9~0_combout\,
	sload => VCC,
	ena => \SecondMuxand7Seg|GrabOne[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \SecondMuxand7Seg|GrabTwo\(4));

-- Location: LCCOMB_X7_Y2_N14
\SecondMuxand7Seg|Selector2~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \SecondMuxand7Seg|Selector2~2_combout\ = (\SecondMuxand7Seg|Selector2~1_combout\ & ((\MinutesDisplay|Mux9~0_combout\) # ((!\SecondMuxand7Seg|present_state.S1~q\)))) # (!\SecondMuxand7Seg|Selector2~1_combout\ & (((\SecondMuxand7Seg|GrabTwo\(4) & 
-- \SecondMuxand7Seg|present_state.S1~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SecondMuxand7Seg|Selector2~1_combout\,
	datab => \MinutesDisplay|Mux9~0_combout\,
	datac => \SecondMuxand7Seg|GrabTwo\(4),
	datad => \SecondMuxand7Seg|present_state.S1~q\,
	combout => \SecondMuxand7Seg|Selector2~2_combout\);

-- Location: LCCOMB_X10_Y2_N16
\HoursDisplay|Mux2~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \HoursDisplay|Mux2~0_combout\ = (\OutBCD[8]~0_combout\) # ((\OutBCD[9]~1_combout\ & ((\OutBCD[11]~3_combout\))) # (!\OutBCD[9]~1_combout\ & (\OutBCD[10]~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011110100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \OutBCD[9]~1_combout\,
	datab => \OutBCD[10]~2_combout\,
	datac => \OutBCD[8]~0_combout\,
	datad => \OutBCD[11]~3_combout\,
	combout => \HoursDisplay|Mux2~0_combout\);

-- Location: FF_X11_Y2_N15
\SecondMuxand7Seg|GrabThree[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \HoursDisplay|Mux2~0_combout\,
	sload => VCC,
	ena => \SecondMuxand7Seg|GrabOne[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \SecondMuxand7Seg|GrabThree\(4));

-- Location: LCCOMB_X11_Y2_N14
\SecondMuxand7Seg|Selector2~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \SecondMuxand7Seg|Selector2~0_combout\ = (\SecondMuxand7Seg|present_state.S2~q\ & ((\FSMDisplay|WideOr6~combout\ & (\HoursDisplay|Mux2~0_combout\)) # (!\FSMDisplay|WideOr6~combout\ & ((\SecondMuxand7Seg|GrabThree\(4))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \HoursDisplay|Mux2~0_combout\,
	datab => \FSMDisplay|WideOr6~combout\,
	datac => \SecondMuxand7Seg|GrabThree\(4),
	datad => \SecondMuxand7Seg|present_state.S2~q\,
	combout => \SecondMuxand7Seg|Selector2~0_combout\);

-- Location: LCCOMB_X9_Y2_N30
\SecondMuxand7Seg|Selector2~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \SecondMuxand7Seg|Selector2~3_combout\ = (\SecondMuxand7Seg|Selector2~0_combout\) # ((\SecondMuxand7Seg|present_state.S3~q\) # ((\SecondMuxand7Seg|Selector2~2_combout\ & !\SecondMuxand7Seg|present_state.S2~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SecondMuxand7Seg|Selector2~2_combout\,
	datab => \SecondMuxand7Seg|Selector2~0_combout\,
	datac => \SecondMuxand7Seg|present_state.S2~q\,
	datad => \SecondMuxand7Seg|present_state.S3~q\,
	combout => \SecondMuxand7Seg|Selector2~3_combout\);

-- Location: LCCOMB_X7_Y2_N28
\MinutesDisplay|Mux8~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \MinutesDisplay|Mux8~0_combout\ = (\OutBCD[4]~4_combout\ & ((\OutBCD[5]~5_combout\) # (\OutBCD[7]~7_combout\ $ (!\OutBCD[6]~6_combout\)))) # (!\OutBCD[4]~4_combout\ & ((\OutBCD[6]~6_combout\ & ((\OutBCD[7]~7_combout\))) # (!\OutBCD[6]~6_combout\ & 
-- (\OutBCD[5]~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100011001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \OutBCD[4]~4_combout\,
	datab => \OutBCD[5]~5_combout\,
	datac => \OutBCD[7]~7_combout\,
	datad => \OutBCD[6]~6_combout\,
	combout => \MinutesDisplay|Mux8~0_combout\);

-- Location: FF_X7_Y2_N11
\SecondMuxand7Seg|GrabTwo[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \MinutesDisplay|Mux8~0_combout\,
	sload => VCC,
	ena => \SecondMuxand7Seg|GrabOne[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \SecondMuxand7Seg|GrabTwo\(5));

-- Location: LCCOMB_X7_Y2_N10
\SecondMuxand7Seg|Selector1~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \SecondMuxand7Seg|Selector1~1_combout\ = (\SecondMuxand7Seg|present_state.S1~q\ & ((\SecondMuxand7Seg|Selector5~1_combout\ & (\MinutesDisplay|Mux8~0_combout\)) # (!\SecondMuxand7Seg|Selector5~1_combout\ & ((\SecondMuxand7Seg|GrabTwo\(5)))))) # 
-- (!\SecondMuxand7Seg|present_state.S1~q\ & (((\SecondMuxand7Seg|Selector5~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MinutesDisplay|Mux8~0_combout\,
	datab => \SecondMuxand7Seg|present_state.S1~q\,
	datac => \SecondMuxand7Seg|GrabTwo\(5),
	datad => \SecondMuxand7Seg|Selector5~1_combout\,
	combout => \SecondMuxand7Seg|Selector1~1_combout\);

-- Location: LCCOMB_X11_Y2_N8
\HoursDisplay|Mux1~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \HoursDisplay|Mux1~0_combout\ = (\OutBCD[8]~0_combout\ & ((\OutBCD[9]~1_combout\) # (\OutBCD[10]~2_combout\ $ (!\OutBCD[11]~3_combout\)))) # (!\OutBCD[8]~0_combout\ & ((\OutBCD[10]~2_combout\ & ((\OutBCD[11]~3_combout\))) # (!\OutBCD[10]~2_combout\ & 
-- (\OutBCD[9]~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110010110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \OutBCD[8]~0_combout\,
	datab => \OutBCD[10]~2_combout\,
	datac => \OutBCD[9]~1_combout\,
	datad => \OutBCD[11]~3_combout\,
	combout => \HoursDisplay|Mux1~0_combout\);

-- Location: FF_X11_Y2_N3
\SecondMuxand7Seg|GrabThree[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \HoursDisplay|Mux1~0_combout\,
	sload => VCC,
	ena => \SecondMuxand7Seg|GrabOne[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \SecondMuxand7Seg|GrabThree\(5));

-- Location: LCCOMB_X11_Y2_N2
\SecondMuxand7Seg|Selector1~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \SecondMuxand7Seg|Selector1~0_combout\ = (\SecondMuxand7Seg|present_state.S2~q\ & ((\FSMDisplay|WideOr6~combout\ & (\HoursDisplay|Mux1~0_combout\)) # (!\FSMDisplay|WideOr6~combout\ & ((\SecondMuxand7Seg|GrabThree\(5))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \HoursDisplay|Mux1~0_combout\,
	datab => \FSMDisplay|WideOr6~combout\,
	datac => \SecondMuxand7Seg|GrabThree\(5),
	datad => \SecondMuxand7Seg|present_state.S2~q\,
	combout => \SecondMuxand7Seg|Selector1~0_combout\);

-- Location: LCCOMB_X11_Y2_N26
\SecondMuxand7Seg|Selector1~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \SecondMuxand7Seg|Selector1~2_combout\ = (\SecondMuxand7Seg|Selector1~0_combout\) # ((\SecondMuxand7Seg|present_state.S3~q\) # ((\SecondMuxand7Seg|Selector1~1_combout\ & !\SecondMuxand7Seg|present_state.S2~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SecondMuxand7Seg|Selector1~1_combout\,
	datab => \SecondMuxand7Seg|Selector1~0_combout\,
	datac => \SecondMuxand7Seg|present_state.S2~q\,
	datad => \SecondMuxand7Seg|present_state.S3~q\,
	combout => \SecondMuxand7Seg|Selector1~2_combout\);

-- Location: LCCOMB_X11_Y2_N4
\HoursDisplay|Mux0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \HoursDisplay|Mux0~0_combout\ = (\OutBCD[9]~1_combout\ & ((\OutBCD[8]~0_combout\ & (\OutBCD[10]~2_combout\)) # (!\OutBCD[8]~0_combout\ & ((\OutBCD[11]~3_combout\))))) # (!\OutBCD[9]~1_combout\ & ((\OutBCD[10]~2_combout\ $ (!\OutBCD[11]~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \OutBCD[8]~0_combout\,
	datab => \OutBCD[10]~2_combout\,
	datac => \OutBCD[9]~1_combout\,
	datad => \OutBCD[11]~3_combout\,
	combout => \HoursDisplay|Mux0~0_combout\);

-- Location: FF_X11_Y2_N1
\SecondMuxand7Seg|GrabThree[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \HoursDisplay|Mux0~0_combout\,
	sload => VCC,
	ena => \SecondMuxand7Seg|GrabOne[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \SecondMuxand7Seg|GrabThree\(6));

-- Location: LCCOMB_X11_Y3_N14
\SecondMuxand7Seg|Selector0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \SecondMuxand7Seg|Selector0~0_combout\ = (\SecondMuxand7Seg|present_state.S2~q\ & ((\FSMDisplay|WideOr6~combout\ & ((\HoursDisplay|Mux0~0_combout\))) # (!\FSMDisplay|WideOr6~combout\ & (\SecondMuxand7Seg|GrabThree\(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SecondMuxand7Seg|present_state.S2~q\,
	datab => \SecondMuxand7Seg|GrabThree\(6),
	datac => \FSMDisplay|WideOr6~combout\,
	datad => \HoursDisplay|Mux0~0_combout\,
	combout => \SecondMuxand7Seg|Selector0~0_combout\);

-- Location: LCCOMB_X7_Y2_N18
\MinutesDisplay|Mux0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \MinutesDisplay|Mux0~0_combout\ = (AMDMPM(2)) # ((AMDMPM(1) & !AMDMPM(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => AMDMPM(1),
	datac => AMDMPM(0),
	datad => AMDMPM(2),
	combout => \MinutesDisplay|Mux0~0_combout\);

-- Location: FF_X7_Y2_N19
\SecondMuxand7Seg|GrabOne[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \MinutesDisplay|Mux0~0_combout\,
	ena => \SecondMuxand7Seg|GrabOne[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \SecondMuxand7Seg|GrabOne\(6));

-- Location: LCCOMB_X9_Y2_N6
\MinutesDisplay|Mux7~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \MinutesDisplay|Mux7~0_combout\ = (\OutBCD[5]~5_combout\ & ((\OutBCD[4]~4_combout\ & (\OutBCD[6]~6_combout\)) # (!\OutBCD[4]~4_combout\ & ((\OutBCD[7]~7_combout\))))) # (!\OutBCD[5]~5_combout\ & ((\OutBCD[6]~6_combout\ $ (!\OutBCD[7]~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010010000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \OutBCD[4]~4_combout\,
	datab => \OutBCD[5]~5_combout\,
	datac => \OutBCD[6]~6_combout\,
	datad => \OutBCD[7]~7_combout\,
	combout => \MinutesDisplay|Mux7~0_combout\);

-- Location: FF_X7_Y2_N25
\SecondMuxand7Seg|GrabTwo[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \MinutesDisplay|Mux7~0_combout\,
	sload => VCC,
	ena => \SecondMuxand7Seg|GrabOne[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \SecondMuxand7Seg|GrabTwo\(6));

-- Location: LCCOMB_X7_Y2_N24
\SecondMuxand7Seg|Selector0~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \SecondMuxand7Seg|Selector0~1_combout\ = (\SecondMuxand7Seg|present_state.S1~q\ & (((\SecondMuxand7Seg|GrabTwo\(6)) # (\FSMDisplay|WideOr6~combout\)))) # (!\SecondMuxand7Seg|present_state.S1~q\ & (\SecondMuxand7Seg|GrabOne\(6) & 
-- ((!\FSMDisplay|WideOr6~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SecondMuxand7Seg|GrabOne\(6),
	datab => \SecondMuxand7Seg|present_state.S1~q\,
	datac => \SecondMuxand7Seg|GrabTwo\(6),
	datad => \FSMDisplay|WideOr6~combout\,
	combout => \SecondMuxand7Seg|Selector0~1_combout\);

-- Location: LCCOMB_X7_Y2_N26
\SecondMuxand7Seg|Selector0~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \SecondMuxand7Seg|Selector0~2_combout\ = (\SecondMuxand7Seg|Selector0~1_combout\ & (((\MinutesDisplay|Mux7~0_combout\) # (!\FSMDisplay|WideOr6~combout\)))) # (!\SecondMuxand7Seg|Selector0~1_combout\ & (\MinutesDisplay|Mux0~0_combout\ & 
-- ((\FSMDisplay|WideOr6~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MinutesDisplay|Mux0~0_combout\,
	datab => \SecondMuxand7Seg|Selector0~1_combout\,
	datac => \MinutesDisplay|Mux7~0_combout\,
	datad => \FSMDisplay|WideOr6~combout\,
	combout => \SecondMuxand7Seg|Selector0~2_combout\);

-- Location: LCCOMB_X11_Y2_N16
\SecondMuxand7Seg|Selector0~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \SecondMuxand7Seg|Selector0~3_combout\ = (\SecondMuxand7Seg|Selector0~0_combout\) # ((\SecondMuxand7Seg|present_state.S3~q\) # ((!\SecondMuxand7Seg|present_state.S2~q\ & \SecondMuxand7Seg|Selector0~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110111111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SecondMuxand7Seg|present_state.S2~q\,
	datab => \SecondMuxand7Seg|Selector0~0_combout\,
	datac => \SecondMuxand7Seg|present_state.S3~q\,
	datad => \SecondMuxand7Seg|Selector0~2_combout\,
	combout => \SecondMuxand7Seg|Selector0~3_combout\);

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

ww_LED0 <= \LED0~output_o\;

ww_LED1 <= \LED1~output_o\;

ww_Buzzer <= \Buzzer~output_o\;

ww_display(0) <= \display[0]~output_o\;

ww_display(1) <= \display[1]~output_o\;

ww_display(2) <= \display[2]~output_o\;

ww_display(3) <= \display[3]~output_o\;

ww_SevenSeg(0) <= \SevenSeg[0]~output_o\;

ww_SevenSeg(1) <= \SevenSeg[1]~output_o\;

ww_SevenSeg(2) <= \SevenSeg[2]~output_o\;

ww_SevenSeg(3) <= \SevenSeg[3]~output_o\;

ww_SevenSeg(4) <= \SevenSeg[4]~output_o\;

ww_SevenSeg(5) <= \SevenSeg[5]~output_o\;

ww_SevenSeg(6) <= \SevenSeg[6]~output_o\;
END structure;


