module mux_tb();
   reg a,b,s;
   wire y;
   mux uut(.a(a),.b(b),.s(s),.y(y));
 initial begin
    s = 0 ; a=0 ; b=0; #10
    s = 0 ; a=0 ; b=1; #10
    s = 0 ; a=1 ; b=0; #10 
    s = 0 ; a=1 ; b=1; #10
    s = 1 ; a=0 ; b=0; #10
    s = 1 ; a=0 ; b=1; #10
    s = 1 ; a=1 ; b=0; #10
    s = 1 ; a=1 ; b=1; #10
  $finish;
 end
   initial begin  
    $monitor("Time =%0t, s=%b,a=%b,b=%b,y=%b", $time,s,a,b,y);
    $dumpfile("mux.vcd");
    $dumpvars(0, mux_tb);
   end
endmodule
