module TRCUT(clk,si,se,so);

input clk,si,se;
output so;

wire a,b,c,d,i,j;

assign so = d;

SDFF Raj(clk, j, si, se, a);
SDFF Rbi(clk, i, a, se, b);
SDFF Rc(clk, c, b, se, c);
SDFF Rd(clk, d, c, se, d);

CUT cut (
    .a(a),
    .b(b),
    .c(c),
    .d(d),
    .i(i),
    .j(j)
);

endmodule