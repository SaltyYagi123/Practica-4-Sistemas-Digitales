LIBRARY IEEE;
USE IEEE.std_logic_1164.ALL;
USE IEEE.numeric_std.ALL;
USE IEEE.std_logic_unsigned.ALL;

ENTITY SumadorRestador IS
	GENERIC (n_bits : INTEGER := 4);
	PORT (
		a : IN STD_LOGIC_VECTOR(n_bits DOWNTO 0); --Entrada
		b : IN STD_LOGIC_VECTOR(n_bits DOWNTO 0);
		s : OUT STD_LOGIC_VECTOR(n_bits - 1 DOWNTO 0); --Salida 
		s_r : IN STD_LOGIC_VECTOR(3 DOWNTO 0); --1 para resta o comparacion, 0 para sumar 
		sig : OUT STD_LOGIC --Sacamos el signo
	);
END SumadorRestador;

ARCHITECTURE behavioral OF SumadorRestador IS
	SIGNAL s_aux : signed(n_bits DOWNTO 0);
	SIGNAL resta_aux : signed(n_bits DOWNTO 0);

BEGIN
	PROCESS (a, b, s_r)
	BEGIN
		IF s_r = "0000" THEN
			s_aux <= signed(a) + signed(b);
		ELSE
			s_aux <= signed(a) - signed(b);
		END IF;
	END PROCESS;

	resta_aux <= signed(a) - signed(b); --A-B = 1 when a < b

	s <= std_logic_vector(s_aux(n_bits-1 downto 0)); --Nos quedamos con el resto
	
	sig <= resta_aux(n_bits); --Nos quedamos con el signo 

end behavioral;
	-- RECORDATORIO IMPORTANTE AL INSTANCIAR TODOS LOS COMPONENTES EN LA PRAC FINAL
	-- El Sig tiene que unirse al mux como "000..000"&sig donde tenemos 31 0's