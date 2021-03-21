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
        salida : OUT STD_LOGIC_VECTOR(32 DOWNTO 0)
    );
END ExtendedorSigno;

ARCHITECTURE behavioral OF ExtendedorSigno IS
    signal alu_op_s: std_logic_vector(3 downto 0);
    signal salida_s: std_logic_vector(32 downto 0);

BEGIN

    alu_op_s <= alu_op;
	 
	 salida <= STD_LOGIC_VECTOR(resize(unsigned(entrada), salida_s'width)) when alu_op_s = "0010";
  
END behavioral; -- behavioral

--https://embdev.net/topic/236693 <- Codigo observado de aqui;