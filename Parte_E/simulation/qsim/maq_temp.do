onerror {quit -f}
vlib work
vlog -work work maq_temp.vo
vlog -work work maq_temp.vt
vsim -novopt -c -t 1ps -L cycloneiii_ver -L altera_ver -L altera_mf_ver -L 220model_ver -L sgate work.maq_temp_vlg_vec_tst
vcd file -direction maq_temp.msim.vcd
vcd add -internal maq_temp_vlg_vec_tst/*
vcd add -internal maq_temp_vlg_vec_tst/i1/*
add wave /*
run -all
