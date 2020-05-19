`timescale 1ns / 1ps

module Sign_Extend(in, out);

input [21:0] in;
output reg [31:0] out;

always@(in)
begin 
    out[21:0] = in;
    if(in[21] == 1)
    begin
         out[31:22] = 10'b1111111111;
    end
    else
    begin
        out[31:22] = 10'b0000000000;    
    end
end 
    
endmodule
