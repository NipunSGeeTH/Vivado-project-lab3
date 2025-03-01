----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 02/25/2025 04:23:50 PM
-- Design Name: 
-- Module Name: TB_4_RCA - Behavioral
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

entity TB_4_RCA is
--  Port ( );
end TB_4_RCA;

architecture Behavioral of TB_4_RCA is
COMPONENT RCA_4

    PORT(A0,A1,A2,A3,B0,B1,B2,B3,C_in : IN STD_LOGIC;
        C_out,S0,S1,S2,S3 : OUT STD_LOGIC );
        END COMPONENT; 
        SIGNAL A0,A1,A2,A3,B0,B1,B2,B3,C_in ,C_out,S0,S1,S2,S3 : std_logic; 
begin
 UUT: RCA_4 PORT MAP( 
A0 => A0, 
A1 => A1,  
A2 => A2,  
A3 => A3,   
B0 => B0,
B1 => B1,
B2 => B2,
B3 => B3, 
C_in => '0',
C_out => C_out,
S0 => S0,
S1 => S1,
S2 => S2,
S3 => S3
 ); 

 process 
    begin 
     A0 <= '0';  
     A1 <= '0';   
     A2 <= '0';   
     A3 <= '1';           -- index number 1 
     B0 <= '1'; 
     B1 <= '1'; 
     B2 <= '0'; 
     B3 <= '0'; 
     C_in <= '0'; 
    
 
     WAIT FOR 100 ns;    -- after 100 ns change inputs 
     
        A0 <= '0';  
      A1 <= '1';   
      A2 <= '0';   
      A3 <= '1';           -- index number 2
      B0 <= '1'; 
      B1 <= '0'; 
      B2 <= '1'; 
      B3 <= '1'; 
      C_in <= '0'; 



 WAIT FOR 100 ns;    -- after 100 ns change inputs 
     
        A0 <= '0';  
      A1 <= '1';   
      A2 <= '1';   
      A3 <= '1';           -- random number 1
      B0 <= '1'; 
      B1 <= '0'; 
      B2 <= '0'; 
      B3 <= '1'; 
      C_in <= '0'; 
  
  
   WAIT FOR 100 ns;    -- after 100 ns change inputs 
          
             A0 <= '0';  
           A1 <= '1';   
           A2 <= '1';   
           A3 <= '1';           -- random number 2
           B0 <= '1'; 
           B1 <= '0'; 
           B2 <= '1'; 
           B3 <= '1'; 
           C_in <= '0'; 
           
            WAIT FOR 100 ns;    -- after 100 ns change inputs 
               
                  A0 <= '0';  
                A1 <= '0';   
                A2 <= '1';   
                A3 <= '0';           -- random number 3
                B0 <= '1'; 
                B1 <= '0'; 
                B2 <= '0'; 
                B3 <= '1'; 
                C_in <= '0';
                
            WAIT FOR 100 ns;    -- after 100 ns change inputs 
                    
                       A0 <= '0';  
                     A1 <= '1';   
                     A2 <= '1';   
                     A3 <= '0';           -- random number 4
                     B0 <= '1'; 
                     B1 <= '1'; 
                     B2 <= '0'; 
                     B3 <= '1'; 
                     C_in <= '0';  
                     
                     
                 WAIT FOR 100 ns;    -- after 100 ns change inputs 
                                        
                                           A0 <= '0';  
                                         A1 <= '1';   
                                         A2 <= '0';   
                                         A3 <= '0';           -- random number 4
                                         B0 <= '1'; 
                                         B1 <= '1'; 
                                         B2 <= '1'; 
                                         B3 <= '1'; 
                                         C_in <= '0'; 
                                         
                                         
                                       WAIT FOR 100 ns;    -- after 100 ns change inputs 
                                                            
                                                               A0 <= '0';  
                                                             A1 <= '1';   
                                                             A2 <= '1';   
                                                             A3 <= '0';           -- random number 4
                                                             B0 <= '1'; 
                                                             B1 <= '1'; 
                                                             B2 <= '1'; 
                                                             B3 <= '1'; 
                                                             C_in <= '0'; 

WAIT; -- will wait forever 
end process; 
end Behavioral;
