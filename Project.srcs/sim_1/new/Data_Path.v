module FullTest();
reg clk;
wire [7:0] PC_out,PC_Buffer_out, PC_outBuff;
wire [3:0] ALUop, ALUopBuff;
wire RegWrt, MemtoReg, PCtoReg, BrNeg, BrZ, Jump, JumpMem, MemRead, MemWrt, RegWrtBuff, MemtoRegBuff, PCtoRegBuff, BrNegBuff, BrZBuff, JumpBuff, JumpMemBuff, MemReadBuff, MemWrtBuff, NegFlag, ZeroFlag, NegFlagBuff, ZeroFlagBuff, RegWrtBuff2, MemtoRegBuff2, PCtoRegBuff2, BrNegBuff2, BrZBuff2, JumpBuff2, JumpMemBuff2;
wire [31:0] Instruction_Memory_out, PC_Mux_out, WBMuxOut, Instruction_Memory_outBuff, rsOut, rtOut, rsOutBuff, rtOutBuff, DataOut, ALUOut, ALUOutBuff, DataOutBuff, PC_outBuff2, PC_outBuff3;
wire [5:0] rdOutBuff, rdOutBuff2;
wire [31:0] SignExtOut, PCSignExtALUout;
wire deadwire1, deadwire2, and1out, and2out, OrOut;


initial
begin
    clk = 0;
    forever #5 clk = ~clk;
end

//First Stage
Mux PC_Mux({24'b0, PC_out} + 1, ALU_Buff_out, Data_Buff_out, 0, Or_out, JumpMem, PC_Mux_out);
PC PC(clk, PC_Mux_out[7:0], PC_out);
PC PC_Buffer(clk, PC_out, PC_Buffer_out);
instruction Instruction_Memory(clk, PC_out, Instruction_Memory_out);
IF_ID_Buffer IF_ID_Buffer(clk, Instruction_Memory_out,  PC_Buffer_out, Instruction_Memory_outBuff, PC_outBuff);

//Second Stage


//Third Stage


//Fourth Stage




initial
begin
end
endmodule