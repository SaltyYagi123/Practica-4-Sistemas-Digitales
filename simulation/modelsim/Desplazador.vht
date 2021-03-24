--ORDEN DE HERARQUIA PARA EL TESTBENCH 
--1.- ALU_op
--2.- MODIFICAMOS LA ENTRADA 
--3.-MODIFICAMOS EL NUMERO DE LA SHAMT  
LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;   
USE ieee.numeric_std.all;                             

ENTITY Desplazador_vhd_tst IS
END Desplazador_vhd_tst;
ARCHITECTURE Desplazador_arch OF Desplazador_vhd_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL alu_op : STD_LOGIC_VECTOR(3 DOWNTO 0);
SIGNAL entrada : STD_LOGIC_VECTOR(3 DOWNTO 0);
SIGNAL salida_sll : STD_LOGIC_VECTOR(3 DOWNTO 0);
SIGNAL salida_sra : STD_LOGIC_VECTOR(3 DOWNTO 0);
SIGNAL salida_srl : STD_LOGIC_VECTOR(3 DOWNTO 0);
SIGNAL shamt : STD_LOGIC_VECTOR(4 DOWNTO 0);
COMPONENT Desplazador
	PORT (
	alu_op : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
	entrada : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
	salida_sll : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
	salida_sra : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
	salida_srl : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
	shamt : IN STD_LOGIC_VECTOR(4 DOWNTO 0)
	);
END COMPONENT;
BEGIN
	i1 : Desplazador
	PORT MAP (
-- list connections between master ports and signals
	alu_op => alu_op,
	entrada => entrada,
	salida_sll => salida_sll,
	salida_sra => salida_sra,
	salida_srl => salida_srl,
	shamt => shamt
	);
init : PROCESS                                               
-- variable declarations                                     
BEGIN                                                        
        -- code that executes only once                      
WAIT;                                                       
END PROCESS init;                                           
always : PROCESS                                              
-- optional sensitivity list                                  
-- (        )                                                 
-- variable declarations                                      
BEGIN                                                         
        -- code executes for every event on sensitivity list  
		 for j in 0 to 15 loop 
			alu_op <= std_LOGIC_VECTOR(to_unsigned(j,4));
			
			for i in 0 to 15 loop 
				entrada <= std_logic_vector(to_unsigned(i,4));
				
				for k in 0 to 4 loop 
					shamt <= std_logic_vector(to_unsigned(k,5));
					wait for 20 ns;
				end loop;
				
				wait for 10 ns;
			end loop;
			
			wait for 100ns;
			
		 end loop;
WAIT;                                                        
END PROCESS always;                                          
END Desplazador_arch;
