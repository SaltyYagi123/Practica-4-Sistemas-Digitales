LIBRARY IEEE;
USE IEEE.std_logic_1164.ALL;
USE IEEE.numeric_std.ALL;

ENTITY FuncionesLogicas IS
    PORT (
        a, b : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
        salida : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
        alu_op : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
    );
END FuncionesLogicas;

ARCHITECTURE behavioral OF FuncionesLogicas IS

BEGIN

    IF (alu_op = "0100") THEN --xor
        salida <= a xor b;
    ELSE IF (alu_op = "0110") THEN --or 
        salida <= a or b;
    ELSE IF (alu_op = "0111") THEN
        salida <= a and b;
    END IF;
    
END behavioral; -- behavioral