module JK_latch(input E,J,K, output reg Q=0,output Qbar);
     assign Qbar = ~Q;
  always@(J or K or E)
    begin
     if(E)
       begin
       case({J,K})
         2'b00: Q<= Q;
         2'b01: Q<= 0;
         2'b10: Q<= 1;
         2'b11: Q<= ~Q;
       endcase
       end
     else
        Q <= Q;
    end 
endmodule

