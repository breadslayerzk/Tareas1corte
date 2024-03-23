library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity complee is
port 
		(A : in std_logic_vector (3 downto 0);
		 B : in std_logic_vector (3 downto 0);
		 C : in std_logic;
		 
		 F : out std_logic_vector (6 downto 0);
		 G : out std_logic_vector (6 downto 0);
		 H : out std_logic);
end entity;

architecture arquitetura of complee is
component restador is
port (a : in std_logic_vector (3 downto 0);
		b : in std_logic_vector (3 downto 0);
		c : in std_logic;
		f : out std_logic_vector(3 downto 0);
		g :out std_logic );
end component;

component bcd is
    port (IA ,IB ,IC ,ID : in std_logic ;
	 ABCDEFG: out std_logic_vector (6 downto 0));
end component;
component tabla is
    port (B ,C ,D,E : in std_logic ;
	 ABCDEFG: out std_logic_vector (7 downto 0));
end component;

signal cable1 : std_logic_vector(3 downto 0);
signal cable2 : std_logic ;
signal cable3 : std_logic_vector(7 downto 0);

begin
	U1 : restador port map (A => A,B => B, c =>'0',f => cable1,g => H);
	U2 : tabla port map ( B=> cable1(3), C=>cable1(2),D=>cable1(1),E=> cable1(0),ABCDEFG =>cable3);
	U3 : bcd port map (IA => cable3(7), IB => cable3(6), IC =>cable3(5), ID =>cable3(4), ABCDEFG =>G ); 
	U4 : bcd port map (IA => cable3(3), IB => cable3(2), IC =>cable3(1), ID =>cable3(0), ABCDEFG =>F );
	
end arquitetura;
