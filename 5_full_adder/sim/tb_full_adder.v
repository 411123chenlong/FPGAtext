`timescale  1ns/1ns


module  tb_full_adder();

//wire  define
wire            sum;
wire            count;

//reg   define
reg             in_1;
reg             in_2;
reg             cin;


//初始化输入信号
initial begin
    in_1 <= 1'b0;
    in_2 <= 1'b0;
    cin  <= 1'b0;
end

//in_1:产生输入随机数，模拟加数1的输入情况
always #10 in_1 <= {$random} % 2;    //取模求余数，产生随机数1'b0、1'b1，每隔10ns产生一次随机数

//in_2:产生输入随机数，模拟加数2的输入情况
always #10 in_2 <= {$random} % 2;

//cin:产生输入随机数，模拟前级进位的输入情况
always #10 cin <= {$random} % 2;

initial begin
    $timeformat(-9, 0, "ns", 6);
    $monitor("@time %t: in_1=%b in_2=%b cin=%b sum=%b count=%b", $time, in_1, in_2, cin, sum, count);
end

//------------- full_adder_inst --------------
full_adder  full_adder_inst
(
    .in_1    (in_1    ),  //input         in_1
    .in_2    (in_2    ),  //input         in_2
    .cin    (cin    ),  //input         cin

    .sum    (sum    ),  //output        sum
    .count   (count   )   //output        count
);

endmodule
