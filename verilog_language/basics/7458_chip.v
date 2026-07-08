module top_module ( 
    input p1a, p1b, p1c, p1d, p1e, p1f,
    output p1y,
    input p2a, p2b, p2c, p2d,
    output p2y );
wire x,y,t,s;
    assign x= p1a & p1b & p1c;
    assign y= p1e & p1d & p1f;
    assign p1y= x|y;
    assign t=p2a & p2b;
    assign s= p2c & p2d;
    assign p2y= t|s;

endmodule
