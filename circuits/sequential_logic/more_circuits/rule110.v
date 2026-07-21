module top_module(
    input clk,
    input load,
    input [511:0] data,
    output [511:0] q
); 
     wire [511:0] left;
    wire [511:0] center;
    wire [511:0] right;
    assign left   = {1'b0, q[511:1]};
    assign center = q;
    assign right  = {q[510:0], 1'b0};
    always @(posedge clk) begin
        if (load) begin
            q <= data;
        end else begin
              q <= (center ^ right) | (~left & right);
        end
    end

endmodule
