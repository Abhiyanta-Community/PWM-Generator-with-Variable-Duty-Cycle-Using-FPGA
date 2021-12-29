onerror {quit -f}
vlib work
vlog -work work pwm_5_variation.vo
vlog -work work pwm_5_variation.vt
vsim -novopt -c -t 1ps -L cycloneii_ver -L altera_ver -L altera_mf_ver -L 220model_ver -L sgate work.pwm_5_variation_vlg_vec_tst
vcd file -direction pwm_5_variation.msim.vcd
vcd add -internal pwm_5_variation_vlg_vec_tst/*
vcd add -internal pwm_5_variation_vlg_vec_tst/i1/*
add wave /*
run -all
