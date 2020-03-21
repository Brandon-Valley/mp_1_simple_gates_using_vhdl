project compileall
vsim -voptargs=+acc work.or4_gate_tb
 
add wave -position insertpoint  \
sim:/or4_gate_tb/i_a \
sim:/or4_gate_tb/i_b \
sim:/or4_gate_tb/i_c \
sim:/or4_gate_tb/i_d \
sim:/or4_gate_tb/o_f

run -all