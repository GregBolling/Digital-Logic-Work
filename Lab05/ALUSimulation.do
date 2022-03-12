onerror {resume}
quietly WaveActivateNextPane {} 0
add wave -noupdate /tb_reg_alu/A
add wave -noupdate /tb_reg_alu/B
add wave -noupdate /tb_reg_alu/CIN
add wave -noupdate /tb_reg_alu/COUT
add wave -noupdate /tb_reg_alu/F
add wave -noupdate /tb_reg_alu/OP
TreeUpdate [SetDefaultTree]
WaveRestoreCursors {{Cursor 1} {450000 ps} 0} {{Cursor 2} {50000 ps} 0} {{Cursor 3} {850000 ps} 0} {{Cursor 4} {1250000 ps} 0}
quietly wave cursor active 2
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
WaveRestoreZoom {0 ps} {1365740 ps}
