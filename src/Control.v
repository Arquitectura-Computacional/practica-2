/******************************************************************
* Description
*	This is control unit for the RISC-V Microprocessor. The control unit is 
*	in charge of generation of the control signals. Its only input 
*	corresponds to opcode from the instruction bus.
*	1.0
* Author:
*	Dr. JosÃ© Luis Pizano Escalante
* email:
*	luispizano@iteso.mx
* Date:
*	16/08/2021
******************************************************************/
module Control
(
	input [6:0]OP_i,
	
	output Jalr_o,
	output Jal_o,
	output Branch_o,
	output Mem_Read_o,
	output [1:0] Mem_to_Reg_o,
	output Mem_Write_o,
	output ALU_Src_o,
	output Reg_Write_o,
	output [2:0]ALU_Op_o
);

localparam R_Type				= 7'h33;

localparam I_Type_Logic 	= 7'h13;
localparam I_Type_LW			= 7'h03;
localparam I_Type_JALR		= 7'h67;

localparam U_Type 			= 7'h37;

localparam B_Type 			= 7'h63;

localparam S_Type 			= 7'h23;

localparam J_Type 			= 7'h6f;

reg [11:0] control_values;

always@(OP_i) begin

	case(OP_i)
														 //098_76_54_3_210
		R_Type:				control_values = 12'b000_00_1_00_0_000;
		
		I_Type_Logic: 		control_values = 12'b000_00_1_00_1_001;
		I_Type_LW:			control_values = 12'b000_01_1_10_1_110;
		I_Type_JALR:		control_values = 12'b100_00_1_00_1_101;
		
		U_Type: 				control_values = 12'b000_00_1_00_1_010;
		
		B_Type:				control_values = 12'b001_00_0_00_0_100;
		
		S_Type:				control_values = 12'b000_01_0_01_1_011;
		
		J_Type:				control_values = 12'b010_10_1_00_1_111;
		
		default:				control_values = 12'b000_00_0_000;
			
	endcase
		
end

assign Jalr_o = control_values[11];

assign Jal_o = control_values[10];	

assign Branch_o = control_values[9];

assign Mem_to_Reg_o = control_values[8:7];

assign Reg_Write_o = control_values[6];

assign Mem_Read_o = control_values[5];

assign Mem_Write_o = control_values[4];

assign ALU_Src_o = control_values[3];

assign ALU_Op_o = control_values[2:0];	

endmodule
