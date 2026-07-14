module top_module (
    input clk,
    input d,
    output q
);
    reg q_p;
    reg q_n;

    always @(posedge clk) begin
        q_p <= d ^ q_n;
    end

    always @(negedge clk) begin
        q_n <= d ^ q_p;
    end

    assign q = q_p ^ q_n;

endmodule
