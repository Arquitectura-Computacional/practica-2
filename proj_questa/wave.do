onerror {resume}
quietly WaveActivateNextPane {} 0
add wave -noupdate /RISC_V_Single_Cycle_TB/DUV/clk
add wave -noupdate /RISC_V_Single_Cycle_TB/DUV/reset
add wave -noupdate -expand -group {TOWER A} {/RISC_V_Single_Cycle_TB/DUV/DATA_MEMORY/ram[2]}
add wave -noupdate -expand -group {TOWER A} {/RISC_V_Single_Cycle_TB/DUV/DATA_MEMORY/ram[1]}
add wave -noupdate -expand -group {TOWER A} {/RISC_V_Single_Cycle_TB/DUV/DATA_MEMORY/ram[0]}
add wave -noupdate -expand -group {TOWER B} {/RISC_V_Single_Cycle_TB/DUV/DATA_MEMORY/ram[5]}
add wave -noupdate -expand -group {TOWER B} {/RISC_V_Single_Cycle_TB/DUV/DATA_MEMORY/ram[4]}
add wave -noupdate -expand -group {TOWER B} {/RISC_V_Single_Cycle_TB/DUV/DATA_MEMORY/ram[3]}
add wave -noupdate -expand -group {TOWER C} {/RISC_V_Single_Cycle_TB/DUV/DATA_MEMORY/ram[8]}
add wave -noupdate -expand -group {TOWER C} {/RISC_V_Single_Cycle_TB/DUV/DATA_MEMORY/ram[7]}
add wave -noupdate -expand -group {TOWER C} {/RISC_V_Single_Cycle_TB/DUV/DATA_MEMORY/ram[6]}
add wave -noupdate -expand -group a0 /RISC_V_Single_Cycle_TB/DUV/REGISTER_FILE_UNIT/Register_a0/enable
add wave -noupdate -expand -group a0 /RISC_V_Single_Cycle_TB/DUV/REGISTER_FILE_UNIT/Register_a0/DataInput
add wave -noupdate -expand -group a0 /RISC_V_Single_Cycle_TB/DUV/REGISTER_FILE_UNIT/Register_a0/DataOutput
add wave -noupdate -expand -group a1 /RISC_V_Single_Cycle_TB/DUV/REGISTER_FILE_UNIT/Register_a1/enable
add wave -noupdate -expand -group a1 /RISC_V_Single_Cycle_TB/DUV/REGISTER_FILE_UNIT/Register_a1/DataInput
add wave -noupdate -expand -group a1 /RISC_V_Single_Cycle_TB/DUV/REGISTER_FILE_UNIT/Register_a1/DataOutput
add wave -noupdate -expand -group a2 /RISC_V_Single_Cycle_TB/DUV/REGISTER_FILE_UNIT/Register_a2/enable
add wave -noupdate -expand -group a2 /RISC_V_Single_Cycle_TB/DUV/REGISTER_FILE_UNIT/Register_a2/DataInput
add wave -noupdate -expand -group a2 /RISC_V_Single_Cycle_TB/DUV/REGISTER_FILE_UNIT/Register_a2/DataOutput
add wave -noupdate -expand -group s0 /RISC_V_Single_Cycle_TB/DUV/REGISTER_FILE_UNIT/Register_s0_fp/enable
add wave -noupdate -expand -group s0 /RISC_V_Single_Cycle_TB/DUV/REGISTER_FILE_UNIT/Register_s0_fp/DataInput
add wave -noupdate -expand -group s0 /RISC_V_Single_Cycle_TB/DUV/REGISTER_FILE_UNIT/Register_s0_fp/DataOutput
add wave -noupdate -expand -group s1 /RISC_V_Single_Cycle_TB/DUV/REGISTER_FILE_UNIT/Register_s1/enable
add wave -noupdate -expand -group s1 /RISC_V_Single_Cycle_TB/DUV/REGISTER_FILE_UNIT/Register_s1/DataInput
add wave -noupdate -expand -group s1 /RISC_V_Single_Cycle_TB/DUV/REGISTER_FILE_UNIT/Register_s1/DataOutput
add wave -noupdate -expand -group t0 /RISC_V_Single_Cycle_TB/DUV/REGISTER_FILE_UNIT/Register_t0/enable
add wave -noupdate -expand -group t0 /RISC_V_Single_Cycle_TB/DUV/REGISTER_FILE_UNIT/Register_t0/DataInput
add wave -noupdate -expand -group t0 /RISC_V_Single_Cycle_TB/DUV/REGISTER_FILE_UNIT/Register_t0/DataOutput
TreeUpdate [SetDefaultTree]
WaveRestoreCursors {{Cursor 1} {429 ns} 0}
quietly wave cursor active 1
configure wave -namecolwidth 150
configure wave -valuecolwidth 100
configure wave -justifyvalue left
configure wave -signalnamewidth 1
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
WaveRestoreZoom {0 ns} {102 ns}
