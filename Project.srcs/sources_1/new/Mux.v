module Mux(A,B,C,D, sel1, sel2,out);
    input [31:0] A, B, C, D;
    input sel1, sel2;
    output reg [31:0] out;
    always@(A, B, C, D, sel1, sel2)
    begin
        if(sel1 == 0 && sel2 == 0)
            out = A;
        else if(sel1 == 1 && sel2 ==0)
            out = B;
        else if(sel1 == 0 && sel2 == 1)
            out = C;
    end
endmodule
