module g_to_b(input[2:0]g , output[2:0]b);
    assign b[2] = g[2];
    assign b[1] = b[2]^g[1];
    assign b[0] = b[1]^g[0];
endmodule
