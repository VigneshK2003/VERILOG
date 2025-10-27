module T_ff(input T,clk,reset, output reg Q);
     
  always@(posedge clk or posedge reset)
   begin
    if(reset)
      Q <= 0;
    else if(T)
      Q <= ~Q;
    else
      Q <= Q;
   end
endmodule
