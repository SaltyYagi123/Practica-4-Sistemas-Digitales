LIBRARY IEEE;
USE IEEE.std_logic_1164.ALL;
USE IEEE.numeric_std.ALL;

ENTITY SumadorRestador IS
    GENERIC (n_bits : INTEGER := 33);
    PORT (
        a, b : IN STD_LOGIC_VECTOR(n_bits - 1 DOWNTO 0); --Entrada
        s : OUT STD_LOGIC_VECTOR(n_bits - 2 DOWNTO 0); --Salida 
        s_r : IN STD_LOGIC(3 DOWNTO 0); --1 para resta o comparacion, 0 para sumar 
        sig : OUT STD_LOGIC; --Sacamos el signo
    );
END SumadorRestador;

ARCHITECTURE structural OF SumadorRestador IS
    SIGNAL resultado : STD_LOGIC_VECTOR(n_bits - 1 DOWNTO 0); --Resultado de 33 bits intermedio
BEGIN
    IF (s_r = "1000" OR s_r = "0011") THEN --Resta or SLT 
        --Hacemos la resta porque 
        resultado <= a - b;
        s <= resultado(n_bits - 2 DOWNTO 0);
        if (s_r = "0011") then 
            sig <= resultado(n_bits);
        end if;
    ELSE IF (s_r = "0000") THEN --Suma 
            resultado <= a + b;
            s <= resultado(n_bits - 2 DOWNTO 0);
            sig <= resultado(n_bits);
    ELSE IF (s_r = "0010") THEN --Set on Less Than Unsigned 
        IF (unsigned(a) < unsigned(b)) THEN
            sig <= '1';
        END IF;

    END IF;
END structural;

-- RECORDATORIO IMPORTANTE AL INSTANCIAR TODOS LOS COMPONENTES EN LA PRAC FINAL
-- El Sig tiene que unirse al mux como "000..000"&sig donde tenemos 31 0