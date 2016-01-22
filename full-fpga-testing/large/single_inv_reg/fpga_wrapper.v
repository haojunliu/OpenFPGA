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
    wire [199:0]fpga_top_in;
    wire [199:0] fpga_top_out;
    wire [199:0] fpga_bot_in;
    wire [199:0] fpga_bot_out;
    wire [199:0] fpga_left_in;
    wire [199:0] fpga_left_out;
    wire [199:0] fpga_right_in;
    wire [199:0] fpga_right_out;
    reg [863:0] fpga_configs_in;
    reg [354:0] fpga_configs_en;

    assign d_out = fpga_right_out[22];
    assign fpga_top_in[0] = 1'b0;
    assign fpga_top_in[1] = 1'b0;
    assign fpga_top_in[2] = 1'b0;
    assign fpga_top_in[3] = 1'b0;
    assign fpga_top_in[4] = 1'b0;
    assign fpga_top_in[5] = 1'b0;
    assign fpga_top_in[6] = 1'b0;
    assign fpga_top_in[7] = 1'b0;
    assign fpga_top_in[8] = 1'b0;
    assign fpga_top_in[9] = 1'b0;
    assign fpga_top_in[10] = 1'b0;
    assign fpga_top_in[11] = 1'b0;
    assign fpga_top_in[12] = 1'b0;
    assign fpga_top_in[13] = 1'b0;
    assign fpga_top_in[14] = 1'b0;
    assign fpga_top_in[15] = 1'b0;
    assign fpga_top_in[16] = 1'b0;
    assign fpga_top_in[17] = 1'b0;
    assign fpga_top_in[18] = 1'b0;
    assign fpga_top_in[19] = 1'b0;
    assign fpga_top_in[20] = 1'b0;
    assign fpga_top_in[21] = 1'b0;
    assign fpga_top_in[22] = 1'b0;
    assign fpga_top_in[23] = 1'b0;
    assign fpga_top_in[24] = 1'b0;
    assign fpga_top_in[25] = 1'b0;
    assign fpga_top_in[26] = 1'b0;
    assign fpga_top_in[27] = 1'b0;
    assign fpga_top_in[28] = 1'b0;
    assign fpga_top_in[29] = 1'b0;
    assign fpga_top_in[30] = 1'b0;
    assign fpga_top_in[31] = 1'b0;
    assign fpga_top_in[32] = 1'b0;
    assign fpga_top_in[33] = 1'b0;
    assign fpga_top_in[34] = 1'b0;
    assign fpga_top_in[35] = 1'b0;
    assign fpga_top_in[36] = 1'b0;
    assign fpga_top_in[37] = 1'b0;
    assign fpga_top_in[38] = 1'b0;
    assign fpga_top_in[39] = 1'b0;
    assign fpga_top_in[40] = 1'b0;
    assign fpga_top_in[41] = 1'b0;
    assign fpga_top_in[42] = 1'b0;
    assign fpga_top_in[43] = 1'b0;
    assign fpga_top_in[44] = 1'b0;
    assign fpga_top_in[45] = 1'b0;
    assign fpga_top_in[46] = 1'b0;
    assign fpga_top_in[47] = 1'b0;
    assign fpga_top_in[48] = 1'b0;
    assign fpga_top_in[49] = 1'b0;
    assign fpga_top_in[50] = 1'b0;
    assign fpga_top_in[51] = 1'b0;
    assign fpga_top_in[52] = 1'b0;
    assign fpga_top_in[53] = 1'b0;
    assign fpga_top_in[54] = 1'b0;
    assign fpga_top_in[55] = 1'b0;
    assign fpga_top_in[56] = 1'b0;
    assign fpga_top_in[57] = 1'b0;
    assign fpga_top_in[58] = 1'b0;
    assign fpga_top_in[59] = 1'b0;
    assign fpga_top_in[60] = 1'b0;
    assign fpga_top_in[61] = 1'b0;
    assign fpga_top_in[62] = 1'b0;
    assign fpga_top_in[63] = 1'b0;
    assign fpga_top_in[64] = 1'b0;
    assign fpga_top_in[65] = 1'b0;
    assign fpga_top_in[66] = 1'b0;
    assign fpga_top_in[67] = 1'b0;
    assign fpga_top_in[68] = 1'b0;
    assign fpga_top_in[69] = 1'b0;
    assign fpga_top_in[70] = 1'b0;
    assign fpga_top_in[71] = 1'b0;
    assign fpga_top_in[72] = 1'b0;
    assign fpga_top_in[73] = 1'b0;
    assign fpga_top_in[74] = 1'b0;
    assign fpga_top_in[75] = 1'b0;
    assign fpga_top_in[76] = 1'b0;
    assign fpga_top_in[77] = 1'b0;
    assign fpga_top_in[78] = 1'b0;
    assign fpga_top_in[79] = 1'b0;
    assign fpga_top_in[80] = 1'b0;
    assign fpga_top_in[81] = 1'b0;
    assign fpga_top_in[82] = 1'b0;
    assign fpga_top_in[83] = 1'b0;
    assign fpga_top_in[84] = 1'b0;
    assign fpga_top_in[85] = 1'b0;
    assign fpga_top_in[86] = 1'b0;
    assign fpga_top_in[87] = 1'b0;
    assign fpga_top_in[88] = 1'b0;
    assign fpga_top_in[89] = 1'b0;
    assign fpga_top_in[90] = 1'b0;
    assign fpga_top_in[91] = 1'b0;
    assign fpga_top_in[92] = 1'b0;
    assign fpga_top_in[93] = 1'b0;
    assign fpga_top_in[94] = 1'b0;
    assign fpga_top_in[95] = 1'b0;
    assign fpga_top_in[96] = 1'b0;
    assign fpga_top_in[97] = 1'b0;
    assign fpga_top_in[98] = 1'b0;
    assign fpga_top_in[99] = 1'b0;
    assign fpga_top_in[100] = 1'b0;
    assign fpga_top_in[101] = 1'b0;
    assign fpga_top_in[102] = 1'b0;
    assign fpga_top_in[103] = 1'b0;
    assign fpga_top_in[104] = 1'b0;
    assign fpga_top_in[105] = 1'b0;
    assign fpga_top_in[106] = 1'b0;
    assign fpga_top_in[107] = 1'b0;
    assign fpga_top_in[108] = 1'b0;
    assign fpga_top_in[109] = 1'b0;
    assign fpga_top_in[110] = 1'b0;
    assign fpga_top_in[111] = 1'b0;
    assign fpga_top_in[112] = 1'b0;
    assign fpga_top_in[113] = 1'b0;
    assign fpga_top_in[114] = 1'b0;
    assign fpga_top_in[115] = 1'b0;
    assign fpga_top_in[116] = 1'b0;
    assign fpga_top_in[117] = 1'b0;
    assign fpga_top_in[118] = 1'b0;
    assign fpga_top_in[119] = 1'b0;
    assign fpga_top_in[120] = 1'b0;
    assign fpga_top_in[121] = 1'b0;
    assign fpga_top_in[122] = 1'b0;
    assign fpga_top_in[123] = 1'b0;
    assign fpga_top_in[124] = 1'b0;
    assign fpga_top_in[125] = 1'b0;
    assign fpga_top_in[126] = 1'b0;
    assign fpga_top_in[127] = 1'b0;
    assign fpga_top_in[128] = 1'b0;
    assign fpga_top_in[129] = 1'b0;
    assign fpga_top_in[130] = 1'b0;
    assign fpga_top_in[131] = 1'b0;
    assign fpga_top_in[132] = 1'b0;
    assign fpga_top_in[133] = 1'b0;
    assign fpga_top_in[134] = 1'b0;
    assign fpga_top_in[135] = 1'b0;
    assign fpga_top_in[136] = 1'b0;
    assign fpga_top_in[137] = 1'b0;
    assign fpga_top_in[138] = 1'b0;
    assign fpga_top_in[139] = 1'b0;
    assign fpga_top_in[140] = 1'b0;
    assign fpga_top_in[141] = 1'b0;
    assign fpga_top_in[142] = 1'b0;
    assign fpga_top_in[143] = 1'b0;
    assign fpga_top_in[144] = 1'b0;
    assign fpga_top_in[145] = 1'b0;
    assign fpga_top_in[146] = 1'b0;
    assign fpga_top_in[147] = 1'b0;
    assign fpga_top_in[148] = 1'b0;
    assign fpga_top_in[149] = 1'b0;
    assign fpga_top_in[150] = 1'b0;
    assign fpga_top_in[151] = 1'b0;
    assign fpga_top_in[152] = 1'b0;
    assign fpga_top_in[153] = 1'b0;
    assign fpga_top_in[154] = 1'b0;
    assign fpga_top_in[155] = 1'b0;
    assign fpga_top_in[156] = 1'b0;
    assign fpga_top_in[157] = 1'b0;
    assign fpga_top_in[158] = 1'b0;
    assign fpga_top_in[159] = 1'b0;
    assign fpga_top_in[160] = 1'b0;
    assign fpga_top_in[161] = 1'b0;
    assign fpga_top_in[162] = 1'b0;
    assign fpga_top_in[163] = 1'b0;
    assign fpga_top_in[164] = 1'b0;
    assign fpga_top_in[165] = 1'b0;
    assign fpga_top_in[166] = 1'b0;
    assign fpga_top_in[167] = 1'b0;
    assign fpga_top_in[168] = 1'b0;
    assign fpga_top_in[169] = 1'b0;
    assign fpga_top_in[170] = 1'b0;
    assign fpga_top_in[171] = 1'b0;
    assign fpga_top_in[172] = 1'b0;
    assign fpga_top_in[173] = 1'b0;
    assign fpga_top_in[174] = 1'b0;
    assign fpga_top_in[175] = 1'b0;
    assign fpga_top_in[176] = 1'b0;
    assign fpga_top_in[177] = 1'b0;
    assign fpga_top_in[178] = 1'b0;
    assign fpga_top_in[179] = 1'b0;
    assign fpga_top_in[180] = 1'b0;
    assign fpga_top_in[181] = 1'b0;
    assign fpga_top_in[182] = 1'b0;
    assign fpga_top_in[183] = 1'b0;
    assign fpga_top_in[184] = 1'b0;
    assign fpga_top_in[185] = 1'b0;
    assign fpga_top_in[186] = 1'b0;
    assign fpga_top_in[187] = 1'b0;
    assign fpga_top_in[188] = 1'b0;
    assign fpga_top_in[189] = 1'b0;
    assign fpga_top_in[190] = 1'b0;
    assign fpga_top_in[191] = 1'b0;
    assign fpga_top_in[192] = 1'b0;
    assign fpga_top_in[193] = 1'b0;
    assign fpga_top_in[194] = 1'b0;
    assign fpga_top_in[195] = 1'b0;
    assign fpga_top_in[196] = 1'b0;
    assign fpga_top_in[197] = 1'b0;
    assign fpga_top_in[198] = 1'b0;
    assign fpga_top_in[199] = 1'b0;
    assign fpga_bot_in[0] = 1'b0;
    assign fpga_bot_in[1] = 1'b0;
    assign fpga_bot_in[2] = 1'b0;
    assign fpga_bot_in[3] = 1'b0;
    assign fpga_bot_in[4] = 1'b0;
    assign fpga_bot_in[5] = 1'b0;
    assign fpga_bot_in[6] = 1'b0;
    assign fpga_bot_in[7] = 1'b0;
    assign fpga_bot_in[8] = 1'b0;
    assign fpga_bot_in[9] = 1'b0;
    assign fpga_bot_in[10] = 1'b0;
    assign fpga_bot_in[11] = 1'b0;
    assign fpga_bot_in[12] = 1'b0;
    assign fpga_bot_in[13] = 1'b0;
    assign fpga_bot_in[14] = 1'b0;
    assign fpga_bot_in[15] = 1'b0;
    assign fpga_bot_in[16] = 1'b0;
    assign fpga_bot_in[17] = 1'b0;
    assign fpga_bot_in[18] = 1'b0;
    assign fpga_bot_in[19] = 1'b0;
    assign fpga_bot_in[20] = 1'b0;
    assign fpga_bot_in[21] = 1'b0;
    assign fpga_bot_in[22] = 1'b0;
    assign fpga_bot_in[23] = 1'b0;
    assign fpga_bot_in[24] = 1'b0;
    assign fpga_bot_in[25] = 1'b0;
    assign fpga_bot_in[26] = 1'b0;
    assign fpga_bot_in[27] = 1'b0;
    assign fpga_bot_in[28] = 1'b0;
    assign fpga_bot_in[29] = 1'b0;
    assign fpga_bot_in[30] = 1'b0;
    assign fpga_bot_in[31] = 1'b0;
    assign fpga_bot_in[32] = 1'b0;
    assign fpga_bot_in[33] = 1'b0;
    assign fpga_bot_in[34] = 1'b0;
    assign fpga_bot_in[35] = 1'b0;
    assign fpga_bot_in[36] = 1'b0;
    assign fpga_bot_in[37] = 1'b0;
    assign fpga_bot_in[38] = 1'b0;
    assign fpga_bot_in[39] = 1'b0;
    assign fpga_bot_in[40] = 1'b0;
    assign fpga_bot_in[41] = 1'b0;
    assign fpga_bot_in[42] = 1'b0;
    assign fpga_bot_in[43] = 1'b0;
    assign fpga_bot_in[44] = 1'b0;
    assign fpga_bot_in[45] = 1'b0;
    assign fpga_bot_in[46] = 1'b0;
    assign fpga_bot_in[47] = 1'b0;
    assign fpga_bot_in[48] = 1'b0;
    assign fpga_bot_in[49] = 1'b0;
    assign fpga_bot_in[50] = 1'b0;
    assign fpga_bot_in[51] = 1'b0;
    assign fpga_bot_in[52] = 1'b0;
    assign fpga_bot_in[53] = 1'b0;
    assign fpga_bot_in[54] = 1'b0;
    assign fpga_bot_in[55] = 1'b0;
    assign fpga_bot_in[56] = 1'b0;
    assign fpga_bot_in[57] = 1'b0;
    assign fpga_bot_in[58] = 1'b0;
    assign fpga_bot_in[59] = 1'b0;
    assign fpga_bot_in[60] = 1'b0;
    assign fpga_bot_in[61] = 1'b0;
    assign fpga_bot_in[62] = 1'b0;
    assign fpga_bot_in[63] = 1'b0;
    assign fpga_bot_in[64] = 1'b0;
    assign fpga_bot_in[65] = 1'b0;
    assign fpga_bot_in[66] = 1'b0;
    assign fpga_bot_in[67] = 1'b0;
    assign fpga_bot_in[68] = 1'b0;
    assign fpga_bot_in[69] = 1'b0;
    assign fpga_bot_in[70] = 1'b0;
    assign fpga_bot_in[71] = 1'b0;
    assign fpga_bot_in[72] = 1'b0;
    assign fpga_bot_in[73] = 1'b0;
    assign fpga_bot_in[74] = 1'b0;
    assign fpga_bot_in[75] = 1'b0;
    assign fpga_bot_in[76] = 1'b0;
    assign fpga_bot_in[77] = 1'b0;
    assign fpga_bot_in[78] = 1'b0;
    assign fpga_bot_in[79] = 1'b0;
    assign fpga_bot_in[80] = 1'b0;
    assign fpga_bot_in[81] = 1'b0;
    assign fpga_bot_in[82] = 1'b0;
    assign fpga_bot_in[83] = 1'b0;
    assign fpga_bot_in[84] = 1'b0;
    assign fpga_bot_in[85] = 1'b0;
    assign fpga_bot_in[86] = 1'b0;
    assign fpga_bot_in[87] = 1'b0;
    assign fpga_bot_in[88] = 1'b0;
    assign fpga_bot_in[89] = 1'b0;
    assign fpga_bot_in[90] = 1'b0;
    assign fpga_bot_in[91] = 1'b0;
    assign fpga_bot_in[92] = 1'b0;
    assign fpga_bot_in[93] = 1'b0;
    assign fpga_bot_in[94] = 1'b0;
    assign fpga_bot_in[95] = 1'b0;
    assign fpga_bot_in[96] = 1'b0;
    assign fpga_bot_in[97] = 1'b0;
    assign fpga_bot_in[98] = 1'b0;
    assign fpga_bot_in[99] = 1'b0;
    assign fpga_bot_in[100] = 1'b0;
    assign fpga_bot_in[101] = 1'b0;
    assign fpga_bot_in[102] = 1'b0;
    assign fpga_bot_in[103] = 1'b0;
    assign fpga_bot_in[104] = 1'b0;
    assign fpga_bot_in[105] = 1'b0;
    assign fpga_bot_in[106] = 1'b0;
    assign fpga_bot_in[107] = 1'b0;
    assign fpga_bot_in[108] = 1'b0;
    assign fpga_bot_in[109] = 1'b0;
    assign fpga_bot_in[110] = 1'b0;
    assign fpga_bot_in[111] = 1'b0;
    assign fpga_bot_in[112] = 1'b0;
    assign fpga_bot_in[113] = 1'b0;
    assign fpga_bot_in[114] = 1'b0;
    assign fpga_bot_in[115] = 1'b0;
    assign fpga_bot_in[116] = 1'b0;
    assign fpga_bot_in[117] = 1'b0;
    assign fpga_bot_in[118] = 1'b0;
    assign fpga_bot_in[119] = 1'b0;
    assign fpga_bot_in[120] = 1'b0;
    assign fpga_bot_in[121] = 1'b0;
    assign fpga_bot_in[122] = 1'b0;
    assign fpga_bot_in[123] = 1'b0;
    assign fpga_bot_in[124] = 1'b0;
    assign fpga_bot_in[125] = 1'b0;
    assign fpga_bot_in[126] = 1'b0;
    assign fpga_bot_in[127] = 1'b0;
    assign fpga_bot_in[128] = 1'b0;
    assign fpga_bot_in[129] = 1'b0;
    assign fpga_bot_in[130] = 1'b0;
    assign fpga_bot_in[131] = 1'b0;
    assign fpga_bot_in[132] = 1'b0;
    assign fpga_bot_in[133] = 1'b0;
    assign fpga_bot_in[134] = 1'b0;
    assign fpga_bot_in[135] = 1'b0;
    assign fpga_bot_in[136] = 1'b0;
    assign fpga_bot_in[137] = 1'b0;
    assign fpga_bot_in[138] = 1'b0;
    assign fpga_bot_in[139] = 1'b0;
    assign fpga_bot_in[140] = 1'b0;
    assign fpga_bot_in[141] = 1'b0;
    assign fpga_bot_in[142] = 1'b0;
    assign fpga_bot_in[143] = 1'b0;
    assign fpga_bot_in[144] = 1'b0;
    assign fpga_bot_in[145] = 1'b0;
    assign fpga_bot_in[146] = 1'b0;
    assign fpga_bot_in[147] = 1'b0;
    assign fpga_bot_in[148] = 1'b0;
    assign fpga_bot_in[149] = 1'b0;
    assign fpga_bot_in[150] = 1'b0;
    assign fpga_bot_in[151] = 1'b0;
    assign fpga_bot_in[152] = 1'b0;
    assign fpga_bot_in[153] = 1'b0;
    assign fpga_bot_in[154] = 1'b0;
    assign fpga_bot_in[155] = 1'b0;
    assign fpga_bot_in[156] = 1'b0;
    assign fpga_bot_in[157] = 1'b0;
    assign fpga_bot_in[158] = 1'b0;
    assign fpga_bot_in[159] = 1'b0;
    assign fpga_bot_in[160] = 1'b0;
    assign fpga_bot_in[161] = 1'b0;
    assign fpga_bot_in[162] = 1'b0;
    assign fpga_bot_in[163] = 1'b0;
    assign fpga_bot_in[164] = 1'b0;
    assign fpga_bot_in[165] = 1'b0;
    assign fpga_bot_in[166] = 1'b0;
    assign fpga_bot_in[167] = 1'b0;
    assign fpga_bot_in[168] = 1'b0;
    assign fpga_bot_in[169] = 1'b0;
    assign fpga_bot_in[170] = 1'b0;
    assign fpga_bot_in[171] = 1'b0;
    assign fpga_bot_in[172] = 1'b0;
    assign fpga_bot_in[173] = 1'b0;
    assign fpga_bot_in[174] = 1'b0;
    assign fpga_bot_in[175] = 1'b0;
    assign fpga_bot_in[176] = 1'b0;
    assign fpga_bot_in[177] = 1'b0;
    assign fpga_bot_in[178] = 1'b0;
    assign fpga_bot_in[179] = 1'b0;
    assign fpga_bot_in[180] = 1'b0;
    assign fpga_bot_in[181] = 1'b0;
    assign fpga_bot_in[182] = 1'b0;
    assign fpga_bot_in[183] = 1'b0;
    assign fpga_bot_in[184] = 1'b0;
    assign fpga_bot_in[185] = 1'b0;
    assign fpga_bot_in[186] = 1'b0;
    assign fpga_bot_in[187] = 1'b0;
    assign fpga_bot_in[188] = 1'b0;
    assign fpga_bot_in[189] = 1'b0;
    assign fpga_bot_in[190] = 1'b0;
    assign fpga_bot_in[191] = 1'b0;
    assign fpga_bot_in[192] = 1'b0;
    assign fpga_bot_in[193] = 1'b0;
    assign fpga_bot_in[194] = 1'b0;
    assign fpga_bot_in[195] = 1'b0;
    assign fpga_bot_in[196] = 1'b0;
    assign fpga_bot_in[197] = 1'b0;
    assign fpga_bot_in[198] = 1'b0;
    assign fpga_bot_in[199] = 1'b0;
    assign fpga_left_in[0] = 1'b0;
    assign fpga_left_in[1] = 1'b0;
    assign fpga_left_in[2] = 1'b0;
    assign fpga_left_in[3] = 1'b0;
    assign fpga_left_in[4] = 1'b0;
    assign fpga_left_in[5] = 1'b0;
    assign fpga_left_in[6] = 1'b0;
    assign fpga_left_in[7] = 1'b0;
    assign fpga_left_in[8] = 1'b0;
    assign fpga_left_in[9] = 1'b0;
    assign fpga_left_in[10] = 1'b0;
    assign fpga_left_in[11] = 1'b0;
    assign fpga_left_in[12] = 1'b0;
    assign fpga_left_in[13] = 1'b0;
    assign fpga_left_in[14] = 1'b0;
    assign fpga_left_in[15] = 1'b0;
    assign fpga_left_in[16] = 1'b0;
    assign fpga_left_in[17] = 1'b0;
    assign fpga_left_in[18] = 1'b0;
    assign fpga_left_in[19] = 1'b0;
    assign fpga_left_in[20] = 1'b0;
    assign fpga_left_in[21] = 1'b0;
    assign fpga_left_in[22] = 1'b0;
    assign fpga_left_in[23] = 1'b0;
    assign fpga_left_in[24] = 1'b0;
    assign fpga_left_in[25] = 1'b0;
    assign fpga_left_in[26] = 1'b0;
    assign fpga_left_in[27] = 1'b0;
    assign fpga_left_in[28] = 1'b0;
    assign fpga_left_in[29] = 1'b0;
    assign fpga_left_in[30] = 1'b0;
    assign fpga_left_in[31] = 1'b0;
    assign fpga_left_in[32] = 1'b0;
    assign fpga_left_in[33] = 1'b0;
    assign fpga_left_in[34] = 1'b0;
    assign fpga_left_in[35] = 1'b0;
    assign fpga_left_in[36] = 1'b0;
    assign fpga_left_in[37] = 1'b0;
    assign fpga_left_in[38] = 1'b0;
    assign fpga_left_in[39] = 1'b0;
    assign fpga_left_in[40] = 1'b0;
    assign fpga_left_in[41] = 1'b0;
    assign fpga_left_in[42] = 1'b0;
    assign fpga_left_in[43] = 1'b0;
    assign fpga_left_in[44] = 1'b0;
    assign fpga_left_in[45] = 1'b0;
    assign fpga_left_in[46] = 1'b0;
    assign fpga_left_in[47] = 1'b0;
    assign fpga_left_in[48] = 1'b0;
    assign fpga_left_in[49] = 1'b0;
    assign fpga_left_in[50] = 1'b0;
    assign fpga_left_in[51] = 1'b0;
    assign fpga_left_in[52] = 1'b0;
    assign fpga_left_in[53] = 1'b0;
    assign fpga_left_in[54] = 1'b0;
    assign fpga_left_in[55] = 1'b0;
    assign fpga_left_in[56] = 1'b0;
    assign fpga_left_in[57] = 1'b0;
    assign fpga_left_in[58] = 1'b0;
    assign fpga_left_in[59] = 1'b0;
    assign fpga_left_in[60] = 1'b0;
    assign fpga_left_in[61] = 1'b0;
    assign fpga_left_in[62] = 1'b0;
    assign fpga_left_in[63] = 1'b0;
    assign fpga_left_in[64] = 1'b0;
    assign fpga_left_in[65] = 1'b0;
    assign fpga_left_in[66] = 1'b0;
    assign fpga_left_in[67] = 1'b0;
    assign fpga_left_in[68] = 1'b0;
    assign fpga_left_in[69] = 1'b0;
    assign fpga_left_in[70] = 1'b0;
    assign fpga_left_in[71] = 1'b0;
    assign fpga_left_in[72] = 1'b0;
    assign fpga_left_in[73] = 1'b0;
    assign fpga_left_in[74] = 1'b0;
    assign fpga_left_in[75] = 1'b0;
    assign fpga_left_in[76] = 1'b0;
    assign fpga_left_in[77] = 1'b0;
    assign fpga_left_in[78] = 1'b0;
    assign fpga_left_in[79] = 1'b0;
    assign fpga_left_in[80] = 1'b0;
    assign fpga_left_in[81] = 1'b0;
    assign fpga_left_in[82] = 1'b0;
    assign fpga_left_in[83] = 1'b0;
    assign fpga_left_in[84] = 1'b0;
    assign fpga_left_in[85] = 1'b0;
    assign fpga_left_in[86] = 1'b0;
    assign fpga_left_in[87] = 1'b0;
    assign fpga_left_in[88] = 1'b0;
    assign fpga_left_in[89] = 1'b0;
    assign fpga_left_in[90] = 1'b0;
    assign fpga_left_in[91] = 1'b0;
    assign fpga_left_in[92] = 1'b0;
    assign fpga_left_in[93] = 1'b0;
    assign fpga_left_in[94] = 1'b0;
    assign fpga_left_in[95] = 1'b0;
    assign fpga_left_in[96] = 1'b0;
    assign fpga_left_in[97] = 1'b0;
    assign fpga_left_in[98] = 1'b0;
    assign fpga_left_in[99] = 1'b0;
    assign fpga_left_in[100] = 1'b0;
    assign fpga_left_in[101] = 1'b0;
    assign fpga_left_in[102] = 1'b0;
    assign fpga_left_in[103] = 1'b0;
    assign fpga_left_in[104] = 1'b0;
    assign fpga_left_in[105] = 1'b0;
    assign fpga_left_in[106] = 1'b0;
    assign fpga_left_in[107] = 1'b0;
    assign fpga_left_in[108] = 1'b0;
    assign fpga_left_in[109] = 1'b0;
    assign fpga_left_in[110] = 1'b0;
    assign fpga_left_in[111] = 1'b0;
    assign fpga_left_in[112] = 1'b0;
    assign fpga_left_in[113] = 1'b0;
    assign fpga_left_in[114] = 1'b0;
    assign fpga_left_in[115] = 1'b0;
    assign fpga_left_in[116] = 1'b0;
    assign fpga_left_in[117] = 1'b0;
    assign fpga_left_in[118] = 1'b0;
    assign fpga_left_in[119] = 1'b0;
    assign fpga_left_in[120] = 1'b0;
    assign fpga_left_in[121] = 1'b0;
    assign fpga_left_in[122] = 1'b0;
    assign fpga_left_in[123] = 1'b0;
    assign fpga_left_in[124] = 1'b0;
    assign fpga_left_in[125] = 1'b0;
    assign fpga_left_in[126] = 1'b0;
    assign fpga_left_in[127] = 1'b0;
    assign fpga_left_in[128] = 1'b0;
    assign fpga_left_in[129] = 1'b0;
    assign fpga_left_in[130] = 1'b0;
    assign fpga_left_in[131] = 1'b0;
    assign fpga_left_in[132] = 1'b0;
    assign fpga_left_in[133] = 1'b0;
    assign fpga_left_in[134] = 1'b0;
    assign fpga_left_in[135] = 1'b0;
    assign fpga_left_in[136] = 1'b0;
    assign fpga_left_in[137] = 1'b0;
    assign fpga_left_in[138] = 1'b0;
    assign fpga_left_in[139] = 1'b0;
    assign fpga_left_in[140] = 1'b0;
    assign fpga_left_in[141] = 1'b0;
    assign fpga_left_in[142] = 1'b0;
    assign fpga_left_in[143] = 1'b0;
    assign fpga_left_in[144] = 1'b0;
    assign fpga_left_in[145] = 1'b0;
    assign fpga_left_in[146] = 1'b0;
    assign fpga_left_in[147] = 1'b0;
    assign fpga_left_in[148] = 1'b0;
    assign fpga_left_in[149] = 1'b0;
    assign fpga_left_in[150] = 1'b0;
    assign fpga_left_in[151] = 1'b0;
    assign fpga_left_in[152] = 1'b0;
    assign fpga_left_in[153] = 1'b0;
    assign fpga_left_in[154] = 1'b0;
    assign fpga_left_in[155] = 1'b0;
    assign fpga_left_in[156] = 1'b0;
    assign fpga_left_in[157] = 1'b0;
    assign fpga_left_in[158] = 1'b0;
    assign fpga_left_in[159] = 1'b0;
    assign fpga_left_in[160] = 1'b0;
    assign fpga_left_in[161] = 1'b0;
    assign fpga_left_in[162] = 1'b0;
    assign fpga_left_in[163] = 1'b0;
    assign fpga_left_in[164] = 1'b0;
    assign fpga_left_in[165] = 1'b0;
    assign fpga_left_in[166] = 1'b0;
    assign fpga_left_in[167] = 1'b0;
    assign fpga_left_in[168] = 1'b0;
    assign fpga_left_in[169] = 1'b0;
    assign fpga_left_in[170] = 1'b0;
    assign fpga_left_in[171] = 1'b0;
    assign fpga_left_in[172] = 1'b0;
    assign fpga_left_in[173] = 1'b0;
    assign fpga_left_in[174] = 1'b0;
    assign fpga_left_in[175] = 1'b0;
    assign fpga_left_in[176] = 1'b0;
    assign fpga_left_in[177] = 1'b0;
    assign fpga_left_in[178] = 1'b0;
    assign fpga_left_in[179] = 1'b0;
    assign fpga_left_in[180] = 1'b0;
    assign fpga_left_in[181] = 1'b0;
    assign fpga_left_in[182] = 1'b0;
    assign fpga_left_in[183] = 1'b0;
    assign fpga_left_in[184] = 1'b0;
    assign fpga_left_in[185] = 1'b0;
    assign fpga_left_in[186] = 1'b0;
    assign fpga_left_in[187] = 1'b0;
    assign fpga_left_in[188] = 1'b0;
    assign fpga_left_in[189] = 1'b0;
    assign fpga_left_in[190] = 1'b0;
    assign fpga_left_in[191] = 1'b0;
    assign fpga_left_in[192] = 1'b0;
    assign fpga_left_in[193] = 1'b0;
    assign fpga_left_in[194] = 1'b0;
    assign fpga_left_in[195] = 1'b0;
    assign fpga_left_in[196] = 1'b0;
    assign fpga_left_in[197] = 1'b0;
    assign fpga_left_in[198] = 1'b0;
    assign fpga_left_in[199] = 1'b0;
    assign fpga_right_in[0] = 1'b0;
    assign fpga_right_in[1] = 1'b0;
    assign fpga_right_in[2] = 1'b0;
    assign fpga_right_in[3] = 1'b0;
    assign fpga_right_in[4] = 1'b0;
    assign fpga_right_in[5] = 1'b0;
    assign fpga_right_in[6] = 1'b0;
    assign fpga_right_in[7] = 1'b0;
    assign fpga_right_in[8] = 1'b0;
    assign fpga_right_in[9] = 1'b0;
    assign fpga_right_in[10] = 1'b0;
    assign fpga_right_in[11] = 1'b0;
    assign fpga_right_in[12] = 1'b0;
    assign fpga_right_in[13] = 1'b0;
    assign fpga_right_in[14] = 1'b0;
    assign fpga_right_in[15] = 1'b0;
    assign fpga_right_in[16] = 1'b0;
    assign fpga_right_in[17] = 1'b0;
    assign fpga_right_in[18] = 1'b0;
    assign fpga_right_in[19] = 1'b0;
    assign fpga_right_in[20] = 1'b0;
    assign fpga_right_in[21] = 1'b0;
    assign fpga_right_in[22] = 1'b0;
    assign fpga_right_in[23] = 1'b0;
    assign fpga_right_in[24] = 1'b0;
    assign fpga_right_in[25] = 1'b0;
    assign fpga_right_in[26] = 1'b0;
    assign fpga_right_in[27] = rst;
    assign fpga_right_in[28] = 1'b0;
    assign fpga_right_in[29] = 1'b0;
    assign fpga_right_in[30] = 1'b0;
    assign fpga_right_in[31] = d_in;
    assign fpga_right_in[32] = 1'b0;
    assign fpga_right_in[33] = 1'b0;
    assign fpga_right_in[34] = 1'b0;
    assign fpga_right_in[35] = 1'b0;
    assign fpga_right_in[36] = 1'b0;
    assign fpga_right_in[37] = 1'b0;
    assign fpga_right_in[38] = 1'b0;
    assign fpga_right_in[39] = 1'b0;
    assign fpga_right_in[40] = 1'b0;
    assign fpga_right_in[41] = 1'b0;
    assign fpga_right_in[42] = 1'b0;
    assign fpga_right_in[43] = 1'b0;
    assign fpga_right_in[44] = 1'b0;
    assign fpga_right_in[45] = 1'b0;
    assign fpga_right_in[46] = 1'b0;
    assign fpga_right_in[47] = 1'b0;
    assign fpga_right_in[48] = 1'b0;
    assign fpga_right_in[49] = 1'b0;
    assign fpga_right_in[50] = 1'b0;
    assign fpga_right_in[51] = 1'b0;
    assign fpga_right_in[52] = 1'b0;
    assign fpga_right_in[53] = 1'b0;
    assign fpga_right_in[54] = 1'b0;
    assign fpga_right_in[55] = 1'b0;
    assign fpga_right_in[56] = 1'b0;
    assign fpga_right_in[57] = 1'b0;
    assign fpga_right_in[58] = 1'b0;
    assign fpga_right_in[59] = 1'b0;
    assign fpga_right_in[60] = 1'b0;
    assign fpga_right_in[61] = 1'b0;
    assign fpga_right_in[62] = 1'b0;
    assign fpga_right_in[63] = 1'b0;
    assign fpga_right_in[64] = 1'b0;
    assign fpga_right_in[65] = 1'b0;
    assign fpga_right_in[66] = 1'b0;
    assign fpga_right_in[67] = 1'b0;
    assign fpga_right_in[68] = 1'b0;
    assign fpga_right_in[69] = 1'b0;
    assign fpga_right_in[70] = 1'b0;
    assign fpga_right_in[71] = 1'b0;
    assign fpga_right_in[72] = 1'b0;
    assign fpga_right_in[73] = 1'b0;
    assign fpga_right_in[74] = 1'b0;
    assign fpga_right_in[75] = 1'b0;
    assign fpga_right_in[76] = 1'b0;
    assign fpga_right_in[77] = 1'b0;
    assign fpga_right_in[78] = 1'b0;
    assign fpga_right_in[79] = 1'b0;
    assign fpga_right_in[80] = 1'b0;
    assign fpga_right_in[81] = 1'b0;
    assign fpga_right_in[82] = 1'b0;
    assign fpga_right_in[83] = 1'b0;
    assign fpga_right_in[84] = 1'b0;
    assign fpga_right_in[85] = 1'b0;
    assign fpga_right_in[86] = 1'b0;
    assign fpga_right_in[87] = 1'b0;
    assign fpga_right_in[88] = 1'b0;
    assign fpga_right_in[89] = 1'b0;
    assign fpga_right_in[90] = 1'b0;
    assign fpga_right_in[91] = 1'b0;
    assign fpga_right_in[92] = 1'b0;
    assign fpga_right_in[93] = 1'b0;
    assign fpga_right_in[94] = 1'b0;
    assign fpga_right_in[95] = 1'b0;
    assign fpga_right_in[96] = 1'b0;
    assign fpga_right_in[97] = 1'b0;
    assign fpga_right_in[98] = 1'b0;
    assign fpga_right_in[99] = 1'b0;
    assign fpga_right_in[100] = 1'b0;
    assign fpga_right_in[101] = 1'b0;
    assign fpga_right_in[102] = 1'b0;
    assign fpga_right_in[103] = 1'b0;
    assign fpga_right_in[104] = 1'b0;
    assign fpga_right_in[105] = 1'b0;
    assign fpga_right_in[106] = 1'b0;
    assign fpga_right_in[107] = 1'b0;
    assign fpga_right_in[108] = 1'b0;
    assign fpga_right_in[109] = 1'b0;
    assign fpga_right_in[110] = 1'b0;
    assign fpga_right_in[111] = 1'b0;
    assign fpga_right_in[112] = 1'b0;
    assign fpga_right_in[113] = 1'b0;
    assign fpga_right_in[114] = 1'b0;
    assign fpga_right_in[115] = 1'b0;
    assign fpga_right_in[116] = 1'b0;
    assign fpga_right_in[117] = 1'b0;
    assign fpga_right_in[118] = 1'b0;
    assign fpga_right_in[119] = 1'b0;
    assign fpga_right_in[120] = 1'b0;
    assign fpga_right_in[121] = 1'b0;
    assign fpga_right_in[122] = 1'b0;
    assign fpga_right_in[123] = 1'b0;
    assign fpga_right_in[124] = 1'b0;
    assign fpga_right_in[125] = 1'b0;
    assign fpga_right_in[126] = 1'b0;
    assign fpga_right_in[127] = 1'b0;
    assign fpga_right_in[128] = 1'b0;
    assign fpga_right_in[129] = 1'b0;
    assign fpga_right_in[130] = 1'b0;
    assign fpga_right_in[131] = 1'b0;
    assign fpga_right_in[132] = 1'b0;
    assign fpga_right_in[133] = 1'b0;
    assign fpga_right_in[134] = 1'b0;
    assign fpga_right_in[135] = 1'b0;
    assign fpga_right_in[136] = 1'b0;
    assign fpga_right_in[137] = 1'b0;
    assign fpga_right_in[138] = 1'b0;
    assign fpga_right_in[139] = 1'b0;
    assign fpga_right_in[140] = 1'b0;
    assign fpga_right_in[141] = 1'b0;
    assign fpga_right_in[142] = 1'b0;
    assign fpga_right_in[143] = 1'b0;
    assign fpga_right_in[144] = 1'b0;
    assign fpga_right_in[145] = 1'b0;
    assign fpga_right_in[146] = 1'b0;
    assign fpga_right_in[147] = 1'b0;
    assign fpga_right_in[148] = 1'b0;
    assign fpga_right_in[149] = 1'b0;
    assign fpga_right_in[150] = 1'b0;
    assign fpga_right_in[151] = 1'b0;
    assign fpga_right_in[152] = 1'b0;
    assign fpga_right_in[153] = 1'b0;
    assign fpga_right_in[154] = 1'b0;
    assign fpga_right_in[155] = 1'b0;
    assign fpga_right_in[156] = 1'b0;
    assign fpga_right_in[157] = 1'b0;
    assign fpga_right_in[158] = 1'b0;
    assign fpga_right_in[159] = 1'b0;
    assign fpga_right_in[160] = 1'b0;
    assign fpga_right_in[161] = 1'b0;
    assign fpga_right_in[162] = 1'b0;
    assign fpga_right_in[163] = 1'b0;
    assign fpga_right_in[164] = 1'b0;
    assign fpga_right_in[165] = 1'b0;
    assign fpga_right_in[166] = 1'b0;
    assign fpga_right_in[167] = 1'b0;
    assign fpga_right_in[168] = 1'b0;
    assign fpga_right_in[169] = 1'b0;
    assign fpga_right_in[170] = 1'b0;
    assign fpga_right_in[171] = 1'b0;
    assign fpga_right_in[172] = 1'b0;
    assign fpga_right_in[173] = 1'b0;
    assign fpga_right_in[174] = 1'b0;
    assign fpga_right_in[175] = 1'b0;
    assign fpga_right_in[176] = 1'b0;
    assign fpga_right_in[177] = 1'b0;
    assign fpga_right_in[178] = 1'b0;
    assign fpga_right_in[179] = 1'b0;
    assign fpga_right_in[180] = 1'b0;
    assign fpga_right_in[181] = 1'b0;
    assign fpga_right_in[182] = 1'b0;
    assign fpga_right_in[183] = 1'b0;
    assign fpga_right_in[184] = 1'b0;
    assign fpga_right_in[185] = 1'b0;
    assign fpga_right_in[186] = 1'b0;
    assign fpga_right_in[187] = 1'b0;
    assign fpga_right_in[188] = 1'b0;
    assign fpga_right_in[189] = 1'b0;
    assign fpga_right_in[190] = 1'b0;
    assign fpga_right_in[191] = 1'b0;
    assign fpga_right_in[192] = 1'b0;
    assign fpga_right_in[193] = 1'b0;
    assign fpga_right_in[194] = 1'b0;
    assign fpga_right_in[195] = 1'b0;
    assign fpga_right_in[196] = 1'b0;
    assign fpga_right_in[197] = 1'b0;
    assign fpga_right_in[198] = 1'b0;
    assign fpga_right_in[199] = 1'b0;


    reg ff_en;
    integer in_f;

    integer read_status;    initial begin
       in_f = $fopen("single_inv_reg.bs", "r");
       fpga_configs_in = 1'b0;
       ff_en = 1'b0;
       rdy = 1'b0;
       fpga_configs_en = 1'b1;
    end

    initial begin
        repeat (10) @ (posedge clock);
        while ( ! $feof(in_f)) begin
        @ (posedge clock);
        read_status = $fscanf(in_f, "%b\n", fpga_configs_in);
        @ (posedge clock);
        fpga_configs_en = fpga_configs_en << 1;
        end
        repeat (10) @ (posedge clock);
        $fclose(in_f);
        #100 ff_en = 1'b1;
        #100 rdy = 1'b1;
    end

    fpga fpag_dut (
        .top_in(fpga_top_in),
        .bot_in(fpga_bot_in),
        .left_in(fpga_left_in),
        .right_in(fpga_right_in),
        .top_out(fpga_top_out),
        .bot_out(fpga_bot_out),
        .left_out(fpga_left_out),
        .right_out(fpga_right_out),
        .ff_en(ff_en),
        .configs_en(fpga_configs_en),
        .configs_in(fpga_configs_in),
        .clock(clock),
        .rst(rst)
    );

endmodule
