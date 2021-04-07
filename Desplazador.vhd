
--Este componente se encarga de desplazar el vector de bits como nos piden en los componentes que componen la ALU. 
--Hay algunos con signo y otros sin signo. Puedes ver 

LIBRARY IEEE;
USE IEEE.std_logic_1164.ALL;
USE IEEE.numeric_std.ALL;

ENTITY Desplazador IS
    GENERIC (
        g_data_w : INTEGER := 4
    );
    PORT (
        entrada : IN STD_LOGIC_VECTOR(g_data_w - 1 DOWNTO 0);
        shamt : IN STD_LOGIC_VECTOR(1 DOWNTO 0); -- Entrada del numero
        salida_sll, salida_srl, salida_sra : OUT STD_LOGIC_VECTOR(g_data_w - 1 DOWNTO 0);
        alu_op : IN STD_LOGIC_VECTOR(3 DOWNTO 0)
    );
END Desplazador;

ARCHITECTURE behavioral OF Desplazador IS
    SIGNAL alu_op_s : STD_LOGIC_VECTOR(3 DOWNTO 0);
BEGIN
    alu_op_s <= alu_op;

    salida_sll <= STD_LOGIC_VECTOR(shift_left(unsigned(entrada), to_integer(unsigned(shamt)))) WHEN alu_op_s = "0001" ELSE
        (OTHERS => '0');
    salida_srl <= STD_LOGIC_VECTOR(shift_right(unsigned(entrada), to_integer(unsigned(shamt)))) WHEN alu_op_s = "0101" ELSE
        (OTHERS => '0');
    salida_sra <= STD_LOGIC_VECTOR(shift_right(signed(entrada), to_integer(unsigned(shamt)))) WHEN alu_op_s = "1101" ELSE
        (OTHERS => '0');

END behavioral; -- behavioral

--Codigo obtenido de: https://www.nandland.com/vhdl/examples/example-shifts.html

--IMPORTANTE CONSIDERAR QUE EN LA ALU EL DESPLAZAMIENTO NO DEBE DE SER CIRCULAR COMO SE MUESTRA EN EL TESTBENCH <- informe