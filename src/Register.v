/******************************************************************
* Description
*	This the basic register that is used in the register file
*	1.0
* Author:
*	Dr. JosÃ© Luis Pizano Escalante
* email:
*	luispizano@iteso.mx
* Date:
*	16/08/2021
******************************************************************/
module Register
#(
	parameter N = 32
)
(
	input clk,
	input reset,
	input enable,
	input  [N-1:0] DataInput,
	input sp,
	
	
	output reg [N-1:0] DataOutput
);

always@(negedge reset or posedge clk) begin
	if(reset==0)
        if(sp == 1)
            DataOutput<= 32'h10_01_04_00;
        else
            DataOutput <= 0;
    else
        if(enable==1)
            DataOutput<=DataInput;
end

endmodule