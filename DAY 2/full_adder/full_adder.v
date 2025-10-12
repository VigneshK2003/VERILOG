module full_adder(input A,B,Cin , output Sum , Carry );
     assign w1 = A ^ B;
     assign w2 = A & B;
     assign w3 = w1 & Cin;
     assign Sum = w1 ^ Cin;
     assign Carry = w2 | w3;
endmodule
