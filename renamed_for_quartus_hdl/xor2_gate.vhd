
library ieee;
use ieee.std_logic_1164.all;


entity xor2_gate_gate_gate is
  port ( i_a : in  std_logic;
         i_b : in  std_logic;
         o_f : out std_logic);
end xor2_gate_gate_gate;


architecture cmpnt of xor2_gate_gate_gate is
  component and2_gate is
    port ( i_a : in  std_logic;
           i_b : in  std_logic;
           o_f : out std_logic);
  end component and2_gate;
  
  component or2_gate_gate is
    port ( i_a : in  std_logic;
           i_b : in  std_logic;
           o_f : out std_logic);
  end component or2_gate_gate;
    
  component not1_gate is
    port ( i_a : in  std_logic;
           o_f : out std_logic);
  end component not1_gate;
    
  -- temp outs for and2_gates
  signal or_1_o  : std_logic; 
  signal and_1_o : std_logic; 
  signal not_1_o : std_logic; 
    
  begin
    OR_1  : or2_gate_gate  port map (i_a,     i_b,     or_1_o );
    AND_1 : and2_gate port map (i_a,     i_b,     and_1_o);
    NOT_1 : not1_gate port map (and_1_o, not_1_o         );
    AND_2 : and2_gate port map (or_1_o,  not_1_o, o_f    );
end architecture cmpnt;
    
    








