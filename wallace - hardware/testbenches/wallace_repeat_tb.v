module wallace_repeat_tb;

    // Inputs to the DUT
    reg [7:0] in1, in2, in3, in4, in5, in6, in7, in8, in9;
    reg [7:0] scalar;

    // Outputs from the DUT
    wire [15:0] out1, out2, out3, out4, out5, out6, out7, out8, out9;

    // Instantiate the DUT
    wallace_repeat dut (
        .in1(in1), .in2(in2), .in3(in3), .in4(in4), .in5(in5),
        .in6(in6), .in7(in7), .in8(in8), .in9(in9),
        .scalar(scalar),
        .out1(out1), .out2(out2), .out3(out3), .out4(out4), .out5(out5),
        .out6(out6), .out7(out7), .out8(out8), .out9(out9)
    );

    // Test procedure
    initial begin
        // Monitor signals for debugging
        $monitor("Time=%0t | Scalar=%d | In1=%d Out1=%d | In2=%d Out2=%d | In3=%d Out3=%d | In4=%d Out4=%d | In5=%d Out5=%d | In6=%d Out6=%d | In7=%d Out7=%d | In8=%d Out8=%d | In9=%d Out9=%d",
                 $time, scalar, in1, out1, in2, out2, in3, out3, in4, out4, in5, out5, in6, out6, in7, out7, in8, out8, in9, out9);

        // Initialize inputs
        in1 = 8'd10; in2 = 8'd20; in3 = 8'd30; in4 = 8'd40; in5 = 8'd50;
        in6 = 8'd60; in7 = 8'd70; in8 = 8'd80; in9 = 8'd90;
        scalar = 8'd5;

        // Wait for results
        #10;

        // Change inputs
        in1 = 8'd3; in2 = 8'd1; in3 = 8'd4; in4 = 8'd1; in5 = 8'd5;
        in6 = 8'd9; in7 = 8'd1; in8 = 8'd1; in9 = 8'd1;
        scalar = 8'd2;

        // Wait for results
        #10;

        // Test with edge cases
        in1 = 8'd3; in2 = 8'd1; in3 = 8'd4; in4 = 8'd1; in5 = 8'd5;
        in6 = 8'd9; in7 = 8'd0; in8 = 8'd0; in9 = 8'd0;
        scalar = 8'd2;

        // Wait for results
        #10;

        // End simulation
        $stop;
    end

endmodule
