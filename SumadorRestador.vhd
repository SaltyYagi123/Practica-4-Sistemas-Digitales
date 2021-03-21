LIBRARY IEEE;
USE IEEE.std_logic_1164.ALL;
USE IEEE.numeric_std.ALL;

ENTITY sumadorRestador IS
    PORT (
        a, b : IN STD_LOGIC_VECTOR (32 DOWNTO 0); --entradas
        --No hay un overflow por lo tanto extendemos los datos a 33 bits 
        s : OUT STD_LOGIC_VECTOR (31 DOWNTO 0); --salida del numero
        sig : OUT STD_LOGIC;
        s_r : IN STD_LOGIC_VECTOR(1 DOWNTO 0) --Numero que determina si suma, resta o compara 
        --SUB | SLT | SLTU
    );
END sumadorRestador5Bits;

ARCHITECTURE structural OF sumadorRestador IS

    SIGNAL 

BEGIN

END structural; -- structural