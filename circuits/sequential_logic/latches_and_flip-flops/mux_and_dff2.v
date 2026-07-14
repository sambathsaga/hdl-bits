module top_module (
    input clk,
    input w, R, E, L,
    output Q
);
    reg q;
    always@(posedge clk)begin
        if(L==1)
            q<=R;
        else if(E==1)
            q<=w;
        else
            q <= q;
    end
    assign Q=q;
endmodule
