LIBRARY IEEE;
USE IEEE.std_logic_1164.ALL;
USE IEEE.numeric_std.ALL;

ENTITY Comparador IS
    GENERIC (
        g_data_w : INTEGER := 4
    );
    PORT (
        a, b : IN STD_LOGIC_VECTOR(g_data_w - 1 DOWNTO 0);
        s : OUT STD_LOGIC_VECTOR(g_data_w - 1 DOWNTO 0);
        s_r : IN STD_LOGIC_VECTOR(3 DOWNTO 0)
    );

END Comparador;

ARCHITECTURE behavioral OF Comparador IS

    SIGNAL s_sig : STD_LOGIC;
    SIGNAL s_unsig : STD_LOGIC;

BEGIN

    s_unsig <= '1' WHEN unsigned(a) < unsigned(b) ELSE
        '0';
    s_sig <= '1' WHEN signed(a) < signed(b) ELSE
        '0';

    WITH s_r SELECT
        s <= (g_data_w - 1 DOWNTO 1 => '0') & s_sig WHEN "0010",
        (g_data_w - 1 DOWNTO 1 => '0') & s_unsig WHEN "0011",
        (g_data_w - 1 DOWNTO 1 => '0') & s_unsig WHEN OTHERS;

    --Si observamos el enunciado de la practica, se puede observar que para las 
    --entradas de la alu_op para las opciones 0010 y 0011, debemos incluir todos los 0
    --posibles y poner el signo como el LSB. 

END behavioral; -- behavioral