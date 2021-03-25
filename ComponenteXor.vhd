LIBRARY IEEE;
USE IEEE.std_logic_1164.ALL;
USE IEEE.numeric_std.ALL;

ENTITY ComponenteXor IS
    GENERIC(
        g_data_w: integer:=4
    );
    PORT (
        a, b : IN STD_LOGIC_VECTOR(g_data_w -1 DOWNTO 0);
        salida : OUT STD_LOGIC_VECTOR(g_data_w -1 DOWNTO 0);
        alu_op : IN STD_LOGIC_VECTOR(3 DOWNTO 0)
    );
END ComponenteXor;

ARCHITECTURE behavioral OF ComponenteXor IS
    signal alu_op_s: std_logic_vector(3 downto 0);
BEGIN

--Aqui no hay mucho que explicar la verdad, es solo hacer un xor entre 2 numeros
    alu_op_s <= alu_op;

    salida <= a xor b when alu_op_s = "0100" else "0000";

END behavioral; -- behavioral