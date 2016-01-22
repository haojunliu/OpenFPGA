`timescale 1ns/100ps

module single_inv_reg_tb();

    reg clock, rst;
    reg d_in; 
    wire d_out;

    initial
    begin
        $display($time, " << Starting the Simulation >>");
        
        d_in = 1'b0;

        #30
        d_in = 1'b0;

        #20
        d_in = 1'b1;

        #20
        d_in = 1'b0;

        #40
        $display($time, " << Simulation Complete >>");
    end

    initial
    begin
        $monitor($time, ", clock = %b, rst = %b, d_in = %b, d_out = %b", 
                         clock,      rst,      d_in,      d_out);
    end

    initial
    begin
        clock = 1'b1;
        rst = 1'b1;
        #20 rst = 1'b0;
    end

    always
    begin
        #10 clock = ~clock;
    end

    // single_inv_reg DUT
    single_inv_reg dut ( .d_in(d_in),
                     .d_out(d_out),
                     .clock(clock),
                     .rst(rst)
                   );

endmodule
