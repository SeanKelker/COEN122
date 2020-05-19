module AND(in1, in2, out);
input in1, in2;
output reg out;
always@(in1, in2)
begin
    if(in1 == 1'b1 && in2 == 1'b1)
        out = 1'b1;
    else
        out = 1'b0;
end
endmodule
