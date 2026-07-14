module top_module (
    input clk,
    input j,
    input k,
    output Q);
    reg x;
    always@(posedge clk)
        begin
       x<=(j&~x)|(~k&x);
        end
    
       assign Q=x;
endmodule
