module single_inv_reg
(
    d_in,
    d_out,
    clock,
    rst
);
    input clock;
    input rst;
    input d_in;

    reg d_d;

    output d_out;

    always @ (posedge clock)
        if(rst)
            d_d <= 1'b0;
        else
            d_d <= ~d_in;


    assign d_out = d_d;

endmodule
