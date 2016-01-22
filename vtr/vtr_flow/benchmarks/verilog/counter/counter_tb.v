`timescale 1ns/100ps

module counter_tb();

    reg clock, rst;
    reg d_en;
    wire [11:0] d_out;

    initial
    begin
        $display($time, " << Starting the Simulation >>");
        
        d_en = 1'b0;

        #50
        rst = 1'b0;
        d_en = 1'b1;

        #164000
        $display($time, " << Simulation Complete >>");
        $stop;
    end

    initial
    begin
        $monitor($time, ", clock = %b, rst = %b, d_en = %b, d_out = %h", 
                           clock,      rst,      d_en,      d_out);
    end

    initial
    begin
        clock = 1'b1;
        rst = 1'b1;
        #40 rst = 1'b0;
    end

    always
    begin
        #10 clock = ~clock;
    end

    // counter DUT
    counter dut (    .d_out(d_out),
                     .d_en(d_en),
                     .clock(clock),
                     .rst(rst)
                   );

endmodule