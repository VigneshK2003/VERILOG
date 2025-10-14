module demux1to4_tb;
    reg d , s0,s1;
    wire y0,y1,y2,y3;
   demux1to4 uut(.d(d), .s0(s0), .s1(s1), .y0(y0), .y1(y1), .y2(y2), .y3(y3));
  initial begin
      s0 = 0;s1 = 0;d=1; #10
      s0 = 0;s1 = 1;d=1; #10
      s0 = 1;s1 = 0;d=1; #10
      s0 = 1;s1 = 1;d=1; #10
   $finish;
  end
  initial begin
     $monitor("Time =%0t | s0=%b s1=%b | d=%b | y0=%b y1=%b y2=%b y3=%b ", $time ,s0,s1,d,y0,y1,y2,y3);
     $dumpfile("demux1to4.vcd");
     $dumpvars(0, demux1to4_tb);
   end
endmodule
