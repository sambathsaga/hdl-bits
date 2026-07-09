module top_module ( input clk, input d, output q );
    wire q1,q2;
    my_dff uut(.clk(clk),.d(d),.q(q1));
    my_dff uut1(.clk(clk),.d(q1),.q(q2));
    my_dff uut2(.clk(clk),.d(q2),.q(q));
endmodule
