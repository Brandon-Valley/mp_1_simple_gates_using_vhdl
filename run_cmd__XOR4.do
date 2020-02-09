project compileall
vsim -voptargs=+acc work.XOR4_tb
 
add wave -position insertpoint  \
sim:/XOR4_tb/i_a \
sim:/XOR4_tb/i_b \
sim:/XOR4_tb/i_c \
sim:/XOR4_tb/i_d \
sim:/XOR4_tb/o_f

run -all