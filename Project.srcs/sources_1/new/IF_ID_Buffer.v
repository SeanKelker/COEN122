module IF_ID_Buffer(clk, instrIn, PCin, instrOut, PCout);
    //Declares inputs and outputs
    input clk;
    input [31:0] instrIn;
    input [7:0] PCin;
    output reg [31:0] instrOut;
    output reg [7:0] PCout;
    always@(negedge clk)
    begin
        
        instrOut = instrIn;
        PCout = PCin;
    end
endmodule