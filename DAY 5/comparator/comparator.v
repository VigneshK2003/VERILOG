module comparator(input a,b, output l,e,g);
         assign l = ~a & b;
	 assign e = ~(a^b);
         assign g = a & ~b;
endmodule
