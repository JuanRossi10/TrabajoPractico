transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vcom -93 -work work {C:/Users/Juan/Desktop/TP_N5_TyDD2/Parte_B/FF_D.vhd}
vcom -93 -work work {C:/Users/Juan/Desktop/TP_N5_TyDD2/Parte_B/SumadorCompleto.vhd}

vcom -93 -work work {C:/Users/Juan/Desktop/TP_N5_TyDD2/Parte_B/EjerSumador_tb.vhd}

vsim -t 1ps -L altera -L lpm -L sgate -L altera_mf -L altera_lnsim -L cycloneiii -L rtl_work -L work -voptargs="+acc"  EjerSumador_tb

add wave *
view structure
view signals
run 300 ns
