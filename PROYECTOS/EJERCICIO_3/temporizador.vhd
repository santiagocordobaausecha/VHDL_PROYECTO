-- =============================================================
-- Archivo     : temporizador.vhd
-- Descripcion : Archivo principal ESTRUCTURAL del temporizador.
--               Declara todos los componentes y los conecta
--               mediante PORT MAP, siguiendo el estilo del curso.
--
-- Componentes instanciados:
--   INST_DIVISOR   -> divisor_frecuencia        : Divisor 50 MHz -> 1 Hz
--   INST_BOTON     -> control_boton             : Control del boton unico (corre a 50 MHz)
--   INST_SEGUNDOS  -> contador_segundos         : Contador de segundos (0-59)
--   INST_MINUTOS   -> contador_minutos          : Contador de minutos  (0-9)
--   INST_DISP_SU   -> decodificador_7segmentos  : Display segundos unidades (HEX0)
--   INST_DISP_SD   -> decodificador_7segmentos  : Display segundos decenas  (HEX1)
--   INST_DISP_MU   -> decodificador_7segmentos  : Display minutos           (HEX2)
--   INST_DISP_C0   -> decodificador_7segmentos  : Display constante "0"     (HEX3)
--
-- Entradas    : reloj_50mhz -> Reloj fisico de la FPGA (50 MHz)
--               boton       -> Boton unico (activo bajo en placa DE0)
-- Salidas     : HEX0        -> Display segundos unidades
--               HEX1        -> Display segundos decenas
--               HEX2        -> Display minutos unidades
--               HEX3        -> Display constante (siempre 0)
-- =============================================================

LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.all;

ENTITY temporizador IS
    PORT (
        reloj_50mhz : IN  std_logic;                     -- Reloj fisico 50 MHz
        boton       : IN  std_logic;                     -- Boton fisico (activo bajo en DE0)
        HEX0        : OUT std_logic_vector(6 DOWNTO 0);  -- Seg. unidades seg.
        HEX1        : OUT std_logic_vector(6 DOWNTO 0);  -- Seg. decenas  seg.
        HEX2        : OUT std_logic_vector(6 DOWNTO 0);  -- Minutos
        HEX3        : OUT std_logic_vector(6 DOWNTO 0)   -- Constante 0
    );
END temporizador;

ARCHITECTURE Estructural OF temporizador IS

    -- =========================================================
    -- DECLARACION DE COMPONENTES
    -- =========================================================

    -- Componente: Divisor de frecuencia 50 MHz -> 1 Hz
    COMPONENT divisor_frecuencia IS
        PORT (
            reloj_50mhz : IN  std_logic;
            reinicio    : IN  std_logic;
            habilitar   : IN  std_logic;
            reloj_1hz   : OUT std_logic
        );
    END COMPONENT;

    -- Componente: Controlador del boton unico
    -- Corre con reloj_50mhz para respuesta inmediata al presionar
    COMPONENT control_boton IS
        PORT (
            reloj_50mhz           : IN  std_logic;
            boton                 : IN  std_logic;
            en_marcha             : OUT std_logic;
            reinicio_temporizador : OUT std_logic
        );
    END COMPONENT;

    -- Componente: Contador de segundos 0-59
    COMPONENT contador_segundos IS
        PORT (
            reloj_1hz  : IN  std_logic;
            reinicio   : IN  std_logic;
            habilitar  : IN  std_logic;
            unidad_seg : OUT std_logic_vector(3 DOWNTO 0);
            decena_seg : OUT std_logic_vector(3 DOWNTO 0);
            acarreo    : OUT std_logic
        );
    END COMPONENT;

    -- Componente: Contador de minutos 0-9
    COMPONENT contador_minutos IS
        PORT (
            reloj_1hz  : IN  std_logic;
            reinicio   : IN  std_logic;
            habilitar  : IN  std_logic;
            acarreo    : IN  std_logic;
            unidad_min : OUT std_logic_vector(3 DOWNTO 0);
            fin_cuenta : OUT std_logic
        );
    END COMPONENT;

    -- Componente: Decodificador BCD -> 7 segmentos
    -- Se declara UNA SOLA VEZ y se instancia 4 veces
    COMPONENT decodificador_7segmentos IS
        PORT (
            bcd       : IN  std_logic_vector(3 DOWNTO 0);
            segmentos : OUT std_logic_vector(6 DOWNTO 0)
        );
    END COMPONENT;

    -- =========================================================
    -- DECLARACION DE SENALES INTERNAS DE INTERCONEXION
    -- =========================================================

    -- Reloj de 1 Hz generado por el divisor de frecuencia
    SIGNAL reloj_1hz : std_logic;

    -- Boton interno: activo alto (invertido desde la placa)
    SIGNAL boton_interno : std_logic;

    -- Senal de habilitacion del temporizador
    SIGNAL en_marcha : std_logic;

    -- Senal de reset especifico del temporizador (pulsacion larga)
    SIGNAL reinicio_temporizador : std_logic;

    -- Habilitar final: en_marcha AND NOT fin_real
    SIGNAL habilitar_temporizador : std_logic;

    -- Acarreo entre contador de segundos y contador de minutos
    SIGNAL acarreo : std_logic;

    -- Valores BCD de cada digito (4 bits cada uno)
    SIGNAL bcd_seg_unidad : std_logic_vector(3 DOWNTO 0);  -- Segundos unidades
    SIGNAL bcd_seg_decena : std_logic_vector(3 DOWNTO 0);  -- Segundos decenas
    SIGNAL bcd_min_unidad : std_logic_vector(3 DOWNTO 0);  -- Minutos unidades

    -- fin_minutos: salida de contador_minutos (minuto=9).
    -- Se recibe pero NO se usa para detener el sistema.
    SIGNAL fin_minutos : std_logic;

    -- fin_real: verdadero indicador de fin de conteo.
    -- Se activa SOLO cuando minutos=9, decenas_seg=5 y unidades_seg=9
    SIGNAL fin_real : std_logic;

BEGIN

    -- =========================================================
    -- LOGICA COMBINACIONAL DE SENALES DE CONTROL
    -- =========================================================

    -- Invertir boton: en la DE0 el pulsador es activo en bajo
    -- presionado='0' -> boton_interno='1' (activo alto para control_boton)
    boton_interno <= NOT boton;

    -- Calculo del verdadero fin de conteo: 9:59
    -- Las tres condiciones deben cumplirse simultaneamente:
    fin_real <= '1' WHEN (bcd_min_unidad = "1001" AND bcd_seg_decena = "0101" AND bcd_seg_unidad = "1001") ELSE '0';

    -- Habilitar: el contador solo avanza si en_marcha='1' y no llego a 9:59
    habilitar_temporizador <= en_marcha AND (NOT fin_real);

    -- =========================================================
    -- INSTANCIACION DE COMPONENTES CON PORT MAP
    -- =========================================================

    -- Divisor de frecuencia: 50 MHz -> 1 Hz

    INST_DIVISOR : divisor_frecuencia
        PORT MAP (
            reloj_50mhz => reloj_50mhz,
            reinicio    => reinicio_temporizador,
            habilitar   => en_marcha,
            reloj_1hz   => reloj_1hz
        );

    -- Controlador del boton: corre a 50 MHz para respuesta inmediata
    -- reinicio_temporizador se pasa directamente a los contadores como reset
    INST_BOTON : control_boton
        PORT MAP (
            reloj_50mhz           => reloj_50mhz,
            boton                 => boton_interno,
            en_marcha             => en_marcha,
            reinicio_temporizador => reinicio_temporizador
        );

    -- Contador de segundos: corre a 1 Hz
    -- Se resetea con reinicio_temporizador 
    INST_SEGUNDOS : contador_segundos
        PORT MAP (
            reloj_1hz  => reloj_1hz,
            reinicio   => reinicio_temporizador,
            habilitar  => habilitar_temporizador,
            unidad_seg => bcd_seg_unidad,
            decena_seg => bcd_seg_decena,
            acarreo    => acarreo
        );

    -- Contador de minutos: corre a 1 Hz
    -- Se resetea con reinicio_temporizador (pulsacion larga del boton)
    -- fin_cuenta se conecta a fin_minutos: solo indica que el minuto llego a 9,
    INST_MINUTOS : contador_minutos
        PORT MAP (
            reloj_1hz  => reloj_1hz,
            reinicio   => reinicio_temporizador,
            habilitar  => habilitar_temporizador,
            acarreo    => acarreo,
            unidad_min => bcd_min_unidad,
            fin_cuenta => fin_minutos
        );

    -- Decodificador segundos unidades -> HEX0
    INST_DISP_SU : decodificador_7segmentos
        PORT MAP (
            bcd       => bcd_seg_unidad,
            segmentos => HEX0
        );

    -- Decodificador segundos decenas -> HEX1
    INST_DISP_SD : decodificador_7segmentos
        PORT MAP (
            bcd       => bcd_seg_decena,
            segmentos => HEX1
        );

    -- Decodificador minutos -> HEX2
    INST_DISP_MU : decodificador_7segmentos
        PORT MAP (
            bcd       => bcd_min_unidad,
            segmentos => HEX2
        );

    -- Decodificador HEX3: siempre muestra "0"
    INST_DISP_C0 : decodificador_7segmentos
        PORT MAP (
            bcd       => "0000",
            segmentos => HEX3
        );

END Estructural;
