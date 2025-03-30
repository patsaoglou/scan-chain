module CUT_tb();

reg[3:0] in;

wire i,j;

integer iteration;

CUT cut (
    .a(in[3]),
    .b(in[2]),
    .c(in[1]),
    .d(in[0]),
    .i(i),
    .j(j)
);

initial begin
	in = 0;
	
	for (iteration = 0; iteration<16; iteration = iteration + 1) begin
		#2
		in = in + 1;
	end
end

endmodule