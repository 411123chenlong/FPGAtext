`timescale 1ns/1ns
module tb_top_595();

wire stcp ; //输出数据存储寄时钟
wire shcp ; //移位寄存器的时钟输入 
wire ds ; //串行数据输入
wire oe ; //输出使能信号

reg sys_clk ;
reg sys_rst_n ;
initial
    begin
        sys_clk = 1'b1;
        sys_rst_n <= 1'b0;
        #100
        sys_rst_n <= 1'b1;
    end
//clk:产生时钟
always #10 sys_clk <= ~sys_clk;

//重新定义参数值，缩短仿真时间
defparam top_595_inst.seg_595_dynamic_inst.seg_dynamic_inst.CNT_MAX=16'd19;
defparam top_595_inst.data_gen_inst.CNT_MAX = 23'd49;

top_595 top_595_inst
(
.sys_clk (sys_clk ), //系统时钟，频率 50MHz
.sys_rst_n (sys_rst_n ), //复位信号，低电平有效

.stcp (stcp ), //输出数据存储寄时钟
.shcp (shcp ), //移位寄存器的时钟输入
.ds (ds ), //串行数据输入
.oe (oe ) //输出使能信号
);

endmodule
