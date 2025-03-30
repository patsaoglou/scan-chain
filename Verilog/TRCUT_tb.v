module TRCUT_tb();

reg clk, si, se;
wire so;
reg[3:0] i;

TRCUT trcut (
	.clk(clk),
	.si(si),
	.se(se),
	.so(so)
);
initial begin
	clk = 0;
	#1;
	forever begin
		#5 clk =! clk;
	end
end

initial begin
si = 0;
se = 1;
	for (i = 0; i<16; i = i + 1) begin
		si = i[0];
		#10 si = i[1];
		#10 si = i[2];
		#10 si = i[3];
		#10 se = 0;
		#10 se = 1;
	end
end
endmodule