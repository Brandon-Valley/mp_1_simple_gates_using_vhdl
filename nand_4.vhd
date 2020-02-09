
library ieee;
use ieee.std_logic_1164.all;


entity nand_4 is
  port ( i_a : in  std_logic;
         i_b : in  std_logic;
         i_c : in  std_logic;
         i_d : in  std_logic;
         o_f : out std_logic);
end nand_4;

architecture cmpnt of nand_4 is
  component and_gate is
    port ( i_a : in  std_logic;
           i_b : in  std_logic;
           o_f : out std_logic);
    end component and_gate;
    
    signal f_1_o : std_logic; -- temp outs for and_gates
    signal f_2_o : std_logic; 
    signal f_3_o : std_logic; 
    
  begin
    and_gate_1 : and_gate port map (i_a, i_b, o_f);
  end architecture cmpnt;
    







