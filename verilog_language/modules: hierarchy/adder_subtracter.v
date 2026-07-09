module top_module(
    input [31:0] a,
    input [31:0] b,
    input sub,
    output [31:0] sum
);
    wire x;
    wire [31:0]y;
    assign y= b^{32{sub}};
    add16 adder1(.a(a[15:0]),.b(y[15:0]),.cin(sub),.sum(sum[15:0]),.cout(x));
    add16 adder2(.a(a[31:16]),.b(y[31:16]),.cin(x),.sum(sum[31:16]),.cout());
endmodule
