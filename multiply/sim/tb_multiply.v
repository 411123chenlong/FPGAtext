`timescale  1ns/1ns 
module  tb_multiply();
reg  [1:0]  in1;
reg  [1:0]  in2;
wire [3:0]   ji;
initial
    begin
        in1 <=2'b0;
        in2 <=2'b0;
    end
always #10 in1<={$random}%2;
always #10 in2<={$random}%2;
multiply multiply
(
    .in1(in1),
    .in2(in2),
    .ji (ji)

);
endmodule