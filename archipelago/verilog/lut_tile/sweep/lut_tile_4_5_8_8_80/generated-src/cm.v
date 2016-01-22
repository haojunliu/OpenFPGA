module configs_latches(input clk, input reset,
    input [31:0] io_d_in,
    input [10:0] io_configs_en,
    output reg [351:0] io_configs_out);

    always @ (io_configs_en[0] or io_d_in)
        begin
             if (io_configs_en[0])
                  begin
                      io_configs_out[31:0] = io_d_in;
                  end
        end

    always @ (io_configs_en[1] or io_d_in)
        begin
             if (io_configs_en[1])
                  begin
                      io_configs_out[63:32] = io_d_in;
                  end
        end

    always @ (io_configs_en[2] or io_d_in)
        begin
             if (io_configs_en[2])
                  begin
                      io_configs_out[95:64] = io_d_in;
                  end
        end

    always @ (io_configs_en[3] or io_d_in)
        begin
             if (io_configs_en[3])
                  begin
                      io_configs_out[127:96] = io_d_in;
                  end
        end

    always @ (io_configs_en[4] or io_d_in)
        begin
             if (io_configs_en[4])
                  begin
                      io_configs_out[159:128] = io_d_in;
                  end
        end

    always @ (io_configs_en[5] or io_d_in)
        begin
             if (io_configs_en[5])
                  begin
                      io_configs_out[191:160] = io_d_in;
                  end
        end

    always @ (io_configs_en[6] or io_d_in)
        begin
             if (io_configs_en[6])
                  begin
                      io_configs_out[223:192] = io_d_in;
                  end
        end

    always @ (io_configs_en[7] or io_d_in)
        begin
             if (io_configs_en[7])
                  begin
                      io_configs_out[255:224] = io_d_in;
                  end
        end

    always @ (io_configs_en[8] or io_d_in)
        begin
             if (io_configs_en[8])
                  begin
                      io_configs_out[287:256] = io_d_in;
                  end
        end

    always @ (io_configs_en[9] or io_d_in)
        begin
             if (io_configs_en[9])
                  begin
                      io_configs_out[319:288] = io_d_in;
                  end
        end

    always @ (io_configs_en[10] or io_d_in)
        begin
             if (io_configs_en[10])
                  begin
                      io_configs_out[351:320] = io_d_in;
                  end
        end

endmodule
