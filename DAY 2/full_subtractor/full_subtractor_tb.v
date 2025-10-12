module full_subtractor_tb();
    reg A,B,Bin;
    wire Diff , Borrow;
  full_subtractor uut(.A(A),.B(B),.Bin(Bin),.Diff(Diff),.Borrow(Borrow));
 initial begin
   A=0 ; B=0 ; Bin=0; #10
   A=0 ; B=0 ; Bin=1; #10
   A=0 ; B=1 ; Bin=0; #10
   A=0 ; B=1 ; Bin=1; #10
   A=1 ; B=0 ; Bin=0; #10
   A=1 ; B=0 ; Bin=1; #10
   A=1 ; B=1 ; Bin=0; #10
   A=1 ; B=1 ; Bin=1; #10
  $finish;
 end
  initial begin
    $monitor("Time=%0t , A=%b, B=%b, Bin=%b, Diff=%b, Borrow=%b", $time , A,B,Bin,Diff,Borrow); 
    $dumpfile("full_subtractor.vcd");
    $dumpvars(0,full_subtractor_tb);
  end
endmodule  
