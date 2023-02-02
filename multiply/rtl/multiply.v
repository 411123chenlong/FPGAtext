`timescale 1ns/1ns
module  multiply
(
    input   wire [1:0]    in1,
    input   wire [1:0]    in2,
    output  wire [3:0]  ji

);
assign  ji=in1*in2;

endmodule