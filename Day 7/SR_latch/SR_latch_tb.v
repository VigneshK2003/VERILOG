module SR_latch_tb;
    reg S;
    reg R;
    wire Q;
    wire Qbar;
  SR_latch uut(.S(S), .R(R), .Q(Q), .Qbar(Qbar));
 
 initial begin
    $monitor("Time=%0t, S=%b | R=%b | Q=%b | Qbar=%b", $time, S,R,Q,Qbar);
    $dumpfile("SR_latch.vcd");
    $dumpvars(0, SR_latch_tb);
   S=0; R=0; #10
   S=0; R=1; #10
   S=1; R=0; #10
   S=1; R=1; #10
  $finish;
 end 
endmodule
