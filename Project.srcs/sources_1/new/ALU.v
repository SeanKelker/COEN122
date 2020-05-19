module ALU(A, B, sel, out, N, Z);
    input [31:0] A, B; 
    input [3:0] sel;
    output reg [31:0] out;
    output reg N, Z;
    always@(A, B, sel)
    begin
        if(sel != 4'd4)
        begin
            N = 0;
            Z = 0;
        end
        if(sel==4'd0) 
        begin
            out = A + B;
            if(out==32'd0) 
                    Z = 1;
            if(out[31] == 1'b1) 
                    N = 1;
        end
        if(sel==4'd1)
        begin
            out = A + 1;
            if(out==32'd0) 
                    Z = 1;
            if(out[31] == 1'b1) 
                    N = 1;
        end
        if(sel==4'd2) 
        begin
            out = ~A + 1;
            if(out==32'd0) 
                    Z = 1;
            if(out[31] == 1'b1) 
                    N = 1;
        end
        if(sel==4'd3)
        begin
            out = A + ~B + 1;
            if(out==32'd0) 
                    Z = 1;
            if(out[31] == 1'b1) 
                    N = 1;
        end
        if(sel==4'd4) 
            out = A;
     end
endmodule