--Por completar que haga la Shift Right Logical o Arithmetic o shift Left logical 
--Dependiendo del valor de la alu_op 

LIBRARY IEEE;
USE IEEE.std_logic_1164.ALL;
USE IEEE.numeric_std.ALL;

ENTITY Desplazador IS
    GENERIC (
        g_data_w: integer:=32
    );
    PORT (
        entrada : IN STD_LOGIC_VECTOR(g_data_w -1 DOWNTO 0);
        shamt : IN STD_LOGIC_VECTOR(4 DOWNTO 0); -- Entrada del numero
        salida : OUT STD_LOGIC_VECTOR(g_data_w -1 DOWNTO 0);
        alu_op : in std_logic_vector(3 DOWNTO 0)
    );
END Desplazador;

architecture behavioral of Desplazador is
    signal num_desplaz: integer range 0 to g_data_w -1; --Internal Signal 
	 signal alu_op_s: std_logic_vector(3 downto 0);
	begin 

	 alu_op_s <= alu_op;
    num_desplaz <= to_integer(signed(shamt)); --Esto nos pasa el numero que pasamos en binario de shamt a numero para desplazar 


        salida <= std_logic_vector(shift_left(unsigned(entrada), num_desplaz)) when alu_op_s = "0001";
        salida <= std_logic_vector(shift_right(unsigned(entrada), num_desplaz)) when alu_op_s = "0101";
        salida <= std_logic_vector(shift_right(signed(entrada), num_desplaz)) when alu_op_s = "1101";

end behavioral ; -- behavioral

--Codigo obtenido de: https://www.nandland.com/vhdl/examples/example-shifts.html