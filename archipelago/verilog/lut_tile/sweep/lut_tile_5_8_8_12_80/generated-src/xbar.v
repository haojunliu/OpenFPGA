module xbar(input clk, input reset,
    input [30:0] io_xbar_in,
    output [39:0] io_xbar_out,
    input [199:0] io_mux_configs);

    assign io_xbar_out[0] = io_xbar_in[io_mux_configs[4:0]];
    assign io_xbar_out[1] = io_xbar_in[io_mux_configs[9:5]];
    assign io_xbar_out[2] = io_xbar_in[io_mux_configs[14:10]];
    assign io_xbar_out[3] = io_xbar_in[io_mux_configs[19:15]];
    assign io_xbar_out[4] = io_xbar_in[io_mux_configs[24:20]];
    assign io_xbar_out[5] = io_xbar_in[io_mux_configs[29:25]];
    assign io_xbar_out[6] = io_xbar_in[io_mux_configs[34:30]];
    assign io_xbar_out[7] = io_xbar_in[io_mux_configs[39:35]];
    assign io_xbar_out[8] = io_xbar_in[io_mux_configs[44:40]];
    assign io_xbar_out[9] = io_xbar_in[io_mux_configs[49:45]];
    assign io_xbar_out[10] = io_xbar_in[io_mux_configs[54:50]];
    assign io_xbar_out[11] = io_xbar_in[io_mux_configs[59:55]];
    assign io_xbar_out[12] = io_xbar_in[io_mux_configs[64:60]];
    assign io_xbar_out[13] = io_xbar_in[io_mux_configs[69:65]];
    assign io_xbar_out[14] = io_xbar_in[io_mux_configs[74:70]];
    assign io_xbar_out[15] = io_xbar_in[io_mux_configs[79:75]];
    assign io_xbar_out[16] = io_xbar_in[io_mux_configs[84:80]];
    assign io_xbar_out[17] = io_xbar_in[io_mux_configs[89:85]];
    assign io_xbar_out[18] = io_xbar_in[io_mux_configs[94:90]];
    assign io_xbar_out[19] = io_xbar_in[io_mux_configs[99:95]];
    assign io_xbar_out[20] = io_xbar_in[io_mux_configs[104:100]];
    assign io_xbar_out[21] = io_xbar_in[io_mux_configs[109:105]];
    assign io_xbar_out[22] = io_xbar_in[io_mux_configs[114:110]];
    assign io_xbar_out[23] = io_xbar_in[io_mux_configs[119:115]];
    assign io_xbar_out[24] = io_xbar_in[io_mux_configs[124:120]];
    assign io_xbar_out[25] = io_xbar_in[io_mux_configs[129:125]];
    assign io_xbar_out[26] = io_xbar_in[io_mux_configs[134:130]];
    assign io_xbar_out[27] = io_xbar_in[io_mux_configs[139:135]];
    assign io_xbar_out[28] = io_xbar_in[io_mux_configs[144:140]];
    assign io_xbar_out[29] = io_xbar_in[io_mux_configs[149:145]];
    assign io_xbar_out[30] = io_xbar_in[io_mux_configs[154:150]];
    assign io_xbar_out[31] = io_xbar_in[io_mux_configs[159:155]];
    assign io_xbar_out[32] = io_xbar_in[io_mux_configs[164:160]];
    assign io_xbar_out[33] = io_xbar_in[io_mux_configs[169:165]];
    assign io_xbar_out[34] = io_xbar_in[io_mux_configs[174:170]];
    assign io_xbar_out[35] = io_xbar_in[io_mux_configs[179:175]];
    assign io_xbar_out[36] = io_xbar_in[io_mux_configs[184:180]];
    assign io_xbar_out[37] = io_xbar_in[io_mux_configs[189:185]];
    assign io_xbar_out[38] = io_xbar_in[io_mux_configs[194:190]];
    assign io_xbar_out[39] = io_xbar_in[io_mux_configs[199:195]];

endmodule
