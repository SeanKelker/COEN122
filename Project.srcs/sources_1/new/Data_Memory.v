module Data_Memory(clk, read, write, adr, in, out);
    input clk, read, write;
    input [31:0] adr;
    input [31:0] in;
    output reg [31:0] out;
    reg [31:0] data[65535:0];
    always@(posedge clk)
    begin
        if(write) 
            data[adr[15:0]] = in;
        else if(read) 
            out = data[adr[15:0]];
    end
endmodule