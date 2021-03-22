LIBRARY IEEE;
USE IEEE.std_logic_1164.ALL;
USE IEEE.numeric_std.ALL;
USE IEEE.std_logic_unsigned.ALL;

ENTITY SumadorRestadorComparador IS
	GENERIC (n_bits : INTEGER := 33);
	PORT (
		a, b : IN STD_LOGIC_VECTOR(n_bits - 1 DOWNTO 0); --Entrada
		s : OUT STD_LOGIC_VECTOR(n_bits - 2 DOWNTO 0); --Salida 
		s_r : IN STD_LOGIC_VECTOR(3 DOWNTO 0); --1 para resta o comparacion, 0 para sumar 
		sig : OUT STD_LOGIC --Sacamos el signo
	);
END SumadorRestadorComparador;

ARCHITECTURE behavioral OF SumadorRestadorComparador IS
	SIGNAL resultado : STD_LOGIC_VECTOR(n_bits - 1 DOWNTO 0); --Resultado de 33 bits intermedio
	SIGNAL s_r_s : STD_LOGIC_VECTOR(3 DOWNTO 0);
	SIGNAL salida_s: std_LOGIC_VECTOR(n_bits -2 downto 0);
BEGIN
	s_r_s <= s_r;

	PROCESS (s_r_s, a, b)
	BEGIN
		IF (s_r_s = "1000" OR s_r_s = "0011") THEN --Resta or SLT 
			--Hacemos la resta porque si a es menor que b -> a - b da negativo por lo tanto 1 
			resultado <= a - b;
			salida_s <= resultado(n_bits - 2 DOWNTO 0);
			IF (s_r = "0011") THEN
				sig <= resultado(n_bits);
			END IF;
		ELSIF (s_r_s = "0000") THEN --Suma 
				resultado <= a + b;
				salida_s <= resultado(n_bits - 2 DOWNTO 0);
				sig <= resultado(n_bits);
		ELSIF (s_r_s = "0010") THEN --Set on Less Than Unsigned 
				IF (unsigned(a) < unsigned(b)) THEN
					sig <= '1';
				END IF;
		END IF;
		
		s <= salida_s;
	END PROCESS;
END behavioral;

		-- RECORDATORIO IMPORTANTE AL INSTANCIAR TODOS LOS COMPONENTES EN LA PRAC FINAL
		-- El Sig tiene que unirse al mux como "000..000"&sig donde tenemos 31 0's