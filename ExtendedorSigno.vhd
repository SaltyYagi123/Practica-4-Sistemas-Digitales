--Extendedor de signo: 
--Funcionalidad -> Extiende el signo cuando la funcion solicitada sea slt
--Debemos comparar con un signo. 

LIBRARY IEEE;
USE IEEE.std_logic_1164.ALL;
USE IEEE.numeric_std.ALL;
USE IEEE.std_logic_unsigned.all;

ENTITY ExtendedorSigno IS
    GENERIC(g_data_w: integer:= 32);
    PORT (
        alu_op : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
        entrada : IN STD_LOGIC_VECTOR(g_data_w -1 DOWNTO 0);
        salida : OUT STD_LOGIC_VECTOR(g_data_w DOWNTO 0)
    );
END ExtendedorSigno;

ARCHITECTURE behavioral OF ExtendedorSigno IS

BEGIN

    salida <= entrada(g_data_w -1) & entrada when alu_op = "0000" or alu_op = "1000" else '0' & entrada;
  
END behavioral; -- behavioral

--https://embdev.net/topic/236693 <- Codigo observado de aqui;