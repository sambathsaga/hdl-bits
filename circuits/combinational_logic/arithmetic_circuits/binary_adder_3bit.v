module fadd(
    input a, b, cin,
    output sum, cout
);

    assign sum = a ^ b ^ cin;
    assign cout = (a & b) | (a & cin) | (b & cin);

endmodule
module top_module( 
    input [2:0] a, b,
    input cin,
    output [2:0] cout,
    output [2:0] sum );
genvar i;

generate
    fadd fa0 (.a(a[0]), .b(b[0]), .cin(cin), .sum(sum[0]), .cout(cout[0]));

    for (i = 1; i < 3; i = i + 1) begin : f_add
        fadd fa (
            .a(a[i]),
            .b(b[i]),
            .cin(cout[i-1]),
            .sum(sum[i]),
            .cout(cout[i])
        );
    end
endgenerate

endmodule
