-- =============================================================
-- Archivo    : decodificador_7segmentos.vhd
-- Descripcion: Decodificador BCD a 7 segmentos.
--              Verificado segmento por segmento en placa DE0.
--
-- Mapeo confirmado en hardware:
--   segmentos(0) = a  (arriba)
--   segmentos(1) = b  (derecha arriba)
--   segmentos(2) = c  (derecha abajo)
--   segmentos(3) = d  (abajo)
--   segmentos(4) = e  (izquierda abajo)
--   segmentos(5) = f  (izquierda arriba)
--   segmentos(6) = g  (medio)
--
-- Activo en bajo: '0' = encendido, '1' = apagado
--
-- Vector segmentos(6 DOWNTO 0) = "gfedcba"
--
--       a
--    f     b
--       g
--    e     c
--       d
--
-- Estilo: WITH-SELECT segun diapositivas del curso.
-- =============================================================

LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.all;

ENTITY decodificador_7segmentos IS
    PORT (
        bcd       : IN  std_logic_vector(3 DOWNTO 0);
        segmentos : OUT std_logic_vector(6 DOWNTO 0)
    );
END decodificador_7segmentos;

ARCHITECTURE logica OF decodificador_7segmentos IS

BEGIN

    -- segmentos = "gfedcba" (6 DOWNTO 0)
    -- '0' = encendido, '1' = apagado
    --
    --        g f e d c b a
    --  0  →  1 0 0 0 0 0 0  = "1000000"  (a b c d e f)
    --  1  →  1 1 1 1 0 0 1  = "1111001"  (b c)
    --  2  →  0 1 0 0 1 0 0  = "0100100"  (a b d e g)
    --  3  →  0 1 1 0 0 0 0  = "0110000"  (a b c d g)
    --  4  →  0 0 1 1 0 0 1  = "0011001"  (b c f g)
    --  5  →  0 0 1 0 0 1 0  = "0010010"  (a c d f g)
    --  6  →  0 0 0 0 0 1 0  = "0000010"  (a c d e f g)
    --  7  →  1 1 1 1 0 0 0  = "1111000"  (a b c)
    --  8  →  0 0 0 0 0 0 0  = "0000000"  (todos)
    --  9  →  0 0 1 0 0 0 0  = "0010000"  (a b c d f g)

    WITH bcd SELECT
        segmentos <= "1000000" WHEN "0000",   -- 0
                     "1111001" WHEN "0001",   -- 1
                     "0100100" WHEN "0010",   -- 2
                     "0110000" WHEN "0011",   -- 3
                     "0011001" WHEN "0100",   -- 4
                     "0010010" WHEN "0101",   -- 5
                     "0000010" WHEN "0110",   -- 6
                     "1111000" WHEN "0111",   -- 7
                     "0000000" WHEN "1000",   -- 8
                     "0010000" WHEN "1001",   -- 9
                     "1111111" WHEN OTHERS;   -- apagado

END logica;
