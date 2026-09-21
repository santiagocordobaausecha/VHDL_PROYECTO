-- =============================================================
-- Archivo     : contador_segundos.vhd
-- Descripcion : Contador de segundos de 0 a 59 (modulo 60).
--               Las salidas se entregan separadas en decenas
--               y unidades para facilitar la decodificacion
--               en los displays de 7 segmentos.
--
--
-- Entradas    : reloj_1hz -> Reloj de 1 Hz (1 ciclo = 1 segundo)
--               reinicio  -> Reset asincrono activo alto
--               habilitar -> '1' = contar, '0' = pausado
-- Salidas     : unidad_seg -> Unidades de segundos (0-9) en 4 bits
--               decena_seg -> Decenas de segundos  (0-5) en 4 bits
--               acarreo    -> Pulso registrado al completar 59 seg.
-- =============================================================

LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.all;
USE IEEE.NUMERIC_STD.all;

ENTITY contador_segundos IS
    PORT (
        reloj_1hz  : IN  std_logic;
        reinicio   : IN  std_logic;
        habilitar  : IN  std_logic;
        unidad_seg : OUT std_logic_vector(3 DOWNTO 0);
        decena_seg : OUT std_logic_vector(3 DOWNTO 0);
        acarreo    : OUT std_logic
    );
END contador_segundos;

ARCHITECTURE logica OF contador_segundos IS

    SIGNAL unidad : UNSIGNED(3 DOWNTO 0) := (others => '0');
    SIGNAL decena : UNSIGNED(3 DOWNTO 0) := (others => '0');

BEGIN

    proc_segundos : PROCESS (reloj_1hz, reinicio) IS
    BEGIN
        IF reinicio = '1' THEN
            unidad     <= (others => '0');
            decena     <= (others => '0');
            

        ELSIF reloj_1hz'event AND reloj_1hz = '1' THEN

           

            IF habilitar = '1' THEN


                -- CASO 1: llegamos a 59 -> resetear 
                IF decena = 5 AND unidad = 9 THEN
                    unidad     <= (others => '0');
                    decena     <= (others => '0');
                    

                -- CASO 2: unidades llegaron a 9 -> subir decenas
                ELSIF unidad = 9 THEN
                    unidad <= (others => '0');
                    decena <= decena + 1;

                -- CASO 3: incremento normal
                ELSE
                    unidad <= unidad + 1;

                END IF;

            END IF;

        END IF;
    END PROCESS;

    unidad_seg <= std_logic_vector(unidad);
    decena_seg <= std_logic_vector(decena);
	 acarreo <= '1' WHEN (habilitar = '1' AND decena = 5 AND unidad = 9) ELSE '0';
   

END logica;
