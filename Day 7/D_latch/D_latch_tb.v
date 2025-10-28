module D_latch_tb;
     reg D;
     reg E;
     wire Q;
     wire Qbar;
  D_latch uut(.D(D), .E(E), .Q(Q), .Qbar(Qbar) );
     
  initial begin
      $monitor("Time=%0t, E=%b | D=%b | Q=%b | Qbar=%b", $time, E,D,Q,Qbar);
      $dumpfile("D_latch.vcd");
      $dumpvars(0, D_latch_tb);
        D=0; E=0; #10;
        D=1; E=0; #10;
        D=0; E=1; #10;  
        D=1; E=1; #10;    
    $finish;
  end
endmodule  
