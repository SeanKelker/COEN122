module ID_EX_Buffer(clk, RegWrtIn, PC2RegIn, Mem2RegIn, MemRdIn, MemWrtIn, ALUOPin, 
RegWrtOut, PC2RegOut, Mem2RegOut, MemRdOut, MemWrtOut, ALUOPOut, 
BranchNin, BranchZin, JumpIn, JumpMemIn, BranchNOut, BranchZOut, JumpOut, JumpMemOut,
RsIn, RtIn, RdIn, PCIn, RsOut, RtOut, RdOut, PCOut);
    
    input RegWrtIn, PC2RegIn, Mem2RegIn, MemRdIn, MemWrtIn, clk, BranchNin, BranchZin, JumpIn, JumpMemIn;
    output reg RegWrtOut, PC2RegOut, Mem2RegOut, MemRdOut, MemWrtOut, BranchNOut, BranchZOut, JumpOut, JumpMemOut;
    input [31:0] RsIn, RtIn;
    output reg [31:0] RsOut, RtOut;
    input [5:0] RdIn;
    input [3:0] ALUOPin;
    output reg [3:0] ALUOPOut;
    output reg [0:5] RdOut;
    input [31:0] PCIn;
    output reg [31:0] PCOut;
    always@(negedge clk)
    begin
       
        RegWrtOut = RegWrtIn;
        PC2RegOut = PC2RegIn;
        Mem2RegOut = Mem2RegIn;
        MemRdOut = MemRdIn;
        MemWrtOut = MemWrtIn;
        ALUOPOut = ALUOPin;
        BranchNOut = BranchNin;
        BranchZOut = BranchZin;
        JumpOut = JumpIn;
        JumpMemOut = JumpMemIn;
        RsOut = RsIn;
        RtOut = RtIn;
        RdOut = RdIn;
        PCOut = PCIn;
    end    
endmodule