project compileall
vsim -voptargs=+acc work.xor4_gate_gate_tb

add wave -position insertpoint  \
sim:/xor4_gate_gate_tb/i_a \
sim:/xor4_gate_gate_tb/i_b \
sim:/xor4_gate_gate_tb/i_c \
sim:/xor4_gate_gate_tb/i_d \
sim:/xor4_gate_gate_tb/o_f

run -all