`timescale 1ns/1ns
module  tb_pll();
reg     sys_clk   ;
reg     sys_rst_n ;
wire    clk_mul_2 ;
wire    clk_div   ;
wire    clk_pha_90;
wire    clk_duc_20;
wire [1:0] cnt;

initial begin
    sys_clk=1'b1;
    sys_rst_n<=1'b0;
    #30
    sys_rst_n<=1'b1;
end

always #10  sys_clk=~sys_clk;
   
pll pll_inst
(
   .sys_clk   (sys_clk   ),
   .sys_rst_n (sys_rst_n ),
   .clk_mul_2 (clk_mul_2 ),
   .clk_div   (clk_div   ),
   .clk_pha_90(clk_pha_90),
   .clk_duc_20(clk_duc_20),
   .cnt       (cnt       )
);
endmodule