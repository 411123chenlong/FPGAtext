`timescale  1ns/1ns
module full_adder
(
    input   wire    in_1,
    input   wire    in_2,
    input   wire    cin,
    output  wire    sum,
    output  wire    count
);
wire    h0_count;
wire    h1_count;
wire    h0_sum;
half_adder  half_adder_inst0
(
    .in_1(in_1),
    .in_2(in_2),
    
    .sum(h0_sum),
    .count(h0_count)
);
half_adder  half_adder_inst1
(
    .in_1(cin),
    .in_2(h0_sum),
    
    .sum(sum),
    .count(h1_count)
);
assign  count = h1_count|h0_count;
endmodule