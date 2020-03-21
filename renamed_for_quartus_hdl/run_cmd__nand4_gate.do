project compileall
vsim -voptargs=+acc work.nand4_gate_tb
 
add wave -position insertpoint  \
sim:/nand4_gate_tb/i_a \
sim:/nand4_gate_tb/i_b \
sim:/nand4_gate_tb/i_c \
sim:/nand4_gate_tb/i_d \
sim:/nand4_gate_tb/o_f

run -all