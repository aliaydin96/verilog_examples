module up_counter(clk, clear, select,in, out);
input clk, clear;
input [1:0] select;
input [3:0] in;
output reg [3:0] out;

initial begin
out = 0;
end

always @(posedge clk, negedge clear) begin
if(~clear) out <= 4'b0;
else begin
	case(select)
	2'b00: begin
		out <= out + 4'b0001;
		if(out == 4'b1111) out<= 4'b0;
	end
	2'b01: begin
		out <= in + 4'b0001;
		if(out == 4'b1111) out<= 4'b0;
	end
	2'b10: begin
		if(out <= in)begin
			out <= out + 4'b0001;
		end else out <= 4'b0;
	end
	2'b11: begin
		out <= out;
	end
	endcase
end

end

endmodule
