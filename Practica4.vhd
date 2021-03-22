--Este es el componente donde instanciamos todo
--LA ALU 

LIBRARY IEEE;
USE IEEE.std_logic_1164.ALL;
USE IEEE.numeric_std.ALL;

ENTITY Practica4 IS
    GENERIC (
        g_data_w : INTEGER := 32
    );
    PORT (
        a, b : IN STD_LOGIC_VECTOR(g_data_w - 1 DOWNTO 0);
        shamt : IN STD_LOGIC_VECTOR(4 DOWNTO 0);
        alu_op : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
        alu_out : OUT STD_LOGIC_VECTOR(g_data_w - 1 DOWNTO 0);
        z, it, g_e : OUT STD_LOGIC
    );

END Practica4;

ARCHITECTURE structural OF Practica4 IS
    --Metemos las señales intermedias por aqui, hold 
    SIGNAL s0,s1,s2,s3,s4,s5,s6,s7,s8, s9, sal: std_logic_vector(g_data_w -1 downto 0);
    SIGNAL a_extends,b_extends: std_logic_vector(g_data_w downto 0);
    SIGNAL sig: std_logic;
BEGIN

    ExtendSignoa : ENTITY work.ExtendedorSigno
        PORT MAP(
            alu_op <= alu_op,
            entrada <= a,
            salida <= a_extends;
        );
    
    ExtendSignob : entity work.extendSigno
        port map(
            alu_op <= alu_op, 
            entrada <= b, 
            salida <= b_extends;
        )

    Desplazador : ENTITY work.Desplazador
        PORT MAP(
            entrada <=
            shamt <=
            salida <=
            alu_op <=
        );

    --Tenemos que re-escribirla y separarlas a componentes diferentes
    FuncionesLogic : ENTITY work.FuncionesLogicas
        PORT MAP(
            a <= a, 
            b <= b, 
            salida <=
            alu_op <=
        );

    SumadorRestador : ENTITY work.SumadorRestadorComparador
        PORT MAP(
            a <= a_extends,
            b <= b_extends,
            s <= s0,
            s_r <= alu_op,
            sig <= sig;
        );

    Multiplexor : ENTITY work.Multiplexor
        PORT MAP(
            e0 <= s0,
            e1 <= s1,
            e2 <= s2,
            e3 <= s3,
            e4 <= s4,
            e5 <= s5,
            e6 <= s6,
            e7 <= s7,
            e8 <= s8,
            e9 <= s9,
            alu_op <=
            alu_out <= sal;
        );

    z <= '1' WHEN a = b ELSE
        '0';
    it <= sig_s;

    g_e <= NOT(sig_s);

END structural; -- structural