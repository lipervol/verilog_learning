transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vlog -vlog01compat -work work +incdir+C:/Users/22060/Desktop/Quartus/myname {C:/Users/22060/Desktop/Quartus/myname/myname.v}

vlog -vlog01compat -work work +incdir+C:/Users/22060/Desktop/Quartus/myname/simulation/modelsim {C:/Users/22060/Desktop/Quartus/myname/simulation/modelsim/myname.vt}

vsim -t 1ps -L altera_ver -L lpm_ver -L sgate_ver -L altera_mf_ver -L altera_lnsim_ver -L cycloneiii_ver -L rtl_work -L work -voptargs="+acc"  myname_vlg_tst

add wave *
view structure
view signals
run -all
