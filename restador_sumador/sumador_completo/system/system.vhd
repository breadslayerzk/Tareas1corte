library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity system is 
	port
		(A : in std_logic;
		 B : in std_logic;
		 C :IN std_logic;
		 
		 F : out std_logic;
		 G : out std_logic);
end entity;

architecture arquitectura of system is 

component half is 
	port
		(A : in std_logic;
		 B : in std_logic;
		 
		 F : out std_logic;
		 G : out std_logic);
end component;

signal cable1 : std_logic;
signal cable2 : std_logic;
signal cable3 : std_logic;

begin 

HA1 : half port map (A, B,cable1,cable2);
HA2 : half port map (cable1,C,F,cable3);

G <= cable2 or cable3 after 1 ns;
end architecture;