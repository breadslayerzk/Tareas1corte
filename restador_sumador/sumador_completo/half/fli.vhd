library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity fli is 
	port
		(A : in std_logic_vector (3 downto 0);
		 B : in std_logic_vector (3 downto 0);
		 C : in std_logic;
		
		 F : out std_logic_vector (3 downto 0);
		 G : out std_logic );
end entity;

architecture bacano of fli is 

component system is 
	port
		(A : in std_logic;
		 B : in std_logic;
		 C : in std_logic;
		 
		 F : out std_logic;
		 G : out std_logic);
end component;
signal C1, C2 ,C3 :std_logic;
begin 
	A1 : system port map (A(0), B(0),C,F(0),C1) ;
	A2 : system port map (A(1), B(1),C1,F(1),C2) ;
	A3	: system port map (A(2), B(2),C2,F(2),C3) ;
	A4 : system port map (A(3), B(3),C3,F(3),G) ;
end architecture;