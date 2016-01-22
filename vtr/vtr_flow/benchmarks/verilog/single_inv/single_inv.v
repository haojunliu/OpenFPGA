module single_inv
(
    d_in,
    d_out,
    clock,
    rst
);

    input clock;
    input rst;
    input d_in;

    output d_out;

    assign d_out = ~d_in;

endmodule
