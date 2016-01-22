`timescale 1ns/100ps

module wide_inv
(
    d_in,
    d_out,
    clock,
    rst,
    rdy
);
    input clock;
    input rst;
    input [31:0] d_in;

    output [31:0] d_out;

    output reg rdy;
