`timescale 1ns / 1ps

module reorder_logic(
    input [7:0] data_in0, data_in1, data_in2, data_in3, data_in4, data_in5, data_in6, data_in7, data_in8,
    input [3:0] index0, index1, index2, index3, index4, index5, index6, index7, index8,
    output reg [7:0] data_out0, data_out1, data_out2, data_out3, data_out4, data_out5, data_out6, data_out7, data_out8 
);


    task assign_data;
        input [7:0] data_in0, data_in1, data_in2, data_in3, data_in4, data_in5, data_in6, data_in7, data_in8;
        input [3:0] index0, index1, index2, index3, index4, index5, index6, index7, index8;
        output [7:0] data_out0, data_out1, data_out2, data_out3, data_out4, data_out5, data_out6, data_out7, data_out8;
        reg [7:0] data_in_array [0:8]; 
        integer i;

        begin
            data_in_array[0] = data_in0;
            data_in_array[1] = data_in1;
            data_in_array[2] = data_in2;
            data_in_array[3] = data_in3;
            data_in_array[4] = data_in4;
            data_in_array[5] = data_in5;
            data_in_array[6] = data_in6;
            data_in_array[7] = data_in7;
            data_in_array[8] = data_in8;

            data_out0 = data_in_array[index0];
            data_out1 = data_in_array[index1];
            data_out2 = data_in_array[index2];
            data_out3 = data_in_array[index3];
            data_out4 = data_in_array[index4];
            data_out5 = data_in_array[index5];
            data_out6 = data_in_array[index6];
            data_out7 = data_in_array[index7];
            data_out8 = data_in_array[index8];
        end
    endtask


    always @(*) begin
        assign_data(data_in0, data_in1, data_in2, data_in3, data_in4, data_in5, data_in6, data_in7, data_in8, 
                    index0, index1, index2, index3, index4, index5, index6, index7, index8, 
                    data_out0, data_out1, data_out2, data_out3, data_out4, data_out5, data_out6, data_out7, data_out8);
    end
endmodule
