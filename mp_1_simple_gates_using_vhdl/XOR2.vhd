
library ieee;
use ieee.std_logic_1164.all;


entity XOR2 is
  port ( i_a : in  std_logic;
         i_b : in  std_logic;
         o_f : out std_logic);
end XOR2;


architecture cmpnt of XOR2 is
  component AND2 is
    port ( i_a : in  std_logic;
           i_b : in  std_logic;
           o_f : out std_logic);
  end component AND2;
  
  component OR2 is
    port ( i_a : in  std_logic;
           i_b : in  std_logic;
           o_f : out std_logic);
  end component OR2;
    
  component NOT1 is
    port ( i_a : in  std_logic;
           o_f : out std_logic);
  end component NOT1;
    
  -- temp outs for AND2s
  signal or_1_o  : std_logic; 
  signal and_1_o : std_logic; 
  signal not_1_o : std_logic; 
    
  begin
    OR_1  : OR2  port map (i_a,     i_b,     or_1_o );
    AND_1 : AND2 port map (i_a,     i_b,     and_1_o);
    NOT_1 : NOT1 port map (and_1_o, not_1_o         );
    AND_2 : AND2 port map (or_1_o,  not_1_o, o_f    );
end architecture cmpnt;
    
    








