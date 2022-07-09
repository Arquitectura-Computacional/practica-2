/******************************************************************
* Description
*	This is the top-level of a RISC-V Microprocessor that can execute the next set of instructions:
*		add
*		addi
* This processor is written Verilog-HDL. It is synthesizabled into hardware.
* Parameter MEMORY_DEPTH configures the program memory to allocate the program to
* be executed. If the size of the program changes, thus, MEMORY_DEPTH must change.
* This processor was made for computer organization class at ITESO.
* Version:
*	1.0
* Author:
*	Dr. José Luis Pizano Escalante
* email:
*	luispizano@iteso.mx
* Date:
*	16/08/2021
******************************************************************/

module RISC_V_Single_Cycle
#(
	parameter PROGRAM_MEMORY_DEPTH = 64,  //64
	parameter DATA_MEMORY_DEPTH = 256,	//128
	parameter DATA_MEMORY_WIDTH = 32
)

(
	// Input
	input clk,
	input reset,
	
	output [31:0] ALU_Exit_o
);
//******************************************************************/
//******************************************************************/

//******************************************************************/
//******************************************************************/
/* Signals to connect modules*/

/**Control**/

wire jal_o_w;
wire jalr_o_w;

wire branch_o_w;

wire OR_Module;

wire alu_src_w;
wire reg_write_w;
wire [1:0] mem_to_reg_w;
wire mem_write_w;
wire mem_read_w;
wire [2:0] alu_op_w;

/** Program Counter**/
wire [31:0] pc_plus_4_w;
wire [31:0] pc_w;



/**Data Memory**/
wire [31:0] read_data_w;

/**Adder**/
wire [31:0] pc_plus_immediate_w;

/**Register File**/
wire [31:0] read_data_1_w;
wire [31:0] read_data_2_w;
wire [31:0] write_data_w;

/**Inmmediate Unit**/
wire [31:0] inmmediate_data_w;



/**Multiplexer MUX_PC_JAL**/

wire [31:0]  pc_plus_4_or_pc_jal;

/**Multiplexer MUX_PC_JALR**/

wire [31:0] pc_plus_4_or_pc_jalr;



/**ALU**/
wire [31:0] alu_result_w;

/**Multiplexer MUX_DATA_OR_IMM_FOR_ALU**/
wire [31:0] read_data_2_or_imm_w;


/**Multiplexer MUX_PC_BRANCH**/
wire [31:0] pc_plus_4_or_pc_plus_imm_w;


/**ALU Control**/
wire [3:0] alu_operation_w;

/**Instruction Bus**/	
wire [31:0] instruction_bus_w;


//MUX Mem To Reg
//wire [31:0]Output_mem_to_reg_w;

//wire [31:0]Output_Mux_Memtoreg_w;

/**And Module**/
wire pc_src_w;

//******************************************************************/
//******************************************************************/
//******************************************************************/
//******************************************************************/
//******************************************************************/
Control
CONTROL_UNIT
(
	/****/
	.OP_i(instruction_bus_w[6:0]),
	/** outputus**/
	.Jalr_o(jalr_o_w),
	.Jal_o(jal_o_w),
	
	.Branch_o(branch_o_w),
	.ALU_Op_o(alu_op_w),
	.ALU_Src_o(alu_src_w),
	.Reg_Write_o(reg_write_w),
	.Mem_to_Reg_o(mem_to_reg_w),
	.Mem_Read_o(mem_read_w),
	.Mem_Write_o(mem_write_w)
);

PC_Register
PROGRAM_COUNTER
(
	.clk(clk),
	.reset(reset),
	.Next_PC(pc_plus_4_or_pc_jalr),
	.PC_Value(pc_w)
);

Program_Memory
#(
	.MEMORY_DEPTH(PROGRAM_MEMORY_DEPTH)
)
PROGRAM_MEMORY
(
	.Address_i(pc_w),
	.Instruction_o(instruction_bus_w)
);

Data_Memory
#(
	.MEMORY_DEPTH(DATA_MEMORY_DEPTH),
	.DATA_WIDTH(DATA_MEMORY_WIDTH)
)
DATA_MEMORY
(	
	.clk(clk),
	.Mem_Write_i(mem_write_w),
	.Mem_Read_i(mem_read_w),
	.Write_Data_i(read_data_2_w),
	.Address_i(alu_result_w),
	
	.Read_Data_o(read_data_w)
);

Adder_32_Bits
PC_PLUS_4
(
	.Data0(pc_w),
	.Data1(4),
	
	.Result(pc_plus_4_w)
);

Adder_32_Bits
PC_PLUS_IMMEDIATE
(
	.Data0(pc_w),
	.Data1(inmmediate_data_w),
	
	.Result(pc_plus_immediate_w)
);


//******************************************************************/
//******************************************************************/
//******************************************************************/
//******************************************************************/
//******************************************************************/



Register_File
REGISTER_FILE_UNIT
(
	.clk(clk),
	.reset(reset),
	.Reg_Write_i(reg_write_w),
	.Write_Register_i(instruction_bus_w[11:7]),
	.Read_Register_1_i(instruction_bus_w[19:15]),
	.Read_Register_2_i(instruction_bus_w[24:20]),
	.Write_Data_i(write_data_w),
	.Read_Data_1_o(read_data_1_w),
	.Read_Data_2_o(read_data_2_w)

);

Immediate_Unit
IMM_UNIT
(  .op_i(instruction_bus_w[6:0]),
   .Instruction_bus_i(instruction_bus_w),
   .Immediate_o(inmmediate_data_w)
);

Multiplexer_2_to_1
#(
	.NBits(32)
)
MUX_DATA_OR_IMM_FOR_ALU
(
	.Selector_i(alu_src_w),
	.Mux_Data_0_i(read_data_2_w),
	.Mux_Data_1_i(inmmediate_data_w),
	
	.Mux_Output_o(read_data_2_or_imm_w)

);

Multiplexer_2_to_1
#(
	.NBits(32)
)
MUX_PC_BRANCH
(
	.Selector_i(pc_src_w),    //pc_src_w del and
	.Mux_Data_0_i(pc_plus_4_w),
	.Mux_Data_1_i(pc_plus_immediate_w),
	
	.Mux_Output_o(pc_plus_4_or_pc_plus_imm_w)

);

Multiplexer_2_to_1
#(
	.NBits(32)
)
MUX_PC_JAL
(
	.Selector_i(jal_o_w),
	.Mux_Data_0_i(pc_plus_4_or_pc_plus_imm_w),
	.Mux_Data_1_i(pc_plus_immediate_w),
	
	.Mux_Output_o(pc_plus_4_or_pc_jal)

);

Multiplexer_2_to_1
#(
	.NBits(32)
)
MUX_PC_JALR
(
	.Selector_i(jalr_o_w),
	.Mux_Data_0_i(pc_plus_4_or_pc_jal),
	.Mux_Data_1_i(alu_result_w),
	
	.Mux_Output_o(pc_plus_4_or_pc_jalr)

);

And_Module
AND_BRANCH_ALU
(
    .A_i(branch_o_w),
    .B_i(OR_Module),
    .result(pc_src_w)
);


OR_Module
OR_BRANCH_ALU
(
	.A_i(alu_operation_w),
    .B_i(alu_result_w),

    .result(OR_Module)
);


ALU_Control
ALU_CONTROL_UNIT
(
	.funct7_i(instruction_bus_w[30]),
	.ALU_Op_i(alu_op_w),
	.funct3_i(instruction_bus_w[14:12]),
	.ALU_Operation_o(alu_operation_w)

);


ALU
ALU_UNIT
(
	.ALU_Operation_i(alu_operation_w),
	.A_i(read_data_1_w),
	.B_i(read_data_2_or_imm_w),
	.ALU_Result_o(alu_result_w),
	.pc_plus_4(pc_plus_4_w)
);

Multiplexer_4_to_1
#(
	.NBits(32)
)
MUX_MEM_TO_REG
(
	.Selector_i(mem_to_reg_w),
	.Mux_Data_0_i(alu_result_w),
	.Mux_Data_1_i(read_data_w),
	.Mux_Data_2_i(pc_plus_4_w),

	
	.Mux_Output_o(write_data_w)

);


assign ALU_Exit_o = alu_result_w;

endmodule

