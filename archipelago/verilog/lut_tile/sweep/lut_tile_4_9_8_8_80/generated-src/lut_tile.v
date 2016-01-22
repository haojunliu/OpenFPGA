module lut4(input clk, input reset,
    input [3:0] io_lut_in,
    output io_lut_out,
    input [15:0] io_lut_configs,
    input  io_mux_configs,
    input  io_ff_en);

  wire T0;
  wire T1;
  wire T2;
  wire[1:0] T3;
  wire lut4_o;
  wire[3:0] T4;
  reg[0:0] ff1;
  wire T5;

  assign io_lut_out = T0;
  assign T0 = T3[T1];
  assign T1 = T2;
  assign T2 = io_mux_configs;
  assign T3 = {ff1, lut4_o};
  assign lut4_o = io_lut_configs[T4];
  assign T4 = io_lut_in;
  assign T5 = 1'h1/* 1*/ ? lut4_o : ff1;

  always @(posedge clk) begin
    if(reset) begin
      ff1 <= 1'b0/* 0*/;
    end else if(io_ff_en) begin
      ff1 <= T5;
    end
  end
endmodule

module clb(input clk, input reset,
    input [35:0] io_clb_in,
    output[8:0] io_clb_out,
    input [143:0] io_lut_configs,
    input [8:0] io_mux_configs,
    input  io_ff_en);

  wire T0;
  wire[15:0] T1;
  wire[3:0] T2;
  wire T3;
  wire[15:0] T4;
  wire[3:0] T5;
  wire T6;
  wire[15:0] T7;
  wire[3:0] T8;
  wire T9;
  wire[15:0] T10;
  wire[3:0] T11;
  wire T12;
  wire[15:0] T13;
  wire[3:0] T14;
  wire T15;
  wire[15:0] T16;
  wire[3:0] T17;
  wire T18;
  wire[15:0] T19;
  wire[3:0] T20;
  wire T21;
  wire[15:0] T22;
  wire[3:0] T23;
  wire T24;
  wire[15:0] T25;
  wire[3:0] T26;
  wire[8:0] T27;
  wire[8:0] T28;
  wire[7:0] T29;
  wire[7:0] T30;
  wire[6:0] T31;
  wire[6:0] T32;
  wire[5:0] T33;
  wire[5:0] T34;
  wire[4:0] T35;
  wire[4:0] T36;
  wire[3:0] T37;
  wire[3:0] T38;
  wire[2:0] T39;
  wire[2:0] T40;
  wire[1:0] T41;
  wire[1:0] T42;
  wire T43;
  wire T44;
  wire lut4_io_lut_out;
  wire T45;
  wire T46;
  wire lut4_1_io_lut_out;
  wire T47;
  wire T48;
  wire lut4_2_io_lut_out;
  wire T49;
  wire T50;
  wire lut4_3_io_lut_out;
  wire T51;
  wire T52;
  wire lut4_4_io_lut_out;
  wire T53;
  wire T54;
  wire lut4_5_io_lut_out;
  wire T55;
  wire T56;
  wire lut4_6_io_lut_out;
  wire T57;
  wire T58;
  wire lut4_7_io_lut_out;
  wire T59;
  wire T60;
  wire lut4_8_io_lut_out;

  assign T0 = io_mux_configs[4'h8/* 8*/:4'h8/* 8*/];
  assign T1 = io_lut_configs[8'h8f/* 143*/:8'h80/* 128*/];
  assign T2 = io_clb_in[6'h23/* 35*/:6'h20/* 32*/];
  assign T3 = io_mux_configs[3'h7/* 7*/:3'h7/* 7*/];
  assign T4 = io_lut_configs[7'h7f/* 127*/:7'h70/* 112*/];
  assign T5 = io_clb_in[5'h1f/* 31*/:5'h1c/* 28*/];
  assign T6 = io_mux_configs[3'h6/* 6*/:3'h6/* 6*/];
  assign T7 = io_lut_configs[7'h6f/* 111*/:7'h60/* 96*/];
  assign T8 = io_clb_in[5'h1b/* 27*/:5'h18/* 24*/];
  assign T9 = io_mux_configs[3'h5/* 5*/:3'h5/* 5*/];
  assign T10 = io_lut_configs[7'h5f/* 95*/:7'h50/* 80*/];
  assign T11 = io_clb_in[5'h17/* 23*/:5'h14/* 20*/];
  assign T12 = io_mux_configs[3'h4/* 4*/:3'h4/* 4*/];
  assign T13 = io_lut_configs[7'h4f/* 79*/:7'h40/* 64*/];
  assign T14 = io_clb_in[5'h13/* 19*/:5'h10/* 16*/];
  assign T15 = io_mux_configs[2'h3/* 3*/:2'h3/* 3*/];
  assign T16 = io_lut_configs[6'h3f/* 63*/:6'h30/* 48*/];
  assign T17 = io_clb_in[4'hf/* 15*/:4'hc/* 12*/];
  assign T18 = io_mux_configs[2'h2/* 2*/:2'h2/* 2*/];
  assign T19 = io_lut_configs[6'h2f/* 47*/:6'h20/* 32*/];
  assign T20 = io_clb_in[4'hb/* 11*/:4'h8/* 8*/];
  assign T21 = io_mux_configs[1'h1/* 1*/:1'h1/* 1*/];
  assign T22 = io_lut_configs[5'h1f/* 31*/:5'h10/* 16*/];
  assign T23 = io_clb_in[3'h7/* 7*/:3'h4/* 4*/];
  assign T24 = io_mux_configs[1'h0/* 0*/:1'h0/* 0*/];
  assign T25 = io_lut_configs[4'hf/* 15*/:1'h0/* 0*/];
  assign T26 = io_clb_in[2'h3/* 3*/:1'h0/* 0*/];
  assign io_clb_out = T27;
  assign T27 = T28;
  assign T28 = {T59, T29};
  assign T29 = T30;
  assign T30 = {T57, T31};
  assign T31 = T32;
  assign T32 = {T55, T33};
  assign T33 = T34;
  assign T34 = {T53, T35};
  assign T35 = T36;
  assign T36 = {T51, T37};
  assign T37 = T38;
  assign T38 = {T49, T39};
  assign T39 = T40;
  assign T40 = {T47, T41};
  assign T41 = T42;
  assign T42 = {T45, T43};
  assign T43 = T44;
  assign T44 = lut4_io_lut_out;
  assign T45 = T46;
  assign T46 = lut4_1_io_lut_out;
  assign T47 = T48;
  assign T48 = lut4_2_io_lut_out;
  assign T49 = T50;
  assign T50 = lut4_3_io_lut_out;
  assign T51 = T52;
  assign T52 = lut4_4_io_lut_out;
  assign T53 = T54;
  assign T54 = lut4_5_io_lut_out;
  assign T55 = T56;
  assign T56 = lut4_6_io_lut_out;
  assign T57 = T58;
  assign T58 = lut4_7_io_lut_out;
  assign T59 = T60;
  assign T60 = lut4_8_io_lut_out;
  lut4 lut4(.clk(clk), .reset(reset),
       .io_lut_in( T26 ),
       .io_lut_out( lut4_io_lut_out ),
       .io_lut_configs( T25 ),
       .io_mux_configs( T24 ),
       .io_ff_en( io_ff_en ));
  lut4 lut4_1(.clk(clk), .reset(reset),
       .io_lut_in( T23 ),
       .io_lut_out( lut4_1_io_lut_out ),
       .io_lut_configs( T22 ),
       .io_mux_configs( T21 ),
       .io_ff_en( io_ff_en ));
  lut4 lut4_2(.clk(clk), .reset(reset),
       .io_lut_in( T20 ),
       .io_lut_out( lut4_2_io_lut_out ),
       .io_lut_configs( T19 ),
       .io_mux_configs( T18 ),
       .io_ff_en( io_ff_en ));
  lut4 lut4_3(.clk(clk), .reset(reset),
       .io_lut_in( T17 ),
       .io_lut_out( lut4_3_io_lut_out ),
       .io_lut_configs( T16 ),
       .io_mux_configs( T15 ),
       .io_ff_en( io_ff_en ));
  lut4 lut4_4(.clk(clk), .reset(reset),
       .io_lut_in( T14 ),
       .io_lut_out( lut4_4_io_lut_out ),
       .io_lut_configs( T13 ),
       .io_mux_configs( T12 ),
       .io_ff_en( io_ff_en ));
  lut4 lut4_5(.clk(clk), .reset(reset),
       .io_lut_in( T11 ),
       .io_lut_out( lut4_5_io_lut_out ),
       .io_lut_configs( T10 ),
       .io_mux_configs( T9 ),
       .io_ff_en( io_ff_en ));
  lut4 lut4_6(.clk(clk), .reset(reset),
       .io_lut_in( T8 ),
       .io_lut_out( lut4_6_io_lut_out ),
       .io_lut_configs( T7 ),
       .io_mux_configs( T6 ),
       .io_ff_en( io_ff_en ));
  lut4 lut4_7(.clk(clk), .reset(reset),
       .io_lut_in( T5 ),
       .io_lut_out( lut4_7_io_lut_out ),
       .io_lut_configs( T4 ),
       .io_mux_configs( T3 ),
       .io_ff_en( io_ff_en ));
  lut4 lut4_8(.clk(clk), .reset(reset),
       .io_lut_in( T2 ),
       .io_lut_out( lut4_8_io_lut_out ),
       .io_lut_configs( T1 ),
       .io_mux_configs( T0 ),
       .io_ff_en( io_ff_en ));
endmodule



module sbcb(
    input [167:0] io_ipin_in,
    input [62:0] io_ipin_config,
    input [319:0] io_chanxy_in,
    input [119:0] io_chanxy_config,
    output[20:0] io_ipin_out,
    output[39:0] io_chanxy_out);

  wire[39:0] T0;
  wire[39:0] T1;
  wire[38:0] T2;
  wire[38:0] T3;
  wire[37:0] T4;
  wire[37:0] T5;
  wire[36:0] T6;
  wire[36:0] T7;
  wire[35:0] T8;
  wire[35:0] T9;
  wire[34:0] T10;
  wire[34:0] T11;
  wire[33:0] T12;
  wire[33:0] T13;
  wire[32:0] T14;
  wire[32:0] T15;
  wire[31:0] T16;
  wire[31:0] T17;
  wire[30:0] T18;
  wire[30:0] T19;
  wire[29:0] T20;
  wire[29:0] T21;
  wire[28:0] T22;
  wire[28:0] T23;
  wire[27:0] T24;
  wire[27:0] T25;
  wire[26:0] T26;
  wire[26:0] T27;
  wire[25:0] T28;
  wire[25:0] T29;
  wire[24:0] T30;
  wire[24:0] T31;
  wire[23:0] T32;
  wire[23:0] T33;
  wire[22:0] T34;
  wire[22:0] T35;
  wire[21:0] T36;
  wire[21:0] T37;
  wire[20:0] T38;
  wire[20:0] T39;
  wire[19:0] T40;
  wire[19:0] T41;
  wire[18:0] T42;
  wire[18:0] T43;
  wire[17:0] T44;
  wire[17:0] T45;
  wire[16:0] T46;
  wire[16:0] T47;
  wire[15:0] T48;
  wire[15:0] T49;
  wire[14:0] T50;
  wire[14:0] T51;
  wire[13:0] T52;
  wire[13:0] T53;
  wire[12:0] T54;
  wire[12:0] T55;
  wire[11:0] T56;
  wire[11:0] T57;
  wire[10:0] T58;
  wire[10:0] T59;
  wire[9:0] T60;
  wire[9:0] T61;
  wire[8:0] T62;
  wire[8:0] T63;
  wire[7:0] T64;
  wire[7:0] T65;
  wire[6:0] T66;
  wire[6:0] T67;
  wire[5:0] T68;
  wire[5:0] T69;
  wire[4:0] T70;
  wire[4:0] T71;
  wire[3:0] T72;
  wire[3:0] T73;
  wire[2:0] T74;
  wire[2:0] T75;
  wire[1:0] T76;
  wire[1:0] T77;
  wire T78;
  wire T79;
  wire T80;
  wire[2:0] T81;
  wire[2:0] T82;
  wire[2:0] T83;
  wire[7:0] T84;
  wire[7:0] T85;
  wire T86;
  wire T87;
  wire T88;
  wire[2:0] T89;
  wire[2:0] T90;
  wire[2:0] T91;
  wire[7:0] T92;
  wire[7:0] T93;
  wire T94;
  wire T95;
  wire T96;
  wire[2:0] T97;
  wire[2:0] T98;
  wire[2:0] T99;
  wire[7:0] T100;
  wire[7:0] T101;
  wire T102;
  wire T103;
  wire T104;
  wire[2:0] T105;
  wire[2:0] T106;
  wire[2:0] T107;
  wire[7:0] T108;
  wire[7:0] T109;
  wire T110;
  wire T111;
  wire T112;
  wire[2:0] T113;
  wire[2:0] T114;
  wire[2:0] T115;
  wire[7:0] T116;
  wire[7:0] T117;
  wire T118;
  wire T119;
  wire T120;
  wire[2:0] T121;
  wire[2:0] T122;
  wire[2:0] T123;
  wire[7:0] T124;
  wire[7:0] T125;
  wire T126;
  wire T127;
  wire T128;
  wire[2:0] T129;
  wire[2:0] T130;
  wire[2:0] T131;
  wire[7:0] T132;
  wire[7:0] T133;
  wire T134;
  wire T135;
  wire T136;
  wire[2:0] T137;
  wire[2:0] T138;
  wire[2:0] T139;
  wire[7:0] T140;
  wire[7:0] T141;
  wire T142;
  wire T143;
  wire T144;
  wire[2:0] T145;
  wire[2:0] T146;
  wire[2:0] T147;
  wire[7:0] T148;
  wire[7:0] T149;
  wire T150;
  wire T151;
  wire T152;
  wire[2:0] T153;
  wire[2:0] T154;
  wire[2:0] T155;
  wire[7:0] T156;
  wire[7:0] T157;
  wire T158;
  wire T159;
  wire T160;
  wire[2:0] T161;
  wire[2:0] T162;
  wire[2:0] T163;
  wire[7:0] T164;
  wire[7:0] T165;
  wire T166;
  wire T167;
  wire T168;
  wire[2:0] T169;
  wire[2:0] T170;
  wire[2:0] T171;
  wire[7:0] T172;
  wire[7:0] T173;
  wire T174;
  wire T175;
  wire T176;
  wire[2:0] T177;
  wire[2:0] T178;
  wire[2:0] T179;
  wire[7:0] T180;
  wire[7:0] T181;
  wire T182;
  wire T183;
  wire T184;
  wire[2:0] T185;
  wire[2:0] T186;
  wire[2:0] T187;
  wire[7:0] T188;
  wire[7:0] T189;
  wire T190;
  wire T191;
  wire T192;
  wire[2:0] T193;
  wire[2:0] T194;
  wire[2:0] T195;
  wire[7:0] T196;
  wire[7:0] T197;
  wire T198;
  wire T199;
  wire T200;
  wire[2:0] T201;
  wire[2:0] T202;
  wire[2:0] T203;
  wire[7:0] T204;
  wire[7:0] T205;
  wire T206;
  wire T207;
  wire T208;
  wire[2:0] T209;
  wire[2:0] T210;
  wire[2:0] T211;
  wire[7:0] T212;
  wire[7:0] T213;
  wire T214;
  wire T215;
  wire T216;
  wire[2:0] T217;
  wire[2:0] T218;
  wire[2:0] T219;
  wire[7:0] T220;
  wire[7:0] T221;
  wire T222;
  wire T223;
  wire T224;
  wire[2:0] T225;
  wire[2:0] T226;
  wire[2:0] T227;
  wire[7:0] T228;
  wire[7:0] T229;
  wire T230;
  wire T231;
  wire T232;
  wire[2:0] T233;
  wire[2:0] T234;
  wire[2:0] T235;
  wire[7:0] T236;
  wire[7:0] T237;
  wire T238;
  wire T239;
  wire T240;
  wire[2:0] T241;
  wire[2:0] T242;
  wire[2:0] T243;
  wire[7:0] T244;
  wire[7:0] T245;
  wire T246;
  wire T247;
  wire T248;
  wire[2:0] T249;
  wire[2:0] T250;
  wire[2:0] T251;
  wire[7:0] T252;
  wire[7:0] T253;
  wire T254;
  wire T255;
  wire T256;
  wire[2:0] T257;
  wire[2:0] T258;
  wire[2:0] T259;
  wire[7:0] T260;
  wire[7:0] T261;
  wire T262;
  wire T263;
  wire T264;
  wire[2:0] T265;
  wire[2:0] T266;
  wire[2:0] T267;
  wire[7:0] T268;
  wire[7:0] T269;
  wire T270;
  wire T271;
  wire T272;
  wire[2:0] T273;
  wire[2:0] T274;
  wire[2:0] T275;
  wire[7:0] T276;
  wire[7:0] T277;
  wire T278;
  wire T279;
  wire T280;
  wire[2:0] T281;
  wire[2:0] T282;
  wire[2:0] T283;
  wire[7:0] T284;
  wire[7:0] T285;
  wire T286;
  wire T287;
  wire T288;
  wire[2:0] T289;
  wire[2:0] T290;
  wire[2:0] T291;
  wire[7:0] T292;
  wire[7:0] T293;
  wire T294;
  wire T295;
  wire T296;
  wire[2:0] T297;
  wire[2:0] T298;
  wire[2:0] T299;
  wire[7:0] T300;
  wire[7:0] T301;
  wire T302;
  wire T303;
  wire T304;
  wire[2:0] T305;
  wire[2:0] T306;
  wire[2:0] T307;
  wire[7:0] T308;
  wire[7:0] T309;
  wire T310;
  wire T311;
  wire T312;
  wire[2:0] T313;
  wire[2:0] T314;
  wire[2:0] T315;
  wire[7:0] T316;
  wire[7:0] T317;
  wire T318;
  wire T319;
  wire T320;
  wire[2:0] T321;
  wire[2:0] T322;
  wire[2:0] T323;
  wire[7:0] T324;
  wire[7:0] T325;
  wire T326;
  wire T327;
  wire T328;
  wire[2:0] T329;
  wire[2:0] T330;
  wire[2:0] T331;
  wire[7:0] T332;
  wire[7:0] T333;
  wire T334;
  wire T335;
  wire T336;
  wire[2:0] T337;
  wire[2:0] T338;
  wire[2:0] T339;
  wire[7:0] T340;
  wire[7:0] T341;
  wire T342;
  wire T343;
  wire T344;
  wire[2:0] T345;
  wire[2:0] T346;
  wire[2:0] T347;
  wire[7:0] T348;
  wire[7:0] T349;
  wire T350;
  wire T351;
  wire T352;
  wire[2:0] T353;
  wire[2:0] T354;
  wire[2:0] T355;
  wire[7:0] T356;
  wire[7:0] T357;
  wire T358;
  wire T359;
  wire T360;
  wire[2:0] T361;
  wire[2:0] T362;
  wire[2:0] T363;
  wire[7:0] T364;
  wire[7:0] T365;
  wire T366;
  wire T367;
  wire T368;
  wire[2:0] T369;
  wire[2:0] T370;
  wire[2:0] T371;
  wire[7:0] T372;
  wire[7:0] T373;
  wire T374;
  wire T375;
  wire T376;
  wire[2:0] T377;
  wire[2:0] T378;
  wire[2:0] T379;
  wire[7:0] T380;
  wire[7:0] T381;
  wire T382;
  wire T383;
  wire T384;
  wire[2:0] T385;
  wire[2:0] T386;
  wire[2:0] T387;
  wire[7:0] T388;
  wire[7:0] T389;
  wire T390;
  wire T391;
  wire T392;
  wire[2:0] T393;
  wire[2:0] T394;
  wire[2:0] T395;
  wire[7:0] T396;
  wire[7:0] T397;
  wire[20:0] T398;
  wire[20:0] T399;
  wire[19:0] T400;
  wire[19:0] T401;
  wire[18:0] T402;
  wire[18:0] T403;
  wire[17:0] T404;
  wire[17:0] T405;
  wire[16:0] T406;
  wire[16:0] T407;
  wire[15:0] T408;
  wire[15:0] T409;
  wire[14:0] T410;
  wire[14:0] T411;
  wire[13:0] T412;
  wire[13:0] T413;
  wire[12:0] T414;
  wire[12:0] T415;
  wire[11:0] T416;
  wire[11:0] T417;
  wire[10:0] T418;
  wire[10:0] T419;
  wire[9:0] T420;
  wire[9:0] T421;
  wire[8:0] T422;
  wire[8:0] T423;
  wire[7:0] T424;
  wire[7:0] T425;
  wire[6:0] T426;
  wire[6:0] T427;
  wire[5:0] T428;
  wire[5:0] T429;
  wire[4:0] T430;
  wire[4:0] T431;
  wire[3:0] T432;
  wire[3:0] T433;
  wire[2:0] T434;
  wire[2:0] T435;
  wire[1:0] T436;
  wire[1:0] T437;
  wire T438;
  wire T439;
  wire T440;
  wire[2:0] T441;
  wire[2:0] T442;
  wire[2:0] T443;
  wire[7:0] T444;
  wire[7:0] T445;
  wire T446;
  wire T447;
  wire T448;
  wire[2:0] T449;
  wire[2:0] T450;
  wire[2:0] T451;
  wire[7:0] T452;
  wire[7:0] T453;
  wire T454;
  wire T455;
  wire T456;
  wire[2:0] T457;
  wire[2:0] T458;
  wire[2:0] T459;
  wire[7:0] T460;
  wire[7:0] T461;
  wire T462;
  wire T463;
  wire T464;
  wire[2:0] T465;
  wire[2:0] T466;
  wire[2:0] T467;
  wire[7:0] T468;
  wire[7:0] T469;
  wire T470;
  wire T471;
  wire T472;
  wire[2:0] T473;
  wire[2:0] T474;
  wire[2:0] T475;
  wire[7:0] T476;
  wire[7:0] T477;
  wire T478;
  wire T479;
  wire T480;
  wire[2:0] T481;
  wire[2:0] T482;
  wire[2:0] T483;
  wire[7:0] T484;
  wire[7:0] T485;
  wire T486;
  wire T487;
  wire T488;
  wire[2:0] T489;
  wire[2:0] T490;
  wire[2:0] T491;
  wire[7:0] T492;
  wire[7:0] T493;
  wire T494;
  wire T495;
  wire T496;
  wire[2:0] T497;
  wire[2:0] T498;
  wire[2:0] T499;
  wire[7:0] T500;
  wire[7:0] T501;
  wire T502;
  wire T503;
  wire T504;
  wire[2:0] T505;
  wire[2:0] T506;
  wire[2:0] T507;
  wire[7:0] T508;
  wire[7:0] T509;
  wire T510;
  wire T511;
  wire T512;
  wire[2:0] T513;
  wire[2:0] T514;
  wire[2:0] T515;
  wire[7:0] T516;
  wire[7:0] T517;
  wire T518;
  wire T519;
  wire T520;
  wire[2:0] T521;
  wire[2:0] T522;
  wire[2:0] T523;
  wire[7:0] T524;
  wire[7:0] T525;
  wire T526;
  wire T527;
  wire T528;
  wire[2:0] T529;
  wire[2:0] T530;
  wire[2:0] T531;
  wire[7:0] T532;
  wire[7:0] T533;
  wire T534;
  wire T535;
  wire T536;
  wire[2:0] T537;
  wire[2:0] T538;
  wire[2:0] T539;
  wire[7:0] T540;
  wire[7:0] T541;
  wire T542;
  wire T543;
  wire T544;
  wire[2:0] T545;
  wire[2:0] T546;
  wire[2:0] T547;
  wire[7:0] T548;
  wire[7:0] T549;
  wire T550;
  wire T551;
  wire T552;
  wire[2:0] T553;
  wire[2:0] T554;
  wire[2:0] T555;
  wire[7:0] T556;
  wire[7:0] T557;
  wire T558;
  wire T559;
  wire T560;
  wire[2:0] T561;
  wire[2:0] T562;
  wire[2:0] T563;
  wire[7:0] T564;
  wire[7:0] T565;
  wire T566;
  wire T567;
  wire T568;
  wire[2:0] T569;
  wire[2:0] T570;
  wire[2:0] T571;
  wire[7:0] T572;
  wire[7:0] T573;
  wire T574;
  wire T575;
  wire T576;
  wire[2:0] T577;
  wire[2:0] T578;
  wire[2:0] T579;
  wire[7:0] T580;
  wire[7:0] T581;
  wire T582;
  wire T583;
  wire T584;
  wire[2:0] T585;
  wire[2:0] T586;
  wire[2:0] T587;
  wire[7:0] T588;
  wire[7:0] T589;
  wire T590;
  wire T591;
  wire T592;
  wire[2:0] T593;
  wire[2:0] T594;
  wire[2:0] T595;
  wire[7:0] T596;
  wire[7:0] T597;
  wire T598;
  wire T599;
  wire T600;
  wire[2:0] T601;
  wire[2:0] T602;
  wire[2:0] T603;
  wire[7:0] T604;
  wire[7:0] T605;

  assign io_chanxy_out = T0;
  assign T0 = T1;
  assign T1 = {T390, T2};
  assign T2 = T3;
  assign T3 = {T382, T4};
  assign T4 = T5;
  assign T5 = {T374, T6};
  assign T6 = T7;
  assign T7 = {T366, T8};
  assign T8 = T9;
  assign T9 = {T358, T10};
  assign T10 = T11;
  assign T11 = {T350, T12};
  assign T12 = T13;
  assign T13 = {T342, T14};
  assign T14 = T15;
  assign T15 = {T334, T16};
  assign T16 = T17;
  assign T17 = {T326, T18};
  assign T18 = T19;
  assign T19 = {T318, T20};
  assign T20 = T21;
  assign T21 = {T310, T22};
  assign T22 = T23;
  assign T23 = {T302, T24};
  assign T24 = T25;
  assign T25 = {T294, T26};
  assign T26 = T27;
  assign T27 = {T286, T28};
  assign T28 = T29;
  assign T29 = {T278, T30};
  assign T30 = T31;
  assign T31 = {T270, T32};
  assign T32 = T33;
  assign T33 = {T262, T34};
  assign T34 = T35;
  assign T35 = {T254, T36};
  assign T36 = T37;
  assign T37 = {T246, T38};
  assign T38 = T39;
  assign T39 = {T238, T40};
  assign T40 = T41;
  assign T41 = {T230, T42};
  assign T42 = T43;
  assign T43 = {T222, T44};
  assign T44 = T45;
  assign T45 = {T214, T46};
  assign T46 = T47;
  assign T47 = {T206, T48};
  assign T48 = T49;
  assign T49 = {T198, T50};
  assign T50 = T51;
  assign T51 = {T190, T52};
  assign T52 = T53;
  assign T53 = {T182, T54};
  assign T54 = T55;
  assign T55 = {T174, T56};
  assign T56 = T57;
  assign T57 = {T166, T58};
  assign T58 = T59;
  assign T59 = {T158, T60};
  assign T60 = T61;
  assign T61 = {T150, T62};
  assign T62 = T63;
  assign T63 = {T142, T64};
  assign T64 = T65;
  assign T65 = {T134, T66};
  assign T66 = T67;
  assign T67 = {T126, T68};
  assign T68 = T69;
  assign T69 = {T118, T70};
  assign T70 = T71;
  assign T71 = {T110, T72};
  assign T72 = T73;
  assign T73 = {T102, T74};
  assign T74 = T75;
  assign T75 = {T94, T76};
  assign T76 = T77;
  assign T77 = {T86, T78};
  assign T78 = T79;
  assign T79 = T80;
  assign T80 = T84[T81];
  assign T81 = T82;
  assign T82 = T83;
  assign T83 = io_chanxy_config[2'h2/* 2*/:1'h0/* 0*/];
  assign T84 = T85;
  assign T85 = io_chanxy_in[3'h7/* 7*/:1'h0/* 0*/];
  assign T86 = T87;
  assign T87 = T88;
  assign T88 = T92[T89];
  assign T89 = T90;
  assign T90 = T91;
  assign T91 = io_chanxy_config[3'h5/* 5*/:2'h3/* 3*/];
  assign T92 = T93;
  assign T93 = io_chanxy_in[4'hf/* 15*/:4'h8/* 8*/];
  assign T94 = T95;
  assign T95 = T96;
  assign T96 = T100[T97];
  assign T97 = T98;
  assign T98 = T99;
  assign T99 = io_chanxy_config[4'h8/* 8*/:3'h6/* 6*/];
  assign T100 = T101;
  assign T101 = io_chanxy_in[5'h17/* 23*/:5'h10/* 16*/];
  assign T102 = T103;
  assign T103 = T104;
  assign T104 = T108[T105];
  assign T105 = T106;
  assign T106 = T107;
  assign T107 = io_chanxy_config[4'hb/* 11*/:4'h9/* 9*/];
  assign T108 = T109;
  assign T109 = io_chanxy_in[5'h1f/* 31*/:5'h18/* 24*/];
  assign T110 = T111;
  assign T111 = T112;
  assign T112 = T116[T113];
  assign T113 = T114;
  assign T114 = T115;
  assign T115 = io_chanxy_config[4'he/* 14*/:4'hc/* 12*/];
  assign T116 = T117;
  assign T117 = io_chanxy_in[6'h27/* 39*/:6'h20/* 32*/];
  assign T118 = T119;
  assign T119 = T120;
  assign T120 = T124[T121];
  assign T121 = T122;
  assign T122 = T123;
  assign T123 = io_chanxy_config[5'h11/* 17*/:4'hf/* 15*/];
  assign T124 = T125;
  assign T125 = io_chanxy_in[6'h2f/* 47*/:6'h28/* 40*/];
  assign T126 = T127;
  assign T127 = T128;
  assign T128 = T132[T129];
  assign T129 = T130;
  assign T130 = T131;
  assign T131 = io_chanxy_config[5'h14/* 20*/:5'h12/* 18*/];
  assign T132 = T133;
  assign T133 = io_chanxy_in[6'h37/* 55*/:6'h30/* 48*/];
  assign T134 = T135;
  assign T135 = T136;
  assign T136 = T140[T137];
  assign T137 = T138;
  assign T138 = T139;
  assign T139 = io_chanxy_config[5'h17/* 23*/:5'h15/* 21*/];
  assign T140 = T141;
  assign T141 = io_chanxy_in[6'h3f/* 63*/:6'h38/* 56*/];
  assign T142 = T143;
  assign T143 = T144;
  assign T144 = T148[T145];
  assign T145 = T146;
  assign T146 = T147;
  assign T147 = io_chanxy_config[5'h1a/* 26*/:5'h18/* 24*/];
  assign T148 = T149;
  assign T149 = io_chanxy_in[7'h47/* 71*/:7'h40/* 64*/];
  assign T150 = T151;
  assign T151 = T152;
  assign T152 = T156[T153];
  assign T153 = T154;
  assign T154 = T155;
  assign T155 = io_chanxy_config[5'h1d/* 29*/:5'h1b/* 27*/];
  assign T156 = T157;
  assign T157 = io_chanxy_in[7'h4f/* 79*/:7'h48/* 72*/];
  assign T158 = T159;
  assign T159 = T160;
  assign T160 = T164[T161];
  assign T161 = T162;
  assign T162 = T163;
  assign T163 = io_chanxy_config[6'h20/* 32*/:5'h1e/* 30*/];
  assign T164 = T165;
  assign T165 = io_chanxy_in[7'h57/* 87*/:7'h50/* 80*/];
  assign T166 = T167;
  assign T167 = T168;
  assign T168 = T172[T169];
  assign T169 = T170;
  assign T170 = T171;
  assign T171 = io_chanxy_config[6'h23/* 35*/:6'h21/* 33*/];
  assign T172 = T173;
  assign T173 = io_chanxy_in[7'h5f/* 95*/:7'h58/* 88*/];
  assign T174 = T175;
  assign T175 = T176;
  assign T176 = T180[T177];
  assign T177 = T178;
  assign T178 = T179;
  assign T179 = io_chanxy_config[6'h26/* 38*/:6'h24/* 36*/];
  assign T180 = T181;
  assign T181 = io_chanxy_in[7'h67/* 103*/:7'h60/* 96*/];
  assign T182 = T183;
  assign T183 = T184;
  assign T184 = T188[T185];
  assign T185 = T186;
  assign T186 = T187;
  assign T187 = io_chanxy_config[6'h29/* 41*/:6'h27/* 39*/];
  assign T188 = T189;
  assign T189 = io_chanxy_in[7'h6f/* 111*/:7'h68/* 104*/];
  assign T190 = T191;
  assign T191 = T192;
  assign T192 = T196[T193];
  assign T193 = T194;
  assign T194 = T195;
  assign T195 = io_chanxy_config[6'h2c/* 44*/:6'h2a/* 42*/];
  assign T196 = T197;
  assign T197 = io_chanxy_in[7'h77/* 119*/:7'h70/* 112*/];
  assign T198 = T199;
  assign T199 = T200;
  assign T200 = T204[T201];
  assign T201 = T202;
  assign T202 = T203;
  assign T203 = io_chanxy_config[6'h2f/* 47*/:6'h2d/* 45*/];
  assign T204 = T205;
  assign T205 = io_chanxy_in[7'h7f/* 127*/:7'h78/* 120*/];
  assign T206 = T207;
  assign T207 = T208;
  assign T208 = T212[T209];
  assign T209 = T210;
  assign T210 = T211;
  assign T211 = io_chanxy_config[6'h32/* 50*/:6'h30/* 48*/];
  assign T212 = T213;
  assign T213 = io_chanxy_in[8'h87/* 135*/:8'h80/* 128*/];
  assign T214 = T215;
  assign T215 = T216;
  assign T216 = T220[T217];
  assign T217 = T218;
  assign T218 = T219;
  assign T219 = io_chanxy_config[6'h35/* 53*/:6'h33/* 51*/];
  assign T220 = T221;
  assign T221 = io_chanxy_in[8'h8f/* 143*/:8'h88/* 136*/];
  assign T222 = T223;
  assign T223 = T224;
  assign T224 = T228[T225];
  assign T225 = T226;
  assign T226 = T227;
  assign T227 = io_chanxy_config[6'h38/* 56*/:6'h36/* 54*/];
  assign T228 = T229;
  assign T229 = io_chanxy_in[8'h97/* 151*/:8'h90/* 144*/];
  assign T230 = T231;
  assign T231 = T232;
  assign T232 = T236[T233];
  assign T233 = T234;
  assign T234 = T235;
  assign T235 = io_chanxy_config[6'h3b/* 59*/:6'h39/* 57*/];
  assign T236 = T237;
  assign T237 = io_chanxy_in[8'h9f/* 159*/:8'h98/* 152*/];
  assign T238 = T239;
  assign T239 = T240;
  assign T240 = T244[T241];
  assign T241 = T242;
  assign T242 = T243;
  assign T243 = io_chanxy_config[6'h3e/* 62*/:6'h3c/* 60*/];
  assign T244 = T245;
  assign T245 = io_chanxy_in[8'ha7/* 167*/:8'ha0/* 160*/];
  assign T246 = T247;
  assign T247 = T248;
  assign T248 = T252[T249];
  assign T249 = T250;
  assign T250 = T251;
  assign T251 = io_chanxy_config[7'h41/* 65*/:6'h3f/* 63*/];
  assign T252 = T253;
  assign T253 = io_chanxy_in[8'haf/* 175*/:8'ha8/* 168*/];
  assign T254 = T255;
  assign T255 = T256;
  assign T256 = T260[T257];
  assign T257 = T258;
  assign T258 = T259;
  assign T259 = io_chanxy_config[7'h44/* 68*/:7'h42/* 66*/];
  assign T260 = T261;
  assign T261 = io_chanxy_in[8'hb7/* 183*/:8'hb0/* 176*/];
  assign T262 = T263;
  assign T263 = T264;
  assign T264 = T268[T265];
  assign T265 = T266;
  assign T266 = T267;
  assign T267 = io_chanxy_config[7'h47/* 71*/:7'h45/* 69*/];
  assign T268 = T269;
  assign T269 = io_chanxy_in[8'hbf/* 191*/:8'hb8/* 184*/];
  assign T270 = T271;
  assign T271 = T272;
  assign T272 = T276[T273];
  assign T273 = T274;
  assign T274 = T275;
  assign T275 = io_chanxy_config[7'h4a/* 74*/:7'h48/* 72*/];
  assign T276 = T277;
  assign T277 = io_chanxy_in[8'hc7/* 199*/:8'hc0/* 192*/];
  assign T278 = T279;
  assign T279 = T280;
  assign T280 = T284[T281];
  assign T281 = T282;
  assign T282 = T283;
  assign T283 = io_chanxy_config[7'h4d/* 77*/:7'h4b/* 75*/];
  assign T284 = T285;
  assign T285 = io_chanxy_in[8'hcf/* 207*/:8'hc8/* 200*/];
  assign T286 = T287;
  assign T287 = T288;
  assign T288 = T292[T289];
  assign T289 = T290;
  assign T290 = T291;
  assign T291 = io_chanxy_config[7'h50/* 80*/:7'h4e/* 78*/];
  assign T292 = T293;
  assign T293 = io_chanxy_in[8'hd7/* 215*/:8'hd0/* 208*/];
  assign T294 = T295;
  assign T295 = T296;
  assign T296 = T300[T297];
  assign T297 = T298;
  assign T298 = T299;
  assign T299 = io_chanxy_config[7'h53/* 83*/:7'h51/* 81*/];
  assign T300 = T301;
  assign T301 = io_chanxy_in[8'hdf/* 223*/:8'hd8/* 216*/];
  assign T302 = T303;
  assign T303 = T304;
  assign T304 = T308[T305];
  assign T305 = T306;
  assign T306 = T307;
  assign T307 = io_chanxy_config[7'h56/* 86*/:7'h54/* 84*/];
  assign T308 = T309;
  assign T309 = io_chanxy_in[8'he7/* 231*/:8'he0/* 224*/];
  assign T310 = T311;
  assign T311 = T312;
  assign T312 = T316[T313];
  assign T313 = T314;
  assign T314 = T315;
  assign T315 = io_chanxy_config[7'h59/* 89*/:7'h57/* 87*/];
  assign T316 = T317;
  assign T317 = io_chanxy_in[8'hef/* 239*/:8'he8/* 232*/];
  assign T318 = T319;
  assign T319 = T320;
  assign T320 = T324[T321];
  assign T321 = T322;
  assign T322 = T323;
  assign T323 = io_chanxy_config[7'h5c/* 92*/:7'h5a/* 90*/];
  assign T324 = T325;
  assign T325 = io_chanxy_in[8'hf7/* 247*/:8'hf0/* 240*/];
  assign T326 = T327;
  assign T327 = T328;
  assign T328 = T332[T329];
  assign T329 = T330;
  assign T330 = T331;
  assign T331 = io_chanxy_config[7'h5f/* 95*/:7'h5d/* 93*/];
  assign T332 = T333;
  assign T333 = io_chanxy_in[8'hff/* 255*/:8'hf8/* 248*/];
  assign T334 = T335;
  assign T335 = T336;
  assign T336 = T340[T337];
  assign T337 = T338;
  assign T338 = T339;
  assign T339 = io_chanxy_config[7'h62/* 98*/:7'h60/* 96*/];
  assign T340 = T341;
  assign T341 = io_chanxy_in[9'h107/* 263*/:9'h100/* 256*/];
  assign T342 = T343;
  assign T343 = T344;
  assign T344 = T348[T345];
  assign T345 = T346;
  assign T346 = T347;
  assign T347 = io_chanxy_config[7'h65/* 101*/:7'h63/* 99*/];
  assign T348 = T349;
  assign T349 = io_chanxy_in[9'h10f/* 271*/:9'h108/* 264*/];
  assign T350 = T351;
  assign T351 = T352;
  assign T352 = T356[T353];
  assign T353 = T354;
  assign T354 = T355;
  assign T355 = io_chanxy_config[7'h68/* 104*/:7'h66/* 102*/];
  assign T356 = T357;
  assign T357 = io_chanxy_in[9'h117/* 279*/:9'h110/* 272*/];
  assign T358 = T359;
  assign T359 = T360;
  assign T360 = T364[T361];
  assign T361 = T362;
  assign T362 = T363;
  assign T363 = io_chanxy_config[7'h6b/* 107*/:7'h69/* 105*/];
  assign T364 = T365;
  assign T365 = io_chanxy_in[9'h11f/* 287*/:9'h118/* 280*/];
  assign T366 = T367;
  assign T367 = T368;
  assign T368 = T372[T369];
  assign T369 = T370;
  assign T370 = T371;
  assign T371 = io_chanxy_config[7'h6e/* 110*/:7'h6c/* 108*/];
  assign T372 = T373;
  assign T373 = io_chanxy_in[9'h127/* 295*/:9'h120/* 288*/];
  assign T374 = T375;
  assign T375 = T376;
  assign T376 = T380[T377];
  assign T377 = T378;
  assign T378 = T379;
  assign T379 = io_chanxy_config[7'h71/* 113*/:7'h6f/* 111*/];
  assign T380 = T381;
  assign T381 = io_chanxy_in[9'h12f/* 303*/:9'h128/* 296*/];
  assign T382 = T383;
  assign T383 = T384;
  assign T384 = T388[T385];
  assign T385 = T386;
  assign T386 = T387;
  assign T387 = io_chanxy_config[7'h74/* 116*/:7'h72/* 114*/];
  assign T388 = T389;
  assign T389 = io_chanxy_in[9'h137/* 311*/:9'h130/* 304*/];
  assign T390 = T391;
  assign T391 = T392;
  assign T392 = T396[T393];
  assign T393 = T394;
  assign T394 = T395;
  assign T395 = io_chanxy_config[7'h77/* 119*/:7'h75/* 117*/];
  assign T396 = T397;
  assign T397 = io_chanxy_in[9'h13f/* 319*/:9'h138/* 312*/];
  assign io_ipin_out = T398;
  assign T398 = T399;
  assign T399 = {T598, T400};
  assign T400 = T401;
  assign T401 = {T590, T402};
  assign T402 = T403;
  assign T403 = {T582, T404};
  assign T404 = T405;
  assign T405 = {T574, T406};
  assign T406 = T407;
  assign T407 = {T566, T408};
  assign T408 = T409;
  assign T409 = {T558, T410};
  assign T410 = T411;
  assign T411 = {T550, T412};
  assign T412 = T413;
  assign T413 = {T542, T414};
  assign T414 = T415;
  assign T415 = {T534, T416};
  assign T416 = T417;
  assign T417 = {T526, T418};
  assign T418 = T419;
  assign T419 = {T518, T420};
  assign T420 = T421;
  assign T421 = {T510, T422};
  assign T422 = T423;
  assign T423 = {T502, T424};
  assign T424 = T425;
  assign T425 = {T494, T426};
  assign T426 = T427;
  assign T427 = {T486, T428};
  assign T428 = T429;
  assign T429 = {T478, T430};
  assign T430 = T431;
  assign T431 = {T470, T432};
  assign T432 = T433;
  assign T433 = {T462, T434};
  assign T434 = T435;
  assign T435 = {T454, T436};
  assign T436 = T437;
  assign T437 = {T446, T438};
  assign T438 = T439;
  assign T439 = T440;
  assign T440 = T444[T441];
  assign T441 = T442;
  assign T442 = T443;
  assign T443 = io_ipin_config[2'h2/* 2*/:1'h0/* 0*/];
  assign T444 = T445;
  assign T445 = io_ipin_in[3'h7/* 7*/:1'h0/* 0*/];
  assign T446 = T447;
  assign T447 = T448;
  assign T448 = T452[T449];
  assign T449 = T450;
  assign T450 = T451;
  assign T451 = io_ipin_config[3'h5/* 5*/:2'h3/* 3*/];
  assign T452 = T453;
  assign T453 = io_ipin_in[4'hf/* 15*/:4'h8/* 8*/];
  assign T454 = T455;
  assign T455 = T456;
  assign T456 = T460[T457];
  assign T457 = T458;
  assign T458 = T459;
  assign T459 = io_ipin_config[4'h8/* 8*/:3'h6/* 6*/];
  assign T460 = T461;
  assign T461 = io_ipin_in[5'h17/* 23*/:5'h10/* 16*/];
  assign T462 = T463;
  assign T463 = T464;
  assign T464 = T468[T465];
  assign T465 = T466;
  assign T466 = T467;
  assign T467 = io_ipin_config[4'hb/* 11*/:4'h9/* 9*/];
  assign T468 = T469;
  assign T469 = io_ipin_in[5'h1f/* 31*/:5'h18/* 24*/];
  assign T470 = T471;
  assign T471 = T472;
  assign T472 = T476[T473];
  assign T473 = T474;
  assign T474 = T475;
  assign T475 = io_ipin_config[4'he/* 14*/:4'hc/* 12*/];
  assign T476 = T477;
  assign T477 = io_ipin_in[6'h27/* 39*/:6'h20/* 32*/];
  assign T478 = T479;
  assign T479 = T480;
  assign T480 = T484[T481];
  assign T481 = T482;
  assign T482 = T483;
  assign T483 = io_ipin_config[5'h11/* 17*/:4'hf/* 15*/];
  assign T484 = T485;
  assign T485 = io_ipin_in[6'h2f/* 47*/:6'h28/* 40*/];
  assign T486 = T487;
  assign T487 = T488;
  assign T488 = T492[T489];
  assign T489 = T490;
  assign T490 = T491;
  assign T491 = io_ipin_config[5'h14/* 20*/:5'h12/* 18*/];
  assign T492 = T493;
  assign T493 = io_ipin_in[6'h37/* 55*/:6'h30/* 48*/];
  assign T494 = T495;
  assign T495 = T496;
  assign T496 = T500[T497];
  assign T497 = T498;
  assign T498 = T499;
  assign T499 = io_ipin_config[5'h17/* 23*/:5'h15/* 21*/];
  assign T500 = T501;
  assign T501 = io_ipin_in[6'h3f/* 63*/:6'h38/* 56*/];
  assign T502 = T503;
  assign T503 = T504;
  assign T504 = T508[T505];
  assign T505 = T506;
  assign T506 = T507;
  assign T507 = io_ipin_config[5'h1a/* 26*/:5'h18/* 24*/];
  assign T508 = T509;
  assign T509 = io_ipin_in[7'h47/* 71*/:7'h40/* 64*/];
  assign T510 = T511;
  assign T511 = T512;
  assign T512 = T516[T513];
  assign T513 = T514;
  assign T514 = T515;
  assign T515 = io_ipin_config[5'h1d/* 29*/:5'h1b/* 27*/];
  assign T516 = T517;
  assign T517 = io_ipin_in[7'h4f/* 79*/:7'h48/* 72*/];
  assign T518 = T519;
  assign T519 = T520;
  assign T520 = T524[T521];
  assign T521 = T522;
  assign T522 = T523;
  assign T523 = io_ipin_config[6'h20/* 32*/:5'h1e/* 30*/];
  assign T524 = T525;
  assign T525 = io_ipin_in[7'h57/* 87*/:7'h50/* 80*/];
  assign T526 = T527;
  assign T527 = T528;
  assign T528 = T532[T529];
  assign T529 = T530;
  assign T530 = T531;
  assign T531 = io_ipin_config[6'h23/* 35*/:6'h21/* 33*/];
  assign T532 = T533;
  assign T533 = io_ipin_in[7'h5f/* 95*/:7'h58/* 88*/];
  assign T534 = T535;
  assign T535 = T536;
  assign T536 = T540[T537];
  assign T537 = T538;
  assign T538 = T539;
  assign T539 = io_ipin_config[6'h26/* 38*/:6'h24/* 36*/];
  assign T540 = T541;
  assign T541 = io_ipin_in[7'h67/* 103*/:7'h60/* 96*/];
  assign T542 = T543;
  assign T543 = T544;
  assign T544 = T548[T545];
  assign T545 = T546;
  assign T546 = T547;
  assign T547 = io_ipin_config[6'h29/* 41*/:6'h27/* 39*/];
  assign T548 = T549;
  assign T549 = io_ipin_in[7'h6f/* 111*/:7'h68/* 104*/];
  assign T550 = T551;
  assign T551 = T552;
  assign T552 = T556[T553];
  assign T553 = T554;
  assign T554 = T555;
  assign T555 = io_ipin_config[6'h2c/* 44*/:6'h2a/* 42*/];
  assign T556 = T557;
  assign T557 = io_ipin_in[7'h77/* 119*/:7'h70/* 112*/];
  assign T558 = T559;
  assign T559 = T560;
  assign T560 = T564[T561];
  assign T561 = T562;
  assign T562 = T563;
  assign T563 = io_ipin_config[6'h2f/* 47*/:6'h2d/* 45*/];
  assign T564 = T565;
  assign T565 = io_ipin_in[7'h7f/* 127*/:7'h78/* 120*/];
  assign T566 = T567;
  assign T567 = T568;
  assign T568 = T572[T569];
  assign T569 = T570;
  assign T570 = T571;
  assign T571 = io_ipin_config[6'h32/* 50*/:6'h30/* 48*/];
  assign T572 = T573;
  assign T573 = io_ipin_in[8'h87/* 135*/:8'h80/* 128*/];
  assign T574 = T575;
  assign T575 = T576;
  assign T576 = T580[T577];
  assign T577 = T578;
  assign T578 = T579;
  assign T579 = io_ipin_config[6'h35/* 53*/:6'h33/* 51*/];
  assign T580 = T581;
  assign T581 = io_ipin_in[8'h8f/* 143*/:8'h88/* 136*/];
  assign T582 = T583;
  assign T583 = T584;
  assign T584 = T588[T585];
  assign T585 = T586;
  assign T586 = T587;
  assign T587 = io_ipin_config[6'h38/* 56*/:6'h36/* 54*/];
  assign T588 = T589;
  assign T589 = io_ipin_in[8'h97/* 151*/:8'h90/* 144*/];
  assign T590 = T591;
  assign T591 = T592;
  assign T592 = T596[T593];
  assign T593 = T594;
  assign T594 = T595;
  assign T595 = io_ipin_config[6'h3b/* 59*/:6'h39/* 57*/];
  assign T596 = T597;
  assign T597 = io_ipin_in[8'h9f/* 159*/:8'h98/* 152*/];
  assign T598 = T599;
  assign T599 = T600;
  assign T600 = T604[T601];
  assign T601 = T602;
  assign T602 = T603;
  assign T603 = io_ipin_config[6'h3e/* 62*/:6'h3c/* 60*/];
  assign T604 = T605;
  assign T605 = io_ipin_in[8'ha7/* 167*/:8'ha0/* 160*/];
endmodule

module lut_tile(input clk, input reset,
    input  io_ff_en,
    input [31:0] io_configs_in,
    input [16:0] io_configs_en,
    input [167:0] io_ipin_in,
    input [319:0] io_chanxy_in,
    output[39:0] io_chanxy_out,
    output[8:0] io_opin_out);

  wire[119:0] T0;
  wire[543:0] this_config_io_configs_out;
  wire[62:0] T1;
  wire[179:0] T2;
  wire[29:0] T3;
  wire[20:0] this_sbcb_io_ipin_out;
  wire[8:0] this_clb_io_clb_out;
  wire[8:0] T4;
  wire[143:0] T5;
  wire[35:0] this_xbar_io_xbar_out;
  wire[39:0] this_sbcb_io_chanxy_out;

  assign T0 = this_config_io_configs_out[10'h203/* 515*/:9'h18c/* 396*/];
  assign T1 = this_config_io_configs_out[9'h18b/* 395*/:9'h14d/* 333*/];
  assign T2 = this_config_io_configs_out[9'h14c/* 332*/:8'h99/* 153*/];
  assign T3 = {this_clb_io_clb_out, this_sbcb_io_ipin_out};
  assign T4 = this_config_io_configs_out[8'h98/* 152*/:8'h90/* 144*/];
  assign T5 = this_config_io_configs_out[8'h8f/* 143*/:1'h0/* 0*/];
  assign io_opin_out = this_clb_io_clb_out;
  assign io_chanxy_out = this_sbcb_io_chanxy_out;
  clb this_clb(.clk(clk), .reset(reset),
       .io_clb_in( this_xbar_io_xbar_out ),
       .io_clb_out( this_clb_io_clb_out ),
       .io_lut_configs( T5 ),
       .io_mux_configs( T4 ),
       .io_ff_en( io_ff_en ));
  xbar this_xbar(.clk(clk), .reset(reset),
       .io_xbar_in( T3 ),
       .io_xbar_out( this_xbar_io_xbar_out ),
       .io_mux_configs( T2 ));
  configs_latches this_config(.clk(clk), .reset(reset),
       .io_d_in( io_configs_in ),
       .io_configs_out( this_config_io_configs_out ),
       .io_configs_en( io_configs_en ));
  sbcb this_sbcb(
       .io_ipin_in( io_ipin_in ),
       .io_ipin_config( T1 ),
       .io_chanxy_in( io_chanxy_in ),
       .io_chanxy_config( T0 ),
       .io_ipin_out( this_sbcb_io_ipin_out ),
       .io_chanxy_out( this_sbcb_io_chanxy_out ));
endmodule

