module  seg_595_static
(
    input   wire    sys_clk     ,
    input   wire    sys_rst_n   ,
    output  wire    ds          ,
    output  wire    stcp        ,
    output  wire    shcp        ,
    output  wire    oe          
);
wire    [5:0]   sel ;
wire    [7:0]   seg ;

seg_static  seg_static_inst
(
    .sys_clk  (sys_clk)        ,
    .sys_rst_n(sys_rst_n)       ,
    .sel      (sel)       , 
    .seg      (seg)

);

hc_595_ctrl hc_595_ctrl_inst
(
    .sys_clk  (sys_clk)      ,
    .sys_rst_n(sys_rst_n)      ,
    .sel      (sel)      ,
    .seg      (seg)      ,  
    .ds       (ds)      ,
    .stcp     (stcp)      ,
    .shcp     (shcp)      ,
    .oe       (oe)                        
);



endmodule