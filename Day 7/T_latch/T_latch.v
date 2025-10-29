module T_latch(input T,E, output reg Q=0 , output Qbar);
     assign Qbar = ~Q;
  always@(T or E)
   begin 
      if(E == 1)
      begin	       
       case(T)
         1'b0 : Q<= Q;
         1'b1 : Q<= ~Q;
       endcase
       end	
      else
        Q <= Q;
    end
endmodule 
