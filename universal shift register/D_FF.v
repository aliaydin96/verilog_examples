module D_FF(clk, clear, D, Q);
input D, clk, clear;
output reg Q;

always @(posedge clk, negedge clear) begin
if(~clear) 	Q <= 1'b0;

else Q <= D;

end
endmodule
