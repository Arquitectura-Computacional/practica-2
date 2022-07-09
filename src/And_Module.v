

module And_Module
(
    input A_i,
    input B_i,
    output reg result
);

always@(A_i, B_i, result) begin

        result = A_i & B_i;

    end

endmodule