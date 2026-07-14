module fadd(
    input a, b, cin,
    output sum, cout
);

    assign sum = a ^ b ^ cin;
    assign cout = (a & b) | (a & cin) | (b & cin);

endmodule
module top_module (
    input [3:0] x,
    input [3:0] y, 
    output [4:0] sum);
    wire [4:0]c;
    assign c[0]=1'b0;
    genvar i;

generate
    fadd fa0 (.a(x[0]), .b(y[0]), .cin(c[0]), .sum(sum[0]),.cout(c[1]));

    for (i = 1; i < 4; i = i + 1) begin : f_add
        fadd fa (.a(x[i]),.b(y[i]),.cin(c[i]),.sum(sum[i]),.cout(c[i+1]));
    end
endgenerate
    assign sum[4]=c[4];

endmodule
