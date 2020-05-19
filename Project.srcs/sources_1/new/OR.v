module OR(in1, in2, in3,  out);
input in1, in2, in3;
output reg out;
always@(in1, in2)
begin
    if(in1 == 1'b1 || in2 == 1'b1 || in3 == 1'b1)
        out = 1'b1;
    else
        out = 1'b0;
end
endmodule