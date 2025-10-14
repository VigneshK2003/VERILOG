module demux1to2_tb;
   reg d,s;
    wire y0,y1;
  demux1to2 uut(.d(d),.s(s),.y0(y0),.y1(y1));
 initial begin
      s = 0 ; d = 0; #10
      s = 0 ; d = 1; #10   
      s = 1 ; d = 0; #10
      s = 1 ; d = 1; #10
   $finish;
  end
 initial begin
       $monitor("Time=%0t | s=%b d=%b | y=%b ", $time , s,d,y0,y1);
       $dumpfile("demux1to2.vcd");
       $dumpvars(0 , demux1to2_tb);
  end
endmodule  
