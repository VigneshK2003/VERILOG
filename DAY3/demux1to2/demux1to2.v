module demux1to2(input d,s , output y0,y1);
    assign y1 = d&s;
    assign y0 = d&(~s);
endmodule 
    
