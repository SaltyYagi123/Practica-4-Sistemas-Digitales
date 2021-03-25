--Extendedor de signo: 
--Funcionalidad -> Extiende el signo cuando la funcion solicitada sea slt -> Set on less than 
--Debemos comparar con un signo. 
--YA ESTA SIMULADO BIG WOOP 

LIBRARY IEEE;
USE IEEE.std_logic_1164.ALL;
USE IEEE.numeric_std.ALL;
USE IEEE.std_logic_unsigned.all;

ENTITY ExtendedorSigno IS
    GENERIC(g_data_w: integer:= 4);
    PORT (
        alu_op : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
        entrada : IN STD_LOGIC_VECTOR(g_data_w -1 DOWNTO 0);
        salida : OUT STD_LOGIC_VECTOR(g_data_w DOWNTO 0)
    );
END ExtendedorSigno;

ARCHITECTURE behavioral OF ExtendedorSigno IS

BEGIN

	--Esto es codigo a alto nivel, le estamos asignando a la salida el vector de entrada con 33 bits en vez de 32 cuando se haga la opcion
	--0010 que tiene en cuenta el signo, y si es unsigned, extendemos a 33 bits sin tener en cuenta el signo -> unsigned

    salida <= std_logic_vector(resize(signed(entrada),salida'length)) when alu_op = "0010" else std_logic_vector(resize(unsigned(entrada),salida'length));
  
END behavioral; -- behavioral

--https://embdev.net/topic/236693 <- Codigo observado de aqui;