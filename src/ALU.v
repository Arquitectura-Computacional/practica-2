/******************************************************************
* Description
*	This is an 32-bit arithetic logic unit that can execute the next set of operations:
*		add

* This ALU is written by using behavioral description.
* Version:
*	1.0
* Author:
*	Dr. JosÃ© Luis Pizano Escalante
* email:
*	luispizano@iteso.mx
* Date:
*	16/08/2021
******************************************************************/

module ALU 
(
	input [3:0] ALU_Operation_i,
	input pc_plus_4,
	input signed [31:0] A_i,
	input signed [31:0] B_i,
	output reg Zero_o, 
	output reg [31:0] ALU_Result_o
);

localparam ADD		= 4'b0000;
localparam SUB		= 4'b0001;
localparam AND		= 4'b0010;
localparam OR		= 4'b0011;
localparam XOR		= 4'b0100;
localparam SRL		= 4'b0101;
localparam SLL		= 4'b0110;

localparam LUI		= 4'b0111;

localparam BEQ		= 4'b1000;
localparam BNE		= 4'b1001;
localparam BLT		= 4'b1010;
localparam BGE		= 4'b1011;

localparam JAL		= 4'b1101;
	
always @ (A_i or B_i or ALU_Operation_i)
	begin
		case (ALU_Operation_i)
		
			// ADD, ADDI, SW, LW, JALR, JAL
			ADD:		ALU_Result_o = A_i + B_i;
			SUB:		ALU_Result_o = A_i - B_i;
			AND:		ALU_Result_o = A_i & B_i;
			OR:		ALU_Result_o = A_i | B_i;
			XOR:		ALU_Result_o = A_i ^ B_i;
			SRL:		ALU_Result_o = A_i >> B_i;
			SLL:		ALU_Result_o = A_i << B_i;
			
			//ADDI:		ALU_Result_o = A_i + B_i;
			//ANDI:		ALU_Result_o = A_i & B_i;
			//ORI:		ALU_Result_o = A_i | B_i;
			//XORI:		ALU_Result_o = A_i ^ B_i;			
			//SRLI:		ALU_Result_o = A_i >> B_i;
			//SLLI:		ALU_Result_o = A_i << B_i;
			//LW:		ALU_Result_o = A_i + B_i
			
			LUI:		ALU_Result_o = {B_i[19:0],12'b0};
			
			BEQ:		ALU_Result_o = (A_i == B_i)? 1'b1 : 1'b0;
			BNE:		ALU_Result_o = (A_i != B_i)? 1'b1 : 1'b0;
			BLT:		ALU_Result_o = (A_i <  B_i)? 1'b1 : 1'b0;
			BGE:		ALU_Result_o = (A_i >= B_i)? 1'b1 : 1'b0;
			
			//SW:		ALU_Result_o = 0;
			
			JAL:		ALU_Result_o = pc_plus_4;

			default:	ALU_Result_o = 0;
				
		endcase
		
		Zero_o = (ALU_Result_o == 0) ? 1'b1 : 1'b0;
		
     end // always @ (A or B or control)
	  
endmodule // ALU
