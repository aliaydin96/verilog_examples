module universal_shift_register(parallel_in, clk, clear, msb, lsb, parallel_out, select);
input clk, clear,msb,lsb;
input [3:0] parallel_in;
input [1:0] select;
output reg [3:0] parallel_out;

wire [3:0] w;
wire [3:0] mo;
fourtoone_mux(.select(select), .in0(w[0]), .in1(w[1]), .in2(lsb), .in3(parallel_in[0]), .out(mo[0]));
fourtoone_mux(.select(select), .in0(w[1]), .in1(w[2]), .in2(w[0]), .in3(parallel_in[1]), .out(mo[1]));
fourtoone_mux(.select(select), .in0(w[2]), .in1(w[3]), .in2(w[1]), .in3(parallel_in[2]), .out(mo[2]));
fourtoone_mux(.select(select), .in0(w[3]), .in1(msb), .in2(w[2]), .in3(parallel_in[3]), .out(mo[3]));

D_FF(.clk(clk), .clear(clear), .D(mo[0]), .Q(w[0]));
D_FF(.clk(clk), .clear(clear), .D(mo[1]), .Q(w[1]));
D_FF(.clk(clk), .clear(clear), .D(mo[2]), .Q(w[2]));
D_FF(.clk(clk), .clear(clear), .D(mo[3]), .Q(w[3]));
always begin
	parallel_out<=w;
end
endmodule
