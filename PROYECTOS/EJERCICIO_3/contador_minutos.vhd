-- =============================================================
-- Archivo     : contador_minutos.vhd
-- Descripcion : Contador de minutos de 0 a 9 (modulo 10).
--               Incrementa cuando recibe el pulso acarreo
--               proveniente del contador de segundos.
--
-- Entradas    : reloj_1hz -> Reloj de 1 Hz
--               reinicio  -> Reset asincrono activo alto
--               habilitar -> '1' = sistema en marcha
--               acarreo   -> Pulso de contador_segundos
-- Salidas     : unidad_min -> Valor de minutos (0-9) en 4 bits
--               fin_cuenta -> '1' cuando minutos = 9
--                             (no usar para detener el sistema,
--                              usar fin_real del nivel superior)
-- =============================================================
LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.all;
USE IEEE.NUMERIC_STD.all;

ENTITY contador_minutos IS
    PORT (
        reloj_1hz  : IN  std_logic;                     -- Reloj 1 Hz
        reinicio   : IN  std_logic;                     -- Reset activo alto
        habilitar  : IN  std_logic;                     -- Habilitacion
        acarreo    : IN  std_logic;                     -- Pulso de contador_segundos
        unidad_min : OUT std_logic_vector(3 DOWNTO 0);   -- Valor de minutos
        fin_cuenta : OUT std_logic                       -- Indicador (ver nota)
    );
END contador_minutos;

ARCHITECTURE logica OF contador_minutos IS
    SIGNAL minutos : UNSIGNED(3 DOWNTO 0) := (others => '0');
BEGIN

    proc_minutos : PROCESS (reloj_1hz, reinicio) IS
    BEGIN
        IF reinicio = '1' THEN
            minutos <= (others => '0');

        ELSIF reloj_1hz'event AND reloj_1hz = '1' THEN
            -- Incrementar minuto cuando hay acarreo Y el sistema corre
            -- Y aun no se llego al maximo de 9 minutos
            IF habilitar = '1' AND acarreo = '1' AND minutos < 9 THEN
                minutos <= minutos + 1;
            END IF;
        END IF;
    END PROCESS;

    -- Salidas combinacionales
    unidad_min <= std_logic_vector(minutos);


    fin_cuenta <= '1' WHEN minutos = 9 ELSE '0';

END logica;
