module EX_WB_Buffer(clk, RegWrtIn, PC2RegIn, Mem2RegIn, RegWrtOut, PC2RegOut, Mem2RegOut, 
BranchNin, BranchZIn, JumpIn, JumpMemIn, BranchNOut, BranchZOut, JumpOut, JumpMemOut,
Nin, ZIn, Nout, Zout, DataIn, ALUIn, DataOut, ALUOut, RdIn, PCIn, RdOut, PCOut);
    
    input RegWrtIn, PC2RegIn, Mem2RegIn, BranchNin, BranchZIn, JumpIn, JumpMemIn, Nin, ZIn, clk;
    output reg RegWrtOut, PC2RegOut, Mem2RegOut, BranchNOut, BranchZOut, JumpOut, JumpMemOut, Nout, Zout;
    input [31:0] DataIn, ALUIn;
    output reg [31:0] DataOut, ALUOut;
    input [5:0] RdIn;
    output reg [5:0] RdOut;
    input [31:0] PCIn;
    output reg [31:0] PCOut;
    always@(negedge clk)
    begin
        RegWrtOut = RegWrtIn;
        PC2RegOut = PC2RegIn;
        Mem2RegOut = Mem2RegIn;
        BranchNOut = BranchNin;
        BranchZOut = BranchZIn;
        JumpOut = JumpIn;
        JumpMemOut = JumpMemIn;
        Nout = Nin;
        Zout = ZIn;
        DataOut = DataIn;
        ALUOut = ALUIn;
        RdOut = RdIn;
        PCOut = PCIn;
    end
endmodule