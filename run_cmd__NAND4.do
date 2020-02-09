project compileall
vsim -voptargs=+acc work.NAND4_tb
 
add wave -position insertpoint  \
sim:/NAND4_tb/i_a \
sim:/NAND4_tb/i_b \
sim:/NAND4_tb/i_c \
sim:/NAND4_tb/i_d \
sim:/NAND4_tb/o_f

run -all