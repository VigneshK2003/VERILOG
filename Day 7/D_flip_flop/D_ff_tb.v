module d_ff_tb;
    reg D;
    reg clk;
    reg reset;
    wire Q;
  d_ff uut(.D(D), .clk(clk), .reset(reset), .Q(Q) );
   
   always #5 clk = ~clk;
  initial begin
    $monitor("Time=%0t, clk=%b | D=%b | Q=%b |", $time, clk,D,Q );
    $dumpfile("d_ff.vcd");
    $dumpvars(0, d_ff_tb);
   
   clk = 0; reset = 1; D = 0;
    #10 reset = 0; 
    #10 D = 1;
    #10 D = 0;
    #10 D = 1;
    #10 $finish; 
  end
endmodule 
