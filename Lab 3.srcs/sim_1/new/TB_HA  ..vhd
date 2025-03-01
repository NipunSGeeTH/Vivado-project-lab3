----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 02/25/2025 12:52:38 PM
-- Design Name: 
-- Module Name: TB_HA - Behavioral
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

entity TB_HA is
--  Port ( );
end TB_HA;

architecture Behavioral of TB_HA is
COMPONENT HA

    PORT(A,B : IN STD_LOGIC;
        C,S : OUT STD_LOGIC );
        END COMPONENT; 
        SIGNAL AA, BB, CC,SS  : std_logic; 
             
begin
 UUT: HA PORT MAP( 
 A => AA,  
 B => BB,  
 C => CC, 
 S=> SS ); 
  
  process 
    begin 
     AA <= '0';          -- set initial values 
     BB <= '0'; 
    
 
     WAIT FOR 100 ns;    -- after 100 ns change inputs 
     BB <= '1'; 
 
     WAIT FOR 100 ns;    --change again 
     BB <= '0'; 
     AA <= '1'; 
 
     WAIT FOR 100 ns;   --change again 
     BB <= '1'; 
 
 
  

WAIT; -- will wait forever 
end process; 
 
  

  

end Behavioral;
