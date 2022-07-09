module OR_Module 
(
	//aluOP
	input A_i,
	//resultado de la alu
	input B_i,
	
	
	output reg result

);


always@(A_i,B_i,result) 

	begin
	// si es ai es igual a jal  o bi (resultado de la alu) 1 
	if(A_i == 4'b1101 || B_i == 1)
		result = 1'b1;
		else 
		 result = 1'b0;
	end
	
endmodule