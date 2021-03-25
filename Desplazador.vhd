
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
    --SIGNAL num_desplaz : INTEGER RANGE 0 TO g_data_w - 1; --Internal Signal 
    SIGNAL alu_op_s : STD_LOGIC_VECTOR(3 DOWNTO 0);
BEGIN
	--Ves aqui que tenemos 3 salidas, una se encarga de desplazar el vector a la derecha(010 -> 001), otro a la izquierda (010 -> 100), y otro a la derecha teniendo en cuenta el signo (+ o -) ( 110 ->111 : Explicacion con signo el 110 es -4+2 => -2, al desplazar hacia la derecha al final estamos dividiendo entre 2 [...] );
	-- -2/2 es -1 que en complemento 2 seria 111 -> -4 + 2 +1 -> -1
	
	
    alu_op_s <= alu_op;
	 --Observamos gracias a las funciones que encontre en la pagina web de abajo que esto se puede hacer facilmente en alto nivel. He asignado cada salida dependiendo del valor de la alu_op_s
    --num_desplaz <= to_integer(unsigned(shamt)); --Esto nos pasa el numero que pasamos en binario de shamt a numero para desplazar 
    
    salida_sll <= STD_LOGIC_VECTOR(shift_left(unsigned(entrada), to_integer(unsigned(shamt)))) WHEN alu_op_s = "0001" ELSE (OTHERS => '0');
    salida_srl <= STD_LOGIC_VECTOR(shift_right(unsigned(entrada), to_integer(unsigned(shamt)))) WHEN alu_op_s = "0101" ELSE (OTHERS => '0');
    salida_sra <= STD_LOGIC_VECTOR(shift_right(signed(entrada), to_integer(unsigned(shamt)))) WHEN alu_op_s = "1101" ELSE (OTHERS => '0');

END behavioral; -- behavioral

--Codigo obtenido de: https://www.nandland.com/vhdl/examples/example-shifts.html

--IMPORTANTE CONSIDERAR QUE EN LA ALU EL DESPLAZAMIENTO NO DEBE DE SER CIRCULAR COMO SE MUESTRA EN EL TESTBENCH <- informe