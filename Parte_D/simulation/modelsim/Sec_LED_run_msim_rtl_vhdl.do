transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vcom -93 -work work {C:/Users/Juan/Desktop/TP_N5_TyDD2/Parte_D/Sec_LED.vhd}

