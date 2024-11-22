`timescale 1ns / 1ps

module cussen (
    input wire clk,
    input wire [7:0] in1, in2, in3, in4, in5, in6, in7, in8, in9,
    output reg [7:0] out1, out2, out3, out4, out5, out6, out7, out8, out9,
    output reg [3:0] pointer1, pointer2, pointer3, pointer4, pointer5, pointer6, pointer7, pointer8, pointer9
);

    reg [3:0] unique_count;
    reg [7:0] data1, data2, data3, data4, data5, data6, data7, data8, data9;
    reg [7:0] copy1, copy2, copy3, copy4, copy5, copy6, copy7, copy8, copy9;


    task swap_if_greater(
        inout reg [7:0] a, 
        inout reg [7:0] b
    );
        reg [7:0] temp;
        begin
            if (a > b) begin
                temp = a;
                a = b;
                b = temp;
            end
        end
    endtask

    // Bubble Sort Task
   // Modified Bubble Sort Task to skip zeros
task bubblesort;
    integer i, j;
    begin
        for (i = 8; i > 0; i = i - 1) begin
            if (data1 != 8'd0) swap_if_greater(data1, data2);
            if (data2 != 8'd0) swap_if_greater(data2, data3);
            if (data3 != 8'd0) swap_if_greater(data3, data4);
            if (data4 != 8'd0) swap_if_greater(data4, data5);
            if (data5 != 8'd0) swap_if_greater(data5, data6);
            if (data6 != 8'd0) swap_if_greater(data6, data7);
            if (data7 != 8'd0) swap_if_greater(data7, data8);
            if (data8 != 8'd0) swap_if_greater(data8, data9);
        end
    end
endtask


    // Remove Duplicate Task
    task removeDuplicates;
        input [7:0] in1, in2, in3, in4, in5, in6, in7, in8, in9;
        output reg [7:0] out1, out2, out3, out4, out5, out6, out7, out8, out9;
        output reg [3:0] unique_count;

        reg [7:0] temp_out[1:9];
        integer i, j;
        reg duplicate;

        begin
            unique_count = 0;
            for (i = 1; i <= 9; i = i + 1) temp_out[i] = 8'd0;

            for (i = 1; i <= 9; i = i + 1) begin
                duplicate = 0;

                for (j = 1; j <= unique_count; j = j + 1) begin
                    if (temp_out[j] == in1 && i == 1) duplicate = 1;
                    else if (temp_out[j] == in2 && i == 2) duplicate = 1;
                    else if (temp_out[j] == in3 && i == 3) duplicate = 1;
                    else if (temp_out[j] == in4 && i == 4) duplicate = 1;
                    else if (temp_out[j] == in5 && i == 5) duplicate = 1;
                    else if (temp_out[j] == in6 && i == 6) duplicate = 1;
                    else if (temp_out[j] == in7 && i == 7) duplicate = 1;
                    else if (temp_out[j] == in8 && i == 8) duplicate = 1;
                    else if (temp_out[j] == in9 && i == 9) duplicate = 1;
                end

                if (!duplicate) begin
                    unique_count = unique_count + 1;
                    case (i)
                        1: temp_out[unique_count] = in1;
                        2: temp_out[unique_count] = in2;
                        3: temp_out[unique_count] = in3;
                        4: temp_out[unique_count] = in4;
                        5: temp_out[unique_count] = in5;
                        6: temp_out[unique_count] = in6;
                        7: temp_out[unique_count] = in7;
                        8: temp_out[unique_count] = in8;
                        9: temp_out[unique_count] = in9;
                    endcase
                end
            end

            {out1, out2, out3, out4, out5, out6, out7, out8, out9} = 
                {temp_out[1], temp_out[2], temp_out[3], temp_out[4], temp_out[5], 
                 temp_out[6], temp_out[7], temp_out[8], temp_out[9]};
        end
    endtask

    // Successive Difference Task
// Successive Difference Task with zero-check
task calculate_successive_differences;
    input [7:0] a, b, c, d, e, f, g, h, i;
    output reg [7:0] res1, res2, res3, res4, res5, res6, res7, res8, res9;
    
    begin
        // First element remains the same
        res1 = a;

        // If the previous element is zero, skip the difference calculation
        res2 = (b != 8'd0) ? (b - a) : b;
        res3 = (c != 8'd0) ? (c - b) : c;
        res4 = (d != 8'd0) ? (d - c) : d;
        res5 = (e != 8'd0) ? (e - d) : e;
        res6 = (f != 8'd0) ? (f - e) : f;
        res7 = (g != 8'd0) ? (g - f) : g;
        res8 = (h != 8'd0) ? (h - g) : h;
        res9 = (h != 8'd0) ? (i - h) : i;
    end
endtask

    
    // Findpointer task
    task find_pointer;
        input [7:0] sort_val;
        output reg [3:0] pointer;

        begin
            pointer = 4'b1111; 
            

            if (sort_val == data1) pointer = 4'd0;
            else if (sort_val == data2) pointer = 4'd1;
            else if (sort_val == data3) pointer = 4'd2;
            else if (sort_val == data4) pointer = 4'd3;
            else if (sort_val == data5) pointer = 4'd4;
            else if (sort_val == data6) pointer = 4'd5;
            else if (sort_val == data7) pointer = 4'd6;
            else if (sort_val == data8) pointer = 4'd7;
            else if (sort_val == data9) pointer = 4'd8;
        end
    endtask


    // Always block to perform sorting, duplicate removal, and successive difference
    always @(posedge clk) begin
        data1 <= in1;
        data2 <= in2;
        data3 <= in3;
        data4 <= in4;
        data5 <= in5;
        data6 <= in6;
        data7 <= in7;
        data8 <= in8;
        data9 <= in9;

        copy1 <= in1;
        copy2 <= in2;
        copy3 <= in3;
        copy4 <= in4;
        copy5 <= in5;
        copy6 <= in6;
        copy7 <= in7;
        copy8 <= in8;
        copy9 <= in9;
        
        // Call bubble sort
        bubblesort;
        

        // Call removeDuplicates
        removeDuplicates(data1, data2, data3, data4, data5, data6, data7, data8, data9, 
                         data1, data2, data3, data4, data5, data6, data7, data8, data9, 
                         unique_count);
                         
        find_pointer(copy1, pointer1);
        find_pointer(copy2, pointer2);
        find_pointer(copy3, pointer3);
        find_pointer(copy4, pointer4);
        find_pointer(copy5, pointer5);
        find_pointer(copy6, pointer6);
        find_pointer(copy7, pointer7);
        find_pointer(copy8, pointer8);
        find_pointer(copy9, pointer9);

        // Call calculate_successive_differences on sorted and de-duplicated data
        calculate_successive_differences(data1, data2, data3, data4, data5, data6, data7, data8, data9, 
                                         out1, out2, out3, out4, out5, out6, out7, out8, out9);
                                         
                                         
    end

endmodule