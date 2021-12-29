onerror {quit -f}
vlib work
vlog -work work Universal_SR.vo
vlog -work work Universal_SR.vt
vsim -novopt -c -t 1ps -L cycloneii_ver -L altera_ver -L altera_mf_ver -L 220model_ver -L sgate work.Universal_SR_vlg_vec_tst
vcd file -direction Universal_SR.msim.vcd
vcd add -internal Universal_SR_vlg_vec_tst/*
vcd add -internal Universal_SR_vlg_vec_tst/i1/*
add wave /*
run -all
