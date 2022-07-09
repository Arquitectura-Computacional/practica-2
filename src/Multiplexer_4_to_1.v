/******************************************************************
* Description
*	This is a 4 to 1 multiplexer that can be parameterized in its bit-width.
*	1.0
* Author:
*	Dr. José Luis Pizano Escalante
* email:
*	luispizano@iteso.mx
* Date:
*	16/08/2021
******************************************************************/

module Multiplexer_4_to_1
#(
	parameter NBits = 32
)
(
	input [1:0] Selector_i,
	input [NBits-1:0] Mux_Data_0_i,
	input [NBits-1:0] Mux_Data_1_i,
    input [NBits-1:0] Mux_Data_2_i,
    input [NBits-1:0] Mux_Data_3_i,
	
	output reg [NBits-1:0] Mux_Output_o

);

	always@(Selector_i ,Mux_Data_3_i, Mux_Data_2_i, Mux_Data_1_i, Mux_Data_0_i)
    begin
        case (Selector_i)
            0: Mux_Output_o <= Mux_Data_0_i;
            1: Mux_Output_o <= Mux_Data_1_i;
            2: Mux_Output_o <= Mux_Data_2_i;
            3: Mux_Output_o <= Mux_Data_3_i;
            default: Mux_Output_o <= 0;
        endcase
	end

endmodule