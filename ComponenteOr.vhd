LIBRARY IEEE;
USE IEEE.std_logic_1164.ALL;
USE IEEE.numeric_std.ALL;

ENTITY ComponenteOr IS
    GENERIC (
        g_data_w : INTEGER := 4
    );
    PORT (
        a, b : IN STD_LOGIC_VECTOR(g_data_w - 1 DOWNTO 0);
        salida : OUT STD_LOGIC_VECTOR(g_data_w - 1 DOWNTO 0);
        alu_op : IN STD_LOGIC_VECTOR(3 DOWNTO 0)
    );
END ComponenteOr;

ARCHITECTURE behavioral OF ComponenteOr IS
    SIGNAL alu_op_s : STD_LOGIC_VECTOR(3 DOWNTO 0);
BEGIN
    --Aqui no hay mucho que explicar la verdad, es solo hacer un or entre 2 numeros
    alu_op_s <= alu_op;

    salida <= a OR b WHEN alu_op_s = "0110" ELSE
        "0000";

END behavioral; -- behavioral