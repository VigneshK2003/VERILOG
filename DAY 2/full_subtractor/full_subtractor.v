module full_subtractor(input A,B,Bin , output Diff , Borrow);
    assign w1 = A^B;
    assign Diff = w1^Bin;
    assign w2 = (~w1) & Bin;
    assign w3 = B & (~A);
    assign Borrow = w2 | w3;
endmodule
