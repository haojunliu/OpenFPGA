`timescale 1ns/100ps

module counter
(
    d_out, clock, rst, d_en, rdy
);

    input clock;
    input rst;
    input d_en;
    output [11:0] d_out;

    output reg rdy;
