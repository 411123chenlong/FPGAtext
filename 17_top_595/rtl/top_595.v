module top_595
(
input wire sys_clk , //ϵͳʱ�ӣ�Ƶ�� 50MHz
input wire sys_rst_n , //��λ�źţ��͵�ƽ��Ч

output wire stcp , //������ݴ洢��ʱ��
output wire shcp , //��λ�Ĵ�����ʱ������
output wire ds , //������������
output wire oe //���ʹ���ź�
 
);
wire [19:0] data ; //�����Ҫ��ʾ��ֵ
wire [5:0] point ; //С������ʾ,�ߵ�ƽ��Ч top_seg_595
wire seg_en ; //�����ʹ���źţ��ߵ�ƽ��Ч
wire sign ; //����λ���ߵ�ƽ��ʾ����

data_gen data_gen_inst
(
.sys_clk (sys_clk ), //ϵͳʱ�ӣ�Ƶ�� 50MHz
.sys_rst_n (sys_rst_n), //��λ�źţ��͵�ƽ��Ч

.data (data ), //�����Ҫ��ʾ��ֵ
.point (point ), //С������ʾ,�ߵ�ƽ��Ч
.seg_en (seg_en ), //�����ʹ���źţ��ߵ�ƽ��Ч
.sign (sign ) //����λ���ߵ�ƽ��ʾ����

);

seg_595_dynamic seg_595_dynamic_inst
(
.sys_clk (sys_clk ), //ϵͳʱ�ӣ�Ƶ�� 50MHz
.sys_rst_n (sys_rst_n ), //��λ�źţ�����Ч
.data (data ), //�����Ҫ��ʾ��ֵ
.point (point ), //С������ʾ,�ߵ�ƽ��Ч
.seg_en (seg_en ), //�����ʹ���źţ��ߵ�ƽ��Ч
.sign (sign ), //����λ���ߵ�ƽ��ʾ����

.stcp (stcp ), //������ݴ洢��ʱ��
.shcp (shcp ), //��λ�Ĵ�����ʱ������
.ds (ds ), //������������
.oe (oe ) //���ʹ���ź�

);
endmodule

