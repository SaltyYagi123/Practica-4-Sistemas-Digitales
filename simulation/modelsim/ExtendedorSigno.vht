-- Copyright (C) 1991-2013 Altera Corporation
-- Your use of Altera Corporation's design tools, logic functions 
-- and other software and tools, and its AMPP partner logic 
-- functions, and any output files from any of the foregoing 
-- (including device programming or simulation files), and any 
-- associated documentation or information are expressly subject 
-- to the terms and conditions of the Altera Program License 
-- Subscription Agreement, Altera MegaCore Function License 
-- Agreement, or other applicable license agreement, including, 
-- without limitation, that your use is for the sole purpose of 
-- programming logic devices manufactured by Altera and sold by 
-- Altera or its authorized distributors.  Please refer to the 
-- applicable agreement for further details.

-- ***************************************************************************
-- This file contains a Vhdl test bench template that is freely editable to   
-- suit user's needs .Comments are provided in each section to help the user  
-- fill out necessary details.                                                
-- ***************************************************************************
-- Generated on "03/24/2021 09:04:53"
                                                            
-- Vhdl Test Bench template for design  :  ExtendedorSigno
-- 
-- Simulation tool : ModelSim-Altera (VHDL)
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;     
USE ieee.numeric_std.all;                           

ENTITY ExtendedorSigno_vhd_tst IS
END ExtendedorSigno_vhd_tst;
ARCHITECTURE ExtendedorSigno_arch OF ExtendedorSigno_vhd_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL alu_op : STD_LOGIC_VECTOR(3 DOWNTO 0);
SIGNAL entrada : STD_LOGIC_VECTOR(3 DOWNTO 0);
SIGNAL salida : STD_LOGIC_VECTOR(4 DOWNTO 0);
COMPONENT ExtendedorSigno
	PORT (
	alu_op : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
	entrada : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
	salida : OUT STD_LOGIC_VECTOR(4 DOWNTO 0)
	);
END COMPONENT;
BEGIN
	i1 : ExtendedorSigno
	PORT MAP (
-- list connections between master ports and signals
	alu_op => alu_op,
	entrada => entrada,
	salida => salida
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
				--Asignamos a la entrada sus diferentes valores 
				entrada <= std_logic_vector(to_unsigned(j,4));
				
				alu_op <= "0000";
				
				assert salida = std_LOGIC_VECTOR(resize(unsigned(entrada), 5))
				report  "Fallo al extender el signo como unsigned"
				severity failure;
				
				wait for 100 ns;
				alu_op <= "1000";
				
				assert salida = std_LOGIC_VECTOR(resize(unsigned(entrada), 5))
				report  "Fallo al extender el signo como unsigned"
				severity failure;
				wait for 100 ns;
				
				alu_op <= "0010";
				
				assert salida = std_LOGIC_VECTOR(resize(signed(entrada), 5))
				report "Fallo al extender el signo como signed"
				severity failure;
				wait for 100 ns;
				
				alu_op <= "0011";
				
				assert salida = std_LOGIC_VECTOR(resize(unsigned(entrada), 5))
				report  "Fallo al extender el signo como unsigned"
				severity failure;
				wait for 100 ns;
			
		end loop;
	
	assert false 
	report "Fin de la simulacion"
	severity failure;
	
WAIT;                                                        
END PROCESS always;                                          
END ExtendedorSigno_arch;
