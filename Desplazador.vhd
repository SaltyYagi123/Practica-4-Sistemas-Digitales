--Por completar que haga la Shift Right Logical o Arithmetic o shift Left logical 
--Dependiendo del valor de la alu_op 

LIBRARY IEEE;
USE IEEE.std_logic_1164.ALL;
USE IEEE.numeric_std.ALL;

ENTITY Desplazador IS
    PORT (
        entrada : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
        shamt : IN STD_LOGIC_VECTOR(4 DOWNTO 0); -- Entrada del numero
        salida : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
        alu_op : in std_logic_vector(3 DOWNTO 0);
    );
END Desplazador;

architecture behavioral of Desplazador is
    signal num_desplaz: integer range 0 to 31; --Internal Signal 
begin 

    num_desplaz <= to_integer(signed(shamt)); --Esto nos pasa el numero que pasamos en binario de shamt a numero para desplazar 

    if (alu_op = "0001") then --Shift left logical 
        salida <= shift_left(unsigned(entrada), num_desplaz);
    else if (alu_op = "0101") then --Shift Right logical
        salida <= shift_right(unsigned(entrada), num_desplaz);
    else if(alu_op = "1101") then  --Shift right arithmetic 
        salida <= shift_right(signed(entrada), num_desplaz);
    end if ;

end behavioral ; -- behavioral

--Codigo obtenido de: https://www.nandland.com/vhdl/examples/example-shifts.html