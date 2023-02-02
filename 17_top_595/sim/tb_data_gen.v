`timescale 1ns/1ns
module  tb_data_gen();
 reg             sys_rst_n      ;
 reg             sys_clk        ;
 wire    [19:0]  data           ;
 wire    [5:0]   point          ;
 wire            sign           ;
 wire            seg_en         ;

initial
begin
    sys_clk=1'b1;
    sys_rst_n<=1'b0;
    #30
    sys_rst_n<=1'b1;    
end
always #10 sys_clk=~sys_clk;

 data_gen 
#(
    .CNT_MAX (9) ,
    .DATA_MAX(9)
)
data_gen_inst
(
    .sys_rst_n(sys_rst_n)      ,
    .sys_clk  (sys_clk  )      ,
    .data     (data     )      ,
    .point    (point    )      ,
    .sign     (sign     )      ,
    .seg_en   (seg_en   )       

);

endmodule