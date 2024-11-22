`timescale 1ns / 1ps

module reorder_logic_tb;


    reg [7:0] data_in0, data_in1, data_in2, data_in3, data_in4, data_in5, data_in6, data_in7, data_in8;
    reg [3:0] index0, index1, index2, index3, index4, index5, index6, index7, index8;
    wire [7:0] data_out0, data_out1, data_out2, data_out3, data_out4, data_out5, data_out6, data_out7, data_out8;


    reorder_logic dut (
        .data_in0(data_in0), .data_in1(data_in1), .data_in2(data_in2), .data_in3(data_in3), .data_in4(data_in4), 
        .data_in5(data_in5), .data_in6(data_in6), .data_in7(data_in7), .data_in8(data_in8),
        .index0(index0), .index1(index1), .index2(index2), .index3(index3), .index4(index4),
        .index5(index5), .index6(index6), .index7(index7), .index8(index8),
        .data_out0(data_out0), .data_out1(data_out1), .data_out2(data_out2), .data_out3(data_out3), .data_out4(data_out4),
        .data_out5(data_out5), .data_out6(data_out6), .data_out7(data_out7), .data_out8(data_out8)
    );

    initial begin

        data_in0 = 8'd2;
        data_in1 = 8'd6;
        data_in2 = 8'd8;
        data_in3 = 8'd10;
        data_in4 = 8'd18;
        data_in5 = 8'd20;
        data_in6 = 8'd22;
        data_in7 = 8'd24;
        data_in8 = 8'd26;


        index0 = 4'd1;
        index1 = 4'd0;
        index2 = 4'd2;
        index3 = 4'd0;
        index4 = 4'd3;
        index5 = 4'd4;
        index6 = 4'd5;
        index7 = 4'd6;
        index8 = 4'd8;

        #10; 

       
        $finish;
    end
endmodule
