module JK_latch_tb;
    reg J;
    reg K; 
    reg E;
    wire Q;
    wire Qbar;
  JK_latch uut(.E(E), .J(J), .K(K), .Q(Q), .Qbar(Qbar) );
 initial begin
     $monitor("Time=%0t, E=%b | J=%b | K=%b | Q=%b | Qbar=%b ", $time, E,J,K,Q,Qbar);
     $dumpfile("JK_latch.vcd");
     $dumpvars(0, JK_latch_tb);
   E=0; J=0; K=0; #10 
   E=1; J=0; K=0; #10
   J=0; K=1; #10
   J=1; K=0; #10
   J=1; K=1; #10
   $finish;
 end
endmodule 
