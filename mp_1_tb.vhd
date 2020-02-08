library ieee;
use ieee.std_logic_1164.all;


entity gate_1_tb is
end entity gate_1_tb;

architecture verify of gate_1_tb is
  signal A : std_logic;
  signal B : std_logic;
  signal F : std_logic;  

begin
  duv: entity work.and_gate(behavior)
    port map( A => A,
              B => B,
              F => F);
              
  apply_test_cases : process is
    procedure apply_test
      ( a_test ,b_test : in std_logic) is
    begin 
      A <= a_test;
      B <= b_test;
      wait for 1 ms;
    end procedure apply_test;
    
  begin
    apply_test('0', '0');
    apply_test('0', '1');
    apply_test('1', '0');
    apply_test('1', '1');
    apply_test('0', '0');
    wait;
end process apply_test_cases;

end architecture verify;
    
    
    
    
    
    
    

    

    


    



    




  
  

