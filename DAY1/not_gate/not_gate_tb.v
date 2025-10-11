module not_gate_tb();
   reg a;
   wire y;
   not_gate uut(.a(a) , .y(y) );
 initial begin
    a = 0; #10 
    a = 1; #10 
  $finish;
 end
 initial begin
	$monitor("Time =%0t , a=%b , y=%b ", $time, a , y);
        $dumpfile("not_gate.vcd");
        $dumpvars(0 , not_gate_tb);
    end	
endmodule
