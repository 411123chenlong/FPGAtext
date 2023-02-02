module  divider_six
(
    input   wire        sys_clk     ,
    input   wire        sys_rst_n   ,
    
    output  reg         clk_out

);

reg     [1:0]       cnt;
always@(posedge sys_clk or  negedge sys_rst_n)
        if(sys_rst_n==1'b0)
            cnt<=2'd0;
        else if(cnt==2'd2)
            cnt<=2'd0;
        else
            cnt<=cnt+2'd1;
always@(posedge sys_clk or  negedge sys_rst_n)
        if(sys_rst_n==1'b0)
            clk_out<=1'b0;
        else if(cnt==2'd2)
            clk_out<=~clk_out;
        else
            clk_out<=clk_out;
endmodule