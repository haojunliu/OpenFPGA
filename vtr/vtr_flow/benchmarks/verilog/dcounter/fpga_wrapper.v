`timescale 1ns/100ps

module dcounter
(
    d_out, clock, rst, d_en, rdy
);

    input clock;
    input rst;
    input d_en;
    output [15:0] d_out;

    output reg rdy;
