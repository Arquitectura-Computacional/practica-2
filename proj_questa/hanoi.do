onerror {resume}
quietly WaveActivateNextPane {} 0
add wave -noupdate /RISC_V_Single_Cycle_TB/DUV/clk
add wave -noupdate /RISC_V_Single_Cycle_TB/DUV/reset
add wave -noupdate /RISC_V_Single_Cycle_TB/DUV/PROGRAM_COUNTER/PC_Value
add wave -noupdate -expand -group {TOWER A} -radix unsigned {/RISC_V_Single_Cycle_TB/DUV/DATA_MEMORY/ram[2]}
add wave -noupdate -expand -group {TOWER A} -radix unsigned {/RISC_V_Single_Cycle_TB/DUV/DATA_MEMORY/ram[1]}
add wave -noupdate -expand -group {TOWER A} -radix unsigned {/RISC_V_Single_Cycle_TB/DUV/DATA_MEMORY/ram[0]}
add wave -noupdate -expand -group {TOWER B} -radix unsigned {/RISC_V_Single_Cycle_TB/DUV/DATA_MEMORY/ram[10]}
add wave -noupdate -expand -group {TOWER B} -radix unsigned {/RISC_V_Single_Cycle_TB/DUV/DATA_MEMORY/ram[9]}
add wave -noupdate -expand -group {TOWER B} -radix unsigned {/RISC_V_Single_Cycle_TB/DUV/DATA_MEMORY/ram[8]}
add wave -noupdate -expand -group {TOWER C} -radix unsigned {/RISC_V_Single_Cycle_TB/DUV/DATA_MEMORY/ram[18]}
add wave -noupdate -expand -group {TOWER C} -radix unsigned {/RISC_V_Single_Cycle_TB/DUV/DATA_MEMORY/ram[17]}
add wave -noupdate -expand -group {TOWER C} -radix unsigned {/RISC_V_Single_Cycle_TB/DUV/DATA_MEMORY/ram[16]}
add wave -noupdate -group a0 /RISC_V_Single_Cycle_TB/DUV/REGISTER_FILE_UNIT/Register_a0/enable
add wave -noupdate -group a0 /RISC_V_Single_Cycle_TB/DUV/REGISTER_FILE_UNIT/Register_a0/DataInput
add wave -noupdate -group a0 /RISC_V_Single_Cycle_TB/DUV/REGISTER_FILE_UNIT/Register_a0/DataOutput
add wave -noupdate -group a1 /RISC_V_Single_Cycle_TB/DUV/REGISTER_FILE_UNIT/Register_a1/enable
add wave -noupdate -group a1 /RISC_V_Single_Cycle_TB/DUV/REGISTER_FILE_UNIT/Register_a1/DataInput
add wave -noupdate -group a1 /RISC_V_Single_Cycle_TB/DUV/REGISTER_FILE_UNIT/Register_a1/DataOutput
add wave -noupdate -group a2 /RISC_V_Single_Cycle_TB/DUV/REGISTER_FILE_UNIT/Register_a2/enable
add wave -noupdate -group a2 /RISC_V_Single_Cycle_TB/DUV/REGISTER_FILE_UNIT/Register_a2/DataInput
add wave -noupdate -group a2 /RISC_V_Single_Cycle_TB/DUV/REGISTER_FILE_UNIT/Register_a2/DataOutput
add wave -noupdate -group s0 /RISC_V_Single_Cycle_TB/DUV/REGISTER_FILE_UNIT/Register_s0_fp/enable
add wave -noupdate -group s0 /RISC_V_Single_Cycle_TB/DUV/REGISTER_FILE_UNIT/Register_s0_fp/DataInput
add wave -noupdate -group s0 /RISC_V_Single_Cycle_TB/DUV/REGISTER_FILE_UNIT/Register_s0_fp/DataOutput
add wave -noupdate -group s1 /RISC_V_Single_Cycle_TB/DUV/REGISTER_FILE_UNIT/Register_s1/enable
add wave -noupdate -group s1 /RISC_V_Single_Cycle_TB/DUV/REGISTER_FILE_UNIT/Register_s1/DataInput
add wave -noupdate -group s1 /RISC_V_Single_Cycle_TB/DUV/REGISTER_FILE_UNIT/Register_s1/DataOutput
add wave -noupdate -group ALU /RISC_V_Single_Cycle_TB/DUV/ALU_UNIT/ALU_Operation_i
add wave -noupdate -group ALU /RISC_V_Single_Cycle_TB/DUV/ALU_UNIT/A_i
add wave -noupdate -group ALU /RISC_V_Single_Cycle_TB/DUV/ALU_UNIT/B_i
add wave -noupdate -group ALU /RISC_V_Single_Cycle_TB/DUV/ALU_UNIT/Zero_o
add wave -noupdate -group ALU /RISC_V_Single_Cycle_TB/DUV/ALU_UNIT/ALU_Result_o
add wave -noupdate -group t0 /RISC_V_Single_Cycle_TB/DUV/REGISTER_FILE_UNIT/Register_t0/enable
add wave -noupdate -group t0 /RISC_V_Single_Cycle_TB/DUV/REGISTER_FILE_UNIT/Register_t0/DataInput
add wave -noupdate -group t0 /RISC_V_Single_Cycle_TB/DUV/REGISTER_FILE_UNIT/Register_t0/DataOutput
add wave -noupdate -divider Control
add wave -noupdate -radix hexadecimal /RISC_V_Single_Cycle_TB/DUV/PROGRAM_MEMORY/Instruction_o
add wave -noupdate -radix hexadecimal /RISC_V_Single_Cycle_TB/DUV/CONTROL_UNIT/OP_i
add wave -noupdate -divider {Data Mem}
add wave -noupdate -radix hexadecimal /RISC_V_Single_Cycle_TB/DUV/DATA_MEMORY/Mem_Write_i
add wave -noupdate -radix hexadecimal /RISC_V_Single_Cycle_TB/DUV/DATA_MEMORY/Mem_Read_i
add wave -noupdate -radix hexadecimal /RISC_V_Single_Cycle_TB/DUV/DATA_MEMORY/Write_Data_i
add wave -noupdate -radix hexadecimal /RISC_V_Single_Cycle_TB/DUV/DATA_MEMORY/Address_i
add wave -noupdate -radix hexadecimal /RISC_V_Single_Cycle_TB/DUV/DATA_MEMORY/Read_Data_o
add wave -noupdate -divider RA
add wave -noupdate -radix hexadecimal /RISC_V_Single_Cycle_TB/DUV/REGISTER_FILE_UNIT/Register_ra/enable
add wave -noupdate -radix hexadecimal /RISC_V_Single_Cycle_TB/DUV/REGISTER_FILE_UNIT/Register_ra/DataInput
add wave -noupdate -radix hexadecimal /RISC_V_Single_Cycle_TB/DUV/REGISTER_FILE_UNIT/Register_ra/DataOutput
add wave -noupdate -divider {Program Memory}
add wave -noupdate -radix hexadecimal /RISC_V_Single_Cycle_TB/DUV/PROGRAM_MEMORY/Address_i
add wave -noupdate -radix hexadecimal /RISC_V_Single_Cycle_TB/DUV/PROGRAM_MEMORY/Instruction_o
add wave -noupdate -divider ALU
add wave -noupdate -radix hexadecimal /RISC_V_Single_Cycle_TB/DUV/ALU_UNIT/ALU_Operation_i
add wave -noupdate -radix hexadecimal /RISC_V_Single_Cycle_TB/DUV/ALU_UNIT/A_i
add wave -noupdate -radix hexadecimal /RISC_V_Single_Cycle_TB/DUV/ALU_UNIT/B_i
add wave -noupdate -radix hexadecimal /RISC_V_Single_Cycle_TB/DUV/ALU_UNIT/ALU_Result_o
add wave -noupdate -divider mux_mem2teg
add wave -noupdate -radix unsigned /RISC_V_Single_Cycle_TB/DUV/MUX_MEM_TO_REG/Selector_i
add wave -noupdate -radix hexadecimal /RISC_V_Single_Cycle_TB/DUV/MUX_MEM_TO_REG/Mux_Data_0_i
add wave -noupdate -radix hexadecimal /RISC_V_Single_Cycle_TB/DUV/MUX_MEM_TO_REG/Mux_Data_1_i
add wave -noupdate -radix hexadecimal /RISC_V_Single_Cycle_TB/DUV/MUX_MEM_TO_REG/Mux_Data_2_i
add wave -noupdate -radix hexadecimal /RISC_V_Single_Cycle_TB/DUV/MUX_MEM_TO_REG/Mux_Output_o
add wave -noupdate -divider PC+Imm
add wave -noupdate -radix hexadecimal /RISC_V_Single_Cycle_TB/DUV/PC_PLUS_IMMEDIATE/Data0
add wave -noupdate -radix hexadecimal /RISC_V_Single_Cycle_TB/DUV/PC_PLUS_IMMEDIATE/Data1
add wave -noupdate -radix hexadecimal /RISC_V_Single_Cycle_TB/DUV/PC_PLUS_IMMEDIATE/Result
add wave -noupdate -divider JAL
add wave -noupdate -radix unsigned /RISC_V_Single_Cycle_TB/DUV/MUX_PC_JAL/Selector_i
add wave -noupdate -radix hexadecimal /RISC_V_Single_Cycle_TB/DUV/MUX_PC_JAL/Mux_Data_0_i
add wave -noupdate -radix hexadecimal /RISC_V_Single_Cycle_TB/DUV/MUX_PC_JAL/Mux_Data_1_i
add wave -noupdate -radix hexadecimal /RISC_V_Single_Cycle_TB/DUV/MUX_PC_JAL/Mux_Output_o
add wave -noupdate -divider JALR
add wave -noupdate -radix unsigned /RISC_V_Single_Cycle_TB/DUV/MUX_PC_JALR/Selector_i
add wave -noupdate -radix hexadecimal /RISC_V_Single_Cycle_TB/DUV/MUX_PC_JALR/Mux_Data_0_i
add wave -noupdate -radix hexadecimal /RISC_V_Single_Cycle_TB/DUV/MUX_PC_JALR/Mux_Data_1_i
add wave -noupdate -radix hexadecimal /RISC_V_Single_Cycle_TB/DUV/MUX_PC_JALR/Mux_Output_o
add wave -noupdate -divider IMM
add wave -noupdate -radix hexadecimal /RISC_V_Single_Cycle_TB/DUV/IMM_UNIT/op_i
add wave -noupdate -radix hexadecimal /RISC_V_Single_Cycle_TB/DUV/IMM_UNIT/Instruction_bus_i
add wave -noupdate -radix hexadecimal /RISC_V_Single_Cycle_TB/DUV/IMM_UNIT/Immediate_o
TreeUpdate [SetDefaultTree]
WaveRestoreCursors {{Cursor 1} {172 ns} 0}
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
WaveRestoreZoom {0 ns} {1152 ns}
