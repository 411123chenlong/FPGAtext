module data_gen //��������ģ��
#(
    parameter CNT_MAX =23'd4999_999 ,
    parameter DATA_MAX =20'd999_999 
)
(
    input       wire            sys_rst_n      ,
    input       wire            sys_clk        ,
    output      reg     [19:0]  data           ,
    output      wire    [5:0]   point          ,
    output      wire            sign           ,
    output      reg             seg_en                    

);

reg     [22:0]      cnt_100ms;
reg                 cnt_flag;

always @(posedge sys_clk or negedge sys_rst_n) 
        if (sys_rst_n==1'b0)
            cnt_100ms<=23'd0;
        else    if(cnt_100ms==CNT_MAX)
            cnt_100ms<=23'd0;
        else
            cnt_100ms<=cnt_100ms+1'b1; 

always @(posedge sys_clk or negedge sys_rst_n) 
        if (sys_rst_n==1'b0)
            cnt_flag<=1'b0;
        else    if(cnt_100ms==CNT_MAX-23'd1)                
            cnt_flag<=1'b1;
        else
            cnt_flag<=1'b0;  

always @(posedge sys_clk or negedge sys_rst_n) 
        if (sys_rst_n==1'b0)
            data<=20'd0;
        else    if(data==DATA_MAX)
            data<=20'd0;
        else    if(cnt_flag==1'b1)
            data<=data+1'b1;
        else    
            data<=data;

assign  point=6'b000000;
assign  sign=1'b0;

always @(posedge sys_clk or negedge sys_rst_n) 
        if (sys_rst_n==1'b0)
            seg_en<=1'b0;
        else
            seg_en<=1'b1;    
    
endmodule