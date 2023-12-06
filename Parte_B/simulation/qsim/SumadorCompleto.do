onerror {quit -f}
vlib work
vlog -work work SumadorCompleto.vo
vlog -work work SumadorCompleto.vt
vsim -novopt -c -t 1ps -L cycloneiii_ver -L altera_ver -L altera_mf_ver -L 220model_ver -L sgate work.SumadorCompleto_vlg_vec_tst
vcd file -direction SumadorCompleto.msim.vcd
vcd add -internal SumadorCompleto_vlg_vec_tst/*
vcd add -internal SumadorCompleto_vlg_vec_tst/i1/*
add wave /*
run -all
