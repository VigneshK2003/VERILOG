module b_to_g_tb;
   reg [2:0]b;
   wire [2:0]g;
  binary_to_gray uut (.b(b), .g(g));
 initial begin
    $monitor("Time=%0t, b=%b | g=%b ", $time, b,g );
    $dumpfile("b_to_g.vcd");
    $dumpvars(0, b_to_g_tb);
      b = 3'b000; #10;
      b = 3'b001; #10;
      b = 3'b010; #10;
      b = 3'b011; #10;
      b = 3'b100; #10;
      b = 3'b101; #10;
      b = 3'b110; #10;
      b = 3'b111; #10;

      $finish;
    end
endmodule  
