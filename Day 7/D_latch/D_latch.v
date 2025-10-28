module D_latch(input D,E, output reg Q, output Qbar);
     assign Qbar = ~Q;
  always@(D or E)
    
  if(E)
   begin	   
      case(D)
        1'b0: Q<=0;
        1'b1: Q<=1;
      endcase
   end
  else
     Q<=Q;
endmodule
