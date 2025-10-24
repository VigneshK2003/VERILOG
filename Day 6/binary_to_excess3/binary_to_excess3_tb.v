module b_to_e_tb;
   reg[3:0]b;
   wire[3:0]e;
  b_to_e uut(.b(b), .e(e) );
 initial begin 
	  $monitor("Time=%0t, b=%b | e=%b ", $time, b,e);
	  $dumpfile("b_to_e.vcd");
	  $dumpvars(0, b_to_e_tb);
	b = 4'b0000; #10
	b = 4'b0001; #10
	b = 4'b0010; #10
        b = 4'b0011; #10
        b = 4'b0100; #10
        b = 4'b0101; #10
        b = 4'b0110; #10
        b = 4'b0111; #10

       $finish;
     end
endmodule   

