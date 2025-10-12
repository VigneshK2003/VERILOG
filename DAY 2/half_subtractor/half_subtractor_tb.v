module half_subtractor_tb();
     reg A,B ;
     wire diff,borrow;
  half_subtractor uut(.A(A),.B(B),.diff(diff),.borrow(borrow));
 initial begin
     A=0 ; B=0 ; #10
     A=0 ; B=1 ; #10
     A=1 ; B=0 ; #10
     A=1 ; B=1 ; #10
   $finish;
 end
   initial begin
     $monitor("Time=%0t , A =%b ,B= %b ,d=%b ,b=%b",$time , A,B,diff,borrow);
     $dumpfile("half_subtractor.vcd");
     $dumpvars(0 , half_subtractor_tb);
   end
endmodule    
