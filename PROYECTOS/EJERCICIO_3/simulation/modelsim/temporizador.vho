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

-- DATE "09/23/2026 06:30:40"

-- 
-- Device: Altera EP3C16F484C6 Package FBGA484
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

ENTITY 	temporizador IS
    PORT (
	reloj_50mhz : IN std_logic;
	boton : IN std_logic;
	HEX0 : OUT std_logic_vector(6 DOWNTO 0);
	HEX1 : OUT std_logic_vector(6 DOWNTO 0);
	HEX2 : OUT std_logic_vector(6 DOWNTO 0);
	HEX3 : OUT std_logic_vector(6 DOWNTO 0)
	);
END temporizador;

-- Design Ports Information
-- HEX0[0]	=>  Location: PIN_E11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX0[1]	=>  Location: PIN_F11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX0[2]	=>  Location: PIN_H12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX0[3]	=>  Location: PIN_H13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX0[4]	=>  Location: PIN_G12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX0[5]	=>  Location: PIN_F12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX0[6]	=>  Location: PIN_F13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX1[0]	=>  Location: PIN_A13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX1[1]	=>  Location: PIN_B13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX1[2]	=>  Location: PIN_C13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX1[3]	=>  Location: PIN_A14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX1[4]	=>  Location: PIN_B14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX1[5]	=>  Location: PIN_E14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX1[6]	=>  Location: PIN_A15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX2[0]	=>  Location: PIN_D15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX2[1]	=>  Location: PIN_A16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX2[2]	=>  Location: PIN_B16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX2[3]	=>  Location: PIN_E15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX2[4]	=>  Location: PIN_A17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX2[5]	=>  Location: PIN_B17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX2[6]	=>  Location: PIN_F14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX3[0]	=>  Location: PIN_B18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX3[1]	=>  Location: PIN_F15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX3[2]	=>  Location: PIN_A19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX3[3]	=>  Location: PIN_B19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX3[4]	=>  Location: PIN_C19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX3[5]	=>  Location: PIN_D19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX3[6]	=>  Location: PIN_G15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- reloj_50mhz	=>  Location: PIN_A12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- boton	=>  Location: PIN_A18,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF temporizador IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_reloj_50mhz : std_logic;
SIGNAL ww_boton : std_logic;
SIGNAL ww_HEX0 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_HEX1 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_HEX2 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_HEX3 : std_logic_vector(6 DOWNTO 0);
SIGNAL \INST_DIVISOR|reloj_interno~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \reloj_50mhz~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \HEX0[0]~output_o\ : std_logic;
SIGNAL \HEX0[1]~output_o\ : std_logic;
SIGNAL \HEX0[2]~output_o\ : std_logic;
SIGNAL \HEX0[3]~output_o\ : std_logic;
SIGNAL \HEX0[4]~output_o\ : std_logic;
SIGNAL \HEX0[5]~output_o\ : std_logic;
SIGNAL \HEX0[6]~output_o\ : std_logic;
SIGNAL \HEX1[0]~output_o\ : std_logic;
SIGNAL \HEX1[1]~output_o\ : std_logic;
SIGNAL \HEX1[2]~output_o\ : std_logic;
SIGNAL \HEX1[3]~output_o\ : std_logic;
SIGNAL \HEX1[4]~output_o\ : std_logic;
SIGNAL \HEX1[5]~output_o\ : std_logic;
SIGNAL \HEX1[6]~output_o\ : std_logic;
SIGNAL \HEX2[0]~output_o\ : std_logic;
SIGNAL \HEX2[1]~output_o\ : std_logic;
SIGNAL \HEX2[2]~output_o\ : std_logic;
SIGNAL \HEX2[3]~output_o\ : std_logic;
SIGNAL \HEX2[4]~output_o\ : std_logic;
SIGNAL \HEX2[5]~output_o\ : std_logic;
SIGNAL \HEX2[6]~output_o\ : std_logic;
SIGNAL \HEX3[0]~output_o\ : std_logic;
SIGNAL \HEX3[1]~output_o\ : std_logic;
SIGNAL \HEX3[2]~output_o\ : std_logic;
SIGNAL \HEX3[3]~output_o\ : std_logic;
SIGNAL \HEX3[4]~output_o\ : std_logic;
SIGNAL \HEX3[5]~output_o\ : std_logic;
SIGNAL \HEX3[6]~output_o\ : std_logic;
SIGNAL \reloj_50mhz~input_o\ : std_logic;
SIGNAL \reloj_50mhz~inputclkctrl_outclk\ : std_logic;
SIGNAL \boton~input_o\ : std_logic;
SIGNAL \INST_BOTON|contador_antirrebote[0]~20_combout\ : std_logic;
SIGNAL \INST_BOTON|contador_antirrebote[15]~34_combout\ : std_logic;
SIGNAL \INST_BOTON|contador_antirrebote[0]~21\ : std_logic;
SIGNAL \INST_BOTON|contador_antirrebote[1]~22_combout\ : std_logic;
SIGNAL \INST_BOTON|contador_antirrebote[1]~23\ : std_logic;
SIGNAL \INST_BOTON|contador_antirrebote[2]~24_combout\ : std_logic;
SIGNAL \INST_BOTON|contador_antirrebote[2]~25\ : std_logic;
SIGNAL \INST_BOTON|contador_antirrebote[3]~26_combout\ : std_logic;
SIGNAL \INST_BOTON|contador_antirrebote[3]~27\ : std_logic;
SIGNAL \INST_BOTON|contador_antirrebote[4]~28_combout\ : std_logic;
SIGNAL \INST_BOTON|contador_antirrebote[4]~29\ : std_logic;
SIGNAL \INST_BOTON|contador_antirrebote[5]~30_combout\ : std_logic;
SIGNAL \INST_BOTON|contador_antirrebote[5]~31\ : std_logic;
SIGNAL \INST_BOTON|contador_antirrebote[6]~32_combout\ : std_logic;
SIGNAL \INST_BOTON|contador_antirrebote[6]~33\ : std_logic;
SIGNAL \INST_BOTON|contador_antirrebote[7]~35_combout\ : std_logic;
SIGNAL \INST_BOTON|contador_antirrebote[7]~36\ : std_logic;
SIGNAL \INST_BOTON|contador_antirrebote[8]~37_combout\ : std_logic;
SIGNAL \INST_BOTON|contador_antirrebote[8]~38\ : std_logic;
SIGNAL \INST_BOTON|contador_antirrebote[9]~39_combout\ : std_logic;
SIGNAL \INST_BOTON|contador_antirrebote[9]~40\ : std_logic;
SIGNAL \INST_BOTON|contador_antirrebote[10]~41_combout\ : std_logic;
SIGNAL \INST_BOTON|contador_antirrebote[10]~42\ : std_logic;
SIGNAL \INST_BOTON|contador_antirrebote[11]~43_combout\ : std_logic;
SIGNAL \INST_BOTON|contador_antirrebote[11]~44\ : std_logic;
SIGNAL \INST_BOTON|contador_antirrebote[12]~45_combout\ : std_logic;
SIGNAL \INST_BOTON|contador_antirrebote[12]~46\ : std_logic;
SIGNAL \INST_BOTON|contador_antirrebote[13]~47_combout\ : std_logic;
SIGNAL \INST_BOTON|contador_antirrebote[13]~48\ : std_logic;
SIGNAL \INST_BOTON|contador_antirrebote[14]~49_combout\ : std_logic;
SIGNAL \INST_BOTON|contador_antirrebote[14]~50\ : std_logic;
SIGNAL \INST_BOTON|contador_antirrebote[15]~51_combout\ : std_logic;
SIGNAL \INST_BOTON|contador_antirrebote[15]~52\ : std_logic;
SIGNAL \INST_BOTON|contador_antirrebote[16]~53_combout\ : std_logic;
SIGNAL \INST_BOTON|contador_antirrebote[16]~54\ : std_logic;
SIGNAL \INST_BOTON|contador_antirrebote[17]~55_combout\ : std_logic;
SIGNAL \INST_BOTON|contador_antirrebote[17]~56\ : std_logic;
SIGNAL \INST_BOTON|contador_antirrebote[18]~57_combout\ : std_logic;
SIGNAL \INST_BOTON|contador_antirrebote[18]~58\ : std_logic;
SIGNAL \INST_BOTON|contador_antirrebote[19]~59_combout\ : std_logic;
SIGNAL \INST_BOTON|LessThan0~1_combout\ : std_logic;
SIGNAL \INST_BOTON|LessThan0~0_combout\ : std_logic;
SIGNAL \INST_BOTON|LessThan0~2_combout\ : std_logic;
SIGNAL \INST_BOTON|LessThan0~3_combout\ : std_logic;
SIGNAL \INST_BOTON|LessThan0~4_combout\ : std_logic;
SIGNAL \INST_BOTON|boton_estable~0_combout\ : std_logic;
SIGNAL \INST_BOTON|boton_estable~feeder_combout\ : std_logic;
SIGNAL \INST_BOTON|boton_estable~q\ : std_logic;
SIGNAL \INST_BOTON|boton_anterior~q\ : std_logic;
SIGNAL \INST_BOTON|estado_marcha~0_combout\ : std_logic;
SIGNAL \INST_BOTON|pulsacion_larga~1_combout\ : std_logic;
SIGNAL \INST_BOTON|contador_duracion[0]~27_combout\ : std_logic;
SIGNAL \INST_BOTON|contador_duracion[25]~80\ : std_logic;
SIGNAL \INST_BOTON|contador_duracion[26]~81_combout\ : std_logic;
SIGNAL \INST_BOTON|contador_duracion[26]~63_combout\ : std_logic;
SIGNAL \INST_BOTON|LessThan2~2_combout\ : std_logic;
SIGNAL \INST_BOTON|LessThan2~3_combout\ : std_logic;
SIGNAL \INST_BOTON|LessThan2~4_combout\ : std_logic;
SIGNAL \INST_BOTON|LessThan2~5_combout\ : std_logic;
SIGNAL \INST_BOTON|LessThan2~0_combout\ : std_logic;
SIGNAL \INST_BOTON|LessThan2~1_combout\ : std_logic;
SIGNAL \INST_BOTON|LessThan2~6_combout\ : std_logic;
SIGNAL \INST_BOTON|contador_duracion[26]~64_combout\ : std_logic;
SIGNAL \INST_BOTON|contador_duracion[0]~28\ : std_logic;
SIGNAL \INST_BOTON|contador_duracion[1]~29_combout\ : std_logic;
SIGNAL \INST_BOTON|contador_duracion[1]~30\ : std_logic;
SIGNAL \INST_BOTON|contador_duracion[2]~31_combout\ : std_logic;
SIGNAL \INST_BOTON|contador_duracion[2]~32\ : std_logic;
SIGNAL \INST_BOTON|contador_duracion[3]~33_combout\ : std_logic;
SIGNAL \INST_BOTON|contador_duracion[3]~34\ : std_logic;
SIGNAL \INST_BOTON|contador_duracion[4]~35_combout\ : std_logic;
SIGNAL \INST_BOTON|contador_duracion[4]~36\ : std_logic;
SIGNAL \INST_BOTON|contador_duracion[5]~37_combout\ : std_logic;
SIGNAL \INST_BOTON|contador_duracion[5]~38\ : std_logic;
SIGNAL \INST_BOTON|contador_duracion[6]~39_combout\ : std_logic;
SIGNAL \INST_BOTON|contador_duracion[6]~40\ : std_logic;
SIGNAL \INST_BOTON|contador_duracion[7]~41_combout\ : std_logic;
SIGNAL \INST_BOTON|contador_duracion[7]~42\ : std_logic;
SIGNAL \INST_BOTON|contador_duracion[8]~43_combout\ : std_logic;
SIGNAL \INST_BOTON|contador_duracion[8]~feeder_combout\ : std_logic;
SIGNAL \INST_BOTON|contador_duracion[8]~44\ : std_logic;
SIGNAL \INST_BOTON|contador_duracion[9]~45_combout\ : std_logic;
SIGNAL \INST_BOTON|contador_duracion[9]~46\ : std_logic;
SIGNAL \INST_BOTON|contador_duracion[10]~47_combout\ : std_logic;
SIGNAL \INST_BOTON|contador_duracion[10]~48\ : std_logic;
SIGNAL \INST_BOTON|contador_duracion[11]~49_combout\ : std_logic;
SIGNAL \INST_BOTON|contador_duracion[11]~50\ : std_logic;
SIGNAL \INST_BOTON|contador_duracion[12]~51_combout\ : std_logic;
SIGNAL \INST_BOTON|contador_duracion[12]~52\ : std_logic;
SIGNAL \INST_BOTON|contador_duracion[13]~53_combout\ : std_logic;
SIGNAL \INST_BOTON|contador_duracion[13]~54\ : std_logic;
SIGNAL \INST_BOTON|contador_duracion[14]~55_combout\ : std_logic;
SIGNAL \INST_BOTON|contador_duracion[14]~56\ : std_logic;
SIGNAL \INST_BOTON|contador_duracion[15]~57_combout\ : std_logic;
SIGNAL \INST_BOTON|contador_duracion[15]~58\ : std_logic;
SIGNAL \INST_BOTON|contador_duracion[16]~59_combout\ : std_logic;
SIGNAL \INST_BOTON|contador_duracion[16]~60\ : std_logic;
SIGNAL \INST_BOTON|contador_duracion[17]~61_combout\ : std_logic;
SIGNAL \INST_BOTON|contador_duracion[17]~62\ : std_logic;
SIGNAL \INST_BOTON|contador_duracion[18]~65_combout\ : std_logic;
SIGNAL \INST_BOTON|contador_duracion[18]~66\ : std_logic;
SIGNAL \INST_BOTON|contador_duracion[19]~67_combout\ : std_logic;
SIGNAL \INST_BOTON|contador_duracion[19]~68\ : std_logic;
SIGNAL \INST_BOTON|contador_duracion[20]~69_combout\ : std_logic;
SIGNAL \INST_BOTON|contador_duracion[20]~70\ : std_logic;
SIGNAL \INST_BOTON|contador_duracion[21]~71_combout\ : std_logic;
SIGNAL \INST_BOTON|contador_duracion[21]~72\ : std_logic;
SIGNAL \INST_BOTON|contador_duracion[22]~73_combout\ : std_logic;
SIGNAL \INST_BOTON|contador_duracion[22]~74\ : std_logic;
SIGNAL \INST_BOTON|contador_duracion[23]~75_combout\ : std_logic;
SIGNAL \INST_BOTON|contador_duracion[23]~76\ : std_logic;
SIGNAL \INST_BOTON|contador_duracion[24]~77_combout\ : std_logic;
SIGNAL \INST_BOTON|contador_duracion[24]~78\ : std_logic;
SIGNAL \INST_BOTON|contador_duracion[25]~79_combout\ : std_logic;
SIGNAL \INST_BOTON|pulsacion_larga~0_combout\ : std_logic;
SIGNAL \INST_BOTON|pulsacion_larga~2_combout\ : std_logic;
SIGNAL \INST_BOTON|pulsacion_larga~q\ : std_logic;
SIGNAL \INST_BOTON|reinicio_temporizador~0_combout\ : std_logic;
SIGNAL \INST_BOTON|estado_marcha~1_combout\ : std_logic;
SIGNAL \INST_BOTON|estado_marcha~q\ : std_logic;
SIGNAL \INST_DIVISOR|Add0~0_combout\ : std_logic;
SIGNAL \INST_BOTON|reinicio_temporizador~feeder_combout\ : std_logic;
SIGNAL \INST_BOTON|reinicio_temporizador~q\ : std_logic;
SIGNAL \INST_DIVISOR|Add0~1\ : std_logic;
SIGNAL \INST_DIVISOR|Add0~2_combout\ : std_logic;
SIGNAL \INST_DIVISOR|Add0~3\ : std_logic;
SIGNAL \INST_DIVISOR|Add0~4_combout\ : std_logic;
SIGNAL \INST_DIVISOR|Add0~5\ : std_logic;
SIGNAL \INST_DIVISOR|Add0~6_combout\ : std_logic;
SIGNAL \INST_DIVISOR|Add0~7\ : std_logic;
SIGNAL \INST_DIVISOR|Add0~8_combout\ : std_logic;
SIGNAL \INST_DIVISOR|Add0~9\ : std_logic;
SIGNAL \INST_DIVISOR|Add0~10_combout\ : std_logic;
SIGNAL \INST_DIVISOR|Add0~11\ : std_logic;
SIGNAL \INST_DIVISOR|Add0~12_combout\ : std_logic;
SIGNAL \INST_DIVISOR|contador_ciclos~11_combout\ : std_logic;
SIGNAL \INST_DIVISOR|Add0~13\ : std_logic;
SIGNAL \INST_DIVISOR|Add0~14_combout\ : std_logic;
SIGNAL \INST_DIVISOR|Add0~15\ : std_logic;
SIGNAL \INST_DIVISOR|Add0~16_combout\ : std_logic;
SIGNAL \INST_DIVISOR|Add0~17\ : std_logic;
SIGNAL \INST_DIVISOR|Add0~18_combout\ : std_logic;
SIGNAL \INST_DIVISOR|Equal0~5_combout\ : std_logic;
SIGNAL \INST_DIVISOR|Equal0~7_combout\ : std_logic;
SIGNAL \INST_DIVISOR|Equal0~6_combout\ : std_logic;
SIGNAL \INST_DIVISOR|Add0~19\ : std_logic;
SIGNAL \INST_DIVISOR|Add0~20_combout\ : std_logic;
SIGNAL \INST_DIVISOR|Add0~21\ : std_logic;
SIGNAL \INST_DIVISOR|Add0~22_combout\ : std_logic;
SIGNAL \INST_DIVISOR|contador_ciclos~10_combout\ : std_logic;
SIGNAL \INST_DIVISOR|Add0~23\ : std_logic;
SIGNAL \INST_DIVISOR|Add0~24_combout\ : std_logic;
SIGNAL \INST_DIVISOR|contador_ciclos~9_combout\ : std_logic;
SIGNAL \INST_DIVISOR|Add0~25\ : std_logic;
SIGNAL \INST_DIVISOR|Add0~26_combout\ : std_logic;
SIGNAL \INST_DIVISOR|contador_ciclos~8_combout\ : std_logic;
SIGNAL \INST_DIVISOR|Add0~27\ : std_logic;
SIGNAL \INST_DIVISOR|Add0~28_combout\ : std_logic;
SIGNAL \INST_DIVISOR|contador_ciclos~7_combout\ : std_logic;
SIGNAL \INST_DIVISOR|Add0~29\ : std_logic;
SIGNAL \INST_DIVISOR|Add0~30_combout\ : std_logic;
SIGNAL \INST_DIVISOR|Add0~31\ : std_logic;
SIGNAL \INST_DIVISOR|Add0~32_combout\ : std_logic;
SIGNAL \INST_DIVISOR|contador_ciclos~6_combout\ : std_logic;
SIGNAL \INST_DIVISOR|Add0~33\ : std_logic;
SIGNAL \INST_DIVISOR|Add0~34_combout\ : std_logic;
SIGNAL \INST_DIVISOR|Add0~35\ : std_logic;
SIGNAL \INST_DIVISOR|Add0~36_combout\ : std_logic;
SIGNAL \INST_DIVISOR|contador_ciclos~5_combout\ : std_logic;
SIGNAL \INST_DIVISOR|Add0~37\ : std_logic;
SIGNAL \INST_DIVISOR|Add0~38_combout\ : std_logic;
SIGNAL \INST_DIVISOR|contador_ciclos~4_combout\ : std_logic;
SIGNAL \INST_DIVISOR|Add0~39\ : std_logic;
SIGNAL \INST_DIVISOR|Add0~40_combout\ : std_logic;
SIGNAL \INST_DIVISOR|contador_ciclos~3_combout\ : std_logic;
SIGNAL \INST_DIVISOR|Add0~41\ : std_logic;
SIGNAL \INST_DIVISOR|Add0~42_combout\ : std_logic;
SIGNAL \INST_DIVISOR|contador_ciclos~2_combout\ : std_logic;
SIGNAL \INST_DIVISOR|Add0~43\ : std_logic;
SIGNAL \INST_DIVISOR|Add0~44_combout\ : std_logic;
SIGNAL \INST_DIVISOR|contador_ciclos~1_combout\ : std_logic;
SIGNAL \INST_DIVISOR|Add0~45\ : std_logic;
SIGNAL \INST_DIVISOR|Add0~46_combout\ : std_logic;
SIGNAL \INST_DIVISOR|Add0~47\ : std_logic;
SIGNAL \INST_DIVISOR|Add0~48_combout\ : std_logic;
SIGNAL \INST_DIVISOR|contador_ciclos~0_combout\ : std_logic;
SIGNAL \INST_DIVISOR|Add0~49\ : std_logic;
SIGNAL \INST_DIVISOR|Add0~50_combout\ : std_logic;
SIGNAL \INST_DIVISOR|Equal0~0_combout\ : std_logic;
SIGNAL \INST_DIVISOR|Equal0~1_combout\ : std_logic;
SIGNAL \INST_DIVISOR|Equal0~2_combout\ : std_logic;
SIGNAL \INST_DIVISOR|Equal0~3_combout\ : std_logic;
SIGNAL \INST_DIVISOR|Equal0~4_combout\ : std_logic;
SIGNAL \INST_DIVISOR|Equal0~8_combout\ : std_logic;
SIGNAL \INST_DIVISOR|reloj_interno~0_combout\ : std_logic;
SIGNAL \INST_DIVISOR|reloj_interno~feeder_combout\ : std_logic;
SIGNAL \INST_DIVISOR|reloj_interno~q\ : std_logic;
SIGNAL \INST_DIVISOR|reloj_interno~clkctrl_outclk\ : std_logic;
SIGNAL \INST_SEGUNDOS|unidad[1]~6_combout\ : std_logic;
SIGNAL \INST_SEGUNDOS|Add1~0_combout\ : std_logic;
SIGNAL \INST_SEGUNDOS|unidad[2]~7_combout\ : std_logic;
SIGNAL \INST_SEGUNDOS|Add1~1_combout\ : std_logic;
SIGNAL \INST_SEGUNDOS|unidad[3]~5_combout\ : std_logic;
SIGNAL \fin_real~0_combout\ : std_logic;
SIGNAL \INST_SEGUNDOS|decena[0]~0_combout\ : std_logic;
SIGNAL \INST_SEGUNDOS|decena[0]~1_combout\ : std_logic;
SIGNAL \INST_SEGUNDOS|decena[1]~2_combout\ : std_logic;
SIGNAL \INST_SEGUNDOS|Add0~0_combout\ : std_logic;
SIGNAL \INST_SEGUNDOS|decena[2]~3_combout\ : std_logic;
SIGNAL \INST_SEGUNDOS|decena[3]~4_combout\ : std_logic;
SIGNAL \fin_real~1_combout\ : std_logic;
SIGNAL \fin_real~3_combout\ : std_logic;
SIGNAL \INST_MINUTOS|minutos[1]~9_combout\ : std_logic;
SIGNAL \INST_MINUTOS|minutos[1]~5_combout\ : std_logic;
SIGNAL \INST_MINUTOS|minutos[1]~7_combout\ : std_logic;
SIGNAL \INST_MINUTOS|minutos[3]~8_combout\ : std_logic;
SIGNAL \INST_MINUTOS|proc_minutos~0_combout\ : std_logic;
SIGNAL \INST_MINUTOS|minutos[0]~4_combout\ : std_logic;
SIGNAL \INST_MINUTOS|minutos[2]~10_combout\ : std_logic;
SIGNAL \INST_MINUTOS|minutos[2]~6_combout\ : std_logic;
SIGNAL \fin_real~2_combout\ : std_logic;
SIGNAL \habilitar_temporizador~0_combout\ : std_logic;
SIGNAL \INST_SEGUNDOS|unidad[0]~4_combout\ : std_logic;
SIGNAL \INST_DISP_SU|Mux6~0_combout\ : std_logic;
SIGNAL \INST_DISP_SU|Mux5~0_combout\ : std_logic;
SIGNAL \INST_DISP_SU|Mux4~0_combout\ : std_logic;
SIGNAL \INST_DISP_SU|Mux3~0_combout\ : std_logic;
SIGNAL \INST_DISP_SU|Mux2~0_combout\ : std_logic;
SIGNAL \INST_DISP_SU|Mux1~0_combout\ : std_logic;
SIGNAL \INST_DISP_SU|Mux0~0_combout\ : std_logic;
SIGNAL \INST_DISP_SD|Mux6~0_combout\ : std_logic;
SIGNAL \INST_DISP_SD|Mux5~0_combout\ : std_logic;
SIGNAL \INST_DISP_SD|Mux4~0_combout\ : std_logic;
SIGNAL \INST_DISP_SD|Mux3~0_combout\ : std_logic;
SIGNAL \INST_DISP_SD|Mux2~0_combout\ : std_logic;
SIGNAL \INST_DISP_SD|Mux1~0_combout\ : std_logic;
SIGNAL \INST_DISP_SD|Mux0~0_combout\ : std_logic;
SIGNAL \INST_DISP_MU|Mux6~0_combout\ : std_logic;
SIGNAL \INST_DISP_MU|Mux5~0_combout\ : std_logic;
SIGNAL \INST_DISP_MU|Mux4~0_combout\ : std_logic;
SIGNAL \INST_DISP_MU|Mux3~0_combout\ : std_logic;
SIGNAL \INST_DISP_MU|Mux2~0_combout\ : std_logic;
SIGNAL \INST_DISP_MU|Mux1~0_combout\ : std_logic;
SIGNAL \INST_DISP_MU|Mux0~0_combout\ : std_logic;
SIGNAL \INST_DIVISOR|contador_ciclos\ : std_logic_vector(25 DOWNTO 0);
SIGNAL \INST_BOTON|contador_duracion\ : std_logic_vector(26 DOWNTO 0);
SIGNAL \INST_BOTON|contador_antirrebote\ : std_logic_vector(19 DOWNTO 0);
SIGNAL \INST_SEGUNDOS|unidad\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \INST_SEGUNDOS|decena\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \INST_MINUTOS|minutos\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \INST_BOTON|ALT_INV_boton_estable~q\ : std_logic;
SIGNAL \INST_BOTON|ALT_INV_reinicio_temporizador~q\ : std_logic;
SIGNAL \INST_DISP_MU|ALT_INV_Mux0~0_combout\ : std_logic;
SIGNAL \INST_DISP_SD|ALT_INV_Mux0~0_combout\ : std_logic;
SIGNAL \INST_DISP_SU|ALT_INV_Mux0~0_combout\ : std_logic;
SIGNAL \INST_DIVISOR|ALT_INV_reloj_interno~clkctrl_outclk\ : std_logic;

BEGIN

ww_reloj_50mhz <= reloj_50mhz;
ww_boton <= boton;
HEX0 <= ww_HEX0;
HEX1 <= ww_HEX1;
HEX2 <= ww_HEX2;
HEX3 <= ww_HEX3;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\INST_DIVISOR|reloj_interno~clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \INST_DIVISOR|reloj_interno~q\);

\reloj_50mhz~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \reloj_50mhz~input_o\);
\INST_BOTON|ALT_INV_boton_estable~q\ <= NOT \INST_BOTON|boton_estable~q\;
\INST_BOTON|ALT_INV_reinicio_temporizador~q\ <= NOT \INST_BOTON|reinicio_temporizador~q\;
\INST_DISP_MU|ALT_INV_Mux0~0_combout\ <= NOT \INST_DISP_MU|Mux0~0_combout\;
\INST_DISP_SD|ALT_INV_Mux0~0_combout\ <= NOT \INST_DISP_SD|Mux0~0_combout\;
\INST_DISP_SU|ALT_INV_Mux0~0_combout\ <= NOT \INST_DISP_SU|Mux0~0_combout\;
\INST_DIVISOR|ALT_INV_reloj_interno~clkctrl_outclk\ <= NOT \INST_DIVISOR|reloj_interno~clkctrl_outclk\;

-- Location: IOOBUF_X21_Y29_N23
\HEX0[0]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \INST_DISP_SU|Mux6~0_combout\,
	devoe => ww_devoe,
	o => \HEX0[0]~output_o\);

-- Location: IOOBUF_X21_Y29_N30
\HEX0[1]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \INST_DISP_SU|Mux5~0_combout\,
	devoe => ww_devoe,
	o => \HEX0[1]~output_o\);

-- Location: IOOBUF_X26_Y29_N2
\HEX0[2]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \INST_DISP_SU|Mux4~0_combout\,
	devoe => ww_devoe,
	o => \HEX0[2]~output_o\);

-- Location: IOOBUF_X28_Y29_N30
\HEX0[3]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \INST_DISP_SU|Mux3~0_combout\,
	devoe => ww_devoe,
	o => \HEX0[3]~output_o\);

-- Location: IOOBUF_X26_Y29_N9
\HEX0[4]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \INST_DISP_SU|Mux2~0_combout\,
	devoe => ww_devoe,
	o => \HEX0[4]~output_o\);

-- Location: IOOBUF_X28_Y29_N23
\HEX0[5]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \INST_DISP_SU|Mux1~0_combout\,
	devoe => ww_devoe,
	o => \HEX0[5]~output_o\);

-- Location: IOOBUF_X26_Y29_N16
\HEX0[6]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \INST_DISP_SU|ALT_INV_Mux0~0_combout\,
	devoe => ww_devoe,
	o => \HEX0[6]~output_o\);

-- Location: IOOBUF_X21_Y29_N2
\HEX1[0]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \INST_DISP_SD|Mux6~0_combout\,
	devoe => ww_devoe,
	o => \HEX1[0]~output_o\);

-- Location: IOOBUF_X21_Y29_N9
\HEX1[1]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \INST_DISP_SD|Mux5~0_combout\,
	devoe => ww_devoe,
	o => \HEX1[1]~output_o\);

-- Location: IOOBUF_X23_Y29_N2
\HEX1[2]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \INST_DISP_SD|Mux4~0_combout\,
	devoe => ww_devoe,
	o => \HEX1[2]~output_o\);

-- Location: IOOBUF_X23_Y29_N23
\HEX1[3]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \INST_DISP_SD|Mux3~0_combout\,
	devoe => ww_devoe,
	o => \HEX1[3]~output_o\);

-- Location: IOOBUF_X23_Y29_N30
\HEX1[4]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \INST_DISP_SD|Mux2~0_combout\,
	devoe => ww_devoe,
	o => \HEX1[4]~output_o\);

-- Location: IOOBUF_X28_Y29_N16
\HEX1[5]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \INST_DISP_SD|Mux1~0_combout\,
	devoe => ww_devoe,
	o => \HEX1[5]~output_o\);

-- Location: IOOBUF_X26_Y29_N23
\HEX1[6]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \INST_DISP_SD|ALT_INV_Mux0~0_combout\,
	devoe => ww_devoe,
	o => \HEX1[6]~output_o\);

-- Location: IOOBUF_X32_Y29_N30
\HEX2[0]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \INST_DISP_MU|Mux6~0_combout\,
	devoe => ww_devoe,
	o => \HEX2[0]~output_o\);

-- Location: IOOBUF_X30_Y29_N30
\HEX2[1]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \INST_DISP_MU|Mux5~0_combout\,
	devoe => ww_devoe,
	o => \HEX2[1]~output_o\);

-- Location: IOOBUF_X28_Y29_N2
\HEX2[2]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \INST_DISP_MU|Mux4~0_combout\,
	devoe => ww_devoe,
	o => \HEX2[2]~output_o\);

-- Location: IOOBUF_X30_Y29_N2
\HEX2[3]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \INST_DISP_MU|Mux3~0_combout\,
	devoe => ww_devoe,
	o => \HEX2[3]~output_o\);

-- Location: IOOBUF_X30_Y29_N16
\HEX2[4]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \INST_DISP_MU|Mux2~0_combout\,
	devoe => ww_devoe,
	o => \HEX2[4]~output_o\);

-- Location: IOOBUF_X30_Y29_N23
\HEX2[5]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \INST_DISP_MU|Mux1~0_combout\,
	devoe => ww_devoe,
	o => \HEX2[5]~output_o\);

-- Location: IOOBUF_X37_Y29_N2
\HEX2[6]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \INST_DISP_MU|ALT_INV_Mux0~0_combout\,
	devoe => ww_devoe,
	o => \HEX2[6]~output_o\);

-- Location: IOOBUF_X32_Y29_N23
\HEX3[0]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \HEX3[0]~output_o\);

-- Location: IOOBUF_X39_Y29_N16
\HEX3[1]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \HEX3[1]~output_o\);

-- Location: IOOBUF_X32_Y29_N9
\HEX3[2]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \HEX3[2]~output_o\);

-- Location: IOOBUF_X32_Y29_N2
\HEX3[3]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \HEX3[3]~output_o\);

-- Location: IOOBUF_X37_Y29_N23
\HEX3[4]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \HEX3[4]~output_o\);

-- Location: IOOBUF_X37_Y29_N30
\HEX3[5]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \HEX3[5]~output_o\);

-- Location: IOOBUF_X39_Y29_N30
\HEX3[6]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \HEX3[6]~output_o\);

-- Location: IOIBUF_X19_Y29_N1
\reloj_50mhz~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_reloj_50mhz,
	o => \reloj_50mhz~input_o\);

-- Location: CLKCTRL_G14
\reloj_50mhz~inputclkctrl\ : cycloneiii_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \reloj_50mhz~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \reloj_50mhz~inputclkctrl_outclk\);

-- Location: IOIBUF_X32_Y29_N15
\boton~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_boton,
	o => \boton~input_o\);

-- Location: LCCOMB_X33_Y24_N12
\INST_BOTON|contador_antirrebote[0]~20\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST_BOTON|contador_antirrebote[0]~20_combout\ = \INST_BOTON|contador_antirrebote\(0) $ (VCC)
-- \INST_BOTON|contador_antirrebote[0]~21\ = CARRY(\INST_BOTON|contador_antirrebote\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INST_BOTON|contador_antirrebote\(0),
	datad => VCC,
	combout => \INST_BOTON|contador_antirrebote[0]~20_combout\,
	cout => \INST_BOTON|contador_antirrebote[0]~21\);

-- Location: LCCOMB_X33_Y23_N22
\INST_BOTON|contador_antirrebote[15]~34\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST_BOTON|contador_antirrebote[15]~34_combout\ = (\INST_BOTON|boton_estable~q\ $ (\boton~input_o\)) # (!\INST_BOTON|LessThan0~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111110101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INST_BOTON|boton_estable~q\,
	datac => \INST_BOTON|LessThan0~4_combout\,
	datad => \boton~input_o\,
	combout => \INST_BOTON|contador_antirrebote[15]~34_combout\);

-- Location: FF_X33_Y24_N13
\INST_BOTON|contador_antirrebote[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \reloj_50mhz~inputclkctrl_outclk\,
	d => \INST_BOTON|contador_antirrebote[0]~20_combout\,
	sclr => \INST_BOTON|contador_antirrebote[15]~34_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST_BOTON|contador_antirrebote\(0));

-- Location: LCCOMB_X33_Y24_N14
\INST_BOTON|contador_antirrebote[1]~22\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST_BOTON|contador_antirrebote[1]~22_combout\ = (\INST_BOTON|contador_antirrebote\(1) & (!\INST_BOTON|contador_antirrebote[0]~21\)) # (!\INST_BOTON|contador_antirrebote\(1) & ((\INST_BOTON|contador_antirrebote[0]~21\) # (GND)))
-- \INST_BOTON|contador_antirrebote[1]~23\ = CARRY((!\INST_BOTON|contador_antirrebote[0]~21\) # (!\INST_BOTON|contador_antirrebote\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \INST_BOTON|contador_antirrebote\(1),
	datad => VCC,
	cin => \INST_BOTON|contador_antirrebote[0]~21\,
	combout => \INST_BOTON|contador_antirrebote[1]~22_combout\,
	cout => \INST_BOTON|contador_antirrebote[1]~23\);

-- Location: FF_X33_Y24_N15
\INST_BOTON|contador_antirrebote[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \reloj_50mhz~inputclkctrl_outclk\,
	d => \INST_BOTON|contador_antirrebote[1]~22_combout\,
	sclr => \INST_BOTON|contador_antirrebote[15]~34_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST_BOTON|contador_antirrebote\(1));

-- Location: LCCOMB_X33_Y24_N16
\INST_BOTON|contador_antirrebote[2]~24\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST_BOTON|contador_antirrebote[2]~24_combout\ = (\INST_BOTON|contador_antirrebote\(2) & (\INST_BOTON|contador_antirrebote[1]~23\ $ (GND))) # (!\INST_BOTON|contador_antirrebote\(2) & (!\INST_BOTON|contador_antirrebote[1]~23\ & VCC))
-- \INST_BOTON|contador_antirrebote[2]~25\ = CARRY((\INST_BOTON|contador_antirrebote\(2) & !\INST_BOTON|contador_antirrebote[1]~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \INST_BOTON|contador_antirrebote\(2),
	datad => VCC,
	cin => \INST_BOTON|contador_antirrebote[1]~23\,
	combout => \INST_BOTON|contador_antirrebote[2]~24_combout\,
	cout => \INST_BOTON|contador_antirrebote[2]~25\);

-- Location: FF_X33_Y24_N17
\INST_BOTON|contador_antirrebote[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \reloj_50mhz~inputclkctrl_outclk\,
	d => \INST_BOTON|contador_antirrebote[2]~24_combout\,
	sclr => \INST_BOTON|contador_antirrebote[15]~34_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST_BOTON|contador_antirrebote\(2));

-- Location: LCCOMB_X33_Y24_N18
\INST_BOTON|contador_antirrebote[3]~26\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST_BOTON|contador_antirrebote[3]~26_combout\ = (\INST_BOTON|contador_antirrebote\(3) & (!\INST_BOTON|contador_antirrebote[2]~25\)) # (!\INST_BOTON|contador_antirrebote\(3) & ((\INST_BOTON|contador_antirrebote[2]~25\) # (GND)))
-- \INST_BOTON|contador_antirrebote[3]~27\ = CARRY((!\INST_BOTON|contador_antirrebote[2]~25\) # (!\INST_BOTON|contador_antirrebote\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \INST_BOTON|contador_antirrebote\(3),
	datad => VCC,
	cin => \INST_BOTON|contador_antirrebote[2]~25\,
	combout => \INST_BOTON|contador_antirrebote[3]~26_combout\,
	cout => \INST_BOTON|contador_antirrebote[3]~27\);

-- Location: FF_X33_Y24_N19
\INST_BOTON|contador_antirrebote[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \reloj_50mhz~inputclkctrl_outclk\,
	d => \INST_BOTON|contador_antirrebote[3]~26_combout\,
	sclr => \INST_BOTON|contador_antirrebote[15]~34_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST_BOTON|contador_antirrebote\(3));

-- Location: LCCOMB_X33_Y24_N20
\INST_BOTON|contador_antirrebote[4]~28\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST_BOTON|contador_antirrebote[4]~28_combout\ = (\INST_BOTON|contador_antirrebote\(4) & (\INST_BOTON|contador_antirrebote[3]~27\ $ (GND))) # (!\INST_BOTON|contador_antirrebote\(4) & (!\INST_BOTON|contador_antirrebote[3]~27\ & VCC))
-- \INST_BOTON|contador_antirrebote[4]~29\ = CARRY((\INST_BOTON|contador_antirrebote\(4) & !\INST_BOTON|contador_antirrebote[3]~27\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \INST_BOTON|contador_antirrebote\(4),
	datad => VCC,
	cin => \INST_BOTON|contador_antirrebote[3]~27\,
	combout => \INST_BOTON|contador_antirrebote[4]~28_combout\,
	cout => \INST_BOTON|contador_antirrebote[4]~29\);

-- Location: FF_X33_Y24_N21
\INST_BOTON|contador_antirrebote[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \reloj_50mhz~inputclkctrl_outclk\,
	d => \INST_BOTON|contador_antirrebote[4]~28_combout\,
	sclr => \INST_BOTON|contador_antirrebote[15]~34_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST_BOTON|contador_antirrebote\(4));

-- Location: LCCOMB_X33_Y24_N22
\INST_BOTON|contador_antirrebote[5]~30\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST_BOTON|contador_antirrebote[5]~30_combout\ = (\INST_BOTON|contador_antirrebote\(5) & (!\INST_BOTON|contador_antirrebote[4]~29\)) # (!\INST_BOTON|contador_antirrebote\(5) & ((\INST_BOTON|contador_antirrebote[4]~29\) # (GND)))
-- \INST_BOTON|contador_antirrebote[5]~31\ = CARRY((!\INST_BOTON|contador_antirrebote[4]~29\) # (!\INST_BOTON|contador_antirrebote\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \INST_BOTON|contador_antirrebote\(5),
	datad => VCC,
	cin => \INST_BOTON|contador_antirrebote[4]~29\,
	combout => \INST_BOTON|contador_antirrebote[5]~30_combout\,
	cout => \INST_BOTON|contador_antirrebote[5]~31\);

-- Location: FF_X33_Y24_N23
\INST_BOTON|contador_antirrebote[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \reloj_50mhz~inputclkctrl_outclk\,
	d => \INST_BOTON|contador_antirrebote[5]~30_combout\,
	sclr => \INST_BOTON|contador_antirrebote[15]~34_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST_BOTON|contador_antirrebote\(5));

-- Location: LCCOMB_X33_Y24_N24
\INST_BOTON|contador_antirrebote[6]~32\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST_BOTON|contador_antirrebote[6]~32_combout\ = (\INST_BOTON|contador_antirrebote\(6) & (\INST_BOTON|contador_antirrebote[5]~31\ $ (GND))) # (!\INST_BOTON|contador_antirrebote\(6) & (!\INST_BOTON|contador_antirrebote[5]~31\ & VCC))
-- \INST_BOTON|contador_antirrebote[6]~33\ = CARRY((\INST_BOTON|contador_antirrebote\(6) & !\INST_BOTON|contador_antirrebote[5]~31\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \INST_BOTON|contador_antirrebote\(6),
	datad => VCC,
	cin => \INST_BOTON|contador_antirrebote[5]~31\,
	combout => \INST_BOTON|contador_antirrebote[6]~32_combout\,
	cout => \INST_BOTON|contador_antirrebote[6]~33\);

-- Location: FF_X33_Y24_N25
\INST_BOTON|contador_antirrebote[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \reloj_50mhz~inputclkctrl_outclk\,
	d => \INST_BOTON|contador_antirrebote[6]~32_combout\,
	sclr => \INST_BOTON|contador_antirrebote[15]~34_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST_BOTON|contador_antirrebote\(6));

-- Location: LCCOMB_X33_Y24_N26
\INST_BOTON|contador_antirrebote[7]~35\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST_BOTON|contador_antirrebote[7]~35_combout\ = (\INST_BOTON|contador_antirrebote\(7) & (!\INST_BOTON|contador_antirrebote[6]~33\)) # (!\INST_BOTON|contador_antirrebote\(7) & ((\INST_BOTON|contador_antirrebote[6]~33\) # (GND)))
-- \INST_BOTON|contador_antirrebote[7]~36\ = CARRY((!\INST_BOTON|contador_antirrebote[6]~33\) # (!\INST_BOTON|contador_antirrebote\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \INST_BOTON|contador_antirrebote\(7),
	datad => VCC,
	cin => \INST_BOTON|contador_antirrebote[6]~33\,
	combout => \INST_BOTON|contador_antirrebote[7]~35_combout\,
	cout => \INST_BOTON|contador_antirrebote[7]~36\);

-- Location: FF_X33_Y24_N27
\INST_BOTON|contador_antirrebote[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \reloj_50mhz~inputclkctrl_outclk\,
	d => \INST_BOTON|contador_antirrebote[7]~35_combout\,
	sclr => \INST_BOTON|contador_antirrebote[15]~34_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST_BOTON|contador_antirrebote\(7));

-- Location: LCCOMB_X33_Y24_N28
\INST_BOTON|contador_antirrebote[8]~37\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST_BOTON|contador_antirrebote[8]~37_combout\ = (\INST_BOTON|contador_antirrebote\(8) & (\INST_BOTON|contador_antirrebote[7]~36\ $ (GND))) # (!\INST_BOTON|contador_antirrebote\(8) & (!\INST_BOTON|contador_antirrebote[7]~36\ & VCC))
-- \INST_BOTON|contador_antirrebote[8]~38\ = CARRY((\INST_BOTON|contador_antirrebote\(8) & !\INST_BOTON|contador_antirrebote[7]~36\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \INST_BOTON|contador_antirrebote\(8),
	datad => VCC,
	cin => \INST_BOTON|contador_antirrebote[7]~36\,
	combout => \INST_BOTON|contador_antirrebote[8]~37_combout\,
	cout => \INST_BOTON|contador_antirrebote[8]~38\);

-- Location: FF_X33_Y24_N29
\INST_BOTON|contador_antirrebote[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \reloj_50mhz~inputclkctrl_outclk\,
	d => \INST_BOTON|contador_antirrebote[8]~37_combout\,
	sclr => \INST_BOTON|contador_antirrebote[15]~34_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST_BOTON|contador_antirrebote\(8));

-- Location: LCCOMB_X33_Y24_N30
\INST_BOTON|contador_antirrebote[9]~39\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST_BOTON|contador_antirrebote[9]~39_combout\ = (\INST_BOTON|contador_antirrebote\(9) & (!\INST_BOTON|contador_antirrebote[8]~38\)) # (!\INST_BOTON|contador_antirrebote\(9) & ((\INST_BOTON|contador_antirrebote[8]~38\) # (GND)))
-- \INST_BOTON|contador_antirrebote[9]~40\ = CARRY((!\INST_BOTON|contador_antirrebote[8]~38\) # (!\INST_BOTON|contador_antirrebote\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \INST_BOTON|contador_antirrebote\(9),
	datad => VCC,
	cin => \INST_BOTON|contador_antirrebote[8]~38\,
	combout => \INST_BOTON|contador_antirrebote[9]~39_combout\,
	cout => \INST_BOTON|contador_antirrebote[9]~40\);

-- Location: FF_X33_Y24_N31
\INST_BOTON|contador_antirrebote[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \reloj_50mhz~inputclkctrl_outclk\,
	d => \INST_BOTON|contador_antirrebote[9]~39_combout\,
	sclr => \INST_BOTON|contador_antirrebote[15]~34_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST_BOTON|contador_antirrebote\(9));

-- Location: LCCOMB_X33_Y23_N0
\INST_BOTON|contador_antirrebote[10]~41\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST_BOTON|contador_antirrebote[10]~41_combout\ = (\INST_BOTON|contador_antirrebote\(10) & (\INST_BOTON|contador_antirrebote[9]~40\ $ (GND))) # (!\INST_BOTON|contador_antirrebote\(10) & (!\INST_BOTON|contador_antirrebote[9]~40\ & VCC))
-- \INST_BOTON|contador_antirrebote[10]~42\ = CARRY((\INST_BOTON|contador_antirrebote\(10) & !\INST_BOTON|contador_antirrebote[9]~40\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \INST_BOTON|contador_antirrebote\(10),
	datad => VCC,
	cin => \INST_BOTON|contador_antirrebote[9]~40\,
	combout => \INST_BOTON|contador_antirrebote[10]~41_combout\,
	cout => \INST_BOTON|contador_antirrebote[10]~42\);

-- Location: FF_X33_Y23_N1
\INST_BOTON|contador_antirrebote[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \reloj_50mhz~inputclkctrl_outclk\,
	d => \INST_BOTON|contador_antirrebote[10]~41_combout\,
	sclr => \INST_BOTON|contador_antirrebote[15]~34_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST_BOTON|contador_antirrebote\(10));

-- Location: LCCOMB_X33_Y23_N2
\INST_BOTON|contador_antirrebote[11]~43\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST_BOTON|contador_antirrebote[11]~43_combout\ = (\INST_BOTON|contador_antirrebote\(11) & (!\INST_BOTON|contador_antirrebote[10]~42\)) # (!\INST_BOTON|contador_antirrebote\(11) & ((\INST_BOTON|contador_antirrebote[10]~42\) # (GND)))
-- \INST_BOTON|contador_antirrebote[11]~44\ = CARRY((!\INST_BOTON|contador_antirrebote[10]~42\) # (!\INST_BOTON|contador_antirrebote\(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \INST_BOTON|contador_antirrebote\(11),
	datad => VCC,
	cin => \INST_BOTON|contador_antirrebote[10]~42\,
	combout => \INST_BOTON|contador_antirrebote[11]~43_combout\,
	cout => \INST_BOTON|contador_antirrebote[11]~44\);

-- Location: FF_X33_Y23_N3
\INST_BOTON|contador_antirrebote[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \reloj_50mhz~inputclkctrl_outclk\,
	d => \INST_BOTON|contador_antirrebote[11]~43_combout\,
	sclr => \INST_BOTON|contador_antirrebote[15]~34_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST_BOTON|contador_antirrebote\(11));

-- Location: LCCOMB_X33_Y23_N4
\INST_BOTON|contador_antirrebote[12]~45\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST_BOTON|contador_antirrebote[12]~45_combout\ = (\INST_BOTON|contador_antirrebote\(12) & (\INST_BOTON|contador_antirrebote[11]~44\ $ (GND))) # (!\INST_BOTON|contador_antirrebote\(12) & (!\INST_BOTON|contador_antirrebote[11]~44\ & VCC))
-- \INST_BOTON|contador_antirrebote[12]~46\ = CARRY((\INST_BOTON|contador_antirrebote\(12) & !\INST_BOTON|contador_antirrebote[11]~44\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \INST_BOTON|contador_antirrebote\(12),
	datad => VCC,
	cin => \INST_BOTON|contador_antirrebote[11]~44\,
	combout => \INST_BOTON|contador_antirrebote[12]~45_combout\,
	cout => \INST_BOTON|contador_antirrebote[12]~46\);

-- Location: FF_X33_Y23_N5
\INST_BOTON|contador_antirrebote[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \reloj_50mhz~inputclkctrl_outclk\,
	d => \INST_BOTON|contador_antirrebote[12]~45_combout\,
	sclr => \INST_BOTON|contador_antirrebote[15]~34_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST_BOTON|contador_antirrebote\(12));

-- Location: LCCOMB_X33_Y23_N6
\INST_BOTON|contador_antirrebote[13]~47\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST_BOTON|contador_antirrebote[13]~47_combout\ = (\INST_BOTON|contador_antirrebote\(13) & (!\INST_BOTON|contador_antirrebote[12]~46\)) # (!\INST_BOTON|contador_antirrebote\(13) & ((\INST_BOTON|contador_antirrebote[12]~46\) # (GND)))
-- \INST_BOTON|contador_antirrebote[13]~48\ = CARRY((!\INST_BOTON|contador_antirrebote[12]~46\) # (!\INST_BOTON|contador_antirrebote\(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \INST_BOTON|contador_antirrebote\(13),
	datad => VCC,
	cin => \INST_BOTON|contador_antirrebote[12]~46\,
	combout => \INST_BOTON|contador_antirrebote[13]~47_combout\,
	cout => \INST_BOTON|contador_antirrebote[13]~48\);

-- Location: FF_X33_Y23_N7
\INST_BOTON|contador_antirrebote[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \reloj_50mhz~inputclkctrl_outclk\,
	d => \INST_BOTON|contador_antirrebote[13]~47_combout\,
	sclr => \INST_BOTON|contador_antirrebote[15]~34_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST_BOTON|contador_antirrebote\(13));

-- Location: LCCOMB_X33_Y23_N8
\INST_BOTON|contador_antirrebote[14]~49\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST_BOTON|contador_antirrebote[14]~49_combout\ = (\INST_BOTON|contador_antirrebote\(14) & (\INST_BOTON|contador_antirrebote[13]~48\ $ (GND))) # (!\INST_BOTON|contador_antirrebote\(14) & (!\INST_BOTON|contador_antirrebote[13]~48\ & VCC))
-- \INST_BOTON|contador_antirrebote[14]~50\ = CARRY((\INST_BOTON|contador_antirrebote\(14) & !\INST_BOTON|contador_antirrebote[13]~48\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \INST_BOTON|contador_antirrebote\(14),
	datad => VCC,
	cin => \INST_BOTON|contador_antirrebote[13]~48\,
	combout => \INST_BOTON|contador_antirrebote[14]~49_combout\,
	cout => \INST_BOTON|contador_antirrebote[14]~50\);

-- Location: FF_X33_Y23_N9
\INST_BOTON|contador_antirrebote[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \reloj_50mhz~inputclkctrl_outclk\,
	d => \INST_BOTON|contador_antirrebote[14]~49_combout\,
	sclr => \INST_BOTON|contador_antirrebote[15]~34_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST_BOTON|contador_antirrebote\(14));

-- Location: LCCOMB_X33_Y23_N10
\INST_BOTON|contador_antirrebote[15]~51\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST_BOTON|contador_antirrebote[15]~51_combout\ = (\INST_BOTON|contador_antirrebote\(15) & (!\INST_BOTON|contador_antirrebote[14]~50\)) # (!\INST_BOTON|contador_antirrebote\(15) & ((\INST_BOTON|contador_antirrebote[14]~50\) # (GND)))
-- \INST_BOTON|contador_antirrebote[15]~52\ = CARRY((!\INST_BOTON|contador_antirrebote[14]~50\) # (!\INST_BOTON|contador_antirrebote\(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \INST_BOTON|contador_antirrebote\(15),
	datad => VCC,
	cin => \INST_BOTON|contador_antirrebote[14]~50\,
	combout => \INST_BOTON|contador_antirrebote[15]~51_combout\,
	cout => \INST_BOTON|contador_antirrebote[15]~52\);

-- Location: FF_X33_Y23_N11
\INST_BOTON|contador_antirrebote[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \reloj_50mhz~inputclkctrl_outclk\,
	d => \INST_BOTON|contador_antirrebote[15]~51_combout\,
	sclr => \INST_BOTON|contador_antirrebote[15]~34_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST_BOTON|contador_antirrebote\(15));

-- Location: LCCOMB_X33_Y23_N12
\INST_BOTON|contador_antirrebote[16]~53\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST_BOTON|contador_antirrebote[16]~53_combout\ = (\INST_BOTON|contador_antirrebote\(16) & (\INST_BOTON|contador_antirrebote[15]~52\ $ (GND))) # (!\INST_BOTON|contador_antirrebote\(16) & (!\INST_BOTON|contador_antirrebote[15]~52\ & VCC))
-- \INST_BOTON|contador_antirrebote[16]~54\ = CARRY((\INST_BOTON|contador_antirrebote\(16) & !\INST_BOTON|contador_antirrebote[15]~52\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \INST_BOTON|contador_antirrebote\(16),
	datad => VCC,
	cin => \INST_BOTON|contador_antirrebote[15]~52\,
	combout => \INST_BOTON|contador_antirrebote[16]~53_combout\,
	cout => \INST_BOTON|contador_antirrebote[16]~54\);

-- Location: FF_X33_Y23_N13
\INST_BOTON|contador_antirrebote[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \reloj_50mhz~inputclkctrl_outclk\,
	d => \INST_BOTON|contador_antirrebote[16]~53_combout\,
	sclr => \INST_BOTON|contador_antirrebote[15]~34_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST_BOTON|contador_antirrebote\(16));

-- Location: LCCOMB_X33_Y23_N14
\INST_BOTON|contador_antirrebote[17]~55\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST_BOTON|contador_antirrebote[17]~55_combout\ = (\INST_BOTON|contador_antirrebote\(17) & (!\INST_BOTON|contador_antirrebote[16]~54\)) # (!\INST_BOTON|contador_antirrebote\(17) & ((\INST_BOTON|contador_antirrebote[16]~54\) # (GND)))
-- \INST_BOTON|contador_antirrebote[17]~56\ = CARRY((!\INST_BOTON|contador_antirrebote[16]~54\) # (!\INST_BOTON|contador_antirrebote\(17)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \INST_BOTON|contador_antirrebote\(17),
	datad => VCC,
	cin => \INST_BOTON|contador_antirrebote[16]~54\,
	combout => \INST_BOTON|contador_antirrebote[17]~55_combout\,
	cout => \INST_BOTON|contador_antirrebote[17]~56\);

-- Location: FF_X33_Y23_N15
\INST_BOTON|contador_antirrebote[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \reloj_50mhz~inputclkctrl_outclk\,
	d => \INST_BOTON|contador_antirrebote[17]~55_combout\,
	sclr => \INST_BOTON|contador_antirrebote[15]~34_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST_BOTON|contador_antirrebote\(17));

-- Location: LCCOMB_X33_Y23_N16
\INST_BOTON|contador_antirrebote[18]~57\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST_BOTON|contador_antirrebote[18]~57_combout\ = (\INST_BOTON|contador_antirrebote\(18) & (\INST_BOTON|contador_antirrebote[17]~56\ $ (GND))) # (!\INST_BOTON|contador_antirrebote\(18) & (!\INST_BOTON|contador_antirrebote[17]~56\ & VCC))
-- \INST_BOTON|contador_antirrebote[18]~58\ = CARRY((\INST_BOTON|contador_antirrebote\(18) & !\INST_BOTON|contador_antirrebote[17]~56\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \INST_BOTON|contador_antirrebote\(18),
	datad => VCC,
	cin => \INST_BOTON|contador_antirrebote[17]~56\,
	combout => \INST_BOTON|contador_antirrebote[18]~57_combout\,
	cout => \INST_BOTON|contador_antirrebote[18]~58\);

-- Location: FF_X33_Y23_N17
\INST_BOTON|contador_antirrebote[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \reloj_50mhz~inputclkctrl_outclk\,
	d => \INST_BOTON|contador_antirrebote[18]~57_combout\,
	sclr => \INST_BOTON|contador_antirrebote[15]~34_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST_BOTON|contador_antirrebote\(18));

-- Location: LCCOMB_X33_Y23_N18
\INST_BOTON|contador_antirrebote[19]~59\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST_BOTON|contador_antirrebote[19]~59_combout\ = \INST_BOTON|contador_antirrebote\(19) $ (\INST_BOTON|contador_antirrebote[18]~58\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \INST_BOTON|contador_antirrebote\(19),
	cin => \INST_BOTON|contador_antirrebote[18]~58\,
	combout => \INST_BOTON|contador_antirrebote[19]~59_combout\);

-- Location: FF_X33_Y23_N19
\INST_BOTON|contador_antirrebote[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \reloj_50mhz~inputclkctrl_outclk\,
	d => \INST_BOTON|contador_antirrebote[19]~59_combout\,
	sclr => \INST_BOTON|contador_antirrebote[15]~34_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST_BOTON|contador_antirrebote\(19));

-- Location: LCCOMB_X33_Y23_N20
\INST_BOTON|LessThan0~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST_BOTON|LessThan0~1_combout\ = (!\INST_BOTON|contador_antirrebote\(13) & (!\INST_BOTON|contador_antirrebote\(12) & (!\INST_BOTON|contador_antirrebote\(11) & !\INST_BOTON|contador_antirrebote\(10))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INST_BOTON|contador_antirrebote\(13),
	datab => \INST_BOTON|contador_antirrebote\(12),
	datac => \INST_BOTON|contador_antirrebote\(11),
	datad => \INST_BOTON|contador_antirrebote\(10),
	combout => \INST_BOTON|LessThan0~1_combout\);

-- Location: LCCOMB_X33_Y24_N4
\INST_BOTON|LessThan0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST_BOTON|LessThan0~0_combout\ = ((!\INST_BOTON|contador_antirrebote\(7) & (!\INST_BOTON|contador_antirrebote\(6) & !\INST_BOTON|contador_antirrebote\(8)))) # (!\INST_BOTON|contador_antirrebote\(9))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INST_BOTON|contador_antirrebote\(7),
	datab => \INST_BOTON|contador_antirrebote\(6),
	datac => \INST_BOTON|contador_antirrebote\(9),
	datad => \INST_BOTON|contador_antirrebote\(8),
	combout => \INST_BOTON|LessThan0~0_combout\);

-- Location: LCCOMB_X33_Y23_N26
\INST_BOTON|LessThan0~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST_BOTON|LessThan0~2_combout\ = (\INST_BOTON|LessThan0~1_combout\ & (!\INST_BOTON|contador_antirrebote\(15) & \INST_BOTON|LessThan0~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \INST_BOTON|LessThan0~1_combout\,
	datac => \INST_BOTON|contador_antirrebote\(15),
	datad => \INST_BOTON|LessThan0~0_combout\,
	combout => \INST_BOTON|LessThan0~2_combout\);

-- Location: LCCOMB_X33_Y23_N24
\INST_BOTON|LessThan0~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST_BOTON|LessThan0~3_combout\ = (((!\INST_BOTON|contador_antirrebote\(15) & !\INST_BOTON|contador_antirrebote\(14))) # (!\INST_BOTON|contador_antirrebote\(17))) # (!\INST_BOTON|contador_antirrebote\(16))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101011111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INST_BOTON|contador_antirrebote\(16),
	datab => \INST_BOTON|contador_antirrebote\(15),
	datac => \INST_BOTON|contador_antirrebote\(14),
	datad => \INST_BOTON|contador_antirrebote\(17),
	combout => \INST_BOTON|LessThan0~3_combout\);

-- Location: LCCOMB_X33_Y23_N30
\INST_BOTON|LessThan0~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST_BOTON|LessThan0~4_combout\ = (((\INST_BOTON|LessThan0~2_combout\) # (\INST_BOTON|LessThan0~3_combout\)) # (!\INST_BOTON|contador_antirrebote\(18))) # (!\INST_BOTON|contador_antirrebote\(19))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INST_BOTON|contador_antirrebote\(19),
	datab => \INST_BOTON|contador_antirrebote\(18),
	datac => \INST_BOTON|LessThan0~2_combout\,
	datad => \INST_BOTON|LessThan0~3_combout\,
	combout => \INST_BOTON|LessThan0~4_combout\);

-- Location: LCCOMB_X33_Y23_N28
\INST_BOTON|boton_estable~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST_BOTON|boton_estable~0_combout\ = (\INST_BOTON|LessThan0~4_combout\ & ((\INST_BOTON|boton_estable~q\))) # (!\INST_BOTON|LessThan0~4_combout\ & (!\boton~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000001010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \boton~input_o\,
	datac => \INST_BOTON|boton_estable~q\,
	datad => \INST_BOTON|LessThan0~4_combout\,
	combout => \INST_BOTON|boton_estable~0_combout\);

-- Location: LCCOMB_X32_Y23_N0
\INST_BOTON|boton_estable~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST_BOTON|boton_estable~feeder_combout\ = \INST_BOTON|boton_estable~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \INST_BOTON|boton_estable~0_combout\,
	combout => \INST_BOTON|boton_estable~feeder_combout\);

-- Location: FF_X32_Y23_N1
\INST_BOTON|boton_estable\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \reloj_50mhz~inputclkctrl_outclk\,
	d => \INST_BOTON|boton_estable~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST_BOTON|boton_estable~q\);

-- Location: FF_X31_Y24_N31
\INST_BOTON|boton_anterior\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \reloj_50mhz~inputclkctrl_outclk\,
	asdata => \INST_BOTON|boton_estable~q\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST_BOTON|boton_anterior~q\);

-- Location: LCCOMB_X31_Y24_N24
\INST_BOTON|estado_marcha~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST_BOTON|estado_marcha~0_combout\ = (\INST_BOTON|boton_anterior~q\ & !\INST_BOTON|boton_estable~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \INST_BOTON|boton_anterior~q\,
	datad => \INST_BOTON|boton_estable~q\,
	combout => \INST_BOTON|estado_marcha~0_combout\);

-- Location: LCCOMB_X31_Y24_N30
\INST_BOTON|pulsacion_larga~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST_BOTON|pulsacion_larga~1_combout\ = (\INST_BOTON|pulsacion_larga~q\ & ((\INST_BOTON|boton_estable~q\) # (!\INST_BOTON|boton_anterior~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INST_BOTON|boton_estable~q\,
	datac => \INST_BOTON|boton_anterior~q\,
	datad => \INST_BOTON|pulsacion_larga~q\,
	combout => \INST_BOTON|pulsacion_larga~1_combout\);

-- Location: LCCOMB_X32_Y25_N6
\INST_BOTON|contador_duracion[0]~27\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST_BOTON|contador_duracion[0]~27_combout\ = \INST_BOTON|contador_duracion\(0) $ (VCC)
-- \INST_BOTON|contador_duracion[0]~28\ = CARRY(\INST_BOTON|contador_duracion\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INST_BOTON|contador_duracion\(0),
	datad => VCC,
	combout => \INST_BOTON|contador_duracion[0]~27_combout\,
	cout => \INST_BOTON|contador_duracion[0]~28\);

-- Location: LCCOMB_X32_Y24_N24
\INST_BOTON|contador_duracion[25]~79\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST_BOTON|contador_duracion[25]~79_combout\ = (\INST_BOTON|contador_duracion\(25) & (!\INST_BOTON|contador_duracion[24]~78\)) # (!\INST_BOTON|contador_duracion\(25) & ((\INST_BOTON|contador_duracion[24]~78\) # (GND)))
-- \INST_BOTON|contador_duracion[25]~80\ = CARRY((!\INST_BOTON|contador_duracion[24]~78\) # (!\INST_BOTON|contador_duracion\(25)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \INST_BOTON|contador_duracion\(25),
	datad => VCC,
	cin => \INST_BOTON|contador_duracion[24]~78\,
	combout => \INST_BOTON|contador_duracion[25]~79_combout\,
	cout => \INST_BOTON|contador_duracion[25]~80\);

-- Location: LCCOMB_X32_Y24_N26
\INST_BOTON|contador_duracion[26]~81\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST_BOTON|contador_duracion[26]~81_combout\ = \INST_BOTON|contador_duracion\(26) $ (!\INST_BOTON|contador_duracion[25]~80\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010110100101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \INST_BOTON|contador_duracion\(26),
	cin => \INST_BOTON|contador_duracion[25]~80\,
	combout => \INST_BOTON|contador_duracion[26]~81_combout\);

-- Location: FF_X32_Y24_N27
\INST_BOTON|contador_duracion[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \reloj_50mhz~inputclkctrl_outclk\,
	d => \INST_BOTON|contador_duracion[26]~81_combout\,
	sclr => \INST_BOTON|ALT_INV_boton_estable~q\,
	ena => \INST_BOTON|contador_duracion[26]~64_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST_BOTON|contador_duracion\(26));

-- Location: LCCOMB_X31_Y24_N14
\INST_BOTON|contador_duracion[26]~63\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST_BOTON|contador_duracion[26]~63_combout\ = (\INST_BOTON|boton_estable~q\ & ((!\INST_BOTON|contador_duracion\(26)))) # (!\INST_BOTON|boton_estable~q\ & (\INST_BOTON|boton_anterior~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \INST_BOTON|boton_anterior~q\,
	datac => \INST_BOTON|boton_estable~q\,
	datad => \INST_BOTON|contador_duracion\(26),
	combout => \INST_BOTON|contador_duracion[26]~63_combout\);

-- Location: LCCOMB_X31_Y24_N22
\INST_BOTON|LessThan2~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST_BOTON|LessThan2~2_combout\ = (!\INST_BOTON|contador_duracion\(17) & (!\INST_BOTON|contador_duracion\(19) & ((!\INST_BOTON|contador_duracion\(13)) # (!\INST_BOTON|contador_duracion\(14)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INST_BOTON|contador_duracion\(17),
	datab => \INST_BOTON|contador_duracion\(19),
	datac => \INST_BOTON|contador_duracion\(14),
	datad => \INST_BOTON|contador_duracion\(13),
	combout => \INST_BOTON|LessThan2~2_combout\);

-- Location: LCCOMB_X32_Y24_N28
\INST_BOTON|LessThan2~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST_BOTON|LessThan2~3_combout\ = (!\INST_BOTON|contador_duracion\(19) & (!\INST_BOTON|contador_duracion\(17) & ((!\INST_BOTON|contador_duracion\(16)) # (!\INST_BOTON|contador_duracion\(15)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INST_BOTON|contador_duracion\(19),
	datab => \INST_BOTON|contador_duracion\(17),
	datac => \INST_BOTON|contador_duracion\(15),
	datad => \INST_BOTON|contador_duracion\(16),
	combout => \INST_BOTON|LessThan2~3_combout\);

-- Location: LCCOMB_X32_Y24_N30
\INST_BOTON|LessThan2~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST_BOTON|LessThan2~4_combout\ = (((!\INST_BOTON|contador_duracion\(19) & !\INST_BOTON|contador_duracion\(18))) # (!\INST_BOTON|contador_duracion\(21))) # (!\INST_BOTON|contador_duracion\(20))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011011111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INST_BOTON|contador_duracion\(19),
	datab => \INST_BOTON|contador_duracion\(20),
	datac => \INST_BOTON|contador_duracion\(18),
	datad => \INST_BOTON|contador_duracion\(21),
	combout => \INST_BOTON|LessThan2~4_combout\);

-- Location: LCCOMB_X31_Y24_N8
\INST_BOTON|LessThan2~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST_BOTON|LessThan2~5_combout\ = (((\INST_BOTON|LessThan2~4_combout\) # (!\INST_BOTON|contador_duracion\(24))) # (!\INST_BOTON|contador_duracion\(22))) # (!\INST_BOTON|contador_duracion\(23))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INST_BOTON|contador_duracion\(23),
	datab => \INST_BOTON|contador_duracion\(22),
	datac => \INST_BOTON|LessThan2~4_combout\,
	datad => \INST_BOTON|contador_duracion\(24),
	combout => \INST_BOTON|LessThan2~5_combout\);

-- Location: LCCOMB_X31_Y24_N18
\INST_BOTON|LessThan2~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST_BOTON|LessThan2~0_combout\ = (!\INST_BOTON|contador_duracion\(8) & (!\INST_BOTON|contador_duracion\(19) & (!\INST_BOTON|contador_duracion\(17) & !\INST_BOTON|contador_duracion\(9))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INST_BOTON|contador_duracion\(8),
	datab => \INST_BOTON|contador_duracion\(19),
	datac => \INST_BOTON|contador_duracion\(17),
	datad => \INST_BOTON|contador_duracion\(9),
	combout => \INST_BOTON|LessThan2~0_combout\);

-- Location: LCCOMB_X31_Y24_N28
\INST_BOTON|LessThan2~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST_BOTON|LessThan2~1_combout\ = (!\INST_BOTON|contador_duracion\(10) & (!\INST_BOTON|contador_duracion\(12) & (!\INST_BOTON|contador_duracion\(11) & \INST_BOTON|LessThan2~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INST_BOTON|contador_duracion\(10),
	datab => \INST_BOTON|contador_duracion\(12),
	datac => \INST_BOTON|contador_duracion\(11),
	datad => \INST_BOTON|LessThan2~0_combout\,
	combout => \INST_BOTON|LessThan2~1_combout\);

-- Location: LCCOMB_X31_Y24_N2
\INST_BOTON|LessThan2~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST_BOTON|LessThan2~6_combout\ = (\INST_BOTON|LessThan2~2_combout\) # ((\INST_BOTON|LessThan2~3_combout\) # ((\INST_BOTON|LessThan2~5_combout\) # (\INST_BOTON|LessThan2~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INST_BOTON|LessThan2~2_combout\,
	datab => \INST_BOTON|LessThan2~3_combout\,
	datac => \INST_BOTON|LessThan2~5_combout\,
	datad => \INST_BOTON|LessThan2~1_combout\,
	combout => \INST_BOTON|LessThan2~6_combout\);

-- Location: LCCOMB_X31_Y24_N0
\INST_BOTON|contador_duracion[26]~64\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST_BOTON|contador_duracion[26]~64_combout\ = (\INST_BOTON|contador_duracion[26]~63_combout\) # ((\INST_BOTON|boton_estable~q\ & (!\INST_BOTON|contador_duracion\(25) & \INST_BOTON|LessThan2~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INST_BOTON|boton_estable~q\,
	datab => \INST_BOTON|contador_duracion\(25),
	datac => \INST_BOTON|contador_duracion[26]~63_combout\,
	datad => \INST_BOTON|LessThan2~6_combout\,
	combout => \INST_BOTON|contador_duracion[26]~64_combout\);

-- Location: FF_X32_Y25_N7
\INST_BOTON|contador_duracion[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \reloj_50mhz~inputclkctrl_outclk\,
	d => \INST_BOTON|contador_duracion[0]~27_combout\,
	sclr => \INST_BOTON|ALT_INV_boton_estable~q\,
	ena => \INST_BOTON|contador_duracion[26]~64_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST_BOTON|contador_duracion\(0));

-- Location: LCCOMB_X32_Y25_N8
\INST_BOTON|contador_duracion[1]~29\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST_BOTON|contador_duracion[1]~29_combout\ = (\INST_BOTON|contador_duracion\(1) & (!\INST_BOTON|contador_duracion[0]~28\)) # (!\INST_BOTON|contador_duracion\(1) & ((\INST_BOTON|contador_duracion[0]~28\) # (GND)))
-- \INST_BOTON|contador_duracion[1]~30\ = CARRY((!\INST_BOTON|contador_duracion[0]~28\) # (!\INST_BOTON|contador_duracion\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \INST_BOTON|contador_duracion\(1),
	datad => VCC,
	cin => \INST_BOTON|contador_duracion[0]~28\,
	combout => \INST_BOTON|contador_duracion[1]~29_combout\,
	cout => \INST_BOTON|contador_duracion[1]~30\);

-- Location: FF_X32_Y25_N9
\INST_BOTON|contador_duracion[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \reloj_50mhz~inputclkctrl_outclk\,
	d => \INST_BOTON|contador_duracion[1]~29_combout\,
	sclr => \INST_BOTON|ALT_INV_boton_estable~q\,
	ena => \INST_BOTON|contador_duracion[26]~64_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST_BOTON|contador_duracion\(1));

-- Location: LCCOMB_X32_Y25_N10
\INST_BOTON|contador_duracion[2]~31\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST_BOTON|contador_duracion[2]~31_combout\ = (\INST_BOTON|contador_duracion\(2) & (\INST_BOTON|contador_duracion[1]~30\ $ (GND))) # (!\INST_BOTON|contador_duracion\(2) & (!\INST_BOTON|contador_duracion[1]~30\ & VCC))
-- \INST_BOTON|contador_duracion[2]~32\ = CARRY((\INST_BOTON|contador_duracion\(2) & !\INST_BOTON|contador_duracion[1]~30\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \INST_BOTON|contador_duracion\(2),
	datad => VCC,
	cin => \INST_BOTON|contador_duracion[1]~30\,
	combout => \INST_BOTON|contador_duracion[2]~31_combout\,
	cout => \INST_BOTON|contador_duracion[2]~32\);

-- Location: FF_X32_Y25_N11
\INST_BOTON|contador_duracion[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \reloj_50mhz~inputclkctrl_outclk\,
	d => \INST_BOTON|contador_duracion[2]~31_combout\,
	sclr => \INST_BOTON|ALT_INV_boton_estable~q\,
	ena => \INST_BOTON|contador_duracion[26]~64_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST_BOTON|contador_duracion\(2));

-- Location: LCCOMB_X32_Y25_N12
\INST_BOTON|contador_duracion[3]~33\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST_BOTON|contador_duracion[3]~33_combout\ = (\INST_BOTON|contador_duracion\(3) & (!\INST_BOTON|contador_duracion[2]~32\)) # (!\INST_BOTON|contador_duracion\(3) & ((\INST_BOTON|contador_duracion[2]~32\) # (GND)))
-- \INST_BOTON|contador_duracion[3]~34\ = CARRY((!\INST_BOTON|contador_duracion[2]~32\) # (!\INST_BOTON|contador_duracion\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \INST_BOTON|contador_duracion\(3),
	datad => VCC,
	cin => \INST_BOTON|contador_duracion[2]~32\,
	combout => \INST_BOTON|contador_duracion[3]~33_combout\,
	cout => \INST_BOTON|contador_duracion[3]~34\);

-- Location: FF_X32_Y25_N13
\INST_BOTON|contador_duracion[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \reloj_50mhz~inputclkctrl_outclk\,
	d => \INST_BOTON|contador_duracion[3]~33_combout\,
	sclr => \INST_BOTON|ALT_INV_boton_estable~q\,
	ena => \INST_BOTON|contador_duracion[26]~64_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST_BOTON|contador_duracion\(3));

-- Location: LCCOMB_X32_Y25_N14
\INST_BOTON|contador_duracion[4]~35\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST_BOTON|contador_duracion[4]~35_combout\ = (\INST_BOTON|contador_duracion\(4) & (\INST_BOTON|contador_duracion[3]~34\ $ (GND))) # (!\INST_BOTON|contador_duracion\(4) & (!\INST_BOTON|contador_duracion[3]~34\ & VCC))
-- \INST_BOTON|contador_duracion[4]~36\ = CARRY((\INST_BOTON|contador_duracion\(4) & !\INST_BOTON|contador_duracion[3]~34\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \INST_BOTON|contador_duracion\(4),
	datad => VCC,
	cin => \INST_BOTON|contador_duracion[3]~34\,
	combout => \INST_BOTON|contador_duracion[4]~35_combout\,
	cout => \INST_BOTON|contador_duracion[4]~36\);

-- Location: FF_X32_Y25_N15
\INST_BOTON|contador_duracion[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \reloj_50mhz~inputclkctrl_outclk\,
	d => \INST_BOTON|contador_duracion[4]~35_combout\,
	sclr => \INST_BOTON|ALT_INV_boton_estable~q\,
	ena => \INST_BOTON|contador_duracion[26]~64_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST_BOTON|contador_duracion\(4));

-- Location: LCCOMB_X32_Y25_N16
\INST_BOTON|contador_duracion[5]~37\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST_BOTON|contador_duracion[5]~37_combout\ = (\INST_BOTON|contador_duracion\(5) & (!\INST_BOTON|contador_duracion[4]~36\)) # (!\INST_BOTON|contador_duracion\(5) & ((\INST_BOTON|contador_duracion[4]~36\) # (GND)))
-- \INST_BOTON|contador_duracion[5]~38\ = CARRY((!\INST_BOTON|contador_duracion[4]~36\) # (!\INST_BOTON|contador_duracion\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \INST_BOTON|contador_duracion\(5),
	datad => VCC,
	cin => \INST_BOTON|contador_duracion[4]~36\,
	combout => \INST_BOTON|contador_duracion[5]~37_combout\,
	cout => \INST_BOTON|contador_duracion[5]~38\);

-- Location: FF_X32_Y25_N17
\INST_BOTON|contador_duracion[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \reloj_50mhz~inputclkctrl_outclk\,
	d => \INST_BOTON|contador_duracion[5]~37_combout\,
	sclr => \INST_BOTON|ALT_INV_boton_estable~q\,
	ena => \INST_BOTON|contador_duracion[26]~64_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST_BOTON|contador_duracion\(5));

-- Location: LCCOMB_X32_Y25_N18
\INST_BOTON|contador_duracion[6]~39\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST_BOTON|contador_duracion[6]~39_combout\ = (\INST_BOTON|contador_duracion\(6) & (\INST_BOTON|contador_duracion[5]~38\ $ (GND))) # (!\INST_BOTON|contador_duracion\(6) & (!\INST_BOTON|contador_duracion[5]~38\ & VCC))
-- \INST_BOTON|contador_duracion[6]~40\ = CARRY((\INST_BOTON|contador_duracion\(6) & !\INST_BOTON|contador_duracion[5]~38\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \INST_BOTON|contador_duracion\(6),
	datad => VCC,
	cin => \INST_BOTON|contador_duracion[5]~38\,
	combout => \INST_BOTON|contador_duracion[6]~39_combout\,
	cout => \INST_BOTON|contador_duracion[6]~40\);

-- Location: FF_X32_Y25_N19
\INST_BOTON|contador_duracion[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \reloj_50mhz~inputclkctrl_outclk\,
	d => \INST_BOTON|contador_duracion[6]~39_combout\,
	sclr => \INST_BOTON|ALT_INV_boton_estable~q\,
	ena => \INST_BOTON|contador_duracion[26]~64_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST_BOTON|contador_duracion\(6));

-- Location: LCCOMB_X32_Y25_N20
\INST_BOTON|contador_duracion[7]~41\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST_BOTON|contador_duracion[7]~41_combout\ = (\INST_BOTON|contador_duracion\(7) & (!\INST_BOTON|contador_duracion[6]~40\)) # (!\INST_BOTON|contador_duracion\(7) & ((\INST_BOTON|contador_duracion[6]~40\) # (GND)))
-- \INST_BOTON|contador_duracion[7]~42\ = CARRY((!\INST_BOTON|contador_duracion[6]~40\) # (!\INST_BOTON|contador_duracion\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \INST_BOTON|contador_duracion\(7),
	datad => VCC,
	cin => \INST_BOTON|contador_duracion[6]~40\,
	combout => \INST_BOTON|contador_duracion[7]~41_combout\,
	cout => \INST_BOTON|contador_duracion[7]~42\);

-- Location: FF_X32_Y25_N21
\INST_BOTON|contador_duracion[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \reloj_50mhz~inputclkctrl_outclk\,
	d => \INST_BOTON|contador_duracion[7]~41_combout\,
	sclr => \INST_BOTON|ALT_INV_boton_estable~q\,
	ena => \INST_BOTON|contador_duracion[26]~64_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST_BOTON|contador_duracion\(7));

-- Location: LCCOMB_X32_Y25_N22
\INST_BOTON|contador_duracion[8]~43\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST_BOTON|contador_duracion[8]~43_combout\ = (\INST_BOTON|contador_duracion\(8) & (\INST_BOTON|contador_duracion[7]~42\ $ (GND))) # (!\INST_BOTON|contador_duracion\(8) & (!\INST_BOTON|contador_duracion[7]~42\ & VCC))
-- \INST_BOTON|contador_duracion[8]~44\ = CARRY((\INST_BOTON|contador_duracion\(8) & !\INST_BOTON|contador_duracion[7]~42\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \INST_BOTON|contador_duracion\(8),
	datad => VCC,
	cin => \INST_BOTON|contador_duracion[7]~42\,
	combout => \INST_BOTON|contador_duracion[8]~43_combout\,
	cout => \INST_BOTON|contador_duracion[8]~44\);

-- Location: LCCOMB_X32_Y25_N4
\INST_BOTON|contador_duracion[8]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST_BOTON|contador_duracion[8]~feeder_combout\ = \INST_BOTON|contador_duracion[8]~43_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \INST_BOTON|contador_duracion[8]~43_combout\,
	combout => \INST_BOTON|contador_duracion[8]~feeder_combout\);

-- Location: FF_X32_Y25_N5
\INST_BOTON|contador_duracion[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \reloj_50mhz~inputclkctrl_outclk\,
	d => \INST_BOTON|contador_duracion[8]~feeder_combout\,
	sclr => \INST_BOTON|ALT_INV_boton_estable~q\,
	ena => \INST_BOTON|contador_duracion[26]~64_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST_BOTON|contador_duracion\(8));

-- Location: LCCOMB_X32_Y25_N24
\INST_BOTON|contador_duracion[9]~45\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST_BOTON|contador_duracion[9]~45_combout\ = (\INST_BOTON|contador_duracion\(9) & (!\INST_BOTON|contador_duracion[8]~44\)) # (!\INST_BOTON|contador_duracion\(9) & ((\INST_BOTON|contador_duracion[8]~44\) # (GND)))
-- \INST_BOTON|contador_duracion[9]~46\ = CARRY((!\INST_BOTON|contador_duracion[8]~44\) # (!\INST_BOTON|contador_duracion\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \INST_BOTON|contador_duracion\(9),
	datad => VCC,
	cin => \INST_BOTON|contador_duracion[8]~44\,
	combout => \INST_BOTON|contador_duracion[9]~45_combout\,
	cout => \INST_BOTON|contador_duracion[9]~46\);

-- Location: FF_X32_Y25_N25
\INST_BOTON|contador_duracion[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \reloj_50mhz~inputclkctrl_outclk\,
	d => \INST_BOTON|contador_duracion[9]~45_combout\,
	sclr => \INST_BOTON|ALT_INV_boton_estable~q\,
	ena => \INST_BOTON|contador_duracion[26]~64_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST_BOTON|contador_duracion\(9));

-- Location: LCCOMB_X32_Y25_N26
\INST_BOTON|contador_duracion[10]~47\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST_BOTON|contador_duracion[10]~47_combout\ = (\INST_BOTON|contador_duracion\(10) & (\INST_BOTON|contador_duracion[9]~46\ $ (GND))) # (!\INST_BOTON|contador_duracion\(10) & (!\INST_BOTON|contador_duracion[9]~46\ & VCC))
-- \INST_BOTON|contador_duracion[10]~48\ = CARRY((\INST_BOTON|contador_duracion\(10) & !\INST_BOTON|contador_duracion[9]~46\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \INST_BOTON|contador_duracion\(10),
	datad => VCC,
	cin => \INST_BOTON|contador_duracion[9]~46\,
	combout => \INST_BOTON|contador_duracion[10]~47_combout\,
	cout => \INST_BOTON|contador_duracion[10]~48\);

-- Location: FF_X32_Y25_N27
\INST_BOTON|contador_duracion[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \reloj_50mhz~inputclkctrl_outclk\,
	d => \INST_BOTON|contador_duracion[10]~47_combout\,
	sclr => \INST_BOTON|ALT_INV_boton_estable~q\,
	ena => \INST_BOTON|contador_duracion[26]~64_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST_BOTON|contador_duracion\(10));

-- Location: LCCOMB_X32_Y25_N28
\INST_BOTON|contador_duracion[11]~49\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST_BOTON|contador_duracion[11]~49_combout\ = (\INST_BOTON|contador_duracion\(11) & (!\INST_BOTON|contador_duracion[10]~48\)) # (!\INST_BOTON|contador_duracion\(11) & ((\INST_BOTON|contador_duracion[10]~48\) # (GND)))
-- \INST_BOTON|contador_duracion[11]~50\ = CARRY((!\INST_BOTON|contador_duracion[10]~48\) # (!\INST_BOTON|contador_duracion\(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \INST_BOTON|contador_duracion\(11),
	datad => VCC,
	cin => \INST_BOTON|contador_duracion[10]~48\,
	combout => \INST_BOTON|contador_duracion[11]~49_combout\,
	cout => \INST_BOTON|contador_duracion[11]~50\);

-- Location: FF_X32_Y25_N29
\INST_BOTON|contador_duracion[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \reloj_50mhz~inputclkctrl_outclk\,
	d => \INST_BOTON|contador_duracion[11]~49_combout\,
	sclr => \INST_BOTON|ALT_INV_boton_estable~q\,
	ena => \INST_BOTON|contador_duracion[26]~64_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST_BOTON|contador_duracion\(11));

-- Location: LCCOMB_X32_Y25_N30
\INST_BOTON|contador_duracion[12]~51\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST_BOTON|contador_duracion[12]~51_combout\ = (\INST_BOTON|contador_duracion\(12) & (\INST_BOTON|contador_duracion[11]~50\ $ (GND))) # (!\INST_BOTON|contador_duracion\(12) & (!\INST_BOTON|contador_duracion[11]~50\ & VCC))
-- \INST_BOTON|contador_duracion[12]~52\ = CARRY((\INST_BOTON|contador_duracion\(12) & !\INST_BOTON|contador_duracion[11]~50\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \INST_BOTON|contador_duracion\(12),
	datad => VCC,
	cin => \INST_BOTON|contador_duracion[11]~50\,
	combout => \INST_BOTON|contador_duracion[12]~51_combout\,
	cout => \INST_BOTON|contador_duracion[12]~52\);

-- Location: FF_X32_Y25_N31
\INST_BOTON|contador_duracion[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \reloj_50mhz~inputclkctrl_outclk\,
	d => \INST_BOTON|contador_duracion[12]~51_combout\,
	sclr => \INST_BOTON|ALT_INV_boton_estable~q\,
	ena => \INST_BOTON|contador_duracion[26]~64_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST_BOTON|contador_duracion\(12));

-- Location: LCCOMB_X32_Y24_N0
\INST_BOTON|contador_duracion[13]~53\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST_BOTON|contador_duracion[13]~53_combout\ = (\INST_BOTON|contador_duracion\(13) & (!\INST_BOTON|contador_duracion[12]~52\)) # (!\INST_BOTON|contador_duracion\(13) & ((\INST_BOTON|contador_duracion[12]~52\) # (GND)))
-- \INST_BOTON|contador_duracion[13]~54\ = CARRY((!\INST_BOTON|contador_duracion[12]~52\) # (!\INST_BOTON|contador_duracion\(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \INST_BOTON|contador_duracion\(13),
	datad => VCC,
	cin => \INST_BOTON|contador_duracion[12]~52\,
	combout => \INST_BOTON|contador_duracion[13]~53_combout\,
	cout => \INST_BOTON|contador_duracion[13]~54\);

-- Location: FF_X32_Y24_N1
\INST_BOTON|contador_duracion[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \reloj_50mhz~inputclkctrl_outclk\,
	d => \INST_BOTON|contador_duracion[13]~53_combout\,
	sclr => \INST_BOTON|ALT_INV_boton_estable~q\,
	ena => \INST_BOTON|contador_duracion[26]~64_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST_BOTON|contador_duracion\(13));

-- Location: LCCOMB_X32_Y24_N2
\INST_BOTON|contador_duracion[14]~55\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST_BOTON|contador_duracion[14]~55_combout\ = (\INST_BOTON|contador_duracion\(14) & (\INST_BOTON|contador_duracion[13]~54\ $ (GND))) # (!\INST_BOTON|contador_duracion\(14) & (!\INST_BOTON|contador_duracion[13]~54\ & VCC))
-- \INST_BOTON|contador_duracion[14]~56\ = CARRY((\INST_BOTON|contador_duracion\(14) & !\INST_BOTON|contador_duracion[13]~54\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \INST_BOTON|contador_duracion\(14),
	datad => VCC,
	cin => \INST_BOTON|contador_duracion[13]~54\,
	combout => \INST_BOTON|contador_duracion[14]~55_combout\,
	cout => \INST_BOTON|contador_duracion[14]~56\);

-- Location: FF_X32_Y24_N3
\INST_BOTON|contador_duracion[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \reloj_50mhz~inputclkctrl_outclk\,
	d => \INST_BOTON|contador_duracion[14]~55_combout\,
	sclr => \INST_BOTON|ALT_INV_boton_estable~q\,
	ena => \INST_BOTON|contador_duracion[26]~64_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST_BOTON|contador_duracion\(14));

-- Location: LCCOMB_X32_Y24_N4
\INST_BOTON|contador_duracion[15]~57\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST_BOTON|contador_duracion[15]~57_combout\ = (\INST_BOTON|contador_duracion\(15) & (!\INST_BOTON|contador_duracion[14]~56\)) # (!\INST_BOTON|contador_duracion\(15) & ((\INST_BOTON|contador_duracion[14]~56\) # (GND)))
-- \INST_BOTON|contador_duracion[15]~58\ = CARRY((!\INST_BOTON|contador_duracion[14]~56\) # (!\INST_BOTON|contador_duracion\(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \INST_BOTON|contador_duracion\(15),
	datad => VCC,
	cin => \INST_BOTON|contador_duracion[14]~56\,
	combout => \INST_BOTON|contador_duracion[15]~57_combout\,
	cout => \INST_BOTON|contador_duracion[15]~58\);

-- Location: FF_X32_Y24_N5
\INST_BOTON|contador_duracion[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \reloj_50mhz~inputclkctrl_outclk\,
	d => \INST_BOTON|contador_duracion[15]~57_combout\,
	sclr => \INST_BOTON|ALT_INV_boton_estable~q\,
	ena => \INST_BOTON|contador_duracion[26]~64_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST_BOTON|contador_duracion\(15));

-- Location: LCCOMB_X32_Y24_N6
\INST_BOTON|contador_duracion[16]~59\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST_BOTON|contador_duracion[16]~59_combout\ = (\INST_BOTON|contador_duracion\(16) & (\INST_BOTON|contador_duracion[15]~58\ $ (GND))) # (!\INST_BOTON|contador_duracion\(16) & (!\INST_BOTON|contador_duracion[15]~58\ & VCC))
-- \INST_BOTON|contador_duracion[16]~60\ = CARRY((\INST_BOTON|contador_duracion\(16) & !\INST_BOTON|contador_duracion[15]~58\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \INST_BOTON|contador_duracion\(16),
	datad => VCC,
	cin => \INST_BOTON|contador_duracion[15]~58\,
	combout => \INST_BOTON|contador_duracion[16]~59_combout\,
	cout => \INST_BOTON|contador_duracion[16]~60\);

-- Location: FF_X32_Y24_N7
\INST_BOTON|contador_duracion[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \reloj_50mhz~inputclkctrl_outclk\,
	d => \INST_BOTON|contador_duracion[16]~59_combout\,
	sclr => \INST_BOTON|ALT_INV_boton_estable~q\,
	ena => \INST_BOTON|contador_duracion[26]~64_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST_BOTON|contador_duracion\(16));

-- Location: LCCOMB_X32_Y24_N8
\INST_BOTON|contador_duracion[17]~61\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST_BOTON|contador_duracion[17]~61_combout\ = (\INST_BOTON|contador_duracion\(17) & (!\INST_BOTON|contador_duracion[16]~60\)) # (!\INST_BOTON|contador_duracion\(17) & ((\INST_BOTON|contador_duracion[16]~60\) # (GND)))
-- \INST_BOTON|contador_duracion[17]~62\ = CARRY((!\INST_BOTON|contador_duracion[16]~60\) # (!\INST_BOTON|contador_duracion\(17)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \INST_BOTON|contador_duracion\(17),
	datad => VCC,
	cin => \INST_BOTON|contador_duracion[16]~60\,
	combout => \INST_BOTON|contador_duracion[17]~61_combout\,
	cout => \INST_BOTON|contador_duracion[17]~62\);

-- Location: FF_X32_Y24_N9
\INST_BOTON|contador_duracion[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \reloj_50mhz~inputclkctrl_outclk\,
	d => \INST_BOTON|contador_duracion[17]~61_combout\,
	sclr => \INST_BOTON|ALT_INV_boton_estable~q\,
	ena => \INST_BOTON|contador_duracion[26]~64_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST_BOTON|contador_duracion\(17));

-- Location: LCCOMB_X32_Y24_N10
\INST_BOTON|contador_duracion[18]~65\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST_BOTON|contador_duracion[18]~65_combout\ = (\INST_BOTON|contador_duracion\(18) & (\INST_BOTON|contador_duracion[17]~62\ $ (GND))) # (!\INST_BOTON|contador_duracion\(18) & (!\INST_BOTON|contador_duracion[17]~62\ & VCC))
-- \INST_BOTON|contador_duracion[18]~66\ = CARRY((\INST_BOTON|contador_duracion\(18) & !\INST_BOTON|contador_duracion[17]~62\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \INST_BOTON|contador_duracion\(18),
	datad => VCC,
	cin => \INST_BOTON|contador_duracion[17]~62\,
	combout => \INST_BOTON|contador_duracion[18]~65_combout\,
	cout => \INST_BOTON|contador_duracion[18]~66\);

-- Location: FF_X32_Y24_N11
\INST_BOTON|contador_duracion[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \reloj_50mhz~inputclkctrl_outclk\,
	d => \INST_BOTON|contador_duracion[18]~65_combout\,
	sclr => \INST_BOTON|ALT_INV_boton_estable~q\,
	ena => \INST_BOTON|contador_duracion[26]~64_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST_BOTON|contador_duracion\(18));

-- Location: LCCOMB_X32_Y24_N12
\INST_BOTON|contador_duracion[19]~67\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST_BOTON|contador_duracion[19]~67_combout\ = (\INST_BOTON|contador_duracion\(19) & (!\INST_BOTON|contador_duracion[18]~66\)) # (!\INST_BOTON|contador_duracion\(19) & ((\INST_BOTON|contador_duracion[18]~66\) # (GND)))
-- \INST_BOTON|contador_duracion[19]~68\ = CARRY((!\INST_BOTON|contador_duracion[18]~66\) # (!\INST_BOTON|contador_duracion\(19)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \INST_BOTON|contador_duracion\(19),
	datad => VCC,
	cin => \INST_BOTON|contador_duracion[18]~66\,
	combout => \INST_BOTON|contador_duracion[19]~67_combout\,
	cout => \INST_BOTON|contador_duracion[19]~68\);

-- Location: FF_X32_Y24_N13
\INST_BOTON|contador_duracion[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \reloj_50mhz~inputclkctrl_outclk\,
	d => \INST_BOTON|contador_duracion[19]~67_combout\,
	sclr => \INST_BOTON|ALT_INV_boton_estable~q\,
	ena => \INST_BOTON|contador_duracion[26]~64_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST_BOTON|contador_duracion\(19));

-- Location: LCCOMB_X32_Y24_N14
\INST_BOTON|contador_duracion[20]~69\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST_BOTON|contador_duracion[20]~69_combout\ = (\INST_BOTON|contador_duracion\(20) & (\INST_BOTON|contador_duracion[19]~68\ $ (GND))) # (!\INST_BOTON|contador_duracion\(20) & (!\INST_BOTON|contador_duracion[19]~68\ & VCC))
-- \INST_BOTON|contador_duracion[20]~70\ = CARRY((\INST_BOTON|contador_duracion\(20) & !\INST_BOTON|contador_duracion[19]~68\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \INST_BOTON|contador_duracion\(20),
	datad => VCC,
	cin => \INST_BOTON|contador_duracion[19]~68\,
	combout => \INST_BOTON|contador_duracion[20]~69_combout\,
	cout => \INST_BOTON|contador_duracion[20]~70\);

-- Location: FF_X32_Y24_N15
\INST_BOTON|contador_duracion[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \reloj_50mhz~inputclkctrl_outclk\,
	d => \INST_BOTON|contador_duracion[20]~69_combout\,
	sclr => \INST_BOTON|ALT_INV_boton_estable~q\,
	ena => \INST_BOTON|contador_duracion[26]~64_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST_BOTON|contador_duracion\(20));

-- Location: LCCOMB_X32_Y24_N16
\INST_BOTON|contador_duracion[21]~71\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST_BOTON|contador_duracion[21]~71_combout\ = (\INST_BOTON|contador_duracion\(21) & (!\INST_BOTON|contador_duracion[20]~70\)) # (!\INST_BOTON|contador_duracion\(21) & ((\INST_BOTON|contador_duracion[20]~70\) # (GND)))
-- \INST_BOTON|contador_duracion[21]~72\ = CARRY((!\INST_BOTON|contador_duracion[20]~70\) # (!\INST_BOTON|contador_duracion\(21)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \INST_BOTON|contador_duracion\(21),
	datad => VCC,
	cin => \INST_BOTON|contador_duracion[20]~70\,
	combout => \INST_BOTON|contador_duracion[21]~71_combout\,
	cout => \INST_BOTON|contador_duracion[21]~72\);

-- Location: FF_X32_Y24_N17
\INST_BOTON|contador_duracion[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \reloj_50mhz~inputclkctrl_outclk\,
	d => \INST_BOTON|contador_duracion[21]~71_combout\,
	sclr => \INST_BOTON|ALT_INV_boton_estable~q\,
	ena => \INST_BOTON|contador_duracion[26]~64_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST_BOTON|contador_duracion\(21));

-- Location: LCCOMB_X32_Y24_N18
\INST_BOTON|contador_duracion[22]~73\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST_BOTON|contador_duracion[22]~73_combout\ = (\INST_BOTON|contador_duracion\(22) & (\INST_BOTON|contador_duracion[21]~72\ $ (GND))) # (!\INST_BOTON|contador_duracion\(22) & (!\INST_BOTON|contador_duracion[21]~72\ & VCC))
-- \INST_BOTON|contador_duracion[22]~74\ = CARRY((\INST_BOTON|contador_duracion\(22) & !\INST_BOTON|contador_duracion[21]~72\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \INST_BOTON|contador_duracion\(22),
	datad => VCC,
	cin => \INST_BOTON|contador_duracion[21]~72\,
	combout => \INST_BOTON|contador_duracion[22]~73_combout\,
	cout => \INST_BOTON|contador_duracion[22]~74\);

-- Location: FF_X32_Y24_N19
\INST_BOTON|contador_duracion[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \reloj_50mhz~inputclkctrl_outclk\,
	d => \INST_BOTON|contador_duracion[22]~73_combout\,
	sclr => \INST_BOTON|ALT_INV_boton_estable~q\,
	ena => \INST_BOTON|contador_duracion[26]~64_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST_BOTON|contador_duracion\(22));

-- Location: LCCOMB_X32_Y24_N20
\INST_BOTON|contador_duracion[23]~75\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST_BOTON|contador_duracion[23]~75_combout\ = (\INST_BOTON|contador_duracion\(23) & (!\INST_BOTON|contador_duracion[22]~74\)) # (!\INST_BOTON|contador_duracion\(23) & ((\INST_BOTON|contador_duracion[22]~74\) # (GND)))
-- \INST_BOTON|contador_duracion[23]~76\ = CARRY((!\INST_BOTON|contador_duracion[22]~74\) # (!\INST_BOTON|contador_duracion\(23)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \INST_BOTON|contador_duracion\(23),
	datad => VCC,
	cin => \INST_BOTON|contador_duracion[22]~74\,
	combout => \INST_BOTON|contador_duracion[23]~75_combout\,
	cout => \INST_BOTON|contador_duracion[23]~76\);

-- Location: FF_X32_Y24_N21
\INST_BOTON|contador_duracion[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \reloj_50mhz~inputclkctrl_outclk\,
	d => \INST_BOTON|contador_duracion[23]~75_combout\,
	sclr => \INST_BOTON|ALT_INV_boton_estable~q\,
	ena => \INST_BOTON|contador_duracion[26]~64_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST_BOTON|contador_duracion\(23));

-- Location: LCCOMB_X32_Y24_N22
\INST_BOTON|contador_duracion[24]~77\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST_BOTON|contador_duracion[24]~77_combout\ = (\INST_BOTON|contador_duracion\(24) & (\INST_BOTON|contador_duracion[23]~76\ $ (GND))) # (!\INST_BOTON|contador_duracion\(24) & (!\INST_BOTON|contador_duracion[23]~76\ & VCC))
-- \INST_BOTON|contador_duracion[24]~78\ = CARRY((\INST_BOTON|contador_duracion\(24) & !\INST_BOTON|contador_duracion[23]~76\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \INST_BOTON|contador_duracion\(24),
	datad => VCC,
	cin => \INST_BOTON|contador_duracion[23]~76\,
	combout => \INST_BOTON|contador_duracion[24]~77_combout\,
	cout => \INST_BOTON|contador_duracion[24]~78\);

-- Location: FF_X32_Y24_N23
\INST_BOTON|contador_duracion[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \reloj_50mhz~inputclkctrl_outclk\,
	d => \INST_BOTON|contador_duracion[24]~77_combout\,
	sclr => \INST_BOTON|ALT_INV_boton_estable~q\,
	ena => \INST_BOTON|contador_duracion[26]~64_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST_BOTON|contador_duracion\(24));

-- Location: FF_X32_Y24_N25
\INST_BOTON|contador_duracion[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \reloj_50mhz~inputclkctrl_outclk\,
	d => \INST_BOTON|contador_duracion[25]~79_combout\,
	sclr => \INST_BOTON|ALT_INV_boton_estable~q\,
	ena => \INST_BOTON|contador_duracion[26]~64_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST_BOTON|contador_duracion\(25));

-- Location: LCCOMB_X31_Y24_N16
\INST_BOTON|pulsacion_larga~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST_BOTON|pulsacion_larga~0_combout\ = (\INST_BOTON|boton_estable~q\ & \INST_BOTON|contador_duracion\(26))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \INST_BOTON|boton_estable~q\,
	datad => \INST_BOTON|contador_duracion\(26),
	combout => \INST_BOTON|pulsacion_larga~0_combout\);

-- Location: LCCOMB_X31_Y24_N20
\INST_BOTON|pulsacion_larga~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST_BOTON|pulsacion_larga~2_combout\ = (\INST_BOTON|pulsacion_larga~1_combout\) # ((\INST_BOTON|pulsacion_larga~0_combout\ & ((\INST_BOTON|contador_duracion\(25)) # (!\INST_BOTON|LessThan2~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INST_BOTON|pulsacion_larga~1_combout\,
	datab => \INST_BOTON|contador_duracion\(25),
	datac => \INST_BOTON|pulsacion_larga~0_combout\,
	datad => \INST_BOTON|LessThan2~6_combout\,
	combout => \INST_BOTON|pulsacion_larga~2_combout\);

-- Location: FF_X31_Y24_N21
\INST_BOTON|pulsacion_larga\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \reloj_50mhz~inputclkctrl_outclk\,
	d => \INST_BOTON|pulsacion_larga~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST_BOTON|pulsacion_larga~q\);

-- Location: LCCOMB_X31_Y25_N24
\INST_BOTON|reinicio_temporizador~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST_BOTON|reinicio_temporizador~0_combout\ = (!\INST_BOTON|pulsacion_larga~q\ & (\INST_BOTON|pulsacion_larga~0_combout\ & ((\INST_BOTON|contador_duracion\(25)) # (!\INST_BOTON|LessThan2~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INST_BOTON|contador_duracion\(25),
	datab => \INST_BOTON|pulsacion_larga~q\,
	datac => \INST_BOTON|LessThan2~6_combout\,
	datad => \INST_BOTON|pulsacion_larga~0_combout\,
	combout => \INST_BOTON|reinicio_temporizador~0_combout\);

-- Location: LCCOMB_X31_Y25_N26
\INST_BOTON|estado_marcha~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST_BOTON|estado_marcha~1_combout\ = (\INST_BOTON|estado_marcha~0_combout\ & (\INST_BOTON|pulsacion_larga~q\ $ ((!\INST_BOTON|estado_marcha~q\)))) # (!\INST_BOTON|estado_marcha~0_combout\ & (((\INST_BOTON|estado_marcha~q\ & 
-- !\INST_BOTON|reinicio_temporizador~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000001011010010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INST_BOTON|estado_marcha~0_combout\,
	datab => \INST_BOTON|pulsacion_larga~q\,
	datac => \INST_BOTON|estado_marcha~q\,
	datad => \INST_BOTON|reinicio_temporizador~0_combout\,
	combout => \INST_BOTON|estado_marcha~1_combout\);

-- Location: FF_X31_Y25_N27
\INST_BOTON|estado_marcha\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \reloj_50mhz~inputclkctrl_outclk\,
	d => \INST_BOTON|estado_marcha~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST_BOTON|estado_marcha~q\);

-- Location: LCCOMB_X30_Y26_N6
\INST_DIVISOR|Add0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST_DIVISOR|Add0~0_combout\ = \INST_DIVISOR|contador_ciclos\(0) $ (VCC)
-- \INST_DIVISOR|Add0~1\ = CARRY(\INST_DIVISOR|contador_ciclos\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INST_DIVISOR|contador_ciclos\(0),
	datad => VCC,
	combout => \INST_DIVISOR|Add0~0_combout\,
	cout => \INST_DIVISOR|Add0~1\);

-- Location: LCCOMB_X31_Y25_N0
\INST_BOTON|reinicio_temporizador~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST_BOTON|reinicio_temporizador~feeder_combout\ = \INST_BOTON|reinicio_temporizador~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \INST_BOTON|reinicio_temporizador~0_combout\,
	combout => \INST_BOTON|reinicio_temporizador~feeder_combout\);

-- Location: FF_X31_Y25_N1
\INST_BOTON|reinicio_temporizador\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \reloj_50mhz~inputclkctrl_outclk\,
	d => \INST_BOTON|reinicio_temporizador~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST_BOTON|reinicio_temporizador~q\);

-- Location: FF_X30_Y26_N7
\INST_DIVISOR|contador_ciclos[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \reloj_50mhz~inputclkctrl_outclk\,
	d => \INST_DIVISOR|Add0~0_combout\,
	clrn => \INST_BOTON|ALT_INV_reinicio_temporizador~q\,
	ena => \INST_BOTON|estado_marcha~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST_DIVISOR|contador_ciclos\(0));

-- Location: LCCOMB_X30_Y26_N8
\INST_DIVISOR|Add0~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST_DIVISOR|Add0~2_combout\ = (\INST_DIVISOR|contador_ciclos\(1) & (!\INST_DIVISOR|Add0~1\)) # (!\INST_DIVISOR|contador_ciclos\(1) & ((\INST_DIVISOR|Add0~1\) # (GND)))
-- \INST_DIVISOR|Add0~3\ = CARRY((!\INST_DIVISOR|Add0~1\) # (!\INST_DIVISOR|contador_ciclos\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \INST_DIVISOR|contador_ciclos\(1),
	datad => VCC,
	cin => \INST_DIVISOR|Add0~1\,
	combout => \INST_DIVISOR|Add0~2_combout\,
	cout => \INST_DIVISOR|Add0~3\);

-- Location: FF_X30_Y26_N9
\INST_DIVISOR|contador_ciclos[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \reloj_50mhz~inputclkctrl_outclk\,
	d => \INST_DIVISOR|Add0~2_combout\,
	clrn => \INST_BOTON|ALT_INV_reinicio_temporizador~q\,
	ena => \INST_BOTON|estado_marcha~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST_DIVISOR|contador_ciclos\(1));

-- Location: LCCOMB_X30_Y26_N10
\INST_DIVISOR|Add0~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST_DIVISOR|Add0~4_combout\ = (\INST_DIVISOR|contador_ciclos\(2) & (\INST_DIVISOR|Add0~3\ $ (GND))) # (!\INST_DIVISOR|contador_ciclos\(2) & (!\INST_DIVISOR|Add0~3\ & VCC))
-- \INST_DIVISOR|Add0~5\ = CARRY((\INST_DIVISOR|contador_ciclos\(2) & !\INST_DIVISOR|Add0~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \INST_DIVISOR|contador_ciclos\(2),
	datad => VCC,
	cin => \INST_DIVISOR|Add0~3\,
	combout => \INST_DIVISOR|Add0~4_combout\,
	cout => \INST_DIVISOR|Add0~5\);

-- Location: FF_X30_Y26_N11
\INST_DIVISOR|contador_ciclos[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \reloj_50mhz~inputclkctrl_outclk\,
	d => \INST_DIVISOR|Add0~4_combout\,
	clrn => \INST_BOTON|ALT_INV_reinicio_temporizador~q\,
	ena => \INST_BOTON|estado_marcha~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST_DIVISOR|contador_ciclos\(2));

-- Location: LCCOMB_X30_Y26_N12
\INST_DIVISOR|Add0~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST_DIVISOR|Add0~6_combout\ = (\INST_DIVISOR|contador_ciclos\(3) & (!\INST_DIVISOR|Add0~5\)) # (!\INST_DIVISOR|contador_ciclos\(3) & ((\INST_DIVISOR|Add0~5\) # (GND)))
-- \INST_DIVISOR|Add0~7\ = CARRY((!\INST_DIVISOR|Add0~5\) # (!\INST_DIVISOR|contador_ciclos\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \INST_DIVISOR|contador_ciclos\(3),
	datad => VCC,
	cin => \INST_DIVISOR|Add0~5\,
	combout => \INST_DIVISOR|Add0~6_combout\,
	cout => \INST_DIVISOR|Add0~7\);

-- Location: FF_X30_Y26_N13
\INST_DIVISOR|contador_ciclos[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \reloj_50mhz~inputclkctrl_outclk\,
	d => \INST_DIVISOR|Add0~6_combout\,
	clrn => \INST_BOTON|ALT_INV_reinicio_temporizador~q\,
	ena => \INST_BOTON|estado_marcha~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST_DIVISOR|contador_ciclos\(3));

-- Location: LCCOMB_X30_Y26_N14
\INST_DIVISOR|Add0~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST_DIVISOR|Add0~8_combout\ = (\INST_DIVISOR|contador_ciclos\(4) & (\INST_DIVISOR|Add0~7\ $ (GND))) # (!\INST_DIVISOR|contador_ciclos\(4) & (!\INST_DIVISOR|Add0~7\ & VCC))
-- \INST_DIVISOR|Add0~9\ = CARRY((\INST_DIVISOR|contador_ciclos\(4) & !\INST_DIVISOR|Add0~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \INST_DIVISOR|contador_ciclos\(4),
	datad => VCC,
	cin => \INST_DIVISOR|Add0~7\,
	combout => \INST_DIVISOR|Add0~8_combout\,
	cout => \INST_DIVISOR|Add0~9\);

-- Location: FF_X30_Y26_N15
\INST_DIVISOR|contador_ciclos[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \reloj_50mhz~inputclkctrl_outclk\,
	d => \INST_DIVISOR|Add0~8_combout\,
	clrn => \INST_BOTON|ALT_INV_reinicio_temporizador~q\,
	ena => \INST_BOTON|estado_marcha~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST_DIVISOR|contador_ciclos\(4));

-- Location: LCCOMB_X30_Y26_N16
\INST_DIVISOR|Add0~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST_DIVISOR|Add0~10_combout\ = (\INST_DIVISOR|contador_ciclos\(5) & (!\INST_DIVISOR|Add0~9\)) # (!\INST_DIVISOR|contador_ciclos\(5) & ((\INST_DIVISOR|Add0~9\) # (GND)))
-- \INST_DIVISOR|Add0~11\ = CARRY((!\INST_DIVISOR|Add0~9\) # (!\INST_DIVISOR|contador_ciclos\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \INST_DIVISOR|contador_ciclos\(5),
	datad => VCC,
	cin => \INST_DIVISOR|Add0~9\,
	combout => \INST_DIVISOR|Add0~10_combout\,
	cout => \INST_DIVISOR|Add0~11\);

-- Location: FF_X30_Y26_N17
\INST_DIVISOR|contador_ciclos[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \reloj_50mhz~inputclkctrl_outclk\,
	d => \INST_DIVISOR|Add0~10_combout\,
	clrn => \INST_BOTON|ALT_INV_reinicio_temporizador~q\,
	ena => \INST_BOTON|estado_marcha~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST_DIVISOR|contador_ciclos\(5));

-- Location: LCCOMB_X30_Y26_N18
\INST_DIVISOR|Add0~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST_DIVISOR|Add0~12_combout\ = (\INST_DIVISOR|contador_ciclos\(6) & (\INST_DIVISOR|Add0~11\ $ (GND))) # (!\INST_DIVISOR|contador_ciclos\(6) & (!\INST_DIVISOR|Add0~11\ & VCC))
-- \INST_DIVISOR|Add0~13\ = CARRY((\INST_DIVISOR|contador_ciclos\(6) & !\INST_DIVISOR|Add0~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \INST_DIVISOR|contador_ciclos\(6),
	datad => VCC,
	cin => \INST_DIVISOR|Add0~11\,
	combout => \INST_DIVISOR|Add0~12_combout\,
	cout => \INST_DIVISOR|Add0~13\);

-- Location: LCCOMB_X30_Y26_N4
\INST_DIVISOR|contador_ciclos~11\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST_DIVISOR|contador_ciclos~11_combout\ = (!\INST_DIVISOR|Equal0~8_combout\ & \INST_DIVISOR|Add0~12_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \INST_DIVISOR|Equal0~8_combout\,
	datad => \INST_DIVISOR|Add0~12_combout\,
	combout => \INST_DIVISOR|contador_ciclos~11_combout\);

-- Location: FF_X30_Y26_N5
\INST_DIVISOR|contador_ciclos[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \reloj_50mhz~inputclkctrl_outclk\,
	d => \INST_DIVISOR|contador_ciclos~11_combout\,
	clrn => \INST_BOTON|ALT_INV_reinicio_temporizador~q\,
	ena => \INST_BOTON|estado_marcha~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST_DIVISOR|contador_ciclos\(6));

-- Location: LCCOMB_X30_Y26_N20
\INST_DIVISOR|Add0~14\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST_DIVISOR|Add0~14_combout\ = (\INST_DIVISOR|contador_ciclos\(7) & (!\INST_DIVISOR|Add0~13\)) # (!\INST_DIVISOR|contador_ciclos\(7) & ((\INST_DIVISOR|Add0~13\) # (GND)))
-- \INST_DIVISOR|Add0~15\ = CARRY((!\INST_DIVISOR|Add0~13\) # (!\INST_DIVISOR|contador_ciclos\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \INST_DIVISOR|contador_ciclos\(7),
	datad => VCC,
	cin => \INST_DIVISOR|Add0~13\,
	combout => \INST_DIVISOR|Add0~14_combout\,
	cout => \INST_DIVISOR|Add0~15\);

-- Location: FF_X30_Y26_N21
\INST_DIVISOR|contador_ciclos[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \reloj_50mhz~inputclkctrl_outclk\,
	d => \INST_DIVISOR|Add0~14_combout\,
	clrn => \INST_BOTON|ALT_INV_reinicio_temporizador~q\,
	ena => \INST_BOTON|estado_marcha~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST_DIVISOR|contador_ciclos\(7));

-- Location: LCCOMB_X30_Y26_N22
\INST_DIVISOR|Add0~16\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST_DIVISOR|Add0~16_combout\ = (\INST_DIVISOR|contador_ciclos\(8) & (\INST_DIVISOR|Add0~15\ $ (GND))) # (!\INST_DIVISOR|contador_ciclos\(8) & (!\INST_DIVISOR|Add0~15\ & VCC))
-- \INST_DIVISOR|Add0~17\ = CARRY((\INST_DIVISOR|contador_ciclos\(8) & !\INST_DIVISOR|Add0~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \INST_DIVISOR|contador_ciclos\(8),
	datad => VCC,
	cin => \INST_DIVISOR|Add0~15\,
	combout => \INST_DIVISOR|Add0~16_combout\,
	cout => \INST_DIVISOR|Add0~17\);

-- Location: FF_X30_Y26_N23
\INST_DIVISOR|contador_ciclos[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \reloj_50mhz~inputclkctrl_outclk\,
	d => \INST_DIVISOR|Add0~16_combout\,
	clrn => \INST_BOTON|ALT_INV_reinicio_temporizador~q\,
	ena => \INST_BOTON|estado_marcha~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST_DIVISOR|contador_ciclos\(8));

-- Location: LCCOMB_X30_Y26_N24
\INST_DIVISOR|Add0~18\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST_DIVISOR|Add0~18_combout\ = (\INST_DIVISOR|contador_ciclos\(9) & (!\INST_DIVISOR|Add0~17\)) # (!\INST_DIVISOR|contador_ciclos\(9) & ((\INST_DIVISOR|Add0~17\) # (GND)))
-- \INST_DIVISOR|Add0~19\ = CARRY((!\INST_DIVISOR|Add0~17\) # (!\INST_DIVISOR|contador_ciclos\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \INST_DIVISOR|contador_ciclos\(9),
	datad => VCC,
	cin => \INST_DIVISOR|Add0~17\,
	combout => \INST_DIVISOR|Add0~18_combout\,
	cout => \INST_DIVISOR|Add0~19\);

-- Location: FF_X30_Y26_N25
\INST_DIVISOR|contador_ciclos[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \reloj_50mhz~inputclkctrl_outclk\,
	d => \INST_DIVISOR|Add0~18_combout\,
	clrn => \INST_BOTON|ALT_INV_reinicio_temporizador~q\,
	ena => \INST_BOTON|estado_marcha~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST_DIVISOR|contador_ciclos\(9));

-- Location: LCCOMB_X30_Y26_N2
\INST_DIVISOR|Equal0~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST_DIVISOR|Equal0~5_combout\ = (!\INST_DIVISOR|contador_ciclos\(8) & (!\INST_DIVISOR|contador_ciclos\(7) & (!\INST_DIVISOR|contador_ciclos\(6) & !\INST_DIVISOR|contador_ciclos\(9))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INST_DIVISOR|contador_ciclos\(8),
	datab => \INST_DIVISOR|contador_ciclos\(7),
	datac => \INST_DIVISOR|contador_ciclos\(6),
	datad => \INST_DIVISOR|contador_ciclos\(9),
	combout => \INST_DIVISOR|Equal0~5_combout\);

-- Location: LCCOMB_X31_Y26_N20
\INST_DIVISOR|Equal0~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST_DIVISOR|Equal0~7_combout\ = (\INST_DIVISOR|contador_ciclos\(0) & \INST_DIVISOR|contador_ciclos\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \INST_DIVISOR|contador_ciclos\(0),
	datad => \INST_DIVISOR|contador_ciclos\(1),
	combout => \INST_DIVISOR|Equal0~7_combout\);

-- Location: LCCOMB_X30_Y26_N0
\INST_DIVISOR|Equal0~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST_DIVISOR|Equal0~6_combout\ = (\INST_DIVISOR|contador_ciclos\(2) & (\INST_DIVISOR|contador_ciclos\(5) & (\INST_DIVISOR|contador_ciclos\(4) & \INST_DIVISOR|contador_ciclos\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INST_DIVISOR|contador_ciclos\(2),
	datab => \INST_DIVISOR|contador_ciclos\(5),
	datac => \INST_DIVISOR|contador_ciclos\(4),
	datad => \INST_DIVISOR|contador_ciclos\(3),
	combout => \INST_DIVISOR|Equal0~6_combout\);

-- Location: LCCOMB_X30_Y26_N26
\INST_DIVISOR|Add0~20\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST_DIVISOR|Add0~20_combout\ = (\INST_DIVISOR|contador_ciclos\(10) & (\INST_DIVISOR|Add0~19\ $ (GND))) # (!\INST_DIVISOR|contador_ciclos\(10) & (!\INST_DIVISOR|Add0~19\ & VCC))
-- \INST_DIVISOR|Add0~21\ = CARRY((\INST_DIVISOR|contador_ciclos\(10) & !\INST_DIVISOR|Add0~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \INST_DIVISOR|contador_ciclos\(10),
	datad => VCC,
	cin => \INST_DIVISOR|Add0~19\,
	combout => \INST_DIVISOR|Add0~20_combout\,
	cout => \INST_DIVISOR|Add0~21\);

-- Location: FF_X30_Y26_N27
\INST_DIVISOR|contador_ciclos[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \reloj_50mhz~inputclkctrl_outclk\,
	d => \INST_DIVISOR|Add0~20_combout\,
	clrn => \INST_BOTON|ALT_INV_reinicio_temporizador~q\,
	ena => \INST_BOTON|estado_marcha~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST_DIVISOR|contador_ciclos\(10));

-- Location: LCCOMB_X30_Y26_N28
\INST_DIVISOR|Add0~22\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST_DIVISOR|Add0~22_combout\ = (\INST_DIVISOR|contador_ciclos\(11) & (!\INST_DIVISOR|Add0~21\)) # (!\INST_DIVISOR|contador_ciclos\(11) & ((\INST_DIVISOR|Add0~21\) # (GND)))
-- \INST_DIVISOR|Add0~23\ = CARRY((!\INST_DIVISOR|Add0~21\) # (!\INST_DIVISOR|contador_ciclos\(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \INST_DIVISOR|contador_ciclos\(11),
	datad => VCC,
	cin => \INST_DIVISOR|Add0~21\,
	combout => \INST_DIVISOR|Add0~22_combout\,
	cout => \INST_DIVISOR|Add0~23\);

-- Location: LCCOMB_X31_Y25_N12
\INST_DIVISOR|contador_ciclos~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST_DIVISOR|contador_ciclos~10_combout\ = (!\INST_DIVISOR|Equal0~8_combout\ & \INST_DIVISOR|Add0~22_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \INST_DIVISOR|Equal0~8_combout\,
	datac => \INST_DIVISOR|Add0~22_combout\,
	combout => \INST_DIVISOR|contador_ciclos~10_combout\);

-- Location: FF_X31_Y25_N13
\INST_DIVISOR|contador_ciclos[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \reloj_50mhz~inputclkctrl_outclk\,
	d => \INST_DIVISOR|contador_ciclos~10_combout\,
	clrn => \INST_BOTON|ALT_INV_reinicio_temporizador~q\,
	ena => \INST_BOTON|estado_marcha~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST_DIVISOR|contador_ciclos\(11));

-- Location: LCCOMB_X30_Y26_N30
\INST_DIVISOR|Add0~24\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST_DIVISOR|Add0~24_combout\ = (\INST_DIVISOR|contador_ciclos\(12) & (\INST_DIVISOR|Add0~23\ $ (GND))) # (!\INST_DIVISOR|contador_ciclos\(12) & (!\INST_DIVISOR|Add0~23\ & VCC))
-- \INST_DIVISOR|Add0~25\ = CARRY((\INST_DIVISOR|contador_ciclos\(12) & !\INST_DIVISOR|Add0~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \INST_DIVISOR|contador_ciclos\(12),
	datad => VCC,
	cin => \INST_DIVISOR|Add0~23\,
	combout => \INST_DIVISOR|Add0~24_combout\,
	cout => \INST_DIVISOR|Add0~25\);

-- Location: LCCOMB_X31_Y25_N22
\INST_DIVISOR|contador_ciclos~9\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST_DIVISOR|contador_ciclos~9_combout\ = (!\INST_DIVISOR|Equal0~8_combout\ & \INST_DIVISOR|Add0~24_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \INST_DIVISOR|Equal0~8_combout\,
	datad => \INST_DIVISOR|Add0~24_combout\,
	combout => \INST_DIVISOR|contador_ciclos~9_combout\);

-- Location: FF_X31_Y25_N23
\INST_DIVISOR|contador_ciclos[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \reloj_50mhz~inputclkctrl_outclk\,
	d => \INST_DIVISOR|contador_ciclos~9_combout\,
	clrn => \INST_BOTON|ALT_INV_reinicio_temporizador~q\,
	ena => \INST_BOTON|estado_marcha~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST_DIVISOR|contador_ciclos\(12));

-- Location: LCCOMB_X30_Y25_N0
\INST_DIVISOR|Add0~26\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST_DIVISOR|Add0~26_combout\ = (\INST_DIVISOR|contador_ciclos\(13) & (!\INST_DIVISOR|Add0~25\)) # (!\INST_DIVISOR|contador_ciclos\(13) & ((\INST_DIVISOR|Add0~25\) # (GND)))
-- \INST_DIVISOR|Add0~27\ = CARRY((!\INST_DIVISOR|Add0~25\) # (!\INST_DIVISOR|contador_ciclos\(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \INST_DIVISOR|contador_ciclos\(13),
	datad => VCC,
	cin => \INST_DIVISOR|Add0~25\,
	combout => \INST_DIVISOR|Add0~26_combout\,
	cout => \INST_DIVISOR|Add0~27\);

-- Location: LCCOMB_X30_Y25_N30
\INST_DIVISOR|contador_ciclos~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST_DIVISOR|contador_ciclos~8_combout\ = (!\INST_DIVISOR|Equal0~8_combout\ & \INST_DIVISOR|Add0~26_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \INST_DIVISOR|Equal0~8_combout\,
	datad => \INST_DIVISOR|Add0~26_combout\,
	combout => \INST_DIVISOR|contador_ciclos~8_combout\);

-- Location: FF_X30_Y25_N31
\INST_DIVISOR|contador_ciclos[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \reloj_50mhz~inputclkctrl_outclk\,
	d => \INST_DIVISOR|contador_ciclos~8_combout\,
	clrn => \INST_BOTON|ALT_INV_reinicio_temporizador~q\,
	ena => \INST_BOTON|estado_marcha~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST_DIVISOR|contador_ciclos\(13));

-- Location: LCCOMB_X30_Y25_N2
\INST_DIVISOR|Add0~28\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST_DIVISOR|Add0~28_combout\ = (\INST_DIVISOR|contador_ciclos\(14) & (\INST_DIVISOR|Add0~27\ $ (GND))) # (!\INST_DIVISOR|contador_ciclos\(14) & (!\INST_DIVISOR|Add0~27\ & VCC))
-- \INST_DIVISOR|Add0~29\ = CARRY((\INST_DIVISOR|contador_ciclos\(14) & !\INST_DIVISOR|Add0~27\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \INST_DIVISOR|contador_ciclos\(14),
	datad => VCC,
	cin => \INST_DIVISOR|Add0~27\,
	combout => \INST_DIVISOR|Add0~28_combout\,
	cout => \INST_DIVISOR|Add0~29\);

-- Location: LCCOMB_X31_Y25_N8
\INST_DIVISOR|contador_ciclos~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST_DIVISOR|contador_ciclos~7_combout\ = (!\INST_DIVISOR|Equal0~8_combout\ & \INST_DIVISOR|Add0~28_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \INST_DIVISOR|Equal0~8_combout\,
	datad => \INST_DIVISOR|Add0~28_combout\,
	combout => \INST_DIVISOR|contador_ciclos~7_combout\);

-- Location: FF_X31_Y25_N9
\INST_DIVISOR|contador_ciclos[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \reloj_50mhz~inputclkctrl_outclk\,
	d => \INST_DIVISOR|contador_ciclos~7_combout\,
	clrn => \INST_BOTON|ALT_INV_reinicio_temporizador~q\,
	ena => \INST_BOTON|estado_marcha~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST_DIVISOR|contador_ciclos\(14));

-- Location: LCCOMB_X30_Y25_N4
\INST_DIVISOR|Add0~30\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST_DIVISOR|Add0~30_combout\ = (\INST_DIVISOR|contador_ciclos\(15) & (!\INST_DIVISOR|Add0~29\)) # (!\INST_DIVISOR|contador_ciclos\(15) & ((\INST_DIVISOR|Add0~29\) # (GND)))
-- \INST_DIVISOR|Add0~31\ = CARRY((!\INST_DIVISOR|Add0~29\) # (!\INST_DIVISOR|contador_ciclos\(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \INST_DIVISOR|contador_ciclos\(15),
	datad => VCC,
	cin => \INST_DIVISOR|Add0~29\,
	combout => \INST_DIVISOR|Add0~30_combout\,
	cout => \INST_DIVISOR|Add0~31\);

-- Location: FF_X30_Y25_N5
\INST_DIVISOR|contador_ciclos[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \reloj_50mhz~inputclkctrl_outclk\,
	d => \INST_DIVISOR|Add0~30_combout\,
	clrn => \INST_BOTON|ALT_INV_reinicio_temporizador~q\,
	ena => \INST_BOTON|estado_marcha~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST_DIVISOR|contador_ciclos\(15));

-- Location: LCCOMB_X30_Y25_N6
\INST_DIVISOR|Add0~32\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST_DIVISOR|Add0~32_combout\ = (\INST_DIVISOR|contador_ciclos\(16) & (\INST_DIVISOR|Add0~31\ $ (GND))) # (!\INST_DIVISOR|contador_ciclos\(16) & (!\INST_DIVISOR|Add0~31\ & VCC))
-- \INST_DIVISOR|Add0~33\ = CARRY((\INST_DIVISOR|contador_ciclos\(16) & !\INST_DIVISOR|Add0~31\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \INST_DIVISOR|contador_ciclos\(16),
	datad => VCC,
	cin => \INST_DIVISOR|Add0~31\,
	combout => \INST_DIVISOR|Add0~32_combout\,
	cout => \INST_DIVISOR|Add0~33\);

-- Location: LCCOMB_X30_Y25_N28
\INST_DIVISOR|contador_ciclos~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST_DIVISOR|contador_ciclos~6_combout\ = (!\INST_DIVISOR|Equal0~8_combout\ & \INST_DIVISOR|Add0~32_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \INST_DIVISOR|Equal0~8_combout\,
	datad => \INST_DIVISOR|Add0~32_combout\,
	combout => \INST_DIVISOR|contador_ciclos~6_combout\);

-- Location: FF_X30_Y25_N29
\INST_DIVISOR|contador_ciclos[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \reloj_50mhz~inputclkctrl_outclk\,
	d => \INST_DIVISOR|contador_ciclos~6_combout\,
	clrn => \INST_BOTON|ALT_INV_reinicio_temporizador~q\,
	ena => \INST_BOTON|estado_marcha~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST_DIVISOR|contador_ciclos\(16));

-- Location: LCCOMB_X30_Y25_N8
\INST_DIVISOR|Add0~34\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST_DIVISOR|Add0~34_combout\ = (\INST_DIVISOR|contador_ciclos\(17) & (!\INST_DIVISOR|Add0~33\)) # (!\INST_DIVISOR|contador_ciclos\(17) & ((\INST_DIVISOR|Add0~33\) # (GND)))
-- \INST_DIVISOR|Add0~35\ = CARRY((!\INST_DIVISOR|Add0~33\) # (!\INST_DIVISOR|contador_ciclos\(17)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \INST_DIVISOR|contador_ciclos\(17),
	datad => VCC,
	cin => \INST_DIVISOR|Add0~33\,
	combout => \INST_DIVISOR|Add0~34_combout\,
	cout => \INST_DIVISOR|Add0~35\);

-- Location: FF_X30_Y25_N9
\INST_DIVISOR|contador_ciclos[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \reloj_50mhz~inputclkctrl_outclk\,
	d => \INST_DIVISOR|Add0~34_combout\,
	clrn => \INST_BOTON|ALT_INV_reinicio_temporizador~q\,
	ena => \INST_BOTON|estado_marcha~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST_DIVISOR|contador_ciclos\(17));

-- Location: LCCOMB_X30_Y25_N10
\INST_DIVISOR|Add0~36\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST_DIVISOR|Add0~36_combout\ = (\INST_DIVISOR|contador_ciclos\(18) & (\INST_DIVISOR|Add0~35\ $ (GND))) # (!\INST_DIVISOR|contador_ciclos\(18) & (!\INST_DIVISOR|Add0~35\ & VCC))
-- \INST_DIVISOR|Add0~37\ = CARRY((\INST_DIVISOR|contador_ciclos\(18) & !\INST_DIVISOR|Add0~35\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \INST_DIVISOR|contador_ciclos\(18),
	datad => VCC,
	cin => \INST_DIVISOR|Add0~35\,
	combout => \INST_DIVISOR|Add0~36_combout\,
	cout => \INST_DIVISOR|Add0~37\);

-- Location: LCCOMB_X31_Y25_N2
\INST_DIVISOR|contador_ciclos~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST_DIVISOR|contador_ciclos~5_combout\ = (!\INST_DIVISOR|Equal0~8_combout\ & \INST_DIVISOR|Add0~36_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \INST_DIVISOR|Equal0~8_combout\,
	datad => \INST_DIVISOR|Add0~36_combout\,
	combout => \INST_DIVISOR|contador_ciclos~5_combout\);

-- Location: FF_X31_Y25_N3
\INST_DIVISOR|contador_ciclos[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \reloj_50mhz~inputclkctrl_outclk\,
	d => \INST_DIVISOR|contador_ciclos~5_combout\,
	clrn => \INST_BOTON|ALT_INV_reinicio_temporizador~q\,
	ena => \INST_BOTON|estado_marcha~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST_DIVISOR|contador_ciclos\(18));

-- Location: LCCOMB_X30_Y25_N12
\INST_DIVISOR|Add0~38\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST_DIVISOR|Add0~38_combout\ = (\INST_DIVISOR|contador_ciclos\(19) & (!\INST_DIVISOR|Add0~37\)) # (!\INST_DIVISOR|contador_ciclos\(19) & ((\INST_DIVISOR|Add0~37\) # (GND)))
-- \INST_DIVISOR|Add0~39\ = CARRY((!\INST_DIVISOR|Add0~37\) # (!\INST_DIVISOR|contador_ciclos\(19)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \INST_DIVISOR|contador_ciclos\(19),
	datad => VCC,
	cin => \INST_DIVISOR|Add0~37\,
	combout => \INST_DIVISOR|Add0~38_combout\,
	cout => \INST_DIVISOR|Add0~39\);

-- Location: LCCOMB_X31_Y25_N28
\INST_DIVISOR|contador_ciclos~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST_DIVISOR|contador_ciclos~4_combout\ = (!\INST_DIVISOR|Equal0~8_combout\ & \INST_DIVISOR|Add0~38_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \INST_DIVISOR|Equal0~8_combout\,
	datad => \INST_DIVISOR|Add0~38_combout\,
	combout => \INST_DIVISOR|contador_ciclos~4_combout\);

-- Location: FF_X31_Y25_N29
\INST_DIVISOR|contador_ciclos[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \reloj_50mhz~inputclkctrl_outclk\,
	d => \INST_DIVISOR|contador_ciclos~4_combout\,
	clrn => \INST_BOTON|ALT_INV_reinicio_temporizador~q\,
	ena => \INST_BOTON|estado_marcha~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST_DIVISOR|contador_ciclos\(19));

-- Location: LCCOMB_X30_Y25_N14
\INST_DIVISOR|Add0~40\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST_DIVISOR|Add0~40_combout\ = (\INST_DIVISOR|contador_ciclos\(20) & (\INST_DIVISOR|Add0~39\ $ (GND))) # (!\INST_DIVISOR|contador_ciclos\(20) & (!\INST_DIVISOR|Add0~39\ & VCC))
-- \INST_DIVISOR|Add0~41\ = CARRY((\INST_DIVISOR|contador_ciclos\(20) & !\INST_DIVISOR|Add0~39\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \INST_DIVISOR|contador_ciclos\(20),
	datad => VCC,
	cin => \INST_DIVISOR|Add0~39\,
	combout => \INST_DIVISOR|Add0~40_combout\,
	cout => \INST_DIVISOR|Add0~41\);

-- Location: LCCOMB_X31_Y25_N14
\INST_DIVISOR|contador_ciclos~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST_DIVISOR|contador_ciclos~3_combout\ = (!\INST_DIVISOR|Equal0~8_combout\ & \INST_DIVISOR|Add0~40_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \INST_DIVISOR|Equal0~8_combout\,
	datad => \INST_DIVISOR|Add0~40_combout\,
	combout => \INST_DIVISOR|contador_ciclos~3_combout\);

-- Location: FF_X31_Y25_N15
\INST_DIVISOR|contador_ciclos[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \reloj_50mhz~inputclkctrl_outclk\,
	d => \INST_DIVISOR|contador_ciclos~3_combout\,
	clrn => \INST_BOTON|ALT_INV_reinicio_temporizador~q\,
	ena => \INST_BOTON|estado_marcha~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST_DIVISOR|contador_ciclos\(20));

-- Location: LCCOMB_X30_Y25_N16
\INST_DIVISOR|Add0~42\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST_DIVISOR|Add0~42_combout\ = (\INST_DIVISOR|contador_ciclos\(21) & (!\INST_DIVISOR|Add0~41\)) # (!\INST_DIVISOR|contador_ciclos\(21) & ((\INST_DIVISOR|Add0~41\) # (GND)))
-- \INST_DIVISOR|Add0~43\ = CARRY((!\INST_DIVISOR|Add0~41\) # (!\INST_DIVISOR|contador_ciclos\(21)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \INST_DIVISOR|contador_ciclos\(21),
	datad => VCC,
	cin => \INST_DIVISOR|Add0~41\,
	combout => \INST_DIVISOR|Add0~42_combout\,
	cout => \INST_DIVISOR|Add0~43\);

-- Location: LCCOMB_X31_Y25_N10
\INST_DIVISOR|contador_ciclos~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST_DIVISOR|contador_ciclos~2_combout\ = (!\INST_DIVISOR|Equal0~8_combout\ & \INST_DIVISOR|Add0~42_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \INST_DIVISOR|Equal0~8_combout\,
	datac => \INST_DIVISOR|Add0~42_combout\,
	combout => \INST_DIVISOR|contador_ciclos~2_combout\);

-- Location: FF_X31_Y25_N11
\INST_DIVISOR|contador_ciclos[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \reloj_50mhz~inputclkctrl_outclk\,
	d => \INST_DIVISOR|contador_ciclos~2_combout\,
	clrn => \INST_BOTON|ALT_INV_reinicio_temporizador~q\,
	ena => \INST_BOTON|estado_marcha~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST_DIVISOR|contador_ciclos\(21));

-- Location: LCCOMB_X30_Y25_N18
\INST_DIVISOR|Add0~44\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST_DIVISOR|Add0~44_combout\ = (\INST_DIVISOR|contador_ciclos\(22) & (\INST_DIVISOR|Add0~43\ $ (GND))) # (!\INST_DIVISOR|contador_ciclos\(22) & (!\INST_DIVISOR|Add0~43\ & VCC))
-- \INST_DIVISOR|Add0~45\ = CARRY((\INST_DIVISOR|contador_ciclos\(22) & !\INST_DIVISOR|Add0~43\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \INST_DIVISOR|contador_ciclos\(22),
	datad => VCC,
	cin => \INST_DIVISOR|Add0~43\,
	combout => \INST_DIVISOR|Add0~44_combout\,
	cout => \INST_DIVISOR|Add0~45\);

-- Location: LCCOMB_X31_Y25_N30
\INST_DIVISOR|contador_ciclos~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST_DIVISOR|contador_ciclos~1_combout\ = (!\INST_DIVISOR|Equal0~8_combout\ & \INST_DIVISOR|Add0~44_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \INST_DIVISOR|Equal0~8_combout\,
	datad => \INST_DIVISOR|Add0~44_combout\,
	combout => \INST_DIVISOR|contador_ciclos~1_combout\);

-- Location: FF_X31_Y25_N31
\INST_DIVISOR|contador_ciclos[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \reloj_50mhz~inputclkctrl_outclk\,
	d => \INST_DIVISOR|contador_ciclos~1_combout\,
	clrn => \INST_BOTON|ALT_INV_reinicio_temporizador~q\,
	ena => \INST_BOTON|estado_marcha~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST_DIVISOR|contador_ciclos\(22));

-- Location: LCCOMB_X30_Y25_N20
\INST_DIVISOR|Add0~46\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST_DIVISOR|Add0~46_combout\ = (\INST_DIVISOR|contador_ciclos\(23) & (!\INST_DIVISOR|Add0~45\)) # (!\INST_DIVISOR|contador_ciclos\(23) & ((\INST_DIVISOR|Add0~45\) # (GND)))
-- \INST_DIVISOR|Add0~47\ = CARRY((!\INST_DIVISOR|Add0~45\) # (!\INST_DIVISOR|contador_ciclos\(23)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \INST_DIVISOR|contador_ciclos\(23),
	datad => VCC,
	cin => \INST_DIVISOR|Add0~45\,
	combout => \INST_DIVISOR|Add0~46_combout\,
	cout => \INST_DIVISOR|Add0~47\);

-- Location: FF_X30_Y25_N21
\INST_DIVISOR|contador_ciclos[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \reloj_50mhz~inputclkctrl_outclk\,
	d => \INST_DIVISOR|Add0~46_combout\,
	clrn => \INST_BOTON|ALT_INV_reinicio_temporizador~q\,
	ena => \INST_BOTON|estado_marcha~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST_DIVISOR|contador_ciclos\(23));

-- Location: LCCOMB_X30_Y25_N22
\INST_DIVISOR|Add0~48\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST_DIVISOR|Add0~48_combout\ = (\INST_DIVISOR|contador_ciclos\(24) & (\INST_DIVISOR|Add0~47\ $ (GND))) # (!\INST_DIVISOR|contador_ciclos\(24) & (!\INST_DIVISOR|Add0~47\ & VCC))
-- \INST_DIVISOR|Add0~49\ = CARRY((\INST_DIVISOR|contador_ciclos\(24) & !\INST_DIVISOR|Add0~47\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \INST_DIVISOR|contador_ciclos\(24),
	datad => VCC,
	cin => \INST_DIVISOR|Add0~47\,
	combout => \INST_DIVISOR|Add0~48_combout\,
	cout => \INST_DIVISOR|Add0~49\);

-- Location: LCCOMB_X30_Y25_N26
\INST_DIVISOR|contador_ciclos~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST_DIVISOR|contador_ciclos~0_combout\ = (!\INST_DIVISOR|Equal0~8_combout\ & \INST_DIVISOR|Add0~48_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INST_DIVISOR|Equal0~8_combout\,
	datac => \INST_DIVISOR|Add0~48_combout\,
	combout => \INST_DIVISOR|contador_ciclos~0_combout\);

-- Location: FF_X30_Y25_N27
\INST_DIVISOR|contador_ciclos[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \reloj_50mhz~inputclkctrl_outclk\,
	d => \INST_DIVISOR|contador_ciclos~0_combout\,
	clrn => \INST_BOTON|ALT_INV_reinicio_temporizador~q\,
	ena => \INST_BOTON|estado_marcha~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST_DIVISOR|contador_ciclos\(24));

-- Location: LCCOMB_X30_Y25_N24
\INST_DIVISOR|Add0~50\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST_DIVISOR|Add0~50_combout\ = \INST_DIVISOR|Add0~49\ $ (\INST_DIVISOR|contador_ciclos\(25))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \INST_DIVISOR|contador_ciclos\(25),
	cin => \INST_DIVISOR|Add0~49\,
	combout => \INST_DIVISOR|Add0~50_combout\);

-- Location: FF_X30_Y25_N25
\INST_DIVISOR|contador_ciclos[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \reloj_50mhz~inputclkctrl_outclk\,
	d => \INST_DIVISOR|Add0~50_combout\,
	clrn => \INST_BOTON|ALT_INV_reinicio_temporizador~q\,
	ena => \INST_BOTON|estado_marcha~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST_DIVISOR|contador_ciclos\(25));

-- Location: LCCOMB_X31_Y25_N18
\INST_DIVISOR|Equal0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST_DIVISOR|Equal0~0_combout\ = (\INST_DIVISOR|contador_ciclos\(22) & (!\INST_DIVISOR|contador_ciclos\(23) & (\INST_DIVISOR|contador_ciclos\(24) & !\INST_DIVISOR|contador_ciclos\(25))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INST_DIVISOR|contador_ciclos\(22),
	datab => \INST_DIVISOR|contador_ciclos\(23),
	datac => \INST_DIVISOR|contador_ciclos\(24),
	datad => \INST_DIVISOR|contador_ciclos\(25),
	combout => \INST_DIVISOR|Equal0~0_combout\);

-- Location: LCCOMB_X31_Y25_N16
\INST_DIVISOR|Equal0~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST_DIVISOR|Equal0~1_combout\ = (\INST_DIVISOR|contador_ciclos\(21) & (\INST_DIVISOR|contador_ciclos\(18) & (\INST_DIVISOR|contador_ciclos\(20) & \INST_DIVISOR|contador_ciclos\(19))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INST_DIVISOR|contador_ciclos\(21),
	datab => \INST_DIVISOR|contador_ciclos\(18),
	datac => \INST_DIVISOR|contador_ciclos\(20),
	datad => \INST_DIVISOR|contador_ciclos\(19),
	combout => \INST_DIVISOR|Equal0~1_combout\);

-- Location: LCCOMB_X31_Y25_N4
\INST_DIVISOR|Equal0~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST_DIVISOR|Equal0~2_combout\ = (!\INST_DIVISOR|contador_ciclos\(17) & (\INST_DIVISOR|contador_ciclos\(14) & (!\INST_DIVISOR|contador_ciclos\(15) & \INST_DIVISOR|contador_ciclos\(16))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INST_DIVISOR|contador_ciclos\(17),
	datab => \INST_DIVISOR|contador_ciclos\(14),
	datac => \INST_DIVISOR|contador_ciclos\(15),
	datad => \INST_DIVISOR|contador_ciclos\(16),
	combout => \INST_DIVISOR|Equal0~2_combout\);

-- Location: LCCOMB_X29_Y25_N24
\INST_DIVISOR|Equal0~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST_DIVISOR|Equal0~3_combout\ = (\INST_DIVISOR|contador_ciclos\(13) & (\INST_DIVISOR|contador_ciclos\(12) & (\INST_DIVISOR|contador_ciclos\(11) & !\INST_DIVISOR|contador_ciclos\(10))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INST_DIVISOR|contador_ciclos\(13),
	datab => \INST_DIVISOR|contador_ciclos\(12),
	datac => \INST_DIVISOR|contador_ciclos\(11),
	datad => \INST_DIVISOR|contador_ciclos\(10),
	combout => \INST_DIVISOR|Equal0~3_combout\);

-- Location: LCCOMB_X29_Y25_N2
\INST_DIVISOR|Equal0~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST_DIVISOR|Equal0~4_combout\ = (\INST_DIVISOR|Equal0~0_combout\ & (\INST_DIVISOR|Equal0~1_combout\ & (\INST_DIVISOR|Equal0~2_combout\ & \INST_DIVISOR|Equal0~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INST_DIVISOR|Equal0~0_combout\,
	datab => \INST_DIVISOR|Equal0~1_combout\,
	datac => \INST_DIVISOR|Equal0~2_combout\,
	datad => \INST_DIVISOR|Equal0~3_combout\,
	combout => \INST_DIVISOR|Equal0~4_combout\);

-- Location: LCCOMB_X29_Y25_N0
\INST_DIVISOR|Equal0~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST_DIVISOR|Equal0~8_combout\ = (\INST_DIVISOR|Equal0~5_combout\ & (\INST_DIVISOR|Equal0~7_combout\ & (\INST_DIVISOR|Equal0~6_combout\ & \INST_DIVISOR|Equal0~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INST_DIVISOR|Equal0~5_combout\,
	datab => \INST_DIVISOR|Equal0~7_combout\,
	datac => \INST_DIVISOR|Equal0~6_combout\,
	datad => \INST_DIVISOR|Equal0~4_combout\,
	combout => \INST_DIVISOR|Equal0~8_combout\);

-- Location: LCCOMB_X31_Y25_N20
\INST_DIVISOR|reloj_interno~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST_DIVISOR|reloj_interno~0_combout\ = \INST_DIVISOR|reloj_interno~q\ $ (((\INST_BOTON|estado_marcha~q\ & \INST_DIVISOR|Equal0~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INST_BOTON|estado_marcha~q\,
	datac => \INST_DIVISOR|Equal0~8_combout\,
	datad => \INST_DIVISOR|reloj_interno~q\,
	combout => \INST_DIVISOR|reloj_interno~0_combout\);

-- Location: LCCOMB_X31_Y25_N6
\INST_DIVISOR|reloj_interno~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST_DIVISOR|reloj_interno~feeder_combout\ = \INST_DIVISOR|reloj_interno~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \INST_DIVISOR|reloj_interno~0_combout\,
	combout => \INST_DIVISOR|reloj_interno~feeder_combout\);

-- Location: FF_X31_Y25_N7
\INST_DIVISOR|reloj_interno\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \reloj_50mhz~inputclkctrl_outclk\,
	d => \INST_DIVISOR|reloj_interno~feeder_combout\,
	clrn => \INST_BOTON|ALT_INV_reinicio_temporizador~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST_DIVISOR|reloj_interno~q\);

-- Location: CLKCTRL_G11
\INST_DIVISOR|reloj_interno~clkctrl\ : cycloneiii_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \INST_DIVISOR|reloj_interno~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \INST_DIVISOR|reloj_interno~clkctrl_outclk\);

-- Location: LCCOMB_X32_Y28_N14
\INST_SEGUNDOS|unidad[1]~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST_SEGUNDOS|unidad[1]~6_combout\ = (\INST_BOTON|estado_marcha~q\ & (!\fin_real~0_combout\ & (\INST_SEGUNDOS|unidad\(0) $ (\INST_SEGUNDOS|unidad\(1))))) # (!\INST_BOTON|estado_marcha~q\ & (((\INST_SEGUNDOS|unidad\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001010011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fin_real~0_combout\,
	datab => \INST_SEGUNDOS|unidad\(0),
	datac => \INST_SEGUNDOS|unidad\(1),
	datad => \INST_BOTON|estado_marcha~q\,
	combout => \INST_SEGUNDOS|unidad[1]~6_combout\);

-- Location: FF_X32_Y28_N15
\INST_SEGUNDOS|unidad[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \INST_DIVISOR|ALT_INV_reloj_interno~clkctrl_outclk\,
	d => \INST_SEGUNDOS|unidad[1]~6_combout\,
	clrn => \INST_BOTON|ALT_INV_reinicio_temporizador~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST_SEGUNDOS|unidad\(1));

-- Location: LCCOMB_X32_Y28_N8
\INST_SEGUNDOS|Add1~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST_SEGUNDOS|Add1~0_combout\ = \INST_SEGUNDOS|unidad\(2) $ (((\INST_SEGUNDOS|unidad\(0) & \INST_SEGUNDOS|unidad\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \INST_SEGUNDOS|unidad\(0),
	datac => \INST_SEGUNDOS|unidad\(2),
	datad => \INST_SEGUNDOS|unidad\(1),
	combout => \INST_SEGUNDOS|Add1~0_combout\);

-- Location: LCCOMB_X32_Y28_N4
\INST_SEGUNDOS|unidad[2]~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST_SEGUNDOS|unidad[2]~7_combout\ = (\INST_BOTON|estado_marcha~q\ & (!\fin_real~0_combout\ & (\INST_SEGUNDOS|Add1~0_combout\))) # (!\INST_BOTON|estado_marcha~q\ & (((\INST_SEGUNDOS|unidad\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fin_real~0_combout\,
	datab => \INST_SEGUNDOS|Add1~0_combout\,
	datac => \INST_SEGUNDOS|unidad\(2),
	datad => \INST_BOTON|estado_marcha~q\,
	combout => \INST_SEGUNDOS|unidad[2]~7_combout\);

-- Location: FF_X32_Y28_N5
\INST_SEGUNDOS|unidad[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \INST_DIVISOR|ALT_INV_reloj_interno~clkctrl_outclk\,
	d => \INST_SEGUNDOS|unidad[2]~7_combout\,
	clrn => \INST_BOTON|ALT_INV_reinicio_temporizador~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST_SEGUNDOS|unidad\(2));

-- Location: LCCOMB_X32_Y28_N2
\INST_SEGUNDOS|Add1~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST_SEGUNDOS|Add1~1_combout\ = \INST_SEGUNDOS|unidad\(3) $ (((\INST_SEGUNDOS|unidad\(0) & (\INST_SEGUNDOS|unidad\(1) & \INST_SEGUNDOS|unidad\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INST_SEGUNDOS|unidad\(0),
	datab => \INST_SEGUNDOS|unidad\(3),
	datac => \INST_SEGUNDOS|unidad\(1),
	datad => \INST_SEGUNDOS|unidad\(2),
	combout => \INST_SEGUNDOS|Add1~1_combout\);

-- Location: LCCOMB_X32_Y28_N22
\INST_SEGUNDOS|unidad[3]~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST_SEGUNDOS|unidad[3]~5_combout\ = (\habilitar_temporizador~0_combout\ & (!\fin_real~0_combout\ & (\INST_SEGUNDOS|Add1~1_combout\))) # (!\habilitar_temporizador~0_combout\ & (((\INST_SEGUNDOS|unidad\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fin_real~0_combout\,
	datab => \INST_SEGUNDOS|Add1~1_combout\,
	datac => \INST_SEGUNDOS|unidad\(3),
	datad => \habilitar_temporizador~0_combout\,
	combout => \INST_SEGUNDOS|unidad[3]~5_combout\);

-- Location: FF_X32_Y28_N23
\INST_SEGUNDOS|unidad[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \INST_DIVISOR|ALT_INV_reloj_interno~clkctrl_outclk\,
	d => \INST_SEGUNDOS|unidad[3]~5_combout\,
	clrn => \INST_BOTON|ALT_INV_reinicio_temporizador~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST_SEGUNDOS|unidad\(3));

-- Location: LCCOMB_X32_Y28_N26
\fin_real~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \fin_real~0_combout\ = (\INST_SEGUNDOS|unidad\(3) & (!\INST_SEGUNDOS|unidad\(1) & (!\INST_SEGUNDOS|unidad\(2) & \INST_SEGUNDOS|unidad\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INST_SEGUNDOS|unidad\(3),
	datab => \INST_SEGUNDOS|unidad\(1),
	datac => \INST_SEGUNDOS|unidad\(2),
	datad => \INST_SEGUNDOS|unidad\(0),
	combout => \fin_real~0_combout\);

-- Location: LCCOMB_X30_Y28_N12
\INST_SEGUNDOS|decena[0]~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST_SEGUNDOS|decena[0]~0_combout\ = (\INST_BOTON|estado_marcha~q\ & (\fin_real~0_combout\ & ((!\fin_real~2_combout\) # (!\fin_real~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fin_real~1_combout\,
	datab => \fin_real~2_combout\,
	datac => \INST_BOTON|estado_marcha~q\,
	datad => \fin_real~0_combout\,
	combout => \INST_SEGUNDOS|decena[0]~0_combout\);

-- Location: LCCOMB_X30_Y28_N4
\INST_SEGUNDOS|decena[0]~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST_SEGUNDOS|decena[0]~1_combout\ = \INST_SEGUNDOS|decena\(0) $ (\INST_SEGUNDOS|decena[0]~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \INST_SEGUNDOS|decena\(0),
	datad => \INST_SEGUNDOS|decena[0]~0_combout\,
	combout => \INST_SEGUNDOS|decena[0]~1_combout\);

-- Location: FF_X30_Y28_N5
\INST_SEGUNDOS|decena[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \INST_DIVISOR|ALT_INV_reloj_interno~clkctrl_outclk\,
	d => \INST_SEGUNDOS|decena[0]~1_combout\,
	clrn => \INST_BOTON|ALT_INV_reinicio_temporizador~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST_SEGUNDOS|decena\(0));

-- Location: LCCOMB_X30_Y28_N22
\INST_SEGUNDOS|decena[1]~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST_SEGUNDOS|decena[1]~2_combout\ = (\INST_SEGUNDOS|decena[0]~0_combout\ & (!\fin_real~3_combout\ & (\INST_SEGUNDOS|decena\(0) $ (\INST_SEGUNDOS|decena\(1))))) # (!\INST_SEGUNDOS|decena[0]~0_combout\ & (((\INST_SEGUNDOS|decena\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001001011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INST_SEGUNDOS|decena\(0),
	datab => \fin_real~3_combout\,
	datac => \INST_SEGUNDOS|decena\(1),
	datad => \INST_SEGUNDOS|decena[0]~0_combout\,
	combout => \INST_SEGUNDOS|decena[1]~2_combout\);

-- Location: FF_X30_Y28_N23
\INST_SEGUNDOS|decena[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \INST_DIVISOR|ALT_INV_reloj_interno~clkctrl_outclk\,
	d => \INST_SEGUNDOS|decena[1]~2_combout\,
	clrn => \INST_BOTON|ALT_INV_reinicio_temporizador~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST_SEGUNDOS|decena\(1));

-- Location: LCCOMB_X30_Y28_N18
\INST_SEGUNDOS|Add0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST_SEGUNDOS|Add0~0_combout\ = (\INST_SEGUNDOS|decena\(0) & \INST_SEGUNDOS|decena\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \INST_SEGUNDOS|decena\(0),
	datad => \INST_SEGUNDOS|decena\(1),
	combout => \INST_SEGUNDOS|Add0~0_combout\);

-- Location: LCCOMB_X30_Y28_N8
\INST_SEGUNDOS|decena[2]~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST_SEGUNDOS|decena[2]~3_combout\ = (\INST_SEGUNDOS|decena[0]~0_combout\ & (!\fin_real~3_combout\ & (\INST_SEGUNDOS|Add0~0_combout\ $ (\INST_SEGUNDOS|decena\(2))))) # (!\INST_SEGUNDOS|decena[0]~0_combout\ & (((\INST_SEGUNDOS|decena\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001001011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INST_SEGUNDOS|Add0~0_combout\,
	datab => \fin_real~3_combout\,
	datac => \INST_SEGUNDOS|decena\(2),
	datad => \INST_SEGUNDOS|decena[0]~0_combout\,
	combout => \INST_SEGUNDOS|decena[2]~3_combout\);

-- Location: FF_X30_Y28_N9
\INST_SEGUNDOS|decena[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \INST_DIVISOR|ALT_INV_reloj_interno~clkctrl_outclk\,
	d => \INST_SEGUNDOS|decena[2]~3_combout\,
	clrn => \INST_BOTON|ALT_INV_reinicio_temporizador~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST_SEGUNDOS|decena\(2));

-- Location: LCCOMB_X30_Y28_N10
\INST_SEGUNDOS|decena[3]~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST_SEGUNDOS|decena[3]~4_combout\ = \INST_SEGUNDOS|decena\(3) $ (((\INST_SEGUNDOS|decena\(2) & (\INST_SEGUNDOS|Add0~0_combout\ & \INST_SEGUNDOS|decena[0]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INST_SEGUNDOS|decena\(2),
	datab => \INST_SEGUNDOS|Add0~0_combout\,
	datac => \INST_SEGUNDOS|decena\(3),
	datad => \INST_SEGUNDOS|decena[0]~0_combout\,
	combout => \INST_SEGUNDOS|decena[3]~4_combout\);

-- Location: FF_X30_Y28_N11
\INST_SEGUNDOS|decena[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \INST_DIVISOR|ALT_INV_reloj_interno~clkctrl_outclk\,
	d => \INST_SEGUNDOS|decena[3]~4_combout\,
	clrn => \INST_BOTON|ALT_INV_reinicio_temporizador~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST_SEGUNDOS|decena\(3));

-- Location: LCCOMB_X30_Y28_N6
\fin_real~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \fin_real~1_combout\ = (!\INST_SEGUNDOS|decena\(1) & (\INST_SEGUNDOS|decena\(2) & (\INST_SEGUNDOS|decena\(0) & !\INST_SEGUNDOS|decena\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INST_SEGUNDOS|decena\(1),
	datab => \INST_SEGUNDOS|decena\(2),
	datac => \INST_SEGUNDOS|decena\(0),
	datad => \INST_SEGUNDOS|decena\(3),
	combout => \fin_real~1_combout\);

-- Location: LCCOMB_X31_Y28_N22
\fin_real~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \fin_real~3_combout\ = (\fin_real~1_combout\ & \fin_real~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \fin_real~1_combout\,
	datad => \fin_real~0_combout\,
	combout => \fin_real~3_combout\);

-- Location: LCCOMB_X31_Y28_N28
\INST_MINUTOS|minutos[1]~9\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST_MINUTOS|minutos[1]~9_combout\ = (((!\fin_real~0_combout\) # (!\fin_real~1_combout\)) # (!\INST_MINUTOS|minutos\(0))) # (!\INST_MINUTOS|proc_minutos~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INST_MINUTOS|proc_minutos~0_combout\,
	datab => \INST_MINUTOS|minutos\(0),
	datac => \fin_real~1_combout\,
	datad => \fin_real~0_combout\,
	combout => \INST_MINUTOS|minutos[1]~9_combout\);

-- Location: LCCOMB_X31_Y28_N18
\INST_MINUTOS|minutos[1]~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST_MINUTOS|minutos[1]~5_combout\ = \INST_MINUTOS|minutos\(1) $ (((\habilitar_temporizador~0_combout\ & !\INST_MINUTOS|minutos[1]~9_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \habilitar_temporizador~0_combout\,
	datac => \INST_MINUTOS|minutos\(1),
	datad => \INST_MINUTOS|minutos[1]~9_combout\,
	combout => \INST_MINUTOS|minutos[1]~5_combout\);

-- Location: FF_X31_Y28_N19
\INST_MINUTOS|minutos[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \INST_DIVISOR|ALT_INV_reloj_interno~clkctrl_outclk\,
	d => \INST_MINUTOS|minutos[1]~5_combout\,
	clrn => \INST_BOTON|ALT_INV_reinicio_temporizador~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST_MINUTOS|minutos\(1));

-- Location: LCCOMB_X31_Y28_N2
\INST_MINUTOS|minutos[1]~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST_MINUTOS|minutos[1]~7_combout\ = (\INST_MINUTOS|proc_minutos~0_combout\ & (\INST_MINUTOS|minutos\(0) & (\fin_real~3_combout\ & \habilitar_temporizador~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INST_MINUTOS|proc_minutos~0_combout\,
	datab => \INST_MINUTOS|minutos\(0),
	datac => \fin_real~3_combout\,
	datad => \habilitar_temporizador~0_combout\,
	combout => \INST_MINUTOS|minutos[1]~7_combout\);

-- Location: LCCOMB_X31_Y28_N30
\INST_MINUTOS|minutos[3]~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST_MINUTOS|minutos[3]~8_combout\ = \INST_MINUTOS|minutos\(3) $ (((\INST_MINUTOS|minutos\(2) & (\INST_MINUTOS|minutos\(1) & \INST_MINUTOS|minutos[1]~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INST_MINUTOS|minutos\(2),
	datab => \INST_MINUTOS|minutos\(1),
	datac => \INST_MINUTOS|minutos\(3),
	datad => \INST_MINUTOS|minutos[1]~7_combout\,
	combout => \INST_MINUTOS|minutos[3]~8_combout\);

-- Location: FF_X31_Y28_N31
\INST_MINUTOS|minutos[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \INST_DIVISOR|ALT_INV_reloj_interno~clkctrl_outclk\,
	d => \INST_MINUTOS|minutos[3]~8_combout\,
	clrn => \INST_BOTON|ALT_INV_reinicio_temporizador~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST_MINUTOS|minutos\(3));

-- Location: LCCOMB_X31_Y28_N20
\INST_MINUTOS|proc_minutos~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST_MINUTOS|proc_minutos~0_combout\ = ((!\INST_MINUTOS|minutos\(0) & (!\INST_MINUTOS|minutos\(1) & !\INST_MINUTOS|minutos\(2)))) # (!\INST_MINUTOS|minutos\(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101010111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INST_MINUTOS|minutos\(3),
	datab => \INST_MINUTOS|minutos\(0),
	datac => \INST_MINUTOS|minutos\(1),
	datad => \INST_MINUTOS|minutos\(2),
	combout => \INST_MINUTOS|proc_minutos~0_combout\);

-- Location: LCCOMB_X31_Y28_N0
\INST_MINUTOS|minutos[0]~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST_MINUTOS|minutos[0]~4_combout\ = \INST_MINUTOS|minutos\(0) $ (((\fin_real~3_combout\ & (\INST_MINUTOS|proc_minutos~0_combout\ & \habilitar_temporizador~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fin_real~3_combout\,
	datab => \INST_MINUTOS|proc_minutos~0_combout\,
	datac => \INST_MINUTOS|minutos\(0),
	datad => \habilitar_temporizador~0_combout\,
	combout => \INST_MINUTOS|minutos[0]~4_combout\);

-- Location: FF_X31_Y28_N1
\INST_MINUTOS|minutos[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \INST_DIVISOR|ALT_INV_reloj_interno~clkctrl_outclk\,
	d => \INST_MINUTOS|minutos[0]~4_combout\,
	clrn => \INST_BOTON|ALT_INV_reinicio_temporizador~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST_MINUTOS|minutos\(0));

-- Location: LCCOMB_X31_Y28_N14
\INST_MINUTOS|minutos[2]~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST_MINUTOS|minutos[2]~10_combout\ = ((\INST_MINUTOS|minutos\(3)) # (!\INST_MINUTOS|minutos\(1))) # (!\INST_MINUTOS|minutos\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \INST_MINUTOS|minutos\(0),
	datac => \INST_MINUTOS|minutos\(3),
	datad => \INST_MINUTOS|minutos\(1),
	combout => \INST_MINUTOS|minutos[2]~10_combout\);

-- Location: LCCOMB_X31_Y28_N12
\INST_MINUTOS|minutos[2]~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST_MINUTOS|minutos[2]~6_combout\ = \INST_MINUTOS|minutos\(2) $ (((\fin_real~3_combout\ & (!\INST_MINUTOS|minutos[2]~10_combout\ & \habilitar_temporizador~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101001011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fin_real~3_combout\,
	datab => \INST_MINUTOS|minutos[2]~10_combout\,
	datac => \INST_MINUTOS|minutos\(2),
	datad => \habilitar_temporizador~0_combout\,
	combout => \INST_MINUTOS|minutos[2]~6_combout\);

-- Location: FF_X31_Y28_N13
\INST_MINUTOS|minutos[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \INST_DIVISOR|ALT_INV_reloj_interno~clkctrl_outclk\,
	d => \INST_MINUTOS|minutos[2]~6_combout\,
	clrn => \INST_BOTON|ALT_INV_reinicio_temporizador~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST_MINUTOS|minutos\(2));

-- Location: LCCOMB_X31_Y28_N26
\fin_real~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \fin_real~2_combout\ = (!\INST_MINUTOS|minutos\(2) & (\INST_MINUTOS|minutos\(0) & (\INST_MINUTOS|minutos\(3) & !\INST_MINUTOS|minutos\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INST_MINUTOS|minutos\(2),
	datab => \INST_MINUTOS|minutos\(0),
	datac => \INST_MINUTOS|minutos\(3),
	datad => \INST_MINUTOS|minutos\(1),
	combout => \fin_real~2_combout\);

-- Location: LCCOMB_X31_Y28_N24
\habilitar_temporizador~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \habilitar_temporizador~0_combout\ = (\INST_BOTON|estado_marcha~q\ & (((!\fin_real~0_combout\) # (!\fin_real~1_combout\)) # (!\fin_real~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fin_real~2_combout\,
	datab => \fin_real~1_combout\,
	datac => \INST_BOTON|estado_marcha~q\,
	datad => \fin_real~0_combout\,
	combout => \habilitar_temporizador~0_combout\);

-- Location: LCCOMB_X32_Y28_N20
\INST_SEGUNDOS|unidad[0]~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST_SEGUNDOS|unidad[0]~4_combout\ = \INST_SEGUNDOS|unidad\(0) $ (\habilitar_temporizador~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \INST_SEGUNDOS|unidad\(0),
	datad => \habilitar_temporizador~0_combout\,
	combout => \INST_SEGUNDOS|unidad[0]~4_combout\);

-- Location: FF_X32_Y28_N21
\INST_SEGUNDOS|unidad[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \INST_DIVISOR|ALT_INV_reloj_interno~clkctrl_outclk\,
	d => \INST_SEGUNDOS|unidad[0]~4_combout\,
	clrn => \INST_BOTON|ALT_INV_reinicio_temporizador~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST_SEGUNDOS|unidad\(0));

-- Location: LCCOMB_X32_Y28_N24
\INST_DISP_SU|Mux6~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST_DISP_SU|Mux6~0_combout\ = (\INST_SEGUNDOS|unidad\(1) & (((\INST_SEGUNDOS|unidad\(3))))) # (!\INST_SEGUNDOS|unidad\(1) & (\INST_SEGUNDOS|unidad\(2) $ (((\INST_SEGUNDOS|unidad\(0) & !\INST_SEGUNDOS|unidad\(3))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110111000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INST_SEGUNDOS|unidad\(0),
	datab => \INST_SEGUNDOS|unidad\(3),
	datac => \INST_SEGUNDOS|unidad\(1),
	datad => \INST_SEGUNDOS|unidad\(2),
	combout => \INST_DISP_SU|Mux6~0_combout\);

-- Location: LCCOMB_X32_Y28_N18
\INST_DISP_SU|Mux5~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST_DISP_SU|Mux5~0_combout\ = (\INST_SEGUNDOS|unidad\(3) & (((\INST_SEGUNDOS|unidad\(1)) # (\INST_SEGUNDOS|unidad\(2))))) # (!\INST_SEGUNDOS|unidad\(3) & (\INST_SEGUNDOS|unidad\(2) & (\INST_SEGUNDOS|unidad\(0) $ (\INST_SEGUNDOS|unidad\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INST_SEGUNDOS|unidad\(0),
	datab => \INST_SEGUNDOS|unidad\(3),
	datac => \INST_SEGUNDOS|unidad\(1),
	datad => \INST_SEGUNDOS|unidad\(2),
	combout => \INST_DISP_SU|Mux5~0_combout\);

-- Location: LCCOMB_X32_Y28_N16
\INST_DISP_SU|Mux4~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST_DISP_SU|Mux4~0_combout\ = (\INST_SEGUNDOS|unidad\(2) & (((\INST_SEGUNDOS|unidad\(3))))) # (!\INST_SEGUNDOS|unidad\(2) & (\INST_SEGUNDOS|unidad\(1) & ((\INST_SEGUNDOS|unidad\(3)) # (!\INST_SEGUNDOS|unidad\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INST_SEGUNDOS|unidad\(0),
	datab => \INST_SEGUNDOS|unidad\(3),
	datac => \INST_SEGUNDOS|unidad\(1),
	datad => \INST_SEGUNDOS|unidad\(2),
	combout => \INST_DISP_SU|Mux4~0_combout\);

-- Location: LCCOMB_X32_Y28_N10
\INST_DISP_SU|Mux3~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST_DISP_SU|Mux3~0_combout\ = (\INST_SEGUNDOS|unidad\(1) & ((\INST_SEGUNDOS|unidad\(3)) # ((\INST_SEGUNDOS|unidad\(0) & \INST_SEGUNDOS|unidad\(2))))) # (!\INST_SEGUNDOS|unidad\(1) & (\INST_SEGUNDOS|unidad\(2) $ (((\INST_SEGUNDOS|unidad\(0) & 
-- !\INST_SEGUNDOS|unidad\(3))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110111000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INST_SEGUNDOS|unidad\(0),
	datab => \INST_SEGUNDOS|unidad\(3),
	datac => \INST_SEGUNDOS|unidad\(1),
	datad => \INST_SEGUNDOS|unidad\(2),
	combout => \INST_DISP_SU|Mux3~0_combout\);

-- Location: LCCOMB_X32_Y28_N12
\INST_DISP_SU|Mux2~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST_DISP_SU|Mux2~0_combout\ = (\INST_SEGUNDOS|unidad\(0)) # ((\INST_SEGUNDOS|unidad\(1) & (\INST_SEGUNDOS|unidad\(3))) # (!\INST_SEGUNDOS|unidad\(1) & ((\INST_SEGUNDOS|unidad\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111111101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INST_SEGUNDOS|unidad\(0),
	datab => \INST_SEGUNDOS|unidad\(3),
	datac => \INST_SEGUNDOS|unidad\(1),
	datad => \INST_SEGUNDOS|unidad\(2),
	combout => \INST_DISP_SU|Mux2~0_combout\);

-- Location: LCCOMB_X32_Y28_N30
\INST_DISP_SU|Mux1~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST_DISP_SU|Mux1~0_combout\ = (\INST_SEGUNDOS|unidad\(0) & ((\INST_SEGUNDOS|unidad\(1)) # (\INST_SEGUNDOS|unidad\(3) $ (!\INST_SEGUNDOS|unidad\(2))))) # (!\INST_SEGUNDOS|unidad\(0) & ((\INST_SEGUNDOS|unidad\(2) & (\INST_SEGUNDOS|unidad\(3))) # 
-- (!\INST_SEGUNDOS|unidad\(2) & ((\INST_SEGUNDOS|unidad\(1))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110011110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INST_SEGUNDOS|unidad\(0),
	datab => \INST_SEGUNDOS|unidad\(3),
	datac => \INST_SEGUNDOS|unidad\(1),
	datad => \INST_SEGUNDOS|unidad\(2),
	combout => \INST_DISP_SU|Mux1~0_combout\);

-- Location: LCCOMB_X32_Y28_N28
\INST_DISP_SU|Mux0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST_DISP_SU|Mux0~0_combout\ = (\INST_SEGUNDOS|unidad\(1) & (!\INST_SEGUNDOS|unidad\(3) & ((!\INST_SEGUNDOS|unidad\(2)) # (!\INST_SEGUNDOS|unidad\(0))))) # (!\INST_SEGUNDOS|unidad\(1) & ((\INST_SEGUNDOS|unidad\(3) $ (\INST_SEGUNDOS|unidad\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001001100111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INST_SEGUNDOS|unidad\(0),
	datab => \INST_SEGUNDOS|unidad\(3),
	datac => \INST_SEGUNDOS|unidad\(1),
	datad => \INST_SEGUNDOS|unidad\(2),
	combout => \INST_DISP_SU|Mux0~0_combout\);

-- Location: LCCOMB_X30_Y28_N16
\INST_DISP_SD|Mux6~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST_DISP_SD|Mux6~0_combout\ = (\INST_SEGUNDOS|decena\(1) & (((\INST_SEGUNDOS|decena\(3))))) # (!\INST_SEGUNDOS|decena\(1) & (\INST_SEGUNDOS|decena\(2) $ (((!\INST_SEGUNDOS|decena\(3) & \INST_SEGUNDOS|decena\(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INST_SEGUNDOS|decena\(2),
	datab => \INST_SEGUNDOS|decena\(3),
	datac => \INST_SEGUNDOS|decena\(0),
	datad => \INST_SEGUNDOS|decena\(1),
	combout => \INST_DISP_SD|Mux6~0_combout\);

-- Location: LCCOMB_X30_Y28_N2
\INST_DISP_SD|Mux5~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST_DISP_SD|Mux5~0_combout\ = (\INST_SEGUNDOS|decena\(2) & ((\INST_SEGUNDOS|decena\(3)) # (\INST_SEGUNDOS|decena\(0) $ (\INST_SEGUNDOS|decena\(1))))) # (!\INST_SEGUNDOS|decena\(2) & (\INST_SEGUNDOS|decena\(3) & ((\INST_SEGUNDOS|decena\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INST_SEGUNDOS|decena\(2),
	datab => \INST_SEGUNDOS|decena\(3),
	datac => \INST_SEGUNDOS|decena\(0),
	datad => \INST_SEGUNDOS|decena\(1),
	combout => \INST_DISP_SD|Mux5~0_combout\);

-- Location: LCCOMB_X30_Y28_N28
\INST_DISP_SD|Mux4~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST_DISP_SD|Mux4~0_combout\ = (\INST_SEGUNDOS|decena\(2) & (\INST_SEGUNDOS|decena\(3))) # (!\INST_SEGUNDOS|decena\(2) & (\INST_SEGUNDOS|decena\(1) & ((\INST_SEGUNDOS|decena\(3)) # (!\INST_SEGUNDOS|decena\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INST_SEGUNDOS|decena\(2),
	datab => \INST_SEGUNDOS|decena\(3),
	datac => \INST_SEGUNDOS|decena\(0),
	datad => \INST_SEGUNDOS|decena\(1),
	combout => \INST_DISP_SD|Mux4~0_combout\);

-- Location: LCCOMB_X30_Y28_N26
\INST_DISP_SD|Mux3~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST_DISP_SD|Mux3~0_combout\ = (\INST_SEGUNDOS|decena\(1) & ((\INST_SEGUNDOS|decena\(3)) # ((\INST_SEGUNDOS|decena\(2) & \INST_SEGUNDOS|decena\(0))))) # (!\INST_SEGUNDOS|decena\(1) & (\INST_SEGUNDOS|decena\(2) $ (((!\INST_SEGUNDOS|decena\(3) & 
-- \INST_SEGUNDOS|decena\(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INST_SEGUNDOS|decena\(2),
	datab => \INST_SEGUNDOS|decena\(3),
	datac => \INST_SEGUNDOS|decena\(0),
	datad => \INST_SEGUNDOS|decena\(1),
	combout => \INST_DISP_SD|Mux3~0_combout\);

-- Location: LCCOMB_X30_Y28_N24
\INST_DISP_SD|Mux2~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST_DISP_SD|Mux2~0_combout\ = (\INST_SEGUNDOS|decena\(0)) # ((\INST_SEGUNDOS|decena\(1) & ((\INST_SEGUNDOS|decena\(3)))) # (!\INST_SEGUNDOS|decena\(1) & (\INST_SEGUNDOS|decena\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INST_SEGUNDOS|decena\(2),
	datab => \INST_SEGUNDOS|decena\(3),
	datac => \INST_SEGUNDOS|decena\(0),
	datad => \INST_SEGUNDOS|decena\(1),
	combout => \INST_DISP_SD|Mux2~0_combout\);

-- Location: LCCOMB_X30_Y28_N30
\INST_DISP_SD|Mux1~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST_DISP_SD|Mux1~0_combout\ = (\INST_SEGUNDOS|decena\(2) & ((\INST_SEGUNDOS|decena\(3)) # ((\INST_SEGUNDOS|decena\(0) & \INST_SEGUNDOS|decena\(1))))) # (!\INST_SEGUNDOS|decena\(2) & ((\INST_SEGUNDOS|decena\(1)) # ((!\INST_SEGUNDOS|decena\(3) & 
-- \INST_SEGUNDOS|decena\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110110011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INST_SEGUNDOS|decena\(2),
	datab => \INST_SEGUNDOS|decena\(3),
	datac => \INST_SEGUNDOS|decena\(0),
	datad => \INST_SEGUNDOS|decena\(1),
	combout => \INST_DISP_SD|Mux1~0_combout\);

-- Location: LCCOMB_X30_Y28_N20
\INST_DISP_SD|Mux0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST_DISP_SD|Mux0~0_combout\ = (\INST_SEGUNDOS|decena\(2) & (!\INST_SEGUNDOS|decena\(3) & ((!\INST_SEGUNDOS|decena\(1)) # (!\INST_SEGUNDOS|decena\(0))))) # (!\INST_SEGUNDOS|decena\(2) & (\INST_SEGUNDOS|decena\(3) $ (((\INST_SEGUNDOS|decena\(1))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001001101100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INST_SEGUNDOS|decena\(2),
	datab => \INST_SEGUNDOS|decena\(3),
	datac => \INST_SEGUNDOS|decena\(0),
	datad => \INST_SEGUNDOS|decena\(1),
	combout => \INST_DISP_SD|Mux0~0_combout\);

-- Location: LCCOMB_X32_Y27_N24
\INST_DISP_MU|Mux6~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST_DISP_MU|Mux6~0_combout\ = (\INST_MINUTOS|minutos\(1) & (((\INST_MINUTOS|minutos\(3))))) # (!\INST_MINUTOS|minutos\(1) & (\INST_MINUTOS|minutos\(2) $ (((\INST_MINUTOS|minutos\(0) & !\INST_MINUTOS|minutos\(3))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000110100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INST_MINUTOS|minutos\(1),
	datab => \INST_MINUTOS|minutos\(0),
	datac => \INST_MINUTOS|minutos\(3),
	datad => \INST_MINUTOS|minutos\(2),
	combout => \INST_DISP_MU|Mux6~0_combout\);

-- Location: LCCOMB_X31_Y28_N16
\INST_DISP_MU|Mux5~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST_DISP_MU|Mux5~0_combout\ = (\INST_MINUTOS|minutos\(3) & ((\INST_MINUTOS|minutos\(1)) # ((\INST_MINUTOS|minutos\(2))))) # (!\INST_MINUTOS|minutos\(3) & (\INST_MINUTOS|minutos\(2) & (\INST_MINUTOS|minutos\(1) $ (\INST_MINUTOS|minutos\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INST_MINUTOS|minutos\(1),
	datab => \INST_MINUTOS|minutos\(0),
	datac => \INST_MINUTOS|minutos\(3),
	datad => \INST_MINUTOS|minutos\(2),
	combout => \INST_DISP_MU|Mux5~0_combout\);

-- Location: LCCOMB_X31_Y28_N6
\INST_DISP_MU|Mux4~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST_DISP_MU|Mux4~0_combout\ = (\INST_MINUTOS|minutos\(2) & (((\INST_MINUTOS|minutos\(3))))) # (!\INST_MINUTOS|minutos\(2) & (\INST_MINUTOS|minutos\(1) & ((\INST_MINUTOS|minutos\(3)) # (!\INST_MINUTOS|minutos\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INST_MINUTOS|minutos\(1),
	datab => \INST_MINUTOS|minutos\(0),
	datac => \INST_MINUTOS|minutos\(3),
	datad => \INST_MINUTOS|minutos\(2),
	combout => \INST_DISP_MU|Mux4~0_combout\);

-- Location: LCCOMB_X31_Y28_N4
\INST_DISP_MU|Mux3~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST_DISP_MU|Mux3~0_combout\ = (\INST_MINUTOS|minutos\(1) & ((\INST_MINUTOS|minutos\(3)) # ((\INST_MINUTOS|minutos\(0) & \INST_MINUTOS|minutos\(2))))) # (!\INST_MINUTOS|minutos\(1) & (\INST_MINUTOS|minutos\(2) $ (((\INST_MINUTOS|minutos\(0) & 
-- !\INST_MINUTOS|minutos\(3))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100110100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INST_MINUTOS|minutos\(1),
	datab => \INST_MINUTOS|minutos\(0),
	datac => \INST_MINUTOS|minutos\(3),
	datad => \INST_MINUTOS|minutos\(2),
	combout => \INST_DISP_MU|Mux3~0_combout\);

-- Location: LCCOMB_X31_Y28_N10
\INST_DISP_MU|Mux2~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST_DISP_MU|Mux2~0_combout\ = (\INST_MINUTOS|minutos\(0)) # ((\INST_MINUTOS|minutos\(1) & (\INST_MINUTOS|minutos\(3))) # (!\INST_MINUTOS|minutos\(1) & ((\INST_MINUTOS|minutos\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110111101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INST_MINUTOS|minutos\(1),
	datab => \INST_MINUTOS|minutos\(0),
	datac => \INST_MINUTOS|minutos\(3),
	datad => \INST_MINUTOS|minutos\(2),
	combout => \INST_DISP_MU|Mux2~0_combout\);

-- Location: LCCOMB_X31_Y28_N8
\INST_DISP_MU|Mux1~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST_DISP_MU|Mux1~0_combout\ = (\INST_MINUTOS|minutos\(0) & ((\INST_MINUTOS|minutos\(1)) # (\INST_MINUTOS|minutos\(3) $ (!\INST_MINUTOS|minutos\(2))))) # (!\INST_MINUTOS|minutos\(0) & ((\INST_MINUTOS|minutos\(2) & ((\INST_MINUTOS|minutos\(3)))) # 
-- (!\INST_MINUTOS|minutos\(2) & (\INST_MINUTOS|minutos\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INST_MINUTOS|minutos\(1),
	datab => \INST_MINUTOS|minutos\(0),
	datac => \INST_MINUTOS|minutos\(3),
	datad => \INST_MINUTOS|minutos\(2),
	combout => \INST_DISP_MU|Mux1~0_combout\);

-- Location: LCCOMB_X32_Y27_N6
\INST_DISP_MU|Mux0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST_DISP_MU|Mux0~0_combout\ = (\INST_MINUTOS|minutos\(1) & (!\INST_MINUTOS|minutos\(3) & ((!\INST_MINUTOS|minutos\(2)) # (!\INST_MINUTOS|minutos\(0))))) # (!\INST_MINUTOS|minutos\(1) & ((\INST_MINUTOS|minutos\(3) $ (\INST_MINUTOS|minutos\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000011101011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INST_MINUTOS|minutos\(1),
	datab => \INST_MINUTOS|minutos\(0),
	datac => \INST_MINUTOS|minutos\(3),
	datad => \INST_MINUTOS|minutos\(2),
	combout => \INST_DISP_MU|Mux0~0_combout\);

ww_HEX0(0) <= \HEX0[0]~output_o\;

ww_HEX0(1) <= \HEX0[1]~output_o\;

ww_HEX0(2) <= \HEX0[2]~output_o\;

ww_HEX0(3) <= \HEX0[3]~output_o\;

ww_HEX0(4) <= \HEX0[4]~output_o\;

ww_HEX0(5) <= \HEX0[5]~output_o\;

ww_HEX0(6) <= \HEX0[6]~output_o\;

ww_HEX1(0) <= \HEX1[0]~output_o\;

ww_HEX1(1) <= \HEX1[1]~output_o\;

ww_HEX1(2) <= \HEX1[2]~output_o\;

ww_HEX1(3) <= \HEX1[3]~output_o\;

ww_HEX1(4) <= \HEX1[4]~output_o\;

ww_HEX1(5) <= \HEX1[5]~output_o\;

ww_HEX1(6) <= \HEX1[6]~output_o\;

ww_HEX2(0) <= \HEX2[0]~output_o\;

ww_HEX2(1) <= \HEX2[1]~output_o\;

ww_HEX2(2) <= \HEX2[2]~output_o\;

ww_HEX2(3) <= \HEX2[3]~output_o\;

ww_HEX2(4) <= \HEX2[4]~output_o\;

ww_HEX2(5) <= \HEX2[5]~output_o\;

ww_HEX2(6) <= \HEX2[6]~output_o\;

ww_HEX3(0) <= \HEX3[0]~output_o\;

ww_HEX3(1) <= \HEX3[1]~output_o\;

ww_HEX3(2) <= \HEX3[2]~output_o\;

ww_HEX3(3) <= \HEX3[3]~output_o\;

ww_HEX3(4) <= \HEX3[4]~output_o\;

ww_HEX3(5) <= \HEX3[5]~output_o\;

ww_HEX3(6) <= \HEX3[6]~output_o\;
END structure;


