module T_ff_tb;
    reg T;
    reg clk;
    reg reset;
    wire Q;
 T_ff uut(.T(T), .clk(clk), .reset(reset), .Q(Q) );
   
   always #5 clk = ~clk;
 initial begin
    $monitor("Time=%0t,  clk=%b | reset=%b | T=%b | Q=%b |", $time,clk,reset,T,Q);
    $dumpfile("T_ff.vcd");
    $dumpvars(0 , T_ff_tb );
   
   clk=0; reset=1; T=0;
   #10 reset = 0;
   #10 T = 1;
   #10 T = 0;
   #10 T = 1;
   #10 $finish;
 end
endmodule
