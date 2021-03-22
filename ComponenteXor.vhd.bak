LIBRARY IEEE;
USE IEEE.std_logic_1164.ALL;
USE IEEE.numeric_std.ALL;

ENTITY FuncionesLogicas IS
    GENERIC PORT(
        g_data_W: integer:=32
    );
    PORT (
        a, b : IN STD_LOGIC_VECTOR(g_data_w -1 DOWNTO 0);
        salida : OUT STD_LOGIC_VECTOR(g_data_w -1 DOWNTO 0);
        alu_op : IN STD_LOGIC_VECTOR(3 DOWNTO 0)
    );
END FuncionesLogicas;

ARCHITECTURE behavioral OF FuncionesLogicas IS
    signal alu_op_s: std_logic_vector(3 downto 0);
BEGIN

    alu_op_s <= alu_op;

        salida <= a xor b when alu_op_s = "0100";

        salida <= a or b when alu_op_s = "0110";

        salida <= a and b when alu_op_s = "0111";

END behavioral; -- behavioral