module Instruction_Memory(clk, adr, out);
    input clk;
    input [7:0] adr;
    output reg [31:0] out;
    wire [31:0] instr [255:0];
    assign instr[0] = 32'b11110000010000000000000100000000;
    assign instr[1] = 32'b00000000000000000000000000000000;
    always@(posedge clk)
    begin
        out = instr[adr];
    end
endmodule