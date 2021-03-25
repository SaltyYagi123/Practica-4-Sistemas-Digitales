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
-- Generated on "03/25/2021 22:10:53"
                                                            
-- Vhdl Test Bench template for design  :  Practica4
-- 
-- Simulation tool : ModelSim-Altera (VHDL)
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY Practica4_vhd_tst IS
END Practica4_vhd_tst;
ARCHITECTURE Practica4_arch OF Practica4_vhd_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL a : STD_LOGIC_VECTOR(3 DOWNTO 0);
SIGNAL alu_op : STD_LOGIC_VECTOR(3 DOWNTO 0);
SIGNAL alu_out : STD_LOGIC_VECTOR(3 DOWNTO 0);
SIGNAL b : STD_LOGIC_VECTOR(3 DOWNTO 0);
SIGNAL g_e : STD_LOGIC;
SIGNAL it : STD_LOGIC;
SIGNAL shamt : STD_LOGIC_VECTOR(1 DOWNTO 0);
SIGNAL z : STD_LOGIC;
COMPONENT Practica4
	PORT (
	a : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
	alu_op : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
	alu_out : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
	b : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
	g_e : OUT STD_LOGIC;
	it : OUT STD_LOGIC;
	shamt : IN STD_LOGIC_VECTOR(1 DOWNTO 0);
	z : OUT STD_LOGIC
	);
END COMPONENT;
BEGIN
	i1 : Practica4
	PORT MAP (
-- list connections between master ports and signals
	a => a,
	alu_op => alu_op,
	alu_out => alu_out,
	b => b,
	g_e => g_e,
	it => it,
	shamt => shamt,
	z => z
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

  function ShiftLeft ( a : std_logic_vector; shamt	: std_logic_vector)
		return std_logic_vector is
		variable res : std_logic_vector (4 DOWNTO 0):= "00000";
		begin
			res := std_logic_vector(shift_left(unsigned(a),to_integer(unsigned(shamt))));
		return res;
	end function;
	
	function ShiftRight(
		a : std_logic_vector ;
		shamt	: std_logic_vector )
		return std_logic_vector is 
		variable res: std_logic_vector(4 downto 0):= "00000";
		begin 
			res := std_logic_vector(shift_right(unsigned(a),to_integer(unsigned(shamt))));
		return res;
	end function;
	
	function ShiftRightAr(
		a : std_logic_vector;
		shamt	: std_logic_vector)
		return std_logic_vector is 
		variable res: std_logic_vector(4 downto 0):= "00000";
		begin 
				res:=std_logic_vector(shift_right(signed(a),to_integer(unsigned(shamt))));
		return res;
	end function;
	
	
	function SetOnLessThan(
		a: std_logic_vector;
		b: std_logic_vector)
		return std_logic_vector is 
		variable res: std_logic_vector(4 downto 0):= "00000";
		begin 
			if (signed(a)<signed(b))then
				res:= "00001";
			else
				res:= "00000";
			end if;
		return res;
	end function;
	
	function SetOnLessThanUnsigned(
		a: std_logic_vector;
		b: std_logic_vector)
		return std_logic_vector is 
		variable res: std_logic_vector(4 downto 0) := "00000";
		begin 
			if (unsigned(a)<unsigned(b))then
				res:= "00001";
			else
				res:= "00000";
			end if;
		return res;
	end function;
	
	BEGIN 	
		a <= (others => '0');
		b <= (others => '0');
		shamt <= (others => '0');
		alu_op <= "1111"; --Cualquier valor
		wait for 1 ps;
		
		for i in (-2**(4)) to (2**(4))-1 loop  
			a <=std_logic_vector(to_signed(i,5));
			for j in (-2**(4)) to (2**(4))-1 loop
				b <=std_logic_vector(to_signed(j,5));
				wait for 1 ps;
				
				alu_op <= "0000"; -- suma
				wait for 20 ns;
				assert alu_out=std_logic_vector(to_signed(i+j,5))
					report "Error en la suma"
					severity failure;
				
				alu_op <= "1000"; -- resta
				wait for 20 ns;
				assert alu_out=std_logic_vector(to_signed(i-j,5))
					report "Error en la resta"
					severity failure;
					
				alu_op <= "0100"; -- XOR
					wait for 20 ns;
					assert alu_out = (a xor b)
						report "Fallo en XOR"
						severity failure;
						
				alu_op <= "0110"; -- OR
					wait for 20 ns;
					assert alu_out = (a or b)
						report "Fallo en OR"
						severity failure;
						
				alu_op <= "0111"; -- AND
					wait for 20 ns;
					assert alu_out = (a and b)
						report "Fallo en AND"
						severity failure;
						
				alu_op <="0010"; --SLT
					wait for 20 ns;
					assert alu_out = SetOnLessThan(a,b)
						report "Error SLT"
						severity failure;
					
				alu_op <="0011"; --SLTU
					wait for 20 ns;
					assert alu_out = SetOnLessThanUnsigned(a,b)
						report "Error SLTU"
						severity failure;	
			end loop;
				
			for k in (-2**(3)) to (2**(3))-1 loop
				shamt <=std_logic_vector(to_signed(k,5));
				wait for 1 ps;
				
				alu_op <= "0001"; -- SLL
					wait for 20 ns;
					assert alu_out = ShiftLeft(a,shamt)
						report "Fallo en SLL"
						severity failure;	
				alu_op <= "0101"; -- SRL
					wait for 20 ns;
					assert alu_out = ShiftRight(a,shamt)
						report "Fallo en SRL"
						severity failure;	
				alu_op <= "1101"; -- SRA
					wait for 20 ns;
					assert alu_out = ShiftRightAr(a,shamt)
						report "Fallo en SRA"
						severity failure;	
						
			end loop;
		end loop;
							
	assert false 
	Report "Fin de la simulacion"
	severity failure;                                                  
        -- code executes for every event on sensitivity list  
WAIT;                                                        
END PROCESS always;                                          
END Practica4_arch;
