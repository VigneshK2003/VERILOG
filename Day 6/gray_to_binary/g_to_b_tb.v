module g_to_b_tb;
   reg [2:0]g;
   wire [2:0]b;
   g_to_b uut (.g(g), .b(b));
 initial begin
    $monitor("Time=%0t, g=%b | b=%b ", $time, g,b );
    $dumpfile("g_to_b.vcd");
    $dumpvars(0, g_to_b_tb);
      g = 3'b000; #10;
      g = 3'b001; #10;
      g = 3'b010; #10;
      g = 3'b011; #10;
      g = 3'b100; #10;
      g = 3'b101; #10;
      g = 3'b110; #10;
      g = 3'b111; #10;
      $finish;
    end
endmodule
