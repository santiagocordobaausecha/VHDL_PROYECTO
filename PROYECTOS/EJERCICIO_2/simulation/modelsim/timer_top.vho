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

-- DATE "09/23/2026 06:29:26"

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

ENTITY 	timer_top IS
    PORT (
	clk_50 : IN std_logic;
	reset : IN std_logic;
	start : IN std_logic;
	stop : IN std_logic;
	ssd_min : OUT std_logic_vector(6 DOWNTO 0);
	ssd_seg_d : OUT std_logic_vector(6 DOWNTO 0);
	ssd_seg_u : OUT std_logic_vector(6 DOWNTO 0)
	);
END timer_top;

-- Design Ports Information
-- ssd_min[0]	=>  Location: PIN_B18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ssd_min[1]	=>  Location: PIN_F15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ssd_min[2]	=>  Location: PIN_A19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ssd_min[3]	=>  Location: PIN_B19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ssd_min[4]	=>  Location: PIN_C19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ssd_min[5]	=>  Location: PIN_D19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ssd_min[6]	=>  Location: PIN_G15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ssd_seg_d[0]	=>  Location: PIN_A13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ssd_seg_d[1]	=>  Location: PIN_B13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ssd_seg_d[2]	=>  Location: PIN_C13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ssd_seg_d[3]	=>  Location: PIN_A14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ssd_seg_d[4]	=>  Location: PIN_B14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ssd_seg_d[5]	=>  Location: PIN_E14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ssd_seg_d[6]	=>  Location: PIN_A15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ssd_seg_u[0]	=>  Location: PIN_E11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ssd_seg_u[1]	=>  Location: PIN_F11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ssd_seg_u[2]	=>  Location: PIN_H12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ssd_seg_u[3]	=>  Location: PIN_H13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ssd_seg_u[4]	=>  Location: PIN_G12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ssd_seg_u[5]	=>  Location: PIN_F12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ssd_seg_u[6]	=>  Location: PIN_F13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- reset	=>  Location: PIN_H2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- stop	=>  Location: PIN_F1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- start	=>  Location: PIN_G3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clk_50	=>  Location: PIN_G21,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF timer_top IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_clk_50 : std_logic;
SIGNAL ww_reset : std_logic;
SIGNAL ww_start : std_logic;
SIGNAL ww_stop : std_logic;
SIGNAL ww_ssd_min : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_ssd_seg_d : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_ssd_seg_u : std_logic_vector(6 DOWNTO 0);
SIGNAL \INST_DIVISOR|reloj_1hz_reg~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \clk_50~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \ssd_min[0]~output_o\ : std_logic;
SIGNAL \ssd_min[1]~output_o\ : std_logic;
SIGNAL \ssd_min[2]~output_o\ : std_logic;
SIGNAL \ssd_min[3]~output_o\ : std_logic;
SIGNAL \ssd_min[4]~output_o\ : std_logic;
SIGNAL \ssd_min[5]~output_o\ : std_logic;
SIGNAL \ssd_min[6]~output_o\ : std_logic;
SIGNAL \ssd_seg_d[0]~output_o\ : std_logic;
SIGNAL \ssd_seg_d[1]~output_o\ : std_logic;
SIGNAL \ssd_seg_d[2]~output_o\ : std_logic;
SIGNAL \ssd_seg_d[3]~output_o\ : std_logic;
SIGNAL \ssd_seg_d[4]~output_o\ : std_logic;
SIGNAL \ssd_seg_d[5]~output_o\ : std_logic;
SIGNAL \ssd_seg_d[6]~output_o\ : std_logic;
SIGNAL \ssd_seg_u[0]~output_o\ : std_logic;
SIGNAL \ssd_seg_u[1]~output_o\ : std_logic;
SIGNAL \ssd_seg_u[2]~output_o\ : std_logic;
SIGNAL \ssd_seg_u[3]~output_o\ : std_logic;
SIGNAL \ssd_seg_u[4]~output_o\ : std_logic;
SIGNAL \ssd_seg_u[5]~output_o\ : std_logic;
SIGNAL \ssd_seg_u[6]~output_o\ : std_logic;
SIGNAL \clk_50~input_o\ : std_logic;
SIGNAL \clk_50~inputclkctrl_outclk\ : std_logic;
SIGNAL \stop~input_o\ : std_logic;
SIGNAL \INST_CONTROL|parar_anterior~0_combout\ : std_logic;
SIGNAL \reset~input_o\ : std_logic;
SIGNAL \INST_CONTROL|parar_anterior~q\ : std_logic;
SIGNAL \INST_CONTROL|estado~0_combout\ : std_logic;
SIGNAL \start~input_o\ : std_logic;
SIGNAL \INST_CONTROL|inicio_anterior~0_combout\ : std_logic;
SIGNAL \INST_CONTROL|inicio_anterior~q\ : std_logic;
SIGNAL \INST_CONTADOR_MINUTOS|contador[2]~4_combout\ : std_logic;
SIGNAL \INST_CONTADOR_MINUTOS|contador[3]~0_combout\ : std_logic;
SIGNAL \INST_CONTADOR_UNIDADES|contador[0]~3_combout\ : std_logic;
SIGNAL \INST_CONTADOR_UNIDADES|contador~2_combout\ : std_logic;
SIGNAL \INST_CONTADOR_UNIDADES|contador~0_combout\ : std_logic;
SIGNAL \INST_CONTADOR_UNIDADES|contador[2]~1_combout\ : std_logic;
SIGNAL \INST_CONTADOR_UNIDADES|Equal0~0_combout\ : std_logic;
SIGNAL \INST_CONTADOR_UNIDADES|acarreo~combout\ : std_logic;
SIGNAL \INST_CONTADOR_DECENAS|contador[0]~2_combout\ : std_logic;
SIGNAL \INST_CONTADOR_DECENAS|contador~0_combout\ : std_logic;
SIGNAL \INST_CONTADOR_DECENAS|contador~1_combout\ : std_logic;
SIGNAL \tiempo_maximo~0_combout\ : std_logic;
SIGNAL \INST_CONTADOR_MINUTOS|contador[0]~1_combout\ : std_logic;
SIGNAL \INST_CONTADOR_MINUTOS|contador[1]~2_combout\ : std_logic;
SIGNAL \INST_CONTADOR_MINUTOS|contador[1]~3_combout\ : std_logic;
SIGNAL \tiempo_maximo~1_combout\ : std_logic;
SIGNAL \tiempo_maximo~2_combout\ : std_logic;
SIGNAL \INST_CONTROL|estado~1_combout\ : std_logic;
SIGNAL \INST_CONTROL|estado~q\ : std_logic;
SIGNAL \INST_DIVISOR|Add0~0_combout\ : std_logic;
SIGNAL \INST_DIVISOR|Add0~1\ : std_logic;
SIGNAL \INST_DIVISOR|Add0~2_combout\ : std_logic;
SIGNAL \INST_DIVISOR|Equal0~7_combout\ : std_logic;
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
SIGNAL \INST_DIVISOR|Equal0~1_combout\ : std_logic;
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
SIGNAL \INST_DIVISOR|Equal0~3_combout\ : std_logic;
SIGNAL \INST_DIVISOR|Equal0~2_combout\ : std_logic;
SIGNAL \INST_DIVISOR|Equal0~4_combout\ : std_logic;
SIGNAL \INST_DIVISOR|Equal0~8_combout\ : std_logic;
SIGNAL \INST_DIVISOR|reloj_1hz_reg~0_combout\ : std_logic;
SIGNAL \INST_DIVISOR|reloj_1hz_reg~feeder_combout\ : std_logic;
SIGNAL \INST_DIVISOR|reloj_1hz_reg~q\ : std_logic;
SIGNAL \INST_DIVISOR|reloj_1hz_reg~clkctrl_outclk\ : std_logic;
SIGNAL \INST_CONTADOR_MINUTOS|contador[3]~5_combout\ : std_logic;
SIGNAL \INST_DISPLAY_MINUTOS|Mux6~0_combout\ : std_logic;
SIGNAL \INST_DISPLAY_MINUTOS|Mux5~0_combout\ : std_logic;
SIGNAL \INST_DISPLAY_MINUTOS|Mux4~0_combout\ : std_logic;
SIGNAL \INST_DISPLAY_MINUTOS|Mux3~0_combout\ : std_logic;
SIGNAL \INST_DISPLAY_MINUTOS|Mux2~0_combout\ : std_logic;
SIGNAL \INST_DISPLAY_MINUTOS|Mux1~0_combout\ : std_logic;
SIGNAL \INST_DISPLAY_MINUTOS|Mux0~0_combout\ : std_logic;
SIGNAL \INST_DISPLAY_DECENAS|Mux6~0_combout\ : std_logic;
SIGNAL \INST_DISPLAY_DECENAS|Mux5~0_combout\ : std_logic;
SIGNAL \INST_DISPLAY_DECENAS|Mux4~0_combout\ : std_logic;
SIGNAL \INST_DISPLAY_DECENAS|Mux3~0_combout\ : std_logic;
SIGNAL \INST_DISPLAY_DECENAS|Mux2~0_combout\ : std_logic;
SIGNAL \INST_DISPLAY_DECENAS|Mux1~0_combout\ : std_logic;
SIGNAL \INST_DISPLAY_DECENAS|Mux0~0_combout\ : std_logic;
SIGNAL \INST_DISPLAY_UNIDADES|Mux6~0_combout\ : std_logic;
SIGNAL \INST_DISPLAY_UNIDADES|Mux5~0_combout\ : std_logic;
SIGNAL \INST_DISPLAY_UNIDADES|Mux4~0_combout\ : std_logic;
SIGNAL \INST_DISPLAY_UNIDADES|Mux3~0_combout\ : std_logic;
SIGNAL \INST_DISPLAY_UNIDADES|Mux2~0_combout\ : std_logic;
SIGNAL \INST_DISPLAY_UNIDADES|Mux1~0_combout\ : std_logic;
SIGNAL \INST_DISPLAY_UNIDADES|Mux0~0_combout\ : std_logic;
SIGNAL \INST_DIVISOR|contador_ciclos\ : std_logic_vector(25 DOWNTO 0);
SIGNAL \INST_CONTADOR_UNIDADES|contador\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \INST_CONTADOR_DECENAS|contador\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \INST_CONTADOR_MINUTOS|contador\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \INST_DISPLAY_UNIDADES|ALT_INV_Mux0~0_combout\ : std_logic;
SIGNAL \INST_DISPLAY_MINUTOS|ALT_INV_Mux0~0_combout\ : std_logic;
SIGNAL \INST_DIVISOR|ALT_INV_reloj_1hz_reg~clkctrl_outclk\ : std_logic;

BEGIN

ww_clk_50 <= clk_50;
ww_reset <= reset;
ww_start <= start;
ww_stop <= stop;
ssd_min <= ww_ssd_min;
ssd_seg_d <= ww_ssd_seg_d;
ssd_seg_u <= ww_ssd_seg_u;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\INST_DIVISOR|reloj_1hz_reg~clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \INST_DIVISOR|reloj_1hz_reg~q\);

\clk_50~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \clk_50~input_o\);
\INST_DISPLAY_UNIDADES|ALT_INV_Mux0~0_combout\ <= NOT \INST_DISPLAY_UNIDADES|Mux0~0_combout\;
\INST_DISPLAY_MINUTOS|ALT_INV_Mux0~0_combout\ <= NOT \INST_DISPLAY_MINUTOS|Mux0~0_combout\;
\INST_DIVISOR|ALT_INV_reloj_1hz_reg~clkctrl_outclk\ <= NOT \INST_DIVISOR|reloj_1hz_reg~clkctrl_outclk\;

-- Location: IOOBUF_X32_Y29_N23
\ssd_min[0]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \INST_DISPLAY_MINUTOS|Mux6~0_combout\,
	devoe => ww_devoe,
	o => \ssd_min[0]~output_o\);

-- Location: IOOBUF_X39_Y29_N16
\ssd_min[1]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \INST_DISPLAY_MINUTOS|Mux5~0_combout\,
	devoe => ww_devoe,
	o => \ssd_min[1]~output_o\);

-- Location: IOOBUF_X32_Y29_N9
\ssd_min[2]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \INST_DISPLAY_MINUTOS|Mux4~0_combout\,
	devoe => ww_devoe,
	o => \ssd_min[2]~output_o\);

-- Location: IOOBUF_X32_Y29_N2
\ssd_min[3]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \INST_DISPLAY_MINUTOS|Mux3~0_combout\,
	devoe => ww_devoe,
	o => \ssd_min[3]~output_o\);

-- Location: IOOBUF_X37_Y29_N23
\ssd_min[4]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \INST_DISPLAY_MINUTOS|Mux2~0_combout\,
	devoe => ww_devoe,
	o => \ssd_min[4]~output_o\);

-- Location: IOOBUF_X37_Y29_N30
\ssd_min[5]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \INST_DISPLAY_MINUTOS|Mux1~0_combout\,
	devoe => ww_devoe,
	o => \ssd_min[5]~output_o\);

-- Location: IOOBUF_X39_Y29_N30
\ssd_min[6]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \INST_DISPLAY_MINUTOS|ALT_INV_Mux0~0_combout\,
	devoe => ww_devoe,
	o => \ssd_min[6]~output_o\);

-- Location: IOOBUF_X21_Y29_N2
\ssd_seg_d[0]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \INST_DISPLAY_DECENAS|Mux6~0_combout\,
	devoe => ww_devoe,
	o => \ssd_seg_d[0]~output_o\);

-- Location: IOOBUF_X21_Y29_N9
\ssd_seg_d[1]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \INST_DISPLAY_DECENAS|Mux5~0_combout\,
	devoe => ww_devoe,
	o => \ssd_seg_d[1]~output_o\);

-- Location: IOOBUF_X23_Y29_N2
\ssd_seg_d[2]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \INST_DISPLAY_DECENAS|Mux4~0_combout\,
	devoe => ww_devoe,
	o => \ssd_seg_d[2]~output_o\);

-- Location: IOOBUF_X23_Y29_N23
\ssd_seg_d[3]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \INST_DISPLAY_DECENAS|Mux3~0_combout\,
	devoe => ww_devoe,
	o => \ssd_seg_d[3]~output_o\);

-- Location: IOOBUF_X23_Y29_N30
\ssd_seg_d[4]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \INST_DISPLAY_DECENAS|Mux2~0_combout\,
	devoe => ww_devoe,
	o => \ssd_seg_d[4]~output_o\);

-- Location: IOOBUF_X28_Y29_N16
\ssd_seg_d[5]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \INST_DISPLAY_DECENAS|Mux1~0_combout\,
	devoe => ww_devoe,
	o => \ssd_seg_d[5]~output_o\);

-- Location: IOOBUF_X26_Y29_N23
\ssd_seg_d[6]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \INST_DISPLAY_DECENAS|Mux0~0_combout\,
	devoe => ww_devoe,
	o => \ssd_seg_d[6]~output_o\);

-- Location: IOOBUF_X21_Y29_N23
\ssd_seg_u[0]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \INST_DISPLAY_UNIDADES|Mux6~0_combout\,
	devoe => ww_devoe,
	o => \ssd_seg_u[0]~output_o\);

-- Location: IOOBUF_X21_Y29_N30
\ssd_seg_u[1]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \INST_DISPLAY_UNIDADES|Mux5~0_combout\,
	devoe => ww_devoe,
	o => \ssd_seg_u[1]~output_o\);

-- Location: IOOBUF_X26_Y29_N2
\ssd_seg_u[2]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \INST_DISPLAY_UNIDADES|Mux4~0_combout\,
	devoe => ww_devoe,
	o => \ssd_seg_u[2]~output_o\);

-- Location: IOOBUF_X28_Y29_N30
\ssd_seg_u[3]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \INST_DISPLAY_UNIDADES|Mux3~0_combout\,
	devoe => ww_devoe,
	o => \ssd_seg_u[3]~output_o\);

-- Location: IOOBUF_X26_Y29_N9
\ssd_seg_u[4]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \INST_DISPLAY_UNIDADES|Mux2~0_combout\,
	devoe => ww_devoe,
	o => \ssd_seg_u[4]~output_o\);

-- Location: IOOBUF_X28_Y29_N23
\ssd_seg_u[5]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \INST_DISPLAY_UNIDADES|Mux1~0_combout\,
	devoe => ww_devoe,
	o => \ssd_seg_u[5]~output_o\);

-- Location: IOOBUF_X26_Y29_N16
\ssd_seg_u[6]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \INST_DISPLAY_UNIDADES|ALT_INV_Mux0~0_combout\,
	devoe => ww_devoe,
	o => \ssd_seg_u[6]~output_o\);

-- Location: IOIBUF_X41_Y15_N1
\clk_50~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_clk_50,
	o => \clk_50~input_o\);

-- Location: CLKCTRL_G9
\clk_50~inputclkctrl\ : cycloneiii_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \clk_50~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \clk_50~inputclkctrl_outclk\);

-- Location: IOIBUF_X0_Y23_N1
\stop~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_stop,
	o => \stop~input_o\);

-- Location: LCCOMB_X27_Y28_N24
\INST_CONTROL|parar_anterior~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST_CONTROL|parar_anterior~0_combout\ = !\stop~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \stop~input_o\,
	combout => \INST_CONTROL|parar_anterior~0_combout\);

-- Location: IOIBUF_X0_Y21_N8
\reset~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_reset,
	o => \reset~input_o\);

-- Location: FF_X27_Y28_N25
\INST_CONTROL|parar_anterior\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \INST_CONTROL|parar_anterior~0_combout\,
	clrn => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST_CONTROL|parar_anterior~q\);

-- Location: LCCOMB_X27_Y28_N10
\INST_CONTROL|estado~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST_CONTROL|estado~0_combout\ = (\INST_CONTROL|estado~q\ & ((\stop~input_o\) # (\INST_CONTROL|parar_anterior~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INST_CONTROL|estado~q\,
	datac => \stop~input_o\,
	datad => \INST_CONTROL|parar_anterior~q\,
	combout => \INST_CONTROL|estado~0_combout\);

-- Location: IOIBUF_X0_Y23_N15
\start~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_start,
	o => \start~input_o\);

-- Location: LCCOMB_X28_Y28_N18
\INST_CONTROL|inicio_anterior~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST_CONTROL|inicio_anterior~0_combout\ = !\start~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \start~input_o\,
	combout => \INST_CONTROL|inicio_anterior~0_combout\);

-- Location: FF_X28_Y28_N19
\INST_CONTROL|inicio_anterior\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \INST_CONTROL|inicio_anterior~0_combout\,
	clrn => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST_CONTROL|inicio_anterior~q\);

-- Location: LCCOMB_X28_Y28_N8
\INST_CONTADOR_MINUTOS|contador[2]~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST_CONTADOR_MINUTOS|contador[2]~4_combout\ = \INST_CONTADOR_MINUTOS|contador\(2) $ (((\INST_CONTADOR_MINUTOS|contador\(1) & \INST_CONTADOR_MINUTOS|contador[1]~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INST_CONTADOR_MINUTOS|contador\(1),
	datac => \INST_CONTADOR_MINUTOS|contador\(2),
	datad => \INST_CONTADOR_MINUTOS|contador[1]~2_combout\,
	combout => \INST_CONTADOR_MINUTOS|contador[2]~4_combout\);

-- Location: FF_X28_Y28_N9
\INST_CONTADOR_MINUTOS|contador[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \INST_DIVISOR|ALT_INV_reloj_1hz_reg~clkctrl_outclk\,
	d => \INST_CONTADOR_MINUTOS|contador[2]~4_combout\,
	clrn => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST_CONTADOR_MINUTOS|contador\(2));

-- Location: LCCOMB_X28_Y28_N26
\INST_CONTADOR_MINUTOS|contador[3]~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST_CONTADOR_MINUTOS|contador[3]~0_combout\ = ((!\INST_CONTADOR_MINUTOS|contador\(2) & (!\INST_CONTADOR_MINUTOS|contador\(1) & !\INST_CONTADOR_MINUTOS|contador\(0)))) # (!\INST_CONTADOR_MINUTOS|contador\(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100110111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INST_CONTADOR_MINUTOS|contador\(2),
	datab => \INST_CONTADOR_MINUTOS|contador\(3),
	datac => \INST_CONTADOR_MINUTOS|contador\(1),
	datad => \INST_CONTADOR_MINUTOS|contador\(0),
	combout => \INST_CONTADOR_MINUTOS|contador[3]~0_combout\);

-- Location: LCCOMB_X27_Y28_N20
\INST_CONTADOR_UNIDADES|contador[0]~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST_CONTADOR_UNIDADES|contador[0]~3_combout\ = !\INST_CONTADOR_UNIDADES|contador\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \INST_CONTADOR_UNIDADES|contador\(0),
	combout => \INST_CONTADOR_UNIDADES|contador[0]~3_combout\);

-- Location: FF_X27_Y28_N21
\INST_CONTADOR_UNIDADES|contador[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \INST_DIVISOR|ALT_INV_reloj_1hz_reg~clkctrl_outclk\,
	d => \INST_CONTADOR_UNIDADES|contador[0]~3_combout\,
	clrn => \reset~input_o\,
	ena => \INST_CONTROL|estado~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST_CONTADOR_UNIDADES|contador\(0));

-- Location: LCCOMB_X27_Y28_N16
\INST_CONTADOR_UNIDADES|contador~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST_CONTADOR_UNIDADES|contador~2_combout\ = (\INST_CONTADOR_UNIDADES|contador\(2) & (\INST_CONTADOR_UNIDADES|contador\(3) $ (((\INST_CONTADOR_UNIDADES|contador\(0) & \INST_CONTADOR_UNIDADES|contador\(1)))))) # (!\INST_CONTADOR_UNIDADES|contador\(2) & 
-- (\INST_CONTADOR_UNIDADES|contador\(3) & ((\INST_CONTADOR_UNIDADES|contador\(1)) # (!\INST_CONTADOR_UNIDADES|contador\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100010110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INST_CONTADOR_UNIDADES|contador\(2),
	datab => \INST_CONTADOR_UNIDADES|contador\(0),
	datac => \INST_CONTADOR_UNIDADES|contador\(3),
	datad => \INST_CONTADOR_UNIDADES|contador\(1),
	combout => \INST_CONTADOR_UNIDADES|contador~2_combout\);

-- Location: FF_X27_Y28_N17
\INST_CONTADOR_UNIDADES|contador[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \INST_DIVISOR|ALT_INV_reloj_1hz_reg~clkctrl_outclk\,
	d => \INST_CONTADOR_UNIDADES|contador~2_combout\,
	clrn => \reset~input_o\,
	ena => \INST_CONTROL|estado~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST_CONTADOR_UNIDADES|contador\(3));

-- Location: LCCOMB_X27_Y28_N6
\INST_CONTADOR_UNIDADES|contador~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST_CONTADOR_UNIDADES|contador~0_combout\ = (\INST_CONTADOR_UNIDADES|contador\(1) & (((!\INST_CONTADOR_UNIDADES|contador\(0))))) # (!\INST_CONTADOR_UNIDADES|contador\(1) & (\INST_CONTADOR_UNIDADES|contador\(0) & ((\INST_CONTADOR_UNIDADES|contador\(2)) # 
-- (!\INST_CONTADOR_UNIDADES|contador\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INST_CONTADOR_UNIDADES|contador\(2),
	datab => \INST_CONTADOR_UNIDADES|contador\(3),
	datac => \INST_CONTADOR_UNIDADES|contador\(1),
	datad => \INST_CONTADOR_UNIDADES|contador\(0),
	combout => \INST_CONTADOR_UNIDADES|contador~0_combout\);

-- Location: FF_X27_Y28_N7
\INST_CONTADOR_UNIDADES|contador[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \INST_DIVISOR|ALT_INV_reloj_1hz_reg~clkctrl_outclk\,
	d => \INST_CONTADOR_UNIDADES|contador~0_combout\,
	clrn => \reset~input_o\,
	ena => \INST_CONTROL|estado~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST_CONTADOR_UNIDADES|contador\(1));

-- Location: LCCOMB_X28_Y28_N10
\INST_CONTADOR_UNIDADES|contador[2]~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST_CONTADOR_UNIDADES|contador[2]~1_combout\ = \INST_CONTADOR_UNIDADES|contador\(2) $ (((\INST_CONTROL|estado~q\ & (\INST_CONTADOR_UNIDADES|contador\(1) & \INST_CONTADOR_UNIDADES|contador\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INST_CONTROL|estado~q\,
	datab => \INST_CONTADOR_UNIDADES|contador\(1),
	datac => \INST_CONTADOR_UNIDADES|contador\(2),
	datad => \INST_CONTADOR_UNIDADES|contador\(0),
	combout => \INST_CONTADOR_UNIDADES|contador[2]~1_combout\);

-- Location: FF_X28_Y28_N11
\INST_CONTADOR_UNIDADES|contador[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \INST_DIVISOR|ALT_INV_reloj_1hz_reg~clkctrl_outclk\,
	d => \INST_CONTADOR_UNIDADES|contador[2]~1_combout\,
	clrn => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST_CONTADOR_UNIDADES|contador\(2));

-- Location: LCCOMB_X28_Y28_N22
\INST_CONTADOR_UNIDADES|Equal0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST_CONTADOR_UNIDADES|Equal0~0_combout\ = (!\INST_CONTADOR_UNIDADES|contador\(2) & (!\INST_CONTADOR_UNIDADES|contador\(1) & (\INST_CONTADOR_UNIDADES|contador\(3) & \INST_CONTADOR_UNIDADES|contador\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INST_CONTADOR_UNIDADES|contador\(2),
	datab => \INST_CONTADOR_UNIDADES|contador\(1),
	datac => \INST_CONTADOR_UNIDADES|contador\(3),
	datad => \INST_CONTADOR_UNIDADES|contador\(0),
	combout => \INST_CONTADOR_UNIDADES|Equal0~0_combout\);

-- Location: LCCOMB_X28_Y28_N16
\INST_CONTADOR_UNIDADES|acarreo\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST_CONTADOR_UNIDADES|acarreo~combout\ = (\INST_CONTADOR_UNIDADES|Equal0~0_combout\ & \INST_CONTROL|estado~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \INST_CONTADOR_UNIDADES|Equal0~0_combout\,
	datad => \INST_CONTROL|estado~q\,
	combout => \INST_CONTADOR_UNIDADES|acarreo~combout\);

-- Location: LCCOMB_X29_Y28_N20
\INST_CONTADOR_DECENAS|contador[0]~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST_CONTADOR_DECENAS|contador[0]~2_combout\ = !\INST_CONTADOR_DECENAS|contador\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \INST_CONTADOR_DECENAS|contador\(0),
	combout => \INST_CONTADOR_DECENAS|contador[0]~2_combout\);

-- Location: FF_X29_Y28_N21
\INST_CONTADOR_DECENAS|contador[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \INST_DIVISOR|ALT_INV_reloj_1hz_reg~clkctrl_outclk\,
	d => \INST_CONTADOR_DECENAS|contador[0]~2_combout\,
	clrn => \reset~input_o\,
	ena => \INST_CONTADOR_UNIDADES|acarreo~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST_CONTADOR_DECENAS|contador\(0));

-- Location: LCCOMB_X29_Y28_N26
\INST_CONTADOR_DECENAS|contador~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST_CONTADOR_DECENAS|contador~0_combout\ = (\INST_CONTADOR_DECENAS|contador\(2) & ((!\INST_CONTADOR_DECENAS|contador\(0)))) # (!\INST_CONTADOR_DECENAS|contador\(2) & (\INST_CONTADOR_DECENAS|contador\(1) & \INST_CONTADOR_DECENAS|contador\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INST_CONTADOR_DECENAS|contador\(1),
	datac => \INST_CONTADOR_DECENAS|contador\(2),
	datad => \INST_CONTADOR_DECENAS|contador\(0),
	combout => \INST_CONTADOR_DECENAS|contador~0_combout\);

-- Location: FF_X29_Y28_N27
\INST_CONTADOR_DECENAS|contador[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \INST_DIVISOR|ALT_INV_reloj_1hz_reg~clkctrl_outclk\,
	d => \INST_CONTADOR_DECENAS|contador~0_combout\,
	clrn => \reset~input_o\,
	ena => \INST_CONTADOR_UNIDADES|acarreo~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST_CONTADOR_DECENAS|contador\(2));

-- Location: LCCOMB_X29_Y28_N8
\INST_CONTADOR_DECENAS|contador~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST_CONTADOR_DECENAS|contador~1_combout\ = (\INST_CONTADOR_DECENAS|contador\(1) & ((!\INST_CONTADOR_DECENAS|contador\(0)))) # (!\INST_CONTADOR_DECENAS|contador\(1) & (!\INST_CONTADOR_DECENAS|contador\(2) & \INST_CONTADOR_DECENAS|contador\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \INST_CONTADOR_DECENAS|contador\(2),
	datac => \INST_CONTADOR_DECENAS|contador\(1),
	datad => \INST_CONTADOR_DECENAS|contador\(0),
	combout => \INST_CONTADOR_DECENAS|contador~1_combout\);

-- Location: FF_X29_Y28_N9
\INST_CONTADOR_DECENAS|contador[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \INST_DIVISOR|ALT_INV_reloj_1hz_reg~clkctrl_outclk\,
	d => \INST_CONTADOR_DECENAS|contador~1_combout\,
	clrn => \reset~input_o\,
	ena => \INST_CONTADOR_UNIDADES|acarreo~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST_CONTADOR_DECENAS|contador\(1));

-- Location: LCCOMB_X29_Y28_N24
\tiempo_maximo~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \tiempo_maximo~0_combout\ = (!\INST_CONTADOR_DECENAS|contador\(1) & (\INST_CONTADOR_DECENAS|contador\(2) & \INST_CONTADOR_DECENAS|contador\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \INST_CONTADOR_DECENAS|contador\(1),
	datac => \INST_CONTADOR_DECENAS|contador\(2),
	datad => \INST_CONTADOR_DECENAS|contador\(0),
	combout => \tiempo_maximo~0_combout\);

-- Location: LCCOMB_X28_Y28_N28
\INST_CONTADOR_MINUTOS|contador[0]~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST_CONTADOR_MINUTOS|contador[0]~1_combout\ = \INST_CONTADOR_MINUTOS|contador\(0) $ (((\INST_CONTADOR_MINUTOS|contador[3]~0_combout\ & (\INST_CONTADOR_UNIDADES|acarreo~combout\ & \tiempo_maximo~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INST_CONTADOR_MINUTOS|contador[3]~0_combout\,
	datab => \INST_CONTADOR_UNIDADES|acarreo~combout\,
	datac => \INST_CONTADOR_MINUTOS|contador\(0),
	datad => \tiempo_maximo~0_combout\,
	combout => \INST_CONTADOR_MINUTOS|contador[0]~1_combout\);

-- Location: FF_X28_Y28_N29
\INST_CONTADOR_MINUTOS|contador[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \INST_DIVISOR|ALT_INV_reloj_1hz_reg~clkctrl_outclk\,
	d => \INST_CONTADOR_MINUTOS|contador[0]~1_combout\,
	clrn => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST_CONTADOR_MINUTOS|contador\(0));

-- Location: LCCOMB_X28_Y28_N12
\INST_CONTADOR_MINUTOS|contador[1]~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST_CONTADOR_MINUTOS|contador[1]~2_combout\ = (\INST_CONTADOR_MINUTOS|contador\(0) & (\tiempo_maximo~0_combout\ & (\INST_CONTADOR_MINUTOS|contador[3]~0_combout\ & \INST_CONTADOR_UNIDADES|acarreo~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INST_CONTADOR_MINUTOS|contador\(0),
	datab => \tiempo_maximo~0_combout\,
	datac => \INST_CONTADOR_MINUTOS|contador[3]~0_combout\,
	datad => \INST_CONTADOR_UNIDADES|acarreo~combout\,
	combout => \INST_CONTADOR_MINUTOS|contador[1]~2_combout\);

-- Location: LCCOMB_X28_Y28_N30
\INST_CONTADOR_MINUTOS|contador[1]~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST_CONTADOR_MINUTOS|contador[1]~3_combout\ = \INST_CONTADOR_MINUTOS|contador\(1) $ (\INST_CONTADOR_MINUTOS|contador[1]~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \INST_CONTADOR_MINUTOS|contador\(1),
	datad => \INST_CONTADOR_MINUTOS|contador[1]~2_combout\,
	combout => \INST_CONTADOR_MINUTOS|contador[1]~3_combout\);

-- Location: FF_X28_Y28_N31
\INST_CONTADOR_MINUTOS|contador[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \INST_DIVISOR|ALT_INV_reloj_1hz_reg~clkctrl_outclk\,
	d => \INST_CONTADOR_MINUTOS|contador[1]~3_combout\,
	clrn => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST_CONTADOR_MINUTOS|contador\(1));

-- Location: LCCOMB_X28_Y28_N4
\tiempo_maximo~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \tiempo_maximo~1_combout\ = (!\INST_CONTADOR_MINUTOS|contador\(1) & (!\INST_CONTADOR_MINUTOS|contador\(2) & \INST_CONTADOR_MINUTOS|contador\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INST_CONTADOR_MINUTOS|contador\(1),
	datac => \INST_CONTADOR_MINUTOS|contador\(2),
	datad => \INST_CONTADOR_MINUTOS|contador\(0),
	combout => \tiempo_maximo~1_combout\);

-- Location: LCCOMB_X28_Y28_N6
\tiempo_maximo~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \tiempo_maximo~2_combout\ = (\INST_CONTADOR_MINUTOS|contador\(3) & (\tiempo_maximo~1_combout\ & (\INST_CONTADOR_UNIDADES|Equal0~0_combout\ & \tiempo_maximo~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INST_CONTADOR_MINUTOS|contador\(3),
	datab => \tiempo_maximo~1_combout\,
	datac => \INST_CONTADOR_UNIDADES|Equal0~0_combout\,
	datad => \tiempo_maximo~0_combout\,
	combout => \tiempo_maximo~2_combout\);

-- Location: LCCOMB_X28_Y28_N20
\INST_CONTROL|estado~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST_CONTROL|estado~1_combout\ = (!\tiempo_maximo~2_combout\ & ((\INST_CONTROL|estado~0_combout\) # ((!\start~input_o\ & !\INST_CONTROL|inicio_anterior~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INST_CONTROL|estado~0_combout\,
	datab => \start~input_o\,
	datac => \INST_CONTROL|inicio_anterior~q\,
	datad => \tiempo_maximo~2_combout\,
	combout => \INST_CONTROL|estado~1_combout\);

-- Location: FF_X28_Y28_N21
\INST_CONTROL|estado\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \INST_CONTROL|estado~1_combout\,
	clrn => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST_CONTROL|estado~q\);

-- Location: LCCOMB_X5_Y25_N6
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

-- Location: FF_X5_Y25_N7
\INST_DIVISOR|contador_ciclos[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \INST_DIVISOR|Add0~0_combout\,
	clrn => \reset~input_o\,
	ena => \INST_CONTROL|estado~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST_DIVISOR|contador_ciclos\(0));

-- Location: LCCOMB_X5_Y25_N8
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

-- Location: FF_X5_Y25_N9
\INST_DIVISOR|contador_ciclos[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \INST_DIVISOR|Add0~2_combout\,
	clrn => \reset~input_o\,
	ena => \INST_CONTROL|estado~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST_DIVISOR|contador_ciclos\(1));

-- Location: LCCOMB_X4_Y25_N30
\INST_DIVISOR|Equal0~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST_DIVISOR|Equal0~7_combout\ = (\INST_DIVISOR|contador_ciclos\(1) & \INST_DIVISOR|contador_ciclos\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \INST_DIVISOR|contador_ciclos\(1),
	datad => \INST_DIVISOR|contador_ciclos\(0),
	combout => \INST_DIVISOR|Equal0~7_combout\);

-- Location: LCCOMB_X5_Y25_N10
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

-- Location: FF_X5_Y25_N11
\INST_DIVISOR|contador_ciclos[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \INST_DIVISOR|Add0~4_combout\,
	clrn => \reset~input_o\,
	ena => \INST_CONTROL|estado~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST_DIVISOR|contador_ciclos\(2));

-- Location: LCCOMB_X5_Y25_N12
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

-- Location: FF_X5_Y25_N13
\INST_DIVISOR|contador_ciclos[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \INST_DIVISOR|Add0~6_combout\,
	clrn => \reset~input_o\,
	ena => \INST_CONTROL|estado~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST_DIVISOR|contador_ciclos\(3));

-- Location: LCCOMB_X5_Y25_N14
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

-- Location: FF_X5_Y25_N15
\INST_DIVISOR|contador_ciclos[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \INST_DIVISOR|Add0~8_combout\,
	clrn => \reset~input_o\,
	ena => \INST_CONTROL|estado~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST_DIVISOR|contador_ciclos\(4));

-- Location: LCCOMB_X5_Y25_N16
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

-- Location: FF_X5_Y25_N17
\INST_DIVISOR|contador_ciclos[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \INST_DIVISOR|Add0~10_combout\,
	clrn => \reset~input_o\,
	ena => \INST_CONTROL|estado~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST_DIVISOR|contador_ciclos\(5));

-- Location: LCCOMB_X5_Y25_N18
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

-- Location: LCCOMB_X5_Y25_N2
\INST_DIVISOR|contador_ciclos~11\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST_DIVISOR|contador_ciclos~11_combout\ = (\INST_DIVISOR|Add0~12_combout\ & !\INST_DIVISOR|Equal0~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \INST_DIVISOR|Add0~12_combout\,
	datad => \INST_DIVISOR|Equal0~8_combout\,
	combout => \INST_DIVISOR|contador_ciclos~11_combout\);

-- Location: FF_X5_Y25_N3
\INST_DIVISOR|contador_ciclos[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \INST_DIVISOR|contador_ciclos~11_combout\,
	clrn => \reset~input_o\,
	ena => \INST_CONTROL|estado~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST_DIVISOR|contador_ciclos\(6));

-- Location: LCCOMB_X5_Y25_N20
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

-- Location: FF_X5_Y25_N21
\INST_DIVISOR|contador_ciclos[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \INST_DIVISOR|Add0~14_combout\,
	clrn => \reset~input_o\,
	ena => \INST_CONTROL|estado~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST_DIVISOR|contador_ciclos\(7));

-- Location: LCCOMB_X5_Y25_N22
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

-- Location: FF_X5_Y25_N23
\INST_DIVISOR|contador_ciclos[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \INST_DIVISOR|Add0~16_combout\,
	clrn => \reset~input_o\,
	ena => \INST_CONTROL|estado~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST_DIVISOR|contador_ciclos\(8));

-- Location: LCCOMB_X5_Y25_N24
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

-- Location: FF_X5_Y25_N25
\INST_DIVISOR|contador_ciclos[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \INST_DIVISOR|Add0~18_combout\,
	clrn => \reset~input_o\,
	ena => \INST_CONTROL|estado~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST_DIVISOR|contador_ciclos\(9));

-- Location: LCCOMB_X4_Y25_N16
\INST_DIVISOR|Equal0~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST_DIVISOR|Equal0~5_combout\ = (!\INST_DIVISOR|contador_ciclos\(7) & (!\INST_DIVISOR|contador_ciclos\(9) & (!\INST_DIVISOR|contador_ciclos\(6) & !\INST_DIVISOR|contador_ciclos\(8))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INST_DIVISOR|contador_ciclos\(7),
	datab => \INST_DIVISOR|contador_ciclos\(9),
	datac => \INST_DIVISOR|contador_ciclos\(6),
	datad => \INST_DIVISOR|contador_ciclos\(8),
	combout => \INST_DIVISOR|Equal0~5_combout\);

-- Location: LCCOMB_X5_Y25_N4
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

-- Location: LCCOMB_X5_Y25_N26
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

-- Location: FF_X5_Y25_N27
\INST_DIVISOR|contador_ciclos[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \INST_DIVISOR|Add0~20_combout\,
	clrn => \reset~input_o\,
	ena => \INST_CONTROL|estado~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST_DIVISOR|contador_ciclos\(10));

-- Location: LCCOMB_X5_Y25_N28
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

-- Location: LCCOMB_X4_Y24_N14
\INST_DIVISOR|contador_ciclos~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST_DIVISOR|contador_ciclos~10_combout\ = (!\INST_DIVISOR|Equal0~8_combout\ & \INST_DIVISOR|Add0~22_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \INST_DIVISOR|Equal0~8_combout\,
	datad => \INST_DIVISOR|Add0~22_combout\,
	combout => \INST_DIVISOR|contador_ciclos~10_combout\);

-- Location: FF_X4_Y24_N15
\INST_DIVISOR|contador_ciclos[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \INST_DIVISOR|contador_ciclos~10_combout\,
	clrn => \reset~input_o\,
	ena => \INST_CONTROL|estado~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST_DIVISOR|contador_ciclos\(11));

-- Location: LCCOMB_X5_Y25_N30
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

-- Location: LCCOMB_X5_Y25_N0
\INST_DIVISOR|contador_ciclos~9\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST_DIVISOR|contador_ciclos~9_combout\ = (\INST_DIVISOR|Add0~24_combout\ & !\INST_DIVISOR|Equal0~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \INST_DIVISOR|Add0~24_combout\,
	datad => \INST_DIVISOR|Equal0~8_combout\,
	combout => \INST_DIVISOR|contador_ciclos~9_combout\);

-- Location: FF_X5_Y25_N1
\INST_DIVISOR|contador_ciclos[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \INST_DIVISOR|contador_ciclos~9_combout\,
	clrn => \reset~input_o\,
	ena => \INST_CONTROL|estado~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST_DIVISOR|contador_ciclos\(12));

-- Location: LCCOMB_X5_Y24_N0
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

-- Location: LCCOMB_X5_Y24_N30
\INST_DIVISOR|contador_ciclos~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST_DIVISOR|contador_ciclos~8_combout\ = (!\INST_DIVISOR|Equal0~8_combout\ & \INST_DIVISOR|Add0~26_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \INST_DIVISOR|Equal0~8_combout\,
	datad => \INST_DIVISOR|Add0~26_combout\,
	combout => \INST_DIVISOR|contador_ciclos~8_combout\);

-- Location: FF_X5_Y24_N31
\INST_DIVISOR|contador_ciclos[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \INST_DIVISOR|contador_ciclos~8_combout\,
	clrn => \reset~input_o\,
	ena => \INST_CONTROL|estado~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST_DIVISOR|contador_ciclos\(13));

-- Location: LCCOMB_X5_Y24_N2
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

-- Location: LCCOMB_X4_Y24_N30
\INST_DIVISOR|contador_ciclos~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST_DIVISOR|contador_ciclos~7_combout\ = (\INST_DIVISOR|Add0~28_combout\ & !\INST_DIVISOR|Equal0~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \INST_DIVISOR|Add0~28_combout\,
	datad => \INST_DIVISOR|Equal0~8_combout\,
	combout => \INST_DIVISOR|contador_ciclos~7_combout\);

-- Location: FF_X4_Y24_N31
\INST_DIVISOR|contador_ciclos[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \INST_DIVISOR|contador_ciclos~7_combout\,
	clrn => \reset~input_o\,
	ena => \INST_CONTROL|estado~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST_DIVISOR|contador_ciclos\(14));

-- Location: LCCOMB_X5_Y24_N4
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

-- Location: FF_X5_Y24_N5
\INST_DIVISOR|contador_ciclos[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \INST_DIVISOR|Add0~30_combout\,
	clrn => \reset~input_o\,
	ena => \INST_CONTROL|estado~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST_DIVISOR|contador_ciclos\(15));

-- Location: LCCOMB_X5_Y24_N6
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

-- Location: LCCOMB_X4_Y24_N28
\INST_DIVISOR|contador_ciclos~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST_DIVISOR|contador_ciclos~6_combout\ = (!\INST_DIVISOR|Equal0~8_combout\ & \INST_DIVISOR|Add0~32_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \INST_DIVISOR|Equal0~8_combout\,
	datad => \INST_DIVISOR|Add0~32_combout\,
	combout => \INST_DIVISOR|contador_ciclos~6_combout\);

-- Location: FF_X4_Y24_N29
\INST_DIVISOR|contador_ciclos[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \INST_DIVISOR|contador_ciclos~6_combout\,
	clrn => \reset~input_o\,
	ena => \INST_CONTROL|estado~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST_DIVISOR|contador_ciclos\(16));

-- Location: LCCOMB_X5_Y24_N8
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

-- Location: FF_X5_Y24_N9
\INST_DIVISOR|contador_ciclos[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \INST_DIVISOR|Add0~34_combout\,
	clrn => \reset~input_o\,
	ena => \INST_CONTROL|estado~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST_DIVISOR|contador_ciclos\(17));

-- Location: LCCOMB_X5_Y24_N10
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

-- Location: LCCOMB_X4_Y24_N20
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

-- Location: FF_X4_Y24_N21
\INST_DIVISOR|contador_ciclos[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \INST_DIVISOR|contador_ciclos~5_combout\,
	clrn => \reset~input_o\,
	ena => \INST_CONTROL|estado~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST_DIVISOR|contador_ciclos\(18));

-- Location: LCCOMB_X5_Y24_N12
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

-- Location: LCCOMB_X4_Y24_N6
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

-- Location: FF_X4_Y24_N7
\INST_DIVISOR|contador_ciclos[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \INST_DIVISOR|contador_ciclos~4_combout\,
	clrn => \reset~input_o\,
	ena => \INST_CONTROL|estado~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST_DIVISOR|contador_ciclos\(19));

-- Location: LCCOMB_X5_Y24_N14
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

-- Location: LCCOMB_X5_Y24_N28
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

-- Location: FF_X5_Y24_N29
\INST_DIVISOR|contador_ciclos[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \INST_DIVISOR|contador_ciclos~3_combout\,
	clrn => \reset~input_o\,
	ena => \INST_CONTROL|estado~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST_DIVISOR|contador_ciclos\(20));

-- Location: LCCOMB_X5_Y24_N16
\INST_DIVISOR|Add0~42\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST_DIVISOR|Add0~42_combout\ = (\INST_DIVISOR|contador_ciclos\(21) & (!\INST_DIVISOR|Add0~41\)) # (!\INST_DIVISOR|contador_ciclos\(21) & ((\INST_DIVISOR|Add0~41\) # (GND)))
-- \INST_DIVISOR|Add0~43\ = CARRY((!\INST_DIVISOR|Add0~41\) # (!\INST_DIVISOR|contador_ciclos\(21)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \INST_DIVISOR|contador_ciclos\(21),
	datad => VCC,
	cin => \INST_DIVISOR|Add0~41\,
	combout => \INST_DIVISOR|Add0~42_combout\,
	cout => \INST_DIVISOR|Add0~43\);

-- Location: LCCOMB_X4_Y24_N16
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

-- Location: FF_X4_Y24_N17
\INST_DIVISOR|contador_ciclos[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \INST_DIVISOR|contador_ciclos~2_combout\,
	clrn => \reset~input_o\,
	ena => \INST_CONTROL|estado~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST_DIVISOR|contador_ciclos\(21));

-- Location: LCCOMB_X4_Y24_N22
\INST_DIVISOR|Equal0~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST_DIVISOR|Equal0~1_combout\ = (\INST_DIVISOR|contador_ciclos\(19) & (\INST_DIVISOR|contador_ciclos\(21) & (\INST_DIVISOR|contador_ciclos\(18) & \INST_DIVISOR|contador_ciclos\(20))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INST_DIVISOR|contador_ciclos\(19),
	datab => \INST_DIVISOR|contador_ciclos\(21),
	datac => \INST_DIVISOR|contador_ciclos\(18),
	datad => \INST_DIVISOR|contador_ciclos\(20),
	combout => \INST_DIVISOR|Equal0~1_combout\);

-- Location: LCCOMB_X5_Y24_N18
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

-- Location: LCCOMB_X5_Y24_N26
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

-- Location: FF_X5_Y24_N27
\INST_DIVISOR|contador_ciclos[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \INST_DIVISOR|contador_ciclos~1_combout\,
	clrn => \reset~input_o\,
	ena => \INST_CONTROL|estado~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST_DIVISOR|contador_ciclos\(22));

-- Location: LCCOMB_X5_Y24_N20
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

-- Location: FF_X5_Y24_N21
\INST_DIVISOR|contador_ciclos[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \INST_DIVISOR|Add0~46_combout\,
	clrn => \reset~input_o\,
	ena => \INST_CONTROL|estado~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST_DIVISOR|contador_ciclos\(23));

-- Location: LCCOMB_X5_Y24_N22
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

-- Location: LCCOMB_X4_Y24_N4
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

-- Location: FF_X4_Y24_N5
\INST_DIVISOR|contador_ciclos[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \INST_DIVISOR|contador_ciclos~0_combout\,
	clrn => \reset~input_o\,
	ena => \INST_CONTROL|estado~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST_DIVISOR|contador_ciclos\(24));

-- Location: LCCOMB_X5_Y24_N24
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

-- Location: FF_X5_Y24_N25
\INST_DIVISOR|contador_ciclos[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \INST_DIVISOR|Add0~50_combout\,
	clrn => \reset~input_o\,
	ena => \INST_CONTROL|estado~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST_DIVISOR|contador_ciclos\(25));

-- Location: LCCOMB_X4_Y24_N18
\INST_DIVISOR|Equal0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST_DIVISOR|Equal0~0_combout\ = (!\INST_DIVISOR|contador_ciclos\(23) & (\INST_DIVISOR|contador_ciclos\(24) & (!\INST_DIVISOR|contador_ciclos\(25) & \INST_DIVISOR|contador_ciclos\(22))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INST_DIVISOR|contador_ciclos\(23),
	datab => \INST_DIVISOR|contador_ciclos\(24),
	datac => \INST_DIVISOR|contador_ciclos\(25),
	datad => \INST_DIVISOR|contador_ciclos\(22),
	combout => \INST_DIVISOR|Equal0~0_combout\);

-- Location: LCCOMB_X4_Y24_N8
\INST_DIVISOR|Equal0~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST_DIVISOR|Equal0~3_combout\ = (\INST_DIVISOR|contador_ciclos\(13) & (\INST_DIVISOR|contador_ciclos\(11) & (!\INST_DIVISOR|contador_ciclos\(10) & \INST_DIVISOR|contador_ciclos\(12))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INST_DIVISOR|contador_ciclos\(13),
	datab => \INST_DIVISOR|contador_ciclos\(11),
	datac => \INST_DIVISOR|contador_ciclos\(10),
	datad => \INST_DIVISOR|contador_ciclos\(12),
	combout => \INST_DIVISOR|Equal0~3_combout\);

-- Location: LCCOMB_X4_Y24_N12
\INST_DIVISOR|Equal0~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST_DIVISOR|Equal0~2_combout\ = (\INST_DIVISOR|contador_ciclos\(14) & (\INST_DIVISOR|contador_ciclos\(16) & (!\INST_DIVISOR|contador_ciclos\(17) & !\INST_DIVISOR|contador_ciclos\(15))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INST_DIVISOR|contador_ciclos\(14),
	datab => \INST_DIVISOR|contador_ciclos\(16),
	datac => \INST_DIVISOR|contador_ciclos\(17),
	datad => \INST_DIVISOR|contador_ciclos\(15),
	combout => \INST_DIVISOR|Equal0~2_combout\);

-- Location: LCCOMB_X4_Y24_N10
\INST_DIVISOR|Equal0~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST_DIVISOR|Equal0~4_combout\ = (\INST_DIVISOR|Equal0~1_combout\ & (\INST_DIVISOR|Equal0~0_combout\ & (\INST_DIVISOR|Equal0~3_combout\ & \INST_DIVISOR|Equal0~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INST_DIVISOR|Equal0~1_combout\,
	datab => \INST_DIVISOR|Equal0~0_combout\,
	datac => \INST_DIVISOR|Equal0~3_combout\,
	datad => \INST_DIVISOR|Equal0~2_combout\,
	combout => \INST_DIVISOR|Equal0~4_combout\);

-- Location: LCCOMB_X4_Y24_N24
\INST_DIVISOR|Equal0~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST_DIVISOR|Equal0~8_combout\ = (\INST_DIVISOR|Equal0~7_combout\ & (\INST_DIVISOR|Equal0~5_combout\ & (\INST_DIVISOR|Equal0~6_combout\ & \INST_DIVISOR|Equal0~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INST_DIVISOR|Equal0~7_combout\,
	datab => \INST_DIVISOR|Equal0~5_combout\,
	datac => \INST_DIVISOR|Equal0~6_combout\,
	datad => \INST_DIVISOR|Equal0~4_combout\,
	combout => \INST_DIVISOR|Equal0~8_combout\);

-- Location: LCCOMB_X3_Y24_N24
\INST_DIVISOR|reloj_1hz_reg~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST_DIVISOR|reloj_1hz_reg~0_combout\ = \INST_DIVISOR|reloj_1hz_reg~q\ $ (((\INST_CONTROL|estado~q\ & \INST_DIVISOR|Equal0~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \INST_CONTROL|estado~q\,
	datac => \INST_DIVISOR|reloj_1hz_reg~q\,
	datad => \INST_DIVISOR|Equal0~8_combout\,
	combout => \INST_DIVISOR|reloj_1hz_reg~0_combout\);

-- Location: LCCOMB_X3_Y24_N22
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

-- Location: FF_X3_Y24_N23
\INST_DIVISOR|reloj_1hz_reg\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \INST_DIVISOR|reloj_1hz_reg~feeder_combout\,
	clrn => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST_DIVISOR|reloj_1hz_reg~q\);

-- Location: CLKCTRL_G4
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

-- Location: LCCOMB_X28_Y28_N14
\INST_CONTADOR_MINUTOS|contador[3]~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST_CONTADOR_MINUTOS|contador[3]~5_combout\ = \INST_CONTADOR_MINUTOS|contador\(3) $ (((\INST_CONTADOR_MINUTOS|contador\(1) & (\INST_CONTADOR_MINUTOS|contador\(2) & \INST_CONTADOR_MINUTOS|contador[1]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INST_CONTADOR_MINUTOS|contador\(1),
	datab => \INST_CONTADOR_MINUTOS|contador\(2),
	datac => \INST_CONTADOR_MINUTOS|contador\(3),
	datad => \INST_CONTADOR_MINUTOS|contador[1]~2_combout\,
	combout => \INST_CONTADOR_MINUTOS|contador[3]~5_combout\);

-- Location: FF_X28_Y28_N15
\INST_CONTADOR_MINUTOS|contador[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \INST_DIVISOR|ALT_INV_reloj_1hz_reg~clkctrl_outclk\,
	d => \INST_CONTADOR_MINUTOS|contador[3]~5_combout\,
	clrn => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST_CONTADOR_MINUTOS|contador\(3));

-- Location: LCCOMB_X28_Y28_N0
\INST_DISPLAY_MINUTOS|Mux6~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST_DISPLAY_MINUTOS|Mux6~0_combout\ = (\INST_CONTADOR_MINUTOS|contador\(1) & (\INST_CONTADOR_MINUTOS|contador\(3))) # (!\INST_CONTADOR_MINUTOS|contador\(1) & (\INST_CONTADOR_MINUTOS|contador\(2) $ (((!\INST_CONTADOR_MINUTOS|contador\(3) & 
-- \INST_CONTADOR_MINUTOS|contador\(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010011100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INST_CONTADOR_MINUTOS|contador\(3),
	datab => \INST_CONTADOR_MINUTOS|contador\(2),
	datac => \INST_CONTADOR_MINUTOS|contador\(0),
	datad => \INST_CONTADOR_MINUTOS|contador\(1),
	combout => \INST_DISPLAY_MINUTOS|Mux6~0_combout\);

-- Location: LCCOMB_X37_Y28_N28
\INST_DISPLAY_MINUTOS|Mux5~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST_DISPLAY_MINUTOS|Mux5~0_combout\ = (\INST_CONTADOR_MINUTOS|contador\(2) & ((\INST_CONTADOR_MINUTOS|contador\(3)) # (\INST_CONTADOR_MINUTOS|contador\(0) $ (\INST_CONTADOR_MINUTOS|contador\(1))))) # (!\INST_CONTADOR_MINUTOS|contador\(2) & 
-- (((\INST_CONTADOR_MINUTOS|contador\(1) & \INST_CONTADOR_MINUTOS|contador\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110001100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INST_CONTADOR_MINUTOS|contador\(0),
	datab => \INST_CONTADOR_MINUTOS|contador\(1),
	datac => \INST_CONTADOR_MINUTOS|contador\(2),
	datad => \INST_CONTADOR_MINUTOS|contador\(3),
	combout => \INST_DISPLAY_MINUTOS|Mux5~0_combout\);

-- Location: LCCOMB_X36_Y28_N0
\INST_DISPLAY_MINUTOS|Mux4~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST_DISPLAY_MINUTOS|Mux4~0_combout\ = (\INST_CONTADOR_MINUTOS|contador\(2) & (((\INST_CONTADOR_MINUTOS|contador\(3))))) # (!\INST_CONTADOR_MINUTOS|contador\(2) & (\INST_CONTADOR_MINUTOS|contador\(1) & ((\INST_CONTADOR_MINUTOS|contador\(3)) # 
-- (!\INST_CONTADOR_MINUTOS|contador\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INST_CONTADOR_MINUTOS|contador\(1),
	datab => \INST_CONTADOR_MINUTOS|contador\(0),
	datac => \INST_CONTADOR_MINUTOS|contador\(2),
	datad => \INST_CONTADOR_MINUTOS|contador\(3),
	combout => \INST_DISPLAY_MINUTOS|Mux4~0_combout\);

-- Location: LCCOMB_X36_Y28_N2
\INST_DISPLAY_MINUTOS|Mux3~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST_DISPLAY_MINUTOS|Mux3~0_combout\ = (\INST_CONTADOR_MINUTOS|contador\(1) & ((\INST_CONTADOR_MINUTOS|contador\(3)) # ((\INST_CONTADOR_MINUTOS|contador\(0) & \INST_CONTADOR_MINUTOS|contador\(2))))) # (!\INST_CONTADOR_MINUTOS|contador\(1) & 
-- (\INST_CONTADOR_MINUTOS|contador\(2) $ (((\INST_CONTADOR_MINUTOS|contador\(0) & !\INST_CONTADOR_MINUTOS|contador\(3))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101010010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INST_CONTADOR_MINUTOS|contador\(1),
	datab => \INST_CONTADOR_MINUTOS|contador\(0),
	datac => \INST_CONTADOR_MINUTOS|contador\(2),
	datad => \INST_CONTADOR_MINUTOS|contador\(3),
	combout => \INST_DISPLAY_MINUTOS|Mux3~0_combout\);

-- Location: LCCOMB_X37_Y28_N2
\INST_DISPLAY_MINUTOS|Mux2~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST_DISPLAY_MINUTOS|Mux2~0_combout\ = (\INST_CONTADOR_MINUTOS|contador\(0)) # ((\INST_CONTADOR_MINUTOS|contador\(1) & ((\INST_CONTADOR_MINUTOS|contador\(3)))) # (!\INST_CONTADOR_MINUTOS|contador\(1) & (\INST_CONTADOR_MINUTOS|contador\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111010111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INST_CONTADOR_MINUTOS|contador\(0),
	datab => \INST_CONTADOR_MINUTOS|contador\(1),
	datac => \INST_CONTADOR_MINUTOS|contador\(2),
	datad => \INST_CONTADOR_MINUTOS|contador\(3),
	combout => \INST_DISPLAY_MINUTOS|Mux2~0_combout\);

-- Location: LCCOMB_X37_Y28_N0
\INST_DISPLAY_MINUTOS|Mux1~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST_DISPLAY_MINUTOS|Mux1~0_combout\ = (\INST_CONTADOR_MINUTOS|contador\(0) & ((\INST_CONTADOR_MINUTOS|contador\(1)) # (\INST_CONTADOR_MINUTOS|contador\(2) $ (!\INST_CONTADOR_MINUTOS|contador\(3))))) # (!\INST_CONTADOR_MINUTOS|contador\(0) & 
-- ((\INST_CONTADOR_MINUTOS|contador\(2) & ((\INST_CONTADOR_MINUTOS|contador\(3)))) # (!\INST_CONTADOR_MINUTOS|contador\(2) & (\INST_CONTADOR_MINUTOS|contador\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110010001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INST_CONTADOR_MINUTOS|contador\(0),
	datab => \INST_CONTADOR_MINUTOS|contador\(1),
	datac => \INST_CONTADOR_MINUTOS|contador\(2),
	datad => \INST_CONTADOR_MINUTOS|contador\(3),
	combout => \INST_DISPLAY_MINUTOS|Mux1~0_combout\);

-- Location: LCCOMB_X37_Y28_N14
\INST_DISPLAY_MINUTOS|Mux0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST_DISPLAY_MINUTOS|Mux0~0_combout\ = (\INST_CONTADOR_MINUTOS|contador\(1) & (!\INST_CONTADOR_MINUTOS|contador\(3) & ((!\INST_CONTADOR_MINUTOS|contador\(2)) # (!\INST_CONTADOR_MINUTOS|contador\(0))))) # (!\INST_CONTADOR_MINUTOS|contador\(1) & 
-- ((\INST_CONTADOR_MINUTOS|contador\(2) $ (\INST_CONTADOR_MINUTOS|contador\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001101111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INST_CONTADOR_MINUTOS|contador\(0),
	datab => \INST_CONTADOR_MINUTOS|contador\(1),
	datac => \INST_CONTADOR_MINUTOS|contador\(2),
	datad => \INST_CONTADOR_MINUTOS|contador\(3),
	combout => \INST_DISPLAY_MINUTOS|Mux0~0_combout\);

-- Location: LCCOMB_X29_Y28_N22
\INST_DISPLAY_DECENAS|Mux6~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST_DISPLAY_DECENAS|Mux6~0_combout\ = (!\INST_CONTADOR_DECENAS|contador\(1) & (\INST_CONTADOR_DECENAS|contador\(2) $ (\INST_CONTADOR_DECENAS|contador\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000101000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INST_CONTADOR_DECENAS|contador\(1),
	datab => \INST_CONTADOR_DECENAS|contador\(2),
	datad => \INST_CONTADOR_DECENAS|contador\(0),
	combout => \INST_DISPLAY_DECENAS|Mux6~0_combout\);

-- Location: LCCOMB_X29_Y28_N16
\INST_DISPLAY_DECENAS|Mux5~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST_DISPLAY_DECENAS|Mux5~0_combout\ = (\INST_CONTADOR_DECENAS|contador\(2) & (\INST_CONTADOR_DECENAS|contador\(1) $ (\INST_CONTADOR_DECENAS|contador\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INST_CONTADOR_DECENAS|contador\(1),
	datab => \INST_CONTADOR_DECENAS|contador\(2),
	datad => \INST_CONTADOR_DECENAS|contador\(0),
	combout => \INST_DISPLAY_DECENAS|Mux5~0_combout\);

-- Location: LCCOMB_X29_Y28_N30
\INST_DISPLAY_DECENAS|Mux4~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST_DISPLAY_DECENAS|Mux4~0_combout\ = (\INST_CONTADOR_DECENAS|contador\(1) & (!\INST_CONTADOR_DECENAS|contador\(2) & !\INST_CONTADOR_DECENAS|contador\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INST_CONTADOR_DECENAS|contador\(1),
	datab => \INST_CONTADOR_DECENAS|contador\(2),
	datad => \INST_CONTADOR_DECENAS|contador\(0),
	combout => \INST_DISPLAY_DECENAS|Mux4~0_combout\);

-- Location: LCCOMB_X29_Y28_N28
\INST_DISPLAY_DECENAS|Mux3~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST_DISPLAY_DECENAS|Mux3~0_combout\ = (\INST_CONTADOR_DECENAS|contador\(1) & (\INST_CONTADOR_DECENAS|contador\(2) & \INST_CONTADOR_DECENAS|contador\(0))) # (!\INST_CONTADOR_DECENAS|contador\(1) & (\INST_CONTADOR_DECENAS|contador\(2) $ 
-- (\INST_CONTADOR_DECENAS|contador\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100101000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INST_CONTADOR_DECENAS|contador\(1),
	datab => \INST_CONTADOR_DECENAS|contador\(2),
	datad => \INST_CONTADOR_DECENAS|contador\(0),
	combout => \INST_DISPLAY_DECENAS|Mux3~0_combout\);

-- Location: LCCOMB_X29_Y28_N18
\INST_DISPLAY_DECENAS|Mux2~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST_DISPLAY_DECENAS|Mux2~0_combout\ = (\INST_CONTADOR_DECENAS|contador\(0)) # ((!\INST_CONTADOR_DECENAS|contador\(1) & \INST_CONTADOR_DECENAS|contador\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INST_CONTADOR_DECENAS|contador\(1),
	datab => \INST_CONTADOR_DECENAS|contador\(2),
	datad => \INST_CONTADOR_DECENAS|contador\(0),
	combout => \INST_DISPLAY_DECENAS|Mux2~0_combout\);

-- Location: LCCOMB_X29_Y28_N12
\INST_DISPLAY_DECENAS|Mux1~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST_DISPLAY_DECENAS|Mux1~0_combout\ = (\INST_CONTADOR_DECENAS|contador\(1) & ((\INST_CONTADOR_DECENAS|contador\(0)) # (!\INST_CONTADOR_DECENAS|contador\(2)))) # (!\INST_CONTADOR_DECENAS|contador\(1) & (!\INST_CONTADOR_DECENAS|contador\(2) & 
-- \INST_CONTADOR_DECENAS|contador\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101100100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INST_CONTADOR_DECENAS|contador\(1),
	datab => \INST_CONTADOR_DECENAS|contador\(2),
	datad => \INST_CONTADOR_DECENAS|contador\(0),
	combout => \INST_DISPLAY_DECENAS|Mux1~0_combout\);

-- Location: LCCOMB_X29_Y28_N2
\INST_DISPLAY_DECENAS|Mux0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST_DISPLAY_DECENAS|Mux0~0_combout\ = (\INST_CONTADOR_DECENAS|contador\(1) & (\INST_CONTADOR_DECENAS|contador\(2) & \INST_CONTADOR_DECENAS|contador\(0))) # (!\INST_CONTADOR_DECENAS|contador\(1) & (!\INST_CONTADOR_DECENAS|contador\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100100010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INST_CONTADOR_DECENAS|contador\(1),
	datab => \INST_CONTADOR_DECENAS|contador\(2),
	datad => \INST_CONTADOR_DECENAS|contador\(0),
	combout => \INST_DISPLAY_DECENAS|Mux0~0_combout\);

-- Location: LCCOMB_X27_Y28_N26
\INST_DISPLAY_UNIDADES|Mux6~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST_DISPLAY_UNIDADES|Mux6~0_combout\ = (\INST_CONTADOR_UNIDADES|contador\(1) & (((\INST_CONTADOR_UNIDADES|contador\(3))))) # (!\INST_CONTADOR_UNIDADES|contador\(1) & (\INST_CONTADOR_UNIDADES|contador\(2) $ (((!\INST_CONTADOR_UNIDADES|contador\(3) & 
-- \INST_CONTADOR_UNIDADES|contador\(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INST_CONTADOR_UNIDADES|contador\(2),
	datab => \INST_CONTADOR_UNIDADES|contador\(3),
	datac => \INST_CONTADOR_UNIDADES|contador\(0),
	datad => \INST_CONTADOR_UNIDADES|contador\(1),
	combout => \INST_DISPLAY_UNIDADES|Mux6~0_combout\);

-- Location: LCCOMB_X27_Y28_N28
\INST_DISPLAY_UNIDADES|Mux5~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST_DISPLAY_UNIDADES|Mux5~0_combout\ = (\INST_CONTADOR_UNIDADES|contador\(2) & ((\INST_CONTADOR_UNIDADES|contador\(3)) # (\INST_CONTADOR_UNIDADES|contador\(0) $ (\INST_CONTADOR_UNIDADES|contador\(1))))) # (!\INST_CONTADOR_UNIDADES|contador\(2) & 
-- (\INST_CONTADOR_UNIDADES|contador\(3) & ((\INST_CONTADOR_UNIDADES|contador\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INST_CONTADOR_UNIDADES|contador\(2),
	datab => \INST_CONTADOR_UNIDADES|contador\(3),
	datac => \INST_CONTADOR_UNIDADES|contador\(0),
	datad => \INST_CONTADOR_UNIDADES|contador\(1),
	combout => \INST_DISPLAY_UNIDADES|Mux5~0_combout\);

-- Location: LCCOMB_X27_Y28_N18
\INST_DISPLAY_UNIDADES|Mux4~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST_DISPLAY_UNIDADES|Mux4~0_combout\ = (\INST_CONTADOR_UNIDADES|contador\(2) & (\INST_CONTADOR_UNIDADES|contador\(3))) # (!\INST_CONTADOR_UNIDADES|contador\(2) & (\INST_CONTADOR_UNIDADES|contador\(1) & ((\INST_CONTADOR_UNIDADES|contador\(3)) # 
-- (!\INST_CONTADOR_UNIDADES|contador\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INST_CONTADOR_UNIDADES|contador\(2),
	datab => \INST_CONTADOR_UNIDADES|contador\(3),
	datac => \INST_CONTADOR_UNIDADES|contador\(0),
	datad => \INST_CONTADOR_UNIDADES|contador\(1),
	combout => \INST_DISPLAY_UNIDADES|Mux4~0_combout\);

-- Location: LCCOMB_X28_Y28_N24
\INST_DISPLAY_UNIDADES|Mux3~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST_DISPLAY_UNIDADES|Mux3~0_combout\ = (\INST_CONTADOR_UNIDADES|contador\(1) & ((\INST_CONTADOR_UNIDADES|contador\(3)) # ((\INST_CONTADOR_UNIDADES|contador\(2) & \INST_CONTADOR_UNIDADES|contador\(0))))) # (!\INST_CONTADOR_UNIDADES|contador\(1) & 
-- (\INST_CONTADOR_UNIDADES|contador\(2) $ (((!\INST_CONTADOR_UNIDADES|contador\(3) & \INST_CONTADOR_UNIDADES|contador\(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110100111001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INST_CONTADOR_UNIDADES|contador\(2),
	datab => \INST_CONTADOR_UNIDADES|contador\(3),
	datac => \INST_CONTADOR_UNIDADES|contador\(1),
	datad => \INST_CONTADOR_UNIDADES|contador\(0),
	combout => \INST_DISPLAY_UNIDADES|Mux3~0_combout\);

-- Location: LCCOMB_X27_Y28_N12
\INST_DISPLAY_UNIDADES|Mux2~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST_DISPLAY_UNIDADES|Mux2~0_combout\ = (\INST_CONTADOR_UNIDADES|contador\(0)) # ((\INST_CONTADOR_UNIDADES|contador\(1) & ((\INST_CONTADOR_UNIDADES|contador\(3)))) # (!\INST_CONTADOR_UNIDADES|contador\(1) & (\INST_CONTADOR_UNIDADES|contador\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INST_CONTADOR_UNIDADES|contador\(2),
	datab => \INST_CONTADOR_UNIDADES|contador\(3),
	datac => \INST_CONTADOR_UNIDADES|contador\(0),
	datad => \INST_CONTADOR_UNIDADES|contador\(1),
	combout => \INST_DISPLAY_UNIDADES|Mux2~0_combout\);

-- Location: LCCOMB_X28_Y28_N2
\INST_DISPLAY_UNIDADES|Mux1~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST_DISPLAY_UNIDADES|Mux1~0_combout\ = (\INST_CONTADOR_UNIDADES|contador\(2) & ((\INST_CONTADOR_UNIDADES|contador\(3)) # ((\INST_CONTADOR_UNIDADES|contador\(1) & \INST_CONTADOR_UNIDADES|contador\(0))))) # (!\INST_CONTADOR_UNIDADES|contador\(2) & 
-- ((\INST_CONTADOR_UNIDADES|contador\(1)) # ((!\INST_CONTADOR_UNIDADES|contador\(3) & \INST_CONTADOR_UNIDADES|contador\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100111011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INST_CONTADOR_UNIDADES|contador\(2),
	datab => \INST_CONTADOR_UNIDADES|contador\(3),
	datac => \INST_CONTADOR_UNIDADES|contador\(1),
	datad => \INST_CONTADOR_UNIDADES|contador\(0),
	combout => \INST_DISPLAY_UNIDADES|Mux1~0_combout\);

-- Location: LCCOMB_X27_Y28_N22
\INST_DISPLAY_UNIDADES|Mux0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INST_DISPLAY_UNIDADES|Mux0~0_combout\ = (\INST_CONTADOR_UNIDADES|contador\(2) & (!\INST_CONTADOR_UNIDADES|contador\(3) & ((!\INST_CONTADOR_UNIDADES|contador\(1)) # (!\INST_CONTADOR_UNIDADES|contador\(0))))) # (!\INST_CONTADOR_UNIDADES|contador\(2) & 
-- (\INST_CONTADOR_UNIDADES|contador\(3) $ (((\INST_CONTADOR_UNIDADES|contador\(1))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001001101100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INST_CONTADOR_UNIDADES|contador\(2),
	datab => \INST_CONTADOR_UNIDADES|contador\(3),
	datac => \INST_CONTADOR_UNIDADES|contador\(0),
	datad => \INST_CONTADOR_UNIDADES|contador\(1),
	combout => \INST_DISPLAY_UNIDADES|Mux0~0_combout\);

ww_ssd_min(0) <= \ssd_min[0]~output_o\;

ww_ssd_min(1) <= \ssd_min[1]~output_o\;

ww_ssd_min(2) <= \ssd_min[2]~output_o\;

ww_ssd_min(3) <= \ssd_min[3]~output_o\;

ww_ssd_min(4) <= \ssd_min[4]~output_o\;

ww_ssd_min(5) <= \ssd_min[5]~output_o\;

ww_ssd_min(6) <= \ssd_min[6]~output_o\;

ww_ssd_seg_d(0) <= \ssd_seg_d[0]~output_o\;

ww_ssd_seg_d(1) <= \ssd_seg_d[1]~output_o\;

ww_ssd_seg_d(2) <= \ssd_seg_d[2]~output_o\;

ww_ssd_seg_d(3) <= \ssd_seg_d[3]~output_o\;

ww_ssd_seg_d(4) <= \ssd_seg_d[4]~output_o\;

ww_ssd_seg_d(5) <= \ssd_seg_d[5]~output_o\;

ww_ssd_seg_d(6) <= \ssd_seg_d[6]~output_o\;

ww_ssd_seg_u(0) <= \ssd_seg_u[0]~output_o\;

ww_ssd_seg_u(1) <= \ssd_seg_u[1]~output_o\;

ww_ssd_seg_u(2) <= \ssd_seg_u[2]~output_o\;

ww_ssd_seg_u(3) <= \ssd_seg_u[3]~output_o\;

ww_ssd_seg_u(4) <= \ssd_seg_u[4]~output_o\;

ww_ssd_seg_u(5) <= \ssd_seg_u[5]~output_o\;

ww_ssd_seg_u(6) <= \ssd_seg_u[6]~output_o\;
END structure;


