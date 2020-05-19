module Data_Path();
reg clk;
wire [7:0] PC_out,PC_Buffer_out, PC_outBuff;
wire [31:0] Instruction_Memory_out, PC_Mux_out, Instruction_Memory_outBuff;

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