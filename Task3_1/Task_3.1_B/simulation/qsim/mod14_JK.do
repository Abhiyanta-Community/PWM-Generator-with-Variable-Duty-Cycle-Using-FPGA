onerror {quit -f}
vlib work
vlog -work work mod14_JK.vo
vlog -work work mod14_JK.vt
vsim -novopt -c -t 1ps -L cycloneii_ver -L altera_ver -L altera_mf_ver -L 220model_ver -L sgate work.mod14_JK_vlg_vec_tst
vcd file -direction mod14_JK.msim.vcd
vcd add -internal mod14_JK_vlg_vec_tst/*
vcd add -internal mod14_JK_vlg_vec_tst/i1/*
add wave /*
run -all
