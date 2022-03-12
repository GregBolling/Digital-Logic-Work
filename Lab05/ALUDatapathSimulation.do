onerror {resume}
quietly WaveActivateNextPane {} 0
add wave -noupdate /tb_reg_datapath/BUS_IN
add wave -noupdate /tb_reg_datapath/BUS_OUT
add wave -noupdate /tb_reg_datapath/CIN
add wave -noupdate /tb_reg_datapath/CLK
add wave -noupdate /tb_reg_datapath/COUT
add wave -noupdate /tb_reg_datapath/LDA
add wave -noupdate /tb_reg_datapath/LDB
add wave -noupdate /tb_reg_datapath/OP
add wave -noupdate /tb_reg_datapath/SEL1
add wave -noupdate /tb_reg_datapath/SEL2
add wave -noupdate /tb_reg_datapath/reset
add wave -noupdate /tb_reg_datapath/TheRegDatapath/RegisterB
add wave -noupdate /tb_reg_datapath/TheRegDatapath/RegisterA
TreeUpdate [SetDefaultTree]
WaveRestoreCursors {{Cursor 1} {0 ps} 0}
quietly wave cursor active 0
configure wave -namecolwidth 150
configure wave -valuecolwidth 100
configure wave -justifyvalue left
configure wave -signalnamewidth 0
configure wave -snapdistance 10
configure wave -datasetprefix 0
configure wave -rowmargin 4
configure wave -childrowmargin 2
configure wave -gridoffset 0
configure wave -gridperiod 1
configure wave -griddelta 40
configure wave -timeline 0
configure wave -timelineunits ps
update
WaveRestoreZoom {0 ps} {1 ns}
