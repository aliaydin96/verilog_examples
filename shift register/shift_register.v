module shift_register(seri_in, clk, clear, seri_out);
input seri_in;
input clk,clear;
output seri_out;

wire [2:0] in;

D_FF(.clk(clk), .clear(clear), .D(seri_in), .Q(in[0]));
D_FF(.clk(clk), .clear(clear), .D(in[0]), .Q(in[1]));
D_FF(.clk(clk), .clear(clear), .D(in[1]), .Q(in[2]));
D_FF(.clk(clk), .clear(clear), .D(in[2]), .Q(seri_out));

endmodule
