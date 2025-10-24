module binary_to_bcd(input[3:0]b, output[3:0]tens, output[3:0]ones);
        assign tens = (b>9) ? 4'b0001 : 4'b0000; 
        assign ones = (b > 9) ? (b - 4'd10) : b;
endmodule

