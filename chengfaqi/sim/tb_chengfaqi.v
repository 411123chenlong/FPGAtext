`timescale 1ns/1ns
module tb_chengfaqi();								
           
     reg [8:1]     a;
     reg [8:1]    b;
     wire[16:1]   out;
     //初始化
initial
begin
    a<=1'b0;
    b<=1'b0;
end
always #10 a<={$random}%2;
always #10 b<={$random}%2;

chengfaqi   chengfaqi_inst
(								
           .out(out),
           .a  (a)  ,
           .b  (b)  
);
endmodule