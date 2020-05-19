`timescale 1ns / 1ps

module PC_buffer(clk, in, out);

input clk;
input [7:0]in;

reg [7:0]instr;

output reg [7:0]out;

always @(posedge clk) begin
	out = instr;
	instr = in;
end
initial begin
    out = 1;
end
endmodule