module half_adder_tb();
    reg a , b;
    wire s , c;
  half_adder uut(.a(a), .b(b) , .s(s), .c(c));
   initial begin
      a = 0; b = 0 ; #10
      a = 0; b = 1 ; #10
      a = 1; b = 0 ; #10
      a = 1; b = 1 ; #10 
    $finish;
   end
  initial begin
      $monitor("$Time=%0t , a=%b, b=%b ,s =%b, c=%b",$time,a,b,s,c);
      $dumpfile("half_adder.vcd");
      $dumpvars(0 , half_adder_tb);
   end
endmodule   
     
  

