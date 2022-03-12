# Reading C:/intelFPGA/18.1/modelsim_ase/tcl/vsim/pref.tcl
cd {C:/Users/gregm/Desktop/Lab 06}
vcom -reportprogress 300 -work work {C:/Users/gregm/Desktop/Lab 06/ALU.vhd}
vcom -reportprogress 300 -work work {C:/Users/gregm/Desktop/Lab 06/gcpu_controller.vhd}
vcom -reportprogress 300 -work work {C:/Users/gregm/Desktop/Lab 06/PCOUNTER.vhd}
vcom -reportprogress 300 -work work {C:/Users/gregm/Desktop/Lab 06/ROM_32_6.vhd}
vcom -reportprogress 300 -work work {C:/Users/gregm/Desktop/Lab 06/reg_alu.vhd}
vcom -reportprogress 300 -work work {C:/Users/gregm/Desktop/Lab 06/PCOUNTER.vhd}
vcom -reportprogress 300 -work work {C:/Users/gregm/Desktop/Lab 06/reg_datapath.vhd}
vcom -reportprogress 300 -work work {C:/Users/gregm/Desktop/Lab 06/Lab06.vhd}
vcom -reportprogress 300 -work work {C:/Users/gregm/Desktop/Lab 06/tb_reg_controller.vhd}
vsim work.tb_reg_controller
do {C:/Users/gregm/Desktop/Lab 06/wave.do}
run 2 us


