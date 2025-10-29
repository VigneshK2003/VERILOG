module T_latch_tb;
    reg E;
    reg T;
    wire Q;
    wire Qbar;
  T_latch uut(.E(E), .T(T), .Q(Q), .Qbar(Qbar));
  
 initial begin
    $monitor("Time=%0t, E=%b | T=%b | Q=%b | Qbar=%b", $time, E,T,Q,Qbar );
    $dumpfile("T_latch.vcd");
    $dumpvars(0, T_latch_tb);
  
   E=0; T=0; #10
   E=1; T=0; #10
   T=1; #10
   T=0; #10
   T=1; #10
   $finish;
  end
endmodule
