module SR_ff_tb;
    reg S;
    reg R;
    reg clk;
    wire Q;
    wire Qbar;
  SR_ff uut(.S(S), .R(R), .clk(clk), .Q(Q), .Qbar(Qbar));
    
  initial begin
    clk = 0;      
    forever #5 clk = ~clk;
   end
    
  initial begin
       $monitor("Time=%0t, clk=%b | S=%b | R=%b | Q=%b | Qbar=%b ", $time, clk,S,R,Q,Qbar);
       $dumpfile("SR_ff.vcd");
       $dumpvars(0, SR_ff_tb);
     
      S=0; R=0; #10
      S=0; R=1; #10
      S=1; R=0; #10
      S=1; R=1; #10
     $finish;  
   end
endmodule    
      
