module chengfaqi(								//两个8位 二进制乘法
           out,
           a,
           b
       );
 
parameter size = 8;
 
input [size: 1] a,b;
output [2*size:1] out;
reg [2*size:1] out;
 
integer i;
always @(a or b) 
begin
    out = 0;
    for(i=1;i<=size;i=i+1)
        if(b[i])
            out = out + (a << (i -1));
end
 
endmodule
 
