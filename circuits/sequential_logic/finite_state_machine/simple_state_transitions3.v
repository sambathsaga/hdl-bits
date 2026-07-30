module top_module(
    input in,
    input [1:0] state,
    output [1:0] next_state,
    output out); //

    parameter A=0, B=1, C=2, D=3;

    // State transition logic: next_state = f(state, in)
    always@(*)begin
        case(state)
          A:
              begin
                  next_state=in?B:A;
              end
          B:
              begin
                  next_state=in?B:C;
              end
          C:
              begin
                  next_state=in?D:A;
              end
          D:
              begin
                  next_state=in?B:C;
              end
            default:next_state=A;
        endcase 
    end
    // Output logic:  out = f(state) for a Moore state machine
        assign out=(state==D)?1:0;

endmodule
