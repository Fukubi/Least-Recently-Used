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

-- DATE "05/02/2023 20:32:05"

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
-- l1	=>  Location: PIN_B18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- l2	=>  Location: PIN_A18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- l3	=>  Location: PIN_N23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- l4	=>  Location: PIN_Y16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- l5	=>  Location: PIN_P24,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- clk	=>  Location: PIN_P2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- b1	=>  Location: PIN_C13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- rst	=>  Location: PIN_D13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- b2	=>  Location: PIN_R25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- b3	=>  Location: PIN_P23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- b4	=>  Location: PIN_R24,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- b5	=>  Location: PIN_N20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default


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
SIGNAL \Add0~0_combout\ : std_logic;
SIGNAL \Add0~2_combout\ : std_logic;
SIGNAL \Add0~6_combout\ : std_logic;
SIGNAL \Add0~12_combout\ : std_logic;
SIGNAL \Add0~16_combout\ : std_logic;
SIGNAL \Add0~36_combout\ : std_logic;
SIGNAL \Add0~38_combout\ : std_logic;
SIGNAL \Add0~44_combout\ : std_logic;
SIGNAL \Add0~48_combout\ : std_logic;
SIGNAL \Equal0~0_combout\ : std_logic;
SIGNAL \Equal0~5_combout\ : std_logic;
SIGNAL \Equal0~6_combout\ : std_logic;
SIGNAL \Equal0~7_combout\ : std_logic;
SIGNAL \used_counter[2][1]~regout\ : std_logic;
SIGNAL \used_counter[2][9]~regout\ : std_logic;
SIGNAL \used_counter[3][1]~regout\ : std_logic;
SIGNAL \used_counter[3][7]~regout\ : std_logic;
SIGNAL \used_counter[4][4]~regout\ : std_logic;
SIGNAL \counter~0_combout\ : std_logic;
SIGNAL \counter~2_combout\ : std_logic;
SIGNAL \counter~3_combout\ : std_logic;
SIGNAL \counter~6_combout\ : std_logic;
SIGNAL \counter~12_combout\ : std_logic;
SIGNAL \counter~15_combout\ : std_logic;
SIGNAL \counter~17_combout\ : std_logic;
SIGNAL \used_counter~50_combout\ : std_logic;
SIGNAL \used_counter~58_combout\ : std_logic;
SIGNAL \used_counter~64_combout\ : std_logic;
SIGNAL \used_counter~70_combout\ : std_logic;
SIGNAL \used_counter~82_combout\ : std_logic;
SIGNAL \index[2]~8_combout\ : std_logic;
SIGNAL \b4~combout\ : std_logic;
SIGNAL \clk~combout\ : std_logic;
SIGNAL \clk~clkctrl_outclk\ : std_logic;
SIGNAL \b1~combout\ : std_logic;
SIGNAL \timer[1]~9_combout\ : std_logic;
SIGNAL \Add0~1\ : std_logic;
SIGNAL \Add0~3\ : std_logic;
SIGNAL \Add0~4_combout\ : std_logic;
SIGNAL \counter~1_combout\ : std_logic;
SIGNAL \Add0~5\ : std_logic;
SIGNAL \Add0~7\ : std_logic;
SIGNAL \Add0~8_combout\ : std_logic;
SIGNAL \counter~4_combout\ : std_logic;
SIGNAL \Add0~9\ : std_logic;
SIGNAL \Add0~10_combout\ : std_logic;
SIGNAL \counter~5_combout\ : std_logic;
SIGNAL \Add0~11\ : std_logic;
SIGNAL \Add0~13\ : std_logic;
SIGNAL \Add0~14_combout\ : std_logic;
SIGNAL \counter~7_combout\ : std_logic;
SIGNAL \Add0~15\ : std_logic;
SIGNAL \Add0~17\ : std_logic;
SIGNAL \Add0~18_combout\ : std_logic;
SIGNAL \Add0~19\ : std_logic;
SIGNAL \Add0~21\ : std_logic;
SIGNAL \Add0~22_combout\ : std_logic;
SIGNAL \Add0~23\ : std_logic;
SIGNAL \Add0~25\ : std_logic;
SIGNAL \Add0~27\ : std_logic;
SIGNAL \Add0~28_combout\ : std_logic;
SIGNAL \counter~9_combout\ : std_logic;
SIGNAL \Add0~29\ : std_logic;
SIGNAL \Add0~30_combout\ : std_logic;
SIGNAL \counter~10_combout\ : std_logic;
SIGNAL \Add0~31\ : std_logic;
SIGNAL \Add0~32_combout\ : std_logic;
SIGNAL \counter~11_combout\ : std_logic;
SIGNAL \Add0~33\ : std_logic;
SIGNAL \Add0~34_combout\ : std_logic;
SIGNAL \Add0~35\ : std_logic;
SIGNAL \Add0~37\ : std_logic;
SIGNAL \Add0~39\ : std_logic;
SIGNAL \Add0~40_combout\ : std_logic;
SIGNAL \counter~13_combout\ : std_logic;
SIGNAL \Add0~41\ : std_logic;
SIGNAL \Add0~42_combout\ : std_logic;
SIGNAL \counter~14_combout\ : std_logic;
SIGNAL \Add0~43\ : std_logic;
SIGNAL \Add0~45\ : std_logic;
SIGNAL \Add0~46_combout\ : std_logic;
SIGNAL \counter~16_combout\ : std_logic;
SIGNAL \Add0~47\ : std_logic;
SIGNAL \Add0~49\ : std_logic;
SIGNAL \Add0~50_combout\ : std_logic;
SIGNAL \Add0~51\ : std_logic;
SIGNAL \Add0~53\ : std_logic;
SIGNAL \Add0~54_combout\ : std_logic;
SIGNAL \Add0~52_combout\ : std_logic;
SIGNAL \counter~18_combout\ : std_logic;
SIGNAL \Equal0~8_combout\ : std_logic;
SIGNAL \Equal0~1_combout\ : std_logic;
SIGNAL \Add0~26_combout\ : std_logic;
SIGNAL \counter~8_combout\ : std_logic;
SIGNAL \Add0~24_combout\ : std_logic;
SIGNAL \Equal0~3_combout\ : std_logic;
SIGNAL \Add0~20_combout\ : std_logic;
SIGNAL \Equal0~2_combout\ : std_logic;
SIGNAL \Equal0~4_combout\ : std_logic;
SIGNAL \Add0~55\ : std_logic;
SIGNAL \Add0~57\ : std_logic;
SIGNAL \Add0~58_combout\ : std_logic;
SIGNAL \Add0~59\ : std_logic;
SIGNAL \Add0~60_combout\ : std_logic;
SIGNAL \Add0~56_combout\ : std_logic;
SIGNAL \Add0~61\ : std_logic;
SIGNAL \Add0~62_combout\ : std_logic;
SIGNAL \Equal0~9_combout\ : std_logic;
SIGNAL \Equal0~10_combout\ : std_logic;
SIGNAL \timer[1]~10\ : std_logic;
SIGNAL \timer[2]~12\ : std_logic;
SIGNAL \timer[3]~14\ : std_logic;
SIGNAL \timer[4]~16\ : std_logic;
SIGNAL \timer[5]~18\ : std_logic;
SIGNAL \timer[6]~20\ : std_logic;
SIGNAL \timer[7]~22\ : std_logic;
SIGNAL \timer[8]~23_combout\ : std_logic;
SIGNAL \timer[8]~24\ : std_logic;
SIGNAL \timer[9]~25_combout\ : std_logic;
SIGNAL \b2~combout\ : std_logic;
SIGNAL \b3~combout\ : std_logic;
SIGNAL \used_counter[3][0]~59_combout\ : std_logic;
SIGNAL \used_counter[3][0]~60_combout\ : std_logic;
SIGNAL \timer[6]~19_combout\ : std_logic;
SIGNAL \b5~combout\ : std_logic;
SIGNAL \used_counter~84_combout\ : std_logic;
SIGNAL \used_counter[4][1]~73_combout\ : std_logic;
SIGNAL \used_counter[4][1]~74_combout\ : std_logic;
SIGNAL \used_counter[4][0]~77_combout\ : std_logic;
SIGNAL \used_counter[4][6]~regout\ : std_logic;
SIGNAL \used_counter~83_combout\ : std_logic;
SIGNAL \used_counter[4][5]~regout\ : std_logic;
SIGNAL \timer[7]~21_combout\ : std_logic;
SIGNAL \used_counter~85_combout\ : std_logic;
SIGNAL \used_counter[4][7]~regout\ : std_logic;
SIGNAL \WideNor4~1_combout\ : std_logic;
SIGNAL \used_counter~79_combout\ : std_logic;
SIGNAL \used_counter[4][1]~regout\ : std_logic;
SIGNAL \timer[2]~11_combout\ : std_logic;
SIGNAL \used_counter~80_combout\ : std_logic;
SIGNAL \used_counter[4][2]~regout\ : std_logic;
SIGNAL \timer[0]~27_combout\ : std_logic;
SIGNAL \used_counter~78_combout\ : std_logic;
SIGNAL \used_counter[4][0]~regout\ : std_logic;
SIGNAL \WideNor4~0_combout\ : std_logic;
SIGNAL \WideNor4~2_combout\ : std_logic;
SIGNAL \Decoder0~0_combout\ : std_logic;
SIGNAL \always0~1_combout\ : std_logic;
SIGNAL \used_counter~42_combout\ : std_logic;
SIGNAL \rst~combout\ : std_logic;
SIGNAL \used_counter[1][0]~35_combout\ : std_logic;
SIGNAL \used_counter[1][0]~36_combout\ : std_logic;
SIGNAL \used_counter[1][6]~regout\ : std_logic;
SIGNAL \timer[4]~15_combout\ : std_logic;
SIGNAL \used_counter~40_combout\ : std_logic;
SIGNAL \used_counter[1][4]~regout\ : std_logic;
SIGNAL \used_counter~43_combout\ : std_logic;
SIGNAL \used_counter[1][7]~regout\ : std_logic;
SIGNAL \WideNor1~1_combout\ : std_logic;
SIGNAL \used_counter[1][0]~33_combout\ : std_logic;
SIGNAL \used_counter~34_combout\ : std_logic;
SIGNAL \used_counter[1][0]~regout\ : std_logic;
SIGNAL \used_counter~37_combout\ : std_logic;
SIGNAL \used_counter[1][1]~regout\ : std_logic;
SIGNAL \used_counter~39_combout\ : std_logic;
SIGNAL \used_counter[1][3]~regout\ : std_logic;
SIGNAL \WideNor1~0_combout\ : std_logic;
SIGNAL \used_counter~45_combout\ : std_logic;
SIGNAL \used_counter[1][9]~regout\ : std_logic;
SIGNAL \WideNor1~2_combout\ : std_logic;
SIGNAL \Decoder0~1_combout\ : std_logic;
SIGNAL \used_counter~57_combout\ : std_logic;
SIGNAL \used_counter[2][0]~48_combout\ : std_logic;
SIGNAL \used_counter[2][0]~49_combout\ : std_logic;
SIGNAL \used_counter[2][8]~regout\ : std_logic;
SIGNAL \used_counter[2][0]~46_combout\ : std_logic;
SIGNAL \used_counter~55_combout\ : std_logic;
SIGNAL \used_counter[2][6]~regout\ : std_logic;
SIGNAL \timer[5]~17_combout\ : std_logic;
SIGNAL \used_counter~54_combout\ : std_logic;
SIGNAL \used_counter[2][5]~regout\ : std_logic;
SIGNAL \used_counter~56_combout\ : std_logic;
SIGNAL \used_counter[2][7]~regout\ : std_logic;
SIGNAL \WideNor2~1_combout\ : std_logic;
SIGNAL \used_counter~51_combout\ : std_logic;
SIGNAL \used_counter[2][2]~regout\ : std_logic;
SIGNAL \used_counter~47_combout\ : std_logic;
SIGNAL \used_counter[2][0]~regout\ : std_logic;
SIGNAL \timer[3]~13_combout\ : std_logic;
SIGNAL \used_counter~52_combout\ : std_logic;
SIGNAL \used_counter[2][3]~regout\ : std_logic;
SIGNAL \WideNor2~0_combout\ : std_logic;
SIGNAL \WideNor2~2_combout\ : std_logic;
SIGNAL \used_counter~71_combout\ : std_logic;
SIGNAL \used_counter[3][0]~63_combout\ : std_logic;
SIGNAL \used_counter[3][8]~regout\ : std_logic;
SIGNAL \used_counter~69_combout\ : std_logic;
SIGNAL \used_counter[3][6]~regout\ : std_logic;
SIGNAL \used_counter~67_combout\ : std_logic;
SIGNAL \used_counter[3][4]~regout\ : std_logic;
SIGNAL \used_counter~68_combout\ : std_logic;
SIGNAL \used_counter[3][5]~regout\ : std_logic;
SIGNAL \WideNor3~1_combout\ : std_logic;
SIGNAL \used_counter~65_combout\ : std_logic;
SIGNAL \used_counter[3][2]~regout\ : std_logic;
SIGNAL \used_counter~66_combout\ : std_logic;
SIGNAL \used_counter[3][3]~regout\ : std_logic;
SIGNAL \used_counter~62_combout\ : std_logic;
SIGNAL \used_counter[3][0]~regout\ : std_logic;
SIGNAL \WideNor3~0_combout\ : std_logic;
SIGNAL \WideNor3~2_combout\ : std_logic;
SIGNAL \always0~0_combout\ : std_logic;
SIGNAL \used_counter[3][0]~61_combout\ : std_logic;
SIGNAL \used_counter~72_combout\ : std_logic;
SIGNAL \used_counter[3][9]~regout\ : std_logic;
SIGNAL \used_counter~53_combout\ : std_logic;
SIGNAL \used_counter[2][4]~regout\ : std_logic;
SIGNAL \index~0_combout\ : std_logic;
SIGNAL \used_counter~38_combout\ : std_logic;
SIGNAL \used_counter[1][2]~regout\ : std_logic;
SIGNAL \index_value~21_combout\ : std_logic;
SIGNAL \index_value~22_combout\ : std_logic;
SIGNAL \index_value~23_combout\ : std_logic;
SIGNAL \index[2]~2_combout\ : std_logic;
SIGNAL \used_counter~24_combout\ : std_logic;
SIGNAL \used_counter[0][0]~23_combout\ : std_logic;
SIGNAL \used_counter[0][1]~regout\ : std_logic;
SIGNAL \index_value~24_combout\ : std_logic;
SIGNAL \index_value~25_combout\ : std_logic;
SIGNAL \index_value~26_combout\ : std_logic;
SIGNAL \used_counter~22_combout\ : std_logic;
SIGNAL \used_counter[0][0]~regout\ : std_logic;
SIGNAL \index_value~27_combout\ : std_logic;
SIGNAL \index_value~28_combout\ : std_logic;
SIGNAL \index_value~29_combout\ : std_logic;
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
SIGNAL \used_counter~44_combout\ : std_logic;
SIGNAL \used_counter[1][8]~regout\ : std_logic;
SIGNAL \used_counter~41_combout\ : std_logic;
SIGNAL \used_counter[1][5]~regout\ : std_logic;
SIGNAL \index_value~12_combout\ : std_logic;
SIGNAL \index_value~13_combout\ : std_logic;
SIGNAL \index_value~14_combout\ : std_logic;
SIGNAL \used_counter~27_combout\ : std_logic;
SIGNAL \used_counter[0][4]~regout\ : std_logic;
SIGNAL \index_value~15_combout\ : std_logic;
SIGNAL \index_value~16_combout\ : std_logic;
SIGNAL \index_value~17_combout\ : std_logic;
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
SIGNAL \index~7_combout\ : std_logic;
SIGNAL \index_value~6_combout\ : std_logic;
SIGNAL \index_value~7_combout\ : std_logic;
SIGNAL \index_value~8_combout\ : std_logic;
SIGNAL \used_counter~81_combout\ : std_logic;
SIGNAL \used_counter[4][3]~regout\ : std_logic;
SIGNAL \used_counter~26_combout\ : std_logic;
SIGNAL \used_counter[0][3]~regout\ : std_logic;
SIGNAL \index_value~18_combout\ : std_logic;
SIGNAL \index_value~19_combout\ : std_logic;
SIGNAL \index_value~20_combout\ : std_logic;
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
SIGNAL \index~3_combout\ : std_logic;
SIGNAL \used_counter[4][1]~75_combout\ : std_logic;
SIGNAL \used_counter[4][1]~76_combout\ : std_logic;
SIGNAL \used_counter~87_combout\ : std_logic;
SIGNAL \used_counter[4][9]~regout\ : std_logic;
SIGNAL \index_value~0_combout\ : std_logic;
SIGNAL \index_value~1_combout\ : std_logic;
SIGNAL \index_value~2_combout\ : std_logic;
SIGNAL \index_value~9_combout\ : std_logic;
SIGNAL \index_value~10_combout\ : std_logic;
SIGNAL \index_value~11_combout\ : std_logic;
SIGNAL \LessThan4~1_cout\ : std_logic;
SIGNAL \LessThan4~3_cout\ : std_logic;
SIGNAL \LessThan4~5_cout\ : std_logic;
SIGNAL \LessThan4~7_cout\ : std_logic;
SIGNAL \LessThan4~9_cout\ : std_logic;
SIGNAL \LessThan4~11_cout\ : std_logic;
SIGNAL \LessThan4~13_cout\ : std_logic;
SIGNAL \LessThan4~15_cout\ : std_logic;
SIGNAL \LessThan4~17_cout\ : std_logic;
SIGNAL \LessThan4~18_combout\ : std_logic;
SIGNAL \used_counter~86_combout\ : std_logic;
SIGNAL \used_counter[4][8]~regout\ : std_logic;
SIGNAL \used_counter~31_combout\ : std_logic;
SIGNAL \used_counter[0][8]~regout\ : std_logic;
SIGNAL \index_value~3_combout\ : std_logic;
SIGNAL \index_value~4_combout\ : std_logic;
SIGNAL \index_value~5_combout\ : std_logic;
SIGNAL \used_counter~30_combout\ : std_logic;
SIGNAL \used_counter[0][7]~regout\ : std_logic;
SIGNAL \used_counter~28_combout\ : std_logic;
SIGNAL \used_counter[0][5]~regout\ : std_logic;
SIGNAL \used_counter~25_combout\ : std_logic;
SIGNAL \used_counter[0][2]~regout\ : std_logic;
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
SIGNAL \index[1]~1_combout\ : std_logic;
SIGNAL \index[1]~4_combout\ : std_logic;
SIGNAL \index[1]~5_combout\ : std_logic;
SIGNAL \index[1]~6_combout\ : std_logic;
SIGNAL \used_counter[0][1]~20_combout\ : std_logic;
SIGNAL \used_counter[0][1]~21_combout\ : std_logic;
SIGNAL \used_counter~32_combout\ : std_logic;
SIGNAL \used_counter[0][9]~regout\ : std_logic;
SIGNAL \used_counter~29_combout\ : std_logic;
SIGNAL \used_counter[0][6]~regout\ : std_logic;
SIGNAL \WideNor0~1_combout\ : std_logic;
SIGNAL \WideNor0~0_combout\ : std_logic;
SIGNAL \WideNor0~2_combout\ : std_logic;
SIGNAL \l1~reg0_regout\ : std_logic;
SIGNAL \l2~reg0_regout\ : std_logic;
SIGNAL \l3~reg0_regout\ : std_logic;
SIGNAL \l4~reg0_regout\ : std_logic;
SIGNAL \l5~reg0_regout\ : std_logic;
SIGNAL timer : std_logic_vector(9 DOWNTO 0);
SIGNAL index_value : std_logic_vector(9 DOWNTO 0);
SIGNAL counter : std_logic_vector(31 DOWNTO 0);
SIGNAL index : std_logic_vector(2 DOWNTO 0);

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

-- Location: LCCOMB_X50_Y21_N0
\Add0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add0~0_combout\ = counter(0) $ (VCC)
-- \Add0~1\ = CARRY(counter(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => counter(0),
	datad => VCC,
	combout => \Add0~0_combout\,
	cout => \Add0~1\);

-- Location: LCCOMB_X50_Y21_N2
\Add0~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add0~2_combout\ = (counter(1) & (!\Add0~1\)) # (!counter(1) & ((\Add0~1\) # (GND)))
-- \Add0~3\ = CARRY((!\Add0~1\) # (!counter(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => counter(1),
	datad => VCC,
	cin => \Add0~1\,
	combout => \Add0~2_combout\,
	cout => \Add0~3\);

-- Location: LCCOMB_X50_Y21_N6
\Add0~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add0~6_combout\ = (counter(3) & (!\Add0~5\)) # (!counter(3) & ((\Add0~5\) # (GND)))
-- \Add0~7\ = CARRY((!\Add0~5\) # (!counter(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => counter(3),
	datad => VCC,
	cin => \Add0~5\,
	combout => \Add0~6_combout\,
	cout => \Add0~7\);

-- Location: LCCOMB_X50_Y21_N12
\Add0~12\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add0~12_combout\ = (counter(6) & (\Add0~11\ $ (GND))) # (!counter(6) & (!\Add0~11\ & VCC))
-- \Add0~13\ = CARRY((counter(6) & !\Add0~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => counter(6),
	datad => VCC,
	cin => \Add0~11\,
	combout => \Add0~12_combout\,
	cout => \Add0~13\);

-- Location: LCCOMB_X50_Y21_N16
\Add0~16\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add0~16_combout\ = (counter(8) & (\Add0~15\ $ (GND))) # (!counter(8) & (!\Add0~15\ & VCC))
-- \Add0~17\ = CARRY((counter(8) & !\Add0~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => counter(8),
	datad => VCC,
	cin => \Add0~15\,
	combout => \Add0~16_combout\,
	cout => \Add0~17\);

-- Location: LCCOMB_X50_Y20_N4
\Add0~36\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add0~36_combout\ = (counter(18) & (\Add0~35\ $ (GND))) # (!counter(18) & (!\Add0~35\ & VCC))
-- \Add0~37\ = CARRY((counter(18) & !\Add0~35\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => counter(18),
	datad => VCC,
	cin => \Add0~35\,
	combout => \Add0~36_combout\,
	cout => \Add0~37\);

-- Location: LCCOMB_X50_Y20_N6
\Add0~38\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add0~38_combout\ = (counter(19) & (!\Add0~37\)) # (!counter(19) & ((\Add0~37\) # (GND)))
-- \Add0~39\ = CARRY((!\Add0~37\) # (!counter(19)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => counter(19),
	datad => VCC,
	cin => \Add0~37\,
	combout => \Add0~38_combout\,
	cout => \Add0~39\);

-- Location: LCCOMB_X50_Y20_N12
\Add0~44\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add0~44_combout\ = (counter(22) & (\Add0~43\ $ (GND))) # (!counter(22) & (!\Add0~43\ & VCC))
-- \Add0~45\ = CARRY((counter(22) & !\Add0~43\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => counter(22),
	datad => VCC,
	cin => \Add0~43\,
	combout => \Add0~44_combout\,
	cout => \Add0~45\);

-- Location: LCCOMB_X50_Y20_N16
\Add0~48\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add0~48_combout\ = (counter(24) & (\Add0~47\ $ (GND))) # (!counter(24) & (!\Add0~47\ & VCC))
-- \Add0~49\ = CARRY((counter(24) & !\Add0~47\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => counter(24),
	datad => VCC,
	cin => \Add0~47\,
	combout => \Add0~48_combout\,
	cout => \Add0~49\);

-- Location: LCFF_X49_Y21_N1
\counter[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \counter~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => counter(1));

-- Location: LCFF_X49_Y21_N21
\counter[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \counter~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => counter(3));

-- Location: LCFF_X49_Y21_N15
\counter[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \counter~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => counter(0));

-- Location: LCCOMB_X49_Y21_N24
\Equal0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Equal0~0_combout\ = (counter(3) & (counter(1) & (!counter(0) & counter(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => counter(3),
	datab => counter(1),
	datac => counter(0),
	datad => counter(2),
	combout => \Equal0~0_combout\);

-- Location: LCFF_X49_Y21_N11
\counter[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \counter~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => counter(6));

-- Location: LCFF_X50_Y21_N17
\counter[8]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \Add0~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => counter(8));

-- Location: LCFF_X49_Y20_N15
\counter[18]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \counter~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => counter(18));

-- Location: LCFF_X50_Y20_N7
\counter[19]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \Add0~38_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => counter(19));

-- Location: LCCOMB_X49_Y20_N20
\Equal0~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \Equal0~5_combout\ = (!counter(19) & (counter(18) & (counter(16) & !counter(17))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => counter(19),
	datab => counter(18),
	datac => counter(16),
	datad => counter(17),
	combout => \Equal0~5_combout\);

-- Location: LCFF_X49_Y20_N11
\counter[22]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \counter~15_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => counter(22));

-- Location: LCCOMB_X49_Y20_N26
\Equal0~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \Equal0~6_combout\ = (counter(22) & (counter(23) & (counter(21) & counter(20))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => counter(22),
	datab => counter(23),
	datac => counter(21),
	datad => counter(20),
	combout => \Equal0~6_combout\);

-- Location: LCCOMB_X49_Y20_N12
\Equal0~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \Equal0~7_combout\ = (\Equal0~5_combout\ & \Equal0~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Equal0~5_combout\,
	datad => \Equal0~6_combout\,
	combout => \Equal0~7_combout\);

-- Location: LCFF_X49_Y20_N31
\counter[24]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \counter~17_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => counter(24));

-- Location: LCFF_X46_Y19_N21
\used_counter[2][1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \used_counter~50_combout\,
	sload => VCC,
	ena => \used_counter[2][0]~49_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \used_counter[2][1]~regout\);

-- Location: LCFF_X45_Y19_N29
\used_counter[2][9]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \used_counter~58_combout\,
	ena => \used_counter[2][0]~49_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \used_counter[2][9]~regout\);

-- Location: LCFF_X45_Y19_N13
\used_counter[3][1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \used_counter~64_combout\,
	ena => \used_counter[3][0]~63_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \used_counter[3][1]~regout\);

-- Location: LCFF_X46_Y19_N25
\used_counter[3][7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \used_counter~70_combout\,
	ena => \used_counter[3][0]~63_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \used_counter[3][7]~regout\);

-- Location: LCFF_X47_Y21_N7
\used_counter[4][4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \used_counter~82_combout\,
	ena => \used_counter[4][0]~77_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \used_counter[4][4]~regout\);

-- Location: LCFF_X46_Y20_N13
\index[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \index[2]~8_combout\,
	ena => \index[2]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => index(2));

-- Location: LCCOMB_X49_Y21_N0
\counter~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \counter~0_combout\ = (!\Equal0~10_combout\ & \Add0~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Equal0~10_combout\,
	datad => \Add0~2_combout\,
	combout => \counter~0_combout\);

-- Location: LCCOMB_X49_Y21_N20
\counter~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \counter~2_combout\ = (!\Equal0~10_combout\ & \Add0~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Equal0~10_combout\,
	datad => \Add0~6_combout\,
	combout => \counter~2_combout\);

-- Location: LCCOMB_X49_Y21_N14
\counter~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \counter~3_combout\ = (\Add0~0_combout\ & !\Equal0~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Add0~0_combout\,
	datac => \Equal0~10_combout\,
	combout => \counter~3_combout\);

-- Location: LCCOMB_X49_Y21_N10
\counter~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \counter~6_combout\ = (\Add0~12_combout\ & !\Equal0~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Add0~12_combout\,
	datac => \Equal0~10_combout\,
	combout => \counter~6_combout\);

-- Location: LCCOMB_X49_Y20_N14
\counter~12\ : cycloneii_lcell_comb
-- Equation(s):
-- \counter~12_combout\ = (!\Equal0~10_combout\ & \Add0~36_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal0~10_combout\,
	datad => \Add0~36_combout\,
	combout => \counter~12_combout\);

-- Location: LCCOMB_X49_Y20_N10
\counter~15\ : cycloneii_lcell_comb
-- Equation(s):
-- \counter~15_combout\ = (\Add0~44_combout\ & !\Equal0~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Add0~44_combout\,
	datad => \Equal0~10_combout\,
	combout => \counter~15_combout\);

-- Location: LCCOMB_X49_Y20_N30
\counter~17\ : cycloneii_lcell_comb
-- Equation(s):
-- \counter~17_combout\ = (\Add0~48_combout\ & !\Equal0~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Add0~48_combout\,
	datad => \Equal0~10_combout\,
	combout => \counter~17_combout\);

-- Location: LCCOMB_X45_Y19_N6
\used_counter~50\ : cycloneii_lcell_comb
-- Equation(s):
-- \used_counter~50_combout\ = (\used_counter[2][0]~46_combout\ & ((timer(1)) # ((\Decoder0~1_combout\ & \always0~1_combout\)))) # (!\used_counter[2][0]~46_combout\ & (\Decoder0~1_combout\ & ((\always0~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \used_counter[2][0]~46_combout\,
	datab => \Decoder0~1_combout\,
	datac => timer(1),
	datad => \always0~1_combout\,
	combout => \used_counter~50_combout\);

-- Location: LCCOMB_X45_Y19_N28
\used_counter~58\ : cycloneii_lcell_comb
-- Equation(s):
-- \used_counter~58_combout\ = (\used_counter[2][0]~46_combout\ & ((timer(9)) # ((\Decoder0~1_combout\ & \always0~1_combout\)))) # (!\used_counter[2][0]~46_combout\ & (\Decoder0~1_combout\ & ((\always0~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \used_counter[2][0]~46_combout\,
	datab => \Decoder0~1_combout\,
	datac => timer(9),
	datad => \always0~1_combout\,
	combout => \used_counter~58_combout\);

-- Location: LCCOMB_X45_Y19_N12
\used_counter~64\ : cycloneii_lcell_comb
-- Equation(s):
-- \used_counter~64_combout\ = ((\used_counter[3][0]~59_combout\ & timer(1))) # (!\used_counter[3][0]~61_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \used_counter[3][0]~59_combout\,
	datac => timer(1),
	datad => \used_counter[3][0]~61_combout\,
	combout => \used_counter~64_combout\);

-- Location: LCCOMB_X46_Y19_N24
\used_counter~70\ : cycloneii_lcell_comb
-- Equation(s):
-- \used_counter~70_combout\ = ((\used_counter[3][0]~59_combout\ & timer(7))) # (!\used_counter[3][0]~61_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \used_counter[3][0]~59_combout\,
	datac => timer(7),
	datad => \used_counter[3][0]~61_combout\,
	combout => \used_counter~70_combout\);

-- Location: LCCOMB_X47_Y21_N6
\used_counter~82\ : cycloneii_lcell_comb
-- Equation(s):
-- \used_counter~82_combout\ = ((timer(4) & (\used_counter[4][1]~73_combout\ & \b5~combout\))) # (!\used_counter[4][1]~76_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011001100110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => timer(4),
	datab => \used_counter[4][1]~76_combout\,
	datac => \used_counter[4][1]~73_combout\,
	datad => \b5~combout\,
	combout => \used_counter~82_combout\);

-- Location: LCCOMB_X46_Y20_N12
\index[2]~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \index[2]~8_combout\ = !\LessThan4~18_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \LessThan4~18_combout\,
	combout => \index[2]~8_combout\);

-- Location: PIN_R24,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
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

-- Location: LCCOMB_X46_Y21_N4
\timer[1]~9\ : cycloneii_lcell_comb
-- Equation(s):
-- \timer[1]~9_combout\ = (timer(0) & (timer(1) $ (VCC))) # (!timer(0) & (timer(1) & VCC))
-- \timer[1]~10\ = CARRY((timer(0) & timer(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => timer(0),
	datab => timer(1),
	datad => VCC,
	combout => \timer[1]~9_combout\,
	cout => \timer[1]~10\);

-- Location: LCCOMB_X50_Y21_N4
\Add0~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add0~4_combout\ = (counter(2) & (\Add0~3\ $ (GND))) # (!counter(2) & (!\Add0~3\ & VCC))
-- \Add0~5\ = CARRY((counter(2) & !\Add0~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => counter(2),
	datad => VCC,
	cin => \Add0~3\,
	combout => \Add0~4_combout\,
	cout => \Add0~5\);

-- Location: LCCOMB_X49_Y21_N22
\counter~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \counter~1_combout\ = (!\Equal0~10_combout\ & \Add0~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Equal0~10_combout\,
	datad => \Add0~4_combout\,
	combout => \counter~1_combout\);

-- Location: LCFF_X49_Y21_N23
\counter[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \counter~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => counter(2));

-- Location: LCCOMB_X50_Y21_N8
\Add0~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add0~8_combout\ = (counter(4) & (\Add0~7\ $ (GND))) # (!counter(4) & (!\Add0~7\ & VCC))
-- \Add0~9\ = CARRY((counter(4) & !\Add0~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => counter(4),
	datad => VCC,
	cin => \Add0~7\,
	combout => \Add0~8_combout\,
	cout => \Add0~9\);

-- Location: LCCOMB_X49_Y21_N26
\counter~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \counter~4_combout\ = (\Add0~8_combout\ & !\Equal0~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Add0~8_combout\,
	datac => \Equal0~10_combout\,
	combout => \counter~4_combout\);

-- Location: LCFF_X49_Y21_N27
\counter[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \counter~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => counter(4));

-- Location: LCCOMB_X50_Y21_N10
\Add0~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add0~10_combout\ = (counter(5) & (!\Add0~9\)) # (!counter(5) & ((\Add0~9\) # (GND)))
-- \Add0~11\ = CARRY((!\Add0~9\) # (!counter(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => counter(5),
	datad => VCC,
	cin => \Add0~9\,
	combout => \Add0~10_combout\,
	cout => \Add0~11\);

-- Location: LCCOMB_X49_Y21_N28
\counter~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \counter~5_combout\ = (\Add0~10_combout\ & !\Equal0~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Add0~10_combout\,
	datac => \Equal0~10_combout\,
	combout => \counter~5_combout\);

-- Location: LCFF_X49_Y21_N29
\counter[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \counter~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => counter(5));

-- Location: LCCOMB_X50_Y21_N14
\Add0~14\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add0~14_combout\ = (counter(7) & (!\Add0~13\)) # (!counter(7) & ((\Add0~13\) # (GND)))
-- \Add0~15\ = CARRY((!\Add0~13\) # (!counter(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => counter(7),
	datad => VCC,
	cin => \Add0~13\,
	combout => \Add0~14_combout\,
	cout => \Add0~15\);

-- Location: LCCOMB_X49_Y21_N16
\counter~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \counter~7_combout\ = (\Add0~14_combout\ & !\Equal0~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Add0~14_combout\,
	datac => \Equal0~10_combout\,
	combout => \counter~7_combout\);

-- Location: LCFF_X49_Y21_N17
\counter[7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \counter~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => counter(7));

-- Location: LCCOMB_X50_Y21_N18
\Add0~18\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add0~18_combout\ = (counter(9) & (!\Add0~17\)) # (!counter(9) & ((\Add0~17\) # (GND)))
-- \Add0~19\ = CARRY((!\Add0~17\) # (!counter(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => counter(9),
	datad => VCC,
	cin => \Add0~17\,
	combout => \Add0~18_combout\,
	cout => \Add0~19\);

-- Location: LCFF_X50_Y21_N19
\counter[9]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \Add0~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => counter(9));

-- Location: LCCOMB_X50_Y21_N20
\Add0~20\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add0~20_combout\ = (counter(10) & (\Add0~19\ $ (GND))) # (!counter(10) & (!\Add0~19\ & VCC))
-- \Add0~21\ = CARRY((counter(10) & !\Add0~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => counter(10),
	datad => VCC,
	cin => \Add0~19\,
	combout => \Add0~20_combout\,
	cout => \Add0~21\);

-- Location: LCCOMB_X50_Y21_N22
\Add0~22\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add0~22_combout\ = (counter(11) & (!\Add0~21\)) # (!counter(11) & ((\Add0~21\) # (GND)))
-- \Add0~23\ = CARRY((!\Add0~21\) # (!counter(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => counter(11),
	datad => VCC,
	cin => \Add0~21\,
	combout => \Add0~22_combout\,
	cout => \Add0~23\);

-- Location: LCFF_X50_Y21_N23
\counter[11]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \Add0~22_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => counter(11));

-- Location: LCCOMB_X50_Y21_N24
\Add0~24\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add0~24_combout\ = (counter(12) & (\Add0~23\ $ (GND))) # (!counter(12) & (!\Add0~23\ & VCC))
-- \Add0~25\ = CARRY((counter(12) & !\Add0~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => counter(12),
	datad => VCC,
	cin => \Add0~23\,
	combout => \Add0~24_combout\,
	cout => \Add0~25\);

-- Location: LCCOMB_X50_Y21_N26
\Add0~26\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add0~26_combout\ = (counter(13) & (!\Add0~25\)) # (!counter(13) & ((\Add0~25\) # (GND)))
-- \Add0~27\ = CARRY((!\Add0~25\) # (!counter(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => counter(13),
	datad => VCC,
	cin => \Add0~25\,
	combout => \Add0~26_combout\,
	cout => \Add0~27\);

-- Location: LCCOMB_X50_Y21_N28
\Add0~28\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add0~28_combout\ = (counter(14) & (\Add0~27\ $ (GND))) # (!counter(14) & (!\Add0~27\ & VCC))
-- \Add0~29\ = CARRY((counter(14) & !\Add0~27\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => counter(14),
	datad => VCC,
	cin => \Add0~27\,
	combout => \Add0~28_combout\,
	cout => \Add0~29\);

-- Location: LCCOMB_X49_Y21_N4
\counter~9\ : cycloneii_lcell_comb
-- Equation(s):
-- \counter~9_combout\ = (!\Equal0~10_combout\ & \Add0~28_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Equal0~10_combout\,
	datad => \Add0~28_combout\,
	combout => \counter~9_combout\);

-- Location: LCFF_X49_Y21_N5
\counter[14]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \counter~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => counter(14));

-- Location: LCCOMB_X50_Y21_N30
\Add0~30\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add0~30_combout\ = (counter(15) & (!\Add0~29\)) # (!counter(15) & ((\Add0~29\) # (GND)))
-- \Add0~31\ = CARRY((!\Add0~29\) # (!counter(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => counter(15),
	datad => VCC,
	cin => \Add0~29\,
	combout => \Add0~30_combout\,
	cout => \Add0~31\);

-- Location: LCCOMB_X49_Y21_N6
\counter~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \counter~10_combout\ = (!\Equal0~10_combout\ & \Add0~30_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Equal0~10_combout\,
	datad => \Add0~30_combout\,
	combout => \counter~10_combout\);

-- Location: LCFF_X49_Y21_N7
\counter[15]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \counter~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => counter(15));

-- Location: LCCOMB_X50_Y20_N0
\Add0~32\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add0~32_combout\ = (counter(16) & (\Add0~31\ $ (GND))) # (!counter(16) & (!\Add0~31\ & VCC))
-- \Add0~33\ = CARRY((counter(16) & !\Add0~31\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => counter(16),
	datad => VCC,
	cin => \Add0~31\,
	combout => \Add0~32_combout\,
	cout => \Add0~33\);

-- Location: LCCOMB_X49_Y20_N24
\counter~11\ : cycloneii_lcell_comb
-- Equation(s):
-- \counter~11_combout\ = (\Add0~32_combout\ & !\Equal0~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Add0~32_combout\,
	datad => \Equal0~10_combout\,
	combout => \counter~11_combout\);

-- Location: LCFF_X49_Y20_N25
\counter[16]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \counter~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => counter(16));

-- Location: LCCOMB_X50_Y20_N2
\Add0~34\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add0~34_combout\ = (counter(17) & (!\Add0~33\)) # (!counter(17) & ((\Add0~33\) # (GND)))
-- \Add0~35\ = CARRY((!\Add0~33\) # (!counter(17)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => counter(17),
	datad => VCC,
	cin => \Add0~33\,
	combout => \Add0~34_combout\,
	cout => \Add0~35\);

-- Location: LCFF_X50_Y20_N3
\counter[17]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \Add0~34_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => counter(17));

-- Location: LCCOMB_X50_Y20_N8
\Add0~40\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add0~40_combout\ = (counter(20) & (\Add0~39\ $ (GND))) # (!counter(20) & (!\Add0~39\ & VCC))
-- \Add0~41\ = CARRY((counter(20) & !\Add0~39\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => counter(20),
	datad => VCC,
	cin => \Add0~39\,
	combout => \Add0~40_combout\,
	cout => \Add0~41\);

-- Location: LCCOMB_X49_Y20_N18
\counter~13\ : cycloneii_lcell_comb
-- Equation(s):
-- \counter~13_combout\ = (\Add0~40_combout\ & !\Equal0~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Add0~40_combout\,
	datad => \Equal0~10_combout\,
	combout => \counter~13_combout\);

-- Location: LCFF_X49_Y20_N19
\counter[20]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \counter~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => counter(20));

-- Location: LCCOMB_X50_Y20_N10
\Add0~42\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add0~42_combout\ = (counter(21) & (!\Add0~41\)) # (!counter(21) & ((\Add0~41\) # (GND)))
-- \Add0~43\ = CARRY((!\Add0~41\) # (!counter(21)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => counter(21),
	datad => VCC,
	cin => \Add0~41\,
	combout => \Add0~42_combout\,
	cout => \Add0~43\);

-- Location: LCCOMB_X49_Y20_N4
\counter~14\ : cycloneii_lcell_comb
-- Equation(s):
-- \counter~14_combout\ = (\Add0~42_combout\ & !\Equal0~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Add0~42_combout\,
	datad => \Equal0~10_combout\,
	combout => \counter~14_combout\);

-- Location: LCFF_X49_Y20_N5
\counter[21]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \counter~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => counter(21));

-- Location: LCCOMB_X50_Y20_N14
\Add0~46\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add0~46_combout\ = (counter(23) & (!\Add0~45\)) # (!counter(23) & ((\Add0~45\) # (GND)))
-- \Add0~47\ = CARRY((!\Add0~45\) # (!counter(23)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => counter(23),
	datad => VCC,
	cin => \Add0~45\,
	combout => \Add0~46_combout\,
	cout => \Add0~47\);

-- Location: LCCOMB_X49_Y20_N28
\counter~16\ : cycloneii_lcell_comb
-- Equation(s):
-- \counter~16_combout\ = (\Add0~46_combout\ & !\Equal0~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Add0~46_combout\,
	datad => \Equal0~10_combout\,
	combout => \counter~16_combout\);

-- Location: LCFF_X49_Y20_N29
\counter[23]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \counter~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => counter(23));

-- Location: LCCOMB_X50_Y20_N18
\Add0~50\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add0~50_combout\ = (counter(25) & (!\Add0~49\)) # (!counter(25) & ((\Add0~49\) # (GND)))
-- \Add0~51\ = CARRY((!\Add0~49\) # (!counter(25)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => counter(25),
	datad => VCC,
	cin => \Add0~49\,
	combout => \Add0~50_combout\,
	cout => \Add0~51\);

-- Location: LCFF_X50_Y20_N19
\counter[25]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \Add0~50_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => counter(25));

-- Location: LCCOMB_X50_Y20_N20
\Add0~52\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add0~52_combout\ = (counter(26) & (\Add0~51\ $ (GND))) # (!counter(26) & (!\Add0~51\ & VCC))
-- \Add0~53\ = CARRY((counter(26) & !\Add0~51\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => counter(26),
	datad => VCC,
	cin => \Add0~51\,
	combout => \Add0~52_combout\,
	cout => \Add0~53\);

-- Location: LCCOMB_X50_Y20_N22
\Add0~54\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add0~54_combout\ = (counter(27) & (!\Add0~53\)) # (!counter(27) & ((\Add0~53\) # (GND)))
-- \Add0~55\ = CARRY((!\Add0~53\) # (!counter(27)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => counter(27),
	datad => VCC,
	cin => \Add0~53\,
	combout => \Add0~54_combout\,
	cout => \Add0~55\);

-- Location: LCFF_X50_Y20_N23
\counter[27]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \Add0~54_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => counter(27));

-- Location: LCCOMB_X49_Y20_N8
\counter~18\ : cycloneii_lcell_comb
-- Equation(s):
-- \counter~18_combout\ = (!\Equal0~10_combout\ & \Add0~52_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal0~10_combout\,
	datad => \Add0~52_combout\,
	combout => \counter~18_combout\);

-- Location: LCFF_X49_Y20_N9
\counter[26]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \counter~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => counter(26));

-- Location: LCCOMB_X49_Y20_N22
\Equal0~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \Equal0~8_combout\ = (counter(24) & (!counter(27) & (counter(26) & !counter(25))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => counter(24),
	datab => counter(27),
	datac => counter(26),
	datad => counter(25),
	combout => \Equal0~8_combout\);

-- Location: LCCOMB_X49_Y21_N2
\Equal0~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \Equal0~1_combout\ = (counter(6) & (counter(5) & (counter(7) & counter(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => counter(6),
	datab => counter(5),
	datac => counter(7),
	datad => counter(4),
	combout => \Equal0~1_combout\);

-- Location: LCCOMB_X49_Y21_N30
\counter~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \counter~8_combout\ = (!\Equal0~10_combout\ & \Add0~26_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal0~10_combout\,
	datac => \Add0~26_combout\,
	combout => \counter~8_combout\);

-- Location: LCFF_X49_Y21_N31
\counter[13]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \counter~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => counter(13));

-- Location: LCFF_X50_Y21_N25
\counter[12]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \Add0~24_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => counter(12));

-- Location: LCCOMB_X49_Y21_N8
\Equal0~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \Equal0~3_combout\ = (counter(15) & (counter(13) & (counter(14) & !counter(12))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => counter(15),
	datab => counter(13),
	datac => counter(14),
	datad => counter(12),
	combout => \Equal0~3_combout\);

-- Location: LCFF_X50_Y21_N21
\counter[10]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \Add0~20_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => counter(10));

-- Location: LCCOMB_X49_Y21_N12
\Equal0~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \Equal0~2_combout\ = (!counter(8) & (!counter(9) & (!counter(11) & !counter(10))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => counter(8),
	datab => counter(9),
	datac => counter(11),
	datad => counter(10),
	combout => \Equal0~2_combout\);

-- Location: LCCOMB_X49_Y21_N18
\Equal0~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \Equal0~4_combout\ = (\Equal0~0_combout\ & (\Equal0~1_combout\ & (\Equal0~3_combout\ & \Equal0~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal0~0_combout\,
	datab => \Equal0~1_combout\,
	datac => \Equal0~3_combout\,
	datad => \Equal0~2_combout\,
	combout => \Equal0~4_combout\);

-- Location: LCCOMB_X50_Y20_N24
\Add0~56\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add0~56_combout\ = (counter(28) & (\Add0~55\ $ (GND))) # (!counter(28) & (!\Add0~55\ & VCC))
-- \Add0~57\ = CARRY((counter(28) & !\Add0~55\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => counter(28),
	datad => VCC,
	cin => \Add0~55\,
	combout => \Add0~56_combout\,
	cout => \Add0~57\);

-- Location: LCCOMB_X50_Y20_N26
\Add0~58\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add0~58_combout\ = (counter(29) & (!\Add0~57\)) # (!counter(29) & ((\Add0~57\) # (GND)))
-- \Add0~59\ = CARRY((!\Add0~57\) # (!counter(29)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => counter(29),
	datad => VCC,
	cin => \Add0~57\,
	combout => \Add0~58_combout\,
	cout => \Add0~59\);

-- Location: LCFF_X50_Y20_N27
\counter[29]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \Add0~58_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => counter(29));

-- Location: LCCOMB_X50_Y20_N28
\Add0~60\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add0~60_combout\ = (counter(30) & (\Add0~59\ $ (GND))) # (!counter(30) & (!\Add0~59\ & VCC))
-- \Add0~61\ = CARRY((counter(30) & !\Add0~59\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => counter(30),
	datad => VCC,
	cin => \Add0~59\,
	combout => \Add0~60_combout\,
	cout => \Add0~61\);

-- Location: LCFF_X50_Y20_N29
\counter[30]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \Add0~60_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => counter(30));

-- Location: LCFF_X50_Y20_N25
\counter[28]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \Add0~56_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => counter(28));

-- Location: LCCOMB_X50_Y20_N30
\Add0~62\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add0~62_combout\ = \Add0~61\ $ (counter(31))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => counter(31),
	cin => \Add0~61\,
	combout => \Add0~62_combout\);

-- Location: LCFF_X50_Y20_N31
\counter[31]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \Add0~62_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => counter(31));

-- Location: LCCOMB_X49_Y20_N16
\Equal0~9\ : cycloneii_lcell_comb
-- Equation(s):
-- \Equal0~9_combout\ = (!counter(29) & (!counter(30) & (!counter(28) & !counter(31))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => counter(29),
	datab => counter(30),
	datac => counter(28),
	datad => counter(31),
	combout => \Equal0~9_combout\);

-- Location: LCCOMB_X49_Y20_N6
\Equal0~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \Equal0~10_combout\ = (\Equal0~7_combout\ & (\Equal0~8_combout\ & (\Equal0~4_combout\ & \Equal0~9_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal0~7_combout\,
	datab => \Equal0~8_combout\,
	datac => \Equal0~4_combout\,
	datad => \Equal0~9_combout\,
	combout => \Equal0~10_combout\);

-- Location: LCFF_X46_Y21_N5
\timer[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \timer[1]~9_combout\,
	ena => \Equal0~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => timer(1));

-- Location: LCCOMB_X46_Y21_N6
\timer[2]~11\ : cycloneii_lcell_comb
-- Equation(s):
-- \timer[2]~11_combout\ = (timer(2) & (!\timer[1]~10\)) # (!timer(2) & ((\timer[1]~10\) # (GND)))
-- \timer[2]~12\ = CARRY((!\timer[1]~10\) # (!timer(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => timer(2),
	datad => VCC,
	cin => \timer[1]~10\,
	combout => \timer[2]~11_combout\,
	cout => \timer[2]~12\);

-- Location: LCCOMB_X46_Y21_N8
\timer[3]~13\ : cycloneii_lcell_comb
-- Equation(s):
-- \timer[3]~13_combout\ = (timer(3) & (\timer[2]~12\ $ (GND))) # (!timer(3) & (!\timer[2]~12\ & VCC))
-- \timer[3]~14\ = CARRY((timer(3) & !\timer[2]~12\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => timer(3),
	datad => VCC,
	cin => \timer[2]~12\,
	combout => \timer[3]~13_combout\,
	cout => \timer[3]~14\);

-- Location: LCCOMB_X46_Y21_N10
\timer[4]~15\ : cycloneii_lcell_comb
-- Equation(s):
-- \timer[4]~15_combout\ = (timer(4) & (!\timer[3]~14\)) # (!timer(4) & ((\timer[3]~14\) # (GND)))
-- \timer[4]~16\ = CARRY((!\timer[3]~14\) # (!timer(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => timer(4),
	datad => VCC,
	cin => \timer[3]~14\,
	combout => \timer[4]~15_combout\,
	cout => \timer[4]~16\);

-- Location: LCCOMB_X46_Y21_N12
\timer[5]~17\ : cycloneii_lcell_comb
-- Equation(s):
-- \timer[5]~17_combout\ = (timer(5) & (\timer[4]~16\ $ (GND))) # (!timer(5) & (!\timer[4]~16\ & VCC))
-- \timer[5]~18\ = CARRY((timer(5) & !\timer[4]~16\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => timer(5),
	datad => VCC,
	cin => \timer[4]~16\,
	combout => \timer[5]~17_combout\,
	cout => \timer[5]~18\);

-- Location: LCCOMB_X46_Y21_N14
\timer[6]~19\ : cycloneii_lcell_comb
-- Equation(s):
-- \timer[6]~19_combout\ = (timer(6) & (!\timer[5]~18\)) # (!timer(6) & ((\timer[5]~18\) # (GND)))
-- \timer[6]~20\ = CARRY((!\timer[5]~18\) # (!timer(6)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => timer(6),
	datad => VCC,
	cin => \timer[5]~18\,
	combout => \timer[6]~19_combout\,
	cout => \timer[6]~20\);

-- Location: LCCOMB_X46_Y21_N16
\timer[7]~21\ : cycloneii_lcell_comb
-- Equation(s):
-- \timer[7]~21_combout\ = (timer(7) & (\timer[6]~20\ $ (GND))) # (!timer(7) & (!\timer[6]~20\ & VCC))
-- \timer[7]~22\ = CARRY((timer(7) & !\timer[6]~20\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => timer(7),
	datad => VCC,
	cin => \timer[6]~20\,
	combout => \timer[7]~21_combout\,
	cout => \timer[7]~22\);

-- Location: LCCOMB_X46_Y21_N18
\timer[8]~23\ : cycloneii_lcell_comb
-- Equation(s):
-- \timer[8]~23_combout\ = (timer(8) & (!\timer[7]~22\)) # (!timer(8) & ((\timer[7]~22\) # (GND)))
-- \timer[8]~24\ = CARRY((!\timer[7]~22\) # (!timer(8)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => timer(8),
	datad => VCC,
	cin => \timer[7]~22\,
	combout => \timer[8]~23_combout\,
	cout => \timer[8]~24\);

-- Location: LCFF_X46_Y21_N19
\timer[8]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \timer[8]~23_combout\,
	ena => \Equal0~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => timer(8));

-- Location: LCCOMB_X46_Y21_N20
\timer[9]~25\ : cycloneii_lcell_comb
-- Equation(s):
-- \timer[9]~25_combout\ = timer(9) $ (!\timer[8]~24\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010110100101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => timer(9),
	cin => \timer[8]~24\,
	combout => \timer[9]~25_combout\);

-- Location: LCFF_X46_Y21_N21
\timer[9]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \timer[9]~25_combout\,
	ena => \Equal0~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => timer(9));

-- Location: PIN_R25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
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

-- Location: PIN_P23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
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

-- Location: LCCOMB_X46_Y18_N12
\used_counter[3][0]~59\ : cycloneii_lcell_comb
-- Equation(s):
-- \used_counter[3][0]~59_combout\ = (\b4~combout\ & (!\b2~combout\ & (!\b1~combout\ & !\b3~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b4~combout\,
	datab => \b2~combout\,
	datac => \b1~combout\,
	datad => \b3~combout\,
	combout => \used_counter[3][0]~59_combout\);

-- Location: LCCOMB_X46_Y20_N14
\used_counter[3][0]~60\ : cycloneii_lcell_comb
-- Equation(s):
-- \used_counter[3][0]~60_combout\ = ((index(0)) # (!index(1))) # (!index(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => index(2),
	datac => index(0),
	datad => index(1),
	combout => \used_counter[3][0]~60_combout\);

-- Location: LCFF_X46_Y21_N15
\timer[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \timer[6]~19_combout\,
	ena => \Equal0~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => timer(6));

-- Location: PIN_N20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
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

-- Location: LCCOMB_X47_Y21_N22
\used_counter~84\ : cycloneii_lcell_comb
-- Equation(s):
-- \used_counter~84_combout\ = ((\used_counter[4][1]~73_combout\ & (timer(6) & \b5~combout\))) # (!\used_counter[4][1]~76_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \used_counter[4][1]~73_combout\,
	datab => timer(6),
	datac => \used_counter[4][1]~76_combout\,
	datad => \b5~combout\,
	combout => \used_counter~84_combout\);

-- Location: LCCOMB_X46_Y18_N22
\used_counter[4][1]~73\ : cycloneii_lcell_comb
-- Equation(s):
-- \used_counter[4][1]~73_combout\ = (!\b4~combout\ & (!\b2~combout\ & (!\b1~combout\ & !\b3~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b4~combout\,
	datab => \b2~combout\,
	datac => \b1~combout\,
	datad => \b3~combout\,
	combout => \used_counter[4][1]~73_combout\);

-- Location: LCCOMB_X47_Y21_N30
\used_counter[4][1]~74\ : cycloneii_lcell_comb
-- Equation(s):
-- \used_counter[4][1]~74_combout\ = (\used_counter[4][1]~73_combout\ & \b5~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \used_counter[4][1]~73_combout\,
	datad => \b5~combout\,
	combout => \used_counter[4][1]~74_combout\);

-- Location: LCCOMB_X47_Y21_N16
\used_counter[4][0]~77\ : cycloneii_lcell_comb
-- Equation(s):
-- \used_counter[4][0]~77_combout\ = (\Equal0~10_combout\ & ((\rst~combout\) # ((\used_counter[4][1]~74_combout\) # (!\used_counter[4][1]~76_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rst~combout\,
	datab => \used_counter[4][1]~74_combout\,
	datac => \Equal0~10_combout\,
	datad => \used_counter[4][1]~76_combout\,
	combout => \used_counter[4][0]~77_combout\);

-- Location: LCFF_X47_Y21_N23
\used_counter[4][6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \used_counter~84_combout\,
	ena => \used_counter[4][0]~77_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \used_counter[4][6]~regout\);

-- Location: LCCOMB_X47_Y21_N8
\used_counter~83\ : cycloneii_lcell_comb
-- Equation(s):
-- \used_counter~83_combout\ = ((timer(5) & (\used_counter[4][1]~73_combout\ & \b5~combout\))) # (!\used_counter[4][1]~76_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011001100110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => timer(5),
	datab => \used_counter[4][1]~76_combout\,
	datac => \used_counter[4][1]~73_combout\,
	datad => \b5~combout\,
	combout => \used_counter~83_combout\);

-- Location: LCFF_X47_Y21_N9
\used_counter[4][5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \used_counter~83_combout\,
	ena => \used_counter[4][0]~77_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \used_counter[4][5]~regout\);

-- Location: LCFF_X46_Y21_N17
\timer[7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \timer[7]~21_combout\,
	ena => \Equal0~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => timer(7));

-- Location: LCCOMB_X47_Y21_N28
\used_counter~85\ : cycloneii_lcell_comb
-- Equation(s):
-- \used_counter~85_combout\ = ((\used_counter[4][1]~73_combout\ & (timer(7) & \b5~combout\))) # (!\used_counter[4][1]~76_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \used_counter[4][1]~73_combout\,
	datab => timer(7),
	datac => \used_counter[4][1]~76_combout\,
	datad => \b5~combout\,
	combout => \used_counter~85_combout\);

-- Location: LCFF_X47_Y21_N29
\used_counter[4][7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \used_counter~85_combout\,
	ena => \used_counter[4][0]~77_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \used_counter[4][7]~regout\);

-- Location: LCCOMB_X47_Y21_N14
\WideNor4~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \WideNor4~1_combout\ = (\used_counter[4][4]~regout\) # ((\used_counter[4][6]~regout\) # ((\used_counter[4][5]~regout\) # (\used_counter[4][7]~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \used_counter[4][4]~regout\,
	datab => \used_counter[4][6]~regout\,
	datac => \used_counter[4][5]~regout\,
	datad => \used_counter[4][7]~regout\,
	combout => \WideNor4~1_combout\);

-- Location: LCCOMB_X47_Y21_N26
\used_counter~79\ : cycloneii_lcell_comb
-- Equation(s):
-- \used_counter~79_combout\ = ((\used_counter[4][1]~73_combout\ & (timer(1) & \b5~combout\))) # (!\used_counter[4][1]~76_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \used_counter[4][1]~73_combout\,
	datab => timer(1),
	datac => \used_counter[4][1]~76_combout\,
	datad => \b5~combout\,
	combout => \used_counter~79_combout\);

-- Location: LCFF_X47_Y21_N27
\used_counter[4][1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \used_counter~79_combout\,
	ena => \used_counter[4][0]~77_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \used_counter[4][1]~regout\);

-- Location: LCFF_X46_Y21_N7
\timer[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \timer[2]~11_combout\,
	ena => \Equal0~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => timer(2));

-- Location: LCCOMB_X47_Y21_N24
\used_counter~80\ : cycloneii_lcell_comb
-- Equation(s):
-- \used_counter~80_combout\ = ((\used_counter[4][1]~73_combout\ & (timer(2) & \b5~combout\))) # (!\used_counter[4][1]~76_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \used_counter[4][1]~73_combout\,
	datab => timer(2),
	datac => \used_counter[4][1]~76_combout\,
	datad => \b5~combout\,
	combout => \used_counter~80_combout\);

-- Location: LCFF_X47_Y21_N25
\used_counter[4][2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \used_counter~80_combout\,
	ena => \used_counter[4][0]~77_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \used_counter[4][2]~regout\);

-- Location: LCCOMB_X46_Y18_N18
\timer[0]~27\ : cycloneii_lcell_comb
-- Equation(s):
-- \timer[0]~27_combout\ = !timer(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => timer(0),
	combout => \timer[0]~27_combout\);

-- Location: LCFF_X46_Y21_N1
\timer[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \timer[0]~27_combout\,
	sload => VCC,
	ena => \Equal0~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => timer(0));

-- Location: LCCOMB_X47_Y21_N0
\used_counter~78\ : cycloneii_lcell_comb
-- Equation(s):
-- \used_counter~78_combout\ = ((\used_counter[4][1]~73_combout\ & (timer(0) & \b5~combout\))) # (!\used_counter[4][1]~76_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \used_counter[4][1]~73_combout\,
	datab => timer(0),
	datac => \used_counter[4][1]~76_combout\,
	datad => \b5~combout\,
	combout => \used_counter~78_combout\);

-- Location: LCFF_X47_Y21_N1
\used_counter[4][0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \used_counter~78_combout\,
	ena => \used_counter[4][0]~77_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \used_counter[4][0]~regout\);

-- Location: LCCOMB_X47_Y21_N12
\WideNor4~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \WideNor4~0_combout\ = (\used_counter[4][3]~regout\) # ((\used_counter[4][1]~regout\) # ((\used_counter[4][2]~regout\) # (\used_counter[4][0]~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \used_counter[4][3]~regout\,
	datab => \used_counter[4][1]~regout\,
	datac => \used_counter[4][2]~regout\,
	datad => \used_counter[4][0]~regout\,
	combout => \WideNor4~0_combout\);

-- Location: LCCOMB_X47_Y21_N4
\WideNor4~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \WideNor4~2_combout\ = (!\used_counter[4][8]~regout\ & (!\used_counter[4][9]~regout\ & (!\WideNor4~1_combout\ & !\WideNor4~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \used_counter[4][8]~regout\,
	datab => \used_counter[4][9]~regout\,
	datac => \WideNor4~1_combout\,
	datad => \WideNor4~0_combout\,
	combout => \WideNor4~2_combout\);

-- Location: LCCOMB_X46_Y21_N0
\Decoder0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Decoder0~0_combout\ = (index(2) & (!index(0) & !index(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => index(2),
	datab => index(0),
	datad => index(1),
	combout => \Decoder0~0_combout\);

-- Location: LCCOMB_X46_Y20_N20
\always0~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \always0~1_combout\ = (!\WideNor4~2_combout\ & \always0~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \WideNor4~2_combout\,
	datad => \always0~0_combout\,
	combout => \always0~1_combout\);

-- Location: LCCOMB_X47_Y18_N0
\used_counter~42\ : cycloneii_lcell_comb
-- Equation(s):
-- \used_counter~42_combout\ = (\used_counter[1][0]~33_combout\ & ((timer(6)) # ((\Decoder0~0_combout\ & \always0~1_combout\)))) # (!\used_counter[1][0]~33_combout\ & (\Decoder0~0_combout\ & ((\always0~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \used_counter[1][0]~33_combout\,
	datab => \Decoder0~0_combout\,
	datac => timer(6),
	datad => \always0~1_combout\,
	combout => \used_counter~42_combout\);

-- Location: PIN_D13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
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

-- Location: LCCOMB_X46_Y18_N30
\used_counter[1][0]~35\ : cycloneii_lcell_comb
-- Equation(s):
-- \used_counter[1][0]~35_combout\ = (\used_counter[1][0]~33_combout\) # ((!\WideNor4~2_combout\ & (\always0~0_combout\ & \Decoder0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \used_counter[1][0]~33_combout\,
	datab => \WideNor4~2_combout\,
	datac => \always0~0_combout\,
	datad => \Decoder0~0_combout\,
	combout => \used_counter[1][0]~35_combout\);

-- Location: LCCOMB_X46_Y18_N4
\used_counter[1][0]~36\ : cycloneii_lcell_comb
-- Equation(s):
-- \used_counter[1][0]~36_combout\ = (\Equal0~10_combout\ & ((\rst~combout\) # (\used_counter[1][0]~35_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \rst~combout\,
	datac => \Equal0~10_combout\,
	datad => \used_counter[1][0]~35_combout\,
	combout => \used_counter[1][0]~36_combout\);

-- Location: LCFF_X47_Y18_N1
\used_counter[1][6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \used_counter~42_combout\,
	ena => \used_counter[1][0]~36_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \used_counter[1][6]~regout\);

-- Location: LCFF_X46_Y21_N11
\timer[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \timer[4]~15_combout\,
	ena => \Equal0~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => timer(4));

-- Location: LCCOMB_X47_Y18_N4
\used_counter~40\ : cycloneii_lcell_comb
-- Equation(s):
-- \used_counter~40_combout\ = (\used_counter[1][0]~33_combout\ & ((timer(4)) # ((\Decoder0~0_combout\ & \always0~1_combout\)))) # (!\used_counter[1][0]~33_combout\ & (((\Decoder0~0_combout\ & \always0~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \used_counter[1][0]~33_combout\,
	datab => timer(4),
	datac => \Decoder0~0_combout\,
	datad => \always0~1_combout\,
	combout => \used_counter~40_combout\);

-- Location: LCFF_X47_Y18_N5
\used_counter[1][4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \used_counter~40_combout\,
	ena => \used_counter[1][0]~36_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \used_counter[1][4]~regout\);

-- Location: LCCOMB_X47_Y18_N10
\used_counter~43\ : cycloneii_lcell_comb
-- Equation(s):
-- \used_counter~43_combout\ = (\used_counter[1][0]~33_combout\ & ((timer(7)) # ((\Decoder0~0_combout\ & \always0~1_combout\)))) # (!\used_counter[1][0]~33_combout\ & (((\Decoder0~0_combout\ & \always0~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \used_counter[1][0]~33_combout\,
	datab => timer(7),
	datac => \Decoder0~0_combout\,
	datad => \always0~1_combout\,
	combout => \used_counter~43_combout\);

-- Location: LCFF_X47_Y18_N11
\used_counter[1][7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \used_counter~43_combout\,
	ena => \used_counter[1][0]~36_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \used_counter[1][7]~regout\);

-- Location: LCCOMB_X47_Y18_N8
\WideNor1~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \WideNor1~1_combout\ = (\used_counter[1][5]~regout\) # ((\used_counter[1][6]~regout\) # ((\used_counter[1][4]~regout\) # (\used_counter[1][7]~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \used_counter[1][5]~regout\,
	datab => \used_counter[1][6]~regout\,
	datac => \used_counter[1][4]~regout\,
	datad => \used_counter[1][7]~regout\,
	combout => \WideNor1~1_combout\);

-- Location: LCCOMB_X46_Y18_N8
\used_counter[1][0]~33\ : cycloneii_lcell_comb
-- Equation(s):
-- \used_counter[1][0]~33_combout\ = (\b2~combout\ & !\b1~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \b2~combout\,
	datac => \b1~combout\,
	combout => \used_counter[1][0]~33_combout\);

-- Location: LCCOMB_X46_Y18_N0
\used_counter~34\ : cycloneii_lcell_comb
-- Equation(s):
-- \used_counter~34_combout\ = (\Decoder0~0_combout\ & ((\always0~1_combout\) # ((timer(0) & \used_counter[1][0]~33_combout\)))) # (!\Decoder0~0_combout\ & (timer(0) & ((\used_counter[1][0]~33_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Decoder0~0_combout\,
	datab => timer(0),
	datac => \always0~1_combout\,
	datad => \used_counter[1][0]~33_combout\,
	combout => \used_counter~34_combout\);

-- Location: LCFF_X46_Y18_N1
\used_counter[1][0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \used_counter~34_combout\,
	ena => \used_counter[1][0]~36_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \used_counter[1][0]~regout\);

-- Location: LCCOMB_X46_Y18_N14
\used_counter~37\ : cycloneii_lcell_comb
-- Equation(s):
-- \used_counter~37_combout\ = (\always0~1_combout\ & ((\Decoder0~0_combout\) # ((timer(1) & \used_counter[1][0]~33_combout\)))) # (!\always0~1_combout\ & (timer(1) & (\used_counter[1][0]~33_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \always0~1_combout\,
	datab => timer(1),
	datac => \used_counter[1][0]~33_combout\,
	datad => \Decoder0~0_combout\,
	combout => \used_counter~37_combout\);

-- Location: LCFF_X46_Y18_N15
\used_counter[1][1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \used_counter~37_combout\,
	ena => \used_counter[1][0]~36_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \used_counter[1][1]~regout\);

-- Location: LCCOMB_X46_Y18_N26
\used_counter~39\ : cycloneii_lcell_comb
-- Equation(s):
-- \used_counter~39_combout\ = (timer(3) & ((\used_counter[1][0]~33_combout\) # ((\always0~1_combout\ & \Decoder0~0_combout\)))) # (!timer(3) & (((\always0~1_combout\ & \Decoder0~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => timer(3),
	datab => \used_counter[1][0]~33_combout\,
	datac => \always0~1_combout\,
	datad => \Decoder0~0_combout\,
	combout => \used_counter~39_combout\);

-- Location: LCFF_X46_Y18_N27
\used_counter[1][3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \used_counter~39_combout\,
	ena => \used_counter[1][0]~36_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \used_counter[1][3]~regout\);

-- Location: LCCOMB_X46_Y18_N16
\WideNor1~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \WideNor1~0_combout\ = (\used_counter[1][2]~regout\) # ((\used_counter[1][0]~regout\) # ((\used_counter[1][1]~regout\) # (\used_counter[1][3]~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \used_counter[1][2]~regout\,
	datab => \used_counter[1][0]~regout\,
	datac => \used_counter[1][1]~regout\,
	datad => \used_counter[1][3]~regout\,
	combout => \WideNor1~0_combout\);

-- Location: LCCOMB_X46_Y18_N10
\used_counter~45\ : cycloneii_lcell_comb
-- Equation(s):
-- \used_counter~45_combout\ = (\always0~1_combout\ & ((\Decoder0~0_combout\) # ((timer(9) & \used_counter[1][0]~33_combout\)))) # (!\always0~1_combout\ & (timer(9) & (\used_counter[1][0]~33_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \always0~1_combout\,
	datab => timer(9),
	datac => \used_counter[1][0]~33_combout\,
	datad => \Decoder0~0_combout\,
	combout => \used_counter~45_combout\);

-- Location: LCFF_X46_Y18_N11
\used_counter[1][9]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \used_counter~45_combout\,
	ena => \used_counter[1][0]~36_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \used_counter[1][9]~regout\);

-- Location: LCCOMB_X46_Y20_N22
\WideNor1~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \WideNor1~2_combout\ = (!\used_counter[1][8]~regout\ & (!\WideNor1~1_combout\ & (!\WideNor1~0_combout\ & !\used_counter[1][9]~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \used_counter[1][8]~regout\,
	datab => \WideNor1~1_combout\,
	datac => \WideNor1~0_combout\,
	datad => \used_counter[1][9]~regout\,
	combout => \WideNor1~2_combout\);

-- Location: LCCOMB_X46_Y21_N26
\Decoder0~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \Decoder0~1_combout\ = (index(2) & (index(0) & index(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => index(2),
	datac => index(0),
	datad => index(1),
	combout => \Decoder0~1_combout\);

-- Location: LCCOMB_X45_Y19_N4
\used_counter~57\ : cycloneii_lcell_comb
-- Equation(s):
-- \used_counter~57_combout\ = (\used_counter[2][0]~46_combout\ & ((timer(8)) # ((\Decoder0~1_combout\ & \always0~1_combout\)))) # (!\used_counter[2][0]~46_combout\ & (\Decoder0~1_combout\ & ((\always0~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \used_counter[2][0]~46_combout\,
	datab => \Decoder0~1_combout\,
	datac => timer(8),
	datad => \always0~1_combout\,
	combout => \used_counter~57_combout\);

-- Location: LCCOMB_X45_Y19_N26
\used_counter[2][0]~48\ : cycloneii_lcell_comb
-- Equation(s):
-- \used_counter[2][0]~48_combout\ = (\used_counter[2][0]~46_combout\) # ((\Decoder0~1_combout\ & (!\WideNor4~2_combout\ & \always0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \used_counter[2][0]~46_combout\,
	datab => \Decoder0~1_combout\,
	datac => \WideNor4~2_combout\,
	datad => \always0~0_combout\,
	combout => \used_counter[2][0]~48_combout\);

-- Location: LCCOMB_X45_Y19_N8
\used_counter[2][0]~49\ : cycloneii_lcell_comb
-- Equation(s):
-- \used_counter[2][0]~49_combout\ = (\Equal0~10_combout\ & ((\rst~combout\) # (\used_counter[2][0]~48_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rst~combout\,
	datac => \Equal0~10_combout\,
	datad => \used_counter[2][0]~48_combout\,
	combout => \used_counter[2][0]~49_combout\);

-- Location: LCFF_X46_Y19_N7
\used_counter[2][8]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \used_counter~57_combout\,
	sload => VCC,
	ena => \used_counter[2][0]~49_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \used_counter[2][8]~regout\);

-- Location: LCCOMB_X46_Y18_N6
\used_counter[2][0]~46\ : cycloneii_lcell_comb
-- Equation(s):
-- \used_counter[2][0]~46_combout\ = (!\b2~combout\ & (!\b1~combout\ & \b3~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \b2~combout\,
	datac => \b1~combout\,
	datad => \b3~combout\,
	combout => \used_counter[2][0]~46_combout\);

-- Location: LCCOMB_X46_Y21_N30
\used_counter~55\ : cycloneii_lcell_comb
-- Equation(s):
-- \used_counter~55_combout\ = (timer(6) & ((\used_counter[2][0]~46_combout\) # ((\Decoder0~1_combout\ & \always0~1_combout\)))) # (!timer(6) & (\Decoder0~1_combout\ & ((\always0~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => timer(6),
	datab => \Decoder0~1_combout\,
	datac => \used_counter[2][0]~46_combout\,
	datad => \always0~1_combout\,
	combout => \used_counter~55_combout\);

-- Location: LCFF_X46_Y21_N31
\used_counter[2][6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \used_counter~55_combout\,
	ena => \used_counter[2][0]~49_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \used_counter[2][6]~regout\);

-- Location: LCFF_X46_Y21_N13
\timer[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \timer[5]~17_combout\,
	ena => \Equal0~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => timer(5));

-- Location: LCCOMB_X46_Y21_N2
\used_counter~54\ : cycloneii_lcell_comb
-- Equation(s):
-- \used_counter~54_combout\ = (\used_counter[2][0]~46_combout\ & ((timer(5)) # ((\Decoder0~1_combout\ & \always0~1_combout\)))) # (!\used_counter[2][0]~46_combout\ & (\Decoder0~1_combout\ & ((\always0~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \used_counter[2][0]~46_combout\,
	datab => \Decoder0~1_combout\,
	datac => timer(5),
	datad => \always0~1_combout\,
	combout => \used_counter~54_combout\);

-- Location: LCFF_X46_Y21_N3
\used_counter[2][5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \used_counter~54_combout\,
	ena => \used_counter[2][0]~49_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \used_counter[2][5]~regout\);

-- Location: LCCOMB_X46_Y21_N28
\used_counter~56\ : cycloneii_lcell_comb
-- Equation(s):
-- \used_counter~56_combout\ = (\used_counter[2][0]~46_combout\ & ((timer(7)) # ((\Decoder0~1_combout\ & \always0~1_combout\)))) # (!\used_counter[2][0]~46_combout\ & (\Decoder0~1_combout\ & ((\always0~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \used_counter[2][0]~46_combout\,
	datab => \Decoder0~1_combout\,
	datac => timer(7),
	datad => \always0~1_combout\,
	combout => \used_counter~56_combout\);

-- Location: LCFF_X46_Y21_N29
\used_counter[2][7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \used_counter~56_combout\,
	ena => \used_counter[2][0]~49_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \used_counter[2][7]~regout\);

-- Location: LCCOMB_X46_Y21_N22
\WideNor2~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \WideNor2~1_combout\ = (\used_counter[2][4]~regout\) # ((\used_counter[2][6]~regout\) # ((\used_counter[2][5]~regout\) # (\used_counter[2][7]~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \used_counter[2][4]~regout\,
	datab => \used_counter[2][6]~regout\,
	datac => \used_counter[2][5]~regout\,
	datad => \used_counter[2][7]~regout\,
	combout => \WideNor2~1_combout\);

-- Location: LCCOMB_X45_Y19_N24
\used_counter~51\ : cycloneii_lcell_comb
-- Equation(s):
-- \used_counter~51_combout\ = (timer(2) & ((\used_counter[2][0]~46_combout\) # ((\Decoder0~1_combout\ & \always0~1_combout\)))) # (!timer(2) & (\Decoder0~1_combout\ & ((\always0~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => timer(2),
	datab => \Decoder0~1_combout\,
	datac => \used_counter[2][0]~46_combout\,
	datad => \always0~1_combout\,
	combout => \used_counter~51_combout\);

-- Location: LCFF_X45_Y19_N25
\used_counter[2][2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \used_counter~51_combout\,
	ena => \used_counter[2][0]~49_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \used_counter[2][2]~regout\);

-- Location: LCCOMB_X45_Y19_N0
\used_counter~47\ : cycloneii_lcell_comb
-- Equation(s):
-- \used_counter~47_combout\ = (\used_counter[2][0]~46_combout\ & ((timer(0)) # ((\Decoder0~1_combout\ & \always0~1_combout\)))) # (!\used_counter[2][0]~46_combout\ & (\Decoder0~1_combout\ & ((\always0~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \used_counter[2][0]~46_combout\,
	datab => \Decoder0~1_combout\,
	datac => timer(0),
	datad => \always0~1_combout\,
	combout => \used_counter~47_combout\);

-- Location: LCFF_X46_Y19_N1
\used_counter[2][0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \used_counter~47_combout\,
	sload => VCC,
	ena => \used_counter[2][0]~49_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \used_counter[2][0]~regout\);

-- Location: LCFF_X46_Y21_N9
\timer[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \timer[3]~13_combout\,
	ena => \Equal0~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => timer(3));

-- Location: LCCOMB_X45_Y19_N10
\used_counter~52\ : cycloneii_lcell_comb
-- Equation(s):
-- \used_counter~52_combout\ = (\always0~1_combout\ & ((\Decoder0~1_combout\) # ((\used_counter[2][0]~46_combout\ & timer(3))))) # (!\always0~1_combout\ & (((\used_counter[2][0]~46_combout\ & timer(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \always0~1_combout\,
	datab => \Decoder0~1_combout\,
	datac => \used_counter[2][0]~46_combout\,
	datad => timer(3),
	combout => \used_counter~52_combout\);

-- Location: LCFF_X45_Y19_N11
\used_counter[2][3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \used_counter~52_combout\,
	ena => \used_counter[2][0]~49_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \used_counter[2][3]~regout\);

-- Location: LCCOMB_X46_Y19_N0
\WideNor2~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \WideNor2~0_combout\ = (\used_counter[2][1]~regout\) # ((\used_counter[2][2]~regout\) # ((\used_counter[2][0]~regout\) # (\used_counter[2][3]~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \used_counter[2][1]~regout\,
	datab => \used_counter[2][2]~regout\,
	datac => \used_counter[2][0]~regout\,
	datad => \used_counter[2][3]~regout\,
	combout => \WideNor2~0_combout\);

-- Location: LCCOMB_X46_Y20_N4
\WideNor2~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \WideNor2~2_combout\ = (!\used_counter[2][9]~regout\ & (!\used_counter[2][8]~regout\ & (!\WideNor2~1_combout\ & !\WideNor2~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \used_counter[2][9]~regout\,
	datab => \used_counter[2][8]~regout\,
	datac => \WideNor2~1_combout\,
	datad => \WideNor2~0_combout\,
	combout => \WideNor2~2_combout\);

-- Location: LCCOMB_X45_Y19_N16
\used_counter~71\ : cycloneii_lcell_comb
-- Equation(s):
-- \used_counter~71_combout\ = ((\used_counter[3][0]~59_combout\ & timer(8))) # (!\used_counter[3][0]~61_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \used_counter[3][0]~59_combout\,
	datac => timer(8),
	datad => \used_counter[3][0]~61_combout\,
	combout => \used_counter~71_combout\);

-- Location: LCCOMB_X45_Y19_N18
\used_counter[3][0]~63\ : cycloneii_lcell_comb
-- Equation(s):
-- \used_counter[3][0]~63_combout\ = (\Equal0~10_combout\ & ((\rst~combout\) # ((\used_counter[3][0]~59_combout\) # (!\used_counter[3][0]~61_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rst~combout\,
	datab => \used_counter[3][0]~59_combout\,
	datac => \Equal0~10_combout\,
	datad => \used_counter[3][0]~61_combout\,
	combout => \used_counter[3][0]~63_combout\);

-- Location: LCFF_X45_Y19_N17
\used_counter[3][8]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \used_counter~71_combout\,
	ena => \used_counter[3][0]~63_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \used_counter[3][8]~regout\);

-- Location: LCCOMB_X46_Y19_N22
\used_counter~69\ : cycloneii_lcell_comb
-- Equation(s):
-- \used_counter~69_combout\ = ((\used_counter[3][0]~59_combout\ & timer(6))) # (!\used_counter[3][0]~61_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \used_counter[3][0]~59_combout\,
	datac => timer(6),
	datad => \used_counter[3][0]~61_combout\,
	combout => \used_counter~69_combout\);

-- Location: LCFF_X46_Y19_N23
\used_counter[3][6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \used_counter~69_combout\,
	ena => \used_counter[3][0]~63_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \used_counter[3][6]~regout\);

-- Location: LCCOMB_X46_Y19_N30
\used_counter~67\ : cycloneii_lcell_comb
-- Equation(s):
-- \used_counter~67_combout\ = ((\used_counter[3][0]~59_combout\ & timer(4))) # (!\used_counter[3][0]~61_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \used_counter[3][0]~59_combout\,
	datac => timer(4),
	datad => \used_counter[3][0]~61_combout\,
	combout => \used_counter~67_combout\);

-- Location: LCFF_X46_Y19_N31
\used_counter[3][4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \used_counter~67_combout\,
	ena => \used_counter[3][0]~63_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \used_counter[3][4]~regout\);

-- Location: LCCOMB_X46_Y19_N28
\used_counter~68\ : cycloneii_lcell_comb
-- Equation(s):
-- \used_counter~68_combout\ = ((\used_counter[3][0]~59_combout\ & timer(5))) # (!\used_counter[3][0]~61_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \used_counter[3][0]~59_combout\,
	datab => timer(5),
	datad => \used_counter[3][0]~61_combout\,
	combout => \used_counter~68_combout\);

-- Location: LCFF_X46_Y19_N29
\used_counter[3][5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \used_counter~68_combout\,
	ena => \used_counter[3][0]~63_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \used_counter[3][5]~regout\);

-- Location: LCCOMB_X46_Y19_N26
\WideNor3~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \WideNor3~1_combout\ = (\used_counter[3][7]~regout\) # ((\used_counter[3][6]~regout\) # ((\used_counter[3][4]~regout\) # (\used_counter[3][5]~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \used_counter[3][7]~regout\,
	datab => \used_counter[3][6]~regout\,
	datac => \used_counter[3][4]~regout\,
	datad => \used_counter[3][5]~regout\,
	combout => \WideNor3~1_combout\);

-- Location: LCCOMB_X45_Y19_N14
\used_counter~65\ : cycloneii_lcell_comb
-- Equation(s):
-- \used_counter~65_combout\ = ((timer(2) & \used_counter[3][0]~59_combout\)) # (!\used_counter[3][0]~61_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => timer(2),
	datac => \used_counter[3][0]~59_combout\,
	datad => \used_counter[3][0]~61_combout\,
	combout => \used_counter~65_combout\);

-- Location: LCFF_X45_Y19_N15
\used_counter[3][2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \used_counter~65_combout\,
	ena => \used_counter[3][0]~63_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \used_counter[3][2]~regout\);

-- Location: LCCOMB_X45_Y19_N20
\used_counter~66\ : cycloneii_lcell_comb
-- Equation(s):
-- \used_counter~66_combout\ = ((timer(3) & \used_counter[3][0]~59_combout\)) # (!\used_counter[3][0]~61_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => timer(3),
	datac => \used_counter[3][0]~59_combout\,
	datad => \used_counter[3][0]~61_combout\,
	combout => \used_counter~66_combout\);

-- Location: LCFF_X45_Y19_N21
\used_counter[3][3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \used_counter~66_combout\,
	ena => \used_counter[3][0]~63_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \used_counter[3][3]~regout\);

-- Location: LCCOMB_X45_Y19_N30
\used_counter~62\ : cycloneii_lcell_comb
-- Equation(s):
-- \used_counter~62_combout\ = ((\used_counter[3][0]~59_combout\ & timer(0))) # (!\used_counter[3][0]~61_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \used_counter[3][0]~59_combout\,
	datac => timer(0),
	datad => \used_counter[3][0]~61_combout\,
	combout => \used_counter~62_combout\);

-- Location: LCFF_X45_Y19_N31
\used_counter[3][0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \used_counter~62_combout\,
	ena => \used_counter[3][0]~63_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \used_counter[3][0]~regout\);

-- Location: LCCOMB_X45_Y19_N2
\WideNor3~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \WideNor3~0_combout\ = (\used_counter[3][1]~regout\) # ((\used_counter[3][2]~regout\) # ((\used_counter[3][3]~regout\) # (\used_counter[3][0]~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \used_counter[3][1]~regout\,
	datab => \used_counter[3][2]~regout\,
	datac => \used_counter[3][3]~regout\,
	datad => \used_counter[3][0]~regout\,
	combout => \WideNor3~0_combout\);

-- Location: LCCOMB_X46_Y20_N10
\WideNor3~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \WideNor3~2_combout\ = (!\used_counter[3][9]~regout\ & (!\used_counter[3][8]~regout\ & (!\WideNor3~1_combout\ & !\WideNor3~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \used_counter[3][9]~regout\,
	datab => \used_counter[3][8]~regout\,
	datac => \WideNor3~1_combout\,
	datad => \WideNor3~0_combout\,
	combout => \WideNor3~2_combout\);

-- Location: LCCOMB_X46_Y20_N6
\always0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \always0~0_combout\ = (!\WideNor0~2_combout\ & (!\WideNor1~2_combout\ & (!\WideNor2~2_combout\ & !\WideNor3~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \WideNor0~2_combout\,
	datab => \WideNor1~2_combout\,
	datac => \WideNor2~2_combout\,
	datad => \WideNor3~2_combout\,
	combout => \always0~0_combout\);

-- Location: LCCOMB_X46_Y20_N8
\used_counter[3][0]~61\ : cycloneii_lcell_comb
-- Equation(s):
-- \used_counter[3][0]~61_combout\ = (\used_counter[3][0]~60_combout\) # ((\WideNor4~2_combout\) # (!\always0~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \used_counter[3][0]~60_combout\,
	datac => \WideNor4~2_combout\,
	datad => \always0~0_combout\,
	combout => \used_counter[3][0]~61_combout\);

-- Location: LCCOMB_X45_Y19_N22
\used_counter~72\ : cycloneii_lcell_comb
-- Equation(s):
-- \used_counter~72_combout\ = ((\used_counter[3][0]~59_combout\ & timer(9))) # (!\used_counter[3][0]~61_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \used_counter[3][0]~59_combout\,
	datac => timer(9),
	datad => \used_counter[3][0]~61_combout\,
	combout => \used_counter~72_combout\);

-- Location: LCFF_X45_Y19_N23
\used_counter[3][9]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \used_counter~72_combout\,
	ena => \used_counter[3][0]~63_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \used_counter[3][9]~regout\);

-- Location: LCCOMB_X46_Y21_N24
\used_counter~53\ : cycloneii_lcell_comb
-- Equation(s):
-- \used_counter~53_combout\ = (timer(4) & ((\used_counter[2][0]~46_combout\) # ((\Decoder0~1_combout\ & \always0~1_combout\)))) # (!timer(4) & (\Decoder0~1_combout\ & ((\always0~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => timer(4),
	datab => \Decoder0~1_combout\,
	datac => \used_counter[2][0]~46_combout\,
	datad => \always0~1_combout\,
	combout => \used_counter~53_combout\);

-- Location: LCFF_X46_Y21_N25
\used_counter[2][4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \used_counter~53_combout\,
	ena => \used_counter[2][0]~49_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \used_counter[2][4]~regout\);

-- Location: LCCOMB_X47_Y19_N26
\index~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \index~0_combout\ = (!\LessThan3~18_combout\ & !\LessThan2~18_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \LessThan3~18_combout\,
	datad => \LessThan2~18_combout\,
	combout => \index~0_combout\);

-- Location: LCCOMB_X46_Y18_N20
\used_counter~38\ : cycloneii_lcell_comb
-- Equation(s):
-- \used_counter~38_combout\ = (timer(2) & ((\used_counter[1][0]~33_combout\) # ((\always0~1_combout\ & \Decoder0~0_combout\)))) # (!timer(2) & (((\always0~1_combout\ & \Decoder0~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => timer(2),
	datab => \used_counter[1][0]~33_combout\,
	datac => \always0~1_combout\,
	datad => \Decoder0~0_combout\,
	combout => \used_counter~38_combout\);

-- Location: LCFF_X46_Y18_N21
\used_counter[1][2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \used_counter~38_combout\,
	ena => \used_counter[1][0]~36_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \used_counter[1][2]~regout\);

-- Location: LCCOMB_X46_Y18_N2
\index_value~21\ : cycloneii_lcell_comb
-- Equation(s):
-- \index_value~21_combout\ = (\index~0_combout\ & ((\index~7_combout\ & ((\used_counter[1][2]~regout\))) # (!\index~7_combout\ & (\used_counter[0][2]~regout\)))) # (!\index~0_combout\ & (((\index~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \used_counter[0][2]~regout\,
	datab => \used_counter[1][2]~regout\,
	datac => \index~0_combout\,
	datad => \index~7_combout\,
	combout => \index_value~21_combout\);

-- Location: LCCOMB_X46_Y18_N28
\index_value~22\ : cycloneii_lcell_comb
-- Equation(s):
-- \index_value~22_combout\ = (\index~0_combout\ & (((\index_value~21_combout\)))) # (!\index~0_combout\ & ((\index_value~21_combout\ & ((\used_counter[3][2]~regout\))) # (!\index_value~21_combout\ & (\used_counter[2][2]~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \used_counter[2][2]~regout\,
	datab => \used_counter[3][2]~regout\,
	datac => \index~0_combout\,
	datad => \index_value~21_combout\,
	combout => \index_value~22_combout\);

-- Location: LCCOMB_X46_Y18_N24
\index_value~23\ : cycloneii_lcell_comb
-- Equation(s):
-- \index_value~23_combout\ = (\LessThan4~18_combout\ & (!\used_counter[4][2]~regout\)) # (!\LessThan4~18_combout\ & ((!\index_value~22_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \used_counter[4][2]~regout\,
	datac => \LessThan4~18_combout\,
	datad => \index_value~22_combout\,
	combout => \index_value~23_combout\);

-- Location: LCCOMB_X47_Y20_N22
\index[2]~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \index[2]~2_combout\ = (\always0~1_combout\ & (\Equal0~10_combout\ & ((!\index~0_combout\) # (!\index[1]~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \always0~1_combout\,
	datab => \Equal0~10_combout\,
	datac => \index[1]~1_combout\,
	datad => \index~0_combout\,
	combout => \index[2]~2_combout\);

-- Location: LCFF_X46_Y18_N25
\index_value[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \index_value~23_combout\,
	ena => \index[2]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => index_value(2));

-- Location: LCCOMB_X48_Y20_N26
\used_counter~24\ : cycloneii_lcell_comb
-- Equation(s):
-- \used_counter~24_combout\ = (\used_counter[0][1]~21_combout\) # ((\b1~combout\ & timer(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b1~combout\,
	datab => \used_counter[0][1]~21_combout\,
	datad => timer(1),
	combout => \used_counter~24_combout\);

-- Location: LCCOMB_X45_Y20_N12
\used_counter[0][0]~23\ : cycloneii_lcell_comb
-- Equation(s):
-- \used_counter[0][0]~23_combout\ = (\Equal0~10_combout\ & ((\rst~combout\) # ((\b1~combout\) # (\used_counter[0][1]~21_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rst~combout\,
	datab => \b1~combout\,
	datac => \Equal0~10_combout\,
	datad => \used_counter[0][1]~21_combout\,
	combout => \used_counter[0][0]~23_combout\);

-- Location: LCFF_X48_Y20_N27
\used_counter[0][1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \used_counter~24_combout\,
	ena => \used_counter[0][0]~23_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \used_counter[0][1]~regout\);

-- Location: LCCOMB_X47_Y19_N24
\index_value~24\ : cycloneii_lcell_comb
-- Equation(s):
-- \index_value~24_combout\ = (\index~0_combout\ & (((\used_counter[0][1]~regout\ & !\index~7_combout\)))) # (!\index~0_combout\ & ((\used_counter[2][1]~regout\) # ((\index~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \used_counter[2][1]~regout\,
	datab => \index~0_combout\,
	datac => \used_counter[0][1]~regout\,
	datad => \index~7_combout\,
	combout => \index_value~24_combout\);

-- Location: LCCOMB_X47_Y19_N30
\index_value~25\ : cycloneii_lcell_comb
-- Equation(s):
-- \index_value~25_combout\ = (\index_value~24_combout\ & ((\used_counter[3][1]~regout\) # ((!\index~7_combout\)))) # (!\index_value~24_combout\ & (((\used_counter[1][1]~regout\ & \index~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \used_counter[3][1]~regout\,
	datab => \used_counter[1][1]~regout\,
	datac => \index_value~24_combout\,
	datad => \index~7_combout\,
	combout => \index_value~25_combout\);

-- Location: LCCOMB_X47_Y19_N28
\index_value~26\ : cycloneii_lcell_comb
-- Equation(s):
-- \index_value~26_combout\ = (\LessThan4~18_combout\ & (!\used_counter[4][1]~regout\)) # (!\LessThan4~18_combout\ & ((!\index_value~25_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \LessThan4~18_combout\,
	datac => \used_counter[4][1]~regout\,
	datad => \index_value~25_combout\,
	combout => \index_value~26_combout\);

-- Location: LCFF_X47_Y19_N29
\index_value[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \index_value~26_combout\,
	ena => \index[2]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => index_value(1));

-- Location: LCCOMB_X48_Y20_N24
\used_counter~22\ : cycloneii_lcell_comb
-- Equation(s):
-- \used_counter~22_combout\ = (\used_counter[0][1]~21_combout\) # ((\b1~combout\ & timer(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b1~combout\,
	datac => timer(0),
	datad => \used_counter[0][1]~21_combout\,
	combout => \used_counter~22_combout\);

-- Location: LCFF_X48_Y20_N25
\used_counter[0][0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \used_counter~22_combout\,
	ena => \used_counter[0][0]~23_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \used_counter[0][0]~regout\);

-- Location: LCCOMB_X47_Y20_N0
\index_value~27\ : cycloneii_lcell_comb
-- Equation(s):
-- \index_value~27_combout\ = (\index~7_combout\ & ((\used_counter[1][0]~regout\) # ((!\index~0_combout\)))) # (!\index~7_combout\ & (((\used_counter[0][0]~regout\ & \index~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \used_counter[1][0]~regout\,
	datab => \used_counter[0][0]~regout\,
	datac => \index~7_combout\,
	datad => \index~0_combout\,
	combout => \index_value~27_combout\);

-- Location: LCCOMB_X47_Y20_N26
\index_value~28\ : cycloneii_lcell_comb
-- Equation(s):
-- \index_value~28_combout\ = (\index~0_combout\ & (((\index_value~27_combout\)))) # (!\index~0_combout\ & ((\index_value~27_combout\ & (\used_counter[3][0]~regout\)) # (!\index_value~27_combout\ & ((\used_counter[2][0]~regout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \used_counter[3][0]~regout\,
	datab => \index~0_combout\,
	datac => \used_counter[2][0]~regout\,
	datad => \index_value~27_combout\,
	combout => \index_value~28_combout\);

-- Location: LCCOMB_X47_Y20_N18
\index_value~29\ : cycloneii_lcell_comb
-- Equation(s):
-- \index_value~29_combout\ = (\LessThan4~18_combout\ & (!\used_counter[4][0]~regout\)) # (!\LessThan4~18_combout\ & ((!\index_value~28_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \used_counter[4][0]~regout\,
	datac => \LessThan4~18_combout\,
	datad => \index_value~28_combout\,
	combout => \index_value~29_combout\);

-- Location: LCFF_X47_Y20_N19
\index_value[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \index_value~29_combout\,
	ena => \index[2]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => index_value(0));

-- Location: LCCOMB_X47_Y19_N0
\LessThan2~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \LessThan2~1_cout\ = CARRY((\used_counter[2][0]~regout\ & index_value(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010001000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \used_counter[2][0]~regout\,
	datab => index_value(0),
	datad => VCC,
	cout => \LessThan2~1_cout\);

-- Location: LCCOMB_X47_Y19_N2
\LessThan2~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \LessThan2~3_cout\ = CARRY((\used_counter[2][1]~regout\ & (!index_value(1) & !\LessThan2~1_cout\)) # (!\used_counter[2][1]~regout\ & ((!\LessThan2~1_cout\) # (!index_value(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \used_counter[2][1]~regout\,
	datab => index_value(1),
	datad => VCC,
	cin => \LessThan2~1_cout\,
	cout => \LessThan2~3_cout\);

-- Location: LCCOMB_X47_Y19_N4
\LessThan2~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \LessThan2~5_cout\ = CARRY((\used_counter[2][2]~regout\ & ((index_value(2)) # (!\LessThan2~3_cout\))) # (!\used_counter[2][2]~regout\ & (index_value(2) & !\LessThan2~3_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \used_counter[2][2]~regout\,
	datab => index_value(2),
	datad => VCC,
	cin => \LessThan2~3_cout\,
	cout => \LessThan2~5_cout\);

-- Location: LCCOMB_X47_Y19_N6
\LessThan2~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \LessThan2~7_cout\ = CARRY((index_value(3) & (!\used_counter[2][3]~regout\ & !\LessThan2~5_cout\)) # (!index_value(3) & ((!\LessThan2~5_cout\) # (!\used_counter[2][3]~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => index_value(3),
	datab => \used_counter[2][3]~regout\,
	datad => VCC,
	cin => \LessThan2~5_cout\,
	cout => \LessThan2~7_cout\);

-- Location: LCCOMB_X47_Y19_N8
\LessThan2~9\ : cycloneii_lcell_comb
-- Equation(s):
-- \LessThan2~9_cout\ = CARRY((index_value(4) & ((\used_counter[2][4]~regout\) # (!\LessThan2~7_cout\))) # (!index_value(4) & (\used_counter[2][4]~regout\ & !\LessThan2~7_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => index_value(4),
	datab => \used_counter[2][4]~regout\,
	datad => VCC,
	cin => \LessThan2~7_cout\,
	cout => \LessThan2~9_cout\);

-- Location: LCCOMB_X47_Y19_N10
\LessThan2~11\ : cycloneii_lcell_comb
-- Equation(s):
-- \LessThan2~11_cout\ = CARRY((index_value(5) & (!\used_counter[2][5]~regout\ & !\LessThan2~9_cout\)) # (!index_value(5) & ((!\LessThan2~9_cout\) # (!\used_counter[2][5]~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => index_value(5),
	datab => \used_counter[2][5]~regout\,
	datad => VCC,
	cin => \LessThan2~9_cout\,
	cout => \LessThan2~11_cout\);

-- Location: LCCOMB_X47_Y19_N12
\LessThan2~13\ : cycloneii_lcell_comb
-- Equation(s):
-- \LessThan2~13_cout\ = CARRY((index_value(6) & ((\used_counter[2][6]~regout\) # (!\LessThan2~11_cout\))) # (!index_value(6) & (\used_counter[2][6]~regout\ & !\LessThan2~11_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => index_value(6),
	datab => \used_counter[2][6]~regout\,
	datad => VCC,
	cin => \LessThan2~11_cout\,
	cout => \LessThan2~13_cout\);

-- Location: LCCOMB_X47_Y19_N14
\LessThan2~15\ : cycloneii_lcell_comb
-- Equation(s):
-- \LessThan2~15_cout\ = CARRY((\used_counter[2][7]~regout\ & (!index_value(7) & !\LessThan2~13_cout\)) # (!\used_counter[2][7]~regout\ & ((!\LessThan2~13_cout\) # (!index_value(7)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \used_counter[2][7]~regout\,
	datab => index_value(7),
	datad => VCC,
	cin => \LessThan2~13_cout\,
	cout => \LessThan2~15_cout\);

-- Location: LCCOMB_X47_Y19_N16
\LessThan2~17\ : cycloneii_lcell_comb
-- Equation(s):
-- \LessThan2~17_cout\ = CARRY((index_value(8) & ((\used_counter[2][8]~regout\) # (!\LessThan2~15_cout\))) # (!index_value(8) & (\used_counter[2][8]~regout\ & !\LessThan2~15_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => index_value(8),
	datab => \used_counter[2][8]~regout\,
	datad => VCC,
	cin => \LessThan2~15_cout\,
	cout => \LessThan2~17_cout\);

-- Location: LCCOMB_X47_Y19_N18
\LessThan2~18\ : cycloneii_lcell_comb
-- Equation(s):
-- \LessThan2~18_combout\ = (\used_counter[2][9]~regout\ & ((\LessThan2~17_cout\) # (index_value(9)))) # (!\used_counter[2][9]~regout\ & (\LessThan2~17_cout\ & index_value(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101010100000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \used_counter[2][9]~regout\,
	datad => index_value(9),
	cin => \LessThan2~17_cout\,
	combout => \LessThan2~18_combout\);

-- Location: LCCOMB_X47_Y18_N2
\used_counter~44\ : cycloneii_lcell_comb
-- Equation(s):
-- \used_counter~44_combout\ = (\used_counter[1][0]~33_combout\ & ((timer(8)) # ((\Decoder0~0_combout\ & \always0~1_combout\)))) # (!\used_counter[1][0]~33_combout\ & (\Decoder0~0_combout\ & ((\always0~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \used_counter[1][0]~33_combout\,
	datab => \Decoder0~0_combout\,
	datac => timer(8),
	datad => \always0~1_combout\,
	combout => \used_counter~44_combout\);

-- Location: LCFF_X47_Y18_N3
\used_counter[1][8]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \used_counter~44_combout\,
	ena => \used_counter[1][0]~36_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \used_counter[1][8]~regout\);

-- Location: LCCOMB_X47_Y18_N6
\used_counter~41\ : cycloneii_lcell_comb
-- Equation(s):
-- \used_counter~41_combout\ = (\used_counter[1][0]~33_combout\ & ((timer(5)) # ((\Decoder0~0_combout\ & \always0~1_combout\)))) # (!\used_counter[1][0]~33_combout\ & (\Decoder0~0_combout\ & ((\always0~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \used_counter[1][0]~33_combout\,
	datab => \Decoder0~0_combout\,
	datac => timer(5),
	datad => \always0~1_combout\,
	combout => \used_counter~41_combout\);

-- Location: LCFF_X47_Y18_N7
\used_counter[1][5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \used_counter~41_combout\,
	ena => \used_counter[1][0]~36_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \used_counter[1][5]~regout\);

-- Location: LCCOMB_X47_Y20_N28
\index_value~12\ : cycloneii_lcell_comb
-- Equation(s):
-- \index_value~12_combout\ = (\index~7_combout\ & (((!\index~0_combout\)))) # (!\index~7_combout\ & ((\index~0_combout\ & (\used_counter[0][5]~regout\)) # (!\index~0_combout\ & ((\used_counter[2][5]~regout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \used_counter[0][5]~regout\,
	datab => \used_counter[2][5]~regout\,
	datac => \index~7_combout\,
	datad => \index~0_combout\,
	combout => \index_value~12_combout\);

-- Location: LCCOMB_X47_Y20_N30
\index_value~13\ : cycloneii_lcell_comb
-- Equation(s):
-- \index_value~13_combout\ = (\index~7_combout\ & ((\index_value~12_combout\ & (\used_counter[3][5]~regout\)) # (!\index_value~12_combout\ & ((\used_counter[1][5]~regout\))))) # (!\index~7_combout\ & (((\index_value~12_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \used_counter[3][5]~regout\,
	datab => \used_counter[1][5]~regout\,
	datac => \index~7_combout\,
	datad => \index_value~12_combout\,
	combout => \index_value~13_combout\);

-- Location: LCCOMB_X47_Y20_N14
\index_value~14\ : cycloneii_lcell_comb
-- Equation(s):
-- \index_value~14_combout\ = (\LessThan4~18_combout\ & (!\used_counter[4][5]~regout\)) # (!\LessThan4~18_combout\ & ((!\index_value~13_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \used_counter[4][5]~regout\,
	datac => \LessThan4~18_combout\,
	datad => \index_value~13_combout\,
	combout => \index_value~14_combout\);

-- Location: LCFF_X47_Y20_N15
\index_value[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \index_value~14_combout\,
	ena => \index[2]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => index_value(5));

-- Location: LCCOMB_X45_Y20_N16
\used_counter~27\ : cycloneii_lcell_comb
-- Equation(s):
-- \used_counter~27_combout\ = (\used_counter[0][1]~21_combout\) # ((\b1~combout\ & timer(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \b1~combout\,
	datac => timer(4),
	datad => \used_counter[0][1]~21_combout\,
	combout => \used_counter~27_combout\);

-- Location: LCFF_X45_Y20_N17
\used_counter[0][4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \used_counter~27_combout\,
	ena => \used_counter[0][0]~23_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \used_counter[0][4]~regout\);

-- Location: LCCOMB_X48_Y19_N0
\index_value~15\ : cycloneii_lcell_comb
-- Equation(s):
-- \index_value~15_combout\ = (\index~0_combout\ & ((\index~7_combout\ & (\used_counter[1][4]~regout\)) # (!\index~7_combout\ & ((\used_counter[0][4]~regout\))))) # (!\index~0_combout\ & (((\index~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \used_counter[1][4]~regout\,
	datab => \used_counter[0][4]~regout\,
	datac => \index~0_combout\,
	datad => \index~7_combout\,
	combout => \index_value~15_combout\);

-- Location: LCCOMB_X48_Y19_N2
\index_value~16\ : cycloneii_lcell_comb
-- Equation(s):
-- \index_value~16_combout\ = (\index~0_combout\ & (((\index_value~15_combout\)))) # (!\index~0_combout\ & ((\index_value~15_combout\ & ((\used_counter[3][4]~regout\))) # (!\index_value~15_combout\ & (\used_counter[2][4]~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \used_counter[2][4]~regout\,
	datab => \used_counter[3][4]~regout\,
	datac => \index~0_combout\,
	datad => \index_value~15_combout\,
	combout => \index_value~16_combout\);

-- Location: LCCOMB_X48_Y19_N26
\index_value~17\ : cycloneii_lcell_comb
-- Equation(s):
-- \index_value~17_combout\ = (\LessThan4~18_combout\ & (!\used_counter[4][4]~regout\)) # (!\LessThan4~18_combout\ & ((!\index_value~16_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \used_counter[4][4]~regout\,
	datac => \LessThan4~18_combout\,
	datad => \index_value~16_combout\,
	combout => \index_value~17_combout\);

-- Location: LCFF_X48_Y19_N27
\index_value[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \index_value~17_combout\,
	ena => \index[2]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => index_value(4));

-- Location: LCCOMB_X47_Y18_N12
\LessThan1~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \LessThan1~1_cout\ = CARRY((\used_counter[1][0]~regout\ & index_value(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010001000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \used_counter[1][0]~regout\,
	datab => index_value(0),
	datad => VCC,
	cout => \LessThan1~1_cout\);

-- Location: LCCOMB_X47_Y18_N14
\LessThan1~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \LessThan1~3_cout\ = CARRY((\used_counter[1][1]~regout\ & (!index_value(1) & !\LessThan1~1_cout\)) # (!\used_counter[1][1]~regout\ & ((!\LessThan1~1_cout\) # (!index_value(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \used_counter[1][1]~regout\,
	datab => index_value(1),
	datad => VCC,
	cin => \LessThan1~1_cout\,
	cout => \LessThan1~3_cout\);

-- Location: LCCOMB_X47_Y18_N16
\LessThan1~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \LessThan1~5_cout\ = CARRY((\used_counter[1][2]~regout\ & ((index_value(2)) # (!\LessThan1~3_cout\))) # (!\used_counter[1][2]~regout\ & (index_value(2) & !\LessThan1~3_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \used_counter[1][2]~regout\,
	datab => index_value(2),
	datad => VCC,
	cin => \LessThan1~3_cout\,
	cout => \LessThan1~5_cout\);

-- Location: LCCOMB_X47_Y18_N18
\LessThan1~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \LessThan1~7_cout\ = CARRY((index_value(3) & (!\used_counter[1][3]~regout\ & !\LessThan1~5_cout\)) # (!index_value(3) & ((!\LessThan1~5_cout\) # (!\used_counter[1][3]~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => index_value(3),
	datab => \used_counter[1][3]~regout\,
	datad => VCC,
	cin => \LessThan1~5_cout\,
	cout => \LessThan1~7_cout\);

-- Location: LCCOMB_X47_Y18_N20
\LessThan1~9\ : cycloneii_lcell_comb
-- Equation(s):
-- \LessThan1~9_cout\ = CARRY((\used_counter[1][4]~regout\ & ((index_value(4)) # (!\LessThan1~7_cout\))) # (!\used_counter[1][4]~regout\ & (index_value(4) & !\LessThan1~7_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \used_counter[1][4]~regout\,
	datab => index_value(4),
	datad => VCC,
	cin => \LessThan1~7_cout\,
	cout => \LessThan1~9_cout\);

-- Location: LCCOMB_X47_Y18_N22
\LessThan1~11\ : cycloneii_lcell_comb
-- Equation(s):
-- \LessThan1~11_cout\ = CARRY((\used_counter[1][5]~regout\ & (!index_value(5) & !\LessThan1~9_cout\)) # (!\used_counter[1][5]~regout\ & ((!\LessThan1~9_cout\) # (!index_value(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \used_counter[1][5]~regout\,
	datab => index_value(5),
	datad => VCC,
	cin => \LessThan1~9_cout\,
	cout => \LessThan1~11_cout\);

-- Location: LCCOMB_X47_Y18_N24
\LessThan1~13\ : cycloneii_lcell_comb
-- Equation(s):
-- \LessThan1~13_cout\ = CARRY((index_value(6) & ((\used_counter[1][6]~regout\) # (!\LessThan1~11_cout\))) # (!index_value(6) & (\used_counter[1][6]~regout\ & !\LessThan1~11_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => index_value(6),
	datab => \used_counter[1][6]~regout\,
	datad => VCC,
	cin => \LessThan1~11_cout\,
	cout => \LessThan1~13_cout\);

-- Location: LCCOMB_X47_Y18_N26
\LessThan1~15\ : cycloneii_lcell_comb
-- Equation(s):
-- \LessThan1~15_cout\ = CARRY((\used_counter[1][7]~regout\ & (!index_value(7) & !\LessThan1~13_cout\)) # (!\used_counter[1][7]~regout\ & ((!\LessThan1~13_cout\) # (!index_value(7)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \used_counter[1][7]~regout\,
	datab => index_value(7),
	datad => VCC,
	cin => \LessThan1~13_cout\,
	cout => \LessThan1~15_cout\);

-- Location: LCCOMB_X47_Y18_N28
\LessThan1~17\ : cycloneii_lcell_comb
-- Equation(s):
-- \LessThan1~17_cout\ = CARRY((index_value(8) & ((\used_counter[1][8]~regout\) # (!\LessThan1~15_cout\))) # (!index_value(8) & (\used_counter[1][8]~regout\ & !\LessThan1~15_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => index_value(8),
	datab => \used_counter[1][8]~regout\,
	datad => VCC,
	cin => \LessThan1~15_cout\,
	cout => \LessThan1~17_cout\);

-- Location: LCCOMB_X47_Y18_N30
\LessThan1~18\ : cycloneii_lcell_comb
-- Equation(s):
-- \LessThan1~18_combout\ = (\used_counter[1][9]~regout\ & ((\LessThan1~17_cout\) # (index_value(9)))) # (!\used_counter[1][9]~regout\ & (\LessThan1~17_cout\ & index_value(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101010100000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \used_counter[1][9]~regout\,
	datad => index_value(9),
	cin => \LessThan1~17_cout\,
	combout => \LessThan1~18_combout\);

-- Location: LCCOMB_X47_Y19_N22
\index~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \index~7_combout\ = (\LessThan3~18_combout\) # ((!\LessThan2~18_combout\ & \LessThan1~18_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \LessThan2~18_combout\,
	datac => \LessThan3~18_combout\,
	datad => \LessThan1~18_combout\,
	combout => \index~7_combout\);

-- Location: LCCOMB_X46_Y20_N28
\index_value~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \index_value~6_combout\ = (\index~7_combout\ & (((!\index~0_combout\)))) # (!\index~7_combout\ & ((\index~0_combout\ & (\used_counter[0][7]~regout\)) # (!\index~0_combout\ & ((\used_counter[2][7]~regout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \used_counter[0][7]~regout\,
	datab => \used_counter[2][7]~regout\,
	datac => \index~7_combout\,
	datad => \index~0_combout\,
	combout => \index_value~6_combout\);

-- Location: LCCOMB_X46_Y20_N2
\index_value~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \index_value~7_combout\ = (\index~7_combout\ & ((\index_value~6_combout\ & (\used_counter[3][7]~regout\)) # (!\index_value~6_combout\ & ((\used_counter[1][7]~regout\))))) # (!\index~7_combout\ & (((\index_value~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \used_counter[3][7]~regout\,
	datab => \used_counter[1][7]~regout\,
	datac => \index~7_combout\,
	datad => \index_value~6_combout\,
	combout => \index_value~7_combout\);

-- Location: LCCOMB_X46_Y20_N18
\index_value~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \index_value~8_combout\ = (\LessThan4~18_combout\ & (!\used_counter[4][7]~regout\)) # (!\LessThan4~18_combout\ & ((!\index_value~7_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010001110111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \used_counter[4][7]~regout\,
	datab => \LessThan4~18_combout\,
	datad => \index_value~7_combout\,
	combout => \index_value~8_combout\);

-- Location: LCFF_X46_Y20_N19
\index_value[7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \index_value~8_combout\,
	ena => \index[2]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => index_value(7));

-- Location: LCCOMB_X47_Y21_N10
\used_counter~81\ : cycloneii_lcell_comb
-- Equation(s):
-- \used_counter~81_combout\ = ((timer(3) & (\used_counter[4][1]~73_combout\ & \b5~combout\))) # (!\used_counter[4][1]~76_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011001100110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => timer(3),
	datab => \used_counter[4][1]~76_combout\,
	datac => \used_counter[4][1]~73_combout\,
	datad => \b5~combout\,
	combout => \used_counter~81_combout\);

-- Location: LCFF_X47_Y21_N11
\used_counter[4][3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \used_counter~81_combout\,
	ena => \used_counter[4][0]~77_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \used_counter[4][3]~regout\);

-- Location: LCCOMB_X45_Y20_N24
\used_counter~26\ : cycloneii_lcell_comb
-- Equation(s):
-- \used_counter~26_combout\ = (\used_counter[0][1]~21_combout\) # ((\b1~combout\ & timer(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \b1~combout\,
	datac => timer(3),
	datad => \used_counter[0][1]~21_combout\,
	combout => \used_counter~26_combout\);

-- Location: LCFF_X45_Y20_N25
\used_counter[0][3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \used_counter~26_combout\,
	ena => \used_counter[0][0]~23_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \used_counter[0][3]~regout\);

-- Location: LCCOMB_X47_Y20_N12
\index_value~18\ : cycloneii_lcell_comb
-- Equation(s):
-- \index_value~18_combout\ = (\index~7_combout\ & (((!\index~0_combout\)))) # (!\index~7_combout\ & ((\index~0_combout\ & ((\used_counter[0][3]~regout\))) # (!\index~0_combout\ & (\used_counter[2][3]~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \used_counter[2][3]~regout\,
	datab => \used_counter[0][3]~regout\,
	datac => \index~7_combout\,
	datad => \index~0_combout\,
	combout => \index_value~18_combout\);

-- Location: LCCOMB_X47_Y20_N2
\index_value~19\ : cycloneii_lcell_comb
-- Equation(s):
-- \index_value~19_combout\ = (\index~7_combout\ & ((\index_value~18_combout\ & ((\used_counter[3][3]~regout\))) # (!\index_value~18_combout\ & (\used_counter[1][3]~regout\)))) # (!\index~7_combout\ & (((\index_value~18_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \used_counter[1][3]~regout\,
	datab => \used_counter[3][3]~regout\,
	datac => \index~7_combout\,
	datad => \index_value~18_combout\,
	combout => \index_value~19_combout\);

-- Location: LCCOMB_X47_Y20_N16
\index_value~20\ : cycloneii_lcell_comb
-- Equation(s):
-- \index_value~20_combout\ = (\LessThan4~18_combout\ & (!\used_counter[4][3]~regout\)) # (!\LessThan4~18_combout\ & ((!\index_value~19_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \used_counter[4][3]~regout\,
	datac => \LessThan4~18_combout\,
	datad => \index_value~19_combout\,
	combout => \index_value~20_combout\);

-- Location: LCFF_X47_Y20_N17
\index_value[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \index_value~20_combout\,
	ena => \index[2]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => index_value(3));

-- Location: LCCOMB_X46_Y19_N2
\LessThan3~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \LessThan3~1_cout\ = CARRY((\used_counter[3][0]~regout\ & index_value(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010001000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \used_counter[3][0]~regout\,
	datab => index_value(0),
	datad => VCC,
	cout => \LessThan3~1_cout\);

-- Location: LCCOMB_X46_Y19_N4
\LessThan3~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \LessThan3~3_cout\ = CARRY((\used_counter[3][1]~regout\ & (!index_value(1) & !\LessThan3~1_cout\)) # (!\used_counter[3][1]~regout\ & ((!\LessThan3~1_cout\) # (!index_value(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \used_counter[3][1]~regout\,
	datab => index_value(1),
	datad => VCC,
	cin => \LessThan3~1_cout\,
	cout => \LessThan3~3_cout\);

-- Location: LCCOMB_X46_Y19_N6
\LessThan3~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \LessThan3~5_cout\ = CARRY((\used_counter[3][2]~regout\ & ((index_value(2)) # (!\LessThan3~3_cout\))) # (!\used_counter[3][2]~regout\ & (index_value(2) & !\LessThan3~3_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \used_counter[3][2]~regout\,
	datab => index_value(2),
	datad => VCC,
	cin => \LessThan3~3_cout\,
	cout => \LessThan3~5_cout\);

-- Location: LCCOMB_X46_Y19_N8
\LessThan3~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \LessThan3~7_cout\ = CARRY((\used_counter[3][3]~regout\ & (!index_value(3) & !\LessThan3~5_cout\)) # (!\used_counter[3][3]~regout\ & ((!\LessThan3~5_cout\) # (!index_value(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \used_counter[3][3]~regout\,
	datab => index_value(3),
	datad => VCC,
	cin => \LessThan3~5_cout\,
	cout => \LessThan3~7_cout\);

-- Location: LCCOMB_X46_Y19_N10
\LessThan3~9\ : cycloneii_lcell_comb
-- Equation(s):
-- \LessThan3~9_cout\ = CARRY((index_value(4) & ((\used_counter[3][4]~regout\) # (!\LessThan3~7_cout\))) # (!index_value(4) & (\used_counter[3][4]~regout\ & !\LessThan3~7_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => index_value(4),
	datab => \used_counter[3][4]~regout\,
	datad => VCC,
	cin => \LessThan3~7_cout\,
	cout => \LessThan3~9_cout\);

-- Location: LCCOMB_X46_Y19_N12
\LessThan3~11\ : cycloneii_lcell_comb
-- Equation(s):
-- \LessThan3~11_cout\ = CARRY((index_value(5) & (!\used_counter[3][5]~regout\ & !\LessThan3~9_cout\)) # (!index_value(5) & ((!\LessThan3~9_cout\) # (!\used_counter[3][5]~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => index_value(5),
	datab => \used_counter[3][5]~regout\,
	datad => VCC,
	cin => \LessThan3~9_cout\,
	cout => \LessThan3~11_cout\);

-- Location: LCCOMB_X46_Y19_N14
\LessThan3~13\ : cycloneii_lcell_comb
-- Equation(s):
-- \LessThan3~13_cout\ = CARRY((index_value(6) & ((\used_counter[3][6]~regout\) # (!\LessThan3~11_cout\))) # (!index_value(6) & (\used_counter[3][6]~regout\ & !\LessThan3~11_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => index_value(6),
	datab => \used_counter[3][6]~regout\,
	datad => VCC,
	cin => \LessThan3~11_cout\,
	cout => \LessThan3~13_cout\);

-- Location: LCCOMB_X46_Y19_N16
\LessThan3~15\ : cycloneii_lcell_comb
-- Equation(s):
-- \LessThan3~15_cout\ = CARRY((\used_counter[3][7]~regout\ & (!index_value(7) & !\LessThan3~13_cout\)) # (!\used_counter[3][7]~regout\ & ((!\LessThan3~13_cout\) # (!index_value(7)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \used_counter[3][7]~regout\,
	datab => index_value(7),
	datad => VCC,
	cin => \LessThan3~13_cout\,
	cout => \LessThan3~15_cout\);

-- Location: LCCOMB_X46_Y19_N18
\LessThan3~17\ : cycloneii_lcell_comb
-- Equation(s):
-- \LessThan3~17_cout\ = CARRY((index_value(8) & ((\used_counter[3][8]~regout\) # (!\LessThan3~15_cout\))) # (!index_value(8) & (\used_counter[3][8]~regout\ & !\LessThan3~15_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => index_value(8),
	datab => \used_counter[3][8]~regout\,
	datad => VCC,
	cin => \LessThan3~15_cout\,
	cout => \LessThan3~17_cout\);

-- Location: LCCOMB_X46_Y19_N20
\LessThan3~18\ : cycloneii_lcell_comb
-- Equation(s):
-- \LessThan3~18_combout\ = (\used_counter[3][9]~regout\ & ((\LessThan3~17_cout\) # (index_value(9)))) # (!\used_counter[3][9]~regout\ & (\LessThan3~17_cout\ & index_value(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011000000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \used_counter[3][9]~regout\,
	datad => index_value(9),
	cin => \LessThan3~17_cout\,
	combout => \LessThan3~18_combout\);

-- Location: LCCOMB_X46_Y20_N24
\index~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \index~3_combout\ = (\LessThan4~18_combout\) # ((!\LessThan3~18_combout\ & ((\LessThan2~18_combout\) # (!\LessThan1~18_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100100011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LessThan2~18_combout\,
	datab => \LessThan3~18_combout\,
	datac => \LessThan1~18_combout\,
	datad => \LessThan4~18_combout\,
	combout => \index~3_combout\);

-- Location: LCFF_X46_Y20_N25
\index[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \index~3_combout\,
	ena => \index[2]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => index(0));

-- Location: LCCOMB_X46_Y20_N26
\used_counter[4][1]~75\ : cycloneii_lcell_comb
-- Equation(s):
-- \used_counter[4][1]~75_combout\ = (index(1)) # (!index(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => index(0),
	datad => index(1),
	combout => \used_counter[4][1]~75_combout\);

-- Location: LCCOMB_X46_Y20_N0
\used_counter[4][1]~76\ : cycloneii_lcell_comb
-- Equation(s):
-- \used_counter[4][1]~76_combout\ = (index(2)) # ((\used_counter[4][1]~75_combout\) # ((\WideNor4~2_combout\) # (!\always0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => index(2),
	datab => \used_counter[4][1]~75_combout\,
	datac => \WideNor4~2_combout\,
	datad => \always0~0_combout\,
	combout => \used_counter[4][1]~76_combout\);

-- Location: LCCOMB_X47_Y21_N18
\used_counter~87\ : cycloneii_lcell_comb
-- Equation(s):
-- \used_counter~87_combout\ = ((\used_counter[4][1]~73_combout\ & (timer(9) & \b5~combout\))) # (!\used_counter[4][1]~76_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \used_counter[4][1]~73_combout\,
	datab => timer(9),
	datac => \used_counter[4][1]~76_combout\,
	datad => \b5~combout\,
	combout => \used_counter~87_combout\);

-- Location: LCFF_X47_Y21_N19
\used_counter[4][9]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \used_counter~87_combout\,
	ena => \used_counter[4][0]~77_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \used_counter[4][9]~regout\);

-- Location: LCCOMB_X48_Y20_N30
\index_value~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \index_value~0_combout\ = (\index~0_combout\ & (((\used_counter[0][9]~regout\ & !\index~7_combout\)))) # (!\index~0_combout\ & ((\used_counter[2][9]~regout\) # ((\index~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \used_counter[2][9]~regout\,
	datab => \used_counter[0][9]~regout\,
	datac => \index~0_combout\,
	datad => \index~7_combout\,
	combout => \index_value~0_combout\);

-- Location: LCCOMB_X47_Y20_N10
\index_value~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \index_value~1_combout\ = (\index~7_combout\ & ((\index_value~0_combout\ & ((\used_counter[3][9]~regout\))) # (!\index_value~0_combout\ & (\used_counter[1][9]~regout\)))) # (!\index~7_combout\ & (((\index_value~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \used_counter[1][9]~regout\,
	datab => \used_counter[3][9]~regout\,
	datac => \index~7_combout\,
	datad => \index_value~0_combout\,
	combout => \index_value~1_combout\);

-- Location: LCCOMB_X47_Y20_N6
\index_value~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \index_value~2_combout\ = (\LessThan4~18_combout\ & (!\used_counter[4][9]~regout\)) # (!\LessThan4~18_combout\ & ((!\index_value~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \used_counter[4][9]~regout\,
	datac => \LessThan4~18_combout\,
	datad => \index_value~1_combout\,
	combout => \index_value~2_combout\);

-- Location: LCFF_X47_Y20_N7
\index_value[9]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \index_value~2_combout\,
	ena => \index[2]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => index_value(9));

-- Location: LCCOMB_X48_Y19_N24
\index_value~9\ : cycloneii_lcell_comb
-- Equation(s):
-- \index_value~9_combout\ = (\index~0_combout\ & ((\index~7_combout\ & ((\used_counter[1][6]~regout\))) # (!\index~7_combout\ & (\used_counter[0][6]~regout\)))) # (!\index~0_combout\ & (((\index~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \used_counter[0][6]~regout\,
	datab => \used_counter[1][6]~regout\,
	datac => \index~0_combout\,
	datad => \index~7_combout\,
	combout => \index_value~9_combout\);

-- Location: LCCOMB_X48_Y19_N30
\index_value~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \index_value~10_combout\ = (\index~0_combout\ & (((\index_value~9_combout\)))) # (!\index~0_combout\ & ((\index_value~9_combout\ & (\used_counter[3][6]~regout\)) # (!\index_value~9_combout\ & ((\used_counter[2][6]~regout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \index~0_combout\,
	datab => \used_counter[3][6]~regout\,
	datac => \index_value~9_combout\,
	datad => \used_counter[2][6]~regout\,
	combout => \index_value~10_combout\);

-- Location: LCCOMB_X48_Y19_N28
\index_value~11\ : cycloneii_lcell_comb
-- Equation(s):
-- \index_value~11_combout\ = (\LessThan4~18_combout\ & (!\used_counter[4][6]~regout\)) # (!\LessThan4~18_combout\ & ((!\index_value~10_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \LessThan4~18_combout\,
	datac => \used_counter[4][6]~regout\,
	datad => \index_value~10_combout\,
	combout => \index_value~11_combout\);

-- Location: LCFF_X48_Y19_N29
\index_value[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \index_value~11_combout\,
	ena => \index[2]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => index_value(6));

-- Location: LCCOMB_X48_Y19_N4
\LessThan4~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \LessThan4~1_cout\ = CARRY((\used_counter[4][0]~regout\ & index_value(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010001000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \used_counter[4][0]~regout\,
	datab => index_value(0),
	datad => VCC,
	cout => \LessThan4~1_cout\);

-- Location: LCCOMB_X48_Y19_N6
\LessThan4~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \LessThan4~3_cout\ = CARRY((\used_counter[4][1]~regout\ & (!index_value(1) & !\LessThan4~1_cout\)) # (!\used_counter[4][1]~regout\ & ((!\LessThan4~1_cout\) # (!index_value(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \used_counter[4][1]~regout\,
	datab => index_value(1),
	datad => VCC,
	cin => \LessThan4~1_cout\,
	cout => \LessThan4~3_cout\);

-- Location: LCCOMB_X48_Y19_N8
\LessThan4~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \LessThan4~5_cout\ = CARRY((\used_counter[4][2]~regout\ & ((index_value(2)) # (!\LessThan4~3_cout\))) # (!\used_counter[4][2]~regout\ & (index_value(2) & !\LessThan4~3_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \used_counter[4][2]~regout\,
	datab => index_value(2),
	datad => VCC,
	cin => \LessThan4~3_cout\,
	cout => \LessThan4~5_cout\);

-- Location: LCCOMB_X48_Y19_N10
\LessThan4~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \LessThan4~7_cout\ = CARRY((\used_counter[4][3]~regout\ & (!index_value(3) & !\LessThan4~5_cout\)) # (!\used_counter[4][3]~regout\ & ((!\LessThan4~5_cout\) # (!index_value(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \used_counter[4][3]~regout\,
	datab => index_value(3),
	datad => VCC,
	cin => \LessThan4~5_cout\,
	cout => \LessThan4~7_cout\);

-- Location: LCCOMB_X48_Y19_N12
\LessThan4~9\ : cycloneii_lcell_comb
-- Equation(s):
-- \LessThan4~9_cout\ = CARRY((\used_counter[4][4]~regout\ & ((index_value(4)) # (!\LessThan4~7_cout\))) # (!\used_counter[4][4]~regout\ & (index_value(4) & !\LessThan4~7_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \used_counter[4][4]~regout\,
	datab => index_value(4),
	datad => VCC,
	cin => \LessThan4~7_cout\,
	cout => \LessThan4~9_cout\);

-- Location: LCCOMB_X48_Y19_N14
\LessThan4~11\ : cycloneii_lcell_comb
-- Equation(s):
-- \LessThan4~11_cout\ = CARRY((\used_counter[4][5]~regout\ & (!index_value(5) & !\LessThan4~9_cout\)) # (!\used_counter[4][5]~regout\ & ((!\LessThan4~9_cout\) # (!index_value(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \used_counter[4][5]~regout\,
	datab => index_value(5),
	datad => VCC,
	cin => \LessThan4~9_cout\,
	cout => \LessThan4~11_cout\);

-- Location: LCCOMB_X48_Y19_N16
\LessThan4~13\ : cycloneii_lcell_comb
-- Equation(s):
-- \LessThan4~13_cout\ = CARRY((\used_counter[4][6]~regout\ & ((index_value(6)) # (!\LessThan4~11_cout\))) # (!\used_counter[4][6]~regout\ & (index_value(6) & !\LessThan4~11_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \used_counter[4][6]~regout\,
	datab => index_value(6),
	datad => VCC,
	cin => \LessThan4~11_cout\,
	cout => \LessThan4~13_cout\);

-- Location: LCCOMB_X48_Y19_N18
\LessThan4~15\ : cycloneii_lcell_comb
-- Equation(s):
-- \LessThan4~15_cout\ = CARRY((index_value(7) & (!\used_counter[4][7]~regout\ & !\LessThan4~13_cout\)) # (!index_value(7) & ((!\LessThan4~13_cout\) # (!\used_counter[4][7]~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => index_value(7),
	datab => \used_counter[4][7]~regout\,
	datad => VCC,
	cin => \LessThan4~13_cout\,
	cout => \LessThan4~15_cout\);

-- Location: LCCOMB_X48_Y19_N20
\LessThan4~17\ : cycloneii_lcell_comb
-- Equation(s):
-- \LessThan4~17_cout\ = CARRY((\used_counter[4][8]~regout\ & ((index_value(8)) # (!\LessThan4~15_cout\))) # (!\used_counter[4][8]~regout\ & (index_value(8) & !\LessThan4~15_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \used_counter[4][8]~regout\,
	datab => index_value(8),
	datad => VCC,
	cin => \LessThan4~15_cout\,
	cout => \LessThan4~17_cout\);

-- Location: LCCOMB_X48_Y19_N22
\LessThan4~18\ : cycloneii_lcell_comb
-- Equation(s):
-- \LessThan4~18_combout\ = (index_value(9) & ((\LessThan4~17_cout\) # (\used_counter[4][9]~regout\))) # (!index_value(9) & (\LessThan4~17_cout\ & \used_counter[4][9]~regout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011000000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => index_value(9),
	datad => \used_counter[4][9]~regout\,
	cin => \LessThan4~17_cout\,
	combout => \LessThan4~18_combout\);

-- Location: LCCOMB_X47_Y21_N20
\used_counter~86\ : cycloneii_lcell_comb
-- Equation(s):
-- \used_counter~86_combout\ = ((\used_counter[4][1]~73_combout\ & (timer(8) & \b5~combout\))) # (!\used_counter[4][1]~76_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \used_counter[4][1]~73_combout\,
	datab => timer(8),
	datac => \used_counter[4][1]~76_combout\,
	datad => \b5~combout\,
	combout => \used_counter~86_combout\);

-- Location: LCFF_X47_Y21_N21
\used_counter[4][8]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \used_counter~86_combout\,
	ena => \used_counter[4][0]~77_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \used_counter[4][8]~regout\);

-- Location: LCCOMB_X45_Y20_N10
\used_counter~31\ : cycloneii_lcell_comb
-- Equation(s):
-- \used_counter~31_combout\ = (\used_counter[0][1]~21_combout\) # ((\b1~combout\ & timer(8)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \b1~combout\,
	datac => timer(8),
	datad => \used_counter[0][1]~21_combout\,
	combout => \used_counter~31_combout\);

-- Location: LCFF_X45_Y20_N11
\used_counter[0][8]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \used_counter~31_combout\,
	ena => \used_counter[0][0]~23_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \used_counter[0][8]~regout\);

-- Location: LCCOMB_X48_Y20_N0
\index_value~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \index_value~3_combout\ = (\index~0_combout\ & ((\index~7_combout\ & (\used_counter[1][8]~regout\)) # (!\index~7_combout\ & ((\used_counter[0][8]~regout\))))) # (!\index~0_combout\ & (((\index~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \used_counter[1][8]~regout\,
	datab => \used_counter[0][8]~regout\,
	datac => \index~0_combout\,
	datad => \index~7_combout\,
	combout => \index_value~3_combout\);

-- Location: LCCOMB_X48_Y20_N2
\index_value~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \index_value~4_combout\ = (\index~0_combout\ & (((\index_value~3_combout\)))) # (!\index~0_combout\ & ((\index_value~3_combout\ & (\used_counter[3][8]~regout\)) # (!\index_value~3_combout\ & ((\used_counter[2][8]~regout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \used_counter[3][8]~regout\,
	datab => \used_counter[2][8]~regout\,
	datac => \index~0_combout\,
	datad => \index_value~3_combout\,
	combout => \index_value~4_combout\);

-- Location: LCCOMB_X47_Y20_N24
\index_value~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \index_value~5_combout\ = (\LessThan4~18_combout\ & (!\used_counter[4][8]~regout\)) # (!\LessThan4~18_combout\ & ((!\index_value~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \LessThan4~18_combout\,
	datac => \used_counter[4][8]~regout\,
	datad => \index_value~4_combout\,
	combout => \index_value~5_combout\);

-- Location: LCFF_X47_Y20_N25
\index_value[8]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \index_value~5_combout\,
	ena => \index[2]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => index_value(8));

-- Location: LCCOMB_X45_Y20_N14
\used_counter~30\ : cycloneii_lcell_comb
-- Equation(s):
-- \used_counter~30_combout\ = (\used_counter[0][1]~21_combout\) # ((\b1~combout\ & timer(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \b1~combout\,
	datac => timer(7),
	datad => \used_counter[0][1]~21_combout\,
	combout => \used_counter~30_combout\);

-- Location: LCFF_X45_Y20_N15
\used_counter[0][7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \used_counter~30_combout\,
	ena => \used_counter[0][0]~23_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \used_counter[0][7]~regout\);

-- Location: LCCOMB_X45_Y20_N6
\used_counter~28\ : cycloneii_lcell_comb
-- Equation(s):
-- \used_counter~28_combout\ = (\used_counter[0][1]~21_combout\) # ((\b1~combout\ & timer(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \b1~combout\,
	datac => timer(5),
	datad => \used_counter[0][1]~21_combout\,
	combout => \used_counter~28_combout\);

-- Location: LCFF_X45_Y20_N7
\used_counter[0][5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \used_counter~28_combout\,
	ena => \used_counter[0][0]~23_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \used_counter[0][5]~regout\);

-- Location: LCCOMB_X48_Y20_N28
\used_counter~25\ : cycloneii_lcell_comb
-- Equation(s):
-- \used_counter~25_combout\ = (\used_counter[0][1]~21_combout\) # ((\b1~combout\ & timer(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b1~combout\,
	datac => timer(2),
	datad => \used_counter[0][1]~21_combout\,
	combout => \used_counter~25_combout\);

-- Location: LCFF_X48_Y20_N29
\used_counter[0][2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \used_counter~25_combout\,
	ena => \used_counter[0][0]~23_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \used_counter[0][2]~regout\);

-- Location: LCCOMB_X48_Y20_N4
\LessThan0~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \LessThan0~1_cout\ = CARRY((\used_counter[0][0]~regout\ & index_value(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010001000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \used_counter[0][0]~regout\,
	datab => index_value(0),
	datad => VCC,
	cout => \LessThan0~1_cout\);

-- Location: LCCOMB_X48_Y20_N6
\LessThan0~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \LessThan0~3_cout\ = CARRY((index_value(1) & (!\used_counter[0][1]~regout\ & !\LessThan0~1_cout\)) # (!index_value(1) & ((!\LessThan0~1_cout\) # (!\used_counter[0][1]~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => index_value(1),
	datab => \used_counter[0][1]~regout\,
	datad => VCC,
	cin => \LessThan0~1_cout\,
	cout => \LessThan0~3_cout\);

-- Location: LCCOMB_X48_Y20_N8
\LessThan0~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \LessThan0~5_cout\ = CARRY((index_value(2) & ((\used_counter[0][2]~regout\) # (!\LessThan0~3_cout\))) # (!index_value(2) & (\used_counter[0][2]~regout\ & !\LessThan0~3_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => index_value(2),
	datab => \used_counter[0][2]~regout\,
	datad => VCC,
	cin => \LessThan0~3_cout\,
	cout => \LessThan0~5_cout\);

-- Location: LCCOMB_X48_Y20_N10
\LessThan0~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \LessThan0~7_cout\ = CARRY((\used_counter[0][3]~regout\ & (!index_value(3) & !\LessThan0~5_cout\)) # (!\used_counter[0][3]~regout\ & ((!\LessThan0~5_cout\) # (!index_value(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \used_counter[0][3]~regout\,
	datab => index_value(3),
	datad => VCC,
	cin => \LessThan0~5_cout\,
	cout => \LessThan0~7_cout\);

-- Location: LCCOMB_X48_Y20_N12
\LessThan0~9\ : cycloneii_lcell_comb
-- Equation(s):
-- \LessThan0~9_cout\ = CARRY((index_value(4) & ((\used_counter[0][4]~regout\) # (!\LessThan0~7_cout\))) # (!index_value(4) & (\used_counter[0][4]~regout\ & !\LessThan0~7_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => index_value(4),
	datab => \used_counter[0][4]~regout\,
	datad => VCC,
	cin => \LessThan0~7_cout\,
	cout => \LessThan0~9_cout\);

-- Location: LCCOMB_X48_Y20_N14
\LessThan0~11\ : cycloneii_lcell_comb
-- Equation(s):
-- \LessThan0~11_cout\ = CARRY((index_value(5) & (!\used_counter[0][5]~regout\ & !\LessThan0~9_cout\)) # (!index_value(5) & ((!\LessThan0~9_cout\) # (!\used_counter[0][5]~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => index_value(5),
	datab => \used_counter[0][5]~regout\,
	datad => VCC,
	cin => \LessThan0~9_cout\,
	cout => \LessThan0~11_cout\);

-- Location: LCCOMB_X48_Y20_N16
\LessThan0~13\ : cycloneii_lcell_comb
-- Equation(s):
-- \LessThan0~13_cout\ = CARRY((\used_counter[0][6]~regout\ & ((index_value(6)) # (!\LessThan0~11_cout\))) # (!\used_counter[0][6]~regout\ & (index_value(6) & !\LessThan0~11_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \used_counter[0][6]~regout\,
	datab => index_value(6),
	datad => VCC,
	cin => \LessThan0~11_cout\,
	cout => \LessThan0~13_cout\);

-- Location: LCCOMB_X48_Y20_N18
\LessThan0~15\ : cycloneii_lcell_comb
-- Equation(s):
-- \LessThan0~15_cout\ = CARRY((index_value(7) & (!\used_counter[0][7]~regout\ & !\LessThan0~13_cout\)) # (!index_value(7) & ((!\LessThan0~13_cout\) # (!\used_counter[0][7]~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => index_value(7),
	datab => \used_counter[0][7]~regout\,
	datad => VCC,
	cin => \LessThan0~13_cout\,
	cout => \LessThan0~15_cout\);

-- Location: LCCOMB_X48_Y20_N20
\LessThan0~17\ : cycloneii_lcell_comb
-- Equation(s):
-- \LessThan0~17_cout\ = CARRY((\used_counter[0][8]~regout\ & ((index_value(8)) # (!\LessThan0~15_cout\))) # (!\used_counter[0][8]~regout\ & (index_value(8) & !\LessThan0~15_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \used_counter[0][8]~regout\,
	datab => index_value(8),
	datad => VCC,
	cin => \LessThan0~15_cout\,
	cout => \LessThan0~17_cout\);

-- Location: LCCOMB_X48_Y20_N22
\LessThan0~18\ : cycloneii_lcell_comb
-- Equation(s):
-- \LessThan0~18_combout\ = (index_value(9) & ((\LessThan0~17_cout\) # (\used_counter[0][9]~regout\))) # (!index_value(9) & (\LessThan0~17_cout\ & \used_counter[0][9]~regout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101010100000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => index_value(9),
	datad => \used_counter[0][9]~regout\,
	cin => \LessThan0~17_cout\,
	combout => \LessThan0~18_combout\);

-- Location: LCCOMB_X47_Y20_N20
\index[1]~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \index[1]~1_combout\ = (!\LessThan0~18_combout\ & (!\LessThan4~18_combout\ & !\LessThan1~18_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \LessThan0~18_combout\,
	datac => \LessThan4~18_combout\,
	datad => \LessThan1~18_combout\,
	combout => \index[1]~1_combout\);

-- Location: LCCOMB_X47_Y19_N20
\index[1]~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \index[1]~4_combout\ = (!\LessThan4~18_combout\ & ((\LessThan2~18_combout\) # (\LessThan3~18_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \LessThan2~18_combout\,
	datac => \LessThan3~18_combout\,
	datad => \LessThan4~18_combout\,
	combout => \index[1]~4_combout\);

-- Location: LCCOMB_X47_Y20_N8
\index[1]~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \index[1]~5_combout\ = (\index[1]~4_combout\) # ((index(1) & \index[1]~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => index(1),
	datac => \index[1]~1_combout\,
	datad => \index[1]~4_combout\,
	combout => \index[1]~5_combout\);

-- Location: LCCOMB_X47_Y20_N4
\index[1]~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \index[1]~6_combout\ = (\always0~1_combout\ & ((\Equal0~10_combout\ & (\index[1]~5_combout\)) # (!\Equal0~10_combout\ & ((index(1)))))) # (!\always0~1_combout\ & (((index(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \always0~1_combout\,
	datab => \index[1]~5_combout\,
	datac => index(1),
	datad => \Equal0~10_combout\,
	combout => \index[1]~6_combout\);

-- Location: LCFF_X47_Y20_N5
\index[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \index[1]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => index(1));

-- Location: LCCOMB_X46_Y20_N16
\used_counter[0][1]~20\ : cycloneii_lcell_comb
-- Equation(s):
-- \used_counter[0][1]~20_combout\ = (index(0) & !index(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => index(0),
	datad => index(1),
	combout => \used_counter[0][1]~20_combout\);

-- Location: LCCOMB_X46_Y20_N30
\used_counter[0][1]~21\ : cycloneii_lcell_comb
-- Equation(s):
-- \used_counter[0][1]~21_combout\ = (index(2) & (\used_counter[0][1]~20_combout\ & (!\WideNor4~2_combout\ & \always0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => index(2),
	datab => \used_counter[0][1]~20_combout\,
	datac => \WideNor4~2_combout\,
	datad => \always0~0_combout\,
	combout => \used_counter[0][1]~21_combout\);

-- Location: LCCOMB_X45_Y20_N28
\used_counter~32\ : cycloneii_lcell_comb
-- Equation(s):
-- \used_counter~32_combout\ = (\used_counter[0][1]~21_combout\) # ((\b1~combout\ & timer(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \b1~combout\,
	datac => timer(9),
	datad => \used_counter[0][1]~21_combout\,
	combout => \used_counter~32_combout\);

-- Location: LCFF_X45_Y20_N29
\used_counter[0][9]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \used_counter~32_combout\,
	ena => \used_counter[0][0]~23_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \used_counter[0][9]~regout\);

-- Location: LCCOMB_X45_Y20_N4
\used_counter~29\ : cycloneii_lcell_comb
-- Equation(s):
-- \used_counter~29_combout\ = (\used_counter[0][1]~21_combout\) # ((\b1~combout\ & timer(6)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \b1~combout\,
	datac => timer(6),
	datad => \used_counter[0][1]~21_combout\,
	combout => \used_counter~29_combout\);

-- Location: LCFF_X45_Y20_N5
\used_counter[0][6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \used_counter~29_combout\,
	ena => \used_counter[0][0]~23_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \used_counter[0][6]~regout\);

-- Location: LCCOMB_X45_Y20_N20
\WideNor0~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \WideNor0~1_combout\ = (\used_counter[0][4]~regout\) # ((\used_counter[0][6]~regout\) # ((\used_counter[0][7]~regout\) # (\used_counter[0][5]~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \used_counter[0][4]~regout\,
	datab => \used_counter[0][6]~regout\,
	datac => \used_counter[0][7]~regout\,
	datad => \used_counter[0][5]~regout\,
	combout => \WideNor0~1_combout\);

-- Location: LCCOMB_X45_Y20_N18
\WideNor0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \WideNor0~0_combout\ = (\used_counter[0][3]~regout\) # ((\used_counter[0][1]~regout\) # ((\used_counter[0][2]~regout\) # (\used_counter[0][0]~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \used_counter[0][3]~regout\,
	datab => \used_counter[0][1]~regout\,
	datac => \used_counter[0][2]~regout\,
	datad => \used_counter[0][0]~regout\,
	combout => \WideNor0~0_combout\);

-- Location: LCCOMB_X45_Y20_N30
\WideNor0~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \WideNor0~2_combout\ = (!\used_counter[0][8]~regout\ & (!\used_counter[0][9]~regout\ & (!\WideNor0~1_combout\ & !\WideNor0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \used_counter[0][8]~regout\,
	datab => \used_counter[0][9]~regout\,
	datac => \WideNor0~1_combout\,
	datad => \WideNor0~0_combout\,
	combout => \WideNor0~2_combout\);

-- Location: LCFF_X46_Y20_N17
\l1~reg0\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \WideNor0~2_combout\,
	sload => VCC,
	ena => \Equal0~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \l1~reg0_regout\);

-- Location: LCFF_X46_Y20_N23
\l2~reg0\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \WideNor1~2_combout\,
	ena => \Equal0~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \l2~reg0_regout\);

-- Location: LCFF_X46_Y20_N5
\l3~reg0\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \WideNor2~2_combout\,
	ena => \Equal0~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \l3~reg0_regout\);

-- Location: LCFF_X46_Y20_N11
\l4~reg0\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \WideNor3~2_combout\,
	ena => \Equal0~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \l4~reg0_regout\);

-- Location: LCFF_X48_Y18_N17
\l5~reg0\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \WideNor4~2_combout\,
	sload => VCC,
	ena => \Equal0~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \l5~reg0_regout\);

-- Location: PIN_B18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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

-- Location: PIN_A18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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

-- Location: PIN_N23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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

-- Location: PIN_Y16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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

-- Location: PIN_P24,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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


