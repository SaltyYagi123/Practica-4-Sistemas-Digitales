--Este es el componente donde instanciamos todo
--LA ALU observamos en el diagrama de la practica que las salidas z, it, g_e son extensiones que se asignan aqui directamente 


LIBRARY IEEE;
USE IEEE.std_logic_1164.ALL;
USE IEEE.numeric_std.ALL;

ENTITY Practica4 IS
    GENERIC (
        g_data_w : INTEGER := 4
    );
    PORT (
        a, b : IN STD_LOGIC_VECTOR(g_data_w - 1 DOWNTO 0);
        shamt : IN STD_LOGIC_VECTOR(1 DOWNTO 0);
        alu_op : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
        alu_out : OUT STD_LOGIC_VECTOR(g_data_w - 1 DOWNTO 0);
        z, it, g_e : OUT STD_LOGIC
    );

END Practica4;

ARCHITECTURE structural OF Practica4 IS
    --Metemos las señales intermedias por aqui, hold 
    SIGNAL s_sumaResta, s_slt_u, s_sll, s_srl, s_sra, s_xor, s_or, s_and : STD_LOGIC_VECTOR(g_data_w - 1 DOWNTO 0);
    SIGNAL a_extends, b_extends : STD_LOGIC_VECTOR(g_data_w DOWNTO 0);
    SIGNAL sig_s : STD_LOGIC;
BEGIN

    ExtendSignoA_i : ENTITY work.ExtendedorSigno
        PORT MAP(
            alu_op => alu_op,
            entrada => a,
            salida => a_extends
        );

    ExtendSignoB_i : ENTITY work.ExtendedorSigno
        PORT MAP(
            alu_op => alu_op,
            entrada => b,
            salida => b_extends
        );

    Desplazador_i : ENTITY work.Desplazador
        PORT MAP(
            entrada => a,
            shamt => shamt,
            alu_op => alu_op,
            salida_sll => s_sll,
            salida_srl => s_srl,
            salida_sra => s_sra
        );

    --Tenemos que re-escribirla y separarlas a componentes diferentes
    FuncionXor_i : ENTITY work.ComponenteXor
        PORT MAP(
            a => a,
            b => b,
            salida => s_xor,
            alu_op => alu_op
        );

    FuncionAnd_i : ENTITY work.ComponenteAnd
        PORT MAP(
            a => a,
            b => b,
            salida => s_and,
            alu_op => alu_op
        );

    FunctionOr_i : ENTITY work.ComponenteOr
        PORT MAP(
            a => a,
            b => b,
            salida => s_or,
            alu_op => alu_op
        );

    SumadorRestador_i : ENTITY work.SumadorRestadorComparador
        PORT MAP(
            a => a_extends,
            b => b_extends,
            s => s_sumaResta,
            s_r => alu_op,
            sig => sig_s
        );

    Multiplexor_i : ENTITY work.Multiplexor
        PORT MAP(
            s_sumaResta => s_sumaResta,
            s_slt_u => s_slt_u,
            s_sll => s_sll,
            s_srl => s_srl,
            s_sra => s_sra,
            s_xor => s_xor,
            s_or => s_or,
            s_and => s_and,
            alu_out => alu_out,
				alu_op => alu_op
        );

    z <= '1' WHEN a = b ELSE
        '0';
    it <= sig_s;

    g_e <= NOT(sig_s);

END structural; -- structural