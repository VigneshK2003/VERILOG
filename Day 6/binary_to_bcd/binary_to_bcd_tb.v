module binary_to_bcd_tb;
         reg[3:0]b;
         wire[3:0]tens;
         wire[3:0]ones;
    binary_to_bcd uut(.b(b), .tens(tens), .ones(ones));
  initial begin
    $monitor("Time=%0t,  b=%b | tens=%b ones=%b ", $time, b,tens,ones);
    $dumpfile("binary_to_bcd.vcd");
    $dumpvars(0, binary_to_bcd_tb);
     b = 4'd0;  #10;
     b = 4'd1;  #10;
     b = 4'd5;  #10;
     b = 4'd8;  #10;
     b = 4'd11; #10;
     b = 4'd12; #10;
     b = 4'd13; #10;
     b = 4'd14; #10;
     $finish;
    end
endmodule    
