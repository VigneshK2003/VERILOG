module SR_latch(input S,R, output reg Q, output Qbar);

    assign Qbar = ~Q;
 always@(S or R)
    begin
        case({S, R})
            2'b00: Q = Q;        
            2'b01: Q = 1'b0;    
            2'b10: Q = 1'b1;   
            2'b11: Q = 1'bx;     
            default: Q = 1'bx;
        endcase
    end
endmodule
