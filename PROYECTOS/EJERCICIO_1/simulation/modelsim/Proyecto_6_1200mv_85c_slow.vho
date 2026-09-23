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

-- DATE "09/23/2026 06:15:51"

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

ENTITY 	temporizador_espacio IS
    PORT (
	CLOCK_50 : IN std_logic;
	BUTTON : IN std_logic_vector(2 DOWNTO 0);
	alarma : OUT std_logic;
	felicitacion : OUT std_logic;
	HEX0_D : OUT std_logic_vector(6 DOWNTO 0);
	HEX1_D : OUT std_logic_vector(6 DOWNTO 0);
	HEX2_D : OUT std_logic_vector(6 DOWNTO 0);
	HEX3_D : OUT std_logic_vector(6 DOWNTO 0)
	);
END temporizador_espacio;

-- Design Ports Information
-- alarma	=>  Location: PIN_J1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- felicitacion	=>  Location: PIN_J2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX0_D[0]	=>  Location: PIN_E11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX0_D[1]	=>  Location: PIN_F11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX0_D[2]	=>  Location: PIN_H12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX0_D[3]	=>  Location: PIN_H13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX0_D[4]	=>  Location: PIN_G12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX0_D[5]	=>  Location: PIN_F12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX0_D[6]	=>  Location: PIN_F13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX1_D[0]	=>  Location: PIN_A13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX1_D[1]	=>  Location: PIN_B13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX1_D[2]	=>  Location: PIN_C13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX1_D[3]	=>  Location: PIN_A14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX1_D[4]	=>  Location: PIN_B14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX1_D[5]	=>  Location: PIN_E14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX1_D[6]	=>  Location: PIN_A15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX2_D[0]	=>  Location: PIN_D15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX2_D[1]	=>  Location: PIN_A16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX2_D[2]	=>  Location: PIN_B16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX2_D[3]	=>  Location: PIN_E15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX2_D[4]	=>  Location: PIN_A17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX2_D[5]	=>  Location: PIN_B17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX2_D[6]	=>  Location: PIN_F14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX3_D[0]	=>  Location: PIN_B18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX3_D[1]	=>  Location: PIN_F15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX3_D[2]	=>  Location: PIN_A19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX3_D[3]	=>  Location: PIN_B19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX3_D[4]	=>  Location: PIN_C19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX3_D[5]	=>  Location: PIN_D19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX3_D[6]	=>  Location: PIN_G15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- CLOCK_50	=>  Location: PIN_G21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- BUTTON[0]	=>  Location: PIN_H2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- BUTTON[1]	=>  Location: PIN_G3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- BUTTON[2]	=>  Location: PIN_F1,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF temporizador_espacio IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_CLOCK_50 : std_logic;
SIGNAL ww_BUTTON : std_logic_vector(2 DOWNTO 0);
SIGNAL ww_alarma : std_logic;
SIGNAL ww_felicitacion : std_logic;
SIGNAL ww_HEX0_D : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_HEX1_D : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_HEX2_D : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_HEX3_D : std_logic_vector(6 DOWNTO 0);
SIGNAL \INST_DIVISOR|reloj_1hz_reg~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \CLOCK_50~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \alarma~output_o\ : std_logic;
SIGNAL \felicitacion~output_o\ : std_logic;
SIGNAL \HEX0_D[0]~output_o\ : std_logic;
SIGNAL \HEX0_D[1]~output_o\ : std_logic;
SIGNAL \HEX0_D[2]~output_o\ : std_logic;
SIGNAL \HEX0_D[3]~output_o\ : std_logic;
SIGNAL \HEX0_D[4]~output_o\ : std_logic;
SIGNAL \HEX0_D[5]~output_o\ : std_logic;
SIGNAL \HEX0_D[6]~output_o\ : std_logic;
SIGNAL \HEX1_D[0]~output_o\ : std_logic;
SIGNAL \HEX1_D[1]~output_o\ : std_logic;
SIGNAL \HEX1_D[2]~output_o\ : std_logic;
SIGNAL \HEX1_D[3]~output_o\ : std_logic;
SIGNAL \HEX1_D[4]~output_o\ : std_logic;
SIGNAL \HEX1_D[5]~output_o\ : std_logic;
SIGNAL \HEX1_D[6]~output_o\ : std_logic;
SIGNAL \HEX2_D[0]~output_o\ : std_logic;
SIGNAL \HEX2_D[1]~output_o\ : std_logic;
SIGNAL \HEX2_D[2]~output_o\ : std_logic;
SIGNAL \HEX2_D[3]~output_o\ : std_logic;
SIGNAL \HEX2_D[4]~output_o\ : std_logic;
SIGNAL \HEX2_D[5]~output_o\ : std_logic;
SIGNAL \HEX2_D[6]~output_o\ : std_logic;
SIGNAL \HEX3_D[0]~output_o\ : std_logic;
SIGNAL \HEX3_D[1]~output_o\ : std_logic;
SIGNAL \HEX3_D[2]~output_o\ : std_logic;
SIGNAL \HEX3_D[3]~output_o\ : std_logic;
SIGNAL \HEX3_D[4]~output_o\ : std_logic;
SIGNAL \HEX3_D[5]~output_o\ : std_logic;
SIGNAL \HEX3_D[6]~output_o\ : std_logic;
SIGNAL \CLOCK_50~input_o\ : std_logic;
SIGNAL \CLOCK_50~inputclkctrl_outclk\ : std_logic;
SIGNAL \INST_DIVISOR|Add0~0_combout\ : std_logic;
SIGNAL \BUTTON[0]~input_o\ : std_logic;
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
SIGNAL \INST_DIVISOR|Equal0~2_combout\ : std_logic;
SIGNAL \INST_DIVISOR|Equal0~1_combout\ : std_logic;
SIGNAL \INST_DIVISOR|Equal0~3_combout\ : std_logic;
SIGNAL \INST_DIVISOR|Equal0~4_combout\ : std_logic;
SIGNAL \INST_DIVISOR|Equal0~7_combout\ : std_logic;
SIGNAL \INST_DIVISOR|Equal0~6_combout\ : std_logic;
SIGNAL \INST_DIVISOR|Equal0~8_combout\ : std_logic;
SIGNAL \INST_DIVISOR|reloj_1hz_reg~0_combout\ : std_logic;
SIGNAL \INST_DIVISOR|reloj_1hz_reg~feeder_combout\ : std_logic;
SIGNAL \INST_DIVISOR|reloj_1hz_reg~q\ : std_logic;
SIGNAL \INST_DIVISOR|reloj_1hz_reg~clkctrl_outclk\ : std_logic;
SIGNAL \BUTTON[1]~input_o\ : std_logic;
SIGNAL \INST_DETECTOR_OCUPACION|entrada_sinc1~0_combout\ : std_logic;
SIGNAL \INST_DETECTOR_OCUPACION|entrada_sinc1~q\ : std_logic;
SIGNAL \INST_DETECTOR_OCUPACION|entrada_sinc2~q\ : std_logic;
SIGNAL \INST_DETECTOR_OCUPACION|entrada_anterior~q\ : std_logic;
SIGNAL \BUTTON[2]~input_o\ : std_logic;
SIGNAL \INST_DETECTOR_OCUPACION|salida_sinc1~0_combout\ : std_logic;
SIGNAL \INST_DETECTOR_OCUPACION|salida_sinc1~q\ : std_logic;
SIGNAL \INST_DETECTOR_OCUPACION|salida_sinc2~q\ : std_logic;
SIGNAL \INST_DETECTOR_OCUPACION|salida_anterior~q\ : std_logic;
SIGNAL \INST_DETECTOR_OCUPACION|proceso_control~0_combout\ : std_logic;
SIGNAL \INST_DETECTOR_OCUPACION|estado_ocupado~0_combout\ : std_logic;
SIGNAL \INST_DETECTOR_OCUPACION|estado_ocupado~q\ : std_logic;
SIGNAL \INST_CONTADOR_35|contador_unidades[3]~0_combout\ : std_logic;
SIGNAL \INST_CONTADOR_35|contador_unidades[3]~2_combout\ : std_logic;
SIGNAL \INST_CONTADOR_35|contador_unidades[1]~3_combout\ : std_logic;
SIGNAL \INST_DETECTOR_OCUPACION|reinicio_contadores~q\ : std_logic;
SIGNAL \reset_combinado~combout\ : std_logic;
SIGNAL \INST_CONTADOR_35|Add1~0_combout\ : std_logic;
SIGNAL \INST_CONTADOR_35|contador_unidades[3]~5_combout\ : std_logic;
SIGNAL \INST_CONTADOR_35|Equal2~0_combout\ : std_logic;
SIGNAL \INST_CONTADOR_35|contador_decenas[0]~3_combout\ : std_logic;
SIGNAL \INST_CONTADOR_35|contador_unidades[0]~1_combout\ : std_logic;
SIGNAL \INST_CONTADOR_35|contador_unidades[2]~4_combout\ : std_logic;
SIGNAL \INST_CONTADOR_35|contador_decenas[1]~2_combout\ : std_logic;
SIGNAL \INST_CONTADOR_35|proceso_contador_35~0_combout\ : std_logic;
SIGNAL \INST_CONTADOR_35|fin_conteo_reg~0_combout\ : std_logic;
SIGNAL \INST_CONTADOR_35|fin_conteo_reg~1_combout\ : std_logic;
SIGNAL \INST_CONTADOR_35|fin_conteo_reg~q\ : std_logic;
SIGNAL \sig_habilitar_extra~combout\ : std_logic;
SIGNAL \INST_DETECTOR_OCUPACION|contador_felicitacion[0]~28_combout\ : std_logic;
SIGNAL \INST_DETECTOR_OCUPACION|contador_felicitacion[18]~64_combout\ : std_logic;
SIGNAL \INST_DETECTOR_OCUPACION|contador_felicitacion[18]~65_combout\ : std_logic;
SIGNAL \INST_DETECTOR_OCUPACION|contador_felicitacion[0]~29\ : std_logic;
SIGNAL \INST_DETECTOR_OCUPACION|contador_felicitacion[1]~30_combout\ : std_logic;
SIGNAL \INST_DETECTOR_OCUPACION|contador_felicitacion[1]~31\ : std_logic;
SIGNAL \INST_DETECTOR_OCUPACION|contador_felicitacion[2]~32_combout\ : std_logic;
SIGNAL \INST_DETECTOR_OCUPACION|contador_felicitacion[2]~33\ : std_logic;
SIGNAL \INST_DETECTOR_OCUPACION|contador_felicitacion[3]~34_combout\ : std_logic;
SIGNAL \INST_DETECTOR_OCUPACION|contador_felicitacion[3]~35\ : std_logic;
SIGNAL \INST_DETECTOR_OCUPACION|contador_felicitacion[4]~36_combout\ : std_logic;
SIGNAL \INST_DETECTOR_OCUPACION|contador_felicitacion[4]~37\ : std_logic;
SIGNAL \INST_DETECTOR_OCUPACION|contador_felicitacion[5]~38_combout\ : std_logic;
SIGNAL \INST_DETECTOR_OCUPACION|contador_felicitacion[5]~39\ : std_logic;
SIGNAL \INST_DETECTOR_OCUPACION|contador_felicitacion[6]~40_combout\ : std_logic;
SIGNAL \INST_DETECTOR_OCUPACION|contador_felicitacion[6]~41\ : std_logic;
SIGNAL \INST_DETECTOR_OCUPACION|contador_felicitacion[7]~42_combout\ : std_logic;
SIGNAL \INST_DETECTOR_OCUPACION|contador_felicitacion[7]~43\ : std_logic;
SIGNAL \INST_DETECTOR_OCUPACION|contador_felicitacion[8]~44_combout\ : std_logic;
SIGNAL \INST_DETECTOR_OCUPACION|contador_felicitacion[8]~45\ : std_logic;
SIGNAL \INST_DETECTOR_OCUPACION|contador_felicitacion[9]~46_combout\ : std_logic;
SIGNAL \INST_DETECTOR_OCUPACION|contador_felicitacion[9]~47\ : std_logic;
SIGNAL \INST_DETECTOR_OCUPACION|contador_felicitacion[10]~48_combout\ : std_logic;
SIGNAL \INST_DETECTOR_OCUPACION|contador_felicitacion[10]~49\ : std_logic;
SIGNAL \INST_DETECTOR_OCUPACION|contador_felicitacion[11]~50_combout\ : std_logic;
SIGNAL \INST_DETECTOR_OCUPACION|contador_felicitacion[11]~51\ : std_logic;
SIGNAL \INST_DETECTOR_OCUPACION|contador_felicitacion[12]~52_combout\ : std_logic;
SIGNAL \INST_DETECTOR_OCUPACION|contador_felicitacion[12]~53\ : std_logic;
SIGNAL \INST_DETECTOR_OCUPACION|contador_felicitacion[13]~54_combout\ : std_logic;
SIGNAL \INST_DETECTOR_OCUPACION|contador_felicitacion[13]~55\ : std_logic;
SIGNAL \INST_DETECTOR_OCUPACION|contador_felicitacion[14]~56_combout\ : std_logic;
SIGNAL \INST_DETECTOR_OCUPACION|contador_felicitacion[14]~57\ : std_logic;
SIGNAL \INST_DETECTOR_OCUPACION|contador_felicitacion[15]~58_combout\ : std_logic;
SIGNAL \INST_DETECTOR_OCUPACION|contador_felicitacion[15]~59\ : std_logic;
SIGNAL \INST_DETECTOR_OCUPACION|contador_felicitacion[16]~60_combout\ : std_logic;
SIGNAL \INST_DETECTOR_OCUPACION|contador_felicitacion[16]~61\ : std_logic;
SIGNAL \INST_DETECTOR_OCUPACION|contador_felicitacion[17]~62_combout\ : std_logic;
SIGNAL \INST_DETECTOR_OCUPACION|contador_felicitacion[17]~63\ : std_logic;
SIGNAL \INST_DETECTOR_OCUPACION|contador_felicitacion[18]~66_combout\ : std_logic;
SIGNAL \INST_DETECTOR_OCUPACION|contador_felicitacion[18]~67\ : std_logic;
SIGNAL \INST_DETECTOR_OCUPACION|contador_felicitacion[19]~68_combout\ : std_logic;
SIGNAL \INST_DETECTOR_OCUPACION|contador_felicitacion[19]~69\ : std_logic;
SIGNAL \INST_DETECTOR_OCUPACION|contador_felicitacion[20]~70_combout\ : std_logic;
SIGNAL \INST_DETECTOR_OCUPACION|contador_felicitacion[20]~71\ : std_logic;
SIGNAL \INST_DETECTOR_OCUPACION|contador_felicitacion[21]~72_combout\ : std_logic;
SIGNAL \INST_DETECTOR_OCUPACION|contador_felicitacion[21]~73\ : std_logic;
SIGNAL \INST_DETECTOR_OCUPACION|contador_felicitacion[22]~74_combout\ : std_logic;
SIGNAL \INST_DETECTOR_OCUPACION|contador_felicitacion[22]~75\ : std_logic;
SIGNAL \INST_DETECTOR_OCUPACION|contador_felicitacion[23]~76_combout\ : std_logic;
SIGNAL \INST_DETECTOR_OCUPACION|contador_felicitacion[23]~77\ : std_logic;
SIGNAL \INST_DETECTOR_OCUPACION|contador_felicitacion[24]~78_combout\ : std_logic;
SIGNAL \INST_DETECTOR_OCUPACION|contador_felicitacion[24]~79\ : std_logic;
SIGNAL \INST_DETECTOR_OCUPACION|contador_felicitacion[25]~80_combout\ : std_logic;
SIGNAL \INST_DETECTOR_OCUPACION|contador_felicitacion[25]~81\ : std_logic;
SIGNAL \INST_DETECTOR_OCUPACION|contador_felicitacion[26]~82_combout\ : std_logic;
SIGNAL \INST_DETECTOR_OCUPACION|contador_felicitacion[26]~83\ : std_logic;
SIGNAL \INST_DETECTOR_OCUPACION|contador_felicitacion[27]~84_combout\ : std_logic;
SIGNAL \INST_DETECTOR_OCUPACION|LessThan0~6_combout\ : std_logic;
SIGNAL \INST_DETECTOR_OCUPACION|LessThan0~4_combout\ : std_logic;
SIGNAL \INST_DETECTOR_OCUPACION|LessThan0~7_combout\ : std_logic;
SIGNAL \INST_DETECTOR_OCUPACION|LessThan0~0_combout\ : std_logic;
SIGNAL \INST_DETECTOR_OCUPACION|LessThan0~2_combout\ : std_logic;
SIGNAL \INST_DETECTOR_OCUPACION|LessThan0~1_combout\ : std_logic;
SIGNAL \INST_DETECTOR_OCUPACION|LessThan0~3_combout\ : std_logic;
SIGNAL \INST_DETECTOR_OCUPACION|LessThan0~5_combout\ : std_logic;
SIGNAL \INST_DETECTOR_OCUPACION|contando_felicitacion~0_combout\ : std_logic;
SIGNAL \INST_DETECTOR_OCUPACION|contando_felicitacion~1_combout\ : std_logic;
SIGNAL \INST_DETECTOR_OCUPACION|contando_felicitacion~q\ : std_logic;
SIGNAL \INST_DETECTOR_OCUPACION|estado_felicitacion~0_combout\ : std_logic;
SIGNAL \INST_DETECTOR_OCUPACION|estado_felicitacion~1_combout\ : std_logic;
SIGNAL \INST_DETECTOR_OCUPACION|estado_felicitacion~2_combout\ : std_logic;
SIGNAL \INST_DETECTOR_OCUPACION|estado_felicitacion~q\ : std_logic;
SIGNAL \INST_DISPLAY_HEX0|Mux6~0_combout\ : std_logic;
SIGNAL \INST_DISPLAY_HEX0|Mux5~0_combout\ : std_logic;
SIGNAL \INST_DISPLAY_HEX0|Mux4~0_combout\ : std_logic;
SIGNAL \INST_DISPLAY_HEX0|Mux3~0_combout\ : std_logic;
SIGNAL \INST_DISPLAY_HEX0|Mux2~0_combout\ : std_logic;
SIGNAL \INST_DISPLAY_HEX0|Mux1~0_combout\ : std_logic;
SIGNAL \INST_DISPLAY_HEX0|Mux0~0_combout\ : std_logic;
SIGNAL \INST_DISPLAY_HEX1|Mux1~0_combout\ : std_logic;
SIGNAL \INST_DISPLAY_HEX1|Mux1~1_combout\ : std_logic;
SIGNAL \INST_DISPLAY_HEX1|Mux1~2_combout\ : std_logic;
SIGNAL \INST_CONTADOR_EXTRA|contador_decenas[3]~8_combout\ : std_logic;
SIGNAL \INST_CONTADOR_EXTRA|contador_decenas[1]~5_combout\ : std_logic;
SIGNAL \INST_CONTADOR_EXTRA|contador_decenas[2]~6_combout\ : std_logic;
SIGNAL \INST_CONTADOR_EXTRA|contador_decenas[2]~9_combout\ : std_logic;
SIGNAL \INST_CONTADOR_EXTRA|contador_decenas[3]~7_combout\ : std_logic;
SIGNAL \INST_CONTADOR_EXTRA|contador_unidades[3]~1_combout\ : std_logic;
SIGNAL \INST_CONTADOR_EXTRA|contador_unidades[3]~2_combout\ : std_logic;
SIGNAL \INST_CONTADOR_EXTRA|contador_unidades[2]~4_combout\ : std_logic;
SIGNAL \INST_CONTADOR_EXTRA|Add1~0_combout\ : std_logic;
SIGNAL \INST_CONTADOR_EXTRA|contador_unidades[3]~5_combout\ : std_logic;
SIGNAL \INST_CONTADOR_EXTRA|Equal1~0_combout\ : std_logic;
SIGNAL \INST_CONTADOR_EXTRA|contador_decenas[0]~4_combout\ : std_logic;
SIGNAL \INST_CONTADOR_EXTRA|proceso_contador_extra~0_combout\ : std_logic;
SIGNAL \INST_CONTADOR_EXTRA|contador_unidades[0]~0_combout\ : std_logic;
SIGNAL \INST_CONTADOR_EXTRA|contador_unidades[1]~3_combout\ : std_logic;
SIGNAL \INST_DISPLAY_HEX2|Mux6~0_combout\ : std_logic;
SIGNAL \INST_DISPLAY_HEX2|Mux5~0_combout\ : std_logic;
SIGNAL \INST_DISPLAY_HEX2|Mux4~0_combout\ : std_logic;
SIGNAL \INST_DISPLAY_HEX2|Mux3~0_combout\ : std_logic;
SIGNAL \INST_DISPLAY_HEX2|Mux2~0_combout\ : std_logic;
SIGNAL \INST_DISPLAY_HEX2|Mux1~0_combout\ : std_logic;
SIGNAL \INST_DISPLAY_HEX2|Mux0~0_combout\ : std_logic;
SIGNAL \INST_DISPLAY_HEX3|Mux6~0_combout\ : std_logic;
SIGNAL \INST_DISPLAY_HEX3|Mux5~0_combout\ : std_logic;
SIGNAL \INST_DISPLAY_HEX3|Mux4~0_combout\ : std_logic;
SIGNAL \INST_DISPLAY_HEX3|Mux3~0_combout\ : std_logic;
SIGNAL \INST_DISPLAY_HEX3|Mux2~0_combout\ : std_logic;
SIGNAL \INST_DISPLAY_HEX3|Mux1~0_combout\ : std_logic;
SIGNAL \INST_DISPLAY_HEX3|Mux0~0_combout\ : std_logic;
SIGNAL \INST_DETECTOR_OCUPACION|contador_felicitacion\ : std_logic_vector(27 DOWNTO 0);
SIGNAL \INST_CONTADOR_35|contador_unidades\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \INST_CONTADOR_35|contador_decenas\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \INST_CONTADOR_EXTRA|contador_unidades\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \INST_CONTADOR_EXTRA|contador_decenas\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \INST_DIVISOR|contador_ciclos\ : std_logic_vector(25 DOWNTO 0);
SIGNAL \ALT_INV_reset_combinado~combout\ : std_logic;
SIGNAL \INST_DISPLAY_HEX3|ALT_INV_Mux0~0_combout\ : std_logic;
SIGNAL \INST_DISPLAY_HEX2|ALT_INV_Mux0~0_combout\ : std_logic;
SIGNAL \INST_CONTADOR_35|ALT_INV_contador_decenas\ : std_logic_vector(1 DOWNTO 1);
SIGNAL \INST_DISPLAY_HEX0|ALT_INV_Mux0~0_combout\ : std_logic;

BEGIN

ww_CLOCK_50 <= CLOCK_50;
ww_BUTTON <= BUTTON;
alarma <= ww_alarma;
felicitacion <= ww_felicitacion;
HEX0_D <= ww_HEX0_D;
HEX1_D <= ww_HEX1_D;
HEX2_D <= ww_HEX2_D;
HEX3_D <= ww_HEX3_D;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\INST_DIVISOR|reloj_1hz_reg~clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \INST_DIVISOR|reloj_1hz_reg~q\);

\CLOCK_50~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \CLOCK_50~input_o\);
\ALT_INV_reset_combinado~combout\ <= NOT \reset_combinado~combout\;
\INST_DISPLAY_HEX3|ALT_INV_Mux0~0_combout\ <= NOT \INST_DISPLAY_HEX3|Mux0~0_combout\;
\INST_DISPLAY_HEX2|ALT_INV_Mux0~0_combout\ <= NOT \INST_DISPLAY_HEX2|Mux0~0_combout\;
\INST_CONTADOR_35|ALT_INV_contador_decenas\(1) <= NOT \INST_CONTADOR_35|contador_decenas\(1);
\INST_DISPLAY_HEX0|ALT_INV_Mux0~0_combout\ <= NOT \INST_DISPLAY_HEX0|Mux0~0_combout\;

-- Location: IOOBUF_X0_Y20_N9
\alarma~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \sig_habilitar_extra~combout\,
	devoe => ww_devoe,
	o => \alarma~output_o\);

-- Location: IOOBUF_X0_Y20_N2
\felicitacion~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \INST_DETECTOR_OCUPACION|estado_felicitacion~q\,
	devoe => ww_devoe,
	o => \felicitacion~output_o\);

-- Location: IOOBUF_X21_Y29_N23
\HEX0_D[0]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \INST_DISPLAY_HEX0|Mux6~0_combout\,
	devoe => ww_devoe,
	o => \HEX0_D[0]~output_o\);

-- Location: IOOBUF_X21_Y29_N30
\HEX0_D[1]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \INST_DISPLAY_HEX0|Mux5~0_combout\,
	devoe => ww_devoe,
	o => \HEX0_D[1]~output_o\);

-- Location: IOOBUF_X26_Y29_N2
\HEX0_D[2]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \INST_DISPLAY_HEX0|Mux4~0_combout\,
	devoe => ww_devoe,
	o => \HEX0_D[2]~output_o\);

-- Location: IOOBUF_X28_Y29_N30
\HEX0_D[3]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \INST_DISPLAY_HEX0|Mux3~0_combout\,
	devoe => ww_devoe,
	o => \HEX0_D[3]~output_o\);

-- Location: IOOBUF_X26_Y29_N9
\HEX0_D[4]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \INST_DISPLAY_HEX0|Mux2~0_combout\,
	devoe => ww_devoe,
	o => \HEX0_D[4]~output_o\);

-- Location: IOOBUF_X28_Y29_N23
\HEX0_D[5]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \INST_DISPLAY_HEX0|Mux1~0_combout\,
	devoe => ww_devoe,
	o => \HEX0_D[5]~output_o\);

-- Location: IOOBUF_X26_Y29_N16
\HEX0_D[6]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \INST_DISPLAY_HEX0|ALT_INV_Mux0~0_combout\,
	devoe => ww_devoe,
	o => \HEX0_D[6]~output_o\);

-- Location: IOOBUF_X21_Y29_N2
\HEX1_D[0]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \INST_DISPLAY_HEX1|Mux1~0_combout\,
	devoe => ww_devoe,
	o => \HEX1_D[0]~output_o\);

-- Location: IOOBUF_X21_Y29_N9
\HEX1_D[1]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \HEX1_D[1]~output_o\);

-- Location: IOOBUF_X23_Y29_N2
\HEX1_D[2]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \INST_DISPLAY_HEX1|Mux1~1_combout\,
	devoe => ww_devoe,
	o => \HEX1_D[2]~output_o\);

-- Location: IOOBUF_X23_Y29_N23
\HEX1_D[3]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \INST_DISPLAY_HEX1|Mux1~0_combout\,
	devoe => ww_devoe,
	o => \HEX1_D[3]~output_o\);

-- Location: IOOBUF_X23_Y29_N30
\HEX1_D[4]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \INST_CONTADOR_35|contador_decenas\(0),
	devoe => ww_devoe,
	o => \HEX1_D[4]~output_o\);

-- Location: IOOBUF_X28_Y29_N16
\HEX1_D[5]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \INST_DISPLAY_HEX1|Mux1~2_combout\,
	devoe => ww_devoe,
	o => \HEX1_D[5]~output_o\);

-- Location: IOOBUF_X26_Y29_N23
\HEX1_D[6]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \INST_CONTADOR_35|ALT_INV_contador_decenas\(1),
	devoe => ww_devoe,
	o => \HEX1_D[6]~output_o\);

-- Location: IOOBUF_X32_Y29_N30
\HEX2_D[0]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \INST_DISPLAY_HEX2|Mux6~0_combout\,
	devoe => ww_devoe,
	o => \HEX2_D[0]~output_o\);

-- Location: IOOBUF_X30_Y29_N30
\HEX2_D[1]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \INST_DISPLAY_HEX2|Mux5~0_combout\,
	devoe => ww_devoe,
	o => \HEX2_D[1]~output_o\);

-- Location: IOOBUF_X28_Y29_N2
\HEX2_D[2]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \INST_DISPLAY_HEX2|Mux4~0_combout\,
	devoe => ww_devoe,
	o => \HEX2_D[2]~output_o\);

-- Location: IOOBUF_X30_Y29_N2
\HEX2_D[3]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \INST_DISPLAY_HEX2|Mux3~0_combout\,
	devoe => ww_devoe,
	o => \HEX2_D[3]~output_o\);

-- Location: IOOBUF_X30_Y29_N16
\HEX2_D[4]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \INST_DISPLAY_HEX2|Mux2~0_combout\,
	devoe => ww_devoe,
	o => \HEX2_D[4]~output_o\);

-- Location: IOOBUF_X30_Y29_N23
\HEX2_D[5]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \INST_DISPLAY_HEX2|Mux1~0_combout\,
	devoe => ww_devoe,
	o => \HEX2_D[5]~output_o\);

-- Location: IOOBUF_X37_Y29_N2
\HEX2_D[6]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \INST_DISPLAY_HEX2|ALT_INV_Mux0~0_combout\,
	devoe => ww_devoe,
	o => \HEX2_D[6]~output_o\);

-- Location: IOOBUF_X32_Y29_N23
\HEX3_D[0]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \INST_DISPLAY_HEX3|Mux6~0_combout\,
	devoe => ww_devoe,
	o => \HEX3_D[0]~output_o\);

-- Location: IOOBUF_X39_Y29_N16
\HEX3_D[1]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \INST_DISPLAY_HEX3|Mux5~0_combout\,
	devoe => ww_devoe,
	o => \HEX3_D[1]~output_o\);

-- Location: IOOBUF_X32_Y29_N9
\HEX3_D[2]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \INST_DISPLAY_HEX3|Mux4~0_combout\,
	devoe => ww_devoe,
	o => \HEX3_D[2]~output_o\);

-- Location: IOOBUF_X32_Y29_N2
\HEX3_D[3]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \INST_DISPLAY_HEX3|Mux3~0_combout\,
	devoe => ww_devoe,
	o => \HEX3_D[3]~output_o\);

-- Location: IOOBUF_X37_Y29_N23
\HEX3_D[4]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \INST_DISPLAY_HEX3|Mux2~0_combout\,
	devoe => ww_devoe,
	o => \HEX3_D[4]~output_o\);

-- Location: IOOBUF_X37_Y29_N30
\HEX3_D[5]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \INST_DISPLAY_HEX3|Mux1~0_combout\,
	devoe => ww_devoe,
	o => \HEX3_D[5]~output_o\);

-- Location: IOOBUF_X39_Y29_N30
\HEX3_D[6]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \INST_DISPLAY_HEX3|ALT_INV_Mux0~0_combout\,
	devoe => ww_devoe,
	o => \HEX3_D[6]~output_o\);

-- Location: IOIBUF_X41_Y15_N1
\CLOCK_50~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_CLOCK_50,
	o => \CLOCK_50~input_o\);

-- Location: CLKCTRL_G9
\CLOCK_50~inputclkctrl\ : cycloneiii_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \CLOCK_50~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \CLOCK_50~inputclkctrl_outclk\);

-- Location: LCCOMB_X23_Y24_N6
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

-- Location: IOIBUF_X0_Y21_N8
\BUTTON[0]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_BUTTON(0),
	o => \BUTTON[0]~input_o\);

-- Location: FF_X23_Y24_N7
\INST_DIVISOR|contador_ciclos[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \INST_DIVISOR|Add0~0_combout\,
	clrn => \BUTTON[0]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST_DIVISOR|contador_ciclos\(0));

-- Location: LCCOMB_X23_Y24_N8
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

-- Location: FF_X23_Y24_N9
\INST_DIVISOR|contador_ciclos[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \INST_DIVISOR|Add0~2_combout\,
	clrn => \BUTTON[0]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST_DIVISOR|contador_ciclos\(1));

-- Location: LCCOMB_X23_Y24_N10
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

-- Location: FF_X23_Y24_N11
\INST_DIVISOR|contador_ciclos[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \INST_DIVISOR|Add0~4_combout\,
	clrn => \BUTTON[0]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST_DIVISOR|contador_ciclos\(2));

-- Location: LCCOMB_X23_Y24_N12
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

-- Location: FF_X23_Y24_N13
\INST_DIVISOR|contador_ciclos[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \INST_DIVISOR|Add0~6_combout\,
	clrn => \BUTTON[0]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST_DIVISOR|contador_ciclos\(3));

-- Location: LCCOMB_X23_Y24_N14
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

-- Location: FF_X23_Y24_N15
\INST_DIVISOR|contador_ciclos[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \INST_DIVISOR|Add0~8_combout\,
	clrn => \BUTTON[0]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST_DIVISOR|contador_ciclos\(4));

-- Location: LCCOMB_X23_Y24_N16
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

-- Location: FF_X23_Y24_N17
\INST_DIVISOR|contador_ciclos[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \INST_DIVISOR|Add0~10_combout\,
	clrn => \BUTTON[0]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST_DIVISOR|contador_ciclos\(5));

-- Location: LCCOMB_X23_Y24_N18
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

-- Location: LCCOMB_X23_Y24_N2
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

-- Location: FF_X23_Y24_N3
\INST_DIVISOR|contador_ciclos[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \INST_DIVISOR|contador_ciclos~11_combout\,
	clrn => \BUTTON[0]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST_DIVISOR|contador_ciclos\(6));

-- Location: LCCOMB_X23_Y24_N20
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

-- Location: FF_X23_Y24_N21
\INST_DIVISOR|contador_ciclos[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \INST_DIVISOR|Add0~14_combout\,
	clrn => \BUTTON[0]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST_DIVISOR|contador_ciclos\(7));

-- Location: LCCOMB_X23_Y24_N22
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

-- Location: FF_X23_Y24_N23
\INST_DIVISOR|contador_ciclos[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \INST_DIVISOR|Add0~16_combout\,
	clrn => \BUTTON[0]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST_DIVISOR|contador_ciclos\(8));

-- Location: LCCOMB_X23_Y24_N24
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

-- Location: FF_X23_Y24_N25
\INST_DIVISOR|contador_ciclos[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \INST_DIVISOR|Add0~18_combout\,
	clrn => \BUTTON[0]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST_DIVISOR|contador_ciclos\(9));

-- Location: LCCOMB_X23_Y24_N4
\INST_DIVISOR|Equal0~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST_DIVISOR|Equal0~5_combout\ = (!\INST_DIVISOR|contador_ciclos\(8) & (!\INST_DIVISOR|contador_ciclos\(6) & (!\INST_DIVISOR|contador_ciclos\(7) & !\INST_DIVISOR|contador_ciclos\(9))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INST_DIVISOR|contador_ciclos\(8),
	datab => \INST_DIVISOR|contador_ciclos\(6),
	datac => \INST_DIVISOR|contador_ciclos\(7),
	datad => \INST_DIVISOR|contador_ciclos\(9),
	combout => \INST_DIVISOR|Equal0~5_combout\);

-- Location: LCCOMB_X23_Y24_N26
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

-- Location: FF_X23_Y24_N27
\INST_DIVISOR|contador_ciclos[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \INST_DIVISOR|Add0~20_combout\,
	clrn => \BUTTON[0]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST_DIVISOR|contador_ciclos\(10));

-- Location: LCCOMB_X23_Y24_N28
\INST_DIVISOR|Add0~22\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST_DIVISOR|Add0~22_combout\ = (\INST_DIVISOR|contador_ciclos\(11) & (!\INST_DIVISOR|Add0~21\)) # (!\INST_DIVISOR|contador_ciclos\(11) & ((\INST_DIVISOR|Add0~21\) # (GND)))
-- \INST_DIVISOR|Add0~23\ = CARRY((!\INST_DIVISOR|Add0~21\) # (!\INST_DIVISOR|contador_ciclos\(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \INST_DIVISOR|contador_ciclos\(11),
	datad => VCC,
	cin => \INST_DIVISOR|Add0~21\,
	combout => \INST_DIVISOR|Add0~22_combout\,
	cout => \INST_DIVISOR|Add0~23\);

-- Location: LCCOMB_X23_Y24_N0
\INST_DIVISOR|contador_ciclos~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST_DIVISOR|contador_ciclos~10_combout\ = (!\INST_DIVISOR|Equal0~8_combout\ & \INST_DIVISOR|Add0~22_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \INST_DIVISOR|Equal0~8_combout\,
	datad => \INST_DIVISOR|Add0~22_combout\,
	combout => \INST_DIVISOR|contador_ciclos~10_combout\);

-- Location: FF_X23_Y24_N1
\INST_DIVISOR|contador_ciclos[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \INST_DIVISOR|contador_ciclos~10_combout\,
	clrn => \BUTTON[0]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST_DIVISOR|contador_ciclos\(11));

-- Location: LCCOMB_X23_Y24_N30
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

-- Location: LCCOMB_X24_Y23_N24
\INST_DIVISOR|contador_ciclos~9\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST_DIVISOR|contador_ciclos~9_combout\ = (!\INST_DIVISOR|Equal0~8_combout\ & \INST_DIVISOR|Add0~24_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \INST_DIVISOR|Equal0~8_combout\,
	datad => \INST_DIVISOR|Add0~24_combout\,
	combout => \INST_DIVISOR|contador_ciclos~9_combout\);

-- Location: FF_X24_Y23_N25
\INST_DIVISOR|contador_ciclos[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \INST_DIVISOR|contador_ciclos~9_combout\,
	clrn => \BUTTON[0]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST_DIVISOR|contador_ciclos\(12));

-- Location: LCCOMB_X23_Y23_N0
\INST_DIVISOR|Add0~26\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST_DIVISOR|Add0~26_combout\ = (\INST_DIVISOR|contador_ciclos\(13) & (!\INST_DIVISOR|Add0~25\)) # (!\INST_DIVISOR|contador_ciclos\(13) & ((\INST_DIVISOR|Add0~25\) # (GND)))
-- \INST_DIVISOR|Add0~27\ = CARRY((!\INST_DIVISOR|Add0~25\) # (!\INST_DIVISOR|contador_ciclos\(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \INST_DIVISOR|contador_ciclos\(13),
	datad => VCC,
	cin => \INST_DIVISOR|Add0~25\,
	combout => \INST_DIVISOR|Add0~26_combout\,
	cout => \INST_DIVISOR|Add0~27\);

-- Location: LCCOMB_X24_Y23_N14
\INST_DIVISOR|contador_ciclos~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST_DIVISOR|contador_ciclos~8_combout\ = (\INST_DIVISOR|Add0~26_combout\ & !\INST_DIVISOR|Equal0~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \INST_DIVISOR|Add0~26_combout\,
	datad => \INST_DIVISOR|Equal0~8_combout\,
	combout => \INST_DIVISOR|contador_ciclos~8_combout\);

-- Location: FF_X24_Y23_N15
\INST_DIVISOR|contador_ciclos[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \INST_DIVISOR|contador_ciclos~8_combout\,
	clrn => \BUTTON[0]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST_DIVISOR|contador_ciclos\(13));

-- Location: LCCOMB_X23_Y23_N2
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

-- Location: LCCOMB_X24_Y23_N22
\INST_DIVISOR|contador_ciclos~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST_DIVISOR|contador_ciclos~7_combout\ = (!\INST_DIVISOR|Equal0~8_combout\ & \INST_DIVISOR|Add0~28_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \INST_DIVISOR|Equal0~8_combout\,
	datad => \INST_DIVISOR|Add0~28_combout\,
	combout => \INST_DIVISOR|contador_ciclos~7_combout\);

-- Location: FF_X24_Y23_N23
\INST_DIVISOR|contador_ciclos[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \INST_DIVISOR|contador_ciclos~7_combout\,
	clrn => \BUTTON[0]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST_DIVISOR|contador_ciclos\(14));

-- Location: LCCOMB_X23_Y23_N4
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

-- Location: FF_X23_Y23_N5
\INST_DIVISOR|contador_ciclos[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \INST_DIVISOR|Add0~30_combout\,
	clrn => \BUTTON[0]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST_DIVISOR|contador_ciclos\(15));

-- Location: LCCOMB_X23_Y23_N6
\INST_DIVISOR|Add0~32\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST_DIVISOR|Add0~32_combout\ = (\INST_DIVISOR|contador_ciclos\(16) & (\INST_DIVISOR|Add0~31\ $ (GND))) # (!\INST_DIVISOR|contador_ciclos\(16) & (!\INST_DIVISOR|Add0~31\ & VCC))
-- \INST_DIVISOR|Add0~33\ = CARRY((\INST_DIVISOR|contador_ciclos\(16) & !\INST_DIVISOR|Add0~31\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \INST_DIVISOR|contador_ciclos\(16),
	datad => VCC,
	cin => \INST_DIVISOR|Add0~31\,
	combout => \INST_DIVISOR|Add0~32_combout\,
	cout => \INST_DIVISOR|Add0~33\);

-- Location: LCCOMB_X24_Y23_N30
\INST_DIVISOR|contador_ciclos~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST_DIVISOR|contador_ciclos~6_combout\ = (\INST_DIVISOR|Add0~32_combout\ & !\INST_DIVISOR|Equal0~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \INST_DIVISOR|Add0~32_combout\,
	datad => \INST_DIVISOR|Equal0~8_combout\,
	combout => \INST_DIVISOR|contador_ciclos~6_combout\);

-- Location: FF_X24_Y23_N31
\INST_DIVISOR|contador_ciclos[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \INST_DIVISOR|contador_ciclos~6_combout\,
	clrn => \BUTTON[0]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST_DIVISOR|contador_ciclos\(16));

-- Location: LCCOMB_X23_Y23_N8
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

-- Location: FF_X23_Y23_N9
\INST_DIVISOR|contador_ciclos[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \INST_DIVISOR|Add0~34_combout\,
	clrn => \BUTTON[0]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST_DIVISOR|contador_ciclos\(17));

-- Location: LCCOMB_X23_Y23_N10
\INST_DIVISOR|Add0~36\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST_DIVISOR|Add0~36_combout\ = (\INST_DIVISOR|contador_ciclos\(18) & (\INST_DIVISOR|Add0~35\ $ (GND))) # (!\INST_DIVISOR|contador_ciclos\(18) & (!\INST_DIVISOR|Add0~35\ & VCC))
-- \INST_DIVISOR|Add0~37\ = CARRY((\INST_DIVISOR|contador_ciclos\(18) & !\INST_DIVISOR|Add0~35\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \INST_DIVISOR|contador_ciclos\(18),
	datad => VCC,
	cin => \INST_DIVISOR|Add0~35\,
	combout => \INST_DIVISOR|Add0~36_combout\,
	cout => \INST_DIVISOR|Add0~37\);

-- Location: LCCOMB_X22_Y23_N22
\INST_DIVISOR|contador_ciclos~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST_DIVISOR|contador_ciclos~5_combout\ = (\INST_DIVISOR|Add0~36_combout\ & !\INST_DIVISOR|Equal0~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \INST_DIVISOR|Add0~36_combout\,
	datad => \INST_DIVISOR|Equal0~8_combout\,
	combout => \INST_DIVISOR|contador_ciclos~5_combout\);

-- Location: FF_X22_Y23_N23
\INST_DIVISOR|contador_ciclos[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \INST_DIVISOR|contador_ciclos~5_combout\,
	clrn => \BUTTON[0]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST_DIVISOR|contador_ciclos\(18));

-- Location: LCCOMB_X23_Y23_N12
\INST_DIVISOR|Add0~38\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST_DIVISOR|Add0~38_combout\ = (\INST_DIVISOR|contador_ciclos\(19) & (!\INST_DIVISOR|Add0~37\)) # (!\INST_DIVISOR|contador_ciclos\(19) & ((\INST_DIVISOR|Add0~37\) # (GND)))
-- \INST_DIVISOR|Add0~39\ = CARRY((!\INST_DIVISOR|Add0~37\) # (!\INST_DIVISOR|contador_ciclos\(19)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \INST_DIVISOR|contador_ciclos\(19),
	datad => VCC,
	cin => \INST_DIVISOR|Add0~37\,
	combout => \INST_DIVISOR|Add0~38_combout\,
	cout => \INST_DIVISOR|Add0~39\);

-- Location: LCCOMB_X22_Y23_N16
\INST_DIVISOR|contador_ciclos~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST_DIVISOR|contador_ciclos~4_combout\ = (\INST_DIVISOR|Add0~38_combout\ & !\INST_DIVISOR|Equal0~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \INST_DIVISOR|Add0~38_combout\,
	datad => \INST_DIVISOR|Equal0~8_combout\,
	combout => \INST_DIVISOR|contador_ciclos~4_combout\);

-- Location: FF_X22_Y23_N17
\INST_DIVISOR|contador_ciclos[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \INST_DIVISOR|contador_ciclos~4_combout\,
	clrn => \BUTTON[0]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST_DIVISOR|contador_ciclos\(19));

-- Location: LCCOMB_X23_Y23_N14
\INST_DIVISOR|Add0~40\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST_DIVISOR|Add0~40_combout\ = (\INST_DIVISOR|contador_ciclos\(20) & (\INST_DIVISOR|Add0~39\ $ (GND))) # (!\INST_DIVISOR|contador_ciclos\(20) & (!\INST_DIVISOR|Add0~39\ & VCC))
-- \INST_DIVISOR|Add0~41\ = CARRY((\INST_DIVISOR|contador_ciclos\(20) & !\INST_DIVISOR|Add0~39\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \INST_DIVISOR|contador_ciclos\(20),
	datad => VCC,
	cin => \INST_DIVISOR|Add0~39\,
	combout => \INST_DIVISOR|Add0~40_combout\,
	cout => \INST_DIVISOR|Add0~41\);

-- Location: LCCOMB_X23_Y23_N30
\INST_DIVISOR|contador_ciclos~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST_DIVISOR|contador_ciclos~3_combout\ = (\INST_DIVISOR|Add0~40_combout\ & !\INST_DIVISOR|Equal0~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \INST_DIVISOR|Add0~40_combout\,
	datad => \INST_DIVISOR|Equal0~8_combout\,
	combout => \INST_DIVISOR|contador_ciclos~3_combout\);

-- Location: FF_X23_Y23_N31
\INST_DIVISOR|contador_ciclos[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \INST_DIVISOR|contador_ciclos~3_combout\,
	clrn => \BUTTON[0]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST_DIVISOR|contador_ciclos\(20));

-- Location: LCCOMB_X23_Y23_N16
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

-- Location: LCCOMB_X23_Y23_N28
\INST_DIVISOR|contador_ciclos~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST_DIVISOR|contador_ciclos~2_combout\ = (!\INST_DIVISOR|Equal0~8_combout\ & \INST_DIVISOR|Add0~42_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \INST_DIVISOR|Equal0~8_combout\,
	datad => \INST_DIVISOR|Add0~42_combout\,
	combout => \INST_DIVISOR|contador_ciclos~2_combout\);

-- Location: FF_X23_Y23_N29
\INST_DIVISOR|contador_ciclos[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \INST_DIVISOR|contador_ciclos~2_combout\,
	clrn => \BUTTON[0]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST_DIVISOR|contador_ciclos\(21));

-- Location: LCCOMB_X23_Y23_N18
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

-- Location: LCCOMB_X23_Y23_N26
\INST_DIVISOR|contador_ciclos~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST_DIVISOR|contador_ciclos~1_combout\ = (!\INST_DIVISOR|Equal0~8_combout\ & \INST_DIVISOR|Add0~44_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \INST_DIVISOR|Equal0~8_combout\,
	datad => \INST_DIVISOR|Add0~44_combout\,
	combout => \INST_DIVISOR|contador_ciclos~1_combout\);

-- Location: FF_X23_Y23_N27
\INST_DIVISOR|contador_ciclos[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \INST_DIVISOR|contador_ciclos~1_combout\,
	clrn => \BUTTON[0]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST_DIVISOR|contador_ciclos\(22));

-- Location: LCCOMB_X23_Y23_N20
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

-- Location: FF_X23_Y23_N21
\INST_DIVISOR|contador_ciclos[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \INST_DIVISOR|Add0~46_combout\,
	clrn => \BUTTON[0]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST_DIVISOR|contador_ciclos\(23));

-- Location: LCCOMB_X23_Y23_N22
\INST_DIVISOR|Add0~48\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST_DIVISOR|Add0~48_combout\ = (\INST_DIVISOR|contador_ciclos\(24) & (\INST_DIVISOR|Add0~47\ $ (GND))) # (!\INST_DIVISOR|contador_ciclos\(24) & (!\INST_DIVISOR|Add0~47\ & VCC))
-- \INST_DIVISOR|Add0~49\ = CARRY((\INST_DIVISOR|contador_ciclos\(24) & !\INST_DIVISOR|Add0~47\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \INST_DIVISOR|contador_ciclos\(24),
	datad => VCC,
	cin => \INST_DIVISOR|Add0~47\,
	combout => \INST_DIVISOR|Add0~48_combout\,
	cout => \INST_DIVISOR|Add0~49\);

-- Location: LCCOMB_X24_Y23_N12
\INST_DIVISOR|contador_ciclos~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST_DIVISOR|contador_ciclos~0_combout\ = (!\INST_DIVISOR|Equal0~8_combout\ & \INST_DIVISOR|Add0~48_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \INST_DIVISOR|Equal0~8_combout\,
	datad => \INST_DIVISOR|Add0~48_combout\,
	combout => \INST_DIVISOR|contador_ciclos~0_combout\);

-- Location: FF_X24_Y23_N13
\INST_DIVISOR|contador_ciclos[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \INST_DIVISOR|contador_ciclos~0_combout\,
	clrn => \BUTTON[0]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST_DIVISOR|contador_ciclos\(24));

-- Location: LCCOMB_X23_Y23_N24
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

-- Location: FF_X23_Y23_N25
\INST_DIVISOR|contador_ciclos[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \INST_DIVISOR|Add0~50_combout\,
	clrn => \BUTTON[0]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST_DIVISOR|contador_ciclos\(25));

-- Location: LCCOMB_X24_Y23_N26
\INST_DIVISOR|Equal0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST_DIVISOR|Equal0~0_combout\ = (\INST_DIVISOR|contador_ciclos\(24) & (!\INST_DIVISOR|contador_ciclos\(25) & (\INST_DIVISOR|contador_ciclos\(22) & !\INST_DIVISOR|contador_ciclos\(23))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INST_DIVISOR|contador_ciclos\(24),
	datab => \INST_DIVISOR|contador_ciclos\(25),
	datac => \INST_DIVISOR|contador_ciclos\(22),
	datad => \INST_DIVISOR|contador_ciclos\(23),
	combout => \INST_DIVISOR|Equal0~0_combout\);

-- Location: LCCOMB_X24_Y23_N8
\INST_DIVISOR|Equal0~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST_DIVISOR|Equal0~2_combout\ = (\INST_DIVISOR|contador_ciclos\(14) & (!\INST_DIVISOR|contador_ciclos\(15) & (\INST_DIVISOR|contador_ciclos\(16) & !\INST_DIVISOR|contador_ciclos\(17))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INST_DIVISOR|contador_ciclos\(14),
	datab => \INST_DIVISOR|contador_ciclos\(15),
	datac => \INST_DIVISOR|contador_ciclos\(16),
	datad => \INST_DIVISOR|contador_ciclos\(17),
	combout => \INST_DIVISOR|Equal0~2_combout\);

-- Location: LCCOMB_X22_Y23_N20
\INST_DIVISOR|Equal0~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST_DIVISOR|Equal0~1_combout\ = (\INST_DIVISOR|contador_ciclos\(18) & (\INST_DIVISOR|contador_ciclos\(19) & (\INST_DIVISOR|contador_ciclos\(20) & \INST_DIVISOR|contador_ciclos\(21))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INST_DIVISOR|contador_ciclos\(18),
	datab => \INST_DIVISOR|contador_ciclos\(19),
	datac => \INST_DIVISOR|contador_ciclos\(20),
	datad => \INST_DIVISOR|contador_ciclos\(21),
	combout => \INST_DIVISOR|Equal0~1_combout\);

-- Location: LCCOMB_X24_Y23_N28
\INST_DIVISOR|Equal0~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST_DIVISOR|Equal0~3_combout\ = (!\INST_DIVISOR|contador_ciclos\(10) & (\INST_DIVISOR|contador_ciclos\(13) & (\INST_DIVISOR|contador_ciclos\(11) & \INST_DIVISOR|contador_ciclos\(12))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INST_DIVISOR|contador_ciclos\(10),
	datab => \INST_DIVISOR|contador_ciclos\(13),
	datac => \INST_DIVISOR|contador_ciclos\(11),
	datad => \INST_DIVISOR|contador_ciclos\(12),
	combout => \INST_DIVISOR|Equal0~3_combout\);

-- Location: LCCOMB_X24_Y23_N20
\INST_DIVISOR|Equal0~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST_DIVISOR|Equal0~4_combout\ = (\INST_DIVISOR|Equal0~0_combout\ & (\INST_DIVISOR|Equal0~2_combout\ & (\INST_DIVISOR|Equal0~1_combout\ & \INST_DIVISOR|Equal0~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INST_DIVISOR|Equal0~0_combout\,
	datab => \INST_DIVISOR|Equal0~2_combout\,
	datac => \INST_DIVISOR|Equal0~1_combout\,
	datad => \INST_DIVISOR|Equal0~3_combout\,
	combout => \INST_DIVISOR|Equal0~4_combout\);

-- Location: LCCOMB_X24_Y24_N30
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

-- Location: LCCOMB_X24_Y24_N24
\INST_DIVISOR|Equal0~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST_DIVISOR|Equal0~6_combout\ = (\INST_DIVISOR|contador_ciclos\(4) & (\INST_DIVISOR|contador_ciclos\(2) & (\INST_DIVISOR|contador_ciclos\(5) & \INST_DIVISOR|contador_ciclos\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INST_DIVISOR|contador_ciclos\(4),
	datab => \INST_DIVISOR|contador_ciclos\(2),
	datac => \INST_DIVISOR|contador_ciclos\(5),
	datad => \INST_DIVISOR|contador_ciclos\(3),
	combout => \INST_DIVISOR|Equal0~6_combout\);

-- Location: LCCOMB_X24_Y23_N18
\INST_DIVISOR|Equal0~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST_DIVISOR|Equal0~8_combout\ = (\INST_DIVISOR|Equal0~5_combout\ & (\INST_DIVISOR|Equal0~4_combout\ & (\INST_DIVISOR|Equal0~7_combout\ & \INST_DIVISOR|Equal0~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INST_DIVISOR|Equal0~5_combout\,
	datab => \INST_DIVISOR|Equal0~4_combout\,
	datac => \INST_DIVISOR|Equal0~7_combout\,
	datad => \INST_DIVISOR|Equal0~6_combout\,
	combout => \INST_DIVISOR|Equal0~8_combout\);

-- Location: LCCOMB_X24_Y23_N16
\INST_DIVISOR|reloj_1hz_reg~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST_DIVISOR|reloj_1hz_reg~0_combout\ = \INST_DIVISOR|reloj_1hz_reg~q\ $ (\INST_DIVISOR|Equal0~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \INST_DIVISOR|reloj_1hz_reg~q\,
	datad => \INST_DIVISOR|Equal0~8_combout\,
	combout => \INST_DIVISOR|reloj_1hz_reg~0_combout\);

-- Location: LCCOMB_X24_Y23_N10
\INST_DIVISOR|reloj_1hz_reg~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST_DIVISOR|reloj_1hz_reg~feeder_combout\ = \INST_DIVISOR|reloj_1hz_reg~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \INST_DIVISOR|reloj_1hz_reg~0_combout\,
	combout => \INST_DIVISOR|reloj_1hz_reg~feeder_combout\);

-- Location: FF_X24_Y23_N11
\INST_DIVISOR|reloj_1hz_reg\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \INST_DIVISOR|reloj_1hz_reg~feeder_combout\,
	clrn => \BUTTON[0]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST_DIVISOR|reloj_1hz_reg~q\);

-- Location: CLKCTRL_G13
\INST_DIVISOR|reloj_1hz_reg~clkctrl\ : cycloneiii_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \INST_DIVISOR|reloj_1hz_reg~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \INST_DIVISOR|reloj_1hz_reg~clkctrl_outclk\);

-- Location: IOIBUF_X0_Y23_N15
\BUTTON[1]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_BUTTON(1),
	o => \BUTTON[1]~input_o\);

-- Location: LCCOMB_X27_Y23_N26
\INST_DETECTOR_OCUPACION|entrada_sinc1~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST_DETECTOR_OCUPACION|entrada_sinc1~0_combout\ = !\BUTTON[1]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \BUTTON[1]~input_o\,
	combout => \INST_DETECTOR_OCUPACION|entrada_sinc1~0_combout\);

-- Location: FF_X27_Y23_N31
\INST_DETECTOR_OCUPACION|entrada_sinc1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \INST_DETECTOR_OCUPACION|entrada_sinc1~0_combout\,
	clrn => \BUTTON[0]~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST_DETECTOR_OCUPACION|entrada_sinc1~q\);

-- Location: FF_X27_Y23_N9
\INST_DETECTOR_OCUPACION|entrada_sinc2\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \INST_DETECTOR_OCUPACION|entrada_sinc1~q\,
	clrn => \BUTTON[0]~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST_DETECTOR_OCUPACION|entrada_sinc2~q\);

-- Location: FF_X27_Y23_N19
\INST_DETECTOR_OCUPACION|entrada_anterior\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \INST_DETECTOR_OCUPACION|entrada_sinc2~q\,
	clrn => \BUTTON[0]~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST_DETECTOR_OCUPACION|entrada_anterior~q\);

-- Location: IOIBUF_X0_Y23_N1
\BUTTON[2]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_BUTTON(2),
	o => \BUTTON[2]~input_o\);

-- Location: LCCOMB_X27_Y23_N8
\INST_DETECTOR_OCUPACION|salida_sinc1~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST_DETECTOR_OCUPACION|salida_sinc1~0_combout\ = !\BUTTON[2]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \BUTTON[2]~input_o\,
	combout => \INST_DETECTOR_OCUPACION|salida_sinc1~0_combout\);

-- Location: FF_X27_Y23_N5
\INST_DETECTOR_OCUPACION|salida_sinc1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \INST_DETECTOR_OCUPACION|salida_sinc1~0_combout\,
	clrn => \BUTTON[0]~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST_DETECTOR_OCUPACION|salida_sinc1~q\);

-- Location: FF_X27_Y23_N27
\INST_DETECTOR_OCUPACION|salida_sinc2\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \INST_DETECTOR_OCUPACION|salida_sinc1~q\,
	clrn => \BUTTON[0]~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST_DETECTOR_OCUPACION|salida_sinc2~q\);

-- Location: FF_X27_Y23_N3
\INST_DETECTOR_OCUPACION|salida_anterior\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \INST_DETECTOR_OCUPACION|salida_sinc2~q\,
	clrn => \BUTTON[0]~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST_DETECTOR_OCUPACION|salida_anterior~q\);

-- Location: LCCOMB_X27_Y23_N2
\INST_DETECTOR_OCUPACION|proceso_control~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST_DETECTOR_OCUPACION|proceso_control~0_combout\ = (\INST_DETECTOR_OCUPACION|salida_sinc2~q\ & (!\INST_DETECTOR_OCUPACION|salida_anterior~q\ & \INST_DETECTOR_OCUPACION|estado_ocupado~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INST_DETECTOR_OCUPACION|salida_sinc2~q\,
	datac => \INST_DETECTOR_OCUPACION|salida_anterior~q\,
	datad => \INST_DETECTOR_OCUPACION|estado_ocupado~q\,
	combout => \INST_DETECTOR_OCUPACION|proceso_control~0_combout\);

-- Location: LCCOMB_X28_Y23_N20
\INST_DETECTOR_OCUPACION|estado_ocupado~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST_DETECTOR_OCUPACION|estado_ocupado~0_combout\ = (!\INST_DETECTOR_OCUPACION|proceso_control~0_combout\ & ((\INST_DETECTOR_OCUPACION|estado_ocupado~q\) # ((!\INST_DETECTOR_OCUPACION|entrada_anterior~q\ & \INST_DETECTOR_OCUPACION|entrada_sinc2~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INST_DETECTOR_OCUPACION|entrada_anterior~q\,
	datab => \INST_DETECTOR_OCUPACION|entrada_sinc2~q\,
	datac => \INST_DETECTOR_OCUPACION|proceso_control~0_combout\,
	datad => \INST_DETECTOR_OCUPACION|estado_ocupado~q\,
	combout => \INST_DETECTOR_OCUPACION|estado_ocupado~0_combout\);

-- Location: FF_X30_Y23_N5
\INST_DETECTOR_OCUPACION|estado_ocupado\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \INST_DETECTOR_OCUPACION|estado_ocupado~0_combout\,
	clrn => \BUTTON[0]~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST_DETECTOR_OCUPACION|estado_ocupado~q\);

-- Location: LCCOMB_X30_Y23_N14
\INST_CONTADOR_35|contador_unidades[3]~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST_CONTADOR_35|contador_unidades[3]~0_combout\ = (\INST_DETECTOR_OCUPACION|estado_ocupado~q\ & !\INST_CONTADOR_35|fin_conteo_reg~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \INST_DETECTOR_OCUPACION|estado_ocupado~q\,
	datad => \INST_CONTADOR_35|fin_conteo_reg~q\,
	combout => \INST_CONTADOR_35|contador_unidades[3]~0_combout\);

-- Location: LCCOMB_X31_Y23_N10
\INST_CONTADOR_35|contador_unidades[3]~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST_CONTADOR_35|contador_unidades[3]~2_combout\ = (\INST_CONTADOR_35|contador_unidades[3]~0_combout\ & (((!\INST_CONTADOR_35|proceso_contador_35~0_combout\) # (!\INST_CONTADOR_35|contador_unidades\(0))) # (!\INST_CONTADOR_35|contador_decenas\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INST_CONTADOR_35|contador_decenas\(0),
	datab => \INST_CONTADOR_35|contador_unidades\(0),
	datac => \INST_CONTADOR_35|proceso_contador_35~0_combout\,
	datad => \INST_CONTADOR_35|contador_unidades[3]~0_combout\,
	combout => \INST_CONTADOR_35|contador_unidades[3]~2_combout\);

-- Location: LCCOMB_X31_Y23_N24
\INST_CONTADOR_35|contador_unidades[1]~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST_CONTADOR_35|contador_unidades[1]~3_combout\ = (\INST_CONTADOR_35|contador_unidades[3]~2_combout\ & (!\INST_CONTADOR_35|Equal2~0_combout\ & (\INST_CONTADOR_35|contador_unidades\(0) $ (\INST_CONTADOR_35|contador_unidades\(1))))) # 
-- (!\INST_CONTADOR_35|contador_unidades[3]~2_combout\ & (((\INST_CONTADOR_35|contador_unidades\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001010011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INST_CONTADOR_35|Equal2~0_combout\,
	datab => \INST_CONTADOR_35|contador_unidades\(0),
	datac => \INST_CONTADOR_35|contador_unidades\(1),
	datad => \INST_CONTADOR_35|contador_unidades[3]~2_combout\,
	combout => \INST_CONTADOR_35|contador_unidades[1]~3_combout\);

-- Location: FF_X30_Y23_N17
\INST_DETECTOR_OCUPACION|reinicio_contadores\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \INST_DETECTOR_OCUPACION|proceso_control~0_combout\,
	clrn => \BUTTON[0]~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST_DETECTOR_OCUPACION|reinicio_contadores~q\);

-- Location: LCCOMB_X30_Y23_N16
reset_combinado : cycloneiii_lcell_comb
-- Equation(s):
-- \reset_combinado~combout\ = (\INST_DETECTOR_OCUPACION|reinicio_contadores~q\) # (!\BUTTON[0]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \INST_DETECTOR_OCUPACION|reinicio_contadores~q\,
	datad => \BUTTON[0]~input_o\,
	combout => \reset_combinado~combout\);

-- Location: FF_X31_Y23_N25
\INST_CONTADOR_35|contador_unidades[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \INST_DIVISOR|reloj_1hz_reg~clkctrl_outclk\,
	d => \INST_CONTADOR_35|contador_unidades[1]~3_combout\,
	clrn => \ALT_INV_reset_combinado~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST_CONTADOR_35|contador_unidades\(1));

-- Location: LCCOMB_X31_Y23_N28
\INST_CONTADOR_35|Add1~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST_CONTADOR_35|Add1~0_combout\ = \INST_CONTADOR_35|contador_unidades\(3) $ (((\INST_CONTADOR_35|contador_unidades\(2) & (\INST_CONTADOR_35|contador_unidades\(1) & \INST_CONTADOR_35|contador_unidades\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INST_CONTADOR_35|contador_unidades\(2),
	datab => \INST_CONTADOR_35|contador_unidades\(1),
	datac => \INST_CONTADOR_35|contador_unidades\(3),
	datad => \INST_CONTADOR_35|contador_unidades\(0),
	combout => \INST_CONTADOR_35|Add1~0_combout\);

-- Location: LCCOMB_X31_Y23_N4
\INST_CONTADOR_35|contador_unidades[3]~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST_CONTADOR_35|contador_unidades[3]~5_combout\ = (\INST_CONTADOR_35|contador_unidades[3]~2_combout\ & (\INST_CONTADOR_35|Add1~0_combout\ & (!\INST_CONTADOR_35|Equal2~0_combout\))) # (!\INST_CONTADOR_35|contador_unidades[3]~2_combout\ & 
-- (((\INST_CONTADOR_35|contador_unidades\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INST_CONTADOR_35|Add1~0_combout\,
	datab => \INST_CONTADOR_35|Equal2~0_combout\,
	datac => \INST_CONTADOR_35|contador_unidades\(3),
	datad => \INST_CONTADOR_35|contador_unidades[3]~2_combout\,
	combout => \INST_CONTADOR_35|contador_unidades[3]~5_combout\);

-- Location: FF_X31_Y23_N5
\INST_CONTADOR_35|contador_unidades[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \INST_DIVISOR|reloj_1hz_reg~clkctrl_outclk\,
	d => \INST_CONTADOR_35|contador_unidades[3]~5_combout\,
	clrn => \ALT_INV_reset_combinado~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST_CONTADOR_35|contador_unidades\(3));

-- Location: LCCOMB_X31_Y23_N16
\INST_CONTADOR_35|Equal2~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST_CONTADOR_35|Equal2~0_combout\ = (!\INST_CONTADOR_35|contador_unidades\(2) & (!\INST_CONTADOR_35|contador_unidades\(1) & (\INST_CONTADOR_35|contador_unidades\(3) & \INST_CONTADOR_35|contador_unidades\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INST_CONTADOR_35|contador_unidades\(2),
	datab => \INST_CONTADOR_35|contador_unidades\(1),
	datac => \INST_CONTADOR_35|contador_unidades\(3),
	datad => \INST_CONTADOR_35|contador_unidades\(0),
	combout => \INST_CONTADOR_35|Equal2~0_combout\);

-- Location: LCCOMB_X30_Y23_N8
\INST_CONTADOR_35|contador_decenas[0]~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST_CONTADOR_35|contador_decenas[0]~3_combout\ = \INST_CONTADOR_35|contador_decenas\(0) $ (((!\INST_CONTADOR_35|fin_conteo_reg~q\ & (\INST_DETECTOR_OCUPACION|estado_ocupado~q\ & \INST_CONTADOR_35|Equal2~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011010011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INST_CONTADOR_35|fin_conteo_reg~q\,
	datab => \INST_DETECTOR_OCUPACION|estado_ocupado~q\,
	datac => \INST_CONTADOR_35|contador_decenas\(0),
	datad => \INST_CONTADOR_35|Equal2~0_combout\,
	combout => \INST_CONTADOR_35|contador_decenas[0]~3_combout\);

-- Location: FF_X30_Y23_N9
\INST_CONTADOR_35|contador_decenas[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \INST_DIVISOR|reloj_1hz_reg~clkctrl_outclk\,
	d => \INST_CONTADOR_35|contador_decenas[0]~3_combout\,
	clrn => \ALT_INV_reset_combinado~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST_CONTADOR_35|contador_decenas\(0));

-- Location: LCCOMB_X30_Y23_N22
\INST_CONTADOR_35|contador_unidades[0]~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST_CONTADOR_35|contador_unidades[0]~1_combout\ = (\INST_CONTADOR_35|contador_unidades[3]~0_combout\ & (((\INST_CONTADOR_35|contador_decenas\(0) & \INST_CONTADOR_35|proceso_contador_35~0_combout\)) # (!\INST_CONTADOR_35|contador_unidades\(0)))) # 
-- (!\INST_CONTADOR_35|contador_unidades[3]~0_combout\ & (((\INST_CONTADOR_35|contador_unidades\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011110000111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INST_CONTADOR_35|contador_decenas\(0),
	datab => \INST_CONTADOR_35|contador_unidades[3]~0_combout\,
	datac => \INST_CONTADOR_35|contador_unidades\(0),
	datad => \INST_CONTADOR_35|proceso_contador_35~0_combout\,
	combout => \INST_CONTADOR_35|contador_unidades[0]~1_combout\);

-- Location: FF_X30_Y23_N23
\INST_CONTADOR_35|contador_unidades[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \INST_DIVISOR|reloj_1hz_reg~clkctrl_outclk\,
	d => \INST_CONTADOR_35|contador_unidades[0]~1_combout\,
	clrn => \ALT_INV_reset_combinado~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST_CONTADOR_35|contador_unidades\(0));

-- Location: LCCOMB_X31_Y23_N30
\INST_CONTADOR_35|contador_unidades[2]~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST_CONTADOR_35|contador_unidades[2]~4_combout\ = \INST_CONTADOR_35|contador_unidades\(2) $ (((\INST_CONTADOR_35|contador_unidades\(0) & (\INST_CONTADOR_35|contador_unidades\(1) & \INST_CONTADOR_35|contador_unidades[3]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INST_CONTADOR_35|contador_unidades\(0),
	datab => \INST_CONTADOR_35|contador_unidades\(1),
	datac => \INST_CONTADOR_35|contador_unidades\(2),
	datad => \INST_CONTADOR_35|contador_unidades[3]~2_combout\,
	combout => \INST_CONTADOR_35|contador_unidades[2]~4_combout\);

-- Location: FF_X31_Y23_N31
\INST_CONTADOR_35|contador_unidades[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \INST_DIVISOR|reloj_1hz_reg~clkctrl_outclk\,
	d => \INST_CONTADOR_35|contador_unidades[2]~4_combout\,
	clrn => \ALT_INV_reset_combinado~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST_CONTADOR_35|contador_unidades\(2));

-- Location: LCCOMB_X31_Y23_N20
\INST_CONTADOR_35|contador_decenas[1]~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST_CONTADOR_35|contador_decenas[1]~2_combout\ = \INST_CONTADOR_35|contador_decenas\(1) $ (((\INST_CONTADOR_35|contador_decenas\(0) & (\INST_CONTADOR_35|Equal2~0_combout\ & \INST_CONTADOR_35|contador_unidades[3]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INST_CONTADOR_35|contador_decenas\(0),
	datab => \INST_CONTADOR_35|Equal2~0_combout\,
	datac => \INST_CONTADOR_35|contador_decenas\(1),
	datad => \INST_CONTADOR_35|contador_unidades[3]~0_combout\,
	combout => \INST_CONTADOR_35|contador_decenas[1]~2_combout\);

-- Location: FF_X31_Y23_N21
\INST_CONTADOR_35|contador_decenas[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \INST_DIVISOR|reloj_1hz_reg~clkctrl_outclk\,
	d => \INST_CONTADOR_35|contador_decenas[1]~2_combout\,
	clrn => \ALT_INV_reset_combinado~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST_CONTADOR_35|contador_decenas\(1));

-- Location: LCCOMB_X31_Y23_N18
\INST_CONTADOR_35|proceso_contador_35~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST_CONTADOR_35|proceso_contador_35~0_combout\ = (\INST_CONTADOR_35|contador_unidades\(2) & (\INST_CONTADOR_35|contador_decenas\(1) & (!\INST_CONTADOR_35|contador_unidades\(3) & !\INST_CONTADOR_35|contador_unidades\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INST_CONTADOR_35|contador_unidades\(2),
	datab => \INST_CONTADOR_35|contador_decenas\(1),
	datac => \INST_CONTADOR_35|contador_unidades\(3),
	datad => \INST_CONTADOR_35|contador_unidades\(1),
	combout => \INST_CONTADOR_35|proceso_contador_35~0_combout\);

-- Location: LCCOMB_X28_Y23_N6
\INST_CONTADOR_35|fin_conteo_reg~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST_CONTADOR_35|fin_conteo_reg~0_combout\ = (\INST_DETECTOR_OCUPACION|estado_ocupado~q\ & !\INST_CONTADOR_35|contador_unidades\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \INST_DETECTOR_OCUPACION|estado_ocupado~q\,
	datad => \INST_CONTADOR_35|contador_unidades\(0),
	combout => \INST_CONTADOR_35|fin_conteo_reg~0_combout\);

-- Location: LCCOMB_X27_Y23_N22
\INST_CONTADOR_35|fin_conteo_reg~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST_CONTADOR_35|fin_conteo_reg~1_combout\ = (\INST_CONTADOR_35|fin_conteo_reg~q\) # ((\INST_CONTADOR_35|proceso_contador_35~0_combout\ & (\INST_CONTADOR_35|contador_decenas\(0) & \INST_CONTADOR_35|fin_conteo_reg~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INST_CONTADOR_35|proceso_contador_35~0_combout\,
	datab => \INST_CONTADOR_35|contador_decenas\(0),
	datac => \INST_CONTADOR_35|fin_conteo_reg~q\,
	datad => \INST_CONTADOR_35|fin_conteo_reg~0_combout\,
	combout => \INST_CONTADOR_35|fin_conteo_reg~1_combout\);

-- Location: FF_X27_Y23_N23
\INST_CONTADOR_35|fin_conteo_reg\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \INST_DIVISOR|reloj_1hz_reg~clkctrl_outclk\,
	d => \INST_CONTADOR_35|fin_conteo_reg~1_combout\,
	clrn => \ALT_INV_reset_combinado~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST_CONTADOR_35|fin_conteo_reg~q\);

-- Location: LCCOMB_X29_Y23_N12
sig_habilitar_extra : cycloneiii_lcell_comb
-- Equation(s):
-- \sig_habilitar_extra~combout\ = (\INST_CONTADOR_35|fin_conteo_reg~q\ & \INST_DETECTOR_OCUPACION|estado_ocupado~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \INST_CONTADOR_35|fin_conteo_reg~q\,
	datad => \INST_DETECTOR_OCUPACION|estado_ocupado~q\,
	combout => \sig_habilitar_extra~combout\);

-- Location: LCCOMB_X26_Y24_N4
\INST_DETECTOR_OCUPACION|contador_felicitacion[0]~28\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST_DETECTOR_OCUPACION|contador_felicitacion[0]~28_combout\ = \INST_DETECTOR_OCUPACION|contador_felicitacion\(0) $ (VCC)
-- \INST_DETECTOR_OCUPACION|contador_felicitacion[0]~29\ = CARRY(\INST_DETECTOR_OCUPACION|contador_felicitacion\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \INST_DETECTOR_OCUPACION|contador_felicitacion\(0),
	datad => VCC,
	combout => \INST_DETECTOR_OCUPACION|contador_felicitacion[0]~28_combout\,
	cout => \INST_DETECTOR_OCUPACION|contador_felicitacion[0]~29\);

-- Location: LCCOMB_X27_Y23_N0
\INST_DETECTOR_OCUPACION|contador_felicitacion[18]~64\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST_DETECTOR_OCUPACION|contador_felicitacion[18]~64_combout\ = ((\INST_DETECTOR_OCUPACION|proceso_control~0_combout\ & !\INST_CONTADOR_35|fin_conteo_reg~q\)) # (!\INST_DETECTOR_OCUPACION|contando_felicitacion~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \INST_DETECTOR_OCUPACION|proceso_control~0_combout\,
	datac => \INST_CONTADOR_35|fin_conteo_reg~q\,
	datad => \INST_DETECTOR_OCUPACION|contando_felicitacion~0_combout\,
	combout => \INST_DETECTOR_OCUPACION|contador_felicitacion[18]~64_combout\);

-- Location: LCCOMB_X27_Y23_N28
\INST_DETECTOR_OCUPACION|contador_felicitacion[18]~65\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST_DETECTOR_OCUPACION|contador_felicitacion[18]~65_combout\ = ((!\INST_CONTADOR_35|fin_conteo_reg~q\ & \INST_DETECTOR_OCUPACION|proceso_control~0_combout\)) # (!\INST_DETECTOR_OCUPACION|estado_felicitacion~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111100110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \INST_DETECTOR_OCUPACION|estado_felicitacion~0_combout\,
	datac => \INST_CONTADOR_35|fin_conteo_reg~q\,
	datad => \INST_DETECTOR_OCUPACION|proceso_control~0_combout\,
	combout => \INST_DETECTOR_OCUPACION|contador_felicitacion[18]~65_combout\);

-- Location: FF_X26_Y24_N5
\INST_DETECTOR_OCUPACION|contador_felicitacion[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \INST_DETECTOR_OCUPACION|contador_felicitacion[0]~28_combout\,
	clrn => \BUTTON[0]~input_o\,
	sclr => \INST_DETECTOR_OCUPACION|contador_felicitacion[18]~64_combout\,
	ena => \INST_DETECTOR_OCUPACION|contador_felicitacion[18]~65_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST_DETECTOR_OCUPACION|contador_felicitacion\(0));

-- Location: LCCOMB_X26_Y24_N6
\INST_DETECTOR_OCUPACION|contador_felicitacion[1]~30\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST_DETECTOR_OCUPACION|contador_felicitacion[1]~30_combout\ = (\INST_DETECTOR_OCUPACION|contador_felicitacion\(1) & (!\INST_DETECTOR_OCUPACION|contador_felicitacion[0]~29\)) # (!\INST_DETECTOR_OCUPACION|contador_felicitacion\(1) & 
-- ((\INST_DETECTOR_OCUPACION|contador_felicitacion[0]~29\) # (GND)))
-- \INST_DETECTOR_OCUPACION|contador_felicitacion[1]~31\ = CARRY((!\INST_DETECTOR_OCUPACION|contador_felicitacion[0]~29\) # (!\INST_DETECTOR_OCUPACION|contador_felicitacion\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \INST_DETECTOR_OCUPACION|contador_felicitacion\(1),
	datad => VCC,
	cin => \INST_DETECTOR_OCUPACION|contador_felicitacion[0]~29\,
	combout => \INST_DETECTOR_OCUPACION|contador_felicitacion[1]~30_combout\,
	cout => \INST_DETECTOR_OCUPACION|contador_felicitacion[1]~31\);

-- Location: FF_X26_Y24_N7
\INST_DETECTOR_OCUPACION|contador_felicitacion[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \INST_DETECTOR_OCUPACION|contador_felicitacion[1]~30_combout\,
	clrn => \BUTTON[0]~input_o\,
	sclr => \INST_DETECTOR_OCUPACION|contador_felicitacion[18]~64_combout\,
	ena => \INST_DETECTOR_OCUPACION|contador_felicitacion[18]~65_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST_DETECTOR_OCUPACION|contador_felicitacion\(1));

-- Location: LCCOMB_X26_Y24_N8
\INST_DETECTOR_OCUPACION|contador_felicitacion[2]~32\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST_DETECTOR_OCUPACION|contador_felicitacion[2]~32_combout\ = (\INST_DETECTOR_OCUPACION|contador_felicitacion\(2) & (\INST_DETECTOR_OCUPACION|contador_felicitacion[1]~31\ $ (GND))) # (!\INST_DETECTOR_OCUPACION|contador_felicitacion\(2) & 
-- (!\INST_DETECTOR_OCUPACION|contador_felicitacion[1]~31\ & VCC))
-- \INST_DETECTOR_OCUPACION|contador_felicitacion[2]~33\ = CARRY((\INST_DETECTOR_OCUPACION|contador_felicitacion\(2) & !\INST_DETECTOR_OCUPACION|contador_felicitacion[1]~31\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \INST_DETECTOR_OCUPACION|contador_felicitacion\(2),
	datad => VCC,
	cin => \INST_DETECTOR_OCUPACION|contador_felicitacion[1]~31\,
	combout => \INST_DETECTOR_OCUPACION|contador_felicitacion[2]~32_combout\,
	cout => \INST_DETECTOR_OCUPACION|contador_felicitacion[2]~33\);

-- Location: FF_X26_Y24_N9
\INST_DETECTOR_OCUPACION|contador_felicitacion[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \INST_DETECTOR_OCUPACION|contador_felicitacion[2]~32_combout\,
	clrn => \BUTTON[0]~input_o\,
	sclr => \INST_DETECTOR_OCUPACION|contador_felicitacion[18]~64_combout\,
	ena => \INST_DETECTOR_OCUPACION|contador_felicitacion[18]~65_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST_DETECTOR_OCUPACION|contador_felicitacion\(2));

-- Location: LCCOMB_X26_Y24_N10
\INST_DETECTOR_OCUPACION|contador_felicitacion[3]~34\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST_DETECTOR_OCUPACION|contador_felicitacion[3]~34_combout\ = (\INST_DETECTOR_OCUPACION|contador_felicitacion\(3) & (!\INST_DETECTOR_OCUPACION|contador_felicitacion[2]~33\)) # (!\INST_DETECTOR_OCUPACION|contador_felicitacion\(3) & 
-- ((\INST_DETECTOR_OCUPACION|contador_felicitacion[2]~33\) # (GND)))
-- \INST_DETECTOR_OCUPACION|contador_felicitacion[3]~35\ = CARRY((!\INST_DETECTOR_OCUPACION|contador_felicitacion[2]~33\) # (!\INST_DETECTOR_OCUPACION|contador_felicitacion\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \INST_DETECTOR_OCUPACION|contador_felicitacion\(3),
	datad => VCC,
	cin => \INST_DETECTOR_OCUPACION|contador_felicitacion[2]~33\,
	combout => \INST_DETECTOR_OCUPACION|contador_felicitacion[3]~34_combout\,
	cout => \INST_DETECTOR_OCUPACION|contador_felicitacion[3]~35\);

-- Location: FF_X26_Y24_N11
\INST_DETECTOR_OCUPACION|contador_felicitacion[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \INST_DETECTOR_OCUPACION|contador_felicitacion[3]~34_combout\,
	clrn => \BUTTON[0]~input_o\,
	sclr => \INST_DETECTOR_OCUPACION|contador_felicitacion[18]~64_combout\,
	ena => \INST_DETECTOR_OCUPACION|contador_felicitacion[18]~65_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST_DETECTOR_OCUPACION|contador_felicitacion\(3));

-- Location: LCCOMB_X26_Y24_N12
\INST_DETECTOR_OCUPACION|contador_felicitacion[4]~36\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST_DETECTOR_OCUPACION|contador_felicitacion[4]~36_combout\ = (\INST_DETECTOR_OCUPACION|contador_felicitacion\(4) & (\INST_DETECTOR_OCUPACION|contador_felicitacion[3]~35\ $ (GND))) # (!\INST_DETECTOR_OCUPACION|contador_felicitacion\(4) & 
-- (!\INST_DETECTOR_OCUPACION|contador_felicitacion[3]~35\ & VCC))
-- \INST_DETECTOR_OCUPACION|contador_felicitacion[4]~37\ = CARRY((\INST_DETECTOR_OCUPACION|contador_felicitacion\(4) & !\INST_DETECTOR_OCUPACION|contador_felicitacion[3]~35\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \INST_DETECTOR_OCUPACION|contador_felicitacion\(4),
	datad => VCC,
	cin => \INST_DETECTOR_OCUPACION|contador_felicitacion[3]~35\,
	combout => \INST_DETECTOR_OCUPACION|contador_felicitacion[4]~36_combout\,
	cout => \INST_DETECTOR_OCUPACION|contador_felicitacion[4]~37\);

-- Location: FF_X26_Y24_N13
\INST_DETECTOR_OCUPACION|contador_felicitacion[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \INST_DETECTOR_OCUPACION|contador_felicitacion[4]~36_combout\,
	clrn => \BUTTON[0]~input_o\,
	sclr => \INST_DETECTOR_OCUPACION|contador_felicitacion[18]~64_combout\,
	ena => \INST_DETECTOR_OCUPACION|contador_felicitacion[18]~65_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST_DETECTOR_OCUPACION|contador_felicitacion\(4));

-- Location: LCCOMB_X26_Y24_N14
\INST_DETECTOR_OCUPACION|contador_felicitacion[5]~38\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST_DETECTOR_OCUPACION|contador_felicitacion[5]~38_combout\ = (\INST_DETECTOR_OCUPACION|contador_felicitacion\(5) & (!\INST_DETECTOR_OCUPACION|contador_felicitacion[4]~37\)) # (!\INST_DETECTOR_OCUPACION|contador_felicitacion\(5) & 
-- ((\INST_DETECTOR_OCUPACION|contador_felicitacion[4]~37\) # (GND)))
-- \INST_DETECTOR_OCUPACION|contador_felicitacion[5]~39\ = CARRY((!\INST_DETECTOR_OCUPACION|contador_felicitacion[4]~37\) # (!\INST_DETECTOR_OCUPACION|contador_felicitacion\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \INST_DETECTOR_OCUPACION|contador_felicitacion\(5),
	datad => VCC,
	cin => \INST_DETECTOR_OCUPACION|contador_felicitacion[4]~37\,
	combout => \INST_DETECTOR_OCUPACION|contador_felicitacion[5]~38_combout\,
	cout => \INST_DETECTOR_OCUPACION|contador_felicitacion[5]~39\);

-- Location: FF_X26_Y24_N15
\INST_DETECTOR_OCUPACION|contador_felicitacion[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \INST_DETECTOR_OCUPACION|contador_felicitacion[5]~38_combout\,
	clrn => \BUTTON[0]~input_o\,
	sclr => \INST_DETECTOR_OCUPACION|contador_felicitacion[18]~64_combout\,
	ena => \INST_DETECTOR_OCUPACION|contador_felicitacion[18]~65_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST_DETECTOR_OCUPACION|contador_felicitacion\(5));

-- Location: LCCOMB_X26_Y24_N16
\INST_DETECTOR_OCUPACION|contador_felicitacion[6]~40\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST_DETECTOR_OCUPACION|contador_felicitacion[6]~40_combout\ = (\INST_DETECTOR_OCUPACION|contador_felicitacion\(6) & (\INST_DETECTOR_OCUPACION|contador_felicitacion[5]~39\ $ (GND))) # (!\INST_DETECTOR_OCUPACION|contador_felicitacion\(6) & 
-- (!\INST_DETECTOR_OCUPACION|contador_felicitacion[5]~39\ & VCC))
-- \INST_DETECTOR_OCUPACION|contador_felicitacion[6]~41\ = CARRY((\INST_DETECTOR_OCUPACION|contador_felicitacion\(6) & !\INST_DETECTOR_OCUPACION|contador_felicitacion[5]~39\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \INST_DETECTOR_OCUPACION|contador_felicitacion\(6),
	datad => VCC,
	cin => \INST_DETECTOR_OCUPACION|contador_felicitacion[5]~39\,
	combout => \INST_DETECTOR_OCUPACION|contador_felicitacion[6]~40_combout\,
	cout => \INST_DETECTOR_OCUPACION|contador_felicitacion[6]~41\);

-- Location: FF_X26_Y24_N17
\INST_DETECTOR_OCUPACION|contador_felicitacion[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \INST_DETECTOR_OCUPACION|contador_felicitacion[6]~40_combout\,
	clrn => \BUTTON[0]~input_o\,
	sclr => \INST_DETECTOR_OCUPACION|contador_felicitacion[18]~64_combout\,
	ena => \INST_DETECTOR_OCUPACION|contador_felicitacion[18]~65_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST_DETECTOR_OCUPACION|contador_felicitacion\(6));

-- Location: LCCOMB_X26_Y24_N18
\INST_DETECTOR_OCUPACION|contador_felicitacion[7]~42\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST_DETECTOR_OCUPACION|contador_felicitacion[7]~42_combout\ = (\INST_DETECTOR_OCUPACION|contador_felicitacion\(7) & (!\INST_DETECTOR_OCUPACION|contador_felicitacion[6]~41\)) # (!\INST_DETECTOR_OCUPACION|contador_felicitacion\(7) & 
-- ((\INST_DETECTOR_OCUPACION|contador_felicitacion[6]~41\) # (GND)))
-- \INST_DETECTOR_OCUPACION|contador_felicitacion[7]~43\ = CARRY((!\INST_DETECTOR_OCUPACION|contador_felicitacion[6]~41\) # (!\INST_DETECTOR_OCUPACION|contador_felicitacion\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \INST_DETECTOR_OCUPACION|contador_felicitacion\(7),
	datad => VCC,
	cin => \INST_DETECTOR_OCUPACION|contador_felicitacion[6]~41\,
	combout => \INST_DETECTOR_OCUPACION|contador_felicitacion[7]~42_combout\,
	cout => \INST_DETECTOR_OCUPACION|contador_felicitacion[7]~43\);

-- Location: FF_X26_Y24_N19
\INST_DETECTOR_OCUPACION|contador_felicitacion[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \INST_DETECTOR_OCUPACION|contador_felicitacion[7]~42_combout\,
	clrn => \BUTTON[0]~input_o\,
	sclr => \INST_DETECTOR_OCUPACION|contador_felicitacion[18]~64_combout\,
	ena => \INST_DETECTOR_OCUPACION|contador_felicitacion[18]~65_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST_DETECTOR_OCUPACION|contador_felicitacion\(7));

-- Location: LCCOMB_X26_Y24_N20
\INST_DETECTOR_OCUPACION|contador_felicitacion[8]~44\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST_DETECTOR_OCUPACION|contador_felicitacion[8]~44_combout\ = (\INST_DETECTOR_OCUPACION|contador_felicitacion\(8) & (\INST_DETECTOR_OCUPACION|contador_felicitacion[7]~43\ $ (GND))) # (!\INST_DETECTOR_OCUPACION|contador_felicitacion\(8) & 
-- (!\INST_DETECTOR_OCUPACION|contador_felicitacion[7]~43\ & VCC))
-- \INST_DETECTOR_OCUPACION|contador_felicitacion[8]~45\ = CARRY((\INST_DETECTOR_OCUPACION|contador_felicitacion\(8) & !\INST_DETECTOR_OCUPACION|contador_felicitacion[7]~43\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \INST_DETECTOR_OCUPACION|contador_felicitacion\(8),
	datad => VCC,
	cin => \INST_DETECTOR_OCUPACION|contador_felicitacion[7]~43\,
	combout => \INST_DETECTOR_OCUPACION|contador_felicitacion[8]~44_combout\,
	cout => \INST_DETECTOR_OCUPACION|contador_felicitacion[8]~45\);

-- Location: FF_X26_Y24_N21
\INST_DETECTOR_OCUPACION|contador_felicitacion[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \INST_DETECTOR_OCUPACION|contador_felicitacion[8]~44_combout\,
	clrn => \BUTTON[0]~input_o\,
	sclr => \INST_DETECTOR_OCUPACION|contador_felicitacion[18]~64_combout\,
	ena => \INST_DETECTOR_OCUPACION|contador_felicitacion[18]~65_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST_DETECTOR_OCUPACION|contador_felicitacion\(8));

-- Location: LCCOMB_X26_Y24_N22
\INST_DETECTOR_OCUPACION|contador_felicitacion[9]~46\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST_DETECTOR_OCUPACION|contador_felicitacion[9]~46_combout\ = (\INST_DETECTOR_OCUPACION|contador_felicitacion\(9) & (!\INST_DETECTOR_OCUPACION|contador_felicitacion[8]~45\)) # (!\INST_DETECTOR_OCUPACION|contador_felicitacion\(9) & 
-- ((\INST_DETECTOR_OCUPACION|contador_felicitacion[8]~45\) # (GND)))
-- \INST_DETECTOR_OCUPACION|contador_felicitacion[9]~47\ = CARRY((!\INST_DETECTOR_OCUPACION|contador_felicitacion[8]~45\) # (!\INST_DETECTOR_OCUPACION|contador_felicitacion\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \INST_DETECTOR_OCUPACION|contador_felicitacion\(9),
	datad => VCC,
	cin => \INST_DETECTOR_OCUPACION|contador_felicitacion[8]~45\,
	combout => \INST_DETECTOR_OCUPACION|contador_felicitacion[9]~46_combout\,
	cout => \INST_DETECTOR_OCUPACION|contador_felicitacion[9]~47\);

-- Location: FF_X26_Y24_N23
\INST_DETECTOR_OCUPACION|contador_felicitacion[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \INST_DETECTOR_OCUPACION|contador_felicitacion[9]~46_combout\,
	clrn => \BUTTON[0]~input_o\,
	sclr => \INST_DETECTOR_OCUPACION|contador_felicitacion[18]~64_combout\,
	ena => \INST_DETECTOR_OCUPACION|contador_felicitacion[18]~65_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST_DETECTOR_OCUPACION|contador_felicitacion\(9));

-- Location: LCCOMB_X26_Y24_N24
\INST_DETECTOR_OCUPACION|contador_felicitacion[10]~48\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST_DETECTOR_OCUPACION|contador_felicitacion[10]~48_combout\ = (\INST_DETECTOR_OCUPACION|contador_felicitacion\(10) & (\INST_DETECTOR_OCUPACION|contador_felicitacion[9]~47\ $ (GND))) # (!\INST_DETECTOR_OCUPACION|contador_felicitacion\(10) & 
-- (!\INST_DETECTOR_OCUPACION|contador_felicitacion[9]~47\ & VCC))
-- \INST_DETECTOR_OCUPACION|contador_felicitacion[10]~49\ = CARRY((\INST_DETECTOR_OCUPACION|contador_felicitacion\(10) & !\INST_DETECTOR_OCUPACION|contador_felicitacion[9]~47\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \INST_DETECTOR_OCUPACION|contador_felicitacion\(10),
	datad => VCC,
	cin => \INST_DETECTOR_OCUPACION|contador_felicitacion[9]~47\,
	combout => \INST_DETECTOR_OCUPACION|contador_felicitacion[10]~48_combout\,
	cout => \INST_DETECTOR_OCUPACION|contador_felicitacion[10]~49\);

-- Location: FF_X26_Y24_N25
\INST_DETECTOR_OCUPACION|contador_felicitacion[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \INST_DETECTOR_OCUPACION|contador_felicitacion[10]~48_combout\,
	clrn => \BUTTON[0]~input_o\,
	sclr => \INST_DETECTOR_OCUPACION|contador_felicitacion[18]~64_combout\,
	ena => \INST_DETECTOR_OCUPACION|contador_felicitacion[18]~65_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST_DETECTOR_OCUPACION|contador_felicitacion\(10));

-- Location: LCCOMB_X26_Y24_N26
\INST_DETECTOR_OCUPACION|contador_felicitacion[11]~50\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST_DETECTOR_OCUPACION|contador_felicitacion[11]~50_combout\ = (\INST_DETECTOR_OCUPACION|contador_felicitacion\(11) & (!\INST_DETECTOR_OCUPACION|contador_felicitacion[10]~49\)) # (!\INST_DETECTOR_OCUPACION|contador_felicitacion\(11) & 
-- ((\INST_DETECTOR_OCUPACION|contador_felicitacion[10]~49\) # (GND)))
-- \INST_DETECTOR_OCUPACION|contador_felicitacion[11]~51\ = CARRY((!\INST_DETECTOR_OCUPACION|contador_felicitacion[10]~49\) # (!\INST_DETECTOR_OCUPACION|contador_felicitacion\(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \INST_DETECTOR_OCUPACION|contador_felicitacion\(11),
	datad => VCC,
	cin => \INST_DETECTOR_OCUPACION|contador_felicitacion[10]~49\,
	combout => \INST_DETECTOR_OCUPACION|contador_felicitacion[11]~50_combout\,
	cout => \INST_DETECTOR_OCUPACION|contador_felicitacion[11]~51\);

-- Location: FF_X26_Y24_N27
\INST_DETECTOR_OCUPACION|contador_felicitacion[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \INST_DETECTOR_OCUPACION|contador_felicitacion[11]~50_combout\,
	clrn => \BUTTON[0]~input_o\,
	sclr => \INST_DETECTOR_OCUPACION|contador_felicitacion[18]~64_combout\,
	ena => \INST_DETECTOR_OCUPACION|contador_felicitacion[18]~65_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST_DETECTOR_OCUPACION|contador_felicitacion\(11));

-- Location: LCCOMB_X26_Y24_N28
\INST_DETECTOR_OCUPACION|contador_felicitacion[12]~52\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST_DETECTOR_OCUPACION|contador_felicitacion[12]~52_combout\ = (\INST_DETECTOR_OCUPACION|contador_felicitacion\(12) & (\INST_DETECTOR_OCUPACION|contador_felicitacion[11]~51\ $ (GND))) # (!\INST_DETECTOR_OCUPACION|contador_felicitacion\(12) & 
-- (!\INST_DETECTOR_OCUPACION|contador_felicitacion[11]~51\ & VCC))
-- \INST_DETECTOR_OCUPACION|contador_felicitacion[12]~53\ = CARRY((\INST_DETECTOR_OCUPACION|contador_felicitacion\(12) & !\INST_DETECTOR_OCUPACION|contador_felicitacion[11]~51\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \INST_DETECTOR_OCUPACION|contador_felicitacion\(12),
	datad => VCC,
	cin => \INST_DETECTOR_OCUPACION|contador_felicitacion[11]~51\,
	combout => \INST_DETECTOR_OCUPACION|contador_felicitacion[12]~52_combout\,
	cout => \INST_DETECTOR_OCUPACION|contador_felicitacion[12]~53\);

-- Location: FF_X26_Y24_N29
\INST_DETECTOR_OCUPACION|contador_felicitacion[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \INST_DETECTOR_OCUPACION|contador_felicitacion[12]~52_combout\,
	clrn => \BUTTON[0]~input_o\,
	sclr => \INST_DETECTOR_OCUPACION|contador_felicitacion[18]~64_combout\,
	ena => \INST_DETECTOR_OCUPACION|contador_felicitacion[18]~65_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST_DETECTOR_OCUPACION|contador_felicitacion\(12));

-- Location: LCCOMB_X26_Y24_N30
\INST_DETECTOR_OCUPACION|contador_felicitacion[13]~54\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST_DETECTOR_OCUPACION|contador_felicitacion[13]~54_combout\ = (\INST_DETECTOR_OCUPACION|contador_felicitacion\(13) & (!\INST_DETECTOR_OCUPACION|contador_felicitacion[12]~53\)) # (!\INST_DETECTOR_OCUPACION|contador_felicitacion\(13) & 
-- ((\INST_DETECTOR_OCUPACION|contador_felicitacion[12]~53\) # (GND)))
-- \INST_DETECTOR_OCUPACION|contador_felicitacion[13]~55\ = CARRY((!\INST_DETECTOR_OCUPACION|contador_felicitacion[12]~53\) # (!\INST_DETECTOR_OCUPACION|contador_felicitacion\(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \INST_DETECTOR_OCUPACION|contador_felicitacion\(13),
	datad => VCC,
	cin => \INST_DETECTOR_OCUPACION|contador_felicitacion[12]~53\,
	combout => \INST_DETECTOR_OCUPACION|contador_felicitacion[13]~54_combout\,
	cout => \INST_DETECTOR_OCUPACION|contador_felicitacion[13]~55\);

-- Location: FF_X26_Y24_N31
\INST_DETECTOR_OCUPACION|contador_felicitacion[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \INST_DETECTOR_OCUPACION|contador_felicitacion[13]~54_combout\,
	clrn => \BUTTON[0]~input_o\,
	sclr => \INST_DETECTOR_OCUPACION|contador_felicitacion[18]~64_combout\,
	ena => \INST_DETECTOR_OCUPACION|contador_felicitacion[18]~65_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST_DETECTOR_OCUPACION|contador_felicitacion\(13));

-- Location: LCCOMB_X26_Y23_N0
\INST_DETECTOR_OCUPACION|contador_felicitacion[14]~56\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST_DETECTOR_OCUPACION|contador_felicitacion[14]~56_combout\ = (\INST_DETECTOR_OCUPACION|contador_felicitacion\(14) & (\INST_DETECTOR_OCUPACION|contador_felicitacion[13]~55\ $ (GND))) # (!\INST_DETECTOR_OCUPACION|contador_felicitacion\(14) & 
-- (!\INST_DETECTOR_OCUPACION|contador_felicitacion[13]~55\ & VCC))
-- \INST_DETECTOR_OCUPACION|contador_felicitacion[14]~57\ = CARRY((\INST_DETECTOR_OCUPACION|contador_felicitacion\(14) & !\INST_DETECTOR_OCUPACION|contador_felicitacion[13]~55\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \INST_DETECTOR_OCUPACION|contador_felicitacion\(14),
	datad => VCC,
	cin => \INST_DETECTOR_OCUPACION|contador_felicitacion[13]~55\,
	combout => \INST_DETECTOR_OCUPACION|contador_felicitacion[14]~56_combout\,
	cout => \INST_DETECTOR_OCUPACION|contador_felicitacion[14]~57\);

-- Location: FF_X26_Y23_N1
\INST_DETECTOR_OCUPACION|contador_felicitacion[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \INST_DETECTOR_OCUPACION|contador_felicitacion[14]~56_combout\,
	clrn => \BUTTON[0]~input_o\,
	sclr => \INST_DETECTOR_OCUPACION|contador_felicitacion[18]~64_combout\,
	ena => \INST_DETECTOR_OCUPACION|contador_felicitacion[18]~65_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST_DETECTOR_OCUPACION|contador_felicitacion\(14));

-- Location: LCCOMB_X26_Y23_N2
\INST_DETECTOR_OCUPACION|contador_felicitacion[15]~58\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST_DETECTOR_OCUPACION|contador_felicitacion[15]~58_combout\ = (\INST_DETECTOR_OCUPACION|contador_felicitacion\(15) & (!\INST_DETECTOR_OCUPACION|contador_felicitacion[14]~57\)) # (!\INST_DETECTOR_OCUPACION|contador_felicitacion\(15) & 
-- ((\INST_DETECTOR_OCUPACION|contador_felicitacion[14]~57\) # (GND)))
-- \INST_DETECTOR_OCUPACION|contador_felicitacion[15]~59\ = CARRY((!\INST_DETECTOR_OCUPACION|contador_felicitacion[14]~57\) # (!\INST_DETECTOR_OCUPACION|contador_felicitacion\(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \INST_DETECTOR_OCUPACION|contador_felicitacion\(15),
	datad => VCC,
	cin => \INST_DETECTOR_OCUPACION|contador_felicitacion[14]~57\,
	combout => \INST_DETECTOR_OCUPACION|contador_felicitacion[15]~58_combout\,
	cout => \INST_DETECTOR_OCUPACION|contador_felicitacion[15]~59\);

-- Location: FF_X26_Y23_N3
\INST_DETECTOR_OCUPACION|contador_felicitacion[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \INST_DETECTOR_OCUPACION|contador_felicitacion[15]~58_combout\,
	clrn => \BUTTON[0]~input_o\,
	sclr => \INST_DETECTOR_OCUPACION|contador_felicitacion[18]~64_combout\,
	ena => \INST_DETECTOR_OCUPACION|contador_felicitacion[18]~65_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST_DETECTOR_OCUPACION|contador_felicitacion\(15));

-- Location: LCCOMB_X26_Y23_N4
\INST_DETECTOR_OCUPACION|contador_felicitacion[16]~60\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST_DETECTOR_OCUPACION|contador_felicitacion[16]~60_combout\ = (\INST_DETECTOR_OCUPACION|contador_felicitacion\(16) & (\INST_DETECTOR_OCUPACION|contador_felicitacion[15]~59\ $ (GND))) # (!\INST_DETECTOR_OCUPACION|contador_felicitacion\(16) & 
-- (!\INST_DETECTOR_OCUPACION|contador_felicitacion[15]~59\ & VCC))
-- \INST_DETECTOR_OCUPACION|contador_felicitacion[16]~61\ = CARRY((\INST_DETECTOR_OCUPACION|contador_felicitacion\(16) & !\INST_DETECTOR_OCUPACION|contador_felicitacion[15]~59\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \INST_DETECTOR_OCUPACION|contador_felicitacion\(16),
	datad => VCC,
	cin => \INST_DETECTOR_OCUPACION|contador_felicitacion[15]~59\,
	combout => \INST_DETECTOR_OCUPACION|contador_felicitacion[16]~60_combout\,
	cout => \INST_DETECTOR_OCUPACION|contador_felicitacion[16]~61\);

-- Location: FF_X26_Y23_N5
\INST_DETECTOR_OCUPACION|contador_felicitacion[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \INST_DETECTOR_OCUPACION|contador_felicitacion[16]~60_combout\,
	clrn => \BUTTON[0]~input_o\,
	sclr => \INST_DETECTOR_OCUPACION|contador_felicitacion[18]~64_combout\,
	ena => \INST_DETECTOR_OCUPACION|contador_felicitacion[18]~65_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST_DETECTOR_OCUPACION|contador_felicitacion\(16));

-- Location: LCCOMB_X26_Y23_N6
\INST_DETECTOR_OCUPACION|contador_felicitacion[17]~62\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST_DETECTOR_OCUPACION|contador_felicitacion[17]~62_combout\ = (\INST_DETECTOR_OCUPACION|contador_felicitacion\(17) & (!\INST_DETECTOR_OCUPACION|contador_felicitacion[16]~61\)) # (!\INST_DETECTOR_OCUPACION|contador_felicitacion\(17) & 
-- ((\INST_DETECTOR_OCUPACION|contador_felicitacion[16]~61\) # (GND)))
-- \INST_DETECTOR_OCUPACION|contador_felicitacion[17]~63\ = CARRY((!\INST_DETECTOR_OCUPACION|contador_felicitacion[16]~61\) # (!\INST_DETECTOR_OCUPACION|contador_felicitacion\(17)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \INST_DETECTOR_OCUPACION|contador_felicitacion\(17),
	datad => VCC,
	cin => \INST_DETECTOR_OCUPACION|contador_felicitacion[16]~61\,
	combout => \INST_DETECTOR_OCUPACION|contador_felicitacion[17]~62_combout\,
	cout => \INST_DETECTOR_OCUPACION|contador_felicitacion[17]~63\);

-- Location: FF_X26_Y23_N7
\INST_DETECTOR_OCUPACION|contador_felicitacion[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \INST_DETECTOR_OCUPACION|contador_felicitacion[17]~62_combout\,
	clrn => \BUTTON[0]~input_o\,
	sclr => \INST_DETECTOR_OCUPACION|contador_felicitacion[18]~64_combout\,
	ena => \INST_DETECTOR_OCUPACION|contador_felicitacion[18]~65_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST_DETECTOR_OCUPACION|contador_felicitacion\(17));

-- Location: LCCOMB_X26_Y23_N8
\INST_DETECTOR_OCUPACION|contador_felicitacion[18]~66\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST_DETECTOR_OCUPACION|contador_felicitacion[18]~66_combout\ = (\INST_DETECTOR_OCUPACION|contador_felicitacion\(18) & (\INST_DETECTOR_OCUPACION|contador_felicitacion[17]~63\ $ (GND))) # (!\INST_DETECTOR_OCUPACION|contador_felicitacion\(18) & 
-- (!\INST_DETECTOR_OCUPACION|contador_felicitacion[17]~63\ & VCC))
-- \INST_DETECTOR_OCUPACION|contador_felicitacion[18]~67\ = CARRY((\INST_DETECTOR_OCUPACION|contador_felicitacion\(18) & !\INST_DETECTOR_OCUPACION|contador_felicitacion[17]~63\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \INST_DETECTOR_OCUPACION|contador_felicitacion\(18),
	datad => VCC,
	cin => \INST_DETECTOR_OCUPACION|contador_felicitacion[17]~63\,
	combout => \INST_DETECTOR_OCUPACION|contador_felicitacion[18]~66_combout\,
	cout => \INST_DETECTOR_OCUPACION|contador_felicitacion[18]~67\);

-- Location: FF_X26_Y23_N9
\INST_DETECTOR_OCUPACION|contador_felicitacion[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \INST_DETECTOR_OCUPACION|contador_felicitacion[18]~66_combout\,
	clrn => \BUTTON[0]~input_o\,
	sclr => \INST_DETECTOR_OCUPACION|contador_felicitacion[18]~64_combout\,
	ena => \INST_DETECTOR_OCUPACION|contador_felicitacion[18]~65_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST_DETECTOR_OCUPACION|contador_felicitacion\(18));

-- Location: LCCOMB_X26_Y23_N10
\INST_DETECTOR_OCUPACION|contador_felicitacion[19]~68\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST_DETECTOR_OCUPACION|contador_felicitacion[19]~68_combout\ = (\INST_DETECTOR_OCUPACION|contador_felicitacion\(19) & (!\INST_DETECTOR_OCUPACION|contador_felicitacion[18]~67\)) # (!\INST_DETECTOR_OCUPACION|contador_felicitacion\(19) & 
-- ((\INST_DETECTOR_OCUPACION|contador_felicitacion[18]~67\) # (GND)))
-- \INST_DETECTOR_OCUPACION|contador_felicitacion[19]~69\ = CARRY((!\INST_DETECTOR_OCUPACION|contador_felicitacion[18]~67\) # (!\INST_DETECTOR_OCUPACION|contador_felicitacion\(19)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \INST_DETECTOR_OCUPACION|contador_felicitacion\(19),
	datad => VCC,
	cin => \INST_DETECTOR_OCUPACION|contador_felicitacion[18]~67\,
	combout => \INST_DETECTOR_OCUPACION|contador_felicitacion[19]~68_combout\,
	cout => \INST_DETECTOR_OCUPACION|contador_felicitacion[19]~69\);

-- Location: FF_X26_Y23_N11
\INST_DETECTOR_OCUPACION|contador_felicitacion[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \INST_DETECTOR_OCUPACION|contador_felicitacion[19]~68_combout\,
	clrn => \BUTTON[0]~input_o\,
	sclr => \INST_DETECTOR_OCUPACION|contador_felicitacion[18]~64_combout\,
	ena => \INST_DETECTOR_OCUPACION|contador_felicitacion[18]~65_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST_DETECTOR_OCUPACION|contador_felicitacion\(19));

-- Location: LCCOMB_X26_Y23_N12
\INST_DETECTOR_OCUPACION|contador_felicitacion[20]~70\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST_DETECTOR_OCUPACION|contador_felicitacion[20]~70_combout\ = (\INST_DETECTOR_OCUPACION|contador_felicitacion\(20) & (\INST_DETECTOR_OCUPACION|contador_felicitacion[19]~69\ $ (GND))) # (!\INST_DETECTOR_OCUPACION|contador_felicitacion\(20) & 
-- (!\INST_DETECTOR_OCUPACION|contador_felicitacion[19]~69\ & VCC))
-- \INST_DETECTOR_OCUPACION|contador_felicitacion[20]~71\ = CARRY((\INST_DETECTOR_OCUPACION|contador_felicitacion\(20) & !\INST_DETECTOR_OCUPACION|contador_felicitacion[19]~69\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \INST_DETECTOR_OCUPACION|contador_felicitacion\(20),
	datad => VCC,
	cin => \INST_DETECTOR_OCUPACION|contador_felicitacion[19]~69\,
	combout => \INST_DETECTOR_OCUPACION|contador_felicitacion[20]~70_combout\,
	cout => \INST_DETECTOR_OCUPACION|contador_felicitacion[20]~71\);

-- Location: FF_X26_Y23_N13
\INST_DETECTOR_OCUPACION|contador_felicitacion[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \INST_DETECTOR_OCUPACION|contador_felicitacion[20]~70_combout\,
	clrn => \BUTTON[0]~input_o\,
	sclr => \INST_DETECTOR_OCUPACION|contador_felicitacion[18]~64_combout\,
	ena => \INST_DETECTOR_OCUPACION|contador_felicitacion[18]~65_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST_DETECTOR_OCUPACION|contador_felicitacion\(20));

-- Location: LCCOMB_X26_Y23_N14
\INST_DETECTOR_OCUPACION|contador_felicitacion[21]~72\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST_DETECTOR_OCUPACION|contador_felicitacion[21]~72_combout\ = (\INST_DETECTOR_OCUPACION|contador_felicitacion\(21) & (!\INST_DETECTOR_OCUPACION|contador_felicitacion[20]~71\)) # (!\INST_DETECTOR_OCUPACION|contador_felicitacion\(21) & 
-- ((\INST_DETECTOR_OCUPACION|contador_felicitacion[20]~71\) # (GND)))
-- \INST_DETECTOR_OCUPACION|contador_felicitacion[21]~73\ = CARRY((!\INST_DETECTOR_OCUPACION|contador_felicitacion[20]~71\) # (!\INST_DETECTOR_OCUPACION|contador_felicitacion\(21)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \INST_DETECTOR_OCUPACION|contador_felicitacion\(21),
	datad => VCC,
	cin => \INST_DETECTOR_OCUPACION|contador_felicitacion[20]~71\,
	combout => \INST_DETECTOR_OCUPACION|contador_felicitacion[21]~72_combout\,
	cout => \INST_DETECTOR_OCUPACION|contador_felicitacion[21]~73\);

-- Location: FF_X26_Y23_N15
\INST_DETECTOR_OCUPACION|contador_felicitacion[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \INST_DETECTOR_OCUPACION|contador_felicitacion[21]~72_combout\,
	clrn => \BUTTON[0]~input_o\,
	sclr => \INST_DETECTOR_OCUPACION|contador_felicitacion[18]~64_combout\,
	ena => \INST_DETECTOR_OCUPACION|contador_felicitacion[18]~65_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST_DETECTOR_OCUPACION|contador_felicitacion\(21));

-- Location: LCCOMB_X26_Y23_N16
\INST_DETECTOR_OCUPACION|contador_felicitacion[22]~74\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST_DETECTOR_OCUPACION|contador_felicitacion[22]~74_combout\ = (\INST_DETECTOR_OCUPACION|contador_felicitacion\(22) & (\INST_DETECTOR_OCUPACION|contador_felicitacion[21]~73\ $ (GND))) # (!\INST_DETECTOR_OCUPACION|contador_felicitacion\(22) & 
-- (!\INST_DETECTOR_OCUPACION|contador_felicitacion[21]~73\ & VCC))
-- \INST_DETECTOR_OCUPACION|contador_felicitacion[22]~75\ = CARRY((\INST_DETECTOR_OCUPACION|contador_felicitacion\(22) & !\INST_DETECTOR_OCUPACION|contador_felicitacion[21]~73\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \INST_DETECTOR_OCUPACION|contador_felicitacion\(22),
	datad => VCC,
	cin => \INST_DETECTOR_OCUPACION|contador_felicitacion[21]~73\,
	combout => \INST_DETECTOR_OCUPACION|contador_felicitacion[22]~74_combout\,
	cout => \INST_DETECTOR_OCUPACION|contador_felicitacion[22]~75\);

-- Location: FF_X26_Y23_N17
\INST_DETECTOR_OCUPACION|contador_felicitacion[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \INST_DETECTOR_OCUPACION|contador_felicitacion[22]~74_combout\,
	clrn => \BUTTON[0]~input_o\,
	sclr => \INST_DETECTOR_OCUPACION|contador_felicitacion[18]~64_combout\,
	ena => \INST_DETECTOR_OCUPACION|contador_felicitacion[18]~65_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST_DETECTOR_OCUPACION|contador_felicitacion\(22));

-- Location: LCCOMB_X26_Y23_N18
\INST_DETECTOR_OCUPACION|contador_felicitacion[23]~76\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST_DETECTOR_OCUPACION|contador_felicitacion[23]~76_combout\ = (\INST_DETECTOR_OCUPACION|contador_felicitacion\(23) & (!\INST_DETECTOR_OCUPACION|contador_felicitacion[22]~75\)) # (!\INST_DETECTOR_OCUPACION|contador_felicitacion\(23) & 
-- ((\INST_DETECTOR_OCUPACION|contador_felicitacion[22]~75\) # (GND)))
-- \INST_DETECTOR_OCUPACION|contador_felicitacion[23]~77\ = CARRY((!\INST_DETECTOR_OCUPACION|contador_felicitacion[22]~75\) # (!\INST_DETECTOR_OCUPACION|contador_felicitacion\(23)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \INST_DETECTOR_OCUPACION|contador_felicitacion\(23),
	datad => VCC,
	cin => \INST_DETECTOR_OCUPACION|contador_felicitacion[22]~75\,
	combout => \INST_DETECTOR_OCUPACION|contador_felicitacion[23]~76_combout\,
	cout => \INST_DETECTOR_OCUPACION|contador_felicitacion[23]~77\);

-- Location: FF_X26_Y23_N19
\INST_DETECTOR_OCUPACION|contador_felicitacion[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \INST_DETECTOR_OCUPACION|contador_felicitacion[23]~76_combout\,
	clrn => \BUTTON[0]~input_o\,
	sclr => \INST_DETECTOR_OCUPACION|contador_felicitacion[18]~64_combout\,
	ena => \INST_DETECTOR_OCUPACION|contador_felicitacion[18]~65_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST_DETECTOR_OCUPACION|contador_felicitacion\(23));

-- Location: LCCOMB_X26_Y23_N20
\INST_DETECTOR_OCUPACION|contador_felicitacion[24]~78\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST_DETECTOR_OCUPACION|contador_felicitacion[24]~78_combout\ = (\INST_DETECTOR_OCUPACION|contador_felicitacion\(24) & (\INST_DETECTOR_OCUPACION|contador_felicitacion[23]~77\ $ (GND))) # (!\INST_DETECTOR_OCUPACION|contador_felicitacion\(24) & 
-- (!\INST_DETECTOR_OCUPACION|contador_felicitacion[23]~77\ & VCC))
-- \INST_DETECTOR_OCUPACION|contador_felicitacion[24]~79\ = CARRY((\INST_DETECTOR_OCUPACION|contador_felicitacion\(24) & !\INST_DETECTOR_OCUPACION|contador_felicitacion[23]~77\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \INST_DETECTOR_OCUPACION|contador_felicitacion\(24),
	datad => VCC,
	cin => \INST_DETECTOR_OCUPACION|contador_felicitacion[23]~77\,
	combout => \INST_DETECTOR_OCUPACION|contador_felicitacion[24]~78_combout\,
	cout => \INST_DETECTOR_OCUPACION|contador_felicitacion[24]~79\);

-- Location: FF_X26_Y23_N21
\INST_DETECTOR_OCUPACION|contador_felicitacion[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \INST_DETECTOR_OCUPACION|contador_felicitacion[24]~78_combout\,
	clrn => \BUTTON[0]~input_o\,
	sclr => \INST_DETECTOR_OCUPACION|contador_felicitacion[18]~64_combout\,
	ena => \INST_DETECTOR_OCUPACION|contador_felicitacion[18]~65_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST_DETECTOR_OCUPACION|contador_felicitacion\(24));

-- Location: LCCOMB_X26_Y23_N22
\INST_DETECTOR_OCUPACION|contador_felicitacion[25]~80\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST_DETECTOR_OCUPACION|contador_felicitacion[25]~80_combout\ = (\INST_DETECTOR_OCUPACION|contador_felicitacion\(25) & (!\INST_DETECTOR_OCUPACION|contador_felicitacion[24]~79\)) # (!\INST_DETECTOR_OCUPACION|contador_felicitacion\(25) & 
-- ((\INST_DETECTOR_OCUPACION|contador_felicitacion[24]~79\) # (GND)))
-- \INST_DETECTOR_OCUPACION|contador_felicitacion[25]~81\ = CARRY((!\INST_DETECTOR_OCUPACION|contador_felicitacion[24]~79\) # (!\INST_DETECTOR_OCUPACION|contador_felicitacion\(25)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \INST_DETECTOR_OCUPACION|contador_felicitacion\(25),
	datad => VCC,
	cin => \INST_DETECTOR_OCUPACION|contador_felicitacion[24]~79\,
	combout => \INST_DETECTOR_OCUPACION|contador_felicitacion[25]~80_combout\,
	cout => \INST_DETECTOR_OCUPACION|contador_felicitacion[25]~81\);

-- Location: FF_X26_Y23_N23
\INST_DETECTOR_OCUPACION|contador_felicitacion[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \INST_DETECTOR_OCUPACION|contador_felicitacion[25]~80_combout\,
	clrn => \BUTTON[0]~input_o\,
	sclr => \INST_DETECTOR_OCUPACION|contador_felicitacion[18]~64_combout\,
	ena => \INST_DETECTOR_OCUPACION|contador_felicitacion[18]~65_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST_DETECTOR_OCUPACION|contador_felicitacion\(25));

-- Location: LCCOMB_X26_Y23_N24
\INST_DETECTOR_OCUPACION|contador_felicitacion[26]~82\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST_DETECTOR_OCUPACION|contador_felicitacion[26]~82_combout\ = (\INST_DETECTOR_OCUPACION|contador_felicitacion\(26) & (\INST_DETECTOR_OCUPACION|contador_felicitacion[25]~81\ $ (GND))) # (!\INST_DETECTOR_OCUPACION|contador_felicitacion\(26) & 
-- (!\INST_DETECTOR_OCUPACION|contador_felicitacion[25]~81\ & VCC))
-- \INST_DETECTOR_OCUPACION|contador_felicitacion[26]~83\ = CARRY((\INST_DETECTOR_OCUPACION|contador_felicitacion\(26) & !\INST_DETECTOR_OCUPACION|contador_felicitacion[25]~81\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \INST_DETECTOR_OCUPACION|contador_felicitacion\(26),
	datad => VCC,
	cin => \INST_DETECTOR_OCUPACION|contador_felicitacion[25]~81\,
	combout => \INST_DETECTOR_OCUPACION|contador_felicitacion[26]~82_combout\,
	cout => \INST_DETECTOR_OCUPACION|contador_felicitacion[26]~83\);

-- Location: FF_X26_Y23_N25
\INST_DETECTOR_OCUPACION|contador_felicitacion[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \INST_DETECTOR_OCUPACION|contador_felicitacion[26]~82_combout\,
	clrn => \BUTTON[0]~input_o\,
	sclr => \INST_DETECTOR_OCUPACION|contador_felicitacion[18]~64_combout\,
	ena => \INST_DETECTOR_OCUPACION|contador_felicitacion[18]~65_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST_DETECTOR_OCUPACION|contador_felicitacion\(26));

-- Location: LCCOMB_X26_Y23_N26
\INST_DETECTOR_OCUPACION|contador_felicitacion[27]~84\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST_DETECTOR_OCUPACION|contador_felicitacion[27]~84_combout\ = \INST_DETECTOR_OCUPACION|contador_felicitacion\(27) $ (\INST_DETECTOR_OCUPACION|contador_felicitacion[26]~83\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \INST_DETECTOR_OCUPACION|contador_felicitacion\(27),
	cin => \INST_DETECTOR_OCUPACION|contador_felicitacion[26]~83\,
	combout => \INST_DETECTOR_OCUPACION|contador_felicitacion[27]~84_combout\);

-- Location: FF_X26_Y23_N27
\INST_DETECTOR_OCUPACION|contador_felicitacion[27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \INST_DETECTOR_OCUPACION|contador_felicitacion[27]~84_combout\,
	clrn => \BUTTON[0]~input_o\,
	sclr => \INST_DETECTOR_OCUPACION|contador_felicitacion[18]~64_combout\,
	ena => \INST_DETECTOR_OCUPACION|contador_felicitacion[18]~65_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST_DETECTOR_OCUPACION|contador_felicitacion\(27));

-- Location: LCCOMB_X26_Y23_N30
\INST_DETECTOR_OCUPACION|LessThan0~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST_DETECTOR_OCUPACION|LessThan0~6_combout\ = (((!\INST_DETECTOR_OCUPACION|contador_felicitacion\(23)) # (!\INST_DETECTOR_OCUPACION|contador_felicitacion\(21))) # (!\INST_DETECTOR_OCUPACION|contador_felicitacion\(22))) # 
-- (!\INST_DETECTOR_OCUPACION|contador_felicitacion\(20))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INST_DETECTOR_OCUPACION|contador_felicitacion\(20),
	datab => \INST_DETECTOR_OCUPACION|contador_felicitacion\(22),
	datac => \INST_DETECTOR_OCUPACION|contador_felicitacion\(21),
	datad => \INST_DETECTOR_OCUPACION|contador_felicitacion\(23),
	combout => \INST_DETECTOR_OCUPACION|LessThan0~6_combout\);

-- Location: LCCOMB_X27_Y23_N20
\INST_DETECTOR_OCUPACION|LessThan0~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST_DETECTOR_OCUPACION|LessThan0~4_combout\ = (!\INST_DETECTOR_OCUPACION|contador_felicitacion\(26) & (!\INST_DETECTOR_OCUPACION|contador_felicitacion\(24) & !\INST_DETECTOR_OCUPACION|contador_felicitacion\(25)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \INST_DETECTOR_OCUPACION|contador_felicitacion\(26),
	datac => \INST_DETECTOR_OCUPACION|contador_felicitacion\(24),
	datad => \INST_DETECTOR_OCUPACION|contador_felicitacion\(25),
	combout => \INST_DETECTOR_OCUPACION|LessThan0~4_combout\);

-- Location: LCCOMB_X27_Y23_N30
\INST_DETECTOR_OCUPACION|LessThan0~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST_DETECTOR_OCUPACION|LessThan0~7_combout\ = ((\INST_DETECTOR_OCUPACION|LessThan0~6_combout\ & \INST_DETECTOR_OCUPACION|LessThan0~4_combout\)) # (!\INST_DETECTOR_OCUPACION|contador_felicitacion\(27))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INST_DETECTOR_OCUPACION|contador_felicitacion\(27),
	datab => \INST_DETECTOR_OCUPACION|LessThan0~6_combout\,
	datad => \INST_DETECTOR_OCUPACION|LessThan0~4_combout\,
	combout => \INST_DETECTOR_OCUPACION|LessThan0~7_combout\);

-- Location: LCCOMB_X26_Y23_N28
\INST_DETECTOR_OCUPACION|LessThan0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST_DETECTOR_OCUPACION|LessThan0~0_combout\ = (!\INST_DETECTOR_OCUPACION|contador_felicitacion\(17) & (!\INST_DETECTOR_OCUPACION|contador_felicitacion\(18) & !\INST_DETECTOR_OCUPACION|contador_felicitacion\(19)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INST_DETECTOR_OCUPACION|contador_felicitacion\(17),
	datac => \INST_DETECTOR_OCUPACION|contador_felicitacion\(18),
	datad => \INST_DETECTOR_OCUPACION|contador_felicitacion\(19),
	combout => \INST_DETECTOR_OCUPACION|LessThan0~0_combout\);

-- Location: LCCOMB_X26_Y24_N0
\INST_DETECTOR_OCUPACION|LessThan0~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST_DETECTOR_OCUPACION|LessThan0~2_combout\ = (!\INST_DETECTOR_OCUPACION|contador_felicitacion\(9) & (!\INST_DETECTOR_OCUPACION|contador_felicitacion\(10) & ((!\INST_DETECTOR_OCUPACION|contador_felicitacion\(7)) # 
-- (!\INST_DETECTOR_OCUPACION|contador_felicitacion\(8)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INST_DETECTOR_OCUPACION|contador_felicitacion\(8),
	datab => \INST_DETECTOR_OCUPACION|contador_felicitacion\(7),
	datac => \INST_DETECTOR_OCUPACION|contador_felicitacion\(9),
	datad => \INST_DETECTOR_OCUPACION|contador_felicitacion\(10),
	combout => \INST_DETECTOR_OCUPACION|LessThan0~2_combout\);

-- Location: LCCOMB_X27_Y23_N14
\INST_DETECTOR_OCUPACION|LessThan0~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST_DETECTOR_OCUPACION|LessThan0~1_combout\ = (((!\INST_DETECTOR_OCUPACION|contador_felicitacion\(13) & !\INST_DETECTOR_OCUPACION|contador_felicitacion\(12))) # (!\INST_DETECTOR_OCUPACION|contador_felicitacion\(15))) # 
-- (!\INST_DETECTOR_OCUPACION|contador_felicitacion\(14))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101011111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INST_DETECTOR_OCUPACION|contador_felicitacion\(14),
	datab => \INST_DETECTOR_OCUPACION|contador_felicitacion\(13),
	datac => \INST_DETECTOR_OCUPACION|contador_felicitacion\(12),
	datad => \INST_DETECTOR_OCUPACION|contador_felicitacion\(15),
	combout => \INST_DETECTOR_OCUPACION|LessThan0~1_combout\);

-- Location: LCCOMB_X27_Y23_N24
\INST_DETECTOR_OCUPACION|LessThan0~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST_DETECTOR_OCUPACION|LessThan0~3_combout\ = (\INST_DETECTOR_OCUPACION|LessThan0~1_combout\) # ((!\INST_DETECTOR_OCUPACION|contador_felicitacion\(13) & (!\INST_DETECTOR_OCUPACION|contador_felicitacion\(11) & 
-- \INST_DETECTOR_OCUPACION|LessThan0~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INST_DETECTOR_OCUPACION|contador_felicitacion\(13),
	datab => \INST_DETECTOR_OCUPACION|contador_felicitacion\(11),
	datac => \INST_DETECTOR_OCUPACION|LessThan0~2_combout\,
	datad => \INST_DETECTOR_OCUPACION|LessThan0~1_combout\,
	combout => \INST_DETECTOR_OCUPACION|LessThan0~3_combout\);

-- Location: LCCOMB_X27_Y23_N10
\INST_DETECTOR_OCUPACION|LessThan0~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST_DETECTOR_OCUPACION|LessThan0~5_combout\ = (\INST_DETECTOR_OCUPACION|LessThan0~4_combout\ & (\INST_DETECTOR_OCUPACION|LessThan0~0_combout\ & (!\INST_DETECTOR_OCUPACION|contador_felicitacion\(16) & \INST_DETECTOR_OCUPACION|LessThan0~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INST_DETECTOR_OCUPACION|LessThan0~4_combout\,
	datab => \INST_DETECTOR_OCUPACION|LessThan0~0_combout\,
	datac => \INST_DETECTOR_OCUPACION|contador_felicitacion\(16),
	datad => \INST_DETECTOR_OCUPACION|LessThan0~3_combout\,
	combout => \INST_DETECTOR_OCUPACION|LessThan0~5_combout\);

-- Location: LCCOMB_X27_Y23_N18
\INST_DETECTOR_OCUPACION|contando_felicitacion~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST_DETECTOR_OCUPACION|contando_felicitacion~0_combout\ = (\INST_DETECTOR_OCUPACION|LessThan0~7_combout\ & (((\INST_DETECTOR_OCUPACION|entrada_anterior~q\)) # (!\INST_DETECTOR_OCUPACION|entrada_sinc2~q\))) # 
-- (!\INST_DETECTOR_OCUPACION|LessThan0~7_combout\ & (\INST_DETECTOR_OCUPACION|LessThan0~5_combout\ & ((\INST_DETECTOR_OCUPACION|entrada_anterior~q\) # (!\INST_DETECTOR_OCUPACION|entrada_sinc2~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INST_DETECTOR_OCUPACION|LessThan0~7_combout\,
	datab => \INST_DETECTOR_OCUPACION|entrada_sinc2~q\,
	datac => \INST_DETECTOR_OCUPACION|entrada_anterior~q\,
	datad => \INST_DETECTOR_OCUPACION|LessThan0~5_combout\,
	combout => \INST_DETECTOR_OCUPACION|contando_felicitacion~0_combout\);

-- Location: LCCOMB_X27_Y23_N16
\INST_DETECTOR_OCUPACION|contando_felicitacion~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST_DETECTOR_OCUPACION|contando_felicitacion~1_combout\ = (\INST_CONTADOR_35|fin_conteo_reg~q\ & (((\INST_DETECTOR_OCUPACION|contando_felicitacion~q\ & \INST_DETECTOR_OCUPACION|contando_felicitacion~0_combout\)))) # (!\INST_CONTADOR_35|fin_conteo_reg~q\ 
-- & ((\INST_DETECTOR_OCUPACION|proceso_control~0_combout\) # ((\INST_DETECTOR_OCUPACION|contando_felicitacion~q\ & \INST_DETECTOR_OCUPACION|contando_felicitacion~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INST_CONTADOR_35|fin_conteo_reg~q\,
	datab => \INST_DETECTOR_OCUPACION|proceso_control~0_combout\,
	datac => \INST_DETECTOR_OCUPACION|contando_felicitacion~q\,
	datad => \INST_DETECTOR_OCUPACION|contando_felicitacion~0_combout\,
	combout => \INST_DETECTOR_OCUPACION|contando_felicitacion~1_combout\);

-- Location: FF_X27_Y23_N17
\INST_DETECTOR_OCUPACION|contando_felicitacion\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \INST_DETECTOR_OCUPACION|contando_felicitacion~1_combout\,
	clrn => \BUTTON[0]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST_DETECTOR_OCUPACION|contando_felicitacion~q\);

-- Location: LCCOMB_X27_Y23_N4
\INST_DETECTOR_OCUPACION|estado_felicitacion~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST_DETECTOR_OCUPACION|estado_felicitacion~0_combout\ = (!\INST_DETECTOR_OCUPACION|contando_felicitacion~q\ & ((\INST_DETECTOR_OCUPACION|entrada_anterior~q\) # (!\INST_DETECTOR_OCUPACION|entrada_sinc2~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INST_DETECTOR_OCUPACION|entrada_anterior~q\,
	datab => \INST_DETECTOR_OCUPACION|entrada_sinc2~q\,
	datad => \INST_DETECTOR_OCUPACION|contando_felicitacion~q\,
	combout => \INST_DETECTOR_OCUPACION|estado_felicitacion~0_combout\);

-- Location: LCCOMB_X27_Y23_N6
\INST_DETECTOR_OCUPACION|estado_felicitacion~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST_DETECTOR_OCUPACION|estado_felicitacion~1_combout\ = (\INST_DETECTOR_OCUPACION|proceso_control~0_combout\ & (((!\INST_CONTADOR_35|fin_conteo_reg~q\)))) # (!\INST_DETECTOR_OCUPACION|proceso_control~0_combout\ & 
-- (\INST_DETECTOR_OCUPACION|estado_felicitacion~q\ & ((\INST_DETECTOR_OCUPACION|estado_felicitacion~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010111000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INST_DETECTOR_OCUPACION|estado_felicitacion~q\,
	datab => \INST_DETECTOR_OCUPACION|proceso_control~0_combout\,
	datac => \INST_CONTADOR_35|fin_conteo_reg~q\,
	datad => \INST_DETECTOR_OCUPACION|estado_felicitacion~0_combout\,
	combout => \INST_DETECTOR_OCUPACION|estado_felicitacion~1_combout\);

-- Location: LCCOMB_X27_Y23_N12
\INST_DETECTOR_OCUPACION|estado_felicitacion~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST_DETECTOR_OCUPACION|estado_felicitacion~2_combout\ = (\INST_DETECTOR_OCUPACION|estado_felicitacion~1_combout\) # ((!\INST_DETECTOR_OCUPACION|proceso_control~0_combout\ & (\INST_DETECTOR_OCUPACION|estado_felicitacion~q\ & 
-- \INST_DETECTOR_OCUPACION|contando_felicitacion~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INST_DETECTOR_OCUPACION|estado_felicitacion~1_combout\,
	datab => \INST_DETECTOR_OCUPACION|proceso_control~0_combout\,
	datac => \INST_DETECTOR_OCUPACION|estado_felicitacion~q\,
	datad => \INST_DETECTOR_OCUPACION|contando_felicitacion~0_combout\,
	combout => \INST_DETECTOR_OCUPACION|estado_felicitacion~2_combout\);

-- Location: FF_X27_Y23_N13
\INST_DETECTOR_OCUPACION|estado_felicitacion\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \INST_DETECTOR_OCUPACION|estado_felicitacion~2_combout\,
	clrn => \BUTTON[0]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST_DETECTOR_OCUPACION|estado_felicitacion~q\);

-- Location: LCCOMB_X31_Y23_N26
\INST_DISPLAY_HEX0|Mux6~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST_DISPLAY_HEX0|Mux6~0_combout\ = (!\INST_CONTADOR_35|contador_unidades\(3) & (!\INST_CONTADOR_35|contador_unidades\(1) & (\INST_CONTADOR_35|contador_unidades\(2) $ (\INST_CONTADOR_35|contador_unidades\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INST_CONTADOR_35|contador_unidades\(3),
	datab => \INST_CONTADOR_35|contador_unidades\(1),
	datac => \INST_CONTADOR_35|contador_unidades\(2),
	datad => \INST_CONTADOR_35|contador_unidades\(0),
	combout => \INST_DISPLAY_HEX0|Mux6~0_combout\);

-- Location: LCCOMB_X31_Y23_N8
\INST_DISPLAY_HEX0|Mux5~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST_DISPLAY_HEX0|Mux5~0_combout\ = (\INST_CONTADOR_35|contador_unidades\(2) & (\INST_CONTADOR_35|contador_unidades\(0) $ (\INST_CONTADOR_35|contador_unidades\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INST_CONTADOR_35|contador_unidades\(2),
	datab => \INST_CONTADOR_35|contador_unidades\(0),
	datad => \INST_CONTADOR_35|contador_unidades\(1),
	combout => \INST_DISPLAY_HEX0|Mux5~0_combout\);

-- Location: LCCOMB_X31_Y23_N22
\INST_DISPLAY_HEX0|Mux4~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST_DISPLAY_HEX0|Mux4~0_combout\ = (!\INST_CONTADOR_35|contador_unidades\(2) & (!\INST_CONTADOR_35|contador_unidades\(0) & \INST_CONTADOR_35|contador_unidades\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INST_CONTADOR_35|contador_unidades\(2),
	datab => \INST_CONTADOR_35|contador_unidades\(0),
	datad => \INST_CONTADOR_35|contador_unidades\(1),
	combout => \INST_DISPLAY_HEX0|Mux4~0_combout\);

-- Location: LCCOMB_X31_Y23_N12
\INST_DISPLAY_HEX0|Mux3~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST_DISPLAY_HEX0|Mux3~0_combout\ = (!\INST_CONTADOR_35|contador_unidades\(3) & ((\INST_CONTADOR_35|contador_unidades\(1) & (\INST_CONTADOR_35|contador_unidades\(2) & \INST_CONTADOR_35|contador_unidades\(0))) # (!\INST_CONTADOR_35|contador_unidades\(1) & 
-- (\INST_CONTADOR_35|contador_unidades\(2) $ (\INST_CONTADOR_35|contador_unidades\(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000100010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INST_CONTADOR_35|contador_unidades\(3),
	datab => \INST_CONTADOR_35|contador_unidades\(1),
	datac => \INST_CONTADOR_35|contador_unidades\(2),
	datad => \INST_CONTADOR_35|contador_unidades\(0),
	combout => \INST_DISPLAY_HEX0|Mux3~0_combout\);

-- Location: LCCOMB_X31_Y23_N6
\INST_DISPLAY_HEX0|Mux2~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST_DISPLAY_HEX0|Mux2~0_combout\ = (\INST_CONTADOR_35|contador_unidades\(0)) # ((\INST_CONTADOR_35|contador_unidades\(2) & !\INST_CONTADOR_35|contador_unidades\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INST_CONTADOR_35|contador_unidades\(2),
	datab => \INST_CONTADOR_35|contador_unidades\(0),
	datad => \INST_CONTADOR_35|contador_unidades\(1),
	combout => \INST_DISPLAY_HEX0|Mux2~0_combout\);

-- Location: LCCOMB_X31_Y23_N0
\INST_DISPLAY_HEX0|Mux1~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST_DISPLAY_HEX0|Mux1~0_combout\ = (!\INST_CONTADOR_35|contador_unidades\(3) & ((\INST_CONTADOR_35|contador_unidades\(1) & ((\INST_CONTADOR_35|contador_unidades\(0)) # (!\INST_CONTADOR_35|contador_unidades\(2)))) # 
-- (!\INST_CONTADOR_35|contador_unidades\(1) & (!\INST_CONTADOR_35|contador_unidades\(2) & \INST_CONTADOR_35|contador_unidades\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010100000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INST_CONTADOR_35|contador_unidades\(3),
	datab => \INST_CONTADOR_35|contador_unidades\(1),
	datac => \INST_CONTADOR_35|contador_unidades\(2),
	datad => \INST_CONTADOR_35|contador_unidades\(0),
	combout => \INST_DISPLAY_HEX0|Mux1~0_combout\);

-- Location: LCCOMB_X31_Y23_N14
\INST_DISPLAY_HEX0|Mux0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST_DISPLAY_HEX0|Mux0~0_combout\ = (\INST_CONTADOR_35|contador_unidades\(3)) # ((\INST_CONTADOR_35|contador_unidades\(1) & ((!\INST_CONTADOR_35|contador_unidades\(0)) # (!\INST_CONTADOR_35|contador_unidades\(2)))) # 
-- (!\INST_CONTADOR_35|contador_unidades\(1) & (\INST_CONTADOR_35|contador_unidades\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111011111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INST_CONTADOR_35|contador_unidades\(3),
	datab => \INST_CONTADOR_35|contador_unidades\(1),
	datac => \INST_CONTADOR_35|contador_unidades\(2),
	datad => \INST_CONTADOR_35|contador_unidades\(0),
	combout => \INST_DISPLAY_HEX0|Mux0~0_combout\);

-- Location: LCCOMB_X28_Y28_N24
\INST_DISPLAY_HEX1|Mux1~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST_DISPLAY_HEX1|Mux1~0_combout\ = (\INST_CONTADOR_35|contador_decenas\(0) & !\INST_CONTADOR_35|contador_decenas\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \INST_CONTADOR_35|contador_decenas\(0),
	datad => \INST_CONTADOR_35|contador_decenas\(1),
	combout => \INST_DISPLAY_HEX1|Mux1~0_combout\);

-- Location: LCCOMB_X28_Y28_N26
\INST_DISPLAY_HEX1|Mux1~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST_DISPLAY_HEX1|Mux1~1_combout\ = (!\INST_CONTADOR_35|contador_decenas\(0) & \INST_CONTADOR_35|contador_decenas\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \INST_CONTADOR_35|contador_decenas\(0),
	datad => \INST_CONTADOR_35|contador_decenas\(1),
	combout => \INST_DISPLAY_HEX1|Mux1~1_combout\);

-- Location: LCCOMB_X28_Y28_N4
\INST_DISPLAY_HEX1|Mux1~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST_DISPLAY_HEX1|Mux1~2_combout\ = (\INST_CONTADOR_35|contador_decenas\(0)) # (\INST_CONTADOR_35|contador_decenas\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \INST_CONTADOR_35|contador_decenas\(0),
	datad => \INST_CONTADOR_35|contador_decenas\(1),
	combout => \INST_DISPLAY_HEX1|Mux1~2_combout\);

-- Location: LCCOMB_X30_Y23_N2
\INST_CONTADOR_EXTRA|contador_decenas[3]~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST_CONTADOR_EXTRA|contador_decenas[3]~8_combout\ = (\INST_CONTADOR_35|fin_conteo_reg~q\ & (\INST_CONTADOR_EXTRA|Equal1~0_combout\ & (\INST_DETECTOR_OCUPACION|estado_ocupado~q\ & !\INST_CONTADOR_EXTRA|proceso_contador_extra~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INST_CONTADOR_35|fin_conteo_reg~q\,
	datab => \INST_CONTADOR_EXTRA|Equal1~0_combout\,
	datac => \INST_DETECTOR_OCUPACION|estado_ocupado~q\,
	datad => \INST_CONTADOR_EXTRA|proceso_contador_extra~0_combout\,
	combout => \INST_CONTADOR_EXTRA|contador_decenas[3]~8_combout\);

-- Location: LCCOMB_X30_Y23_N10
\INST_CONTADOR_EXTRA|contador_decenas[1]~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST_CONTADOR_EXTRA|contador_decenas[1]~5_combout\ = \INST_CONTADOR_EXTRA|contador_decenas\(1) $ (((\INST_CONTADOR_EXTRA|contador_decenas\(0) & \INST_CONTADOR_EXTRA|contador_decenas[3]~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \INST_CONTADOR_EXTRA|contador_decenas\(0),
	datac => \INST_CONTADOR_EXTRA|contador_decenas\(1),
	datad => \INST_CONTADOR_EXTRA|contador_decenas[3]~8_combout\,
	combout => \INST_CONTADOR_EXTRA|contador_decenas[1]~5_combout\);

-- Location: FF_X30_Y23_N11
\INST_CONTADOR_EXTRA|contador_decenas[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \INST_DIVISOR|reloj_1hz_reg~clkctrl_outclk\,
	d => \INST_CONTADOR_EXTRA|contador_decenas[1]~5_combout\,
	clrn => \ALT_INV_reset_combinado~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST_CONTADOR_EXTRA|contador_decenas\(1));

-- Location: LCCOMB_X29_Y23_N16
\INST_CONTADOR_EXTRA|contador_decenas[2]~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST_CONTADOR_EXTRA|contador_decenas[2]~6_combout\ = (\INST_CONTADOR_EXTRA|contador_decenas\(1) & \INST_CONTADOR_EXTRA|contador_decenas\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \INST_CONTADOR_EXTRA|contador_decenas\(1),
	datad => \INST_CONTADOR_EXTRA|contador_decenas\(0),
	combout => \INST_CONTADOR_EXTRA|contador_decenas[2]~6_combout\);

-- Location: LCCOMB_X30_Y23_N20
\INST_CONTADOR_EXTRA|contador_decenas[2]~9\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST_CONTADOR_EXTRA|contador_decenas[2]~9_combout\ = \INST_CONTADOR_EXTRA|contador_decenas\(2) $ (((\INST_CONTADOR_EXTRA|contador_decenas\(1) & (\INST_CONTADOR_EXTRA|contador_decenas\(0) & \INST_CONTADOR_EXTRA|contador_decenas[3]~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INST_CONTADOR_EXTRA|contador_decenas\(1),
	datab => \INST_CONTADOR_EXTRA|contador_decenas\(0),
	datac => \INST_CONTADOR_EXTRA|contador_decenas\(2),
	datad => \INST_CONTADOR_EXTRA|contador_decenas[3]~8_combout\,
	combout => \INST_CONTADOR_EXTRA|contador_decenas[2]~9_combout\);

-- Location: FF_X30_Y23_N21
\INST_CONTADOR_EXTRA|contador_decenas[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \INST_DIVISOR|reloj_1hz_reg~clkctrl_outclk\,
	d => \INST_CONTADOR_EXTRA|contador_decenas[2]~9_combout\,
	clrn => \ALT_INV_reset_combinado~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST_CONTADOR_EXTRA|contador_decenas\(2));

-- Location: LCCOMB_X30_Y23_N26
\INST_CONTADOR_EXTRA|contador_decenas[3]~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST_CONTADOR_EXTRA|contador_decenas[3]~7_combout\ = \INST_CONTADOR_EXTRA|contador_decenas\(3) $ (((\INST_CONTADOR_EXTRA|contador_decenas[2]~6_combout\ & (\INST_CONTADOR_EXTRA|contador_decenas\(2) & \INST_CONTADOR_EXTRA|contador_decenas[3]~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INST_CONTADOR_EXTRA|contador_decenas[2]~6_combout\,
	datab => \INST_CONTADOR_EXTRA|contador_decenas\(2),
	datac => \INST_CONTADOR_EXTRA|contador_decenas\(3),
	datad => \INST_CONTADOR_EXTRA|contador_decenas[3]~8_combout\,
	combout => \INST_CONTADOR_EXTRA|contador_decenas[3]~7_combout\);

-- Location: FF_X30_Y23_N27
\INST_CONTADOR_EXTRA|contador_decenas[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \INST_DIVISOR|reloj_1hz_reg~clkctrl_outclk\,
	d => \INST_CONTADOR_EXTRA|contador_decenas[3]~7_combout\,
	clrn => \ALT_INV_reset_combinado~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST_CONTADOR_EXTRA|contador_decenas\(3));

-- Location: LCCOMB_X30_Y23_N18
\INST_CONTADOR_EXTRA|contador_unidades[3]~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST_CONTADOR_EXTRA|contador_unidades[3]~1_combout\ = ((\INST_CONTADOR_EXTRA|contador_decenas\(2)) # ((!\INST_CONTADOR_EXTRA|Equal1~0_combout\) # (!\INST_CONTADOR_EXTRA|contador_decenas\(0)))) # (!\INST_CONTADOR_EXTRA|contador_decenas\(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INST_CONTADOR_EXTRA|contador_decenas\(3),
	datab => \INST_CONTADOR_EXTRA|contador_decenas\(2),
	datac => \INST_CONTADOR_EXTRA|contador_decenas\(0),
	datad => \INST_CONTADOR_EXTRA|Equal1~0_combout\,
	combout => \INST_CONTADOR_EXTRA|contador_unidades[3]~1_combout\);

-- Location: LCCOMB_X30_Y23_N4
\INST_CONTADOR_EXTRA|contador_unidades[3]~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST_CONTADOR_EXTRA|contador_unidades[3]~2_combout\ = (\INST_CONTADOR_35|fin_conteo_reg~q\ & (\INST_DETECTOR_OCUPACION|estado_ocupado~q\ & ((\INST_CONTADOR_EXTRA|contador_decenas\(1)) # (\INST_CONTADOR_EXTRA|contador_unidades[3]~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INST_CONTADOR_EXTRA|contador_decenas\(1),
	datab => \INST_CONTADOR_35|fin_conteo_reg~q\,
	datac => \INST_DETECTOR_OCUPACION|estado_ocupado~q\,
	datad => \INST_CONTADOR_EXTRA|contador_unidades[3]~1_combout\,
	combout => \INST_CONTADOR_EXTRA|contador_unidades[3]~2_combout\);

-- Location: LCCOMB_X30_Y23_N6
\INST_CONTADOR_EXTRA|contador_unidades[2]~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST_CONTADOR_EXTRA|contador_unidades[2]~4_combout\ = \INST_CONTADOR_EXTRA|contador_unidades\(2) $ (((\INST_CONTADOR_EXTRA|contador_unidades\(0) & (\INST_CONTADOR_EXTRA|contador_unidades\(1) & \INST_CONTADOR_EXTRA|contador_unidades[3]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INST_CONTADOR_EXTRA|contador_unidades\(0),
	datab => \INST_CONTADOR_EXTRA|contador_unidades\(1),
	datac => \INST_CONTADOR_EXTRA|contador_unidades\(2),
	datad => \INST_CONTADOR_EXTRA|contador_unidades[3]~2_combout\,
	combout => \INST_CONTADOR_EXTRA|contador_unidades[2]~4_combout\);

-- Location: FF_X30_Y23_N7
\INST_CONTADOR_EXTRA|contador_unidades[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \INST_DIVISOR|reloj_1hz_reg~clkctrl_outclk\,
	d => \INST_CONTADOR_EXTRA|contador_unidades[2]~4_combout\,
	clrn => \ALT_INV_reset_combinado~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST_CONTADOR_EXTRA|contador_unidades\(2));

-- Location: LCCOMB_X30_Y23_N12
\INST_CONTADOR_EXTRA|Add1~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST_CONTADOR_EXTRA|Add1~0_combout\ = \INST_CONTADOR_EXTRA|contador_unidades\(3) $ (((\INST_CONTADOR_EXTRA|contador_unidades\(2) & (\INST_CONTADOR_EXTRA|contador_unidades\(1) & \INST_CONTADOR_EXTRA|contador_unidades\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INST_CONTADOR_EXTRA|contador_unidades\(2),
	datab => \INST_CONTADOR_EXTRA|contador_unidades\(1),
	datac => \INST_CONTADOR_EXTRA|contador_unidades\(0),
	datad => \INST_CONTADOR_EXTRA|contador_unidades\(3),
	combout => \INST_CONTADOR_EXTRA|Add1~0_combout\);

-- Location: LCCOMB_X30_Y23_N28
\INST_CONTADOR_EXTRA|contador_unidades[3]~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST_CONTADOR_EXTRA|contador_unidades[3]~5_combout\ = (\INST_CONTADOR_EXTRA|contador_unidades[3]~2_combout\ & (\INST_CONTADOR_EXTRA|Add1~0_combout\ & (!\INST_CONTADOR_EXTRA|Equal1~0_combout\))) # (!\INST_CONTADOR_EXTRA|contador_unidades[3]~2_combout\ & 
-- (((\INST_CONTADOR_EXTRA|contador_unidades\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INST_CONTADOR_EXTRA|Add1~0_combout\,
	datab => \INST_CONTADOR_EXTRA|Equal1~0_combout\,
	datac => \INST_CONTADOR_EXTRA|contador_unidades\(3),
	datad => \INST_CONTADOR_EXTRA|contador_unidades[3]~2_combout\,
	combout => \INST_CONTADOR_EXTRA|contador_unidades[3]~5_combout\);

-- Location: FF_X30_Y23_N29
\INST_CONTADOR_EXTRA|contador_unidades[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \INST_DIVISOR|reloj_1hz_reg~clkctrl_outclk\,
	d => \INST_CONTADOR_EXTRA|contador_unidades[3]~5_combout\,
	clrn => \ALT_INV_reset_combinado~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST_CONTADOR_EXTRA|contador_unidades\(3));

-- Location: LCCOMB_X30_Y23_N0
\INST_CONTADOR_EXTRA|Equal1~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST_CONTADOR_EXTRA|Equal1~0_combout\ = (!\INST_CONTADOR_EXTRA|contador_unidades\(2) & (\INST_CONTADOR_EXTRA|contador_unidades\(3) & (\INST_CONTADOR_EXTRA|contador_unidades\(0) & !\INST_CONTADOR_EXTRA|contador_unidades\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INST_CONTADOR_EXTRA|contador_unidades\(2),
	datab => \INST_CONTADOR_EXTRA|contador_unidades\(3),
	datac => \INST_CONTADOR_EXTRA|contador_unidades\(0),
	datad => \INST_CONTADOR_EXTRA|contador_unidades\(1),
	combout => \INST_CONTADOR_EXTRA|Equal1~0_combout\);

-- Location: LCCOMB_X29_Y23_N10
\INST_CONTADOR_EXTRA|contador_decenas[0]~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST_CONTADOR_EXTRA|contador_decenas[0]~4_combout\ = \INST_CONTADOR_EXTRA|contador_decenas\(0) $ (((\INST_CONTADOR_EXTRA|Equal1~0_combout\ & (!\INST_CONTADOR_EXTRA|proceso_contador_extra~0_combout\ & \sig_habilitar_extra~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101001011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INST_CONTADOR_EXTRA|Equal1~0_combout\,
	datab => \INST_CONTADOR_EXTRA|proceso_contador_extra~0_combout\,
	datac => \INST_CONTADOR_EXTRA|contador_decenas\(0),
	datad => \sig_habilitar_extra~combout\,
	combout => \INST_CONTADOR_EXTRA|contador_decenas[0]~4_combout\);

-- Location: FF_X29_Y23_N11
\INST_CONTADOR_EXTRA|contador_decenas[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \INST_DIVISOR|reloj_1hz_reg~clkctrl_outclk\,
	d => \INST_CONTADOR_EXTRA|contador_decenas[0]~4_combout\,
	clrn => \ALT_INV_reset_combinado~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST_CONTADOR_EXTRA|contador_decenas\(0));

-- Location: LCCOMB_X29_Y23_N14
\INST_CONTADOR_EXTRA|proceso_contador_extra~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST_CONTADOR_EXTRA|proceso_contador_extra~0_combout\ = (\INST_CONTADOR_EXTRA|contador_decenas\(0) & (!\INST_CONTADOR_EXTRA|contador_decenas\(1) & (!\INST_CONTADOR_EXTRA|contador_decenas\(2) & \INST_CONTADOR_EXTRA|contador_decenas\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INST_CONTADOR_EXTRA|contador_decenas\(0),
	datab => \INST_CONTADOR_EXTRA|contador_decenas\(1),
	datac => \INST_CONTADOR_EXTRA|contador_decenas\(2),
	datad => \INST_CONTADOR_EXTRA|contador_decenas\(3),
	combout => \INST_CONTADOR_EXTRA|proceso_contador_extra~0_combout\);

-- Location: LCCOMB_X30_Y23_N30
\INST_CONTADOR_EXTRA|contador_unidades[0]~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST_CONTADOR_EXTRA|contador_unidades[0]~0_combout\ = \INST_CONTADOR_EXTRA|contador_unidades\(0) $ (((\sig_habilitar_extra~combout\ & ((!\INST_CONTADOR_EXTRA|Equal1~0_combout\) # (!\INST_CONTADOR_EXTRA|proceso_contador_extra~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000011111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INST_CONTADOR_EXTRA|proceso_contador_extra~0_combout\,
	datab => \INST_CONTADOR_EXTRA|Equal1~0_combout\,
	datac => \INST_CONTADOR_EXTRA|contador_unidades\(0),
	datad => \sig_habilitar_extra~combout\,
	combout => \INST_CONTADOR_EXTRA|contador_unidades[0]~0_combout\);

-- Location: FF_X30_Y23_N31
\INST_CONTADOR_EXTRA|contador_unidades[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \INST_DIVISOR|reloj_1hz_reg~clkctrl_outclk\,
	d => \INST_CONTADOR_EXTRA|contador_unidades[0]~0_combout\,
	clrn => \ALT_INV_reset_combinado~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST_CONTADOR_EXTRA|contador_unidades\(0));

-- Location: LCCOMB_X30_Y23_N24
\INST_CONTADOR_EXTRA|contador_unidades[1]~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST_CONTADOR_EXTRA|contador_unidades[1]~3_combout\ = (\INST_CONTADOR_EXTRA|contador_unidades[3]~2_combout\ & (!\INST_CONTADOR_EXTRA|Equal1~0_combout\ & (\INST_CONTADOR_EXTRA|contador_unidades\(0) $ (\INST_CONTADOR_EXTRA|contador_unidades\(1))))) # 
-- (!\INST_CONTADOR_EXTRA|contador_unidades[3]~2_combout\ & (((\INST_CONTADOR_EXTRA|contador_unidades\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001001011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INST_CONTADOR_EXTRA|contador_unidades\(0),
	datab => \INST_CONTADOR_EXTRA|Equal1~0_combout\,
	datac => \INST_CONTADOR_EXTRA|contador_unidades\(1),
	datad => \INST_CONTADOR_EXTRA|contador_unidades[3]~2_combout\,
	combout => \INST_CONTADOR_EXTRA|contador_unidades[1]~3_combout\);

-- Location: FF_X30_Y23_N25
\INST_CONTADOR_EXTRA|contador_unidades[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \INST_DIVISOR|reloj_1hz_reg~clkctrl_outclk\,
	d => \INST_CONTADOR_EXTRA|contador_unidades[1]~3_combout\,
	clrn => \ALT_INV_reset_combinado~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST_CONTADOR_EXTRA|contador_unidades\(1));

-- Location: LCCOMB_X32_Y26_N0
\INST_DISPLAY_HEX2|Mux6~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST_DISPLAY_HEX2|Mux6~0_combout\ = (!\INST_CONTADOR_EXTRA|contador_unidades\(1) & (!\INST_CONTADOR_EXTRA|contador_unidades\(3) & (\INST_CONTADOR_EXTRA|contador_unidades\(2) $ (\INST_CONTADOR_EXTRA|contador_unidades\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INST_CONTADOR_EXTRA|contador_unidades\(1),
	datab => \INST_CONTADOR_EXTRA|contador_unidades\(3),
	datac => \INST_CONTADOR_EXTRA|contador_unidades\(2),
	datad => \INST_CONTADOR_EXTRA|contador_unidades\(0),
	combout => \INST_DISPLAY_HEX2|Mux6~0_combout\);

-- Location: LCCOMB_X32_Y26_N14
\INST_DISPLAY_HEX2|Mux5~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST_DISPLAY_HEX2|Mux5~0_combout\ = (\INST_CONTADOR_EXTRA|contador_unidades\(2) & (\INST_CONTADOR_EXTRA|contador_unidades\(1) $ (\INST_CONTADOR_EXTRA|contador_unidades\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INST_CONTADOR_EXTRA|contador_unidades\(1),
	datac => \INST_CONTADOR_EXTRA|contador_unidades\(2),
	datad => \INST_CONTADOR_EXTRA|contador_unidades\(0),
	combout => \INST_DISPLAY_HEX2|Mux5~0_combout\);

-- Location: LCCOMB_X32_Y26_N4
\INST_DISPLAY_HEX2|Mux4~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST_DISPLAY_HEX2|Mux4~0_combout\ = (\INST_CONTADOR_EXTRA|contador_unidades\(1) & (!\INST_CONTADOR_EXTRA|contador_unidades\(2) & !\INST_CONTADOR_EXTRA|contador_unidades\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INST_CONTADOR_EXTRA|contador_unidades\(1),
	datac => \INST_CONTADOR_EXTRA|contador_unidades\(2),
	datad => \INST_CONTADOR_EXTRA|contador_unidades\(0),
	combout => \INST_DISPLAY_HEX2|Mux4~0_combout\);

-- Location: LCCOMB_X32_Y26_N2
\INST_DISPLAY_HEX2|Mux3~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST_DISPLAY_HEX2|Mux3~0_combout\ = (!\INST_CONTADOR_EXTRA|contador_unidades\(3) & ((\INST_CONTADOR_EXTRA|contador_unidades\(1) & (\INST_CONTADOR_EXTRA|contador_unidades\(2) & \INST_CONTADOR_EXTRA|contador_unidades\(0))) # 
-- (!\INST_CONTADOR_EXTRA|contador_unidades\(1) & (\INST_CONTADOR_EXTRA|contador_unidades\(2) $ (\INST_CONTADOR_EXTRA|contador_unidades\(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000100010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INST_CONTADOR_EXTRA|contador_unidades\(1),
	datab => \INST_CONTADOR_EXTRA|contador_unidades\(3),
	datac => \INST_CONTADOR_EXTRA|contador_unidades\(2),
	datad => \INST_CONTADOR_EXTRA|contador_unidades\(0),
	combout => \INST_DISPLAY_HEX2|Mux3~0_combout\);

-- Location: LCCOMB_X32_Y26_N12
\INST_DISPLAY_HEX2|Mux2~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST_DISPLAY_HEX2|Mux2~0_combout\ = (\INST_CONTADOR_EXTRA|contador_unidades\(0)) # ((!\INST_CONTADOR_EXTRA|contador_unidades\(1) & \INST_CONTADOR_EXTRA|contador_unidades\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INST_CONTADOR_EXTRA|contador_unidades\(1),
	datac => \INST_CONTADOR_EXTRA|contador_unidades\(2),
	datad => \INST_CONTADOR_EXTRA|contador_unidades\(0),
	combout => \INST_DISPLAY_HEX2|Mux2~0_combout\);

-- Location: LCCOMB_X32_Y26_N22
\INST_DISPLAY_HEX2|Mux1~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST_DISPLAY_HEX2|Mux1~0_combout\ = (!\INST_CONTADOR_EXTRA|contador_unidades\(3) & ((\INST_CONTADOR_EXTRA|contador_unidades\(1) & ((\INST_CONTADOR_EXTRA|contador_unidades\(0)) # (!\INST_CONTADOR_EXTRA|contador_unidades\(2)))) # 
-- (!\INST_CONTADOR_EXTRA|contador_unidades\(1) & (!\INST_CONTADOR_EXTRA|contador_unidades\(2) & \INST_CONTADOR_EXTRA|contador_unidades\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001100000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INST_CONTADOR_EXTRA|contador_unidades\(1),
	datab => \INST_CONTADOR_EXTRA|contador_unidades\(3),
	datac => \INST_CONTADOR_EXTRA|contador_unidades\(2),
	datad => \INST_CONTADOR_EXTRA|contador_unidades\(0),
	combout => \INST_DISPLAY_HEX2|Mux1~0_combout\);

-- Location: LCCOMB_X32_Y26_N20
\INST_DISPLAY_HEX2|Mux0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST_DISPLAY_HEX2|Mux0~0_combout\ = (\INST_CONTADOR_EXTRA|contador_unidades\(3)) # ((\INST_CONTADOR_EXTRA|contador_unidades\(1) & ((!\INST_CONTADOR_EXTRA|contador_unidades\(0)) # (!\INST_CONTADOR_EXTRA|contador_unidades\(2)))) # 
-- (!\INST_CONTADOR_EXTRA|contador_unidades\(1) & (\INST_CONTADOR_EXTRA|contador_unidades\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111011111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INST_CONTADOR_EXTRA|contador_unidades\(1),
	datab => \INST_CONTADOR_EXTRA|contador_unidades\(3),
	datac => \INST_CONTADOR_EXTRA|contador_unidades\(2),
	datad => \INST_CONTADOR_EXTRA|contador_unidades\(0),
	combout => \INST_DISPLAY_HEX2|Mux0~0_combout\);

-- Location: LCCOMB_X29_Y23_N20
\INST_DISPLAY_HEX3|Mux6~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST_DISPLAY_HEX3|Mux6~0_combout\ = (!\INST_CONTADOR_EXTRA|contador_decenas\(3) & (!\INST_CONTADOR_EXTRA|contador_decenas\(1) & (\INST_CONTADOR_EXTRA|contador_decenas\(2) $ (\INST_CONTADOR_EXTRA|contador_decenas\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INST_CONTADOR_EXTRA|contador_decenas\(2),
	datab => \INST_CONTADOR_EXTRA|contador_decenas\(3),
	datac => \INST_CONTADOR_EXTRA|contador_decenas\(1),
	datad => \INST_CONTADOR_EXTRA|contador_decenas\(0),
	combout => \INST_DISPLAY_HEX3|Mux6~0_combout\);

-- Location: LCCOMB_X29_Y23_N26
\INST_DISPLAY_HEX3|Mux5~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST_DISPLAY_HEX3|Mux5~0_combout\ = (\INST_CONTADOR_EXTRA|contador_decenas\(2) & (\INST_CONTADOR_EXTRA|contador_decenas\(0) $ (\INST_CONTADOR_EXTRA|contador_decenas\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110000001100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INST_CONTADOR_EXTRA|contador_decenas\(0),
	datab => \INST_CONTADOR_EXTRA|contador_decenas\(1),
	datac => \INST_CONTADOR_EXTRA|contador_decenas\(2),
	combout => \INST_DISPLAY_HEX3|Mux5~0_combout\);

-- Location: LCCOMB_X29_Y23_N24
\INST_DISPLAY_HEX3|Mux4~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST_DISPLAY_HEX3|Mux4~0_combout\ = (!\INST_CONTADOR_EXTRA|contador_decenas\(0) & (\INST_CONTADOR_EXTRA|contador_decenas\(1) & !\INST_CONTADOR_EXTRA|contador_decenas\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INST_CONTADOR_EXTRA|contador_decenas\(0),
	datab => \INST_CONTADOR_EXTRA|contador_decenas\(1),
	datac => \INST_CONTADOR_EXTRA|contador_decenas\(2),
	combout => \INST_DISPLAY_HEX3|Mux4~0_combout\);

-- Location: LCCOMB_X29_Y23_N22
\INST_DISPLAY_HEX3|Mux3~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST_DISPLAY_HEX3|Mux3~0_combout\ = (!\INST_CONTADOR_EXTRA|contador_decenas\(3) & ((\INST_CONTADOR_EXTRA|contador_decenas\(2) & (\INST_CONTADOR_EXTRA|contador_decenas\(1) $ (!\INST_CONTADOR_EXTRA|contador_decenas\(0)))) # 
-- (!\INST_CONTADOR_EXTRA|contador_decenas\(2) & (!\INST_CONTADOR_EXTRA|contador_decenas\(1) & \INST_CONTADOR_EXTRA|contador_decenas\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000100000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INST_CONTADOR_EXTRA|contador_decenas\(2),
	datab => \INST_CONTADOR_EXTRA|contador_decenas\(3),
	datac => \INST_CONTADOR_EXTRA|contador_decenas\(1),
	datad => \INST_CONTADOR_EXTRA|contador_decenas\(0),
	combout => \INST_DISPLAY_HEX3|Mux3~0_combout\);

-- Location: LCCOMB_X29_Y23_N28
\INST_DISPLAY_HEX3|Mux2~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST_DISPLAY_HEX3|Mux2~0_combout\ = (\INST_CONTADOR_EXTRA|contador_decenas\(0)) # ((!\INST_CONTADOR_EXTRA|contador_decenas\(1) & \INST_CONTADOR_EXTRA|contador_decenas\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INST_CONTADOR_EXTRA|contador_decenas\(0),
	datab => \INST_CONTADOR_EXTRA|contador_decenas\(1),
	datac => \INST_CONTADOR_EXTRA|contador_decenas\(2),
	combout => \INST_DISPLAY_HEX3|Mux2~0_combout\);

-- Location: LCCOMB_X29_Y23_N30
\INST_DISPLAY_HEX3|Mux1~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST_DISPLAY_HEX3|Mux1~0_combout\ = (!\INST_CONTADOR_EXTRA|contador_decenas\(3) & ((\INST_CONTADOR_EXTRA|contador_decenas\(2) & (\INST_CONTADOR_EXTRA|contador_decenas\(1) & \INST_CONTADOR_EXTRA|contador_decenas\(0))) # 
-- (!\INST_CONTADOR_EXTRA|contador_decenas\(2) & ((\INST_CONTADOR_EXTRA|contador_decenas\(1)) # (\INST_CONTADOR_EXTRA|contador_decenas\(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000100010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INST_CONTADOR_EXTRA|contador_decenas\(2),
	datab => \INST_CONTADOR_EXTRA|contador_decenas\(3),
	datac => \INST_CONTADOR_EXTRA|contador_decenas\(1),
	datad => \INST_CONTADOR_EXTRA|contador_decenas\(0),
	combout => \INST_DISPLAY_HEX3|Mux1~0_combout\);

-- Location: LCCOMB_X29_Y23_N8
\INST_DISPLAY_HEX3|Mux0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST_DISPLAY_HEX3|Mux0~0_combout\ = (\INST_CONTADOR_EXTRA|contador_decenas\(3)) # ((\INST_CONTADOR_EXTRA|contador_decenas\(2) & ((!\INST_CONTADOR_EXTRA|contador_decenas\(0)) # (!\INST_CONTADOR_EXTRA|contador_decenas\(1)))) # 
-- (!\INST_CONTADOR_EXTRA|contador_decenas\(2) & (\INST_CONTADOR_EXTRA|contador_decenas\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111011111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INST_CONTADOR_EXTRA|contador_decenas\(2),
	datab => \INST_CONTADOR_EXTRA|contador_decenas\(3),
	datac => \INST_CONTADOR_EXTRA|contador_decenas\(1),
	datad => \INST_CONTADOR_EXTRA|contador_decenas\(0),
	combout => \INST_DISPLAY_HEX3|Mux0~0_combout\);

ww_alarma <= \alarma~output_o\;

ww_felicitacion <= \felicitacion~output_o\;

ww_HEX0_D(0) <= \HEX0_D[0]~output_o\;

ww_HEX0_D(1) <= \HEX0_D[1]~output_o\;

ww_HEX0_D(2) <= \HEX0_D[2]~output_o\;

ww_HEX0_D(3) <= \HEX0_D[3]~output_o\;

ww_HEX0_D(4) <= \HEX0_D[4]~output_o\;

ww_HEX0_D(5) <= \HEX0_D[5]~output_o\;

ww_HEX0_D(6) <= \HEX0_D[6]~output_o\;

ww_HEX1_D(0) <= \HEX1_D[0]~output_o\;

ww_HEX1_D(1) <= \HEX1_D[1]~output_o\;

ww_HEX1_D(2) <= \HEX1_D[2]~output_o\;

ww_HEX1_D(3) <= \HEX1_D[3]~output_o\;

ww_HEX1_D(4) <= \HEX1_D[4]~output_o\;

ww_HEX1_D(5) <= \HEX1_D[5]~output_o\;

ww_HEX1_D(6) <= \HEX1_D[6]~output_o\;

ww_HEX2_D(0) <= \HEX2_D[0]~output_o\;

ww_HEX2_D(1) <= \HEX2_D[1]~output_o\;

ww_HEX2_D(2) <= \HEX2_D[2]~output_o\;

ww_HEX2_D(3) <= \HEX2_D[3]~output_o\;

ww_HEX2_D(4) <= \HEX2_D[4]~output_o\;

ww_HEX2_D(5) <= \HEX2_D[5]~output_o\;

ww_HEX2_D(6) <= \HEX2_D[6]~output_o\;

ww_HEX3_D(0) <= \HEX3_D[0]~output_o\;

ww_HEX3_D(1) <= \HEX3_D[1]~output_o\;

ww_HEX3_D(2) <= \HEX3_D[2]~output_o\;

ww_HEX3_D(3) <= \HEX3_D[3]~output_o\;

ww_HEX3_D(4) <= \HEX3_D[4]~output_o\;

ww_HEX3_D(5) <= \HEX3_D[5]~output_o\;

ww_HEX3_D(6) <= \HEX3_D[6]~output_o\;
END structure;


