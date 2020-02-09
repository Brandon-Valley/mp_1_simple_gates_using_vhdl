project compileall
vsim -voptargs=+acc work.nand_4_tb
 
add wave -position insertpoint  \
sim:/nand_4_tb/i_a \
sim:/nand_4_tb/i_b \
sim:/nand_4_tb/i_c \
sim:/nand_4_tb/i_d \
sim:/nand_4_tb/o_f

run -all