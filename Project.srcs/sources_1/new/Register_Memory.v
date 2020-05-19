module Register_Memory(clk, data, rd, rs, rt, rsout, rtout, write);
  
    input clk, write;
    input [5:0] rd, rs, rt;
    input [31:0] data;
    output reg [31:0]  rsout, rtout;
    reg [31:0] registers [63:0];
    always@(posedge clk)
    begin
        if(write) 
            registers[rd] = data;
        rsout = registers[rs];
        rtout = registers[rt];

    end
endmodule