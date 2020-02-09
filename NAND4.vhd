
library ieee;
use ieee.std_logic_1164.all;


entity NAND4 is
  port ( i_a : in  std_logic;
         i_b : in  std_logic;
         i_c : in  std_logic;
         i_d : in  std_logic;
         o_f : out std_logic);
end NAND4;

architecture cmpnt of NAND4 is
  component AND2 is
    port ( i_a : in  std_logic;
           i_b : in  std_logic;
           o_f : out std_logic);
    end component AND2;
    
    -- temp outs for AND2s
    signal f_1_o : std_logic; 
    signal f_2_o : std_logic; 
    
  begin
    AND2_1 : AND2 port map (i_a,   i_b,   f_1_o);
    AND2_2 : AND2 port map (i_c,   i_d,   f_2_o);
    AND2_3 : AND2 port map (f_1_o, f_2_o, o_f);
  end architecture cmpnt;
    







