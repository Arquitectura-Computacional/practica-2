/******************************************************************
* Description
*	This module performs a sign extension operation that is need with
*	in instruction like andi and constructs the immediate constant.
* Version:
*	1.0
* Author:
*	Dr. JosÃ© Luis Pizano Escalante
* email:
*	luispizano@iteso.mx
* Date:
*	16/08/2021
******************************************************************/
module Immediate_Unit
(   
	input [6:0] op_i,
	input [31:0]  Instruction_bus_i,
	
   output reg [31:0] Immediate_o
);

localparam R_Type				= 7'h33;

localparam I_Type_Logic 	= 7'h13;
localparam I_Type_LW			= 7'h03;
localparam I_Type_JALR		= 7'h67;

localparam U_Type 			= 7'h37;

localparam B_Type 			= 7'h63;

localparam S_Type 			= 7'h23;

localparam J_Type 			= 7'h6F;


always@(op_i or Instruction_bus_i) begin

	if(op_i == 7'h13 | op_i == 7'h03 | op_i == 7'h67)	// I format
		 Immediate_o = {{20{Instruction_bus_i[31]}},Instruction_bus_i[31:20]};
	
	else if(op_i == 7'h37)										// U format
       Immediate_o = {{12{Instruction_bus_i[31]}},Instruction_bus_i[31:12]};
	
	else if(op_i == 7'h63)										// B format
       Immediate_o = {{19{Instruction_bus_i[31]}},Instruction_bus_i[31],Instruction_bus_i[7],Instruction_bus_i[30:25],Instruction_bus_i[11:8],1'b0}; 
	
	else if(op_i == 7'h23)										// S format
       Immediate_o = {{20{Instruction_bus_i[31]}},Instruction_bus_i[31:25],Instruction_bus_i[11:7]};			
	
	else if(op_i == 7'h6f)										// J format
       Immediate_o = {{11{Instruction_bus_i[31]}},Instruction_bus_i[31],Instruction_bus_i[19:12],Instruction_bus_i[20],Instruction_bus_i[30:21],1'b0};
	
	else 																// R format
		 Immediate_o = 0;
end


endmodule // signExtend