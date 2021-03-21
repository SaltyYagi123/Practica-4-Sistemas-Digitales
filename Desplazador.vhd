--Por completar que haga la Shift Right Logical o Arithmetic o shift Left logical 
--Dependiendo del valor de la alu_op 

LIBRARY IEEE;
USE IEEE.std_logic_1164.ALL;
USE IEEE.numeric_std.ALL;

ENTITY Desplazador IS
    PORT (
        entrada : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
        shamt : IN STD_LOGIC_VECTOR(4 DOWNTO 0);
        salida : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
        alu_op : in std_logic_vector(3 DOWNTO 0);
    );
END Desplazador;

architecture behavioral of Desplazador is

    signal 

begin


end behavioral ; -- behavioral