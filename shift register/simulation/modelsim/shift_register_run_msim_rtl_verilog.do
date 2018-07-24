transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vlog -vlog01compat -work work +incdir+D:/verilog/shift\ register {D:/verilog/shift register/D_FF.v}
vlog -vlog01compat -work work +incdir+D:/verilog/shift\ register {D:/verilog/shift register/shift_register.v}

