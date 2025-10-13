module mux(input a,b,s , output y);
   assign w1 = (~s) & a;
   assign w2 = s & b;
   assign y = w1 | w2;
endmodule
