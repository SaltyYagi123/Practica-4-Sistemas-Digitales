transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vcom -93 -work work {C:/Users/stic/Desktop/Practica-4-Sistemas-Digitales-main/Desplazador.vhd}

vcom -93 -work work {C:/Users/stic/Desktop/Practica-4-Sistemas-Digitales-main/simulation/modelsim/Desplazador.vht}

vsim -t 1ps -L altera -L lpm -L sgate -L altera_mf -L altera_lnsim -L cycloneii -L rtl_work -L work -voptargs="+acc"  Desplazador_vhd_tst

add wave *
view structure
view signals
run -all
