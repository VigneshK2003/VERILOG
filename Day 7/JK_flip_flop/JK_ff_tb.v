module JK_ff_tb;
    reg J;
    reg K;
    reg clk;
    wire Q;
    wire Qbar;
  JK_ff uut(.J(J), .K(K), .clk(clk), .Q(Q), .Qbar(Qbar) );
    
  initial begin
     clk = 0;
    forever #5 clk = ~clk;
  end
  
  initial begin
      $monitor("Time=%0t, clk=%b | J=%b | K=%b | Q=%b | Qbar=%b ", $time, clk,J,K,Q,Qbar);
      $dumpfile("JK_ff.vcd");
      $dumpvars(0, JK_ff_tb);
     J=0; K=0; #10
     J=0; K=1; #10
     J=1; K=0; #10
     J=1; K=1; #10
     $finish;
   end
endmodule
