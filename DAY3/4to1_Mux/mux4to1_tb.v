module mux4to1_tb();
     reg s0,s1,i0,i1,i2,i3;
     wire y;
  mux4to1 uut(.s0(s0), .s1(s1), .i0(i0), .i1(i1), .i2(i2),.i3(i3), .y(y));
  initial begin
      //i0 = 0; i1 = 0; i2 = 0; i3 = 0;
        //s0 = 0; s1 = 0;

        i0=1; i1=0; i2=0; i3=0; s0=0; s1=0; #10
        i0=0; i1=1; i2=0; i3=0; s0=0; s1=1; #10 
        i0=0; i1=0; i2=1; i3=0; s0=1; s1=0; #10
        i0=0; i1=0; i2=0; i3=1; s0=1; s1=1; #10	  
    
    $finish;
   end
   initial begin
      $monitor("Time=%0t | s0=%b s1=%b | i0=%b i1=%b i2=%b i3=%b |y=%b", $time,s0,s1,i0,i1,i2,i3,y);
      $dumpfile("mux4to1.vcd");
      $dumpvars(0,mux4to1_tb);
   end   
endmodule      
