module mux2_1(

    input   wire in1,
    input   wire in2,
<<<<<<< HEAD
    input   wire sel,       //选通信号
=======
    input   wire sel,       //閫夐€氫俊鍙�
>>>>>>> efacbf2 (second)
    
    output  reg  out

);

always@(*)
    if(sel==1'b1)
        out=in1;
    else
        out=in2;
endmodule