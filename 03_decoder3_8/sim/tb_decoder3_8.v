`timescale  1ns/1ns


module  tb_decoder3_8();

//********************************************************************//
//****************** Parameter and Internal Signal *******************//
//********************************************************************//
//wire  define
wire    [7:0]   out;

//reg   define
reg             in1;
reg             in2;
reg             in3;

//初始化输入信号
initial begin
    in1 <= 1'b0;
    in2 <= 1'b0;
    in3 <= 1'b0;
end

//in1:产生输入随机数，模拟输入端1的输入情况
always #10 in1 <= {$random} % 2;

//in2:产生输入随机数，模拟输入端2的输入情况
always #10 in2 <= {$random} % 2;

//in3:产生输入随机数，模拟输入端3的输入情况
always #10 in3 <= {$random} % 2;

initial begin
    $timeformat(-9, 0, "ns", 6);
    $monitor("@time %t: in1=%b in2=%b in3=%b out=%b", $time, in1, in2, in3, out);
end

decoder3_8  decoder3_8_inst(
    .in1    (in1),  //input             in1
    .in2    (in2),  //input             in2
    .in3    (in3),  //input             in3

    .out    (out)   //output    [7:0]   out
);

endmodule
