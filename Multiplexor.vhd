--Esto es un multiplexor 10 a 1 para bits de 32  

LIBRARY IEEE;
USE IEEE.std_logic_1164.ALL;
USE IEEE.numeric_std.ALL;

ENTITY Multiplexor IS
  GENERIC (
    g_data_w : INTEGER := 32;
    c : INTEGER := 4
  );
  PORT (
    alu_op : IN STD_LOGIC_VECTOR(c - 1 DOWNTO 0);
    s_sumaResta, s_slt_u : IN STD_LOGIC_VECTOR(g_data_w - 1 DOWNTO 0);
    s_sll, s_srl : IN STD_LOGIC_VECTOR(g_data_w - 1 DOWNTO 0);
    s_sra, s_xor, s_or, s_and : IN STD_LOGIC_VECTOR(g_data_w - 1 DOWNTO 0);
    alu_out : OUT STD_LOGIC_VECTOR(g_data_w - 1 DOWNTO 0));

END Multiplexor;

ARCHITECTURE behavioral OF Multiplexor IS
  CONSTANT ceros : STD_LOGIC_VECTOR(g_data_w - 1 DOWNTO 0) := (OTHERS => '0');
BEGIN
  WITH alu_op SELECT
    alu_out <=
    s_sumaResta WHEN "0000", --Suma
    s_sumaResta WHEN "0001", --Resta
    s_slt_u WHEN "0010", --Set on less than 
    s_slt_u WHEN "0011", --Set on less than unsigned 
    s_sll WHEN "0100", --Shift left Logic
    s_srl WHEN "0101", --Shift Right logic
    s_sra WHEN "0110", --Shift Right Arithmetic
    s_xor WHEN "0111", --XOR 
    s_or WHEN "1000", --OR 
    s_and WHEN "1001", --AND
    (OTHERS => '0') WHEN OTHERS;

  

END behavioral; -- behavioral