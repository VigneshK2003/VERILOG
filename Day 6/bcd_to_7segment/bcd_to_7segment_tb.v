module bcd_to_seven_seg_tb;
    reg [3:0]bcd;
    wire [6:0]seven_seg;
   bcd_to_seven_seg uut (.bcd(bcd), .seven_seg(seven_seg));
  initial begin
	$monitor("Time=%0t, bcd=%b | seven_seg=%b", $time, bcd, seven_seg);    
        $dumpfile("bcd_to_seven_seg.vcd");
        $dumpvars(0, bcd_to_seven_seg_tb);

        bcd = 4'b0000;
        repeat (10) begin
            #10  bcd = bcd + 1;  
        end 

        $finish;           
  end
endmodule  
