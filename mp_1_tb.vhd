library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;


entity nand_4_tb is
end entity nand_4_tb;

architecture verify of nand_4_tb is
  signal i_a : std_logic;
  signal i_b : std_logic;
  signal i_c : std_logic;
  signal i_d : std_logic;
  signal o_f : std_logic;

begin
  duv: entity work.nand_4(cmpnt)
    port map( i_a => i_a,
              i_b => i_b,
              i_c => i_c,
              i_d => i_d,
              o_f => o_f);
              
  apply_test_cases : process is
    procedure apply_test
      ( a_test, b_test : in std_logic) is
    begin 
      i_a <= a_test;
      i_b <= b_test;
      wait for 1 ms;
    end procedure apply_test;
    
  begin
    -- test
    apply_test('0', '0');
    apply_test('0', '1');

    
    wait;
end process apply_test_cases;

end architecture verify;
    
    
    
    
    
    
    

    

    


    



    




  
  

