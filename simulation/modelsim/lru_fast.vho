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

-- DATE "05/06/2023 16:41:25"

-- 
-- Device: Altera EP2C35F672C6 Package FBGA672
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY CYCLONEII;
LIBRARY IEEE;
USE CYCLONEII.CYCLONEII_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	lru IS
    PORT (
	clk : IN std_logic;
	rst : IN std_logic;
	b1 : IN std_logic;
	b2 : IN std_logic;
	b3 : IN std_logic;
	b4 : IN std_logic;
	b5 : IN std_logic;
	l1 : OUT std_logic;
	l2 : OUT std_logic;
	l3 : OUT std_logic;
	l4 : OUT std_logic;
	l5 : OUT std_logic
	);
END lru;

-- Design Ports Information
-- l1	=>  Location: PIN_C12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- l2	=>  Location: PIN_J11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- l3	=>  Location: PIN_J10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- l4	=>  Location: PIN_G12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- l5	=>  Location: PIN_B11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- clk	=>  Location: PIN_P2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- b1	=>  Location: PIN_C13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- b2	=>  Location: PIN_D13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- b3	=>  Location: PIN_B12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- b4	=>  Location: PIN_F12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- b5	=>  Location: PIN_C11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- rst	=>  Location: PIN_D12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default


ARCHITECTURE structure OF lru IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_clk : std_logic;
SIGNAL ww_rst : std_logic;
SIGNAL ww_b1 : std_logic;
SIGNAL ww_b2 : std_logic;
SIGNAL ww_b3 : std_logic;
SIGNAL ww_b4 : std_logic;
SIGNAL ww_b5 : std_logic;
SIGNAL ww_l1 : std_logic;
SIGNAL ww_l2 : std_logic;
SIGNAL ww_l3 : std_logic;
SIGNAL ww_l4 : std_logic;
SIGNAL ww_l5 : std_logic;
SIGNAL \clk~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \t|Add0~12_combout\ : std_logic;
SIGNAL \t|Add0~16_combout\ : std_logic;
SIGNAL \t|Add0~20_combout\ : std_logic;
SIGNAL \t|Add0~30_combout\ : std_logic;
SIGNAL \t|Add0~34_combout\ : std_logic;
SIGNAL \t|Add0~44_combout\ : std_logic;
SIGNAL \t|Add0~48_combout\ : std_logic;
SIGNAL \t|Add0~52_combout\ : std_logic;
SIGNAL \t|Add0~54_combout\ : std_logic;
SIGNAL \used_counter~41_combout\ : std_logic;
SIGNAL \used_counter[0][8]~regout\ : std_logic;
SIGNAL \used_counter~43_combout\ : std_logic;
SIGNAL \used_counter~49_combout\ : std_logic;
SIGNAL \used_counter~55_combout\ : std_logic;
SIGNAL \used_counter[2][8]~regout\ : std_logic;
SIGNAL \used_counter[2][7]~regout\ : std_logic;
SIGNAL \index_value~5_combout\ : std_logic;
SIGNAL \used_counter[2][4]~regout\ : std_logic;
SIGNAL \used_counter~65_combout\ : std_logic;
SIGNAL \index_value~23_combout\ : std_logic;
SIGNAL \index_value~24_combout\ : std_logic;
SIGNAL \used_counter~75_combout\ : std_logic;
SIGNAL \index_value~32_combout\ : std_logic;
SIGNAL \used_counter~77_combout\ : std_logic;
SIGNAL \used_counter[3][2]~regout\ : std_logic;
SIGNAL \used_counter~78_combout\ : std_logic;
SIGNAL \used_counter[3][1]~regout\ : std_logic;
SIGNAL \index_value~40_combout\ : std_logic;
SIGNAL \WideOr3~1_combout\ : std_logic;
SIGNAL \used_counter[4][1]~regout\ : std_logic;
SIGNAL \used_counter[4][0]~regout\ : std_logic;
SIGNAL \used_counter~82_combout\ : std_logic;
SIGNAL \used_counter[4][6]~regout\ : std_logic;
SIGNAL \used_counter~86_combout\ : std_logic;
SIGNAL \WideOr4~0_combout\ : std_logic;
SIGNAL \used_counter[4][5]~regout\ : std_logic;
SIGNAL \used_counter~87_combout\ : std_logic;
SIGNAL \used_counter[4][4]~regout\ : std_logic;
SIGNAL \used_counter~88_combout\ : std_logic;
SIGNAL \used_counter[4][3]~regout\ : std_logic;
SIGNAL \used_counter~89_combout\ : std_logic;
SIGNAL \used_counter[4][2]~regout\ : std_logic;
SIGNAL \used_counter~90_combout\ : std_logic;
SIGNAL \WideOr4~1_combout\ : std_logic;
SIGNAL \WideOr4~2_combout\ : std_logic;
SIGNAL \index_value~45_combout\ : std_logic;
SIGNAL \index_value~46_combout\ : std_logic;
SIGNAL \index_value~47_combout\ : std_logic;
SIGNAL \index_value~48_combout\ : std_logic;
SIGNAL \index_value~59_combout\ : std_logic;
SIGNAL \index_value~60_combout\ : std_logic;
SIGNAL \index_value~61_combout\ : std_logic;
SIGNAL \timer~1_combout\ : std_logic;
SIGNAL \timer~6_combout\ : std_logic;
SIGNAL \timer~8_combout\ : std_logic;
SIGNAL \timer~9_combout\ : std_logic;
SIGNAL \used_counter~95_combout\ : std_logic;
SIGNAL \used_counter~102_combout\ : std_logic;
SIGNAL \used_counter~104_combout\ : std_logic;
SIGNAL \used_counter~108_combout\ : std_logic;
SIGNAL \used_counter~110_combout\ : std_logic;
SIGNAL \used_counter~118_combout\ : std_logic;
SIGNAL \used_counter~122_combout\ : std_logic;
SIGNAL \used_counter~124_combout\ : std_logic;
SIGNAL \used_counter~125_combout\ : std_logic;
SIGNAL \used_counter~126_combout\ : std_logic;
SIGNAL \used_counter~127_combout\ : std_logic;
SIGNAL \used_counter~128_combout\ : std_logic;
SIGNAL \used_counter~130_combout\ : std_logic;
SIGNAL \used_counter~132_combout\ : std_logic;
SIGNAL \used_counter~133_combout\ : std_logic;
SIGNAL \used_counter~140_combout\ : std_logic;
SIGNAL \used_counter~149_combout\ : std_logic;
SIGNAL \used_counter~150_combout\ : std_logic;
SIGNAL \used_counter~153_combout\ : std_logic;
SIGNAL \used_counter~154_combout\ : std_logic;
SIGNAL \used_counter~158_combout\ : std_logic;
SIGNAL \used_counter~159_combout\ : std_logic;
SIGNAL \used_counter~160_combout\ : std_logic;
SIGNAL \used_counter~161_combout\ : std_logic;
SIGNAL \used_counter~162_combout\ : std_logic;
SIGNAL \t|Equal0~2_combout\ : std_logic;
SIGNAL \t|Equal0~5_combout\ : std_logic;
SIGNAL \t|Equal0~7_combout\ : std_logic;
SIGNAL \t|counter~3_combout\ : std_logic;
SIGNAL \t|counter~4_combout\ : std_logic;
SIGNAL \t|counter~5_combout\ : std_logic;
SIGNAL \t|counter~7_combout\ : std_logic;
SIGNAL \t|counter~8_combout\ : std_logic;
SIGNAL \t|counter~10_combout\ : std_logic;
SIGNAL \t|counter~13_combout\ : std_logic;
SIGNAL \t|counter~23_combout\ : std_logic;
SIGNAL \t|counter~24_combout\ : std_logic;
SIGNAL \t|counter~25_combout\ : std_logic;
SIGNAL \t|counter~27_combout\ : std_logic;
SIGNAL \t|counter~28_combout\ : std_logic;
SIGNAL \used_counter~164_combout\ : std_logic;
SIGNAL \used_counter~166_combout\ : std_logic;
SIGNAL \used_counter~169_combout\ : std_logic;
SIGNAL \used_counter~170_combout\ : std_logic;
SIGNAL \used_counter~172_combout\ : std_logic;
SIGNAL \used_counter~174_combout\ : std_logic;
SIGNAL \used_counter~176_combout\ : std_logic;
SIGNAL \used_counter~180_combout\ : std_logic;
SIGNAL \used_counter~181_combout\ : std_logic;
SIGNAL \clk~combout\ : std_logic;
SIGNAL \clk~clkctrl_outclk\ : std_logic;
SIGNAL \b1~combout\ : std_logic;
SIGNAL \rst~combout\ : std_logic;
SIGNAL \used_counter~168_combout\ : std_logic;
SIGNAL \b4~combout\ : std_logic;
SIGNAL \b2~combout\ : std_logic;
SIGNAL \pressedIndex~7_combout\ : std_logic;
SIGNAL \t|counter~20_combout\ : std_logic;
SIGNAL \t|counter~18_combout\ : std_logic;
SIGNAL \t|counter~15_combout\ : std_logic;
SIGNAL \t|counter~6_combout\ : std_logic;
SIGNAL \t|counter~1_combout\ : std_logic;
SIGNAL \t|Add0~0_combout\ : std_logic;
SIGNAL \t|counter~0_combout\ : std_logic;
SIGNAL \t|Add0~1\ : std_logic;
SIGNAL \t|Add0~3\ : std_logic;
SIGNAL \t|Add0~4_combout\ : std_logic;
SIGNAL \t|counter~2_combout\ : std_logic;
SIGNAL \t|Add0~5\ : std_logic;
SIGNAL \t|Add0~7\ : std_logic;
SIGNAL \t|Add0~9\ : std_logic;
SIGNAL \t|Add0~11\ : std_logic;
SIGNAL \t|Add0~13\ : std_logic;
SIGNAL \t|Add0~15\ : std_logic;
SIGNAL \t|Add0~17\ : std_logic;
SIGNAL \t|Add0~18_combout\ : std_logic;
SIGNAL \t|counter~9_combout\ : std_logic;
SIGNAL \t|Add0~19\ : std_logic;
SIGNAL \t|Add0~21\ : std_logic;
SIGNAL \t|Add0~22_combout\ : std_logic;
SIGNAL \t|counter~11_combout\ : std_logic;
SIGNAL \t|Add0~23\ : std_logic;
SIGNAL \t|Add0~24_combout\ : std_logic;
SIGNAL \t|counter~12_combout\ : std_logic;
SIGNAL \t|Add0~25\ : std_logic;
SIGNAL \t|Add0~27\ : std_logic;
SIGNAL \t|Add0~28_combout\ : std_logic;
SIGNAL \t|counter~14_combout\ : std_logic;
SIGNAL \t|Add0~29\ : std_logic;
SIGNAL \t|Add0~31\ : std_logic;
SIGNAL \t|Add0~32_combout\ : std_logic;
SIGNAL \t|counter~16_combout\ : std_logic;
SIGNAL \t|Add0~33\ : std_logic;
SIGNAL \t|Add0~35\ : std_logic;
SIGNAL \t|Add0~36_combout\ : std_logic;
SIGNAL \t|counter~17_combout\ : std_logic;
SIGNAL \t|Add0~37\ : std_logic;
SIGNAL \t|Add0~38_combout\ : std_logic;
SIGNAL \t|counter~19_combout\ : std_logic;
SIGNAL \t|Add0~39\ : std_logic;
SIGNAL \t|Add0~40_combout\ : std_logic;
SIGNAL \t|counter~22_combout\ : std_logic;
SIGNAL \t|counter~21_combout\ : std_logic;
SIGNAL \t|Add0~41\ : std_logic;
SIGNAL \t|Add0~43\ : std_logic;
SIGNAL \t|Add0~45\ : std_logic;
SIGNAL \t|Add0~46_combout\ : std_logic;
SIGNAL \t|Add0~42_combout\ : std_logic;
SIGNAL \t|Equal0~6_combout\ : std_logic;
SIGNAL \t|counter~31_combout\ : std_logic;
SIGNAL \t|counter~29_combout\ : std_logic;
SIGNAL \t|Add0~47\ : std_logic;
SIGNAL \t|Add0~49\ : std_logic;
SIGNAL \t|Add0~50_combout\ : std_logic;
SIGNAL \t|counter~26_combout\ : std_logic;
SIGNAL \t|Add0~51\ : std_logic;
SIGNAL \t|Add0~53\ : std_logic;
SIGNAL \t|Add0~55\ : std_logic;
SIGNAL \t|Add0~57\ : std_logic;
SIGNAL \t|Add0~59\ : std_logic;
SIGNAL \t|Add0~60_combout\ : std_logic;
SIGNAL \t|counter~30_combout\ : std_logic;
SIGNAL \t|Add0~61\ : std_logic;
SIGNAL \t|Add0~62_combout\ : std_logic;
SIGNAL \t|Add0~58_combout\ : std_logic;
SIGNAL \t|Add0~56_combout\ : std_logic;
SIGNAL \t|Equal0~8_combout\ : std_logic;
SIGNAL \t|Equal0~9_combout\ : std_logic;
SIGNAL \t|Add0~26_combout\ : std_logic;
SIGNAL \t|Equal0~3_combout\ : std_logic;
SIGNAL \t|Add0~6_combout\ : std_logic;
SIGNAL \t|Add0~2_combout\ : std_logic;
SIGNAL \t|Equal0~0_combout\ : std_logic;
SIGNAL \t|Add0~8_combout\ : std_logic;
SIGNAL \t|Add0~10_combout\ : std_logic;
SIGNAL \t|Add0~14_combout\ : std_logic;
SIGNAL \t|Equal0~1_combout\ : std_logic;
SIGNAL \t|Equal0~4_combout\ : std_logic;
SIGNAL \t|Equal0~10_combout\ : std_logic;
SIGNAL \t|timedClk~0_combout\ : std_logic;
SIGNAL \t|timedClk~regout\ : std_logic;
SIGNAL \pressedIndex[2]~6_combout\ : std_logic;
SIGNAL \b5~combout\ : std_logic;
SIGNAL \pressedIndex~3_combout\ : std_logic;
SIGNAL \pressedIndex~2_combout\ : std_logic;
SIGNAL \b3~combout\ : std_logic;
SIGNAL \pressedIndex~0_combout\ : std_logic;
SIGNAL \pressedIndex~1_combout\ : std_logic;
SIGNAL \always0~1_combout\ : std_logic;
SIGNAL \timer~3_combout\ : std_logic;
SIGNAL \timer[1]~0_combout\ : std_logic;
SIGNAL \timer~10_combout\ : std_logic;
SIGNAL \Add0~0_combout\ : std_logic;
SIGNAL \timer~2_combout\ : std_logic;
SIGNAL \Add0~1\ : std_logic;
SIGNAL \Add0~3\ : std_logic;
SIGNAL \Add0~5\ : std_logic;
SIGNAL \Add0~7\ : std_logic;
SIGNAL \Add0~9\ : std_logic;
SIGNAL \Add0~10_combout\ : std_logic;
SIGNAL \timer~7_combout\ : std_logic;
SIGNAL \Add0~11\ : std_logic;
SIGNAL \Add0~13\ : std_logic;
SIGNAL \Add0~14_combout\ : std_logic;
SIGNAL \timer~5_combout\ : std_logic;
SIGNAL \Add0~15\ : std_logic;
SIGNAL \Add0~16_combout\ : std_logic;
SIGNAL \timer~4_combout\ : std_logic;
SIGNAL \Add0~17\ : std_logic;
SIGNAL \Add0~18_combout\ : std_logic;
SIGNAL \used_counter~60_combout\ : std_logic;
SIGNAL \used_counter~165_combout\ : std_logic;
SIGNAL \pressedIndex~4_combout\ : std_logic;
SIGNAL \pressedIndex~5_combout\ : std_logic;
SIGNAL \always0~5_combout\ : std_logic;
SIGNAL \used_counter~152_combout\ : std_logic;
SIGNAL \used_counter~155_combout\ : std_logic;
SIGNAL \used_counter[4][9]~regout\ : std_logic;
SIGNAL \used_counter~83_combout\ : std_logic;
SIGNAL \index_value~21_combout\ : std_logic;
SIGNAL \always0~2_combout\ : std_logic;
SIGNAL \used_counter~173_combout\ : std_logic;
SIGNAL \used_counter~142_combout\ : std_logic;
SIGNAL \used_counter[3][9]~regout\ : std_logic;
SIGNAL \used_counter~71_combout\ : std_logic;
SIGNAL \index_value~22_combout\ : std_logic;
SIGNAL \used_counter~143_combout\ : std_logic;
SIGNAL \used_counter[3][8]~regout\ : std_logic;
SIGNAL \used_counter~72_combout\ : std_logic;
SIGNAL \always0~0_combout\ : std_logic;
SIGNAL \used_counter~52_combout\ : std_logic;
SIGNAL \used_counter~106_combout\ : std_logic;
SIGNAL \used_counter~107_combout\ : std_logic;
SIGNAL \used_counter[1][7]~regout\ : std_logic;
SIGNAL \index_value~4_combout\ : std_logic;
SIGNAL \index_value~25_combout\ : std_logic;
SIGNAL \index_value~26_combout\ : std_logic;
SIGNAL \used_counter~129_combout\ : std_logic;
SIGNAL \used_counter[2][6]~regout\ : std_logic;
SIGNAL \used_counter~98_combout\ : std_logic;
SIGNAL \used_counter[0][6]~regout\ : std_logic;
SIGNAL \index_value~6_combout\ : std_logic;
SIGNAL \index_value~27_combout\ : std_logic;
SIGNAL \index_value~28_combout\ : std_logic;
SIGNAL \used_counter~111_combout\ : std_logic;
SIGNAL \used_counter[1][5]~regout\ : std_logic;
SIGNAL \index_value~8_combout\ : std_logic;
SIGNAL \index_value~29_combout\ : std_logic;
SIGNAL \index_value~30_combout\ : std_logic;
SIGNAL \Add0~8_combout\ : std_logic;
SIGNAL \used_counter~178_combout\ : std_logic;
SIGNAL \used_counter~147_combout\ : std_logic;
SIGNAL \used_counter[3][4]~regout\ : std_logic;
SIGNAL \used_counter~76_combout\ : std_logic;
SIGNAL \used_counter~171_combout\ : std_logic;
SIGNAL \used_counter~100_combout\ : std_logic;
SIGNAL \used_counter[0][3]~regout\ : std_logic;
SIGNAL \index_value~12_combout\ : std_logic;
SIGNAL \index_value~33_combout\ : std_logic;
SIGNAL \index_value~34_combout\ : std_logic;
SIGNAL \Add0~4_combout\ : std_logic;
SIGNAL \used_counter~67_combout\ : std_logic;
SIGNAL \used_counter~136_combout\ : std_logic;
SIGNAL \used_counter~137_combout\ : std_logic;
SIGNAL \used_counter[2][2]~regout\ : std_logic;
SIGNAL \index_value~35_combout\ : std_logic;
SIGNAL \index_value~36_combout\ : std_logic;
SIGNAL \Add0~2_combout\ : std_logic;
SIGNAL \used_counter~68_combout\ : std_logic;
SIGNAL \used_counter~138_combout\ : std_logic;
SIGNAL \used_counter~139_combout\ : std_logic;
SIGNAL \used_counter[2][1]~regout\ : std_logic;
SIGNAL \used_counter~163_combout\ : std_logic;
SIGNAL \used_counter~92_combout\ : std_logic;
SIGNAL \used_counter[0][1]~regout\ : std_logic;
SIGNAL \used_counter~119_combout\ : std_logic;
SIGNAL \used_counter[1][1]~regout\ : std_logic;
SIGNAL \index_value~16_combout\ : std_logic;
SIGNAL \index_value~37_combout\ : std_logic;
SIGNAL \index_value~38_combout\ : std_logic;
SIGNAL \used_counter~59_combout\ : std_logic;
SIGNAL \used_counter~120_combout\ : std_logic;
SIGNAL \used_counter~121_combout\ : std_logic;
SIGNAL \used_counter[1][0]~regout\ : std_logic;
SIGNAL \index_value~39_combout\ : std_logic;
SIGNAL \index_value~41_combout\ : std_logic;
SIGNAL \index_value~42_combout\ : std_logic;
SIGNAL \LessThan2~1_cout\ : std_logic;
SIGNAL \LessThan2~3_cout\ : std_logic;
SIGNAL \LessThan2~5_cout\ : std_logic;
SIGNAL \LessThan2~7_cout\ : std_logic;
SIGNAL \LessThan2~9_cout\ : std_logic;
SIGNAL \LessThan2~11_cout\ : std_logic;
SIGNAL \LessThan2~13_cout\ : std_logic;
SIGNAL \LessThan2~15_cout\ : std_logic;
SIGNAL \LessThan2~17_cout\ : std_logic;
SIGNAL \LessThan2~18_combout\ : std_logic;
SIGNAL \index~0_combout\ : std_logic;
SIGNAL \index~1_combout\ : std_logic;
SIGNAL \used_counter~103_combout\ : std_logic;
SIGNAL \used_counter[1][9]~regout\ : std_logic;
SIGNAL \index_value~0_combout\ : std_logic;
SIGNAL \used_counter~123_combout\ : std_logic;
SIGNAL \used_counter[2][9]~regout\ : std_logic;
SIGNAL \index_value~20_combout\ : std_logic;
SIGNAL \index_value~43_combout\ : std_logic;
SIGNAL \index_value~44_combout\ : std_logic;
SIGNAL \used_counter~156_combout\ : std_logic;
SIGNAL \used_counter[4][8]~regout\ : std_logic;
SIGNAL \used_counter~84_combout\ : std_logic;
SIGNAL \used_counter~157_combout\ : std_logic;
SIGNAL \used_counter[4][7]~regout\ : std_logic;
SIGNAL \used_counter~85_combout\ : std_logic;
SIGNAL \Add0~12_combout\ : std_logic;
SIGNAL \index_value~49_combout\ : std_logic;
SIGNAL \index_value~50_combout\ : std_logic;
SIGNAL \used_counter~70_combout\ : std_logic;
SIGNAL \used_counter~177_combout\ : std_logic;
SIGNAL \used_counter~146_combout\ : std_logic;
SIGNAL \used_counter[3][5]~regout\ : std_logic;
SIGNAL \index_value~51_combout\ : std_logic;
SIGNAL \index_value~52_combout\ : std_logic;
SIGNAL \used_counter~112_combout\ : std_logic;
SIGNAL \used_counter~113_combout\ : std_logic;
SIGNAL \used_counter[1][4]~regout\ : std_logic;
SIGNAL \index_value~10_combout\ : std_logic;
SIGNAL \index_value~31_combout\ : std_logic;
SIGNAL \index_value~53_combout\ : std_logic;
SIGNAL \index_value~54_combout\ : std_logic;
SIGNAL \Add0~6_combout\ : std_logic;
SIGNAL \used_counter~179_combout\ : std_logic;
SIGNAL \used_counter~148_combout\ : std_logic;
SIGNAL \used_counter[3][3]~regout\ : std_logic;
SIGNAL \index_value~55_combout\ : std_logic;
SIGNAL \index_value~56_combout\ : std_logic;
SIGNAL \index_value~57_combout\ : std_logic;
SIGNAL \index_value~58_combout\ : std_logic;
SIGNAL \used_counter~81_combout\ : std_logic;
SIGNAL \used_counter~182_combout\ : std_logic;
SIGNAL \used_counter~151_combout\ : std_logic;
SIGNAL \used_counter[3][0]~regout\ : std_logic;
SIGNAL \index_value~62_combout\ : std_logic;
SIGNAL \index_value~63_combout\ : std_logic;
SIGNAL \LessThan3~1_cout\ : std_logic;
SIGNAL \LessThan3~3_cout\ : std_logic;
SIGNAL \LessThan3~5_cout\ : std_logic;
SIGNAL \LessThan3~7_cout\ : std_logic;
SIGNAL \LessThan3~9_cout\ : std_logic;
SIGNAL \LessThan3~11_cout\ : std_logic;
SIGNAL \LessThan3~13_cout\ : std_logic;
SIGNAL \LessThan3~15_cout\ : std_logic;
SIGNAL \LessThan3~17_cout\ : std_logic;
SIGNAL \LessThan3~18_combout\ : std_logic;
SIGNAL \used_counter~91_combout\ : std_logic;
SIGNAL \used_counter~94_combout\ : std_logic;
SIGNAL \used_counter[0][9]~regout\ : std_logic;
SIGNAL \used_counter~42_combout\ : std_logic;
SIGNAL \used_counter~50_combout\ : std_logic;
SIGNAL \used_counter~105_combout\ : std_logic;
SIGNAL \used_counter[1][8]~regout\ : std_logic;
SIGNAL \used_counter~51_combout\ : std_logic;
SIGNAL \used_counter~167_combout\ : std_logic;
SIGNAL \used_counter~96_combout\ : std_logic;
SIGNAL \used_counter[0][7]~regout\ : std_logic;
SIGNAL \used_counter~44_combout\ : std_logic;
SIGNAL \used_counter~109_combout\ : std_logic;
SIGNAL \used_counter[1][6]~regout\ : std_logic;
SIGNAL \used_counter~53_combout\ : std_logic;
SIGNAL \used_counter~54_combout\ : std_logic;
SIGNAL \used_counter~48_combout\ : std_logic;
SIGNAL \used_counter~116_combout\ : std_logic;
SIGNAL \used_counter~117_combout\ : std_logic;
SIGNAL \used_counter[1][2]~regout\ : std_logic;
SIGNAL \used_counter~57_combout\ : std_logic;
SIGNAL \used_counter~40_combout\ : std_logic;
SIGNAL \LessThan0~1_cout\ : std_logic;
SIGNAL \LessThan0~3_cout\ : std_logic;
SIGNAL \LessThan0~5_cout\ : std_logic;
SIGNAL \LessThan0~7_cout\ : std_logic;
SIGNAL \LessThan0~9_cout\ : std_logic;
SIGNAL \LessThan0~11_cout\ : std_logic;
SIGNAL \LessThan0~13_cout\ : std_logic;
SIGNAL \LessThan0~15_cout\ : std_logic;
SIGNAL \LessThan0~17_cout\ : std_logic;
SIGNAL \LessThan0~18_combout\ : std_logic;
SIGNAL \index_value~1_combout\ : std_logic;
SIGNAL \index_value~2_combout\ : std_logic;
SIGNAL \index_value~3_combout\ : std_logic;
SIGNAL \used_counter~62_combout\ : std_logic;
SIGNAL \index_value~7_combout\ : std_logic;
SIGNAL \index_value~9_combout\ : std_logic;
SIGNAL \index_value~11_combout\ : std_logic;
SIGNAL \index_value~13_combout\ : std_logic;
SIGNAL \used_counter~101_combout\ : std_logic;
SIGNAL \used_counter[0][2]~regout\ : std_logic;
SIGNAL \index_value~14_combout\ : std_logic;
SIGNAL \index_value~15_combout\ : std_logic;
SIGNAL \index_value~17_combout\ : std_logic;
SIGNAL \used_counter~93_combout\ : std_logic;
SIGNAL \used_counter[0][0]~regout\ : std_logic;
SIGNAL \index_value~18_combout\ : std_logic;
SIGNAL \index_value~19_combout\ : std_logic;
SIGNAL \LessThan1~1_cout\ : std_logic;
SIGNAL \LessThan1~3_cout\ : std_logic;
SIGNAL \LessThan1~5_cout\ : std_logic;
SIGNAL \LessThan1~7_cout\ : std_logic;
SIGNAL \LessThan1~9_cout\ : std_logic;
SIGNAL \LessThan1~11_cout\ : std_logic;
SIGNAL \LessThan1~13_cout\ : std_logic;
SIGNAL \LessThan1~15_cout\ : std_logic;
SIGNAL \LessThan1~17_cout\ : std_logic;
SIGNAL \LessThan1~18_combout\ : std_logic;
SIGNAL \index~2_combout\ : std_logic;
SIGNAL \used_counter~97_combout\ : std_logic;
SIGNAL \used_counter[0][4]~regout\ : std_logic;
SIGNAL \used_counter~45_combout\ : std_logic;
SIGNAL \WideOr0~0_combout\ : std_logic;
SIGNAL \used_counter~99_combout\ : std_logic;
SIGNAL \used_counter[0][5]~regout\ : std_logic;
SIGNAL \used_counter~47_combout\ : std_logic;
SIGNAL \used_counter~46_combout\ : std_logic;
SIGNAL \WideOr0~1_combout\ : std_logic;
SIGNAL \WideOr0~2_combout\ : std_logic;
SIGNAL \WideOr5~0_combout\ : std_logic;
SIGNAL \l1~reg0_regout\ : std_logic;
SIGNAL \WideOr1~0_combout\ : std_logic;
SIGNAL \used_counter~58_combout\ : std_logic;
SIGNAL \used_counter~114_combout\ : std_logic;
SIGNAL \used_counter~115_combout\ : std_logic;
SIGNAL \used_counter[1][3]~regout\ : std_logic;
SIGNAL \used_counter~56_combout\ : std_logic;
SIGNAL \WideOr1~1_combout\ : std_logic;
SIGNAL \WideOr1~2_combout\ : std_logic;
SIGNAL \WideOr6~0_combout\ : std_logic;
SIGNAL \l2~reg0_regout\ : std_logic;
SIGNAL \used_counter~61_combout\ : std_logic;
SIGNAL \used_counter~63_combout\ : std_logic;
SIGNAL \WideOr2~0_combout\ : std_logic;
SIGNAL \used_counter~141_combout\ : std_logic;
SIGNAL \used_counter[2][0]~regout\ : std_logic;
SIGNAL \used_counter~69_combout\ : std_logic;
SIGNAL \used_counter~131_combout\ : std_logic;
SIGNAL \used_counter[2][5]~regout\ : std_logic;
SIGNAL \used_counter~64_combout\ : std_logic;
SIGNAL \used_counter~134_combout\ : std_logic;
SIGNAL \used_counter~135_combout\ : std_logic;
SIGNAL \used_counter[2][3]~regout\ : std_logic;
SIGNAL \used_counter~66_combout\ : std_logic;
SIGNAL \WideOr2~1_combout\ : std_logic;
SIGNAL \WideOr2~combout\ : std_logic;
SIGNAL \WideOr7~0_combout\ : std_logic;
SIGNAL \l3~reg0_regout\ : std_logic;
SIGNAL \WideOr8~0_combout\ : std_logic;
SIGNAL \l4~reg0_regout\ : std_logic;
SIGNAL \used_counter~79_combout\ : std_logic;
SIGNAL \used_counter~80_combout\ : std_logic;
SIGNAL \used_counter~145_combout\ : std_logic;
SIGNAL \used_counter[3][6]~regout\ : std_logic;
SIGNAL \used_counter~74_combout\ : std_logic;
SIGNAL \used_counter~175_combout\ : std_logic;
SIGNAL \used_counter~144_combout\ : std_logic;
SIGNAL \used_counter[3][7]~regout\ : std_logic;
SIGNAL \used_counter~73_combout\ : std_logic;
SIGNAL \WideOr3~0_combout\ : std_logic;
SIGNAL \WideOr3~2_combout\ : std_logic;
SIGNAL \always0~3_combout\ : std_logic;
SIGNAL \always0~4_combout\ : std_logic;
SIGNAL \WideOr9~0_combout\ : std_logic;
SIGNAL \l5~reg0_regout\ : std_logic;
SIGNAL pressedIndex : std_logic_vector(3 DOWNTO 0);
SIGNAL timer : std_logic_vector(9 DOWNTO 0);
SIGNAL \t|counter\ : std_logic_vector(31 DOWNTO 0);

BEGIN

ww_clk <= clk;
ww_rst <= rst;
ww_b1 <= b1;
ww_b2 <= b2;
ww_b3 <= b3;
ww_b4 <= b4;
ww_b5 <= b5;
l1 <= ww_l1;
l2 <= ww_l2;
l3 <= ww_l3;
l4 <= ww_l4;
l5 <= ww_l5;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\clk~clkctrl_INCLK_bus\ <= (gnd & gnd & gnd & \clk~combout\);

-- Location: LCCOMB_X24_Y31_N12
\t|Add0~12\ : cycloneii_lcell_comb
-- Equation(s):
-- \t|Add0~12_combout\ = (\t|counter\(6) & (\t|Add0~11\ $ (GND))) # (!\t|counter\(6) & (!\t|Add0~11\ & VCC))
-- \t|Add0~13\ = CARRY((\t|counter\(6) & !\t|Add0~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \t|counter\(6),
	datad => VCC,
	cin => \t|Add0~11\,
	combout => \t|Add0~12_combout\,
	cout => \t|Add0~13\);

-- Location: LCCOMB_X24_Y31_N16
\t|Add0~16\ : cycloneii_lcell_comb
-- Equation(s):
-- \t|Add0~16_combout\ = (\t|counter\(8) & (\t|Add0~15\ $ (GND))) # (!\t|counter\(8) & (!\t|Add0~15\ & VCC))
-- \t|Add0~17\ = CARRY((\t|counter\(8) & !\t|Add0~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \t|counter\(8),
	datad => VCC,
	cin => \t|Add0~15\,
	combout => \t|Add0~16_combout\,
	cout => \t|Add0~17\);

-- Location: LCCOMB_X24_Y31_N20
\t|Add0~20\ : cycloneii_lcell_comb
-- Equation(s):
-- \t|Add0~20_combout\ = (\t|counter\(10) & (\t|Add0~19\ $ (GND))) # (!\t|counter\(10) & (!\t|Add0~19\ & VCC))
-- \t|Add0~21\ = CARRY((\t|counter\(10) & !\t|Add0~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \t|counter\(10),
	datad => VCC,
	cin => \t|Add0~19\,
	combout => \t|Add0~20_combout\,
	cout => \t|Add0~21\);

-- Location: LCCOMB_X24_Y31_N30
\t|Add0~30\ : cycloneii_lcell_comb
-- Equation(s):
-- \t|Add0~30_combout\ = (\t|counter\(15) & (!\t|Add0~29\)) # (!\t|counter\(15) & ((\t|Add0~29\) # (GND)))
-- \t|Add0~31\ = CARRY((!\t|Add0~29\) # (!\t|counter\(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \t|counter\(15),
	datad => VCC,
	cin => \t|Add0~29\,
	combout => \t|Add0~30_combout\,
	cout => \t|Add0~31\);

-- Location: LCCOMB_X24_Y30_N2
\t|Add0~34\ : cycloneii_lcell_comb
-- Equation(s):
-- \t|Add0~34_combout\ = (\t|counter\(17) & (!\t|Add0~33\)) # (!\t|counter\(17) & ((\t|Add0~33\) # (GND)))
-- \t|Add0~35\ = CARRY((!\t|Add0~33\) # (!\t|counter\(17)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \t|counter\(17),
	datad => VCC,
	cin => \t|Add0~33\,
	combout => \t|Add0~34_combout\,
	cout => \t|Add0~35\);

-- Location: LCCOMB_X24_Y30_N12
\t|Add0~44\ : cycloneii_lcell_comb
-- Equation(s):
-- \t|Add0~44_combout\ = (\t|counter\(22) & (\t|Add0~43\ $ (GND))) # (!\t|counter\(22) & (!\t|Add0~43\ & VCC))
-- \t|Add0~45\ = CARRY((\t|counter\(22) & !\t|Add0~43\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \t|counter\(22),
	datad => VCC,
	cin => \t|Add0~43\,
	combout => \t|Add0~44_combout\,
	cout => \t|Add0~45\);

-- Location: LCCOMB_X24_Y30_N16
\t|Add0~48\ : cycloneii_lcell_comb
-- Equation(s):
-- \t|Add0~48_combout\ = (\t|counter\(24) & (\t|Add0~47\ $ (GND))) # (!\t|counter\(24) & (!\t|Add0~47\ & VCC))
-- \t|Add0~49\ = CARRY((\t|counter\(24) & !\t|Add0~47\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \t|counter\(24),
	datad => VCC,
	cin => \t|Add0~47\,
	combout => \t|Add0~48_combout\,
	cout => \t|Add0~49\);

-- Location: LCCOMB_X24_Y30_N20
\t|Add0~52\ : cycloneii_lcell_comb
-- Equation(s):
-- \t|Add0~52_combout\ = (\t|counter\(26) & (\t|Add0~51\ $ (GND))) # (!\t|counter\(26) & (!\t|Add0~51\ & VCC))
-- \t|Add0~53\ = CARRY((\t|counter\(26) & !\t|Add0~51\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \t|counter\(26),
	datad => VCC,
	cin => \t|Add0~51\,
	combout => \t|Add0~52_combout\,
	cout => \t|Add0~53\);

-- Location: LCCOMB_X24_Y30_N22
\t|Add0~54\ : cycloneii_lcell_comb
-- Equation(s):
-- \t|Add0~54_combout\ = (\t|counter\(27) & (!\t|Add0~53\)) # (!\t|counter\(27) & ((\t|Add0~53\) # (GND)))
-- \t|Add0~55\ = CARRY((!\t|Add0~53\) # (!\t|counter\(27)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \t|counter\(27),
	datad => VCC,
	cin => \t|Add0~53\,
	combout => \t|Add0~54_combout\,
	cout => \t|Add0~55\);

-- Location: LCFF_X31_Y32_N7
\timer[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \timer~1_combout\,
	sload => VCC,
	ena => \timer[1]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => timer(1));

-- Location: LCCOMB_X30_Y33_N26
\used_counter~41\ : cycloneii_lcell_comb
-- Equation(s):
-- \used_counter~41_combout\ = (\b1~combout\ & ((\Add0~0_combout\))) # (!\b1~combout\ & (\used_counter[0][0]~regout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b1~combout\,
	datac => \used_counter[0][0]~regout\,
	datad => \Add0~0_combout\,
	combout => \used_counter~41_combout\);

-- Location: LCFF_X31_Y32_N17
\timer[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \timer~6_combout\,
	sload => VCC,
	ena => \timer[1]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => timer(6));

-- Location: LCFF_X31_Y32_N13
\timer[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \timer~8_combout\,
	sload => VCC,
	ena => \timer[1]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => timer(4));

-- Location: LCFF_X31_Y32_N11
\timer[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \timer~9_combout\,
	sload => VCC,
	ena => \timer[1]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => timer(3));

-- Location: LCFF_X31_Y32_N29
\used_counter[0][8]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \used_counter~95_combout\,
	ena => \timer[1]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \used_counter[0][8]~regout\);

-- Location: LCCOMB_X31_Y32_N30
\used_counter~43\ : cycloneii_lcell_comb
-- Equation(s):
-- \used_counter~43_combout\ = (\b1~combout\ & (\Add0~16_combout\)) # (!\b1~combout\ & ((\used_counter[0][8]~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \b1~combout\,
	datac => \Add0~16_combout\,
	datad => \used_counter[0][8]~regout\,
	combout => \used_counter~43_combout\);

-- Location: LCCOMB_X29_Y32_N12
\used_counter~49\ : cycloneii_lcell_comb
-- Equation(s):
-- \used_counter~49_combout\ = (\b1~combout\ & ((\Add0~4_combout\))) # (!\b1~combout\ & (\used_counter[0][2]~regout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \used_counter[0][2]~regout\,
	datac => \b1~combout\,
	datad => \Add0~4_combout\,
	combout => \used_counter~49_combout\);

-- Location: LCCOMB_X30_Y31_N10
\used_counter~55\ : cycloneii_lcell_comb
-- Equation(s):
-- \used_counter~55_combout\ = (\b1~combout\ & (((\used_counter[1][4]~regout\)))) # (!\b1~combout\ & ((\b2~combout\ & ((\Add0~8_combout\))) # (!\b2~combout\ & (\used_counter[1][4]~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010010110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b1~combout\,
	datab => \b2~combout\,
	datac => \used_counter[1][4]~regout\,
	datad => \Add0~8_combout\,
	combout => \used_counter~55_combout\);

-- Location: LCFF_X31_Y30_N27
\used_counter[2][8]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \used_counter~125_combout\,
	ena => \timer[1]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \used_counter[2][8]~regout\);

-- Location: LCFF_X31_Y30_N17
\used_counter[2][7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \used_counter~127_combout\,
	ena => \timer[1]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \used_counter[2][7]~regout\);

-- Location: LCCOMB_X29_Y32_N0
\index_value~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \index_value~5_combout\ = (\LessThan0~18_combout\ & (((\index_value~4_combout\)))) # (!\LessThan0~18_combout\ & ((\b1~combout\ & (\Add0~14_combout\)) # (!\b1~combout\ & ((\index_value~4_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~14_combout\,
	datab => \LessThan0~18_combout\,
	datac => \b1~combout\,
	datad => \index_value~4_combout\,
	combout => \index_value~5_combout\);

-- Location: LCFF_X31_Y30_N15
\used_counter[2][4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \used_counter~133_combout\,
	ena => \timer[1]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \used_counter[2][4]~regout\);

-- Location: LCCOMB_X31_Y29_N26
\used_counter~65\ : cycloneii_lcell_comb
-- Equation(s):
-- \used_counter~65_combout\ = (\b3~combout\ & ((\pressedIndex~2_combout\ & (\Add0~8_combout\)) # (!\pressedIndex~2_combout\ & ((\used_counter[2][4]~regout\))))) # (!\b3~combout\ & (((\used_counter[2][4]~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~8_combout\,
	datab => \b3~combout\,
	datac => \pressedIndex~2_combout\,
	datad => \used_counter[2][4]~regout\,
	combout => \used_counter~65_combout\);

-- Location: LCCOMB_X30_Y29_N24
\index_value~23\ : cycloneii_lcell_comb
-- Equation(s):
-- \index_value~23_combout\ = (\always0~1_combout\ & ((\LessThan1~18_combout\ & (\used_counter[2][8]~regout\)) # (!\LessThan1~18_combout\ & ((\index_value~2_combout\))))) # (!\always0~1_combout\ & (((\index_value~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \used_counter[2][8]~regout\,
	datab => \index_value~2_combout\,
	datac => \always0~1_combout\,
	datad => \LessThan1~18_combout\,
	combout => \index_value~23_combout\);

-- Location: LCCOMB_X30_Y29_N26
\index_value~24\ : cycloneii_lcell_comb
-- Equation(s):
-- \index_value~24_combout\ = (\index_value~21_combout\ & (\Add0~16_combout\)) # (!\index_value~21_combout\ & ((\index_value~23_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \index_value~21_combout\,
	datab => \Add0~16_combout\,
	datac => \index_value~23_combout\,
	combout => \index_value~24_combout\);

-- Location: LCCOMB_X28_Y31_N20
\used_counter~75\ : cycloneii_lcell_comb
-- Equation(s):
-- \used_counter~75_combout\ = (\used_counter~70_combout\ & ((\used_counter[3][5]~regout\))) # (!\used_counter~70_combout\ & (\Add0~10_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \used_counter~70_combout\,
	datac => \Add0~10_combout\,
	datad => \used_counter[3][5]~regout\,
	combout => \used_counter~75_combout\);

-- Location: LCCOMB_X29_Y29_N6
\index_value~32\ : cycloneii_lcell_comb
-- Equation(s):
-- \index_value~32_combout\ = (\index_value~21_combout\ & (\Add0~8_combout\)) # (!\index_value~21_combout\ & ((\index_value~31_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~8_combout\,
	datac => \index_value~31_combout\,
	datad => \index_value~21_combout\,
	combout => \index_value~32_combout\);

-- Location: LCCOMB_X29_Y33_N0
\used_counter~77\ : cycloneii_lcell_comb
-- Equation(s):
-- \used_counter~77_combout\ = (\used_counter~70_combout\ & (\used_counter[3][3]~regout\)) # (!\used_counter~70_combout\ & ((\Add0~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \used_counter~70_combout\,
	datab => \used_counter[3][3]~regout\,
	datad => \Add0~6_combout\,
	combout => \used_counter~77_combout\);

-- Location: LCFF_X29_Y31_N27
\used_counter[3][2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \used_counter~149_combout\,
	ena => \timer[1]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \used_counter[3][2]~regout\);

-- Location: LCCOMB_X29_Y31_N28
\used_counter~78\ : cycloneii_lcell_comb
-- Equation(s):
-- \used_counter~78_combout\ = (\used_counter~70_combout\ & ((\used_counter[3][2]~regout\))) # (!\used_counter~70_combout\ & (\Add0~4_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Add0~4_combout\,
	datac => \used_counter~70_combout\,
	datad => \used_counter[3][2]~regout\,
	combout => \used_counter~78_combout\);

-- Location: LCFF_X28_Y30_N7
\used_counter[3][1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \used_counter~150_combout\,
	ena => \timer[1]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \used_counter[3][1]~regout\);

-- Location: LCCOMB_X31_Y33_N18
\index_value~40\ : cycloneii_lcell_comb
-- Equation(s):
-- \index_value~40_combout\ = (\b1~combout\ & ((\LessThan0~18_combout\ & ((\index_value~39_combout\))) # (!\LessThan0~18_combout\ & (\Add0~0_combout\)))) # (!\b1~combout\ & (((\index_value~39_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b1~combout\,
	datab => \Add0~0_combout\,
	datac => \LessThan0~18_combout\,
	datad => \index_value~39_combout\,
	combout => \index_value~40_combout\);

-- Location: LCCOMB_X29_Y31_N30
\WideOr3~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \WideOr3~1_combout\ = (\used_counter~75_combout\) # ((\used_counter~78_combout\) # ((\used_counter~76_combout\) # (\used_counter~77_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \used_counter~75_combout\,
	datab => \used_counter~78_combout\,
	datac => \used_counter~76_combout\,
	datad => \used_counter~77_combout\,
	combout => \WideOr3~1_combout\);

-- Location: LCFF_X31_Y30_N5
\used_counter[4][1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \used_counter~153_combout\,
	ena => \timer[1]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \used_counter[4][1]~regout\);

-- Location: LCFF_X31_Y30_N11
\used_counter[4][0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \used_counter~154_combout\,
	ena => \timer[1]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \used_counter[4][0]~regout\);

-- Location: LCCOMB_X31_Y33_N2
\used_counter~82\ : cycloneii_lcell_comb
-- Equation(s):
-- \used_counter~82_combout\ = (\pressedIndex~0_combout\ & ((\b5~combout\ & (\Add0~0_combout\)) # (!\b5~combout\ & ((\used_counter[4][0]~regout\))))) # (!\pressedIndex~0_combout\ & (((\used_counter[4][0]~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pressedIndex~0_combout\,
	datab => \b5~combout\,
	datac => \Add0~0_combout\,
	datad => \used_counter[4][0]~regout\,
	combout => \used_counter~82_combout\);

-- Location: LCFF_X31_Y30_N31
\used_counter[4][6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \used_counter~158_combout\,
	ena => \timer[1]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \used_counter[4][6]~regout\);

-- Location: LCCOMB_X31_Y34_N24
\used_counter~86\ : cycloneii_lcell_comb
-- Equation(s):
-- \used_counter~86_combout\ = (\b5~combout\ & ((\pressedIndex~0_combout\ & (\Add0~12_combout\)) # (!\pressedIndex~0_combout\ & ((\used_counter[4][6]~regout\))))) # (!\b5~combout\ & (((\used_counter[4][6]~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b5~combout\,
	datab => \pressedIndex~0_combout\,
	datac => \Add0~12_combout\,
	datad => \used_counter[4][6]~regout\,
	combout => \used_counter~86_combout\);

-- Location: LCCOMB_X31_Y34_N26
\WideOr4~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \WideOr4~0_combout\ = (\used_counter~86_combout\) # ((\used_counter~83_combout\) # ((\used_counter~85_combout\) # (\used_counter~84_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \used_counter~86_combout\,
	datab => \used_counter~83_combout\,
	datac => \used_counter~85_combout\,
	datad => \used_counter~84_combout\,
	combout => \WideOr4~0_combout\);

-- Location: LCFF_X31_Y30_N25
\used_counter[4][5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \used_counter~159_combout\,
	ena => \timer[1]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \used_counter[4][5]~regout\);

-- Location: LCCOMB_X31_Y34_N16
\used_counter~87\ : cycloneii_lcell_comb
-- Equation(s):
-- \used_counter~87_combout\ = (\b5~combout\ & ((\pressedIndex~0_combout\ & (\Add0~10_combout\)) # (!\pressedIndex~0_combout\ & ((\used_counter[4][5]~regout\))))) # (!\b5~combout\ & (((\used_counter[4][5]~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b5~combout\,
	datab => \pressedIndex~0_combout\,
	datac => \Add0~10_combout\,
	datad => \used_counter[4][5]~regout\,
	combout => \used_counter~87_combout\);

-- Location: LCFF_X31_Y34_N23
\used_counter[4][4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \used_counter~160_combout\,
	ena => \timer[1]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \used_counter[4][4]~regout\);

-- Location: LCCOMB_X31_Y34_N28
\used_counter~88\ : cycloneii_lcell_comb
-- Equation(s):
-- \used_counter~88_combout\ = (\b5~combout\ & ((\pressedIndex~0_combout\ & (\Add0~8_combout\)) # (!\pressedIndex~0_combout\ & ((\used_counter[4][4]~regout\))))) # (!\b5~combout\ & (((\used_counter[4][4]~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b5~combout\,
	datab => \pressedIndex~0_combout\,
	datac => \Add0~8_combout\,
	datad => \used_counter[4][4]~regout\,
	combout => \used_counter~88_combout\);

-- Location: LCFF_X31_Y30_N19
\used_counter[4][3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \used_counter~161_combout\,
	ena => \timer[1]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \used_counter[4][3]~regout\);

-- Location: LCCOMB_X31_Y33_N0
\used_counter~89\ : cycloneii_lcell_comb
-- Equation(s):
-- \used_counter~89_combout\ = (\pressedIndex~0_combout\ & ((\b5~combout\ & ((\Add0~6_combout\))) # (!\b5~combout\ & (\used_counter[4][3]~regout\)))) # (!\pressedIndex~0_combout\ & (((\used_counter[4][3]~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100001110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pressedIndex~0_combout\,
	datab => \b5~combout\,
	datac => \used_counter[4][3]~regout\,
	datad => \Add0~6_combout\,
	combout => \used_counter~89_combout\);

-- Location: LCFF_X31_Y34_N3
\used_counter[4][2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \used_counter~162_combout\,
	ena => \timer[1]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \used_counter[4][2]~regout\);

-- Location: LCCOMB_X31_Y34_N12
\used_counter~90\ : cycloneii_lcell_comb
-- Equation(s):
-- \used_counter~90_combout\ = (\b5~combout\ & ((\pressedIndex~0_combout\ & (\Add0~4_combout\)) # (!\pressedIndex~0_combout\ & ((\used_counter[4][2]~regout\))))) # (!\b5~combout\ & (((\used_counter[4][2]~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b5~combout\,
	datab => \pressedIndex~0_combout\,
	datac => \Add0~4_combout\,
	datad => \used_counter[4][2]~regout\,
	combout => \used_counter~90_combout\);

-- Location: LCCOMB_X31_Y34_N14
\WideOr4~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \WideOr4~1_combout\ = (\used_counter~90_combout\) # ((\used_counter~88_combout\) # ((\used_counter~87_combout\) # (\used_counter~89_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \used_counter~90_combout\,
	datab => \used_counter~88_combout\,
	datac => \used_counter~87_combout\,
	datad => \used_counter~89_combout\,
	combout => \WideOr4~1_combout\);

-- Location: LCCOMB_X31_Y34_N8
\WideOr4~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \WideOr4~2_combout\ = (\used_counter~82_combout\) # ((\WideOr4~0_combout\) # ((\WideOr4~1_combout\) # (\used_counter~81_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \used_counter~82_combout\,
	datab => \WideOr4~0_combout\,
	datac => \WideOr4~1_combout\,
	datad => \used_counter~81_combout\,
	combout => \WideOr4~2_combout\);

-- Location: LCCOMB_X29_Y29_N4
\index_value~45\ : cycloneii_lcell_comb
-- Equation(s):
-- \index_value~45_combout\ = (\always0~2_combout\ & ((\LessThan2~18_combout\ & ((\used_counter[3][8]~regout\))) # (!\LessThan2~18_combout\ & (\index_value~23_combout\)))) # (!\always0~2_combout\ & (\index_value~23_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \always0~2_combout\,
	datab => \index_value~23_combout\,
	datac => \used_counter[3][8]~regout\,
	datad => \LessThan2~18_combout\,
	combout => \index_value~45_combout\);

-- Location: LCCOMB_X29_Y29_N10
\index_value~46\ : cycloneii_lcell_comb
-- Equation(s):
-- \index_value~46_combout\ = (\index_value~21_combout\ & ((\LessThan2~18_combout\ & ((\index_value~45_combout\))) # (!\LessThan2~18_combout\ & (\Add0~16_combout\)))) # (!\index_value~21_combout\ & (((\index_value~45_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \index_value~21_combout\,
	datab => \Add0~16_combout\,
	datac => \index_value~45_combout\,
	datad => \LessThan2~18_combout\,
	combout => \index_value~46_combout\);

-- Location: LCCOMB_X29_Y30_N18
\index_value~47\ : cycloneii_lcell_comb
-- Equation(s):
-- \index_value~47_combout\ = (\always0~2_combout\ & ((\LessThan2~18_combout\ & (\used_counter[3][7]~regout\)) # (!\LessThan2~18_combout\ & ((\index_value~25_combout\))))) # (!\always0~2_combout\ & (((\index_value~25_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \used_counter[3][7]~regout\,
	datab => \always0~2_combout\,
	datac => \LessThan2~18_combout\,
	datad => \index_value~25_combout\,
	combout => \index_value~47_combout\);

-- Location: LCCOMB_X29_Y30_N0
\index_value~48\ : cycloneii_lcell_comb
-- Equation(s):
-- \index_value~48_combout\ = (\index_value~21_combout\ & ((\LessThan2~18_combout\ & ((\index_value~47_combout\))) # (!\LessThan2~18_combout\ & (\Add0~14_combout\)))) # (!\index_value~21_combout\ & (((\index_value~47_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~14_combout\,
	datab => \index_value~21_combout\,
	datac => \LessThan2~18_combout\,
	datad => \index_value~47_combout\,
	combout => \index_value~48_combout\);

-- Location: LCCOMB_X28_Y30_N14
\index_value~59\ : cycloneii_lcell_comb
-- Equation(s):
-- \index_value~59_combout\ = (\always0~2_combout\ & ((\LessThan2~18_combout\ & ((\used_counter[3][1]~regout\))) # (!\LessThan2~18_combout\ & (\index_value~37_combout\)))) # (!\always0~2_combout\ & (\index_value~37_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110001001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \always0~2_combout\,
	datab => \index_value~37_combout\,
	datac => \LessThan2~18_combout\,
	datad => \used_counter[3][1]~regout\,
	combout => \index_value~59_combout\);

-- Location: LCCOMB_X29_Y30_N14
\index_value~60\ : cycloneii_lcell_comb
-- Equation(s):
-- \index_value~60_combout\ = (\index_value~21_combout\ & ((\LessThan2~18_combout\ & ((\index_value~59_combout\))) # (!\LessThan2~18_combout\ & (\Add0~2_combout\)))) # (!\index_value~21_combout\ & (((\index_value~59_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~2_combout\,
	datab => \index_value~21_combout\,
	datac => \LessThan2~18_combout\,
	datad => \index_value~59_combout\,
	combout => \index_value~60_combout\);

-- Location: LCCOMB_X31_Y33_N6
\index_value~61\ : cycloneii_lcell_comb
-- Equation(s):
-- \index_value~61_combout\ = (\always0~1_combout\ & ((\LessThan1~18_combout\ & (\used_counter[2][0]~regout\)) # (!\LessThan1~18_combout\ & ((\index_value~39_combout\))))) # (!\always0~1_combout\ & (((\index_value~39_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \used_counter[2][0]~regout\,
	datab => \always0~1_combout\,
	datac => \LessThan1~18_combout\,
	datad => \index_value~39_combout\,
	combout => \index_value~61_combout\);

-- Location: LCCOMB_X32_Y32_N8
\timer~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \timer~1_combout\ = (\Add0~2_combout\ & !\rst~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Add0~2_combout\,
	datac => \rst~combout\,
	combout => \timer~1_combout\);

-- Location: LCCOMB_X32_Y32_N18
\timer~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \timer~6_combout\ = (!\rst~combout\ & \Add0~12_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \rst~combout\,
	datad => \Add0~12_combout\,
	combout => \timer~6_combout\);

-- Location: LCCOMB_X32_Y32_N2
\timer~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \timer~8_combout\ = (\Add0~8_combout\ & !\rst~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~8_combout\,
	datac => \rst~combout\,
	combout => \timer~8_combout\);

-- Location: LCCOMB_X32_Y32_N24
\timer~9\ : cycloneii_lcell_comb
-- Equation(s):
-- \timer~9_combout\ = (\Add0~6_combout\ & !\rst~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~6_combout\,
	datac => \rst~combout\,
	combout => \timer~9_combout\);

-- Location: LCCOMB_X31_Y32_N28
\used_counter~95\ : cycloneii_lcell_comb
-- Equation(s):
-- \used_counter~95_combout\ = (\used_counter~166_combout\ & ((\index~1_combout\) # ((!\index~2_combout\) # (!\used_counter~91_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \index~1_combout\,
	datab => \used_counter~166_combout\,
	datac => \used_counter~91_combout\,
	datad => \index~2_combout\,
	combout => \used_counter~95_combout\);

-- Location: LCCOMB_X31_Y31_N14
\used_counter~102\ : cycloneii_lcell_comb
-- Equation(s):
-- \used_counter~102_combout\ = (!\rst~combout\ & \used_counter~50_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \rst~combout\,
	datad => \used_counter~50_combout\,
	combout => \used_counter~102_combout\);

-- Location: LCCOMB_X31_Y31_N0
\used_counter~104\ : cycloneii_lcell_comb
-- Equation(s):
-- \used_counter~104_combout\ = (\used_counter~51_combout\ & !\rst~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \used_counter~51_combout\,
	datad => \rst~combout\,
	combout => \used_counter~104_combout\);

-- Location: LCCOMB_X31_Y31_N26
\used_counter~108\ : cycloneii_lcell_comb
-- Equation(s):
-- \used_counter~108_combout\ = (\used_counter~53_combout\ & !\rst~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \used_counter~53_combout\,
	datad => \rst~combout\,
	combout => \used_counter~108_combout\);

-- Location: LCCOMB_X28_Y32_N20
\used_counter~110\ : cycloneii_lcell_comb
-- Equation(s):
-- \used_counter~110_combout\ = (\used_counter~54_combout\ & !\rst~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \used_counter~54_combout\,
	datac => \rst~combout\,
	combout => \used_counter~110_combout\);

-- Location: LCCOMB_X29_Y31_N20
\used_counter~118\ : cycloneii_lcell_comb
-- Equation(s):
-- \used_counter~118_combout\ = (!\rst~combout\ & \used_counter~58_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \rst~combout\,
	datad => \used_counter~58_combout\,
	combout => \used_counter~118_combout\);

-- Location: LCCOMB_X31_Y31_N16
\used_counter~122\ : cycloneii_lcell_comb
-- Equation(s):
-- \used_counter~122_combout\ = (!\rst~combout\ & \used_counter~60_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \rst~combout\,
	datad => \used_counter~60_combout\,
	combout => \used_counter~122_combout\);

-- Location: LCCOMB_X32_Y30_N8
\used_counter~124\ : cycloneii_lcell_comb
-- Equation(s):
-- \used_counter~124_combout\ = (!\rst~combout\ & \used_counter~61_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \rst~combout\,
	datad => \used_counter~61_combout\,
	combout => \used_counter~124_combout\);

-- Location: LCCOMB_X31_Y30_N26
\used_counter~125\ : cycloneii_lcell_comb
-- Equation(s):
-- \used_counter~125_combout\ = (\used_counter~124_combout\ & ((\index~2_combout\) # ((\index~1_combout\) # (!\used_counter~91_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \used_counter~124_combout\,
	datab => \index~2_combout\,
	datac => \used_counter~91_combout\,
	datad => \index~1_combout\,
	combout => \used_counter~125_combout\);

-- Location: LCCOMB_X32_Y30_N30
\used_counter~126\ : cycloneii_lcell_comb
-- Equation(s):
-- \used_counter~126_combout\ = (!\rst~combout\ & \used_counter~62_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \rst~combout\,
	datad => \used_counter~62_combout\,
	combout => \used_counter~126_combout\);

-- Location: LCCOMB_X31_Y30_N16
\used_counter~127\ : cycloneii_lcell_comb
-- Equation(s):
-- \used_counter~127_combout\ = (\used_counter~126_combout\ & ((\index~2_combout\) # ((\index~1_combout\) # (!\used_counter~91_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \used_counter~126_combout\,
	datab => \index~2_combout\,
	datac => \used_counter~91_combout\,
	datad => \index~1_combout\,
	combout => \used_counter~127_combout\);

-- Location: LCCOMB_X31_Y31_N6
\used_counter~128\ : cycloneii_lcell_comb
-- Equation(s):
-- \used_counter~128_combout\ = (!\rst~combout\ & \used_counter~63_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \rst~combout\,
	datac => \used_counter~63_combout\,
	combout => \used_counter~128_combout\);

-- Location: LCCOMB_X31_Y31_N8
\used_counter~130\ : cycloneii_lcell_comb
-- Equation(s):
-- \used_counter~130_combout\ = (\used_counter~64_combout\ & !\rst~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \used_counter~64_combout\,
	datad => \rst~combout\,
	combout => \used_counter~130_combout\);

-- Location: LCCOMB_X31_Y31_N18
\used_counter~132\ : cycloneii_lcell_comb
-- Equation(s):
-- \used_counter~132_combout\ = (!\rst~combout\ & \used_counter~65_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \rst~combout\,
	datad => \used_counter~65_combout\,
	combout => \used_counter~132_combout\);

-- Location: LCCOMB_X31_Y30_N14
\used_counter~133\ : cycloneii_lcell_comb
-- Equation(s):
-- \used_counter~133_combout\ = (\used_counter~132_combout\ & ((\index~2_combout\) # ((\index~1_combout\) # (!\used_counter~91_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \used_counter~132_combout\,
	datab => \index~2_combout\,
	datac => \used_counter~91_combout\,
	datad => \index~1_combout\,
	combout => \used_counter~133_combout\);

-- Location: LCCOMB_X31_Y31_N4
\used_counter~140\ : cycloneii_lcell_comb
-- Equation(s):
-- \used_counter~140_combout\ = (\used_counter~69_combout\ & !\rst~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \used_counter~69_combout\,
	datad => \rst~combout\,
	combout => \used_counter~140_combout\);

-- Location: LCCOMB_X29_Y31_N26
\used_counter~149\ : cycloneii_lcell_comb
-- Equation(s):
-- \used_counter~149_combout\ = (\used_counter~180_combout\ & (((\index~2_combout\) # (!\used_counter~91_combout\)) # (!\index~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010001010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \used_counter~180_combout\,
	datab => \index~1_combout\,
	datac => \index~2_combout\,
	datad => \used_counter~91_combout\,
	combout => \used_counter~149_combout\);

-- Location: LCCOMB_X28_Y30_N6
\used_counter~150\ : cycloneii_lcell_comb
-- Equation(s):
-- \used_counter~150_combout\ = (\used_counter~181_combout\ & (((\index~2_combout\) # (!\used_counter~91_combout\)) # (!\index~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010001010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \used_counter~181_combout\,
	datab => \index~1_combout\,
	datac => \index~2_combout\,
	datad => \used_counter~91_combout\,
	combout => \used_counter~150_combout\);

-- Location: LCCOMB_X31_Y30_N4
\used_counter~153\ : cycloneii_lcell_comb
-- Equation(s):
-- \used_counter~153_combout\ = (\used_counter~81_combout\ & \used_counter~152_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \used_counter~81_combout\,
	datad => \used_counter~152_combout\,
	combout => \used_counter~153_combout\);

-- Location: LCCOMB_X31_Y30_N10
\used_counter~154\ : cycloneii_lcell_comb
-- Equation(s):
-- \used_counter~154_combout\ = (\used_counter~82_combout\ & \used_counter~152_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \used_counter~82_combout\,
	datad => \used_counter~152_combout\,
	combout => \used_counter~154_combout\);

-- Location: LCCOMB_X31_Y30_N30
\used_counter~158\ : cycloneii_lcell_comb
-- Equation(s):
-- \used_counter~158_combout\ = (\used_counter~86_combout\ & \used_counter~152_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \used_counter~86_combout\,
	datad => \used_counter~152_combout\,
	combout => \used_counter~158_combout\);

-- Location: LCCOMB_X31_Y30_N24
\used_counter~159\ : cycloneii_lcell_comb
-- Equation(s):
-- \used_counter~159_combout\ = (\used_counter~87_combout\ & \used_counter~152_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \used_counter~87_combout\,
	datad => \used_counter~152_combout\,
	combout => \used_counter~159_combout\);

-- Location: LCCOMB_X31_Y34_N22
\used_counter~160\ : cycloneii_lcell_comb
-- Equation(s):
-- \used_counter~160_combout\ = (\used_counter~88_combout\ & \used_counter~152_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \used_counter~88_combout\,
	datad => \used_counter~152_combout\,
	combout => \used_counter~160_combout\);

-- Location: LCCOMB_X31_Y30_N18
\used_counter~161\ : cycloneii_lcell_comb
-- Equation(s):
-- \used_counter~161_combout\ = (\used_counter~89_combout\ & \used_counter~152_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \used_counter~89_combout\,
	datad => \used_counter~152_combout\,
	combout => \used_counter~161_combout\);

-- Location: LCCOMB_X31_Y34_N2
\used_counter~162\ : cycloneii_lcell_comb
-- Equation(s):
-- \used_counter~162_combout\ = (\used_counter~90_combout\ & \used_counter~152_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \used_counter~90_combout\,
	datad => \used_counter~152_combout\,
	combout => \used_counter~162_combout\);

-- Location: LCFF_X24_Y31_N7
\t|counter[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \t|counter~3_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \t|counter\(3));

-- Location: LCFF_X24_Y31_N11
\t|counter[7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \t|counter~4_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \t|counter\(7));

-- Location: LCFF_X24_Y31_N13
\t|counter[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \t|counter~5_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \t|counter\(6));

-- Location: LCFF_X24_Y31_N17
\t|counter[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \t|counter~7_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \t|counter\(4));

-- Location: LCFF_X24_Y31_N21
\t|counter[8]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \t|counter~8_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \t|counter\(8));

-- Location: LCFF_X24_Y31_N25
\t|counter[10]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \t|counter~10_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \t|counter\(10));

-- Location: LCCOMB_X25_Y31_N24
\t|Equal0~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \t|Equal0~2_combout\ = (\t|Add0~22_combout\) # ((\t|Add0~16_combout\) # ((\t|Add0~20_combout\) # (\t|Add0~18_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \t|Add0~22_combout\,
	datab => \t|Add0~16_combout\,
	datac => \t|Add0~20_combout\,
	datad => \t|Add0~18_combout\,
	combout => \t|Equal0~2_combout\);

-- Location: LCFF_X24_Y30_N3
\t|counter[13]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \t|counter~13_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \t|counter\(13));

-- Location: LCCOMB_X25_Y30_N12
\t|Equal0~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \t|Equal0~5_combout\ = (\t|Add0~32_combout\) # (((\t|Add0~36_combout\) # (!\t|Add0~34_combout\)) # (!\t|Add0~38_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \t|Add0~32_combout\,
	datab => \t|Add0~38_combout\,
	datac => \t|Add0~36_combout\,
	datad => \t|Add0~34_combout\,
	combout => \t|Equal0~5_combout\);

-- Location: LCFF_X25_Y30_N17
\t|counter[23]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \t|counter~23_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \t|counter\(23));

-- Location: LCFF_X24_Y30_N11
\t|counter[24]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \t|counter~24_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \t|counter\(24));

-- Location: LCFF_X24_Y30_N13
\t|counter[26]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \t|counter~25_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \t|counter\(26));

-- Location: LCFF_X24_Y30_N17
\t|counter[27]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \t|counter~27_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \t|counter\(27));

-- Location: LCCOMB_X23_Y30_N10
\t|Equal0~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \t|Equal0~7_combout\ = (\t|Add0~52_combout\) # ((\t|Add0~54_combout\) # ((\t|Add0~48_combout\) # (!\t|Add0~50_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \t|Add0~52_combout\,
	datab => \t|Add0~54_combout\,
	datac => \t|Add0~48_combout\,
	datad => \t|Add0~50_combout\,
	combout => \t|Equal0~7_combout\);

-- Location: LCFF_X24_Y30_N21
\t|counter[28]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \t|counter~28_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \t|counter\(28));

-- Location: LCCOMB_X25_Y31_N26
\t|counter~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \t|counter~3_combout\ = (!\rst~combout\ & (\t|Add0~6_combout\ & \t|Equal0~10_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \rst~combout\,
	datac => \t|Add0~6_combout\,
	datad => \t|Equal0~10_combout\,
	combout => \t|counter~3_combout\);

-- Location: LCCOMB_X25_Y31_N28
\t|counter~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \t|counter~4_combout\ = (\t|Add0~14_combout\ & (!\rst~combout\ & \t|Equal0~10_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \t|Add0~14_combout\,
	datac => \rst~combout\,
	datad => \t|Equal0~10_combout\,
	combout => \t|counter~4_combout\);

-- Location: LCCOMB_X25_Y31_N30
\t|counter~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \t|counter~5_combout\ = (\t|Add0~12_combout\ & (!\rst~combout\ & \t|Equal0~10_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \t|Add0~12_combout\,
	datac => \rst~combout\,
	datad => \t|Equal0~10_combout\,
	combout => \t|counter~5_combout\);

-- Location: LCCOMB_X25_Y31_N6
\t|counter~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \t|counter~7_combout\ = (\t|Add0~8_combout\ & (!\rst~combout\ & \t|Equal0~10_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \t|Add0~8_combout\,
	datac => \rst~combout\,
	datad => \t|Equal0~10_combout\,
	combout => \t|counter~7_combout\);

-- Location: LCCOMB_X25_Y31_N8
\t|counter~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \t|counter~8_combout\ = (\t|Add0~16_combout\ & (!\rst~combout\ & \t|Equal0~10_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \t|Add0~16_combout\,
	datac => \rst~combout\,
	datad => \t|Equal0~10_combout\,
	combout => \t|counter~8_combout\);

-- Location: LCCOMB_X25_Y31_N12
\t|counter~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \t|counter~10_combout\ = (!\rst~combout\ & (\t|Add0~20_combout\ & \t|Equal0~10_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \rst~combout\,
	datac => \t|Add0~20_combout\,
	datad => \t|Equal0~10_combout\,
	combout => \t|counter~10_combout\);

-- Location: LCCOMB_X23_Y30_N30
\t|counter~13\ : cycloneii_lcell_comb
-- Equation(s):
-- \t|counter~13_combout\ = (\t|Add0~26_combout\ & (\t|Equal0~10_combout\ & !\rst~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \t|Add0~26_combout\,
	datac => \t|Equal0~10_combout\,
	datad => \rst~combout\,
	combout => \t|counter~13_combout\);

-- Location: LCCOMB_X25_Y30_N16
\t|counter~23\ : cycloneii_lcell_comb
-- Equation(s):
-- \t|counter~23_combout\ = (\t|Add0~46_combout\ & (\t|Equal0~10_combout\ & !\rst~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \t|Add0~46_combout\,
	datab => \t|Equal0~10_combout\,
	datac => \rst~combout\,
	combout => \t|counter~23_combout\);

-- Location: LCCOMB_X23_Y30_N24
\t|counter~24\ : cycloneii_lcell_comb
-- Equation(s):
-- \t|counter~24_combout\ = (\t|Add0~48_combout\ & (!\rst~combout\ & \t|Equal0~10_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \t|Add0~48_combout\,
	datab => \rst~combout\,
	datac => \t|Equal0~10_combout\,
	combout => \t|counter~24_combout\);

-- Location: LCCOMB_X23_Y30_N14
\t|counter~25\ : cycloneii_lcell_comb
-- Equation(s):
-- \t|counter~25_combout\ = (\t|Add0~52_combout\ & (\t|Equal0~10_combout\ & !\rst~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \t|Add0~52_combout\,
	datac => \t|Equal0~10_combout\,
	datad => \rst~combout\,
	combout => \t|counter~25_combout\);

-- Location: LCCOMB_X23_Y30_N2
\t|counter~27\ : cycloneii_lcell_comb
-- Equation(s):
-- \t|counter~27_combout\ = (\t|Add0~54_combout\ & (\t|Equal0~10_combout\ & !\rst~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \t|Add0~54_combout\,
	datac => \t|Equal0~10_combout\,
	datad => \rst~combout\,
	combout => \t|counter~27_combout\);

-- Location: LCCOMB_X23_Y30_N28
\t|counter~28\ : cycloneii_lcell_comb
-- Equation(s):
-- \t|counter~28_combout\ = (\t|Add0~56_combout\ & (\t|Equal0~10_combout\ & !\rst~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \t|Add0~56_combout\,
	datac => \t|Equal0~10_combout\,
	datad => \rst~combout\,
	combout => \t|counter~28_combout\);

-- Location: LCCOMB_X31_Y33_N4
\used_counter~164\ : cycloneii_lcell_comb
-- Equation(s):
-- \used_counter~164_combout\ = (!\rst~combout\ & ((\b1~combout\ & ((\Add0~0_combout\))) # (!\b1~combout\ & (\used_counter[0][0]~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \used_counter[0][0]~regout\,
	datab => \rst~combout\,
	datac => \Add0~0_combout\,
	datad => \b1~combout\,
	combout => \used_counter~164_combout\);

-- Location: LCCOMB_X32_Y32_N20
\used_counter~166\ : cycloneii_lcell_comb
-- Equation(s):
-- \used_counter~166_combout\ = (!\rst~combout\ & ((\b1~combout\ & ((\Add0~16_combout\))) # (!\b1~combout\ & (\used_counter[0][8]~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b1~combout\,
	datab => \used_counter[0][8]~regout\,
	datac => \rst~combout\,
	datad => \Add0~16_combout\,
	combout => \used_counter~166_combout\);

-- Location: LCCOMB_X31_Y31_N30
\used_counter~169\ : cycloneii_lcell_comb
-- Equation(s):
-- \used_counter~169_combout\ = (!\rst~combout\ & ((\b1~combout\ & ((\Add0~12_combout\))) # (!\b1~combout\ & (\used_counter[0][6]~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \used_counter[0][6]~regout\,
	datab => \b1~combout\,
	datac => \Add0~12_combout\,
	datad => \rst~combout\,
	combout => \used_counter~169_combout\);

-- Location: LCCOMB_X28_Y32_N2
\used_counter~170\ : cycloneii_lcell_comb
-- Equation(s):
-- \used_counter~170_combout\ = (!\rst~combout\ & ((\b1~combout\ & (\Add0~10_combout\)) # (!\b1~combout\ & ((\used_counter[0][5]~regout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rst~combout\,
	datab => \Add0~10_combout\,
	datac => \used_counter[0][5]~regout\,
	datad => \b1~combout\,
	combout => \used_counter~170_combout\);

-- Location: LCCOMB_X29_Y31_N10
\used_counter~172\ : cycloneii_lcell_comb
-- Equation(s):
-- \used_counter~172_combout\ = (!\rst~combout\ & ((\b1~combout\ & (\Add0~4_combout\)) # (!\b1~combout\ & ((\used_counter[0][2]~regout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b1~combout\,
	datab => \rst~combout\,
	datac => \Add0~4_combout\,
	datad => \used_counter[0][2]~regout\,
	combout => \used_counter~172_combout\);

-- Location: LCCOMB_X30_Y31_N24
\used_counter~174\ : cycloneii_lcell_comb
-- Equation(s):
-- \used_counter~174_combout\ = (!\rst~combout\ & ((\used_counter~70_combout\ & ((\used_counter[3][8]~regout\))) # (!\used_counter~70_combout\ & (\Add0~16_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \used_counter~70_combout\,
	datab => \rst~combout\,
	datac => \Add0~16_combout\,
	datad => \used_counter[3][8]~regout\,
	combout => \used_counter~174_combout\);

-- Location: LCCOMB_X31_Y31_N20
\used_counter~176\ : cycloneii_lcell_comb
-- Equation(s):
-- \used_counter~176_combout\ = (!\rst~combout\ & ((\used_counter~70_combout\ & (\used_counter[3][6]~regout\)) # (!\used_counter~70_combout\ & ((\Add0~12_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \used_counter~70_combout\,
	datab => \used_counter[3][6]~regout\,
	datac => \Add0~12_combout\,
	datad => \rst~combout\,
	combout => \used_counter~176_combout\);

-- Location: LCCOMB_X29_Y31_N6
\used_counter~180\ : cycloneii_lcell_comb
-- Equation(s):
-- \used_counter~180_combout\ = (!\rst~combout\ & ((\used_counter~70_combout\ & ((\used_counter[3][2]~regout\))) # (!\used_counter~70_combout\ & (\Add0~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \used_counter~70_combout\,
	datab => \rst~combout\,
	datac => \Add0~4_combout\,
	datad => \used_counter[3][2]~regout\,
	combout => \used_counter~180_combout\);

-- Location: LCCOMB_X28_Y30_N12
\used_counter~181\ : cycloneii_lcell_comb
-- Equation(s):
-- \used_counter~181_combout\ = (!\rst~combout\ & ((\used_counter~70_combout\ & ((\used_counter[3][1]~regout\))) # (!\used_counter~70_combout\ & (\Add0~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \used_counter~70_combout\,
	datab => \Add0~2_combout\,
	datac => \rst~combout\,
	datad => \used_counter[3][1]~regout\,
	combout => \used_counter~181_combout\);

-- Location: PIN_P2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\clk~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_clk,
	combout => \clk~combout\);

-- Location: CLKCTRL_G3
\clk~clkctrl\ : cycloneii_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \clk~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \clk~clkctrl_outclk\);

-- Location: PIN_C13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\b1~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_b1,
	combout => \b1~combout\);

-- Location: PIN_D12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\rst~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_rst,
	combout => \rst~combout\);

-- Location: LCCOMB_X30_Y31_N18
\used_counter~168\ : cycloneii_lcell_comb
-- Equation(s):
-- \used_counter~168_combout\ = (!\rst~combout\ & ((\b1~combout\ & (\Add0~8_combout\)) # (!\b1~combout\ & ((\used_counter[0][4]~regout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~8_combout\,
	datab => \used_counter[0][4]~regout\,
	datac => \b1~combout\,
	datad => \rst~combout\,
	combout => \used_counter~168_combout\);

-- Location: PIN_F12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\b4~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_b4,
	combout => \b4~combout\);

-- Location: PIN_D13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\b2~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_b2,
	combout => \b2~combout\);

-- Location: LCCOMB_X28_Y32_N12
\pressedIndex~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \pressedIndex~7_combout\ = (!\b1~combout\ & (\pressedIndex~3_combout\ & !\b2~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b1~combout\,
	datab => \pressedIndex~3_combout\,
	datad => \b2~combout\,
	combout => \pressedIndex~7_combout\);

-- Location: LCCOMB_X25_Y30_N22
\t|counter~20\ : cycloneii_lcell_comb
-- Equation(s):
-- \t|counter~20_combout\ = (\t|Add0~40_combout\ & (\t|Equal0~10_combout\ & !\rst~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \t|Add0~40_combout\,
	datab => \t|Equal0~10_combout\,
	datac => \rst~combout\,
	combout => \t|counter~20_combout\);

-- Location: LCFF_X25_Y30_N23
\t|counter[20]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \t|counter~20_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \t|counter\(20));

-- Location: LCCOMB_X25_Y30_N24
\t|counter~18\ : cycloneii_lcell_comb
-- Equation(s):
-- \t|counter~18_combout\ = (\t|Add0~34_combout\ & (\t|Equal0~10_combout\ & !\rst~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \t|Add0~34_combout\,
	datab => \t|Equal0~10_combout\,
	datac => \rst~combout\,
	combout => \t|counter~18_combout\);

-- Location: LCFF_X25_Y30_N25
\t|counter[17]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \t|counter~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \t|counter\(17));

-- Location: LCCOMB_X23_Y30_N22
\t|counter~15\ : cycloneii_lcell_comb
-- Equation(s):
-- \t|counter~15_combout\ = (\t|Add0~30_combout\ & (\t|Equal0~10_combout\ & !\rst~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \t|Add0~30_combout\,
	datac => \t|Equal0~10_combout\,
	datad => \rst~combout\,
	combout => \t|counter~15_combout\);

-- Location: LCFF_X24_Y30_N7
\t|counter[15]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \t|counter~15_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \t|counter\(15));

-- Location: LCCOMB_X25_Y31_N4
\t|counter~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \t|counter~6_combout\ = (\t|Add0~10_combout\ & (!\rst~combout\ & \t|Equal0~10_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \t|Add0~10_combout\,
	datac => \rst~combout\,
	datad => \t|Equal0~10_combout\,
	combout => \t|counter~6_combout\);

-- Location: LCFF_X24_Y31_N15
\t|counter[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \t|counter~6_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \t|counter\(5));

-- Location: LCCOMB_X25_Y31_N14
\t|counter~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \t|counter~1_combout\ = (\t|Add0~2_combout\ & (!\rst~combout\ & \t|Equal0~10_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \t|Add0~2_combout\,
	datac => \rst~combout\,
	datad => \t|Equal0~10_combout\,
	combout => \t|counter~1_combout\);

-- Location: LCFF_X24_Y31_N3
\t|counter[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \t|counter~1_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \t|counter\(1));

-- Location: LCCOMB_X24_Y31_N0
\t|Add0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \t|Add0~0_combout\ = \t|counter\(0) $ (VCC)
-- \t|Add0~1\ = CARRY(\t|counter\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \t|counter\(0),
	datad => VCC,
	combout => \t|Add0~0_combout\,
	cout => \t|Add0~1\);

-- Location: LCCOMB_X25_Y31_N16
\t|counter~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \t|counter~0_combout\ = (!\rst~combout\ & (\t|Add0~0_combout\ & \t|Equal0~10_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \rst~combout\,
	datac => \t|Add0~0_combout\,
	datad => \t|Equal0~10_combout\,
	combout => \t|counter~0_combout\);

-- Location: LCFF_X24_Y31_N1
\t|counter[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \t|counter~0_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \t|counter\(0));

-- Location: LCCOMB_X24_Y31_N2
\t|Add0~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \t|Add0~2_combout\ = (\t|counter\(1) & (!\t|Add0~1\)) # (!\t|counter\(1) & ((\t|Add0~1\) # (GND)))
-- \t|Add0~3\ = CARRY((!\t|Add0~1\) # (!\t|counter\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \t|counter\(1),
	datad => VCC,
	cin => \t|Add0~1\,
	combout => \t|Add0~2_combout\,
	cout => \t|Add0~3\);

-- Location: LCCOMB_X24_Y31_N4
\t|Add0~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \t|Add0~4_combout\ = (\t|counter\(2) & (\t|Add0~3\ $ (GND))) # (!\t|counter\(2) & (!\t|Add0~3\ & VCC))
-- \t|Add0~5\ = CARRY((\t|counter\(2) & !\t|Add0~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \t|counter\(2),
	datad => VCC,
	cin => \t|Add0~3\,
	combout => \t|Add0~4_combout\,
	cout => \t|Add0~5\);

-- Location: LCCOMB_X25_Y31_N0
\t|counter~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \t|counter~2_combout\ = (!\rst~combout\ & (\t|Add0~4_combout\ & \t|Equal0~10_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \rst~combout\,
	datac => \t|Add0~4_combout\,
	datad => \t|Equal0~10_combout\,
	combout => \t|counter~2_combout\);

-- Location: LCFF_X24_Y31_N5
\t|counter[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \t|counter~2_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \t|counter\(2));

-- Location: LCCOMB_X24_Y31_N6
\t|Add0~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \t|Add0~6_combout\ = (\t|counter\(3) & (!\t|Add0~5\)) # (!\t|counter\(3) & ((\t|Add0~5\) # (GND)))
-- \t|Add0~7\ = CARRY((!\t|Add0~5\) # (!\t|counter\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \t|counter\(3),
	datad => VCC,
	cin => \t|Add0~5\,
	combout => \t|Add0~6_combout\,
	cout => \t|Add0~7\);

-- Location: LCCOMB_X24_Y31_N8
\t|Add0~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \t|Add0~8_combout\ = (\t|counter\(4) & (\t|Add0~7\ $ (GND))) # (!\t|counter\(4) & (!\t|Add0~7\ & VCC))
-- \t|Add0~9\ = CARRY((\t|counter\(4) & !\t|Add0~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \t|counter\(4),
	datad => VCC,
	cin => \t|Add0~7\,
	combout => \t|Add0~8_combout\,
	cout => \t|Add0~9\);

-- Location: LCCOMB_X24_Y31_N10
\t|Add0~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \t|Add0~10_combout\ = (\t|counter\(5) & (!\t|Add0~9\)) # (!\t|counter\(5) & ((\t|Add0~9\) # (GND)))
-- \t|Add0~11\ = CARRY((!\t|Add0~9\) # (!\t|counter\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \t|counter\(5),
	datad => VCC,
	cin => \t|Add0~9\,
	combout => \t|Add0~10_combout\,
	cout => \t|Add0~11\);

-- Location: LCCOMB_X24_Y31_N14
\t|Add0~14\ : cycloneii_lcell_comb
-- Equation(s):
-- \t|Add0~14_combout\ = (\t|counter\(7) & (!\t|Add0~13\)) # (!\t|counter\(7) & ((\t|Add0~13\) # (GND)))
-- \t|Add0~15\ = CARRY((!\t|Add0~13\) # (!\t|counter\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \t|counter\(7),
	datad => VCC,
	cin => \t|Add0~13\,
	combout => \t|Add0~14_combout\,
	cout => \t|Add0~15\);

-- Location: LCCOMB_X24_Y31_N18
\t|Add0~18\ : cycloneii_lcell_comb
-- Equation(s):
-- \t|Add0~18_combout\ = (\t|counter\(9) & (!\t|Add0~17\)) # (!\t|counter\(9) & ((\t|Add0~17\) # (GND)))
-- \t|Add0~19\ = CARRY((!\t|Add0~17\) # (!\t|counter\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \t|counter\(9),
	datad => VCC,
	cin => \t|Add0~17\,
	combout => \t|Add0~18_combout\,
	cout => \t|Add0~19\);

-- Location: LCCOMB_X25_Y31_N10
\t|counter~9\ : cycloneii_lcell_comb
-- Equation(s):
-- \t|counter~9_combout\ = (\t|Add0~18_combout\ & (!\rst~combout\ & \t|Equal0~10_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \t|Add0~18_combout\,
	datac => \rst~combout\,
	datad => \t|Equal0~10_combout\,
	combout => \t|counter~9_combout\);

-- Location: LCFF_X24_Y31_N23
\t|counter[9]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \t|counter~9_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \t|counter\(9));

-- Location: LCCOMB_X24_Y31_N22
\t|Add0~22\ : cycloneii_lcell_comb
-- Equation(s):
-- \t|Add0~22_combout\ = (\t|counter\(11) & (!\t|Add0~21\)) # (!\t|counter\(11) & ((\t|Add0~21\) # (GND)))
-- \t|Add0~23\ = CARRY((!\t|Add0~21\) # (!\t|counter\(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \t|counter\(11),
	datad => VCC,
	cin => \t|Add0~21\,
	combout => \t|Add0~22_combout\,
	cout => \t|Add0~23\);

-- Location: LCCOMB_X25_Y31_N18
\t|counter~11\ : cycloneii_lcell_comb
-- Equation(s):
-- \t|counter~11_combout\ = (\t|Add0~22_combout\ & (!\rst~combout\ & \t|Equal0~10_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \t|Add0~22_combout\,
	datac => \rst~combout\,
	datad => \t|Equal0~10_combout\,
	combout => \t|counter~11_combout\);

-- Location: LCFF_X24_Y31_N27
\t|counter[11]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \t|counter~11_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \t|counter\(11));

-- Location: LCCOMB_X24_Y31_N24
\t|Add0~24\ : cycloneii_lcell_comb
-- Equation(s):
-- \t|Add0~24_combout\ = (\t|counter\(12) & (\t|Add0~23\ $ (GND))) # (!\t|counter\(12) & (!\t|Add0~23\ & VCC))
-- \t|Add0~25\ = CARRY((\t|counter\(12) & !\t|Add0~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \t|counter\(12),
	datad => VCC,
	cin => \t|Add0~23\,
	combout => \t|Add0~24_combout\,
	cout => \t|Add0~25\);

-- Location: LCCOMB_X23_Y30_N4
\t|counter~12\ : cycloneii_lcell_comb
-- Equation(s):
-- \t|counter~12_combout\ = (\t|Add0~24_combout\ & (\t|Equal0~10_combout\ & !\rst~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \t|Add0~24_combout\,
	datac => \t|Equal0~10_combout\,
	datad => \rst~combout\,
	combout => \t|counter~12_combout\);

-- Location: LCFF_X24_Y30_N1
\t|counter[12]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \t|counter~12_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \t|counter\(12));

-- Location: LCCOMB_X24_Y31_N26
\t|Add0~26\ : cycloneii_lcell_comb
-- Equation(s):
-- \t|Add0~26_combout\ = (\t|counter\(13) & (!\t|Add0~25\)) # (!\t|counter\(13) & ((\t|Add0~25\) # (GND)))
-- \t|Add0~27\ = CARRY((!\t|Add0~25\) # (!\t|counter\(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \t|counter\(13),
	datad => VCC,
	cin => \t|Add0~25\,
	combout => \t|Add0~26_combout\,
	cout => \t|Add0~27\);

-- Location: LCCOMB_X24_Y31_N28
\t|Add0~28\ : cycloneii_lcell_comb
-- Equation(s):
-- \t|Add0~28_combout\ = (\t|counter\(14) & (\t|Add0~27\ $ (GND))) # (!\t|counter\(14) & (!\t|Add0~27\ & VCC))
-- \t|Add0~29\ = CARRY((\t|counter\(14) & !\t|Add0~27\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \t|counter\(14),
	datad => VCC,
	cin => \t|Add0~27\,
	combout => \t|Add0~28_combout\,
	cout => \t|Add0~29\);

-- Location: LCCOMB_X23_Y30_N20
\t|counter~14\ : cycloneii_lcell_comb
-- Equation(s):
-- \t|counter~14_combout\ = (\t|Add0~28_combout\ & (\t|Equal0~10_combout\ & !\rst~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \t|Add0~28_combout\,
	datac => \t|Equal0~10_combout\,
	datad => \rst~combout\,
	combout => \t|counter~14_combout\);

-- Location: LCFF_X24_Y30_N5
\t|counter[14]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \t|counter~14_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \t|counter\(14));

-- Location: LCCOMB_X24_Y30_N0
\t|Add0~32\ : cycloneii_lcell_comb
-- Equation(s):
-- \t|Add0~32_combout\ = (\t|counter\(16) & (\t|Add0~31\ $ (GND))) # (!\t|counter\(16) & (!\t|Add0~31\ & VCC))
-- \t|Add0~33\ = CARRY((\t|counter\(16) & !\t|Add0~31\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \t|counter\(16),
	datad => VCC,
	cin => \t|Add0~31\,
	combout => \t|Add0~32_combout\,
	cout => \t|Add0~33\);

-- Location: LCCOMB_X25_Y30_N28
\t|counter~16\ : cycloneii_lcell_comb
-- Equation(s):
-- \t|counter~16_combout\ = (!\rst~combout\ & (\t|Equal0~10_combout\ & \t|Add0~32_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rst~combout\,
	datab => \t|Equal0~10_combout\,
	datac => \t|Add0~32_combout\,
	combout => \t|counter~16_combout\);

-- Location: LCFF_X25_Y30_N29
\t|counter[16]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \t|counter~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \t|counter\(16));

-- Location: LCCOMB_X24_Y30_N4
\t|Add0~36\ : cycloneii_lcell_comb
-- Equation(s):
-- \t|Add0~36_combout\ = (\t|counter\(18) & (\t|Add0~35\ $ (GND))) # (!\t|counter\(18) & (!\t|Add0~35\ & VCC))
-- \t|Add0~37\ = CARRY((\t|counter\(18) & !\t|Add0~35\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \t|counter\(18),
	datad => VCC,
	cin => \t|Add0~35\,
	combout => \t|Add0~36_combout\,
	cout => \t|Add0~37\);

-- Location: LCCOMB_X25_Y30_N14
\t|counter~17\ : cycloneii_lcell_comb
-- Equation(s):
-- \t|counter~17_combout\ = (!\rst~combout\ & (\t|Equal0~10_combout\ & \t|Add0~36_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rst~combout\,
	datab => \t|Equal0~10_combout\,
	datac => \t|Add0~36_combout\,
	combout => \t|counter~17_combout\);

-- Location: LCFF_X25_Y30_N15
\t|counter[18]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \t|counter~17_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \t|counter\(18));

-- Location: LCCOMB_X24_Y30_N6
\t|Add0~38\ : cycloneii_lcell_comb
-- Equation(s):
-- \t|Add0~38_combout\ = (\t|counter\(19) & (!\t|Add0~37\)) # (!\t|counter\(19) & ((\t|Add0~37\) # (GND)))
-- \t|Add0~39\ = CARRY((!\t|Add0~37\) # (!\t|counter\(19)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \t|counter\(19),
	datad => VCC,
	cin => \t|Add0~37\,
	combout => \t|Add0~38_combout\,
	cout => \t|Add0~39\);

-- Location: LCCOMB_X25_Y30_N10
\t|counter~19\ : cycloneii_lcell_comb
-- Equation(s):
-- \t|counter~19_combout\ = (!\rst~combout\ & (\t|Equal0~10_combout\ & \t|Add0~38_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rst~combout\,
	datab => \t|Equal0~10_combout\,
	datad => \t|Add0~38_combout\,
	combout => \t|counter~19_combout\);

-- Location: LCFF_X25_Y30_N11
\t|counter[19]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \t|counter~19_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \t|counter\(19));

-- Location: LCCOMB_X24_Y30_N8
\t|Add0~40\ : cycloneii_lcell_comb
-- Equation(s):
-- \t|Add0~40_combout\ = (\t|counter\(20) & (\t|Add0~39\ $ (GND))) # (!\t|counter\(20) & (!\t|Add0~39\ & VCC))
-- \t|Add0~41\ = CARRY((\t|counter\(20) & !\t|Add0~39\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \t|counter\(20),
	datad => VCC,
	cin => \t|Add0~39\,
	combout => \t|Add0~40_combout\,
	cout => \t|Add0~41\);

-- Location: LCCOMB_X25_Y30_N30
\t|counter~22\ : cycloneii_lcell_comb
-- Equation(s):
-- \t|counter~22_combout\ = (\t|Add0~44_combout\ & (\t|Equal0~10_combout\ & !\rst~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \t|Add0~44_combout\,
	datab => \t|Equal0~10_combout\,
	datac => \rst~combout\,
	combout => \t|counter~22_combout\);

-- Location: LCFF_X25_Y30_N31
\t|counter[22]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \t|counter~22_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \t|counter\(22));

-- Location: LCCOMB_X25_Y30_N0
\t|counter~21\ : cycloneii_lcell_comb
-- Equation(s):
-- \t|counter~21_combout\ = (\t|Add0~42_combout\ & (\t|Equal0~10_combout\ & !\rst~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \t|Add0~42_combout\,
	datab => \t|Equal0~10_combout\,
	datac => \rst~combout\,
	combout => \t|counter~21_combout\);

-- Location: LCFF_X25_Y30_N1
\t|counter[21]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \t|counter~21_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \t|counter\(21));

-- Location: LCCOMB_X24_Y30_N10
\t|Add0~42\ : cycloneii_lcell_comb
-- Equation(s):
-- \t|Add0~42_combout\ = (\t|counter\(21) & (!\t|Add0~41\)) # (!\t|counter\(21) & ((\t|Add0~41\) # (GND)))
-- \t|Add0~43\ = CARRY((!\t|Add0~41\) # (!\t|counter\(21)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \t|counter\(21),
	datad => VCC,
	cin => \t|Add0~41\,
	combout => \t|Add0~42_combout\,
	cout => \t|Add0~43\);

-- Location: LCCOMB_X24_Y30_N14
\t|Add0~46\ : cycloneii_lcell_comb
-- Equation(s):
-- \t|Add0~46_combout\ = (\t|counter\(23) & (!\t|Add0~45\)) # (!\t|counter\(23) & ((\t|Add0~45\) # (GND)))
-- \t|Add0~47\ = CARRY((!\t|Add0~45\) # (!\t|counter\(23)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \t|counter\(23),
	datad => VCC,
	cin => \t|Add0~45\,
	combout => \t|Add0~46_combout\,
	cout => \t|Add0~47\);

-- Location: LCCOMB_X25_Y30_N26
\t|Equal0~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \t|Equal0~6_combout\ = (((!\t|Add0~42_combout\) # (!\t|Add0~46_combout\)) # (!\t|Add0~40_combout\)) # (!\t|Add0~44_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \t|Add0~44_combout\,
	datab => \t|Add0~40_combout\,
	datac => \t|Add0~46_combout\,
	datad => \t|Add0~42_combout\,
	combout => \t|Equal0~6_combout\);

-- Location: LCCOMB_X23_Y30_N18
\t|counter~31\ : cycloneii_lcell_comb
-- Equation(s):
-- \t|counter~31_combout\ = (\t|Add0~62_combout\ & (\t|Equal0~10_combout\ & !\rst~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \t|Add0~62_combout\,
	datac => \t|Equal0~10_combout\,
	datad => \rst~combout\,
	combout => \t|counter~31_combout\);

-- Location: LCFF_X24_Y30_N29
\t|counter[31]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \t|counter~31_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \t|counter\(31));

-- Location: LCCOMB_X23_Y30_N6
\t|counter~29\ : cycloneii_lcell_comb
-- Equation(s):
-- \t|counter~29_combout\ = (\t|Add0~58_combout\ & (!\rst~combout\ & \t|Equal0~10_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \t|Add0~58_combout\,
	datab => \rst~combout\,
	datac => \t|Equal0~10_combout\,
	combout => \t|counter~29_combout\);

-- Location: LCFF_X24_Y30_N23
\t|counter[29]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \t|counter~29_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \t|counter\(29));

-- Location: LCCOMB_X24_Y30_N18
\t|Add0~50\ : cycloneii_lcell_comb
-- Equation(s):
-- \t|Add0~50_combout\ = (\t|counter\(25) & (!\t|Add0~49\)) # (!\t|counter\(25) & ((\t|Add0~49\) # (GND)))
-- \t|Add0~51\ = CARRY((!\t|Add0~49\) # (!\t|counter\(25)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \t|counter\(25),
	datad => VCC,
	cin => \t|Add0~49\,
	combout => \t|Add0~50_combout\,
	cout => \t|Add0~51\);

-- Location: LCCOMB_X23_Y30_N0
\t|counter~26\ : cycloneii_lcell_comb
-- Equation(s):
-- \t|counter~26_combout\ = (\t|Add0~50_combout\ & (\t|Equal0~10_combout\ & !\rst~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \t|Add0~50_combout\,
	datac => \t|Equal0~10_combout\,
	datad => \rst~combout\,
	combout => \t|counter~26_combout\);

-- Location: LCFF_X24_Y30_N15
\t|counter[25]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \t|counter~26_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \t|counter\(25));

-- Location: LCCOMB_X24_Y30_N24
\t|Add0~56\ : cycloneii_lcell_comb
-- Equation(s):
-- \t|Add0~56_combout\ = (\t|counter\(28) & (\t|Add0~55\ $ (GND))) # (!\t|counter\(28) & (!\t|Add0~55\ & VCC))
-- \t|Add0~57\ = CARRY((\t|counter\(28) & !\t|Add0~55\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \t|counter\(28),
	datad => VCC,
	cin => \t|Add0~55\,
	combout => \t|Add0~56_combout\,
	cout => \t|Add0~57\);

-- Location: LCCOMB_X24_Y30_N26
\t|Add0~58\ : cycloneii_lcell_comb
-- Equation(s):
-- \t|Add0~58_combout\ = (\t|counter\(29) & (!\t|Add0~57\)) # (!\t|counter\(29) & ((\t|Add0~57\) # (GND)))
-- \t|Add0~59\ = CARRY((!\t|Add0~57\) # (!\t|counter\(29)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \t|counter\(29),
	datad => VCC,
	cin => \t|Add0~57\,
	combout => \t|Add0~58_combout\,
	cout => \t|Add0~59\);

-- Location: LCCOMB_X24_Y30_N28
\t|Add0~60\ : cycloneii_lcell_comb
-- Equation(s):
-- \t|Add0~60_combout\ = (\t|counter\(30) & (\t|Add0~59\ $ (GND))) # (!\t|counter\(30) & (!\t|Add0~59\ & VCC))
-- \t|Add0~61\ = CARRY((\t|counter\(30) & !\t|Add0~59\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \t|counter\(30),
	datad => VCC,
	cin => \t|Add0~59\,
	combout => \t|Add0~60_combout\,
	cout => \t|Add0~61\);

-- Location: LCCOMB_X23_Y30_N12
\t|counter~30\ : cycloneii_lcell_comb
-- Equation(s):
-- \t|counter~30_combout\ = (\t|Add0~60_combout\ & (\t|Equal0~10_combout\ & !\rst~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \t|Add0~60_combout\,
	datac => \t|Equal0~10_combout\,
	datad => \rst~combout\,
	combout => \t|counter~30_combout\);

-- Location: LCFF_X24_Y30_N27
\t|counter[30]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \t|counter~30_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \t|counter\(30));

-- Location: LCCOMB_X24_Y30_N30
\t|Add0~62\ : cycloneii_lcell_comb
-- Equation(s):
-- \t|Add0~62_combout\ = \t|Add0~61\ $ (\t|counter\(31))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \t|counter\(31),
	cin => \t|Add0~61\,
	combout => \t|Add0~62_combout\);

-- Location: LCCOMB_X23_Y30_N16
\t|Equal0~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \t|Equal0~8_combout\ = (\t|Add0~58_combout\) # (\t|Add0~56_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \t|Add0~58_combout\,
	datad => \t|Add0~56_combout\,
	combout => \t|Equal0~8_combout\);

-- Location: LCCOMB_X23_Y30_N26
\t|Equal0~9\ : cycloneii_lcell_comb
-- Equation(s):
-- \t|Equal0~9_combout\ = (\t|Equal0~7_combout\) # ((\t|Add0~62_combout\) # ((\t|Equal0~8_combout\) # (\t|Add0~60_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \t|Equal0~7_combout\,
	datab => \t|Add0~62_combout\,
	datac => \t|Equal0~8_combout\,
	datad => \t|Add0~60_combout\,
	combout => \t|Equal0~9_combout\);

-- Location: LCCOMB_X23_Y30_N8
\t|Equal0~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \t|Equal0~3_combout\ = (((!\t|Add0~24_combout\) # (!\t|Add0~26_combout\)) # (!\t|Add0~28_combout\)) # (!\t|Add0~30_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \t|Add0~30_combout\,
	datab => \t|Add0~28_combout\,
	datac => \t|Add0~26_combout\,
	datad => \t|Add0~24_combout\,
	combout => \t|Equal0~3_combout\);

-- Location: LCCOMB_X25_Y31_N20
\t|Equal0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \t|Equal0~0_combout\ = (((!\t|Add0~2_combout\) # (!\t|Add0~6_combout\)) # (!\t|Add0~4_combout\)) # (!\t|Add0~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \t|Add0~0_combout\,
	datab => \t|Add0~4_combout\,
	datac => \t|Add0~6_combout\,
	datad => \t|Add0~2_combout\,
	combout => \t|Equal0~0_combout\);

-- Location: LCCOMB_X25_Y31_N2
\t|Equal0~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \t|Equal0~1_combout\ = (((\t|Add0~14_combout\) # (!\t|Add0~10_combout\)) # (!\t|Add0~8_combout\)) # (!\t|Add0~12_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \t|Add0~12_combout\,
	datab => \t|Add0~8_combout\,
	datac => \t|Add0~10_combout\,
	datad => \t|Add0~14_combout\,
	combout => \t|Equal0~1_combout\);

-- Location: LCCOMB_X25_Y31_N22
\t|Equal0~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \t|Equal0~4_combout\ = (\t|Equal0~2_combout\) # ((\t|Equal0~3_combout\) # ((\t|Equal0~0_combout\) # (\t|Equal0~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \t|Equal0~2_combout\,
	datab => \t|Equal0~3_combout\,
	datac => \t|Equal0~0_combout\,
	datad => \t|Equal0~1_combout\,
	combout => \t|Equal0~4_combout\);

-- Location: LCCOMB_X25_Y30_N8
\t|Equal0~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \t|Equal0~10_combout\ = (\t|Equal0~5_combout\) # ((\t|Equal0~6_combout\) # ((\t|Equal0~9_combout\) # (\t|Equal0~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \t|Equal0~5_combout\,
	datab => \t|Equal0~6_combout\,
	datac => \t|Equal0~9_combout\,
	datad => \t|Equal0~4_combout\,
	combout => \t|Equal0~10_combout\);

-- Location: LCCOMB_X28_Y31_N2
\t|timedClk~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \t|timedClk~0_combout\ = (!\rst~combout\ & !\t|Equal0~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \rst~combout\,
	datad => \t|Equal0~10_combout\,
	combout => \t|timedClk~0_combout\);

-- Location: LCFF_X28_Y31_N3
\t|timedClk\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \t|timedClk~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \t|timedClk~regout\);

-- Location: LCCOMB_X28_Y32_N18
\pressedIndex[2]~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \pressedIndex[2]~6_combout\ = (!\rst~combout\ & \t|timedClk~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \rst~combout\,
	datad => \t|timedClk~regout\,
	combout => \pressedIndex[2]~6_combout\);

-- Location: LCFF_X28_Y32_N27
\pressedIndex[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \pressedIndex~7_combout\,
	sload => VCC,
	ena => \pressedIndex[2]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => pressedIndex(1));

-- Location: PIN_C11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\b5~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_b5,
	combout => \b5~combout\);

-- Location: LCCOMB_X28_Y32_N26
\pressedIndex~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \pressedIndex~3_combout\ = (\b3~combout\) # ((\b4~combout\) # ((pressedIndex(1) & !\b5~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b3~combout\,
	datab => \b4~combout\,
	datac => pressedIndex(1),
	datad => \b5~combout\,
	combout => \pressedIndex~3_combout\);

-- Location: LCCOMB_X28_Y32_N16
\pressedIndex~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \pressedIndex~2_combout\ = (!\b1~combout\ & !\b2~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b1~combout\,
	datad => \b2~combout\,
	combout => \pressedIndex~2_combout\);

-- Location: PIN_B12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\b3~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_b3,
	combout => \b3~combout\);

-- Location: LCCOMB_X28_Y32_N8
\pressedIndex~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \pressedIndex~0_combout\ = (!\b1~combout\ & (!\b4~combout\ & (!\b3~combout\ & !\b2~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b1~combout\,
	datab => \b4~combout\,
	datac => \b3~combout\,
	datad => \b2~combout\,
	combout => \pressedIndex~0_combout\);

-- Location: LCFF_X28_Y32_N7
\pressedIndex[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \pressedIndex~1_combout\,
	ena => \pressedIndex[2]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => pressedIndex(2));

-- Location: LCCOMB_X28_Y32_N6
\pressedIndex~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \pressedIndex~1_combout\ = (\pressedIndex~0_combout\ & ((pressedIndex(2)) # (\b5~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \pressedIndex~0_combout\,
	datac => pressedIndex(2),
	datad => \b5~combout\,
	combout => \pressedIndex~1_combout\);

-- Location: LCCOMB_X28_Y32_N0
\always0~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \always0~1_combout\ = (\pressedIndex~5_combout\) # (((\pressedIndex~1_combout\) # (!\pressedIndex~2_combout\)) # (!\pressedIndex~3_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pressedIndex~5_combout\,
	datab => \pressedIndex~3_combout\,
	datac => \pressedIndex~2_combout\,
	datad => \pressedIndex~1_combout\,
	combout => \always0~1_combout\);

-- Location: LCCOMB_X32_Y32_N12
\timer~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \timer~3_combout\ = (\Add0~18_combout\ & !\rst~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Add0~18_combout\,
	datac => \rst~combout\,
	combout => \timer~3_combout\);

-- Location: LCCOMB_X28_Y31_N0
\timer[1]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \timer[1]~0_combout\ = (\rst~combout\) # (\t|timedClk~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \rst~combout\,
	datad => \t|timedClk~regout\,
	combout => \timer[1]~0_combout\);

-- Location: LCFF_X31_Y32_N23
\timer[9]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \timer~3_combout\,
	sload => VCC,
	ena => \timer[1]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => timer(9));

-- Location: LCCOMB_X32_Y32_N26
\timer~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \timer~10_combout\ = (\Add0~4_combout\ & !\rst~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~4_combout\,
	datac => \rst~combout\,
	combout => \timer~10_combout\);

-- Location: LCFF_X31_Y32_N9
\timer[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \timer~10_combout\,
	sload => VCC,
	ena => \timer[1]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => timer(2));

-- Location: LCCOMB_X31_Y32_N4
\Add0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add0~0_combout\ = timer(0) $ (VCC)
-- \Add0~1\ = CARRY(timer(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => timer(0),
	datad => VCC,
	combout => \Add0~0_combout\,
	cout => \Add0~1\);

-- Location: LCCOMB_X32_Y32_N14
\timer~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \timer~2_combout\ = (!\rst~combout\ & \Add0~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \rst~combout\,
	datac => \Add0~0_combout\,
	combout => \timer~2_combout\);

-- Location: LCFF_X31_Y32_N5
\timer[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \timer~2_combout\,
	sload => VCC,
	ena => \timer[1]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => timer(0));

-- Location: LCCOMB_X31_Y32_N6
\Add0~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add0~2_combout\ = (timer(1) & (!\Add0~1\)) # (!timer(1) & ((\Add0~1\) # (GND)))
-- \Add0~3\ = CARRY((!\Add0~1\) # (!timer(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => timer(1),
	datad => VCC,
	cin => \Add0~1\,
	combout => \Add0~2_combout\,
	cout => \Add0~3\);

-- Location: LCCOMB_X31_Y32_N8
\Add0~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add0~4_combout\ = (timer(2) & (\Add0~3\ $ (GND))) # (!timer(2) & (!\Add0~3\ & VCC))
-- \Add0~5\ = CARRY((timer(2) & !\Add0~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => timer(2),
	datad => VCC,
	cin => \Add0~3\,
	combout => \Add0~4_combout\,
	cout => \Add0~5\);

-- Location: LCCOMB_X31_Y32_N10
\Add0~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add0~6_combout\ = (timer(3) & (!\Add0~5\)) # (!timer(3) & ((\Add0~5\) # (GND)))
-- \Add0~7\ = CARRY((!\Add0~5\) # (!timer(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => timer(3),
	datad => VCC,
	cin => \Add0~5\,
	combout => \Add0~6_combout\,
	cout => \Add0~7\);

-- Location: LCCOMB_X31_Y32_N12
\Add0~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add0~8_combout\ = (timer(4) & (\Add0~7\ $ (GND))) # (!timer(4) & (!\Add0~7\ & VCC))
-- \Add0~9\ = CARRY((timer(4) & !\Add0~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => timer(4),
	datad => VCC,
	cin => \Add0~7\,
	combout => \Add0~8_combout\,
	cout => \Add0~9\);

-- Location: LCCOMB_X31_Y32_N14
\Add0~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add0~10_combout\ = (timer(5) & (!\Add0~9\)) # (!timer(5) & ((\Add0~9\) # (GND)))
-- \Add0~11\ = CARRY((!\Add0~9\) # (!timer(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => timer(5),
	datad => VCC,
	cin => \Add0~9\,
	combout => \Add0~10_combout\,
	cout => \Add0~11\);

-- Location: LCCOMB_X32_Y32_N16
\timer~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \timer~7_combout\ = (!\rst~combout\ & \Add0~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \rst~combout\,
	datac => \Add0~10_combout\,
	combout => \timer~7_combout\);

-- Location: LCFF_X31_Y32_N15
\timer[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \timer~7_combout\,
	sload => VCC,
	ena => \timer[1]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => timer(5));

-- Location: LCCOMB_X31_Y32_N16
\Add0~12\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add0~12_combout\ = (timer(6) & (\Add0~11\ $ (GND))) # (!timer(6) & (!\Add0~11\ & VCC))
-- \Add0~13\ = CARRY((timer(6) & !\Add0~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => timer(6),
	datad => VCC,
	cin => \Add0~11\,
	combout => \Add0~12_combout\,
	cout => \Add0~13\);

-- Location: LCCOMB_X31_Y32_N18
\Add0~14\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add0~14_combout\ = (timer(7) & (!\Add0~13\)) # (!timer(7) & ((\Add0~13\) # (GND)))
-- \Add0~15\ = CARRY((!\Add0~13\) # (!timer(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => timer(7),
	datad => VCC,
	cin => \Add0~13\,
	combout => \Add0~14_combout\,
	cout => \Add0~15\);

-- Location: LCCOMB_X32_Y32_N0
\timer~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \timer~5_combout\ = (\Add0~14_combout\ & !\rst~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Add0~14_combout\,
	datac => \rst~combout\,
	combout => \timer~5_combout\);

-- Location: LCFF_X31_Y32_N19
\timer[7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \timer~5_combout\,
	sload => VCC,
	ena => \timer[1]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => timer(7));

-- Location: LCCOMB_X31_Y32_N20
\Add0~16\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add0~16_combout\ = (timer(8) & (\Add0~15\ $ (GND))) # (!timer(8) & (!\Add0~15\ & VCC))
-- \Add0~17\ = CARRY((timer(8) & !\Add0~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => timer(8),
	datad => VCC,
	cin => \Add0~15\,
	combout => \Add0~16_combout\,
	cout => \Add0~17\);

-- Location: LCCOMB_X32_Y32_N10
\timer~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \timer~4_combout\ = (!\rst~combout\ & \Add0~16_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \rst~combout\,
	datad => \Add0~16_combout\,
	combout => \timer~4_combout\);

-- Location: LCFF_X31_Y32_N21
\timer[8]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \timer~4_combout\,
	sload => VCC,
	ena => \timer[1]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => timer(8));

-- Location: LCCOMB_X31_Y32_N22
\Add0~18\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add0~18_combout\ = \Add0~17\ $ (timer(9))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => timer(9),
	cin => \Add0~17\,
	combout => \Add0~18_combout\);

-- Location: LCCOMB_X31_Y29_N8
\used_counter~60\ : cycloneii_lcell_comb
-- Equation(s):
-- \used_counter~60_combout\ = (\pressedIndex~2_combout\ & ((\b3~combout\ & ((\Add0~18_combout\))) # (!\b3~combout\ & (\used_counter[2][9]~regout\)))) # (!\pressedIndex~2_combout\ & (\used_counter[2][9]~regout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \used_counter[2][9]~regout\,
	datab => \pressedIndex~2_combout\,
	datac => \Add0~18_combout\,
	datad => \b3~combout\,
	combout => \used_counter~60_combout\);

-- Location: LCCOMB_X29_Y33_N14
\used_counter~165\ : cycloneii_lcell_comb
-- Equation(s):
-- \used_counter~165_combout\ = (!\rst~combout\ & ((\b1~combout\ & (\Add0~18_combout\)) # (!\b1~combout\ & ((\used_counter[0][9]~regout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rst~combout\,
	datab => \Add0~18_combout\,
	datac => \b1~combout\,
	datad => \used_counter[0][9]~regout\,
	combout => \used_counter~165_combout\);

-- Location: LCFF_X28_Y32_N29
\pressedIndex[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \pressedIndex~5_combout\,
	sload => VCC,
	ena => \pressedIndex[2]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => pressedIndex(0));

-- Location: LCCOMB_X28_Y32_N28
\pressedIndex~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \pressedIndex~4_combout\ = (\b2~combout\) # ((!\b3~combout\ & (!\b5~combout\ & pressedIndex(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b3~combout\,
	datab => \b5~combout\,
	datac => pressedIndex(0),
	datad => \b2~combout\,
	combout => \pressedIndex~4_combout\);

-- Location: LCCOMB_X28_Y32_N10
\pressedIndex~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \pressedIndex~5_combout\ = (!\b1~combout\ & ((\pressedIndex~4_combout\) # ((\b4~combout\ & !\b3~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b1~combout\,
	datab => \b4~combout\,
	datac => \b3~combout\,
	datad => \pressedIndex~4_combout\,
	combout => \pressedIndex~5_combout\);

-- Location: LCCOMB_X28_Y31_N16
\always0~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \always0~5_combout\ = ((\pressedIndex~5_combout\) # ((\pressedIndex~2_combout\ & \pressedIndex~3_combout\))) # (!\pressedIndex~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110111011101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pressedIndex~1_combout\,
	datab => \pressedIndex~5_combout\,
	datac => \pressedIndex~2_combout\,
	datad => \pressedIndex~3_combout\,
	combout => \always0~5_combout\);

-- Location: LCCOMB_X30_Y30_N2
\used_counter~152\ : cycloneii_lcell_comb
-- Equation(s):
-- \used_counter~152_combout\ = (!\rst~combout\ & (((!\LessThan3~18_combout\) # (!\always0~5_combout\)) # (!\always0~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001001100110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \always0~4_combout\,
	datab => \rst~combout\,
	datac => \always0~5_combout\,
	datad => \LessThan3~18_combout\,
	combout => \used_counter~152_combout\);

-- Location: LCCOMB_X31_Y30_N8
\used_counter~155\ : cycloneii_lcell_comb
-- Equation(s):
-- \used_counter~155_combout\ = (\used_counter~83_combout\ & \used_counter~152_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \used_counter~83_combout\,
	datad => \used_counter~152_combout\,
	combout => \used_counter~155_combout\);

-- Location: LCFF_X31_Y30_N9
\used_counter[4][9]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \used_counter~155_combout\,
	ena => \timer[1]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \used_counter[4][9]~regout\);

-- Location: LCCOMB_X31_Y33_N20
\used_counter~83\ : cycloneii_lcell_comb
-- Equation(s):
-- \used_counter~83_combout\ = (\pressedIndex~0_combout\ & ((\b5~combout\ & (\Add0~18_combout\)) # (!\b5~combout\ & ((\used_counter[4][9]~regout\))))) # (!\pressedIndex~0_combout\ & (((\used_counter[4][9]~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pressedIndex~0_combout\,
	datab => \b5~combout\,
	datac => \Add0~18_combout\,
	datad => \used_counter[4][9]~regout\,
	combout => \used_counter~83_combout\);

-- Location: LCCOMB_X30_Y29_N20
\index_value~21\ : cycloneii_lcell_comb
-- Equation(s):
-- \index_value~21_combout\ = (\b1~combout\ & (!\LessThan0~18_combout\ & !\LessThan1~18_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b1~combout\,
	datac => \LessThan0~18_combout\,
	datad => \LessThan1~18_combout\,
	combout => \index_value~21_combout\);

-- Location: LCCOMB_X28_Y31_N6
\always0~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \always0~2_combout\ = (\pressedIndex~1_combout\) # (((!\pressedIndex~3_combout\) # (!\pressedIndex~2_combout\)) # (!\pressedIndex~5_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pressedIndex~1_combout\,
	datab => \pressedIndex~5_combout\,
	datac => \pressedIndex~2_combout\,
	datad => \pressedIndex~3_combout\,
	combout => \always0~2_combout\);

-- Location: LCCOMB_X29_Y33_N4
\used_counter~173\ : cycloneii_lcell_comb
-- Equation(s):
-- \used_counter~173_combout\ = (!\rst~combout\ & ((\used_counter~70_combout\ & ((\used_counter[3][9]~regout\))) # (!\used_counter~70_combout\ & (\Add0~18_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \used_counter~70_combout\,
	datab => \Add0~18_combout\,
	datac => \rst~combout\,
	datad => \used_counter[3][9]~regout\,
	combout => \used_counter~173_combout\);

-- Location: LCCOMB_X29_Y33_N12
\used_counter~142\ : cycloneii_lcell_comb
-- Equation(s):
-- \used_counter~142_combout\ = (\used_counter~173_combout\ & (((\index~2_combout\) # (!\used_counter~91_combout\)) # (!\index~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100010011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \index~1_combout\,
	datab => \used_counter~173_combout\,
	datac => \index~2_combout\,
	datad => \used_counter~91_combout\,
	combout => \used_counter~142_combout\);

-- Location: LCFF_X29_Y33_N13
\used_counter[3][9]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \used_counter~142_combout\,
	ena => \timer[1]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \used_counter[3][9]~regout\);

-- Location: LCCOMB_X29_Y33_N26
\used_counter~71\ : cycloneii_lcell_comb
-- Equation(s):
-- \used_counter~71_combout\ = (\used_counter~70_combout\ & ((\used_counter[3][9]~regout\))) # (!\used_counter~70_combout\ & (\Add0~18_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \used_counter~70_combout\,
	datac => \Add0~18_combout\,
	datad => \used_counter[3][9]~regout\,
	combout => \used_counter~71_combout\);

-- Location: LCCOMB_X30_Y29_N30
\index_value~22\ : cycloneii_lcell_comb
-- Equation(s):
-- \index_value~22_combout\ = (\index_value~21_combout\ & (\Add0~18_combout\)) # (!\index_value~21_combout\ & ((\index_value~20_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \index_value~21_combout\,
	datab => \Add0~18_combout\,
	datac => \index_value~20_combout\,
	combout => \index_value~22_combout\);

-- Location: LCCOMB_X30_Y31_N30
\used_counter~143\ : cycloneii_lcell_comb
-- Equation(s):
-- \used_counter~143_combout\ = (\used_counter~174_combout\ & (((\index~2_combout\) # (!\used_counter~91_combout\)) # (!\index~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010001010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \used_counter~174_combout\,
	datab => \index~1_combout\,
	datac => \index~2_combout\,
	datad => \used_counter~91_combout\,
	combout => \used_counter~143_combout\);

-- Location: LCFF_X30_Y31_N31
\used_counter[3][8]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \used_counter~143_combout\,
	ena => \timer[1]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \used_counter[3][8]~regout\);

-- Location: LCCOMB_X29_Y31_N8
\used_counter~72\ : cycloneii_lcell_comb
-- Equation(s):
-- \used_counter~72_combout\ = (\used_counter~70_combout\ & ((\used_counter[3][8]~regout\))) # (!\used_counter~70_combout\ & (\Add0~16_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \used_counter~70_combout\,
	datac => \Add0~16_combout\,
	datad => \used_counter[3][8]~regout\,
	combout => \used_counter~72_combout\);

-- Location: LCCOMB_X28_Y32_N24
\always0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \always0~0_combout\ = ((\pressedIndex~1_combout\) # ((\pressedIndex~3_combout\ & \pressedIndex~2_combout\))) # (!\pressedIndex~5_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pressedIndex~5_combout\,
	datab => \pressedIndex~3_combout\,
	datac => \pressedIndex~2_combout\,
	datad => \pressedIndex~1_combout\,
	combout => \always0~0_combout\);

-- Location: LCCOMB_X31_Y32_N26
\used_counter~52\ : cycloneii_lcell_comb
-- Equation(s):
-- \used_counter~52_combout\ = (\b2~combout\ & ((\b1~combout\ & (\used_counter[1][7]~regout\)) # (!\b1~combout\ & ((\Add0~14_combout\))))) # (!\b2~combout\ & (((\used_counter[1][7]~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001011010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2~combout\,
	datab => \b1~combout\,
	datac => \used_counter[1][7]~regout\,
	datad => \Add0~14_combout\,
	combout => \used_counter~52_combout\);

-- Location: LCCOMB_X31_Y33_N24
\used_counter~106\ : cycloneii_lcell_comb
-- Equation(s):
-- \used_counter~106_combout\ = (\used_counter~52_combout\ & !\rst~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \used_counter~52_combout\,
	datad => \rst~combout\,
	combout => \used_counter~106_combout\);

-- Location: LCCOMB_X30_Y33_N12
\used_counter~107\ : cycloneii_lcell_comb
-- Equation(s):
-- \used_counter~107_combout\ = (\used_counter~106_combout\ & (((!\used_counter~91_combout\) # (!\index~2_combout\)) # (!\index~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \index~1_combout\,
	datab => \used_counter~106_combout\,
	datac => \index~2_combout\,
	datad => \used_counter~91_combout\,
	combout => \used_counter~107_combout\);

-- Location: LCFF_X30_Y33_N13
\used_counter[1][7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \used_counter~107_combout\,
	ena => \timer[1]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \used_counter[1][7]~regout\);

-- Location: LCCOMB_X29_Y32_N22
\index_value~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \index_value~4_combout\ = (\always0~0_combout\ & ((\LessThan0~18_combout\ & ((\used_counter[1][7]~regout\))) # (!\LessThan0~18_combout\ & (\used_counter[0][7]~regout\)))) # (!\always0~0_combout\ & (\used_counter[0][7]~regout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \used_counter[0][7]~regout\,
	datab => \always0~0_combout\,
	datac => \used_counter[1][7]~regout\,
	datad => \LessThan0~18_combout\,
	combout => \index_value~4_combout\);

-- Location: LCCOMB_X28_Y29_N14
\index_value~25\ : cycloneii_lcell_comb
-- Equation(s):
-- \index_value~25_combout\ = (\always0~1_combout\ & ((\LessThan1~18_combout\ & (\used_counter[2][7]~regout\)) # (!\LessThan1~18_combout\ & ((\index_value~4_combout\))))) # (!\always0~1_combout\ & (((\index_value~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \used_counter[2][7]~regout\,
	datab => \index_value~4_combout\,
	datac => \always0~1_combout\,
	datad => \LessThan1~18_combout\,
	combout => \index_value~25_combout\);

-- Location: LCCOMB_X29_Y29_N8
\index_value~26\ : cycloneii_lcell_comb
-- Equation(s):
-- \index_value~26_combout\ = (\index_value~21_combout\ & (\Add0~14_combout\)) # (!\index_value~21_combout\ & ((\index_value~25_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \index_value~21_combout\,
	datac => \Add0~14_combout\,
	datad => \index_value~25_combout\,
	combout => \index_value~26_combout\);

-- Location: LCCOMB_X31_Y30_N22
\used_counter~129\ : cycloneii_lcell_comb
-- Equation(s):
-- \used_counter~129_combout\ = (\used_counter~128_combout\ & ((\index~2_combout\) # ((\index~1_combout\) # (!\used_counter~91_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \used_counter~128_combout\,
	datab => \index~2_combout\,
	datac => \used_counter~91_combout\,
	datad => \index~1_combout\,
	combout => \used_counter~129_combout\);

-- Location: LCFF_X31_Y30_N23
\used_counter[2][6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \used_counter~129_combout\,
	ena => \timer[1]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \used_counter[2][6]~regout\);

-- Location: LCCOMB_X31_Y29_N16
\used_counter~98\ : cycloneii_lcell_comb
-- Equation(s):
-- \used_counter~98_combout\ = (\used_counter~169_combout\ & ((\index~1_combout\) # ((!\used_counter~91_combout\) # (!\index~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \used_counter~169_combout\,
	datab => \index~1_combout\,
	datac => \index~2_combout\,
	datad => \used_counter~91_combout\,
	combout => \used_counter~98_combout\);

-- Location: LCFF_X31_Y29_N17
\used_counter[0][6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \used_counter~98_combout\,
	ena => \timer[1]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \used_counter[0][6]~regout\);

-- Location: LCCOMB_X31_Y29_N28
\index_value~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \index_value~6_combout\ = (\always0~0_combout\ & ((\LessThan0~18_combout\ & (\used_counter[1][6]~regout\)) # (!\LessThan0~18_combout\ & ((\used_counter[0][6]~regout\))))) # (!\always0~0_combout\ & (((\used_counter[0][6]~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \used_counter[1][6]~regout\,
	datab => \always0~0_combout\,
	datac => \used_counter[0][6]~regout\,
	datad => \LessThan0~18_combout\,
	combout => \index_value~6_combout\);

-- Location: LCCOMB_X31_Y29_N22
\index_value~27\ : cycloneii_lcell_comb
-- Equation(s):
-- \index_value~27_combout\ = (\always0~1_combout\ & ((\LessThan1~18_combout\ & (\used_counter[2][6]~regout\)) # (!\LessThan1~18_combout\ & ((\index_value~6_combout\))))) # (!\always0~1_combout\ & (((\index_value~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \always0~1_combout\,
	datab => \used_counter[2][6]~regout\,
	datac => \index_value~6_combout\,
	datad => \LessThan1~18_combout\,
	combout => \index_value~27_combout\);

-- Location: LCCOMB_X29_Y29_N2
\index_value~28\ : cycloneii_lcell_comb
-- Equation(s):
-- \index_value~28_combout\ = (\index_value~21_combout\ & (\Add0~12_combout\)) # (!\index_value~21_combout\ & ((\index_value~27_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~12_combout\,
	datac => \index_value~27_combout\,
	datad => \index_value~21_combout\,
	combout => \index_value~28_combout\);

-- Location: LCCOMB_X29_Y32_N4
\used_counter~111\ : cycloneii_lcell_comb
-- Equation(s):
-- \used_counter~111_combout\ = (\used_counter~110_combout\ & (((!\used_counter~91_combout\) # (!\index~2_combout\)) # (!\index~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \used_counter~110_combout\,
	datab => \index~1_combout\,
	datac => \index~2_combout\,
	datad => \used_counter~91_combout\,
	combout => \used_counter~111_combout\);

-- Location: LCFF_X29_Y32_N5
\used_counter[1][5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \used_counter~111_combout\,
	ena => \timer[1]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \used_counter[1][5]~regout\);

-- Location: LCCOMB_X29_Y32_N26
\index_value~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \index_value~8_combout\ = (\always0~0_combout\ & ((\LessThan0~18_combout\ & ((\used_counter[1][5]~regout\))) # (!\LessThan0~18_combout\ & (\used_counter[0][5]~regout\)))) # (!\always0~0_combout\ & (\used_counter[0][5]~regout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \used_counter[0][5]~regout\,
	datab => \always0~0_combout\,
	datac => \used_counter[1][5]~regout\,
	datad => \LessThan0~18_combout\,
	combout => \index_value~8_combout\);

-- Location: LCCOMB_X28_Y29_N8
\index_value~29\ : cycloneii_lcell_comb
-- Equation(s):
-- \index_value~29_combout\ = (\always0~1_combout\ & ((\LessThan1~18_combout\ & (\used_counter[2][5]~regout\)) # (!\LessThan1~18_combout\ & ((\index_value~8_combout\))))) # (!\always0~1_combout\ & (((\index_value~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \used_counter[2][5]~regout\,
	datab => \always0~1_combout\,
	datac => \index_value~8_combout\,
	datad => \LessThan1~18_combout\,
	combout => \index_value~29_combout\);

-- Location: LCCOMB_X29_Y29_N0
\index_value~30\ : cycloneii_lcell_comb
-- Equation(s):
-- \index_value~30_combout\ = (\index_value~21_combout\ & (\Add0~10_combout\)) # (!\index_value~21_combout\ & ((\index_value~29_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \index_value~21_combout\,
	datac => \Add0~10_combout\,
	datad => \index_value~29_combout\,
	combout => \index_value~30_combout\);

-- Location: LCCOMB_X29_Y31_N24
\used_counter~178\ : cycloneii_lcell_comb
-- Equation(s):
-- \used_counter~178_combout\ = (!\rst~combout\ & ((\used_counter~70_combout\ & ((\used_counter[3][4]~regout\))) # (!\used_counter~70_combout\ & (\Add0~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \used_counter~70_combout\,
	datab => \rst~combout\,
	datac => \Add0~8_combout\,
	datad => \used_counter[3][4]~regout\,
	combout => \used_counter~178_combout\);

-- Location: LCCOMB_X29_Y31_N2
\used_counter~147\ : cycloneii_lcell_comb
-- Equation(s):
-- \used_counter~147_combout\ = (\used_counter~178_combout\ & (((\index~2_combout\) # (!\used_counter~91_combout\)) # (!\index~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100010011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \index~1_combout\,
	datab => \used_counter~178_combout\,
	datac => \index~2_combout\,
	datad => \used_counter~91_combout\,
	combout => \used_counter~147_combout\);

-- Location: LCFF_X29_Y31_N3
\used_counter[3][4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \used_counter~147_combout\,
	ena => \timer[1]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \used_counter[3][4]~regout\);

-- Location: LCCOMB_X29_Y31_N16
\used_counter~76\ : cycloneii_lcell_comb
-- Equation(s):
-- \used_counter~76_combout\ = (\used_counter~70_combout\ & ((\used_counter[3][4]~regout\))) # (!\used_counter~70_combout\ & (\Add0~8_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \used_counter~70_combout\,
	datac => \Add0~8_combout\,
	datad => \used_counter[3][4]~regout\,
	combout => \used_counter~76_combout\);

-- Location: LCCOMB_X29_Y33_N22
\used_counter~171\ : cycloneii_lcell_comb
-- Equation(s):
-- \used_counter~171_combout\ = (!\rst~combout\ & ((\b1~combout\ & (\Add0~6_combout\)) # (!\b1~combout\ & ((\used_counter[0][3]~regout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~6_combout\,
	datab => \b1~combout\,
	datac => \rst~combout\,
	datad => \used_counter[0][3]~regout\,
	combout => \used_counter~171_combout\);

-- Location: LCCOMB_X29_Y33_N10
\used_counter~100\ : cycloneii_lcell_comb
-- Equation(s):
-- \used_counter~100_combout\ = (\used_counter~171_combout\ & ((\index~1_combout\) # ((!\used_counter~91_combout\) # (!\index~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \index~1_combout\,
	datab => \used_counter~171_combout\,
	datac => \index~2_combout\,
	datad => \used_counter~91_combout\,
	combout => \used_counter~100_combout\);

-- Location: LCFF_X29_Y33_N11
\used_counter[0][3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \used_counter~100_combout\,
	ena => \timer[1]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \used_counter[0][3]~regout\);

-- Location: LCCOMB_X30_Y33_N10
\index_value~12\ : cycloneii_lcell_comb
-- Equation(s):
-- \index_value~12_combout\ = (\always0~0_combout\ & ((\LessThan0~18_combout\ & (\used_counter[1][3]~regout\)) # (!\LessThan0~18_combout\ & ((\used_counter[0][3]~regout\))))) # (!\always0~0_combout\ & (((\used_counter[0][3]~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \used_counter[1][3]~regout\,
	datab => \used_counter[0][3]~regout\,
	datac => \always0~0_combout\,
	datad => \LessThan0~18_combout\,
	combout => \index_value~12_combout\);

-- Location: LCCOMB_X30_Y33_N0
\index_value~33\ : cycloneii_lcell_comb
-- Equation(s):
-- \index_value~33_combout\ = (\always0~1_combout\ & ((\LessThan1~18_combout\ & (\used_counter[2][3]~regout\)) # (!\LessThan1~18_combout\ & ((\index_value~12_combout\))))) # (!\always0~1_combout\ & (((\index_value~12_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \used_counter[2][3]~regout\,
	datab => \always0~1_combout\,
	datac => \LessThan1~18_combout\,
	datad => \index_value~12_combout\,
	combout => \index_value~33_combout\);

-- Location: LCCOMB_X30_Y33_N18
\index_value~34\ : cycloneii_lcell_comb
-- Equation(s):
-- \index_value~34_combout\ = (\index_value~21_combout\ & (\Add0~6_combout\)) # (!\index_value~21_combout\ & ((\index_value~33_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~6_combout\,
	datac => \index_value~21_combout\,
	datad => \index_value~33_combout\,
	combout => \index_value~34_combout\);

-- Location: LCCOMB_X30_Y31_N28
\used_counter~67\ : cycloneii_lcell_comb
-- Equation(s):
-- \used_counter~67_combout\ = (\pressedIndex~2_combout\ & ((\b3~combout\ & (\Add0~4_combout\)) # (!\b3~combout\ & ((\used_counter[2][2]~regout\))))) # (!\pressedIndex~2_combout\ & (((\used_counter[2][2]~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pressedIndex~2_combout\,
	datab => \b3~combout\,
	datac => \Add0~4_combout\,
	datad => \used_counter[2][2]~regout\,
	combout => \used_counter~67_combout\);

-- Location: LCCOMB_X30_Y31_N20
\used_counter~136\ : cycloneii_lcell_comb
-- Equation(s):
-- \used_counter~136_combout\ = (\used_counter~67_combout\ & !\rst~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \used_counter~67_combout\,
	datad => \rst~combout\,
	combout => \used_counter~136_combout\);

-- Location: LCCOMB_X29_Y30_N28
\used_counter~137\ : cycloneii_lcell_comb
-- Equation(s):
-- \used_counter~137_combout\ = (\used_counter~136_combout\ & ((\index~2_combout\) # ((\index~1_combout\) # (!\used_counter~91_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \index~2_combout\,
	datab => \used_counter~136_combout\,
	datac => \used_counter~91_combout\,
	datad => \index~1_combout\,
	combout => \used_counter~137_combout\);

-- Location: LCFF_X29_Y30_N29
\used_counter[2][2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \used_counter~137_combout\,
	ena => \timer[1]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \used_counter[2][2]~regout\);

-- Location: LCCOMB_X28_Y29_N28
\index_value~35\ : cycloneii_lcell_comb
-- Equation(s):
-- \index_value~35_combout\ = (\always0~1_combout\ & ((\LessThan1~18_combout\ & ((\used_counter[2][2]~regout\))) # (!\LessThan1~18_combout\ & (\index_value~14_combout\)))) # (!\always0~1_combout\ & (\index_value~14_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \index_value~14_combout\,
	datab => \always0~1_combout\,
	datac => \used_counter[2][2]~regout\,
	datad => \LessThan1~18_combout\,
	combout => \index_value~35_combout\);

-- Location: LCCOMB_X28_Y29_N6
\index_value~36\ : cycloneii_lcell_comb
-- Equation(s):
-- \index_value~36_combout\ = (\index_value~21_combout\ & (\Add0~4_combout\)) # (!\index_value~21_combout\ & ((\index_value~35_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~4_combout\,
	datac => \index_value~21_combout\,
	datad => \index_value~35_combout\,
	combout => \index_value~36_combout\);

-- Location: LCCOMB_X29_Y31_N14
\used_counter~68\ : cycloneii_lcell_comb
-- Equation(s):
-- \used_counter~68_combout\ = (\pressedIndex~2_combout\ & ((\b3~combout\ & ((\Add0~2_combout\))) # (!\b3~combout\ & (\used_counter[2][1]~regout\)))) # (!\pressedIndex~2_combout\ & (((\used_counter[2][1]~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100001110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pressedIndex~2_combout\,
	datab => \b3~combout\,
	datac => \used_counter[2][1]~regout\,
	datad => \Add0~2_combout\,
	combout => \used_counter~68_combout\);

-- Location: LCCOMB_X32_Y30_N4
\used_counter~138\ : cycloneii_lcell_comb
-- Equation(s):
-- \used_counter~138_combout\ = (!\rst~combout\ & \used_counter~68_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \rst~combout\,
	datad => \used_counter~68_combout\,
	combout => \used_counter~138_combout\);

-- Location: LCCOMB_X29_Y30_N30
\used_counter~139\ : cycloneii_lcell_comb
-- Equation(s):
-- \used_counter~139_combout\ = (\used_counter~138_combout\ & ((\index~2_combout\) # ((\index~1_combout\) # (!\used_counter~91_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \index~2_combout\,
	datab => \used_counter~138_combout\,
	datac => \used_counter~91_combout\,
	datad => \index~1_combout\,
	combout => \used_counter~139_combout\);

-- Location: LCFF_X29_Y30_N31
\used_counter[2][1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \used_counter~139_combout\,
	ena => \timer[1]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \used_counter[2][1]~regout\);

-- Location: LCCOMB_X28_Y30_N4
\used_counter~163\ : cycloneii_lcell_comb
-- Equation(s):
-- \used_counter~163_combout\ = (!\rst~combout\ & ((\b1~combout\ & ((\Add0~2_combout\))) # (!\b1~combout\ & (\used_counter[0][1]~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rst~combout\,
	datab => \used_counter[0][1]~regout\,
	datac => \b1~combout\,
	datad => \Add0~2_combout\,
	combout => \used_counter~163_combout\);

-- Location: LCCOMB_X29_Y30_N10
\used_counter~92\ : cycloneii_lcell_comb
-- Equation(s):
-- \used_counter~92_combout\ = (\used_counter~163_combout\ & (((\index~1_combout\) # (!\used_counter~91_combout\)) # (!\index~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110001001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \index~2_combout\,
	datab => \used_counter~163_combout\,
	datac => \used_counter~91_combout\,
	datad => \index~1_combout\,
	combout => \used_counter~92_combout\);

-- Location: LCFF_X29_Y30_N11
\used_counter[0][1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \used_counter~92_combout\,
	ena => \timer[1]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \used_counter[0][1]~regout\);

-- Location: LCCOMB_X29_Y32_N8
\used_counter~119\ : cycloneii_lcell_comb
-- Equation(s):
-- \used_counter~119_combout\ = (\used_counter~118_combout\ & (((!\used_counter~91_combout\) # (!\index~1_combout\)) # (!\index~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \used_counter~118_combout\,
	datab => \index~2_combout\,
	datac => \index~1_combout\,
	datad => \used_counter~91_combout\,
	combout => \used_counter~119_combout\);

-- Location: LCFF_X29_Y32_N9
\used_counter[1][1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \used_counter~119_combout\,
	ena => \timer[1]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \used_counter[1][1]~regout\);

-- Location: LCCOMB_X28_Y32_N14
\index_value~16\ : cycloneii_lcell_comb
-- Equation(s):
-- \index_value~16_combout\ = (\always0~0_combout\ & ((\LessThan0~18_combout\ & ((\used_counter[1][1]~regout\))) # (!\LessThan0~18_combout\ & (\used_counter[0][1]~regout\)))) # (!\always0~0_combout\ & (\used_counter[0][1]~regout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \always0~0_combout\,
	datab => \used_counter[0][1]~regout\,
	datac => \used_counter[1][1]~regout\,
	datad => \LessThan0~18_combout\,
	combout => \index_value~16_combout\);

-- Location: LCCOMB_X28_Y30_N30
\index_value~37\ : cycloneii_lcell_comb
-- Equation(s):
-- \index_value~37_combout\ = (\always0~1_combout\ & ((\LessThan1~18_combout\ & (\used_counter[2][1]~regout\)) # (!\LessThan1~18_combout\ & ((\index_value~16_combout\))))) # (!\always0~1_combout\ & (((\index_value~16_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \always0~1_combout\,
	datab => \used_counter[2][1]~regout\,
	datac => \index_value~16_combout\,
	datad => \LessThan1~18_combout\,
	combout => \index_value~37_combout\);

-- Location: LCCOMB_X28_Y30_N16
\index_value~38\ : cycloneii_lcell_comb
-- Equation(s):
-- \index_value~38_combout\ = (\index_value~21_combout\ & (\Add0~2_combout\)) # (!\index_value~21_combout\ & ((\index_value~37_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Add0~2_combout\,
	datac => \index_value~21_combout\,
	datad => \index_value~37_combout\,
	combout => \index_value~38_combout\);

-- Location: LCCOMB_X29_Y32_N16
\used_counter~59\ : cycloneii_lcell_comb
-- Equation(s):
-- \used_counter~59_combout\ = (\b2~combout\ & ((\b1~combout\ & (\used_counter[1][0]~regout\)) # (!\b1~combout\ & ((\Add0~0_combout\))))) # (!\b2~combout\ & (((\used_counter[1][0]~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001011010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2~combout\,
	datab => \b1~combout\,
	datac => \used_counter[1][0]~regout\,
	datad => \Add0~0_combout\,
	combout => \used_counter~59_combout\);

-- Location: LCCOMB_X29_Y33_N24
\used_counter~120\ : cycloneii_lcell_comb
-- Equation(s):
-- \used_counter~120_combout\ = (!\rst~combout\ & \used_counter~59_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \rst~combout\,
	datad => \used_counter~59_combout\,
	combout => \used_counter~120_combout\);

-- Location: LCCOMB_X30_Y33_N14
\used_counter~121\ : cycloneii_lcell_comb
-- Equation(s):
-- \used_counter~121_combout\ = (\used_counter~120_combout\ & (((!\used_counter~91_combout\) # (!\index~2_combout\)) # (!\index~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \index~1_combout\,
	datab => \used_counter~120_combout\,
	datac => \index~2_combout\,
	datad => \used_counter~91_combout\,
	combout => \used_counter~121_combout\);

-- Location: LCFF_X30_Y33_N15
\used_counter[1][0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \used_counter~121_combout\,
	ena => \timer[1]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \used_counter[1][0]~regout\);

-- Location: LCCOMB_X31_Y33_N12
\index_value~39\ : cycloneii_lcell_comb
-- Equation(s):
-- \index_value~39_combout\ = (\always0~0_combout\ & ((\LessThan0~18_combout\ & ((\used_counter[1][0]~regout\))) # (!\LessThan0~18_combout\ & (\used_counter[0][0]~regout\)))) # (!\always0~0_combout\ & (\used_counter[0][0]~regout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101000101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \used_counter[0][0]~regout\,
	datab => \always0~0_combout\,
	datac => \LessThan0~18_combout\,
	datad => \used_counter[1][0]~regout\,
	combout => \index_value~39_combout\);

-- Location: LCCOMB_X31_Y33_N8
\index_value~41\ : cycloneii_lcell_comb
-- Equation(s):
-- \index_value~41_combout\ = (\always0~1_combout\ & (\used_counter[2][0]~regout\)) # (!\always0~1_combout\ & ((\index_value~39_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \used_counter[2][0]~regout\,
	datac => \always0~1_combout\,
	datad => \index_value~39_combout\,
	combout => \index_value~41_combout\);

-- Location: LCCOMB_X28_Y29_N16
\index_value~42\ : cycloneii_lcell_comb
-- Equation(s):
-- \index_value~42_combout\ = (\LessThan1~18_combout\ & ((\index_value~41_combout\))) # (!\LessThan1~18_combout\ & (\index_value~40_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \index_value~40_combout\,
	datac => \index_value~41_combout\,
	datad => \LessThan1~18_combout\,
	combout => \index_value~42_combout\);

-- Location: LCCOMB_X29_Y29_N12
\LessThan2~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \LessThan2~1_cout\ = CARRY((!\used_counter~80_combout\ & \index_value~42_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \used_counter~80_combout\,
	datab => \index_value~42_combout\,
	datad => VCC,
	cout => \LessThan2~1_cout\);

-- Location: LCCOMB_X29_Y29_N14
\LessThan2~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \LessThan2~3_cout\ = CARRY((\used_counter~79_combout\ & ((!\LessThan2~1_cout\) # (!\index_value~38_combout\))) # (!\used_counter~79_combout\ & (!\index_value~38_combout\ & !\LessThan2~1_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \used_counter~79_combout\,
	datab => \index_value~38_combout\,
	datad => VCC,
	cin => \LessThan2~1_cout\,
	cout => \LessThan2~3_cout\);

-- Location: LCCOMB_X29_Y29_N16
\LessThan2~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \LessThan2~5_cout\ = CARRY((\used_counter~78_combout\ & (\index_value~36_combout\ & !\LessThan2~3_cout\)) # (!\used_counter~78_combout\ & ((\index_value~36_combout\) # (!\LessThan2~3_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \used_counter~78_combout\,
	datab => \index_value~36_combout\,
	datad => VCC,
	cin => \LessThan2~3_cout\,
	cout => \LessThan2~5_cout\);

-- Location: LCCOMB_X29_Y29_N18
\LessThan2~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \LessThan2~7_cout\ = CARRY((\used_counter~77_combout\ & ((!\LessThan2~5_cout\) # (!\index_value~34_combout\))) # (!\used_counter~77_combout\ & (!\index_value~34_combout\ & !\LessThan2~5_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \used_counter~77_combout\,
	datab => \index_value~34_combout\,
	datad => VCC,
	cin => \LessThan2~5_cout\,
	cout => \LessThan2~7_cout\);

-- Location: LCCOMB_X29_Y29_N20
\LessThan2~9\ : cycloneii_lcell_comb
-- Equation(s):
-- \LessThan2~9_cout\ = CARRY((\index_value~32_combout\ & ((!\LessThan2~7_cout\) # (!\used_counter~76_combout\))) # (!\index_value~32_combout\ & (!\used_counter~76_combout\ & !\LessThan2~7_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \index_value~32_combout\,
	datab => \used_counter~76_combout\,
	datad => VCC,
	cin => \LessThan2~7_cout\,
	cout => \LessThan2~9_cout\);

-- Location: LCCOMB_X29_Y29_N22
\LessThan2~11\ : cycloneii_lcell_comb
-- Equation(s):
-- \LessThan2~11_cout\ = CARRY((\used_counter~75_combout\ & ((!\LessThan2~9_cout\) # (!\index_value~30_combout\))) # (!\used_counter~75_combout\ & (!\index_value~30_combout\ & !\LessThan2~9_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \used_counter~75_combout\,
	datab => \index_value~30_combout\,
	datad => VCC,
	cin => \LessThan2~9_cout\,
	cout => \LessThan2~11_cout\);

-- Location: LCCOMB_X29_Y29_N24
\LessThan2~13\ : cycloneii_lcell_comb
-- Equation(s):
-- \LessThan2~13_cout\ = CARRY((\used_counter~74_combout\ & (\index_value~28_combout\ & !\LessThan2~11_cout\)) # (!\used_counter~74_combout\ & ((\index_value~28_combout\) # (!\LessThan2~11_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \used_counter~74_combout\,
	datab => \index_value~28_combout\,
	datad => VCC,
	cin => \LessThan2~11_cout\,
	cout => \LessThan2~13_cout\);

-- Location: LCCOMB_X29_Y29_N26
\LessThan2~15\ : cycloneii_lcell_comb
-- Equation(s):
-- \LessThan2~15_cout\ = CARRY((\used_counter~73_combout\ & ((!\LessThan2~13_cout\) # (!\index_value~26_combout\))) # (!\used_counter~73_combout\ & (!\index_value~26_combout\ & !\LessThan2~13_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \used_counter~73_combout\,
	datab => \index_value~26_combout\,
	datad => VCC,
	cin => \LessThan2~13_cout\,
	cout => \LessThan2~15_cout\);

-- Location: LCCOMB_X29_Y29_N28
\LessThan2~17\ : cycloneii_lcell_comb
-- Equation(s):
-- \LessThan2~17_cout\ = CARRY((\index_value~24_combout\ & ((!\LessThan2~15_cout\) # (!\used_counter~72_combout\))) # (!\index_value~24_combout\ & (!\used_counter~72_combout\ & !\LessThan2~15_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \index_value~24_combout\,
	datab => \used_counter~72_combout\,
	datad => VCC,
	cin => \LessThan2~15_cout\,
	cout => \LessThan2~17_cout\);

-- Location: LCCOMB_X29_Y29_N30
\LessThan2~18\ : cycloneii_lcell_comb
-- Equation(s):
-- \LessThan2~18_combout\ = (\used_counter~71_combout\ & (\LessThan2~17_cout\ & \index_value~22_combout\)) # (!\used_counter~71_combout\ & ((\LessThan2~17_cout\) # (\index_value~22_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001100110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \used_counter~71_combout\,
	datad => \index_value~22_combout\,
	cin => \LessThan2~17_cout\,
	combout => \LessThan2~18_combout\);

-- Location: LCCOMB_X28_Y29_N20
\index~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \index~0_combout\ = (\always0~0_combout\ & (\LessThan0~18_combout\ & ((!\always0~1_combout\) # (!\LessThan1~18_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LessThan1~18_combout\,
	datab => \always0~0_combout\,
	datac => \always0~1_combout\,
	datad => \LessThan0~18_combout\,
	combout => \index~0_combout\);

-- Location: LCCOMB_X29_Y30_N16
\index~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \index~1_combout\ = (\index~0_combout\) # ((\always0~2_combout\ & \LessThan2~18_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \always0~2_combout\,
	datac => \LessThan2~18_combout\,
	datad => \index~0_combout\,
	combout => \index~1_combout\);

-- Location: LCCOMB_X31_Y30_N0
\used_counter~103\ : cycloneii_lcell_comb
-- Equation(s):
-- \used_counter~103_combout\ = (\used_counter~102_combout\ & (((!\index~1_combout\) # (!\used_counter~91_combout\)) # (!\index~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \used_counter~102_combout\,
	datab => \index~2_combout\,
	datac => \used_counter~91_combout\,
	datad => \index~1_combout\,
	combout => \used_counter~103_combout\);

-- Location: LCFF_X31_Y30_N1
\used_counter[1][9]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \used_counter~103_combout\,
	ena => \timer[1]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \used_counter[1][9]~regout\);

-- Location: LCCOMB_X30_Y32_N0
\index_value~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \index_value~0_combout\ = (\always0~0_combout\ & ((\LessThan0~18_combout\ & ((\used_counter[1][9]~regout\))) # (!\LessThan0~18_combout\ & (\used_counter[0][9]~regout\)))) # (!\always0~0_combout\ & (\used_counter[0][9]~regout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110001001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \always0~0_combout\,
	datab => \used_counter[0][9]~regout\,
	datac => \LessThan0~18_combout\,
	datad => \used_counter[1][9]~regout\,
	combout => \index_value~0_combout\);

-- Location: LCCOMB_X28_Y30_N22
\used_counter~123\ : cycloneii_lcell_comb
-- Equation(s):
-- \used_counter~123_combout\ = (\used_counter~122_combout\ & ((\index~1_combout\) # ((\index~2_combout\) # (!\used_counter~91_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \used_counter~122_combout\,
	datab => \index~1_combout\,
	datac => \index~2_combout\,
	datad => \used_counter~91_combout\,
	combout => \used_counter~123_combout\);

-- Location: LCFF_X28_Y30_N23
\used_counter[2][9]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \used_counter~123_combout\,
	ena => \timer[1]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \used_counter[2][9]~regout\);

-- Location: LCCOMB_X31_Y29_N12
\index_value~20\ : cycloneii_lcell_comb
-- Equation(s):
-- \index_value~20_combout\ = (\always0~1_combout\ & ((\LessThan1~18_combout\ & ((\used_counter[2][9]~regout\))) # (!\LessThan1~18_combout\ & (\index_value~0_combout\)))) # (!\always0~1_combout\ & (\index_value~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \always0~1_combout\,
	datab => \index_value~0_combout\,
	datac => \used_counter[2][9]~regout\,
	datad => \LessThan1~18_combout\,
	combout => \index_value~20_combout\);

-- Location: LCCOMB_X29_Y30_N6
\index_value~43\ : cycloneii_lcell_comb
-- Equation(s):
-- \index_value~43_combout\ = (\LessThan2~18_combout\ & ((\always0~2_combout\ & (\used_counter[3][9]~regout\)) # (!\always0~2_combout\ & ((\index_value~20_combout\))))) # (!\LessThan2~18_combout\ & (((\index_value~20_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \used_counter[3][9]~regout\,
	datab => \index_value~20_combout\,
	datac => \LessThan2~18_combout\,
	datad => \always0~2_combout\,
	combout => \index_value~43_combout\);

-- Location: LCCOMB_X29_Y30_N24
\index_value~44\ : cycloneii_lcell_comb
-- Equation(s):
-- \index_value~44_combout\ = (\LessThan2~18_combout\ & (((\index_value~43_combout\)))) # (!\LessThan2~18_combout\ & ((\index_value~21_combout\ & (\Add0~18_combout\)) # (!\index_value~21_combout\ & ((\index_value~43_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LessThan2~18_combout\,
	datab => \Add0~18_combout\,
	datac => \index_value~21_combout\,
	datad => \index_value~43_combout\,
	combout => \index_value~44_combout\);

-- Location: LCCOMB_X31_Y30_N6
\used_counter~156\ : cycloneii_lcell_comb
-- Equation(s):
-- \used_counter~156_combout\ = (\used_counter~84_combout\ & \used_counter~152_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \used_counter~84_combout\,
	datad => \used_counter~152_combout\,
	combout => \used_counter~156_combout\);

-- Location: LCFF_X31_Y30_N7
\used_counter[4][8]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \used_counter~156_combout\,
	ena => \timer[1]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \used_counter[4][8]~regout\);

-- Location: LCCOMB_X31_Y34_N10
\used_counter~84\ : cycloneii_lcell_comb
-- Equation(s):
-- \used_counter~84_combout\ = (\b5~combout\ & ((\pressedIndex~0_combout\ & (\Add0~16_combout\)) # (!\pressedIndex~0_combout\ & ((\used_counter[4][8]~regout\))))) # (!\b5~combout\ & (((\used_counter[4][8]~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b5~combout\,
	datab => \pressedIndex~0_combout\,
	datac => \Add0~16_combout\,
	datad => \used_counter[4][8]~regout\,
	combout => \used_counter~84_combout\);

-- Location: LCCOMB_X31_Y30_N28
\used_counter~157\ : cycloneii_lcell_comb
-- Equation(s):
-- \used_counter~157_combout\ = (\used_counter~85_combout\ & \used_counter~152_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \used_counter~85_combout\,
	datad => \used_counter~152_combout\,
	combout => \used_counter~157_combout\);

-- Location: LCFF_X31_Y30_N29
\used_counter[4][7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \used_counter~157_combout\,
	ena => \timer[1]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \used_counter[4][7]~regout\);

-- Location: LCCOMB_X31_Y33_N14
\used_counter~85\ : cycloneii_lcell_comb
-- Equation(s):
-- \used_counter~85_combout\ = (\pressedIndex~0_combout\ & ((\b5~combout\ & (\Add0~14_combout\)) # (!\b5~combout\ & ((\used_counter[4][7]~regout\))))) # (!\pressedIndex~0_combout\ & (((\used_counter[4][7]~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pressedIndex~0_combout\,
	datab => \b5~combout\,
	datac => \Add0~14_combout\,
	datad => \used_counter[4][7]~regout\,
	combout => \used_counter~85_combout\);

-- Location: LCCOMB_X30_Y30_N24
\index_value~49\ : cycloneii_lcell_comb
-- Equation(s):
-- \index_value~49_combout\ = (\always0~2_combout\ & ((\LessThan2~18_combout\ & (\used_counter[3][6]~regout\)) # (!\LessThan2~18_combout\ & ((\index_value~27_combout\))))) # (!\always0~2_combout\ & (((\index_value~27_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \used_counter[3][6]~regout\,
	datab => \index_value~27_combout\,
	datac => \always0~2_combout\,
	datad => \LessThan2~18_combout\,
	combout => \index_value~49_combout\);

-- Location: LCCOMB_X30_Y30_N26
\index_value~50\ : cycloneii_lcell_comb
-- Equation(s):
-- \index_value~50_combout\ = (\index_value~21_combout\ & ((\LessThan2~18_combout\ & ((\index_value~49_combout\))) # (!\LessThan2~18_combout\ & (\Add0~12_combout\)))) # (!\index_value~21_combout\ & (((\index_value~49_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \index_value~21_combout\,
	datab => \Add0~12_combout\,
	datac => \index_value~49_combout\,
	datad => \LessThan2~18_combout\,
	combout => \index_value~50_combout\);

-- Location: LCCOMB_X28_Y32_N30
\used_counter~70\ : cycloneii_lcell_comb
-- Equation(s):
-- \used_counter~70_combout\ = (\b1~combout\) # (((\b3~combout\) # (\b2~combout\)) # (!\b4~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b1~combout\,
	datab => \b4~combout\,
	datac => \b3~combout\,
	datad => \b2~combout\,
	combout => \used_counter~70_combout\);

-- Location: LCCOMB_X28_Y31_N18
\used_counter~177\ : cycloneii_lcell_comb
-- Equation(s):
-- \used_counter~177_combout\ = (!\rst~combout\ & ((\used_counter~70_combout\ & ((\used_counter[3][5]~regout\))) # (!\used_counter~70_combout\ & (\Add0~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~10_combout\,
	datab => \rst~combout\,
	datac => \used_counter~70_combout\,
	datad => \used_counter[3][5]~regout\,
	combout => \used_counter~177_combout\);

-- Location: LCCOMB_X29_Y30_N2
\used_counter~146\ : cycloneii_lcell_comb
-- Equation(s):
-- \used_counter~146_combout\ = (\used_counter~177_combout\ & ((\index~2_combout\) # ((!\index~1_combout\) # (!\used_counter~91_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \index~2_combout\,
	datab => \used_counter~177_combout\,
	datac => \used_counter~91_combout\,
	datad => \index~1_combout\,
	combout => \used_counter~146_combout\);

-- Location: LCFF_X29_Y30_N3
\used_counter[3][5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \used_counter~146_combout\,
	ena => \timer[1]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \used_counter[3][5]~regout\);

-- Location: LCCOMB_X29_Y32_N28
\index_value~51\ : cycloneii_lcell_comb
-- Equation(s):
-- \index_value~51_combout\ = (\always0~2_combout\ & ((\LessThan2~18_combout\ & (\used_counter[3][5]~regout\)) # (!\LessThan2~18_combout\ & ((\index_value~29_combout\))))) # (!\always0~2_combout\ & (((\index_value~29_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \always0~2_combout\,
	datab => \used_counter[3][5]~regout\,
	datac => \index_value~29_combout\,
	datad => \LessThan2~18_combout\,
	combout => \index_value~51_combout\);

-- Location: LCCOMB_X29_Y32_N10
\index_value~52\ : cycloneii_lcell_comb
-- Equation(s):
-- \index_value~52_combout\ = (\index_value~21_combout\ & ((\LessThan2~18_combout\ & ((\index_value~51_combout\))) # (!\LessThan2~18_combout\ & (\Add0~10_combout\)))) # (!\index_value~21_combout\ & (((\index_value~51_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~10_combout\,
	datab => \index_value~21_combout\,
	datac => \LessThan2~18_combout\,
	datad => \index_value~51_combout\,
	combout => \index_value~52_combout\);

-- Location: LCCOMB_X30_Y31_N8
\used_counter~112\ : cycloneii_lcell_comb
-- Equation(s):
-- \used_counter~112_combout\ = (\used_counter~55_combout\ & !\rst~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \used_counter~55_combout\,
	datad => \rst~combout\,
	combout => \used_counter~112_combout\);

-- Location: LCCOMB_X30_Y31_N4
\used_counter~113\ : cycloneii_lcell_comb
-- Equation(s):
-- \used_counter~113_combout\ = (\used_counter~112_combout\ & (((!\used_counter~91_combout\) # (!\index~2_combout\)) # (!\index~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \index~1_combout\,
	datab => \used_counter~112_combout\,
	datac => \index~2_combout\,
	datad => \used_counter~91_combout\,
	combout => \used_counter~113_combout\);

-- Location: LCFF_X30_Y31_N5
\used_counter[1][4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \used_counter~113_combout\,
	ena => \timer[1]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \used_counter[1][4]~regout\);

-- Location: LCCOMB_X31_Y29_N20
\index_value~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \index_value~10_combout\ = (\always0~0_combout\ & ((\LessThan0~18_combout\ & ((\used_counter[1][4]~regout\))) # (!\LessThan0~18_combout\ & (\used_counter[0][4]~regout\)))) # (!\always0~0_combout\ & (\used_counter[0][4]~regout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \used_counter[0][4]~regout\,
	datab => \used_counter[1][4]~regout\,
	datac => \always0~0_combout\,
	datad => \LessThan0~18_combout\,
	combout => \index_value~10_combout\);

-- Location: LCCOMB_X28_Y29_N30
\index_value~31\ : cycloneii_lcell_comb
-- Equation(s):
-- \index_value~31_combout\ = (\always0~1_combout\ & ((\LessThan1~18_combout\ & (\used_counter[2][4]~regout\)) # (!\LessThan1~18_combout\ & ((\index_value~10_combout\))))) # (!\always0~1_combout\ & (((\index_value~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \used_counter[2][4]~regout\,
	datab => \always0~1_combout\,
	datac => \index_value~10_combout\,
	datad => \LessThan1~18_combout\,
	combout => \index_value~31_combout\);

-- Location: LCCOMB_X29_Y31_N12
\index_value~53\ : cycloneii_lcell_comb
-- Equation(s):
-- \index_value~53_combout\ = (\always0~2_combout\ & ((\LessThan2~18_combout\ & (\used_counter[3][4]~regout\)) # (!\LessThan2~18_combout\ & ((\index_value~31_combout\))))) # (!\always0~2_combout\ & (((\index_value~31_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \always0~2_combout\,
	datab => \used_counter[3][4]~regout\,
	datac => \LessThan2~18_combout\,
	datad => \index_value~31_combout\,
	combout => \index_value~53_combout\);

-- Location: LCCOMB_X29_Y31_N18
\index_value~54\ : cycloneii_lcell_comb
-- Equation(s):
-- \index_value~54_combout\ = (\index_value~21_combout\ & ((\LessThan2~18_combout\ & ((\index_value~53_combout\))) # (!\LessThan2~18_combout\ & (\Add0~8_combout\)))) # (!\index_value~21_combout\ & (((\index_value~53_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~8_combout\,
	datab => \index_value~21_combout\,
	datac => \LessThan2~18_combout\,
	datad => \index_value~53_combout\,
	combout => \index_value~54_combout\);

-- Location: LCCOMB_X31_Y33_N10
\used_counter~179\ : cycloneii_lcell_comb
-- Equation(s):
-- \used_counter~179_combout\ = (!\rst~combout\ & ((\used_counter~70_combout\ & (\used_counter[3][3]~regout\)) # (!\used_counter~70_combout\ & ((\Add0~6_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \used_counter~70_combout\,
	datab => \rst~combout\,
	datac => \used_counter[3][3]~regout\,
	datad => \Add0~6_combout\,
	combout => \used_counter~179_combout\);

-- Location: LCCOMB_X30_Y33_N30
\used_counter~148\ : cycloneii_lcell_comb
-- Equation(s):
-- \used_counter~148_combout\ = (\used_counter~179_combout\ & (((\index~2_combout\) # (!\used_counter~91_combout\)) # (!\index~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100010011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \index~1_combout\,
	datab => \used_counter~179_combout\,
	datac => \index~2_combout\,
	datad => \used_counter~91_combout\,
	combout => \used_counter~148_combout\);

-- Location: LCFF_X30_Y33_N31
\used_counter[3][3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \used_counter~148_combout\,
	ena => \timer[1]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \used_counter[3][3]~regout\);

-- Location: LCCOMB_X30_Y33_N22
\index_value~55\ : cycloneii_lcell_comb
-- Equation(s):
-- \index_value~55_combout\ = (\always0~2_combout\ & ((\LessThan2~18_combout\ & (\used_counter[3][3]~regout\)) # (!\LessThan2~18_combout\ & ((\index_value~33_combout\))))) # (!\always0~2_combout\ & (((\index_value~33_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \always0~2_combout\,
	datab => \used_counter[3][3]~regout\,
	datac => \index_value~33_combout\,
	datad => \LessThan2~18_combout\,
	combout => \index_value~55_combout\);

-- Location: LCCOMB_X30_Y33_N8
\index_value~56\ : cycloneii_lcell_comb
-- Equation(s):
-- \index_value~56_combout\ = (\index_value~21_combout\ & ((\LessThan2~18_combout\ & ((\index_value~55_combout\))) # (!\LessThan2~18_combout\ & (\Add0~6_combout\)))) # (!\index_value~21_combout\ & (((\index_value~55_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \index_value~21_combout\,
	datab => \Add0~6_combout\,
	datac => \LessThan2~18_combout\,
	datad => \index_value~55_combout\,
	combout => \index_value~56_combout\);

-- Location: LCCOMB_X29_Y30_N26
\index_value~57\ : cycloneii_lcell_comb
-- Equation(s):
-- \index_value~57_combout\ = (\always0~2_combout\ & ((\LessThan2~18_combout\ & (\used_counter[3][2]~regout\)) # (!\LessThan2~18_combout\ & ((\index_value~35_combout\))))) # (!\always0~2_combout\ & (((\index_value~35_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \used_counter[3][2]~regout\,
	datab => \always0~2_combout\,
	datac => \LessThan2~18_combout\,
	datad => \index_value~35_combout\,
	combout => \index_value~57_combout\);

-- Location: LCCOMB_X29_Y30_N4
\index_value~58\ : cycloneii_lcell_comb
-- Equation(s):
-- \index_value~58_combout\ = (\index_value~21_combout\ & ((\LessThan2~18_combout\ & ((\index_value~57_combout\))) # (!\LessThan2~18_combout\ & (\Add0~4_combout\)))) # (!\index_value~21_combout\ & (((\index_value~57_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~4_combout\,
	datab => \index_value~21_combout\,
	datac => \LessThan2~18_combout\,
	datad => \index_value~57_combout\,
	combout => \index_value~58_combout\);

-- Location: LCCOMB_X31_Y34_N0
\used_counter~81\ : cycloneii_lcell_comb
-- Equation(s):
-- \used_counter~81_combout\ = (\pressedIndex~0_combout\ & ((\b5~combout\ & ((\Add0~2_combout\))) # (!\b5~combout\ & (\used_counter[4][1]~regout\)))) # (!\pressedIndex~0_combout\ & (\used_counter[4][1]~regout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101000101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \used_counter[4][1]~regout\,
	datab => \pressedIndex~0_combout\,
	datac => \b5~combout\,
	datad => \Add0~2_combout\,
	combout => \used_counter~81_combout\);

-- Location: LCCOMB_X29_Y33_N2
\used_counter~182\ : cycloneii_lcell_comb
-- Equation(s):
-- \used_counter~182_combout\ = (!\rst~combout\ & ((\used_counter~70_combout\ & ((\used_counter[3][0]~regout\))) # (!\used_counter~70_combout\ & (\Add0~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \used_counter~70_combout\,
	datab => \Add0~0_combout\,
	datac => \rst~combout\,
	datad => \used_counter[3][0]~regout\,
	combout => \used_counter~182_combout\);

-- Location: LCCOMB_X29_Y33_N18
\used_counter~151\ : cycloneii_lcell_comb
-- Equation(s):
-- \used_counter~151_combout\ = (\used_counter~182_combout\ & (((\index~2_combout\) # (!\used_counter~91_combout\)) # (!\index~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100010011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \index~1_combout\,
	datab => \used_counter~182_combout\,
	datac => \index~2_combout\,
	datad => \used_counter~91_combout\,
	combout => \used_counter~151_combout\);

-- Location: LCFF_X29_Y33_N19
\used_counter[3][0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \used_counter~151_combout\,
	ena => \timer[1]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \used_counter[3][0]~regout\);

-- Location: LCCOMB_X30_Y30_N28
\index_value~62\ : cycloneii_lcell_comb
-- Equation(s):
-- \index_value~62_combout\ = (\always0~2_combout\ & ((\LessThan2~18_combout\ & ((\used_counter[3][0]~regout\))) # (!\LessThan2~18_combout\ & (\index_value~61_combout\)))) # (!\always0~2_combout\ & (\index_value~61_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \index_value~61_combout\,
	datab => \used_counter[3][0]~regout\,
	datac => \always0~2_combout\,
	datad => \LessThan2~18_combout\,
	combout => \index_value~62_combout\);

-- Location: LCCOMB_X30_Y30_N30
\index_value~63\ : cycloneii_lcell_comb
-- Equation(s):
-- \index_value~63_combout\ = (\index_value~21_combout\ & ((\LessThan2~18_combout\ & ((\index_value~62_combout\))) # (!\LessThan2~18_combout\ & (\Add0~0_combout\)))) # (!\index_value~21_combout\ & (((\index_value~62_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \index_value~21_combout\,
	datab => \Add0~0_combout\,
	datac => \LessThan2~18_combout\,
	datad => \index_value~62_combout\,
	combout => \index_value~63_combout\);

-- Location: LCCOMB_X30_Y30_N4
\LessThan3~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \LessThan3~1_cout\ = CARRY((!\used_counter~82_combout\ & \index_value~63_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \used_counter~82_combout\,
	datab => \index_value~63_combout\,
	datad => VCC,
	cout => \LessThan3~1_cout\);

-- Location: LCCOMB_X30_Y30_N6
\LessThan3~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \LessThan3~3_cout\ = CARRY((\index_value~60_combout\ & (\used_counter~81_combout\ & !\LessThan3~1_cout\)) # (!\index_value~60_combout\ & ((\used_counter~81_combout\) # (!\LessThan3~1_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \index_value~60_combout\,
	datab => \used_counter~81_combout\,
	datad => VCC,
	cin => \LessThan3~1_cout\,
	cout => \LessThan3~3_cout\);

-- Location: LCCOMB_X30_Y30_N8
\LessThan3~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \LessThan3~5_cout\ = CARRY((\used_counter~90_combout\ & (\index_value~58_combout\ & !\LessThan3~3_cout\)) # (!\used_counter~90_combout\ & ((\index_value~58_combout\) # (!\LessThan3~3_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \used_counter~90_combout\,
	datab => \index_value~58_combout\,
	datad => VCC,
	cin => \LessThan3~3_cout\,
	cout => \LessThan3~5_cout\);

-- Location: LCCOMB_X30_Y30_N10
\LessThan3~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \LessThan3~7_cout\ = CARRY((\used_counter~89_combout\ & ((!\LessThan3~5_cout\) # (!\index_value~56_combout\))) # (!\used_counter~89_combout\ & (!\index_value~56_combout\ & !\LessThan3~5_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \used_counter~89_combout\,
	datab => \index_value~56_combout\,
	datad => VCC,
	cin => \LessThan3~5_cout\,
	cout => \LessThan3~7_cout\);

-- Location: LCCOMB_X30_Y30_N12
\LessThan3~9\ : cycloneii_lcell_comb
-- Equation(s):
-- \LessThan3~9_cout\ = CARRY((\used_counter~88_combout\ & (\index_value~54_combout\ & !\LessThan3~7_cout\)) # (!\used_counter~88_combout\ & ((\index_value~54_combout\) # (!\LessThan3~7_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \used_counter~88_combout\,
	datab => \index_value~54_combout\,
	datad => VCC,
	cin => \LessThan3~7_cout\,
	cout => \LessThan3~9_cout\);

-- Location: LCCOMB_X30_Y30_N14
\LessThan3~11\ : cycloneii_lcell_comb
-- Equation(s):
-- \LessThan3~11_cout\ = CARRY((\used_counter~87_combout\ & ((!\LessThan3~9_cout\) # (!\index_value~52_combout\))) # (!\used_counter~87_combout\ & (!\index_value~52_combout\ & !\LessThan3~9_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \used_counter~87_combout\,
	datab => \index_value~52_combout\,
	datad => VCC,
	cin => \LessThan3~9_cout\,
	cout => \LessThan3~11_cout\);

-- Location: LCCOMB_X30_Y30_N16
\LessThan3~13\ : cycloneii_lcell_comb
-- Equation(s):
-- \LessThan3~13_cout\ = CARRY((\used_counter~86_combout\ & (\index_value~50_combout\ & !\LessThan3~11_cout\)) # (!\used_counter~86_combout\ & ((\index_value~50_combout\) # (!\LessThan3~11_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \used_counter~86_combout\,
	datab => \index_value~50_combout\,
	datad => VCC,
	cin => \LessThan3~11_cout\,
	cout => \LessThan3~13_cout\);

-- Location: LCCOMB_X30_Y30_N18
\LessThan3~15\ : cycloneii_lcell_comb
-- Equation(s):
-- \LessThan3~15_cout\ = CARRY((\index_value~48_combout\ & (\used_counter~85_combout\ & !\LessThan3~13_cout\)) # (!\index_value~48_combout\ & ((\used_counter~85_combout\) # (!\LessThan3~13_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \index_value~48_combout\,
	datab => \used_counter~85_combout\,
	datad => VCC,
	cin => \LessThan3~13_cout\,
	cout => \LessThan3~15_cout\);

-- Location: LCCOMB_X30_Y30_N20
\LessThan3~17\ : cycloneii_lcell_comb
-- Equation(s):
-- \LessThan3~17_cout\ = CARRY((\index_value~46_combout\ & ((!\LessThan3~15_cout\) # (!\used_counter~84_combout\))) # (!\index_value~46_combout\ & (!\used_counter~84_combout\ & !\LessThan3~15_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \index_value~46_combout\,
	datab => \used_counter~84_combout\,
	datad => VCC,
	cin => \LessThan3~15_cout\,
	cout => \LessThan3~17_cout\);

-- Location: LCCOMB_X30_Y30_N22
\LessThan3~18\ : cycloneii_lcell_comb
-- Equation(s):
-- \LessThan3~18_combout\ = (\used_counter~83_combout\ & (\LessThan3~17_cout\ & \index_value~44_combout\)) # (!\used_counter~83_combout\ & ((\LessThan3~17_cout\) # (\index_value~44_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001100110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \used_counter~83_combout\,
	datad => \index_value~44_combout\,
	cin => \LessThan3~17_cout\,
	combout => \LessThan3~18_combout\);

-- Location: LCCOMB_X30_Y30_N0
\used_counter~91\ : cycloneii_lcell_comb
-- Equation(s):
-- \used_counter~91_combout\ = (\always0~4_combout\ & ((!\LessThan3~18_combout\) # (!\always0~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \always0~4_combout\,
	datac => \always0~5_combout\,
	datad => \LessThan3~18_combout\,
	combout => \used_counter~91_combout\);

-- Location: LCCOMB_X29_Y33_N30
\used_counter~94\ : cycloneii_lcell_comb
-- Equation(s):
-- \used_counter~94_combout\ = (\used_counter~165_combout\ & ((\index~1_combout\) # ((!\used_counter~91_combout\) # (!\index~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \index~1_combout\,
	datab => \used_counter~165_combout\,
	datac => \index~2_combout\,
	datad => \used_counter~91_combout\,
	combout => \used_counter~94_combout\);

-- Location: LCFF_X29_Y33_N31
\used_counter[0][9]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \used_counter~94_combout\,
	ena => \timer[1]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \used_counter[0][9]~regout\);

-- Location: LCCOMB_X30_Y32_N28
\used_counter~42\ : cycloneii_lcell_comb
-- Equation(s):
-- \used_counter~42_combout\ = (\b1~combout\ & ((\Add0~18_combout\))) # (!\b1~combout\ & (\used_counter[0][9]~regout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b1~combout\,
	datac => \used_counter[0][9]~regout\,
	datad => \Add0~18_combout\,
	combout => \used_counter~42_combout\);

-- Location: LCCOMB_X31_Y32_N24
\used_counter~50\ : cycloneii_lcell_comb
-- Equation(s):
-- \used_counter~50_combout\ = (\b2~combout\ & ((\b1~combout\ & ((\used_counter[1][9]~regout\))) # (!\b1~combout\ & (\Add0~18_combout\)))) # (!\b2~combout\ & (((\used_counter[1][9]~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2~combout\,
	datab => \b1~combout\,
	datac => \Add0~18_combout\,
	datad => \used_counter[1][9]~regout\,
	combout => \used_counter~50_combout\);

-- Location: LCCOMB_X31_Y32_N2
\used_counter~105\ : cycloneii_lcell_comb
-- Equation(s):
-- \used_counter~105_combout\ = (\used_counter~104_combout\ & (((!\index~2_combout\) # (!\used_counter~91_combout\)) # (!\index~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \used_counter~104_combout\,
	datab => \index~1_combout\,
	datac => \used_counter~91_combout\,
	datad => \index~2_combout\,
	combout => \used_counter~105_combout\);

-- Location: LCFF_X31_Y32_N3
\used_counter[1][8]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \used_counter~105_combout\,
	ena => \timer[1]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \used_counter[1][8]~regout\);

-- Location: LCCOMB_X31_Y32_N0
\used_counter~51\ : cycloneii_lcell_comb
-- Equation(s):
-- \used_counter~51_combout\ = (\b2~combout\ & ((\b1~combout\ & ((\used_counter[1][8]~regout\))) # (!\b1~combout\ & (\Add0~16_combout\)))) # (!\b2~combout\ & (((\used_counter[1][8]~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2~combout\,
	datab => \b1~combout\,
	datac => \Add0~16_combout\,
	datad => \used_counter[1][8]~regout\,
	combout => \used_counter~51_combout\);

-- Location: LCCOMB_X29_Y33_N28
\used_counter~167\ : cycloneii_lcell_comb
-- Equation(s):
-- \used_counter~167_combout\ = (!\rst~combout\ & ((\b1~combout\ & ((\Add0~14_combout\))) # (!\b1~combout\ & (\used_counter[0][7]~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rst~combout\,
	datab => \used_counter[0][7]~regout\,
	datac => \b1~combout\,
	datad => \Add0~14_combout\,
	combout => \used_counter~167_combout\);

-- Location: LCCOMB_X29_Y33_N16
\used_counter~96\ : cycloneii_lcell_comb
-- Equation(s):
-- \used_counter~96_combout\ = (\used_counter~167_combout\ & ((\index~1_combout\) # ((!\used_counter~91_combout\) # (!\index~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \index~1_combout\,
	datab => \used_counter~167_combout\,
	datac => \index~2_combout\,
	datad => \used_counter~91_combout\,
	combout => \used_counter~96_combout\);

-- Location: LCFF_X29_Y33_N17
\used_counter[0][7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \used_counter~96_combout\,
	ena => \timer[1]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \used_counter[0][7]~regout\);

-- Location: LCCOMB_X30_Y32_N30
\used_counter~44\ : cycloneii_lcell_comb
-- Equation(s):
-- \used_counter~44_combout\ = (\b1~combout\ & ((\Add0~14_combout\))) # (!\b1~combout\ & (\used_counter[0][7]~regout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b1~combout\,
	datac => \used_counter[0][7]~regout\,
	datad => \Add0~14_combout\,
	combout => \used_counter~44_combout\);

-- Location: LCCOMB_X31_Y29_N24
\used_counter~109\ : cycloneii_lcell_comb
-- Equation(s):
-- \used_counter~109_combout\ = (\used_counter~108_combout\ & (((!\used_counter~91_combout\) # (!\index~2_combout\)) # (!\index~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \used_counter~108_combout\,
	datab => \index~1_combout\,
	datac => \index~2_combout\,
	datad => \used_counter~91_combout\,
	combout => \used_counter~109_combout\);

-- Location: LCFF_X31_Y29_N25
\used_counter[1][6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \used_counter~109_combout\,
	ena => \timer[1]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \used_counter[1][6]~regout\);

-- Location: LCCOMB_X31_Y29_N10
\used_counter~53\ : cycloneii_lcell_comb
-- Equation(s):
-- \used_counter~53_combout\ = (\b2~combout\ & ((\b1~combout\ & (\used_counter[1][6]~regout\)) # (!\b1~combout\ & ((\Add0~12_combout\))))) # (!\b2~combout\ & (((\used_counter[1][6]~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001011010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2~combout\,
	datab => \b1~combout\,
	datac => \used_counter[1][6]~regout\,
	datad => \Add0~12_combout\,
	combout => \used_counter~53_combout\);

-- Location: LCCOMB_X29_Y32_N18
\used_counter~54\ : cycloneii_lcell_comb
-- Equation(s):
-- \used_counter~54_combout\ = (\b2~combout\ & ((\b1~combout\ & (\used_counter[1][5]~regout\)) # (!\b1~combout\ & ((\Add0~10_combout\))))) # (!\b2~combout\ & (((\used_counter[1][5]~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001011010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2~combout\,
	datab => \b1~combout\,
	datac => \used_counter[1][5]~regout\,
	datad => \Add0~10_combout\,
	combout => \used_counter~54_combout\);

-- Location: LCCOMB_X30_Y32_N22
\used_counter~48\ : cycloneii_lcell_comb
-- Equation(s):
-- \used_counter~48_combout\ = (\b1~combout\ & (\Add0~6_combout\)) # (!\b1~combout\ & ((\used_counter[0][3]~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b1~combout\,
	datac => \Add0~6_combout\,
	datad => \used_counter[0][3]~regout\,
	combout => \used_counter~48_combout\);

-- Location: LCCOMB_X30_Y31_N22
\used_counter~116\ : cycloneii_lcell_comb
-- Equation(s):
-- \used_counter~116_combout\ = (\used_counter~57_combout\ & !\rst~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \used_counter~57_combout\,
	datad => \rst~combout\,
	combout => \used_counter~116_combout\);

-- Location: LCCOMB_X30_Y31_N16
\used_counter~117\ : cycloneii_lcell_comb
-- Equation(s):
-- \used_counter~117_combout\ = (\used_counter~116_combout\ & (((!\used_counter~91_combout\) # (!\index~2_combout\)) # (!\index~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \index~1_combout\,
	datab => \used_counter~116_combout\,
	datac => \index~2_combout\,
	datad => \used_counter~91_combout\,
	combout => \used_counter~117_combout\);

-- Location: LCFF_X30_Y31_N17
\used_counter[1][2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \used_counter~117_combout\,
	ena => \timer[1]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \used_counter[1][2]~regout\);

-- Location: LCCOMB_X30_Y31_N26
\used_counter~57\ : cycloneii_lcell_comb
-- Equation(s):
-- \used_counter~57_combout\ = (\b1~combout\ & (((\used_counter[1][2]~regout\)))) # (!\b1~combout\ & ((\b2~combout\ & ((\Add0~4_combout\))) # (!\b2~combout\ & (\used_counter[1][2]~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010010110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b1~combout\,
	datab => \b2~combout\,
	datac => \used_counter[1][2]~regout\,
	datad => \Add0~4_combout\,
	combout => \used_counter~57_combout\);

-- Location: LCCOMB_X29_Y32_N24
\used_counter~40\ : cycloneii_lcell_comb
-- Equation(s):
-- \used_counter~40_combout\ = (\b1~combout\ & ((\Add0~2_combout\))) # (!\b1~combout\ & (\used_counter[0][1]~regout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \b1~combout\,
	datac => \used_counter[0][1]~regout\,
	datad => \Add0~2_combout\,
	combout => \used_counter~40_combout\);

-- Location: LCCOMB_X30_Y32_N2
\LessThan0~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \LessThan0~1_cout\ = CARRY((\used_counter~41_combout\ & !\used_counter~59_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \used_counter~41_combout\,
	datab => \used_counter~59_combout\,
	datad => VCC,
	cout => \LessThan0~1_cout\);

-- Location: LCCOMB_X30_Y32_N4
\LessThan0~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \LessThan0~3_cout\ = CARRY((\used_counter~58_combout\ & ((!\LessThan0~1_cout\) # (!\used_counter~40_combout\))) # (!\used_counter~58_combout\ & (!\used_counter~40_combout\ & !\LessThan0~1_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \used_counter~58_combout\,
	datab => \used_counter~40_combout\,
	datad => VCC,
	cin => \LessThan0~1_cout\,
	cout => \LessThan0~3_cout\);

-- Location: LCCOMB_X30_Y32_N6
\LessThan0~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \LessThan0~5_cout\ = CARRY((\used_counter~49_combout\ & ((!\LessThan0~3_cout\) # (!\used_counter~57_combout\))) # (!\used_counter~49_combout\ & (!\used_counter~57_combout\ & !\LessThan0~3_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \used_counter~49_combout\,
	datab => \used_counter~57_combout\,
	datad => VCC,
	cin => \LessThan0~3_cout\,
	cout => \LessThan0~5_cout\);

-- Location: LCCOMB_X30_Y32_N8
\LessThan0~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \LessThan0~7_cout\ = CARRY((\used_counter~56_combout\ & ((!\LessThan0~5_cout\) # (!\used_counter~48_combout\))) # (!\used_counter~56_combout\ & (!\used_counter~48_combout\ & !\LessThan0~5_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \used_counter~56_combout\,
	datab => \used_counter~48_combout\,
	datad => VCC,
	cin => \LessThan0~5_cout\,
	cout => \LessThan0~7_cout\);

-- Location: LCCOMB_X30_Y32_N10
\LessThan0~9\ : cycloneii_lcell_comb
-- Equation(s):
-- \LessThan0~9_cout\ = CARRY((\used_counter~55_combout\ & (\used_counter~45_combout\ & !\LessThan0~7_cout\)) # (!\used_counter~55_combout\ & ((\used_counter~45_combout\) # (!\LessThan0~7_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \used_counter~55_combout\,
	datab => \used_counter~45_combout\,
	datad => VCC,
	cin => \LessThan0~7_cout\,
	cout => \LessThan0~9_cout\);

-- Location: LCCOMB_X30_Y32_N12
\LessThan0~11\ : cycloneii_lcell_comb
-- Equation(s):
-- \LessThan0~11_cout\ = CARRY((\used_counter~47_combout\ & (\used_counter~54_combout\ & !\LessThan0~9_cout\)) # (!\used_counter~47_combout\ & ((\used_counter~54_combout\) # (!\LessThan0~9_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \used_counter~47_combout\,
	datab => \used_counter~54_combout\,
	datad => VCC,
	cin => \LessThan0~9_cout\,
	cout => \LessThan0~11_cout\);

-- Location: LCCOMB_X30_Y32_N14
\LessThan0~13\ : cycloneii_lcell_comb
-- Equation(s):
-- \LessThan0~13_cout\ = CARRY((\used_counter~46_combout\ & ((!\LessThan0~11_cout\) # (!\used_counter~53_combout\))) # (!\used_counter~46_combout\ & (!\used_counter~53_combout\ & !\LessThan0~11_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \used_counter~46_combout\,
	datab => \used_counter~53_combout\,
	datad => VCC,
	cin => \LessThan0~11_cout\,
	cout => \LessThan0~13_cout\);

-- Location: LCCOMB_X30_Y32_N16
\LessThan0~15\ : cycloneii_lcell_comb
-- Equation(s):
-- \LessThan0~15_cout\ = CARRY((\used_counter~52_combout\ & ((!\LessThan0~13_cout\) # (!\used_counter~44_combout\))) # (!\used_counter~52_combout\ & (!\used_counter~44_combout\ & !\LessThan0~13_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \used_counter~52_combout\,
	datab => \used_counter~44_combout\,
	datad => VCC,
	cin => \LessThan0~13_cout\,
	cout => \LessThan0~15_cout\);

-- Location: LCCOMB_X30_Y32_N18
\LessThan0~17\ : cycloneii_lcell_comb
-- Equation(s):
-- \LessThan0~17_cout\ = CARRY((\used_counter~43_combout\ & ((!\LessThan0~15_cout\) # (!\used_counter~51_combout\))) # (!\used_counter~43_combout\ & (!\used_counter~51_combout\ & !\LessThan0~15_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \used_counter~43_combout\,
	datab => \used_counter~51_combout\,
	datad => VCC,
	cin => \LessThan0~15_cout\,
	cout => \LessThan0~17_cout\);

-- Location: LCCOMB_X30_Y32_N20
\LessThan0~18\ : cycloneii_lcell_comb
-- Equation(s):
-- \LessThan0~18_combout\ = (\used_counter~42_combout\ & ((\LessThan0~17_cout\) # (!\used_counter~50_combout\))) # (!\used_counter~42_combout\ & (\LessThan0~17_cout\ & !\used_counter~50_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011111100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \used_counter~42_combout\,
	datad => \used_counter~50_combout\,
	cin => \LessThan0~17_cout\,
	combout => \LessThan0~18_combout\);

-- Location: LCCOMB_X30_Y32_N26
\index_value~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \index_value~1_combout\ = (\b1~combout\ & ((\LessThan0~18_combout\ & ((\index_value~0_combout\))) # (!\LessThan0~18_combout\ & (\Add0~18_combout\)))) # (!\b1~combout\ & (((\index_value~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b1~combout\,
	datab => \Add0~18_combout\,
	datac => \LessThan0~18_combout\,
	datad => \index_value~0_combout\,
	combout => \index_value~1_combout\);

-- Location: LCCOMB_X30_Y29_N28
\index_value~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \index_value~2_combout\ = (\always0~0_combout\ & ((\LessThan0~18_combout\ & ((\used_counter[1][8]~regout\))) # (!\LessThan0~18_combout\ & (\used_counter[0][8]~regout\)))) # (!\always0~0_combout\ & (\used_counter[0][8]~regout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \used_counter[0][8]~regout\,
	datab => \always0~0_combout\,
	datac => \used_counter[1][8]~regout\,
	datad => \LessThan0~18_combout\,
	combout => \index_value~2_combout\);

-- Location: LCCOMB_X30_Y29_N22
\index_value~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \index_value~3_combout\ = (\b1~combout\ & ((\LessThan0~18_combout\ & ((\index_value~2_combout\))) # (!\LessThan0~18_combout\ & (\Add0~16_combout\)))) # (!\b1~combout\ & (((\index_value~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b1~combout\,
	datab => \Add0~16_combout\,
	datac => \LessThan0~18_combout\,
	datad => \index_value~2_combout\,
	combout => \index_value~3_combout\);

-- Location: LCCOMB_X31_Y29_N0
\used_counter~62\ : cycloneii_lcell_comb
-- Equation(s):
-- \used_counter~62_combout\ = (\b3~combout\ & ((\pressedIndex~2_combout\ & ((\Add0~14_combout\))) # (!\pressedIndex~2_combout\ & (\used_counter[2][7]~regout\)))) # (!\b3~combout\ & (\used_counter[2][7]~regout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101000101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \used_counter[2][7]~regout\,
	datab => \b3~combout\,
	datac => \pressedIndex~2_combout\,
	datad => \Add0~14_combout\,
	combout => \used_counter~62_combout\);

-- Location: LCCOMB_X31_Y29_N30
\index_value~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \index_value~7_combout\ = (\LessThan0~18_combout\ & (((\index_value~6_combout\)))) # (!\LessThan0~18_combout\ & ((\b1~combout\ & (\Add0~12_combout\)) # (!\b1~combout\ & ((\index_value~6_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~12_combout\,
	datab => \LessThan0~18_combout\,
	datac => \b1~combout\,
	datad => \index_value~6_combout\,
	combout => \index_value~7_combout\);

-- Location: LCCOMB_X29_Y32_N20
\index_value~9\ : cycloneii_lcell_comb
-- Equation(s):
-- \index_value~9_combout\ = (\LessThan0~18_combout\ & (((\index_value~8_combout\)))) # (!\LessThan0~18_combout\ & ((\b1~combout\ & (\Add0~10_combout\)) # (!\b1~combout\ & ((\index_value~8_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~10_combout\,
	datab => \LessThan0~18_combout\,
	datac => \b1~combout\,
	datad => \index_value~8_combout\,
	combout => \index_value~9_combout\);

-- Location: LCCOMB_X31_Y29_N14
\index_value~11\ : cycloneii_lcell_comb
-- Equation(s):
-- \index_value~11_combout\ = (\b1~combout\ & ((\LessThan0~18_combout\ & ((\index_value~10_combout\))) # (!\LessThan0~18_combout\ & (\Add0~8_combout\)))) # (!\b1~combout\ & (((\index_value~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~8_combout\,
	datab => \b1~combout\,
	datac => \index_value~10_combout\,
	datad => \LessThan0~18_combout\,
	combout => \index_value~11_combout\);

-- Location: LCCOMB_X30_Y33_N28
\index_value~13\ : cycloneii_lcell_comb
-- Equation(s):
-- \index_value~13_combout\ = (\b1~combout\ & ((\LessThan0~18_combout\ & ((\index_value~12_combout\))) # (!\LessThan0~18_combout\ & (\Add0~6_combout\)))) # (!\b1~combout\ & (((\index_value~12_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b1~combout\,
	datab => \Add0~6_combout\,
	datac => \LessThan0~18_combout\,
	datad => \index_value~12_combout\,
	combout => \index_value~13_combout\);

-- Location: LCCOMB_X29_Y31_N0
\used_counter~101\ : cycloneii_lcell_comb
-- Equation(s):
-- \used_counter~101_combout\ = (\used_counter~172_combout\ & ((\index~1_combout\) # ((!\used_counter~91_combout\) # (!\index~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \used_counter~172_combout\,
	datab => \index~1_combout\,
	datac => \index~2_combout\,
	datad => \used_counter~91_combout\,
	combout => \used_counter~101_combout\);

-- Location: LCFF_X29_Y31_N1
\used_counter[0][2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \used_counter~101_combout\,
	ena => \timer[1]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \used_counter[0][2]~regout\);

-- Location: LCCOMB_X29_Y31_N22
\index_value~14\ : cycloneii_lcell_comb
-- Equation(s):
-- \index_value~14_combout\ = (\always0~0_combout\ & ((\LessThan0~18_combout\ & (\used_counter[1][2]~regout\)) # (!\LessThan0~18_combout\ & ((\used_counter[0][2]~regout\))))) # (!\always0~0_combout\ & (((\used_counter[0][2]~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \used_counter[1][2]~regout\,
	datab => \used_counter[0][2]~regout\,
	datac => \always0~0_combout\,
	datad => \LessThan0~18_combout\,
	combout => \index_value~14_combout\);

-- Location: LCCOMB_X29_Y31_N4
\index_value~15\ : cycloneii_lcell_comb
-- Equation(s):
-- \index_value~15_combout\ = (\LessThan0~18_combout\ & (((\index_value~14_combout\)))) # (!\LessThan0~18_combout\ & ((\b1~combout\ & (\Add0~4_combout\)) # (!\b1~combout\ & ((\index_value~14_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LessThan0~18_combout\,
	datab => \Add0~4_combout\,
	datac => \b1~combout\,
	datad => \index_value~14_combout\,
	combout => \index_value~15_combout\);

-- Location: LCCOMB_X29_Y32_N6
\index_value~17\ : cycloneii_lcell_comb
-- Equation(s):
-- \index_value~17_combout\ = (\LessThan0~18_combout\ & (((\index_value~16_combout\)))) # (!\LessThan0~18_combout\ & ((\b1~combout\ & (\Add0~2_combout\)) # (!\b1~combout\ & ((\index_value~16_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~2_combout\,
	datab => \LessThan0~18_combout\,
	datac => \b1~combout\,
	datad => \index_value~16_combout\,
	combout => \index_value~17_combout\);

-- Location: LCCOMB_X30_Y33_N20
\used_counter~93\ : cycloneii_lcell_comb
-- Equation(s):
-- \used_counter~93_combout\ = (\used_counter~164_combout\ & (((\index~1_combout\) # (!\used_counter~91_combout\)) # (!\index~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010001010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \used_counter~164_combout\,
	datab => \index~2_combout\,
	datac => \index~1_combout\,
	datad => \used_counter~91_combout\,
	combout => \used_counter~93_combout\);

-- Location: LCFF_X30_Y33_N21
\used_counter[0][0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \used_counter~93_combout\,
	ena => \timer[1]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \used_counter[0][0]~regout\);

-- Location: LCCOMB_X31_Y33_N28
\index_value~18\ : cycloneii_lcell_comb
-- Equation(s):
-- \index_value~18_combout\ = (\always0~0_combout\ & ((\LessThan0~18_combout\ & (\used_counter[1][0]~regout\)) # (!\LessThan0~18_combout\ & ((\used_counter[0][0]~regout\))))) # (!\always0~0_combout\ & (((\used_counter[0][0]~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \used_counter[1][0]~regout\,
	datab => \always0~0_combout\,
	datac => \used_counter[0][0]~regout\,
	datad => \LessThan0~18_combout\,
	combout => \index_value~18_combout\);

-- Location: LCCOMB_X31_Y33_N22
\index_value~19\ : cycloneii_lcell_comb
-- Equation(s):
-- \index_value~19_combout\ = (\b1~combout\ & ((\LessThan0~18_combout\ & ((\index_value~18_combout\))) # (!\LessThan0~18_combout\ & (\Add0~0_combout\)))) # (!\b1~combout\ & (((\index_value~18_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b1~combout\,
	datab => \Add0~0_combout\,
	datac => \LessThan0~18_combout\,
	datad => \index_value~18_combout\,
	combout => \index_value~19_combout\);

-- Location: LCCOMB_X30_Y29_N0
\LessThan1~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \LessThan1~1_cout\ = CARRY((!\used_counter~69_combout\ & \index_value~19_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \used_counter~69_combout\,
	datab => \index_value~19_combout\,
	datad => VCC,
	cout => \LessThan1~1_cout\);

-- Location: LCCOMB_X30_Y29_N2
\LessThan1~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \LessThan1~3_cout\ = CARRY((\used_counter~68_combout\ & ((!\LessThan1~1_cout\) # (!\index_value~17_combout\))) # (!\used_counter~68_combout\ & (!\index_value~17_combout\ & !\LessThan1~1_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \used_counter~68_combout\,
	datab => \index_value~17_combout\,
	datad => VCC,
	cin => \LessThan1~1_cout\,
	cout => \LessThan1~3_cout\);

-- Location: LCCOMB_X30_Y29_N4
\LessThan1~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \LessThan1~5_cout\ = CARRY((\used_counter~67_combout\ & (\index_value~15_combout\ & !\LessThan1~3_cout\)) # (!\used_counter~67_combout\ & ((\index_value~15_combout\) # (!\LessThan1~3_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \used_counter~67_combout\,
	datab => \index_value~15_combout\,
	datad => VCC,
	cin => \LessThan1~3_cout\,
	cout => \LessThan1~5_cout\);

-- Location: LCCOMB_X30_Y29_N6
\LessThan1~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \LessThan1~7_cout\ = CARRY((\used_counter~66_combout\ & ((!\LessThan1~5_cout\) # (!\index_value~13_combout\))) # (!\used_counter~66_combout\ & (!\index_value~13_combout\ & !\LessThan1~5_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \used_counter~66_combout\,
	datab => \index_value~13_combout\,
	datad => VCC,
	cin => \LessThan1~5_cout\,
	cout => \LessThan1~7_cout\);

-- Location: LCCOMB_X30_Y29_N8
\LessThan1~9\ : cycloneii_lcell_comb
-- Equation(s):
-- \LessThan1~9_cout\ = CARRY((\used_counter~65_combout\ & (\index_value~11_combout\ & !\LessThan1~7_cout\)) # (!\used_counter~65_combout\ & ((\index_value~11_combout\) # (!\LessThan1~7_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \used_counter~65_combout\,
	datab => \index_value~11_combout\,
	datad => VCC,
	cin => \LessThan1~7_cout\,
	cout => \LessThan1~9_cout\);

-- Location: LCCOMB_X30_Y29_N10
\LessThan1~11\ : cycloneii_lcell_comb
-- Equation(s):
-- \LessThan1~11_cout\ = CARRY((\used_counter~64_combout\ & ((!\LessThan1~9_cout\) # (!\index_value~9_combout\))) # (!\used_counter~64_combout\ & (!\index_value~9_combout\ & !\LessThan1~9_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \used_counter~64_combout\,
	datab => \index_value~9_combout\,
	datad => VCC,
	cin => \LessThan1~9_cout\,
	cout => \LessThan1~11_cout\);

-- Location: LCCOMB_X30_Y29_N12
\LessThan1~13\ : cycloneii_lcell_comb
-- Equation(s):
-- \LessThan1~13_cout\ = CARRY((\used_counter~63_combout\ & (\index_value~7_combout\ & !\LessThan1~11_cout\)) # (!\used_counter~63_combout\ & ((\index_value~7_combout\) # (!\LessThan1~11_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \used_counter~63_combout\,
	datab => \index_value~7_combout\,
	datad => VCC,
	cin => \LessThan1~11_cout\,
	cout => \LessThan1~13_cout\);

-- Location: LCCOMB_X30_Y29_N14
\LessThan1~15\ : cycloneii_lcell_comb
-- Equation(s):
-- \LessThan1~15_cout\ = CARRY((\index_value~5_combout\ & (\used_counter~62_combout\ & !\LessThan1~13_cout\)) # (!\index_value~5_combout\ & ((\used_counter~62_combout\) # (!\LessThan1~13_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \index_value~5_combout\,
	datab => \used_counter~62_combout\,
	datad => VCC,
	cin => \LessThan1~13_cout\,
	cout => \LessThan1~15_cout\);

-- Location: LCCOMB_X30_Y29_N16
\LessThan1~17\ : cycloneii_lcell_comb
-- Equation(s):
-- \LessThan1~17_cout\ = CARRY((\used_counter~61_combout\ & (\index_value~3_combout\ & !\LessThan1~15_cout\)) # (!\used_counter~61_combout\ & ((\index_value~3_combout\) # (!\LessThan1~15_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \used_counter~61_combout\,
	datab => \index_value~3_combout\,
	datad => VCC,
	cin => \LessThan1~15_cout\,
	cout => \LessThan1~17_cout\);

-- Location: LCCOMB_X30_Y29_N18
\LessThan1~18\ : cycloneii_lcell_comb
-- Equation(s):
-- \LessThan1~18_combout\ = (\used_counter~60_combout\ & (\LessThan1~17_cout\ & \index_value~1_combout\)) # (!\used_counter~60_combout\ & ((\LessThan1~17_cout\) # (\index_value~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001100110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \used_counter~60_combout\,
	datad => \index_value~1_combout\,
	cin => \LessThan1~17_cout\,
	combout => \LessThan1~18_combout\);

-- Location: LCCOMB_X30_Y33_N4
\index~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \index~2_combout\ = (\always0~2_combout\ & (!\LessThan2~18_combout\ & ((!\LessThan1~18_combout\) # (!\always0~1_combout\)))) # (!\always0~2_combout\ & (((!\LessThan1~18_combout\)) # (!\always0~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001010100111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \always0~2_combout\,
	datab => \always0~1_combout\,
	datac => \LessThan1~18_combout\,
	datad => \LessThan2~18_combout\,
	combout => \index~2_combout\);

-- Location: LCCOMB_X30_Y31_N0
\used_counter~97\ : cycloneii_lcell_comb
-- Equation(s):
-- \used_counter~97_combout\ = (\used_counter~168_combout\ & ((\index~1_combout\) # ((!\used_counter~91_combout\) # (!\index~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \index~1_combout\,
	datab => \used_counter~168_combout\,
	datac => \index~2_combout\,
	datad => \used_counter~91_combout\,
	combout => \used_counter~97_combout\);

-- Location: LCFF_X30_Y31_N1
\used_counter[0][4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \used_counter~97_combout\,
	ena => \timer[1]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \used_counter[0][4]~regout\);

-- Location: LCCOMB_X30_Y31_N6
\used_counter~45\ : cycloneii_lcell_comb
-- Equation(s):
-- \used_counter~45_combout\ = (\b1~combout\ & ((\Add0~8_combout\))) # (!\b1~combout\ & (\used_counter[0][4]~regout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \used_counter[0][4]~regout\,
	datac => \b1~combout\,
	datad => \Add0~8_combout\,
	combout => \used_counter~45_combout\);

-- Location: LCCOMB_X28_Y32_N4
\WideOr0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \WideOr0~0_combout\ = (\used_counter~43_combout\) # ((\used_counter~45_combout\) # ((\used_counter~44_combout\) # (\used_counter~42_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \used_counter~43_combout\,
	datab => \used_counter~45_combout\,
	datac => \used_counter~44_combout\,
	datad => \used_counter~42_combout\,
	combout => \WideOr0~0_combout\);

-- Location: LCCOMB_X29_Y32_N14
\used_counter~99\ : cycloneii_lcell_comb
-- Equation(s):
-- \used_counter~99_combout\ = (\used_counter~170_combout\ & ((\index~1_combout\) # ((!\used_counter~91_combout\) # (!\index~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \used_counter~170_combout\,
	datab => \index~1_combout\,
	datac => \index~2_combout\,
	datad => \used_counter~91_combout\,
	combout => \used_counter~99_combout\);

-- Location: LCFF_X29_Y32_N15
\used_counter[0][5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \used_counter~99_combout\,
	ena => \timer[1]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \used_counter[0][5]~regout\);

-- Location: LCCOMB_X30_Y32_N24
\used_counter~47\ : cycloneii_lcell_comb
-- Equation(s):
-- \used_counter~47_combout\ = (\b1~combout\ & (\Add0~10_combout\)) # (!\b1~combout\ & ((\used_counter[0][5]~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b1~combout\,
	datac => \Add0~10_combout\,
	datad => \used_counter[0][5]~regout\,
	combout => \used_counter~47_combout\);

-- Location: LCCOMB_X31_Y29_N2
\used_counter~46\ : cycloneii_lcell_comb
-- Equation(s):
-- \used_counter~46_combout\ = (\b1~combout\ & ((\Add0~12_combout\))) # (!\b1~combout\ & (\used_counter[0][6]~regout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \b1~combout\,
	datac => \used_counter[0][6]~regout\,
	datad => \Add0~12_combout\,
	combout => \used_counter~46_combout\);

-- Location: LCCOMB_X29_Y32_N2
\WideOr0~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \WideOr0~1_combout\ = (\used_counter~49_combout\) # ((\used_counter~47_combout\) # ((\used_counter~46_combout\) # (\used_counter~48_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \used_counter~49_combout\,
	datab => \used_counter~47_combout\,
	datac => \used_counter~46_combout\,
	datad => \used_counter~48_combout\,
	combout => \WideOr0~1_combout\);

-- Location: LCCOMB_X28_Y32_N22
\WideOr0~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \WideOr0~2_combout\ = (\used_counter~41_combout\) # ((\WideOr0~0_combout\) # ((\used_counter~40_combout\) # (\WideOr0~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \used_counter~41_combout\,
	datab => \WideOr0~0_combout\,
	datac => \used_counter~40_combout\,
	datad => \WideOr0~1_combout\,
	combout => \WideOr0~2_combout\);

-- Location: LCCOMB_X29_Y33_N20
\WideOr5~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \WideOr5~0_combout\ = (\WideOr0~2_combout\ & ((\index~1_combout\) # ((!\used_counter~91_combout\) # (!\index~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \index~1_combout\,
	datab => \WideOr0~2_combout\,
	datac => \index~2_combout\,
	datad => \used_counter~91_combout\,
	combout => \WideOr5~0_combout\);

-- Location: LCFF_X29_Y33_N21
\l1~reg0\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \WideOr5~0_combout\,
	sclr => \rst~combout\,
	ena => \timer[1]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \l1~reg0_regout\);

-- Location: LCCOMB_X31_Y31_N12
\WideOr1~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \WideOr1~0_combout\ = (\used_counter~50_combout\) # ((\used_counter~51_combout\) # ((\used_counter~53_combout\) # (\used_counter~52_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \used_counter~50_combout\,
	datab => \used_counter~51_combout\,
	datac => \used_counter~53_combout\,
	datad => \used_counter~52_combout\,
	combout => \WideOr1~0_combout\);

-- Location: LCCOMB_X29_Y32_N30
\used_counter~58\ : cycloneii_lcell_comb
-- Equation(s):
-- \used_counter~58_combout\ = (\b2~combout\ & ((\b1~combout\ & (\used_counter[1][1]~regout\)) # (!\b1~combout\ & ((\Add0~2_combout\))))) # (!\b2~combout\ & (((\used_counter[1][1]~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001011010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2~combout\,
	datab => \b1~combout\,
	datac => \used_counter[1][1]~regout\,
	datad => \Add0~2_combout\,
	combout => \used_counter~58_combout\);

-- Location: LCCOMB_X29_Y33_N6
\used_counter~114\ : cycloneii_lcell_comb
-- Equation(s):
-- \used_counter~114_combout\ = (\used_counter~56_combout\ & !\rst~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \used_counter~56_combout\,
	datac => \rst~combout\,
	combout => \used_counter~114_combout\);

-- Location: LCCOMB_X30_Y33_N6
\used_counter~115\ : cycloneii_lcell_comb
-- Equation(s):
-- \used_counter~115_combout\ = (\used_counter~114_combout\ & (((!\used_counter~91_combout\) # (!\index~2_combout\)) # (!\index~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \index~1_combout\,
	datab => \used_counter~114_combout\,
	datac => \index~2_combout\,
	datad => \used_counter~91_combout\,
	combout => \used_counter~115_combout\);

-- Location: LCFF_X30_Y33_N7
\used_counter[1][3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \used_counter~115_combout\,
	ena => \timer[1]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \used_counter[1][3]~regout\);

-- Location: LCCOMB_X30_Y33_N16
\used_counter~56\ : cycloneii_lcell_comb
-- Equation(s):
-- \used_counter~56_combout\ = (\b1~combout\ & (((\used_counter[1][3]~regout\)))) # (!\b1~combout\ & ((\b2~combout\ & (\Add0~6_combout\)) # (!\b2~combout\ & ((\used_counter[1][3]~regout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b1~combout\,
	datab => \b2~combout\,
	datac => \Add0~6_combout\,
	datad => \used_counter[1][3]~regout\,
	combout => \used_counter~56_combout\);

-- Location: LCCOMB_X30_Y31_N12
\WideOr1~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \WideOr1~1_combout\ = (\used_counter~55_combout\) # ((\used_counter~57_combout\) # ((\used_counter~56_combout\) # (\used_counter~54_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \used_counter~55_combout\,
	datab => \used_counter~57_combout\,
	datac => \used_counter~56_combout\,
	datad => \used_counter~54_combout\,
	combout => \WideOr1~1_combout\);

-- Location: LCCOMB_X30_Y31_N14
\WideOr1~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \WideOr1~2_combout\ = (\used_counter~59_combout\) # ((\WideOr1~0_combout\) # ((\used_counter~58_combout\) # (\WideOr1~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \used_counter~59_combout\,
	datab => \WideOr1~0_combout\,
	datac => \used_counter~58_combout\,
	datad => \WideOr1~1_combout\,
	combout => \WideOr1~2_combout\);

-- Location: LCCOMB_X29_Y30_N20
\WideOr6~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \WideOr6~0_combout\ = (\WideOr1~2_combout\ & (((!\index~1_combout\) # (!\used_counter~91_combout\)) # (!\index~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \index~2_combout\,
	datab => \WideOr1~2_combout\,
	datac => \used_counter~91_combout\,
	datad => \index~1_combout\,
	combout => \WideOr6~0_combout\);

-- Location: LCFF_X29_Y30_N21
\l2~reg0\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \WideOr6~0_combout\,
	sclr => \rst~combout\,
	ena => \timer[1]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \l2~reg0_regout\);

-- Location: LCCOMB_X31_Y29_N6
\used_counter~61\ : cycloneii_lcell_comb
-- Equation(s):
-- \used_counter~61_combout\ = (\b3~combout\ & ((\pressedIndex~2_combout\ & ((\Add0~16_combout\))) # (!\pressedIndex~2_combout\ & (\used_counter[2][8]~regout\)))) # (!\b3~combout\ & (\used_counter[2][8]~regout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101000101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \used_counter[2][8]~regout\,
	datab => \b3~combout\,
	datac => \pressedIndex~2_combout\,
	datad => \Add0~16_combout\,
	combout => \used_counter~61_combout\);

-- Location: LCCOMB_X31_Y29_N18
\used_counter~63\ : cycloneii_lcell_comb
-- Equation(s):
-- \used_counter~63_combout\ = (\pressedIndex~2_combout\ & ((\b3~combout\ & (\Add0~12_combout\)) # (!\b3~combout\ & ((\used_counter[2][6]~regout\))))) # (!\pressedIndex~2_combout\ & (((\used_counter[2][6]~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~12_combout\,
	datab => \pressedIndex~2_combout\,
	datac => \used_counter[2][6]~regout\,
	datad => \b3~combout\,
	combout => \used_counter~63_combout\);

-- Location: LCCOMB_X31_Y31_N22
\WideOr2~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \WideOr2~0_combout\ = (\used_counter~62_combout\) # ((\used_counter~61_combout\) # ((\used_counter~63_combout\) # (\used_counter~60_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \used_counter~62_combout\,
	datab => \used_counter~61_combout\,
	datac => \used_counter~63_combout\,
	datad => \used_counter~60_combout\,
	combout => \WideOr2~0_combout\);

-- Location: LCCOMB_X31_Y30_N12
\used_counter~141\ : cycloneii_lcell_comb
-- Equation(s):
-- \used_counter~141_combout\ = (\used_counter~140_combout\ & ((\index~2_combout\) # ((\index~1_combout\) # (!\used_counter~91_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \used_counter~140_combout\,
	datab => \index~2_combout\,
	datac => \used_counter~91_combout\,
	datad => \index~1_combout\,
	combout => \used_counter~141_combout\);

-- Location: LCFF_X31_Y30_N13
\used_counter[2][0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \used_counter~141_combout\,
	ena => \timer[1]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \used_counter[2][0]~regout\);

-- Location: LCCOMB_X31_Y33_N26
\used_counter~69\ : cycloneii_lcell_comb
-- Equation(s):
-- \used_counter~69_combout\ = (\b3~combout\ & ((\pressedIndex~2_combout\ & (\Add0~0_combout\)) # (!\pressedIndex~2_combout\ & ((\used_counter[2][0]~regout\))))) # (!\b3~combout\ & (((\used_counter[2][0]~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b3~combout\,
	datab => \pressedIndex~2_combout\,
	datac => \Add0~0_combout\,
	datad => \used_counter[2][0]~regout\,
	combout => \used_counter~69_combout\);

-- Location: LCCOMB_X31_Y30_N20
\used_counter~131\ : cycloneii_lcell_comb
-- Equation(s):
-- \used_counter~131_combout\ = (\used_counter~130_combout\ & ((\index~2_combout\) # ((\index~1_combout\) # (!\used_counter~91_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \used_counter~130_combout\,
	datab => \index~2_combout\,
	datac => \used_counter~91_combout\,
	datad => \index~1_combout\,
	combout => \used_counter~131_combout\);

-- Location: LCFF_X31_Y30_N21
\used_counter[2][5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \used_counter~131_combout\,
	ena => \timer[1]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \used_counter[2][5]~regout\);

-- Location: LCCOMB_X31_Y29_N4
\used_counter~64\ : cycloneii_lcell_comb
-- Equation(s):
-- \used_counter~64_combout\ = (\b3~combout\ & ((\pressedIndex~2_combout\ & (\Add0~10_combout\)) # (!\pressedIndex~2_combout\ & ((\used_counter[2][5]~regout\))))) # (!\b3~combout\ & (((\used_counter[2][5]~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~10_combout\,
	datab => \b3~combout\,
	datac => \pressedIndex~2_combout\,
	datad => \used_counter[2][5]~regout\,
	combout => \used_counter~64_combout\);

-- Location: LCCOMB_X31_Y33_N30
\used_counter~134\ : cycloneii_lcell_comb
-- Equation(s):
-- \used_counter~134_combout\ = (\used_counter~66_combout\ & !\rst~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \used_counter~66_combout\,
	datad => \rst~combout\,
	combout => \used_counter~134_combout\);

-- Location: LCCOMB_X30_Y33_N24
\used_counter~135\ : cycloneii_lcell_comb
-- Equation(s):
-- \used_counter~135_combout\ = (\used_counter~134_combout\ & ((\index~1_combout\) # ((\index~2_combout\) # (!\used_counter~91_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \index~1_combout\,
	datab => \used_counter~134_combout\,
	datac => \index~2_combout\,
	datad => \used_counter~91_combout\,
	combout => \used_counter~135_combout\);

-- Location: LCFF_X30_Y33_N25
\used_counter[2][3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \used_counter~135_combout\,
	ena => \timer[1]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \used_counter[2][3]~regout\);

-- Location: LCCOMB_X31_Y33_N16
\used_counter~66\ : cycloneii_lcell_comb
-- Equation(s):
-- \used_counter~66_combout\ = (\b3~combout\ & ((\pressedIndex~2_combout\ & ((\Add0~6_combout\))) # (!\pressedIndex~2_combout\ & (\used_counter[2][3]~regout\)))) # (!\b3~combout\ & (\used_counter[2][3]~regout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110001001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b3~combout\,
	datab => \used_counter[2][3]~regout\,
	datac => \pressedIndex~2_combout\,
	datad => \Add0~6_combout\,
	combout => \used_counter~66_combout\);

-- Location: LCCOMB_X31_Y31_N28
\WideOr2~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \WideOr2~1_combout\ = (\used_counter~65_combout\) # ((\used_counter~64_combout\) # ((\used_counter~67_combout\) # (\used_counter~66_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \used_counter~65_combout\,
	datab => \used_counter~64_combout\,
	datac => \used_counter~67_combout\,
	datad => \used_counter~66_combout\,
	combout => \WideOr2~1_combout\);

-- Location: LCCOMB_X31_Y31_N2
WideOr2 : cycloneii_lcell_comb
-- Equation(s):
-- \WideOr2~combout\ = (\used_counter~68_combout\) # ((\WideOr2~0_combout\) # ((\used_counter~69_combout\) # (\WideOr2~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \used_counter~68_combout\,
	datab => \WideOr2~0_combout\,
	datac => \used_counter~69_combout\,
	datad => \WideOr2~1_combout\,
	combout => \WideOr2~combout\);

-- Location: LCCOMB_X29_Y30_N22
\WideOr7~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \WideOr7~0_combout\ = (\WideOr2~combout\ & ((\index~2_combout\) # ((\index~1_combout\) # (!\used_counter~91_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \index~2_combout\,
	datab => \WideOr2~combout\,
	datac => \used_counter~91_combout\,
	datad => \index~1_combout\,
	combout => \WideOr7~0_combout\);

-- Location: LCFF_X29_Y30_N23
\l3~reg0\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \WideOr7~0_combout\,
	sclr => \rst~combout\,
	ena => \timer[1]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \l3~reg0_regout\);

-- Location: LCCOMB_X28_Y30_N0
\WideOr8~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \WideOr8~0_combout\ = (\WideOr3~2_combout\ & (((\index~2_combout\) # (!\used_counter~91_combout\)) # (!\index~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010001010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \WideOr3~2_combout\,
	datab => \index~1_combout\,
	datac => \index~2_combout\,
	datad => \used_counter~91_combout\,
	combout => \WideOr8~0_combout\);

-- Location: LCFF_X28_Y30_N1
\l4~reg0\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \WideOr8~0_combout\,
	sclr => \rst~combout\,
	ena => \timer[1]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \l4~reg0_regout\);

-- Location: LCCOMB_X28_Y30_N8
\used_counter~79\ : cycloneii_lcell_comb
-- Equation(s):
-- \used_counter~79_combout\ = (\used_counter~70_combout\ & (\used_counter[3][1]~regout\)) # (!\used_counter~70_combout\ & ((\Add0~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \used_counter[3][1]~regout\,
	datab => \Add0~2_combout\,
	datad => \used_counter~70_combout\,
	combout => \used_counter~79_combout\);

-- Location: LCCOMB_X29_Y33_N8
\used_counter~80\ : cycloneii_lcell_comb
-- Equation(s):
-- \used_counter~80_combout\ = (\used_counter~70_combout\ & ((\used_counter[3][0]~regout\))) # (!\used_counter~70_combout\ & (\Add0~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \used_counter~70_combout\,
	datac => \Add0~0_combout\,
	datad => \used_counter[3][0]~regout\,
	combout => \used_counter~80_combout\);

-- Location: LCCOMB_X31_Y30_N2
\used_counter~145\ : cycloneii_lcell_comb
-- Equation(s):
-- \used_counter~145_combout\ = (\used_counter~176_combout\ & ((\index~2_combout\) # ((!\index~1_combout\) # (!\used_counter~91_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \used_counter~176_combout\,
	datab => \index~2_combout\,
	datac => \used_counter~91_combout\,
	datad => \index~1_combout\,
	combout => \used_counter~145_combout\);

-- Location: LCFF_X31_Y30_N3
\used_counter[3][6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \used_counter~145_combout\,
	ena => \timer[1]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \used_counter[3][6]~regout\);

-- Location: LCCOMB_X31_Y31_N24
\used_counter~74\ : cycloneii_lcell_comb
-- Equation(s):
-- \used_counter~74_combout\ = (\used_counter~70_combout\ & ((\used_counter[3][6]~regout\))) # (!\used_counter~70_combout\ & (\Add0~12_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \used_counter~70_combout\,
	datac => \Add0~12_combout\,
	datad => \used_counter[3][6]~regout\,
	combout => \used_counter~74_combout\);

-- Location: LCCOMB_X28_Y30_N10
\used_counter~175\ : cycloneii_lcell_comb
-- Equation(s):
-- \used_counter~175_combout\ = (!\rst~combout\ & ((\used_counter~70_combout\ & ((\used_counter[3][7]~regout\))) # (!\used_counter~70_combout\ & (\Add0~14_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~14_combout\,
	datab => \used_counter[3][7]~regout\,
	datac => \rst~combout\,
	datad => \used_counter~70_combout\,
	combout => \used_counter~175_combout\);

-- Location: LCCOMB_X29_Y30_N12
\used_counter~144\ : cycloneii_lcell_comb
-- Equation(s):
-- \used_counter~144_combout\ = (\used_counter~175_combout\ & ((\index~2_combout\) # ((!\index~1_combout\) # (!\used_counter~91_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \index~2_combout\,
	datab => \used_counter~175_combout\,
	datac => \used_counter~91_combout\,
	datad => \index~1_combout\,
	combout => \used_counter~144_combout\);

-- Location: LCFF_X29_Y30_N13
\used_counter[3][7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \used_counter~144_combout\,
	ena => \timer[1]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \used_counter[3][7]~regout\);

-- Location: LCCOMB_X28_Y30_N28
\used_counter~73\ : cycloneii_lcell_comb
-- Equation(s):
-- \used_counter~73_combout\ = (\used_counter~70_combout\ & (\used_counter[3][7]~regout\)) # (!\used_counter~70_combout\ & ((\Add0~14_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \used_counter[3][7]~regout\,
	datac => \Add0~14_combout\,
	datad => \used_counter~70_combout\,
	combout => \used_counter~73_combout\);

-- Location: LCCOMB_X28_Y30_N18
\WideOr3~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \WideOr3~0_combout\ = (\used_counter~71_combout\) # ((\used_counter~72_combout\) # ((\used_counter~74_combout\) # (\used_counter~73_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \used_counter~71_combout\,
	datab => \used_counter~72_combout\,
	datac => \used_counter~74_combout\,
	datad => \used_counter~73_combout\,
	combout => \WideOr3~0_combout\);

-- Location: LCCOMB_X28_Y30_N20
\WideOr3~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \WideOr3~2_combout\ = (\WideOr3~1_combout\) # ((\used_counter~79_combout\) # ((\used_counter~80_combout\) # (\WideOr3~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \WideOr3~1_combout\,
	datab => \used_counter~79_combout\,
	datac => \used_counter~80_combout\,
	datad => \WideOr3~0_combout\,
	combout => \WideOr3~2_combout\);

-- Location: LCCOMB_X28_Y30_N26
\always0~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \always0~3_combout\ = (\WideOr3~2_combout\ & \WideOr0~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \WideOr3~2_combout\,
	datad => \WideOr0~2_combout\,
	combout => \always0~3_combout\);

-- Location: LCCOMB_X28_Y30_N24
\always0~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \always0~4_combout\ = (\WideOr4~2_combout\ & (\WideOr2~combout\ & (\WideOr1~2_combout\ & \always0~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \WideOr4~2_combout\,
	datab => \WideOr2~combout\,
	datac => \WideOr1~2_combout\,
	datad => \always0~3_combout\,
	combout => \always0~4_combout\);

-- Location: LCCOMB_X29_Y30_N8
\WideOr9~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \WideOr9~0_combout\ = (\WideOr4~2_combout\ & (((!\LessThan3~18_combout\) # (!\always0~4_combout\)) # (!\always0~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \WideOr4~2_combout\,
	datab => \always0~5_combout\,
	datac => \always0~4_combout\,
	datad => \LessThan3~18_combout\,
	combout => \WideOr9~0_combout\);

-- Location: LCFF_X29_Y30_N9
\l5~reg0\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \WideOr9~0_combout\,
	sclr => \rst~combout\,
	ena => \timer[1]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \l5~reg0_regout\);

-- Location: PIN_C12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\l1~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \l1~reg0_regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_l1);

-- Location: PIN_J11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\l2~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \l2~reg0_regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_l2);

-- Location: PIN_J10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\l3~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \l3~reg0_regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_l3);

-- Location: PIN_G12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\l4~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \l4~reg0_regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_l4);

-- Location: PIN_B11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\l5~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \l5~reg0_regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_l5);
END structure;


