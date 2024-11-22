`timescale 1ns / 1ps

module sorting_removal_difference_tb;

    // Testbench inputs
    reg clk;
    reg [7:0] in1, in2, in3, in4, in5, in6, in7, in8, in9;

    // Testbench outputs
    wire [7:0] out1, out2, out3, out4, out5, out6, out7, out8, out9;
    wire [3:0] unique_count;

    // Instantiate the module under test
    sorting_removal_difference uut (
        .clk(clk),
        .in1(in1), .in2(in2), .in3(in3), .in4(in4), .in5(in5), .in6(in6), .in7(in7), .in8(in8), .in9(in9),
        .out1(out1), .out2(out2), .out3(out3), .out4(out4), .out5(out5), .out6(out6), .out7(out7), .out8(out8), .out9(out9),
        .unique_count(unique_count)
    );

    // Clock generation
    initial begin
        clk = 0;
        forever #5 clk = ~clk;  // Toggle clock every 5ns
    end

    // Initialize inputs and apply test vectors
    initial begin
        // Initialize inputs with a mix of duplicate and unordered values
        in1 = 8'd3; in2 = 8'd1; in3 = 8'd4; in4 = 8'd1; in5 = 8'd5; 
        in6 = 8'd9; in7 = 8'd0; in8 = 8'd0; in9 = 8'd0;
        
        // Wait for one clock cycle for results
        #10;
        
        // Display initial values
        $display("Initial values:");
        $display("in1=%d, in2=%d, in3=%d, in4=%d, in5=%d, in6=%d, in7=%d, in8=%d, in9=%d", 
                 in1, in2, in3, in4, in5, in6, in7, in8, in9);

        // Wait for sorting, duplicate removal, and successive difference to complete
        #20;

        // Display results after sorting, duplicate removal, and successive difference calculation
        $display("Results:");
        $display("Unique count: %d", unique_count);
        $display("out1=%d, out2=%d, out3=%d, out4=%d, out5=%d, out6=%d, out7=%d, out8=%d, out9=%d",
                 out1, out2, out3, out4, out5, out6, out7, out8, out9);

        // Check output values manually or with assertions (optional)
        // Example: $assert(unique_count == expected_unique_count);

        // End simulation
        #10;
        $stop;
    end

endmodule
