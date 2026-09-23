-- =============================================================
-- Archivo     : control_boton.vhd
-- Descripcion : Controlador del unico boton del temporizador.
--               Corre con reloj_50mhz (50 MHz) para detectar la
--               pulsacion de forma INMEDIATA, sin esperar el
--               flanco de 1 Hz.
--
-- Correcciones aplicadas:
--   1. Senales internas inicializadas para evitar estado
--      indefinido al arrancar en simulacion o hardware.
--   2. Debounce (antirrebote) de 20 ms agregado antes de
--      evaluar el boton.
--      20 ms x 50,000,000 Hz = 1,000,000 ciclos (20 bits).
--
-- Entradas    : reloj_50mhz -> Reloj de 50 MHz de la FPGA
--               boton       -> Boton unico (activo bajo en DE0)
-- Salidas     : en_marcha            -> '1' = temporizador en marcha
--               reinicio_temporizador -> '1' = reset del temporizador
-- =============================================================

LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.all;
USE IEEE.NUMERIC_STD.all;

ENTITY control_boton IS
    PORT (
        reloj_50mhz           : IN  std_logic;   -- Reloj de 50 MHz
        boton                 : IN  std_logic;   -- Boton unico (activo alto)
        en_marcha             : OUT std_logic;   -- 1 = temporizador corriendo
        reinicio_temporizador : OUT std_logic    -- Pulso de reset al temporizador
    );
END control_boton;

ARCHITECTURE logica OF control_boton IS

    -- ----------------------------------------------------------
    -- ANTIRREBOTE 
    -- Filtro de 20 ms para eliminar rebotes del pulsador fisico.
    -- 20 ms a 50 MHz = 1,000,000 ciclos -> 20 bits (2^20 = 1,048,576)
    -- ----------------------------------------------------------
    SIGNAL contador_antirrebote : UNSIGNED(19 DOWNTO 0) := (others => '0');
    SIGNAL boton_estable        : std_logic := '0';   -- Boton filtrado (sin rebotes)

    -- ----------------------------------------------------------
    -- CONTROL DE PULSACION
    -- ----------------------------------------------------------
    -- Estado anterior del boton filtrado: detecta flanco de bajada
    SIGNAL boton_anterior   : std_logic := '0';

    -- Contador de duracion de pulsacion en ciclos de 50 MHz
    -- 27 bits: maxima cuenta 134,217,728 > 100,000,000 (2s)
    SIGNAL contador_duracion : UNSIGNED(26 DOWNTO 0) := (others => '0');

    -- Estado de marcha del temporizador
    SIGNAL estado_marcha    : std_logic := '0';

    -- Marca si la pulsacion ya fue clasificada como larga
    SIGNAL pulsacion_larga  : std_logic := '0';

    -- Constante: 2 segundos en ciclos de 50 MHz
    -- 2 x 50,000,000 = 100,000,000
    CONSTANT DOS_SEGUNDOS : UNSIGNED(26 DOWNTO 0) := to_unsigned(100000000, 27);

    -- Constante: 20 ms en ciclos de 50 MHz (umbral de antirrebote)
    CONSTANT ANTIRREBOTE_MAX : UNSIGNED(19 DOWNTO 0) := to_unsigned(1000000, 20);

BEGIN

    -- ==========================================================
    -- PROCESO DE ANTIRREBOTE
    -- Cada vez que boton cambia, se reinicia el contador.
    -- Solo cuando el boton se mantiene estable ANTIRREBOTE_MAX
    -- ciclos se actualiza boton_estable. Asi se eliminan los rebotes.
    -- ==========================================================
    proc_antirrebote : PROCESS (reloj_50mhz) IS
    BEGIN
        IF reloj_50mhz'event AND reloj_50mhz = '1' THEN

            IF boton /= boton_estable THEN
                -- El boton cambio respecto al valor estable:
                -- reiniciar contador y esperar estabilidad
                IF contador_antirrebote < ANTIRREBOTE_MAX THEN
                    contador_antirrebote <= contador_antirrebote + 1;
                ELSE
                    -- Se mantuvo el tiempo suficiente -> aceptar
                    boton_estable        <= boton;
                    contador_antirrebote <= (others => '0');
                END IF;
            ELSE
                -- El boton no cambio: reiniciar contador
                contador_antirrebote <= (others => '0');
            END IF;

        END IF;
    END PROCESS;

    -- ==========================================================
    -- PROCESO DE CONTROL DEL BOTON
    -- Trabaja sobre boton_estable (ya sin rebotes).
    -- ==========================================================
    proc_boton : PROCESS (reloj_50mhz) IS
    BEGIN
        IF reloj_50mhz'event AND reloj_50mhz = '1' THEN

            -- Por defecto el reset dura solo un ciclo
            reinicio_temporizador <= '0';

            -- -----------------------------------------------
            -- BOTON PRESIONADO (nivel alto estable)
            -- -----------------------------------------------
            IF boton_estable = '1' THEN

                -- Incrementar contador de duracion
                -- Solo si no alcanzo el maximo
                IF contador_duracion < DOS_SEGUNDOS THEN
                    contador_duracion <= contador_duracion + 1;
                END IF;

                -- Si ya lleva 2 segundos presionado
                -- y no habia sido marcado aun como largo:
                IF contador_duracion >= DOS_SEGUNDOS AND pulsacion_larga = '0' THEN
                    reinicio_temporizador <= '1';    -- Pulso de reset
                    pulsacion_larga       <= '1';    -- Marcar como larga
                    estado_marcha         <= '0';    -- Detener temporizador
                END IF;

            -- -----------------------------------------------
            -- FLANCO DE BAJADA: boton recien soltado
            -- boton_estable='0' y boton_anterior='1'
            -- -----------------------------------------------
            ELSIF boton_estable = '0' AND boton_anterior = '1' THEN

                -- Si NO fue pulsacion larga -> toggle start/stop
                IF pulsacion_larga = '0' THEN
                    estado_marcha <= NOT estado_marcha;
                END IF;

                -- Reiniciar para la proxima pulsacion
                contador_duracion <= (others => '0');
                pulsacion_larga   <= '0';

            END IF;

            -- Guardar estado del boton filtrado para proximo ciclo
            boton_anterior <= boton_estable;

        END IF;
    END PROCESS;

    en_marcha <= estado_marcha;

END logica;
