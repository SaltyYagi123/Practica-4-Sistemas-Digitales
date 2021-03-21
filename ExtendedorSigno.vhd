--Extendedor de signo: 
--Funcionalidad -> Extiende el signo cuando la funcion solicitada sea slt
--Debemos comparar con un signo. 

LIBRARY IEEE;
USE IEEE.std_logic_1164.ALL;
USE IEEE.numeric_std.ALL;

ENTITY ExtendedorSigno IS
    PORT (
        alu_op : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
        entrada : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
        salida : OUT STD_LOGIC_VECTOR(32 DOWNTO 0);
    );
END ExtendedorSigno;

ARCHITECTURE behavioral OF ExtendedorSigno IS

BEGIN

    IF (alu_op == "0010") THEN 
        salida <= STD_LOGIC_VECTOR(resize(unsigned(entrada), salida'width));
    END IF;

END behavioral; -- behavioral

--https://embdev.net/topic/236693 <- Codigo observado de aqui;