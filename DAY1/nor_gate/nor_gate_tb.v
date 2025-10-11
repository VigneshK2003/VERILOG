module nor_gate_tb();
   reg a,b;
   wire y ;
  nor_gate uut(.a(a), .b(b), .y(y));
 initial begin
    a = 0 ; b = 0 ; #10
    a = 0 ; b = 1 ; #10
    a = 1 ; b = 0 ; #10
    a = 1 ; b = 1 ; #10
   $finish;
  end
 initial begin
    $monitor("Time =%0t, a =%b , b=%b , y=%b" ,$time,a , b, y);
    $dumpfile("nor_gate.vcd");
    $dumpvars( 0 ,nor_gate_tb);
 end
endmodule 
