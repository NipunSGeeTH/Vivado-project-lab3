----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 02/25/2025 01:52:33 PM
-- Design Name: 
-- Module Name: TB_FA - Behavioral
-- Project Name: 
-- Target Devices: 
-- Tool Versions: 
-- Description: 
-- 
-- Dependencies: 
-- 
-- Revision:
-- Revision 0.01 - File Created
-- Additional Comments:
-- 
----------------------------------------------------------------------------------


library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity TB_FA is
--  Port ( );
end TB_FA;

architecture Behavioral of TB_FA is
COMPONENT FA

    PORT(A,B ,C_in : IN STD_LOGIC;
        C_out,S : OUT STD_LOGIC );
        END COMPONENT; 
        SIGNAL AA, BB, CIN,SS,COUT  : std_logic; 
begin
 UUT: FA PORT MAP( 
 A => AA,  
 B => BB,  
 C_in => CIN, 
  C_out => COUT,
  S=> SS

  ); 

 process 
    begin 
      AA <= '0';          -- set initial values 
     BB <= '0'; 
     CIN <= '0'; 
 
     WAIT FOR 100 ns;    -- after 100 ns change inputs 
      AA <= '0';          -- set initial values 
        BB <= '0'; 
        CIN <= '1'; 
 
     WAIT FOR 100 ns;    --change again 
     AA <= '0';          -- set initial values 
        BB <= '1'; 
        CIN <= '0'; 
     WAIT FOR 100 ns;   --change again 
    AA <= '0';          -- set initial values 
        BB <= '1'; 
        CIN <= '1'; 
 
     WAIT FOR 100 ns;   --change again 
     AA <= '1';          -- set initial values 
        BB <= '0'; 
        CIN <= '0'; 
  
--change again 
WAIT FOR 100 ns;   
  AA <= '1';          -- set initial values 
   BB <= '0'; 
   CIN <= '1'; 
WAIT FOR 100 ns;   
  AA <= '1';          -- set initial values 
   BB <= '1'; 
   CIN <= '0'; 
WAIT FOR 100 ns;    
  AA <= '1';          -- set initial values 
   BB <= '1'; 
   CIN <= '1'; 
WAIT; -- will wait forever 
end process;


end Behavioral;
