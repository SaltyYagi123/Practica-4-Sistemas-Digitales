--Por completar que haga la Shift Right Logical o Arithmetic o shift Left logical 
--Dependiendo del valor de la alu_op 

LIBRARY IEEE;
USE IEEE.std_logic_1164.ALL;
USE IEEE.numeric_std.ALL;

ENTITY Desplazador IS
    GENERIC (
        g_data_w : INTEGER := 32
    );
    PORT (
        entrada : IN STD_LOGIC_VECTOR(g_data_w - 1 DOWNTO 0);
        shamt : IN STD_LOGIC_VECTOR(4 DOWNTO 0); -- Entrada del numero
        salida_sll, salida_srl, salida_sra : OUT STD_LOGIC_VECTOR(g_data_w - 1 DOWNTO 0);
        alu_op : IN STD_LOGIC_VECTOR(3 DOWNTO 0)
    );
END Desplazador;

ARCHITECTURE behavioral OF Desplazador IS
    SIGNAL num_desplaz : INTEGER RANGE 0 TO g_data_w - 1; --Internal Signal 
    SIGNAL alu_op_s : STD_LOGIC_VECTOR(3 DOWNTO 0);
BEGIN

    alu_op_s <= alu_op;
    num_desplaz <= to_integer(signed(shamt)); --Esto nos pasa el numero que pasamos en binario de shamt a numero para desplazar 
    
    salida_sll <= STD_LOGIC_VECTOR(shift_left(unsigned(entrada), num_desplaz)) WHEN alu_op_s = "0001" ELSE (OTHERS => '0');
    salida_srl <= STD_LOGIC_VECTOR(shift_right(unsigned(entrada), num_desplaz)) WHEN alu_op_s = "0101" ELSE (OTHERS => '0');
    salida_sra <= STD_LOGIC_VECTOR(shift_right(signed(entrada), num_desplaz)) WHEN alu_op_s = "1101" ELSE (OTHERS => '0');

END behavioral; -- behavioral

--Codigo obtenido de: https://www.nandland.com/vhdl/examples/example-shifts.html