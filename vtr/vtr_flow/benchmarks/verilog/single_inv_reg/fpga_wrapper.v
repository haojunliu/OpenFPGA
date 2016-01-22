`timescale 1ns/100ps

module single_inv_reg
(
    d_in,
    d_out,
    clock,
    rst,
    rdy
);
    input clock;
    input rst;
    input d_in;

    output d_out;

    output reg rdy;
