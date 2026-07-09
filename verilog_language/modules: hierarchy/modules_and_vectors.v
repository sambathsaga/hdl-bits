module top_module ( 
    input clk, 
    input [7:0] d, 
    input [1:0] sel, 
    output [7:0] q 
);
    wire [7:0] q1,q2,q3;
    my_dff8 uut(.clk(clk),.d(d),.q(q1));
    my_dff8 uut1(.clk(clk),.d(q1),.q(q2));
    my_dff8 uut2(.clk(clk),.d(q2),.q(q3));
    assign q=(sel==2'b00)?d:
             (sel==2'b01)?q1:
        (sel==2'b10)?q2:q3;
endmodule
