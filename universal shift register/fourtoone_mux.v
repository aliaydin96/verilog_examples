module fourtoone_mux(in1,in2,in3,in0, select, out);
input in1, in2, in3, in0;
input [1:0] select;
output reg out;

always begin
	case(select)
		2'b00:
			out <= in0;
		2'b01:
			out <= in1;
		2'b10:
			out <= in2;
		2'b11:
			out <= in3;
endcase
end
endmodule
