`timescale 1ns/1ns
module tb_top_595();

wire stcp ; //������ݴ洢��ʱ��
wire shcp ; //��λ�Ĵ�����ʱ������ 
wire ds ; //������������
wire oe ; //���ʹ���ź�

reg sys_clk ;
reg sys_rst_n ;
initial
    begin
        sys_clk = 1'b1;
        sys_rst_n <= 1'b0;
        #100
        sys_rst_n <= 1'b1;
    end
//clk:����ʱ��
always #10 sys_clk <= ~sys_clk;

//���¶������ֵ�����̷���ʱ��
defparam top_595_inst.seg_595_dynamic_inst.seg_dynamic_inst.CNT_MAX=16'd19;
defparam top_595_inst.data_gen_inst.CNT_MAX = 23'd49;

top_595 top_595_inst
(
.sys_clk (sys_clk ), //ϵͳʱ�ӣ�Ƶ�� 50MHz
.sys_rst_n (sys_rst_n ), //��λ�źţ��͵�ƽ��Ч

.stcp (stcp ), //������ݴ洢��ʱ��
.shcp (shcp ), //��λ�Ĵ�����ʱ������
.ds (ds ), //������������
.oe (oe ) //���ʹ���ź�
);

endmodule
