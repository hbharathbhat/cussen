`timescale 1ns / 1ps

module cussen_tb;


    reg clk;
    reg [7:0] in1, in2, in3, in4, in5, in6, in7, in8, in9;
    wire [7:0] out1, out2, out3, out4, out5, out6, out7, out8, out9;
    wire [3:0] pointer1, pointer2, pointer3, pointer4, pointer5;
    wire [3:0] pointer6, pointer7, pointer8, pointer9;
    wire [3:0] unique_count;


    cussen uut (
        .clk(clk),
        .in1(in1), .in2(in2), .in3(in3), .in4(in4), .in5(in5),
        .in6(in6), .in7(in7), .in8(in8), .in9(in9),
        .out1(out1), .out2(out2), .out3(out3), .out4(out4),
        .out5(out5), .out6(out6), .out7(out7), .out8(out8),
        .out9(out9),
        .pointer1(pointer1), .pointer2(pointer2),
        .pointer3(pointer3), .pointer4(pointer4), .pointer5(pointer5),
        .pointer6(pointer6), .pointer7(pointer7),
        .pointer8(pointer8), .pointer9(pointer9), 
        .unique_count(unique_count)
    );

    initial begin
        clk = 0;
        forever #5 clk = ~clk;
    end


    initial begin
        in1 = 8'd3;
        in2 = 8'd1;
        in3 = 8'd4;
        in4 = 8'd1;
        in5 = 8'd5;
        in6 = 8'd9;
        in7 = 8'd1;
        in8 = 8'd1;
        in9 = 8'd1;

        #20;
        $finish;
    end

endmodule
