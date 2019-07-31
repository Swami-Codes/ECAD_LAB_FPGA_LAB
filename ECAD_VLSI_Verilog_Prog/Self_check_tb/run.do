vlog  Self_check_tb/*.v
vsim -novopt adder_4_bit_tb
add wave -r *
run 1000ns 