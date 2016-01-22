module fpga(
    input [63:0] top_in,
    input [63:0] bot_in,
    input [63:0] left_in,
    input [63:0] right_in,
    output [63:0] top_out,
    output [63:0] bot_out,
    output [63:0] left_out,
    output [63:0] right_out,
    input [319:0] configs_in,
    input [171:0] configs_en,
    input ff_en, clock, rst
);

    // Interconnection Wire Declaration
    wire wire_25;
    wire wire_28;
    wire wire_31;
    wire wire_34;
    wire wire_37;
    wire wire_40;
    wire wire_43;
    wire wire_46;
    wire wire_73;
    wire wire_76;
    wire wire_79;
    wire wire_82;
    wire wire_85;
    wire wire_88;
    wire wire_91;
    wire wire_94;
    wire wire_121;
    wire wire_124;
    wire wire_127;
    wire wire_130;
    wire wire_133;
    wire wire_136;
    wire wire_139;
    wire wire_142;
    wire wire_169;
    wire wire_172;
    wire wire_175;
    wire wire_178;
    wire wire_181;
    wire wire_184;
    wire wire_187;
    wire wire_190;
    wire wire_217;
    wire wire_220;
    wire wire_223;
    wire wire_226;
    wire wire_229;
    wire wire_232;
    wire wire_235;
    wire wire_238;
    wire wire_265;
    wire wire_268;
    wire wire_271;
    wire wire_274;
    wire wire_277;
    wire wire_280;
    wire wire_283;
    wire wire_286;
    wire wire_313;
    wire wire_316;
    wire wire_319;
    wire wire_322;
    wire wire_325;
    wire wire_328;
    wire wire_331;
    wire wire_334;
    wire wire_361;
    wire wire_364;
    wire wire_367;
    wire wire_370;
    wire wire_373;
    wire wire_376;
    wire wire_379;
    wire wire_382;
    wire wire_409;
    wire wire_412;
    wire wire_415;
    wire wire_418;
    wire wire_421;
    wire wire_424;
    wire wire_427;
    wire wire_430;
    wire wire_453;
    wire wire_454;
    wire wire_455;
    wire wire_456;
    wire wire_479;
    wire wire_480;
    wire wire_481;
    wire wire_482;
    wire wire_505;
    wire wire_506;
    wire wire_507;
    wire wire_508;
    wire wire_531;
    wire wire_532;
    wire wire_533;
    wire wire_534;
    wire wire_557;
    wire wire_558;
    wire wire_559;
    wire wire_560;
    wire wire_583;
    wire wire_584;
    wire wire_585;
    wire wire_586;
    wire wire_609;
    wire wire_610;
    wire wire_611;
    wire wire_612;
    wire wire_635;
    wire wire_636;
    wire wire_637;
    wire wire_638;
    wire wire_665;
    wire wire_668;
    wire wire_671;
    wire wire_674;
    wire wire_677;
    wire wire_680;
    wire wire_683;
    wire wire_686;
    wire wire_713;
    wire wire_716;
    wire wire_719;
    wire wire_722;
    wire wire_725;
    wire wire_728;
    wire wire_731;
    wire wire_734;
    wire wire_757;
    wire wire_758;
    wire wire_759;
    wire wire_760;
    wire wire_783;
    wire wire_784;
    wire wire_785;
    wire wire_786;
    wire wire_809;
    wire wire_810;
    wire wire_811;
    wire wire_812;
    wire wire_835;
    wire wire_836;
    wire wire_837;
    wire wire_838;
    wire wire_861;
    wire wire_862;
    wire wire_863;
    wire wire_864;
    wire wire_887;
    wire wire_888;
    wire wire_889;
    wire wire_890;
    wire wire_913;
    wire wire_914;
    wire wire_915;
    wire wire_916;
    wire wire_939;
    wire wire_940;
    wire wire_941;
    wire wire_942;
    wire wire_969;
    wire wire_972;
    wire wire_975;
    wire wire_978;
    wire wire_981;
    wire wire_984;
    wire wire_987;
    wire wire_990;
    wire wire_1017;
    wire wire_1020;
    wire wire_1023;
    wire wire_1026;
    wire wire_1029;
    wire wire_1032;
    wire wire_1035;
    wire wire_1038;
    wire wire_1061;
    wire wire_1062;
    wire wire_1063;
    wire wire_1064;
    wire wire_1087;
    wire wire_1088;
    wire wire_1089;
    wire wire_1090;
    wire wire_1113;
    wire wire_1114;
    wire wire_1115;
    wire wire_1116;
    wire wire_1139;
    wire wire_1140;
    wire wire_1141;
    wire wire_1142;
    wire wire_1165;
    wire wire_1166;
    wire wire_1167;
    wire wire_1168;
    wire wire_1191;
    wire wire_1192;
    wire wire_1193;
    wire wire_1194;
    wire wire_1217;
    wire wire_1218;
    wire wire_1219;
    wire wire_1220;
    wire wire_1243;
    wire wire_1244;
    wire wire_1245;
    wire wire_1246;
    wire wire_1273;
    wire wire_1276;
    wire wire_1279;
    wire wire_1282;
    wire wire_1285;
    wire wire_1288;
    wire wire_1291;
    wire wire_1294;
    wire wire_1321;
    wire wire_1324;
    wire wire_1327;
    wire wire_1330;
    wire wire_1333;
    wire wire_1336;
    wire wire_1339;
    wire wire_1342;
    wire wire_1365;
    wire wire_1366;
    wire wire_1367;
    wire wire_1368;
    wire wire_1391;
    wire wire_1392;
    wire wire_1393;
    wire wire_1394;
    wire wire_1417;
    wire wire_1418;
    wire wire_1419;
    wire wire_1420;
    wire wire_1443;
    wire wire_1444;
    wire wire_1445;
    wire wire_1446;
    wire wire_1469;
    wire wire_1470;
    wire wire_1471;
    wire wire_1472;
    wire wire_1495;
    wire wire_1496;
    wire wire_1497;
    wire wire_1498;
    wire wire_1521;
    wire wire_1522;
    wire wire_1523;
    wire wire_1524;
    wire wire_1547;
    wire wire_1548;
    wire wire_1549;
    wire wire_1550;
    wire wire_1577;
    wire wire_1580;
    wire wire_1583;
    wire wire_1586;
    wire wire_1589;
    wire wire_1592;
    wire wire_1595;
    wire wire_1598;
    wire wire_1625;
    wire wire_1628;
    wire wire_1631;
    wire wire_1634;
    wire wire_1637;
    wire wire_1640;
    wire wire_1643;
    wire wire_1646;
    wire wire_1669;
    wire wire_1670;
    wire wire_1671;
    wire wire_1672;
    wire wire_1695;
    wire wire_1696;
    wire wire_1697;
    wire wire_1698;
    wire wire_1721;
    wire wire_1722;
    wire wire_1723;
    wire wire_1724;
    wire wire_1747;
    wire wire_1748;
    wire wire_1749;
    wire wire_1750;
    wire wire_1773;
    wire wire_1774;
    wire wire_1775;
    wire wire_1776;
    wire wire_1799;
    wire wire_1800;
    wire wire_1801;
    wire wire_1802;
    wire wire_1825;
    wire wire_1826;
    wire wire_1827;
    wire wire_1828;
    wire wire_1851;
    wire wire_1852;
    wire wire_1853;
    wire wire_1854;
    wire wire_1881;
    wire wire_1884;
    wire wire_1887;
    wire wire_1890;
    wire wire_1893;
    wire wire_1896;
    wire wire_1899;
    wire wire_1902;
    wire wire_1929;
    wire wire_1932;
    wire wire_1935;
    wire wire_1938;
    wire wire_1941;
    wire wire_1944;
    wire wire_1947;
    wire wire_1950;
    wire wire_1973;
    wire wire_1974;
    wire wire_1975;
    wire wire_1976;
    wire wire_1999;
    wire wire_2000;
    wire wire_2001;
    wire wire_2002;
    wire wire_2025;
    wire wire_2026;
    wire wire_2027;
    wire wire_2028;
    wire wire_2051;
    wire wire_2052;
    wire wire_2053;
    wire wire_2054;
    wire wire_2077;
    wire wire_2078;
    wire wire_2079;
    wire wire_2080;
    wire wire_2103;
    wire wire_2104;
    wire wire_2105;
    wire wire_2106;
    wire wire_2129;
    wire wire_2130;
    wire wire_2131;
    wire wire_2132;
    wire wire_2155;
    wire wire_2156;
    wire wire_2157;
    wire wire_2158;
    wire wire_2185;
    wire wire_2188;
    wire wire_2191;
    wire wire_2194;
    wire wire_2197;
    wire wire_2200;
    wire wire_2203;
    wire wire_2206;
    wire wire_2233;
    wire wire_2236;
    wire wire_2239;
    wire wire_2242;
    wire wire_2245;
    wire wire_2248;
    wire wire_2251;
    wire wire_2254;
    wire wire_2277;
    wire wire_2278;
    wire wire_2279;
    wire wire_2280;
    wire wire_2303;
    wire wire_2304;
    wire wire_2305;
    wire wire_2306;
    wire wire_2329;
    wire wire_2330;
    wire wire_2331;
    wire wire_2332;
    wire wire_2355;
    wire wire_2356;
    wire wire_2357;
    wire wire_2358;
    wire wire_2381;
    wire wire_2382;
    wire wire_2383;
    wire wire_2384;
    wire wire_2407;
    wire wire_2408;
    wire wire_2409;
    wire wire_2410;
    wire wire_2433;
    wire wire_2434;
    wire wire_2435;
    wire wire_2436;
    wire wire_2459;
    wire wire_2460;
    wire wire_2461;
    wire wire_2462;
    wire wire_2489;
    wire wire_2492;
    wire wire_2495;
    wire wire_2498;
    wire wire_2501;
    wire wire_2504;
    wire wire_2507;
    wire wire_2510;
    wire wire_2537;
    wire wire_2540;
    wire wire_2543;
    wire wire_2546;
    wire wire_2549;
    wire wire_2552;
    wire wire_2555;
    wire wire_2558;
    wire wire_2581;
    wire wire_2582;
    wire wire_2583;
    wire wire_2584;
    wire wire_2607;
    wire wire_2608;
    wire wire_2609;
    wire wire_2610;
    wire wire_2633;
    wire wire_2634;
    wire wire_2635;
    wire wire_2636;
    wire wire_2659;
    wire wire_2660;
    wire wire_2661;
    wire wire_2662;
    wire wire_2685;
    wire wire_2686;
    wire wire_2687;
    wire wire_2688;
    wire wire_2711;
    wire wire_2712;
    wire wire_2713;
    wire wire_2714;
    wire wire_2737;
    wire wire_2738;
    wire wire_2739;
    wire wire_2740;
    wire wire_2763;
    wire wire_2764;
    wire wire_2765;
    wire wire_2766;
    wire wire_2793;
    wire wire_2796;
    wire wire_2799;
    wire wire_2802;
    wire wire_2805;
    wire wire_2808;
    wire wire_2811;
    wire wire_2814;
    wire wire_2841;
    wire wire_2844;
    wire wire_2847;
    wire wire_2850;
    wire wire_2853;
    wire wire_2856;
    wire wire_2859;
    wire wire_2862;
    wire wire_2889;
    wire wire_2892;
    wire wire_2895;
    wire wire_2898;
    wire wire_2901;
    wire wire_2904;
    wire wire_2907;
    wire wire_2910;
    wire wire_2937;
    wire wire_2940;
    wire wire_2943;
    wire wire_2946;
    wire wire_2949;
    wire wire_2952;
    wire wire_2955;
    wire wire_2958;
    wire wire_2985;
    wire wire_2988;
    wire wire_2991;
    wire wire_2994;
    wire wire_2997;
    wire wire_3000;
    wire wire_3003;
    wire wire_3006;
    wire wire_3033;
    wire wire_3036;
    wire wire_3039;
    wire wire_3042;
    wire wire_3045;
    wire wire_3048;
    wire wire_3051;
    wire wire_3054;
    wire wire_3081;
    wire wire_3084;
    wire wire_3087;
    wire wire_3090;
    wire wire_3093;
    wire wire_3096;
    wire wire_3099;
    wire wire_3102;
    wire wire_3129;
    wire wire_3132;
    wire wire_3135;
    wire wire_3138;
    wire wire_3141;
    wire wire_3144;
    wire wire_3147;
    wire wire_3150;
    wire wire_3177;
    wire wire_3180;
    wire wire_3183;
    wire wire_3186;
    wire wire_3189;
    wire wire_3192;
    wire wire_3195;
    wire wire_3198;
    wire wire_3200;
    wire wire_3201;
    wire wire_3202;
    wire wire_3203;
    wire wire_3204;
    wire wire_3205;
    wire wire_3206;
    wire wire_3207;
    wire wire_3208;
    wire wire_3209;
    wire wire_3210;
    wire wire_3211;
    wire wire_3212;
    wire wire_3213;
    wire wire_3214;
    wire wire_3215;
    wire wire_3216;
    wire wire_3217;
    wire wire_3218;
    wire wire_3219;
    wire wire_3220;
    wire wire_3221;
    wire wire_3222;
    wire wire_3223;
    wire wire_3224;
    wire wire_3225;
    wire wire_3226;
    wire wire_3227;
    wire wire_3228;
    wire wire_3229;
    wire wire_3230;
    wire wire_3231;
    wire wire_3232;
    wire wire_3233;
    wire wire_3234;
    wire wire_3235;
    wire wire_3236;
    wire wire_3237;
    wire wire_3238;
    wire wire_3239;
    wire wire_3240;
    wire wire_3241;
    wire wire_3242;
    wire wire_3243;
    wire wire_3244;
    wire wire_3245;
    wire wire_3246;
    wire wire_3247;
    wire wire_3248;
    wire wire_3249;
    wire wire_3250;
    wire wire_3251;
    wire wire_3252;
    wire wire_3253;
    wire wire_3254;
    wire wire_3255;
    wire wire_3256;
    wire wire_3257;
    wire wire_3258;
    wire wire_3259;
    wire wire_3260;
    wire wire_3261;
    wire wire_3262;
    wire wire_3263;
    wire wire_3264;
    wire wire_3265;
    wire wire_3266;
    wire wire_3267;
    wire wire_3268;
    wire wire_3269;
    wire wire_3270;
    wire wire_3271;
    wire wire_3272;
    wire wire_3273;
    wire wire_3274;
    wire wire_3275;
    wire wire_3276;
    wire wire_3277;
    wire wire_3278;
    wire wire_3279;
    wire wire_3280;
    wire wire_3281;
    wire wire_3282;
    wire wire_3283;
    wire wire_3284;
    wire wire_3285;
    wire wire_3286;
    wire wire_3287;
    wire wire_3288;
    wire wire_3289;
    wire wire_3290;
    wire wire_3291;
    wire wire_3292;
    wire wire_3293;
    wire wire_3294;
    wire wire_3295;
    wire wire_3296;
    wire wire_3297;
    wire wire_3298;
    wire wire_3299;
    wire wire_3300;
    wire wire_3301;
    wire wire_3302;
    wire wire_3303;
    wire wire_3304;
    wire wire_3305;
    wire wire_3306;
    wire wire_3307;
    wire wire_3308;
    wire wire_3309;
    wire wire_3310;
    wire wire_3311;
    wire wire_3312;
    wire wire_3313;
    wire wire_3314;
    wire wire_3315;
    wire wire_3316;
    wire wire_3317;
    wire wire_3318;
    wire wire_3319;
    wire wire_3320;
    wire wire_3321;
    wire wire_3322;
    wire wire_3323;
    wire wire_3324;
    wire wire_3325;
    wire wire_3326;
    wire wire_3327;
    wire wire_3328;
    wire wire_3329;
    wire wire_3330;
    wire wire_3331;
    wire wire_3332;
    wire wire_3333;
    wire wire_3334;
    wire wire_3335;
    wire wire_3336;
    wire wire_3337;
    wire wire_3338;
    wire wire_3339;
    wire wire_3340;
    wire wire_3341;
    wire wire_3342;
    wire wire_3343;
    wire wire_3344;
    wire wire_3345;
    wire wire_3346;
    wire wire_3347;
    wire wire_3348;
    wire wire_3349;
    wire wire_3350;
    wire wire_3351;
    wire wire_3352;
    wire wire_3353;
    wire wire_3354;
    wire wire_3355;
    wire wire_3356;
    wire wire_3357;
    wire wire_3358;
    wire wire_3359;
    wire wire_3360;
    wire wire_3361;
    wire wire_3362;
    wire wire_3363;
    wire wire_3364;
    wire wire_3365;
    wire wire_3366;
    wire wire_3367;
    wire wire_3368;
    wire wire_3369;
    wire wire_3370;
    wire wire_3371;
    wire wire_3372;
    wire wire_3373;
    wire wire_3374;
    wire wire_3375;
    wire wire_3376;
    wire wire_3377;
    wire wire_3378;
    wire wire_3379;
    wire wire_3380;
    wire wire_3381;
    wire wire_3382;
    wire wire_3383;
    wire wire_3384;
    wire wire_3385;
    wire wire_3386;
    wire wire_3387;
    wire wire_3388;
    wire wire_3389;
    wire wire_3390;
    wire wire_3391;
    wire wire_3392;
    wire wire_3393;
    wire wire_3394;
    wire wire_3395;
    wire wire_3396;
    wire wire_3397;
    wire wire_3398;
    wire wire_3399;
    wire wire_3400;
    wire wire_3401;
    wire wire_3402;
    wire wire_3403;
    wire wire_3404;
    wire wire_3405;
    wire wire_3406;
    wire wire_3407;
    wire wire_3408;
    wire wire_3409;
    wire wire_3410;
    wire wire_3411;
    wire wire_3412;
    wire wire_3413;
    wire wire_3414;
    wire wire_3415;
    wire wire_3416;
    wire wire_3417;
    wire wire_3418;
    wire wire_3419;
    wire wire_3420;
    wire wire_3421;
    wire wire_3422;
    wire wire_3423;
    wire wire_3424;
    wire wire_3425;
    wire wire_3426;
    wire wire_3427;
    wire wire_3428;
    wire wire_3429;
    wire wire_3430;
    wire wire_3431;
    wire wire_3432;
    wire wire_3433;
    wire wire_3434;
    wire wire_3435;
    wire wire_3436;
    wire wire_3437;
    wire wire_3438;
    wire wire_3439;
    wire wire_3440;
    wire wire_3441;
    wire wire_3442;
    wire wire_3443;
    wire wire_3444;
    wire wire_3445;
    wire wire_3446;
    wire wire_3447;
    wire wire_3448;
    wire wire_3449;
    wire wire_3450;
    wire wire_3451;
    wire wire_3452;
    wire wire_3453;
    wire wire_3454;
    wire wire_3455;
    wire wire_3456;
    wire wire_3457;
    wire wire_3458;
    wire wire_3459;
    wire wire_3460;
    wire wire_3461;
    wire wire_3462;
    wire wire_3463;
    wire wire_3464;
    wire wire_3465;
    wire wire_3466;
    wire wire_3467;
    wire wire_3468;
    wire wire_3469;
    wire wire_3470;
    wire wire_3471;
    wire wire_3472;
    wire wire_3473;
    wire wire_3474;
    wire wire_3475;
    wire wire_3476;
    wire wire_3477;
    wire wire_3478;
    wire wire_3479;
    wire wire_3480;
    wire wire_3481;
    wire wire_3482;
    wire wire_3483;
    wire wire_3484;
    wire wire_3485;
    wire wire_3486;
    wire wire_3487;
    wire wire_3488;
    wire wire_3489;
    wire wire_3490;
    wire wire_3491;
    wire wire_3492;
    wire wire_3493;
    wire wire_3494;
    wire wire_3495;
    wire wire_3496;
    wire wire_3497;
    wire wire_3498;
    wire wire_3499;
    wire wire_3500;
    wire wire_3501;
    wire wire_3502;
    wire wire_3503;
    wire wire_3504;
    wire wire_3505;
    wire wire_3506;
    wire wire_3507;
    wire wire_3508;
    wire wire_3509;
    wire wire_3510;
    wire wire_3511;
    wire wire_3512;
    wire wire_3513;
    wire wire_3514;
    wire wire_3515;
    wire wire_3516;
    wire wire_3517;
    wire wire_3518;
    wire wire_3519;
    wire wire_3520;
    wire wire_3521;
    wire wire_3522;
    wire wire_3523;
    wire wire_3524;
    wire wire_3525;
    wire wire_3526;
    wire wire_3527;
    wire wire_3528;
    wire wire_3529;
    wire wire_3530;
    wire wire_3531;
    wire wire_3532;
    wire wire_3533;
    wire wire_3534;
    wire wire_3535;
    wire wire_3536;
    wire wire_3537;
    wire wire_3538;
    wire wire_3539;
    wire wire_3540;
    wire wire_3541;
    wire wire_3542;
    wire wire_3543;
    wire wire_3544;
    wire wire_3545;
    wire wire_3546;
    wire wire_3547;
    wire wire_3548;
    wire wire_3549;
    wire wire_3550;
    wire wire_3551;
    wire wire_3552;
    wire wire_3553;
    wire wire_3554;
    wire wire_3555;
    wire wire_3556;
    wire wire_3557;
    wire wire_3558;
    wire wire_3559;
    wire wire_3560;
    wire wire_3561;
    wire wire_3562;
    wire wire_3563;
    wire wire_3564;
    wire wire_3565;
    wire wire_3566;
    wire wire_3567;
    wire wire_3568;
    wire wire_3569;
    wire wire_3570;
    wire wire_3571;
    wire wire_3572;
    wire wire_3573;
    wire wire_3574;
    wire wire_3575;
    wire wire_3576;
    wire wire_3577;
    wire wire_3578;
    wire wire_3579;
    wire wire_3580;
    wire wire_3581;
    wire wire_3582;
    wire wire_3583;
    wire wire_3584;
    wire wire_3585;
    wire wire_3586;
    wire wire_3587;
    wire wire_3588;
    wire wire_3589;
    wire wire_3590;
    wire wire_3591;
    wire wire_3592;
    wire wire_3593;
    wire wire_3594;
    wire wire_3595;
    wire wire_3596;
    wire wire_3597;
    wire wire_3598;
    wire wire_3599;
    wire wire_3600;
    wire wire_3601;
    wire wire_3602;
    wire wire_3603;
    wire wire_3604;
    wire wire_3605;
    wire wire_3606;
    wire wire_3607;
    wire wire_3608;
    wire wire_3609;
    wire wire_3610;
    wire wire_3611;
    wire wire_3612;
    wire wire_3613;
    wire wire_3614;
    wire wire_3615;
    wire wire_3616;
    wire wire_3617;
    wire wire_3618;
    wire wire_3619;
    wire wire_3620;
    wire wire_3621;
    wire wire_3622;
    wire wire_3623;
    wire wire_3624;
    wire wire_3625;
    wire wire_3626;
    wire wire_3627;
    wire wire_3628;
    wire wire_3629;
    wire wire_3630;
    wire wire_3631;
    wire wire_3632;
    wire wire_3633;
    wire wire_3634;
    wire wire_3635;
    wire wire_3636;
    wire wire_3637;
    wire wire_3638;
    wire wire_3639;
    wire wire_3640;
    wire wire_3641;
    wire wire_3642;
    wire wire_3643;
    wire wire_3644;
    wire wire_3645;
    wire wire_3646;
    wire wire_3647;
    wire wire_3648;
    wire wire_3649;
    wire wire_3650;
    wire wire_3651;
    wire wire_3652;
    wire wire_3653;
    wire wire_3654;
    wire wire_3655;
    wire wire_3656;
    wire wire_3657;
    wire wire_3658;
    wire wire_3659;
    wire wire_3660;
    wire wire_3661;
    wire wire_3662;
    wire wire_3663;
    wire wire_3664;
    wire wire_3665;
    wire wire_3666;
    wire wire_3667;
    wire wire_3668;
    wire wire_3669;
    wire wire_3670;
    wire wire_3671;
    wire wire_3672;
    wire wire_3673;
    wire wire_3674;
    wire wire_3675;
    wire wire_3676;
    wire wire_3677;
    wire wire_3678;
    wire wire_3679;
    wire wire_3680;
    wire wire_3681;
    wire wire_3682;
    wire wire_3683;
    wire wire_3684;
    wire wire_3685;
    wire wire_3686;
    wire wire_3687;
    wire wire_3688;
    wire wire_3689;
    wire wire_3690;
    wire wire_3691;
    wire wire_3692;
    wire wire_3693;
    wire wire_3694;
    wire wire_3695;
    wire wire_3696;
    wire wire_3697;
    wire wire_3698;
    wire wire_3699;
    wire wire_3700;
    wire wire_3701;
    wire wire_3702;
    wire wire_3703;
    wire wire_3704;
    wire wire_3705;
    wire wire_3706;
    wire wire_3707;
    wire wire_3708;
    wire wire_3709;
    wire wire_3710;
    wire wire_3711;
    wire wire_3712;
    wire wire_3713;
    wire wire_3714;
    wire wire_3715;
    wire wire_3716;
    wire wire_3717;
    wire wire_3718;
    wire wire_3719;
    wire wire_3720;
    wire wire_3721;
    wire wire_3722;
    wire wire_3723;
    wire wire_3724;
    wire wire_3725;
    wire wire_3726;
    wire wire_3727;
    wire wire_3728;
    wire wire_3729;
    wire wire_3730;
    wire wire_3731;
    wire wire_3732;
    wire wire_3733;
    wire wire_3734;
    wire wire_3735;
    wire wire_3736;
    wire wire_3737;
    wire wire_3738;
    wire wire_3739;
    wire wire_3740;
    wire wire_3741;
    wire wire_3742;
    wire wire_3743;
    wire wire_3744;
    wire wire_3745;
    wire wire_3746;
    wire wire_3747;
    wire wire_3748;
    wire wire_3749;
    wire wire_3750;
    wire wire_3751;
    wire wire_3752;
    wire wire_3753;
    wire wire_3754;
    wire wire_3755;
    wire wire_3756;
    wire wire_3757;
    wire wire_3758;
    wire wire_3759;
    wire wire_3760;
    wire wire_3761;
    wire wire_3762;
    wire wire_3763;
    wire wire_3764;
    wire wire_3765;
    wire wire_3766;
    wire wire_3767;
    wire wire_3768;
    wire wire_3769;
    wire wire_3770;
    wire wire_3771;
    wire wire_3772;
    wire wire_3773;
    wire wire_3774;
    wire wire_3775;
    wire wire_3776;
    wire wire_3777;
    wire wire_3778;
    wire wire_3779;
    wire wire_3780;
    wire wire_3781;
    wire wire_3782;
    wire wire_3783;
    wire wire_3784;
    wire wire_3785;
    wire wire_3786;
    wire wire_3787;
    wire wire_3788;
    wire wire_3789;
    wire wire_3790;
    wire wire_3791;
    wire wire_3792;
    wire wire_3793;
    wire wire_3794;
    wire wire_3795;
    wire wire_3796;
    wire wire_3797;
    wire wire_3798;
    wire wire_3799;
    wire wire_3800;
    wire wire_3801;
    wire wire_3802;
    wire wire_3803;
    wire wire_3804;
    wire wire_3805;
    wire wire_3806;
    wire wire_3807;
    wire wire_3808;
    wire wire_3809;
    wire wire_3810;
    wire wire_3811;
    wire wire_3812;
    wire wire_3813;
    wire wire_3814;
    wire wire_3815;
    wire wire_3816;
    wire wire_3817;
    wire wire_3818;
    wire wire_3819;
    wire wire_3820;
    wire wire_3821;
    wire wire_3822;
    wire wire_3823;
    wire wire_3824;
    wire wire_3825;
    wire wire_3826;
    wire wire_3827;
    wire wire_3828;
    wire wire_3829;
    wire wire_3830;
    wire wire_3831;
    wire wire_3832;
    wire wire_3833;
    wire wire_3834;
    wire wire_3835;
    wire wire_3836;
    wire wire_3837;
    wire wire_3838;
    wire wire_3839;
    wire wire_3840;
    wire wire_3841;
    wire wire_3842;
    wire wire_3843;
    wire wire_3844;
    wire wire_3845;
    wire wire_3846;
    wire wire_3847;
    wire wire_3848;
    wire wire_3849;
    wire wire_3850;
    wire wire_3851;
    wire wire_3852;
    wire wire_3853;
    wire wire_3854;
    wire wire_3855;
    wire wire_3856;
    wire wire_3857;
    wire wire_3858;
    wire wire_3859;
    wire wire_3860;
    wire wire_3861;
    wire wire_3862;
    wire wire_3863;
    wire wire_3864;
    wire wire_3865;
    wire wire_3866;
    wire wire_3867;
    wire wire_3868;
    wire wire_3869;
    wire wire_3870;
    wire wire_3871;
    wire wire_3872;
    wire wire_3873;
    wire wire_3874;
    wire wire_3875;
    wire wire_3876;
    wire wire_3877;
    wire wire_3878;
    wire wire_3879;
    wire wire_3880;
    wire wire_3881;
    wire wire_3882;
    wire wire_3883;
    wire wire_3884;
    wire wire_3885;
    wire wire_3886;
    wire wire_3887;
    wire wire_3888;
    wire wire_3889;
    wire wire_3890;
    wire wire_3891;
    wire wire_3892;
    wire wire_3893;
    wire wire_3894;
    wire wire_3895;
    wire wire_3896;
    wire wire_3897;
    wire wire_3898;
    wire wire_3899;
    wire wire_3900;
    wire wire_3901;
    wire wire_3902;
    wire wire_3903;
    wire wire_3904;
    wire wire_3905;
    wire wire_3906;
    wire wire_3907;
    wire wire_3908;
    wire wire_3909;
    wire wire_3910;
    wire wire_3911;
    wire wire_3912;
    wire wire_3913;
    wire wire_3914;
    wire wire_3915;
    wire wire_3916;
    wire wire_3917;
    wire wire_3918;
    wire wire_3919;
    wire wire_3920;
    wire wire_3921;
    wire wire_3922;
    wire wire_3923;
    wire wire_3924;
    wire wire_3925;
    wire wire_3926;
    wire wire_3927;
    wire wire_3928;
    wire wire_3929;
    wire wire_3930;
    wire wire_3931;
    wire wire_3932;
    wire wire_3933;
    wire wire_3934;
    wire wire_3935;
    wire wire_3936;
    wire wire_3937;
    wire wire_3938;
    wire wire_3939;
    wire wire_3940;
    wire wire_3941;
    wire wire_3942;
    wire wire_3943;
    wire wire_3944;
    wire wire_3945;
    wire wire_3946;
    wire wire_3947;
    wire wire_3948;
    wire wire_3949;
    wire wire_3950;
    wire wire_3951;
    wire wire_3952;
    wire wire_3953;
    wire wire_3954;
    wire wire_3955;
    wire wire_3956;
    wire wire_3957;
    wire wire_3958;
    wire wire_3959;
    wire wire_3960;
    wire wire_3961;
    wire wire_3962;
    wire wire_3963;
    wire wire_3964;
    wire wire_3965;
    wire wire_3966;
    wire wire_3967;
    wire wire_3968;
    wire wire_3969;
    wire wire_3970;
    wire wire_3971;
    wire wire_3972;
    wire wire_3973;
    wire wire_3974;
    wire wire_3975;
    wire wire_3976;
    wire wire_3977;
    wire wire_3978;
    wire wire_3979;
    wire wire_3980;
    wire wire_3981;
    wire wire_3982;
    wire wire_3983;
    wire wire_3984;
    wire wire_3985;
    wire wire_3986;
    wire wire_3987;
    wire wire_3988;
    wire wire_3989;
    wire wire_3990;
    wire wire_3991;
    wire wire_3992;
    wire wire_3993;
    wire wire_3994;
    wire wire_3995;
    wire wire_3996;
    wire wire_3997;
    wire wire_3998;
    wire wire_3999;
    wire wire_4000;
    wire wire_4001;
    wire wire_4002;
    wire wire_4003;
    wire wire_4004;
    wire wire_4005;
    wire wire_4006;
    wire wire_4007;
    wire wire_4008;
    wire wire_4009;
    wire wire_4010;
    wire wire_4011;
    wire wire_4012;
    wire wire_4013;
    wire wire_4014;
    wire wire_4015;
    wire wire_4016;
    wire wire_4017;
    wire wire_4018;
    wire wire_4019;
    wire wire_4020;
    wire wire_4021;
    wire wire_4022;
    wire wire_4023;
    wire wire_4024;
    wire wire_4025;
    wire wire_4026;
    wire wire_4027;
    wire wire_4028;
    wire wire_4029;
    wire wire_4030;
    wire wire_4031;
    wire wire_4032;
    wire wire_4033;
    wire wire_4034;
    wire wire_4035;
    wire wire_4036;
    wire wire_4037;
    wire wire_4038;
    wire wire_4039;
    wire wire_4040;
    wire wire_4041;
    wire wire_4042;
    wire wire_4043;
    wire wire_4044;
    wire wire_4045;
    wire wire_4046;
    wire wire_4047;
    wire wire_4048;
    wire wire_4049;
    wire wire_4050;
    wire wire_4051;
    wire wire_4052;
    wire wire_4053;
    wire wire_4054;
    wire wire_4055;
    wire wire_4056;
    wire wire_4057;
    wire wire_4058;
    wire wire_4059;
    wire wire_4060;
    wire wire_4061;
    wire wire_4062;
    wire wire_4063;
    wire wire_4064;
    wire wire_4065;
    wire wire_4066;
    wire wire_4067;
    wire wire_4068;
    wire wire_4069;
    wire wire_4070;
    wire wire_4071;
    wire wire_4072;
    wire wire_4073;
    wire wire_4074;
    wire wire_4075;
    wire wire_4076;
    wire wire_4077;
    wire wire_4078;
    wire wire_4079;
    wire wire_4080;
    wire wire_4081;
    wire wire_4082;
    wire wire_4083;
    wire wire_4084;
    wire wire_4085;
    wire wire_4086;
    wire wire_4087;
    wire wire_4088;
    wire wire_4089;
    wire wire_4090;
    wire wire_4091;
    wire wire_4092;
    wire wire_4093;
    wire wire_4094;
    wire wire_4095;
    wire wire_4096;
    wire wire_4097;
    wire wire_4098;
    wire wire_4099;
    wire wire_4100;
    wire wire_4101;
    wire wire_4102;
    wire wire_4103;
    wire wire_4104;
    wire wire_4105;
    wire wire_4106;
    wire wire_4107;
    wire wire_4108;
    wire wire_4109;
    wire wire_4110;
    wire wire_4111;
    wire wire_4112;
    wire wire_4113;
    wire wire_4114;
    wire wire_4115;
    wire wire_4116;
    wire wire_4117;
    wire wire_4118;
    wire wire_4119;
    wire wire_4120;
    wire wire_4121;
    wire wire_4122;
    wire wire_4123;
    wire wire_4124;
    wire wire_4125;
    wire wire_4126;
    wire wire_4127;
    wire wire_4128;
    wire wire_4129;
    wire wire_4130;
    wire wire_4131;
    wire wire_4132;
    wire wire_4133;
    wire wire_4134;
    wire wire_4135;
    wire wire_4136;
    wire wire_4137;
    wire wire_4138;
    wire wire_4139;
    wire wire_4140;
    wire wire_4141;
    wire wire_4142;
    wire wire_4143;
    wire wire_4144;
    wire wire_4145;
    wire wire_4146;
    wire wire_4147;
    wire wire_4148;
    wire wire_4149;
    wire wire_4150;
    wire wire_4151;
    wire wire_4152;
    wire wire_4153;
    wire wire_4154;
    wire wire_4155;
    wire wire_4156;
    wire wire_4157;
    wire wire_4158;
    wire wire_4159;
    wire wire_4160;
    wire wire_4161;
    wire wire_4162;
    wire wire_4163;
    wire wire_4164;
    wire wire_4165;
    wire wire_4166;
    wire wire_4167;
    wire wire_4168;
    wire wire_4169;
    wire wire_4170;
    wire wire_4171;
    wire wire_4172;
    wire wire_4173;
    wire wire_4174;
    wire wire_4175;
    wire wire_4176;
    wire wire_4177;
    wire wire_4178;
    wire wire_4179;
    wire wire_4180;
    wire wire_4181;
    wire wire_4182;
    wire wire_4183;
    wire wire_4184;
    wire wire_4185;
    wire wire_4186;
    wire wire_4187;
    wire wire_4188;
    wire wire_4189;
    wire wire_4190;
    wire wire_4191;
    wire wire_4192;
    wire wire_4193;
    wire wire_4194;
    wire wire_4195;
    wire wire_4196;
    wire wire_4197;
    wire wire_4198;
    wire wire_4199;
    wire wire_4200;
    wire wire_4201;
    wire wire_4202;
    wire wire_4203;
    wire wire_4204;
    wire wire_4205;
    wire wire_4206;
    wire wire_4207;
    wire wire_4208;
    wire wire_4209;
    wire wire_4210;
    wire wire_4211;
    wire wire_4212;
    wire wire_4213;
    wire wire_4214;
    wire wire_4215;
    wire wire_4216;
    wire wire_4217;
    wire wire_4218;
    wire wire_4219;
    wire wire_4220;
    wire wire_4221;
    wire wire_4222;
    wire wire_4223;
    wire wire_4224;
    wire wire_4225;
    wire wire_4226;
    wire wire_4227;
    wire wire_4228;
    wire wire_4229;
    wire wire_4230;
    wire wire_4231;
    wire wire_4232;
    wire wire_4233;
    wire wire_4234;
    wire wire_4235;
    wire wire_4236;
    wire wire_4237;
    wire wire_4238;
    wire wire_4239;
    wire wire_4240;
    wire wire_4241;
    wire wire_4242;
    wire wire_4243;
    wire wire_4244;
    wire wire_4245;
    wire wire_4246;
    wire wire_4247;
    wire wire_4248;
    wire wire_4249;
    wire wire_4250;
    wire wire_4251;
    wire wire_4252;
    wire wire_4253;
    wire wire_4254;
    wire wire_4255;
    wire wire_4256;
    wire wire_4257;
    wire wire_4258;
    wire wire_4259;
    wire wire_4260;
    wire wire_4261;
    wire wire_4262;
    wire wire_4263;
    wire wire_4264;
    wire wire_4265;
    wire wire_4266;
    wire wire_4267;
    wire wire_4268;
    wire wire_4269;
    wire wire_4270;
    wire wire_4271;
    wire wire_4272;
    wire wire_4273;
    wire wire_4274;
    wire wire_4275;
    wire wire_4276;
    wire wire_4277;
    wire wire_4278;
    wire wire_4279;
    wire wire_4280;
    wire wire_4281;
    wire wire_4282;
    wire wire_4283;
    wire wire_4284;
    wire wire_4285;
    wire wire_4286;
    wire wire_4287;
    wire wire_4288;
    wire wire_4289;
    wire wire_4290;
    wire wire_4291;
    wire wire_4292;
    wire wire_4293;
    wire wire_4294;
    wire wire_4295;
    wire wire_4296;
    wire wire_4297;
    wire wire_4298;
    wire wire_4299;
    wire wire_4300;
    wire wire_4301;
    wire wire_4302;
    wire wire_4303;
    wire wire_4304;
    wire wire_4305;
    wire wire_4306;
    wire wire_4307;
    wire wire_4308;
    wire wire_4309;
    wire wire_4310;
    wire wire_4311;
    wire wire_4312;
    wire wire_4313;
    wire wire_4314;
    wire wire_4315;
    wire wire_4316;
    wire wire_4317;
    wire wire_4318;
    wire wire_4319;
    wire wire_4320;
    wire wire_4321;
    wire wire_4322;
    wire wire_4323;
    wire wire_4324;
    wire wire_4325;
    wire wire_4326;
    wire wire_4327;
    wire wire_4328;
    wire wire_4329;
    wire wire_4330;
    wire wire_4331;
    wire wire_4332;
    wire wire_4333;
    wire wire_4334;
    wire wire_4335;
    wire wire_4336;
    wire wire_4337;
    wire wire_4338;
    wire wire_4339;
    wire wire_4340;
    wire wire_4341;
    wire wire_4342;
    wire wire_4343;
    wire wire_4344;
    wire wire_4345;
    wire wire_4346;
    wire wire_4347;
    wire wire_4348;
    wire wire_4349;
    wire wire_4350;
    wire wire_4351;
    wire wire_4352;
    wire wire_4353;
    wire wire_4354;
    wire wire_4355;
    wire wire_4356;
    wire wire_4357;
    wire wire_4358;
    wire wire_4359;
    wire wire_4360;
    wire wire_4361;
    wire wire_4362;
    wire wire_4363;
    wire wire_4364;
    wire wire_4365;
    wire wire_4366;
    wire wire_4367;
    wire wire_4368;
    wire wire_4369;
    wire wire_4370;
    wire wire_4371;
    wire wire_4372;
    wire wire_4373;
    wire wire_4374;
    wire wire_4375;
    wire wire_4376;
    wire wire_4377;
    wire wire_4378;
    wire wire_4379;
    wire wire_4380;
    wire wire_4381;
    wire wire_4382;
    wire wire_4383;
    wire wire_4384;
    wire wire_4385;
    wire wire_4386;
    wire wire_4387;
    wire wire_4388;
    wire wire_4389;
    wire wire_4390;
    wire wire_4391;
    wire wire_4392;
    wire wire_4393;
    wire wire_4394;
    wire wire_4395;
    wire wire_4396;
    wire wire_4397;
    wire wire_4398;
    wire wire_4399;
    wire wire_4400;
    wire wire_4401;
    wire wire_4402;
    wire wire_4403;
    wire wire_4404;
    wire wire_4405;
    wire wire_4406;
    wire wire_4407;
    wire wire_4408;
    wire wire_4409;
    wire wire_4410;
    wire wire_4411;
    wire wire_4412;
    wire wire_4413;
    wire wire_4414;
    wire wire_4415;
    wire wire_4416;
    wire wire_4417;
    wire wire_4418;
    wire wire_4419;
    wire wire_4420;
    wire wire_4421;
    wire wire_4422;
    wire wire_4423;
    wire wire_4424;
    wire wire_4425;
    wire wire_4426;
    wire wire_4427;
    wire wire_4428;
    wire wire_4429;
    wire wire_4430;
    wire wire_4431;
    wire wire_4432;
    wire wire_4433;
    wire wire_4434;
    wire wire_4435;
    wire wire_4436;
    wire wire_4437;
    wire wire_4438;
    wire wire_4439;
    wire wire_4440;
    wire wire_4441;
    wire wire_4442;
    wire wire_4443;
    wire wire_4444;
    wire wire_4445;
    wire wire_4446;
    wire wire_4447;
    wire wire_4448;
    wire wire_4449;
    wire wire_4450;
    wire wire_4451;
    wire wire_4452;
    wire wire_4453;
    wire wire_4454;
    wire wire_4455;
    wire wire_4456;
    wire wire_4457;
    wire wire_4458;
    wire wire_4459;
    wire wire_4460;
    wire wire_4461;
    wire wire_4462;
    wire wire_4463;
    wire wire_4464;
    wire wire_4465;
    wire wire_4466;
    wire wire_4467;
    wire wire_4468;
    wire wire_4469;
    wire wire_4470;
    wire wire_4471;
    wire wire_4472;
    wire wire_4473;
    wire wire_4474;
    wire wire_4475;
    wire wire_4476;
    wire wire_4477;
    wire wire_4478;
    wire wire_4479;
    wire wire_4480;
    wire wire_4481;
    wire wire_4482;
    wire wire_4483;
    wire wire_4484;
    wire wire_4485;
    wire wire_4486;
    wire wire_4487;
    wire wire_4488;
    wire wire_4489;
    wire wire_4490;
    wire wire_4491;
    wire wire_4492;
    wire wire_4493;
    wire wire_4494;
    wire wire_4495;
    wire wire_4496;
    wire wire_4497;
    wire wire_4498;
    wire wire_4499;
    wire wire_4500;
    wire wire_4501;
    wire wire_4502;
    wire wire_4503;
    wire wire_4504;
    wire wire_4505;
    wire wire_4506;
    wire wire_4507;
    wire wire_4508;
    wire wire_4509;
    wire wire_4510;
    wire wire_4511;
    wire wire_4512;
    wire wire_4513;
    wire wire_4514;
    wire wire_4515;
    wire wire_4516;
    wire wire_4517;
    wire wire_4518;
    wire wire_4519;
    wire wire_4520;
    wire wire_4521;
    wire wire_4522;
    wire wire_4523;
    wire wire_4524;
    wire wire_4525;
    wire wire_4526;
    wire wire_4527;
    wire wire_4528;
    wire wire_4529;
    wire wire_4530;
    wire wire_4531;
    wire wire_4532;
    wire wire_4533;
    wire wire_4534;
    wire wire_4535;
    wire wire_4536;
    wire wire_4537;
    wire wire_4538;
    wire wire_4539;
    wire wire_4540;
    wire wire_4541;
    wire wire_4542;
    wire wire_4543;
    wire wire_4544;
    wire wire_4545;
    wire wire_4546;
    wire wire_4547;
    wire wire_4548;
    wire wire_4549;
    wire wire_4550;
    wire wire_4551;
    wire wire_4552;
    wire wire_4553;
    wire wire_4554;
    wire wire_4555;
    wire wire_4556;
    wire wire_4557;
    wire wire_4558;
    wire wire_4559;
    wire wire_4560;
    wire wire_4561;
    wire wire_4562;
    wire wire_4563;
    wire wire_4564;
    wire wire_4565;
    wire wire_4566;
    wire wire_4567;
    wire wire_4568;
    wire wire_4569;
    wire wire_4570;
    wire wire_4571;
    wire wire_4572;
    wire wire_4573;
    wire wire_4574;
    wire wire_4575;
    wire wire_4576;
    wire wire_4577;
    wire wire_4578;
    wire wire_4579;
    wire wire_4580;
    wire wire_4581;
    wire wire_4582;
    wire wire_4583;
    wire wire_4584;
    wire wire_4585;
    wire wire_4586;
    wire wire_4587;
    wire wire_4588;
    wire wire_4589;
    wire wire_4590;
    wire wire_4591;
    wire wire_4592;
    wire wire_4593;
    wire wire_4594;
    wire wire_4595;
    wire wire_4596;
    wire wire_4597;
    wire wire_4598;
    wire wire_4599;
    wire wire_4600;
    wire wire_4601;
    wire wire_4602;
    wire wire_4603;
    wire wire_4604;
    wire wire_4605;
    wire wire_4606;
    wire wire_4607;
    wire wire_4608;
    wire wire_4609;
    wire wire_4610;
    wire wire_4611;
    wire wire_4612;
    wire wire_4613;
    wire wire_4614;
    wire wire_4615;
    wire wire_4616;
    wire wire_4617;
    wire wire_4618;
    wire wire_4619;
    wire wire_4620;
    wire wire_4621;
    wire wire_4622;
    wire wire_4623;
    wire wire_4624;
    wire wire_4625;
    wire wire_4626;
    wire wire_4627;
    wire wire_4628;
    wire wire_4629;
    wire wire_4630;
    wire wire_4631;
    wire wire_4632;
    wire wire_4633;
    wire wire_4634;
    wire wire_4635;
    wire wire_4636;
    wire wire_4637;
    wire wire_4638;
    wire wire_4639;
    wire wire_4640;
    wire wire_4641;
    wire wire_4642;
    wire wire_4643;
    wire wire_4644;
    wire wire_4645;
    wire wire_4646;
    wire wire_4647;
    wire wire_4648;
    wire wire_4649;
    wire wire_4650;
    wire wire_4651;
    wire wire_4652;
    wire wire_4653;
    wire wire_4654;
    wire wire_4655;
    wire wire_4656;
    wire wire_4657;
    wire wire_4658;
    wire wire_4659;
    wire wire_4660;
    wire wire_4661;
    wire wire_4662;
    wire wire_4663;
    wire wire_4664;
    wire wire_4665;
    wire wire_4666;
    wire wire_4667;
    wire wire_4668;
    wire wire_4669;
    wire wire_4670;
    wire wire_4671;
    wire wire_4672;
    wire wire_4673;
    wire wire_4674;
    wire wire_4675;
    wire wire_4676;
    wire wire_4677;
    wire wire_4678;
    wire wire_4679;
    wire wire_4680;
    wire wire_4681;
    wire wire_4682;
    wire wire_4683;
    wire wire_4684;
    wire wire_4685;
    wire wire_4686;
    wire wire_4687;
    wire wire_4688;
    wire wire_4689;
    wire wire_4690;
    wire wire_4691;
    wire wire_4692;
    wire wire_4693;
    wire wire_4694;
    wire wire_4695;
    wire wire_4696;
    wire wire_4697;
    wire wire_4698;
    wire wire_4699;
    wire wire_4700;
    wire wire_4701;
    wire wire_4702;
    wire wire_4703;
    wire wire_4704;
    wire wire_4705;
    wire wire_4706;
    wire wire_4707;
    wire wire_4708;
    wire wire_4709;
    wire wire_4710;
    wire wire_4711;
    wire wire_4712;
    wire wire_4713;
    wire wire_4714;
    wire wire_4715;
    wire wire_4716;
    wire wire_4717;
    wire wire_4718;
    wire wire_4719;
    wire wire_4720;
    wire wire_4721;
    wire wire_4722;
    wire wire_4723;
    wire wire_4724;
    wire wire_4725;
    wire wire_4726;
    wire wire_4727;
    wire wire_4728;
    wire wire_4729;
    wire wire_4730;
    wire wire_4731;
    wire wire_4732;
    wire wire_4733;
    wire wire_4734;
    wire wire_4735;
    wire wire_4736;
    wire wire_4737;
    wire wire_4738;
    wire wire_4739;
    wire wire_4740;
    wire wire_4741;
    wire wire_4742;
    wire wire_4743;
    wire wire_4744;
    wire wire_4745;
    wire wire_4746;
    wire wire_4747;
    wire wire_4748;
    wire wire_4749;
    wire wire_4750;
    wire wire_4751;
    wire wire_4752;
    wire wire_4753;
    wire wire_4754;
    wire wire_4755;
    wire wire_4756;
    wire wire_4757;
    wire wire_4758;
    wire wire_4759;
    wire wire_4760;
    wire wire_4761;
    wire wire_4762;
    wire wire_4763;
    wire wire_4764;
    wire wire_4765;
    wire wire_4766;
    wire wire_4767;
    wire wire_4768;
    wire wire_4769;
    wire wire_4770;
    wire wire_4771;
    wire wire_4772;
    wire wire_4773;
    wire wire_4774;
    wire wire_4775;
    wire wire_4776;
    wire wire_4777;
    wire wire_4778;
    wire wire_4779;
    wire wire_4780;
    wire wire_4781;
    wire wire_4782;
    wire wire_4783;
    wire wire_4784;
    wire wire_4785;
    wire wire_4786;
    wire wire_4787;
    wire wire_4788;
    wire wire_4789;
    wire wire_4790;
    wire wire_4791;
    wire wire_4792;
    wire wire_4793;
    wire wire_4794;
    wire wire_4795;
    wire wire_4796;
    wire wire_4797;
    wire wire_4798;
    wire wire_4799;
    wire wire_4800;
    wire wire_4801;
    wire wire_4802;
    wire wire_4803;
    wire wire_4804;
    wire wire_4805;
    wire wire_4806;
    wire wire_4807;
    wire wire_4808;
    wire wire_4809;
    wire wire_4810;
    wire wire_4811;
    wire wire_4812;
    wire wire_4813;
    wire wire_4814;
    wire wire_4815;
    wire wire_4816;
    wire wire_4817;
    wire wire_4818;
    wire wire_4819;
    wire wire_4820;
    wire wire_4821;
    wire wire_4822;
    wire wire_4823;
    wire wire_4824;
    wire wire_4825;
    wire wire_4826;
    wire wire_4827;
    wire wire_4828;
    wire wire_4829;
    wire wire_4830;
    wire wire_4831;
    wire wire_4832;
    wire wire_4833;
    wire wire_4834;
    wire wire_4835;
    wire wire_4836;
    wire wire_4837;
    wire wire_4838;
    wire wire_4839;
    wire wire_4840;
    wire wire_4841;
    wire wire_4842;
    wire wire_4843;
    wire wire_4844;
    wire wire_4845;
    wire wire_4846;
    wire wire_4847;
    wire wire_4848;
    wire wire_4849;
    wire wire_4850;
    wire wire_4851;
    wire wire_4852;
    wire wire_4853;
    wire wire_4854;
    wire wire_4855;
    wire wire_4856;
    wire wire_4857;
    wire wire_4858;
    wire wire_4859;
    wire wire_4860;
    wire wire_4861;
    wire wire_4862;
    wire wire_4863;
    wire wire_4864;
    wire wire_4865;
    wire wire_4866;
    wire wire_4867;
    wire wire_4868;
    wire wire_4869;
    wire wire_4870;
    wire wire_4871;
    wire wire_4872;
    wire wire_4873;
    wire wire_4874;
    wire wire_4875;
    wire wire_4876;
    wire wire_4877;
    wire wire_4878;
    wire wire_4879;
    wire wire_4880;
    wire wire_4881;
    wire wire_4882;
    wire wire_4883;
    wire wire_4884;
    wire wire_4885;
    wire wire_4886;
    wire wire_4887;
    wire wire_4888;
    wire wire_4889;
    wire wire_4890;
    wire wire_4891;
    wire wire_4892;
    wire wire_4893;
    wire wire_4894;
    wire wire_4895;
    wire wire_4896;
    wire wire_4897;
    wire wire_4898;
    wire wire_4899;
    wire wire_4900;
    wire wire_4901;
    wire wire_4902;
    wire wire_4903;
    wire wire_4904;
    wire wire_4905;
    wire wire_4906;
    wire wire_4907;
    wire wire_4908;
    wire wire_4909;
    wire wire_4910;
    wire wire_4911;
    wire wire_4912;
    wire wire_4913;
    wire wire_4914;
    wire wire_4915;
    wire wire_4916;
    wire wire_4917;
    wire wire_4918;
    wire wire_4919;
    wire wire_4920;
    wire wire_4921;
    wire wire_4922;
    wire wire_4923;
    wire wire_4924;
    wire wire_4925;
    wire wire_4926;
    wire wire_4927;
    wire wire_4928;
    wire wire_4929;
    wire wire_4930;
    wire wire_4931;
    wire wire_4932;
    wire wire_4933;
    wire wire_4934;
    wire wire_4935;
    wire wire_4936;
    wire wire_4937;
    wire wire_4938;
    wire wire_4939;
    wire wire_4940;
    wire wire_4941;
    wire wire_4942;
    wire wire_4943;
    wire wire_4944;
    wire wire_4945;
    wire wire_4946;
    wire wire_4947;
    wire wire_4948;
    wire wire_4949;
    wire wire_4950;
    wire wire_4951;
    wire wire_4952;
    wire wire_4953;
    wire wire_4954;
    wire wire_4955;
    wire wire_4956;
    wire wire_4957;
    wire wire_4958;
    wire wire_4959;
    wire wire_4960;
    wire wire_4961;
    wire wire_4962;
    wire wire_4963;
    wire wire_4964;
    wire wire_4965;
    wire wire_4966;
    wire wire_4967;
    wire wire_4968;
    wire wire_4969;
    wire wire_4970;
    wire wire_4971;
    wire wire_4972;
    wire wire_4973;
    wire wire_4974;
    wire wire_4975;
    wire wire_4976;
    wire wire_4977;
    wire wire_4978;
    wire wire_4979;
    wire wire_4980;
    wire wire_4981;
    wire wire_4982;
    wire wire_4983;
    wire wire_4984;
    wire wire_4985;
    wire wire_4986;
    wire wire_4987;
    wire wire_4988;
    wire wire_4989;
    wire wire_4990;
    wire wire_4991;
    wire wire_4992;
    wire wire_4993;
    wire wire_4994;
    wire wire_4995;
    wire wire_4996;
    wire wire_4997;
    wire wire_4998;
    wire wire_4999;
    wire wire_5000;
    wire wire_5001;
    wire wire_5002;
    wire wire_5003;
    wire wire_5004;
    wire wire_5005;
    wire wire_5006;
    wire wire_5007;
    wire wire_5008;
    wire wire_5009;
    wire wire_5010;
    wire wire_5011;
    wire wire_5012;
    wire wire_5013;
    wire wire_5014;
    wire wire_5015;
    wire wire_5016;
    wire wire_5017;
    wire wire_5018;
    wire wire_5019;
    wire wire_5020;
    wire wire_5021;
    wire wire_5022;
    wire wire_5023;
    wire wire_5024;
    wire wire_5025;
    wire wire_5026;
    wire wire_5027;
    wire wire_5028;
    wire wire_5029;
    wire wire_5030;
    wire wire_5031;
    wire wire_5032;
    wire wire_5033;
    wire wire_5034;
    wire wire_5035;
    wire wire_5036;
    wire wire_5037;
    wire wire_5038;
    wire wire_5039;
    wire wire_5040;
    wire wire_5041;
    wire wire_5042;
    wire wire_5043;
    wire wire_5044;
    wire wire_5045;
    wire wire_5046;
    wire wire_5047;
    wire wire_5048;
    wire wire_5049;
    wire wire_5050;
    wire wire_5051;
    wire wire_5052;
    wire wire_5053;
    wire wire_5054;
    wire wire_5055;
    wire wire_5056;
    wire wire_5057;
    wire wire_5058;
    wire wire_5059;
    wire wire_5060;
    wire wire_5061;
    wire wire_5062;
    wire wire_5063;
    wire wire_5064;
    wire wire_5065;
    wire wire_5066;
    wire wire_5067;
    wire wire_5068;
    wire wire_5069;
    wire wire_5070;
    wire wire_5071;
    wire wire_5072;
    wire wire_5073;
    wire wire_5074;
    wire wire_5075;
    wire wire_5076;
    wire wire_5077;
    wire wire_5078;
    wire wire_5079;
    wire wire_5080;
    wire wire_5081;
    wire wire_5082;
    wire wire_5083;
    wire wire_5084;
    wire wire_5085;
    wire wire_5086;
    wire wire_5087;
    wire wire_5088;
    wire wire_5089;
    wire wire_5090;
    wire wire_5091;
    wire wire_5092;
    wire wire_5093;
    wire wire_5094;
    wire wire_5095;
    wire wire_5096;
    wire wire_5097;
    wire wire_5098;
    wire wire_5099;
    wire wire_5100;
    wire wire_5101;
    wire wire_5102;
    wire wire_5103;
    wire wire_5104;
    wire wire_5105;
    wire wire_5106;
    wire wire_5107;
    wire wire_5108;
    wire wire_5109;
    wire wire_5110;
    wire wire_5111;
    wire wire_5112;
    wire wire_5113;
    wire wire_5114;
    wire wire_5115;
    wire wire_5116;
    wire wire_5117;
    wire wire_5118;
    wire wire_5119;
    wire wire_5120;
    wire wire_5121;
    wire wire_5122;
    wire wire_5123;
    wire wire_5124;
    wire wire_5125;
    wire wire_5126;
    wire wire_5127;
    wire wire_5128;
    wire wire_5129;
    wire wire_5130;
    wire wire_5131;
    wire wire_5132;
    wire wire_5133;
    wire wire_5134;
    wire wire_5135;
    wire wire_5136;
    wire wire_5137;
    wire wire_5138;
    wire wire_5139;
    wire wire_5140;
    wire wire_5141;
    wire wire_5142;
    wire wire_5143;
    wire wire_5144;
    wire wire_5145;
    wire wire_5146;
    wire wire_5147;
    wire wire_5148;
    wire wire_5149;
    wire wire_5150;
    wire wire_5151;
    wire wire_5152;
    wire wire_5153;
    wire wire_5154;
    wire wire_5155;
    wire wire_5156;
    wire wire_5157;
    wire wire_5158;
    wire wire_5159;
    wire wire_5160;
    wire wire_5161;
    wire wire_5162;
    wire wire_5163;
    wire wire_5164;
    wire wire_5165;
    wire wire_5166;
    wire wire_5167;
    wire wire_5168;
    wire wire_5169;
    wire wire_5170;
    wire wire_5171;
    wire wire_5172;
    wire wire_5173;
    wire wire_5174;
    wire wire_5175;
    wire wire_5176;
    wire wire_5177;
    wire wire_5178;
    wire wire_5179;
    wire wire_5180;
    wire wire_5181;
    wire wire_5182;
    wire wire_5183;
    wire wire_5184;
    wire wire_5185;
    wire wire_5186;
    wire wire_5187;
    wire wire_5188;
    wire wire_5189;
    wire wire_5190;
    wire wire_5191;
    wire wire_5192;
    wire wire_5193;
    wire wire_5194;
    wire wire_5195;
    wire wire_5196;
    wire wire_5197;
    wire wire_5198;
    wire wire_5199;
    wire wire_5200;
    wire wire_5201;
    wire wire_5202;
    wire wire_5203;
    wire wire_5204;
    wire wire_5205;
    wire wire_5206;
    wire wire_5207;
    wire wire_5208;
    wire wire_5209;
    wire wire_5210;
    wire wire_5211;
    wire wire_5212;
    wire wire_5213;
    wire wire_5214;
    wire wire_5215;
    wire wire_5216;
    wire wire_5217;
    wire wire_5218;
    wire wire_5219;
    wire wire_5220;
    wire wire_5221;
    wire wire_5222;
    wire wire_5223;
    wire wire_5224;
    wire wire_5225;
    wire wire_5226;
    wire wire_5227;
    wire wire_5228;
    wire wire_5229;
    wire wire_5230;
    wire wire_5231;
    wire wire_5232;
    wire wire_5233;
    wire wire_5234;
    wire wire_5235;
    wire wire_5236;
    wire wire_5237;
    wire wire_5238;
    wire wire_5239;
    wire wire_5240;
    wire wire_5241;
    wire wire_5242;
    wire wire_5243;
    wire wire_5244;
    wire wire_5245;
    wire wire_5246;
    wire wire_5247;
    wire wire_5248;
    wire wire_5249;
    wire wire_5250;
    wire wire_5251;
    wire wire_5252;
    wire wire_5253;
    wire wire_5254;
    wire wire_5255;
    wire wire_5256;
    wire wire_5257;
    wire wire_5258;
    wire wire_5259;
    wire wire_5260;
    wire wire_5261;
    wire wire_5262;
    wire wire_5263;
    wire wire_5264;
    wire wire_5265;
    wire wire_5266;
    wire wire_5267;
    wire wire_5268;
    wire wire_5269;
    wire wire_5270;
    wire wire_5271;
    wire wire_5272;
    wire wire_5273;
    wire wire_5274;
    wire wire_5275;
    wire wire_5276;
    wire wire_5277;
    wire wire_5278;
    wire wire_5279;
    wire wire_5280;
    wire wire_5281;
    wire wire_5282;
    wire wire_5283;
    wire wire_5284;
    wire wire_5285;
    wire wire_5286;
    wire wire_5287;
    wire wire_5288;
    wire wire_5289;
    wire wire_5290;
    wire wire_5291;
    wire wire_5292;
    wire wire_5293;
    wire wire_5294;
    wire wire_5295;
    wire wire_5296;
    wire wire_5297;
    wire wire_5298;
    wire wire_5299;
    wire wire_5300;
    wire wire_5301;
    wire wire_5302;
    wire wire_5303;
    wire wire_5304;
    wire wire_5305;
    wire wire_5306;
    wire wire_5307;
    wire wire_5308;
    wire wire_5309;
    wire wire_5310;
    wire wire_5311;
    wire wire_5312;
    wire wire_5313;
    wire wire_5314;
    wire wire_5315;
    wire wire_5316;
    wire wire_5317;
    wire wire_5318;
    wire wire_5319;
    wire wire_5320;
    wire wire_5321;
    wire wire_5322;
    wire wire_5323;
    wire wire_5324;
    wire wire_5325;
    wire wire_5326;
    wire wire_5327;
    wire wire_5328;
    wire wire_5329;
    wire wire_5330;
    wire wire_5331;
    wire wire_5332;
    wire wire_5333;
    wire wire_5334;
    wire wire_5335;
    wire wire_5336;
    wire wire_5337;
    wire wire_5338;
    wire wire_5339;
    wire wire_5340;
    wire wire_5341;
    wire wire_5342;
    wire wire_5343;
    wire wire_5344;
    wire wire_5345;
    wire wire_5346;
    wire wire_5347;
    wire wire_5348;
    wire wire_5349;
    wire wire_5350;
    wire wire_5351;
    wire wire_5352;
    wire wire_5353;
    wire wire_5354;
    wire wire_5355;
    wire wire_5356;
    wire wire_5357;
    wire wire_5358;
    wire wire_5359;
    wire wire_5360;
    wire wire_5361;
    wire wire_5362;
    wire wire_5363;
    wire wire_5364;
    wire wire_5365;
    wire wire_5366;
    wire wire_5367;
    wire wire_5368;
    wire wire_5369;
    wire wire_5370;
    wire wire_5371;
    wire wire_5372;
    wire wire_5373;
    wire wire_5374;
    wire wire_5375;
    wire wire_5376;
    wire wire_5377;
    wire wire_5378;
    wire wire_5379;
    wire wire_5380;
    wire wire_5381;
    wire wire_5382;
    wire wire_5383;
    wire wire_5384;
    wire wire_5385;
    wire wire_5386;
    wire wire_5387;
    wire wire_5388;
    wire wire_5389;
    wire wire_5390;
    wire wire_5391;
    wire wire_5392;
    wire wire_5393;
    wire wire_5394;
    wire wire_5395;
    wire wire_5396;
    wire wire_5397;
    wire wire_5398;
    wire wire_5399;
    wire wire_5400;
    wire wire_5401;
    wire wire_5402;
    wire wire_5403;
    wire wire_5404;
    wire wire_5405;
    wire wire_5406;
    wire wire_5407;
    wire wire_5408;
    wire wire_5409;
    wire wire_5410;
    wire wire_5411;
    wire wire_5412;
    wire wire_5413;
    wire wire_5414;
    wire wire_5415;
    wire wire_5416;
    wire wire_5417;
    wire wire_5418;
    wire wire_5419;
    wire wire_5420;
    wire wire_5421;
    wire wire_5422;
    wire wire_5423;
    wire wire_5424;
    wire wire_5425;
    wire wire_5426;
    wire wire_5427;
    wire wire_5428;
    wire wire_5429;
    wire wire_5430;
    wire wire_5431;
    wire wire_5432;
    wire wire_5433;
    wire wire_5434;
    wire wire_5435;
    wire wire_5436;
    wire wire_5437;
    wire wire_5438;
    wire wire_5439;
    wire wire_5440;
    wire wire_5441;
    wire wire_5442;
    wire wire_5443;
    wire wire_5444;
    wire wire_5445;
    wire wire_5446;
    wire wire_5447;
    wire wire_5448;
    wire wire_5449;
    wire wire_5450;
    wire wire_5451;
    wire wire_5452;
    wire wire_5453;
    wire wire_5454;
    wire wire_5455;
    wire wire_5456;
    wire wire_5457;
    wire wire_5458;
    wire wire_5459;
    wire wire_5460;
    wire wire_5461;
    wire wire_5462;
    wire wire_5463;
    wire wire_5464;
    wire wire_5465;
    wire wire_5466;
    wire wire_5467;
    wire wire_5468;
    wire wire_5469;
    wire wire_5470;
    wire wire_5471;
    wire wire_5472;
    wire wire_5473;
    wire wire_5474;
    wire wire_5475;
    wire wire_5476;
    wire wire_5477;
    wire wire_5478;
    wire wire_5479;
    wire wire_5480;
    wire wire_5481;
    wire wire_5482;
    wire wire_5483;
    wire wire_5484;
    wire wire_5485;
    wire wire_5486;
    wire wire_5487;
    wire wire_5488;
    wire wire_5489;
    wire wire_5490;
    wire wire_5491;
    wire wire_5492;
    wire wire_5493;
    wire wire_5494;
    wire wire_5495;
    wire wire_5496;
    wire wire_5497;
    wire wire_5498;
    wire wire_5499;
    wire wire_5500;
    wire wire_5501;
    wire wire_5502;
    wire wire_5503;
    wire wire_5504;
    wire wire_5505;
    wire wire_5506;
    wire wire_5507;
    wire wire_5508;
    wire wire_5509;
    wire wire_5510;
    wire wire_5511;
    wire wire_5512;
    wire wire_5513;
    wire wire_5514;
    wire wire_5515;
    wire wire_5516;
    wire wire_5517;
    wire wire_5518;
    wire wire_5519;
    wire wire_5520;
    wire wire_5521;
    wire wire_5522;
    wire wire_5523;
    wire wire_5524;
    wire wire_5525;
    wire wire_5526;
    wire wire_5527;
    wire wire_5528;
    wire wire_5529;
    wire wire_5530;
    wire wire_5531;
    wire wire_5532;
    wire wire_5533;
    wire wire_5534;
    wire wire_5535;
    wire wire_5536;
    wire wire_5537;
    wire wire_5538;
    wire wire_5539;
    wire wire_5540;
    wire wire_5541;
    wire wire_5542;
    wire wire_5543;
    wire wire_5544;
    wire wire_5545;
    wire wire_5546;
    wire wire_5547;
    wire wire_5548;
    wire wire_5549;
    wire wire_5550;
    wire wire_5551;
    wire wire_5552;
    wire wire_5553;
    wire wire_5554;
    wire wire_5555;
    wire wire_5556;
    wire wire_5557;
    wire wire_5558;
    wire wire_5559;
    wire wire_5560;
    wire wire_5561;
    wire wire_5562;
    wire wire_5563;
    wire wire_5564;
    wire wire_5565;
    wire wire_5566;
    wire wire_5567;
    wire wire_5568;
    wire wire_5569;
    wire wire_5570;
    wire wire_5571;
    wire wire_5572;
    wire wire_5573;
    wire wire_5574;
    wire wire_5575;
    wire wire_5576;
    wire wire_5577;
    wire wire_5578;
    wire wire_5579;
    wire wire_5580;
    wire wire_5581;
    wire wire_5582;
    wire wire_5583;
    wire wire_5584;
    wire wire_5585;
    wire wire_5586;
    wire wire_5587;
    wire wire_5588;
    wire wire_5589;
    wire wire_5590;
    wire wire_5591;
    wire wire_5592;
    wire wire_5593;
    wire wire_5594;
    wire wire_5595;
    wire wire_5596;
    wire wire_5597;
    wire wire_5598;
    wire wire_5599;
    wire wire_5600;
    wire wire_5601;
    wire wire_5602;
    wire wire_5603;
    wire wire_5604;
    wire wire_5605;
    wire wire_5606;
    wire wire_5607;
    wire wire_5608;
    wire wire_5609;
    wire wire_5610;
    wire wire_5611;
    wire wire_5612;
    wire wire_5613;
    wire wire_5614;
    wire wire_5615;
    wire wire_5616;
    wire wire_5617;
    wire wire_5618;
    wire wire_5619;
    wire wire_5620;
    wire wire_5621;
    wire wire_5622;
    wire wire_5623;
    wire wire_5624;
    wire wire_5625;
    wire wire_5626;
    wire wire_5627;
    wire wire_5628;
    wire wire_5629;
    wire wire_5630;
    wire wire_5631;
    wire wire_5632;
    wire wire_5633;
    wire wire_5634;
    wire wire_5635;
    wire wire_5636;
    wire wire_5637;
    wire wire_5638;
    wire wire_5639;
    wire wire_5640;
    wire wire_5641;
    wire wire_5642;
    wire wire_5643;
    wire wire_5644;
    wire wire_5645;
    wire wire_5646;
    wire wire_5647;
    wire wire_5648;
    wire wire_5649;
    wire wire_5650;
    wire wire_5651;
    wire wire_5652;
    wire wire_5653;
    wire wire_5654;
    wire wire_5655;
    wire wire_5656;
    wire wire_5657;
    wire wire_5658;
    wire wire_5659;
    wire wire_5660;
    wire wire_5661;
    wire wire_5662;
    wire wire_5663;
    wire wire_5664;
    wire wire_5665;
    wire wire_5666;
    wire wire_5667;
    wire wire_5668;
    wire wire_5669;
    wire wire_5670;
    wire wire_5671;
    wire wire_5672;
    wire wire_5673;
    wire wire_5674;
    wire wire_5675;
    wire wire_5676;
    wire wire_5677;
    wire wire_5678;
    wire wire_5679;
    wire wire_5680;
    wire wire_5681;
    wire wire_5682;
    wire wire_5683;
    wire wire_5684;
    wire wire_5685;
    wire wire_5686;
    wire wire_5687;
    wire wire_5688;
    wire wire_5689;
    wire wire_5690;
    wire wire_5691;
    wire wire_5692;
    wire wire_5693;
    wire wire_5694;
    wire wire_5695;
    wire wire_5696;
    wire wire_5697;
    wire wire_5698;
    wire wire_5699;
    wire wire_5700;
    wire wire_5701;
    wire wire_5702;
    wire wire_5703;
    wire wire_5704;
    wire wire_5705;
    wire wire_5706;
    wire wire_5707;
    wire wire_5708;
    wire wire_5709;
    wire wire_5710;
    wire wire_5711;
    wire wire_5712;
    wire wire_5713;
    wire wire_5714;
    wire wire_5715;
    wire wire_5716;
    wire wire_5717;
    wire wire_5718;
    wire wire_5719;
    wire wire_5720;
    wire wire_5721;
    wire wire_5722;
    wire wire_5723;
    wire wire_5724;
    wire wire_5725;
    wire wire_5726;
    wire wire_5727;
    wire wire_5728;
    wire wire_5729;
    wire wire_5730;
    wire wire_5731;
    wire wire_5732;
    wire wire_5733;
    wire wire_5734;
    wire wire_5735;
    wire wire_5736;
    wire wire_5737;
    wire wire_5738;
    wire wire_5739;
    wire wire_5740;
    wire wire_5741;
    wire wire_5742;
    wire wire_5743;
    wire wire_5744;
    wire wire_5745;
    wire wire_5746;
    wire wire_5747;
    wire wire_5748;
    wire wire_5749;
    wire wire_5750;
    wire wire_5751;
    wire wire_5752;
    wire wire_5753;
    wire wire_5754;
    wire wire_5755;
    wire wire_5756;
    wire wire_5757;
    wire wire_5758;
    wire wire_5759;
    wire wire_5760;
    wire wire_5761;
    wire wire_5762;
    wire wire_5763;
    wire wire_5764;
    wire wire_5765;
    wire wire_5766;
    wire wire_5767;
    wire wire_5768;
    wire wire_5769;
    wire wire_5770;
    wire wire_5771;
    wire wire_5772;
    wire wire_5773;
    wire wire_5774;
    wire wire_5775;
    wire wire_5776;
    wire wire_5777;
    wire wire_5778;
    wire wire_5779;
    wire wire_5780;
    wire wire_5781;
    wire wire_5782;
    wire wire_5783;
    wire wire_5784;
    wire wire_5785;
    wire wire_5786;
    wire wire_5787;
    wire wire_5788;
    wire wire_5789;
    wire wire_5790;
    wire wire_5791;
    wire wire_5792;
    wire wire_5793;
    wire wire_5794;
    wire wire_5795;
    wire wire_5796;
    wire wire_5797;
    wire wire_5798;
    wire wire_5799;
    wire wire_5800;
    wire wire_5801;
    wire wire_5802;
    wire wire_5803;
    wire wire_5804;
    wire wire_5805;
    wire wire_5806;
    wire wire_5807;
    wire wire_5808;
    wire wire_5809;
    wire wire_5810;
    wire wire_5811;
    wire wire_5812;
    wire wire_5813;
    wire wire_5814;
    wire wire_5815;
    wire wire_5816;
    wire wire_5817;
    wire wire_5818;
    wire wire_5819;
    wire wire_5820;
    wire wire_5821;
    wire wire_5822;
    wire wire_5823;
    wire wire_5824;
    wire wire_5825;
    wire wire_5826;
    wire wire_5827;
    wire wire_5828;
    wire wire_5829;
    wire wire_5830;
    wire wire_5831;
    wire wire_5832;
    wire wire_5833;
    wire wire_5834;
    wire wire_5835;
    wire wire_5836;
    wire wire_5837;
    wire wire_5838;
    wire wire_5839;
    wire wire_5840;
    wire wire_5841;
    wire wire_5842;
    wire wire_5843;
    wire wire_5844;
    wire wire_5845;
    wire wire_5846;
    wire wire_5847;
    wire wire_5848;
    wire wire_5849;
    wire wire_5850;
    wire wire_5851;
    wire wire_5852;
    wire wire_5853;
    wire wire_5854;
    wire wire_5855;
    wire wire_5856;
    wire wire_5857;
    wire wire_5858;
    wire wire_5859;
    wire wire_5860;
    wire wire_5861;
    wire wire_5862;
    wire wire_5863;
    wire wire_5864;
    wire wire_5865;
    wire wire_5866;
    wire wire_5867;
    wire wire_5868;
    wire wire_5869;
    wire wire_5870;
    wire wire_5871;
    wire wire_5872;
    wire wire_5873;
    wire wire_5874;
    wire wire_5875;
    wire wire_5876;
    wire wire_5877;
    wire wire_5878;
    wire wire_5879;
    wire wire_5880;
    wire wire_5881;
    wire wire_5882;
    wire wire_5883;
    wire wire_5884;
    wire wire_5885;
    wire wire_5886;
    wire wire_5887;
    wire wire_5888;
    wire wire_5889;
    wire wire_5890;
    wire wire_5891;
    wire wire_5892;
    wire wire_5893;
    wire wire_5894;
    wire wire_5895;
    wire wire_5896;
    wire wire_5897;
    wire wire_5898;
    wire wire_5899;
    wire wire_5900;
    wire wire_5901;
    wire wire_5902;
    wire wire_5903;
    wire wire_5904;
    wire wire_5905;
    wire wire_5906;
    wire wire_5907;
    wire wire_5908;
    wire wire_5909;
    wire wire_5910;
    wire wire_5911;
    wire wire_5912;
    wire wire_5913;
    wire wire_5914;
    wire wire_5915;
    wire wire_5916;
    wire wire_5917;
    wire wire_5918;
    wire wire_5919;
    wire wire_5920;
    wire wire_5921;
    wire wire_5922;
    wire wire_5923;
    wire wire_5924;
    wire wire_5925;
    wire wire_5926;
    wire wire_5927;
    wire wire_5928;
    wire wire_5929;
    wire wire_5930;
    wire wire_5931;
    wire wire_5932;
    wire wire_5933;
    wire wire_5934;
    wire wire_5935;
    wire wire_5936;
    wire wire_5937;
    wire wire_5938;
    wire wire_5939;
    wire wire_5940;
    wire wire_5941;
    wire wire_5942;
    wire wire_5943;
    wire wire_5944;
    wire wire_5945;
    wire wire_5946;
    wire wire_5947;
    wire wire_5948;
    wire wire_5949;
    wire wire_5950;
    wire wire_5951;
    wire wire_5952;
    wire wire_5953;
    wire wire_5954;
    wire wire_5955;
    wire wire_5956;
    wire wire_5957;
    wire wire_5958;
    wire wire_5959;
    wire wire_5960;
    wire wire_5961;
    wire wire_5962;
    wire wire_5963;
    wire wire_5964;
    wire wire_5965;
    wire wire_5966;
    wire wire_5967;
    wire wire_5968;
    wire wire_5969;
    wire wire_5970;
    wire wire_5971;
    wire wire_5972;
    wire wire_5973;
    wire wire_5974;
    wire wire_5975;
    wire wire_5976;
    wire wire_5977;
    wire wire_5978;
    wire wire_5979;
    wire wire_5980;
    wire wire_5981;
    wire wire_5982;
    wire wire_5983;
    wire wire_5984;
    wire wire_5985;
    wire wire_5986;
    wire wire_5987;
    wire wire_5988;
    wire wire_5989;
    wire wire_5990;
    wire wire_5991;
    wire wire_5992;
    wire wire_5993;
    wire wire_5994;
    wire wire_5995;
    wire wire_5996;
    wire wire_5997;
    wire wire_5998;
    wire wire_5999;
    wire wire_6000;
    wire wire_6001;
    wire wire_6002;
    wire wire_6003;
    wire wire_6004;
    wire wire_6005;
    wire wire_6006;
    wire wire_6007;
    wire wire_6008;
    wire wire_6009;
    wire wire_6010;
    wire wire_6011;
    wire wire_6012;
    wire wire_6013;
    wire wire_6014;
    wire wire_6015;
    wire wire_6016;
    wire wire_6017;
    wire wire_6018;
    wire wire_6019;
    wire wire_6020;
    wire wire_6021;
    wire wire_6022;
    wire wire_6023;
    wire wire_6024;
    wire wire_6025;
    wire wire_6026;
    wire wire_6027;
    wire wire_6028;
    wire wire_6029;
    wire wire_6030;
    wire wire_6031;
    wire wire_6032;
    wire wire_6033;
    wire wire_6034;
    wire wire_6035;
    wire wire_6036;
    wire wire_6037;
    wire wire_6038;
    wire wire_6039;
    wire wire_6040;
    wire wire_6041;
    wire wire_6042;
    wire wire_6043;
    wire wire_6044;
    wire wire_6045;
    wire wire_6046;
    wire wire_6047;
    wire wire_6048;
    wire wire_6049;
    wire wire_6050;
    wire wire_6051;
    wire wire_6052;
    wire wire_6053;
    wire wire_6054;
    wire wire_6055;
    wire wire_6056;
    wire wire_6057;
    wire wire_6058;
    wire wire_6059;
    wire wire_6060;
    wire wire_6061;
    wire wire_6062;
    wire wire_6063;
    wire wire_6064;
    wire wire_6065;
    wire wire_6066;
    wire wire_6067;
    wire wire_6068;
    wire wire_6069;
    wire wire_6070;
    wire wire_6071;
    wire wire_6072;
    wire wire_6073;
    wire wire_6074;
    wire wire_6075;
    wire wire_6076;
    wire wire_6077;
    wire wire_6078;
    wire wire_6079;
    wire wire_6080;
    wire wire_6081;
    wire wire_6082;
    wire wire_6083;
    wire wire_6084;
    wire wire_6085;
    wire wire_6086;
    wire wire_6087;
    wire wire_6088;
    wire wire_6089;
    wire wire_6090;
    wire wire_6091;
    wire wire_6092;
    wire wire_6093;
    wire wire_6094;
    wire wire_6095;
    wire wire_6096;
    wire wire_6097;
    wire wire_6098;
    wire wire_6099;
    wire wire_6100;
    wire wire_6101;
    wire wire_6102;
    wire wire_6103;
    wire wire_6104;
    wire wire_6105;
    wire wire_6106;
    wire wire_6107;
    wire wire_6108;
    wire wire_6109;
    wire wire_6110;
    wire wire_6111;
    wire wire_6112;
    wire wire_6113;
    wire wire_6114;
    wire wire_6115;
    wire wire_6116;
    wire wire_6117;
    wire wire_6118;
    wire wire_6119;
    wire wire_6120;
    wire wire_6121;
    wire wire_6122;
    wire wire_6123;
    wire wire_6124;
    wire wire_6125;
    wire wire_6126;
    wire wire_6127;
    wire wire_6128;
    wire wire_6129;
    wire wire_6130;
    wire wire_6131;
    wire wire_6132;
    wire wire_6133;
    wire wire_6134;
    wire wire_6135;
    wire wire_6136;
    wire wire_6137;
    wire wire_6138;
    wire wire_6139;
    wire wire_6140;
    wire wire_6141;
    wire wire_6142;
    wire wire_6143;
    wire wire_6144;
    wire wire_6145;
    wire wire_6146;
    wire wire_6147;
    wire wire_6148;
    wire wire_6149;
    wire wire_6150;
    wire wire_6151;
    wire wire_6152;
    wire wire_6153;
    wire wire_6154;
    wire wire_6155;
    wire wire_6156;
    wire wire_6157;
    wire wire_6158;
    wire wire_6159;
    wire wire_6160;
    wire wire_6161;
    wire wire_6162;
    wire wire_6163;
    wire wire_6164;
    wire wire_6165;
    wire wire_6166;
    wire wire_6167;
    wire wire_6168;
    wire wire_6169;
    wire wire_6170;
    wire wire_6171;
    wire wire_6172;
    wire wire_6173;
    wire wire_6174;
    wire wire_6175;
    wire wire_6176;
    wire wire_6177;
    wire wire_6178;
    wire wire_6179;
    wire wire_6180;
    wire wire_6181;
    wire wire_6182;
    wire wire_6183;
    wire wire_6184;
    wire wire_6185;
    wire wire_6186;
    wire wire_6187;
    wire wire_6188;
    wire wire_6189;
    wire wire_6190;
    wire wire_6191;
    wire wire_6192;
    wire wire_6193;
    wire wire_6194;
    wire wire_6195;
    wire wire_6196;
    wire wire_6197;
    wire wire_6198;
    wire wire_6199;
    wire wire_6200;
    wire wire_6201;
    wire wire_6202;
    wire wire_6203;
    wire wire_6204;
    wire wire_6205;
    wire wire_6206;
    wire wire_6207;
    wire wire_6208;
    wire wire_6209;
    wire wire_6210;
    wire wire_6211;
    wire wire_6212;
    wire wire_6213;
    wire wire_6214;
    wire wire_6215;
    wire wire_6216;
    wire wire_6217;
    wire wire_6218;
    wire wire_6219;
    wire wire_6220;
    wire wire_6221;
    wire wire_6222;
    wire wire_6223;
    wire wire_6224;
    wire wire_6225;
    wire wire_6226;
    wire wire_6227;
    wire wire_6228;
    wire wire_6229;
    wire wire_6230;
    wire wire_6231;
    wire wire_6232;
    wire wire_6233;
    wire wire_6234;
    wire wire_6235;
    wire wire_6236;
    wire wire_6237;
    wire wire_6238;
    wire wire_6239;
    wire wire_6240;
    wire wire_6241;
    wire wire_6242;
    wire wire_6243;
    wire wire_6244;
    wire wire_6245;
    wire wire_6246;
    wire wire_6247;
    wire wire_6248;
    wire wire_6249;
    wire wire_6250;
    wire wire_6251;
    wire wire_6252;
    wire wire_6253;
    wire wire_6254;
    wire wire_6255;
    wire wire_6256;
    wire wire_6257;
    wire wire_6258;
    wire wire_6259;
    wire wire_6260;
    wire wire_6261;
    wire wire_6262;
    wire wire_6263;
    wire wire_6264;
    wire wire_6265;
    wire wire_6266;
    wire wire_6267;
    wire wire_6268;
    wire wire_6269;
    wire wire_6270;
    wire wire_6271;
    wire wire_6272;
    wire wire_6273;
    wire wire_6274;
    wire wire_6275;
    wire wire_6276;
    wire wire_6277;
    wire wire_6278;
    wire wire_6279;
    wire wire_6280;
    wire wire_6281;
    wire wire_6282;
    wire wire_6283;
    wire wire_6284;
    wire wire_6285;
    wire wire_6286;
    wire wire_6287;
    wire wire_6288;
    wire wire_6289;
    wire wire_6290;
    wire wire_6291;
    wire wire_6292;
    wire wire_6293;
    wire wire_6294;
    wire wire_6295;
    wire wire_6296;
    wire wire_6297;
    wire wire_6298;
    wire wire_6299;
    wire wire_6300;
    wire wire_6301;
    wire wire_6302;
    wire wire_6303;
    wire wire_6304;
    wire wire_6305;
    wire wire_6306;
    wire wire_6307;
    wire wire_6308;
    wire wire_6309;
    wire wire_6310;
    wire wire_6311;
    wire wire_6312;
    wire wire_6313;
    wire wire_6314;
    wire wire_6315;
    wire wire_6316;
    wire wire_6317;
    wire wire_6318;
    wire wire_6319;
    wire wire_6320;
    wire wire_6321;
    wire wire_6322;
    wire wire_6323;
    wire wire_6324;
    wire wire_6325;
    wire wire_6326;
    wire wire_6327;
    wire wire_6328;
    wire wire_6329;
    wire wire_6330;
    wire wire_6331;
    wire wire_6332;
    wire wire_6333;
    wire wire_6334;
    wire wire_6335;
    wire wire_6336;
    wire wire_6337;
    wire wire_6338;
    wire wire_6339;
    wire wire_6340;
    wire wire_6341;
    wire wire_6342;
    wire wire_6343;
    wire wire_6344;
    wire wire_6345;
    wire wire_6346;
    wire wire_6347;
    wire wire_6348;
    wire wire_6349;
    wire wire_6350;
    wire wire_6351;
    wire wire_6352;
    wire wire_6353;
    wire wire_6354;
    wire wire_6355;
    wire wire_6356;
    wire wire_6357;
    wire wire_6358;
    wire wire_6359;
    wire wire_6360;
    wire wire_6361;
    wire wire_6362;
    wire wire_6363;
    wire wire_6364;
    wire wire_6365;
    wire wire_6366;
    wire wire_6367;
    wire wire_6368;
    wire wire_6369;
    wire wire_6370;
    wire wire_6371;
    wire wire_6372;
    wire wire_6373;
    wire wire_6374;
    wire wire_6375;
    wire wire_6376;
    wire wire_6377;
    wire wire_6378;
    wire wire_6379;
    wire wire_6380;
    wire wire_6381;
    wire wire_6382;
    wire wire_6383;
    wire wire_6384;
    wire wire_6385;
    wire wire_6386;
    wire wire_6387;
    wire wire_6388;
    wire wire_6389;
    wire wire_6390;
    wire wire_6391;
    wire wire_6392;
    wire wire_6393;
    wire wire_6394;
    wire wire_6395;
    wire wire_6396;
    wire wire_6397;
    wire wire_6398;
    wire wire_6399;
    wire wire_6400;
    wire wire_6401;
    wire wire_6402;
    wire wire_6403;
    wire wire_6404;
    wire wire_6405;
    wire wire_6406;
    wire wire_6407;
    wire wire_6408;
    wire wire_6409;
    wire wire_6410;
    wire wire_6411;
    wire wire_6412;
    wire wire_6413;
    wire wire_6414;
    wire wire_6415;
    wire wire_6416;
    wire wire_6417;
    wire wire_6418;
    wire wire_6419;
    wire wire_6420;
    wire wire_6421;
    wire wire_6422;
    wire wire_6423;
    wire wire_6424;
    wire wire_6425;
    wire wire_6426;
    wire wire_6427;
    wire wire_6428;
    wire wire_6429;
    wire wire_6430;
    wire wire_6431;
    wire wire_6432;
    wire wire_6433;
    wire wire_6434;
    wire wire_6435;
    wire wire_6436;
    wire wire_6437;
    wire wire_6438;
    wire wire_6439;
    wire wire_6440;
    wire wire_6441;
    wire wire_6442;
    wire wire_6443;
    wire wire_6444;
    wire wire_6445;
    wire wire_6446;
    wire wire_6447;
    wire wire_6448;
    wire wire_6449;
    wire wire_6450;
    wire wire_6451;
    wire wire_6452;
    wire wire_6453;
    wire wire_6454;
    wire wire_6455;
    wire wire_6456;
    wire wire_6457;
    wire wire_6458;
    wire wire_6459;
    wire wire_6460;
    wire wire_6461;
    wire wire_6462;
    wire wire_6463;
    wire wire_6464;
    wire wire_6465;
    wire wire_6466;
    wire wire_6467;
    wire wire_6468;
    wire wire_6469;
    wire wire_6470;
    wire wire_6471;
    wire wire_6472;
    wire wire_6473;
    wire wire_6474;
    wire wire_6475;
    wire wire_6476;
    wire wire_6477;
    wire wire_6478;
    wire wire_6479;
    wire wire_6480;
    wire wire_6481;
    wire wire_6482;
    wire wire_6483;
    wire wire_6484;
    wire wire_6485;
    wire wire_6486;
    wire wire_6487;
    wire wire_6488;
    wire wire_6489;
    wire wire_6490;
    wire wire_6491;
    wire wire_6492;
    wire wire_6493;
    wire wire_6494;
    wire wire_6495;
    wire wire_6496;
    wire wire_6497;
    wire wire_6498;
    wire wire_6499;
    wire wire_6500;
    wire wire_6501;
    wire wire_6502;
    wire wire_6503;
    wire wire_6504;
    wire wire_6505;
    wire wire_6506;
    wire wire_6507;
    wire wire_6508;
    wire wire_6509;
    wire wire_6510;
    wire wire_6511;
    wire wire_6512;
    wire wire_6513;
    wire wire_6514;
    wire wire_6515;
    wire wire_6516;
    wire wire_6517;
    wire wire_6518;
    wire wire_6519;
    wire wire_6520;
    wire wire_6521;
    wire wire_6522;
    wire wire_6523;
    wire wire_6524;
    wire wire_6525;
    wire wire_6526;
    wire wire_6527;
    wire wire_6528;
    wire wire_6529;
    wire wire_6530;
    wire wire_6531;
    wire wire_6532;
    wire wire_6533;
    wire wire_6534;
    wire wire_6535;
    wire wire_6536;
    wire wire_6537;
    wire wire_6538;
    wire wire_6539;
    wire wire_6540;
    wire wire_6541;
    wire wire_6542;
    wire wire_6543;
    wire wire_6544;
    wire wire_6545;
    wire wire_6546;
    wire wire_6547;
    wire wire_6548;
    wire wire_6549;
    wire wire_6550;
    wire wire_6551;
    wire wire_6552;
    wire wire_6553;
    wire wire_6554;
    wire wire_6555;
    wire wire_6556;
    wire wire_6557;
    wire wire_6558;
    wire wire_6559;
    wire wire_6560;
    wire wire_6561;
    wire wire_6562;
    wire wire_6563;
    wire wire_6564;
    wire wire_6565;
    wire wire_6566;
    wire wire_6567;
    wire wire_6568;
    wire wire_6569;
    wire wire_6570;
    wire wire_6571;
    wire wire_6572;
    wire wire_6573;
    wire wire_6574;
    wire wire_6575;
    wire wire_6576;
    wire wire_6577;
    wire wire_6578;
    wire wire_6579;
    wire wire_6580;
    wire wire_6581;
    wire wire_6582;
    wire wire_6583;
    wire wire_6584;
    wire wire_6585;
    wire wire_6586;
    wire wire_6587;
    wire wire_6588;
    wire wire_6589;
    wire wire_6590;
    wire wire_6591;
    wire wire_6592;
    wire wire_6593;
    wire wire_6594;
    wire wire_6595;
    wire wire_6596;
    wire wire_6597;
    wire wire_6598;
    wire wire_6599;
    wire wire_6600;
    wire wire_6601;
    wire wire_6602;
    wire wire_6603;
    wire wire_6604;
    wire wire_6605;
    wire wire_6606;
    wire wire_6607;
    wire wire_6608;
    wire wire_6609;
    wire wire_6610;
    wire wire_6611;
    wire wire_6612;
    wire wire_6613;
    wire wire_6614;
    wire wire_6615;
    wire wire_6616;
    wire wire_6617;
    wire wire_6618;
    wire wire_6619;
    wire wire_6620;
    wire wire_6621;
    wire wire_6622;
    wire wire_6623;
    wire wire_6624;
    wire wire_6625;
    wire wire_6626;
    wire wire_6627;
    wire wire_6628;
    wire wire_6629;
    wire wire_6630;
    wire wire_6631;
    wire wire_6632;
    wire wire_6633;
    wire wire_6634;
    wire wire_6635;
    wire wire_6636;
    wire wire_6637;
    wire wire_6638;
    wire wire_6639;
    wire wire_6640;
    wire wire_6641;
    wire wire_6642;
    wire wire_6643;
    wire wire_6644;
    wire wire_6645;
    wire wire_6646;
    wire wire_6647;
    wire wire_6648;
    wire wire_6649;
    wire wire_6650;
    wire wire_6651;
    wire wire_6652;
    wire wire_6653;
    wire wire_6654;
    wire wire_6655;
    wire wire_6656;
    wire wire_6657;
    wire wire_6658;
    wire wire_6659;
    wire wire_6660;
    wire wire_6661;
    wire wire_6662;
    wire wire_6663;
    wire wire_6664;
    wire wire_6665;
    wire wire_6666;
    wire wire_6667;
    wire wire_6668;
    wire wire_6669;
    wire wire_6670;
    wire wire_6671;
    wire wire_6672;
    wire wire_6673;
    wire wire_6674;
    wire wire_6675;
    wire wire_6676;
    wire wire_6677;
    wire wire_6678;
    wire wire_6679;
    wire wire_6680;
    wire wire_6681;
    wire wire_6682;
    wire wire_6683;
    wire wire_6684;
    wire wire_6685;
    wire wire_6686;
    wire wire_6687;
    wire wire_6688;
    wire wire_6689;
    wire wire_6690;
    wire wire_6691;
    wire wire_6692;
    wire wire_6693;
    wire wire_6694;
    wire wire_6695;
    wire wire_6696;
    wire wire_6697;
    wire wire_6698;
    wire wire_6699;
    wire wire_6700;
    wire wire_6701;
    wire wire_6702;
    wire wire_6703;
    wire wire_6704;
    wire wire_6705;
    wire wire_6706;
    wire wire_6707;
    wire wire_6708;
    wire wire_6709;
    wire wire_6710;
    wire wire_6711;
    wire wire_6712;
    wire wire_6713;
    wire wire_6714;
    wire wire_6715;
    wire wire_6716;
    wire wire_6717;
    wire wire_6718;
    wire wire_6719;
    wire wire_6720;
    wire wire_6721;
    wire wire_6722;
    wire wire_6723;
    wire wire_6724;
    wire wire_6725;
    wire wire_6726;
    wire wire_6727;
    wire wire_6728;
    wire wire_6729;
    wire wire_6730;
    wire wire_6731;
    wire wire_6732;
    wire wire_6733;
    wire wire_6734;
    wire wire_6735;
    wire wire_6736;
    wire wire_6737;
    wire wire_6738;
    wire wire_6739;
    wire wire_6740;
    wire wire_6741;
    wire wire_6742;
    wire wire_6743;
    wire wire_6744;
    wire wire_6745;
    wire wire_6746;
    wire wire_6747;
    wire wire_6748;
    wire wire_6749;
    wire wire_6750;
    wire wire_6751;
    wire wire_6752;
    wire wire_6753;
    wire wire_6754;
    wire wire_6755;
    wire wire_6756;
    wire wire_6757;
    wire wire_6758;
    wire wire_6759;
    wire wire_6760;
    wire wire_6761;
    wire wire_6762;
    wire wire_6763;
    wire wire_6764;
    wire wire_6765;
    wire wire_6766;
    wire wire_6767;
    wire wire_6768;
    wire wire_6769;
    wire wire_6770;
    wire wire_6771;
    wire wire_6772;
    wire wire_6773;
    wire wire_6774;
    wire wire_6775;
    wire wire_6776;
    wire wire_6777;
    wire wire_6778;
    wire wire_6779;
    wire wire_6780;
    wire wire_6781;
    wire wire_6782;
    wire wire_6783;
    wire wire_6784;
    wire wire_6785;
    wire wire_6786;
    wire wire_6787;
    wire wire_6788;
    wire wire_6789;
    wire wire_6790;
    wire wire_6791;
    wire wire_6792;
    wire wire_6793;
    wire wire_6794;
    wire wire_6795;
    wire wire_6796;
    wire wire_6797;
    wire wire_6798;
    wire wire_6799;
    wire wire_6800;
    wire wire_6801;
    wire wire_6802;
    wire wire_6803;
    wire wire_6804;
    wire wire_6805;
    wire wire_6806;
    wire wire_6807;
    wire wire_6808;
    wire wire_6809;
    wire wire_6810;
    wire wire_6811;
    wire wire_6812;
    wire wire_6813;
    wire wire_6814;
    wire wire_6815;
    wire wire_6816;
    wire wire_6817;
    wire wire_6818;
    wire wire_6819;
    wire wire_6820;
    wire wire_6821;
    wire wire_6822;
    wire wire_6823;
    wire wire_6824;
    wire wire_6825;
    wire wire_6826;
    wire wire_6827;
    wire wire_6828;
    wire wire_6829;
    wire wire_6830;
    wire wire_6831;
    wire wire_6832;
    wire wire_6833;
    wire wire_6834;
    wire wire_6835;
    wire wire_6836;
    wire wire_6837;
    wire wire_6838;
    wire wire_6839;
    wire wire_6840;
    wire wire_6841;
    wire wire_6842;
    wire wire_6843;
    wire wire_6844;
    wire wire_6845;
    wire wire_6846;
    wire wire_6847;
    wire wire_6848;
    wire wire_6849;
    wire wire_6850;
    wire wire_6851;
    wire wire_6852;
    wire wire_6853;
    wire wire_6854;
    wire wire_6855;
    wire wire_6856;
    wire wire_6857;
    wire wire_6858;
    wire wire_6859;
    wire wire_6860;
    wire wire_6861;
    wire wire_6862;
    wire wire_6863;
    wire wire_6864;
    wire wire_6865;
    wire wire_6866;
    wire wire_6867;
    wire wire_6868;
    wire wire_6869;
    wire wire_6870;
    wire wire_6871;
    wire wire_6872;
    wire wire_6873;
    wire wire_6874;
    wire wire_6875;
    wire wire_6876;
    wire wire_6877;
    wire wire_6878;
    wire wire_6879;
    wire wire_6880;
    wire wire_6881;
    wire wire_6882;
    wire wire_6883;
    wire wire_6884;
    wire wire_6885;
    wire wire_6886;
    wire wire_6887;
    wire wire_6888;
    wire wire_6889;
    wire wire_6890;
    wire wire_6891;
    wire wire_6892;
    wire wire_6893;
    wire wire_6894;
    wire wire_6895;
    wire wire_6896;
    wire wire_6897;
    wire wire_6898;
    wire wire_6899;
    wire wire_6900;
    wire wire_6901;
    wire wire_6902;
    wire wire_6903;
    wire wire_6904;
    wire wire_6905;
    wire wire_6906;
    wire wire_6907;
    wire wire_6908;
    wire wire_6909;
    wire wire_6910;
    wire wire_6911;
    wire wire_6912;
    wire wire_6913;
    wire wire_6914;
    wire wire_6915;
    wire wire_6916;
    wire wire_6917;
    wire wire_6918;
    wire wire_6919;
    wire wire_6920;
    wire wire_6921;
    wire wire_6922;
    wire wire_6923;
    wire wire_6924;
    wire wire_6925;
    wire wire_6926;
    wire wire_6927;
    wire wire_6928;
    wire wire_6929;
    wire wire_6930;
    wire wire_6931;
    wire wire_6932;
    wire wire_6933;
    wire wire_6934;
    wire wire_6935;
    wire wire_6936;
    wire wire_6937;
    wire wire_6938;
    wire wire_6939;
    wire wire_6940;
    wire wire_6941;
    wire wire_6942;
    wire wire_6943;
    wire wire_6944;
    wire wire_6945;
    wire wire_6946;
    wire wire_6947;
    wire wire_6948;
    wire wire_6949;
    wire wire_6950;
    wire wire_6951;
    wire wire_6952;
    wire wire_6953;
    wire wire_6954;
    wire wire_6955;
    wire wire_6956;
    wire wire_6957;
    wire wire_6958;
    wire wire_6959;
    wire wire_6960;
    wire wire_6961;
    wire wire_6962;
    wire wire_6963;
    wire wire_6964;
    wire wire_6965;
    wire wire_6966;
    wire wire_6967;
    wire wire_6968;
    wire wire_6969;
    wire wire_6970;
    wire wire_6971;
    wire wire_6972;
    wire wire_6973;
    wire wire_6974;
    wire wire_6975;
    wire wire_6976;
    wire wire_6977;
    wire wire_6978;
    wire wire_6979;
    wire wire_6980;
    wire wire_6981;
    wire wire_6982;
    wire wire_6983;
    wire wire_6984;
    wire wire_6985;
    wire wire_6986;
    wire wire_6987;
    wire wire_6988;
    wire wire_6989;
    wire wire_6990;
    wire wire_6991;
    wire wire_6992;
    wire wire_6993;
    wire wire_6994;
    wire wire_6995;
    wire wire_6996;
    wire wire_6997;
    wire wire_6998;
    wire wire_6999;
    wire wire_7000;
    wire wire_7001;
    wire wire_7002;
    wire wire_7003;
    wire wire_7004;
    wire wire_7005;
    wire wire_7006;
    wire wire_7007;
    wire wire_7008;
    wire wire_7009;
    wire wire_7010;
    wire wire_7011;
    wire wire_7012;
    wire wire_7013;
    wire wire_7014;
    wire wire_7015;
    wire wire_7016;
    wire wire_7017;
    wire wire_7018;
    wire wire_7019;
    wire wire_7020;
    wire wire_7021;
    wire wire_7022;
    wire wire_7023;
    wire wire_7024;
    wire wire_7025;
    wire wire_7026;
    wire wire_7027;
    wire wire_7028;
    wire wire_7029;
    wire wire_7030;
    wire wire_7031;
    wire wire_7032;
    wire wire_7033;
    wire wire_7034;
    wire wire_7035;
    wire wire_7036;
    wire wire_7037;
    wire wire_7038;
    wire wire_7039;
    wire wire_7040;
    wire wire_7041;
    wire wire_7042;
    wire wire_7043;
    wire wire_7044;
    wire wire_7045;
    wire wire_7046;
    wire wire_7047;
    wire wire_7048;
    wire wire_7049;
    wire wire_7050;
    wire wire_7051;
    wire wire_7052;
    wire wire_7053;
    wire wire_7054;
    wire wire_7055;
    wire wire_7056;
    wire wire_7057;
    wire wire_7058;
    wire wire_7059;
    wire wire_7060;
    wire wire_7061;
    wire wire_7062;
    wire wire_7063;
    wire wire_7064;
    wire wire_7065;
    wire wire_7066;
    wire wire_7067;
    wire wire_7068;
    wire wire_7069;
    wire wire_7070;
    wire wire_7071;
    wire wire_7072;
    wire wire_7073;
    wire wire_7074;
    wire wire_7075;
    wire wire_7076;
    wire wire_7077;
    wire wire_7078;
    wire wire_7079;
    wire wire_7080;
    wire wire_7081;
    wire wire_7082;
    wire wire_7083;
    wire wire_7084;
    wire wire_7085;
    wire wire_7086;
    wire wire_7087;
    wire wire_7088;
    wire wire_7089;
    wire wire_7090;
    wire wire_7091;
    wire wire_7092;
    wire wire_7093;
    wire wire_7094;
    wire wire_7095;
    wire wire_7096;
    wire wire_7097;
    wire wire_7098;
    wire wire_7099;
    wire wire_7100;
    wire wire_7101;
    wire wire_7102;
    wire wire_7103;
    wire wire_7104;
    wire wire_7105;
    wire wire_7106;
    wire wire_7107;
    wire wire_7108;
    wire wire_7109;
    wire wire_7110;
    wire wire_7111;
    wire wire_7112;
    wire wire_7113;
    wire wire_7114;
    wire wire_7115;
    wire wire_7116;
    wire wire_7117;
    wire wire_7118;
    wire wire_7119;
    wire wire_7120;
    wire wire_7121;
    wire wire_7122;
    wire wire_7123;
    wire wire_7124;
    wire wire_7125;
    wire wire_7126;
    wire wire_7127;
    wire wire_7128;
    wire wire_7129;
    wire wire_7130;
    wire wire_7131;
    wire wire_7132;
    wire wire_7133;
    wire wire_7134;
    wire wire_7135;
    wire wire_7136;
    wire wire_7137;
    wire wire_7138;
    wire wire_7139;
    wire wire_7140;
    wire wire_7141;
    wire wire_7142;
    wire wire_7143;
    wire wire_7144;
    wire wire_7145;
    wire wire_7146;
    wire wire_7147;
    wire wire_7148;
    wire wire_7149;
    wire wire_7150;
    wire wire_7151;
    wire wire_7152;
    wire wire_7153;
    wire wire_7154;
    wire wire_7155;
    wire wire_7156;
    wire wire_7157;
    wire wire_7158;
    wire wire_7159;
    wire wire_7160;
    wire wire_7161;
    wire wire_7162;
    wire wire_7163;
    wire wire_7164;
    wire wire_7165;
    wire wire_7166;
    wire wire_7167;
    wire wire_7168;
    wire wire_7169;
    wire wire_7170;
    wire wire_7171;
    wire wire_7172;
    wire wire_7173;
    wire wire_7174;
    wire wire_7175;
    wire wire_7176;
    wire wire_7177;
    wire wire_7178;
    wire wire_7179;
    wire wire_7180;
    wire wire_7181;
    wire wire_7182;
    wire wire_7183;
    wire wire_7184;
    wire wire_7185;
    wire wire_7186;
    wire wire_7187;
    wire wire_7188;
    wire wire_7189;
    wire wire_7190;
    wire wire_7191;
    wire wire_7192;
    wire wire_7193;
    wire wire_7194;
    wire wire_7195;
    wire wire_7196;
    wire wire_7197;
    wire wire_7198;
    wire wire_7199;
    wire wire_7200;
    wire wire_7201;
    wire wire_7202;
    wire wire_7203;
    wire wire_7204;
    wire wire_7205;
    wire wire_7206;
    wire wire_7207;
    wire wire_7208;
    wire wire_7209;
    wire wire_7210;
    wire wire_7211;
    wire wire_7212;
    wire wire_7213;
    wire wire_7214;
    wire wire_7215;
    wire wire_7216;
    wire wire_7217;
    wire wire_7218;
    wire wire_7219;
    wire wire_7220;
    wire wire_7221;
    wire wire_7222;
    wire wire_7223;
    wire wire_7224;
    wire wire_7225;
    wire wire_7226;
    wire wire_7227;
    wire wire_7228;
    wire wire_7229;
    wire wire_7230;
    wire wire_7231;
    wire wire_7232;
    wire wire_7233;
    wire wire_7234;
    wire wire_7235;
    wire wire_7236;
    wire wire_7237;
    wire wire_7238;
    wire wire_7239;
    wire wire_7240;
    wire wire_7241;
    wire wire_7242;
    wire wire_7243;
    wire wire_7244;
    wire wire_7245;
    wire wire_7246;
    wire wire_7247;
    wire wire_7248;
    wire wire_7249;
    wire wire_7250;
    wire wire_7251;
    wire wire_7252;
    wire wire_7253;
    wire wire_7254;
    wire wire_7255;
    wire wire_7256;
    wire wire_7257;
    wire wire_7258;
    wire wire_7259;
    wire wire_7260;
    wire wire_7261;
    wire wire_7262;
    wire wire_7263;
    wire wire_7264;
    wire wire_7265;
    wire wire_7266;
    wire wire_7267;
    wire wire_7268;
    wire wire_7269;
    wire wire_7270;
    wire wire_7271;
    wire wire_7272;
    wire wire_7273;
    wire wire_7274;
    wire wire_7275;
    wire wire_7276;
    wire wire_7277;
    wire wire_7278;
    wire wire_7279;
    wire wire_7280;
    wire wire_7281;
    wire wire_7282;
    wire wire_7283;
    wire wire_7284;
    wire wire_7285;
    wire wire_7286;
    wire wire_7287;
    wire wire_7288;
    wire wire_7289;
    wire wire_7290;
    wire wire_7291;
    wire wire_7292;
    wire wire_7293;
    wire wire_7294;
    wire wire_7295;
    wire wire_7296;
    wire wire_7297;
    wire wire_7298;
    wire wire_7299;
    wire wire_7300;
    wire wire_7301;
    wire wire_7302;
    wire wire_7303;
    wire wire_7304;
    wire wire_7305;
    wire wire_7306;
    wire wire_7307;
    wire wire_7308;
    wire wire_7309;
    wire wire_7310;
    wire wire_7311;
    wire wire_7312;
    wire wire_7313;
    wire wire_7314;
    wire wire_7315;
    wire wire_7316;
    wire wire_7317;
    wire wire_7318;
    wire wire_7319;
    wire wire_7320;
    wire wire_7321;
    wire wire_7322;
    wire wire_7323;
    wire wire_7324;
    wire wire_7325;
    wire wire_7326;
    wire wire_7327;
    wire wire_7328;
    wire wire_7329;
    wire wire_7330;
    wire wire_7331;
    wire wire_7332;
    wire wire_7333;
    wire wire_7334;
    wire wire_7335;
    wire wire_7336;
    wire wire_7337;
    wire wire_7338;
    wire wire_7339;
    wire wire_7340;
    wire wire_7341;
    wire wire_7342;
    wire wire_7343;
    wire wire_7344;
    wire wire_7345;
    wire wire_7346;
    wire wire_7347;
    wire wire_7348;
    wire wire_7349;
    wire wire_7350;
    wire wire_7351;
    wire wire_7352;
    wire wire_7353;
    wire wire_7354;
    wire wire_7355;
    wire wire_7356;
    wire wire_7357;
    wire wire_7358;
    wire wire_7359;
    wire wire_7360;
    wire wire_7361;
    wire wire_7362;
    wire wire_7363;
    wire wire_7364;
    wire wire_7365;
    wire wire_7366;
    wire wire_7367;
    wire wire_7368;
    wire wire_7369;
    wire wire_7370;
    wire wire_7371;
    wire wire_7372;
    wire wire_7373;
    wire wire_7374;
    wire wire_7375;
    wire wire_7376;
    wire wire_7377;
    wire wire_7378;
    wire wire_7379;
    wire wire_7380;
    wire wire_7381;
    wire wire_7382;
    wire wire_7383;
    wire wire_7384;
    wire wire_7385;
    wire wire_7386;
    wire wire_7387;
    wire wire_7388;
    wire wire_7389;
    wire wire_7390;
    wire wire_7391;
    wire wire_7392;
    wire wire_7393;
    wire wire_7394;
    wire wire_7395;
    wire wire_7396;
    wire wire_7397;
    wire wire_7398;
    wire wire_7399;
    wire wire_7400;
    wire wire_7401;
    wire wire_7402;
    wire wire_7403;
    wire wire_7404;
    wire wire_7405;
    wire wire_7406;
    wire wire_7407;
    wire wire_7408;
    wire wire_7409;
    wire wire_7410;
    wire wire_7411;
    wire wire_7412;
    wire wire_7413;
    wire wire_7414;
    wire wire_7415;
    wire wire_7416;
    wire wire_7417;
    wire wire_7418;
    wire wire_7419;
    wire wire_7420;
    wire wire_7421;
    wire wire_7422;
    wire wire_7423;
    wire wire_7424;
    wire wire_7425;
    wire wire_7426;
    wire wire_7427;
    wire wire_7428;
    wire wire_7429;
    wire wire_7430;
    wire wire_7431;
    wire wire_7432;
    wire wire_7433;
    wire wire_7434;
    wire wire_7435;
    wire wire_7436;
    wire wire_7437;
    wire wire_7438;
    wire wire_7439;
    wire wire_7440;
    wire wire_7441;
    wire wire_7442;
    wire wire_7443;
    wire wire_7444;
    wire wire_7445;
    wire wire_7446;
    wire wire_7447;
    wire wire_7448;
    wire wire_7449;
    wire wire_7450;
    wire wire_7451;
    wire wire_7452;
    wire wire_7453;
    wire wire_7454;
    wire wire_7455;
    wire wire_7456;
    wire wire_7457;
    wire wire_7458;
    wire wire_7459;
    wire wire_7460;
    wire wire_7461;
    wire wire_7462;
    wire wire_7463;
    wire wire_7464;
    wire wire_7465;
    wire wire_7466;
    wire wire_7467;
    wire wire_7468;
    wire wire_7469;
    wire wire_7470;
    wire wire_7471;
    wire wire_7472;
    wire wire_7473;
    wire wire_7474;
    wire wire_7475;
    wire wire_7476;
    wire wire_7477;
    wire wire_7478;
    wire wire_7479;
    wire wire_7480;
    wire wire_7481;
    wire wire_7482;
    wire wire_7483;
    wire wire_7484;
    wire wire_7485;
    wire wire_7486;
    wire wire_7487;
    wire wire_7488;
    wire wire_7489;
    wire wire_7490;
    wire wire_7491;
    wire wire_7492;
    wire wire_7493;
    wire wire_7494;
    wire wire_7495;
    wire wire_7496;
    wire wire_7497;
    wire wire_7498;
    wire wire_7499;
    wire wire_7500;
    wire wire_7501;
    wire wire_7502;
    wire wire_7503;
    wire wire_7504;
    wire wire_7505;
    wire wire_7506;
    wire wire_7507;
    wire wire_7508;
    wire wire_7509;
    wire wire_7510;
    wire wire_7511;
    wire wire_7512;
    wire wire_7513;
    wire wire_7514;
    wire wire_7515;
    wire wire_7516;
    wire wire_7517;
    wire wire_7518;
    wire wire_7519;
    wire wire_7520;
    wire wire_7521;
    wire wire_7522;
    wire wire_7523;
    wire wire_7524;
    wire wire_7525;
    wire wire_7526;
    wire wire_7527;
    wire wire_7528;
    wire wire_7529;
    wire wire_7530;
    wire wire_7531;
    wire wire_7532;
    wire wire_7533;
    wire wire_7534;
    wire wire_7535;
    wire wire_7536;
    wire wire_7537;
    wire wire_7538;
    wire wire_7539;
    wire wire_7540;
    wire wire_7541;
    wire wire_7542;
    wire wire_7543;
    wire wire_7544;
    wire wire_7545;
    wire wire_7546;
    wire wire_7547;
    wire wire_7548;
    wire wire_7549;
    wire wire_7550;
    wire wire_7551;
    wire wire_7552;
    wire wire_7553;
    wire wire_7554;
    wire wire_7555;
    wire wire_7556;
    wire wire_7557;
    wire wire_7558;
    wire wire_7559;
    wire wire_7560;
    wire wire_7561;
    wire wire_7562;
    wire wire_7563;
    wire wire_7564;
    wire wire_7565;
    wire wire_7566;
    wire wire_7567;
    wire wire_7568;
    wire wire_7569;
    wire wire_7570;
    wire wire_7571;
    wire wire_7572;
    wire wire_7573;
    wire wire_7574;
    wire wire_7575;
    wire wire_7576;
    wire wire_7577;
    wire wire_7578;
    wire wire_7579;
    wire wire_7580;
    wire wire_7581;
    wire wire_7582;
    wire wire_7583;
    wire wire_7584;
    wire wire_7585;
    wire wire_7586;
    wire wire_7587;
    wire wire_7588;
    wire wire_7589;
    wire wire_7590;
    wire wire_7591;
    wire wire_7592;
    wire wire_7593;
    wire wire_7594;
    wire wire_7595;
    wire wire_7596;
    wire wire_7597;
    wire wire_7598;
    wire wire_7599;
    wire wire_7600;
    wire wire_7601;
    wire wire_7602;
    wire wire_7603;
    wire wire_7604;
    wire wire_7605;
    wire wire_7606;
    wire wire_7607;
    wire wire_7608;
    wire wire_7609;
    wire wire_7610;
    wire wire_7611;
    wire wire_7612;
    wire wire_7613;
    wire wire_7614;
    wire wire_7615;
    wire wire_7616;
    wire wire_7617;
    wire wire_7618;
    wire wire_7619;
    wire wire_7620;
    wire wire_7621;
    wire wire_7622;
    wire wire_7623;
    wire wire_7624;
    wire wire_7625;
    wire wire_7626;
    wire wire_7627;
    wire wire_7628;
    wire wire_7629;
    wire wire_7630;
    wire wire_7631;
    wire wire_7632;
    wire wire_7633;
    wire wire_7634;
    wire wire_7635;
    wire wire_7636;
    wire wire_7637;
    wire wire_7638;
    wire wire_7639;
    wire wire_7640;
    wire wire_7641;
    wire wire_7642;
    wire wire_7643;
    wire wire_7644;
    wire wire_7645;
    wire wire_7646;
    wire wire_7647;
    wire wire_7648;
    wire wire_7649;
    wire wire_7650;
    wire wire_7651;
    wire wire_7652;
    wire wire_7653;
    wire wire_7654;
    wire wire_7655;
    wire wire_7656;
    wire wire_7657;
    wire wire_7658;
    wire wire_7659;
    wire wire_7660;
    wire wire_7661;
    wire wire_7662;
    wire wire_7663;
    wire wire_7664;
    wire wire_7665;
    wire wire_7666;
    wire wire_7667;
    wire wire_7668;
    wire wire_7669;
    wire wire_7670;
    wire wire_7671;
    wire wire_7672;
    wire wire_7673;
    wire wire_7674;
    wire wire_7675;
    wire wire_7676;
    wire wire_7677;
    wire wire_7678;
    wire wire_7679;
    wire wire_7680;
    wire wire_7681;
    wire wire_7682;
    wire wire_7683;
    wire wire_7684;
    wire wire_7685;
    wire wire_7686;
    wire wire_7687;
    wire wire_7688;
    wire wire_7689;
    wire wire_7690;
    wire wire_7691;
    wire wire_7692;
    wire wire_7693;
    wire wire_7694;
    wire wire_7695;
    wire wire_7696;
    wire wire_7697;
    wire wire_7698;
    wire wire_7699;
    wire wire_7700;
    wire wire_7701;
    wire wire_7702;
    wire wire_7703;
    wire wire_7704;
    wire wire_7705;
    wire wire_7706;
    wire wire_7707;
    wire wire_7708;
    wire wire_7709;
    wire wire_7710;
    wire wire_7711;
    wire wire_7712;
    wire wire_7713;
    wire wire_7714;
    wire wire_7715;
    wire wire_7716;
    wire wire_7717;
    wire wire_7718;
    wire wire_7719;
    wire wire_7720;
    wire wire_7721;
    wire wire_7722;
    wire wire_7723;
    wire wire_7724;
    wire wire_7725;
    wire wire_7726;
    wire wire_7727;
    wire wire_7728;
    wire wire_7729;
    wire wire_7730;
    wire wire_7731;
    wire wire_7732;
    wire wire_7733;
    wire wire_7734;
    wire wire_7735;
    wire wire_7736;
    wire wire_7737;
    wire wire_7738;
    wire wire_7739;
    wire wire_7740;
    wire wire_7741;
    wire wire_7742;
    wire wire_7743;
    wire wire_7744;
    wire wire_7745;
    wire wire_7746;
    wire wire_7747;
    wire wire_7748;
    wire wire_7749;
    wire wire_7750;
    wire wire_7751;
    wire wire_7752;
    wire wire_7753;
    wire wire_7754;
    wire wire_7755;
    wire wire_7756;
    wire wire_7757;
    wire wire_7758;
    wire wire_7759;
    wire wire_7760;
    wire wire_7761;
    wire wire_7762;
    wire wire_7763;
    wire wire_7764;
    wire wire_7765;
    wire wire_7766;
    wire wire_7767;
    wire wire_7768;
    wire wire_7769;
    wire wire_7770;
    wire wire_7771;
    wire wire_7772;
    wire wire_7773;
    wire wire_7774;
    wire wire_7775;
    wire wire_7776;
    wire wire_7777;
    wire wire_7778;
    wire wire_7779;
    wire wire_7780;
    wire wire_7781;
    wire wire_7782;
    wire wire_7783;
    wire wire_7784;
    wire wire_7785;
    wire wire_7786;
    wire wire_7787;
    wire wire_7788;
    wire wire_7789;
    wire wire_7790;
    wire wire_7791;
    wire wire_7792;
    wire wire_7793;
    wire wire_7794;
    wire wire_7795;
    wire wire_7796;
    wire wire_7797;
    wire wire_7798;
    wire wire_7799;
    wire wire_7800;
    wire wire_7801;
    wire wire_7802;
    wire wire_7803;
    wire wire_7804;
    wire wire_7805;
    wire wire_7806;
    wire wire_7807;
    wire wire_7808;
    wire wire_7809;
    wire wire_7810;
    wire wire_7811;
    wire wire_7812;
    wire wire_7813;
    wire wire_7814;
    wire wire_7815;
    wire wire_7816;
    wire wire_7817;
    wire wire_7818;
    wire wire_7819;
    wire wire_7820;
    wire wire_7821;
    wire wire_7822;
    wire wire_7823;
    wire wire_7824;
    wire wire_7825;
    wire wire_7826;
    wire wire_7827;
    wire wire_7828;
    wire wire_7829;
    wire wire_7830;
    wire wire_7831;
    wire wire_7832;
    wire wire_7833;
    wire wire_7834;
    wire wire_7835;
    wire wire_7836;
    wire wire_7837;
    wire wire_7838;
    wire wire_7839;
    wire wire_7840;
    wire wire_7841;
    wire wire_7842;
    wire wire_7843;
    wire wire_7844;
    wire wire_7845;
    wire wire_7846;
    wire wire_7847;
    wire wire_7848;
    wire wire_7849;
    wire wire_7850;
    wire wire_7851;
    wire wire_7852;
    wire wire_7853;
    wire wire_7854;
    wire wire_7855;
    wire wire_7856;
    wire wire_7857;
    wire wire_7858;
    wire wire_7859;
    wire wire_7860;
    wire wire_7861;
    wire wire_7862;
    wire wire_7863;
    wire wire_7864;
    wire wire_7865;
    wire wire_7866;
    wire wire_7867;
    wire wire_7868;
    wire wire_7869;
    wire wire_7870;
    wire wire_7871;
    wire wire_7872;
    wire wire_7873;
    wire wire_7874;
    wire wire_7875;
    wire wire_7876;
    wire wire_7877;
    wire wire_7878;
    wire wire_7879;
    wire wire_7880;
    wire wire_7881;
    wire wire_7882;
    wire wire_7883;
    wire wire_7884;
    wire wire_7885;
    wire wire_7886;
    wire wire_7887;
    wire wire_7888;
    wire wire_7889;
    wire wire_7890;
    wire wire_7891;
    wire wire_7892;
    wire wire_7893;
    wire wire_7894;
    wire wire_7895;
    wire wire_7896;
    wire wire_7897;
    wire wire_7898;
    wire wire_7899;
    wire wire_7900;
    wire wire_7901;
    wire wire_7902;
    wire wire_7903;
    wire wire_7904;
    wire wire_7905;
    wire wire_7906;
    wire wire_7907;
    wire wire_7908;
    wire wire_7909;
    wire wire_7910;
    wire wire_7911;
    wire wire_7912;
    wire wire_7913;
    wire wire_7914;
    wire wire_7915;
    wire wire_7916;
    wire wire_7917;
    wire wire_7918;
    wire wire_7919;
    wire wire_7920;
    wire wire_7921;
    wire wire_7922;
    wire wire_7923;
    wire wire_7924;
    wire wire_7925;
    wire wire_7926;
    wire wire_7927;
    wire wire_7928;
    wire wire_7929;
    wire wire_7930;
    wire wire_7931;
    wire wire_7932;
    wire wire_7933;
    wire wire_7934;
    wire wire_7935;
    wire wire_7936;
    wire wire_7937;
    wire wire_7938;
    wire wire_7939;
    wire wire_7940;
    wire wire_7941;
    wire wire_7942;
    wire wire_7943;
    wire wire_7944;
    wire wire_7945;
    wire wire_7946;
    wire wire_7947;
    wire wire_7948;
    wire wire_7949;
    wire wire_7950;
    wire wire_7951;


    // FPGA IO TILES DECLARE
    wire [197:0] io_tile_1_0_chanxy_in;
    wire [59:0] io_tile_1_0_chanxy_out;
    wire [79:0] io_tile_1_0_ipin_in;
    wire [7:0] io_tile_1_0_opin_out;
    io_tile_sp_0 io_tile_1_0(
            .io_chanxy_in(io_tile_1_0_chanxy_in),
            .io_chanxy_out(io_tile_1_0_chanxy_out),
            .io_configs_in(configs_in[31:0]),
            .io_configs_en(configs_en[7:4]),
            .io_io_input(left_in[7:0]),
            .io_io_output(left_out[7:0]),
            .io_ipin_in(io_tile_1_0_ipin_in),
            .io_opin_out(io_tile_1_0_opin_out),
            .io_x_loc(),
            .io_y_loc(),
            .clk(clock),
            .reset(rst)
        );

    wire [209:0] io_tile_2_0_chanxy_in;
    wire [23:0] io_tile_2_0_chanxy_out;
    wire [79:0] io_tile_2_0_ipin_in;
    wire [7:0] io_tile_2_0_opin_out;
    io_tile_sp_1 io_tile_2_0(
            .io_chanxy_in(io_tile_2_0_chanxy_in),
            .io_chanxy_out(io_tile_2_0_chanxy_out),
            .io_configs_in(configs_in[31:0]),
            .io_configs_en(configs_en[28:25]),
            .io_io_input(left_in[15:8]),
            .io_io_output(left_out[15:8]),
            .io_ipin_in(io_tile_2_0_ipin_in),
            .io_opin_out(io_tile_2_0_opin_out),
            .io_x_loc(),
            .io_y_loc(),
            .clk(clock),
            .reset(rst)
        );

    wire [209:0] io_tile_3_0_chanxy_in;
    wire [23:0] io_tile_3_0_chanxy_out;
    wire [79:0] io_tile_3_0_ipin_in;
    wire [7:0] io_tile_3_0_opin_out;
    io_tile_sp_2 io_tile_3_0(
            .io_chanxy_in(io_tile_3_0_chanxy_in),
            .io_chanxy_out(io_tile_3_0_chanxy_out),
            .io_configs_in(configs_in[31:0]),
            .io_configs_en(configs_en[49:46]),
            .io_io_input(left_in[23:16]),
            .io_io_output(left_out[23:16]),
            .io_ipin_in(io_tile_3_0_ipin_in),
            .io_opin_out(io_tile_3_0_opin_out),
            .io_x_loc(),
            .io_y_loc(),
            .clk(clock),
            .reset(rst)
        );

    wire [209:0] io_tile_4_0_chanxy_in;
    wire [23:0] io_tile_4_0_chanxy_out;
    wire [79:0] io_tile_4_0_ipin_in;
    wire [7:0] io_tile_4_0_opin_out;
    io_tile_sp_3 io_tile_4_0(
            .io_chanxy_in(io_tile_4_0_chanxy_in),
            .io_chanxy_out(io_tile_4_0_chanxy_out),
            .io_configs_in(configs_in[31:0]),
            .io_configs_en(configs_en[70:67]),
            .io_io_input(left_in[31:24]),
            .io_io_output(left_out[31:24]),
            .io_ipin_in(io_tile_4_0_ipin_in),
            .io_opin_out(io_tile_4_0_opin_out),
            .io_x_loc(),
            .io_y_loc(),
            .clk(clock),
            .reset(rst)
        );

    wire [209:0] io_tile_5_0_chanxy_in;
    wire [23:0] io_tile_5_0_chanxy_out;
    wire [79:0] io_tile_5_0_ipin_in;
    wire [7:0] io_tile_5_0_opin_out;
    io_tile_sp_4 io_tile_5_0(
            .io_chanxy_in(io_tile_5_0_chanxy_in),
            .io_chanxy_out(io_tile_5_0_chanxy_out),
            .io_configs_in(configs_in[31:0]),
            .io_configs_en(configs_en[91:88]),
            .io_io_input(left_in[39:32]),
            .io_io_output(left_out[39:32]),
            .io_ipin_in(io_tile_5_0_ipin_in),
            .io_opin_out(io_tile_5_0_opin_out),
            .io_x_loc(),
            .io_y_loc(),
            .clk(clock),
            .reset(rst)
        );

    wire [209:0] io_tile_6_0_chanxy_in;
    wire [23:0] io_tile_6_0_chanxy_out;
    wire [79:0] io_tile_6_0_ipin_in;
    wire [7:0] io_tile_6_0_opin_out;
    io_tile_sp_5 io_tile_6_0(
            .io_chanxy_in(io_tile_6_0_chanxy_in),
            .io_chanxy_out(io_tile_6_0_chanxy_out),
            .io_configs_in(configs_in[31:0]),
            .io_configs_en(configs_en[112:109]),
            .io_io_input(left_in[47:40]),
            .io_io_output(left_out[47:40]),
            .io_ipin_in(io_tile_6_0_ipin_in),
            .io_opin_out(io_tile_6_0_opin_out),
            .io_x_loc(),
            .io_y_loc(),
            .clk(clock),
            .reset(rst)
        );

    wire [209:0] io_tile_7_0_chanxy_in;
    wire [23:0] io_tile_7_0_chanxy_out;
    wire [79:0] io_tile_7_0_ipin_in;
    wire [7:0] io_tile_7_0_opin_out;
    io_tile_sp_6 io_tile_7_0(
            .io_chanxy_in(io_tile_7_0_chanxy_in),
            .io_chanxy_out(io_tile_7_0_chanxy_out),
            .io_configs_in(configs_in[31:0]),
            .io_configs_en(configs_en[133:130]),
            .io_io_input(left_in[55:48]),
            .io_io_output(left_out[55:48]),
            .io_ipin_in(io_tile_7_0_ipin_in),
            .io_opin_out(io_tile_7_0_opin_out),
            .io_x_loc(),
            .io_y_loc(),
            .clk(clock),
            .reset(rst)
        );

    wire [197:0] io_tile_8_0_chanxy_in;
    wire [59:0] io_tile_8_0_chanxy_out;
    wire [79:0] io_tile_8_0_ipin_in;
    wire [7:0] io_tile_8_0_opin_out;
    io_tile_sp_7 io_tile_8_0(
            .io_chanxy_in(io_tile_8_0_chanxy_in),
            .io_chanxy_out(io_tile_8_0_chanxy_out),
            .io_configs_in(configs_in[31:0]),
            .io_configs_en(configs_en[154:151]),
            .io_io_input(left_in[63:56]),
            .io_io_output(left_out[63:56]),
            .io_ipin_in(io_tile_8_0_ipin_in),
            .io_opin_out(io_tile_8_0_opin_out),
            .io_x_loc(),
            .io_y_loc(),
            .clk(clock),
            .reset(rst)
        );

    wire [79:0] io_tile_1_9_ipin_in;
    wire [7:0] io_tile_1_9_opin_out;
    io_tile_sp_8 io_tile_1_9(
            .io_configs_in(configs_in[319:288]),
            .io_configs_en(configs_en[4:4]),
            .io_io_input(right_in[7:0]),
            .io_io_output(right_out[7:0]),
            .io_ipin_in(io_tile_1_9_ipin_in),
            .io_opin_out(io_tile_1_9_opin_out),
            .io_x_loc(),
            .io_y_loc(),
            .clk(clock),
            .reset(rst)
        );

    wire [79:0] io_tile_2_9_ipin_in;
    wire [7:0] io_tile_2_9_opin_out;
    io_tile_sp_9 io_tile_2_9(
            .io_configs_in(configs_in[319:288]),
            .io_configs_en(configs_en[25:25]),
            .io_io_input(right_in[15:8]),
            .io_io_output(right_out[15:8]),
            .io_ipin_in(io_tile_2_9_ipin_in),
            .io_opin_out(io_tile_2_9_opin_out),
            .io_x_loc(),
            .io_y_loc(),
            .clk(clock),
            .reset(rst)
        );

    wire [79:0] io_tile_3_9_ipin_in;
    wire [7:0] io_tile_3_9_opin_out;
    io_tile_sp_10 io_tile_3_9(
            .io_configs_in(configs_in[319:288]),
            .io_configs_en(configs_en[46:46]),
            .io_io_input(right_in[23:16]),
            .io_io_output(right_out[23:16]),
            .io_ipin_in(io_tile_3_9_ipin_in),
            .io_opin_out(io_tile_3_9_opin_out),
            .io_x_loc(),
            .io_y_loc(),
            .clk(clock),
            .reset(rst)
        );

    wire [79:0] io_tile_4_9_ipin_in;
    wire [7:0] io_tile_4_9_opin_out;
    io_tile_sp_11 io_tile_4_9(
            .io_configs_in(configs_in[319:288]),
            .io_configs_en(configs_en[67:67]),
            .io_io_input(right_in[31:24]),
            .io_io_output(right_out[31:24]),
            .io_ipin_in(io_tile_4_9_ipin_in),
            .io_opin_out(io_tile_4_9_opin_out),
            .io_x_loc(),
            .io_y_loc(),
            .clk(clock),
            .reset(rst)
        );

    wire [79:0] io_tile_5_9_ipin_in;
    wire [7:0] io_tile_5_9_opin_out;
    io_tile_sp_12 io_tile_5_9(
            .io_configs_in(configs_in[319:288]),
            .io_configs_en(configs_en[88:88]),
            .io_io_input(right_in[39:32]),
            .io_io_output(right_out[39:32]),
            .io_ipin_in(io_tile_5_9_ipin_in),
            .io_opin_out(io_tile_5_9_opin_out),
            .io_x_loc(),
            .io_y_loc(),
            .clk(clock),
            .reset(rst)
        );

    wire [79:0] io_tile_6_9_ipin_in;
    wire [7:0] io_tile_6_9_opin_out;
    io_tile_sp_13 io_tile_6_9(
            .io_configs_in(configs_in[319:288]),
            .io_configs_en(configs_en[109:109]),
            .io_io_input(right_in[47:40]),
            .io_io_output(right_out[47:40]),
            .io_ipin_in(io_tile_6_9_ipin_in),
            .io_opin_out(io_tile_6_9_opin_out),
            .io_x_loc(),
            .io_y_loc(),
            .clk(clock),
            .reset(rst)
        );

    wire [79:0] io_tile_7_9_ipin_in;
    wire [7:0] io_tile_7_9_opin_out;
    io_tile_sp_14 io_tile_7_9(
            .io_configs_in(configs_in[319:288]),
            .io_configs_en(configs_en[130:130]),
            .io_io_input(right_in[55:48]),
            .io_io_output(right_out[55:48]),
            .io_ipin_in(io_tile_7_9_ipin_in),
            .io_opin_out(io_tile_7_9_opin_out),
            .io_x_loc(),
            .io_y_loc(),
            .clk(clock),
            .reset(rst)
        );

    wire [79:0] io_tile_8_9_ipin_in;
    wire [7:0] io_tile_8_9_opin_out;
    io_tile_sp_15 io_tile_8_9(
            .io_configs_in(configs_in[319:288]),
            .io_configs_en(configs_en[151:151]),
            .io_io_input(right_in[63:56]),
            .io_io_output(right_out[63:56]),
            .io_ipin_in(io_tile_8_9_ipin_in),
            .io_opin_out(io_tile_8_9_opin_out),
            .io_x_loc(),
            .io_y_loc(),
            .clk(clock),
            .reset(rst)
        );

    wire [197:0] io_tile_0_1_chanxy_in;
    wire [59:0] io_tile_0_1_chanxy_out;
    wire [79:0] io_tile_0_1_ipin_in;
    wire [7:0] io_tile_0_1_opin_out;
    io_tile_sp_16 io_tile_0_1(
            .io_chanxy_in(io_tile_0_1_chanxy_in),
            .io_chanxy_out(io_tile_0_1_chanxy_out),
            .io_configs_in(configs_in[63:32]),
            .io_configs_en(configs_en[3:0]),
            .io_io_input(bot_in[7:0]),
            .io_io_output(bot_out[7:0]),
            .io_ipin_in(io_tile_0_1_ipin_in),
            .io_opin_out(io_tile_0_1_opin_out),
            .io_x_loc(),
            .io_y_loc(),
            .clk(clock),
            .reset(rst)
        );

    wire [209:0] io_tile_0_2_chanxy_in;
    wire [23:0] io_tile_0_2_chanxy_out;
    wire [79:0] io_tile_0_2_ipin_in;
    wire [7:0] io_tile_0_2_opin_out;
    io_tile_sp_17 io_tile_0_2(
            .io_chanxy_in(io_tile_0_2_chanxy_in),
            .io_chanxy_out(io_tile_0_2_chanxy_out),
            .io_configs_in(configs_in[95:64]),
            .io_configs_en(configs_en[3:0]),
            .io_io_input(bot_in[15:8]),
            .io_io_output(bot_out[15:8]),
            .io_ipin_in(io_tile_0_2_ipin_in),
            .io_opin_out(io_tile_0_2_opin_out),
            .io_x_loc(),
            .io_y_loc(),
            .clk(clock),
            .reset(rst)
        );

    wire [209:0] io_tile_0_3_chanxy_in;
    wire [23:0] io_tile_0_3_chanxy_out;
    wire [79:0] io_tile_0_3_ipin_in;
    wire [7:0] io_tile_0_3_opin_out;
    io_tile_sp_18 io_tile_0_3(
            .io_chanxy_in(io_tile_0_3_chanxy_in),
            .io_chanxy_out(io_tile_0_3_chanxy_out),
            .io_configs_in(configs_in[127:96]),
            .io_configs_en(configs_en[3:0]),
            .io_io_input(bot_in[23:16]),
            .io_io_output(bot_out[23:16]),
            .io_ipin_in(io_tile_0_3_ipin_in),
            .io_opin_out(io_tile_0_3_opin_out),
            .io_x_loc(),
            .io_y_loc(),
            .clk(clock),
            .reset(rst)
        );

    wire [209:0] io_tile_0_4_chanxy_in;
    wire [23:0] io_tile_0_4_chanxy_out;
    wire [79:0] io_tile_0_4_ipin_in;
    wire [7:0] io_tile_0_4_opin_out;
    io_tile_sp_19 io_tile_0_4(
            .io_chanxy_in(io_tile_0_4_chanxy_in),
            .io_chanxy_out(io_tile_0_4_chanxy_out),
            .io_configs_in(configs_in[159:128]),
            .io_configs_en(configs_en[3:0]),
            .io_io_input(bot_in[31:24]),
            .io_io_output(bot_out[31:24]),
            .io_ipin_in(io_tile_0_4_ipin_in),
            .io_opin_out(io_tile_0_4_opin_out),
            .io_x_loc(),
            .io_y_loc(),
            .clk(clock),
            .reset(rst)
        );

    wire [209:0] io_tile_0_5_chanxy_in;
    wire [23:0] io_tile_0_5_chanxy_out;
    wire [79:0] io_tile_0_5_ipin_in;
    wire [7:0] io_tile_0_5_opin_out;
    io_tile_sp_20 io_tile_0_5(
            .io_chanxy_in(io_tile_0_5_chanxy_in),
            .io_chanxy_out(io_tile_0_5_chanxy_out),
            .io_configs_in(configs_in[191:160]),
            .io_configs_en(configs_en[3:0]),
            .io_io_input(bot_in[39:32]),
            .io_io_output(bot_out[39:32]),
            .io_ipin_in(io_tile_0_5_ipin_in),
            .io_opin_out(io_tile_0_5_opin_out),
            .io_x_loc(),
            .io_y_loc(),
            .clk(clock),
            .reset(rst)
        );

    wire [209:0] io_tile_0_6_chanxy_in;
    wire [23:0] io_tile_0_6_chanxy_out;
    wire [79:0] io_tile_0_6_ipin_in;
    wire [7:0] io_tile_0_6_opin_out;
    io_tile_sp_21 io_tile_0_6(
            .io_chanxy_in(io_tile_0_6_chanxy_in),
            .io_chanxy_out(io_tile_0_6_chanxy_out),
            .io_configs_in(configs_in[223:192]),
            .io_configs_en(configs_en[3:0]),
            .io_io_input(bot_in[47:40]),
            .io_io_output(bot_out[47:40]),
            .io_ipin_in(io_tile_0_6_ipin_in),
            .io_opin_out(io_tile_0_6_opin_out),
            .io_x_loc(),
            .io_y_loc(),
            .clk(clock),
            .reset(rst)
        );

    wire [209:0] io_tile_0_7_chanxy_in;
    wire [23:0] io_tile_0_7_chanxy_out;
    wire [79:0] io_tile_0_7_ipin_in;
    wire [7:0] io_tile_0_7_opin_out;
    io_tile_sp_22 io_tile_0_7(
            .io_chanxy_in(io_tile_0_7_chanxy_in),
            .io_chanxy_out(io_tile_0_7_chanxy_out),
            .io_configs_in(configs_in[255:224]),
            .io_configs_en(configs_en[3:0]),
            .io_io_input(bot_in[55:48]),
            .io_io_output(bot_out[55:48]),
            .io_ipin_in(io_tile_0_7_ipin_in),
            .io_opin_out(io_tile_0_7_opin_out),
            .io_x_loc(),
            .io_y_loc(),
            .clk(clock),
            .reset(rst)
        );

    wire [197:0] io_tile_0_8_chanxy_in;
    wire [59:0] io_tile_0_8_chanxy_out;
    wire [79:0] io_tile_0_8_ipin_in;
    wire [7:0] io_tile_0_8_opin_out;
    io_tile_sp_23 io_tile_0_8(
            .io_chanxy_in(io_tile_0_8_chanxy_in),
            .io_chanxy_out(io_tile_0_8_chanxy_out),
            .io_configs_in(configs_in[287:256]),
            .io_configs_en(configs_en[3:0]),
            .io_io_input(bot_in[63:56]),
            .io_io_output(bot_out[63:56]),
            .io_ipin_in(io_tile_0_8_ipin_in),
            .io_opin_out(io_tile_0_8_opin_out),
            .io_x_loc(),
            .io_y_loc(),
            .clk(clock),
            .reset(rst)
        );

    wire [79:0] io_tile_9_1_ipin_in;
    wire [7:0] io_tile_9_1_opin_out;
    io_tile_sp_24 io_tile_9_1(
            .io_configs_in(configs_in[63:32]),
            .io_configs_en(configs_en[171:171]),
            .io_io_input(top_in[7:0]),
            .io_io_output(top_out[7:0]),
            .io_ipin_in(io_tile_9_1_ipin_in),
            .io_opin_out(io_tile_9_1_opin_out),
            .io_x_loc(),
            .io_y_loc(),
            .clk(clock),
            .reset(rst)
        );

    wire [79:0] io_tile_9_2_ipin_in;
    wire [7:0] io_tile_9_2_opin_out;
    io_tile_sp_25 io_tile_9_2(
            .io_configs_in(configs_in[95:64]),
            .io_configs_en(configs_en[171:171]),
            .io_io_input(top_in[15:8]),
            .io_io_output(top_out[15:8]),
            .io_ipin_in(io_tile_9_2_ipin_in),
            .io_opin_out(io_tile_9_2_opin_out),
            .io_x_loc(),
            .io_y_loc(),
            .clk(clock),
            .reset(rst)
        );

    wire [79:0] io_tile_9_3_ipin_in;
    wire [7:0] io_tile_9_3_opin_out;
    io_tile_sp_26 io_tile_9_3(
            .io_configs_in(configs_in[127:96]),
            .io_configs_en(configs_en[171:171]),
            .io_io_input(top_in[23:16]),
            .io_io_output(top_out[23:16]),
            .io_ipin_in(io_tile_9_3_ipin_in),
            .io_opin_out(io_tile_9_3_opin_out),
            .io_x_loc(),
            .io_y_loc(),
            .clk(clock),
            .reset(rst)
        );

    wire [79:0] io_tile_9_4_ipin_in;
    wire [7:0] io_tile_9_4_opin_out;
    io_tile_sp_27 io_tile_9_4(
            .io_configs_in(configs_in[159:128]),
            .io_configs_en(configs_en[171:171]),
            .io_io_input(top_in[31:24]),
            .io_io_output(top_out[31:24]),
            .io_ipin_in(io_tile_9_4_ipin_in),
            .io_opin_out(io_tile_9_4_opin_out),
            .io_x_loc(),
            .io_y_loc(),
            .clk(clock),
            .reset(rst)
        );

    wire [79:0] io_tile_9_5_ipin_in;
    wire [7:0] io_tile_9_5_opin_out;
    io_tile_sp_28 io_tile_9_5(
            .io_configs_in(configs_in[191:160]),
            .io_configs_en(configs_en[171:171]),
            .io_io_input(top_in[39:32]),
            .io_io_output(top_out[39:32]),
            .io_ipin_in(io_tile_9_5_ipin_in),
            .io_opin_out(io_tile_9_5_opin_out),
            .io_x_loc(),
            .io_y_loc(),
            .clk(clock),
            .reset(rst)
        );

    wire [79:0] io_tile_9_6_ipin_in;
    wire [7:0] io_tile_9_6_opin_out;
    io_tile_sp_29 io_tile_9_6(
            .io_configs_in(configs_in[223:192]),
            .io_configs_en(configs_en[171:171]),
            .io_io_input(top_in[47:40]),
            .io_io_output(top_out[47:40]),
            .io_ipin_in(io_tile_9_6_ipin_in),
            .io_opin_out(io_tile_9_6_opin_out),
            .io_x_loc(),
            .io_y_loc(),
            .clk(clock),
            .reset(rst)
        );

    wire [79:0] io_tile_9_7_ipin_in;
    wire [7:0] io_tile_9_7_opin_out;
    io_tile_sp_30 io_tile_9_7(
            .io_configs_in(configs_in[255:224]),
            .io_configs_en(configs_en[171:171]),
            .io_io_input(top_in[55:48]),
            .io_io_output(top_out[55:48]),
            .io_ipin_in(io_tile_9_7_ipin_in),
            .io_opin_out(io_tile_9_7_opin_out),
            .io_x_loc(),
            .io_y_loc(),
            .clk(clock),
            .reset(rst)
        );

    wire [79:0] io_tile_9_8_ipin_in;
    wire [7:0] io_tile_9_8_opin_out;
    io_tile_sp_31 io_tile_9_8(
            .io_configs_in(configs_in[287:256]),
            .io_configs_en(configs_en[171:171]),
            .io_io_input(top_in[63:56]),
            .io_io_output(top_out[63:56]),
            .io_ipin_in(io_tile_9_8_ipin_in),
            .io_opin_out(io_tile_9_8_opin_out),
            .io_x_loc(),
            .io_y_loc(),
            .clk(clock),
            .reset(rst)
        );



    // FPGA LUT TILES DECLARE
    wire [447:0] lut_tile_1_1_chanxy_in;
    wire [119:0] lut_tile_1_1_chanxy_out;
    wire [149:0] lut_tile_1_1_ipin_in;
    wire [3:0] lut_tile_1_1_opin_out;
    lut_tile_sp_0 lut_tile_1_1(
            .io_chanxy_in(lut_tile_1_1_chanxy_in),
            .io_chanxy_out(lut_tile_1_1_chanxy_out),
            .io_configs_in(configs_in[63:32]),
            .io_configs_en(configs_en[24:4]),
            .io_ipin_in(lut_tile_1_1_ipin_in),
            .io_opin_out(lut_tile_1_1_opin_out),
            .io_x_loc(),
            .io_y_loc(),
            .io_ff_en(ff_en),
            .clk(clock),
            .reset(rst)
        );

    wire [459:0] lut_tile_2_1_chanxy_in;
    wire [83:0] lut_tile_2_1_chanxy_out;
    wire [149:0] lut_tile_2_1_ipin_in;
    wire [3:0] lut_tile_2_1_opin_out;
    lut_tile_sp_1 lut_tile_2_1(
            .io_chanxy_in(lut_tile_2_1_chanxy_in),
            .io_chanxy_out(lut_tile_2_1_chanxy_out),
            .io_configs_in(configs_in[63:32]),
            .io_configs_en(configs_en[45:25]),
            .io_ipin_in(lut_tile_2_1_ipin_in),
            .io_opin_out(lut_tile_2_1_opin_out),
            .io_x_loc(),
            .io_y_loc(),
            .io_ff_en(ff_en),
            .clk(clock),
            .reset(rst)
        );

    wire [459:0] lut_tile_3_1_chanxy_in;
    wire [83:0] lut_tile_3_1_chanxy_out;
    wire [149:0] lut_tile_3_1_ipin_in;
    wire [3:0] lut_tile_3_1_opin_out;
    lut_tile_sp_2 lut_tile_3_1(
            .io_chanxy_in(lut_tile_3_1_chanxy_in),
            .io_chanxy_out(lut_tile_3_1_chanxy_out),
            .io_configs_in(configs_in[63:32]),
            .io_configs_en(configs_en[66:46]),
            .io_ipin_in(lut_tile_3_1_ipin_in),
            .io_opin_out(lut_tile_3_1_opin_out),
            .io_x_loc(),
            .io_y_loc(),
            .io_ff_en(ff_en),
            .clk(clock),
            .reset(rst)
        );

    wire [459:0] lut_tile_4_1_chanxy_in;
    wire [83:0] lut_tile_4_1_chanxy_out;
    wire [149:0] lut_tile_4_1_ipin_in;
    wire [3:0] lut_tile_4_1_opin_out;
    lut_tile_sp_3 lut_tile_4_1(
            .io_chanxy_in(lut_tile_4_1_chanxy_in),
            .io_chanxy_out(lut_tile_4_1_chanxy_out),
            .io_configs_in(configs_in[63:32]),
            .io_configs_en(configs_en[87:67]),
            .io_ipin_in(lut_tile_4_1_ipin_in),
            .io_opin_out(lut_tile_4_1_opin_out),
            .io_x_loc(),
            .io_y_loc(),
            .io_ff_en(ff_en),
            .clk(clock),
            .reset(rst)
        );

    wire [459:0] lut_tile_5_1_chanxy_in;
    wire [83:0] lut_tile_5_1_chanxy_out;
    wire [149:0] lut_tile_5_1_ipin_in;
    wire [3:0] lut_tile_5_1_opin_out;
    lut_tile_sp_4 lut_tile_5_1(
            .io_chanxy_in(lut_tile_5_1_chanxy_in),
            .io_chanxy_out(lut_tile_5_1_chanxy_out),
            .io_configs_in(configs_in[63:32]),
            .io_configs_en(configs_en[108:88]),
            .io_ipin_in(lut_tile_5_1_ipin_in),
            .io_opin_out(lut_tile_5_1_opin_out),
            .io_x_loc(),
            .io_y_loc(),
            .io_ff_en(ff_en),
            .clk(clock),
            .reset(rst)
        );

    wire [459:0] lut_tile_6_1_chanxy_in;
    wire [83:0] lut_tile_6_1_chanxy_out;
    wire [149:0] lut_tile_6_1_ipin_in;
    wire [3:0] lut_tile_6_1_opin_out;
    lut_tile_sp_5 lut_tile_6_1(
            .io_chanxy_in(lut_tile_6_1_chanxy_in),
            .io_chanxy_out(lut_tile_6_1_chanxy_out),
            .io_configs_in(configs_in[63:32]),
            .io_configs_en(configs_en[129:109]),
            .io_ipin_in(lut_tile_6_1_ipin_in),
            .io_opin_out(lut_tile_6_1_opin_out),
            .io_x_loc(),
            .io_y_loc(),
            .io_ff_en(ff_en),
            .clk(clock),
            .reset(rst)
        );

    wire [459:0] lut_tile_7_1_chanxy_in;
    wire [83:0] lut_tile_7_1_chanxy_out;
    wire [149:0] lut_tile_7_1_ipin_in;
    wire [3:0] lut_tile_7_1_opin_out;
    lut_tile_sp_6 lut_tile_7_1(
            .io_chanxy_in(lut_tile_7_1_chanxy_in),
            .io_chanxy_out(lut_tile_7_1_chanxy_out),
            .io_configs_in(configs_in[63:32]),
            .io_configs_en(configs_en[150:130]),
            .io_ipin_in(lut_tile_7_1_ipin_in),
            .io_opin_out(lut_tile_7_1_opin_out),
            .io_x_loc(),
            .io_y_loc(),
            .io_ff_en(ff_en),
            .clk(clock),
            .reset(rst)
        );

    wire [421:0] lut_tile_8_1_chanxy_in;
    wire [119:0] lut_tile_8_1_chanxy_out;
    wire [149:0] lut_tile_8_1_ipin_in;
    wire [3:0] lut_tile_8_1_opin_out;
    lut_tile_sp_7 lut_tile_8_1(
            .io_chanxy_in(lut_tile_8_1_chanxy_in),
            .io_chanxy_out(lut_tile_8_1_chanxy_out),
            .io_configs_in(configs_in[63:32]),
            .io_configs_en(configs_en[170:151]),
            .io_ipin_in(lut_tile_8_1_ipin_in),
            .io_opin_out(lut_tile_8_1_opin_out),
            .io_x_loc(),
            .io_y_loc(),
            .io_ff_en(ff_en),
            .clk(clock),
            .reset(rst)
        );

    wire [421:0] lut_tile_1_8_chanxy_in;
    wire [119:0] lut_tile_1_8_chanxy_out;
    wire [149:0] lut_tile_1_8_ipin_in;
    wire [3:0] lut_tile_1_8_opin_out;
    lut_tile_sp_8 lut_tile_1_8(
            .io_chanxy_in(lut_tile_1_8_chanxy_in),
            .io_chanxy_out(lut_tile_1_8_chanxy_out),
            .io_configs_in(configs_in[287:256]),
            .io_configs_en(configs_en[23:4]),
            .io_ipin_in(lut_tile_1_8_ipin_in),
            .io_opin_out(lut_tile_1_8_opin_out),
            .io_x_loc(),
            .io_y_loc(),
            .io_ff_en(ff_en),
            .clk(clock),
            .reset(rst)
        );

    wire [433:0] lut_tile_2_8_chanxy_in;
    wire [83:0] lut_tile_2_8_chanxy_out;
    wire [149:0] lut_tile_2_8_ipin_in;
    wire [3:0] lut_tile_2_8_opin_out;
    lut_tile_sp_9 lut_tile_2_8(
            .io_chanxy_in(lut_tile_2_8_chanxy_in),
            .io_chanxy_out(lut_tile_2_8_chanxy_out),
            .io_configs_in(configs_in[287:256]),
            .io_configs_en(configs_en[44:25]),
            .io_ipin_in(lut_tile_2_8_ipin_in),
            .io_opin_out(lut_tile_2_8_opin_out),
            .io_x_loc(),
            .io_y_loc(),
            .io_ff_en(ff_en),
            .clk(clock),
            .reset(rst)
        );

    wire [433:0] lut_tile_3_8_chanxy_in;
    wire [83:0] lut_tile_3_8_chanxy_out;
    wire [149:0] lut_tile_3_8_ipin_in;
    wire [3:0] lut_tile_3_8_opin_out;
    lut_tile_sp_10 lut_tile_3_8(
            .io_chanxy_in(lut_tile_3_8_chanxy_in),
            .io_chanxy_out(lut_tile_3_8_chanxy_out),
            .io_configs_in(configs_in[287:256]),
            .io_configs_en(configs_en[65:46]),
            .io_ipin_in(lut_tile_3_8_ipin_in),
            .io_opin_out(lut_tile_3_8_opin_out),
            .io_x_loc(),
            .io_y_loc(),
            .io_ff_en(ff_en),
            .clk(clock),
            .reset(rst)
        );

    wire [433:0] lut_tile_4_8_chanxy_in;
    wire [83:0] lut_tile_4_8_chanxy_out;
    wire [149:0] lut_tile_4_8_ipin_in;
    wire [3:0] lut_tile_4_8_opin_out;
    lut_tile_sp_11 lut_tile_4_8(
            .io_chanxy_in(lut_tile_4_8_chanxy_in),
            .io_chanxy_out(lut_tile_4_8_chanxy_out),
            .io_configs_in(configs_in[287:256]),
            .io_configs_en(configs_en[86:67]),
            .io_ipin_in(lut_tile_4_8_ipin_in),
            .io_opin_out(lut_tile_4_8_opin_out),
            .io_x_loc(),
            .io_y_loc(),
            .io_ff_en(ff_en),
            .clk(clock),
            .reset(rst)
        );

    wire [433:0] lut_tile_5_8_chanxy_in;
    wire [83:0] lut_tile_5_8_chanxy_out;
    wire [149:0] lut_tile_5_8_ipin_in;
    wire [3:0] lut_tile_5_8_opin_out;
    lut_tile_sp_12 lut_tile_5_8(
            .io_chanxy_in(lut_tile_5_8_chanxy_in),
            .io_chanxy_out(lut_tile_5_8_chanxy_out),
            .io_configs_in(configs_in[287:256]),
            .io_configs_en(configs_en[107:88]),
            .io_ipin_in(lut_tile_5_8_ipin_in),
            .io_opin_out(lut_tile_5_8_opin_out),
            .io_x_loc(),
            .io_y_loc(),
            .io_ff_en(ff_en),
            .clk(clock),
            .reset(rst)
        );

    wire [433:0] lut_tile_6_8_chanxy_in;
    wire [83:0] lut_tile_6_8_chanxy_out;
    wire [149:0] lut_tile_6_8_ipin_in;
    wire [3:0] lut_tile_6_8_opin_out;
    lut_tile_sp_13 lut_tile_6_8(
            .io_chanxy_in(lut_tile_6_8_chanxy_in),
            .io_chanxy_out(lut_tile_6_8_chanxy_out),
            .io_configs_in(configs_in[287:256]),
            .io_configs_en(configs_en[128:109]),
            .io_ipin_in(lut_tile_6_8_ipin_in),
            .io_opin_out(lut_tile_6_8_opin_out),
            .io_x_loc(),
            .io_y_loc(),
            .io_ff_en(ff_en),
            .clk(clock),
            .reset(rst)
        );

    wire [433:0] lut_tile_7_8_chanxy_in;
    wire [83:0] lut_tile_7_8_chanxy_out;
    wire [149:0] lut_tile_7_8_ipin_in;
    wire [3:0] lut_tile_7_8_opin_out;
    lut_tile_sp_14 lut_tile_7_8(
            .io_chanxy_in(lut_tile_7_8_chanxy_in),
            .io_chanxy_out(lut_tile_7_8_chanxy_out),
            .io_configs_in(configs_in[287:256]),
            .io_configs_en(configs_en[149:130]),
            .io_ipin_in(lut_tile_7_8_ipin_in),
            .io_opin_out(lut_tile_7_8_opin_out),
            .io_x_loc(),
            .io_y_loc(),
            .io_ff_en(ff_en),
            .clk(clock),
            .reset(rst)
        );

    wire [395:0] lut_tile_8_8_chanxy_in;
    wire [119:0] lut_tile_8_8_chanxy_out;
    wire [149:0] lut_tile_8_8_ipin_in;
    wire [3:0] lut_tile_8_8_opin_out;
    lut_tile_sp_15 lut_tile_8_8(
            .io_chanxy_in(lut_tile_8_8_chanxy_in),
            .io_chanxy_out(lut_tile_8_8_chanxy_out),
            .io_configs_in(configs_in[287:256]),
            .io_configs_en(configs_en[170:151]),
            .io_ipin_in(lut_tile_8_8_ipin_in),
            .io_opin_out(lut_tile_8_8_opin_out),
            .io_x_loc(),
            .io_y_loc(),
            .io_ff_en(ff_en),
            .clk(clock),
            .reset(rst)
        );

    wire [459:0] lut_tile_1_2_chanxy_in;
    wire [83:0] lut_tile_1_2_chanxy_out;
    wire [149:0] lut_tile_1_2_ipin_in;
    wire [3:0] lut_tile_1_2_opin_out;
    lut_tile_sp_16 lut_tile_1_2(
            .io_chanxy_in(lut_tile_1_2_chanxy_in),
            .io_chanxy_out(lut_tile_1_2_chanxy_out),
            .io_configs_in(configs_in[95:64]),
            .io_configs_en(configs_en[24:4]),
            .io_ipin_in(lut_tile_1_2_ipin_in),
            .io_opin_out(lut_tile_1_2_opin_out),
            .io_x_loc(),
            .io_y_loc(),
            .io_ff_en(ff_en),
            .clk(clock),
            .reset(rst)
        );

    wire [459:0] lut_tile_1_3_chanxy_in;
    wire [83:0] lut_tile_1_3_chanxy_out;
    wire [149:0] lut_tile_1_3_ipin_in;
    wire [3:0] lut_tile_1_3_opin_out;
    lut_tile_sp_17 lut_tile_1_3(
            .io_chanxy_in(lut_tile_1_3_chanxy_in),
            .io_chanxy_out(lut_tile_1_3_chanxy_out),
            .io_configs_in(configs_in[127:96]),
            .io_configs_en(configs_en[24:4]),
            .io_ipin_in(lut_tile_1_3_ipin_in),
            .io_opin_out(lut_tile_1_3_opin_out),
            .io_x_loc(),
            .io_y_loc(),
            .io_ff_en(ff_en),
            .clk(clock),
            .reset(rst)
        );

    wire [459:0] lut_tile_1_4_chanxy_in;
    wire [83:0] lut_tile_1_4_chanxy_out;
    wire [149:0] lut_tile_1_4_ipin_in;
    wire [3:0] lut_tile_1_4_opin_out;
    lut_tile_sp_18 lut_tile_1_4(
            .io_chanxy_in(lut_tile_1_4_chanxy_in),
            .io_chanxy_out(lut_tile_1_4_chanxy_out),
            .io_configs_in(configs_in[159:128]),
            .io_configs_en(configs_en[24:4]),
            .io_ipin_in(lut_tile_1_4_ipin_in),
            .io_opin_out(lut_tile_1_4_opin_out),
            .io_x_loc(),
            .io_y_loc(),
            .io_ff_en(ff_en),
            .clk(clock),
            .reset(rst)
        );

    wire [459:0] lut_tile_1_5_chanxy_in;
    wire [83:0] lut_tile_1_5_chanxy_out;
    wire [149:0] lut_tile_1_5_ipin_in;
    wire [3:0] lut_tile_1_5_opin_out;
    lut_tile_sp_19 lut_tile_1_5(
            .io_chanxy_in(lut_tile_1_5_chanxy_in),
            .io_chanxy_out(lut_tile_1_5_chanxy_out),
            .io_configs_in(configs_in[191:160]),
            .io_configs_en(configs_en[24:4]),
            .io_ipin_in(lut_tile_1_5_ipin_in),
            .io_opin_out(lut_tile_1_5_opin_out),
            .io_x_loc(),
            .io_y_loc(),
            .io_ff_en(ff_en),
            .clk(clock),
            .reset(rst)
        );

    wire [459:0] lut_tile_1_6_chanxy_in;
    wire [83:0] lut_tile_1_6_chanxy_out;
    wire [149:0] lut_tile_1_6_ipin_in;
    wire [3:0] lut_tile_1_6_opin_out;
    lut_tile_sp_20 lut_tile_1_6(
            .io_chanxy_in(lut_tile_1_6_chanxy_in),
            .io_chanxy_out(lut_tile_1_6_chanxy_out),
            .io_configs_in(configs_in[223:192]),
            .io_configs_en(configs_en[24:4]),
            .io_ipin_in(lut_tile_1_6_ipin_in),
            .io_opin_out(lut_tile_1_6_opin_out),
            .io_x_loc(),
            .io_y_loc(),
            .io_ff_en(ff_en),
            .clk(clock),
            .reset(rst)
        );

    wire [459:0] lut_tile_1_7_chanxy_in;
    wire [83:0] lut_tile_1_7_chanxy_out;
    wire [149:0] lut_tile_1_7_ipin_in;
    wire [3:0] lut_tile_1_7_opin_out;
    lut_tile_sp_21 lut_tile_1_7(
            .io_chanxy_in(lut_tile_1_7_chanxy_in),
            .io_chanxy_out(lut_tile_1_7_chanxy_out),
            .io_configs_in(configs_in[255:224]),
            .io_configs_en(configs_en[24:4]),
            .io_ipin_in(lut_tile_1_7_ipin_in),
            .io_opin_out(lut_tile_1_7_opin_out),
            .io_x_loc(),
            .io_y_loc(),
            .io_ff_en(ff_en),
            .clk(clock),
            .reset(rst)
        );

    wire [433:0] lut_tile_8_2_chanxy_in;
    wire [83:0] lut_tile_8_2_chanxy_out;
    wire [149:0] lut_tile_8_2_ipin_in;
    wire [3:0] lut_tile_8_2_opin_out;
    lut_tile_sp_22 lut_tile_8_2(
            .io_chanxy_in(lut_tile_8_2_chanxy_in),
            .io_chanxy_out(lut_tile_8_2_chanxy_out),
            .io_configs_in(configs_in[95:64]),
            .io_configs_en(configs_en[170:151]),
            .io_ipin_in(lut_tile_8_2_ipin_in),
            .io_opin_out(lut_tile_8_2_opin_out),
            .io_x_loc(),
            .io_y_loc(),
            .io_ff_en(ff_en),
            .clk(clock),
            .reset(rst)
        );

    wire [433:0] lut_tile_8_3_chanxy_in;
    wire [83:0] lut_tile_8_3_chanxy_out;
    wire [149:0] lut_tile_8_3_ipin_in;
    wire [3:0] lut_tile_8_3_opin_out;
    lut_tile_sp_23 lut_tile_8_3(
            .io_chanxy_in(lut_tile_8_3_chanxy_in),
            .io_chanxy_out(lut_tile_8_3_chanxy_out),
            .io_configs_in(configs_in[127:96]),
            .io_configs_en(configs_en[170:151]),
            .io_ipin_in(lut_tile_8_3_ipin_in),
            .io_opin_out(lut_tile_8_3_opin_out),
            .io_x_loc(),
            .io_y_loc(),
            .io_ff_en(ff_en),
            .clk(clock),
            .reset(rst)
        );

    wire [433:0] lut_tile_8_4_chanxy_in;
    wire [83:0] lut_tile_8_4_chanxy_out;
    wire [149:0] lut_tile_8_4_ipin_in;
    wire [3:0] lut_tile_8_4_opin_out;
    lut_tile_sp_24 lut_tile_8_4(
            .io_chanxy_in(lut_tile_8_4_chanxy_in),
            .io_chanxy_out(lut_tile_8_4_chanxy_out),
            .io_configs_in(configs_in[159:128]),
            .io_configs_en(configs_en[170:151]),
            .io_ipin_in(lut_tile_8_4_ipin_in),
            .io_opin_out(lut_tile_8_4_opin_out),
            .io_x_loc(),
            .io_y_loc(),
            .io_ff_en(ff_en),
            .clk(clock),
            .reset(rst)
        );

    wire [433:0] lut_tile_8_5_chanxy_in;
    wire [83:0] lut_tile_8_5_chanxy_out;
    wire [149:0] lut_tile_8_5_ipin_in;
    wire [3:0] lut_tile_8_5_opin_out;
    lut_tile_sp_25 lut_tile_8_5(
            .io_chanxy_in(lut_tile_8_5_chanxy_in),
            .io_chanxy_out(lut_tile_8_5_chanxy_out),
            .io_configs_in(configs_in[191:160]),
            .io_configs_en(configs_en[170:151]),
            .io_ipin_in(lut_tile_8_5_ipin_in),
            .io_opin_out(lut_tile_8_5_opin_out),
            .io_x_loc(),
            .io_y_loc(),
            .io_ff_en(ff_en),
            .clk(clock),
            .reset(rst)
        );

    wire [433:0] lut_tile_8_6_chanxy_in;
    wire [83:0] lut_tile_8_6_chanxy_out;
    wire [149:0] lut_tile_8_6_ipin_in;
    wire [3:0] lut_tile_8_6_opin_out;
    lut_tile_sp_26 lut_tile_8_6(
            .io_chanxy_in(lut_tile_8_6_chanxy_in),
            .io_chanxy_out(lut_tile_8_6_chanxy_out),
            .io_configs_in(configs_in[223:192]),
            .io_configs_en(configs_en[170:151]),
            .io_ipin_in(lut_tile_8_6_ipin_in),
            .io_opin_out(lut_tile_8_6_opin_out),
            .io_x_loc(),
            .io_y_loc(),
            .io_ff_en(ff_en),
            .clk(clock),
            .reset(rst)
        );

    wire [433:0] lut_tile_8_7_chanxy_in;
    wire [83:0] lut_tile_8_7_chanxy_out;
    wire [149:0] lut_tile_8_7_ipin_in;
    wire [3:0] lut_tile_8_7_opin_out;
    lut_tile_sp_27 lut_tile_8_7(
            .io_chanxy_in(lut_tile_8_7_chanxy_in),
            .io_chanxy_out(lut_tile_8_7_chanxy_out),
            .io_configs_in(configs_in[255:224]),
            .io_configs_en(configs_en[170:151]),
            .io_ipin_in(lut_tile_8_7_ipin_in),
            .io_opin_out(lut_tile_8_7_opin_out),
            .io_x_loc(),
            .io_y_loc(),
            .io_ff_en(ff_en),
            .clk(clock),
            .reset(rst)
        );

    wire [471:0] lut_tile_2_2_chanxy_in;
    wire [47:0] lut_tile_2_2_chanxy_out;
    wire [149:0] lut_tile_2_2_ipin_in;
    wire [3:0] lut_tile_2_2_opin_out;
    lut_tile lut_tile_2_2(
            .io_chanxy_in(lut_tile_2_2_chanxy_in),
            .io_chanxy_out(lut_tile_2_2_chanxy_out),
            .io_configs_in(configs_in[95:64]),
            .io_configs_en(configs_en[44:25]),
            .io_ipin_in(lut_tile_2_2_ipin_in),
            .io_opin_out(lut_tile_2_2_opin_out),
            .io_ff_en(ff_en),
            .clk(clock),
            .reset(rst)
        );

    wire [471:0] lut_tile_2_3_chanxy_in;
    wire [47:0] lut_tile_2_3_chanxy_out;
    wire [149:0] lut_tile_2_3_ipin_in;
    wire [3:0] lut_tile_2_3_opin_out;
    lut_tile lut_tile_2_3(
            .io_chanxy_in(lut_tile_2_3_chanxy_in),
            .io_chanxy_out(lut_tile_2_3_chanxy_out),
            .io_configs_in(configs_in[127:96]),
            .io_configs_en(configs_en[44:25]),
            .io_ipin_in(lut_tile_2_3_ipin_in),
            .io_opin_out(lut_tile_2_3_opin_out),
            .io_ff_en(ff_en),
            .clk(clock),
            .reset(rst)
        );

    wire [471:0] lut_tile_2_4_chanxy_in;
    wire [47:0] lut_tile_2_4_chanxy_out;
    wire [149:0] lut_tile_2_4_ipin_in;
    wire [3:0] lut_tile_2_4_opin_out;
    lut_tile lut_tile_2_4(
            .io_chanxy_in(lut_tile_2_4_chanxy_in),
            .io_chanxy_out(lut_tile_2_4_chanxy_out),
            .io_configs_in(configs_in[159:128]),
            .io_configs_en(configs_en[44:25]),
            .io_ipin_in(lut_tile_2_4_ipin_in),
            .io_opin_out(lut_tile_2_4_opin_out),
            .io_ff_en(ff_en),
            .clk(clock),
            .reset(rst)
        );

    wire [471:0] lut_tile_2_5_chanxy_in;
    wire [47:0] lut_tile_2_5_chanxy_out;
    wire [149:0] lut_tile_2_5_ipin_in;
    wire [3:0] lut_tile_2_5_opin_out;
    lut_tile lut_tile_2_5(
            .io_chanxy_in(lut_tile_2_5_chanxy_in),
            .io_chanxy_out(lut_tile_2_5_chanxy_out),
            .io_configs_in(configs_in[191:160]),
            .io_configs_en(configs_en[44:25]),
            .io_ipin_in(lut_tile_2_5_ipin_in),
            .io_opin_out(lut_tile_2_5_opin_out),
            .io_ff_en(ff_en),
            .clk(clock),
            .reset(rst)
        );

    wire [471:0] lut_tile_2_6_chanxy_in;
    wire [47:0] lut_tile_2_6_chanxy_out;
    wire [149:0] lut_tile_2_6_ipin_in;
    wire [3:0] lut_tile_2_6_opin_out;
    lut_tile lut_tile_2_6(
            .io_chanxy_in(lut_tile_2_6_chanxy_in),
            .io_chanxy_out(lut_tile_2_6_chanxy_out),
            .io_configs_in(configs_in[223:192]),
            .io_configs_en(configs_en[44:25]),
            .io_ipin_in(lut_tile_2_6_ipin_in),
            .io_opin_out(lut_tile_2_6_opin_out),
            .io_ff_en(ff_en),
            .clk(clock),
            .reset(rst)
        );

    wire [471:0] lut_tile_2_7_chanxy_in;
    wire [47:0] lut_tile_2_7_chanxy_out;
    wire [149:0] lut_tile_2_7_ipin_in;
    wire [3:0] lut_tile_2_7_opin_out;
    lut_tile lut_tile_2_7(
            .io_chanxy_in(lut_tile_2_7_chanxy_in),
            .io_chanxy_out(lut_tile_2_7_chanxy_out),
            .io_configs_in(configs_in[255:224]),
            .io_configs_en(configs_en[44:25]),
            .io_ipin_in(lut_tile_2_7_ipin_in),
            .io_opin_out(lut_tile_2_7_opin_out),
            .io_ff_en(ff_en),
            .clk(clock),
            .reset(rst)
        );

    wire [471:0] lut_tile_3_2_chanxy_in;
    wire [47:0] lut_tile_3_2_chanxy_out;
    wire [149:0] lut_tile_3_2_ipin_in;
    wire [3:0] lut_tile_3_2_opin_out;
    lut_tile lut_tile_3_2(
            .io_chanxy_in(lut_tile_3_2_chanxy_in),
            .io_chanxy_out(lut_tile_3_2_chanxy_out),
            .io_configs_in(configs_in[95:64]),
            .io_configs_en(configs_en[65:46]),
            .io_ipin_in(lut_tile_3_2_ipin_in),
            .io_opin_out(lut_tile_3_2_opin_out),
            .io_ff_en(ff_en),
            .clk(clock),
            .reset(rst)
        );

    wire [471:0] lut_tile_3_3_chanxy_in;
    wire [47:0] lut_tile_3_3_chanxy_out;
    wire [149:0] lut_tile_3_3_ipin_in;
    wire [3:0] lut_tile_3_3_opin_out;
    lut_tile lut_tile_3_3(
            .io_chanxy_in(lut_tile_3_3_chanxy_in),
            .io_chanxy_out(lut_tile_3_3_chanxy_out),
            .io_configs_in(configs_in[127:96]),
            .io_configs_en(configs_en[65:46]),
            .io_ipin_in(lut_tile_3_3_ipin_in),
            .io_opin_out(lut_tile_3_3_opin_out),
            .io_ff_en(ff_en),
            .clk(clock),
            .reset(rst)
        );

    wire [471:0] lut_tile_3_4_chanxy_in;
    wire [47:0] lut_tile_3_4_chanxy_out;
    wire [149:0] lut_tile_3_4_ipin_in;
    wire [3:0] lut_tile_3_4_opin_out;
    lut_tile lut_tile_3_4(
            .io_chanxy_in(lut_tile_3_4_chanxy_in),
            .io_chanxy_out(lut_tile_3_4_chanxy_out),
            .io_configs_in(configs_in[159:128]),
            .io_configs_en(configs_en[65:46]),
            .io_ipin_in(lut_tile_3_4_ipin_in),
            .io_opin_out(lut_tile_3_4_opin_out),
            .io_ff_en(ff_en),
            .clk(clock),
            .reset(rst)
        );

    wire [471:0] lut_tile_3_5_chanxy_in;
    wire [47:0] lut_tile_3_5_chanxy_out;
    wire [149:0] lut_tile_3_5_ipin_in;
    wire [3:0] lut_tile_3_5_opin_out;
    lut_tile lut_tile_3_5(
            .io_chanxy_in(lut_tile_3_5_chanxy_in),
            .io_chanxy_out(lut_tile_3_5_chanxy_out),
            .io_configs_in(configs_in[191:160]),
            .io_configs_en(configs_en[65:46]),
            .io_ipin_in(lut_tile_3_5_ipin_in),
            .io_opin_out(lut_tile_3_5_opin_out),
            .io_ff_en(ff_en),
            .clk(clock),
            .reset(rst)
        );

    wire [471:0] lut_tile_3_6_chanxy_in;
    wire [47:0] lut_tile_3_6_chanxy_out;
    wire [149:0] lut_tile_3_6_ipin_in;
    wire [3:0] lut_tile_3_6_opin_out;
    lut_tile lut_tile_3_6(
            .io_chanxy_in(lut_tile_3_6_chanxy_in),
            .io_chanxy_out(lut_tile_3_6_chanxy_out),
            .io_configs_in(configs_in[223:192]),
            .io_configs_en(configs_en[65:46]),
            .io_ipin_in(lut_tile_3_6_ipin_in),
            .io_opin_out(lut_tile_3_6_opin_out),
            .io_ff_en(ff_en),
            .clk(clock),
            .reset(rst)
        );

    wire [471:0] lut_tile_3_7_chanxy_in;
    wire [47:0] lut_tile_3_7_chanxy_out;
    wire [149:0] lut_tile_3_7_ipin_in;
    wire [3:0] lut_tile_3_7_opin_out;
    lut_tile lut_tile_3_7(
            .io_chanxy_in(lut_tile_3_7_chanxy_in),
            .io_chanxy_out(lut_tile_3_7_chanxy_out),
            .io_configs_in(configs_in[255:224]),
            .io_configs_en(configs_en[65:46]),
            .io_ipin_in(lut_tile_3_7_ipin_in),
            .io_opin_out(lut_tile_3_7_opin_out),
            .io_ff_en(ff_en),
            .clk(clock),
            .reset(rst)
        );

    wire [471:0] lut_tile_4_2_chanxy_in;
    wire [47:0] lut_tile_4_2_chanxy_out;
    wire [149:0] lut_tile_4_2_ipin_in;
    wire [3:0] lut_tile_4_2_opin_out;
    lut_tile lut_tile_4_2(
            .io_chanxy_in(lut_tile_4_2_chanxy_in),
            .io_chanxy_out(lut_tile_4_2_chanxy_out),
            .io_configs_in(configs_in[95:64]),
            .io_configs_en(configs_en[86:67]),
            .io_ipin_in(lut_tile_4_2_ipin_in),
            .io_opin_out(lut_tile_4_2_opin_out),
            .io_ff_en(ff_en),
            .clk(clock),
            .reset(rst)
        );

    wire [471:0] lut_tile_4_3_chanxy_in;
    wire [47:0] lut_tile_4_3_chanxy_out;
    wire [149:0] lut_tile_4_3_ipin_in;
    wire [3:0] lut_tile_4_3_opin_out;
    lut_tile lut_tile_4_3(
            .io_chanxy_in(lut_tile_4_3_chanxy_in),
            .io_chanxy_out(lut_tile_4_3_chanxy_out),
            .io_configs_in(configs_in[127:96]),
            .io_configs_en(configs_en[86:67]),
            .io_ipin_in(lut_tile_4_3_ipin_in),
            .io_opin_out(lut_tile_4_3_opin_out),
            .io_ff_en(ff_en),
            .clk(clock),
            .reset(rst)
        );

    wire [471:0] lut_tile_4_4_chanxy_in;
    wire [47:0] lut_tile_4_4_chanxy_out;
    wire [149:0] lut_tile_4_4_ipin_in;
    wire [3:0] lut_tile_4_4_opin_out;
    lut_tile lut_tile_4_4(
            .io_chanxy_in(lut_tile_4_4_chanxy_in),
            .io_chanxy_out(lut_tile_4_4_chanxy_out),
            .io_configs_in(configs_in[159:128]),
            .io_configs_en(configs_en[86:67]),
            .io_ipin_in(lut_tile_4_4_ipin_in),
            .io_opin_out(lut_tile_4_4_opin_out),
            .io_ff_en(ff_en),
            .clk(clock),
            .reset(rst)
        );

    wire [471:0] lut_tile_4_5_chanxy_in;
    wire [47:0] lut_tile_4_5_chanxy_out;
    wire [149:0] lut_tile_4_5_ipin_in;
    wire [3:0] lut_tile_4_5_opin_out;
    lut_tile lut_tile_4_5(
            .io_chanxy_in(lut_tile_4_5_chanxy_in),
            .io_chanxy_out(lut_tile_4_5_chanxy_out),
            .io_configs_in(configs_in[191:160]),
            .io_configs_en(configs_en[86:67]),
            .io_ipin_in(lut_tile_4_5_ipin_in),
            .io_opin_out(lut_tile_4_5_opin_out),
            .io_ff_en(ff_en),
            .clk(clock),
            .reset(rst)
        );

    wire [471:0] lut_tile_4_6_chanxy_in;
    wire [47:0] lut_tile_4_6_chanxy_out;
    wire [149:0] lut_tile_4_6_ipin_in;
    wire [3:0] lut_tile_4_6_opin_out;
    lut_tile lut_tile_4_6(
            .io_chanxy_in(lut_tile_4_6_chanxy_in),
            .io_chanxy_out(lut_tile_4_6_chanxy_out),
            .io_configs_in(configs_in[223:192]),
            .io_configs_en(configs_en[86:67]),
            .io_ipin_in(lut_tile_4_6_ipin_in),
            .io_opin_out(lut_tile_4_6_opin_out),
            .io_ff_en(ff_en),
            .clk(clock),
            .reset(rst)
        );

    wire [471:0] lut_tile_4_7_chanxy_in;
    wire [47:0] lut_tile_4_7_chanxy_out;
    wire [149:0] lut_tile_4_7_ipin_in;
    wire [3:0] lut_tile_4_7_opin_out;
    lut_tile lut_tile_4_7(
            .io_chanxy_in(lut_tile_4_7_chanxy_in),
            .io_chanxy_out(lut_tile_4_7_chanxy_out),
            .io_configs_in(configs_in[255:224]),
            .io_configs_en(configs_en[86:67]),
            .io_ipin_in(lut_tile_4_7_ipin_in),
            .io_opin_out(lut_tile_4_7_opin_out),
            .io_ff_en(ff_en),
            .clk(clock),
            .reset(rst)
        );

    wire [471:0] lut_tile_5_2_chanxy_in;
    wire [47:0] lut_tile_5_2_chanxy_out;
    wire [149:0] lut_tile_5_2_ipin_in;
    wire [3:0] lut_tile_5_2_opin_out;
    lut_tile lut_tile_5_2(
            .io_chanxy_in(lut_tile_5_2_chanxy_in),
            .io_chanxy_out(lut_tile_5_2_chanxy_out),
            .io_configs_in(configs_in[95:64]),
            .io_configs_en(configs_en[107:88]),
            .io_ipin_in(lut_tile_5_2_ipin_in),
            .io_opin_out(lut_tile_5_2_opin_out),
            .io_ff_en(ff_en),
            .clk(clock),
            .reset(rst)
        );

    wire [471:0] lut_tile_5_3_chanxy_in;
    wire [47:0] lut_tile_5_3_chanxy_out;
    wire [149:0] lut_tile_5_3_ipin_in;
    wire [3:0] lut_tile_5_3_opin_out;
    lut_tile lut_tile_5_3(
            .io_chanxy_in(lut_tile_5_3_chanxy_in),
            .io_chanxy_out(lut_tile_5_3_chanxy_out),
            .io_configs_in(configs_in[127:96]),
            .io_configs_en(configs_en[107:88]),
            .io_ipin_in(lut_tile_5_3_ipin_in),
            .io_opin_out(lut_tile_5_3_opin_out),
            .io_ff_en(ff_en),
            .clk(clock),
            .reset(rst)
        );

    wire [471:0] lut_tile_5_4_chanxy_in;
    wire [47:0] lut_tile_5_4_chanxy_out;
    wire [149:0] lut_tile_5_4_ipin_in;
    wire [3:0] lut_tile_5_4_opin_out;
    lut_tile lut_tile_5_4(
            .io_chanxy_in(lut_tile_5_4_chanxy_in),
            .io_chanxy_out(lut_tile_5_4_chanxy_out),
            .io_configs_in(configs_in[159:128]),
            .io_configs_en(configs_en[107:88]),
            .io_ipin_in(lut_tile_5_4_ipin_in),
            .io_opin_out(lut_tile_5_4_opin_out),
            .io_ff_en(ff_en),
            .clk(clock),
            .reset(rst)
        );

    wire [471:0] lut_tile_5_5_chanxy_in;
    wire [47:0] lut_tile_5_5_chanxy_out;
    wire [149:0] lut_tile_5_5_ipin_in;
    wire [3:0] lut_tile_5_5_opin_out;
    lut_tile lut_tile_5_5(
            .io_chanxy_in(lut_tile_5_5_chanxy_in),
            .io_chanxy_out(lut_tile_5_5_chanxy_out),
            .io_configs_in(configs_in[191:160]),
            .io_configs_en(configs_en[107:88]),
            .io_ipin_in(lut_tile_5_5_ipin_in),
            .io_opin_out(lut_tile_5_5_opin_out),
            .io_ff_en(ff_en),
            .clk(clock),
            .reset(rst)
        );

    wire [471:0] lut_tile_5_6_chanxy_in;
    wire [47:0] lut_tile_5_6_chanxy_out;
    wire [149:0] lut_tile_5_6_ipin_in;
    wire [3:0] lut_tile_5_6_opin_out;
    lut_tile lut_tile_5_6(
            .io_chanxy_in(lut_tile_5_6_chanxy_in),
            .io_chanxy_out(lut_tile_5_6_chanxy_out),
            .io_configs_in(configs_in[223:192]),
            .io_configs_en(configs_en[107:88]),
            .io_ipin_in(lut_tile_5_6_ipin_in),
            .io_opin_out(lut_tile_5_6_opin_out),
            .io_ff_en(ff_en),
            .clk(clock),
            .reset(rst)
        );

    wire [471:0] lut_tile_5_7_chanxy_in;
    wire [47:0] lut_tile_5_7_chanxy_out;
    wire [149:0] lut_tile_5_7_ipin_in;
    wire [3:0] lut_tile_5_7_opin_out;
    lut_tile lut_tile_5_7(
            .io_chanxy_in(lut_tile_5_7_chanxy_in),
            .io_chanxy_out(lut_tile_5_7_chanxy_out),
            .io_configs_in(configs_in[255:224]),
            .io_configs_en(configs_en[107:88]),
            .io_ipin_in(lut_tile_5_7_ipin_in),
            .io_opin_out(lut_tile_5_7_opin_out),
            .io_ff_en(ff_en),
            .clk(clock),
            .reset(rst)
        );

    wire [471:0] lut_tile_6_2_chanxy_in;
    wire [47:0] lut_tile_6_2_chanxy_out;
    wire [149:0] lut_tile_6_2_ipin_in;
    wire [3:0] lut_tile_6_2_opin_out;
    lut_tile lut_tile_6_2(
            .io_chanxy_in(lut_tile_6_2_chanxy_in),
            .io_chanxy_out(lut_tile_6_2_chanxy_out),
            .io_configs_in(configs_in[95:64]),
            .io_configs_en(configs_en[128:109]),
            .io_ipin_in(lut_tile_6_2_ipin_in),
            .io_opin_out(lut_tile_6_2_opin_out),
            .io_ff_en(ff_en),
            .clk(clock),
            .reset(rst)
        );

    wire [471:0] lut_tile_6_3_chanxy_in;
    wire [47:0] lut_tile_6_3_chanxy_out;
    wire [149:0] lut_tile_6_3_ipin_in;
    wire [3:0] lut_tile_6_3_opin_out;
    lut_tile lut_tile_6_3(
            .io_chanxy_in(lut_tile_6_3_chanxy_in),
            .io_chanxy_out(lut_tile_6_3_chanxy_out),
            .io_configs_in(configs_in[127:96]),
            .io_configs_en(configs_en[128:109]),
            .io_ipin_in(lut_tile_6_3_ipin_in),
            .io_opin_out(lut_tile_6_3_opin_out),
            .io_ff_en(ff_en),
            .clk(clock),
            .reset(rst)
        );

    wire [471:0] lut_tile_6_4_chanxy_in;
    wire [47:0] lut_tile_6_4_chanxy_out;
    wire [149:0] lut_tile_6_4_ipin_in;
    wire [3:0] lut_tile_6_4_opin_out;
    lut_tile lut_tile_6_4(
            .io_chanxy_in(lut_tile_6_4_chanxy_in),
            .io_chanxy_out(lut_tile_6_4_chanxy_out),
            .io_configs_in(configs_in[159:128]),
            .io_configs_en(configs_en[128:109]),
            .io_ipin_in(lut_tile_6_4_ipin_in),
            .io_opin_out(lut_tile_6_4_opin_out),
            .io_ff_en(ff_en),
            .clk(clock),
            .reset(rst)
        );

    wire [471:0] lut_tile_6_5_chanxy_in;
    wire [47:0] lut_tile_6_5_chanxy_out;
    wire [149:0] lut_tile_6_5_ipin_in;
    wire [3:0] lut_tile_6_5_opin_out;
    lut_tile lut_tile_6_5(
            .io_chanxy_in(lut_tile_6_5_chanxy_in),
            .io_chanxy_out(lut_tile_6_5_chanxy_out),
            .io_configs_in(configs_in[191:160]),
            .io_configs_en(configs_en[128:109]),
            .io_ipin_in(lut_tile_6_5_ipin_in),
            .io_opin_out(lut_tile_6_5_opin_out),
            .io_ff_en(ff_en),
            .clk(clock),
            .reset(rst)
        );

    wire [471:0] lut_tile_6_6_chanxy_in;
    wire [47:0] lut_tile_6_6_chanxy_out;
    wire [149:0] lut_tile_6_6_ipin_in;
    wire [3:0] lut_tile_6_6_opin_out;
    lut_tile lut_tile_6_6(
            .io_chanxy_in(lut_tile_6_6_chanxy_in),
            .io_chanxy_out(lut_tile_6_6_chanxy_out),
            .io_configs_in(configs_in[223:192]),
            .io_configs_en(configs_en[128:109]),
            .io_ipin_in(lut_tile_6_6_ipin_in),
            .io_opin_out(lut_tile_6_6_opin_out),
            .io_ff_en(ff_en),
            .clk(clock),
            .reset(rst)
        );

    wire [471:0] lut_tile_6_7_chanxy_in;
    wire [47:0] lut_tile_6_7_chanxy_out;
    wire [149:0] lut_tile_6_7_ipin_in;
    wire [3:0] lut_tile_6_7_opin_out;
    lut_tile lut_tile_6_7(
            .io_chanxy_in(lut_tile_6_7_chanxy_in),
            .io_chanxy_out(lut_tile_6_7_chanxy_out),
            .io_configs_in(configs_in[255:224]),
            .io_configs_en(configs_en[128:109]),
            .io_ipin_in(lut_tile_6_7_ipin_in),
            .io_opin_out(lut_tile_6_7_opin_out),
            .io_ff_en(ff_en),
            .clk(clock),
            .reset(rst)
        );

    wire [471:0] lut_tile_7_2_chanxy_in;
    wire [47:0] lut_tile_7_2_chanxy_out;
    wire [149:0] lut_tile_7_2_ipin_in;
    wire [3:0] lut_tile_7_2_opin_out;
    lut_tile lut_tile_7_2(
            .io_chanxy_in(lut_tile_7_2_chanxy_in),
            .io_chanxy_out(lut_tile_7_2_chanxy_out),
            .io_configs_in(configs_in[95:64]),
            .io_configs_en(configs_en[149:130]),
            .io_ipin_in(lut_tile_7_2_ipin_in),
            .io_opin_out(lut_tile_7_2_opin_out),
            .io_ff_en(ff_en),
            .clk(clock),
            .reset(rst)
        );

    wire [471:0] lut_tile_7_3_chanxy_in;
    wire [47:0] lut_tile_7_3_chanxy_out;
    wire [149:0] lut_tile_7_3_ipin_in;
    wire [3:0] lut_tile_7_3_opin_out;
    lut_tile lut_tile_7_3(
            .io_chanxy_in(lut_tile_7_3_chanxy_in),
            .io_chanxy_out(lut_tile_7_3_chanxy_out),
            .io_configs_in(configs_in[127:96]),
            .io_configs_en(configs_en[149:130]),
            .io_ipin_in(lut_tile_7_3_ipin_in),
            .io_opin_out(lut_tile_7_3_opin_out),
            .io_ff_en(ff_en),
            .clk(clock),
            .reset(rst)
        );

    wire [471:0] lut_tile_7_4_chanxy_in;
    wire [47:0] lut_tile_7_4_chanxy_out;
    wire [149:0] lut_tile_7_4_ipin_in;
    wire [3:0] lut_tile_7_4_opin_out;
    lut_tile lut_tile_7_4(
            .io_chanxy_in(lut_tile_7_4_chanxy_in),
            .io_chanxy_out(lut_tile_7_4_chanxy_out),
            .io_configs_in(configs_in[159:128]),
            .io_configs_en(configs_en[149:130]),
            .io_ipin_in(lut_tile_7_4_ipin_in),
            .io_opin_out(lut_tile_7_4_opin_out),
            .io_ff_en(ff_en),
            .clk(clock),
            .reset(rst)
        );

    wire [471:0] lut_tile_7_5_chanxy_in;
    wire [47:0] lut_tile_7_5_chanxy_out;
    wire [149:0] lut_tile_7_5_ipin_in;
    wire [3:0] lut_tile_7_5_opin_out;
    lut_tile lut_tile_7_5(
            .io_chanxy_in(lut_tile_7_5_chanxy_in),
            .io_chanxy_out(lut_tile_7_5_chanxy_out),
            .io_configs_in(configs_in[191:160]),
            .io_configs_en(configs_en[149:130]),
            .io_ipin_in(lut_tile_7_5_ipin_in),
            .io_opin_out(lut_tile_7_5_opin_out),
            .io_ff_en(ff_en),
            .clk(clock),
            .reset(rst)
        );

    wire [471:0] lut_tile_7_6_chanxy_in;
    wire [47:0] lut_tile_7_6_chanxy_out;
    wire [149:0] lut_tile_7_6_ipin_in;
    wire [3:0] lut_tile_7_6_opin_out;
    lut_tile lut_tile_7_6(
            .io_chanxy_in(lut_tile_7_6_chanxy_in),
            .io_chanxy_out(lut_tile_7_6_chanxy_out),
            .io_configs_in(configs_in[223:192]),
            .io_configs_en(configs_en[149:130]),
            .io_ipin_in(lut_tile_7_6_ipin_in),
            .io_opin_out(lut_tile_7_6_opin_out),
            .io_ff_en(ff_en),
            .clk(clock),
            .reset(rst)
        );

    wire [471:0] lut_tile_7_7_chanxy_in;
    wire [47:0] lut_tile_7_7_chanxy_out;
    wire [149:0] lut_tile_7_7_ipin_in;
    wire [3:0] lut_tile_7_7_opin_out;
    lut_tile lut_tile_7_7(
            .io_chanxy_in(lut_tile_7_7_chanxy_in),
            .io_chanxy_out(lut_tile_7_7_chanxy_out),
            .io_configs_in(configs_in[255:224]),
            .io_configs_en(configs_en[149:130]),
            .io_ipin_in(lut_tile_7_7_ipin_in),
            .io_opin_out(lut_tile_7_7_opin_out),
            .io_ff_en(ff_en),
            .clk(clock),
            .reset(rst)
        );



    // LUT TILE IPIN
    assign lut_tile_1_1_ipin_in = {wire_3295, wire_3294, wire_3275, wire_3274, wire_3257, wire_3256, wire_3237, wire_3236, wire_3217, wire_3216, wire_5931, wire_5930, wire_5913, wire_5912, wire_5893, wire_5892, wire_5873, wire_5872, wire_5863, wire_5862, wire_3555, wire_3554, wire_3543, wire_3542, wire_3515, wire_3514, wire_3497, wire_3496, wire_3477, wire_3476, wire_5667, wire_5666, wire_5647, wire_5646, wire_5629, wire_5628, wire_5609, wire_5608, wire_5591, wire_5590, wire_3289, wire_3288, wire_3271, wire_3270, wire_3251, wire_3250, wire_3233, wire_3232, wire_3213, wire_3212, wire_5935, wire_5934, wire_5907, wire_5906, wire_5895, wire_5894, wire_5869, wire_5868, wire_5849, wire_5848, wire_3549, wire_3548, wire_3529, wire_3528, wire_3519, wire_3518, wire_3491, wire_3490, wire_3473, wire_3472, wire_5661, wire_5660, wire_5643, wire_5642, wire_5623, wire_5622, wire_5605, wire_5604, wire_5585, wire_5584, wire_3285, wire_3284, wire_3265, wire_3264, wire_3247, wire_3246, wire_3227, wire_3226, wire_3207, wire_3206, wire_5921, wire_5920, wire_5911, wire_5910, wire_5883, wire_5882, wire_5871, wire_5870, wire_5845, wire_5844, wire_3551, wire_3550, wire_3525, wire_3524, wire_3505, wire_3504, wire_3495, wire_3494, wire_3467, wire_3466, wire_5657, wire_5656, wire_5637, wire_5636, wire_5619, wire_5618, wire_5599, wire_5598, wire_5579, wire_5578, wire_3279, wire_3278, wire_3261, wire_3260, wire_3241, wire_3240, wire_3221, wire_3220, wire_3203, wire_3202, wire_5917, wire_5916, wire_5897, wire_5896, wire_5877, wire_5876, wire_5859, wire_5858, wire_5847, wire_5846, wire_3539, wire_3538, wire_3527, wire_3526, wire_3501, wire_3500, wire_3481, wire_3480, wire_3471, wire_3470};
    // IPIN TOTAL: 150
    assign lut_tile_2_1_ipin_in = {wire_3557, wire_3556, wire_3537, wire_3536, wire_3527, wire_3526, wire_3499, wire_3498, wire_3487, wire_3486, wire_5941, wire_5940, wire_5929, wire_5928, wire_5919, wire_5918, wire_5891, wire_5890, wire_5879, wire_5878, wire_3817, wire_3816, wire_3805, wire_3804, wire_3777, wire_3776, wire_3767, wire_3766, wire_3739, wire_3738, wire_5685, wire_5684, wire_5665, wire_5664, wire_5645, wire_5644, wire_5615, wire_5614, wire_5589, wire_5588, wire_3559, wire_3558, wire_3533, wire_3532, wire_3513, wire_3512, wire_3503, wire_3502, wire_3475, wire_3474, wire_5959, wire_5958, wire_5949, wire_5948, wire_5905, wire_5904, wire_5867, wire_5866, wire_5855, wire_5854, wire_3811, wire_3810, wire_3799, wire_3798, wire_3781, wire_3780, wire_3753, wire_3752, wire_3743, wire_3742, wire_5693, wire_5692, wire_5679, wire_5678, wire_5641, wire_5640, wire_5621, wire_5620, wire_5591, wire_5590, wire_3547, wire_3546, wire_3535, wire_3534, wire_3509, wire_3508, wire_3489, wire_3488, wire_3469, wire_3468, wire_5953, wire_5952, wire_5943, wire_5942, wire_5927, wire_5926, wire_5881, wire_5880, wire_5843, wire_5842, wire_3813, wire_3812, wire_3787, wire_3786, wire_3775, wire_3774, wire_3757, wire_3756, wire_3729, wire_3728, wire_5687, wire_5686, wire_5663, wire_5662, wire_5617, wire_5616, wire_5597, wire_5596, wire_5577, wire_5576, wire_3541, wire_3540, wire_3523, wire_3522, wire_3511, wire_3510, wire_3483, wire_3482, wire_3465, wire_3464, wire_5937, wire_5936, wire_5915, wire_5914, wire_5903, wire_5902, wire_5875, wire_5874, wire_5857, wire_5856, wire_3801, wire_3800, wire_3789, wire_3788, wire_3763, wire_3762, wire_3751, wire_3750, wire_3733, wire_3732};
    // IPIN TOTAL: 150
    assign lut_tile_3_1_ipin_in = {wire_3819, wire_3818, wire_3807, wire_3806, wire_3789, wire_3788, wire_3761, wire_3760, wire_3749, wire_3748, wire_5983, wire_5982, wire_5955, wire_5954, wire_5945, wire_5944, wire_5889, wire_5888, wire_5859, wire_5858, wire_4087, wire_4086, wire_4067, wire_4066, wire_4047, wire_4046, wire_4029, wire_4028, wire_4001, wire_4000, wire_5705, wire_5704, wire_5689, wire_5688, wire_5675, wire_5674, wire_5671, wire_5670, wire_5625, wire_5624, wire_3821, wire_3820, wire_3795, wire_3794, wire_3783, wire_3782, wire_3765, wire_3764, wire_3737, wire_3736, wire_5977, wire_5976, wire_5939, wire_5938, wire_5931, wire_5930, wire_5891, wire_5890, wire_5865, wire_5864, wire_4073, wire_4072, wire_4061, wire_4060, wire_4043, wire_4042, wire_4023, wire_4022, wire_4005, wire_4004, wire_5699, wire_5698, wire_5683, wire_5682, wire_5657, wire_5656, wire_5647, wire_5646, wire_5601, wire_5600, wire_3809, wire_3808, wire_3797, wire_3796, wire_3771, wire_3770, wire_3759, wire_3758, wire_3731, wire_3730, wire_5971, wire_5970, wire_5957, wire_5956, wire_5907, wire_5906, wire_5867, wire_5866, wire_5841, wire_5840, wire_4075, wire_4074, wire_4049, wire_4048, wire_4037, wire_4036, wire_4019, wire_4018, wire_3999, wire_3998, wire_5717, wire_5716, wire_5677, wire_5676, wire_5633, wire_5632, wire_5623, wire_5622, wire_5583, wire_5582, wire_3803, wire_3802, wire_3785, wire_3784, wire_3773, wire_3772, wire_3745, wire_3744, wire_3735, wire_3734, wire_5965, wire_5964, wire_5951, wire_5950, wire_5913, wire_5912, wire_5873, wire_5872, wire_5843, wire_5842, wire_4071, wire_4070, wire_4051, wire_4050, wire_4025, wire_4024, wire_4013, wire_4012, wire_3995, wire_3994};
    // IPIN TOTAL: 150
    assign lut_tile_4_1_ipin_in = {wire_4081, wire_4080, wire_4069, wire_4068, wire_4051, wire_4050, wire_4031, wire_4030, wire_4011, wire_4010, wire_5989, wire_5988, wire_5973, wire_5972, wire_5959, wire_5958, wire_5915, wire_5914, wire_5875, wire_5874, wire_4349, wire_4348, wire_4329, wire_4328, wire_4309, wire_4308, wire_4291, wire_4290, wire_4271, wire_4270, wire_5733, wire_5732, wire_5719, wire_5718, wire_5681, wire_5680, wire_5641, wire_5640, wire_5585, wire_5584, wire_4083, wire_4082, wire_4057, wire_4056, wire_4045, wire_4044, wire_4027, wire_4026, wire_4007, wire_4006, wire_6007, wire_6006, wire_5997, wire_5996, wire_5967, wire_5966, wire_5953, wire_5952, wire_5851, wire_5850, wire_4343, wire_4342, wire_4323, wire_4322, wire_4305, wire_4304, wire_4285, wire_4284, wire_4267, wire_4266, wire_5741, wire_5740, wire_5727, wire_5726, wire_5713, wire_5712, wire_5675, wire_5674, wire_5617, wire_5616, wire_4079, wire_4078, wire_4059, wire_4058, wire_4033, wire_4032, wire_4021, wire_4020, wire_3993, wire_3992, wire_6001, wire_6000, wire_5991, wire_5990, wire_5961, wire_5960, wire_5947, wire_5946, wire_5923, wire_5922, wire_4337, wire_4336, wire_4319, wire_4318, wire_4299, wire_4298, wire_4281, wire_4280, wire_4261, wire_4260, wire_5735, wire_5734, wire_5707, wire_5706, wire_5697, wire_5696, wire_5693, wire_5692, wire_5593, wire_5592, wire_4065, wire_4064, wire_4055, wire_4054, wire_4035, wire_4034, wire_4015, wire_4014, wire_3997, wire_3996, wire_5985, wire_5984, wire_5979, wire_5978, wire_5969, wire_5968, wire_5941, wire_5940, wire_5899, wire_5898, wire_4333, wire_4332, wire_4313, wire_4312, wire_4295, wire_4294, wire_4275, wire_4274, wire_4257, wire_4256};
    // IPIN TOTAL: 150
    assign lut_tile_5_1_ipin_in = {wire_4351, wire_4350, wire_4331, wire_4330, wire_4313, wire_4312, wire_4293, wire_4292, wire_4273, wire_4272, wire_6031, wire_6030, wire_6003, wire_6002, wire_5993, wire_5992, wire_5965, wire_5964, wire_5949, wire_5948, wire_4611, wire_4610, wire_4599, wire_4598, wire_4571, wire_4570, wire_4553, wire_4552, wire_4533, wire_4532, wire_5753, wire_5752, wire_5737, wire_5736, wire_5723, wire_5722, wire_5709, wire_5708, wire_5695, wire_5694, wire_4345, wire_4344, wire_4327, wire_4326, wire_4307, wire_4306, wire_4289, wire_4288, wire_4269, wire_4268, wire_6025, wire_6024, wire_5987, wire_5986, wire_5983, wire_5982, wire_5973, wire_5972, wire_5943, wire_5942, wire_4605, wire_4604, wire_4585, wire_4584, wire_4575, wire_4574, wire_4547, wire_4546, wire_4529, wire_4528, wire_5747, wire_5746, wire_5731, wire_5730, wire_5717, wire_5716, wire_5703, wire_5702, wire_5689, wire_5688, wire_4341, wire_4340, wire_4321, wire_4320, wire_4303, wire_4302, wire_4283, wire_4282, wire_4263, wire_4262, wire_6019, wire_6018, wire_6005, wire_6004, wire_5977, wire_5976, wire_5967, wire_5966, wire_5937, wire_5936, wire_4607, wire_4606, wire_4581, wire_4580, wire_4561, wire_4560, wire_4551, wire_4550, wire_4523, wire_4522, wire_5765, wire_5764, wire_5725, wire_5724, wire_5711, wire_5710, wire_5683, wire_5682, wire_5673, wire_5672, wire_4335, wire_4334, wire_4317, wire_4316, wire_4297, wire_4296, wire_4277, wire_4276, wire_4259, wire_4258, wire_6013, wire_6012, wire_5999, wire_5998, wire_5961, wire_5960, wire_5955, wire_5954, wire_5945, wire_5944, wire_4595, wire_4594, wire_4583, wire_4582, wire_4557, wire_4556, wire_4537, wire_4536, wire_4527, wire_4526};
    // IPIN TOTAL: 150
    assign lut_tile_6_1_ipin_in = {wire_4613, wire_4612, wire_4593, wire_4592, wire_4583, wire_4582, wire_4555, wire_4554, wire_4543, wire_4542, wire_6037, wire_6036, wire_6021, wire_6020, wire_6007, wire_6006, wire_5979, wire_5978, wire_5969, wire_5968, wire_4873, wire_4872, wire_4861, wire_4860, wire_4833, wire_4832, wire_4823, wire_4822, wire_4795, wire_4794, wire_5781, wire_5780, wire_5767, wire_5766, wire_5729, wire_5728, wire_5713, wire_5712, wire_5699, wire_5698, wire_4615, wire_4614, wire_4589, wire_4588, wire_4569, wire_4568, wire_4559, wire_4558, wire_4531, wire_4530, wire_6055, wire_6054, wire_6045, wire_6044, wire_6015, wire_6014, wire_6001, wire_6000, wire_5963, wire_5962, wire_4867, wire_4866, wire_4855, wire_4854, wire_4837, wire_4836, wire_4809, wire_4808, wire_4799, wire_4798, wire_5789, wire_5788, wire_5775, wire_5774, wire_5761, wire_5760, wire_5723, wire_5722, wire_5707, wire_5706, wire_4603, wire_4602, wire_4591, wire_4590, wire_4565, wire_4564, wire_4545, wire_4544, wire_4525, wire_4524, wire_6049, wire_6048, wire_6039, wire_6038, wire_6009, wire_6008, wire_5995, wire_5994, wire_5981, wire_5980, wire_4869, wire_4868, wire_4843, wire_4842, wire_4831, wire_4830, wire_4813, wire_4812, wire_4785, wire_4784, wire_5783, wire_5782, wire_5755, wire_5754, wire_5745, wire_5744, wire_5741, wire_5740, wire_5701, wire_5700, wire_4597, wire_4596, wire_4579, wire_4578, wire_4567, wire_4566, wire_4539, wire_4538, wire_4521, wire_4520, wire_6033, wire_6032, wire_6027, wire_6026, wire_6017, wire_6016, wire_5989, wire_5988, wire_5975, wire_5974, wire_4857, wire_4856, wire_4845, wire_4844, wire_4819, wire_4818, wire_4807, wire_4806, wire_4789, wire_4788};
    // IPIN TOTAL: 150
    assign lut_tile_7_1_ipin_in = {wire_4875, wire_4874, wire_4863, wire_4862, wire_4845, wire_4844, wire_4817, wire_4816, wire_4805, wire_4804, wire_6079, wire_6078, wire_6051, wire_6050, wire_6041, wire_6040, wire_6013, wire_6012, wire_5997, wire_5996, wire_5143, wire_5142, wire_5123, wire_5122, wire_5103, wire_5102, wire_5085, wire_5084, wire_5057, wire_5056, wire_5801, wire_5800, wire_5785, wire_5784, wire_5771, wire_5770, wire_5757, wire_5756, wire_5743, wire_5742, wire_4877, wire_4876, wire_4851, wire_4850, wire_4839, wire_4838, wire_4821, wire_4820, wire_4793, wire_4792, wire_6073, wire_6072, wire_6035, wire_6034, wire_6031, wire_6030, wire_6021, wire_6020, wire_5991, wire_5990, wire_5129, wire_5128, wire_5117, wire_5116, wire_5099, wire_5098, wire_5079, wire_5078, wire_5061, wire_5060, wire_5795, wire_5794, wire_5779, wire_5778, wire_5765, wire_5764, wire_5751, wire_5750, wire_5737, wire_5736, wire_4865, wire_4864, wire_4853, wire_4852, wire_4827, wire_4826, wire_4815, wire_4814, wire_4787, wire_4786, wire_6067, wire_6066, wire_6053, wire_6052, wire_6025, wire_6024, wire_6015, wire_6014, wire_5985, wire_5984, wire_5131, wire_5130, wire_5105, wire_5104, wire_5093, wire_5092, wire_5075, wire_5074, wire_5055, wire_5054, wire_5813, wire_5812, wire_5773, wire_5772, wire_5759, wire_5758, wire_5731, wire_5730, wire_5721, wire_5720, wire_4859, wire_4858, wire_4841, wire_4840, wire_4829, wire_4828, wire_4801, wire_4800, wire_4791, wire_4790, wire_6061, wire_6060, wire_6047, wire_6046, wire_6009, wire_6008, wire_6003, wire_6002, wire_5993, wire_5992, wire_5127, wire_5126, wire_5107, wire_5106, wire_5081, wire_5080, wire_5069, wire_5068, wire_5051, wire_5050};
    // IPIN TOTAL: 150
    assign lut_tile_8_1_ipin_in = {wire_5137, wire_5136, wire_5125, wire_5124, wire_5107, wire_5106, wire_5087, wire_5086, wire_5067, wire_5066, wire_6085, wire_6084, wire_6069, wire_6068, wire_6055, wire_6054, wire_6027, wire_6026, wire_6017, wire_6016, wire_5405, wire_5404, wire_5385, wire_5384, wire_5365, wire_5364, wire_5347, wire_5346, wire_5327, wire_5326, wire_5829, wire_5828, wire_5815, wire_5814, wire_5777, wire_5776, wire_5761, wire_5760, wire_5747, wire_5746, wire_5139, wire_5138, wire_5113, wire_5112, wire_5101, wire_5100, wire_5083, wire_5082, wire_5063, wire_5062, wire_6103, wire_6102, wire_6093, wire_6092, wire_6063, wire_6062, wire_6049, wire_6048, wire_6011, wire_6010, wire_5399, wire_5398, wire_5379, wire_5378, wire_5361, wire_5360, wire_5341, wire_5340, wire_5323, wire_5322, wire_5837, wire_5836, wire_5823, wire_5822, wire_5809, wire_5808, wire_5771, wire_5770, wire_5755, wire_5754, wire_5135, wire_5134, wire_5115, wire_5114, wire_5089, wire_5088, wire_5077, wire_5076, wire_5049, wire_5048, wire_6097, wire_6096, wire_6087, wire_6086, wire_6057, wire_6056, wire_6043, wire_6042, wire_6029, wire_6028, wire_5393, wire_5392, wire_5375, wire_5374, wire_5355, wire_5354, wire_5337, wire_5336, wire_5317, wire_5316, wire_5831, wire_5830, wire_5803, wire_5802, wire_5793, wire_5792, wire_5789, wire_5788, wire_5749, wire_5748, wire_5121, wire_5120, wire_5111, wire_5110, wire_5091, wire_5090, wire_5071, wire_5070, wire_5053, wire_5052, wire_6081, wire_6080, wire_6075, wire_6074, wire_6065, wire_6064, wire_6037, wire_6036, wire_6023, wire_6022, wire_5389, wire_5388, wire_5369, wire_5368, wire_5351, wire_5350, wire_5331, wire_5330, wire_5313, wire_5312};
    // IPIN TOTAL: 150
    assign lut_tile_1_2_ipin_in = {wire_3305, wire_3304, wire_3293, wire_3292, wire_3273, wire_3272, wire_3263, wire_3262, wire_3223, wire_3222, wire_6193, wire_6192, wire_6183, wire_6182, wire_6155, wire_6154, wire_6143, wire_6142, wire_6125, wire_6124, wire_3579, wire_3578, wire_3553, wire_3552, wire_3513, wire_3512, wire_3503, wire_3502, wire_3475, wire_3474, wire_5929, wire_5928, wire_5909, wire_5908, wire_5891, wire_5890, wire_5879, wire_5878, wire_5853, wire_5852, wire_3299, wire_3298, wire_3295, wire_3294, wire_3269, wire_3268, wire_3249, wire_3248, wire_3239, wire_3238, wire_6197, wire_6196, wire_6169, wire_6168, wire_6157, wire_6156, wire_6131, wire_6130, wire_6119, wire_6118, wire_3573, wire_3572, wire_3547, wire_3546, wire_3535, wire_3534, wire_3489, wire_3488, wire_3479, wire_3478, wire_5923, wire_5922, wire_5905, wire_5904, wire_5885, wire_5884, wire_5867, wire_5866, wire_5855, wire_5854, wire_3317, wire_3316, wire_3271, wire_3270, wire_3245, wire_3244, wire_3225, wire_3224, wire_3205, wire_3204, wire_6191, wire_6190, wire_6173, wire_6172, wire_6145, wire_6144, wire_6133, wire_6132, wire_6107, wire_6106, wire_3581, wire_3580, wire_3567, wire_3566, wire_3523, wire_3522, wire_3511, wire_3510, wire_3465, wire_3464, wire_5927, wire_5926, wire_5899, wire_5898, wire_5881, wire_5880, wire_5861, wire_5860, wire_5841, wire_5840, wire_3311, wire_3310, wire_3301, wire_3300, wire_3277, wire_3276, wire_3247, wire_3246, wire_3201, wire_3200, wire_6179, wire_6178, wire_6167, wire_6166, wire_6139, wire_6138, wire_6121, wire_6120, wire_6109, wire_6108, wire_3575, wire_3574, wire_3561, wire_3560, wire_3537, wire_3536, wire_3499, wire_3498, wire_3487, wire_3486};
    // IPIN TOTAL: 150
    assign lut_tile_2_2_ipin_in = {wire_3575, wire_3574, wire_3565, wire_3564, wire_3555, wire_3554, wire_3543, wire_3542, wire_3497, wire_3496, wire_6223, wire_6222, wire_6181, wire_6180, wire_6153, wire_6152, wire_6141, wire_6140, wire_6123, wire_6122, wire_3847, wire_3846, wire_3837, wire_3836, wire_3803, wire_3802, wire_3765, wire_3764, wire_3737, wire_3736, wire_5945, wire_5944, wire_5935, wire_5934, wire_5907, wire_5906, wire_5889, wire_5888, wire_5851, wire_5850, wire_3583, wire_3582, wire_3569, wire_3568, wire_3531, wire_3530, wire_3519, wire_3518, wire_3473, wire_3472, wire_6217, wire_6216, wire_6195, wire_6194, wire_6155, wire_6154, wire_6129, wire_6128, wire_6117, wire_6116, wire_3831, wire_3830, wire_3809, wire_3808, wire_3797, wire_3796, wire_3779, wire_3778, wire_3741, wire_3740, wire_5939, wire_5938, wire_5921, wire_5920, wire_5911, wire_5910, wire_5883, wire_5882, wire_5865, wire_5864, wire_3577, wire_3576, wire_3545, wire_3544, wire_3507, wire_3506, wire_3495, wire_3494, wire_3467, wire_3466, wire_6211, wire_6210, wire_6189, wire_6188, wire_6171, wire_6170, wire_6131, wire_6130, wire_6105, wire_6104, wire_3825, wire_3824, wire_3811, wire_3810, wire_3785, wire_3784, wire_3773, wire_3772, wire_3755, wire_3754, wire_5957, wire_5956, wire_5897, wire_5896, wire_5887, wire_5886, wire_5859, wire_5858, wire_5847, wire_5846, wire_3571, wire_3570, wire_3539, wire_3538, wire_3521, wire_3520, wire_3481, wire_3480, wire_3471, wire_3470, wire_6205, wire_6204, wire_6177, wire_6176, wire_6165, wire_6164, wire_6137, wire_6136, wire_6107, wire_6106, wire_3843, wire_3842, wire_3787, wire_3786, wire_3761, wire_3760, wire_3749, wire_3748, wire_3731, wire_3730};
    // IPIN TOTAL: 150
    assign lut_tile_3_2_ipin_in = {wire_3833, wire_3832, wire_3817, wire_3816, wire_3805, wire_3804, wire_3787, wire_3786, wire_3747, wire_3746, wire_6229, wire_6228, wire_6213, wire_6212, wire_6197, wire_6196, wire_6179, wire_6178, wire_6139, wire_6138, wire_4107, wire_4106, wire_4085, wire_4084, wire_4045, wire_4044, wire_4027, wire_4026, wire_4007, wire_4006, wire_5973, wire_5972, wire_5959, wire_5958, wire_5905, wire_5904, wire_5875, wire_5874, wire_5849, wire_5848, wire_3827, wire_3826, wire_3819, wire_3818, wire_3793, wire_3792, wire_3781, wire_3780, wire_3763, wire_3762, wire_6247, wire_6246, wire_6237, wire_6236, wire_6207, wire_6206, wire_6173, wire_6172, wire_6115, wire_6114, wire_4101, wire_4100, wire_4079, wire_4078, wire_4059, wire_4058, wire_4021, wire_4020, wire_4003, wire_4002, wire_5981, wire_5980, wire_5967, wire_5966, wire_5953, wire_5952, wire_5881, wire_5880, wire_5851, wire_5850, wire_3845, wire_3844, wire_3795, wire_3794, wire_3769, wire_3768, wire_3757, wire_3756, wire_3729, wire_3728, wire_6241, wire_6240, wire_6231, wire_6230, wire_6201, wire_6200, wire_6187, wire_6186, wire_6149, wire_6148, wire_4109, wire_4108, wire_4095, wire_4094, wire_4055, wire_4054, wire_4035, wire_4034, wire_3997, wire_3996, wire_5975, wire_5974, wire_5947, wire_5946, wire_5937, wire_5936, wire_5923, wire_5922, wire_5857, wire_5856, wire_3839, wire_3838, wire_3829, wire_3828, wire_3801, wire_3800, wire_3771, wire_3770, wire_3733, wire_3732, wire_6225, wire_6224, wire_6219, wire_6218, wire_6209, wire_6208, wire_6163, wire_6162, wire_6125, wire_6124, wire_4103, wire_4102, wire_4089, wire_4088, wire_4069, wire_4068, wire_4031, wire_4030, wire_4011, wire_4010};
    // IPIN TOTAL: 150
    assign lut_tile_4_2_ipin_in = {wire_4103, wire_4102, wire_4093, wire_4092, wire_4087, wire_4086, wire_4067, wire_4066, wire_4029, wire_4028, wire_6271, wire_6270, wire_6243, wire_6242, wire_6233, wire_6232, wire_6205, wire_6204, wire_6157, wire_6156, wire_4375, wire_4374, wire_4365, wire_4364, wire_4335, wire_4334, wire_4289, wire_4288, wire_4269, wire_4268, wire_5993, wire_5992, wire_5977, wire_5976, wire_5963, wire_5962, wire_5949, wire_5948, wire_5931, wire_5930, wire_4111, wire_4110, wire_4097, wire_4096, wire_4063, wire_4062, wire_4043, wire_4042, wire_4005, wire_4004, wire_6265, wire_6264, wire_6227, wire_6226, wire_6223, wire_6222, wire_6213, wire_6212, wire_6133, wire_6132, wire_4359, wire_4358, wire_4341, wire_4340, wire_4321, wire_4320, wire_4311, wire_4310, wire_4265, wire_4264, wire_5987, wire_5986, wire_5971, wire_5970, wire_5957, wire_5956, wire_5943, wire_5942, wire_5907, wire_5906, wire_4105, wire_4104, wire_4077, wire_4076, wire_4039, wire_4038, wire_4019, wire_4018, wire_3999, wire_3998, wire_6259, wire_6258, wire_6245, wire_6244, wire_6217, wire_6216, wire_6207, wire_6206, wire_6109, wire_6108, wire_4353, wire_4352, wire_4343, wire_4342, wire_4317, wire_4316, wire_4297, wire_4296, wire_4287, wire_4286, wire_6005, wire_6004, wire_5965, wire_5964, wire_5951, wire_5950, wire_5883, wire_5882, wire_5843, wire_5842, wire_4099, wire_4098, wire_4071, wire_4070, wire_4053, wire_4052, wire_4013, wire_4012, wire_3995, wire_3994, wire_6253, wire_6252, wire_6239, wire_6238, wire_6201, wire_6200, wire_6181, wire_6180, wire_6141, wire_6140, wire_4371, wire_4370, wire_4319, wire_4318, wire_4293, wire_4292, wire_4273, wire_4272, wire_4263, wire_4262};
    // IPIN TOTAL: 150
    assign lut_tile_5_2_ipin_in = {wire_4361, wire_4360, wire_4349, wire_4348, wire_4329, wire_4328, wire_4319, wire_4318, wire_4279, wire_4278, wire_6277, wire_6276, wire_6261, wire_6260, wire_6247, wire_6246, wire_6219, wire_6218, wire_6209, wire_6208, wire_4635, wire_4634, wire_4609, wire_4608, wire_4569, wire_4568, wire_4559, wire_4558, wire_4531, wire_4530, wire_6021, wire_6020, wire_6007, wire_6006, wire_5969, wire_5968, wire_5953, wire_5952, wire_5939, wire_5938, wire_4355, wire_4354, wire_4351, wire_4350, wire_4325, wire_4324, wire_4305, wire_4304, wire_4295, wire_4294, wire_6295, wire_6294, wire_6285, wire_6284, wire_6255, wire_6254, wire_6241, wire_6240, wire_6203, wire_6202, wire_4629, wire_4628, wire_4603, wire_4602, wire_4591, wire_4590, wire_4545, wire_4544, wire_4535, wire_4534, wire_6029, wire_6028, wire_6015, wire_6014, wire_6001, wire_6000, wire_5963, wire_5962, wire_5947, wire_5946, wire_4373, wire_4372, wire_4327, wire_4326, wire_4301, wire_4300, wire_4281, wire_4280, wire_4261, wire_4260, wire_6289, wire_6288, wire_6279, wire_6278, wire_6249, wire_6248, wire_6235, wire_6234, wire_6221, wire_6220, wire_4637, wire_4636, wire_4623, wire_4622, wire_4579, wire_4578, wire_4567, wire_4566, wire_4521, wire_4520, wire_6023, wire_6022, wire_5995, wire_5994, wire_5985, wire_5984, wire_5981, wire_5980, wire_5941, wire_5940, wire_4367, wire_4366, wire_4357, wire_4356, wire_4333, wire_4332, wire_4303, wire_4302, wire_4257, wire_4256, wire_6273, wire_6272, wire_6267, wire_6266, wire_6257, wire_6256, wire_6229, wire_6228, wire_6215, wire_6214, wire_4631, wire_4630, wire_4617, wire_4616, wire_4593, wire_4592, wire_4555, wire_4554, wire_4543, wire_4542};
    // IPIN TOTAL: 150
    assign lut_tile_6_2_ipin_in = {wire_4631, wire_4630, wire_4621, wire_4620, wire_4611, wire_4610, wire_4599, wire_4598, wire_4553, wire_4552, wire_6319, wire_6318, wire_6291, wire_6290, wire_6281, wire_6280, wire_6253, wire_6252, wire_6237, wire_6236, wire_4903, wire_4902, wire_4893, wire_4892, wire_4859, wire_4858, wire_4821, wire_4820, wire_4793, wire_4792, wire_6041, wire_6040, wire_6025, wire_6024, wire_6011, wire_6010, wire_5997, wire_5996, wire_5983, wire_5982, wire_4639, wire_4638, wire_4625, wire_4624, wire_4587, wire_4586, wire_4575, wire_4574, wire_4529, wire_4528, wire_6313, wire_6312, wire_6275, wire_6274, wire_6271, wire_6270, wire_6261, wire_6260, wire_6231, wire_6230, wire_4887, wire_4886, wire_4865, wire_4864, wire_4853, wire_4852, wire_4835, wire_4834, wire_4797, wire_4796, wire_6035, wire_6034, wire_6019, wire_6018, wire_6005, wire_6004, wire_5991, wire_5990, wire_5977, wire_5976, wire_4633, wire_4632, wire_4601, wire_4600, wire_4563, wire_4562, wire_4551, wire_4550, wire_4523, wire_4522, wire_6307, wire_6306, wire_6293, wire_6292, wire_6265, wire_6264, wire_6255, wire_6254, wire_6225, wire_6224, wire_4881, wire_4880, wire_4867, wire_4866, wire_4841, wire_4840, wire_4829, wire_4828, wire_4811, wire_4810, wire_6053, wire_6052, wire_6013, wire_6012, wire_5999, wire_5998, wire_5971, wire_5970, wire_5961, wire_5960, wire_4627, wire_4626, wire_4595, wire_4594, wire_4577, wire_4576, wire_4537, wire_4536, wire_4527, wire_4526, wire_6301, wire_6300, wire_6287, wire_6286, wire_6249, wire_6248, wire_6243, wire_6242, wire_6233, wire_6232, wire_4899, wire_4898, wire_4843, wire_4842, wire_4817, wire_4816, wire_4805, wire_4804, wire_4787, wire_4786};
    // IPIN TOTAL: 150
    assign lut_tile_7_2_ipin_in = {wire_4889, wire_4888, wire_4873, wire_4872, wire_4861, wire_4860, wire_4843, wire_4842, wire_4803, wire_4802, wire_6325, wire_6324, wire_6309, wire_6308, wire_6295, wire_6294, wire_6267, wire_6266, wire_6257, wire_6256, wire_5163, wire_5162, wire_5141, wire_5140, wire_5101, wire_5100, wire_5083, wire_5082, wire_5063, wire_5062, wire_6069, wire_6068, wire_6055, wire_6054, wire_6017, wire_6016, wire_6001, wire_6000, wire_5987, wire_5986, wire_4883, wire_4882, wire_4875, wire_4874, wire_4849, wire_4848, wire_4837, wire_4836, wire_4819, wire_4818, wire_6343, wire_6342, wire_6333, wire_6332, wire_6303, wire_6302, wire_6289, wire_6288, wire_6251, wire_6250, wire_5157, wire_5156, wire_5135, wire_5134, wire_5115, wire_5114, wire_5077, wire_5076, wire_5059, wire_5058, wire_6077, wire_6076, wire_6063, wire_6062, wire_6049, wire_6048, wire_6011, wire_6010, wire_5995, wire_5994, wire_4901, wire_4900, wire_4851, wire_4850, wire_4825, wire_4824, wire_4813, wire_4812, wire_4785, wire_4784, wire_6337, wire_6336, wire_6327, wire_6326, wire_6297, wire_6296, wire_6283, wire_6282, wire_6269, wire_6268, wire_5165, wire_5164, wire_5151, wire_5150, wire_5111, wire_5110, wire_5091, wire_5090, wire_5053, wire_5052, wire_6071, wire_6070, wire_6043, wire_6042, wire_6033, wire_6032, wire_6029, wire_6028, wire_5989, wire_5988, wire_4895, wire_4894, wire_4885, wire_4884, wire_4857, wire_4856, wire_4827, wire_4826, wire_4789, wire_4788, wire_6321, wire_6320, wire_6315, wire_6314, wire_6305, wire_6304, wire_6277, wire_6276, wire_6263, wire_6262, wire_5159, wire_5158, wire_5145, wire_5144, wire_5125, wire_5124, wire_5087, wire_5086, wire_5067, wire_5066};
    // IPIN TOTAL: 150
    assign lut_tile_8_2_ipin_in = {wire_5159, wire_5158, wire_5149, wire_5148, wire_5143, wire_5142, wire_5123, wire_5122, wire_5085, wire_5084, wire_6367, wire_6366, wire_6339, wire_6338, wire_6329, wire_6328, wire_6301, wire_6300, wire_6285, wire_6284, wire_5431, wire_5430, wire_5421, wire_5420, wire_5391, wire_5390, wire_5345, wire_5344, wire_5325, wire_5324, wire_6089, wire_6088, wire_6073, wire_6072, wire_6059, wire_6058, wire_6045, wire_6044, wire_6031, wire_6030, wire_5167, wire_5166, wire_5153, wire_5152, wire_5119, wire_5118, wire_5099, wire_5098, wire_5061, wire_5060, wire_6361, wire_6360, wire_6323, wire_6322, wire_6319, wire_6318, wire_6309, wire_6308, wire_6279, wire_6278, wire_5415, wire_5414, wire_5397, wire_5396, wire_5377, wire_5376, wire_5367, wire_5366, wire_5321, wire_5320, wire_6083, wire_6082, wire_6067, wire_6066, wire_6053, wire_6052, wire_6039, wire_6038, wire_6025, wire_6024, wire_5161, wire_5160, wire_5133, wire_5132, wire_5095, wire_5094, wire_5075, wire_5074, wire_5055, wire_5054, wire_6355, wire_6354, wire_6341, wire_6340, wire_6313, wire_6312, wire_6303, wire_6302, wire_6273, wire_6272, wire_5409, wire_5408, wire_5399, wire_5398, wire_5373, wire_5372, wire_5353, wire_5352, wire_5343, wire_5342, wire_6101, wire_6100, wire_6061, wire_6060, wire_6047, wire_6046, wire_6019, wire_6018, wire_6009, wire_6008, wire_5155, wire_5154, wire_5127, wire_5126, wire_5109, wire_5108, wire_5069, wire_5068, wire_5051, wire_5050, wire_6349, wire_6348, wire_6335, wire_6334, wire_6297, wire_6296, wire_6291, wire_6290, wire_6281, wire_6280, wire_5427, wire_5426, wire_5375, wire_5374, wire_5349, wire_5348, wire_5329, wire_5328, wire_5319, wire_5318};
    // IPIN TOTAL: 150
    assign lut_tile_1_3_ipin_in = {wire_3335, wire_3334, wire_3325, wire_3324, wire_3319, wire_3318, wire_3279, wire_3278, wire_3233, wire_3232, wire_6463, wire_6462, wire_6445, wire_6444, wire_6417, wire_6416, wire_6405, wire_6404, wire_6387, wire_6386, wire_3607, wire_3606, wire_3597, wire_3596, wire_3569, wire_3568, wire_3539, wire_3538, wire_3473, wire_3472, wire_6199, wire_6198, wire_6171, wire_6170, wire_6153, wire_6152, wire_6141, wire_6140, wire_6115, wire_6114, wire_3343, wire_3342, wire_3329, wire_3328, wire_3313, wire_3312, wire_3255, wire_3254, wire_3209, wire_3208, wire_6459, wire_6458, wire_6439, wire_6438, wire_6419, wire_6418, wire_6393, wire_6392, wire_6381, wire_6380, wire_3591, wire_3590, wire_3577, wire_3576, wire_3563, wire_3562, wire_3545, wire_3544, wire_3515, wire_3514, wire_6185, wire_6184, wire_6175, wire_6174, wire_6147, wire_6146, wire_6129, wire_6128, wire_6117, wire_6116, wire_3337, wire_3336, wire_3307, wire_3306, wire_3297, wire_3296, wire_3281, wire_3280, wire_3231, wire_3230, wire_6453, wire_6452, wire_6435, wire_6434, wire_6415, wire_6414, wire_6395, wire_6394, wire_6369, wire_6368, wire_3585, wire_3584, wire_3571, wire_3570, wire_3547, wire_3546, wire_3521, wire_3520, wire_3491, wire_3490, wire_6189, wire_6188, wire_6161, wire_6160, wire_6151, wire_6150, wire_6123, wire_6122, wire_6111, wire_6110, wire_3331, wire_3330, wire_3315, wire_3314, wire_3257, wire_3256, wire_3217, wire_3216, wire_3207, wire_3206, wire_6441, wire_6440, wire_6429, wire_6428, wire_6401, wire_6400, wire_6391, wire_6390, wire_6371, wire_6370, wire_3603, wire_3602, wire_3565, wire_3564, wire_3523, wire_3522, wire_3497, wire_3496, wire_3467, wire_3466};
    // IPIN TOTAL: 150
    assign lut_tile_2_3_ipin_in = {wire_3593, wire_3592, wire_3579, wire_3578, wire_3553, wire_3552, wire_3523, wire_3522, wire_3483, wire_3482, wire_6469, wire_6468, wire_6461, wire_6460, wire_6443, wire_6442, wire_6423, wire_6422, wire_6403, wire_6402, wire_3867, wire_3866, wire_3827, wire_3826, wire_3821, wire_3820, wire_3781, wire_3780, wire_3763, wire_3762, wire_6213, wire_6212, wire_6197, wire_6196, wire_6169, wire_6168, wire_6139, wire_6138, wire_6113, wire_6112, wire_3587, wire_3586, wire_3573, wire_3572, wire_3555, wire_3554, wire_3529, wire_3528, wire_3499, wire_3498, wire_6487, wire_6486, wire_6477, wire_6476, wire_6437, wire_6436, wire_6399, wire_6398, wire_6379, wire_6378, wire_3861, wire_3860, wire_3845, wire_3844, wire_3795, wire_3794, wire_3757, wire_3756, wire_3739, wire_3738, wire_6221, wire_6220, wire_6207, wire_6206, wire_6173, wire_6172, wire_6145, wire_6144, wire_6115, wire_6114, wire_3605, wire_3604, wire_3567, wire_3566, wire_3531, wire_3530, wire_3505, wire_3504, wire_3465, wire_3464, wire_6481, wire_6480, wire_6471, wire_6470, wire_6451, wire_6450, wire_6413, wire_6412, wire_6375, wire_6374, wire_3869, wire_3868, wire_3855, wire_3854, wire_3839, wire_3838, wire_3771, wire_3770, wire_3733, wire_3732, wire_6215, wire_6214, wire_6187, wire_6186, wire_6149, wire_6148, wire_6121, wire_6120, wire_6109, wire_6108, wire_3599, wire_3598, wire_3589, wire_3588, wire_3561, wire_3560, wire_3537, wire_3536, wire_3507, wire_3506, wire_6465, wire_6464, wire_6447, wire_6446, wire_6427, wire_6426, wire_6407, wire_6406, wire_6389, wire_6388, wire_3863, wire_3862, wire_3849, wire_3848, wire_3833, wire_3832, wire_3805, wire_3804, wire_3747, wire_3746};
    // IPIN TOTAL: 150
    assign lut_tile_3_3_ipin_in = {wire_3863, wire_3862, wire_3853, wire_3852, wire_3847, wire_3846, wire_3803, wire_3802, wire_3765, wire_3764, wire_6511, wire_6510, wire_6483, wire_6482, wire_6473, wire_6472, wire_6421, wire_6420, wire_6391, wire_6390, wire_4135, wire_4134, wire_4125, wire_4124, wire_4097, wire_4096, wire_4071, wire_4070, wire_4005, wire_4004, wire_6233, wire_6232, wire_6217, wire_6216, wire_6203, wire_6202, wire_6195, wire_6194, wire_6157, wire_6156, wire_3871, wire_3870, wire_3857, wire_3856, wire_3841, wire_3840, wire_3779, wire_3778, wire_3741, wire_3740, wire_6505, wire_6504, wire_6467, wire_6466, wire_6463, wire_6462, wire_6423, wire_6422, wire_6397, wire_6396, wire_4119, wire_4118, wire_4105, wire_4104, wire_4091, wire_4090, wire_4077, wire_4076, wire_4047, wire_4046, wire_6227, wire_6226, wire_6211, wire_6210, wire_6189, wire_6188, wire_6171, wire_6170, wire_6133, wire_6132, wire_3865, wire_3864, wire_3835, wire_3834, wire_3825, wire_3824, wire_3813, wire_3812, wire_3755, wire_3754, wire_6499, wire_6498, wire_6485, wire_6484, wire_6439, wire_6438, wire_6399, wire_6398, wire_6373, wire_6372, wire_4113, wire_4112, wire_4099, wire_4098, wire_4079, wire_4078, wire_4053, wire_4052, wire_4023, wire_4022, wire_6245, wire_6244, wire_6205, wire_6204, wire_6165, wire_6164, wire_6147, wire_6146, wire_6107, wire_6106, wire_3859, wire_3858, wire_3843, wire_3842, wire_3789, wire_3788, wire_3749, wire_3748, wire_3731, wire_3730, wire_6493, wire_6492, wire_6479, wire_6478, wire_6445, wire_6444, wire_6405, wire_6404, wire_6375, wire_6374, wire_4131, wire_4130, wire_4093, wire_4092, wire_4055, wire_4054, wire_4029, wire_4028, wire_3999, wire_3998};
    // IPIN TOTAL: 150
    assign lut_tile_4_3_ipin_in = {wire_4121, wire_4120, wire_4107, wire_4106, wire_4085, wire_4084, wire_4055, wire_4054, wire_4015, wire_4014, wire_6517, wire_6516, wire_6501, wire_6500, wire_6487, wire_6486, wire_6447, wire_6446, wire_6407, wire_6406, wire_4395, wire_4394, wire_4355, wire_4354, wire_4345, wire_4344, wire_4305, wire_4304, wire_4295, wire_4294, wire_6261, wire_6260, wire_6247, wire_6246, wire_6209, wire_6208, wire_6173, wire_6172, wire_6117, wire_6116, wire_4115, wire_4114, wire_4101, wire_4100, wire_4087, wire_4086, wire_4061, wire_4060, wire_4031, wire_4030, wire_6535, wire_6534, wire_6525, wire_6524, wire_6495, wire_6494, wire_6481, wire_6480, wire_6383, wire_6382, wire_4389, wire_4388, wire_4373, wire_4372, wire_4327, wire_4326, wire_4281, wire_4280, wire_4271, wire_4270, wire_6269, wire_6268, wire_6255, wire_6254, wire_6241, wire_6240, wire_6203, wire_6202, wire_6149, wire_6148, wire_4133, wire_4132, wire_4095, wire_4094, wire_4063, wire_4062, wire_4037, wire_4036, wire_3997, wire_3996, wire_6529, wire_6528, wire_6519, wire_6518, wire_6489, wire_6488, wire_6475, wire_6474, wire_6455, wire_6454, wire_4397, wire_4396, wire_4383, wire_4382, wire_4367, wire_4366, wire_4303, wire_4302, wire_4257, wire_4256, wire_6263, wire_6262, wire_6235, wire_6234, wire_6225, wire_6224, wire_6221, wire_6220, wire_6125, wire_6124, wire_4127, wire_4126, wire_4117, wire_4116, wire_4089, wire_4088, wire_4069, wire_4068, wire_4039, wire_4038, wire_6513, wire_6512, wire_6507, wire_6506, wire_6497, wire_6496, wire_6469, wire_6468, wire_6431, wire_6430, wire_4391, wire_4390, wire_4377, wire_4376, wire_4361, wire_4360, wire_4329, wire_4328, wire_4279, wire_4278};
    // IPIN TOTAL: 150
    assign lut_tile_5_3_ipin_in = {wire_4391, wire_4390, wire_4381, wire_4380, wire_4375, wire_4374, wire_4335, wire_4334, wire_4289, wire_4288, wire_6559, wire_6558, wire_6531, wire_6530, wire_6521, wire_6520, wire_6493, wire_6492, wire_6477, wire_6476, wire_4663, wire_4662, wire_4653, wire_4652, wire_4625, wire_4624, wire_4595, wire_4594, wire_4529, wire_4528, wire_6281, wire_6280, wire_6265, wire_6264, wire_6251, wire_6250, wire_6237, wire_6236, wire_6223, wire_6222, wire_4399, wire_4398, wire_4385, wire_4384, wire_4369, wire_4368, wire_4311, wire_4310, wire_4265, wire_4264, wire_6553, wire_6552, wire_6515, wire_6514, wire_6511, wire_6510, wire_6501, wire_6500, wire_6471, wire_6470, wire_4647, wire_4646, wire_4633, wire_4632, wire_4619, wire_4618, wire_4601, wire_4600, wire_4571, wire_4570, wire_6275, wire_6274, wire_6259, wire_6258, wire_6245, wire_6244, wire_6231, wire_6230, wire_6217, wire_6216, wire_4393, wire_4392, wire_4363, wire_4362, wire_4353, wire_4352, wire_4337, wire_4336, wire_4287, wire_4286, wire_6547, wire_6546, wire_6533, wire_6532, wire_6505, wire_6504, wire_6495, wire_6494, wire_6465, wire_6464, wire_4641, wire_4640, wire_4627, wire_4626, wire_4603, wire_4602, wire_4577, wire_4576, wire_4547, wire_4546, wire_6293, wire_6292, wire_6253, wire_6252, wire_6239, wire_6238, wire_6211, wire_6210, wire_6201, wire_6200, wire_4387, wire_4386, wire_4371, wire_4370, wire_4313, wire_4312, wire_4273, wire_4272, wire_4263, wire_4262, wire_6541, wire_6540, wire_6527, wire_6526, wire_6489, wire_6488, wire_6483, wire_6482, wire_6473, wire_6472, wire_4659, wire_4658, wire_4621, wire_4620, wire_4579, wire_4578, wire_4553, wire_4552, wire_4523, wire_4522};
    // IPIN TOTAL: 150
    assign lut_tile_6_3_ipin_in = {wire_4649, wire_4648, wire_4635, wire_4634, wire_4609, wire_4608, wire_4579, wire_4578, wire_4539, wire_4538, wire_6565, wire_6564, wire_6549, wire_6548, wire_6535, wire_6534, wire_6507, wire_6506, wire_6497, wire_6496, wire_4923, wire_4922, wire_4883, wire_4882, wire_4877, wire_4876, wire_4837, wire_4836, wire_4819, wire_4818, wire_6309, wire_6308, wire_6295, wire_6294, wire_6257, wire_6256, wire_6241, wire_6240, wire_6227, wire_6226, wire_4643, wire_4642, wire_4629, wire_4628, wire_4611, wire_4610, wire_4585, wire_4584, wire_4555, wire_4554, wire_6583, wire_6582, wire_6573, wire_6572, wire_6543, wire_6542, wire_6529, wire_6528, wire_6491, wire_6490, wire_4917, wire_4916, wire_4901, wire_4900, wire_4851, wire_4850, wire_4813, wire_4812, wire_4795, wire_4794, wire_6317, wire_6316, wire_6303, wire_6302, wire_6289, wire_6288, wire_6251, wire_6250, wire_6235, wire_6234, wire_4661, wire_4660, wire_4623, wire_4622, wire_4587, wire_4586, wire_4561, wire_4560, wire_4521, wire_4520, wire_6577, wire_6576, wire_6567, wire_6566, wire_6537, wire_6536, wire_6523, wire_6522, wire_6509, wire_6508, wire_4925, wire_4924, wire_4911, wire_4910, wire_4895, wire_4894, wire_4827, wire_4826, wire_4789, wire_4788, wire_6311, wire_6310, wire_6283, wire_6282, wire_6273, wire_6272, wire_6269, wire_6268, wire_6229, wire_6228, wire_4655, wire_4654, wire_4645, wire_4644, wire_4617, wire_4616, wire_4593, wire_4592, wire_4563, wire_4562, wire_6561, wire_6560, wire_6555, wire_6554, wire_6545, wire_6544, wire_6517, wire_6516, wire_6503, wire_6502, wire_4919, wire_4918, wire_4905, wire_4904, wire_4889, wire_4888, wire_4861, wire_4860, wire_4803, wire_4802};
    // IPIN TOTAL: 150
    assign lut_tile_7_3_ipin_in = {wire_4919, wire_4918, wire_4909, wire_4908, wire_4903, wire_4902, wire_4859, wire_4858, wire_4821, wire_4820, wire_6607, wire_6606, wire_6579, wire_6578, wire_6569, wire_6568, wire_6541, wire_6540, wire_6525, wire_6524, wire_5191, wire_5190, wire_5181, wire_5180, wire_5153, wire_5152, wire_5127, wire_5126, wire_5061, wire_5060, wire_6329, wire_6328, wire_6313, wire_6312, wire_6299, wire_6298, wire_6285, wire_6284, wire_6271, wire_6270, wire_4927, wire_4926, wire_4913, wire_4912, wire_4897, wire_4896, wire_4835, wire_4834, wire_4797, wire_4796, wire_6601, wire_6600, wire_6563, wire_6562, wire_6559, wire_6558, wire_6549, wire_6548, wire_6519, wire_6518, wire_5175, wire_5174, wire_5161, wire_5160, wire_5147, wire_5146, wire_5133, wire_5132, wire_5103, wire_5102, wire_6323, wire_6322, wire_6307, wire_6306, wire_6293, wire_6292, wire_6279, wire_6278, wire_6265, wire_6264, wire_4921, wire_4920, wire_4891, wire_4890, wire_4881, wire_4880, wire_4869, wire_4868, wire_4811, wire_4810, wire_6595, wire_6594, wire_6581, wire_6580, wire_6553, wire_6552, wire_6543, wire_6542, wire_6513, wire_6512, wire_5169, wire_5168, wire_5155, wire_5154, wire_5135, wire_5134, wire_5109, wire_5108, wire_5079, wire_5078, wire_6341, wire_6340, wire_6301, wire_6300, wire_6287, wire_6286, wire_6259, wire_6258, wire_6249, wire_6248, wire_4915, wire_4914, wire_4899, wire_4898, wire_4845, wire_4844, wire_4805, wire_4804, wire_4787, wire_4786, wire_6589, wire_6588, wire_6575, wire_6574, wire_6537, wire_6536, wire_6531, wire_6530, wire_6521, wire_6520, wire_5187, wire_5186, wire_5149, wire_5148, wire_5111, wire_5110, wire_5085, wire_5084, wire_5055, wire_5054};
    // IPIN TOTAL: 150
    assign lut_tile_8_3_ipin_in = {wire_5177, wire_5176, wire_5163, wire_5162, wire_5141, wire_5140, wire_5111, wire_5110, wire_5071, wire_5070, wire_6613, wire_6612, wire_6597, wire_6596, wire_6583, wire_6582, wire_6555, wire_6554, wire_6545, wire_6544, wire_5451, wire_5450, wire_5411, wire_5410, wire_5401, wire_5400, wire_5361, wire_5360, wire_5351, wire_5350, wire_6357, wire_6356, wire_6343, wire_6342, wire_6305, wire_6304, wire_6289, wire_6288, wire_6275, wire_6274, wire_5171, wire_5170, wire_5157, wire_5156, wire_5143, wire_5142, wire_5117, wire_5116, wire_5087, wire_5086, wire_6631, wire_6630, wire_6621, wire_6620, wire_6591, wire_6590, wire_6577, wire_6576, wire_6539, wire_6538, wire_5445, wire_5444, wire_5429, wire_5428, wire_5383, wire_5382, wire_5337, wire_5336, wire_5327, wire_5326, wire_6365, wire_6364, wire_6351, wire_6350, wire_6337, wire_6336, wire_6299, wire_6298, wire_6283, wire_6282, wire_5189, wire_5188, wire_5151, wire_5150, wire_5119, wire_5118, wire_5093, wire_5092, wire_5053, wire_5052, wire_6625, wire_6624, wire_6615, wire_6614, wire_6585, wire_6584, wire_6571, wire_6570, wire_6557, wire_6556, wire_5453, wire_5452, wire_5439, wire_5438, wire_5423, wire_5422, wire_5359, wire_5358, wire_5313, wire_5312, wire_6359, wire_6358, wire_6331, wire_6330, wire_6321, wire_6320, wire_6317, wire_6316, wire_6277, wire_6276, wire_5183, wire_5182, wire_5173, wire_5172, wire_5145, wire_5144, wire_5125, wire_5124, wire_5095, wire_5094, wire_6609, wire_6608, wire_6603, wire_6602, wire_6593, wire_6592, wire_6565, wire_6564, wire_6551, wire_6550, wire_5447, wire_5446, wire_5433, wire_5432, wire_5417, wire_5416, wire_5385, wire_5384, wire_5335, wire_5334};
    // IPIN TOTAL: 150
    assign lut_tile_1_4_ipin_in = {wire_3353, wire_3352, wire_3339, wire_3338, wire_3311, wire_3310, wire_3301, wire_3300, wire_3289, wire_3288, wire_6725, wire_6724, wire_6707, wire_6706, wire_6687, wire_6686, wire_6667, wire_6666, wire_6649, wire_6648, wire_3627, wire_3626, wire_3587, wire_3586, wire_3583, wire_3582, wire_3573, wire_3572, wire_3499, wire_3498, wire_6461, wire_6460, wire_6433, wire_6432, wire_6423, wire_6422, wire_6403, wire_6402, wire_6377, wire_6376, wire_3347, wire_3346, wire_3333, wire_3332, wire_3319, wire_3318, wire_3305, wire_3304, wire_3265, wire_3264, wire_6721, wire_6720, wire_6701, wire_6700, wire_6681, wire_6680, wire_6663, wire_6662, wire_6643, wire_6642, wire_3621, wire_3620, wire_3605, wire_3604, wire_3567, wire_3566, wire_3531, wire_3530, wire_3475, wire_3474, wire_6455, wire_6454, wire_6437, wire_6436, wire_6409, wire_6408, wire_6399, wire_6398, wire_6379, wire_6378, wire_3365, wire_3364, wire_3327, wire_3326, wire_3313, wire_3312, wire_3241, wire_3240, wire_3201, wire_3200, wire_6715, wire_6714, wire_6697, wire_6696, wire_6677, wire_6676, wire_6657, wire_6656, wire_6639, wire_6638, wire_3629, wire_3628, wire_3615, wire_3614, wire_3599, wire_3598, wire_3561, wire_3560, wire_3507, wire_3506, wire_6451, wire_6450, wire_6431, wire_6430, wire_6413, wire_6412, wire_6385, wire_6384, wire_6373, wire_6372, wire_3359, wire_3358, wire_3349, wire_3348, wire_3321, wire_3320, wire_3307, wire_3306, wire_3273, wire_3272, wire_6711, wire_6710, wire_6691, wire_6690, wire_6671, wire_6670, wire_6653, wire_6652, wire_6633, wire_6632, wire_3623, wire_3622, wire_3609, wire_3608, wire_3593, wire_3592, wire_3579, wire_3578, wire_3483, wire_3482};
    // IPIN TOTAL: 150
    assign lut_tile_2_4_ipin_in = {wire_3623, wire_3622, wire_3613, wire_3612, wire_3607, wire_3606, wire_3569, wire_3568, wire_3539, wire_3538, wire_6751, wire_6750, wire_6705, wire_6704, wire_6685, wire_6684, wire_6665, wire_6664, wire_6655, wire_6654, wire_3895, wire_3894, wire_3885, wire_3884, wire_3857, wire_3856, wire_3843, wire_3842, wire_3741, wire_3740, wire_6473, wire_6472, wire_6459, wire_6458, wire_6439, wire_6438, wire_6421, wire_6420, wire_6383, wire_6382, wire_3631, wire_3630, wire_3617, wire_3616, wire_3601, wire_3600, wire_3563, wire_3562, wire_3515, wire_3514, wire_6745, wire_6744, wire_6727, wire_6726, wire_6687, wire_6686, wire_6661, wire_6660, wire_6641, wire_6640, wire_3879, wire_3878, wire_3865, wire_3864, wire_3851, wire_3850, wire_3837, wire_3836, wire_3813, wire_3812, wire_6467, wire_6466, wire_6453, wire_6452, wire_6435, wire_6434, wire_6415, wire_6414, wire_6397, wire_6396, wire_3625, wire_3624, wire_3595, wire_3594, wire_3585, wire_3584, wire_3581, wire_3580, wire_3491, wire_3490, wire_6739, wire_6738, wire_6713, wire_6712, wire_6703, wire_6702, wire_6663, wire_6662, wire_6637, wire_6636, wire_3873, wire_3872, wire_3859, wire_3858, wire_3845, wire_3844, wire_3831, wire_3830, wire_3789, wire_3788, wire_6485, wire_6484, wire_6429, wire_6428, wire_6411, wire_6410, wire_6391, wire_6390, wire_6371, wire_6370, wire_3619, wire_3618, wire_3603, wire_3602, wire_3575, wire_3574, wire_3565, wire_3564, wire_3467, wire_3466, wire_6733, wire_6732, wire_6709, wire_6708, wire_6689, wire_6688, wire_6669, wire_6668, wire_6639, wire_6638, wire_3891, wire_3890, wire_3853, wire_3852, wire_3839, wire_3838, wire_3825, wire_3824, wire_3765, wire_3764};
    // IPIN TOTAL: 150
    assign lut_tile_3_4_ipin_in = {wire_3881, wire_3880, wire_3867, wire_3866, wire_3839, wire_3838, wire_3829, wire_3828, wire_3821, wire_3820, wire_6757, wire_6756, wire_6741, wire_6740, wire_6721, wire_6720, wire_6711, wire_6710, wire_6671, wire_6670, wire_4155, wire_4154, wire_4115, wire_4114, wire_4111, wire_4110, wire_4101, wire_4100, wire_4031, wire_4030, wire_6501, wire_6500, wire_6487, wire_6486, wire_6437, wire_6436, wire_6407, wire_6406, wire_6381, wire_6380, wire_3875, wire_3874, wire_3861, wire_3860, wire_3847, wire_3846, wire_3833, wire_3832, wire_3797, wire_3796, wire_6775, wire_6774, wire_6765, wire_6764, wire_6735, wire_6734, wire_6697, wire_6696, wire_6647, wire_6646, wire_4149, wire_4148, wire_4133, wire_4132, wire_4095, wire_4094, wire_4063, wire_4062, wire_4007, wire_4006, wire_6509, wire_6508, wire_6495, wire_6494, wire_6481, wire_6480, wire_6413, wire_6412, wire_6383, wire_6382, wire_3893, wire_3892, wire_3855, wire_3854, wire_3841, wire_3840, wire_3773, wire_3772, wire_3733, wire_3732, wire_6769, wire_6768, wire_6759, wire_6758, wire_6729, wire_6728, wire_6719, wire_6718, wire_6673, wire_6672, wire_4157, wire_4156, wire_4143, wire_4142, wire_4127, wire_4126, wire_4089, wire_4088, wire_4039, wire_4038, wire_6503, wire_6502, wire_6475, wire_6474, wire_6465, wire_6464, wire_6455, wire_6454, wire_6389, wire_6388, wire_3887, wire_3886, wire_3877, wire_3876, wire_3849, wire_3848, wire_3835, wire_3834, wire_3805, wire_3804, wire_6753, wire_6752, wire_6747, wire_6746, wire_6737, wire_6736, wire_6695, wire_6694, wire_6649, wire_6648, wire_4151, wire_4150, wire_4137, wire_4136, wire_4121, wire_4120, wire_4107, wire_4106, wire_4015, wire_4014};
    // IPIN TOTAL: 150
    assign lut_tile_4_4_ipin_in = {wire_4151, wire_4150, wire_4141, wire_4140, wire_4135, wire_4134, wire_4097, wire_4096, wire_4071, wire_4070, wire_6799, wire_6798, wire_6771, wire_6770, wire_6761, wire_6760, wire_6733, wire_6732, wire_6681, wire_6680, wire_4423, wire_4422, wire_4413, wire_4412, wire_4385, wire_4384, wire_4371, wire_4370, wire_4265, wire_4264, wire_6521, wire_6520, wire_6505, wire_6504, wire_6491, wire_6490, wire_6477, wire_6476, wire_6463, wire_6462, wire_4159, wire_4158, wire_4145, wire_4144, wire_4129, wire_4128, wire_4091, wire_4090, wire_4047, wire_4046, wire_6793, wire_6792, wire_6755, wire_6754, wire_6751, wire_6750, wire_6741, wire_6740, wire_6657, wire_6656, wire_4407, wire_4406, wire_4393, wire_4392, wire_4379, wire_4378, wire_4365, wire_4364, wire_4337, wire_4336, wire_6515, wire_6514, wire_6499, wire_6498, wire_6485, wire_6484, wire_6471, wire_6470, wire_6439, wire_6438, wire_4153, wire_4152, wire_4123, wire_4122, wire_4113, wire_4112, wire_4109, wire_4108, wire_4023, wire_4022, wire_6787, wire_6786, wire_6773, wire_6772, wire_6745, wire_6744, wire_6735, wire_6734, wire_6633, wire_6632, wire_4401, wire_4400, wire_4387, wire_4386, wire_4373, wire_4372, wire_4359, wire_4358, wire_4313, wire_4312, wire_6533, wire_6532, wire_6493, wire_6492, wire_6479, wire_6478, wire_6415, wire_6414, wire_6375, wire_6374, wire_4147, wire_4146, wire_4131, wire_4130, wire_4103, wire_4102, wire_4093, wire_4092, wire_3999, wire_3998, wire_6781, wire_6780, wire_6767, wire_6766, wire_6729, wire_6728, wire_6705, wire_6704, wire_6665, wire_6664, wire_4419, wire_4418, wire_4381, wire_4380, wire_4367, wire_4366, wire_4353, wire_4352, wire_4289, wire_4288};
    // IPIN TOTAL: 150
    assign lut_tile_5_4_ipin_in = {wire_4409, wire_4408, wire_4395, wire_4394, wire_4367, wire_4366, wire_4357, wire_4356, wire_4345, wire_4344, wire_6805, wire_6804, wire_6789, wire_6788, wire_6775, wire_6774, wire_6747, wire_6746, wire_6737, wire_6736, wire_4683, wire_4682, wire_4643, wire_4642, wire_4639, wire_4638, wire_4629, wire_4628, wire_4555, wire_4554, wire_6549, wire_6548, wire_6535, wire_6534, wire_6497, wire_6496, wire_6481, wire_6480, wire_6467, wire_6466, wire_4403, wire_4402, wire_4389, wire_4388, wire_4375, wire_4374, wire_4361, wire_4360, wire_4321, wire_4320, wire_6823, wire_6822, wire_6813, wire_6812, wire_6783, wire_6782, wire_6769, wire_6768, wire_6731, wire_6730, wire_4677, wire_4676, wire_4661, wire_4660, wire_4623, wire_4622, wire_4587, wire_4586, wire_4531, wire_4530, wire_6557, wire_6556, wire_6543, wire_6542, wire_6529, wire_6528, wire_6491, wire_6490, wire_6475, wire_6474, wire_4421, wire_4420, wire_4383, wire_4382, wire_4369, wire_4368, wire_4297, wire_4296, wire_4257, wire_4256, wire_6817, wire_6816, wire_6807, wire_6806, wire_6777, wire_6776, wire_6763, wire_6762, wire_6749, wire_6748, wire_4685, wire_4684, wire_4671, wire_4670, wire_4655, wire_4654, wire_4617, wire_4616, wire_4563, wire_4562, wire_6551, wire_6550, wire_6523, wire_6522, wire_6513, wire_6512, wire_6509, wire_6508, wire_6469, wire_6468, wire_4415, wire_4414, wire_4405, wire_4404, wire_4377, wire_4376, wire_4363, wire_4362, wire_4329, wire_4328, wire_6801, wire_6800, wire_6795, wire_6794, wire_6785, wire_6784, wire_6757, wire_6756, wire_6743, wire_6742, wire_4679, wire_4678, wire_4665, wire_4664, wire_4649, wire_4648, wire_4635, wire_4634, wire_4539, wire_4538};
    // IPIN TOTAL: 150
    assign lut_tile_6_4_ipin_in = {wire_4679, wire_4678, wire_4669, wire_4668, wire_4663, wire_4662, wire_4625, wire_4624, wire_4595, wire_4594, wire_6847, wire_6846, wire_6819, wire_6818, wire_6809, wire_6808, wire_6781, wire_6780, wire_6765, wire_6764, wire_4951, wire_4950, wire_4941, wire_4940, wire_4913, wire_4912, wire_4899, wire_4898, wire_4797, wire_4796, wire_6569, wire_6568, wire_6553, wire_6552, wire_6539, wire_6538, wire_6525, wire_6524, wire_6511, wire_6510, wire_4687, wire_4686, wire_4673, wire_4672, wire_4657, wire_4656, wire_4619, wire_4618, wire_4571, wire_4570, wire_6841, wire_6840, wire_6803, wire_6802, wire_6799, wire_6798, wire_6789, wire_6788, wire_6759, wire_6758, wire_4935, wire_4934, wire_4921, wire_4920, wire_4907, wire_4906, wire_4893, wire_4892, wire_4869, wire_4868, wire_6563, wire_6562, wire_6547, wire_6546, wire_6533, wire_6532, wire_6519, wire_6518, wire_6505, wire_6504, wire_4681, wire_4680, wire_4651, wire_4650, wire_4641, wire_4640, wire_4637, wire_4636, wire_4547, wire_4546, wire_6835, wire_6834, wire_6821, wire_6820, wire_6793, wire_6792, wire_6783, wire_6782, wire_6753, wire_6752, wire_4929, wire_4928, wire_4915, wire_4914, wire_4901, wire_4900, wire_4887, wire_4886, wire_4845, wire_4844, wire_6581, wire_6580, wire_6541, wire_6540, wire_6527, wire_6526, wire_6499, wire_6498, wire_6489, wire_6488, wire_4675, wire_4674, wire_4659, wire_4658, wire_4631, wire_4630, wire_4621, wire_4620, wire_4523, wire_4522, wire_6829, wire_6828, wire_6815, wire_6814, wire_6777, wire_6776, wire_6771, wire_6770, wire_6761, wire_6760, wire_4947, wire_4946, wire_4909, wire_4908, wire_4895, wire_4894, wire_4881, wire_4880, wire_4821, wire_4820};
    // IPIN TOTAL: 150
    assign lut_tile_7_4_ipin_in = {wire_4937, wire_4936, wire_4923, wire_4922, wire_4895, wire_4894, wire_4885, wire_4884, wire_4877, wire_4876, wire_6853, wire_6852, wire_6837, wire_6836, wire_6823, wire_6822, wire_6795, wire_6794, wire_6785, wire_6784, wire_5211, wire_5210, wire_5171, wire_5170, wire_5167, wire_5166, wire_5157, wire_5156, wire_5087, wire_5086, wire_6597, wire_6596, wire_6583, wire_6582, wire_6545, wire_6544, wire_6529, wire_6528, wire_6515, wire_6514, wire_4931, wire_4930, wire_4917, wire_4916, wire_4903, wire_4902, wire_4889, wire_4888, wire_4853, wire_4852, wire_6871, wire_6870, wire_6861, wire_6860, wire_6831, wire_6830, wire_6817, wire_6816, wire_6779, wire_6778, wire_5205, wire_5204, wire_5189, wire_5188, wire_5151, wire_5150, wire_5119, wire_5118, wire_5063, wire_5062, wire_6605, wire_6604, wire_6591, wire_6590, wire_6577, wire_6576, wire_6539, wire_6538, wire_6523, wire_6522, wire_4949, wire_4948, wire_4911, wire_4910, wire_4897, wire_4896, wire_4829, wire_4828, wire_4789, wire_4788, wire_6865, wire_6864, wire_6855, wire_6854, wire_6825, wire_6824, wire_6811, wire_6810, wire_6797, wire_6796, wire_5213, wire_5212, wire_5199, wire_5198, wire_5183, wire_5182, wire_5145, wire_5144, wire_5095, wire_5094, wire_6599, wire_6598, wire_6571, wire_6570, wire_6561, wire_6560, wire_6557, wire_6556, wire_6517, wire_6516, wire_4943, wire_4942, wire_4933, wire_4932, wire_4905, wire_4904, wire_4891, wire_4890, wire_4861, wire_4860, wire_6849, wire_6848, wire_6843, wire_6842, wire_6833, wire_6832, wire_6805, wire_6804, wire_6791, wire_6790, wire_5207, wire_5206, wire_5193, wire_5192, wire_5177, wire_5176, wire_5163, wire_5162, wire_5071, wire_5070};
    // IPIN TOTAL: 150
    assign lut_tile_8_4_ipin_in = {wire_5207, wire_5206, wire_5197, wire_5196, wire_5191, wire_5190, wire_5153, wire_5152, wire_5127, wire_5126, wire_6895, wire_6894, wire_6867, wire_6866, wire_6857, wire_6856, wire_6829, wire_6828, wire_6813, wire_6812, wire_5479, wire_5478, wire_5469, wire_5468, wire_5441, wire_5440, wire_5427, wire_5426, wire_5321, wire_5320, wire_6617, wire_6616, wire_6601, wire_6600, wire_6587, wire_6586, wire_6573, wire_6572, wire_6559, wire_6558, wire_5215, wire_5214, wire_5201, wire_5200, wire_5185, wire_5184, wire_5147, wire_5146, wire_5103, wire_5102, wire_6889, wire_6888, wire_6851, wire_6850, wire_6847, wire_6846, wire_6837, wire_6836, wire_6807, wire_6806, wire_5463, wire_5462, wire_5449, wire_5448, wire_5435, wire_5434, wire_5421, wire_5420, wire_5393, wire_5392, wire_6611, wire_6610, wire_6595, wire_6594, wire_6581, wire_6580, wire_6567, wire_6566, wire_6553, wire_6552, wire_5209, wire_5208, wire_5179, wire_5178, wire_5169, wire_5168, wire_5165, wire_5164, wire_5079, wire_5078, wire_6883, wire_6882, wire_6869, wire_6868, wire_6841, wire_6840, wire_6831, wire_6830, wire_6801, wire_6800, wire_5457, wire_5456, wire_5443, wire_5442, wire_5429, wire_5428, wire_5415, wire_5414, wire_5369, wire_5368, wire_6629, wire_6628, wire_6589, wire_6588, wire_6575, wire_6574, wire_6547, wire_6546, wire_6537, wire_6536, wire_5203, wire_5202, wire_5187, wire_5186, wire_5159, wire_5158, wire_5149, wire_5148, wire_5055, wire_5054, wire_6877, wire_6876, wire_6863, wire_6862, wire_6825, wire_6824, wire_6819, wire_6818, wire_6809, wire_6808, wire_5475, wire_5474, wire_5437, wire_5436, wire_5423, wire_5422, wire_5409, wire_5408, wire_5345, wire_5344};
    // IPIN TOTAL: 150
    assign lut_tile_1_5_ipin_in = {wire_3383, wire_3382, wire_3373, wire_3372, wire_3367, wire_3366, wire_3329, wire_3328, wire_3315, wire_3314, wire_6987, wire_6986, wire_6969, wire_6968, wire_6949, wire_6948, wire_6929, wire_6928, wire_6919, wire_6918, wire_3655, wire_3654, wire_3645, wire_3644, wire_3617, wire_3616, wire_3603, wire_3602, wire_3563, wire_3562, wire_6723, wire_6722, wire_6703, wire_6702, wire_6685, wire_6684, wire_6665, wire_6664, wire_6647, wire_6646, wire_3391, wire_3390, wire_3377, wire_3376, wire_3361, wire_3360, wire_3323, wire_3322, wire_3309, wire_3308, wire_6991, wire_6990, wire_6963, wire_6962, wire_6951, wire_6950, wire_6925, wire_6924, wire_6905, wire_6904, wire_3639, wire_3638, wire_3625, wire_3624, wire_3611, wire_3610, wire_3597, wire_3596, wire_3581, wire_3580, wire_6717, wire_6716, wire_6699, wire_6698, wire_6679, wire_6678, wire_6661, wire_6660, wire_6641, wire_6640, wire_3385, wire_3384, wire_3355, wire_3354, wire_3345, wire_3344, wire_3341, wire_3340, wire_3303, wire_3302, wire_6977, wire_6976, wire_6967, wire_6966, wire_6939, wire_6938, wire_6927, wire_6926, wire_6901, wire_6900, wire_3633, wire_3632, wire_3619, wire_3618, wire_3605, wire_3604, wire_3591, wire_3590, wire_3575, wire_3574, wire_6713, wire_6712, wire_6693, wire_6692, wire_6675, wire_6674, wire_6655, wire_6654, wire_6635, wire_6634, wire_3379, wire_3378, wire_3363, wire_3362, wire_3335, wire_3334, wire_3325, wire_3324, wire_3297, wire_3296, wire_6973, wire_6972, wire_6953, wire_6952, wire_6933, wire_6932, wire_6915, wire_6914, wire_6903, wire_6902, wire_3651, wire_3650, wire_3613, wire_3612, wire_3599, wire_3598, wire_3585, wire_3584, wire_3569, wire_3568};
    // IPIN TOTAL: 150
    assign lut_tile_2_5_ipin_in = {wire_3641, wire_3640, wire_3627, wire_3626, wire_3599, wire_3598, wire_3589, wire_3588, wire_3583, wire_3582, wire_6997, wire_6996, wire_6985, wire_6984, wire_6975, wire_6974, wire_6947, wire_6946, wire_6935, wire_6934, wire_3915, wire_3914, wire_3875, wire_3874, wire_3871, wire_3870, wire_3861, wire_3860, wire_3833, wire_3832, wire_6741, wire_6740, wire_6721, wire_6720, wire_6701, wire_6700, wire_6671, wire_6670, wire_6645, wire_6644, wire_3635, wire_3634, wire_3621, wire_3620, wire_3607, wire_3606, wire_3593, wire_3592, wire_3577, wire_3576, wire_7015, wire_7014, wire_7005, wire_7004, wire_6961, wire_6960, wire_6923, wire_6922, wire_6911, wire_6910, wire_3909, wire_3908, wire_3893, wire_3892, wire_3855, wire_3854, wire_3841, wire_3840, wire_3827, wire_3826, wire_6749, wire_6748, wire_6735, wire_6734, wire_6697, wire_6696, wire_6677, wire_6676, wire_6647, wire_6646, wire_3653, wire_3652, wire_3615, wire_3614, wire_3601, wire_3600, wire_3571, wire_3570, wire_3561, wire_3560, wire_7009, wire_7008, wire_6999, wire_6998, wire_6983, wire_6982, wire_6937, wire_6936, wire_6899, wire_6898, wire_3917, wire_3916, wire_3903, wire_3902, wire_3887, wire_3886, wire_3849, wire_3848, wire_3835, wire_3834, wire_6743, wire_6742, wire_6719, wire_6718, wire_6673, wire_6672, wire_6653, wire_6652, wire_6633, wire_6632, wire_3647, wire_3646, wire_3637, wire_3636, wire_3609, wire_3608, wire_3595, wire_3594, wire_3579, wire_3578, wire_6993, wire_6992, wire_6971, wire_6970, wire_6959, wire_6958, wire_6931, wire_6930, wire_6913, wire_6912, wire_3911, wire_3910, wire_3897, wire_3896, wire_3881, wire_3880, wire_3867, wire_3866, wire_3829, wire_3828};
    // IPIN TOTAL: 150
    assign lut_tile_3_5_ipin_in = {wire_3911, wire_3910, wire_3901, wire_3900, wire_3895, wire_3894, wire_3857, wire_3856, wire_3843, wire_3842, wire_7039, wire_7038, wire_7011, wire_7010, wire_7001, wire_7000, wire_6945, wire_6944, wire_6915, wire_6914, wire_4183, wire_4182, wire_4173, wire_4172, wire_4145, wire_4144, wire_4131, wire_4130, wire_4091, wire_4090, wire_6761, wire_6760, wire_6745, wire_6744, wire_6731, wire_6730, wire_6727, wire_6726, wire_6681, wire_6680, wire_3919, wire_3918, wire_3905, wire_3904, wire_3889, wire_3888, wire_3851, wire_3850, wire_3837, wire_3836, wire_7033, wire_7032, wire_6995, wire_6994, wire_6987, wire_6986, wire_6947, wire_6946, wire_6921, wire_6920, wire_4167, wire_4166, wire_4153, wire_4152, wire_4139, wire_4138, wire_4125, wire_4124, wire_4109, wire_4108, wire_6755, wire_6754, wire_6739, wire_6738, wire_6713, wire_6712, wire_6703, wire_6702, wire_6657, wire_6656, wire_3913, wire_3912, wire_3883, wire_3882, wire_3873, wire_3872, wire_3869, wire_3868, wire_3831, wire_3830, wire_7027, wire_7026, wire_7013, wire_7012, wire_6963, wire_6962, wire_6923, wire_6922, wire_6897, wire_6896, wire_4161, wire_4160, wire_4147, wire_4146, wire_4133, wire_4132, wire_4119, wire_4118, wire_4103, wire_4102, wire_6773, wire_6772, wire_6733, wire_6732, wire_6689, wire_6688, wire_6679, wire_6678, wire_6639, wire_6638, wire_3907, wire_3906, wire_3891, wire_3890, wire_3863, wire_3862, wire_3853, wire_3852, wire_3825, wire_3824, wire_7021, wire_7020, wire_7007, wire_7006, wire_6969, wire_6968, wire_6929, wire_6928, wire_6899, wire_6898, wire_4179, wire_4178, wire_4141, wire_4140, wire_4127, wire_4126, wire_4113, wire_4112, wire_4097, wire_4096};
    // IPIN TOTAL: 150
    assign lut_tile_4_5_ipin_in = {wire_4169, wire_4168, wire_4155, wire_4154, wire_4127, wire_4126, wire_4117, wire_4116, wire_4111, wire_4110, wire_7045, wire_7044, wire_7029, wire_7028, wire_7015, wire_7014, wire_6971, wire_6970, wire_6931, wire_6930, wire_4443, wire_4442, wire_4403, wire_4402, wire_4399, wire_4398, wire_4389, wire_4388, wire_4361, wire_4360, wire_6789, wire_6788, wire_6775, wire_6774, wire_6737, wire_6736, wire_6697, wire_6696, wire_6641, wire_6640, wire_4163, wire_4162, wire_4149, wire_4148, wire_4135, wire_4134, wire_4121, wire_4120, wire_4105, wire_4104, wire_7063, wire_7062, wire_7053, wire_7052, wire_7023, wire_7022, wire_7009, wire_7008, wire_6907, wire_6906, wire_4437, wire_4436, wire_4421, wire_4420, wire_4383, wire_4382, wire_4369, wire_4368, wire_4355, wire_4354, wire_6797, wire_6796, wire_6783, wire_6782, wire_6769, wire_6768, wire_6731, wire_6730, wire_6673, wire_6672, wire_4181, wire_4180, wire_4143, wire_4142, wire_4129, wire_4128, wire_4099, wire_4098, wire_4089, wire_4088, wire_7057, wire_7056, wire_7047, wire_7046, wire_7017, wire_7016, wire_7003, wire_7002, wire_6979, wire_6978, wire_4445, wire_4444, wire_4431, wire_4430, wire_4415, wire_4414, wire_4377, wire_4376, wire_4363, wire_4362, wire_6791, wire_6790, wire_6763, wire_6762, wire_6753, wire_6752, wire_6749, wire_6748, wire_6649, wire_6648, wire_4175, wire_4174, wire_4165, wire_4164, wire_4137, wire_4136, wire_4123, wire_4122, wire_4107, wire_4106, wire_7041, wire_7040, wire_7035, wire_7034, wire_7025, wire_7024, wire_6997, wire_6996, wire_6955, wire_6954, wire_4439, wire_4438, wire_4425, wire_4424, wire_4409, wire_4408, wire_4395, wire_4394, wire_4357, wire_4356};
    // IPIN TOTAL: 150
    assign lut_tile_5_5_ipin_in = {wire_4439, wire_4438, wire_4429, wire_4428, wire_4423, wire_4422, wire_4385, wire_4384, wire_4371, wire_4370, wire_7087, wire_7086, wire_7059, wire_7058, wire_7049, wire_7048, wire_7021, wire_7020, wire_7005, wire_7004, wire_4711, wire_4710, wire_4701, wire_4700, wire_4673, wire_4672, wire_4659, wire_4658, wire_4619, wire_4618, wire_6809, wire_6808, wire_6793, wire_6792, wire_6779, wire_6778, wire_6765, wire_6764, wire_6751, wire_6750, wire_4447, wire_4446, wire_4433, wire_4432, wire_4417, wire_4416, wire_4379, wire_4378, wire_4365, wire_4364, wire_7081, wire_7080, wire_7043, wire_7042, wire_7039, wire_7038, wire_7029, wire_7028, wire_6999, wire_6998, wire_4695, wire_4694, wire_4681, wire_4680, wire_4667, wire_4666, wire_4653, wire_4652, wire_4637, wire_4636, wire_6803, wire_6802, wire_6787, wire_6786, wire_6773, wire_6772, wire_6759, wire_6758, wire_6745, wire_6744, wire_4441, wire_4440, wire_4411, wire_4410, wire_4401, wire_4400, wire_4397, wire_4396, wire_4359, wire_4358, wire_7075, wire_7074, wire_7061, wire_7060, wire_7033, wire_7032, wire_7023, wire_7022, wire_6993, wire_6992, wire_4689, wire_4688, wire_4675, wire_4674, wire_4661, wire_4660, wire_4647, wire_4646, wire_4631, wire_4630, wire_6821, wire_6820, wire_6781, wire_6780, wire_6767, wire_6766, wire_6739, wire_6738, wire_6729, wire_6728, wire_4435, wire_4434, wire_4419, wire_4418, wire_4391, wire_4390, wire_4381, wire_4380, wire_4353, wire_4352, wire_7069, wire_7068, wire_7055, wire_7054, wire_7017, wire_7016, wire_7011, wire_7010, wire_7001, wire_7000, wire_4707, wire_4706, wire_4669, wire_4668, wire_4655, wire_4654, wire_4641, wire_4640, wire_4625, wire_4624};
    // IPIN TOTAL: 150
    assign lut_tile_6_5_ipin_in = {wire_4697, wire_4696, wire_4683, wire_4682, wire_4655, wire_4654, wire_4645, wire_4644, wire_4639, wire_4638, wire_7093, wire_7092, wire_7077, wire_7076, wire_7063, wire_7062, wire_7035, wire_7034, wire_7025, wire_7024, wire_4971, wire_4970, wire_4931, wire_4930, wire_4927, wire_4926, wire_4917, wire_4916, wire_4889, wire_4888, wire_6837, wire_6836, wire_6823, wire_6822, wire_6785, wire_6784, wire_6769, wire_6768, wire_6755, wire_6754, wire_4691, wire_4690, wire_4677, wire_4676, wire_4663, wire_4662, wire_4649, wire_4648, wire_4633, wire_4632, wire_7111, wire_7110, wire_7101, wire_7100, wire_7071, wire_7070, wire_7057, wire_7056, wire_7019, wire_7018, wire_4965, wire_4964, wire_4949, wire_4948, wire_4911, wire_4910, wire_4897, wire_4896, wire_4883, wire_4882, wire_6845, wire_6844, wire_6831, wire_6830, wire_6817, wire_6816, wire_6779, wire_6778, wire_6763, wire_6762, wire_4709, wire_4708, wire_4671, wire_4670, wire_4657, wire_4656, wire_4627, wire_4626, wire_4617, wire_4616, wire_7105, wire_7104, wire_7095, wire_7094, wire_7065, wire_7064, wire_7051, wire_7050, wire_7037, wire_7036, wire_4973, wire_4972, wire_4959, wire_4958, wire_4943, wire_4942, wire_4905, wire_4904, wire_4891, wire_4890, wire_6839, wire_6838, wire_6811, wire_6810, wire_6801, wire_6800, wire_6797, wire_6796, wire_6757, wire_6756, wire_4703, wire_4702, wire_4693, wire_4692, wire_4665, wire_4664, wire_4651, wire_4650, wire_4635, wire_4634, wire_7089, wire_7088, wire_7083, wire_7082, wire_7073, wire_7072, wire_7045, wire_7044, wire_7031, wire_7030, wire_4967, wire_4966, wire_4953, wire_4952, wire_4937, wire_4936, wire_4923, wire_4922, wire_4885, wire_4884};
    // IPIN TOTAL: 150
    assign lut_tile_7_5_ipin_in = {wire_4967, wire_4966, wire_4957, wire_4956, wire_4951, wire_4950, wire_4913, wire_4912, wire_4899, wire_4898, wire_7135, wire_7134, wire_7107, wire_7106, wire_7097, wire_7096, wire_7069, wire_7068, wire_7053, wire_7052, wire_5239, wire_5238, wire_5229, wire_5228, wire_5201, wire_5200, wire_5187, wire_5186, wire_5147, wire_5146, wire_6857, wire_6856, wire_6841, wire_6840, wire_6827, wire_6826, wire_6813, wire_6812, wire_6799, wire_6798, wire_4975, wire_4974, wire_4961, wire_4960, wire_4945, wire_4944, wire_4907, wire_4906, wire_4893, wire_4892, wire_7129, wire_7128, wire_7091, wire_7090, wire_7087, wire_7086, wire_7077, wire_7076, wire_7047, wire_7046, wire_5223, wire_5222, wire_5209, wire_5208, wire_5195, wire_5194, wire_5181, wire_5180, wire_5165, wire_5164, wire_6851, wire_6850, wire_6835, wire_6834, wire_6821, wire_6820, wire_6807, wire_6806, wire_6793, wire_6792, wire_4969, wire_4968, wire_4939, wire_4938, wire_4929, wire_4928, wire_4925, wire_4924, wire_4887, wire_4886, wire_7123, wire_7122, wire_7109, wire_7108, wire_7081, wire_7080, wire_7071, wire_7070, wire_7041, wire_7040, wire_5217, wire_5216, wire_5203, wire_5202, wire_5189, wire_5188, wire_5175, wire_5174, wire_5159, wire_5158, wire_6869, wire_6868, wire_6829, wire_6828, wire_6815, wire_6814, wire_6787, wire_6786, wire_6777, wire_6776, wire_4963, wire_4962, wire_4947, wire_4946, wire_4919, wire_4918, wire_4909, wire_4908, wire_4881, wire_4880, wire_7117, wire_7116, wire_7103, wire_7102, wire_7065, wire_7064, wire_7059, wire_7058, wire_7049, wire_7048, wire_5235, wire_5234, wire_5197, wire_5196, wire_5183, wire_5182, wire_5169, wire_5168, wire_5153, wire_5152};
    // IPIN TOTAL: 150
    assign lut_tile_8_5_ipin_in = {wire_5225, wire_5224, wire_5211, wire_5210, wire_5183, wire_5182, wire_5173, wire_5172, wire_5167, wire_5166, wire_7141, wire_7140, wire_7125, wire_7124, wire_7111, wire_7110, wire_7083, wire_7082, wire_7073, wire_7072, wire_5499, wire_5498, wire_5459, wire_5458, wire_5455, wire_5454, wire_5445, wire_5444, wire_5417, wire_5416, wire_6885, wire_6884, wire_6871, wire_6870, wire_6833, wire_6832, wire_6817, wire_6816, wire_6803, wire_6802, wire_5219, wire_5218, wire_5205, wire_5204, wire_5191, wire_5190, wire_5177, wire_5176, wire_5161, wire_5160, wire_7159, wire_7158, wire_7149, wire_7148, wire_7119, wire_7118, wire_7105, wire_7104, wire_7067, wire_7066, wire_5493, wire_5492, wire_5477, wire_5476, wire_5439, wire_5438, wire_5425, wire_5424, wire_5411, wire_5410, wire_6893, wire_6892, wire_6879, wire_6878, wire_6865, wire_6864, wire_6827, wire_6826, wire_6811, wire_6810, wire_5237, wire_5236, wire_5199, wire_5198, wire_5185, wire_5184, wire_5155, wire_5154, wire_5145, wire_5144, wire_7153, wire_7152, wire_7143, wire_7142, wire_7113, wire_7112, wire_7099, wire_7098, wire_7085, wire_7084, wire_5501, wire_5500, wire_5487, wire_5486, wire_5471, wire_5470, wire_5433, wire_5432, wire_5419, wire_5418, wire_6887, wire_6886, wire_6859, wire_6858, wire_6849, wire_6848, wire_6845, wire_6844, wire_6805, wire_6804, wire_5231, wire_5230, wire_5221, wire_5220, wire_5193, wire_5192, wire_5179, wire_5178, wire_5163, wire_5162, wire_7137, wire_7136, wire_7131, wire_7130, wire_7121, wire_7120, wire_7093, wire_7092, wire_7079, wire_7078, wire_5495, wire_5494, wire_5481, wire_5480, wire_5465, wire_5464, wire_5451, wire_5450, wire_5413, wire_5412};
    // IPIN TOTAL: 150
    assign lut_tile_1_6_ipin_in = {wire_3401, wire_3400, wire_3387, wire_3386, wire_3359, wire_3358, wire_3349, wire_3348, wire_3343, wire_3342, wire_7249, wire_7248, wire_7239, wire_7238, wire_7211, wire_7210, wire_7199, wire_7198, wire_7181, wire_7180, wire_3675, wire_3674, wire_3635, wire_3634, wire_3631, wire_3630, wire_3621, wire_3620, wire_3593, wire_3592, wire_6985, wire_6984, wire_6965, wire_6964, wire_6947, wire_6946, wire_6935, wire_6934, wire_6909, wire_6908, wire_3395, wire_3394, wire_3381, wire_3380, wire_3367, wire_3366, wire_3353, wire_3352, wire_3337, wire_3336, wire_7253, wire_7252, wire_7225, wire_7224, wire_7213, wire_7212, wire_7187, wire_7186, wire_7175, wire_7174, wire_3669, wire_3668, wire_3653, wire_3652, wire_3615, wire_3614, wire_3601, wire_3600, wire_3587, wire_3586, wire_6979, wire_6978, wire_6961, wire_6960, wire_6941, wire_6940, wire_6923, wire_6922, wire_6911, wire_6910, wire_3413, wire_3412, wire_3375, wire_3374, wire_3361, wire_3360, wire_3331, wire_3330, wire_3321, wire_3320, wire_7247, wire_7246, wire_7229, wire_7228, wire_7201, wire_7200, wire_7189, wire_7188, wire_7163, wire_7162, wire_3677, wire_3676, wire_3663, wire_3662, wire_3647, wire_3646, wire_3609, wire_3608, wire_3595, wire_3594, wire_6983, wire_6982, wire_6955, wire_6954, wire_6937, wire_6936, wire_6917, wire_6916, wire_6897, wire_6896, wire_3407, wire_3406, wire_3397, wire_3396, wire_3369, wire_3368, wire_3355, wire_3354, wire_3339, wire_3338, wire_7235, wire_7234, wire_7223, wire_7222, wire_7195, wire_7194, wire_7177, wire_7176, wire_7165, wire_7164, wire_3671, wire_3670, wire_3657, wire_3656, wire_3641, wire_3640, wire_3627, wire_3626, wire_3589, wire_3588};
    // IPIN TOTAL: 150
    assign lut_tile_2_6_ipin_in = {wire_3671, wire_3670, wire_3661, wire_3660, wire_3655, wire_3654, wire_3617, wire_3616, wire_3603, wire_3602, wire_7279, wire_7278, wire_7237, wire_7236, wire_7209, wire_7208, wire_7197, wire_7196, wire_7179, wire_7178, wire_3943, wire_3942, wire_3933, wire_3932, wire_3905, wire_3904, wire_3891, wire_3890, wire_3851, wire_3850, wire_7001, wire_7000, wire_6991, wire_6990, wire_6963, wire_6962, wire_6945, wire_6944, wire_6907, wire_6906, wire_3679, wire_3678, wire_3665, wire_3664, wire_3649, wire_3648, wire_3611, wire_3610, wire_3597, wire_3596, wire_7273, wire_7272, wire_7251, wire_7250, wire_7211, wire_7210, wire_7185, wire_7184, wire_7173, wire_7172, wire_3927, wire_3926, wire_3913, wire_3912, wire_3899, wire_3898, wire_3885, wire_3884, wire_3869, wire_3868, wire_6995, wire_6994, wire_6977, wire_6976, wire_6967, wire_6966, wire_6939, wire_6938, wire_6921, wire_6920, wire_3673, wire_3672, wire_3643, wire_3642, wire_3633, wire_3632, wire_3629, wire_3628, wire_3591, wire_3590, wire_7267, wire_7266, wire_7245, wire_7244, wire_7227, wire_7226, wire_7187, wire_7186, wire_7161, wire_7160, wire_3921, wire_3920, wire_3907, wire_3906, wire_3893, wire_3892, wire_3879, wire_3878, wire_3863, wire_3862, wire_7013, wire_7012, wire_6953, wire_6952, wire_6943, wire_6942, wire_6915, wire_6914, wire_6903, wire_6902, wire_3667, wire_3666, wire_3651, wire_3650, wire_3623, wire_3622, wire_3613, wire_3612, wire_3585, wire_3584, wire_7261, wire_7260, wire_7233, wire_7232, wire_7221, wire_7220, wire_7193, wire_7192, wire_7163, wire_7162, wire_3939, wire_3938, wire_3901, wire_3900, wire_3887, wire_3886, wire_3873, wire_3872, wire_3857, wire_3856};
    // IPIN TOTAL: 150
    assign lut_tile_3_6_ipin_in = {wire_3929, wire_3928, wire_3915, wire_3914, wire_3887, wire_3886, wire_3877, wire_3876, wire_3871, wire_3870, wire_7285, wire_7284, wire_7269, wire_7268, wire_7253, wire_7252, wire_7235, wire_7234, wire_7195, wire_7194, wire_4203, wire_4202, wire_4163, wire_4162, wire_4159, wire_4158, wire_4149, wire_4148, wire_4121, wire_4120, wire_7029, wire_7028, wire_7015, wire_7014, wire_6961, wire_6960, wire_6931, wire_6930, wire_6905, wire_6904, wire_3923, wire_3922, wire_3909, wire_3908, wire_3895, wire_3894, wire_3881, wire_3880, wire_3865, wire_3864, wire_7303, wire_7302, wire_7293, wire_7292, wire_7263, wire_7262, wire_7229, wire_7228, wire_7171, wire_7170, wire_4197, wire_4196, wire_4181, wire_4180, wire_4143, wire_4142, wire_4129, wire_4128, wire_4115, wire_4114, wire_7037, wire_7036, wire_7023, wire_7022, wire_7009, wire_7008, wire_6937, wire_6936, wire_6907, wire_6906, wire_3941, wire_3940, wire_3903, wire_3902, wire_3889, wire_3888, wire_3859, wire_3858, wire_3849, wire_3848, wire_7297, wire_7296, wire_7287, wire_7286, wire_7257, wire_7256, wire_7243, wire_7242, wire_7205, wire_7204, wire_4205, wire_4204, wire_4191, wire_4190, wire_4175, wire_4174, wire_4137, wire_4136, wire_4123, wire_4122, wire_7031, wire_7030, wire_7003, wire_7002, wire_6993, wire_6992, wire_6979, wire_6978, wire_6913, wire_6912, wire_3935, wire_3934, wire_3925, wire_3924, wire_3897, wire_3896, wire_3883, wire_3882, wire_3867, wire_3866, wire_7281, wire_7280, wire_7275, wire_7274, wire_7265, wire_7264, wire_7219, wire_7218, wire_7181, wire_7180, wire_4199, wire_4198, wire_4185, wire_4184, wire_4169, wire_4168, wire_4155, wire_4154, wire_4117, wire_4116};
    // IPIN TOTAL: 150
    assign lut_tile_4_6_ipin_in = {wire_4199, wire_4198, wire_4189, wire_4188, wire_4183, wire_4182, wire_4145, wire_4144, wire_4131, wire_4130, wire_7327, wire_7326, wire_7299, wire_7298, wire_7289, wire_7288, wire_7261, wire_7260, wire_7213, wire_7212, wire_4471, wire_4470, wire_4461, wire_4460, wire_4433, wire_4432, wire_4419, wire_4418, wire_4379, wire_4378, wire_7049, wire_7048, wire_7033, wire_7032, wire_7019, wire_7018, wire_7005, wire_7004, wire_6987, wire_6986, wire_4207, wire_4206, wire_4193, wire_4192, wire_4177, wire_4176, wire_4139, wire_4138, wire_4125, wire_4124, wire_7321, wire_7320, wire_7283, wire_7282, wire_7279, wire_7278, wire_7269, wire_7268, wire_7189, wire_7188, wire_4455, wire_4454, wire_4441, wire_4440, wire_4427, wire_4426, wire_4413, wire_4412, wire_4397, wire_4396, wire_7043, wire_7042, wire_7027, wire_7026, wire_7013, wire_7012, wire_6999, wire_6998, wire_6963, wire_6962, wire_4201, wire_4200, wire_4171, wire_4170, wire_4161, wire_4160, wire_4157, wire_4156, wire_4119, wire_4118, wire_7315, wire_7314, wire_7301, wire_7300, wire_7273, wire_7272, wire_7263, wire_7262, wire_7165, wire_7164, wire_4449, wire_4448, wire_4435, wire_4434, wire_4421, wire_4420, wire_4407, wire_4406, wire_4391, wire_4390, wire_7061, wire_7060, wire_7021, wire_7020, wire_7007, wire_7006, wire_6939, wire_6938, wire_6899, wire_6898, wire_4195, wire_4194, wire_4179, wire_4178, wire_4151, wire_4150, wire_4141, wire_4140, wire_4113, wire_4112, wire_7309, wire_7308, wire_7295, wire_7294, wire_7257, wire_7256, wire_7237, wire_7236, wire_7197, wire_7196, wire_4467, wire_4466, wire_4429, wire_4428, wire_4415, wire_4414, wire_4401, wire_4400, wire_4385, wire_4384};
    // IPIN TOTAL: 150
    assign lut_tile_5_6_ipin_in = {wire_4457, wire_4456, wire_4443, wire_4442, wire_4415, wire_4414, wire_4405, wire_4404, wire_4399, wire_4398, wire_7333, wire_7332, wire_7317, wire_7316, wire_7303, wire_7302, wire_7275, wire_7274, wire_7265, wire_7264, wire_4731, wire_4730, wire_4691, wire_4690, wire_4687, wire_4686, wire_4677, wire_4676, wire_4649, wire_4648, wire_7077, wire_7076, wire_7063, wire_7062, wire_7025, wire_7024, wire_7009, wire_7008, wire_6995, wire_6994, wire_4451, wire_4450, wire_4437, wire_4436, wire_4423, wire_4422, wire_4409, wire_4408, wire_4393, wire_4392, wire_7351, wire_7350, wire_7341, wire_7340, wire_7311, wire_7310, wire_7297, wire_7296, wire_7259, wire_7258, wire_4725, wire_4724, wire_4709, wire_4708, wire_4671, wire_4670, wire_4657, wire_4656, wire_4643, wire_4642, wire_7085, wire_7084, wire_7071, wire_7070, wire_7057, wire_7056, wire_7019, wire_7018, wire_7003, wire_7002, wire_4469, wire_4468, wire_4431, wire_4430, wire_4417, wire_4416, wire_4387, wire_4386, wire_4377, wire_4376, wire_7345, wire_7344, wire_7335, wire_7334, wire_7305, wire_7304, wire_7291, wire_7290, wire_7277, wire_7276, wire_4733, wire_4732, wire_4719, wire_4718, wire_4703, wire_4702, wire_4665, wire_4664, wire_4651, wire_4650, wire_7079, wire_7078, wire_7051, wire_7050, wire_7041, wire_7040, wire_7037, wire_7036, wire_6997, wire_6996, wire_4463, wire_4462, wire_4453, wire_4452, wire_4425, wire_4424, wire_4411, wire_4410, wire_4395, wire_4394, wire_7329, wire_7328, wire_7323, wire_7322, wire_7313, wire_7312, wire_7285, wire_7284, wire_7271, wire_7270, wire_4727, wire_4726, wire_4713, wire_4712, wire_4697, wire_4696, wire_4683, wire_4682, wire_4645, wire_4644};
    // IPIN TOTAL: 150
    assign lut_tile_6_6_ipin_in = {wire_4727, wire_4726, wire_4717, wire_4716, wire_4711, wire_4710, wire_4673, wire_4672, wire_4659, wire_4658, wire_7375, wire_7374, wire_7347, wire_7346, wire_7337, wire_7336, wire_7309, wire_7308, wire_7293, wire_7292, wire_4999, wire_4998, wire_4989, wire_4988, wire_4961, wire_4960, wire_4947, wire_4946, wire_4907, wire_4906, wire_7097, wire_7096, wire_7081, wire_7080, wire_7067, wire_7066, wire_7053, wire_7052, wire_7039, wire_7038, wire_4735, wire_4734, wire_4721, wire_4720, wire_4705, wire_4704, wire_4667, wire_4666, wire_4653, wire_4652, wire_7369, wire_7368, wire_7331, wire_7330, wire_7327, wire_7326, wire_7317, wire_7316, wire_7287, wire_7286, wire_4983, wire_4982, wire_4969, wire_4968, wire_4955, wire_4954, wire_4941, wire_4940, wire_4925, wire_4924, wire_7091, wire_7090, wire_7075, wire_7074, wire_7061, wire_7060, wire_7047, wire_7046, wire_7033, wire_7032, wire_4729, wire_4728, wire_4699, wire_4698, wire_4689, wire_4688, wire_4685, wire_4684, wire_4647, wire_4646, wire_7363, wire_7362, wire_7349, wire_7348, wire_7321, wire_7320, wire_7311, wire_7310, wire_7281, wire_7280, wire_4977, wire_4976, wire_4963, wire_4962, wire_4949, wire_4948, wire_4935, wire_4934, wire_4919, wire_4918, wire_7109, wire_7108, wire_7069, wire_7068, wire_7055, wire_7054, wire_7027, wire_7026, wire_7017, wire_7016, wire_4723, wire_4722, wire_4707, wire_4706, wire_4679, wire_4678, wire_4669, wire_4668, wire_4641, wire_4640, wire_7357, wire_7356, wire_7343, wire_7342, wire_7305, wire_7304, wire_7299, wire_7298, wire_7289, wire_7288, wire_4995, wire_4994, wire_4957, wire_4956, wire_4943, wire_4942, wire_4929, wire_4928, wire_4913, wire_4912};
    // IPIN TOTAL: 150
    assign lut_tile_7_6_ipin_in = {wire_4985, wire_4984, wire_4971, wire_4970, wire_4943, wire_4942, wire_4933, wire_4932, wire_4927, wire_4926, wire_7381, wire_7380, wire_7365, wire_7364, wire_7351, wire_7350, wire_7323, wire_7322, wire_7313, wire_7312, wire_5259, wire_5258, wire_5219, wire_5218, wire_5215, wire_5214, wire_5205, wire_5204, wire_5177, wire_5176, wire_7125, wire_7124, wire_7111, wire_7110, wire_7073, wire_7072, wire_7057, wire_7056, wire_7043, wire_7042, wire_4979, wire_4978, wire_4965, wire_4964, wire_4951, wire_4950, wire_4937, wire_4936, wire_4921, wire_4920, wire_7399, wire_7398, wire_7389, wire_7388, wire_7359, wire_7358, wire_7345, wire_7344, wire_7307, wire_7306, wire_5253, wire_5252, wire_5237, wire_5236, wire_5199, wire_5198, wire_5185, wire_5184, wire_5171, wire_5170, wire_7133, wire_7132, wire_7119, wire_7118, wire_7105, wire_7104, wire_7067, wire_7066, wire_7051, wire_7050, wire_4997, wire_4996, wire_4959, wire_4958, wire_4945, wire_4944, wire_4915, wire_4914, wire_4905, wire_4904, wire_7393, wire_7392, wire_7383, wire_7382, wire_7353, wire_7352, wire_7339, wire_7338, wire_7325, wire_7324, wire_5261, wire_5260, wire_5247, wire_5246, wire_5231, wire_5230, wire_5193, wire_5192, wire_5179, wire_5178, wire_7127, wire_7126, wire_7099, wire_7098, wire_7089, wire_7088, wire_7085, wire_7084, wire_7045, wire_7044, wire_4991, wire_4990, wire_4981, wire_4980, wire_4953, wire_4952, wire_4939, wire_4938, wire_4923, wire_4922, wire_7377, wire_7376, wire_7371, wire_7370, wire_7361, wire_7360, wire_7333, wire_7332, wire_7319, wire_7318, wire_5255, wire_5254, wire_5241, wire_5240, wire_5225, wire_5224, wire_5211, wire_5210, wire_5173, wire_5172};
    // IPIN TOTAL: 150
    assign lut_tile_8_6_ipin_in = {wire_5255, wire_5254, wire_5245, wire_5244, wire_5239, wire_5238, wire_5201, wire_5200, wire_5187, wire_5186, wire_7423, wire_7422, wire_7395, wire_7394, wire_7385, wire_7384, wire_7357, wire_7356, wire_7341, wire_7340, wire_5527, wire_5526, wire_5517, wire_5516, wire_5489, wire_5488, wire_5475, wire_5474, wire_5435, wire_5434, wire_7145, wire_7144, wire_7129, wire_7128, wire_7115, wire_7114, wire_7101, wire_7100, wire_7087, wire_7086, wire_5263, wire_5262, wire_5249, wire_5248, wire_5233, wire_5232, wire_5195, wire_5194, wire_5181, wire_5180, wire_7417, wire_7416, wire_7379, wire_7378, wire_7375, wire_7374, wire_7365, wire_7364, wire_7335, wire_7334, wire_5511, wire_5510, wire_5497, wire_5496, wire_5483, wire_5482, wire_5469, wire_5468, wire_5453, wire_5452, wire_7139, wire_7138, wire_7123, wire_7122, wire_7109, wire_7108, wire_7095, wire_7094, wire_7081, wire_7080, wire_5257, wire_5256, wire_5227, wire_5226, wire_5217, wire_5216, wire_5213, wire_5212, wire_5175, wire_5174, wire_7411, wire_7410, wire_7397, wire_7396, wire_7369, wire_7368, wire_7359, wire_7358, wire_7329, wire_7328, wire_5505, wire_5504, wire_5491, wire_5490, wire_5477, wire_5476, wire_5463, wire_5462, wire_5447, wire_5446, wire_7157, wire_7156, wire_7117, wire_7116, wire_7103, wire_7102, wire_7075, wire_7074, wire_7065, wire_7064, wire_5251, wire_5250, wire_5235, wire_5234, wire_5207, wire_5206, wire_5197, wire_5196, wire_5169, wire_5168, wire_7405, wire_7404, wire_7391, wire_7390, wire_7353, wire_7352, wire_7347, wire_7346, wire_7337, wire_7336, wire_5523, wire_5522, wire_5485, wire_5484, wire_5471, wire_5470, wire_5457, wire_5456, wire_5441, wire_5440};
    // IPIN TOTAL: 150
    assign lut_tile_1_7_ipin_in = {wire_3431, wire_3430, wire_3421, wire_3420, wire_3415, wire_3414, wire_3377, wire_3376, wire_3363, wire_3362, wire_7519, wire_7518, wire_7501, wire_7500, wire_7473, wire_7472, wire_7461, wire_7460, wire_7443, wire_7442, wire_3703, wire_3702, wire_3693, wire_3692, wire_3665, wire_3664, wire_3651, wire_3650, wire_3611, wire_3610, wire_7255, wire_7254, wire_7227, wire_7226, wire_7209, wire_7208, wire_7197, wire_7196, wire_7171, wire_7170, wire_3439, wire_3438, wire_3425, wire_3424, wire_3409, wire_3408, wire_3371, wire_3370, wire_3357, wire_3356, wire_7515, wire_7514, wire_7495, wire_7494, wire_7475, wire_7474, wire_7449, wire_7448, wire_7437, wire_7436, wire_3687, wire_3686, wire_3673, wire_3672, wire_3659, wire_3658, wire_3645, wire_3644, wire_3629, wire_3628, wire_7241, wire_7240, wire_7231, wire_7230, wire_7203, wire_7202, wire_7185, wire_7184, wire_7173, wire_7172, wire_3433, wire_3432, wire_3403, wire_3402, wire_3393, wire_3392, wire_3389, wire_3388, wire_3351, wire_3350, wire_7509, wire_7508, wire_7491, wire_7490, wire_7471, wire_7470, wire_7451, wire_7450, wire_7425, wire_7424, wire_3681, wire_3680, wire_3667, wire_3666, wire_3653, wire_3652, wire_3639, wire_3638, wire_3623, wire_3622, wire_7245, wire_7244, wire_7217, wire_7216, wire_7207, wire_7206, wire_7179, wire_7178, wire_7167, wire_7166, wire_3427, wire_3426, wire_3411, wire_3410, wire_3383, wire_3382, wire_3373, wire_3372, wire_3345, wire_3344, wire_7497, wire_7496, wire_7485, wire_7484, wire_7457, wire_7456, wire_7447, wire_7446, wire_7427, wire_7426, wire_3699, wire_3698, wire_3661, wire_3660, wire_3647, wire_3646, wire_3633, wire_3632, wire_3617, wire_3616};
    // IPIN TOTAL: 150
    assign lut_tile_2_7_ipin_in = {wire_3689, wire_3688, wire_3675, wire_3674, wire_3647, wire_3646, wire_3637, wire_3636, wire_3631, wire_3630, wire_7525, wire_7524, wire_7517, wire_7516, wire_7499, wire_7498, wire_7479, wire_7478, wire_7459, wire_7458, wire_3963, wire_3962, wire_3923, wire_3922, wire_3919, wire_3918, wire_3909, wire_3908, wire_3881, wire_3880, wire_7269, wire_7268, wire_7253, wire_7252, wire_7225, wire_7224, wire_7195, wire_7194, wire_7169, wire_7168, wire_3683, wire_3682, wire_3669, wire_3668, wire_3655, wire_3654, wire_3641, wire_3640, wire_3625, wire_3624, wire_7543, wire_7542, wire_7533, wire_7532, wire_7493, wire_7492, wire_7455, wire_7454, wire_7435, wire_7434, wire_3957, wire_3956, wire_3941, wire_3940, wire_3903, wire_3902, wire_3889, wire_3888, wire_3875, wire_3874, wire_7277, wire_7276, wire_7263, wire_7262, wire_7229, wire_7228, wire_7201, wire_7200, wire_7171, wire_7170, wire_3701, wire_3700, wire_3663, wire_3662, wire_3649, wire_3648, wire_3619, wire_3618, wire_3609, wire_3608, wire_7537, wire_7536, wire_7527, wire_7526, wire_7507, wire_7506, wire_7469, wire_7468, wire_7431, wire_7430, wire_3965, wire_3964, wire_3951, wire_3950, wire_3935, wire_3934, wire_3897, wire_3896, wire_3883, wire_3882, wire_7271, wire_7270, wire_7243, wire_7242, wire_7205, wire_7204, wire_7177, wire_7176, wire_7165, wire_7164, wire_3695, wire_3694, wire_3685, wire_3684, wire_3657, wire_3656, wire_3643, wire_3642, wire_3627, wire_3626, wire_7521, wire_7520, wire_7503, wire_7502, wire_7483, wire_7482, wire_7463, wire_7462, wire_7445, wire_7444, wire_3959, wire_3958, wire_3945, wire_3944, wire_3929, wire_3928, wire_3915, wire_3914, wire_3877, wire_3876};
    // IPIN TOTAL: 150
    assign lut_tile_3_7_ipin_in = {wire_3959, wire_3958, wire_3949, wire_3948, wire_3943, wire_3942, wire_3905, wire_3904, wire_3891, wire_3890, wire_7567, wire_7566, wire_7539, wire_7538, wire_7529, wire_7528, wire_7477, wire_7476, wire_7447, wire_7446, wire_4231, wire_4230, wire_4221, wire_4220, wire_4193, wire_4192, wire_4179, wire_4178, wire_4139, wire_4138, wire_7289, wire_7288, wire_7273, wire_7272, wire_7259, wire_7258, wire_7251, wire_7250, wire_7213, wire_7212, wire_3967, wire_3966, wire_3953, wire_3952, wire_3937, wire_3936, wire_3899, wire_3898, wire_3885, wire_3884, wire_7561, wire_7560, wire_7523, wire_7522, wire_7519, wire_7518, wire_7479, wire_7478, wire_7453, wire_7452, wire_4215, wire_4214, wire_4201, wire_4200, wire_4187, wire_4186, wire_4173, wire_4172, wire_4157, wire_4156, wire_7283, wire_7282, wire_7267, wire_7266, wire_7245, wire_7244, wire_7227, wire_7226, wire_7189, wire_7188, wire_3961, wire_3960, wire_3931, wire_3930, wire_3921, wire_3920, wire_3917, wire_3916, wire_3879, wire_3878, wire_7555, wire_7554, wire_7541, wire_7540, wire_7495, wire_7494, wire_7455, wire_7454, wire_7429, wire_7428, wire_4209, wire_4208, wire_4195, wire_4194, wire_4181, wire_4180, wire_4167, wire_4166, wire_4151, wire_4150, wire_7301, wire_7300, wire_7261, wire_7260, wire_7221, wire_7220, wire_7203, wire_7202, wire_7163, wire_7162, wire_3955, wire_3954, wire_3939, wire_3938, wire_3911, wire_3910, wire_3901, wire_3900, wire_3873, wire_3872, wire_7549, wire_7548, wire_7535, wire_7534, wire_7501, wire_7500, wire_7461, wire_7460, wire_7431, wire_7430, wire_4227, wire_4226, wire_4189, wire_4188, wire_4175, wire_4174, wire_4161, wire_4160, wire_4145, wire_4144};
    // IPIN TOTAL: 150
    assign lut_tile_4_7_ipin_in = {wire_4217, wire_4216, wire_4203, wire_4202, wire_4175, wire_4174, wire_4165, wire_4164, wire_4159, wire_4158, wire_7573, wire_7572, wire_7557, wire_7556, wire_7543, wire_7542, wire_7503, wire_7502, wire_7463, wire_7462, wire_4491, wire_4490, wire_4451, wire_4450, wire_4447, wire_4446, wire_4437, wire_4436, wire_4409, wire_4408, wire_7317, wire_7316, wire_7303, wire_7302, wire_7265, wire_7264, wire_7229, wire_7228, wire_7173, wire_7172, wire_4211, wire_4210, wire_4197, wire_4196, wire_4183, wire_4182, wire_4169, wire_4168, wire_4153, wire_4152, wire_7591, wire_7590, wire_7581, wire_7580, wire_7551, wire_7550, wire_7537, wire_7536, wire_7439, wire_7438, wire_4485, wire_4484, wire_4469, wire_4468, wire_4431, wire_4430, wire_4417, wire_4416, wire_4403, wire_4402, wire_7325, wire_7324, wire_7311, wire_7310, wire_7297, wire_7296, wire_7259, wire_7258, wire_7205, wire_7204, wire_4229, wire_4228, wire_4191, wire_4190, wire_4177, wire_4176, wire_4147, wire_4146, wire_4137, wire_4136, wire_7585, wire_7584, wire_7575, wire_7574, wire_7545, wire_7544, wire_7531, wire_7530, wire_7511, wire_7510, wire_4493, wire_4492, wire_4479, wire_4478, wire_4463, wire_4462, wire_4425, wire_4424, wire_4411, wire_4410, wire_7319, wire_7318, wire_7291, wire_7290, wire_7281, wire_7280, wire_7277, wire_7276, wire_7181, wire_7180, wire_4223, wire_4222, wire_4213, wire_4212, wire_4185, wire_4184, wire_4171, wire_4170, wire_4155, wire_4154, wire_7569, wire_7568, wire_7563, wire_7562, wire_7553, wire_7552, wire_7525, wire_7524, wire_7487, wire_7486, wire_4487, wire_4486, wire_4473, wire_4472, wire_4457, wire_4456, wire_4443, wire_4442, wire_4405, wire_4404};
    // IPIN TOTAL: 150
    assign lut_tile_5_7_ipin_in = {wire_4487, wire_4486, wire_4477, wire_4476, wire_4471, wire_4470, wire_4433, wire_4432, wire_4419, wire_4418, wire_7615, wire_7614, wire_7587, wire_7586, wire_7577, wire_7576, wire_7549, wire_7548, wire_7533, wire_7532, wire_4759, wire_4758, wire_4749, wire_4748, wire_4721, wire_4720, wire_4707, wire_4706, wire_4667, wire_4666, wire_7337, wire_7336, wire_7321, wire_7320, wire_7307, wire_7306, wire_7293, wire_7292, wire_7279, wire_7278, wire_4495, wire_4494, wire_4481, wire_4480, wire_4465, wire_4464, wire_4427, wire_4426, wire_4413, wire_4412, wire_7609, wire_7608, wire_7571, wire_7570, wire_7567, wire_7566, wire_7557, wire_7556, wire_7527, wire_7526, wire_4743, wire_4742, wire_4729, wire_4728, wire_4715, wire_4714, wire_4701, wire_4700, wire_4685, wire_4684, wire_7331, wire_7330, wire_7315, wire_7314, wire_7301, wire_7300, wire_7287, wire_7286, wire_7273, wire_7272, wire_4489, wire_4488, wire_4459, wire_4458, wire_4449, wire_4448, wire_4445, wire_4444, wire_4407, wire_4406, wire_7603, wire_7602, wire_7589, wire_7588, wire_7561, wire_7560, wire_7551, wire_7550, wire_7521, wire_7520, wire_4737, wire_4736, wire_4723, wire_4722, wire_4709, wire_4708, wire_4695, wire_4694, wire_4679, wire_4678, wire_7349, wire_7348, wire_7309, wire_7308, wire_7295, wire_7294, wire_7267, wire_7266, wire_7257, wire_7256, wire_4483, wire_4482, wire_4467, wire_4466, wire_4439, wire_4438, wire_4429, wire_4428, wire_4401, wire_4400, wire_7597, wire_7596, wire_7583, wire_7582, wire_7545, wire_7544, wire_7539, wire_7538, wire_7529, wire_7528, wire_4755, wire_4754, wire_4717, wire_4716, wire_4703, wire_4702, wire_4689, wire_4688, wire_4673, wire_4672};
    // IPIN TOTAL: 150
    assign lut_tile_6_7_ipin_in = {wire_4745, wire_4744, wire_4731, wire_4730, wire_4703, wire_4702, wire_4693, wire_4692, wire_4687, wire_4686, wire_7621, wire_7620, wire_7605, wire_7604, wire_7591, wire_7590, wire_7563, wire_7562, wire_7553, wire_7552, wire_5019, wire_5018, wire_4979, wire_4978, wire_4975, wire_4974, wire_4965, wire_4964, wire_4937, wire_4936, wire_7365, wire_7364, wire_7351, wire_7350, wire_7313, wire_7312, wire_7297, wire_7296, wire_7283, wire_7282, wire_4739, wire_4738, wire_4725, wire_4724, wire_4711, wire_4710, wire_4697, wire_4696, wire_4681, wire_4680, wire_7639, wire_7638, wire_7629, wire_7628, wire_7599, wire_7598, wire_7585, wire_7584, wire_7547, wire_7546, wire_5013, wire_5012, wire_4997, wire_4996, wire_4959, wire_4958, wire_4945, wire_4944, wire_4931, wire_4930, wire_7373, wire_7372, wire_7359, wire_7358, wire_7345, wire_7344, wire_7307, wire_7306, wire_7291, wire_7290, wire_4757, wire_4756, wire_4719, wire_4718, wire_4705, wire_4704, wire_4675, wire_4674, wire_4665, wire_4664, wire_7633, wire_7632, wire_7623, wire_7622, wire_7593, wire_7592, wire_7579, wire_7578, wire_7565, wire_7564, wire_5021, wire_5020, wire_5007, wire_5006, wire_4991, wire_4990, wire_4953, wire_4952, wire_4939, wire_4938, wire_7367, wire_7366, wire_7339, wire_7338, wire_7329, wire_7328, wire_7325, wire_7324, wire_7285, wire_7284, wire_4751, wire_4750, wire_4741, wire_4740, wire_4713, wire_4712, wire_4699, wire_4698, wire_4683, wire_4682, wire_7617, wire_7616, wire_7611, wire_7610, wire_7601, wire_7600, wire_7573, wire_7572, wire_7559, wire_7558, wire_5015, wire_5014, wire_5001, wire_5000, wire_4985, wire_4984, wire_4971, wire_4970, wire_4933, wire_4932};
    // IPIN TOTAL: 150
    assign lut_tile_7_7_ipin_in = {wire_5015, wire_5014, wire_5005, wire_5004, wire_4999, wire_4998, wire_4961, wire_4960, wire_4947, wire_4946, wire_7663, wire_7662, wire_7635, wire_7634, wire_7625, wire_7624, wire_7597, wire_7596, wire_7581, wire_7580, wire_5287, wire_5286, wire_5277, wire_5276, wire_5249, wire_5248, wire_5235, wire_5234, wire_5195, wire_5194, wire_7385, wire_7384, wire_7369, wire_7368, wire_7355, wire_7354, wire_7341, wire_7340, wire_7327, wire_7326, wire_5023, wire_5022, wire_5009, wire_5008, wire_4993, wire_4992, wire_4955, wire_4954, wire_4941, wire_4940, wire_7657, wire_7656, wire_7619, wire_7618, wire_7615, wire_7614, wire_7605, wire_7604, wire_7575, wire_7574, wire_5271, wire_5270, wire_5257, wire_5256, wire_5243, wire_5242, wire_5229, wire_5228, wire_5213, wire_5212, wire_7379, wire_7378, wire_7363, wire_7362, wire_7349, wire_7348, wire_7335, wire_7334, wire_7321, wire_7320, wire_5017, wire_5016, wire_4987, wire_4986, wire_4977, wire_4976, wire_4973, wire_4972, wire_4935, wire_4934, wire_7651, wire_7650, wire_7637, wire_7636, wire_7609, wire_7608, wire_7599, wire_7598, wire_7569, wire_7568, wire_5265, wire_5264, wire_5251, wire_5250, wire_5237, wire_5236, wire_5223, wire_5222, wire_5207, wire_5206, wire_7397, wire_7396, wire_7357, wire_7356, wire_7343, wire_7342, wire_7315, wire_7314, wire_7305, wire_7304, wire_5011, wire_5010, wire_4995, wire_4994, wire_4967, wire_4966, wire_4957, wire_4956, wire_4929, wire_4928, wire_7645, wire_7644, wire_7631, wire_7630, wire_7593, wire_7592, wire_7587, wire_7586, wire_7577, wire_7576, wire_5283, wire_5282, wire_5245, wire_5244, wire_5231, wire_5230, wire_5217, wire_5216, wire_5201, wire_5200};
    // IPIN TOTAL: 150
    assign lut_tile_8_7_ipin_in = {wire_5273, wire_5272, wire_5259, wire_5258, wire_5231, wire_5230, wire_5221, wire_5220, wire_5215, wire_5214, wire_7669, wire_7668, wire_7653, wire_7652, wire_7639, wire_7638, wire_7611, wire_7610, wire_7601, wire_7600, wire_5547, wire_5546, wire_5507, wire_5506, wire_5503, wire_5502, wire_5493, wire_5492, wire_5465, wire_5464, wire_7413, wire_7412, wire_7399, wire_7398, wire_7361, wire_7360, wire_7345, wire_7344, wire_7331, wire_7330, wire_5267, wire_5266, wire_5253, wire_5252, wire_5239, wire_5238, wire_5225, wire_5224, wire_5209, wire_5208, wire_7687, wire_7686, wire_7677, wire_7676, wire_7647, wire_7646, wire_7633, wire_7632, wire_7595, wire_7594, wire_5541, wire_5540, wire_5525, wire_5524, wire_5487, wire_5486, wire_5473, wire_5472, wire_5459, wire_5458, wire_7421, wire_7420, wire_7407, wire_7406, wire_7393, wire_7392, wire_7355, wire_7354, wire_7339, wire_7338, wire_5285, wire_5284, wire_5247, wire_5246, wire_5233, wire_5232, wire_5203, wire_5202, wire_5193, wire_5192, wire_7681, wire_7680, wire_7671, wire_7670, wire_7641, wire_7640, wire_7627, wire_7626, wire_7613, wire_7612, wire_5549, wire_5548, wire_5535, wire_5534, wire_5519, wire_5518, wire_5481, wire_5480, wire_5467, wire_5466, wire_7415, wire_7414, wire_7387, wire_7386, wire_7377, wire_7376, wire_7373, wire_7372, wire_7333, wire_7332, wire_5279, wire_5278, wire_5269, wire_5268, wire_5241, wire_5240, wire_5227, wire_5226, wire_5211, wire_5210, wire_7665, wire_7664, wire_7659, wire_7658, wire_7649, wire_7648, wire_7621, wire_7620, wire_7607, wire_7606, wire_5543, wire_5542, wire_5529, wire_5528, wire_5513, wire_5512, wire_5499, wire_5498, wire_5461, wire_5460};
    // IPIN TOTAL: 150
    assign lut_tile_1_8_ipin_in = {wire_3449, wire_3448, wire_3435, wire_3434, wire_3407, wire_3406, wire_3397, wire_3396, wire_3391, wire_3390, wire_7781, wire_7780, wire_7763, wire_7762, wire_7743, wire_7742, wire_7723, wire_7722, wire_7705, wire_7704, wire_3723, wire_3722, wire_3683, wire_3682, wire_3679, wire_3678, wire_3669, wire_3668, wire_3641, wire_3640, wire_7517, wire_7516, wire_7489, wire_7488, wire_7479, wire_7478, wire_7459, wire_7458, wire_7433, wire_7432, wire_3443, wire_3442, wire_3429, wire_3428, wire_3415, wire_3414, wire_3401, wire_3400, wire_3385, wire_3384, wire_7777, wire_7776, wire_7757, wire_7756, wire_7737, wire_7736, wire_7719, wire_7718, wire_7699, wire_7698, wire_3717, wire_3716, wire_3701, wire_3700, wire_3663, wire_3662, wire_3649, wire_3648, wire_3635, wire_3634, wire_7511, wire_7510, wire_7493, wire_7492, wire_7465, wire_7464, wire_7455, wire_7454, wire_7435, wire_7434, wire_3461, wire_3460, wire_3423, wire_3422, wire_3409, wire_3408, wire_3379, wire_3378, wire_3369, wire_3368, wire_7771, wire_7770, wire_7753, wire_7752, wire_7733, wire_7732, wire_7713, wire_7712, wire_7695, wire_7694, wire_3725, wire_3724, wire_3711, wire_3710, wire_3695, wire_3694, wire_3657, wire_3656, wire_3643, wire_3642, wire_7507, wire_7506, wire_7487, wire_7486, wire_7469, wire_7468, wire_7441, wire_7440, wire_7429, wire_7428, wire_3455, wire_3454, wire_3445, wire_3444, wire_3417, wire_3416, wire_3403, wire_3402, wire_3387, wire_3386, wire_7767, wire_7766, wire_7747, wire_7746, wire_7727, wire_7726, wire_7709, wire_7708, wire_7689, wire_7688, wire_3719, wire_3718, wire_3705, wire_3704, wire_3689, wire_3688, wire_3675, wire_3674, wire_3637, wire_3636};
    // IPIN TOTAL: 150
    assign lut_tile_2_8_ipin_in = {wire_3719, wire_3718, wire_3709, wire_3708, wire_3703, wire_3702, wire_3665, wire_3664, wire_3651, wire_3650, wire_7807, wire_7806, wire_7761, wire_7760, wire_7741, wire_7740, wire_7721, wire_7720, wire_7711, wire_7710, wire_3991, wire_3990, wire_3981, wire_3980, wire_3953, wire_3952, wire_3939, wire_3938, wire_3899, wire_3898, wire_7529, wire_7528, wire_7515, wire_7514, wire_7495, wire_7494, wire_7477, wire_7476, wire_7439, wire_7438, wire_3727, wire_3726, wire_3713, wire_3712, wire_3697, wire_3696, wire_3659, wire_3658, wire_3645, wire_3644, wire_7801, wire_7800, wire_7783, wire_7782, wire_7743, wire_7742, wire_7717, wire_7716, wire_7697, wire_7696, wire_3975, wire_3974, wire_3961, wire_3960, wire_3947, wire_3946, wire_3933, wire_3932, wire_3917, wire_3916, wire_7523, wire_7522, wire_7509, wire_7508, wire_7491, wire_7490, wire_7471, wire_7470, wire_7453, wire_7452, wire_3721, wire_3720, wire_3691, wire_3690, wire_3681, wire_3680, wire_3677, wire_3676, wire_3639, wire_3638, wire_7795, wire_7794, wire_7769, wire_7768, wire_7759, wire_7758, wire_7719, wire_7718, wire_7693, wire_7692, wire_3969, wire_3968, wire_3955, wire_3954, wire_3941, wire_3940, wire_3927, wire_3926, wire_3911, wire_3910, wire_7541, wire_7540, wire_7485, wire_7484, wire_7467, wire_7466, wire_7447, wire_7446, wire_7427, wire_7426, wire_3715, wire_3714, wire_3699, wire_3698, wire_3671, wire_3670, wire_3661, wire_3660, wire_3633, wire_3632, wire_7789, wire_7788, wire_7765, wire_7764, wire_7745, wire_7744, wire_7725, wire_7724, wire_7695, wire_7694, wire_3987, wire_3986, wire_3949, wire_3948, wire_3935, wire_3934, wire_3921, wire_3920, wire_3905, wire_3904};
    // IPIN TOTAL: 150
    assign lut_tile_3_8_ipin_in = {wire_3977, wire_3976, wire_3963, wire_3962, wire_3935, wire_3934, wire_3925, wire_3924, wire_3919, wire_3918, wire_7813, wire_7812, wire_7797, wire_7796, wire_7777, wire_7776, wire_7767, wire_7766, wire_7727, wire_7726, wire_4251, wire_4250, wire_4211, wire_4210, wire_4207, wire_4206, wire_4197, wire_4196, wire_4169, wire_4168, wire_7557, wire_7556, wire_7543, wire_7542, wire_7493, wire_7492, wire_7463, wire_7462, wire_7437, wire_7436, wire_3971, wire_3970, wire_3957, wire_3956, wire_3943, wire_3942, wire_3929, wire_3928, wire_3913, wire_3912, wire_7831, wire_7830, wire_7821, wire_7820, wire_7791, wire_7790, wire_7753, wire_7752, wire_7703, wire_7702, wire_4245, wire_4244, wire_4229, wire_4228, wire_4191, wire_4190, wire_4177, wire_4176, wire_4163, wire_4162, wire_7565, wire_7564, wire_7551, wire_7550, wire_7537, wire_7536, wire_7469, wire_7468, wire_7439, wire_7438, wire_3989, wire_3988, wire_3951, wire_3950, wire_3937, wire_3936, wire_3907, wire_3906, wire_3897, wire_3896, wire_7825, wire_7824, wire_7815, wire_7814, wire_7785, wire_7784, wire_7775, wire_7774, wire_7729, wire_7728, wire_4253, wire_4252, wire_4239, wire_4238, wire_4223, wire_4222, wire_4185, wire_4184, wire_4171, wire_4170, wire_7559, wire_7558, wire_7531, wire_7530, wire_7521, wire_7520, wire_7511, wire_7510, wire_7445, wire_7444, wire_3983, wire_3982, wire_3973, wire_3972, wire_3945, wire_3944, wire_3931, wire_3930, wire_3915, wire_3914, wire_7809, wire_7808, wire_7803, wire_7802, wire_7793, wire_7792, wire_7751, wire_7750, wire_7705, wire_7704, wire_4247, wire_4246, wire_4233, wire_4232, wire_4217, wire_4216, wire_4203, wire_4202, wire_4165, wire_4164};
    // IPIN TOTAL: 150
    assign lut_tile_4_8_ipin_in = {wire_4247, wire_4246, wire_4237, wire_4236, wire_4231, wire_4230, wire_4193, wire_4192, wire_4179, wire_4178, wire_7855, wire_7854, wire_7827, wire_7826, wire_7817, wire_7816, wire_7789, wire_7788, wire_7737, wire_7736, wire_4519, wire_4518, wire_4509, wire_4508, wire_4481, wire_4480, wire_4467, wire_4466, wire_4427, wire_4426, wire_7577, wire_7576, wire_7561, wire_7560, wire_7547, wire_7546, wire_7533, wire_7532, wire_7519, wire_7518, wire_4255, wire_4254, wire_4241, wire_4240, wire_4225, wire_4224, wire_4187, wire_4186, wire_4173, wire_4172, wire_7849, wire_7848, wire_7811, wire_7810, wire_7807, wire_7806, wire_7797, wire_7796, wire_7713, wire_7712, wire_4503, wire_4502, wire_4489, wire_4488, wire_4475, wire_4474, wire_4461, wire_4460, wire_4445, wire_4444, wire_7571, wire_7570, wire_7555, wire_7554, wire_7541, wire_7540, wire_7527, wire_7526, wire_7495, wire_7494, wire_4249, wire_4248, wire_4219, wire_4218, wire_4209, wire_4208, wire_4205, wire_4204, wire_4167, wire_4166, wire_7843, wire_7842, wire_7829, wire_7828, wire_7801, wire_7800, wire_7791, wire_7790, wire_7689, wire_7688, wire_4497, wire_4496, wire_4483, wire_4482, wire_4469, wire_4468, wire_4455, wire_4454, wire_4439, wire_4438, wire_7589, wire_7588, wire_7549, wire_7548, wire_7535, wire_7534, wire_7471, wire_7470, wire_7431, wire_7430, wire_4243, wire_4242, wire_4227, wire_4226, wire_4199, wire_4198, wire_4189, wire_4188, wire_4161, wire_4160, wire_7837, wire_7836, wire_7823, wire_7822, wire_7785, wire_7784, wire_7761, wire_7760, wire_7721, wire_7720, wire_4515, wire_4514, wire_4477, wire_4476, wire_4463, wire_4462, wire_4449, wire_4448, wire_4433, wire_4432};
    // IPIN TOTAL: 150
    assign lut_tile_5_8_ipin_in = {wire_4505, wire_4504, wire_4491, wire_4490, wire_4463, wire_4462, wire_4453, wire_4452, wire_4447, wire_4446, wire_7861, wire_7860, wire_7845, wire_7844, wire_7831, wire_7830, wire_7803, wire_7802, wire_7793, wire_7792, wire_4779, wire_4778, wire_4739, wire_4738, wire_4735, wire_4734, wire_4725, wire_4724, wire_4697, wire_4696, wire_7605, wire_7604, wire_7591, wire_7590, wire_7553, wire_7552, wire_7537, wire_7536, wire_7523, wire_7522, wire_4499, wire_4498, wire_4485, wire_4484, wire_4471, wire_4470, wire_4457, wire_4456, wire_4441, wire_4440, wire_7879, wire_7878, wire_7869, wire_7868, wire_7839, wire_7838, wire_7825, wire_7824, wire_7787, wire_7786, wire_4773, wire_4772, wire_4757, wire_4756, wire_4719, wire_4718, wire_4705, wire_4704, wire_4691, wire_4690, wire_7613, wire_7612, wire_7599, wire_7598, wire_7585, wire_7584, wire_7547, wire_7546, wire_7531, wire_7530, wire_4517, wire_4516, wire_4479, wire_4478, wire_4465, wire_4464, wire_4435, wire_4434, wire_4425, wire_4424, wire_7873, wire_7872, wire_7863, wire_7862, wire_7833, wire_7832, wire_7819, wire_7818, wire_7805, wire_7804, wire_4781, wire_4780, wire_4767, wire_4766, wire_4751, wire_4750, wire_4713, wire_4712, wire_4699, wire_4698, wire_7607, wire_7606, wire_7579, wire_7578, wire_7569, wire_7568, wire_7565, wire_7564, wire_7525, wire_7524, wire_4511, wire_4510, wire_4501, wire_4500, wire_4473, wire_4472, wire_4459, wire_4458, wire_4443, wire_4442, wire_7857, wire_7856, wire_7851, wire_7850, wire_7841, wire_7840, wire_7813, wire_7812, wire_7799, wire_7798, wire_4775, wire_4774, wire_4761, wire_4760, wire_4745, wire_4744, wire_4731, wire_4730, wire_4693, wire_4692};
    // IPIN TOTAL: 150
    assign lut_tile_6_8_ipin_in = {wire_4775, wire_4774, wire_4765, wire_4764, wire_4759, wire_4758, wire_4721, wire_4720, wire_4707, wire_4706, wire_7903, wire_7902, wire_7875, wire_7874, wire_7865, wire_7864, wire_7837, wire_7836, wire_7821, wire_7820, wire_5047, wire_5046, wire_5037, wire_5036, wire_5009, wire_5008, wire_4995, wire_4994, wire_4955, wire_4954, wire_7625, wire_7624, wire_7609, wire_7608, wire_7595, wire_7594, wire_7581, wire_7580, wire_7567, wire_7566, wire_4783, wire_4782, wire_4769, wire_4768, wire_4753, wire_4752, wire_4715, wire_4714, wire_4701, wire_4700, wire_7897, wire_7896, wire_7859, wire_7858, wire_7855, wire_7854, wire_7845, wire_7844, wire_7815, wire_7814, wire_5031, wire_5030, wire_5017, wire_5016, wire_5003, wire_5002, wire_4989, wire_4988, wire_4973, wire_4972, wire_7619, wire_7618, wire_7603, wire_7602, wire_7589, wire_7588, wire_7575, wire_7574, wire_7561, wire_7560, wire_4777, wire_4776, wire_4747, wire_4746, wire_4737, wire_4736, wire_4733, wire_4732, wire_4695, wire_4694, wire_7891, wire_7890, wire_7877, wire_7876, wire_7849, wire_7848, wire_7839, wire_7838, wire_7809, wire_7808, wire_5025, wire_5024, wire_5011, wire_5010, wire_4997, wire_4996, wire_4983, wire_4982, wire_4967, wire_4966, wire_7637, wire_7636, wire_7597, wire_7596, wire_7583, wire_7582, wire_7555, wire_7554, wire_7545, wire_7544, wire_4771, wire_4770, wire_4755, wire_4754, wire_4727, wire_4726, wire_4717, wire_4716, wire_4689, wire_4688, wire_7885, wire_7884, wire_7871, wire_7870, wire_7833, wire_7832, wire_7827, wire_7826, wire_7817, wire_7816, wire_5043, wire_5042, wire_5005, wire_5004, wire_4991, wire_4990, wire_4977, wire_4976, wire_4961, wire_4960};
    // IPIN TOTAL: 150
    assign lut_tile_7_8_ipin_in = {wire_5033, wire_5032, wire_5019, wire_5018, wire_4991, wire_4990, wire_4981, wire_4980, wire_4975, wire_4974, wire_7909, wire_7908, wire_7893, wire_7892, wire_7879, wire_7878, wire_7851, wire_7850, wire_7841, wire_7840, wire_5307, wire_5306, wire_5267, wire_5266, wire_5263, wire_5262, wire_5253, wire_5252, wire_5225, wire_5224, wire_7653, wire_7652, wire_7639, wire_7638, wire_7601, wire_7600, wire_7585, wire_7584, wire_7571, wire_7570, wire_5027, wire_5026, wire_5013, wire_5012, wire_4999, wire_4998, wire_4985, wire_4984, wire_4969, wire_4968, wire_7927, wire_7926, wire_7917, wire_7916, wire_7887, wire_7886, wire_7873, wire_7872, wire_7835, wire_7834, wire_5301, wire_5300, wire_5285, wire_5284, wire_5247, wire_5246, wire_5233, wire_5232, wire_5219, wire_5218, wire_7661, wire_7660, wire_7647, wire_7646, wire_7633, wire_7632, wire_7595, wire_7594, wire_7579, wire_7578, wire_5045, wire_5044, wire_5007, wire_5006, wire_4993, wire_4992, wire_4963, wire_4962, wire_4953, wire_4952, wire_7921, wire_7920, wire_7911, wire_7910, wire_7881, wire_7880, wire_7867, wire_7866, wire_7853, wire_7852, wire_5309, wire_5308, wire_5295, wire_5294, wire_5279, wire_5278, wire_5241, wire_5240, wire_5227, wire_5226, wire_7655, wire_7654, wire_7627, wire_7626, wire_7617, wire_7616, wire_7613, wire_7612, wire_7573, wire_7572, wire_5039, wire_5038, wire_5029, wire_5028, wire_5001, wire_5000, wire_4987, wire_4986, wire_4971, wire_4970, wire_7905, wire_7904, wire_7899, wire_7898, wire_7889, wire_7888, wire_7861, wire_7860, wire_7847, wire_7846, wire_5303, wire_5302, wire_5289, wire_5288, wire_5273, wire_5272, wire_5259, wire_5258, wire_5221, wire_5220};
    // IPIN TOTAL: 150
    assign lut_tile_8_8_ipin_in = {wire_5303, wire_5302, wire_5293, wire_5292, wire_5287, wire_5286, wire_5249, wire_5248, wire_5235, wire_5234, wire_7951, wire_7950, wire_7923, wire_7922, wire_7913, wire_7912, wire_7885, wire_7884, wire_7869, wire_7868, wire_5575, wire_5574, wire_5565, wire_5564, wire_5537, wire_5536, wire_5523, wire_5522, wire_5483, wire_5482, wire_7673, wire_7672, wire_7657, wire_7656, wire_7643, wire_7642, wire_7629, wire_7628, wire_7615, wire_7614, wire_5311, wire_5310, wire_5297, wire_5296, wire_5281, wire_5280, wire_5243, wire_5242, wire_5229, wire_5228, wire_7945, wire_7944, wire_7907, wire_7906, wire_7903, wire_7902, wire_7893, wire_7892, wire_7863, wire_7862, wire_5559, wire_5558, wire_5545, wire_5544, wire_5531, wire_5530, wire_5517, wire_5516, wire_5501, wire_5500, wire_7667, wire_7666, wire_7651, wire_7650, wire_7637, wire_7636, wire_7623, wire_7622, wire_7609, wire_7608, wire_5305, wire_5304, wire_5275, wire_5274, wire_5265, wire_5264, wire_5261, wire_5260, wire_5223, wire_5222, wire_7939, wire_7938, wire_7925, wire_7924, wire_7897, wire_7896, wire_7887, wire_7886, wire_7857, wire_7856, wire_5553, wire_5552, wire_5539, wire_5538, wire_5525, wire_5524, wire_5511, wire_5510, wire_5495, wire_5494, wire_7685, wire_7684, wire_7645, wire_7644, wire_7631, wire_7630, wire_7603, wire_7602, wire_7593, wire_7592, wire_5299, wire_5298, wire_5283, wire_5282, wire_5255, wire_5254, wire_5245, wire_5244, wire_5217, wire_5216, wire_7933, wire_7932, wire_7919, wire_7918, wire_7881, wire_7880, wire_7875, wire_7874, wire_7865, wire_7864, wire_5571, wire_5570, wire_5533, wire_5532, wire_5519, wire_5518, wire_5505, wire_5504, wire_5489, wire_5488};
    // IPIN TOTAL: 150


    // FPGA TILE OPIN
    assign wire_453 = lut_tile_1_1_opin_out[0];
    assign wire_454 = lut_tile_1_1_opin_out[1];
    assign wire_455 = lut_tile_1_1_opin_out[2];
    assign wire_456 = lut_tile_1_1_opin_out[3];
    assign wire_757 = lut_tile_1_2_opin_out[0];
    assign wire_758 = lut_tile_1_2_opin_out[1];
    assign wire_759 = lut_tile_1_2_opin_out[2];
    assign wire_760 = lut_tile_1_2_opin_out[3];
    assign wire_1061 = lut_tile_1_3_opin_out[0];
    assign wire_1062 = lut_tile_1_3_opin_out[1];
    assign wire_1063 = lut_tile_1_3_opin_out[2];
    assign wire_1064 = lut_tile_1_3_opin_out[3];
    assign wire_1365 = lut_tile_1_4_opin_out[0];
    assign wire_1366 = lut_tile_1_4_opin_out[1];
    assign wire_1367 = lut_tile_1_4_opin_out[2];
    assign wire_1368 = lut_tile_1_4_opin_out[3];
    assign wire_1669 = lut_tile_1_5_opin_out[0];
    assign wire_1670 = lut_tile_1_5_opin_out[1];
    assign wire_1671 = lut_tile_1_5_opin_out[2];
    assign wire_1672 = lut_tile_1_5_opin_out[3];
    assign wire_1973 = lut_tile_1_6_opin_out[0];
    assign wire_1974 = lut_tile_1_6_opin_out[1];
    assign wire_1975 = lut_tile_1_6_opin_out[2];
    assign wire_1976 = lut_tile_1_6_opin_out[3];
    assign wire_2277 = lut_tile_1_7_opin_out[0];
    assign wire_2278 = lut_tile_1_7_opin_out[1];
    assign wire_2279 = lut_tile_1_7_opin_out[2];
    assign wire_2280 = lut_tile_1_7_opin_out[3];
    assign wire_2581 = lut_tile_1_8_opin_out[0];
    assign wire_2582 = lut_tile_1_8_opin_out[1];
    assign wire_2583 = lut_tile_1_8_opin_out[2];
    assign wire_2584 = lut_tile_1_8_opin_out[3];
    assign wire_479 = lut_tile_2_1_opin_out[0];
    assign wire_480 = lut_tile_2_1_opin_out[1];
    assign wire_481 = lut_tile_2_1_opin_out[2];
    assign wire_482 = lut_tile_2_1_opin_out[3];
    assign wire_783 = lut_tile_2_2_opin_out[0];
    assign wire_784 = lut_tile_2_2_opin_out[1];
    assign wire_785 = lut_tile_2_2_opin_out[2];
    assign wire_786 = lut_tile_2_2_opin_out[3];
    assign wire_1087 = lut_tile_2_3_opin_out[0];
    assign wire_1088 = lut_tile_2_3_opin_out[1];
    assign wire_1089 = lut_tile_2_3_opin_out[2];
    assign wire_1090 = lut_tile_2_3_opin_out[3];
    assign wire_1391 = lut_tile_2_4_opin_out[0];
    assign wire_1392 = lut_tile_2_4_opin_out[1];
    assign wire_1393 = lut_tile_2_4_opin_out[2];
    assign wire_1394 = lut_tile_2_4_opin_out[3];
    assign wire_1695 = lut_tile_2_5_opin_out[0];
    assign wire_1696 = lut_tile_2_5_opin_out[1];
    assign wire_1697 = lut_tile_2_5_opin_out[2];
    assign wire_1698 = lut_tile_2_5_opin_out[3];
    assign wire_1999 = lut_tile_2_6_opin_out[0];
    assign wire_2000 = lut_tile_2_6_opin_out[1];
    assign wire_2001 = lut_tile_2_6_opin_out[2];
    assign wire_2002 = lut_tile_2_6_opin_out[3];
    assign wire_2303 = lut_tile_2_7_opin_out[0];
    assign wire_2304 = lut_tile_2_7_opin_out[1];
    assign wire_2305 = lut_tile_2_7_opin_out[2];
    assign wire_2306 = lut_tile_2_7_opin_out[3];
    assign wire_2607 = lut_tile_2_8_opin_out[0];
    assign wire_2608 = lut_tile_2_8_opin_out[1];
    assign wire_2609 = lut_tile_2_8_opin_out[2];
    assign wire_2610 = lut_tile_2_8_opin_out[3];
    assign wire_505 = lut_tile_3_1_opin_out[0];
    assign wire_506 = lut_tile_3_1_opin_out[1];
    assign wire_507 = lut_tile_3_1_opin_out[2];
    assign wire_508 = lut_tile_3_1_opin_out[3];
    assign wire_809 = lut_tile_3_2_opin_out[0];
    assign wire_810 = lut_tile_3_2_opin_out[1];
    assign wire_811 = lut_tile_3_2_opin_out[2];
    assign wire_812 = lut_tile_3_2_opin_out[3];
    assign wire_1113 = lut_tile_3_3_opin_out[0];
    assign wire_1114 = lut_tile_3_3_opin_out[1];
    assign wire_1115 = lut_tile_3_3_opin_out[2];
    assign wire_1116 = lut_tile_3_3_opin_out[3];
    assign wire_1417 = lut_tile_3_4_opin_out[0];
    assign wire_1418 = lut_tile_3_4_opin_out[1];
    assign wire_1419 = lut_tile_3_4_opin_out[2];
    assign wire_1420 = lut_tile_3_4_opin_out[3];
    assign wire_1721 = lut_tile_3_5_opin_out[0];
    assign wire_1722 = lut_tile_3_5_opin_out[1];
    assign wire_1723 = lut_tile_3_5_opin_out[2];
    assign wire_1724 = lut_tile_3_5_opin_out[3];
    assign wire_2025 = lut_tile_3_6_opin_out[0];
    assign wire_2026 = lut_tile_3_6_opin_out[1];
    assign wire_2027 = lut_tile_3_6_opin_out[2];
    assign wire_2028 = lut_tile_3_6_opin_out[3];
    assign wire_2329 = lut_tile_3_7_opin_out[0];
    assign wire_2330 = lut_tile_3_7_opin_out[1];
    assign wire_2331 = lut_tile_3_7_opin_out[2];
    assign wire_2332 = lut_tile_3_7_opin_out[3];
    assign wire_2633 = lut_tile_3_8_opin_out[0];
    assign wire_2634 = lut_tile_3_8_opin_out[1];
    assign wire_2635 = lut_tile_3_8_opin_out[2];
    assign wire_2636 = lut_tile_3_8_opin_out[3];
    assign wire_531 = lut_tile_4_1_opin_out[0];
    assign wire_532 = lut_tile_4_1_opin_out[1];
    assign wire_533 = lut_tile_4_1_opin_out[2];
    assign wire_534 = lut_tile_4_1_opin_out[3];
    assign wire_835 = lut_tile_4_2_opin_out[0];
    assign wire_836 = lut_tile_4_2_opin_out[1];
    assign wire_837 = lut_tile_4_2_opin_out[2];
    assign wire_838 = lut_tile_4_2_opin_out[3];
    assign wire_1139 = lut_tile_4_3_opin_out[0];
    assign wire_1140 = lut_tile_4_3_opin_out[1];
    assign wire_1141 = lut_tile_4_3_opin_out[2];
    assign wire_1142 = lut_tile_4_3_opin_out[3];
    assign wire_1443 = lut_tile_4_4_opin_out[0];
    assign wire_1444 = lut_tile_4_4_opin_out[1];
    assign wire_1445 = lut_tile_4_4_opin_out[2];
    assign wire_1446 = lut_tile_4_4_opin_out[3];
    assign wire_1747 = lut_tile_4_5_opin_out[0];
    assign wire_1748 = lut_tile_4_5_opin_out[1];
    assign wire_1749 = lut_tile_4_5_opin_out[2];
    assign wire_1750 = lut_tile_4_5_opin_out[3];
    assign wire_2051 = lut_tile_4_6_opin_out[0];
    assign wire_2052 = lut_tile_4_6_opin_out[1];
    assign wire_2053 = lut_tile_4_6_opin_out[2];
    assign wire_2054 = lut_tile_4_6_opin_out[3];
    assign wire_2355 = lut_tile_4_7_opin_out[0];
    assign wire_2356 = lut_tile_4_7_opin_out[1];
    assign wire_2357 = lut_tile_4_7_opin_out[2];
    assign wire_2358 = lut_tile_4_7_opin_out[3];
    assign wire_2659 = lut_tile_4_8_opin_out[0];
    assign wire_2660 = lut_tile_4_8_opin_out[1];
    assign wire_2661 = lut_tile_4_8_opin_out[2];
    assign wire_2662 = lut_tile_4_8_opin_out[3];
    assign wire_557 = lut_tile_5_1_opin_out[0];
    assign wire_558 = lut_tile_5_1_opin_out[1];
    assign wire_559 = lut_tile_5_1_opin_out[2];
    assign wire_560 = lut_tile_5_1_opin_out[3];
    assign wire_861 = lut_tile_5_2_opin_out[0];
    assign wire_862 = lut_tile_5_2_opin_out[1];
    assign wire_863 = lut_tile_5_2_opin_out[2];
    assign wire_864 = lut_tile_5_2_opin_out[3];
    assign wire_1165 = lut_tile_5_3_opin_out[0];
    assign wire_1166 = lut_tile_5_3_opin_out[1];
    assign wire_1167 = lut_tile_5_3_opin_out[2];
    assign wire_1168 = lut_tile_5_3_opin_out[3];
    assign wire_1469 = lut_tile_5_4_opin_out[0];
    assign wire_1470 = lut_tile_5_4_opin_out[1];
    assign wire_1471 = lut_tile_5_4_opin_out[2];
    assign wire_1472 = lut_tile_5_4_opin_out[3];
    assign wire_1773 = lut_tile_5_5_opin_out[0];
    assign wire_1774 = lut_tile_5_5_opin_out[1];
    assign wire_1775 = lut_tile_5_5_opin_out[2];
    assign wire_1776 = lut_tile_5_5_opin_out[3];
    assign wire_2077 = lut_tile_5_6_opin_out[0];
    assign wire_2078 = lut_tile_5_6_opin_out[1];
    assign wire_2079 = lut_tile_5_6_opin_out[2];
    assign wire_2080 = lut_tile_5_6_opin_out[3];
    assign wire_2381 = lut_tile_5_7_opin_out[0];
    assign wire_2382 = lut_tile_5_7_opin_out[1];
    assign wire_2383 = lut_tile_5_7_opin_out[2];
    assign wire_2384 = lut_tile_5_7_opin_out[3];
    assign wire_2685 = lut_tile_5_8_opin_out[0];
    assign wire_2686 = lut_tile_5_8_opin_out[1];
    assign wire_2687 = lut_tile_5_8_opin_out[2];
    assign wire_2688 = lut_tile_5_8_opin_out[3];
    assign wire_583 = lut_tile_6_1_opin_out[0];
    assign wire_584 = lut_tile_6_1_opin_out[1];
    assign wire_585 = lut_tile_6_1_opin_out[2];
    assign wire_586 = lut_tile_6_1_opin_out[3];
    assign wire_887 = lut_tile_6_2_opin_out[0];
    assign wire_888 = lut_tile_6_2_opin_out[1];
    assign wire_889 = lut_tile_6_2_opin_out[2];
    assign wire_890 = lut_tile_6_2_opin_out[3];
    assign wire_1191 = lut_tile_6_3_opin_out[0];
    assign wire_1192 = lut_tile_6_3_opin_out[1];
    assign wire_1193 = lut_tile_6_3_opin_out[2];
    assign wire_1194 = lut_tile_6_3_opin_out[3];
    assign wire_1495 = lut_tile_6_4_opin_out[0];
    assign wire_1496 = lut_tile_6_4_opin_out[1];
    assign wire_1497 = lut_tile_6_4_opin_out[2];
    assign wire_1498 = lut_tile_6_4_opin_out[3];
    assign wire_1799 = lut_tile_6_5_opin_out[0];
    assign wire_1800 = lut_tile_6_5_opin_out[1];
    assign wire_1801 = lut_tile_6_5_opin_out[2];
    assign wire_1802 = lut_tile_6_5_opin_out[3];
    assign wire_2103 = lut_tile_6_6_opin_out[0];
    assign wire_2104 = lut_tile_6_6_opin_out[1];
    assign wire_2105 = lut_tile_6_6_opin_out[2];
    assign wire_2106 = lut_tile_6_6_opin_out[3];
    assign wire_2407 = lut_tile_6_7_opin_out[0];
    assign wire_2408 = lut_tile_6_7_opin_out[1];
    assign wire_2409 = lut_tile_6_7_opin_out[2];
    assign wire_2410 = lut_tile_6_7_opin_out[3];
    assign wire_2711 = lut_tile_6_8_opin_out[0];
    assign wire_2712 = lut_tile_6_8_opin_out[1];
    assign wire_2713 = lut_tile_6_8_opin_out[2];
    assign wire_2714 = lut_tile_6_8_opin_out[3];
    assign wire_609 = lut_tile_7_1_opin_out[0];
    assign wire_610 = lut_tile_7_1_opin_out[1];
    assign wire_611 = lut_tile_7_1_opin_out[2];
    assign wire_612 = lut_tile_7_1_opin_out[3];
    assign wire_913 = lut_tile_7_2_opin_out[0];
    assign wire_914 = lut_tile_7_2_opin_out[1];
    assign wire_915 = lut_tile_7_2_opin_out[2];
    assign wire_916 = lut_tile_7_2_opin_out[3];
    assign wire_1217 = lut_tile_7_3_opin_out[0];
    assign wire_1218 = lut_tile_7_3_opin_out[1];
    assign wire_1219 = lut_tile_7_3_opin_out[2];
    assign wire_1220 = lut_tile_7_3_opin_out[3];
    assign wire_1521 = lut_tile_7_4_opin_out[0];
    assign wire_1522 = lut_tile_7_4_opin_out[1];
    assign wire_1523 = lut_tile_7_4_opin_out[2];
    assign wire_1524 = lut_tile_7_4_opin_out[3];
    assign wire_1825 = lut_tile_7_5_opin_out[0];
    assign wire_1826 = lut_tile_7_5_opin_out[1];
    assign wire_1827 = lut_tile_7_5_opin_out[2];
    assign wire_1828 = lut_tile_7_5_opin_out[3];
    assign wire_2129 = lut_tile_7_6_opin_out[0];
    assign wire_2130 = lut_tile_7_6_opin_out[1];
    assign wire_2131 = lut_tile_7_6_opin_out[2];
    assign wire_2132 = lut_tile_7_6_opin_out[3];
    assign wire_2433 = lut_tile_7_7_opin_out[0];
    assign wire_2434 = lut_tile_7_7_opin_out[1];
    assign wire_2435 = lut_tile_7_7_opin_out[2];
    assign wire_2436 = lut_tile_7_7_opin_out[3];
    assign wire_2737 = lut_tile_7_8_opin_out[0];
    assign wire_2738 = lut_tile_7_8_opin_out[1];
    assign wire_2739 = lut_tile_7_8_opin_out[2];
    assign wire_2740 = lut_tile_7_8_opin_out[3];
    assign wire_635 = lut_tile_8_1_opin_out[0];
    assign wire_636 = lut_tile_8_1_opin_out[1];
    assign wire_637 = lut_tile_8_1_opin_out[2];
    assign wire_638 = lut_tile_8_1_opin_out[3];
    assign wire_939 = lut_tile_8_2_opin_out[0];
    assign wire_940 = lut_tile_8_2_opin_out[1];
    assign wire_941 = lut_tile_8_2_opin_out[2];
    assign wire_942 = lut_tile_8_2_opin_out[3];
    assign wire_1243 = lut_tile_8_3_opin_out[0];
    assign wire_1244 = lut_tile_8_3_opin_out[1];
    assign wire_1245 = lut_tile_8_3_opin_out[2];
    assign wire_1246 = lut_tile_8_3_opin_out[3];
    assign wire_1547 = lut_tile_8_4_opin_out[0];
    assign wire_1548 = lut_tile_8_4_opin_out[1];
    assign wire_1549 = lut_tile_8_4_opin_out[2];
    assign wire_1550 = lut_tile_8_4_opin_out[3];
    assign wire_1851 = lut_tile_8_5_opin_out[0];
    assign wire_1852 = lut_tile_8_5_opin_out[1];
    assign wire_1853 = lut_tile_8_5_opin_out[2];
    assign wire_1854 = lut_tile_8_5_opin_out[3];
    assign wire_2155 = lut_tile_8_6_opin_out[0];
    assign wire_2156 = lut_tile_8_6_opin_out[1];
    assign wire_2157 = lut_tile_8_6_opin_out[2];
    assign wire_2158 = lut_tile_8_6_opin_out[3];
    assign wire_2459 = lut_tile_8_7_opin_out[0];
    assign wire_2460 = lut_tile_8_7_opin_out[1];
    assign wire_2461 = lut_tile_8_7_opin_out[2];
    assign wire_2462 = lut_tile_8_7_opin_out[3];
    assign wire_2763 = lut_tile_8_8_opin_out[0];
    assign wire_2764 = lut_tile_8_8_opin_out[1];
    assign wire_2765 = lut_tile_8_8_opin_out[2];
    assign wire_2766 = lut_tile_8_8_opin_out[3];
    // LUT TILE CHANXY 
    assign lut_tile_1_1_chanxy_in = {wire_3295, wire_3294, wire_5959, wire_3583, wire_3543, wire_3542, wire_3511, wire_3510, wire_3479, wire_3478, wire_3468, wire_3247, wire_3246, wire_3245, wire_3244, wire_3293, wire_3292, wire_3307, wire_3242, wire_5957, wire_3561, wire_3559, wire_3558, wire_3556, wire_3527, wire_3526, wire_3495, wire_3494, wire_3241, wire_3240, wire_3319, wire_3290, wire_3239, wire_3238, wire_3237, wire_3236, wire_5955, wire_3563, wire_3548, wire_3539, wire_3538, wire_3507, wire_3506, wire_3475, wire_3474, wire_757, wire_3289, wire_3288, wire_3305, wire_3234, wire_3233, wire_3232, wire_3231, wire_3230, wire_5953, wire_3565, wire_3555, wire_3554, wire_3540, wire_3523, wire_3522, wire_3491, wire_3490, wire_757, wire_3287, wire_3286, wire_3285, wire_3284, wire_3229, wire_3228, wire_3317, wire_3282, wire_5951, wire_3567, wire_3537, wire_3536, wire_3532, wire_3505, wire_3504, wire_3473, wire_3472, wire_757, wire_3281, wire_3280, wire_3303, wire_3226, wire_3279, wire_3278, wire_3277, wire_3276, wire_5949, wire_3569, wire_3553, wire_3552, wire_3524, wire_3521, wire_3520, wire_3489, wire_3488, wire_757, wire_3225, wire_3224, wire_3315, wire_3274, wire_3273, wire_3272, wire_3271, wire_3270, wire_5947, wire_3571, wire_3535, wire_3534, wire_3516, wire_3503, wire_3502, wire_3471, wire_3470, wire_757, wire_3223, wire_3222, wire_3221, wire_3220, wire_3269, wire_3268, wire_3301, wire_3218, wire_5945, wire_3573, wire_3551, wire_3550, wire_3519, wire_3518, wire_3508, wire_3487, wire_3486, wire_455, wire_3217, wire_3216, wire_3313, wire_3266, wire_3215, wire_3214, wire_3213, wire_3212, wire_5943, wire_3575, wire_3531, wire_3530, wire_3500, wire_3499, wire_3498, wire_3467, wire_3466, wire_455, wire_3265, wire_3264, wire_3299, wire_3210, wire_3209, wire_3208, wire_3207, wire_3206, wire_5941, wire_3577, wire_3547, wire_3546, wire_3515, wire_3514, wire_3492, wire_3483, wire_3482, wire_455, wire_3263, wire_3262, wire_3261, wire_3260, wire_757, wire_3205, wire_3204, wire_757, wire_3311, wire_3258, wire_757, wire_5939, wire_3579, wire_3529, wire_3528, wire_3497, wire_3496, wire_3484, wire_3465, wire_3464, wire_455, wire_3257, wire_3256, wire_757, wire_3297, wire_3202, wire_757, wire_3255, wire_3254, wire_455, wire_3253, wire_3252, wire_455, wire_5937, wire_3581, wire_3545, wire_3544, wire_3513, wire_3512, wire_3481, wire_3480, wire_3476, wire_455, wire_3201, wire_3200, wire_455, wire_3309, wire_3250, wire_455, wire_3249, wire_3248, wire_455, wire_5671, wire_5670, wire_5939, wire_5924, wire_5919, wire_5918, wire_5887, wire_5886, wire_5855, wire_5854, wire_3583, wire_5623, wire_5622, wire_5621, wire_5620, wire_5669, wire_5668, wire_5683, wire_5618, wire_5941, wire_5935, wire_5934, wire_5916, wire_5903, wire_5902, wire_5871, wire_5870, wire_3581, wire_5617, wire_5616, wire_5695, wire_5666, wire_5615, wire_5614, wire_5613, wire_5612, wire_5943, wire_5915, wire_5914, wire_5908, wire_5883, wire_5882, wire_5851, wire_5850, wire_3579, wire_482, wire_5665, wire_5664, wire_5681, wire_5610, wire_5609, wire_5608, wire_5607, wire_5606, wire_5945, wire_5931, wire_5930, wire_5900, wire_5899, wire_5898, wire_5867, wire_5866, wire_3577, wire_482, wire_5663, wire_5662, wire_5661, wire_5660, wire_5605, wire_5604, wire_5693, wire_5658, wire_5947, wire_5913, wire_5912, wire_5892, wire_5881, wire_5880, wire_5849, wire_5848, wire_3575, wire_482, wire_5657, wire_5656, wire_5679, wire_5602, wire_5655, wire_5654, wire_5653, wire_5652, wire_5949, wire_5929, wire_5928, wire_5897, wire_5896, wire_5884, wire_5865, wire_5864, wire_3573, wire_482, wire_5601, wire_5600, wire_5691, wire_5650, wire_5649, wire_5648, wire_5647, wire_5646, wire_5951, wire_5911, wire_5910, wire_5879, wire_5878, wire_5876, wire_5847, wire_5846, wire_3571, wire_482, wire_5599, wire_5598, wire_5597, wire_5596, wire_5645, wire_5644, wire_5677, wire_5594, wire_5953, wire_5927, wire_5926, wire_5895, wire_5894, wire_5868, wire_5863, wire_5862, wire_3569, wire_454, wire_5593, wire_5592, wire_5689, wire_5642, wire_5591, wire_5590, wire_5589, wire_5588, wire_5955, wire_5907, wire_5906, wire_5875, wire_5874, wire_5860, wire_5843, wire_5842, wire_3567, wire_454, wire_5641, wire_5640, wire_5675, wire_5586, wire_5585, wire_5584, wire_5583, wire_5582, wire_5957, wire_5923, wire_5922, wire_5891, wire_5890, wire_5859, wire_5858, wire_5852, wire_3565, wire_454, wire_5639, wire_5638, wire_5637, wire_5636, wire_482, wire_5581, wire_5580, wire_482, wire_5687, wire_5634, wire_482, wire_5959, wire_5905, wire_5904, wire_5873, wire_5872, wire_5844, wire_5841, wire_5840, wire_3563, wire_454, wire_5633, wire_5632, wire_482, wire_5673, wire_5578, wire_482, wire_5631, wire_5630, wire_454, wire_5629, wire_5628, wire_454, wire_5937, wire_5932, wire_5921, wire_5920, wire_5889, wire_5888, wire_5857, wire_5856, wire_3561, wire_454, wire_5577, wire_5576, wire_454, wire_5685, wire_5626, wire_454, wire_5625, wire_5624, wire_454};
    // CHNAXY TOTAL: 448
    assign wire_3464 = lut_tile_1_1_chanxy_out[0];
    assign wire_3466 = lut_tile_1_1_chanxy_out[1];
    assign wire_3468 = lut_tile_1_1_chanxy_out[2];
    assign wire_3469 = lut_tile_1_1_chanxy_out[3];
    assign wire_3470 = lut_tile_1_1_chanxy_out[4];
    assign wire_3472 = lut_tile_1_1_chanxy_out[5];
    assign wire_3474 = lut_tile_1_1_chanxy_out[6];
    assign wire_3476 = lut_tile_1_1_chanxy_out[7];
    assign wire_3477 = lut_tile_1_1_chanxy_out[8];
    assign wire_3478 = lut_tile_1_1_chanxy_out[9];
    assign wire_3480 = lut_tile_1_1_chanxy_out[10];
    assign wire_3482 = lut_tile_1_1_chanxy_out[11];
    assign wire_3484 = lut_tile_1_1_chanxy_out[12];
    assign wire_3485 = lut_tile_1_1_chanxy_out[13];
    assign wire_3486 = lut_tile_1_1_chanxy_out[14];
    assign wire_3488 = lut_tile_1_1_chanxy_out[15];
    assign wire_3490 = lut_tile_1_1_chanxy_out[16];
    assign wire_3492 = lut_tile_1_1_chanxy_out[17];
    assign wire_3493 = lut_tile_1_1_chanxy_out[18];
    assign wire_3494 = lut_tile_1_1_chanxy_out[19];
    assign wire_3496 = lut_tile_1_1_chanxy_out[20];
    assign wire_3498 = lut_tile_1_1_chanxy_out[21];
    assign wire_3500 = lut_tile_1_1_chanxy_out[22];
    assign wire_3501 = lut_tile_1_1_chanxy_out[23];
    assign wire_3502 = lut_tile_1_1_chanxy_out[24];
    assign wire_3504 = lut_tile_1_1_chanxy_out[25];
    assign wire_3506 = lut_tile_1_1_chanxy_out[26];
    assign wire_3508 = lut_tile_1_1_chanxy_out[27];
    assign wire_3509 = lut_tile_1_1_chanxy_out[28];
    assign wire_3510 = lut_tile_1_1_chanxy_out[29];
    assign wire_3512 = lut_tile_1_1_chanxy_out[30];
    assign wire_3514 = lut_tile_1_1_chanxy_out[31];
    assign wire_3516 = lut_tile_1_1_chanxy_out[32];
    assign wire_3517 = lut_tile_1_1_chanxy_out[33];
    assign wire_3518 = lut_tile_1_1_chanxy_out[34];
    assign wire_3520 = lut_tile_1_1_chanxy_out[35];
    assign wire_3522 = lut_tile_1_1_chanxy_out[36];
    assign wire_3524 = lut_tile_1_1_chanxy_out[37];
    assign wire_3525 = lut_tile_1_1_chanxy_out[38];
    assign wire_3526 = lut_tile_1_1_chanxy_out[39];
    assign wire_3528 = lut_tile_1_1_chanxy_out[40];
    assign wire_3530 = lut_tile_1_1_chanxy_out[41];
    assign wire_3532 = lut_tile_1_1_chanxy_out[42];
    assign wire_3533 = lut_tile_1_1_chanxy_out[43];
    assign wire_3534 = lut_tile_1_1_chanxy_out[44];
    assign wire_3536 = lut_tile_1_1_chanxy_out[45];
    assign wire_3538 = lut_tile_1_1_chanxy_out[46];
    assign wire_3540 = lut_tile_1_1_chanxy_out[47];
    assign wire_3541 = lut_tile_1_1_chanxy_out[48];
    assign wire_3542 = lut_tile_1_1_chanxy_out[49];
    assign wire_3544 = lut_tile_1_1_chanxy_out[50];
    assign wire_3546 = lut_tile_1_1_chanxy_out[51];
    assign wire_3548 = lut_tile_1_1_chanxy_out[52];
    assign wire_3549 = lut_tile_1_1_chanxy_out[53];
    assign wire_3550 = lut_tile_1_1_chanxy_out[54];
    assign wire_3552 = lut_tile_1_1_chanxy_out[55];
    assign wire_3554 = lut_tile_1_1_chanxy_out[56];
    assign wire_3556 = lut_tile_1_1_chanxy_out[57];
    assign wire_3557 = lut_tile_1_1_chanxy_out[58];
    assign wire_3558 = lut_tile_1_1_chanxy_out[59];
    assign wire_5840 = lut_tile_1_1_chanxy_out[60];
    assign wire_5842 = lut_tile_1_1_chanxy_out[61];
    assign wire_5844 = lut_tile_1_1_chanxy_out[62];
    assign wire_5845 = lut_tile_1_1_chanxy_out[63];
    assign wire_5846 = lut_tile_1_1_chanxy_out[64];
    assign wire_5848 = lut_tile_1_1_chanxy_out[65];
    assign wire_5850 = lut_tile_1_1_chanxy_out[66];
    assign wire_5852 = lut_tile_1_1_chanxy_out[67];
    assign wire_5853 = lut_tile_1_1_chanxy_out[68];
    assign wire_5854 = lut_tile_1_1_chanxy_out[69];
    assign wire_5856 = lut_tile_1_1_chanxy_out[70];
    assign wire_5858 = lut_tile_1_1_chanxy_out[71];
    assign wire_5860 = lut_tile_1_1_chanxy_out[72];
    assign wire_5861 = lut_tile_1_1_chanxy_out[73];
    assign wire_5862 = lut_tile_1_1_chanxy_out[74];
    assign wire_5864 = lut_tile_1_1_chanxy_out[75];
    assign wire_5866 = lut_tile_1_1_chanxy_out[76];
    assign wire_5868 = lut_tile_1_1_chanxy_out[77];
    assign wire_5869 = lut_tile_1_1_chanxy_out[78];
    assign wire_5870 = lut_tile_1_1_chanxy_out[79];
    assign wire_5872 = lut_tile_1_1_chanxy_out[80];
    assign wire_5874 = lut_tile_1_1_chanxy_out[81];
    assign wire_5876 = lut_tile_1_1_chanxy_out[82];
    assign wire_5877 = lut_tile_1_1_chanxy_out[83];
    assign wire_5878 = lut_tile_1_1_chanxy_out[84];
    assign wire_5880 = lut_tile_1_1_chanxy_out[85];
    assign wire_5882 = lut_tile_1_1_chanxy_out[86];
    assign wire_5884 = lut_tile_1_1_chanxy_out[87];
    assign wire_5885 = lut_tile_1_1_chanxy_out[88];
    assign wire_5886 = lut_tile_1_1_chanxy_out[89];
    assign wire_5888 = lut_tile_1_1_chanxy_out[90];
    assign wire_5890 = lut_tile_1_1_chanxy_out[91];
    assign wire_5892 = lut_tile_1_1_chanxy_out[92];
    assign wire_5893 = lut_tile_1_1_chanxy_out[93];
    assign wire_5894 = lut_tile_1_1_chanxy_out[94];
    assign wire_5896 = lut_tile_1_1_chanxy_out[95];
    assign wire_5898 = lut_tile_1_1_chanxy_out[96];
    assign wire_5900 = lut_tile_1_1_chanxy_out[97];
    assign wire_5901 = lut_tile_1_1_chanxy_out[98];
    assign wire_5902 = lut_tile_1_1_chanxy_out[99];
    assign wire_5904 = lut_tile_1_1_chanxy_out[100];
    assign wire_5906 = lut_tile_1_1_chanxy_out[101];
    assign wire_5908 = lut_tile_1_1_chanxy_out[102];
    assign wire_5909 = lut_tile_1_1_chanxy_out[103];
    assign wire_5910 = lut_tile_1_1_chanxy_out[104];
    assign wire_5912 = lut_tile_1_1_chanxy_out[105];
    assign wire_5914 = lut_tile_1_1_chanxy_out[106];
    assign wire_5916 = lut_tile_1_1_chanxy_out[107];
    assign wire_5917 = lut_tile_1_1_chanxy_out[108];
    assign wire_5918 = lut_tile_1_1_chanxy_out[109];
    assign wire_5920 = lut_tile_1_1_chanxy_out[110];
    assign wire_5922 = lut_tile_1_1_chanxy_out[111];
    assign wire_5924 = lut_tile_1_1_chanxy_out[112];
    assign wire_5925 = lut_tile_1_1_chanxy_out[113];
    assign wire_5926 = lut_tile_1_1_chanxy_out[114];
    assign wire_5928 = lut_tile_1_1_chanxy_out[115];
    assign wire_5930 = lut_tile_1_1_chanxy_out[116];
    assign wire_5932 = lut_tile_1_1_chanxy_out[117];
    assign wire_5933 = lut_tile_1_1_chanxy_out[118];
    assign wire_5934 = lut_tile_1_1_chanxy_out[119];
   // CHANXY OUT
    assign lut_tile_1_2_chanxy_in = {wire_6223, wire_3607, wire_3579, wire_3578, wire_3571, wire_3570, wire_3563, wire_3562, wire_3470, wire_3295, wire_3294, wire_3247, wire_3246, wire_3331, wire_3244, wire_3343, wire_3292, wire_6221, wire_3585, wire_3558, wire_3539, wire_3538, wire_3507, wire_3506, wire_3475, wire_3474, wire_3307, wire_3306, wire_3241, wire_3240, wire_3319, wire_3318, wire_3239, wire_3238, wire_6219, wire_3587, wire_3583, wire_3582, wire_3575, wire_3574, wire_3567, wire_3566, wire_3550, wire_1061, wire_3329, wire_3236, wire_3289, wire_3288, wire_3305, wire_3304, wire_3233, wire_3232, wire_6217, wire_3589, wire_3555, wire_3554, wire_3542, wire_3523, wire_3522, wire_3491, wire_3490, wire_1061, wire_3231, wire_3230, wire_3287, wire_3286, wire_3341, wire_3284, wire_3327, wire_3228, wire_6215, wire_3591, wire_3553, wire_3552, wire_3534, wire_3521, wire_3520, wire_3489, wire_3488, wire_1061, wire_3317, wire_3316, wire_3281, wire_3280, wire_3303, wire_3302, wire_3279, wire_3278, wire_6213, wire_3593, wire_3537, wire_3536, wire_3526, wire_3505, wire_3504, wire_3473, wire_3472, wire_1061, wire_3339, wire_3276, wire_3225, wire_3224, wire_3315, wire_3314, wire_3273, wire_3272, wire_6211, wire_3595, wire_3577, wire_3576, wire_3569, wire_3568, wire_3561, wire_3560, wire_3518, wire_1061, wire_3271, wire_3270, wire_3223, wire_3222, wire_3325, wire_3220, wire_3337, wire_3268, wire_6209, wire_3597, wire_3531, wire_3530, wire_3510, wire_3499, wire_3498, wire_3467, wire_3466, wire_759, wire_3301, wire_3300, wire_3217, wire_3216, wire_3313, wire_3312, wire_3215, wire_3214, wire_6207, wire_3599, wire_3581, wire_3580, wire_3573, wire_3572, wire_3565, wire_3564, wire_3502, wire_759, wire_3323, wire_3212, wire_3265, wire_3264, wire_3299, wire_3298, wire_3209, wire_3208, wire_6205, wire_3601, wire_3547, wire_3546, wire_3515, wire_3514, wire_3494, wire_3483, wire_3482, wire_759, wire_3207, wire_3206, wire_3263, wire_3262, wire_3335, wire_3260, wire_1061, wire_3321, wire_3204, wire_1061, wire_6203, wire_3603, wire_3545, wire_3544, wire_3513, wire_3512, wire_3486, wire_3481, wire_3480, wire_759, wire_3311, wire_3310, wire_1061, wire_3257, wire_3256, wire_1061, wire_3297, wire_3296, wire_1061, wire_3255, wire_3254, wire_759, wire_6201, wire_3605, wire_3529, wire_3528, wire_3497, wire_3496, wire_3478, wire_3465, wire_3464, wire_759, wire_3333, wire_3252, wire_759, wire_3201, wire_3200, wire_759, wire_3309, wire_3308, wire_759, wire_3249, wire_3248, wire_759, wire_5957, wire_5932, wire_5919, wire_5918, wire_5887, wire_5886, wire_5855, wire_5854, wire_3556, wire_5955, wire_5915, wire_5914, wire_5883, wire_5882, wire_5851, wire_5850, wire_5844, wire_3548, wire_5953, wire_5935, wire_5934, wire_5903, wire_5902, wire_5871, wire_5870, wire_5852, wire_3540, wire_786, wire_5951, wire_5931, wire_5930, wire_5899, wire_5898, wire_5867, wire_5866, wire_5860, wire_3532, wire_786, wire_5949, wire_5929, wire_5928, wire_5897, wire_5896, wire_5868, wire_5865, wire_5864, wire_3524, wire_786, wire_5947, wire_5913, wire_5912, wire_5881, wire_5880, wire_5876, wire_5849, wire_5848, wire_3516, wire_786, wire_5945, wire_5911, wire_5910, wire_5884, wire_5879, wire_5878, wire_5847, wire_5846, wire_3508, wire_786, wire_5943, wire_5907, wire_5906, wire_5892, wire_5875, wire_5874, wire_5843, wire_5842, wire_3500, wire_758, wire_5941, wire_5927, wire_5926, wire_5900, wire_5895, wire_5894, wire_5863, wire_5862, wire_3492, wire_758, wire_5939, wire_5923, wire_5922, wire_5908, wire_5891, wire_5890, wire_5859, wire_5858, wire_3484, wire_758, wire_5937, wire_5921, wire_5920, wire_5916, wire_5889, wire_5888, wire_5857, wire_5856, wire_3476, wire_758, wire_5959, wire_5924, wire_5905, wire_5904, wire_5873, wire_5872, wire_5841, wire_5840, wire_3468, wire_758, wire_6203, wire_6190, wire_6181, wire_6180, wire_6149, wire_6148, wire_6117, wire_6116, wire_3607, wire_6205, wire_6182, wire_6179, wire_6178, wire_6147, wire_6146, wire_6115, wire_6114, wire_3605, wire_6207, wire_6197, wire_6196, wire_6174, wire_6165, wire_6164, wire_6133, wire_6132, wire_3603, wire_786, wire_6209, wire_6195, wire_6194, wire_6166, wire_6163, wire_6162, wire_6131, wire_6130, wire_3601, wire_786, wire_6211, wire_6193, wire_6192, wire_6161, wire_6160, wire_6158, wire_6129, wire_6128, wire_3599, wire_786, wire_6213, wire_6177, wire_6176, wire_6150, wire_6145, wire_6144, wire_6113, wire_6112, wire_3597, wire_786, wire_6215, wire_6173, wire_6172, wire_6142, wire_6141, wire_6140, wire_6109, wire_6108, wire_3595, wire_786, wire_6217, wire_6171, wire_6170, wire_6139, wire_6138, wire_6134, wire_6107, wire_6106, wire_3593, wire_758, wire_6219, wire_6189, wire_6188, wire_6157, wire_6156, wire_6126, wire_6125, wire_6124, wire_3591, wire_758, wire_6221, wire_6187, wire_6186, wire_6155, wire_6154, wire_6123, wire_6122, wire_6118, wire_3589, wire_758, wire_6223, wire_6185, wire_6184, wire_6153, wire_6152, wire_6121, wire_6120, wire_6110, wire_3587, wire_758, wire_6201, wire_6198, wire_6169, wire_6168, wire_6137, wire_6136, wire_6105, wire_6104, wire_3585, wire_758};
    // CHNAXY TOTAL: 460
    assign wire_3471 = lut_tile_1_2_chanxy_out[0];
    assign wire_3479 = lut_tile_1_2_chanxy_out[1];
    assign wire_3487 = lut_tile_1_2_chanxy_out[2];
    assign wire_3495 = lut_tile_1_2_chanxy_out[3];
    assign wire_3503 = lut_tile_1_2_chanxy_out[4];
    assign wire_3511 = lut_tile_1_2_chanxy_out[5];
    assign wire_3519 = lut_tile_1_2_chanxy_out[6];
    assign wire_3527 = lut_tile_1_2_chanxy_out[7];
    assign wire_3535 = lut_tile_1_2_chanxy_out[8];
    assign wire_3543 = lut_tile_1_2_chanxy_out[9];
    assign wire_3551 = lut_tile_1_2_chanxy_out[10];
    assign wire_3559 = lut_tile_1_2_chanxy_out[11];
    assign wire_3560 = lut_tile_1_2_chanxy_out[12];
    assign wire_3562 = lut_tile_1_2_chanxy_out[13];
    assign wire_3564 = lut_tile_1_2_chanxy_out[14];
    assign wire_3566 = lut_tile_1_2_chanxy_out[15];
    assign wire_3568 = lut_tile_1_2_chanxy_out[16];
    assign wire_3570 = lut_tile_1_2_chanxy_out[17];
    assign wire_3572 = lut_tile_1_2_chanxy_out[18];
    assign wire_3574 = lut_tile_1_2_chanxy_out[19];
    assign wire_3576 = lut_tile_1_2_chanxy_out[20];
    assign wire_3578 = lut_tile_1_2_chanxy_out[21];
    assign wire_3580 = lut_tile_1_2_chanxy_out[22];
    assign wire_3582 = lut_tile_1_2_chanxy_out[23];
    assign wire_6104 = lut_tile_1_2_chanxy_out[24];
    assign wire_6106 = lut_tile_1_2_chanxy_out[25];
    assign wire_6108 = lut_tile_1_2_chanxy_out[26];
    assign wire_6110 = lut_tile_1_2_chanxy_out[27];
    assign wire_6111 = lut_tile_1_2_chanxy_out[28];
    assign wire_6112 = lut_tile_1_2_chanxy_out[29];
    assign wire_6114 = lut_tile_1_2_chanxy_out[30];
    assign wire_6116 = lut_tile_1_2_chanxy_out[31];
    assign wire_6118 = lut_tile_1_2_chanxy_out[32];
    assign wire_6119 = lut_tile_1_2_chanxy_out[33];
    assign wire_6120 = lut_tile_1_2_chanxy_out[34];
    assign wire_6122 = lut_tile_1_2_chanxy_out[35];
    assign wire_6124 = lut_tile_1_2_chanxy_out[36];
    assign wire_6126 = lut_tile_1_2_chanxy_out[37];
    assign wire_6127 = lut_tile_1_2_chanxy_out[38];
    assign wire_6128 = lut_tile_1_2_chanxy_out[39];
    assign wire_6130 = lut_tile_1_2_chanxy_out[40];
    assign wire_6132 = lut_tile_1_2_chanxy_out[41];
    assign wire_6134 = lut_tile_1_2_chanxy_out[42];
    assign wire_6135 = lut_tile_1_2_chanxy_out[43];
    assign wire_6136 = lut_tile_1_2_chanxy_out[44];
    assign wire_6138 = lut_tile_1_2_chanxy_out[45];
    assign wire_6140 = lut_tile_1_2_chanxy_out[46];
    assign wire_6142 = lut_tile_1_2_chanxy_out[47];
    assign wire_6143 = lut_tile_1_2_chanxy_out[48];
    assign wire_6144 = lut_tile_1_2_chanxy_out[49];
    assign wire_6146 = lut_tile_1_2_chanxy_out[50];
    assign wire_6148 = lut_tile_1_2_chanxy_out[51];
    assign wire_6150 = lut_tile_1_2_chanxy_out[52];
    assign wire_6151 = lut_tile_1_2_chanxy_out[53];
    assign wire_6152 = lut_tile_1_2_chanxy_out[54];
    assign wire_6154 = lut_tile_1_2_chanxy_out[55];
    assign wire_6156 = lut_tile_1_2_chanxy_out[56];
    assign wire_6158 = lut_tile_1_2_chanxy_out[57];
    assign wire_6159 = lut_tile_1_2_chanxy_out[58];
    assign wire_6160 = lut_tile_1_2_chanxy_out[59];
    assign wire_6162 = lut_tile_1_2_chanxy_out[60];
    assign wire_6164 = lut_tile_1_2_chanxy_out[61];
    assign wire_6166 = lut_tile_1_2_chanxy_out[62];
    assign wire_6167 = lut_tile_1_2_chanxy_out[63];
    assign wire_6168 = lut_tile_1_2_chanxy_out[64];
    assign wire_6170 = lut_tile_1_2_chanxy_out[65];
    assign wire_6172 = lut_tile_1_2_chanxy_out[66];
    assign wire_6174 = lut_tile_1_2_chanxy_out[67];
    assign wire_6175 = lut_tile_1_2_chanxy_out[68];
    assign wire_6176 = lut_tile_1_2_chanxy_out[69];
    assign wire_6178 = lut_tile_1_2_chanxy_out[70];
    assign wire_6180 = lut_tile_1_2_chanxy_out[71];
    assign wire_6182 = lut_tile_1_2_chanxy_out[72];
    assign wire_6183 = lut_tile_1_2_chanxy_out[73];
    assign wire_6184 = lut_tile_1_2_chanxy_out[74];
    assign wire_6186 = lut_tile_1_2_chanxy_out[75];
    assign wire_6188 = lut_tile_1_2_chanxy_out[76];
    assign wire_6190 = lut_tile_1_2_chanxy_out[77];
    assign wire_6191 = lut_tile_1_2_chanxy_out[78];
    assign wire_6192 = lut_tile_1_2_chanxy_out[79];
    assign wire_6194 = lut_tile_1_2_chanxy_out[80];
    assign wire_6196 = lut_tile_1_2_chanxy_out[81];
    assign wire_6198 = lut_tile_1_2_chanxy_out[82];
    assign wire_6199 = lut_tile_1_2_chanxy_out[83];
   // CHANXY OUT
    assign lut_tile_1_3_chanxy_in = {wire_3367, wire_3294, wire_3355, wire_3246, wire_3331, wire_3330, wire_6487, wire_3631, wire_3603, wire_3602, wire_3595, wire_3594, wire_3587, wire_3586, wire_3464, wire_3343, wire_3342, wire_3307, wire_3306, wire_3241, wire_3240, wire_3319, wire_3318, wire_6485, wire_3609, wire_3579, wire_3578, wire_3571, wire_3570, wire_3563, wire_3562, wire_3552, wire_3353, wire_3238, wire_3329, wire_3328, wire_3289, wire_3288, wire_3305, wire_3304, wire_6483, wire_3611, wire_3607, wire_3606, wire_3599, wire_3598, wire_3591, wire_3590, wire_3544, wire_1365, wire_3233, wire_3232, wire_3351, wire_3230, wire_3365, wire_3286, wire_3341, wire_3340, wire_6481, wire_3613, wire_3583, wire_3582, wire_3575, wire_3574, wire_3567, wire_3566, wire_3536, wire_1365, wire_3327, wire_3326, wire_3317, wire_3316, wire_3281, wire_3280, wire_3303, wire_3302, wire_6479, wire_3615, wire_3555, wire_3554, wire_3528, wire_3523, wire_3522, wire_3491, wire_3490, wire_1365, wire_3363, wire_3278, wire_3339, wire_3338, wire_3225, wire_3224, wire_3315, wire_3314, wire_6477, wire_3617, wire_3539, wire_3538, wire_3520, wire_3507, wire_3506, wire_3475, wire_3474, wire_1365, wire_3273, wire_3272, wire_3361, wire_3270, wire_3349, wire_3222, wire_3325, wire_3324, wire_6475, wire_3619, wire_3601, wire_3600, wire_3593, wire_3592, wire_3585, wire_3584, wire_3512, wire_1365, wire_3337, wire_3336, wire_3301, wire_3300, wire_3217, wire_3216, wire_3313, wire_3312, wire_6473, wire_3621, wire_3577, wire_3576, wire_3569, wire_3568, wire_3561, wire_3560, wire_3504, wire_1063, wire_3347, wire_3214, wire_3323, wire_3322, wire_3265, wire_3264, wire_3299, wire_3298, wire_6471, wire_3623, wire_3605, wire_3604, wire_3597, wire_3596, wire_3589, wire_3588, wire_3496, wire_1063, wire_3209, wire_3208, wire_3345, wire_3206, wire_3359, wire_3262, wire_3335, wire_3334, wire_1365, wire_6469, wire_3625, wire_3581, wire_3580, wire_3573, wire_3572, wire_3565, wire_3564, wire_3488, wire_1063, wire_3321, wire_3320, wire_1365, wire_3311, wire_3310, wire_1365, wire_3257, wire_3256, wire_1365, wire_3297, wire_3296, wire_1365, wire_6467, wire_3627, wire_3547, wire_3546, wire_3515, wire_3514, wire_3483, wire_3482, wire_3480, wire_1063, wire_3357, wire_3254, wire_1063, wire_3333, wire_3332, wire_1063, wire_3201, wire_3200, wire_1063, wire_3309, wire_3308, wire_1063, wire_6465, wire_3629, wire_3531, wire_3530, wire_3499, wire_3498, wire_3472, wire_3467, wire_3466, wire_1063, wire_3249, wire_3248, wire_1063, wire_6221, wire_6198, wire_6197, wire_6196, wire_6165, wire_6164, wire_6133, wire_6132, wire_3558, wire_6219, wire_6181, wire_6180, wire_6149, wire_6148, wire_6117, wire_6116, wire_6110, wire_3550, wire_6217, wire_6179, wire_6178, wire_6147, wire_6146, wire_6118, wire_6115, wire_6114, wire_3542, wire_1090, wire_6215, wire_6177, wire_6176, wire_6145, wire_6144, wire_6126, wire_6113, wire_6112, wire_3534, wire_1090, wire_6213, wire_6195, wire_6194, wire_6163, wire_6162, wire_6134, wire_6131, wire_6130, wire_3526, wire_1090, wire_6211, wire_6193, wire_6192, wire_6161, wire_6160, wire_6142, wire_6129, wire_6128, wire_3518, wire_1090, wire_6209, wire_6189, wire_6188, wire_6157, wire_6156, wire_6150, wire_6125, wire_6124, wire_3510, wire_1090, wire_6207, wire_6173, wire_6172, wire_6158, wire_6141, wire_6140, wire_6109, wire_6108, wire_3502, wire_1062, wire_6205, wire_6171, wire_6170, wire_6166, wire_6139, wire_6138, wire_6107, wire_6106, wire_3494, wire_1062, wire_6203, wire_6174, wire_6169, wire_6168, wire_6137, wire_6136, wire_6105, wire_6104, wire_3486, wire_1062, wire_6201, wire_6187, wire_6186, wire_6182, wire_6155, wire_6154, wire_6123, wire_6122, wire_3478, wire_1062, wire_6223, wire_6190, wire_6185, wire_6184, wire_6153, wire_6152, wire_6121, wire_6120, wire_3470, wire_1062, wire_6467, wire_6448, wire_6447, wire_6446, wire_6415, wire_6414, wire_6383, wire_6382, wire_3631, wire_6469, wire_6445, wire_6444, wire_6440, wire_6413, wire_6412, wire_6381, wire_6380, wire_3629, wire_6471, wire_6463, wire_6462, wire_6432, wire_6431, wire_6430, wire_6399, wire_6398, wire_3627, wire_1090, wire_6473, wire_6461, wire_6460, wire_6429, wire_6428, wire_6424, wire_6397, wire_6396, wire_3625, wire_1090, wire_6475, wire_6459, wire_6458, wire_6427, wire_6426, wire_6416, wire_6395, wire_6394, wire_3623, wire_1090, wire_6477, wire_6443, wire_6442, wire_6411, wire_6410, wire_6408, wire_6379, wire_6378, wire_3621, wire_1090, wire_6479, wire_6439, wire_6438, wire_6407, wire_6406, wire_6400, wire_6375, wire_6374, wire_3619, wire_1090, wire_6481, wire_6437, wire_6436, wire_6405, wire_6404, wire_6392, wire_6373, wire_6372, wire_3617, wire_1062, wire_6483, wire_6455, wire_6454, wire_6423, wire_6422, wire_6391, wire_6390, wire_6384, wire_3615, wire_1062, wire_6485, wire_6453, wire_6452, wire_6421, wire_6420, wire_6389, wire_6388, wire_6376, wire_3613, wire_1062, wire_6487, wire_6451, wire_6450, wire_6419, wire_6418, wire_6387, wire_6386, wire_6368, wire_3611, wire_1062, wire_6465, wire_6456, wire_6435, wire_6434, wire_6403, wire_6402, wire_6371, wire_6370, wire_3609, wire_1062};
    // CHNAXY TOTAL: 460
    assign wire_3465 = lut_tile_1_3_chanxy_out[0];
    assign wire_3473 = lut_tile_1_3_chanxy_out[1];
    assign wire_3481 = lut_tile_1_3_chanxy_out[2];
    assign wire_3489 = lut_tile_1_3_chanxy_out[3];
    assign wire_3497 = lut_tile_1_3_chanxy_out[4];
    assign wire_3505 = lut_tile_1_3_chanxy_out[5];
    assign wire_3513 = lut_tile_1_3_chanxy_out[6];
    assign wire_3521 = lut_tile_1_3_chanxy_out[7];
    assign wire_3529 = lut_tile_1_3_chanxy_out[8];
    assign wire_3537 = lut_tile_1_3_chanxy_out[9];
    assign wire_3545 = lut_tile_1_3_chanxy_out[10];
    assign wire_3553 = lut_tile_1_3_chanxy_out[11];
    assign wire_3584 = lut_tile_1_3_chanxy_out[12];
    assign wire_3586 = lut_tile_1_3_chanxy_out[13];
    assign wire_3588 = lut_tile_1_3_chanxy_out[14];
    assign wire_3590 = lut_tile_1_3_chanxy_out[15];
    assign wire_3592 = lut_tile_1_3_chanxy_out[16];
    assign wire_3594 = lut_tile_1_3_chanxy_out[17];
    assign wire_3596 = lut_tile_1_3_chanxy_out[18];
    assign wire_3598 = lut_tile_1_3_chanxy_out[19];
    assign wire_3600 = lut_tile_1_3_chanxy_out[20];
    assign wire_3602 = lut_tile_1_3_chanxy_out[21];
    assign wire_3604 = lut_tile_1_3_chanxy_out[22];
    assign wire_3606 = lut_tile_1_3_chanxy_out[23];
    assign wire_6368 = lut_tile_1_3_chanxy_out[24];
    assign wire_6369 = lut_tile_1_3_chanxy_out[25];
    assign wire_6370 = lut_tile_1_3_chanxy_out[26];
    assign wire_6372 = lut_tile_1_3_chanxy_out[27];
    assign wire_6374 = lut_tile_1_3_chanxy_out[28];
    assign wire_6376 = lut_tile_1_3_chanxy_out[29];
    assign wire_6377 = lut_tile_1_3_chanxy_out[30];
    assign wire_6378 = lut_tile_1_3_chanxy_out[31];
    assign wire_6380 = lut_tile_1_3_chanxy_out[32];
    assign wire_6382 = lut_tile_1_3_chanxy_out[33];
    assign wire_6384 = lut_tile_1_3_chanxy_out[34];
    assign wire_6385 = lut_tile_1_3_chanxy_out[35];
    assign wire_6386 = lut_tile_1_3_chanxy_out[36];
    assign wire_6388 = lut_tile_1_3_chanxy_out[37];
    assign wire_6390 = lut_tile_1_3_chanxy_out[38];
    assign wire_6392 = lut_tile_1_3_chanxy_out[39];
    assign wire_6393 = lut_tile_1_3_chanxy_out[40];
    assign wire_6394 = lut_tile_1_3_chanxy_out[41];
    assign wire_6396 = lut_tile_1_3_chanxy_out[42];
    assign wire_6398 = lut_tile_1_3_chanxy_out[43];
    assign wire_6400 = lut_tile_1_3_chanxy_out[44];
    assign wire_6401 = lut_tile_1_3_chanxy_out[45];
    assign wire_6402 = lut_tile_1_3_chanxy_out[46];
    assign wire_6404 = lut_tile_1_3_chanxy_out[47];
    assign wire_6406 = lut_tile_1_3_chanxy_out[48];
    assign wire_6408 = lut_tile_1_3_chanxy_out[49];
    assign wire_6409 = lut_tile_1_3_chanxy_out[50];
    assign wire_6410 = lut_tile_1_3_chanxy_out[51];
    assign wire_6412 = lut_tile_1_3_chanxy_out[52];
    assign wire_6414 = lut_tile_1_3_chanxy_out[53];
    assign wire_6416 = lut_tile_1_3_chanxy_out[54];
    assign wire_6417 = lut_tile_1_3_chanxy_out[55];
    assign wire_6418 = lut_tile_1_3_chanxy_out[56];
    assign wire_6420 = lut_tile_1_3_chanxy_out[57];
    assign wire_6422 = lut_tile_1_3_chanxy_out[58];
    assign wire_6424 = lut_tile_1_3_chanxy_out[59];
    assign wire_6425 = lut_tile_1_3_chanxy_out[60];
    assign wire_6426 = lut_tile_1_3_chanxy_out[61];
    assign wire_6428 = lut_tile_1_3_chanxy_out[62];
    assign wire_6430 = lut_tile_1_3_chanxy_out[63];
    assign wire_6432 = lut_tile_1_3_chanxy_out[64];
    assign wire_6433 = lut_tile_1_3_chanxy_out[65];
    assign wire_6434 = lut_tile_1_3_chanxy_out[66];
    assign wire_6436 = lut_tile_1_3_chanxy_out[67];
    assign wire_6438 = lut_tile_1_3_chanxy_out[68];
    assign wire_6440 = lut_tile_1_3_chanxy_out[69];
    assign wire_6441 = lut_tile_1_3_chanxy_out[70];
    assign wire_6442 = lut_tile_1_3_chanxy_out[71];
    assign wire_6444 = lut_tile_1_3_chanxy_out[72];
    assign wire_6446 = lut_tile_1_3_chanxy_out[73];
    assign wire_6448 = lut_tile_1_3_chanxy_out[74];
    assign wire_6449 = lut_tile_1_3_chanxy_out[75];
    assign wire_6450 = lut_tile_1_3_chanxy_out[76];
    assign wire_6452 = lut_tile_1_3_chanxy_out[77];
    assign wire_6454 = lut_tile_1_3_chanxy_out[78];
    assign wire_6456 = lut_tile_1_3_chanxy_out[79];
    assign wire_6457 = lut_tile_1_3_chanxy_out[80];
    assign wire_6458 = lut_tile_1_3_chanxy_out[81];
    assign wire_6460 = lut_tile_1_3_chanxy_out[82];
    assign wire_6462 = lut_tile_1_3_chanxy_out[83];
   // CHANXY OUT
    assign lut_tile_1_4_chanxy_in = {wire_3367, wire_3366, wire_3355, wire_3354, wire_6751, wire_3655, wire_3607, wire_3606, wire_3599, wire_3598, wire_3591, wire_3590, wire_3466, wire_3331, wire_3330, wire_3343, wire_3342, wire_3307, wire_3306, wire_3379, wire_3240, wire_6749, wire_3633, wire_3603, wire_3602, wire_3595, wire_3594, wire_3587, wire_3586, wire_3554, wire_3319, wire_3318, wire_3353, wire_3352, wire_3329, wire_3328, wire_3391, wire_3288, wire_6747, wire_3635, wire_3579, wire_3578, wire_3571, wire_3570, wire_3563, wire_3562, wire_3546, wire_1669, wire_3305, wire_3304, wire_3377, wire_3232, wire_3351, wire_3350, wire_3365, wire_3364, wire_6745, wire_3637, wire_3627, wire_3626, wire_3619, wire_3618, wire_3611, wire_3610, wire_3538, wire_1669, wire_3341, wire_3340, wire_3327, wire_3326, wire_3317, wire_3316, wire_3389, wire_3280, wire_6743, wire_3639, wire_3583, wire_3582, wire_3575, wire_3574, wire_3567, wire_3566, wire_3530, wire_1669, wire_3303, wire_3302, wire_3363, wire_3362, wire_3339, wire_3338, wire_3375, wire_3224, wire_6741, wire_3641, wire_3631, wire_3630, wire_3623, wire_3622, wire_3615, wire_3614, wire_3522, wire_1669, wire_3315, wire_3314, wire_3387, wire_3272, wire_3361, wire_3360, wire_3349, wire_3348, wire_6739, wire_3643, wire_3605, wire_3604, wire_3597, wire_3596, wire_3589, wire_3588, wire_3514, wire_1669, wire_3325, wire_3324, wire_3337, wire_3336, wire_3301, wire_3300, wire_3373, wire_3216, wire_6737, wire_3645, wire_3601, wire_3600, wire_3593, wire_3592, wire_3585, wire_3584, wire_3506, wire_1367, wire_3313, wire_3312, wire_3347, wire_3346, wire_3323, wire_3322, wire_3385, wire_3264, wire_6735, wire_3647, wire_3577, wire_3576, wire_3569, wire_3568, wire_3561, wire_3560, wire_3498, wire_1367, wire_3299, wire_3298, wire_3371, wire_3208, wire_3345, wire_3344, wire_3359, wire_3358, wire_6733, wire_3649, wire_3625, wire_3624, wire_3617, wire_3616, wire_3609, wire_3608, wire_3490, wire_1367, wire_3335, wire_3334, wire_1669, wire_3321, wire_3320, wire_1669, wire_3311, wire_3310, wire_1669, wire_3383, wire_3256, wire_1669, wire_6731, wire_3651, wire_3581, wire_3580, wire_3573, wire_3572, wire_3565, wire_3564, wire_3482, wire_1367, wire_3297, wire_3296, wire_1669, wire_3357, wire_3356, wire_1367, wire_3333, wire_3332, wire_1367, wire_3369, wire_3200, wire_1367, wire_6729, wire_3653, wire_3629, wire_3628, wire_3621, wire_3620, wire_3613, wire_3612, wire_3474, wire_1367, wire_3309, wire_3308, wire_1367, wire_3381, wire_3248, wire_1367, wire_6485, wire_6463, wire_6462, wire_6456, wire_6431, wire_6430, wire_6399, wire_6398, wire_3552, wire_6483, wire_6447, wire_6446, wire_6415, wire_6414, wire_6383, wire_6382, wire_6368, wire_3544, wire_6481, wire_6445, wire_6444, wire_6413, wire_6412, wire_6381, wire_6380, wire_6376, wire_3536, wire_1394, wire_6479, wire_6443, wire_6442, wire_6411, wire_6410, wire_6384, wire_6379, wire_6378, wire_3528, wire_1394, wire_6477, wire_6461, wire_6460, wire_6429, wire_6428, wire_6397, wire_6396, wire_6392, wire_3520, wire_1394, wire_6475, wire_6459, wire_6458, wire_6427, wire_6426, wire_6400, wire_6395, wire_6394, wire_3512, wire_1394, wire_6473, wire_6455, wire_6454, wire_6423, wire_6422, wire_6408, wire_6391, wire_6390, wire_3504, wire_1394, wire_6471, wire_6439, wire_6438, wire_6416, wire_6407, wire_6406, wire_6375, wire_6374, wire_3496, wire_1366, wire_6469, wire_6437, wire_6436, wire_6424, wire_6405, wire_6404, wire_6373, wire_6372, wire_3488, wire_1366, wire_6467, wire_6435, wire_6434, wire_6432, wire_6403, wire_6402, wire_6371, wire_6370, wire_3480, wire_1366, wire_6465, wire_6453, wire_6452, wire_6440, wire_6421, wire_6420, wire_6389, wire_6388, wire_3472, wire_1366, wire_6487, wire_6451, wire_6450, wire_6448, wire_6419, wire_6418, wire_6387, wire_6386, wire_3464, wire_1366, wire_6731, wire_6727, wire_6726, wire_6714, wire_6695, wire_6694, wire_6663, wire_6662, wire_3655, wire_6733, wire_6711, wire_6710, wire_6706, wire_6679, wire_6678, wire_6647, wire_6646, wire_3653, wire_6735, wire_6709, wire_6708, wire_6698, wire_6677, wire_6676, wire_6645, wire_6644, wire_3651, wire_1394, wire_6737, wire_6705, wire_6704, wire_6690, wire_6673, wire_6672, wire_6641, wire_6640, wire_3649, wire_1394, wire_6739, wire_6725, wire_6724, wire_6693, wire_6692, wire_6682, wire_6661, wire_6660, wire_3647, wire_1394, wire_6741, wire_6721, wire_6720, wire_6689, wire_6688, wire_6674, wire_6657, wire_6656, wire_3645, wire_1394, wire_6743, wire_6719, wire_6718, wire_6687, wire_6686, wire_6666, wire_6655, wire_6654, wire_3643, wire_1394, wire_6745, wire_6703, wire_6702, wire_6671, wire_6670, wire_6658, wire_6639, wire_6638, wire_3641, wire_1366, wire_6747, wire_6701, wire_6700, wire_6669, wire_6668, wire_6650, wire_6637, wire_6636, wire_3639, wire_1366, wire_6749, wire_6697, wire_6696, wire_6665, wire_6664, wire_6642, wire_6633, wire_6632, wire_3637, wire_1366, wire_6751, wire_6717, wire_6716, wire_6685, wire_6684, wire_6653, wire_6652, wire_6634, wire_3635, wire_1366, wire_6729, wire_6722, wire_6713, wire_6712, wire_6681, wire_6680, wire_6649, wire_6648, wire_3633, wire_1366};
    // CHNAXY TOTAL: 460
    assign wire_3467 = lut_tile_1_4_chanxy_out[0];
    assign wire_3475 = lut_tile_1_4_chanxy_out[1];
    assign wire_3483 = lut_tile_1_4_chanxy_out[2];
    assign wire_3491 = lut_tile_1_4_chanxy_out[3];
    assign wire_3499 = lut_tile_1_4_chanxy_out[4];
    assign wire_3507 = lut_tile_1_4_chanxy_out[5];
    assign wire_3515 = lut_tile_1_4_chanxy_out[6];
    assign wire_3523 = lut_tile_1_4_chanxy_out[7];
    assign wire_3531 = lut_tile_1_4_chanxy_out[8];
    assign wire_3539 = lut_tile_1_4_chanxy_out[9];
    assign wire_3547 = lut_tile_1_4_chanxy_out[10];
    assign wire_3555 = lut_tile_1_4_chanxy_out[11];
    assign wire_3608 = lut_tile_1_4_chanxy_out[12];
    assign wire_3610 = lut_tile_1_4_chanxy_out[13];
    assign wire_3612 = lut_tile_1_4_chanxy_out[14];
    assign wire_3614 = lut_tile_1_4_chanxy_out[15];
    assign wire_3616 = lut_tile_1_4_chanxy_out[16];
    assign wire_3618 = lut_tile_1_4_chanxy_out[17];
    assign wire_3620 = lut_tile_1_4_chanxy_out[18];
    assign wire_3622 = lut_tile_1_4_chanxy_out[19];
    assign wire_3624 = lut_tile_1_4_chanxy_out[20];
    assign wire_3626 = lut_tile_1_4_chanxy_out[21];
    assign wire_3628 = lut_tile_1_4_chanxy_out[22];
    assign wire_3630 = lut_tile_1_4_chanxy_out[23];
    assign wire_6632 = lut_tile_1_4_chanxy_out[24];
    assign wire_6634 = lut_tile_1_4_chanxy_out[25];
    assign wire_6635 = lut_tile_1_4_chanxy_out[26];
    assign wire_6636 = lut_tile_1_4_chanxy_out[27];
    assign wire_6638 = lut_tile_1_4_chanxy_out[28];
    assign wire_6640 = lut_tile_1_4_chanxy_out[29];
    assign wire_6642 = lut_tile_1_4_chanxy_out[30];
    assign wire_6643 = lut_tile_1_4_chanxy_out[31];
    assign wire_6644 = lut_tile_1_4_chanxy_out[32];
    assign wire_6646 = lut_tile_1_4_chanxy_out[33];
    assign wire_6648 = lut_tile_1_4_chanxy_out[34];
    assign wire_6650 = lut_tile_1_4_chanxy_out[35];
    assign wire_6651 = lut_tile_1_4_chanxy_out[36];
    assign wire_6652 = lut_tile_1_4_chanxy_out[37];
    assign wire_6654 = lut_tile_1_4_chanxy_out[38];
    assign wire_6656 = lut_tile_1_4_chanxy_out[39];
    assign wire_6658 = lut_tile_1_4_chanxy_out[40];
    assign wire_6659 = lut_tile_1_4_chanxy_out[41];
    assign wire_6660 = lut_tile_1_4_chanxy_out[42];
    assign wire_6662 = lut_tile_1_4_chanxy_out[43];
    assign wire_6664 = lut_tile_1_4_chanxy_out[44];
    assign wire_6666 = lut_tile_1_4_chanxy_out[45];
    assign wire_6667 = lut_tile_1_4_chanxy_out[46];
    assign wire_6668 = lut_tile_1_4_chanxy_out[47];
    assign wire_6670 = lut_tile_1_4_chanxy_out[48];
    assign wire_6672 = lut_tile_1_4_chanxy_out[49];
    assign wire_6674 = lut_tile_1_4_chanxy_out[50];
    assign wire_6675 = lut_tile_1_4_chanxy_out[51];
    assign wire_6676 = lut_tile_1_4_chanxy_out[52];
    assign wire_6678 = lut_tile_1_4_chanxy_out[53];
    assign wire_6680 = lut_tile_1_4_chanxy_out[54];
    assign wire_6682 = lut_tile_1_4_chanxy_out[55];
    assign wire_6683 = lut_tile_1_4_chanxy_out[56];
    assign wire_6684 = lut_tile_1_4_chanxy_out[57];
    assign wire_6686 = lut_tile_1_4_chanxy_out[58];
    assign wire_6688 = lut_tile_1_4_chanxy_out[59];
    assign wire_6690 = lut_tile_1_4_chanxy_out[60];
    assign wire_6691 = lut_tile_1_4_chanxy_out[61];
    assign wire_6692 = lut_tile_1_4_chanxy_out[62];
    assign wire_6694 = lut_tile_1_4_chanxy_out[63];
    assign wire_6696 = lut_tile_1_4_chanxy_out[64];
    assign wire_6698 = lut_tile_1_4_chanxy_out[65];
    assign wire_6699 = lut_tile_1_4_chanxy_out[66];
    assign wire_6700 = lut_tile_1_4_chanxy_out[67];
    assign wire_6702 = lut_tile_1_4_chanxy_out[68];
    assign wire_6704 = lut_tile_1_4_chanxy_out[69];
    assign wire_6706 = lut_tile_1_4_chanxy_out[70];
    assign wire_6707 = lut_tile_1_4_chanxy_out[71];
    assign wire_6708 = lut_tile_1_4_chanxy_out[72];
    assign wire_6710 = lut_tile_1_4_chanxy_out[73];
    assign wire_6712 = lut_tile_1_4_chanxy_out[74];
    assign wire_6714 = lut_tile_1_4_chanxy_out[75];
    assign wire_6715 = lut_tile_1_4_chanxy_out[76];
    assign wire_6716 = lut_tile_1_4_chanxy_out[77];
    assign wire_6718 = lut_tile_1_4_chanxy_out[78];
    assign wire_6720 = lut_tile_1_4_chanxy_out[79];
    assign wire_6722 = lut_tile_1_4_chanxy_out[80];
    assign wire_6723 = lut_tile_1_4_chanxy_out[81];
    assign wire_6724 = lut_tile_1_4_chanxy_out[82];
    assign wire_6726 = lut_tile_1_4_chanxy_out[83];
   // CHANXY OUT
    assign lut_tile_1_5_chanxy_in = {wire_3367, wire_3366, wire_7015, wire_3679, wire_3603, wire_3602, wire_3595, wire_3594, wire_3587, wire_3586, wire_3560, wire_3355, wire_3354, wire_3331, wire_3330, wire_3343, wire_3342, wire_3403, wire_3306, wire_7013, wire_3657, wire_3607, wire_3606, wire_3599, wire_3598, wire_3591, wire_3590, wire_3582, wire_3379, wire_3378, wire_3415, wire_3318, wire_3353, wire_3352, wire_3329, wire_3328, wire_7011, wire_3659, wire_3651, wire_3650, wire_3643, wire_3642, wire_3635, wire_3634, wire_3580, wire_1973, wire_3391, wire_3390, wire_3401, wire_3304, wire_3377, wire_3376, wire_3351, wire_3350, wire_7009, wire_3661, wire_3655, wire_3654, wire_3647, wire_3646, wire_3639, wire_3638, wire_3578, wire_1973, wire_3365, wire_3364, wire_3341, wire_3340, wire_3327, wire_3326, wire_3413, wire_3316, wire_7007, wire_3663, wire_3627, wire_3626, wire_3619, wire_3618, wire_3611, wire_3610, wire_3576, wire_1973, wire_3389, wire_3388, wire_3399, wire_3302, wire_3363, wire_3362, wire_3339, wire_3338, wire_7005, wire_3665, wire_3631, wire_3630, wire_3623, wire_3622, wire_3615, wire_3614, wire_3574, wire_1973, wire_3375, wire_3374, wire_3411, wire_3314, wire_3387, wire_3386, wire_3361, wire_3360, wire_7003, wire_3667, wire_3601, wire_3600, wire_3593, wire_3592, wire_3585, wire_3584, wire_3572, wire_1973, wire_3349, wire_3348, wire_3325, wire_3324, wire_3337, wire_3336, wire_3397, wire_3300, wire_7001, wire_3669, wire_3605, wire_3604, wire_3597, wire_3596, wire_3589, wire_3588, wire_3570, wire_1671, wire_3373, wire_3372, wire_3409, wire_3312, wire_3347, wire_3346, wire_3323, wire_3322, wire_6999, wire_3671, wire_3649, wire_3648, wire_3641, wire_3640, wire_3633, wire_3632, wire_3568, wire_1671, wire_3385, wire_3384, wire_3395, wire_3298, wire_3371, wire_3370, wire_3345, wire_3344, wire_6997, wire_3673, wire_3653, wire_3652, wire_3645, wire_3644, wire_3637, wire_3636, wire_3566, wire_1671, wire_3359, wire_3358, wire_3335, wire_3334, wire_1973, wire_3321, wire_3320, wire_1973, wire_3407, wire_3310, wire_1973, wire_6995, wire_3675, wire_3625, wire_3624, wire_3617, wire_3616, wire_3609, wire_3608, wire_3564, wire_1671, wire_3383, wire_3382, wire_1973, wire_3393, wire_3296, wire_1973, wire_3357, wire_3356, wire_1671, wire_3333, wire_3332, wire_1671, wire_6993, wire_3677, wire_3629, wire_3628, wire_3621, wire_3620, wire_3613, wire_3612, wire_3562, wire_1671, wire_3369, wire_3368, wire_1671, wire_3405, wire_3308, wire_1671, wire_3381, wire_3380, wire_1671, wire_6749, wire_6722, wire_6711, wire_6710, wire_6679, wire_6678, wire_6647, wire_6646, wire_3554, wire_6747, wire_6727, wire_6726, wire_6695, wire_6694, wire_6663, wire_6662, wire_6634, wire_3546, wire_6745, wire_6709, wire_6708, wire_6677, wire_6676, wire_6645, wire_6644, wire_6642, wire_3538, wire_1698, wire_6743, wire_6725, wire_6724, wire_6693, wire_6692, wire_6661, wire_6660, wire_6650, wire_3530, wire_1698, wire_6741, wire_6705, wire_6704, wire_6673, wire_6672, wire_6658, wire_6641, wire_6640, wire_3522, wire_1698, wire_6739, wire_6721, wire_6720, wire_6689, wire_6688, wire_6666, wire_6657, wire_6656, wire_3514, wire_1698, wire_6737, wire_6703, wire_6702, wire_6674, wire_6671, wire_6670, wire_6639, wire_6638, wire_3506, wire_1698, wire_6735, wire_6719, wire_6718, wire_6687, wire_6686, wire_6682, wire_6655, wire_6654, wire_3498, wire_1670, wire_6733, wire_6701, wire_6700, wire_6690, wire_6669, wire_6668, wire_6637, wire_6636, wire_3490, wire_1670, wire_6731, wire_6717, wire_6716, wire_6698, wire_6685, wire_6684, wire_6653, wire_6652, wire_3482, wire_1670, wire_6729, wire_6706, wire_6697, wire_6696, wire_6665, wire_6664, wire_6633, wire_6632, wire_3474, wire_1670, wire_6751, wire_6714, wire_6713, wire_6712, wire_6681, wire_6680, wire_6649, wire_6648, wire_3466, wire_1670, wire_6995, wire_6980, wire_6975, wire_6974, wire_6943, wire_6942, wire_6911, wire_6910, wire_3679, wire_6997, wire_6991, wire_6990, wire_6972, wire_6959, wire_6958, wire_6927, wire_6926, wire_3677, wire_6999, wire_6971, wire_6970, wire_6964, wire_6939, wire_6938, wire_6907, wire_6906, wire_3675, wire_1698, wire_7001, wire_6987, wire_6986, wire_6956, wire_6955, wire_6954, wire_6923, wire_6922, wire_3673, wire_1698, wire_7003, wire_6969, wire_6968, wire_6948, wire_6937, wire_6936, wire_6905, wire_6904, wire_3671, wire_1698, wire_7005, wire_6985, wire_6984, wire_6953, wire_6952, wire_6940, wire_6921, wire_6920, wire_3669, wire_1698, wire_7007, wire_6967, wire_6966, wire_6935, wire_6934, wire_6932, wire_6903, wire_6902, wire_3667, wire_1698, wire_7009, wire_6983, wire_6982, wire_6951, wire_6950, wire_6924, wire_6919, wire_6918, wire_3665, wire_1670, wire_7011, wire_6963, wire_6962, wire_6931, wire_6930, wire_6916, wire_6899, wire_6898, wire_3663, wire_1670, wire_7013, wire_6979, wire_6978, wire_6947, wire_6946, wire_6915, wire_6914, wire_6908, wire_3661, wire_1670, wire_7015, wire_6961, wire_6960, wire_6929, wire_6928, wire_6900, wire_6897, wire_6896, wire_3659, wire_1670, wire_6993, wire_6988, wire_6977, wire_6976, wire_6945, wire_6944, wire_6913, wire_6912, wire_3657, wire_1670};
    // CHNAXY TOTAL: 460
    assign wire_3561 = lut_tile_1_5_chanxy_out[0];
    assign wire_3563 = lut_tile_1_5_chanxy_out[1];
    assign wire_3565 = lut_tile_1_5_chanxy_out[2];
    assign wire_3567 = lut_tile_1_5_chanxy_out[3];
    assign wire_3569 = lut_tile_1_5_chanxy_out[4];
    assign wire_3571 = lut_tile_1_5_chanxy_out[5];
    assign wire_3573 = lut_tile_1_5_chanxy_out[6];
    assign wire_3575 = lut_tile_1_5_chanxy_out[7];
    assign wire_3577 = lut_tile_1_5_chanxy_out[8];
    assign wire_3579 = lut_tile_1_5_chanxy_out[9];
    assign wire_3581 = lut_tile_1_5_chanxy_out[10];
    assign wire_3583 = lut_tile_1_5_chanxy_out[11];
    assign wire_3632 = lut_tile_1_5_chanxy_out[12];
    assign wire_3634 = lut_tile_1_5_chanxy_out[13];
    assign wire_3636 = lut_tile_1_5_chanxy_out[14];
    assign wire_3638 = lut_tile_1_5_chanxy_out[15];
    assign wire_3640 = lut_tile_1_5_chanxy_out[16];
    assign wire_3642 = lut_tile_1_5_chanxy_out[17];
    assign wire_3644 = lut_tile_1_5_chanxy_out[18];
    assign wire_3646 = lut_tile_1_5_chanxy_out[19];
    assign wire_3648 = lut_tile_1_5_chanxy_out[20];
    assign wire_3650 = lut_tile_1_5_chanxy_out[21];
    assign wire_3652 = lut_tile_1_5_chanxy_out[22];
    assign wire_3654 = lut_tile_1_5_chanxy_out[23];
    assign wire_6896 = lut_tile_1_5_chanxy_out[24];
    assign wire_6898 = lut_tile_1_5_chanxy_out[25];
    assign wire_6900 = lut_tile_1_5_chanxy_out[26];
    assign wire_6901 = lut_tile_1_5_chanxy_out[27];
    assign wire_6902 = lut_tile_1_5_chanxy_out[28];
    assign wire_6904 = lut_tile_1_5_chanxy_out[29];
    assign wire_6906 = lut_tile_1_5_chanxy_out[30];
    assign wire_6908 = lut_tile_1_5_chanxy_out[31];
    assign wire_6909 = lut_tile_1_5_chanxy_out[32];
    assign wire_6910 = lut_tile_1_5_chanxy_out[33];
    assign wire_6912 = lut_tile_1_5_chanxy_out[34];
    assign wire_6914 = lut_tile_1_5_chanxy_out[35];
    assign wire_6916 = lut_tile_1_5_chanxy_out[36];
    assign wire_6917 = lut_tile_1_5_chanxy_out[37];
    assign wire_6918 = lut_tile_1_5_chanxy_out[38];
    assign wire_6920 = lut_tile_1_5_chanxy_out[39];
    assign wire_6922 = lut_tile_1_5_chanxy_out[40];
    assign wire_6924 = lut_tile_1_5_chanxy_out[41];
    assign wire_6925 = lut_tile_1_5_chanxy_out[42];
    assign wire_6926 = lut_tile_1_5_chanxy_out[43];
    assign wire_6928 = lut_tile_1_5_chanxy_out[44];
    assign wire_6930 = lut_tile_1_5_chanxy_out[45];
    assign wire_6932 = lut_tile_1_5_chanxy_out[46];
    assign wire_6933 = lut_tile_1_5_chanxy_out[47];
    assign wire_6934 = lut_tile_1_5_chanxy_out[48];
    assign wire_6936 = lut_tile_1_5_chanxy_out[49];
    assign wire_6938 = lut_tile_1_5_chanxy_out[50];
    assign wire_6940 = lut_tile_1_5_chanxy_out[51];
    assign wire_6941 = lut_tile_1_5_chanxy_out[52];
    assign wire_6942 = lut_tile_1_5_chanxy_out[53];
    assign wire_6944 = lut_tile_1_5_chanxy_out[54];
    assign wire_6946 = lut_tile_1_5_chanxy_out[55];
    assign wire_6948 = lut_tile_1_5_chanxy_out[56];
    assign wire_6949 = lut_tile_1_5_chanxy_out[57];
    assign wire_6950 = lut_tile_1_5_chanxy_out[58];
    assign wire_6952 = lut_tile_1_5_chanxy_out[59];
    assign wire_6954 = lut_tile_1_5_chanxy_out[60];
    assign wire_6956 = lut_tile_1_5_chanxy_out[61];
    assign wire_6957 = lut_tile_1_5_chanxy_out[62];
    assign wire_6958 = lut_tile_1_5_chanxy_out[63];
    assign wire_6960 = lut_tile_1_5_chanxy_out[64];
    assign wire_6962 = lut_tile_1_5_chanxy_out[65];
    assign wire_6964 = lut_tile_1_5_chanxy_out[66];
    assign wire_6965 = lut_tile_1_5_chanxy_out[67];
    assign wire_6966 = lut_tile_1_5_chanxy_out[68];
    assign wire_6968 = lut_tile_1_5_chanxy_out[69];
    assign wire_6970 = lut_tile_1_5_chanxy_out[70];
    assign wire_6972 = lut_tile_1_5_chanxy_out[71];
    assign wire_6973 = lut_tile_1_5_chanxy_out[72];
    assign wire_6974 = lut_tile_1_5_chanxy_out[73];
    assign wire_6976 = lut_tile_1_5_chanxy_out[74];
    assign wire_6978 = lut_tile_1_5_chanxy_out[75];
    assign wire_6980 = lut_tile_1_5_chanxy_out[76];
    assign wire_6981 = lut_tile_1_5_chanxy_out[77];
    assign wire_6982 = lut_tile_1_5_chanxy_out[78];
    assign wire_6984 = lut_tile_1_5_chanxy_out[79];
    assign wire_6986 = lut_tile_1_5_chanxy_out[80];
    assign wire_6988 = lut_tile_1_5_chanxy_out[81];
    assign wire_6989 = lut_tile_1_5_chanxy_out[82];
    assign wire_6990 = lut_tile_1_5_chanxy_out[83];
   // CHANXY OUT
    assign lut_tile_1_6_chanxy_in = {wire_7279, wire_3703, wire_3675, wire_3674, wire_3667, wire_3666, wire_3659, wire_3658, wire_3584, wire_3367, wire_3366, wire_3355, wire_3354, wire_3427, wire_3330, wire_3439, wire_3342, wire_7277, wire_3681, wire_3651, wire_3650, wire_3643, wire_3642, wire_3635, wire_3634, wire_3606, wire_3403, wire_3402, wire_3379, wire_3378, wire_3415, wire_3414, wire_3353, wire_3352, wire_7275, wire_3683, wire_3679, wire_3678, wire_3671, wire_3670, wire_3663, wire_3662, wire_3604, wire_2277, wire_3425, wire_3328, wire_3391, wire_3390, wire_3401, wire_3400, wire_3377, wire_3376, wire_7273, wire_3685, wire_3655, wire_3654, wire_3647, wire_3646, wire_3639, wire_3638, wire_3602, wire_2277, wire_3351, wire_3350, wire_3365, wire_3364, wire_3437, wire_3340, wire_3423, wire_3326, wire_7271, wire_3687, wire_3631, wire_3630, wire_3623, wire_3622, wire_3615, wire_3614, wire_3600, wire_2277, wire_3413, wire_3412, wire_3389, wire_3388, wire_3399, wire_3398, wire_3363, wire_3362, wire_7269, wire_3689, wire_3627, wire_3626, wire_3619, wire_3618, wire_3611, wire_3610, wire_3598, wire_2277, wire_3435, wire_3338, wire_3375, wire_3374, wire_3411, wire_3410, wire_3387, wire_3386, wire_7267, wire_3691, wire_3673, wire_3672, wire_3665, wire_3664, wire_3657, wire_3656, wire_3596, wire_2277, wire_3361, wire_3360, wire_3349, wire_3348, wire_3421, wire_3324, wire_3433, wire_3336, wire_7265, wire_3693, wire_3649, wire_3648, wire_3641, wire_3640, wire_3633, wire_3632, wire_3594, wire_1975, wire_3397, wire_3396, wire_3373, wire_3372, wire_3409, wire_3408, wire_3347, wire_3346, wire_7263, wire_3695, wire_3677, wire_3676, wire_3669, wire_3668, wire_3661, wire_3660, wire_3592, wire_1975, wire_3419, wire_3322, wire_3385, wire_3384, wire_3395, wire_3394, wire_3371, wire_3370, wire_7261, wire_3697, wire_3653, wire_3652, wire_3645, wire_3644, wire_3637, wire_3636, wire_3590, wire_1975, wire_3345, wire_3344, wire_3359, wire_3358, wire_3431, wire_3334, wire_2277, wire_3417, wire_3320, wire_2277, wire_7259, wire_3699, wire_3629, wire_3628, wire_3621, wire_3620, wire_3613, wire_3612, wire_3588, wire_1975, wire_3407, wire_3406, wire_2277, wire_3383, wire_3382, wire_2277, wire_3393, wire_3392, wire_2277, wire_3357, wire_3356, wire_1975, wire_7257, wire_3701, wire_3625, wire_3624, wire_3617, wire_3616, wire_3609, wire_3608, wire_3586, wire_1975, wire_3429, wire_3332, wire_1975, wire_3369, wire_3368, wire_1975, wire_3405, wire_3404, wire_1975, wire_3381, wire_3380, wire_1975, wire_7013, wire_6988, wire_6975, wire_6974, wire_6943, wire_6942, wire_6911, wire_6910, wire_3582, wire_7011, wire_6971, wire_6970, wire_6939, wire_6938, wire_6907, wire_6906, wire_6900, wire_3580, wire_7009, wire_6991, wire_6990, wire_6959, wire_6958, wire_6927, wire_6926, wire_6908, wire_3578, wire_2002, wire_7007, wire_6987, wire_6986, wire_6955, wire_6954, wire_6923, wire_6922, wire_6916, wire_3576, wire_2002, wire_7005, wire_6985, wire_6984, wire_6953, wire_6952, wire_6924, wire_6921, wire_6920, wire_3574, wire_2002, wire_7003, wire_6969, wire_6968, wire_6937, wire_6936, wire_6932, wire_6905, wire_6904, wire_3572, wire_2002, wire_7001, wire_6967, wire_6966, wire_6940, wire_6935, wire_6934, wire_6903, wire_6902, wire_3570, wire_2002, wire_6999, wire_6963, wire_6962, wire_6948, wire_6931, wire_6930, wire_6899, wire_6898, wire_3568, wire_1974, wire_6997, wire_6983, wire_6982, wire_6956, wire_6951, wire_6950, wire_6919, wire_6918, wire_3566, wire_1974, wire_6995, wire_6979, wire_6978, wire_6964, wire_6947, wire_6946, wire_6915, wire_6914, wire_3564, wire_1974, wire_6993, wire_6977, wire_6976, wire_6972, wire_6945, wire_6944, wire_6913, wire_6912, wire_3562, wire_1974, wire_7015, wire_6980, wire_6961, wire_6960, wire_6929, wire_6928, wire_6897, wire_6896, wire_3560, wire_1974, wire_7259, wire_7246, wire_7237, wire_7236, wire_7205, wire_7204, wire_7173, wire_7172, wire_3703, wire_7261, wire_7238, wire_7235, wire_7234, wire_7203, wire_7202, wire_7171, wire_7170, wire_3701, wire_7263, wire_7253, wire_7252, wire_7230, wire_7221, wire_7220, wire_7189, wire_7188, wire_3699, wire_2002, wire_7265, wire_7251, wire_7250, wire_7222, wire_7219, wire_7218, wire_7187, wire_7186, wire_3697, wire_2002, wire_7267, wire_7249, wire_7248, wire_7217, wire_7216, wire_7214, wire_7185, wire_7184, wire_3695, wire_2002, wire_7269, wire_7233, wire_7232, wire_7206, wire_7201, wire_7200, wire_7169, wire_7168, wire_3693, wire_2002, wire_7271, wire_7229, wire_7228, wire_7198, wire_7197, wire_7196, wire_7165, wire_7164, wire_3691, wire_2002, wire_7273, wire_7227, wire_7226, wire_7195, wire_7194, wire_7190, wire_7163, wire_7162, wire_3689, wire_1974, wire_7275, wire_7245, wire_7244, wire_7213, wire_7212, wire_7182, wire_7181, wire_7180, wire_3687, wire_1974, wire_7277, wire_7243, wire_7242, wire_7211, wire_7210, wire_7179, wire_7178, wire_7174, wire_3685, wire_1974, wire_7279, wire_7241, wire_7240, wire_7209, wire_7208, wire_7177, wire_7176, wire_7166, wire_3683, wire_1974, wire_7257, wire_7254, wire_7225, wire_7224, wire_7193, wire_7192, wire_7161, wire_7160, wire_3681, wire_1974};
    // CHNAXY TOTAL: 460
    assign wire_3585 = lut_tile_1_6_chanxy_out[0];
    assign wire_3587 = lut_tile_1_6_chanxy_out[1];
    assign wire_3589 = lut_tile_1_6_chanxy_out[2];
    assign wire_3591 = lut_tile_1_6_chanxy_out[3];
    assign wire_3593 = lut_tile_1_6_chanxy_out[4];
    assign wire_3595 = lut_tile_1_6_chanxy_out[5];
    assign wire_3597 = lut_tile_1_6_chanxy_out[6];
    assign wire_3599 = lut_tile_1_6_chanxy_out[7];
    assign wire_3601 = lut_tile_1_6_chanxy_out[8];
    assign wire_3603 = lut_tile_1_6_chanxy_out[9];
    assign wire_3605 = lut_tile_1_6_chanxy_out[10];
    assign wire_3607 = lut_tile_1_6_chanxy_out[11];
    assign wire_3656 = lut_tile_1_6_chanxy_out[12];
    assign wire_3658 = lut_tile_1_6_chanxy_out[13];
    assign wire_3660 = lut_tile_1_6_chanxy_out[14];
    assign wire_3662 = lut_tile_1_6_chanxy_out[15];
    assign wire_3664 = lut_tile_1_6_chanxy_out[16];
    assign wire_3666 = lut_tile_1_6_chanxy_out[17];
    assign wire_3668 = lut_tile_1_6_chanxy_out[18];
    assign wire_3670 = lut_tile_1_6_chanxy_out[19];
    assign wire_3672 = lut_tile_1_6_chanxy_out[20];
    assign wire_3674 = lut_tile_1_6_chanxy_out[21];
    assign wire_3676 = lut_tile_1_6_chanxy_out[22];
    assign wire_3678 = lut_tile_1_6_chanxy_out[23];
    assign wire_7160 = lut_tile_1_6_chanxy_out[24];
    assign wire_7162 = lut_tile_1_6_chanxy_out[25];
    assign wire_7164 = lut_tile_1_6_chanxy_out[26];
    assign wire_7166 = lut_tile_1_6_chanxy_out[27];
    assign wire_7167 = lut_tile_1_6_chanxy_out[28];
    assign wire_7168 = lut_tile_1_6_chanxy_out[29];
    assign wire_7170 = lut_tile_1_6_chanxy_out[30];
    assign wire_7172 = lut_tile_1_6_chanxy_out[31];
    assign wire_7174 = lut_tile_1_6_chanxy_out[32];
    assign wire_7175 = lut_tile_1_6_chanxy_out[33];
    assign wire_7176 = lut_tile_1_6_chanxy_out[34];
    assign wire_7178 = lut_tile_1_6_chanxy_out[35];
    assign wire_7180 = lut_tile_1_6_chanxy_out[36];
    assign wire_7182 = lut_tile_1_6_chanxy_out[37];
    assign wire_7183 = lut_tile_1_6_chanxy_out[38];
    assign wire_7184 = lut_tile_1_6_chanxy_out[39];
    assign wire_7186 = lut_tile_1_6_chanxy_out[40];
    assign wire_7188 = lut_tile_1_6_chanxy_out[41];
    assign wire_7190 = lut_tile_1_6_chanxy_out[42];
    assign wire_7191 = lut_tile_1_6_chanxy_out[43];
    assign wire_7192 = lut_tile_1_6_chanxy_out[44];
    assign wire_7194 = lut_tile_1_6_chanxy_out[45];
    assign wire_7196 = lut_tile_1_6_chanxy_out[46];
    assign wire_7198 = lut_tile_1_6_chanxy_out[47];
    assign wire_7199 = lut_tile_1_6_chanxy_out[48];
    assign wire_7200 = lut_tile_1_6_chanxy_out[49];
    assign wire_7202 = lut_tile_1_6_chanxy_out[50];
    assign wire_7204 = lut_tile_1_6_chanxy_out[51];
    assign wire_7206 = lut_tile_1_6_chanxy_out[52];
    assign wire_7207 = lut_tile_1_6_chanxy_out[53];
    assign wire_7208 = lut_tile_1_6_chanxy_out[54];
    assign wire_7210 = lut_tile_1_6_chanxy_out[55];
    assign wire_7212 = lut_tile_1_6_chanxy_out[56];
    assign wire_7214 = lut_tile_1_6_chanxy_out[57];
    assign wire_7215 = lut_tile_1_6_chanxy_out[58];
    assign wire_7216 = lut_tile_1_6_chanxy_out[59];
    assign wire_7218 = lut_tile_1_6_chanxy_out[60];
    assign wire_7220 = lut_tile_1_6_chanxy_out[61];
    assign wire_7222 = lut_tile_1_6_chanxy_out[62];
    assign wire_7223 = lut_tile_1_6_chanxy_out[63];
    assign wire_7224 = lut_tile_1_6_chanxy_out[64];
    assign wire_7226 = lut_tile_1_6_chanxy_out[65];
    assign wire_7228 = lut_tile_1_6_chanxy_out[66];
    assign wire_7230 = lut_tile_1_6_chanxy_out[67];
    assign wire_7231 = lut_tile_1_6_chanxy_out[68];
    assign wire_7232 = lut_tile_1_6_chanxy_out[69];
    assign wire_7234 = lut_tile_1_6_chanxy_out[70];
    assign wire_7236 = lut_tile_1_6_chanxy_out[71];
    assign wire_7238 = lut_tile_1_6_chanxy_out[72];
    assign wire_7239 = lut_tile_1_6_chanxy_out[73];
    assign wire_7240 = lut_tile_1_6_chanxy_out[74];
    assign wire_7242 = lut_tile_1_6_chanxy_out[75];
    assign wire_7244 = lut_tile_1_6_chanxy_out[76];
    assign wire_7246 = lut_tile_1_6_chanxy_out[77];
    assign wire_7247 = lut_tile_1_6_chanxy_out[78];
    assign wire_7248 = lut_tile_1_6_chanxy_out[79];
    assign wire_7250 = lut_tile_1_6_chanxy_out[80];
    assign wire_7252 = lut_tile_1_6_chanxy_out[81];
    assign wire_7254 = lut_tile_1_6_chanxy_out[82];
    assign wire_7255 = lut_tile_1_6_chanxy_out[83];
   // CHANXY OUT
    assign lut_tile_1_7_chanxy_in = {wire_3463, wire_3366, wire_3451, wire_3354, wire_3427, wire_3426, wire_7543, wire_3727, wire_3699, wire_3698, wire_3691, wire_3690, wire_3683, wire_3682, wire_3608, wire_3439, wire_3438, wire_3403, wire_3402, wire_3379, wire_3378, wire_3415, wire_3414, wire_7541, wire_3705, wire_3675, wire_3674, wire_3667, wire_3666, wire_3659, wire_3658, wire_3630, wire_3449, wire_3352, wire_3425, wire_3424, wire_3391, wire_3390, wire_3401, wire_3400, wire_7539, wire_3707, wire_3703, wire_3702, wire_3695, wire_3694, wire_3687, wire_3686, wire_3628, wire_2581, wire_3377, wire_3376, wire_3447, wire_3350, wire_3461, wire_3364, wire_3437, wire_3436, wire_7537, wire_3709, wire_3679, wire_3678, wire_3671, wire_3670, wire_3663, wire_3662, wire_3626, wire_2581, wire_3423, wire_3422, wire_3413, wire_3412, wire_3389, wire_3388, wire_3399, wire_3398, wire_7535, wire_3711, wire_3655, wire_3654, wire_3647, wire_3646, wire_3639, wire_3638, wire_3624, wire_2581, wire_3459, wire_3362, wire_3435, wire_3434, wire_3375, wire_3374, wire_3411, wire_3410, wire_7533, wire_3713, wire_3651, wire_3650, wire_3643, wire_3642, wire_3635, wire_3634, wire_3622, wire_2581, wire_3387, wire_3386, wire_3457, wire_3360, wire_3445, wire_3348, wire_3421, wire_3420, wire_7531, wire_3715, wire_3697, wire_3696, wire_3689, wire_3688, wire_3681, wire_3680, wire_3620, wire_2581, wire_3433, wire_3432, wire_3397, wire_3396, wire_3373, wire_3372, wire_3409, wire_3408, wire_7529, wire_3717, wire_3673, wire_3672, wire_3665, wire_3664, wire_3657, wire_3656, wire_3618, wire_2279, wire_3443, wire_3346, wire_3419, wire_3418, wire_3385, wire_3384, wire_3395, wire_3394, wire_7527, wire_3719, wire_3701, wire_3700, wire_3693, wire_3692, wire_3685, wire_3684, wire_3616, wire_2279, wire_3371, wire_3370, wire_3441, wire_3344, wire_3455, wire_3358, wire_3431, wire_3430, wire_2581, wire_7525, wire_3721, wire_3677, wire_3676, wire_3669, wire_3668, wire_3661, wire_3660, wire_3614, wire_2279, wire_3417, wire_3416, wire_2581, wire_3407, wire_3406, wire_2581, wire_3383, wire_3382, wire_2581, wire_3393, wire_3392, wire_2581, wire_7523, wire_3723, wire_3653, wire_3652, wire_3645, wire_3644, wire_3637, wire_3636, wire_3612, wire_2279, wire_3453, wire_3356, wire_2279, wire_3429, wire_3428, wire_2279, wire_3369, wire_3368, wire_2279, wire_3405, wire_3404, wire_2279, wire_7521, wire_3725, wire_3649, wire_3648, wire_3641, wire_3640, wire_3633, wire_3632, wire_3610, wire_2279, wire_3381, wire_3380, wire_2279, wire_7277, wire_7254, wire_7253, wire_7252, wire_7221, wire_7220, wire_7189, wire_7188, wire_3606, wire_7275, wire_7237, wire_7236, wire_7205, wire_7204, wire_7173, wire_7172, wire_7166, wire_3604, wire_7273, wire_7235, wire_7234, wire_7203, wire_7202, wire_7174, wire_7171, wire_7170, wire_3602, wire_2306, wire_7271, wire_7233, wire_7232, wire_7201, wire_7200, wire_7182, wire_7169, wire_7168, wire_3600, wire_2306, wire_7269, wire_7251, wire_7250, wire_7219, wire_7218, wire_7190, wire_7187, wire_7186, wire_3598, wire_2306, wire_7267, wire_7249, wire_7248, wire_7217, wire_7216, wire_7198, wire_7185, wire_7184, wire_3596, wire_2306, wire_7265, wire_7245, wire_7244, wire_7213, wire_7212, wire_7206, wire_7181, wire_7180, wire_3594, wire_2306, wire_7263, wire_7229, wire_7228, wire_7214, wire_7197, wire_7196, wire_7165, wire_7164, wire_3592, wire_2278, wire_7261, wire_7227, wire_7226, wire_7222, wire_7195, wire_7194, wire_7163, wire_7162, wire_3590, wire_2278, wire_7259, wire_7230, wire_7225, wire_7224, wire_7193, wire_7192, wire_7161, wire_7160, wire_3588, wire_2278, wire_7257, wire_7243, wire_7242, wire_7238, wire_7211, wire_7210, wire_7179, wire_7178, wire_3586, wire_2278, wire_7279, wire_7246, wire_7241, wire_7240, wire_7209, wire_7208, wire_7177, wire_7176, wire_3584, wire_2278, wire_7523, wire_7504, wire_7503, wire_7502, wire_7471, wire_7470, wire_7439, wire_7438, wire_3727, wire_7525, wire_7501, wire_7500, wire_7496, wire_7469, wire_7468, wire_7437, wire_7436, wire_3725, wire_7527, wire_7519, wire_7518, wire_7488, wire_7487, wire_7486, wire_7455, wire_7454, wire_3723, wire_2306, wire_7529, wire_7517, wire_7516, wire_7485, wire_7484, wire_7480, wire_7453, wire_7452, wire_3721, wire_2306, wire_7531, wire_7515, wire_7514, wire_7483, wire_7482, wire_7472, wire_7451, wire_7450, wire_3719, wire_2306, wire_7533, wire_7499, wire_7498, wire_7467, wire_7466, wire_7464, wire_7435, wire_7434, wire_3717, wire_2306, wire_7535, wire_7495, wire_7494, wire_7463, wire_7462, wire_7456, wire_7431, wire_7430, wire_3715, wire_2306, wire_7537, wire_7493, wire_7492, wire_7461, wire_7460, wire_7448, wire_7429, wire_7428, wire_3713, wire_2278, wire_7539, wire_7511, wire_7510, wire_7479, wire_7478, wire_7447, wire_7446, wire_7440, wire_3711, wire_2278, wire_7541, wire_7509, wire_7508, wire_7477, wire_7476, wire_7445, wire_7444, wire_7432, wire_3709, wire_2278, wire_7543, wire_7507, wire_7506, wire_7475, wire_7474, wire_7443, wire_7442, wire_7424, wire_3707, wire_2278, wire_7521, wire_7512, wire_7491, wire_7490, wire_7459, wire_7458, wire_7427, wire_7426, wire_3705, wire_2278};
    // CHNAXY TOTAL: 460
    assign wire_3609 = lut_tile_1_7_chanxy_out[0];
    assign wire_3611 = lut_tile_1_7_chanxy_out[1];
    assign wire_3613 = lut_tile_1_7_chanxy_out[2];
    assign wire_3615 = lut_tile_1_7_chanxy_out[3];
    assign wire_3617 = lut_tile_1_7_chanxy_out[4];
    assign wire_3619 = lut_tile_1_7_chanxy_out[5];
    assign wire_3621 = lut_tile_1_7_chanxy_out[6];
    assign wire_3623 = lut_tile_1_7_chanxy_out[7];
    assign wire_3625 = lut_tile_1_7_chanxy_out[8];
    assign wire_3627 = lut_tile_1_7_chanxy_out[9];
    assign wire_3629 = lut_tile_1_7_chanxy_out[10];
    assign wire_3631 = lut_tile_1_7_chanxy_out[11];
    assign wire_3680 = lut_tile_1_7_chanxy_out[12];
    assign wire_3682 = lut_tile_1_7_chanxy_out[13];
    assign wire_3684 = lut_tile_1_7_chanxy_out[14];
    assign wire_3686 = lut_tile_1_7_chanxy_out[15];
    assign wire_3688 = lut_tile_1_7_chanxy_out[16];
    assign wire_3690 = lut_tile_1_7_chanxy_out[17];
    assign wire_3692 = lut_tile_1_7_chanxy_out[18];
    assign wire_3694 = lut_tile_1_7_chanxy_out[19];
    assign wire_3696 = lut_tile_1_7_chanxy_out[20];
    assign wire_3698 = lut_tile_1_7_chanxy_out[21];
    assign wire_3700 = lut_tile_1_7_chanxy_out[22];
    assign wire_3702 = lut_tile_1_7_chanxy_out[23];
    assign wire_7424 = lut_tile_1_7_chanxy_out[24];
    assign wire_7425 = lut_tile_1_7_chanxy_out[25];
    assign wire_7426 = lut_tile_1_7_chanxy_out[26];
    assign wire_7428 = lut_tile_1_7_chanxy_out[27];
    assign wire_7430 = lut_tile_1_7_chanxy_out[28];
    assign wire_7432 = lut_tile_1_7_chanxy_out[29];
    assign wire_7433 = lut_tile_1_7_chanxy_out[30];
    assign wire_7434 = lut_tile_1_7_chanxy_out[31];
    assign wire_7436 = lut_tile_1_7_chanxy_out[32];
    assign wire_7438 = lut_tile_1_7_chanxy_out[33];
    assign wire_7440 = lut_tile_1_7_chanxy_out[34];
    assign wire_7441 = lut_tile_1_7_chanxy_out[35];
    assign wire_7442 = lut_tile_1_7_chanxy_out[36];
    assign wire_7444 = lut_tile_1_7_chanxy_out[37];
    assign wire_7446 = lut_tile_1_7_chanxy_out[38];
    assign wire_7448 = lut_tile_1_7_chanxy_out[39];
    assign wire_7449 = lut_tile_1_7_chanxy_out[40];
    assign wire_7450 = lut_tile_1_7_chanxy_out[41];
    assign wire_7452 = lut_tile_1_7_chanxy_out[42];
    assign wire_7454 = lut_tile_1_7_chanxy_out[43];
    assign wire_7456 = lut_tile_1_7_chanxy_out[44];
    assign wire_7457 = lut_tile_1_7_chanxy_out[45];
    assign wire_7458 = lut_tile_1_7_chanxy_out[46];
    assign wire_7460 = lut_tile_1_7_chanxy_out[47];
    assign wire_7462 = lut_tile_1_7_chanxy_out[48];
    assign wire_7464 = lut_tile_1_7_chanxy_out[49];
    assign wire_7465 = lut_tile_1_7_chanxy_out[50];
    assign wire_7466 = lut_tile_1_7_chanxy_out[51];
    assign wire_7468 = lut_tile_1_7_chanxy_out[52];
    assign wire_7470 = lut_tile_1_7_chanxy_out[53];
    assign wire_7472 = lut_tile_1_7_chanxy_out[54];
    assign wire_7473 = lut_tile_1_7_chanxy_out[55];
    assign wire_7474 = lut_tile_1_7_chanxy_out[56];
    assign wire_7476 = lut_tile_1_7_chanxy_out[57];
    assign wire_7478 = lut_tile_1_7_chanxy_out[58];
    assign wire_7480 = lut_tile_1_7_chanxy_out[59];
    assign wire_7481 = lut_tile_1_7_chanxy_out[60];
    assign wire_7482 = lut_tile_1_7_chanxy_out[61];
    assign wire_7484 = lut_tile_1_7_chanxy_out[62];
    assign wire_7486 = lut_tile_1_7_chanxy_out[63];
    assign wire_7488 = lut_tile_1_7_chanxy_out[64];
    assign wire_7489 = lut_tile_1_7_chanxy_out[65];
    assign wire_7490 = lut_tile_1_7_chanxy_out[66];
    assign wire_7492 = lut_tile_1_7_chanxy_out[67];
    assign wire_7494 = lut_tile_1_7_chanxy_out[68];
    assign wire_7496 = lut_tile_1_7_chanxy_out[69];
    assign wire_7497 = lut_tile_1_7_chanxy_out[70];
    assign wire_7498 = lut_tile_1_7_chanxy_out[71];
    assign wire_7500 = lut_tile_1_7_chanxy_out[72];
    assign wire_7502 = lut_tile_1_7_chanxy_out[73];
    assign wire_7504 = lut_tile_1_7_chanxy_out[74];
    assign wire_7505 = lut_tile_1_7_chanxy_out[75];
    assign wire_7506 = lut_tile_1_7_chanxy_out[76];
    assign wire_7508 = lut_tile_1_7_chanxy_out[77];
    assign wire_7510 = lut_tile_1_7_chanxy_out[78];
    assign wire_7512 = lut_tile_1_7_chanxy_out[79];
    assign wire_7513 = lut_tile_1_7_chanxy_out[80];
    assign wire_7514 = lut_tile_1_7_chanxy_out[81];
    assign wire_7516 = lut_tile_1_7_chanxy_out[82];
    assign wire_7518 = lut_tile_1_7_chanxy_out[83];
   // CHANXY OUT
    assign lut_tile_1_8_chanxy_in = {wire_3392, wire_3416, wire_7807, wire_3702, wire_3696, wire_3690, wire_3684, wire_2859, wire_2850, wire_2844, wire_3440, wire_3370, wire_2862, wire_3394, wire_2862, wire_3418, wire_2862, wire_7805, wire_3678, wire_3672, wire_3666, wire_3660, wire_2856, wire_2850, wire_2844, wire_3442, wire_2862, wire_3372, wire_2862, wire_3396, wire_2859, wire_3420, wire_2859, wire_7803, wire_3654, wire_3648, wire_3642, wire_3636, wire_2856, wire_2850, wire_2841, wire_3444, wire_2859, wire_3374, wire_2859, wire_3398, wire_2859, wire_3422, wire_2856, wire_7801, wire_3726, wire_3720, wire_3714, wire_3708, wire_2862, wire_2856, wire_2850, wire_2841, wire_3446, wire_2856, wire_3376, wire_2856, wire_3400, wire_2856, wire_3424, wire_2856, wire_7799, wire_3700, wire_3694, wire_3688, wire_3682, wire_2862, wire_2856, wire_2847, wire_2841, wire_3448, wire_2853, wire_3378, wire_2853, wire_3402, wire_2853, wire_3426, wire_2853, wire_7797, wire_3676, wire_3670, wire_3664, wire_3658, wire_2862, wire_2856, wire_2847, wire_2841, wire_3450, wire_2853, wire_3380, wire_2850, wire_3404, wire_2850, wire_3428, wire_2850, wire_7795, wire_3652, wire_3646, wire_3640, wire_3634, wire_2862, wire_2853, wire_2847, wire_2841, wire_3452, wire_2850, wire_3382, wire_2850, wire_3406, wire_2847, wire_3430, wire_2847, wire_7793, wire_3724, wire_3718, wire_3712, wire_3706, wire_2862, wire_2853, wire_2847, wire_2583, wire_3454, wire_2847, wire_3384, wire_2847, wire_3408, wire_2847, wire_3432, wire_2844, wire_7791, wire_3698, wire_3692, wire_3686, wire_3680, wire_2859, wire_2853, wire_2847, wire_2583, wire_3456, wire_2844, wire_3386, wire_2844, wire_3410, wire_2844, wire_3434, wire_2844, wire_7789, wire_3674, wire_3668, wire_3662, wire_3656, wire_2859, wire_2853, wire_2844, wire_2583, wire_3458, wire_2841, wire_3388, wire_2841, wire_3412, wire_2841, wire_3436, wire_2841, wire_7787, wire_3650, wire_3644, wire_3638, wire_3632, wire_2859, wire_2853, wire_2844, wire_2583, wire_3460, wire_2841, wire_3390, wire_2583, wire_3414, wire_2583, wire_3438, wire_2583, wire_7785, wire_3722, wire_3716, wire_3710, wire_3704, wire_2859, wire_2850, wire_2844, wire_2583, wire_3462, wire_2583, wire_3368, wire_2583, wire_7795, wire_7730, wire_7541, wire_7519, wire_7518, wire_7512, wire_7487, wire_7486, wire_7455, wire_7454, wire_3630, wire_7725, wire_7724, wire_7539, wire_7503, wire_7502, wire_7471, wire_7470, wire_7439, wire_7438, wire_7424, wire_3628, wire_7777, wire_7776, wire_7537, wire_7501, wire_7500, wire_7469, wire_7468, wire_7437, wire_7436, wire_7432, wire_3626, wire_2610, wire_7805, wire_7770, wire_7535, wire_7499, wire_7498, wire_7467, wire_7466, wire_7440, wire_7435, wire_7434, wire_3624, wire_2610, wire_7765, wire_7764, wire_7533, wire_7517, wire_7516, wire_7485, wire_7484, wire_7453, wire_7452, wire_7448, wire_3622, wire_2610, wire_7713, wire_7712, wire_7531, wire_7515, wire_7514, wire_7483, wire_7482, wire_7456, wire_7451, wire_7450, wire_3620, wire_2610, wire_7789, wire_7706, wire_7529, wire_7511, wire_7510, wire_7479, wire_7478, wire_7464, wire_7447, wire_7446, wire_3618, wire_2610, wire_7701, wire_7700, wire_7527, wire_7495, wire_7494, wire_7472, wire_7463, wire_7462, wire_7431, wire_7430, wire_3616, wire_2582, wire_7753, wire_7752, wire_7525, wire_7493, wire_7492, wire_7480, wire_7461, wire_7460, wire_7429, wire_7428, wire_3614, wire_2582, wire_7799, wire_7746, wire_2610, wire_7523, wire_7491, wire_7490, wire_7488, wire_7459, wire_7458, wire_7427, wire_7426, wire_3612, wire_2582, wire_7741, wire_7740, wire_2582, wire_7521, wire_7509, wire_7508, wire_7496, wire_7477, wire_7476, wire_7445, wire_7444, wire_3610, wire_2582, wire_7689, wire_7688, wire_2582, wire_7543, wire_7507, wire_7506, wire_7504, wire_7475, wire_7474, wire_7443, wire_7442, wire_3608, wire_2582, wire_7735, wire_7734, wire_7729, wire_7728, wire_7807, wire_7778, wire_7775, wire_7774, wire_7769, wire_7768, wire_7791, wire_7714, wire_7711, wire_7710, wire_7705, wire_7704, wire_7801, wire_7754, wire_7751, wire_7750, wire_7745, wire_7744, wire_2610, wire_7785, wire_7690, wire_2582, wire_7733, wire_7732, wire_7781, wire_7780, wire_7793, wire_7722, wire_7773, wire_7772, wire_7717, wire_7716, wire_7803, wire_7762, wire_7709, wire_7708, wire_7757, wire_7756, wire_7787, wire_7698, wire_7749, wire_7748, wire_7693, wire_7692, wire_2610, wire_7797, wire_7738, wire_2582, wire_7783, wire_7782, wire_7727, wire_7726, wire_7721, wire_7720, wire_7719, wire_7718, wire_7767, wire_7766, wire_7761, wire_7760, wire_7759, wire_7758, wire_7703, wire_7702, wire_7697, wire_7696, wire_7695, wire_7694, wire_2610, wire_7743, wire_7742, wire_2610, wire_7737, wire_7736, wire_2582};
    // CHNAXY TOTAL: 422
    assign wire_3633 = lut_tile_1_8_chanxy_out[0];
    assign wire_3635 = lut_tile_1_8_chanxy_out[1];
    assign wire_3637 = lut_tile_1_8_chanxy_out[2];
    assign wire_3639 = lut_tile_1_8_chanxy_out[3];
    assign wire_3641 = lut_tile_1_8_chanxy_out[4];
    assign wire_3643 = lut_tile_1_8_chanxy_out[5];
    assign wire_3645 = lut_tile_1_8_chanxy_out[6];
    assign wire_3647 = lut_tile_1_8_chanxy_out[7];
    assign wire_3649 = lut_tile_1_8_chanxy_out[8];
    assign wire_3651 = lut_tile_1_8_chanxy_out[9];
    assign wire_3653 = lut_tile_1_8_chanxy_out[10];
    assign wire_3655 = lut_tile_1_8_chanxy_out[11];
    assign wire_3657 = lut_tile_1_8_chanxy_out[12];
    assign wire_3659 = lut_tile_1_8_chanxy_out[13];
    assign wire_3661 = lut_tile_1_8_chanxy_out[14];
    assign wire_3663 = lut_tile_1_8_chanxy_out[15];
    assign wire_3665 = lut_tile_1_8_chanxy_out[16];
    assign wire_3667 = lut_tile_1_8_chanxy_out[17];
    assign wire_3669 = lut_tile_1_8_chanxy_out[18];
    assign wire_3671 = lut_tile_1_8_chanxy_out[19];
    assign wire_3673 = lut_tile_1_8_chanxy_out[20];
    assign wire_3675 = lut_tile_1_8_chanxy_out[21];
    assign wire_3677 = lut_tile_1_8_chanxy_out[22];
    assign wire_3679 = lut_tile_1_8_chanxy_out[23];
    assign wire_3681 = lut_tile_1_8_chanxy_out[24];
    assign wire_3683 = lut_tile_1_8_chanxy_out[25];
    assign wire_3685 = lut_tile_1_8_chanxy_out[26];
    assign wire_3687 = lut_tile_1_8_chanxy_out[27];
    assign wire_3689 = lut_tile_1_8_chanxy_out[28];
    assign wire_3691 = lut_tile_1_8_chanxy_out[29];
    assign wire_3693 = lut_tile_1_8_chanxy_out[30];
    assign wire_3695 = lut_tile_1_8_chanxy_out[31];
    assign wire_3697 = lut_tile_1_8_chanxy_out[32];
    assign wire_3699 = lut_tile_1_8_chanxy_out[33];
    assign wire_3701 = lut_tile_1_8_chanxy_out[34];
    assign wire_3703 = lut_tile_1_8_chanxy_out[35];
    assign wire_3704 = lut_tile_1_8_chanxy_out[36];
    assign wire_3705 = lut_tile_1_8_chanxy_out[37];
    assign wire_3706 = lut_tile_1_8_chanxy_out[38];
    assign wire_3707 = lut_tile_1_8_chanxy_out[39];
    assign wire_3708 = lut_tile_1_8_chanxy_out[40];
    assign wire_3709 = lut_tile_1_8_chanxy_out[41];
    assign wire_3710 = lut_tile_1_8_chanxy_out[42];
    assign wire_3711 = lut_tile_1_8_chanxy_out[43];
    assign wire_3712 = lut_tile_1_8_chanxy_out[44];
    assign wire_3713 = lut_tile_1_8_chanxy_out[45];
    assign wire_3714 = lut_tile_1_8_chanxy_out[46];
    assign wire_3715 = lut_tile_1_8_chanxy_out[47];
    assign wire_3716 = lut_tile_1_8_chanxy_out[48];
    assign wire_3717 = lut_tile_1_8_chanxy_out[49];
    assign wire_3718 = lut_tile_1_8_chanxy_out[50];
    assign wire_3719 = lut_tile_1_8_chanxy_out[51];
    assign wire_3720 = lut_tile_1_8_chanxy_out[52];
    assign wire_3721 = lut_tile_1_8_chanxy_out[53];
    assign wire_3722 = lut_tile_1_8_chanxy_out[54];
    assign wire_3723 = lut_tile_1_8_chanxy_out[55];
    assign wire_3724 = lut_tile_1_8_chanxy_out[56];
    assign wire_3725 = lut_tile_1_8_chanxy_out[57];
    assign wire_3726 = lut_tile_1_8_chanxy_out[58];
    assign wire_3727 = lut_tile_1_8_chanxy_out[59];
    assign wire_7688 = lut_tile_1_8_chanxy_out[60];
    assign wire_7690 = lut_tile_1_8_chanxy_out[61];
    assign wire_7691 = lut_tile_1_8_chanxy_out[62];
    assign wire_7692 = lut_tile_1_8_chanxy_out[63];
    assign wire_7694 = lut_tile_1_8_chanxy_out[64];
    assign wire_7696 = lut_tile_1_8_chanxy_out[65];
    assign wire_7698 = lut_tile_1_8_chanxy_out[66];
    assign wire_7699 = lut_tile_1_8_chanxy_out[67];
    assign wire_7700 = lut_tile_1_8_chanxy_out[68];
    assign wire_7702 = lut_tile_1_8_chanxy_out[69];
    assign wire_7704 = lut_tile_1_8_chanxy_out[70];
    assign wire_7706 = lut_tile_1_8_chanxy_out[71];
    assign wire_7707 = lut_tile_1_8_chanxy_out[72];
    assign wire_7708 = lut_tile_1_8_chanxy_out[73];
    assign wire_7710 = lut_tile_1_8_chanxy_out[74];
    assign wire_7712 = lut_tile_1_8_chanxy_out[75];
    assign wire_7714 = lut_tile_1_8_chanxy_out[76];
    assign wire_7715 = lut_tile_1_8_chanxy_out[77];
    assign wire_7716 = lut_tile_1_8_chanxy_out[78];
    assign wire_7718 = lut_tile_1_8_chanxy_out[79];
    assign wire_7720 = lut_tile_1_8_chanxy_out[80];
    assign wire_7722 = lut_tile_1_8_chanxy_out[81];
    assign wire_7723 = lut_tile_1_8_chanxy_out[82];
    assign wire_7724 = lut_tile_1_8_chanxy_out[83];
    assign wire_7726 = lut_tile_1_8_chanxy_out[84];
    assign wire_7728 = lut_tile_1_8_chanxy_out[85];
    assign wire_7730 = lut_tile_1_8_chanxy_out[86];
    assign wire_7731 = lut_tile_1_8_chanxy_out[87];
    assign wire_7732 = lut_tile_1_8_chanxy_out[88];
    assign wire_7734 = lut_tile_1_8_chanxy_out[89];
    assign wire_7736 = lut_tile_1_8_chanxy_out[90];
    assign wire_7738 = lut_tile_1_8_chanxy_out[91];
    assign wire_7739 = lut_tile_1_8_chanxy_out[92];
    assign wire_7740 = lut_tile_1_8_chanxy_out[93];
    assign wire_7742 = lut_tile_1_8_chanxy_out[94];
    assign wire_7744 = lut_tile_1_8_chanxy_out[95];
    assign wire_7746 = lut_tile_1_8_chanxy_out[96];
    assign wire_7747 = lut_tile_1_8_chanxy_out[97];
    assign wire_7748 = lut_tile_1_8_chanxy_out[98];
    assign wire_7750 = lut_tile_1_8_chanxy_out[99];
    assign wire_7752 = lut_tile_1_8_chanxy_out[100];
    assign wire_7754 = lut_tile_1_8_chanxy_out[101];
    assign wire_7755 = lut_tile_1_8_chanxy_out[102];
    assign wire_7756 = lut_tile_1_8_chanxy_out[103];
    assign wire_7758 = lut_tile_1_8_chanxy_out[104];
    assign wire_7760 = lut_tile_1_8_chanxy_out[105];
    assign wire_7762 = lut_tile_1_8_chanxy_out[106];
    assign wire_7763 = lut_tile_1_8_chanxy_out[107];
    assign wire_7764 = lut_tile_1_8_chanxy_out[108];
    assign wire_7766 = lut_tile_1_8_chanxy_out[109];
    assign wire_7768 = lut_tile_1_8_chanxy_out[110];
    assign wire_7770 = lut_tile_1_8_chanxy_out[111];
    assign wire_7771 = lut_tile_1_8_chanxy_out[112];
    assign wire_7772 = lut_tile_1_8_chanxy_out[113];
    assign wire_7774 = lut_tile_1_8_chanxy_out[114];
    assign wire_7776 = lut_tile_1_8_chanxy_out[115];
    assign wire_7778 = lut_tile_1_8_chanxy_out[116];
    assign wire_7779 = lut_tile_1_8_chanxy_out[117];
    assign wire_7780 = lut_tile_1_8_chanxy_out[118];
    assign wire_7782 = lut_tile_1_8_chanxy_out[119];
   // CHANXY OUT
    assign lut_tile_2_1_chanxy_in = {wire_5932, wire_3561, wire_3543, wire_3542, wire_3511, wire_3510, wire_3479, wire_3478, wire_3476, wire_5924, wire_3583, wire_3539, wire_3538, wire_3507, wire_3506, wire_3484, wire_3475, wire_3474, wire_5916, wire_3581, wire_3559, wire_3558, wire_3527, wire_3526, wire_3495, wire_3494, wire_3492, wire_783, wire_5908, wire_3579, wire_3555, wire_3554, wire_3523, wire_3522, wire_3500, wire_3491, wire_3490, wire_783, wire_5900, wire_3577, wire_3553, wire_3552, wire_3521, wire_3520, wire_3508, wire_3489, wire_3488, wire_783, wire_5892, wire_3575, wire_3537, wire_3536, wire_3516, wire_3505, wire_3504, wire_3473, wire_3472, wire_783, wire_5884, wire_3573, wire_3535, wire_3534, wire_3524, wire_3503, wire_3502, wire_3471, wire_3470, wire_783, wire_5876, wire_3571, wire_3532, wire_3531, wire_3530, wire_3499, wire_3498, wire_3467, wire_3466, wire_481, wire_5868, wire_3569, wire_3551, wire_3550, wire_3540, wire_3519, wire_3518, wire_3487, wire_3486, wire_481, wire_5860, wire_3567, wire_3548, wire_3547, wire_3546, wire_3515, wire_3514, wire_3483, wire_3482, wire_481, wire_5852, wire_3565, wire_3556, wire_3545, wire_3544, wire_3513, wire_3512, wire_3481, wire_3480, wire_481, wire_5844, wire_3563, wire_3529, wire_3528, wire_3497, wire_3496, wire_3468, wire_3465, wire_3464, wire_481, wire_5983, wire_3847, wire_3805, wire_3804, wire_3773, wire_3772, wire_3741, wire_3740, wire_3734, wire_5981, wire_3825, wire_3822, wire_3803, wire_3802, wire_3771, wire_3770, wire_3739, wire_3738, wire_5979, wire_3827, wire_3821, wire_3820, wire_3814, wire_3789, wire_3788, wire_3757, wire_3756, wire_783, wire_5977, wire_3829, wire_3819, wire_3818, wire_3806, wire_3787, wire_3786, wire_3755, wire_3754, wire_783, wire_5975, wire_3831, wire_3817, wire_3816, wire_3798, wire_3785, wire_3784, wire_3753, wire_3752, wire_783, wire_5973, wire_3833, wire_3801, wire_3800, wire_3790, wire_3769, wire_3768, wire_3737, wire_3736, wire_783, wire_5971, wire_3835, wire_3797, wire_3796, wire_3782, wire_3765, wire_3764, wire_3733, wire_3732, wire_783, wire_5969, wire_3837, wire_3795, wire_3794, wire_3774, wire_3763, wire_3762, wire_3731, wire_3730, wire_481, wire_5967, wire_3839, wire_3813, wire_3812, wire_3781, wire_3780, wire_3766, wire_3749, wire_3748, wire_481, wire_5965, wire_3841, wire_3811, wire_3810, wire_3779, wire_3778, wire_3758, wire_3747, wire_3746, wire_481, wire_5963, wire_3843, wire_3809, wire_3808, wire_3777, wire_3776, wire_3750, wire_3745, wire_3744, wire_481, wire_5961, wire_3845, wire_3793, wire_3792, wire_3761, wire_3760, wire_3742, wire_3729, wire_3728, wire_481, wire_5963, wire_5955, wire_5954, wire_5947, wire_5946, wire_5939, wire_5938, wire_5926, wire_3847, wire_5671, wire_5670, wire_5623, wire_5622, wire_5707, wire_5620, wire_5719, wire_5668, wire_5965, wire_5918, wire_5915, wire_5914, wire_5883, wire_5882, wire_5851, wire_5850, wire_3845, wire_5683, wire_5682, wire_5617, wire_5616, wire_5695, wire_5694, wire_5615, wire_5614, wire_5967, wire_5959, wire_5958, wire_5951, wire_5950, wire_5943, wire_5942, wire_5910, wire_3843, wire_508, wire_5705, wire_5612, wire_5665, wire_5664, wire_5681, wire_5680, wire_5609, wire_5608, wire_5969, wire_5931, wire_5930, wire_5902, wire_5899, wire_5898, wire_5867, wire_5866, wire_3841, wire_508, wire_5607, wire_5606, wire_5663, wire_5662, wire_5717, wire_5660, wire_5703, wire_5604, wire_5971, wire_5929, wire_5928, wire_5897, wire_5896, wire_5894, wire_5865, wire_5864, wire_3839, wire_508, wire_5693, wire_5692, wire_5657, wire_5656, wire_5679, wire_5678, wire_5655, wire_5654, wire_5973, wire_5913, wire_5912, wire_5886, wire_5881, wire_5880, wire_5849, wire_5848, wire_3837, wire_508, wire_5715, wire_5652, wire_5601, wire_5600, wire_5691, wire_5690, wire_5649, wire_5648, wire_5975, wire_5953, wire_5952, wire_5945, wire_5944, wire_5937, wire_5936, wire_5878, wire_3835, wire_508, wire_5647, wire_5646, wire_5599, wire_5598, wire_5701, wire_5596, wire_5713, wire_5644, wire_5977, wire_5907, wire_5906, wire_5875, wire_5874, wire_5870, wire_5843, wire_5842, wire_3833, wire_480, wire_5677, wire_5676, wire_5593, wire_5592, wire_5689, wire_5688, wire_5591, wire_5590, wire_5979, wire_5957, wire_5956, wire_5949, wire_5948, wire_5941, wire_5940, wire_5862, wire_3831, wire_480, wire_5699, wire_5588, wire_5641, wire_5640, wire_5675, wire_5674, wire_5585, wire_5584, wire_5981, wire_5923, wire_5922, wire_5891, wire_5890, wire_5859, wire_5858, wire_5854, wire_3829, wire_480, wire_5583, wire_5582, wire_5639, wire_5638, wire_5711, wire_5636, wire_508, wire_5697, wire_5580, wire_508, wire_5983, wire_5921, wire_5920, wire_5889, wire_5888, wire_5857, wire_5856, wire_5846, wire_3827, wire_480, wire_5687, wire_5686, wire_508, wire_5633, wire_5632, wire_508, wire_5673, wire_5672, wire_508, wire_5631, wire_5630, wire_480, wire_5961, wire_5934, wire_5905, wire_5904, wire_5873, wire_5872, wire_5841, wire_5840, wire_3825, wire_480, wire_5709, wire_5628, wire_480, wire_5577, wire_5576, wire_480, wire_5685, wire_5684, wire_480, wire_5625, wire_5624, wire_480};
    // CHNAXY TOTAL: 460
    assign wire_3728 = lut_tile_2_1_chanxy_out[0];
    assign wire_3730 = lut_tile_2_1_chanxy_out[1];
    assign wire_3732 = lut_tile_2_1_chanxy_out[2];
    assign wire_3734 = lut_tile_2_1_chanxy_out[3];
    assign wire_3735 = lut_tile_2_1_chanxy_out[4];
    assign wire_3736 = lut_tile_2_1_chanxy_out[5];
    assign wire_3738 = lut_tile_2_1_chanxy_out[6];
    assign wire_3740 = lut_tile_2_1_chanxy_out[7];
    assign wire_3742 = lut_tile_2_1_chanxy_out[8];
    assign wire_3743 = lut_tile_2_1_chanxy_out[9];
    assign wire_3744 = lut_tile_2_1_chanxy_out[10];
    assign wire_3746 = lut_tile_2_1_chanxy_out[11];
    assign wire_3748 = lut_tile_2_1_chanxy_out[12];
    assign wire_3750 = lut_tile_2_1_chanxy_out[13];
    assign wire_3751 = lut_tile_2_1_chanxy_out[14];
    assign wire_3752 = lut_tile_2_1_chanxy_out[15];
    assign wire_3754 = lut_tile_2_1_chanxy_out[16];
    assign wire_3756 = lut_tile_2_1_chanxy_out[17];
    assign wire_3758 = lut_tile_2_1_chanxy_out[18];
    assign wire_3759 = lut_tile_2_1_chanxy_out[19];
    assign wire_3760 = lut_tile_2_1_chanxy_out[20];
    assign wire_3762 = lut_tile_2_1_chanxy_out[21];
    assign wire_3764 = lut_tile_2_1_chanxy_out[22];
    assign wire_3766 = lut_tile_2_1_chanxy_out[23];
    assign wire_3767 = lut_tile_2_1_chanxy_out[24];
    assign wire_3768 = lut_tile_2_1_chanxy_out[25];
    assign wire_3770 = lut_tile_2_1_chanxy_out[26];
    assign wire_3772 = lut_tile_2_1_chanxy_out[27];
    assign wire_3774 = lut_tile_2_1_chanxy_out[28];
    assign wire_3775 = lut_tile_2_1_chanxy_out[29];
    assign wire_3776 = lut_tile_2_1_chanxy_out[30];
    assign wire_3778 = lut_tile_2_1_chanxy_out[31];
    assign wire_3780 = lut_tile_2_1_chanxy_out[32];
    assign wire_3782 = lut_tile_2_1_chanxy_out[33];
    assign wire_3783 = lut_tile_2_1_chanxy_out[34];
    assign wire_3784 = lut_tile_2_1_chanxy_out[35];
    assign wire_3786 = lut_tile_2_1_chanxy_out[36];
    assign wire_3788 = lut_tile_2_1_chanxy_out[37];
    assign wire_3790 = lut_tile_2_1_chanxy_out[38];
    assign wire_3791 = lut_tile_2_1_chanxy_out[39];
    assign wire_3792 = lut_tile_2_1_chanxy_out[40];
    assign wire_3794 = lut_tile_2_1_chanxy_out[41];
    assign wire_3796 = lut_tile_2_1_chanxy_out[42];
    assign wire_3798 = lut_tile_2_1_chanxy_out[43];
    assign wire_3799 = lut_tile_2_1_chanxy_out[44];
    assign wire_3800 = lut_tile_2_1_chanxy_out[45];
    assign wire_3802 = lut_tile_2_1_chanxy_out[46];
    assign wire_3804 = lut_tile_2_1_chanxy_out[47];
    assign wire_3806 = lut_tile_2_1_chanxy_out[48];
    assign wire_3807 = lut_tile_2_1_chanxy_out[49];
    assign wire_3808 = lut_tile_2_1_chanxy_out[50];
    assign wire_3810 = lut_tile_2_1_chanxy_out[51];
    assign wire_3812 = lut_tile_2_1_chanxy_out[52];
    assign wire_3814 = lut_tile_2_1_chanxy_out[53];
    assign wire_3815 = lut_tile_2_1_chanxy_out[54];
    assign wire_3816 = lut_tile_2_1_chanxy_out[55];
    assign wire_3818 = lut_tile_2_1_chanxy_out[56];
    assign wire_3820 = lut_tile_2_1_chanxy_out[57];
    assign wire_3822 = lut_tile_2_1_chanxy_out[58];
    assign wire_3823 = lut_tile_2_1_chanxy_out[59];
    assign wire_5847 = lut_tile_2_1_chanxy_out[60];
    assign wire_5855 = lut_tile_2_1_chanxy_out[61];
    assign wire_5863 = lut_tile_2_1_chanxy_out[62];
    assign wire_5871 = lut_tile_2_1_chanxy_out[63];
    assign wire_5879 = lut_tile_2_1_chanxy_out[64];
    assign wire_5887 = lut_tile_2_1_chanxy_out[65];
    assign wire_5895 = lut_tile_2_1_chanxy_out[66];
    assign wire_5903 = lut_tile_2_1_chanxy_out[67];
    assign wire_5911 = lut_tile_2_1_chanxy_out[68];
    assign wire_5919 = lut_tile_2_1_chanxy_out[69];
    assign wire_5927 = lut_tile_2_1_chanxy_out[70];
    assign wire_5935 = lut_tile_2_1_chanxy_out[71];
    assign wire_5936 = lut_tile_2_1_chanxy_out[72];
    assign wire_5938 = lut_tile_2_1_chanxy_out[73];
    assign wire_5940 = lut_tile_2_1_chanxy_out[74];
    assign wire_5942 = lut_tile_2_1_chanxy_out[75];
    assign wire_5944 = lut_tile_2_1_chanxy_out[76];
    assign wire_5946 = lut_tile_2_1_chanxy_out[77];
    assign wire_5948 = lut_tile_2_1_chanxy_out[78];
    assign wire_5950 = lut_tile_2_1_chanxy_out[79];
    assign wire_5952 = lut_tile_2_1_chanxy_out[80];
    assign wire_5954 = lut_tile_2_1_chanxy_out[81];
    assign wire_5956 = lut_tile_2_1_chanxy_out[82];
    assign wire_5958 = lut_tile_2_1_chanxy_out[83];
   // CHANXY OUT
    assign lut_tile_2_2_chanxy_in = {wire_6198, wire_3585, wire_3583, wire_3582, wire_3575, wire_3574, wire_3567, wire_3566, wire_3478, wire_6190, wire_3607, wire_3579, wire_3578, wire_3571, wire_3570, wire_3563, wire_3562, wire_3486, wire_6182, wire_3605, wire_3539, wire_3538, wire_3507, wire_3506, wire_3494, wire_3475, wire_3474, wire_1087, wire_6174, wire_3603, wire_3537, wire_3536, wire_3505, wire_3504, wire_3502, wire_3473, wire_3472, wire_1087, wire_6166, wire_3601, wire_3555, wire_3554, wire_3523, wire_3522, wire_3510, wire_3491, wire_3490, wire_1087, wire_6158, wire_3599, wire_3553, wire_3552, wire_3521, wire_3520, wire_3518, wire_3489, wire_3488, wire_1087, wire_6150, wire_3597, wire_3581, wire_3580, wire_3573, wire_3572, wire_3565, wire_3564, wire_3526, wire_1087, wire_6142, wire_3595, wire_3577, wire_3576, wire_3569, wire_3568, wire_3561, wire_3560, wire_3534, wire_785, wire_6134, wire_3593, wire_3542, wire_3531, wire_3530, wire_3499, wire_3498, wire_3467, wire_3466, wire_785, wire_6126, wire_3591, wire_3550, wire_3529, wire_3528, wire_3497, wire_3496, wire_3465, wire_3464, wire_785, wire_6118, wire_3589, wire_3558, wire_3547, wire_3546, wire_3515, wire_3514, wire_3483, wire_3482, wire_785, wire_6110, wire_3587, wire_3545, wire_3544, wire_3513, wire_3512, wire_3481, wire_3480, wire_3470, wire_785, wire_6247, wire_3871, wire_3843, wire_3842, wire_3835, wire_3834, wire_3827, wire_3826, wire_3728, wire_6245, wire_3849, wire_3816, wire_3805, wire_3804, wire_3773, wire_3772, wire_3741, wire_3740, wire_6243, wire_3851, wire_3847, wire_3846, wire_3839, wire_3838, wire_3831, wire_3830, wire_3808, wire_1087, wire_6241, wire_3853, wire_3821, wire_3820, wire_3800, wire_3789, wire_3788, wire_3757, wire_3756, wire_1087, wire_6239, wire_3855, wire_3819, wire_3818, wire_3792, wire_3787, wire_3786, wire_3755, wire_3754, wire_1087, wire_6237, wire_3857, wire_3803, wire_3802, wire_3784, wire_3771, wire_3770, wire_3739, wire_3738, wire_1087, wire_6235, wire_3859, wire_3841, wire_3840, wire_3833, wire_3832, wire_3825, wire_3824, wire_3776, wire_1087, wire_6233, wire_3861, wire_3797, wire_3796, wire_3768, wire_3765, wire_3764, wire_3733, wire_3732, wire_785, wire_6231, wire_3863, wire_3845, wire_3844, wire_3837, wire_3836, wire_3829, wire_3828, wire_3760, wire_785, wire_6229, wire_3865, wire_3813, wire_3812, wire_3781, wire_3780, wire_3752, wire_3749, wire_3748, wire_785, wire_6227, wire_3867, wire_3811, wire_3810, wire_3779, wire_3778, wire_3747, wire_3746, wire_3744, wire_785, wire_6225, wire_3869, wire_3795, wire_3794, wire_3763, wire_3762, wire_3736, wire_3731, wire_3730, wire_785, wire_5981, wire_5959, wire_5958, wire_5951, wire_5950, wire_5943, wire_5942, wire_5934, wire_3822, wire_5979, wire_5955, wire_5954, wire_5947, wire_5946, wire_5939, wire_5938, wire_5846, wire_3814, wire_5977, wire_5915, wire_5914, wire_5883, wire_5882, wire_5854, wire_5851, wire_5850, wire_3806, wire_812, wire_5975, wire_5913, wire_5912, wire_5881, wire_5880, wire_5862, wire_5849, wire_5848, wire_3798, wire_812, wire_5973, wire_5931, wire_5930, wire_5899, wire_5898, wire_5870, wire_5867, wire_5866, wire_3790, wire_812, wire_5971, wire_5929, wire_5928, wire_5897, wire_5896, wire_5878, wire_5865, wire_5864, wire_3782, wire_812, wire_5969, wire_5957, wire_5956, wire_5949, wire_5948, wire_5941, wire_5940, wire_5886, wire_3774, wire_812, wire_5967, wire_5953, wire_5952, wire_5945, wire_5944, wire_5937, wire_5936, wire_5894, wire_3766, wire_784, wire_5965, wire_5907, wire_5906, wire_5902, wire_5875, wire_5874, wire_5843, wire_5842, wire_3758, wire_784, wire_5963, wire_5910, wire_5905, wire_5904, wire_5873, wire_5872, wire_5841, wire_5840, wire_3750, wire_784, wire_5961, wire_5923, wire_5922, wire_5918, wire_5891, wire_5890, wire_5859, wire_5858, wire_3742, wire_784, wire_5983, wire_5926, wire_5921, wire_5920, wire_5889, wire_5888, wire_5857, wire_5856, wire_3734, wire_784, wire_6227, wire_6219, wire_6218, wire_6211, wire_6210, wire_6203, wire_6202, wire_6184, wire_3871, wire_6229, wire_6181, wire_6180, wire_6176, wire_6149, wire_6148, wire_6117, wire_6116, wire_3869, wire_6231, wire_6223, wire_6222, wire_6215, wire_6214, wire_6207, wire_6206, wire_6168, wire_3867, wire_812, wire_6233, wire_6197, wire_6196, wire_6165, wire_6164, wire_6160, wire_6133, wire_6132, wire_3865, wire_812, wire_6235, wire_6195, wire_6194, wire_6163, wire_6162, wire_6152, wire_6131, wire_6130, wire_3863, wire_812, wire_6237, wire_6179, wire_6178, wire_6147, wire_6146, wire_6144, wire_6115, wire_6114, wire_3861, wire_812, wire_6239, wire_6217, wire_6216, wire_6209, wire_6208, wire_6201, wire_6200, wire_6136, wire_3859, wire_812, wire_6241, wire_6173, wire_6172, wire_6141, wire_6140, wire_6128, wire_6109, wire_6108, wire_3857, wire_784, wire_6243, wire_6221, wire_6220, wire_6213, wire_6212, wire_6205, wire_6204, wire_6120, wire_3855, wire_784, wire_6245, wire_6189, wire_6188, wire_6157, wire_6156, wire_6125, wire_6124, wire_6112, wire_3853, wire_784, wire_6247, wire_6187, wire_6186, wire_6155, wire_6154, wire_6123, wire_6122, wire_6104, wire_3851, wire_784, wire_6225, wire_6192, wire_6171, wire_6170, wire_6139, wire_6138, wire_6107, wire_6106, wire_3849, wire_784};
    // CHNAXY TOTAL: 472
    assign wire_3729 = lut_tile_2_2_chanxy_out[0];
    assign wire_3737 = lut_tile_2_2_chanxy_out[1];
    assign wire_3745 = lut_tile_2_2_chanxy_out[2];
    assign wire_3753 = lut_tile_2_2_chanxy_out[3];
    assign wire_3761 = lut_tile_2_2_chanxy_out[4];
    assign wire_3769 = lut_tile_2_2_chanxy_out[5];
    assign wire_3777 = lut_tile_2_2_chanxy_out[6];
    assign wire_3785 = lut_tile_2_2_chanxy_out[7];
    assign wire_3793 = lut_tile_2_2_chanxy_out[8];
    assign wire_3801 = lut_tile_2_2_chanxy_out[9];
    assign wire_3809 = lut_tile_2_2_chanxy_out[10];
    assign wire_3817 = lut_tile_2_2_chanxy_out[11];
    assign wire_3824 = lut_tile_2_2_chanxy_out[12];
    assign wire_3826 = lut_tile_2_2_chanxy_out[13];
    assign wire_3828 = lut_tile_2_2_chanxy_out[14];
    assign wire_3830 = lut_tile_2_2_chanxy_out[15];
    assign wire_3832 = lut_tile_2_2_chanxy_out[16];
    assign wire_3834 = lut_tile_2_2_chanxy_out[17];
    assign wire_3836 = lut_tile_2_2_chanxy_out[18];
    assign wire_3838 = lut_tile_2_2_chanxy_out[19];
    assign wire_3840 = lut_tile_2_2_chanxy_out[20];
    assign wire_3842 = lut_tile_2_2_chanxy_out[21];
    assign wire_3844 = lut_tile_2_2_chanxy_out[22];
    assign wire_3846 = lut_tile_2_2_chanxy_out[23];
    assign wire_6105 = lut_tile_2_2_chanxy_out[24];
    assign wire_6113 = lut_tile_2_2_chanxy_out[25];
    assign wire_6121 = lut_tile_2_2_chanxy_out[26];
    assign wire_6129 = lut_tile_2_2_chanxy_out[27];
    assign wire_6137 = lut_tile_2_2_chanxy_out[28];
    assign wire_6145 = lut_tile_2_2_chanxy_out[29];
    assign wire_6153 = lut_tile_2_2_chanxy_out[30];
    assign wire_6161 = lut_tile_2_2_chanxy_out[31];
    assign wire_6169 = lut_tile_2_2_chanxy_out[32];
    assign wire_6177 = lut_tile_2_2_chanxy_out[33];
    assign wire_6185 = lut_tile_2_2_chanxy_out[34];
    assign wire_6193 = lut_tile_2_2_chanxy_out[35];
    assign wire_6200 = lut_tile_2_2_chanxy_out[36];
    assign wire_6202 = lut_tile_2_2_chanxy_out[37];
    assign wire_6204 = lut_tile_2_2_chanxy_out[38];
    assign wire_6206 = lut_tile_2_2_chanxy_out[39];
    assign wire_6208 = lut_tile_2_2_chanxy_out[40];
    assign wire_6210 = lut_tile_2_2_chanxy_out[41];
    assign wire_6212 = lut_tile_2_2_chanxy_out[42];
    assign wire_6214 = lut_tile_2_2_chanxy_out[43];
    assign wire_6216 = lut_tile_2_2_chanxy_out[44];
    assign wire_6218 = lut_tile_2_2_chanxy_out[45];
    assign wire_6220 = lut_tile_2_2_chanxy_out[46];
    assign wire_6222 = lut_tile_2_2_chanxy_out[47];
   // CHANXY OUT
    assign lut_tile_2_3_chanxy_in = {wire_6456, wire_3609, wire_3607, wire_3606, wire_3599, wire_3598, wire_3591, wire_3590, wire_3472, wire_6448, wire_3631, wire_3603, wire_3602, wire_3595, wire_3594, wire_3587, wire_3586, wire_3480, wire_6440, wire_3629, wire_3579, wire_3578, wire_3571, wire_3570, wire_3563, wire_3562, wire_3488, wire_1391, wire_6432, wire_3627, wire_3539, wire_3538, wire_3507, wire_3506, wire_3496, wire_3475, wire_3474, wire_1391, wire_6424, wire_3625, wire_3583, wire_3582, wire_3575, wire_3574, wire_3567, wire_3566, wire_3504, wire_1391, wire_6416, wire_3623, wire_3555, wire_3554, wire_3523, wire_3522, wire_3512, wire_3491, wire_3490, wire_1391, wire_6408, wire_3621, wire_3605, wire_3604, wire_3597, wire_3596, wire_3589, wire_3588, wire_3520, wire_1391, wire_6400, wire_3619, wire_3601, wire_3600, wire_3593, wire_3592, wire_3585, wire_3584, wire_3528, wire_1089, wire_6392, wire_3617, wire_3577, wire_3576, wire_3569, wire_3568, wire_3561, wire_3560, wire_3536, wire_1089, wire_6384, wire_3615, wire_3544, wire_3531, wire_3530, wire_3499, wire_3498, wire_3467, wire_3466, wire_1089, wire_6376, wire_3613, wire_3581, wire_3580, wire_3573, wire_3572, wire_3565, wire_3564, wire_3552, wire_1089, wire_6368, wire_3611, wire_3547, wire_3546, wire_3515, wire_3514, wire_3483, wire_3482, wire_3464, wire_1089, wire_6511, wire_3895, wire_3847, wire_3846, wire_3839, wire_3838, wire_3831, wire_3830, wire_3730, wire_6509, wire_3873, wire_3843, wire_3842, wire_3835, wire_3834, wire_3827, wire_3826, wire_3818, wire_6507, wire_3875, wire_3810, wire_3805, wire_3804, wire_3773, wire_3772, wire_3741, wire_3740, wire_1391, wire_6505, wire_3877, wire_3867, wire_3866, wire_3859, wire_3858, wire_3851, wire_3850, wire_3802, wire_1391, wire_6503, wire_3879, wire_3821, wire_3820, wire_3794, wire_3789, wire_3788, wire_3757, wire_3756, wire_1391, wire_6501, wire_3881, wire_3871, wire_3870, wire_3863, wire_3862, wire_3855, wire_3854, wire_3786, wire_1391, wire_6499, wire_3883, wire_3845, wire_3844, wire_3837, wire_3836, wire_3829, wire_3828, wire_3778, wire_1391, wire_6497, wire_3885, wire_3841, wire_3840, wire_3833, wire_3832, wire_3825, wire_3824, wire_3770, wire_1089, wire_6495, wire_3887, wire_3797, wire_3796, wire_3765, wire_3764, wire_3762, wire_3733, wire_3732, wire_1089, wire_6493, wire_3889, wire_3865, wire_3864, wire_3857, wire_3856, wire_3849, wire_3848, wire_3754, wire_1089, wire_6491, wire_3891, wire_3813, wire_3812, wire_3781, wire_3780, wire_3749, wire_3748, wire_3746, wire_1089, wire_6489, wire_3893, wire_3869, wire_3868, wire_3861, wire_3860, wire_3853, wire_3852, wire_3738, wire_1089, wire_6245, wire_6223, wire_6222, wire_6215, wire_6214, wire_6207, wire_6206, wire_6192, wire_3816, wire_6243, wire_6219, wire_6218, wire_6211, wire_6210, wire_6203, wire_6202, wire_6104, wire_3808, wire_6241, wire_6181, wire_6180, wire_6149, wire_6148, wire_6117, wire_6116, wire_6112, wire_3800, wire_1116, wire_6239, wire_6179, wire_6178, wire_6147, wire_6146, wire_6120, wire_6115, wire_6114, wire_3792, wire_1116, wire_6237, wire_6197, wire_6196, wire_6165, wire_6164, wire_6133, wire_6132, wire_6128, wire_3784, wire_1116, wire_6235, wire_6195, wire_6194, wire_6163, wire_6162, wire_6136, wire_6131, wire_6130, wire_3776, wire_1116, wire_6233, wire_6221, wire_6220, wire_6213, wire_6212, wire_6205, wire_6204, wire_6144, wire_3768, wire_1116, wire_6231, wire_6217, wire_6216, wire_6209, wire_6208, wire_6201, wire_6200, wire_6152, wire_3760, wire_1088, wire_6229, wire_6173, wire_6172, wire_6160, wire_6141, wire_6140, wire_6109, wire_6108, wire_3752, wire_1088, wire_6227, wire_6171, wire_6170, wire_6168, wire_6139, wire_6138, wire_6107, wire_6106, wire_3744, wire_1088, wire_6225, wire_6189, wire_6188, wire_6176, wire_6157, wire_6156, wire_6125, wire_6124, wire_3736, wire_1088, wire_6247, wire_6187, wire_6186, wire_6184, wire_6155, wire_6154, wire_6123, wire_6122, wire_3728, wire_1088, wire_6491, wire_6463, wire_6462, wire_6450, wire_6431, wire_6430, wire_6399, wire_6398, wire_3895, wire_6493, wire_6447, wire_6446, wire_6442, wire_6415, wire_6414, wire_6383, wire_6382, wire_3893, wire_6495, wire_6445, wire_6444, wire_6434, wire_6413, wire_6412, wire_6381, wire_6380, wire_3891, wire_1116, wire_6497, wire_6483, wire_6482, wire_6475, wire_6474, wire_6467, wire_6466, wire_6426, wire_3889, wire_1116, wire_6499, wire_6461, wire_6460, wire_6429, wire_6428, wire_6418, wire_6397, wire_6396, wire_3887, wire_1116, wire_6501, wire_6487, wire_6486, wire_6479, wire_6478, wire_6471, wire_6470, wire_6410, wire_3885, wire_1116, wire_6503, wire_6455, wire_6454, wire_6423, wire_6422, wire_6402, wire_6391, wire_6390, wire_3883, wire_1116, wire_6505, wire_6439, wire_6438, wire_6407, wire_6406, wire_6394, wire_6375, wire_6374, wire_3881, wire_1088, wire_6507, wire_6437, wire_6436, wire_6405, wire_6404, wire_6386, wire_6373, wire_6372, wire_3879, wire_1088, wire_6509, wire_6481, wire_6480, wire_6473, wire_6472, wire_6465, wire_6464, wire_6378, wire_3877, wire_1088, wire_6511, wire_6453, wire_6452, wire_6421, wire_6420, wire_6389, wire_6388, wire_6370, wire_3875, wire_1088, wire_6489, wire_6485, wire_6484, wire_6477, wire_6476, wire_6469, wire_6468, wire_6458, wire_3873, wire_1088};
    // CHNAXY TOTAL: 472
    assign wire_3731 = lut_tile_2_3_chanxy_out[0];
    assign wire_3739 = lut_tile_2_3_chanxy_out[1];
    assign wire_3747 = lut_tile_2_3_chanxy_out[2];
    assign wire_3755 = lut_tile_2_3_chanxy_out[3];
    assign wire_3763 = lut_tile_2_3_chanxy_out[4];
    assign wire_3771 = lut_tile_2_3_chanxy_out[5];
    assign wire_3779 = lut_tile_2_3_chanxy_out[6];
    assign wire_3787 = lut_tile_2_3_chanxy_out[7];
    assign wire_3795 = lut_tile_2_3_chanxy_out[8];
    assign wire_3803 = lut_tile_2_3_chanxy_out[9];
    assign wire_3811 = lut_tile_2_3_chanxy_out[10];
    assign wire_3819 = lut_tile_2_3_chanxy_out[11];
    assign wire_3848 = lut_tile_2_3_chanxy_out[12];
    assign wire_3850 = lut_tile_2_3_chanxy_out[13];
    assign wire_3852 = lut_tile_2_3_chanxy_out[14];
    assign wire_3854 = lut_tile_2_3_chanxy_out[15];
    assign wire_3856 = lut_tile_2_3_chanxy_out[16];
    assign wire_3858 = lut_tile_2_3_chanxy_out[17];
    assign wire_3860 = lut_tile_2_3_chanxy_out[18];
    assign wire_3862 = lut_tile_2_3_chanxy_out[19];
    assign wire_3864 = lut_tile_2_3_chanxy_out[20];
    assign wire_3866 = lut_tile_2_3_chanxy_out[21];
    assign wire_3868 = lut_tile_2_3_chanxy_out[22];
    assign wire_3870 = lut_tile_2_3_chanxy_out[23];
    assign wire_6371 = lut_tile_2_3_chanxy_out[24];
    assign wire_6379 = lut_tile_2_3_chanxy_out[25];
    assign wire_6387 = lut_tile_2_3_chanxy_out[26];
    assign wire_6395 = lut_tile_2_3_chanxy_out[27];
    assign wire_6403 = lut_tile_2_3_chanxy_out[28];
    assign wire_6411 = lut_tile_2_3_chanxy_out[29];
    assign wire_6419 = lut_tile_2_3_chanxy_out[30];
    assign wire_6427 = lut_tile_2_3_chanxy_out[31];
    assign wire_6435 = lut_tile_2_3_chanxy_out[32];
    assign wire_6443 = lut_tile_2_3_chanxy_out[33];
    assign wire_6451 = lut_tile_2_3_chanxy_out[34];
    assign wire_6459 = lut_tile_2_3_chanxy_out[35];
    assign wire_6464 = lut_tile_2_3_chanxy_out[36];
    assign wire_6466 = lut_tile_2_3_chanxy_out[37];
    assign wire_6468 = lut_tile_2_3_chanxy_out[38];
    assign wire_6470 = lut_tile_2_3_chanxy_out[39];
    assign wire_6472 = lut_tile_2_3_chanxy_out[40];
    assign wire_6474 = lut_tile_2_3_chanxy_out[41];
    assign wire_6476 = lut_tile_2_3_chanxy_out[42];
    assign wire_6478 = lut_tile_2_3_chanxy_out[43];
    assign wire_6480 = lut_tile_2_3_chanxy_out[44];
    assign wire_6482 = lut_tile_2_3_chanxy_out[45];
    assign wire_6484 = lut_tile_2_3_chanxy_out[46];
    assign wire_6486 = lut_tile_2_3_chanxy_out[47];
   // CHANXY OUT
    assign lut_tile_2_4_chanxy_in = {wire_6722, wire_3633, wire_3603, wire_3602, wire_3595, wire_3594, wire_3587, wire_3586, wire_3474, wire_6714, wire_3655, wire_3607, wire_3606, wire_3599, wire_3598, wire_3591, wire_3590, wire_3482, wire_6706, wire_3653, wire_3579, wire_3578, wire_3571, wire_3570, wire_3563, wire_3562, wire_3490, wire_1695, wire_6698, wire_3651, wire_3583, wire_3582, wire_3575, wire_3574, wire_3567, wire_3566, wire_3498, wire_1695, wire_6690, wire_3649, wire_3627, wire_3626, wire_3619, wire_3618, wire_3611, wire_3610, wire_3506, wire_1695, wire_6682, wire_3647, wire_3631, wire_3630, wire_3623, wire_3622, wire_3615, wire_3614, wire_3514, wire_1695, wire_6674, wire_3645, wire_3601, wire_3600, wire_3593, wire_3592, wire_3585, wire_3584, wire_3522, wire_1695, wire_6666, wire_3643, wire_3605, wire_3604, wire_3597, wire_3596, wire_3589, wire_3588, wire_3530, wire_1393, wire_6658, wire_3641, wire_3577, wire_3576, wire_3569, wire_3568, wire_3561, wire_3560, wire_3538, wire_1393, wire_6650, wire_3639, wire_3581, wire_3580, wire_3573, wire_3572, wire_3565, wire_3564, wire_3546, wire_1393, wire_6642, wire_3637, wire_3625, wire_3624, wire_3617, wire_3616, wire_3609, wire_3608, wire_3554, wire_1393, wire_6634, wire_3635, wire_3629, wire_3628, wire_3621, wire_3620, wire_3613, wire_3612, wire_3466, wire_1393, wire_6775, wire_3919, wire_3843, wire_3842, wire_3835, wire_3834, wire_3827, wire_3826, wire_3732, wire_6773, wire_3897, wire_3847, wire_3846, wire_3839, wire_3838, wire_3831, wire_3830, wire_3820, wire_6771, wire_3899, wire_3891, wire_3890, wire_3883, wire_3882, wire_3875, wire_3874, wire_3812, wire_1695, wire_6769, wire_3901, wire_3895, wire_3894, wire_3887, wire_3886, wire_3879, wire_3878, wire_3804, wire_1695, wire_6767, wire_3903, wire_3867, wire_3866, wire_3859, wire_3858, wire_3851, wire_3850, wire_3796, wire_1695, wire_6765, wire_3905, wire_3871, wire_3870, wire_3863, wire_3862, wire_3855, wire_3854, wire_3788, wire_1695, wire_6763, wire_3907, wire_3841, wire_3840, wire_3833, wire_3832, wire_3825, wire_3824, wire_3780, wire_1695, wire_6761, wire_3909, wire_3845, wire_3844, wire_3837, wire_3836, wire_3829, wire_3828, wire_3772, wire_1393, wire_6759, wire_3911, wire_3889, wire_3888, wire_3881, wire_3880, wire_3873, wire_3872, wire_3764, wire_1393, wire_6757, wire_3913, wire_3893, wire_3892, wire_3885, wire_3884, wire_3877, wire_3876, wire_3756, wire_1393, wire_6755, wire_3915, wire_3865, wire_3864, wire_3857, wire_3856, wire_3849, wire_3848, wire_3748, wire_1393, wire_6753, wire_3917, wire_3869, wire_3868, wire_3861, wire_3860, wire_3853, wire_3852, wire_3740, wire_1393, wire_6509, wire_6458, wire_6447, wire_6446, wire_6415, wire_6414, wire_6383, wire_6382, wire_3818, wire_6507, wire_6463, wire_6462, wire_6431, wire_6430, wire_6399, wire_6398, wire_6370, wire_3810, wire_6505, wire_6445, wire_6444, wire_6413, wire_6412, wire_6381, wire_6380, wire_6378, wire_3802, wire_1420, wire_6503, wire_6461, wire_6460, wire_6429, wire_6428, wire_6397, wire_6396, wire_6386, wire_3794, wire_1420, wire_6501, wire_6483, wire_6482, wire_6475, wire_6474, wire_6467, wire_6466, wire_6394, wire_3786, wire_1420, wire_6499, wire_6487, wire_6486, wire_6479, wire_6478, wire_6471, wire_6470, wire_6402, wire_3778, wire_1420, wire_6497, wire_6439, wire_6438, wire_6410, wire_6407, wire_6406, wire_6375, wire_6374, wire_3770, wire_1420, wire_6495, wire_6455, wire_6454, wire_6423, wire_6422, wire_6418, wire_6391, wire_6390, wire_3762, wire_1392, wire_6493, wire_6437, wire_6436, wire_6426, wire_6405, wire_6404, wire_6373, wire_6372, wire_3754, wire_1392, wire_6491, wire_6453, wire_6452, wire_6434, wire_6421, wire_6420, wire_6389, wire_6388, wire_3746, wire_1392, wire_6489, wire_6481, wire_6480, wire_6473, wire_6472, wire_6465, wire_6464, wire_6442, wire_3738, wire_1392, wire_6511, wire_6485, wire_6484, wire_6477, wire_6476, wire_6469, wire_6468, wire_6450, wire_3730, wire_1392, wire_6755, wire_6716, wire_6711, wire_6710, wire_6679, wire_6678, wire_6647, wire_6646, wire_3919, wire_6757, wire_6727, wire_6726, wire_6708, wire_6695, wire_6694, wire_6663, wire_6662, wire_3917, wire_6759, wire_6747, wire_6746, wire_6739, wire_6738, wire_6731, wire_6730, wire_6700, wire_3915, wire_1420, wire_6761, wire_6751, wire_6750, wire_6743, wire_6742, wire_6735, wire_6734, wire_6692, wire_3913, wire_1420, wire_6763, wire_6705, wire_6704, wire_6684, wire_6673, wire_6672, wire_6641, wire_6640, wire_3911, wire_1420, wire_6765, wire_6721, wire_6720, wire_6689, wire_6688, wire_6676, wire_6657, wire_6656, wire_3909, wire_1420, wire_6767, wire_6703, wire_6702, wire_6671, wire_6670, wire_6668, wire_6639, wire_6638, wire_3907, wire_1420, wire_6769, wire_6719, wire_6718, wire_6687, wire_6686, wire_6660, wire_6655, wire_6654, wire_3905, wire_1392, wire_6771, wire_6745, wire_6744, wire_6737, wire_6736, wire_6729, wire_6728, wire_6652, wire_3903, wire_1392, wire_6773, wire_6749, wire_6748, wire_6741, wire_6740, wire_6733, wire_6732, wire_6644, wire_3901, wire_1392, wire_6775, wire_6697, wire_6696, wire_6665, wire_6664, wire_6636, wire_6633, wire_6632, wire_3899, wire_1392, wire_6753, wire_6724, wire_6713, wire_6712, wire_6681, wire_6680, wire_6649, wire_6648, wire_3897, wire_1392};
    // CHNAXY TOTAL: 472
    assign wire_3733 = lut_tile_2_4_chanxy_out[0];
    assign wire_3741 = lut_tile_2_4_chanxy_out[1];
    assign wire_3749 = lut_tile_2_4_chanxy_out[2];
    assign wire_3757 = lut_tile_2_4_chanxy_out[3];
    assign wire_3765 = lut_tile_2_4_chanxy_out[4];
    assign wire_3773 = lut_tile_2_4_chanxy_out[5];
    assign wire_3781 = lut_tile_2_4_chanxy_out[6];
    assign wire_3789 = lut_tile_2_4_chanxy_out[7];
    assign wire_3797 = lut_tile_2_4_chanxy_out[8];
    assign wire_3805 = lut_tile_2_4_chanxy_out[9];
    assign wire_3813 = lut_tile_2_4_chanxy_out[10];
    assign wire_3821 = lut_tile_2_4_chanxy_out[11];
    assign wire_3872 = lut_tile_2_4_chanxy_out[12];
    assign wire_3874 = lut_tile_2_4_chanxy_out[13];
    assign wire_3876 = lut_tile_2_4_chanxy_out[14];
    assign wire_3878 = lut_tile_2_4_chanxy_out[15];
    assign wire_3880 = lut_tile_2_4_chanxy_out[16];
    assign wire_3882 = lut_tile_2_4_chanxy_out[17];
    assign wire_3884 = lut_tile_2_4_chanxy_out[18];
    assign wire_3886 = lut_tile_2_4_chanxy_out[19];
    assign wire_3888 = lut_tile_2_4_chanxy_out[20];
    assign wire_3890 = lut_tile_2_4_chanxy_out[21];
    assign wire_3892 = lut_tile_2_4_chanxy_out[22];
    assign wire_3894 = lut_tile_2_4_chanxy_out[23];
    assign wire_6637 = lut_tile_2_4_chanxy_out[24];
    assign wire_6645 = lut_tile_2_4_chanxy_out[25];
    assign wire_6653 = lut_tile_2_4_chanxy_out[26];
    assign wire_6661 = lut_tile_2_4_chanxy_out[27];
    assign wire_6669 = lut_tile_2_4_chanxy_out[28];
    assign wire_6677 = lut_tile_2_4_chanxy_out[29];
    assign wire_6685 = lut_tile_2_4_chanxy_out[30];
    assign wire_6693 = lut_tile_2_4_chanxy_out[31];
    assign wire_6701 = lut_tile_2_4_chanxy_out[32];
    assign wire_6709 = lut_tile_2_4_chanxy_out[33];
    assign wire_6717 = lut_tile_2_4_chanxy_out[34];
    assign wire_6725 = lut_tile_2_4_chanxy_out[35];
    assign wire_6728 = lut_tile_2_4_chanxy_out[36];
    assign wire_6730 = lut_tile_2_4_chanxy_out[37];
    assign wire_6732 = lut_tile_2_4_chanxy_out[38];
    assign wire_6734 = lut_tile_2_4_chanxy_out[39];
    assign wire_6736 = lut_tile_2_4_chanxy_out[40];
    assign wire_6738 = lut_tile_2_4_chanxy_out[41];
    assign wire_6740 = lut_tile_2_4_chanxy_out[42];
    assign wire_6742 = lut_tile_2_4_chanxy_out[43];
    assign wire_6744 = lut_tile_2_4_chanxy_out[44];
    assign wire_6746 = lut_tile_2_4_chanxy_out[45];
    assign wire_6748 = lut_tile_2_4_chanxy_out[46];
    assign wire_6750 = lut_tile_2_4_chanxy_out[47];
   // CHANXY OUT
    assign lut_tile_2_5_chanxy_in = {wire_6988, wire_3657, wire_3603, wire_3602, wire_3595, wire_3594, wire_3587, wire_3586, wire_3562, wire_6980, wire_3679, wire_3651, wire_3650, wire_3643, wire_3642, wire_3635, wire_3634, wire_3564, wire_6972, wire_3677, wire_3607, wire_3606, wire_3599, wire_3598, wire_3591, wire_3590, wire_3566, wire_1999, wire_6964, wire_3675, wire_3655, wire_3654, wire_3647, wire_3646, wire_3639, wire_3638, wire_3568, wire_1999, wire_6956, wire_3673, wire_3631, wire_3630, wire_3623, wire_3622, wire_3615, wire_3614, wire_3570, wire_1999, wire_6948, wire_3671, wire_3627, wire_3626, wire_3619, wire_3618, wire_3611, wire_3610, wire_3572, wire_1999, wire_6940, wire_3669, wire_3601, wire_3600, wire_3593, wire_3592, wire_3585, wire_3584, wire_3574, wire_1999, wire_6932, wire_3667, wire_3649, wire_3648, wire_3641, wire_3640, wire_3633, wire_3632, wire_3576, wire_1697, wire_6924, wire_3665, wire_3605, wire_3604, wire_3597, wire_3596, wire_3589, wire_3588, wire_3578, wire_1697, wire_6916, wire_3663, wire_3653, wire_3652, wire_3645, wire_3644, wire_3637, wire_3636, wire_3580, wire_1697, wire_6908, wire_3661, wire_3629, wire_3628, wire_3621, wire_3620, wire_3613, wire_3612, wire_3582, wire_1697, wire_6900, wire_3659, wire_3625, wire_3624, wire_3617, wire_3616, wire_3609, wire_3608, wire_3560, wire_1697, wire_7039, wire_3943, wire_3915, wire_3914, wire_3907, wire_3906, wire_3899, wire_3898, wire_3824, wire_7037, wire_3921, wire_3891, wire_3890, wire_3883, wire_3882, wire_3875, wire_3874, wire_3846, wire_7035, wire_3923, wire_3919, wire_3918, wire_3911, wire_3910, wire_3903, wire_3902, wire_3844, wire_1999, wire_7033, wire_3925, wire_3895, wire_3894, wire_3887, wire_3886, wire_3879, wire_3878, wire_3842, wire_1999, wire_7031, wire_3927, wire_3871, wire_3870, wire_3863, wire_3862, wire_3855, wire_3854, wire_3840, wire_1999, wire_7029, wire_3929, wire_3867, wire_3866, wire_3859, wire_3858, wire_3851, wire_3850, wire_3838, wire_1999, wire_7027, wire_3931, wire_3913, wire_3912, wire_3905, wire_3904, wire_3897, wire_3896, wire_3836, wire_1999, wire_7025, wire_3933, wire_3889, wire_3888, wire_3881, wire_3880, wire_3873, wire_3872, wire_3834, wire_1697, wire_7023, wire_3935, wire_3917, wire_3916, wire_3909, wire_3908, wire_3901, wire_3900, wire_3832, wire_1697, wire_7021, wire_3937, wire_3893, wire_3892, wire_3885, wire_3884, wire_3877, wire_3876, wire_3830, wire_1697, wire_7019, wire_3939, wire_3869, wire_3868, wire_3861, wire_3860, wire_3853, wire_3852, wire_3828, wire_1697, wire_7017, wire_3941, wire_3865, wire_3864, wire_3857, wire_3856, wire_3849, wire_3848, wire_3826, wire_1697, wire_6773, wire_6724, wire_6711, wire_6710, wire_6679, wire_6678, wire_6647, wire_6646, wire_3820, wire_6771, wire_6747, wire_6746, wire_6739, wire_6738, wire_6731, wire_6730, wire_6636, wire_3812, wire_6769, wire_6727, wire_6726, wire_6695, wire_6694, wire_6663, wire_6662, wire_6644, wire_3804, wire_1724, wire_6767, wire_6751, wire_6750, wire_6743, wire_6742, wire_6735, wire_6734, wire_6652, wire_3796, wire_1724, wire_6765, wire_6721, wire_6720, wire_6689, wire_6688, wire_6660, wire_6657, wire_6656, wire_3788, wire_1724, wire_6763, wire_6705, wire_6704, wire_6673, wire_6672, wire_6668, wire_6641, wire_6640, wire_3780, wire_1724, wire_6761, wire_6703, wire_6702, wire_6676, wire_6671, wire_6670, wire_6639, wire_6638, wire_3772, wire_1724, wire_6759, wire_6745, wire_6744, wire_6737, wire_6736, wire_6729, wire_6728, wire_6684, wire_3764, wire_1696, wire_6757, wire_6719, wire_6718, wire_6692, wire_6687, wire_6686, wire_6655, wire_6654, wire_3756, wire_1696, wire_6755, wire_6749, wire_6748, wire_6741, wire_6740, wire_6733, wire_6732, wire_6700, wire_3748, wire_1696, wire_6753, wire_6713, wire_6712, wire_6708, wire_6681, wire_6680, wire_6649, wire_6648, wire_3740, wire_1696, wire_6775, wire_6716, wire_6697, wire_6696, wire_6665, wire_6664, wire_6633, wire_6632, wire_3732, wire_1696, wire_7019, wire_7011, wire_7010, wire_7003, wire_7002, wire_6995, wire_6994, wire_6982, wire_3943, wire_7021, wire_6974, wire_6971, wire_6970, wire_6939, wire_6938, wire_6907, wire_6906, wire_3941, wire_7023, wire_7015, wire_7014, wire_7007, wire_7006, wire_6999, wire_6998, wire_6966, wire_3939, wire_1724, wire_7025, wire_6987, wire_6986, wire_6958, wire_6955, wire_6954, wire_6923, wire_6922, wire_3937, wire_1724, wire_7027, wire_6985, wire_6984, wire_6953, wire_6952, wire_6950, wire_6921, wire_6920, wire_3935, wire_1724, wire_7029, wire_6969, wire_6968, wire_6942, wire_6937, wire_6936, wire_6905, wire_6904, wire_3933, wire_1724, wire_7031, wire_7009, wire_7008, wire_7001, wire_7000, wire_6993, wire_6992, wire_6934, wire_3931, wire_1724, wire_7033, wire_6963, wire_6962, wire_6931, wire_6930, wire_6926, wire_6899, wire_6898, wire_3929, wire_1696, wire_7035, wire_7013, wire_7012, wire_7005, wire_7004, wire_6997, wire_6996, wire_6918, wire_3927, wire_1696, wire_7037, wire_6979, wire_6978, wire_6947, wire_6946, wire_6915, wire_6914, wire_6910, wire_3925, wire_1696, wire_7039, wire_6977, wire_6976, wire_6945, wire_6944, wire_6913, wire_6912, wire_6902, wire_3923, wire_1696, wire_7017, wire_6990, wire_6961, wire_6960, wire_6929, wire_6928, wire_6897, wire_6896, wire_3921, wire_1696};
    // CHNAXY TOTAL: 472
    assign wire_3825 = lut_tile_2_5_chanxy_out[0];
    assign wire_3827 = lut_tile_2_5_chanxy_out[1];
    assign wire_3829 = lut_tile_2_5_chanxy_out[2];
    assign wire_3831 = lut_tile_2_5_chanxy_out[3];
    assign wire_3833 = lut_tile_2_5_chanxy_out[4];
    assign wire_3835 = lut_tile_2_5_chanxy_out[5];
    assign wire_3837 = lut_tile_2_5_chanxy_out[6];
    assign wire_3839 = lut_tile_2_5_chanxy_out[7];
    assign wire_3841 = lut_tile_2_5_chanxy_out[8];
    assign wire_3843 = lut_tile_2_5_chanxy_out[9];
    assign wire_3845 = lut_tile_2_5_chanxy_out[10];
    assign wire_3847 = lut_tile_2_5_chanxy_out[11];
    assign wire_3896 = lut_tile_2_5_chanxy_out[12];
    assign wire_3898 = lut_tile_2_5_chanxy_out[13];
    assign wire_3900 = lut_tile_2_5_chanxy_out[14];
    assign wire_3902 = lut_tile_2_5_chanxy_out[15];
    assign wire_3904 = lut_tile_2_5_chanxy_out[16];
    assign wire_3906 = lut_tile_2_5_chanxy_out[17];
    assign wire_3908 = lut_tile_2_5_chanxy_out[18];
    assign wire_3910 = lut_tile_2_5_chanxy_out[19];
    assign wire_3912 = lut_tile_2_5_chanxy_out[20];
    assign wire_3914 = lut_tile_2_5_chanxy_out[21];
    assign wire_3916 = lut_tile_2_5_chanxy_out[22];
    assign wire_3918 = lut_tile_2_5_chanxy_out[23];
    assign wire_6903 = lut_tile_2_5_chanxy_out[24];
    assign wire_6911 = lut_tile_2_5_chanxy_out[25];
    assign wire_6919 = lut_tile_2_5_chanxy_out[26];
    assign wire_6927 = lut_tile_2_5_chanxy_out[27];
    assign wire_6935 = lut_tile_2_5_chanxy_out[28];
    assign wire_6943 = lut_tile_2_5_chanxy_out[29];
    assign wire_6951 = lut_tile_2_5_chanxy_out[30];
    assign wire_6959 = lut_tile_2_5_chanxy_out[31];
    assign wire_6967 = lut_tile_2_5_chanxy_out[32];
    assign wire_6975 = lut_tile_2_5_chanxy_out[33];
    assign wire_6983 = lut_tile_2_5_chanxy_out[34];
    assign wire_6991 = lut_tile_2_5_chanxy_out[35];
    assign wire_6992 = lut_tile_2_5_chanxy_out[36];
    assign wire_6994 = lut_tile_2_5_chanxy_out[37];
    assign wire_6996 = lut_tile_2_5_chanxy_out[38];
    assign wire_6998 = lut_tile_2_5_chanxy_out[39];
    assign wire_7000 = lut_tile_2_5_chanxy_out[40];
    assign wire_7002 = lut_tile_2_5_chanxy_out[41];
    assign wire_7004 = lut_tile_2_5_chanxy_out[42];
    assign wire_7006 = lut_tile_2_5_chanxy_out[43];
    assign wire_7008 = lut_tile_2_5_chanxy_out[44];
    assign wire_7010 = lut_tile_2_5_chanxy_out[45];
    assign wire_7012 = lut_tile_2_5_chanxy_out[46];
    assign wire_7014 = lut_tile_2_5_chanxy_out[47];
   // CHANXY OUT
    assign lut_tile_2_6_chanxy_in = {wire_7254, wire_3681, wire_3679, wire_3678, wire_3671, wire_3670, wire_3663, wire_3662, wire_3586, wire_7246, wire_3703, wire_3675, wire_3674, wire_3667, wire_3666, wire_3659, wire_3658, wire_3588, wire_7238, wire_3701, wire_3651, wire_3650, wire_3643, wire_3642, wire_3635, wire_3634, wire_3590, wire_2303, wire_7230, wire_3699, wire_3627, wire_3626, wire_3619, wire_3618, wire_3611, wire_3610, wire_3592, wire_2303, wire_7222, wire_3697, wire_3655, wire_3654, wire_3647, wire_3646, wire_3639, wire_3638, wire_3594, wire_2303, wire_7214, wire_3695, wire_3631, wire_3630, wire_3623, wire_3622, wire_3615, wire_3614, wire_3596, wire_2303, wire_7206, wire_3693, wire_3677, wire_3676, wire_3669, wire_3668, wire_3661, wire_3660, wire_3598, wire_2303, wire_7198, wire_3691, wire_3673, wire_3672, wire_3665, wire_3664, wire_3657, wire_3656, wire_3600, wire_2001, wire_7190, wire_3689, wire_3649, wire_3648, wire_3641, wire_3640, wire_3633, wire_3632, wire_3602, wire_2001, wire_7182, wire_3687, wire_3625, wire_3624, wire_3617, wire_3616, wire_3609, wire_3608, wire_3604, wire_2001, wire_7174, wire_3685, wire_3653, wire_3652, wire_3645, wire_3644, wire_3637, wire_3636, wire_3606, wire_2001, wire_7166, wire_3683, wire_3629, wire_3628, wire_3621, wire_3620, wire_3613, wire_3612, wire_3584, wire_2001, wire_7303, wire_3967, wire_3939, wire_3938, wire_3931, wire_3930, wire_3923, wire_3922, wire_3848, wire_7301, wire_3945, wire_3915, wire_3914, wire_3907, wire_3906, wire_3899, wire_3898, wire_3870, wire_7299, wire_3947, wire_3943, wire_3942, wire_3935, wire_3934, wire_3927, wire_3926, wire_3868, wire_2303, wire_7297, wire_3949, wire_3919, wire_3918, wire_3911, wire_3910, wire_3903, wire_3902, wire_3866, wire_2303, wire_7295, wire_3951, wire_3895, wire_3894, wire_3887, wire_3886, wire_3879, wire_3878, wire_3864, wire_2303, wire_7293, wire_3953, wire_3891, wire_3890, wire_3883, wire_3882, wire_3875, wire_3874, wire_3862, wire_2303, wire_7291, wire_3955, wire_3937, wire_3936, wire_3929, wire_3928, wire_3921, wire_3920, wire_3860, wire_2303, wire_7289, wire_3957, wire_3913, wire_3912, wire_3905, wire_3904, wire_3897, wire_3896, wire_3858, wire_2001, wire_7287, wire_3959, wire_3941, wire_3940, wire_3933, wire_3932, wire_3925, wire_3924, wire_3856, wire_2001, wire_7285, wire_3961, wire_3917, wire_3916, wire_3909, wire_3908, wire_3901, wire_3900, wire_3854, wire_2001, wire_7283, wire_3963, wire_3893, wire_3892, wire_3885, wire_3884, wire_3877, wire_3876, wire_3852, wire_2001, wire_7281, wire_3965, wire_3889, wire_3888, wire_3881, wire_3880, wire_3873, wire_3872, wire_3850, wire_2001, wire_7037, wire_7015, wire_7014, wire_7007, wire_7006, wire_6999, wire_6998, wire_6990, wire_3846, wire_7035, wire_7011, wire_7010, wire_7003, wire_7002, wire_6995, wire_6994, wire_6902, wire_3844, wire_7033, wire_6971, wire_6970, wire_6939, wire_6938, wire_6910, wire_6907, wire_6906, wire_3842, wire_2028, wire_7031, wire_6969, wire_6968, wire_6937, wire_6936, wire_6918, wire_6905, wire_6904, wire_3840, wire_2028, wire_7029, wire_6987, wire_6986, wire_6955, wire_6954, wire_6926, wire_6923, wire_6922, wire_3838, wire_2028, wire_7027, wire_6985, wire_6984, wire_6953, wire_6952, wire_6934, wire_6921, wire_6920, wire_3836, wire_2028, wire_7025, wire_7013, wire_7012, wire_7005, wire_7004, wire_6997, wire_6996, wire_6942, wire_3834, wire_2028, wire_7023, wire_7009, wire_7008, wire_7001, wire_7000, wire_6993, wire_6992, wire_6950, wire_3832, wire_2000, wire_7021, wire_6963, wire_6962, wire_6958, wire_6931, wire_6930, wire_6899, wire_6898, wire_3830, wire_2000, wire_7019, wire_6966, wire_6961, wire_6960, wire_6929, wire_6928, wire_6897, wire_6896, wire_3828, wire_2000, wire_7017, wire_6979, wire_6978, wire_6974, wire_6947, wire_6946, wire_6915, wire_6914, wire_3826, wire_2000, wire_7039, wire_6982, wire_6977, wire_6976, wire_6945, wire_6944, wire_6913, wire_6912, wire_3824, wire_2000, wire_7283, wire_7275, wire_7274, wire_7267, wire_7266, wire_7259, wire_7258, wire_7240, wire_3967, wire_7285, wire_7237, wire_7236, wire_7232, wire_7205, wire_7204, wire_7173, wire_7172, wire_3965, wire_7287, wire_7279, wire_7278, wire_7271, wire_7270, wire_7263, wire_7262, wire_7224, wire_3963, wire_2028, wire_7289, wire_7253, wire_7252, wire_7221, wire_7220, wire_7216, wire_7189, wire_7188, wire_3961, wire_2028, wire_7291, wire_7251, wire_7250, wire_7219, wire_7218, wire_7208, wire_7187, wire_7186, wire_3959, wire_2028, wire_7293, wire_7235, wire_7234, wire_7203, wire_7202, wire_7200, wire_7171, wire_7170, wire_3957, wire_2028, wire_7295, wire_7273, wire_7272, wire_7265, wire_7264, wire_7257, wire_7256, wire_7192, wire_3955, wire_2028, wire_7297, wire_7229, wire_7228, wire_7197, wire_7196, wire_7184, wire_7165, wire_7164, wire_3953, wire_2000, wire_7299, wire_7277, wire_7276, wire_7269, wire_7268, wire_7261, wire_7260, wire_7176, wire_3951, wire_2000, wire_7301, wire_7245, wire_7244, wire_7213, wire_7212, wire_7181, wire_7180, wire_7168, wire_3949, wire_2000, wire_7303, wire_7243, wire_7242, wire_7211, wire_7210, wire_7179, wire_7178, wire_7160, wire_3947, wire_2000, wire_7281, wire_7248, wire_7227, wire_7226, wire_7195, wire_7194, wire_7163, wire_7162, wire_3945, wire_2000};
    // CHNAXY TOTAL: 472
    assign wire_3849 = lut_tile_2_6_chanxy_out[0];
    assign wire_3851 = lut_tile_2_6_chanxy_out[1];
    assign wire_3853 = lut_tile_2_6_chanxy_out[2];
    assign wire_3855 = lut_tile_2_6_chanxy_out[3];
    assign wire_3857 = lut_tile_2_6_chanxy_out[4];
    assign wire_3859 = lut_tile_2_6_chanxy_out[5];
    assign wire_3861 = lut_tile_2_6_chanxy_out[6];
    assign wire_3863 = lut_tile_2_6_chanxy_out[7];
    assign wire_3865 = lut_tile_2_6_chanxy_out[8];
    assign wire_3867 = lut_tile_2_6_chanxy_out[9];
    assign wire_3869 = lut_tile_2_6_chanxy_out[10];
    assign wire_3871 = lut_tile_2_6_chanxy_out[11];
    assign wire_3920 = lut_tile_2_6_chanxy_out[12];
    assign wire_3922 = lut_tile_2_6_chanxy_out[13];
    assign wire_3924 = lut_tile_2_6_chanxy_out[14];
    assign wire_3926 = lut_tile_2_6_chanxy_out[15];
    assign wire_3928 = lut_tile_2_6_chanxy_out[16];
    assign wire_3930 = lut_tile_2_6_chanxy_out[17];
    assign wire_3932 = lut_tile_2_6_chanxy_out[18];
    assign wire_3934 = lut_tile_2_6_chanxy_out[19];
    assign wire_3936 = lut_tile_2_6_chanxy_out[20];
    assign wire_3938 = lut_tile_2_6_chanxy_out[21];
    assign wire_3940 = lut_tile_2_6_chanxy_out[22];
    assign wire_3942 = lut_tile_2_6_chanxy_out[23];
    assign wire_7161 = lut_tile_2_6_chanxy_out[24];
    assign wire_7169 = lut_tile_2_6_chanxy_out[25];
    assign wire_7177 = lut_tile_2_6_chanxy_out[26];
    assign wire_7185 = lut_tile_2_6_chanxy_out[27];
    assign wire_7193 = lut_tile_2_6_chanxy_out[28];
    assign wire_7201 = lut_tile_2_6_chanxy_out[29];
    assign wire_7209 = lut_tile_2_6_chanxy_out[30];
    assign wire_7217 = lut_tile_2_6_chanxy_out[31];
    assign wire_7225 = lut_tile_2_6_chanxy_out[32];
    assign wire_7233 = lut_tile_2_6_chanxy_out[33];
    assign wire_7241 = lut_tile_2_6_chanxy_out[34];
    assign wire_7249 = lut_tile_2_6_chanxy_out[35];
    assign wire_7256 = lut_tile_2_6_chanxy_out[36];
    assign wire_7258 = lut_tile_2_6_chanxy_out[37];
    assign wire_7260 = lut_tile_2_6_chanxy_out[38];
    assign wire_7262 = lut_tile_2_6_chanxy_out[39];
    assign wire_7264 = lut_tile_2_6_chanxy_out[40];
    assign wire_7266 = lut_tile_2_6_chanxy_out[41];
    assign wire_7268 = lut_tile_2_6_chanxy_out[42];
    assign wire_7270 = lut_tile_2_6_chanxy_out[43];
    assign wire_7272 = lut_tile_2_6_chanxy_out[44];
    assign wire_7274 = lut_tile_2_6_chanxy_out[45];
    assign wire_7276 = lut_tile_2_6_chanxy_out[46];
    assign wire_7278 = lut_tile_2_6_chanxy_out[47];
   // CHANXY OUT
    assign lut_tile_2_7_chanxy_in = {wire_7512, wire_3705, wire_3703, wire_3702, wire_3695, wire_3694, wire_3687, wire_3686, wire_3610, wire_7504, wire_3727, wire_3699, wire_3698, wire_3691, wire_3690, wire_3683, wire_3682, wire_3612, wire_7496, wire_3725, wire_3675, wire_3674, wire_3667, wire_3666, wire_3659, wire_3658, wire_3614, wire_2607, wire_7488, wire_3723, wire_3651, wire_3650, wire_3643, wire_3642, wire_3635, wire_3634, wire_3616, wire_2607, wire_7480, wire_3721, wire_3679, wire_3678, wire_3671, wire_3670, wire_3663, wire_3662, wire_3618, wire_2607, wire_7472, wire_3719, wire_3655, wire_3654, wire_3647, wire_3646, wire_3639, wire_3638, wire_3620, wire_2607, wire_7464, wire_3717, wire_3701, wire_3700, wire_3693, wire_3692, wire_3685, wire_3684, wire_3622, wire_2607, wire_7456, wire_3715, wire_3697, wire_3696, wire_3689, wire_3688, wire_3681, wire_3680, wire_3624, wire_2305, wire_7448, wire_3713, wire_3673, wire_3672, wire_3665, wire_3664, wire_3657, wire_3656, wire_3626, wire_2305, wire_7440, wire_3711, wire_3649, wire_3648, wire_3641, wire_3640, wire_3633, wire_3632, wire_3628, wire_2305, wire_7432, wire_3709, wire_3677, wire_3676, wire_3669, wire_3668, wire_3661, wire_3660, wire_3630, wire_2305, wire_7424, wire_3707, wire_3653, wire_3652, wire_3645, wire_3644, wire_3637, wire_3636, wire_3608, wire_2305, wire_7567, wire_3991, wire_3943, wire_3942, wire_3935, wire_3934, wire_3927, wire_3926, wire_3872, wire_7565, wire_3969, wire_3939, wire_3938, wire_3931, wire_3930, wire_3923, wire_3922, wire_3894, wire_7563, wire_3971, wire_3915, wire_3914, wire_3907, wire_3906, wire_3899, wire_3898, wire_3892, wire_2607, wire_7561, wire_3973, wire_3963, wire_3962, wire_3955, wire_3954, wire_3947, wire_3946, wire_3890, wire_2607, wire_7559, wire_3975, wire_3919, wire_3918, wire_3911, wire_3910, wire_3903, wire_3902, wire_3888, wire_2607, wire_7557, wire_3977, wire_3967, wire_3966, wire_3959, wire_3958, wire_3951, wire_3950, wire_3886, wire_2607, wire_7555, wire_3979, wire_3941, wire_3940, wire_3933, wire_3932, wire_3925, wire_3924, wire_3884, wire_2607, wire_7553, wire_3981, wire_3937, wire_3936, wire_3929, wire_3928, wire_3921, wire_3920, wire_3882, wire_2305, wire_7551, wire_3983, wire_3913, wire_3912, wire_3905, wire_3904, wire_3897, wire_3896, wire_3880, wire_2305, wire_7549, wire_3985, wire_3961, wire_3960, wire_3953, wire_3952, wire_3945, wire_3944, wire_3878, wire_2305, wire_7547, wire_3987, wire_3917, wire_3916, wire_3909, wire_3908, wire_3901, wire_3900, wire_3876, wire_2305, wire_7545, wire_3989, wire_3965, wire_3964, wire_3957, wire_3956, wire_3949, wire_3948, wire_3874, wire_2305, wire_7301, wire_7279, wire_7278, wire_7271, wire_7270, wire_7263, wire_7262, wire_7248, wire_3870, wire_7299, wire_7275, wire_7274, wire_7267, wire_7266, wire_7259, wire_7258, wire_7160, wire_3868, wire_7297, wire_7237, wire_7236, wire_7205, wire_7204, wire_7173, wire_7172, wire_7168, wire_3866, wire_2332, wire_7295, wire_7235, wire_7234, wire_7203, wire_7202, wire_7176, wire_7171, wire_7170, wire_3864, wire_2332, wire_7293, wire_7253, wire_7252, wire_7221, wire_7220, wire_7189, wire_7188, wire_7184, wire_3862, wire_2332, wire_7291, wire_7251, wire_7250, wire_7219, wire_7218, wire_7192, wire_7187, wire_7186, wire_3860, wire_2332, wire_7289, wire_7277, wire_7276, wire_7269, wire_7268, wire_7261, wire_7260, wire_7200, wire_3858, wire_2332, wire_7287, wire_7273, wire_7272, wire_7265, wire_7264, wire_7257, wire_7256, wire_7208, wire_3856, wire_2304, wire_7285, wire_7229, wire_7228, wire_7216, wire_7197, wire_7196, wire_7165, wire_7164, wire_3854, wire_2304, wire_7283, wire_7227, wire_7226, wire_7224, wire_7195, wire_7194, wire_7163, wire_7162, wire_3852, wire_2304, wire_7281, wire_7245, wire_7244, wire_7232, wire_7213, wire_7212, wire_7181, wire_7180, wire_3850, wire_2304, wire_7303, wire_7243, wire_7242, wire_7240, wire_7211, wire_7210, wire_7179, wire_7178, wire_3848, wire_2304, wire_7547, wire_7519, wire_7518, wire_7506, wire_7487, wire_7486, wire_7455, wire_7454, wire_3991, wire_7549, wire_7503, wire_7502, wire_7498, wire_7471, wire_7470, wire_7439, wire_7438, wire_3989, wire_7551, wire_7501, wire_7500, wire_7490, wire_7469, wire_7468, wire_7437, wire_7436, wire_3987, wire_2332, wire_7553, wire_7539, wire_7538, wire_7531, wire_7530, wire_7523, wire_7522, wire_7482, wire_3985, wire_2332, wire_7555, wire_7517, wire_7516, wire_7485, wire_7484, wire_7474, wire_7453, wire_7452, wire_3983, wire_2332, wire_7557, wire_7543, wire_7542, wire_7535, wire_7534, wire_7527, wire_7526, wire_7466, wire_3981, wire_2332, wire_7559, wire_7511, wire_7510, wire_7479, wire_7478, wire_7458, wire_7447, wire_7446, wire_3979, wire_2332, wire_7561, wire_7495, wire_7494, wire_7463, wire_7462, wire_7450, wire_7431, wire_7430, wire_3977, wire_2304, wire_7563, wire_7493, wire_7492, wire_7461, wire_7460, wire_7442, wire_7429, wire_7428, wire_3975, wire_2304, wire_7565, wire_7537, wire_7536, wire_7529, wire_7528, wire_7521, wire_7520, wire_7434, wire_3973, wire_2304, wire_7567, wire_7509, wire_7508, wire_7477, wire_7476, wire_7445, wire_7444, wire_7426, wire_3971, wire_2304, wire_7545, wire_7541, wire_7540, wire_7533, wire_7532, wire_7525, wire_7524, wire_7514, wire_3969, wire_2304};
    // CHNAXY TOTAL: 472
    assign wire_3873 = lut_tile_2_7_chanxy_out[0];
    assign wire_3875 = lut_tile_2_7_chanxy_out[1];
    assign wire_3877 = lut_tile_2_7_chanxy_out[2];
    assign wire_3879 = lut_tile_2_7_chanxy_out[3];
    assign wire_3881 = lut_tile_2_7_chanxy_out[4];
    assign wire_3883 = lut_tile_2_7_chanxy_out[5];
    assign wire_3885 = lut_tile_2_7_chanxy_out[6];
    assign wire_3887 = lut_tile_2_7_chanxy_out[7];
    assign wire_3889 = lut_tile_2_7_chanxy_out[8];
    assign wire_3891 = lut_tile_2_7_chanxy_out[9];
    assign wire_3893 = lut_tile_2_7_chanxy_out[10];
    assign wire_3895 = lut_tile_2_7_chanxy_out[11];
    assign wire_3944 = lut_tile_2_7_chanxy_out[12];
    assign wire_3946 = lut_tile_2_7_chanxy_out[13];
    assign wire_3948 = lut_tile_2_7_chanxy_out[14];
    assign wire_3950 = lut_tile_2_7_chanxy_out[15];
    assign wire_3952 = lut_tile_2_7_chanxy_out[16];
    assign wire_3954 = lut_tile_2_7_chanxy_out[17];
    assign wire_3956 = lut_tile_2_7_chanxy_out[18];
    assign wire_3958 = lut_tile_2_7_chanxy_out[19];
    assign wire_3960 = lut_tile_2_7_chanxy_out[20];
    assign wire_3962 = lut_tile_2_7_chanxy_out[21];
    assign wire_3964 = lut_tile_2_7_chanxy_out[22];
    assign wire_3966 = lut_tile_2_7_chanxy_out[23];
    assign wire_7427 = lut_tile_2_7_chanxy_out[24];
    assign wire_7435 = lut_tile_2_7_chanxy_out[25];
    assign wire_7443 = lut_tile_2_7_chanxy_out[26];
    assign wire_7451 = lut_tile_2_7_chanxy_out[27];
    assign wire_7459 = lut_tile_2_7_chanxy_out[28];
    assign wire_7467 = lut_tile_2_7_chanxy_out[29];
    assign wire_7475 = lut_tile_2_7_chanxy_out[30];
    assign wire_7483 = lut_tile_2_7_chanxy_out[31];
    assign wire_7491 = lut_tile_2_7_chanxy_out[32];
    assign wire_7499 = lut_tile_2_7_chanxy_out[33];
    assign wire_7507 = lut_tile_2_7_chanxy_out[34];
    assign wire_7515 = lut_tile_2_7_chanxy_out[35];
    assign wire_7520 = lut_tile_2_7_chanxy_out[36];
    assign wire_7522 = lut_tile_2_7_chanxy_out[37];
    assign wire_7524 = lut_tile_2_7_chanxy_out[38];
    assign wire_7526 = lut_tile_2_7_chanxy_out[39];
    assign wire_7528 = lut_tile_2_7_chanxy_out[40];
    assign wire_7530 = lut_tile_2_7_chanxy_out[41];
    assign wire_7532 = lut_tile_2_7_chanxy_out[42];
    assign wire_7534 = lut_tile_2_7_chanxy_out[43];
    assign wire_7536 = lut_tile_2_7_chanxy_out[44];
    assign wire_7538 = lut_tile_2_7_chanxy_out[45];
    assign wire_7540 = lut_tile_2_7_chanxy_out[46];
    assign wire_7542 = lut_tile_2_7_chanxy_out[47];
   // CHANXY OUT
    assign lut_tile_2_8_chanxy_in = {wire_7778, wire_3702, wire_3696, wire_3690, wire_3684, wire_2907, wire_2898, wire_2892, wire_7770, wire_3678, wire_3672, wire_3666, wire_3660, wire_2904, wire_2898, wire_2892, wire_7762, wire_3654, wire_3648, wire_3642, wire_3636, wire_2904, wire_2898, wire_2889, wire_7754, wire_3726, wire_3720, wire_3714, wire_3708, wire_2910, wire_2904, wire_2898, wire_2889, wire_7746, wire_3700, wire_3694, wire_3688, wire_3682, wire_2910, wire_2904, wire_2895, wire_2889, wire_7738, wire_3676, wire_3670, wire_3664, wire_3658, wire_2910, wire_2904, wire_2895, wire_2889, wire_7730, wire_3652, wire_3646, wire_3640, wire_3634, wire_2910, wire_2901, wire_2895, wire_2889, wire_7722, wire_3724, wire_3718, wire_3712, wire_3706, wire_2910, wire_2901, wire_2895, wire_2609, wire_7714, wire_3698, wire_3692, wire_3686, wire_3680, wire_2907, wire_2901, wire_2895, wire_2609, wire_7706, wire_3674, wire_3668, wire_3662, wire_3656, wire_2907, wire_2901, wire_2892, wire_2609, wire_7698, wire_3650, wire_3644, wire_3638, wire_3632, wire_2907, wire_2901, wire_2892, wire_2609, wire_7690, wire_3722, wire_3716, wire_3710, wire_3704, wire_2907, wire_2898, wire_2892, wire_2609, wire_7831, wire_3942, wire_3936, wire_3930, wire_3924, wire_2907, wire_2898, wire_2892, wire_7829, wire_3918, wire_3912, wire_3906, wire_3900, wire_2904, wire_2898, wire_2892, wire_7827, wire_3990, wire_3984, wire_3978, wire_3972, wire_2904, wire_2898, wire_2889, wire_7825, wire_3966, wire_3960, wire_3954, wire_3948, wire_2910, wire_2904, wire_2898, wire_2889, wire_7823, wire_3940, wire_3934, wire_3928, wire_3922, wire_2910, wire_2904, wire_2895, wire_2889, wire_7821, wire_3916, wire_3910, wire_3904, wire_3898, wire_2910, wire_2904, wire_2895, wire_2889, wire_7819, wire_3988, wire_3982, wire_3976, wire_3970, wire_2910, wire_2901, wire_2895, wire_2889, wire_7817, wire_3964, wire_3958, wire_3952, wire_3946, wire_2910, wire_2901, wire_2895, wire_2609, wire_7815, wire_3938, wire_3932, wire_3926, wire_3920, wire_2907, wire_2901, wire_2895, wire_2609, wire_7813, wire_3914, wire_3908, wire_3902, wire_3896, wire_2907, wire_2901, wire_2892, wire_2609, wire_7811, wire_3986, wire_3980, wire_3974, wire_3968, wire_2907, wire_2901, wire_2892, wire_2609, wire_7809, wire_3962, wire_3956, wire_3950, wire_3944, wire_2907, wire_2898, wire_2892, wire_2609, wire_7783, wire_7782, wire_7565, wire_7514, wire_7503, wire_7502, wire_7471, wire_7470, wire_7439, wire_7438, wire_3894, wire_7727, wire_7726, wire_7563, wire_7519, wire_7518, wire_7487, wire_7486, wire_7455, wire_7454, wire_7426, wire_3892, wire_7721, wire_7720, wire_7561, wire_7501, wire_7500, wire_7469, wire_7468, wire_7437, wire_7436, wire_7434, wire_3890, wire_2636, wire_7719, wire_7718, wire_7559, wire_7517, wire_7516, wire_7485, wire_7484, wire_7453, wire_7452, wire_7442, wire_3888, wire_2636, wire_7767, wire_7766, wire_7557, wire_7539, wire_7538, wire_7531, wire_7530, wire_7523, wire_7522, wire_7450, wire_3886, wire_2636, wire_7761, wire_7760, wire_7555, wire_7543, wire_7542, wire_7535, wire_7534, wire_7527, wire_7526, wire_7458, wire_3884, wire_2636, wire_7759, wire_7758, wire_7553, wire_7495, wire_7494, wire_7466, wire_7463, wire_7462, wire_7431, wire_7430, wire_3882, wire_2636, wire_7703, wire_7702, wire_7551, wire_7511, wire_7510, wire_7479, wire_7478, wire_7474, wire_7447, wire_7446, wire_3880, wire_2608, wire_7697, wire_7696, wire_7549, wire_7493, wire_7492, wire_7482, wire_7461, wire_7460, wire_7429, wire_7428, wire_3878, wire_2608, wire_7695, wire_7694, wire_2636, wire_7547, wire_7509, wire_7508, wire_7490, wire_7477, wire_7476, wire_7445, wire_7444, wire_3876, wire_2608, wire_7743, wire_7742, wire_2636, wire_7545, wire_7537, wire_7536, wire_7529, wire_7528, wire_7521, wire_7520, wire_7498, wire_3874, wire_2608, wire_7737, wire_7736, wire_2608, wire_7567, wire_7541, wire_7540, wire_7533, wire_7532, wire_7525, wire_7524, wire_7506, wire_3872, wire_2608, wire_7795, wire_7794, wire_7817, wire_7724, wire_7777, wire_7776, wire_7805, wire_7804, wire_7827, wire_7764, wire_7713, wire_7712, wire_7789, wire_7788, wire_7811, wire_7700, wire_7753, wire_7752, wire_7799, wire_7798, wire_2636, wire_7821, wire_7740, wire_2608, wire_7689, wire_7688, wire_2608, wire_7735, wire_7734, wire_7729, wire_7728, wire_7807, wire_7806, wire_7775, wire_7774, wire_7769, wire_7768, wire_7791, wire_7790, wire_7711, wire_7710, wire_7705, wire_7704, wire_7801, wire_7800, wire_7751, wire_7750, wire_7745, wire_7744, wire_2636, wire_7785, wire_7784, wire_2608, wire_7819, wire_7732, wire_7831, wire_7780, wire_7793, wire_7792, wire_7829, wire_7772, wire_7815, wire_7716, wire_7803, wire_7802, wire_7813, wire_7708, wire_7825, wire_7756, wire_7787, wire_7786, wire_7823, wire_7748, wire_7809, wire_7692, wire_2636, wire_7797, wire_7796, wire_2608};
    // CHNAXY TOTAL: 434
    assign wire_3897 = lut_tile_2_8_chanxy_out[0];
    assign wire_3899 = lut_tile_2_8_chanxy_out[1];
    assign wire_3901 = lut_tile_2_8_chanxy_out[2];
    assign wire_3903 = lut_tile_2_8_chanxy_out[3];
    assign wire_3905 = lut_tile_2_8_chanxy_out[4];
    assign wire_3907 = lut_tile_2_8_chanxy_out[5];
    assign wire_3909 = lut_tile_2_8_chanxy_out[6];
    assign wire_3911 = lut_tile_2_8_chanxy_out[7];
    assign wire_3913 = lut_tile_2_8_chanxy_out[8];
    assign wire_3915 = lut_tile_2_8_chanxy_out[9];
    assign wire_3917 = lut_tile_2_8_chanxy_out[10];
    assign wire_3919 = lut_tile_2_8_chanxy_out[11];
    assign wire_3921 = lut_tile_2_8_chanxy_out[12];
    assign wire_3923 = lut_tile_2_8_chanxy_out[13];
    assign wire_3925 = lut_tile_2_8_chanxy_out[14];
    assign wire_3927 = lut_tile_2_8_chanxy_out[15];
    assign wire_3929 = lut_tile_2_8_chanxy_out[16];
    assign wire_3931 = lut_tile_2_8_chanxy_out[17];
    assign wire_3933 = lut_tile_2_8_chanxy_out[18];
    assign wire_3935 = lut_tile_2_8_chanxy_out[19];
    assign wire_3937 = lut_tile_2_8_chanxy_out[20];
    assign wire_3939 = lut_tile_2_8_chanxy_out[21];
    assign wire_3941 = lut_tile_2_8_chanxy_out[22];
    assign wire_3943 = lut_tile_2_8_chanxy_out[23];
    assign wire_3945 = lut_tile_2_8_chanxy_out[24];
    assign wire_3947 = lut_tile_2_8_chanxy_out[25];
    assign wire_3949 = lut_tile_2_8_chanxy_out[26];
    assign wire_3951 = lut_tile_2_8_chanxy_out[27];
    assign wire_3953 = lut_tile_2_8_chanxy_out[28];
    assign wire_3955 = lut_tile_2_8_chanxy_out[29];
    assign wire_3957 = lut_tile_2_8_chanxy_out[30];
    assign wire_3959 = lut_tile_2_8_chanxy_out[31];
    assign wire_3961 = lut_tile_2_8_chanxy_out[32];
    assign wire_3963 = lut_tile_2_8_chanxy_out[33];
    assign wire_3965 = lut_tile_2_8_chanxy_out[34];
    assign wire_3967 = lut_tile_2_8_chanxy_out[35];
    assign wire_3968 = lut_tile_2_8_chanxy_out[36];
    assign wire_3969 = lut_tile_2_8_chanxy_out[37];
    assign wire_3970 = lut_tile_2_8_chanxy_out[38];
    assign wire_3971 = lut_tile_2_8_chanxy_out[39];
    assign wire_3972 = lut_tile_2_8_chanxy_out[40];
    assign wire_3973 = lut_tile_2_8_chanxy_out[41];
    assign wire_3974 = lut_tile_2_8_chanxy_out[42];
    assign wire_3975 = lut_tile_2_8_chanxy_out[43];
    assign wire_3976 = lut_tile_2_8_chanxy_out[44];
    assign wire_3977 = lut_tile_2_8_chanxy_out[45];
    assign wire_3978 = lut_tile_2_8_chanxy_out[46];
    assign wire_3979 = lut_tile_2_8_chanxy_out[47];
    assign wire_3980 = lut_tile_2_8_chanxy_out[48];
    assign wire_3981 = lut_tile_2_8_chanxy_out[49];
    assign wire_3982 = lut_tile_2_8_chanxy_out[50];
    assign wire_3983 = lut_tile_2_8_chanxy_out[51];
    assign wire_3984 = lut_tile_2_8_chanxy_out[52];
    assign wire_3985 = lut_tile_2_8_chanxy_out[53];
    assign wire_3986 = lut_tile_2_8_chanxy_out[54];
    assign wire_3987 = lut_tile_2_8_chanxy_out[55];
    assign wire_3988 = lut_tile_2_8_chanxy_out[56];
    assign wire_3989 = lut_tile_2_8_chanxy_out[57];
    assign wire_3990 = lut_tile_2_8_chanxy_out[58];
    assign wire_3991 = lut_tile_2_8_chanxy_out[59];
    assign wire_7693 = lut_tile_2_8_chanxy_out[60];
    assign wire_7701 = lut_tile_2_8_chanxy_out[61];
    assign wire_7709 = lut_tile_2_8_chanxy_out[62];
    assign wire_7717 = lut_tile_2_8_chanxy_out[63];
    assign wire_7725 = lut_tile_2_8_chanxy_out[64];
    assign wire_7733 = lut_tile_2_8_chanxy_out[65];
    assign wire_7741 = lut_tile_2_8_chanxy_out[66];
    assign wire_7749 = lut_tile_2_8_chanxy_out[67];
    assign wire_7757 = lut_tile_2_8_chanxy_out[68];
    assign wire_7765 = lut_tile_2_8_chanxy_out[69];
    assign wire_7773 = lut_tile_2_8_chanxy_out[70];
    assign wire_7781 = lut_tile_2_8_chanxy_out[71];
    assign wire_7784 = lut_tile_2_8_chanxy_out[72];
    assign wire_7786 = lut_tile_2_8_chanxy_out[73];
    assign wire_7788 = lut_tile_2_8_chanxy_out[74];
    assign wire_7790 = lut_tile_2_8_chanxy_out[75];
    assign wire_7792 = lut_tile_2_8_chanxy_out[76];
    assign wire_7794 = lut_tile_2_8_chanxy_out[77];
    assign wire_7796 = lut_tile_2_8_chanxy_out[78];
    assign wire_7798 = lut_tile_2_8_chanxy_out[79];
    assign wire_7800 = lut_tile_2_8_chanxy_out[80];
    assign wire_7802 = lut_tile_2_8_chanxy_out[81];
    assign wire_7804 = lut_tile_2_8_chanxy_out[82];
    assign wire_7806 = lut_tile_2_8_chanxy_out[83];
   // CHANXY OUT
    assign lut_tile_3_1_chanxy_in = {wire_5934, wire_3825, wire_3821, wire_3820, wire_3789, wire_3788, wire_3757, wire_3756, wire_3742, wire_5926, wire_3847, wire_3805, wire_3804, wire_3773, wire_3772, wire_3750, wire_3741, wire_3740, wire_5918, wire_3845, wire_3803, wire_3802, wire_3771, wire_3770, wire_3758, wire_3739, wire_3738, wire_809, wire_5910, wire_3843, wire_3801, wire_3800, wire_3769, wire_3768, wire_3766, wire_3737, wire_3736, wire_809, wire_5902, wire_3841, wire_3819, wire_3818, wire_3787, wire_3786, wire_3774, wire_3755, wire_3754, wire_809, wire_5894, wire_3839, wire_3817, wire_3816, wire_3785, wire_3784, wire_3782, wire_3753, wire_3752, wire_809, wire_5886, wire_3837, wire_3813, wire_3812, wire_3790, wire_3781, wire_3780, wire_3749, wire_3748, wire_809, wire_5878, wire_3835, wire_3798, wire_3797, wire_3796, wire_3765, wire_3764, wire_3733, wire_3732, wire_507, wire_5870, wire_3833, wire_3806, wire_3795, wire_3794, wire_3763, wire_3762, wire_3731, wire_3730, wire_507, wire_5862, wire_3831, wire_3814, wire_3793, wire_3792, wire_3761, wire_3760, wire_3729, wire_3728, wire_507, wire_5854, wire_3829, wire_3822, wire_3811, wire_3810, wire_3779, wire_3778, wire_3747, wire_3746, wire_507, wire_5846, wire_3827, wire_3809, wire_3808, wire_3777, wire_3776, wire_3745, wire_3744, wire_3734, wire_507, wire_6007, wire_4111, wire_4071, wire_4070, wire_4039, wire_4038, wire_4007, wire_4006, wire_3992, wire_6005, wire_4089, wire_4080, wire_4069, wire_4068, wire_4037, wire_4036, wire_4005, wire_4004, wire_6003, wire_4091, wire_4087, wire_4086, wire_4072, wire_4055, wire_4054, wire_4023, wire_4022, wire_809, wire_6001, wire_4093, wire_4085, wire_4084, wire_4064, wire_4053, wire_4052, wire_4021, wire_4020, wire_809, wire_5999, wire_4095, wire_4083, wire_4082, wire_4056, wire_4051, wire_4050, wire_4019, wire_4018, wire_809, wire_5997, wire_4097, wire_4067, wire_4066, wire_4048, wire_4035, wire_4034, wire_4003, wire_4002, wire_809, wire_5995, wire_4099, wire_4063, wire_4062, wire_4040, wire_4031, wire_4030, wire_3999, wire_3998, wire_809, wire_5993, wire_4101, wire_4061, wire_4060, wire_4032, wire_4029, wire_4028, wire_3997, wire_3996, wire_507, wire_5991, wire_4103, wire_4079, wire_4078, wire_4047, wire_4046, wire_4024, wire_4015, wire_4014, wire_507, wire_5989, wire_4105, wire_4077, wire_4076, wire_4045, wire_4044, wire_4016, wire_4013, wire_4012, wire_507, wire_5987, wire_4107, wire_4075, wire_4074, wire_4043, wire_4042, wire_4011, wire_4010, wire_4008, wire_507, wire_5985, wire_4109, wire_4059, wire_4058, wire_4027, wire_4026, wire_4000, wire_3995, wire_3994, wire_507, wire_5743, wire_5670, wire_5731, wire_5622, wire_5707, wire_5706, wire_5987, wire_5979, wire_5978, wire_5971, wire_5970, wire_5963, wire_5962, wire_5920, wire_4111, wire_5719, wire_5718, wire_5683, wire_5682, wire_5617, wire_5616, wire_5695, wire_5694, wire_5989, wire_5955, wire_5954, wire_5947, wire_5946, wire_5939, wire_5938, wire_5912, wire_4109, wire_5729, wire_5614, wire_5705, wire_5704, wire_5665, wire_5664, wire_5681, wire_5680, wire_5991, wire_5983, wire_5982, wire_5975, wire_5974, wire_5967, wire_5966, wire_5904, wire_4107, wire_534, wire_5609, wire_5608, wire_5727, wire_5606, wire_5741, wire_5662, wire_5717, wire_5716, wire_5993, wire_5959, wire_5958, wire_5951, wire_5950, wire_5943, wire_5942, wire_5896, wire_4105, wire_534, wire_5703, wire_5702, wire_5693, wire_5692, wire_5657, wire_5656, wire_5679, wire_5678, wire_5995, wire_5931, wire_5930, wire_5899, wire_5898, wire_5888, wire_5867, wire_5866, wire_4103, wire_534, wire_5739, wire_5654, wire_5715, wire_5714, wire_5601, wire_5600, wire_5691, wire_5690, wire_5997, wire_5915, wire_5914, wire_5883, wire_5882, wire_5880, wire_5851, wire_5850, wire_4101, wire_534, wire_5649, wire_5648, wire_5737, wire_5646, wire_5725, wire_5598, wire_5701, wire_5700, wire_5999, wire_5977, wire_5976, wire_5969, wire_5968, wire_5961, wire_5960, wire_5872, wire_4099, wire_534, wire_5713, wire_5712, wire_5677, wire_5676, wire_5593, wire_5592, wire_5689, wire_5688, wire_6001, wire_5953, wire_5952, wire_5945, wire_5944, wire_5937, wire_5936, wire_5864, wire_4097, wire_506, wire_5723, wire_5590, wire_5699, wire_5698, wire_5641, wire_5640, wire_5675, wire_5674, wire_6003, wire_5981, wire_5980, wire_5973, wire_5972, wire_5965, wire_5964, wire_5856, wire_4095, wire_506, wire_5585, wire_5584, wire_5721, wire_5582, wire_5735, wire_5638, wire_5711, wire_5710, wire_534, wire_6005, wire_5957, wire_5956, wire_5949, wire_5948, wire_5941, wire_5940, wire_5848, wire_4093, wire_506, wire_5697, wire_5696, wire_534, wire_5687, wire_5686, wire_534, wire_5633, wire_5632, wire_534, wire_5673, wire_5672, wire_534, wire_6007, wire_5923, wire_5922, wire_5891, wire_5890, wire_5859, wire_5858, wire_5840, wire_4091, wire_506, wire_5733, wire_5630, wire_506, wire_5709, wire_5708, wire_506, wire_5577, wire_5576, wire_506, wire_5685, wire_5684, wire_506, wire_5985, wire_5928, wire_5907, wire_5906, wire_5875, wire_5874, wire_5843, wire_5842, wire_4089, wire_506, wire_5625, wire_5624, wire_506};
    // CHNAXY TOTAL: 460
    assign wire_3992 = lut_tile_3_1_chanxy_out[0];
    assign wire_3993 = lut_tile_3_1_chanxy_out[1];
    assign wire_3994 = lut_tile_3_1_chanxy_out[2];
    assign wire_3996 = lut_tile_3_1_chanxy_out[3];
    assign wire_3998 = lut_tile_3_1_chanxy_out[4];
    assign wire_4000 = lut_tile_3_1_chanxy_out[5];
    assign wire_4001 = lut_tile_3_1_chanxy_out[6];
    assign wire_4002 = lut_tile_3_1_chanxy_out[7];
    assign wire_4004 = lut_tile_3_1_chanxy_out[8];
    assign wire_4006 = lut_tile_3_1_chanxy_out[9];
    assign wire_4008 = lut_tile_3_1_chanxy_out[10];
    assign wire_4009 = lut_tile_3_1_chanxy_out[11];
    assign wire_4010 = lut_tile_3_1_chanxy_out[12];
    assign wire_4012 = lut_tile_3_1_chanxy_out[13];
    assign wire_4014 = lut_tile_3_1_chanxy_out[14];
    assign wire_4016 = lut_tile_3_1_chanxy_out[15];
    assign wire_4017 = lut_tile_3_1_chanxy_out[16];
    assign wire_4018 = lut_tile_3_1_chanxy_out[17];
    assign wire_4020 = lut_tile_3_1_chanxy_out[18];
    assign wire_4022 = lut_tile_3_1_chanxy_out[19];
    assign wire_4024 = lut_tile_3_1_chanxy_out[20];
    assign wire_4025 = lut_tile_3_1_chanxy_out[21];
    assign wire_4026 = lut_tile_3_1_chanxy_out[22];
    assign wire_4028 = lut_tile_3_1_chanxy_out[23];
    assign wire_4030 = lut_tile_3_1_chanxy_out[24];
    assign wire_4032 = lut_tile_3_1_chanxy_out[25];
    assign wire_4033 = lut_tile_3_1_chanxy_out[26];
    assign wire_4034 = lut_tile_3_1_chanxy_out[27];
    assign wire_4036 = lut_tile_3_1_chanxy_out[28];
    assign wire_4038 = lut_tile_3_1_chanxy_out[29];
    assign wire_4040 = lut_tile_3_1_chanxy_out[30];
    assign wire_4041 = lut_tile_3_1_chanxy_out[31];
    assign wire_4042 = lut_tile_3_1_chanxy_out[32];
    assign wire_4044 = lut_tile_3_1_chanxy_out[33];
    assign wire_4046 = lut_tile_3_1_chanxy_out[34];
    assign wire_4048 = lut_tile_3_1_chanxy_out[35];
    assign wire_4049 = lut_tile_3_1_chanxy_out[36];
    assign wire_4050 = lut_tile_3_1_chanxy_out[37];
    assign wire_4052 = lut_tile_3_1_chanxy_out[38];
    assign wire_4054 = lut_tile_3_1_chanxy_out[39];
    assign wire_4056 = lut_tile_3_1_chanxy_out[40];
    assign wire_4057 = lut_tile_3_1_chanxy_out[41];
    assign wire_4058 = lut_tile_3_1_chanxy_out[42];
    assign wire_4060 = lut_tile_3_1_chanxy_out[43];
    assign wire_4062 = lut_tile_3_1_chanxy_out[44];
    assign wire_4064 = lut_tile_3_1_chanxy_out[45];
    assign wire_4065 = lut_tile_3_1_chanxy_out[46];
    assign wire_4066 = lut_tile_3_1_chanxy_out[47];
    assign wire_4068 = lut_tile_3_1_chanxy_out[48];
    assign wire_4070 = lut_tile_3_1_chanxy_out[49];
    assign wire_4072 = lut_tile_3_1_chanxy_out[50];
    assign wire_4073 = lut_tile_3_1_chanxy_out[51];
    assign wire_4074 = lut_tile_3_1_chanxy_out[52];
    assign wire_4076 = lut_tile_3_1_chanxy_out[53];
    assign wire_4078 = lut_tile_3_1_chanxy_out[54];
    assign wire_4080 = lut_tile_3_1_chanxy_out[55];
    assign wire_4081 = lut_tile_3_1_chanxy_out[56];
    assign wire_4082 = lut_tile_3_1_chanxy_out[57];
    assign wire_4084 = lut_tile_3_1_chanxy_out[58];
    assign wire_4086 = lut_tile_3_1_chanxy_out[59];
    assign wire_5841 = lut_tile_3_1_chanxy_out[60];
    assign wire_5849 = lut_tile_3_1_chanxy_out[61];
    assign wire_5857 = lut_tile_3_1_chanxy_out[62];
    assign wire_5865 = lut_tile_3_1_chanxy_out[63];
    assign wire_5873 = lut_tile_3_1_chanxy_out[64];
    assign wire_5881 = lut_tile_3_1_chanxy_out[65];
    assign wire_5889 = lut_tile_3_1_chanxy_out[66];
    assign wire_5897 = lut_tile_3_1_chanxy_out[67];
    assign wire_5905 = lut_tile_3_1_chanxy_out[68];
    assign wire_5913 = lut_tile_3_1_chanxy_out[69];
    assign wire_5921 = lut_tile_3_1_chanxy_out[70];
    assign wire_5929 = lut_tile_3_1_chanxy_out[71];
    assign wire_5960 = lut_tile_3_1_chanxy_out[72];
    assign wire_5962 = lut_tile_3_1_chanxy_out[73];
    assign wire_5964 = lut_tile_3_1_chanxy_out[74];
    assign wire_5966 = lut_tile_3_1_chanxy_out[75];
    assign wire_5968 = lut_tile_3_1_chanxy_out[76];
    assign wire_5970 = lut_tile_3_1_chanxy_out[77];
    assign wire_5972 = lut_tile_3_1_chanxy_out[78];
    assign wire_5974 = lut_tile_3_1_chanxy_out[79];
    assign wire_5976 = lut_tile_3_1_chanxy_out[80];
    assign wire_5978 = lut_tile_3_1_chanxy_out[81];
    assign wire_5980 = lut_tile_3_1_chanxy_out[82];
    assign wire_5982 = lut_tile_3_1_chanxy_out[83];
   // CHANXY OUT
    assign lut_tile_3_2_chanxy_in = {wire_6192, wire_3849, wire_3847, wire_3846, wire_3839, wire_3838, wire_3831, wire_3830, wire_3736, wire_6184, wire_3871, wire_3843, wire_3842, wire_3835, wire_3834, wire_3827, wire_3826, wire_3744, wire_6176, wire_3869, wire_3805, wire_3804, wire_3773, wire_3772, wire_3752, wire_3741, wire_3740, wire_1113, wire_6168, wire_3867, wire_3803, wire_3802, wire_3771, wire_3770, wire_3760, wire_3739, wire_3738, wire_1113, wire_6160, wire_3865, wire_3821, wire_3820, wire_3789, wire_3788, wire_3768, wire_3757, wire_3756, wire_1113, wire_6152, wire_3863, wire_3819, wire_3818, wire_3787, wire_3786, wire_3776, wire_3755, wire_3754, wire_1113, wire_6144, wire_3861, wire_3845, wire_3844, wire_3837, wire_3836, wire_3829, wire_3828, wire_3784, wire_1113, wire_6136, wire_3859, wire_3841, wire_3840, wire_3833, wire_3832, wire_3825, wire_3824, wire_3792, wire_811, wire_6128, wire_3857, wire_3800, wire_3797, wire_3796, wire_3765, wire_3764, wire_3733, wire_3732, wire_811, wire_6120, wire_3855, wire_3808, wire_3795, wire_3794, wire_3763, wire_3762, wire_3731, wire_3730, wire_811, wire_6112, wire_3853, wire_3816, wire_3813, wire_3812, wire_3781, wire_3780, wire_3749, wire_3748, wire_811, wire_6104, wire_3851, wire_3811, wire_3810, wire_3779, wire_3778, wire_3747, wire_3746, wire_3728, wire_811, wire_6271, wire_4135, wire_4087, wire_4086, wire_4055, wire_4054, wire_4023, wire_4022, wire_3994, wire_6269, wire_4113, wire_4082, wire_4071, wire_4070, wire_4039, wire_4038, wire_4007, wire_4006, wire_6267, wire_4115, wire_4074, wire_4069, wire_4068, wire_4037, wire_4036, wire_4005, wire_4004, wire_1113, wire_6265, wire_4117, wire_4107, wire_4106, wire_4099, wire_4098, wire_4091, wire_4090, wire_4066, wire_1113, wire_6263, wire_4119, wire_4085, wire_4084, wire_4058, wire_4053, wire_4052, wire_4021, wire_4020, wire_1113, wire_6261, wire_4121, wire_4111, wire_4110, wire_4103, wire_4102, wire_4095, wire_4094, wire_4050, wire_1113, wire_6259, wire_4123, wire_4079, wire_4078, wire_4047, wire_4046, wire_4042, wire_4015, wire_4014, wire_1113, wire_6257, wire_4125, wire_4063, wire_4062, wire_4034, wire_4031, wire_4030, wire_3999, wire_3998, wire_811, wire_6255, wire_4127, wire_4061, wire_4060, wire_4029, wire_4028, wire_4026, wire_3997, wire_3996, wire_811, wire_6253, wire_4129, wire_4105, wire_4104, wire_4097, wire_4096, wire_4089, wire_4088, wire_4018, wire_811, wire_6251, wire_4131, wire_4077, wire_4076, wire_4045, wire_4044, wire_4013, wire_4012, wire_4010, wire_811, wire_6249, wire_4133, wire_4109, wire_4108, wire_4101, wire_4100, wire_4093, wire_4092, wire_4002, wire_811, wire_6005, wire_5983, wire_5982, wire_5975, wire_5974, wire_5967, wire_5966, wire_5928, wire_4080, wire_6003, wire_5979, wire_5978, wire_5971, wire_5970, wire_5963, wire_5962, wire_5840, wire_4072, wire_6001, wire_5955, wire_5954, wire_5947, wire_5946, wire_5939, wire_5938, wire_5848, wire_4064, wire_838, wire_5999, wire_5915, wire_5914, wire_5883, wire_5882, wire_5856, wire_5851, wire_5850, wire_4056, wire_838, wire_5997, wire_5959, wire_5958, wire_5951, wire_5950, wire_5943, wire_5942, wire_5864, wire_4048, wire_838, wire_5995, wire_5931, wire_5930, wire_5899, wire_5898, wire_5872, wire_5867, wire_5866, wire_4040, wire_838, wire_5993, wire_5981, wire_5980, wire_5973, wire_5972, wire_5965, wire_5964, wire_5880, wire_4032, wire_838, wire_5991, wire_5977, wire_5976, wire_5969, wire_5968, wire_5961, wire_5960, wire_5888, wire_4024, wire_810, wire_5989, wire_5953, wire_5952, wire_5945, wire_5944, wire_5937, wire_5936, wire_5896, wire_4016, wire_810, wire_5987, wire_5907, wire_5906, wire_5904, wire_5875, wire_5874, wire_5843, wire_5842, wire_4008, wire_810, wire_5985, wire_5957, wire_5956, wire_5949, wire_5948, wire_5941, wire_5940, wire_5912, wire_4000, wire_810, wire_6007, wire_5923, wire_5922, wire_5920, wire_5891, wire_5890, wire_5859, wire_5858, wire_3992, wire_810, wire_6251, wire_6223, wire_6222, wire_6215, wire_6214, wire_6207, wire_6206, wire_6186, wire_4135, wire_6253, wire_6219, wire_6218, wire_6211, wire_6210, wire_6203, wire_6202, wire_6178, wire_4133, wire_6255, wire_6181, wire_6180, wire_6170, wire_6149, wire_6148, wire_6117, wire_6116, wire_4131, wire_838, wire_6257, wire_6243, wire_6242, wire_6235, wire_6234, wire_6227, wire_6226, wire_6162, wire_4129, wire_838, wire_6259, wire_6197, wire_6196, wire_6165, wire_6164, wire_6154, wire_6133, wire_6132, wire_4127, wire_838, wire_6261, wire_6247, wire_6246, wire_6239, wire_6238, wire_6231, wire_6230, wire_6146, wire_4125, wire_838, wire_6263, wire_6221, wire_6220, wire_6213, wire_6212, wire_6205, wire_6204, wire_6138, wire_4123, wire_838, wire_6265, wire_6217, wire_6216, wire_6209, wire_6208, wire_6201, wire_6200, wire_6130, wire_4121, wire_810, wire_6267, wire_6173, wire_6172, wire_6141, wire_6140, wire_6122, wire_6109, wire_6108, wire_4119, wire_810, wire_6269, wire_6241, wire_6240, wire_6233, wire_6232, wire_6225, wire_6224, wire_6114, wire_4117, wire_810, wire_6271, wire_6189, wire_6188, wire_6157, wire_6156, wire_6125, wire_6124, wire_6106, wire_4115, wire_810, wire_6249, wire_6245, wire_6244, wire_6237, wire_6236, wire_6229, wire_6228, wire_6194, wire_4113, wire_810};
    // CHNAXY TOTAL: 472
    assign wire_3995 = lut_tile_3_2_chanxy_out[0];
    assign wire_4003 = lut_tile_3_2_chanxy_out[1];
    assign wire_4011 = lut_tile_3_2_chanxy_out[2];
    assign wire_4019 = lut_tile_3_2_chanxy_out[3];
    assign wire_4027 = lut_tile_3_2_chanxy_out[4];
    assign wire_4035 = lut_tile_3_2_chanxy_out[5];
    assign wire_4043 = lut_tile_3_2_chanxy_out[6];
    assign wire_4051 = lut_tile_3_2_chanxy_out[7];
    assign wire_4059 = lut_tile_3_2_chanxy_out[8];
    assign wire_4067 = lut_tile_3_2_chanxy_out[9];
    assign wire_4075 = lut_tile_3_2_chanxy_out[10];
    assign wire_4083 = lut_tile_3_2_chanxy_out[11];
    assign wire_4088 = lut_tile_3_2_chanxy_out[12];
    assign wire_4090 = lut_tile_3_2_chanxy_out[13];
    assign wire_4092 = lut_tile_3_2_chanxy_out[14];
    assign wire_4094 = lut_tile_3_2_chanxy_out[15];
    assign wire_4096 = lut_tile_3_2_chanxy_out[16];
    assign wire_4098 = lut_tile_3_2_chanxy_out[17];
    assign wire_4100 = lut_tile_3_2_chanxy_out[18];
    assign wire_4102 = lut_tile_3_2_chanxy_out[19];
    assign wire_4104 = lut_tile_3_2_chanxy_out[20];
    assign wire_4106 = lut_tile_3_2_chanxy_out[21];
    assign wire_4108 = lut_tile_3_2_chanxy_out[22];
    assign wire_4110 = lut_tile_3_2_chanxy_out[23];
    assign wire_6107 = lut_tile_3_2_chanxy_out[24];
    assign wire_6115 = lut_tile_3_2_chanxy_out[25];
    assign wire_6123 = lut_tile_3_2_chanxy_out[26];
    assign wire_6131 = lut_tile_3_2_chanxy_out[27];
    assign wire_6139 = lut_tile_3_2_chanxy_out[28];
    assign wire_6147 = lut_tile_3_2_chanxy_out[29];
    assign wire_6155 = lut_tile_3_2_chanxy_out[30];
    assign wire_6163 = lut_tile_3_2_chanxy_out[31];
    assign wire_6171 = lut_tile_3_2_chanxy_out[32];
    assign wire_6179 = lut_tile_3_2_chanxy_out[33];
    assign wire_6187 = lut_tile_3_2_chanxy_out[34];
    assign wire_6195 = lut_tile_3_2_chanxy_out[35];
    assign wire_6224 = lut_tile_3_2_chanxy_out[36];
    assign wire_6226 = lut_tile_3_2_chanxy_out[37];
    assign wire_6228 = lut_tile_3_2_chanxy_out[38];
    assign wire_6230 = lut_tile_3_2_chanxy_out[39];
    assign wire_6232 = lut_tile_3_2_chanxy_out[40];
    assign wire_6234 = lut_tile_3_2_chanxy_out[41];
    assign wire_6236 = lut_tile_3_2_chanxy_out[42];
    assign wire_6238 = lut_tile_3_2_chanxy_out[43];
    assign wire_6240 = lut_tile_3_2_chanxy_out[44];
    assign wire_6242 = lut_tile_3_2_chanxy_out[45];
    assign wire_6244 = lut_tile_3_2_chanxy_out[46];
    assign wire_6246 = lut_tile_3_2_chanxy_out[47];
   // CHANXY OUT
    assign lut_tile_3_3_chanxy_in = {wire_6458, wire_3873, wire_3843, wire_3842, wire_3835, wire_3834, wire_3827, wire_3826, wire_3738, wire_6450, wire_3895, wire_3847, wire_3846, wire_3839, wire_3838, wire_3831, wire_3830, wire_3746, wire_6442, wire_3893, wire_3805, wire_3804, wire_3773, wire_3772, wire_3754, wire_3741, wire_3740, wire_1417, wire_6434, wire_3891, wire_3821, wire_3820, wire_3789, wire_3788, wire_3762, wire_3757, wire_3756, wire_1417, wire_6426, wire_3889, wire_3867, wire_3866, wire_3859, wire_3858, wire_3851, wire_3850, wire_3770, wire_1417, wire_6418, wire_3887, wire_3871, wire_3870, wire_3863, wire_3862, wire_3855, wire_3854, wire_3778, wire_1417, wire_6410, wire_3885, wire_3841, wire_3840, wire_3833, wire_3832, wire_3825, wire_3824, wire_3786, wire_1417, wire_6402, wire_3883, wire_3845, wire_3844, wire_3837, wire_3836, wire_3829, wire_3828, wire_3794, wire_1115, wire_6394, wire_3881, wire_3802, wire_3797, wire_3796, wire_3765, wire_3764, wire_3733, wire_3732, wire_1115, wire_6386, wire_3879, wire_3813, wire_3812, wire_3810, wire_3781, wire_3780, wire_3749, wire_3748, wire_1115, wire_6378, wire_3877, wire_3865, wire_3864, wire_3857, wire_3856, wire_3849, wire_3848, wire_3818, wire_1115, wire_6370, wire_3875, wire_3869, wire_3868, wire_3861, wire_3860, wire_3853, wire_3852, wire_3730, wire_1115, wire_6535, wire_4159, wire_4071, wire_4070, wire_4039, wire_4038, wire_4007, wire_4006, wire_3996, wire_6533, wire_4137, wire_4087, wire_4086, wire_4084, wire_4055, wire_4054, wire_4023, wire_4022, wire_6531, wire_4139, wire_4131, wire_4130, wire_4123, wire_4122, wire_4115, wire_4114, wire_4076, wire_1417, wire_6529, wire_4141, wire_4135, wire_4134, wire_4127, wire_4126, wire_4119, wire_4118, wire_4068, wire_1417, wire_6527, wire_4143, wire_4107, wire_4106, wire_4099, wire_4098, wire_4091, wire_4090, wire_4060, wire_1417, wire_6525, wire_4145, wire_4111, wire_4110, wire_4103, wire_4102, wire_4095, wire_4094, wire_4052, wire_1417, wire_6523, wire_4147, wire_4063, wire_4062, wire_4044, wire_4031, wire_4030, wire_3999, wire_3998, wire_1417, wire_6521, wire_4149, wire_4079, wire_4078, wire_4047, wire_4046, wire_4036, wire_4015, wire_4014, wire_1115, wire_6519, wire_4151, wire_4129, wire_4128, wire_4121, wire_4120, wire_4113, wire_4112, wire_4028, wire_1115, wire_6517, wire_4153, wire_4133, wire_4132, wire_4125, wire_4124, wire_4117, wire_4116, wire_4020, wire_1115, wire_6515, wire_4155, wire_4105, wire_4104, wire_4097, wire_4096, wire_4089, wire_4088, wire_4012, wire_1115, wire_6513, wire_4157, wire_4109, wire_4108, wire_4101, wire_4100, wire_4093, wire_4092, wire_4004, wire_1115, wire_6269, wire_6219, wire_6218, wire_6211, wire_6210, wire_6203, wire_6202, wire_6194, wire_4082, wire_6267, wire_6223, wire_6222, wire_6215, wire_6214, wire_6207, wire_6206, wire_6106, wire_4074, wire_6265, wire_6181, wire_6180, wire_6149, wire_6148, wire_6117, wire_6116, wire_6114, wire_4066, wire_1142, wire_6263, wire_6197, wire_6196, wire_6165, wire_6164, wire_6133, wire_6132, wire_6122, wire_4058, wire_1142, wire_6261, wire_6243, wire_6242, wire_6235, wire_6234, wire_6227, wire_6226, wire_6130, wire_4050, wire_1142, wire_6259, wire_6247, wire_6246, wire_6239, wire_6238, wire_6231, wire_6230, wire_6138, wire_4042, wire_1142, wire_6257, wire_6217, wire_6216, wire_6209, wire_6208, wire_6201, wire_6200, wire_6146, wire_4034, wire_1142, wire_6255, wire_6221, wire_6220, wire_6213, wire_6212, wire_6205, wire_6204, wire_6154, wire_4026, wire_1114, wire_6253, wire_6173, wire_6172, wire_6162, wire_6141, wire_6140, wire_6109, wire_6108, wire_4018, wire_1114, wire_6251, wire_6189, wire_6188, wire_6170, wire_6157, wire_6156, wire_6125, wire_6124, wire_4010, wire_1114, wire_6249, wire_6241, wire_6240, wire_6233, wire_6232, wire_6225, wire_6224, wire_6178, wire_4002, wire_1114, wire_6271, wire_6245, wire_6244, wire_6237, wire_6236, wire_6229, wire_6228, wire_6186, wire_3994, wire_1114, wire_6515, wire_6452, wire_6447, wire_6446, wire_6415, wire_6414, wire_6383, wire_6382, wire_4159, wire_6517, wire_6463, wire_6462, wire_6444, wire_6431, wire_6430, wire_6399, wire_6398, wire_4157, wire_6519, wire_6507, wire_6506, wire_6499, wire_6498, wire_6491, wire_6490, wire_6436, wire_4155, wire_1142, wire_6521, wire_6511, wire_6510, wire_6503, wire_6502, wire_6495, wire_6494, wire_6428, wire_4153, wire_1142, wire_6523, wire_6483, wire_6482, wire_6475, wire_6474, wire_6467, wire_6466, wire_6420, wire_4151, wire_1142, wire_6525, wire_6487, wire_6486, wire_6479, wire_6478, wire_6471, wire_6470, wire_6412, wire_4149, wire_1142, wire_6527, wire_6439, wire_6438, wire_6407, wire_6406, wire_6404, wire_6375, wire_6374, wire_4147, wire_1142, wire_6529, wire_6455, wire_6454, wire_6423, wire_6422, wire_6396, wire_6391, wire_6390, wire_4145, wire_1114, wire_6531, wire_6505, wire_6504, wire_6497, wire_6496, wire_6489, wire_6488, wire_6388, wire_4143, wire_1114, wire_6533, wire_6509, wire_6508, wire_6501, wire_6500, wire_6493, wire_6492, wire_6380, wire_4141, wire_1114, wire_6535, wire_6481, wire_6480, wire_6473, wire_6472, wire_6465, wire_6464, wire_6372, wire_4139, wire_1114, wire_6513, wire_6485, wire_6484, wire_6477, wire_6476, wire_6469, wire_6468, wire_6460, wire_4137, wire_1114};
    // CHNAXY TOTAL: 472
    assign wire_3997 = lut_tile_3_3_chanxy_out[0];
    assign wire_4005 = lut_tile_3_3_chanxy_out[1];
    assign wire_4013 = lut_tile_3_3_chanxy_out[2];
    assign wire_4021 = lut_tile_3_3_chanxy_out[3];
    assign wire_4029 = lut_tile_3_3_chanxy_out[4];
    assign wire_4037 = lut_tile_3_3_chanxy_out[5];
    assign wire_4045 = lut_tile_3_3_chanxy_out[6];
    assign wire_4053 = lut_tile_3_3_chanxy_out[7];
    assign wire_4061 = lut_tile_3_3_chanxy_out[8];
    assign wire_4069 = lut_tile_3_3_chanxy_out[9];
    assign wire_4077 = lut_tile_3_3_chanxy_out[10];
    assign wire_4085 = lut_tile_3_3_chanxy_out[11];
    assign wire_4112 = lut_tile_3_3_chanxy_out[12];
    assign wire_4114 = lut_tile_3_3_chanxy_out[13];
    assign wire_4116 = lut_tile_3_3_chanxy_out[14];
    assign wire_4118 = lut_tile_3_3_chanxy_out[15];
    assign wire_4120 = lut_tile_3_3_chanxy_out[16];
    assign wire_4122 = lut_tile_3_3_chanxy_out[17];
    assign wire_4124 = lut_tile_3_3_chanxy_out[18];
    assign wire_4126 = lut_tile_3_3_chanxy_out[19];
    assign wire_4128 = lut_tile_3_3_chanxy_out[20];
    assign wire_4130 = lut_tile_3_3_chanxy_out[21];
    assign wire_4132 = lut_tile_3_3_chanxy_out[22];
    assign wire_4134 = lut_tile_3_3_chanxy_out[23];
    assign wire_6373 = lut_tile_3_3_chanxy_out[24];
    assign wire_6381 = lut_tile_3_3_chanxy_out[25];
    assign wire_6389 = lut_tile_3_3_chanxy_out[26];
    assign wire_6397 = lut_tile_3_3_chanxy_out[27];
    assign wire_6405 = lut_tile_3_3_chanxy_out[28];
    assign wire_6413 = lut_tile_3_3_chanxy_out[29];
    assign wire_6421 = lut_tile_3_3_chanxy_out[30];
    assign wire_6429 = lut_tile_3_3_chanxy_out[31];
    assign wire_6437 = lut_tile_3_3_chanxy_out[32];
    assign wire_6445 = lut_tile_3_3_chanxy_out[33];
    assign wire_6453 = lut_tile_3_3_chanxy_out[34];
    assign wire_6461 = lut_tile_3_3_chanxy_out[35];
    assign wire_6488 = lut_tile_3_3_chanxy_out[36];
    assign wire_6490 = lut_tile_3_3_chanxy_out[37];
    assign wire_6492 = lut_tile_3_3_chanxy_out[38];
    assign wire_6494 = lut_tile_3_3_chanxy_out[39];
    assign wire_6496 = lut_tile_3_3_chanxy_out[40];
    assign wire_6498 = lut_tile_3_3_chanxy_out[41];
    assign wire_6500 = lut_tile_3_3_chanxy_out[42];
    assign wire_6502 = lut_tile_3_3_chanxy_out[43];
    assign wire_6504 = lut_tile_3_3_chanxy_out[44];
    assign wire_6506 = lut_tile_3_3_chanxy_out[45];
    assign wire_6508 = lut_tile_3_3_chanxy_out[46];
    assign wire_6510 = lut_tile_3_3_chanxy_out[47];
   // CHANXY OUT
    assign lut_tile_3_4_chanxy_in = {wire_6724, wire_3897, wire_3843, wire_3842, wire_3835, wire_3834, wire_3827, wire_3826, wire_3740, wire_6716, wire_3919, wire_3891, wire_3890, wire_3883, wire_3882, wire_3875, wire_3874, wire_3748, wire_6708, wire_3917, wire_3847, wire_3846, wire_3839, wire_3838, wire_3831, wire_3830, wire_3756, wire_1721, wire_6700, wire_3915, wire_3895, wire_3894, wire_3887, wire_3886, wire_3879, wire_3878, wire_3764, wire_1721, wire_6692, wire_3913, wire_3871, wire_3870, wire_3863, wire_3862, wire_3855, wire_3854, wire_3772, wire_1721, wire_6684, wire_3911, wire_3867, wire_3866, wire_3859, wire_3858, wire_3851, wire_3850, wire_3780, wire_1721, wire_6676, wire_3909, wire_3841, wire_3840, wire_3833, wire_3832, wire_3825, wire_3824, wire_3788, wire_1721, wire_6668, wire_3907, wire_3889, wire_3888, wire_3881, wire_3880, wire_3873, wire_3872, wire_3796, wire_1419, wire_6660, wire_3905, wire_3845, wire_3844, wire_3837, wire_3836, wire_3829, wire_3828, wire_3804, wire_1419, wire_6652, wire_3903, wire_3893, wire_3892, wire_3885, wire_3884, wire_3877, wire_3876, wire_3812, wire_1419, wire_6644, wire_3901, wire_3869, wire_3868, wire_3861, wire_3860, wire_3853, wire_3852, wire_3820, wire_1419, wire_6636, wire_3899, wire_3865, wire_3864, wire_3857, wire_3856, wire_3849, wire_3848, wire_3732, wire_1419, wire_6799, wire_4183, wire_4155, wire_4154, wire_4147, wire_4146, wire_4139, wire_4138, wire_3998, wire_6797, wire_4161, wire_4131, wire_4130, wire_4123, wire_4122, wire_4115, wire_4114, wire_4086, wire_6795, wire_4163, wire_4159, wire_4158, wire_4151, wire_4150, wire_4143, wire_4142, wire_4078, wire_1721, wire_6793, wire_4165, wire_4135, wire_4134, wire_4127, wire_4126, wire_4119, wire_4118, wire_4070, wire_1721, wire_6791, wire_4167, wire_4111, wire_4110, wire_4103, wire_4102, wire_4095, wire_4094, wire_4062, wire_1721, wire_6789, wire_4169, wire_4107, wire_4106, wire_4099, wire_4098, wire_4091, wire_4090, wire_4054, wire_1721, wire_6787, wire_4171, wire_4153, wire_4152, wire_4145, wire_4144, wire_4137, wire_4136, wire_4046, wire_1721, wire_6785, wire_4173, wire_4129, wire_4128, wire_4121, wire_4120, wire_4113, wire_4112, wire_4038, wire_1419, wire_6783, wire_4175, wire_4157, wire_4156, wire_4149, wire_4148, wire_4141, wire_4140, wire_4030, wire_1419, wire_6781, wire_4177, wire_4133, wire_4132, wire_4125, wire_4124, wire_4117, wire_4116, wire_4022, wire_1419, wire_6779, wire_4179, wire_4109, wire_4108, wire_4101, wire_4100, wire_4093, wire_4092, wire_4014, wire_1419, wire_6777, wire_4181, wire_4105, wire_4104, wire_4097, wire_4096, wire_4089, wire_4088, wire_4006, wire_1419, wire_6533, wire_6460, wire_6447, wire_6446, wire_6415, wire_6414, wire_6383, wire_6382, wire_4084, wire_6531, wire_6507, wire_6506, wire_6499, wire_6498, wire_6491, wire_6490, wire_6372, wire_4076, wire_6529, wire_6463, wire_6462, wire_6431, wire_6430, wire_6399, wire_6398, wire_6380, wire_4068, wire_1446, wire_6527, wire_6511, wire_6510, wire_6503, wire_6502, wire_6495, wire_6494, wire_6388, wire_4060, wire_1446, wire_6525, wire_6487, wire_6486, wire_6479, wire_6478, wire_6471, wire_6470, wire_6396, wire_4052, wire_1446, wire_6523, wire_6483, wire_6482, wire_6475, wire_6474, wire_6467, wire_6466, wire_6404, wire_4044, wire_1446, wire_6521, wire_6439, wire_6438, wire_6412, wire_6407, wire_6406, wire_6375, wire_6374, wire_4036, wire_1446, wire_6519, wire_6505, wire_6504, wire_6497, wire_6496, wire_6489, wire_6488, wire_6420, wire_4028, wire_1418, wire_6517, wire_6455, wire_6454, wire_6428, wire_6423, wire_6422, wire_6391, wire_6390, wire_4020, wire_1418, wire_6515, wire_6509, wire_6508, wire_6501, wire_6500, wire_6493, wire_6492, wire_6436, wire_4012, wire_1418, wire_6513, wire_6485, wire_6484, wire_6477, wire_6476, wire_6469, wire_6468, wire_6444, wire_4004, wire_1418, wire_6535, wire_6481, wire_6480, wire_6473, wire_6472, wire_6465, wire_6464, wire_6452, wire_3996, wire_1418, wire_6779, wire_6771, wire_6770, wire_6763, wire_6762, wire_6755, wire_6754, wire_6718, wire_4183, wire_6781, wire_6747, wire_6746, wire_6739, wire_6738, wire_6731, wire_6730, wire_6710, wire_4181, wire_6783, wire_6775, wire_6774, wire_6767, wire_6766, wire_6759, wire_6758, wire_6702, wire_4179, wire_1446, wire_6785, wire_6751, wire_6750, wire_6743, wire_6742, wire_6735, wire_6734, wire_6694, wire_4177, wire_1446, wire_6787, wire_6721, wire_6720, wire_6689, wire_6688, wire_6686, wire_6657, wire_6656, wire_4175, wire_1446, wire_6789, wire_6705, wire_6704, wire_6678, wire_6673, wire_6672, wire_6641, wire_6640, wire_4173, wire_1446, wire_6791, wire_6769, wire_6768, wire_6761, wire_6760, wire_6753, wire_6752, wire_6670, wire_4171, wire_1446, wire_6793, wire_6745, wire_6744, wire_6737, wire_6736, wire_6729, wire_6728, wire_6662, wire_4169, wire_1418, wire_6795, wire_6773, wire_6772, wire_6765, wire_6764, wire_6757, wire_6756, wire_6654, wire_4167, wire_1418, wire_6797, wire_6749, wire_6748, wire_6741, wire_6740, wire_6733, wire_6732, wire_6646, wire_4165, wire_1418, wire_6799, wire_6713, wire_6712, wire_6681, wire_6680, wire_6649, wire_6648, wire_6638, wire_4163, wire_1418, wire_6777, wire_6726, wire_6697, wire_6696, wire_6665, wire_6664, wire_6633, wire_6632, wire_4161, wire_1418};
    // CHNAXY TOTAL: 472
    assign wire_3999 = lut_tile_3_4_chanxy_out[0];
    assign wire_4007 = lut_tile_3_4_chanxy_out[1];
    assign wire_4015 = lut_tile_3_4_chanxy_out[2];
    assign wire_4023 = lut_tile_3_4_chanxy_out[3];
    assign wire_4031 = lut_tile_3_4_chanxy_out[4];
    assign wire_4039 = lut_tile_3_4_chanxy_out[5];
    assign wire_4047 = lut_tile_3_4_chanxy_out[6];
    assign wire_4055 = lut_tile_3_4_chanxy_out[7];
    assign wire_4063 = lut_tile_3_4_chanxy_out[8];
    assign wire_4071 = lut_tile_3_4_chanxy_out[9];
    assign wire_4079 = lut_tile_3_4_chanxy_out[10];
    assign wire_4087 = lut_tile_3_4_chanxy_out[11];
    assign wire_4136 = lut_tile_3_4_chanxy_out[12];
    assign wire_4138 = lut_tile_3_4_chanxy_out[13];
    assign wire_4140 = lut_tile_3_4_chanxy_out[14];
    assign wire_4142 = lut_tile_3_4_chanxy_out[15];
    assign wire_4144 = lut_tile_3_4_chanxy_out[16];
    assign wire_4146 = lut_tile_3_4_chanxy_out[17];
    assign wire_4148 = lut_tile_3_4_chanxy_out[18];
    assign wire_4150 = lut_tile_3_4_chanxy_out[19];
    assign wire_4152 = lut_tile_3_4_chanxy_out[20];
    assign wire_4154 = lut_tile_3_4_chanxy_out[21];
    assign wire_4156 = lut_tile_3_4_chanxy_out[22];
    assign wire_4158 = lut_tile_3_4_chanxy_out[23];
    assign wire_6639 = lut_tile_3_4_chanxy_out[24];
    assign wire_6647 = lut_tile_3_4_chanxy_out[25];
    assign wire_6655 = lut_tile_3_4_chanxy_out[26];
    assign wire_6663 = lut_tile_3_4_chanxy_out[27];
    assign wire_6671 = lut_tile_3_4_chanxy_out[28];
    assign wire_6679 = lut_tile_3_4_chanxy_out[29];
    assign wire_6687 = lut_tile_3_4_chanxy_out[30];
    assign wire_6695 = lut_tile_3_4_chanxy_out[31];
    assign wire_6703 = lut_tile_3_4_chanxy_out[32];
    assign wire_6711 = lut_tile_3_4_chanxy_out[33];
    assign wire_6719 = lut_tile_3_4_chanxy_out[34];
    assign wire_6727 = lut_tile_3_4_chanxy_out[35];
    assign wire_6752 = lut_tile_3_4_chanxy_out[36];
    assign wire_6754 = lut_tile_3_4_chanxy_out[37];
    assign wire_6756 = lut_tile_3_4_chanxy_out[38];
    assign wire_6758 = lut_tile_3_4_chanxy_out[39];
    assign wire_6760 = lut_tile_3_4_chanxy_out[40];
    assign wire_6762 = lut_tile_3_4_chanxy_out[41];
    assign wire_6764 = lut_tile_3_4_chanxy_out[42];
    assign wire_6766 = lut_tile_3_4_chanxy_out[43];
    assign wire_6768 = lut_tile_3_4_chanxy_out[44];
    assign wire_6770 = lut_tile_3_4_chanxy_out[45];
    assign wire_6772 = lut_tile_3_4_chanxy_out[46];
    assign wire_6774 = lut_tile_3_4_chanxy_out[47];
   // CHANXY OUT
    assign lut_tile_3_5_chanxy_in = {wire_6990, wire_3921, wire_3919, wire_3918, wire_3911, wire_3910, wire_3903, wire_3902, wire_3826, wire_6982, wire_3943, wire_3915, wire_3914, wire_3907, wire_3906, wire_3899, wire_3898, wire_3828, wire_6974, wire_3941, wire_3891, wire_3890, wire_3883, wire_3882, wire_3875, wire_3874, wire_3830, wire_2025, wire_6966, wire_3939, wire_3867, wire_3866, wire_3859, wire_3858, wire_3851, wire_3850, wire_3832, wire_2025, wire_6958, wire_3937, wire_3895, wire_3894, wire_3887, wire_3886, wire_3879, wire_3878, wire_3834, wire_2025, wire_6950, wire_3935, wire_3871, wire_3870, wire_3863, wire_3862, wire_3855, wire_3854, wire_3836, wire_2025, wire_6942, wire_3933, wire_3917, wire_3916, wire_3909, wire_3908, wire_3901, wire_3900, wire_3838, wire_2025, wire_6934, wire_3931, wire_3913, wire_3912, wire_3905, wire_3904, wire_3897, wire_3896, wire_3840, wire_1723, wire_6926, wire_3929, wire_3889, wire_3888, wire_3881, wire_3880, wire_3873, wire_3872, wire_3842, wire_1723, wire_6918, wire_3927, wire_3865, wire_3864, wire_3857, wire_3856, wire_3849, wire_3848, wire_3844, wire_1723, wire_6910, wire_3925, wire_3893, wire_3892, wire_3885, wire_3884, wire_3877, wire_3876, wire_3846, wire_1723, wire_6902, wire_3923, wire_3869, wire_3868, wire_3861, wire_3860, wire_3853, wire_3852, wire_3824, wire_1723, wire_7063, wire_4207, wire_4179, wire_4178, wire_4171, wire_4170, wire_4163, wire_4162, wire_4088, wire_7061, wire_4185, wire_4155, wire_4154, wire_4147, wire_4146, wire_4139, wire_4138, wire_4110, wire_7059, wire_4187, wire_4183, wire_4182, wire_4175, wire_4174, wire_4167, wire_4166, wire_4108, wire_2025, wire_7057, wire_4189, wire_4159, wire_4158, wire_4151, wire_4150, wire_4143, wire_4142, wire_4106, wire_2025, wire_7055, wire_4191, wire_4135, wire_4134, wire_4127, wire_4126, wire_4119, wire_4118, wire_4104, wire_2025, wire_7053, wire_4193, wire_4131, wire_4130, wire_4123, wire_4122, wire_4115, wire_4114, wire_4102, wire_2025, wire_7051, wire_4195, wire_4177, wire_4176, wire_4169, wire_4168, wire_4161, wire_4160, wire_4100, wire_2025, wire_7049, wire_4197, wire_4153, wire_4152, wire_4145, wire_4144, wire_4137, wire_4136, wire_4098, wire_1723, wire_7047, wire_4199, wire_4181, wire_4180, wire_4173, wire_4172, wire_4165, wire_4164, wire_4096, wire_1723, wire_7045, wire_4201, wire_4157, wire_4156, wire_4149, wire_4148, wire_4141, wire_4140, wire_4094, wire_1723, wire_7043, wire_4203, wire_4133, wire_4132, wire_4125, wire_4124, wire_4117, wire_4116, wire_4092, wire_1723, wire_7041, wire_4205, wire_4129, wire_4128, wire_4121, wire_4120, wire_4113, wire_4112, wire_4090, wire_1723, wire_6797, wire_6775, wire_6774, wire_6767, wire_6766, wire_6759, wire_6758, wire_6726, wire_4086, wire_6795, wire_6771, wire_6770, wire_6763, wire_6762, wire_6755, wire_6754, wire_6638, wire_4078, wire_6793, wire_6747, wire_6746, wire_6739, wire_6738, wire_6731, wire_6730, wire_6646, wire_4070, wire_1750, wire_6791, wire_6705, wire_6704, wire_6673, wire_6672, wire_6654, wire_6641, wire_6640, wire_4062, wire_1750, wire_6789, wire_6751, wire_6750, wire_6743, wire_6742, wire_6735, wire_6734, wire_6662, wire_4054, wire_1750, wire_6787, wire_6721, wire_6720, wire_6689, wire_6688, wire_6670, wire_6657, wire_6656, wire_4046, wire_1750, wire_6785, wire_6773, wire_6772, wire_6765, wire_6764, wire_6757, wire_6756, wire_6678, wire_4038, wire_1750, wire_6783, wire_6769, wire_6768, wire_6761, wire_6760, wire_6753, wire_6752, wire_6686, wire_4030, wire_1722, wire_6781, wire_6745, wire_6744, wire_6737, wire_6736, wire_6729, wire_6728, wire_6694, wire_4022, wire_1722, wire_6779, wire_6702, wire_6697, wire_6696, wire_6665, wire_6664, wire_6633, wire_6632, wire_4014, wire_1722, wire_6777, wire_6749, wire_6748, wire_6741, wire_6740, wire_6733, wire_6732, wire_6710, wire_4006, wire_1722, wire_6799, wire_6718, wire_6713, wire_6712, wire_6681, wire_6680, wire_6649, wire_6648, wire_3998, wire_1722, wire_7043, wire_7035, wire_7034, wire_7027, wire_7026, wire_7019, wire_7018, wire_6976, wire_4207, wire_7045, wire_7011, wire_7010, wire_7003, wire_7002, wire_6995, wire_6994, wire_6968, wire_4205, wire_7047, wire_7039, wire_7038, wire_7031, wire_7030, wire_7023, wire_7022, wire_6960, wire_4203, wire_1750, wire_7049, wire_7015, wire_7014, wire_7007, wire_7006, wire_6999, wire_6998, wire_6952, wire_4201, wire_1750, wire_7051, wire_6987, wire_6986, wire_6955, wire_6954, wire_6944, wire_6923, wire_6922, wire_4199, wire_1750, wire_7053, wire_6971, wire_6970, wire_6939, wire_6938, wire_6936, wire_6907, wire_6906, wire_4197, wire_1750, wire_7055, wire_7033, wire_7032, wire_7025, wire_7024, wire_7017, wire_7016, wire_6928, wire_4195, wire_1750, wire_7057, wire_7009, wire_7008, wire_7001, wire_7000, wire_6993, wire_6992, wire_6920, wire_4193, wire_1722, wire_7059, wire_7037, wire_7036, wire_7029, wire_7028, wire_7021, wire_7020, wire_6912, wire_4191, wire_1722, wire_7061, wire_7013, wire_7012, wire_7005, wire_7004, wire_6997, wire_6996, wire_6904, wire_4189, wire_1722, wire_7063, wire_6979, wire_6978, wire_6947, wire_6946, wire_6915, wire_6914, wire_6896, wire_4187, wire_1722, wire_7041, wire_6984, wire_6963, wire_6962, wire_6931, wire_6930, wire_6899, wire_6898, wire_4185, wire_1722};
    // CHNAXY TOTAL: 472
    assign wire_4089 = lut_tile_3_5_chanxy_out[0];
    assign wire_4091 = lut_tile_3_5_chanxy_out[1];
    assign wire_4093 = lut_tile_3_5_chanxy_out[2];
    assign wire_4095 = lut_tile_3_5_chanxy_out[3];
    assign wire_4097 = lut_tile_3_5_chanxy_out[4];
    assign wire_4099 = lut_tile_3_5_chanxy_out[5];
    assign wire_4101 = lut_tile_3_5_chanxy_out[6];
    assign wire_4103 = lut_tile_3_5_chanxy_out[7];
    assign wire_4105 = lut_tile_3_5_chanxy_out[8];
    assign wire_4107 = lut_tile_3_5_chanxy_out[9];
    assign wire_4109 = lut_tile_3_5_chanxy_out[10];
    assign wire_4111 = lut_tile_3_5_chanxy_out[11];
    assign wire_4160 = lut_tile_3_5_chanxy_out[12];
    assign wire_4162 = lut_tile_3_5_chanxy_out[13];
    assign wire_4164 = lut_tile_3_5_chanxy_out[14];
    assign wire_4166 = lut_tile_3_5_chanxy_out[15];
    assign wire_4168 = lut_tile_3_5_chanxy_out[16];
    assign wire_4170 = lut_tile_3_5_chanxy_out[17];
    assign wire_4172 = lut_tile_3_5_chanxy_out[18];
    assign wire_4174 = lut_tile_3_5_chanxy_out[19];
    assign wire_4176 = lut_tile_3_5_chanxy_out[20];
    assign wire_4178 = lut_tile_3_5_chanxy_out[21];
    assign wire_4180 = lut_tile_3_5_chanxy_out[22];
    assign wire_4182 = lut_tile_3_5_chanxy_out[23];
    assign wire_6897 = lut_tile_3_5_chanxy_out[24];
    assign wire_6905 = lut_tile_3_5_chanxy_out[25];
    assign wire_6913 = lut_tile_3_5_chanxy_out[26];
    assign wire_6921 = lut_tile_3_5_chanxy_out[27];
    assign wire_6929 = lut_tile_3_5_chanxy_out[28];
    assign wire_6937 = lut_tile_3_5_chanxy_out[29];
    assign wire_6945 = lut_tile_3_5_chanxy_out[30];
    assign wire_6953 = lut_tile_3_5_chanxy_out[31];
    assign wire_6961 = lut_tile_3_5_chanxy_out[32];
    assign wire_6969 = lut_tile_3_5_chanxy_out[33];
    assign wire_6977 = lut_tile_3_5_chanxy_out[34];
    assign wire_6985 = lut_tile_3_5_chanxy_out[35];
    assign wire_7016 = lut_tile_3_5_chanxy_out[36];
    assign wire_7018 = lut_tile_3_5_chanxy_out[37];
    assign wire_7020 = lut_tile_3_5_chanxy_out[38];
    assign wire_7022 = lut_tile_3_5_chanxy_out[39];
    assign wire_7024 = lut_tile_3_5_chanxy_out[40];
    assign wire_7026 = lut_tile_3_5_chanxy_out[41];
    assign wire_7028 = lut_tile_3_5_chanxy_out[42];
    assign wire_7030 = lut_tile_3_5_chanxy_out[43];
    assign wire_7032 = lut_tile_3_5_chanxy_out[44];
    assign wire_7034 = lut_tile_3_5_chanxy_out[45];
    assign wire_7036 = lut_tile_3_5_chanxy_out[46];
    assign wire_7038 = lut_tile_3_5_chanxy_out[47];
   // CHANXY OUT
    assign lut_tile_3_6_chanxy_in = {wire_7248, wire_3945, wire_3943, wire_3942, wire_3935, wire_3934, wire_3927, wire_3926, wire_3850, wire_7240, wire_3967, wire_3939, wire_3938, wire_3931, wire_3930, wire_3923, wire_3922, wire_3852, wire_7232, wire_3965, wire_3915, wire_3914, wire_3907, wire_3906, wire_3899, wire_3898, wire_3854, wire_2329, wire_7224, wire_3963, wire_3891, wire_3890, wire_3883, wire_3882, wire_3875, wire_3874, wire_3856, wire_2329, wire_7216, wire_3961, wire_3919, wire_3918, wire_3911, wire_3910, wire_3903, wire_3902, wire_3858, wire_2329, wire_7208, wire_3959, wire_3895, wire_3894, wire_3887, wire_3886, wire_3879, wire_3878, wire_3860, wire_2329, wire_7200, wire_3957, wire_3941, wire_3940, wire_3933, wire_3932, wire_3925, wire_3924, wire_3862, wire_2329, wire_7192, wire_3955, wire_3937, wire_3936, wire_3929, wire_3928, wire_3921, wire_3920, wire_3864, wire_2027, wire_7184, wire_3953, wire_3913, wire_3912, wire_3905, wire_3904, wire_3897, wire_3896, wire_3866, wire_2027, wire_7176, wire_3951, wire_3889, wire_3888, wire_3881, wire_3880, wire_3873, wire_3872, wire_3868, wire_2027, wire_7168, wire_3949, wire_3917, wire_3916, wire_3909, wire_3908, wire_3901, wire_3900, wire_3870, wire_2027, wire_7160, wire_3947, wire_3893, wire_3892, wire_3885, wire_3884, wire_3877, wire_3876, wire_3848, wire_2027, wire_7327, wire_4231, wire_4183, wire_4182, wire_4175, wire_4174, wire_4167, wire_4166, wire_4112, wire_7325, wire_4209, wire_4179, wire_4178, wire_4171, wire_4170, wire_4163, wire_4162, wire_4134, wire_7323, wire_4211, wire_4155, wire_4154, wire_4147, wire_4146, wire_4139, wire_4138, wire_4132, wire_2329, wire_7321, wire_4213, wire_4203, wire_4202, wire_4195, wire_4194, wire_4187, wire_4186, wire_4130, wire_2329, wire_7319, wire_4215, wire_4159, wire_4158, wire_4151, wire_4150, wire_4143, wire_4142, wire_4128, wire_2329, wire_7317, wire_4217, wire_4207, wire_4206, wire_4199, wire_4198, wire_4191, wire_4190, wire_4126, wire_2329, wire_7315, wire_4219, wire_4181, wire_4180, wire_4173, wire_4172, wire_4165, wire_4164, wire_4124, wire_2329, wire_7313, wire_4221, wire_4177, wire_4176, wire_4169, wire_4168, wire_4161, wire_4160, wire_4122, wire_2027, wire_7311, wire_4223, wire_4153, wire_4152, wire_4145, wire_4144, wire_4137, wire_4136, wire_4120, wire_2027, wire_7309, wire_4225, wire_4201, wire_4200, wire_4193, wire_4192, wire_4185, wire_4184, wire_4118, wire_2027, wire_7307, wire_4227, wire_4157, wire_4156, wire_4149, wire_4148, wire_4141, wire_4140, wire_4116, wire_2027, wire_7305, wire_4229, wire_4205, wire_4204, wire_4197, wire_4196, wire_4189, wire_4188, wire_4114, wire_2027, wire_7061, wire_7039, wire_7038, wire_7031, wire_7030, wire_7023, wire_7022, wire_6984, wire_4110, wire_7059, wire_7035, wire_7034, wire_7027, wire_7026, wire_7019, wire_7018, wire_6896, wire_4108, wire_7057, wire_7011, wire_7010, wire_7003, wire_7002, wire_6995, wire_6994, wire_6904, wire_4106, wire_2054, wire_7055, wire_6971, wire_6970, wire_6939, wire_6938, wire_6912, wire_6907, wire_6906, wire_4104, wire_2054, wire_7053, wire_7015, wire_7014, wire_7007, wire_7006, wire_6999, wire_6998, wire_6920, wire_4102, wire_2054, wire_7051, wire_6987, wire_6986, wire_6955, wire_6954, wire_6928, wire_6923, wire_6922, wire_4100, wire_2054, wire_7049, wire_7037, wire_7036, wire_7029, wire_7028, wire_7021, wire_7020, wire_6936, wire_4098, wire_2054, wire_7047, wire_7033, wire_7032, wire_7025, wire_7024, wire_7017, wire_7016, wire_6944, wire_4096, wire_2026, wire_7045, wire_7009, wire_7008, wire_7001, wire_7000, wire_6993, wire_6992, wire_6952, wire_4094, wire_2026, wire_7043, wire_6963, wire_6962, wire_6960, wire_6931, wire_6930, wire_6899, wire_6898, wire_4092, wire_2026, wire_7041, wire_7013, wire_7012, wire_7005, wire_7004, wire_6997, wire_6996, wire_6968, wire_4090, wire_2026, wire_7063, wire_6979, wire_6978, wire_6976, wire_6947, wire_6946, wire_6915, wire_6914, wire_4088, wire_2026, wire_7307, wire_7279, wire_7278, wire_7271, wire_7270, wire_7263, wire_7262, wire_7242, wire_4231, wire_7309, wire_7275, wire_7274, wire_7267, wire_7266, wire_7259, wire_7258, wire_7234, wire_4229, wire_7311, wire_7237, wire_7236, wire_7226, wire_7205, wire_7204, wire_7173, wire_7172, wire_4227, wire_2054, wire_7313, wire_7299, wire_7298, wire_7291, wire_7290, wire_7283, wire_7282, wire_7218, wire_4225, wire_2054, wire_7315, wire_7253, wire_7252, wire_7221, wire_7220, wire_7210, wire_7189, wire_7188, wire_4223, wire_2054, wire_7317, wire_7303, wire_7302, wire_7295, wire_7294, wire_7287, wire_7286, wire_7202, wire_4221, wire_2054, wire_7319, wire_7277, wire_7276, wire_7269, wire_7268, wire_7261, wire_7260, wire_7194, wire_4219, wire_2054, wire_7321, wire_7273, wire_7272, wire_7265, wire_7264, wire_7257, wire_7256, wire_7186, wire_4217, wire_2026, wire_7323, wire_7229, wire_7228, wire_7197, wire_7196, wire_7178, wire_7165, wire_7164, wire_4215, wire_2026, wire_7325, wire_7297, wire_7296, wire_7289, wire_7288, wire_7281, wire_7280, wire_7170, wire_4213, wire_2026, wire_7327, wire_7245, wire_7244, wire_7213, wire_7212, wire_7181, wire_7180, wire_7162, wire_4211, wire_2026, wire_7305, wire_7301, wire_7300, wire_7293, wire_7292, wire_7285, wire_7284, wire_7250, wire_4209, wire_2026};
    // CHNAXY TOTAL: 472
    assign wire_4113 = lut_tile_3_6_chanxy_out[0];
    assign wire_4115 = lut_tile_3_6_chanxy_out[1];
    assign wire_4117 = lut_tile_3_6_chanxy_out[2];
    assign wire_4119 = lut_tile_3_6_chanxy_out[3];
    assign wire_4121 = lut_tile_3_6_chanxy_out[4];
    assign wire_4123 = lut_tile_3_6_chanxy_out[5];
    assign wire_4125 = lut_tile_3_6_chanxy_out[6];
    assign wire_4127 = lut_tile_3_6_chanxy_out[7];
    assign wire_4129 = lut_tile_3_6_chanxy_out[8];
    assign wire_4131 = lut_tile_3_6_chanxy_out[9];
    assign wire_4133 = lut_tile_3_6_chanxy_out[10];
    assign wire_4135 = lut_tile_3_6_chanxy_out[11];
    assign wire_4184 = lut_tile_3_6_chanxy_out[12];
    assign wire_4186 = lut_tile_3_6_chanxy_out[13];
    assign wire_4188 = lut_tile_3_6_chanxy_out[14];
    assign wire_4190 = lut_tile_3_6_chanxy_out[15];
    assign wire_4192 = lut_tile_3_6_chanxy_out[16];
    assign wire_4194 = lut_tile_3_6_chanxy_out[17];
    assign wire_4196 = lut_tile_3_6_chanxy_out[18];
    assign wire_4198 = lut_tile_3_6_chanxy_out[19];
    assign wire_4200 = lut_tile_3_6_chanxy_out[20];
    assign wire_4202 = lut_tile_3_6_chanxy_out[21];
    assign wire_4204 = lut_tile_3_6_chanxy_out[22];
    assign wire_4206 = lut_tile_3_6_chanxy_out[23];
    assign wire_7163 = lut_tile_3_6_chanxy_out[24];
    assign wire_7171 = lut_tile_3_6_chanxy_out[25];
    assign wire_7179 = lut_tile_3_6_chanxy_out[26];
    assign wire_7187 = lut_tile_3_6_chanxy_out[27];
    assign wire_7195 = lut_tile_3_6_chanxy_out[28];
    assign wire_7203 = lut_tile_3_6_chanxy_out[29];
    assign wire_7211 = lut_tile_3_6_chanxy_out[30];
    assign wire_7219 = lut_tile_3_6_chanxy_out[31];
    assign wire_7227 = lut_tile_3_6_chanxy_out[32];
    assign wire_7235 = lut_tile_3_6_chanxy_out[33];
    assign wire_7243 = lut_tile_3_6_chanxy_out[34];
    assign wire_7251 = lut_tile_3_6_chanxy_out[35];
    assign wire_7280 = lut_tile_3_6_chanxy_out[36];
    assign wire_7282 = lut_tile_3_6_chanxy_out[37];
    assign wire_7284 = lut_tile_3_6_chanxy_out[38];
    assign wire_7286 = lut_tile_3_6_chanxy_out[39];
    assign wire_7288 = lut_tile_3_6_chanxy_out[40];
    assign wire_7290 = lut_tile_3_6_chanxy_out[41];
    assign wire_7292 = lut_tile_3_6_chanxy_out[42];
    assign wire_7294 = lut_tile_3_6_chanxy_out[43];
    assign wire_7296 = lut_tile_3_6_chanxy_out[44];
    assign wire_7298 = lut_tile_3_6_chanxy_out[45];
    assign wire_7300 = lut_tile_3_6_chanxy_out[46];
    assign wire_7302 = lut_tile_3_6_chanxy_out[47];
   // CHANXY OUT
    assign lut_tile_3_7_chanxy_in = {wire_7514, wire_3969, wire_3939, wire_3938, wire_3931, wire_3930, wire_3923, wire_3922, wire_3874, wire_7506, wire_3991, wire_3943, wire_3942, wire_3935, wire_3934, wire_3927, wire_3926, wire_3876, wire_7498, wire_3989, wire_3915, wire_3914, wire_3907, wire_3906, wire_3899, wire_3898, wire_3878, wire_2633, wire_7490, wire_3987, wire_3919, wire_3918, wire_3911, wire_3910, wire_3903, wire_3902, wire_3880, wire_2633, wire_7482, wire_3985, wire_3963, wire_3962, wire_3955, wire_3954, wire_3947, wire_3946, wire_3882, wire_2633, wire_7474, wire_3983, wire_3967, wire_3966, wire_3959, wire_3958, wire_3951, wire_3950, wire_3884, wire_2633, wire_7466, wire_3981, wire_3937, wire_3936, wire_3929, wire_3928, wire_3921, wire_3920, wire_3886, wire_2633, wire_7458, wire_3979, wire_3941, wire_3940, wire_3933, wire_3932, wire_3925, wire_3924, wire_3888, wire_2331, wire_7450, wire_3977, wire_3913, wire_3912, wire_3905, wire_3904, wire_3897, wire_3896, wire_3890, wire_2331, wire_7442, wire_3975, wire_3917, wire_3916, wire_3909, wire_3908, wire_3901, wire_3900, wire_3892, wire_2331, wire_7434, wire_3973, wire_3961, wire_3960, wire_3953, wire_3952, wire_3945, wire_3944, wire_3894, wire_2331, wire_7426, wire_3971, wire_3965, wire_3964, wire_3957, wire_3956, wire_3949, wire_3948, wire_3872, wire_2331, wire_7591, wire_4255, wire_4179, wire_4178, wire_4171, wire_4170, wire_4163, wire_4162, wire_4136, wire_7589, wire_4233, wire_4183, wire_4182, wire_4175, wire_4174, wire_4167, wire_4166, wire_4158, wire_7587, wire_4235, wire_4227, wire_4226, wire_4219, wire_4218, wire_4211, wire_4210, wire_4156, wire_2633, wire_7585, wire_4237, wire_4231, wire_4230, wire_4223, wire_4222, wire_4215, wire_4214, wire_4154, wire_2633, wire_7583, wire_4239, wire_4203, wire_4202, wire_4195, wire_4194, wire_4187, wire_4186, wire_4152, wire_2633, wire_7581, wire_4241, wire_4207, wire_4206, wire_4199, wire_4198, wire_4191, wire_4190, wire_4150, wire_2633, wire_7579, wire_4243, wire_4177, wire_4176, wire_4169, wire_4168, wire_4161, wire_4160, wire_4148, wire_2633, wire_7577, wire_4245, wire_4181, wire_4180, wire_4173, wire_4172, wire_4165, wire_4164, wire_4146, wire_2331, wire_7575, wire_4247, wire_4225, wire_4224, wire_4217, wire_4216, wire_4209, wire_4208, wire_4144, wire_2331, wire_7573, wire_4249, wire_4229, wire_4228, wire_4221, wire_4220, wire_4213, wire_4212, wire_4142, wire_2331, wire_7571, wire_4251, wire_4201, wire_4200, wire_4193, wire_4192, wire_4185, wire_4184, wire_4140, wire_2331, wire_7569, wire_4253, wire_4205, wire_4204, wire_4197, wire_4196, wire_4189, wire_4188, wire_4138, wire_2331, wire_7325, wire_7275, wire_7274, wire_7267, wire_7266, wire_7259, wire_7258, wire_7250, wire_4134, wire_7323, wire_7279, wire_7278, wire_7271, wire_7270, wire_7263, wire_7262, wire_7162, wire_4132, wire_7321, wire_7237, wire_7236, wire_7205, wire_7204, wire_7173, wire_7172, wire_7170, wire_4130, wire_2358, wire_7319, wire_7253, wire_7252, wire_7221, wire_7220, wire_7189, wire_7188, wire_7178, wire_4128, wire_2358, wire_7317, wire_7299, wire_7298, wire_7291, wire_7290, wire_7283, wire_7282, wire_7186, wire_4126, wire_2358, wire_7315, wire_7303, wire_7302, wire_7295, wire_7294, wire_7287, wire_7286, wire_7194, wire_4124, wire_2358, wire_7313, wire_7273, wire_7272, wire_7265, wire_7264, wire_7257, wire_7256, wire_7202, wire_4122, wire_2358, wire_7311, wire_7277, wire_7276, wire_7269, wire_7268, wire_7261, wire_7260, wire_7210, wire_4120, wire_2330, wire_7309, wire_7229, wire_7228, wire_7218, wire_7197, wire_7196, wire_7165, wire_7164, wire_4118, wire_2330, wire_7307, wire_7245, wire_7244, wire_7226, wire_7213, wire_7212, wire_7181, wire_7180, wire_4116, wire_2330, wire_7305, wire_7297, wire_7296, wire_7289, wire_7288, wire_7281, wire_7280, wire_7234, wire_4114, wire_2330, wire_7327, wire_7301, wire_7300, wire_7293, wire_7292, wire_7285, wire_7284, wire_7242, wire_4112, wire_2330, wire_7571, wire_7508, wire_7503, wire_7502, wire_7471, wire_7470, wire_7439, wire_7438, wire_4255, wire_7573, wire_7519, wire_7518, wire_7500, wire_7487, wire_7486, wire_7455, wire_7454, wire_4253, wire_7575, wire_7563, wire_7562, wire_7555, wire_7554, wire_7547, wire_7546, wire_7492, wire_4251, wire_2358, wire_7577, wire_7567, wire_7566, wire_7559, wire_7558, wire_7551, wire_7550, wire_7484, wire_4249, wire_2358, wire_7579, wire_7539, wire_7538, wire_7531, wire_7530, wire_7523, wire_7522, wire_7476, wire_4247, wire_2358, wire_7581, wire_7543, wire_7542, wire_7535, wire_7534, wire_7527, wire_7526, wire_7468, wire_4245, wire_2358, wire_7583, wire_7495, wire_7494, wire_7463, wire_7462, wire_7460, wire_7431, wire_7430, wire_4243, wire_2358, wire_7585, wire_7511, wire_7510, wire_7479, wire_7478, wire_7452, wire_7447, wire_7446, wire_4241, wire_2330, wire_7587, wire_7561, wire_7560, wire_7553, wire_7552, wire_7545, wire_7544, wire_7444, wire_4239, wire_2330, wire_7589, wire_7565, wire_7564, wire_7557, wire_7556, wire_7549, wire_7548, wire_7436, wire_4237, wire_2330, wire_7591, wire_7537, wire_7536, wire_7529, wire_7528, wire_7521, wire_7520, wire_7428, wire_4235, wire_2330, wire_7569, wire_7541, wire_7540, wire_7533, wire_7532, wire_7525, wire_7524, wire_7516, wire_4233, wire_2330};
    // CHNAXY TOTAL: 472
    assign wire_4137 = lut_tile_3_7_chanxy_out[0];
    assign wire_4139 = lut_tile_3_7_chanxy_out[1];
    assign wire_4141 = lut_tile_3_7_chanxy_out[2];
    assign wire_4143 = lut_tile_3_7_chanxy_out[3];
    assign wire_4145 = lut_tile_3_7_chanxy_out[4];
    assign wire_4147 = lut_tile_3_7_chanxy_out[5];
    assign wire_4149 = lut_tile_3_7_chanxy_out[6];
    assign wire_4151 = lut_tile_3_7_chanxy_out[7];
    assign wire_4153 = lut_tile_3_7_chanxy_out[8];
    assign wire_4155 = lut_tile_3_7_chanxy_out[9];
    assign wire_4157 = lut_tile_3_7_chanxy_out[10];
    assign wire_4159 = lut_tile_3_7_chanxy_out[11];
    assign wire_4208 = lut_tile_3_7_chanxy_out[12];
    assign wire_4210 = lut_tile_3_7_chanxy_out[13];
    assign wire_4212 = lut_tile_3_7_chanxy_out[14];
    assign wire_4214 = lut_tile_3_7_chanxy_out[15];
    assign wire_4216 = lut_tile_3_7_chanxy_out[16];
    assign wire_4218 = lut_tile_3_7_chanxy_out[17];
    assign wire_4220 = lut_tile_3_7_chanxy_out[18];
    assign wire_4222 = lut_tile_3_7_chanxy_out[19];
    assign wire_4224 = lut_tile_3_7_chanxy_out[20];
    assign wire_4226 = lut_tile_3_7_chanxy_out[21];
    assign wire_4228 = lut_tile_3_7_chanxy_out[22];
    assign wire_4230 = lut_tile_3_7_chanxy_out[23];
    assign wire_7429 = lut_tile_3_7_chanxy_out[24];
    assign wire_7437 = lut_tile_3_7_chanxy_out[25];
    assign wire_7445 = lut_tile_3_7_chanxy_out[26];
    assign wire_7453 = lut_tile_3_7_chanxy_out[27];
    assign wire_7461 = lut_tile_3_7_chanxy_out[28];
    assign wire_7469 = lut_tile_3_7_chanxy_out[29];
    assign wire_7477 = lut_tile_3_7_chanxy_out[30];
    assign wire_7485 = lut_tile_3_7_chanxy_out[31];
    assign wire_7493 = lut_tile_3_7_chanxy_out[32];
    assign wire_7501 = lut_tile_3_7_chanxy_out[33];
    assign wire_7509 = lut_tile_3_7_chanxy_out[34];
    assign wire_7517 = lut_tile_3_7_chanxy_out[35];
    assign wire_7544 = lut_tile_3_7_chanxy_out[36];
    assign wire_7546 = lut_tile_3_7_chanxy_out[37];
    assign wire_7548 = lut_tile_3_7_chanxy_out[38];
    assign wire_7550 = lut_tile_3_7_chanxy_out[39];
    assign wire_7552 = lut_tile_3_7_chanxy_out[40];
    assign wire_7554 = lut_tile_3_7_chanxy_out[41];
    assign wire_7556 = lut_tile_3_7_chanxy_out[42];
    assign wire_7558 = lut_tile_3_7_chanxy_out[43];
    assign wire_7560 = lut_tile_3_7_chanxy_out[44];
    assign wire_7562 = lut_tile_3_7_chanxy_out[45];
    assign wire_7564 = lut_tile_3_7_chanxy_out[46];
    assign wire_7566 = lut_tile_3_7_chanxy_out[47];
   // CHANXY OUT
    assign lut_tile_3_8_chanxy_in = {wire_7780, wire_3942, wire_3936, wire_3930, wire_3924, wire_2955, wire_2946, wire_2940, wire_7772, wire_3918, wire_3912, wire_3906, wire_3900, wire_2952, wire_2946, wire_2940, wire_7764, wire_3990, wire_3984, wire_3978, wire_3972, wire_2952, wire_2946, wire_2937, wire_7756, wire_3966, wire_3960, wire_3954, wire_3948, wire_2958, wire_2952, wire_2946, wire_2937, wire_7748, wire_3940, wire_3934, wire_3928, wire_3922, wire_2958, wire_2952, wire_2943, wire_2937, wire_7740, wire_3916, wire_3910, wire_3904, wire_3898, wire_2958, wire_2952, wire_2943, wire_2937, wire_7732, wire_3988, wire_3982, wire_3976, wire_3970, wire_2958, wire_2949, wire_2943, wire_2937, wire_7724, wire_3964, wire_3958, wire_3952, wire_3946, wire_2958, wire_2949, wire_2943, wire_2635, wire_7716, wire_3938, wire_3932, wire_3926, wire_3920, wire_2955, wire_2949, wire_2943, wire_2635, wire_7708, wire_3914, wire_3908, wire_3902, wire_3896, wire_2955, wire_2949, wire_2940, wire_2635, wire_7700, wire_3986, wire_3980, wire_3974, wire_3968, wire_2955, wire_2949, wire_2940, wire_2635, wire_7692, wire_3962, wire_3956, wire_3950, wire_3944, wire_2955, wire_2946, wire_2940, wire_2635, wire_7855, wire_4182, wire_4176, wire_4170, wire_4164, wire_2955, wire_2946, wire_2940, wire_7853, wire_4254, wire_4248, wire_4242, wire_4236, wire_2952, wire_2946, wire_2940, wire_7851, wire_4230, wire_4224, wire_4218, wire_4212, wire_2952, wire_2946, wire_2937, wire_7849, wire_4206, wire_4200, wire_4194, wire_4188, wire_2958, wire_2952, wire_2946, wire_2937, wire_7847, wire_4180, wire_4174, wire_4168, wire_4162, wire_2958, wire_2952, wire_2943, wire_2937, wire_7845, wire_4252, wire_4246, wire_4240, wire_4234, wire_2958, wire_2952, wire_2943, wire_2937, wire_7843, wire_4228, wire_4222, wire_4216, wire_4210, wire_2958, wire_2949, wire_2943, wire_2937, wire_7841, wire_4204, wire_4198, wire_4192, wire_4186, wire_2958, wire_2949, wire_2943, wire_2635, wire_7839, wire_4178, wire_4172, wire_4166, wire_4160, wire_2955, wire_2949, wire_2943, wire_2635, wire_7837, wire_4250, wire_4244, wire_4238, wire_4232, wire_2955, wire_2949, wire_2940, wire_2635, wire_7835, wire_4226, wire_4220, wire_4214, wire_4208, wire_2955, wire_2949, wire_2940, wire_2635, wire_7833, wire_4202, wire_4196, wire_4190, wire_4184, wire_2955, wire_2946, wire_2940, wire_2635, wire_7819, wire_7818, wire_7589, wire_7516, wire_7503, wire_7502, wire_7471, wire_7470, wire_7439, wire_7438, wire_4158, wire_7831, wire_7830, wire_7587, wire_7563, wire_7562, wire_7555, wire_7554, wire_7547, wire_7546, wire_7428, wire_4156, wire_7793, wire_7792, wire_7585, wire_7519, wire_7518, wire_7487, wire_7486, wire_7455, wire_7454, wire_7436, wire_4154, wire_2662, wire_7829, wire_7828, wire_7583, wire_7567, wire_7566, wire_7559, wire_7558, wire_7551, wire_7550, wire_7444, wire_4152, wire_2662, wire_7815, wire_7814, wire_7581, wire_7543, wire_7542, wire_7535, wire_7534, wire_7527, wire_7526, wire_7452, wire_4150, wire_2662, wire_7803, wire_7802, wire_7579, wire_7539, wire_7538, wire_7531, wire_7530, wire_7523, wire_7522, wire_7460, wire_4148, wire_2662, wire_7813, wire_7812, wire_7577, wire_7495, wire_7494, wire_7468, wire_7463, wire_7462, wire_7431, wire_7430, wire_4146, wire_2662, wire_7825, wire_7824, wire_7575, wire_7561, wire_7560, wire_7553, wire_7552, wire_7545, wire_7544, wire_7476, wire_4144, wire_2634, wire_7787, wire_7786, wire_7573, wire_7511, wire_7510, wire_7484, wire_7479, wire_7478, wire_7447, wire_7446, wire_4142, wire_2634, wire_7823, wire_7822, wire_7571, wire_7565, wire_7564, wire_7557, wire_7556, wire_7549, wire_7548, wire_7492, wire_4140, wire_2634, wire_7809, wire_7808, wire_2662, wire_7569, wire_7541, wire_7540, wire_7533, wire_7532, wire_7525, wire_7524, wire_7500, wire_4138, wire_2634, wire_7797, wire_7796, wire_2634, wire_7591, wire_7537, wire_7536, wire_7529, wire_7528, wire_7521, wire_7520, wire_7508, wire_4136, wire_2634, wire_7855, wire_7782, wire_7841, wire_7726, wire_7721, wire_7720, wire_7839, wire_7718, wire_7851, wire_7766, wire_7761, wire_7760, wire_7849, wire_7758, wire_7835, wire_7702, wire_7697, wire_7696, wire_7833, wire_7694, wire_2662, wire_7845, wire_7742, wire_2662, wire_7737, wire_7736, wire_2634, wire_7795, wire_7794, wire_7817, wire_7816, wire_7777, wire_7776, wire_7805, wire_7804, wire_7827, wire_7826, wire_7713, wire_7712, wire_7789, wire_7788, wire_7811, wire_7810, wire_7753, wire_7752, wire_7799, wire_7798, wire_2662, wire_7821, wire_7820, wire_2634, wire_7689, wire_7688, wire_2634, wire_7843, wire_7734, wire_7729, wire_7728, wire_7807, wire_7806, wire_7853, wire_7774, wire_7769, wire_7768, wire_7791, wire_7790, wire_7837, wire_7710, wire_7705, wire_7704, wire_7801, wire_7800, wire_7847, wire_7750, wire_7745, wire_7744, wire_2662, wire_7785, wire_7784, wire_2634};
    // CHNAXY TOTAL: 434
    assign wire_4161 = lut_tile_3_8_chanxy_out[0];
    assign wire_4163 = lut_tile_3_8_chanxy_out[1];
    assign wire_4165 = lut_tile_3_8_chanxy_out[2];
    assign wire_4167 = lut_tile_3_8_chanxy_out[3];
    assign wire_4169 = lut_tile_3_8_chanxy_out[4];
    assign wire_4171 = lut_tile_3_8_chanxy_out[5];
    assign wire_4173 = lut_tile_3_8_chanxy_out[6];
    assign wire_4175 = lut_tile_3_8_chanxy_out[7];
    assign wire_4177 = lut_tile_3_8_chanxy_out[8];
    assign wire_4179 = lut_tile_3_8_chanxy_out[9];
    assign wire_4181 = lut_tile_3_8_chanxy_out[10];
    assign wire_4183 = lut_tile_3_8_chanxy_out[11];
    assign wire_4185 = lut_tile_3_8_chanxy_out[12];
    assign wire_4187 = lut_tile_3_8_chanxy_out[13];
    assign wire_4189 = lut_tile_3_8_chanxy_out[14];
    assign wire_4191 = lut_tile_3_8_chanxy_out[15];
    assign wire_4193 = lut_tile_3_8_chanxy_out[16];
    assign wire_4195 = lut_tile_3_8_chanxy_out[17];
    assign wire_4197 = lut_tile_3_8_chanxy_out[18];
    assign wire_4199 = lut_tile_3_8_chanxy_out[19];
    assign wire_4201 = lut_tile_3_8_chanxy_out[20];
    assign wire_4203 = lut_tile_3_8_chanxy_out[21];
    assign wire_4205 = lut_tile_3_8_chanxy_out[22];
    assign wire_4207 = lut_tile_3_8_chanxy_out[23];
    assign wire_4209 = lut_tile_3_8_chanxy_out[24];
    assign wire_4211 = lut_tile_3_8_chanxy_out[25];
    assign wire_4213 = lut_tile_3_8_chanxy_out[26];
    assign wire_4215 = lut_tile_3_8_chanxy_out[27];
    assign wire_4217 = lut_tile_3_8_chanxy_out[28];
    assign wire_4219 = lut_tile_3_8_chanxy_out[29];
    assign wire_4221 = lut_tile_3_8_chanxy_out[30];
    assign wire_4223 = lut_tile_3_8_chanxy_out[31];
    assign wire_4225 = lut_tile_3_8_chanxy_out[32];
    assign wire_4227 = lut_tile_3_8_chanxy_out[33];
    assign wire_4229 = lut_tile_3_8_chanxy_out[34];
    assign wire_4231 = lut_tile_3_8_chanxy_out[35];
    assign wire_4232 = lut_tile_3_8_chanxy_out[36];
    assign wire_4233 = lut_tile_3_8_chanxy_out[37];
    assign wire_4234 = lut_tile_3_8_chanxy_out[38];
    assign wire_4235 = lut_tile_3_8_chanxy_out[39];
    assign wire_4236 = lut_tile_3_8_chanxy_out[40];
    assign wire_4237 = lut_tile_3_8_chanxy_out[41];
    assign wire_4238 = lut_tile_3_8_chanxy_out[42];
    assign wire_4239 = lut_tile_3_8_chanxy_out[43];
    assign wire_4240 = lut_tile_3_8_chanxy_out[44];
    assign wire_4241 = lut_tile_3_8_chanxy_out[45];
    assign wire_4242 = lut_tile_3_8_chanxy_out[46];
    assign wire_4243 = lut_tile_3_8_chanxy_out[47];
    assign wire_4244 = lut_tile_3_8_chanxy_out[48];
    assign wire_4245 = lut_tile_3_8_chanxy_out[49];
    assign wire_4246 = lut_tile_3_8_chanxy_out[50];
    assign wire_4247 = lut_tile_3_8_chanxy_out[51];
    assign wire_4248 = lut_tile_3_8_chanxy_out[52];
    assign wire_4249 = lut_tile_3_8_chanxy_out[53];
    assign wire_4250 = lut_tile_3_8_chanxy_out[54];
    assign wire_4251 = lut_tile_3_8_chanxy_out[55];
    assign wire_4252 = lut_tile_3_8_chanxy_out[56];
    assign wire_4253 = lut_tile_3_8_chanxy_out[57];
    assign wire_4254 = lut_tile_3_8_chanxy_out[58];
    assign wire_4255 = lut_tile_3_8_chanxy_out[59];
    assign wire_7695 = lut_tile_3_8_chanxy_out[60];
    assign wire_7703 = lut_tile_3_8_chanxy_out[61];
    assign wire_7711 = lut_tile_3_8_chanxy_out[62];
    assign wire_7719 = lut_tile_3_8_chanxy_out[63];
    assign wire_7727 = lut_tile_3_8_chanxy_out[64];
    assign wire_7735 = lut_tile_3_8_chanxy_out[65];
    assign wire_7743 = lut_tile_3_8_chanxy_out[66];
    assign wire_7751 = lut_tile_3_8_chanxy_out[67];
    assign wire_7759 = lut_tile_3_8_chanxy_out[68];
    assign wire_7767 = lut_tile_3_8_chanxy_out[69];
    assign wire_7775 = lut_tile_3_8_chanxy_out[70];
    assign wire_7783 = lut_tile_3_8_chanxy_out[71];
    assign wire_7808 = lut_tile_3_8_chanxy_out[72];
    assign wire_7810 = lut_tile_3_8_chanxy_out[73];
    assign wire_7812 = lut_tile_3_8_chanxy_out[74];
    assign wire_7814 = lut_tile_3_8_chanxy_out[75];
    assign wire_7816 = lut_tile_3_8_chanxy_out[76];
    assign wire_7818 = lut_tile_3_8_chanxy_out[77];
    assign wire_7820 = lut_tile_3_8_chanxy_out[78];
    assign wire_7822 = lut_tile_3_8_chanxy_out[79];
    assign wire_7824 = lut_tile_3_8_chanxy_out[80];
    assign wire_7826 = lut_tile_3_8_chanxy_out[81];
    assign wire_7828 = lut_tile_3_8_chanxy_out[82];
    assign wire_7830 = lut_tile_3_8_chanxy_out[83];
   // CHANXY OUT
    assign lut_tile_4_1_chanxy_in = {wire_5928, wire_4089, wire_4087, wire_4086, wire_4055, wire_4054, wire_4023, wire_4022, wire_4000, wire_5920, wire_4111, wire_4071, wire_4070, wire_4039, wire_4038, wire_4008, wire_4007, wire_4006, wire_5912, wire_4109, wire_4069, wire_4068, wire_4037, wire_4036, wire_4016, wire_4005, wire_4004, wire_835, wire_5904, wire_4107, wire_4067, wire_4066, wire_4035, wire_4034, wire_4024, wire_4003, wire_4002, wire_835, wire_5896, wire_4105, wire_4085, wire_4084, wire_4053, wire_4052, wire_4032, wire_4021, wire_4020, wire_835, wire_5888, wire_4103, wire_4083, wire_4082, wire_4051, wire_4050, wire_4040, wire_4019, wire_4018, wire_835, wire_5880, wire_4101, wire_4079, wire_4078, wire_4048, wire_4047, wire_4046, wire_4015, wire_4014, wire_835, wire_5872, wire_4099, wire_4063, wire_4062, wire_4056, wire_4031, wire_4030, wire_3999, wire_3998, wire_533, wire_5864, wire_4097, wire_4064, wire_4061, wire_4060, wire_4029, wire_4028, wire_3997, wire_3996, wire_533, wire_5856, wire_4095, wire_4072, wire_4059, wire_4058, wire_4027, wire_4026, wire_3995, wire_3994, wire_533, wire_5848, wire_4093, wire_4080, wire_4077, wire_4076, wire_4045, wire_4044, wire_4013, wire_4012, wire_533, wire_5840, wire_4091, wire_4075, wire_4074, wire_4043, wire_4042, wire_4011, wire_4010, wire_3992, wire_533, wire_6031, wire_4375, wire_4351, wire_4350, wire_4319, wire_4318, wire_4287, wire_4286, wire_4258, wire_6029, wire_4353, wire_4346, wire_4335, wire_4334, wire_4303, wire_4302, wire_4271, wire_4270, wire_6027, wire_4355, wire_4338, wire_4333, wire_4332, wire_4301, wire_4300, wire_4269, wire_4268, wire_835, wire_6025, wire_4357, wire_4330, wire_4329, wire_4328, wire_4297, wire_4296, wire_4265, wire_4264, wire_835, wire_6023, wire_4359, wire_4349, wire_4348, wire_4322, wire_4317, wire_4316, wire_4285, wire_4284, wire_835, wire_6021, wire_4361, wire_4345, wire_4344, wire_4314, wire_4313, wire_4312, wire_4281, wire_4280, wire_835, wire_6019, wire_4363, wire_4343, wire_4342, wire_4311, wire_4310, wire_4306, wire_4279, wire_4278, wire_835, wire_6017, wire_4365, wire_4327, wire_4326, wire_4298, wire_4295, wire_4294, wire_4263, wire_4262, wire_533, wire_6015, wire_4367, wire_4325, wire_4324, wire_4293, wire_4292, wire_4290, wire_4261, wire_4260, wire_533, wire_6013, wire_4369, wire_4321, wire_4320, wire_4289, wire_4288, wire_4282, wire_4257, wire_4256, wire_533, wire_6011, wire_4371, wire_4341, wire_4340, wire_4309, wire_4308, wire_4277, wire_4276, wire_4274, wire_533, wire_6009, wire_4373, wire_4337, wire_4336, wire_4305, wire_4304, wire_4273, wire_4272, wire_4266, wire_533, wire_5743, wire_5742, wire_5731, wire_5730, wire_6011, wire_5983, wire_5982, wire_5975, wire_5974, wire_5967, wire_5966, wire_5922, wire_4375, wire_5707, wire_5706, wire_5719, wire_5718, wire_5683, wire_5682, wire_5755, wire_5616, wire_6013, wire_5979, wire_5978, wire_5971, wire_5970, wire_5963, wire_5962, wire_5914, wire_4373, wire_5695, wire_5694, wire_5729, wire_5728, wire_5705, wire_5704, wire_5767, wire_5664, wire_6015, wire_5955, wire_5954, wire_5947, wire_5946, wire_5939, wire_5938, wire_5906, wire_4371, wire_560, wire_5681, wire_5680, wire_5753, wire_5608, wire_5727, wire_5726, wire_5741, wire_5740, wire_6017, wire_6003, wire_6002, wire_5995, wire_5994, wire_5987, wire_5986, wire_5898, wire_4369, wire_560, wire_5717, wire_5716, wire_5703, wire_5702, wire_5693, wire_5692, wire_5765, wire_5656, wire_6019, wire_5959, wire_5958, wire_5951, wire_5950, wire_5943, wire_5942, wire_5890, wire_4367, wire_560, wire_5679, wire_5678, wire_5739, wire_5738, wire_5715, wire_5714, wire_5751, wire_5600, wire_6021, wire_6007, wire_6006, wire_5999, wire_5998, wire_5991, wire_5990, wire_5882, wire_4365, wire_560, wire_5691, wire_5690, wire_5763, wire_5648, wire_5737, wire_5736, wire_5725, wire_5724, wire_6023, wire_5981, wire_5980, wire_5973, wire_5972, wire_5965, wire_5964, wire_5874, wire_4363, wire_560, wire_5701, wire_5700, wire_5713, wire_5712, wire_5677, wire_5676, wire_5749, wire_5592, wire_6025, wire_5977, wire_5976, wire_5969, wire_5968, wire_5961, wire_5960, wire_5866, wire_4361, wire_532, wire_5689, wire_5688, wire_5723, wire_5722, wire_5699, wire_5698, wire_5761, wire_5640, wire_6027, wire_5953, wire_5952, wire_5945, wire_5944, wire_5937, wire_5936, wire_5858, wire_4359, wire_532, wire_5675, wire_5674, wire_5747, wire_5584, wire_5721, wire_5720, wire_5735, wire_5734, wire_6029, wire_6001, wire_6000, wire_5993, wire_5992, wire_5985, wire_5984, wire_5850, wire_4357, wire_532, wire_5711, wire_5710, wire_560, wire_5697, wire_5696, wire_560, wire_5687, wire_5686, wire_560, wire_5759, wire_5632, wire_560, wire_6031, wire_5957, wire_5956, wire_5949, wire_5948, wire_5941, wire_5940, wire_5842, wire_4355, wire_532, wire_5673, wire_5672, wire_560, wire_5733, wire_5732, wire_532, wire_5709, wire_5708, wire_532, wire_5745, wire_5576, wire_532, wire_6009, wire_6005, wire_6004, wire_5997, wire_5996, wire_5989, wire_5988, wire_5930, wire_4353, wire_532, wire_5685, wire_5684, wire_532, wire_5757, wire_5624, wire_532};
    // CHNAXY TOTAL: 460
    assign wire_4256 = lut_tile_4_1_chanxy_out[0];
    assign wire_4258 = lut_tile_4_1_chanxy_out[1];
    assign wire_4259 = lut_tile_4_1_chanxy_out[2];
    assign wire_4260 = lut_tile_4_1_chanxy_out[3];
    assign wire_4262 = lut_tile_4_1_chanxy_out[4];
    assign wire_4264 = lut_tile_4_1_chanxy_out[5];
    assign wire_4266 = lut_tile_4_1_chanxy_out[6];
    assign wire_4267 = lut_tile_4_1_chanxy_out[7];
    assign wire_4268 = lut_tile_4_1_chanxy_out[8];
    assign wire_4270 = lut_tile_4_1_chanxy_out[9];
    assign wire_4272 = lut_tile_4_1_chanxy_out[10];
    assign wire_4274 = lut_tile_4_1_chanxy_out[11];
    assign wire_4275 = lut_tile_4_1_chanxy_out[12];
    assign wire_4276 = lut_tile_4_1_chanxy_out[13];
    assign wire_4278 = lut_tile_4_1_chanxy_out[14];
    assign wire_4280 = lut_tile_4_1_chanxy_out[15];
    assign wire_4282 = lut_tile_4_1_chanxy_out[16];
    assign wire_4283 = lut_tile_4_1_chanxy_out[17];
    assign wire_4284 = lut_tile_4_1_chanxy_out[18];
    assign wire_4286 = lut_tile_4_1_chanxy_out[19];
    assign wire_4288 = lut_tile_4_1_chanxy_out[20];
    assign wire_4290 = lut_tile_4_1_chanxy_out[21];
    assign wire_4291 = lut_tile_4_1_chanxy_out[22];
    assign wire_4292 = lut_tile_4_1_chanxy_out[23];
    assign wire_4294 = lut_tile_4_1_chanxy_out[24];
    assign wire_4296 = lut_tile_4_1_chanxy_out[25];
    assign wire_4298 = lut_tile_4_1_chanxy_out[26];
    assign wire_4299 = lut_tile_4_1_chanxy_out[27];
    assign wire_4300 = lut_tile_4_1_chanxy_out[28];
    assign wire_4302 = lut_tile_4_1_chanxy_out[29];
    assign wire_4304 = lut_tile_4_1_chanxy_out[30];
    assign wire_4306 = lut_tile_4_1_chanxy_out[31];
    assign wire_4307 = lut_tile_4_1_chanxy_out[32];
    assign wire_4308 = lut_tile_4_1_chanxy_out[33];
    assign wire_4310 = lut_tile_4_1_chanxy_out[34];
    assign wire_4312 = lut_tile_4_1_chanxy_out[35];
    assign wire_4314 = lut_tile_4_1_chanxy_out[36];
    assign wire_4315 = lut_tile_4_1_chanxy_out[37];
    assign wire_4316 = lut_tile_4_1_chanxy_out[38];
    assign wire_4318 = lut_tile_4_1_chanxy_out[39];
    assign wire_4320 = lut_tile_4_1_chanxy_out[40];
    assign wire_4322 = lut_tile_4_1_chanxy_out[41];
    assign wire_4323 = lut_tile_4_1_chanxy_out[42];
    assign wire_4324 = lut_tile_4_1_chanxy_out[43];
    assign wire_4326 = lut_tile_4_1_chanxy_out[44];
    assign wire_4328 = lut_tile_4_1_chanxy_out[45];
    assign wire_4330 = lut_tile_4_1_chanxy_out[46];
    assign wire_4331 = lut_tile_4_1_chanxy_out[47];
    assign wire_4332 = lut_tile_4_1_chanxy_out[48];
    assign wire_4334 = lut_tile_4_1_chanxy_out[49];
    assign wire_4336 = lut_tile_4_1_chanxy_out[50];
    assign wire_4338 = lut_tile_4_1_chanxy_out[51];
    assign wire_4339 = lut_tile_4_1_chanxy_out[52];
    assign wire_4340 = lut_tile_4_1_chanxy_out[53];
    assign wire_4342 = lut_tile_4_1_chanxy_out[54];
    assign wire_4344 = lut_tile_4_1_chanxy_out[55];
    assign wire_4346 = lut_tile_4_1_chanxy_out[56];
    assign wire_4347 = lut_tile_4_1_chanxy_out[57];
    assign wire_4348 = lut_tile_4_1_chanxy_out[58];
    assign wire_4350 = lut_tile_4_1_chanxy_out[59];
    assign wire_5843 = lut_tile_4_1_chanxy_out[60];
    assign wire_5851 = lut_tile_4_1_chanxy_out[61];
    assign wire_5859 = lut_tile_4_1_chanxy_out[62];
    assign wire_5867 = lut_tile_4_1_chanxy_out[63];
    assign wire_5875 = lut_tile_4_1_chanxy_out[64];
    assign wire_5883 = lut_tile_4_1_chanxy_out[65];
    assign wire_5891 = lut_tile_4_1_chanxy_out[66];
    assign wire_5899 = lut_tile_4_1_chanxy_out[67];
    assign wire_5907 = lut_tile_4_1_chanxy_out[68];
    assign wire_5915 = lut_tile_4_1_chanxy_out[69];
    assign wire_5923 = lut_tile_4_1_chanxy_out[70];
    assign wire_5931 = lut_tile_4_1_chanxy_out[71];
    assign wire_5984 = lut_tile_4_1_chanxy_out[72];
    assign wire_5986 = lut_tile_4_1_chanxy_out[73];
    assign wire_5988 = lut_tile_4_1_chanxy_out[74];
    assign wire_5990 = lut_tile_4_1_chanxy_out[75];
    assign wire_5992 = lut_tile_4_1_chanxy_out[76];
    assign wire_5994 = lut_tile_4_1_chanxy_out[77];
    assign wire_5996 = lut_tile_4_1_chanxy_out[78];
    assign wire_5998 = lut_tile_4_1_chanxy_out[79];
    assign wire_6000 = lut_tile_4_1_chanxy_out[80];
    assign wire_6002 = lut_tile_4_1_chanxy_out[81];
    assign wire_6004 = lut_tile_4_1_chanxy_out[82];
    assign wire_6006 = lut_tile_4_1_chanxy_out[83];
   // CHANXY OUT
    assign lut_tile_4_2_chanxy_in = {wire_6194, wire_4113, wire_4071, wire_4070, wire_4039, wire_4038, wire_4007, wire_4006, wire_4002, wire_6186, wire_4135, wire_4087, wire_4086, wire_4055, wire_4054, wire_4023, wire_4022, wire_4010, wire_6178, wire_4133, wire_4069, wire_4068, wire_4037, wire_4036, wire_4018, wire_4005, wire_4004, wire_1139, wire_6170, wire_4131, wire_4085, wire_4084, wire_4053, wire_4052, wire_4026, wire_4021, wire_4020, wire_1139, wire_6162, wire_4129, wire_4107, wire_4106, wire_4099, wire_4098, wire_4091, wire_4090, wire_4034, wire_1139, wire_6154, wire_4127, wire_4111, wire_4110, wire_4103, wire_4102, wire_4095, wire_4094, wire_4042, wire_1139, wire_6146, wire_4125, wire_4063, wire_4062, wire_4050, wire_4031, wire_4030, wire_3999, wire_3998, wire_1139, wire_6138, wire_4123, wire_4079, wire_4078, wire_4058, wire_4047, wire_4046, wire_4015, wire_4014, wire_837, wire_6130, wire_4121, wire_4066, wire_4061, wire_4060, wire_4029, wire_4028, wire_3997, wire_3996, wire_837, wire_6122, wire_4119, wire_4077, wire_4076, wire_4074, wire_4045, wire_4044, wire_4013, wire_4012, wire_837, wire_6114, wire_4117, wire_4105, wire_4104, wire_4097, wire_4096, wire_4089, wire_4088, wire_4082, wire_837, wire_6106, wire_4115, wire_4109, wire_4108, wire_4101, wire_4100, wire_4093, wire_4092, wire_3994, wire_837, wire_6295, wire_4399, wire_4335, wire_4334, wire_4303, wire_4302, wire_4271, wire_4270, wire_4260, wire_6293, wire_4377, wire_4351, wire_4350, wire_4348, wire_4319, wire_4318, wire_4287, wire_4286, wire_6291, wire_4379, wire_4371, wire_4370, wire_4363, wire_4362, wire_4355, wire_4354, wire_4340, wire_1139, wire_6289, wire_4381, wire_4375, wire_4374, wire_4367, wire_4366, wire_4359, wire_4358, wire_4332, wire_1139, wire_6287, wire_4383, wire_4329, wire_4328, wire_4324, wire_4297, wire_4296, wire_4265, wire_4264, wire_1139, wire_6285, wire_4385, wire_4345, wire_4344, wire_4316, wire_4313, wire_4312, wire_4281, wire_4280, wire_1139, wire_6283, wire_4387, wire_4327, wire_4326, wire_4308, wire_4295, wire_4294, wire_4263, wire_4262, wire_1139, wire_6281, wire_4389, wire_4343, wire_4342, wire_4311, wire_4310, wire_4300, wire_4279, wire_4278, wire_837, wire_6279, wire_4391, wire_4369, wire_4368, wire_4361, wire_4360, wire_4353, wire_4352, wire_4292, wire_837, wire_6277, wire_4393, wire_4373, wire_4372, wire_4365, wire_4364, wire_4357, wire_4356, wire_4284, wire_837, wire_6275, wire_4395, wire_4321, wire_4320, wire_4289, wire_4288, wire_4276, wire_4257, wire_4256, wire_837, wire_6273, wire_4397, wire_4337, wire_4336, wire_4305, wire_4304, wire_4273, wire_4272, wire_4268, wire_837, wire_6029, wire_5979, wire_5978, wire_5971, wire_5970, wire_5963, wire_5962, wire_5930, wire_4346, wire_6027, wire_5983, wire_5982, wire_5975, wire_5974, wire_5967, wire_5966, wire_5842, wire_4338, wire_6025, wire_5955, wire_5954, wire_5947, wire_5946, wire_5939, wire_5938, wire_5850, wire_4330, wire_864, wire_6023, wire_5959, wire_5958, wire_5951, wire_5950, wire_5943, wire_5942, wire_5858, wire_4322, wire_864, wire_6021, wire_6003, wire_6002, wire_5995, wire_5994, wire_5987, wire_5986, wire_5866, wire_4314, wire_864, wire_6019, wire_6007, wire_6006, wire_5999, wire_5998, wire_5991, wire_5990, wire_5874, wire_4306, wire_864, wire_6017, wire_5977, wire_5976, wire_5969, wire_5968, wire_5961, wire_5960, wire_5882, wire_4298, wire_864, wire_6015, wire_5981, wire_5980, wire_5973, wire_5972, wire_5965, wire_5964, wire_5890, wire_4290, wire_836, wire_6013, wire_5953, wire_5952, wire_5945, wire_5944, wire_5937, wire_5936, wire_5898, wire_4282, wire_836, wire_6011, wire_5957, wire_5956, wire_5949, wire_5948, wire_5941, wire_5940, wire_5906, wire_4274, wire_836, wire_6009, wire_6001, wire_6000, wire_5993, wire_5992, wire_5985, wire_5984, wire_5914, wire_4266, wire_836, wire_6031, wire_6005, wire_6004, wire_5997, wire_5996, wire_5989, wire_5988, wire_5922, wire_4258, wire_836, wire_6275, wire_6219, wire_6218, wire_6211, wire_6210, wire_6203, wire_6202, wire_6188, wire_4399, wire_6277, wire_6223, wire_6222, wire_6215, wire_6214, wire_6207, wire_6206, wire_6180, wire_4397, wire_6279, wire_6267, wire_6266, wire_6259, wire_6258, wire_6251, wire_6250, wire_6172, wire_4395, wire_864, wire_6281, wire_6271, wire_6270, wire_6263, wire_6262, wire_6255, wire_6254, wire_6164, wire_4393, wire_864, wire_6283, wire_6243, wire_6242, wire_6235, wire_6234, wire_6227, wire_6226, wire_6156, wire_4391, wire_864, wire_6285, wire_6247, wire_6246, wire_6239, wire_6238, wire_6231, wire_6230, wire_6148, wire_4389, wire_864, wire_6287, wire_6217, wire_6216, wire_6209, wire_6208, wire_6201, wire_6200, wire_6140, wire_4387, wire_864, wire_6289, wire_6221, wire_6220, wire_6213, wire_6212, wire_6205, wire_6204, wire_6132, wire_4385, wire_836, wire_6291, wire_6265, wire_6264, wire_6257, wire_6256, wire_6249, wire_6248, wire_6124, wire_4383, wire_836, wire_6293, wire_6269, wire_6268, wire_6261, wire_6260, wire_6253, wire_6252, wire_6116, wire_4381, wire_836, wire_6295, wire_6241, wire_6240, wire_6233, wire_6232, wire_6225, wire_6224, wire_6108, wire_4379, wire_836, wire_6273, wire_6245, wire_6244, wire_6237, wire_6236, wire_6229, wire_6228, wire_6196, wire_4377, wire_836};
    // CHNAXY TOTAL: 472
    assign wire_4261 = lut_tile_4_2_chanxy_out[0];
    assign wire_4269 = lut_tile_4_2_chanxy_out[1];
    assign wire_4277 = lut_tile_4_2_chanxy_out[2];
    assign wire_4285 = lut_tile_4_2_chanxy_out[3];
    assign wire_4293 = lut_tile_4_2_chanxy_out[4];
    assign wire_4301 = lut_tile_4_2_chanxy_out[5];
    assign wire_4309 = lut_tile_4_2_chanxy_out[6];
    assign wire_4317 = lut_tile_4_2_chanxy_out[7];
    assign wire_4325 = lut_tile_4_2_chanxy_out[8];
    assign wire_4333 = lut_tile_4_2_chanxy_out[9];
    assign wire_4341 = lut_tile_4_2_chanxy_out[10];
    assign wire_4349 = lut_tile_4_2_chanxy_out[11];
    assign wire_4352 = lut_tile_4_2_chanxy_out[12];
    assign wire_4354 = lut_tile_4_2_chanxy_out[13];
    assign wire_4356 = lut_tile_4_2_chanxy_out[14];
    assign wire_4358 = lut_tile_4_2_chanxy_out[15];
    assign wire_4360 = lut_tile_4_2_chanxy_out[16];
    assign wire_4362 = lut_tile_4_2_chanxy_out[17];
    assign wire_4364 = lut_tile_4_2_chanxy_out[18];
    assign wire_4366 = lut_tile_4_2_chanxy_out[19];
    assign wire_4368 = lut_tile_4_2_chanxy_out[20];
    assign wire_4370 = lut_tile_4_2_chanxy_out[21];
    assign wire_4372 = lut_tile_4_2_chanxy_out[22];
    assign wire_4374 = lut_tile_4_2_chanxy_out[23];
    assign wire_6109 = lut_tile_4_2_chanxy_out[24];
    assign wire_6117 = lut_tile_4_2_chanxy_out[25];
    assign wire_6125 = lut_tile_4_2_chanxy_out[26];
    assign wire_6133 = lut_tile_4_2_chanxy_out[27];
    assign wire_6141 = lut_tile_4_2_chanxy_out[28];
    assign wire_6149 = lut_tile_4_2_chanxy_out[29];
    assign wire_6157 = lut_tile_4_2_chanxy_out[30];
    assign wire_6165 = lut_tile_4_2_chanxy_out[31];
    assign wire_6173 = lut_tile_4_2_chanxy_out[32];
    assign wire_6181 = lut_tile_4_2_chanxy_out[33];
    assign wire_6189 = lut_tile_4_2_chanxy_out[34];
    assign wire_6197 = lut_tile_4_2_chanxy_out[35];
    assign wire_6248 = lut_tile_4_2_chanxy_out[36];
    assign wire_6250 = lut_tile_4_2_chanxy_out[37];
    assign wire_6252 = lut_tile_4_2_chanxy_out[38];
    assign wire_6254 = lut_tile_4_2_chanxy_out[39];
    assign wire_6256 = lut_tile_4_2_chanxy_out[40];
    assign wire_6258 = lut_tile_4_2_chanxy_out[41];
    assign wire_6260 = lut_tile_4_2_chanxy_out[42];
    assign wire_6262 = lut_tile_4_2_chanxy_out[43];
    assign wire_6264 = lut_tile_4_2_chanxy_out[44];
    assign wire_6266 = lut_tile_4_2_chanxy_out[45];
    assign wire_6268 = lut_tile_4_2_chanxy_out[46];
    assign wire_6270 = lut_tile_4_2_chanxy_out[47];
   // CHANXY OUT
    assign lut_tile_4_3_chanxy_in = {wire_6460, wire_4137, wire_4071, wire_4070, wire_4039, wire_4038, wire_4007, wire_4006, wire_4004, wire_6452, wire_4159, wire_4131, wire_4130, wire_4123, wire_4122, wire_4115, wire_4114, wire_4012, wire_6444, wire_4157, wire_4087, wire_4086, wire_4055, wire_4054, wire_4023, wire_4022, wire_4020, wire_1443, wire_6436, wire_4155, wire_4135, wire_4134, wire_4127, wire_4126, wire_4119, wire_4118, wire_4028, wire_1443, wire_6428, wire_4153, wire_4111, wire_4110, wire_4103, wire_4102, wire_4095, wire_4094, wire_4036, wire_1443, wire_6420, wire_4151, wire_4107, wire_4106, wire_4099, wire_4098, wire_4091, wire_4090, wire_4044, wire_1443, wire_6412, wire_4149, wire_4063, wire_4062, wire_4052, wire_4031, wire_4030, wire_3999, wire_3998, wire_1443, wire_6404, wire_4147, wire_4129, wire_4128, wire_4121, wire_4120, wire_4113, wire_4112, wire_4060, wire_1141, wire_6396, wire_4145, wire_4079, wire_4078, wire_4068, wire_4047, wire_4046, wire_4015, wire_4014, wire_1141, wire_6388, wire_4143, wire_4133, wire_4132, wire_4125, wire_4124, wire_4117, wire_4116, wire_4076, wire_1141, wire_6380, wire_4141, wire_4109, wire_4108, wire_4101, wire_4100, wire_4093, wire_4092, wire_4084, wire_1141, wire_6372, wire_4139, wire_4105, wire_4104, wire_4097, wire_4096, wire_4089, wire_4088, wire_3996, wire_1141, wire_6559, wire_4423, wire_4395, wire_4394, wire_4387, wire_4386, wire_4379, wire_4378, wire_4262, wire_6557, wire_4401, wire_4371, wire_4370, wire_4363, wire_4362, wire_4355, wire_4354, wire_4350, wire_6555, wire_4403, wire_4399, wire_4398, wire_4391, wire_4390, wire_4383, wire_4382, wire_4342, wire_1443, wire_6553, wire_4405, wire_4375, wire_4374, wire_4367, wire_4366, wire_4359, wire_4358, wire_4334, wire_1443, wire_6551, wire_4407, wire_4345, wire_4344, wire_4326, wire_4313, wire_4312, wire_4281, wire_4280, wire_1443, wire_6549, wire_4409, wire_4329, wire_4328, wire_4318, wire_4297, wire_4296, wire_4265, wire_4264, wire_1443, wire_6547, wire_4411, wire_4393, wire_4392, wire_4385, wire_4384, wire_4377, wire_4376, wire_4310, wire_1443, wire_6545, wire_4413, wire_4369, wire_4368, wire_4361, wire_4360, wire_4353, wire_4352, wire_4302, wire_1141, wire_6543, wire_4415, wire_4397, wire_4396, wire_4389, wire_4388, wire_4381, wire_4380, wire_4294, wire_1141, wire_6541, wire_4417, wire_4373, wire_4372, wire_4365, wire_4364, wire_4357, wire_4356, wire_4286, wire_1141, wire_6539, wire_4419, wire_4337, wire_4336, wire_4305, wire_4304, wire_4278, wire_4273, wire_4272, wire_1141, wire_6537, wire_4421, wire_4321, wire_4320, wire_4289, wire_4288, wire_4270, wire_4257, wire_4256, wire_1141, wire_6293, wire_6219, wire_6218, wire_6211, wire_6210, wire_6203, wire_6202, wire_6196, wire_4348, wire_6291, wire_6267, wire_6266, wire_6259, wire_6258, wire_6251, wire_6250, wire_6108, wire_4340, wire_6289, wire_6223, wire_6222, wire_6215, wire_6214, wire_6207, wire_6206, wire_6116, wire_4332, wire_1168, wire_6287, wire_6271, wire_6270, wire_6263, wire_6262, wire_6255, wire_6254, wire_6124, wire_4324, wire_1168, wire_6285, wire_6247, wire_6246, wire_6239, wire_6238, wire_6231, wire_6230, wire_6132, wire_4316, wire_1168, wire_6283, wire_6243, wire_6242, wire_6235, wire_6234, wire_6227, wire_6226, wire_6140, wire_4308, wire_1168, wire_6281, wire_6217, wire_6216, wire_6209, wire_6208, wire_6201, wire_6200, wire_6148, wire_4300, wire_1168, wire_6279, wire_6265, wire_6264, wire_6257, wire_6256, wire_6249, wire_6248, wire_6156, wire_4292, wire_1140, wire_6277, wire_6221, wire_6220, wire_6213, wire_6212, wire_6205, wire_6204, wire_6164, wire_4284, wire_1140, wire_6275, wire_6269, wire_6268, wire_6261, wire_6260, wire_6253, wire_6252, wire_6172, wire_4276, wire_1140, wire_6273, wire_6245, wire_6244, wire_6237, wire_6236, wire_6229, wire_6228, wire_6180, wire_4268, wire_1140, wire_6295, wire_6241, wire_6240, wire_6233, wire_6232, wire_6225, wire_6224, wire_6188, wire_4260, wire_1140, wire_6539, wire_6531, wire_6530, wire_6523, wire_6522, wire_6515, wire_6514, wire_6454, wire_4423, wire_6541, wire_6507, wire_6506, wire_6499, wire_6498, wire_6491, wire_6490, wire_6446, wire_4421, wire_6543, wire_6535, wire_6534, wire_6527, wire_6526, wire_6519, wire_6518, wire_6438, wire_4419, wire_1168, wire_6545, wire_6511, wire_6510, wire_6503, wire_6502, wire_6495, wire_6494, wire_6430, wire_4417, wire_1168, wire_6547, wire_6487, wire_6486, wire_6479, wire_6478, wire_6471, wire_6470, wire_6422, wire_4415, wire_1168, wire_6549, wire_6483, wire_6482, wire_6475, wire_6474, wire_6467, wire_6466, wire_6414, wire_4413, wire_1168, wire_6551, wire_6529, wire_6528, wire_6521, wire_6520, wire_6513, wire_6512, wire_6406, wire_4411, wire_1168, wire_6553, wire_6505, wire_6504, wire_6497, wire_6496, wire_6489, wire_6488, wire_6398, wire_4409, wire_1140, wire_6555, wire_6533, wire_6532, wire_6525, wire_6524, wire_6517, wire_6516, wire_6390, wire_4407, wire_1140, wire_6557, wire_6509, wire_6508, wire_6501, wire_6500, wire_6493, wire_6492, wire_6382, wire_4405, wire_1140, wire_6559, wire_6485, wire_6484, wire_6477, wire_6476, wire_6469, wire_6468, wire_6374, wire_4403, wire_1140, wire_6537, wire_6481, wire_6480, wire_6473, wire_6472, wire_6465, wire_6464, wire_6462, wire_4401, wire_1140};
    // CHNAXY TOTAL: 472
    assign wire_4263 = lut_tile_4_3_chanxy_out[0];
    assign wire_4271 = lut_tile_4_3_chanxy_out[1];
    assign wire_4279 = lut_tile_4_3_chanxy_out[2];
    assign wire_4287 = lut_tile_4_3_chanxy_out[3];
    assign wire_4295 = lut_tile_4_3_chanxy_out[4];
    assign wire_4303 = lut_tile_4_3_chanxy_out[5];
    assign wire_4311 = lut_tile_4_3_chanxy_out[6];
    assign wire_4319 = lut_tile_4_3_chanxy_out[7];
    assign wire_4327 = lut_tile_4_3_chanxy_out[8];
    assign wire_4335 = lut_tile_4_3_chanxy_out[9];
    assign wire_4343 = lut_tile_4_3_chanxy_out[10];
    assign wire_4351 = lut_tile_4_3_chanxy_out[11];
    assign wire_4376 = lut_tile_4_3_chanxy_out[12];
    assign wire_4378 = lut_tile_4_3_chanxy_out[13];
    assign wire_4380 = lut_tile_4_3_chanxy_out[14];
    assign wire_4382 = lut_tile_4_3_chanxy_out[15];
    assign wire_4384 = lut_tile_4_3_chanxy_out[16];
    assign wire_4386 = lut_tile_4_3_chanxy_out[17];
    assign wire_4388 = lut_tile_4_3_chanxy_out[18];
    assign wire_4390 = lut_tile_4_3_chanxy_out[19];
    assign wire_4392 = lut_tile_4_3_chanxy_out[20];
    assign wire_4394 = lut_tile_4_3_chanxy_out[21];
    assign wire_4396 = lut_tile_4_3_chanxy_out[22];
    assign wire_4398 = lut_tile_4_3_chanxy_out[23];
    assign wire_6375 = lut_tile_4_3_chanxy_out[24];
    assign wire_6383 = lut_tile_4_3_chanxy_out[25];
    assign wire_6391 = lut_tile_4_3_chanxy_out[26];
    assign wire_6399 = lut_tile_4_3_chanxy_out[27];
    assign wire_6407 = lut_tile_4_3_chanxy_out[28];
    assign wire_6415 = lut_tile_4_3_chanxy_out[29];
    assign wire_6423 = lut_tile_4_3_chanxy_out[30];
    assign wire_6431 = lut_tile_4_3_chanxy_out[31];
    assign wire_6439 = lut_tile_4_3_chanxy_out[32];
    assign wire_6447 = lut_tile_4_3_chanxy_out[33];
    assign wire_6455 = lut_tile_4_3_chanxy_out[34];
    assign wire_6463 = lut_tile_4_3_chanxy_out[35];
    assign wire_6512 = lut_tile_4_3_chanxy_out[36];
    assign wire_6514 = lut_tile_4_3_chanxy_out[37];
    assign wire_6516 = lut_tile_4_3_chanxy_out[38];
    assign wire_6518 = lut_tile_4_3_chanxy_out[39];
    assign wire_6520 = lut_tile_4_3_chanxy_out[40];
    assign wire_6522 = lut_tile_4_3_chanxy_out[41];
    assign wire_6524 = lut_tile_4_3_chanxy_out[42];
    assign wire_6526 = lut_tile_4_3_chanxy_out[43];
    assign wire_6528 = lut_tile_4_3_chanxy_out[44];
    assign wire_6530 = lut_tile_4_3_chanxy_out[45];
    assign wire_6532 = lut_tile_4_3_chanxy_out[46];
    assign wire_6534 = lut_tile_4_3_chanxy_out[47];
   // CHANXY OUT
    assign lut_tile_4_4_chanxy_in = {wire_6726, wire_4161, wire_4159, wire_4158, wire_4151, wire_4150, wire_4143, wire_4142, wire_4006, wire_6718, wire_4183, wire_4155, wire_4154, wire_4147, wire_4146, wire_4139, wire_4138, wire_4014, wire_6710, wire_4181, wire_4131, wire_4130, wire_4123, wire_4122, wire_4115, wire_4114, wire_4022, wire_1747, wire_6702, wire_4179, wire_4107, wire_4106, wire_4099, wire_4098, wire_4091, wire_4090, wire_4030, wire_1747, wire_6694, wire_4177, wire_4135, wire_4134, wire_4127, wire_4126, wire_4119, wire_4118, wire_4038, wire_1747, wire_6686, wire_4175, wire_4111, wire_4110, wire_4103, wire_4102, wire_4095, wire_4094, wire_4046, wire_1747, wire_6678, wire_4173, wire_4157, wire_4156, wire_4149, wire_4148, wire_4141, wire_4140, wire_4054, wire_1747, wire_6670, wire_4171, wire_4153, wire_4152, wire_4145, wire_4144, wire_4137, wire_4136, wire_4062, wire_1445, wire_6662, wire_4169, wire_4129, wire_4128, wire_4121, wire_4120, wire_4113, wire_4112, wire_4070, wire_1445, wire_6654, wire_4167, wire_4105, wire_4104, wire_4097, wire_4096, wire_4089, wire_4088, wire_4078, wire_1445, wire_6646, wire_4165, wire_4133, wire_4132, wire_4125, wire_4124, wire_4117, wire_4116, wire_4086, wire_1445, wire_6638, wire_4163, wire_4109, wire_4108, wire_4101, wire_4100, wire_4093, wire_4092, wire_3998, wire_1445, wire_6823, wire_4447, wire_4419, wire_4418, wire_4411, wire_4410, wire_4403, wire_4402, wire_4256, wire_6821, wire_4425, wire_4395, wire_4394, wire_4387, wire_4386, wire_4379, wire_4378, wire_4344, wire_6819, wire_4427, wire_4423, wire_4422, wire_4415, wire_4414, wire_4407, wire_4406, wire_4336, wire_1747, wire_6817, wire_4429, wire_4399, wire_4398, wire_4391, wire_4390, wire_4383, wire_4382, wire_4328, wire_1747, wire_6815, wire_4431, wire_4375, wire_4374, wire_4367, wire_4366, wire_4359, wire_4358, wire_4320, wire_1747, wire_6813, wire_4433, wire_4371, wire_4370, wire_4363, wire_4362, wire_4355, wire_4354, wire_4312, wire_1747, wire_6811, wire_4435, wire_4417, wire_4416, wire_4409, wire_4408, wire_4401, wire_4400, wire_4304, wire_1747, wire_6809, wire_4437, wire_4393, wire_4392, wire_4385, wire_4384, wire_4377, wire_4376, wire_4296, wire_1445, wire_6807, wire_4439, wire_4421, wire_4420, wire_4413, wire_4412, wire_4405, wire_4404, wire_4288, wire_1445, wire_6805, wire_4441, wire_4397, wire_4396, wire_4389, wire_4388, wire_4381, wire_4380, wire_4280, wire_1445, wire_6803, wire_4443, wire_4373, wire_4372, wire_4365, wire_4364, wire_4357, wire_4356, wire_4272, wire_1445, wire_6801, wire_4445, wire_4369, wire_4368, wire_4361, wire_4360, wire_4353, wire_4352, wire_4264, wire_1445, wire_6557, wire_6535, wire_6534, wire_6527, wire_6526, wire_6519, wire_6518, wire_6462, wire_4350, wire_6555, wire_6531, wire_6530, wire_6523, wire_6522, wire_6515, wire_6514, wire_6374, wire_4342, wire_6553, wire_6507, wire_6506, wire_6499, wire_6498, wire_6491, wire_6490, wire_6382, wire_4334, wire_1472, wire_6551, wire_6483, wire_6482, wire_6475, wire_6474, wire_6467, wire_6466, wire_6390, wire_4326, wire_1472, wire_6549, wire_6511, wire_6510, wire_6503, wire_6502, wire_6495, wire_6494, wire_6398, wire_4318, wire_1472, wire_6547, wire_6487, wire_6486, wire_6479, wire_6478, wire_6471, wire_6470, wire_6406, wire_4310, wire_1472, wire_6545, wire_6533, wire_6532, wire_6525, wire_6524, wire_6517, wire_6516, wire_6414, wire_4302, wire_1472, wire_6543, wire_6529, wire_6528, wire_6521, wire_6520, wire_6513, wire_6512, wire_6422, wire_4294, wire_1444, wire_6541, wire_6505, wire_6504, wire_6497, wire_6496, wire_6489, wire_6488, wire_6430, wire_4286, wire_1444, wire_6539, wire_6481, wire_6480, wire_6473, wire_6472, wire_6465, wire_6464, wire_6438, wire_4278, wire_1444, wire_6537, wire_6509, wire_6508, wire_6501, wire_6500, wire_6493, wire_6492, wire_6446, wire_4270, wire_1444, wire_6559, wire_6485, wire_6484, wire_6477, wire_6476, wire_6469, wire_6468, wire_6454, wire_4262, wire_1444, wire_6803, wire_6795, wire_6794, wire_6787, wire_6786, wire_6779, wire_6778, wire_6712, wire_4447, wire_6805, wire_6771, wire_6770, wire_6763, wire_6762, wire_6755, wire_6754, wire_6704, wire_4445, wire_6807, wire_6799, wire_6798, wire_6791, wire_6790, wire_6783, wire_6782, wire_6696, wire_4443, wire_1472, wire_6809, wire_6775, wire_6774, wire_6767, wire_6766, wire_6759, wire_6758, wire_6688, wire_4441, wire_1472, wire_6811, wire_6751, wire_6750, wire_6743, wire_6742, wire_6735, wire_6734, wire_6680, wire_4439, wire_1472, wire_6813, wire_6747, wire_6746, wire_6739, wire_6738, wire_6731, wire_6730, wire_6672, wire_4437, wire_1472, wire_6815, wire_6793, wire_6792, wire_6785, wire_6784, wire_6777, wire_6776, wire_6664, wire_4435, wire_1472, wire_6817, wire_6769, wire_6768, wire_6761, wire_6760, wire_6753, wire_6752, wire_6656, wire_4433, wire_1444, wire_6819, wire_6797, wire_6796, wire_6789, wire_6788, wire_6781, wire_6780, wire_6648, wire_4431, wire_1444, wire_6821, wire_6773, wire_6772, wire_6765, wire_6764, wire_6757, wire_6756, wire_6640, wire_4429, wire_1444, wire_6823, wire_6749, wire_6748, wire_6741, wire_6740, wire_6733, wire_6732, wire_6632, wire_4427, wire_1444, wire_6801, wire_6745, wire_6744, wire_6737, wire_6736, wire_6729, wire_6728, wire_6720, wire_4425, wire_1444};
    // CHNAXY TOTAL: 472
    assign wire_4257 = lut_tile_4_4_chanxy_out[0];
    assign wire_4265 = lut_tile_4_4_chanxy_out[1];
    assign wire_4273 = lut_tile_4_4_chanxy_out[2];
    assign wire_4281 = lut_tile_4_4_chanxy_out[3];
    assign wire_4289 = lut_tile_4_4_chanxy_out[4];
    assign wire_4297 = lut_tile_4_4_chanxy_out[5];
    assign wire_4305 = lut_tile_4_4_chanxy_out[6];
    assign wire_4313 = lut_tile_4_4_chanxy_out[7];
    assign wire_4321 = lut_tile_4_4_chanxy_out[8];
    assign wire_4329 = lut_tile_4_4_chanxy_out[9];
    assign wire_4337 = lut_tile_4_4_chanxy_out[10];
    assign wire_4345 = lut_tile_4_4_chanxy_out[11];
    assign wire_4400 = lut_tile_4_4_chanxy_out[12];
    assign wire_4402 = lut_tile_4_4_chanxy_out[13];
    assign wire_4404 = lut_tile_4_4_chanxy_out[14];
    assign wire_4406 = lut_tile_4_4_chanxy_out[15];
    assign wire_4408 = lut_tile_4_4_chanxy_out[16];
    assign wire_4410 = lut_tile_4_4_chanxy_out[17];
    assign wire_4412 = lut_tile_4_4_chanxy_out[18];
    assign wire_4414 = lut_tile_4_4_chanxy_out[19];
    assign wire_4416 = lut_tile_4_4_chanxy_out[20];
    assign wire_4418 = lut_tile_4_4_chanxy_out[21];
    assign wire_4420 = lut_tile_4_4_chanxy_out[22];
    assign wire_4422 = lut_tile_4_4_chanxy_out[23];
    assign wire_6633 = lut_tile_4_4_chanxy_out[24];
    assign wire_6641 = lut_tile_4_4_chanxy_out[25];
    assign wire_6649 = lut_tile_4_4_chanxy_out[26];
    assign wire_6657 = lut_tile_4_4_chanxy_out[27];
    assign wire_6665 = lut_tile_4_4_chanxy_out[28];
    assign wire_6673 = lut_tile_4_4_chanxy_out[29];
    assign wire_6681 = lut_tile_4_4_chanxy_out[30];
    assign wire_6689 = lut_tile_4_4_chanxy_out[31];
    assign wire_6697 = lut_tile_4_4_chanxy_out[32];
    assign wire_6705 = lut_tile_4_4_chanxy_out[33];
    assign wire_6713 = lut_tile_4_4_chanxy_out[34];
    assign wire_6721 = lut_tile_4_4_chanxy_out[35];
    assign wire_6776 = lut_tile_4_4_chanxy_out[36];
    assign wire_6778 = lut_tile_4_4_chanxy_out[37];
    assign wire_6780 = lut_tile_4_4_chanxy_out[38];
    assign wire_6782 = lut_tile_4_4_chanxy_out[39];
    assign wire_6784 = lut_tile_4_4_chanxy_out[40];
    assign wire_6786 = lut_tile_4_4_chanxy_out[41];
    assign wire_6788 = lut_tile_4_4_chanxy_out[42];
    assign wire_6790 = lut_tile_4_4_chanxy_out[43];
    assign wire_6792 = lut_tile_4_4_chanxy_out[44];
    assign wire_6794 = lut_tile_4_4_chanxy_out[45];
    assign wire_6796 = lut_tile_4_4_chanxy_out[46];
    assign wire_6798 = lut_tile_4_4_chanxy_out[47];
   // CHANXY OUT
    assign lut_tile_4_5_chanxy_in = {wire_6984, wire_4185, wire_4183, wire_4182, wire_4175, wire_4174, wire_4167, wire_4166, wire_4090, wire_6976, wire_4207, wire_4179, wire_4178, wire_4171, wire_4170, wire_4163, wire_4162, wire_4092, wire_6968, wire_4205, wire_4155, wire_4154, wire_4147, wire_4146, wire_4139, wire_4138, wire_4094, wire_2051, wire_6960, wire_4203, wire_4131, wire_4130, wire_4123, wire_4122, wire_4115, wire_4114, wire_4096, wire_2051, wire_6952, wire_4201, wire_4159, wire_4158, wire_4151, wire_4150, wire_4143, wire_4142, wire_4098, wire_2051, wire_6944, wire_4199, wire_4135, wire_4134, wire_4127, wire_4126, wire_4119, wire_4118, wire_4100, wire_2051, wire_6936, wire_4197, wire_4181, wire_4180, wire_4173, wire_4172, wire_4165, wire_4164, wire_4102, wire_2051, wire_6928, wire_4195, wire_4177, wire_4176, wire_4169, wire_4168, wire_4161, wire_4160, wire_4104, wire_1749, wire_6920, wire_4193, wire_4153, wire_4152, wire_4145, wire_4144, wire_4137, wire_4136, wire_4106, wire_1749, wire_6912, wire_4191, wire_4129, wire_4128, wire_4121, wire_4120, wire_4113, wire_4112, wire_4108, wire_1749, wire_6904, wire_4189, wire_4157, wire_4156, wire_4149, wire_4148, wire_4141, wire_4140, wire_4110, wire_1749, wire_6896, wire_4187, wire_4133, wire_4132, wire_4125, wire_4124, wire_4117, wire_4116, wire_4088, wire_1749, wire_7087, wire_4471, wire_4423, wire_4422, wire_4415, wire_4414, wire_4407, wire_4406, wire_4352, wire_7085, wire_4449, wire_4419, wire_4418, wire_4411, wire_4410, wire_4403, wire_4402, wire_4374, wire_7083, wire_4451, wire_4395, wire_4394, wire_4387, wire_4386, wire_4379, wire_4378, wire_4372, wire_2051, wire_7081, wire_4453, wire_4443, wire_4442, wire_4435, wire_4434, wire_4427, wire_4426, wire_4370, wire_2051, wire_7079, wire_4455, wire_4399, wire_4398, wire_4391, wire_4390, wire_4383, wire_4382, wire_4368, wire_2051, wire_7077, wire_4457, wire_4447, wire_4446, wire_4439, wire_4438, wire_4431, wire_4430, wire_4366, wire_2051, wire_7075, wire_4459, wire_4421, wire_4420, wire_4413, wire_4412, wire_4405, wire_4404, wire_4364, wire_2051, wire_7073, wire_4461, wire_4417, wire_4416, wire_4409, wire_4408, wire_4401, wire_4400, wire_4362, wire_1749, wire_7071, wire_4463, wire_4393, wire_4392, wire_4385, wire_4384, wire_4377, wire_4376, wire_4360, wire_1749, wire_7069, wire_4465, wire_4441, wire_4440, wire_4433, wire_4432, wire_4425, wire_4424, wire_4358, wire_1749, wire_7067, wire_4467, wire_4397, wire_4396, wire_4389, wire_4388, wire_4381, wire_4380, wire_4356, wire_1749, wire_7065, wire_4469, wire_4445, wire_4444, wire_4437, wire_4436, wire_4429, wire_4428, wire_4354, wire_1749, wire_6821, wire_6799, wire_6798, wire_6791, wire_6790, wire_6783, wire_6782, wire_6720, wire_4344, wire_6819, wire_6795, wire_6794, wire_6787, wire_6786, wire_6779, wire_6778, wire_6632, wire_4336, wire_6817, wire_6771, wire_6770, wire_6763, wire_6762, wire_6755, wire_6754, wire_6640, wire_4328, wire_1776, wire_6815, wire_6747, wire_6746, wire_6739, wire_6738, wire_6731, wire_6730, wire_6648, wire_4320, wire_1776, wire_6813, wire_6775, wire_6774, wire_6767, wire_6766, wire_6759, wire_6758, wire_6656, wire_4312, wire_1776, wire_6811, wire_6751, wire_6750, wire_6743, wire_6742, wire_6735, wire_6734, wire_6664, wire_4304, wire_1776, wire_6809, wire_6797, wire_6796, wire_6789, wire_6788, wire_6781, wire_6780, wire_6672, wire_4296, wire_1776, wire_6807, wire_6793, wire_6792, wire_6785, wire_6784, wire_6777, wire_6776, wire_6680, wire_4288, wire_1748, wire_6805, wire_6769, wire_6768, wire_6761, wire_6760, wire_6753, wire_6752, wire_6688, wire_4280, wire_1748, wire_6803, wire_6745, wire_6744, wire_6737, wire_6736, wire_6729, wire_6728, wire_6696, wire_4272, wire_1748, wire_6801, wire_6773, wire_6772, wire_6765, wire_6764, wire_6757, wire_6756, wire_6704, wire_4264, wire_1748, wire_6823, wire_6749, wire_6748, wire_6741, wire_6740, wire_6733, wire_6732, wire_6712, wire_4256, wire_1748, wire_7067, wire_7039, wire_7038, wire_7031, wire_7030, wire_7023, wire_7022, wire_6978, wire_4471, wire_7069, wire_7035, wire_7034, wire_7027, wire_7026, wire_7019, wire_7018, wire_6970, wire_4469, wire_7071, wire_7011, wire_7010, wire_7003, wire_7002, wire_6995, wire_6994, wire_6962, wire_4467, wire_1776, wire_7073, wire_7059, wire_7058, wire_7051, wire_7050, wire_7043, wire_7042, wire_6954, wire_4465, wire_1776, wire_7075, wire_7015, wire_7014, wire_7007, wire_7006, wire_6999, wire_6998, wire_6946, wire_4463, wire_1776, wire_7077, wire_7063, wire_7062, wire_7055, wire_7054, wire_7047, wire_7046, wire_6938, wire_4461, wire_1776, wire_7079, wire_7037, wire_7036, wire_7029, wire_7028, wire_7021, wire_7020, wire_6930, wire_4459, wire_1776, wire_7081, wire_7033, wire_7032, wire_7025, wire_7024, wire_7017, wire_7016, wire_6922, wire_4457, wire_1748, wire_7083, wire_7009, wire_7008, wire_7001, wire_7000, wire_6993, wire_6992, wire_6914, wire_4455, wire_1748, wire_7085, wire_7057, wire_7056, wire_7049, wire_7048, wire_7041, wire_7040, wire_6906, wire_4453, wire_1748, wire_7087, wire_7013, wire_7012, wire_7005, wire_7004, wire_6997, wire_6996, wire_6898, wire_4451, wire_1748, wire_7065, wire_7061, wire_7060, wire_7053, wire_7052, wire_7045, wire_7044, wire_6986, wire_4449, wire_1748};
    // CHNAXY TOTAL: 472
    assign wire_4353 = lut_tile_4_5_chanxy_out[0];
    assign wire_4355 = lut_tile_4_5_chanxy_out[1];
    assign wire_4357 = lut_tile_4_5_chanxy_out[2];
    assign wire_4359 = lut_tile_4_5_chanxy_out[3];
    assign wire_4361 = lut_tile_4_5_chanxy_out[4];
    assign wire_4363 = lut_tile_4_5_chanxy_out[5];
    assign wire_4365 = lut_tile_4_5_chanxy_out[6];
    assign wire_4367 = lut_tile_4_5_chanxy_out[7];
    assign wire_4369 = lut_tile_4_5_chanxy_out[8];
    assign wire_4371 = lut_tile_4_5_chanxy_out[9];
    assign wire_4373 = lut_tile_4_5_chanxy_out[10];
    assign wire_4375 = lut_tile_4_5_chanxy_out[11];
    assign wire_4424 = lut_tile_4_5_chanxy_out[12];
    assign wire_4426 = lut_tile_4_5_chanxy_out[13];
    assign wire_4428 = lut_tile_4_5_chanxy_out[14];
    assign wire_4430 = lut_tile_4_5_chanxy_out[15];
    assign wire_4432 = lut_tile_4_5_chanxy_out[16];
    assign wire_4434 = lut_tile_4_5_chanxy_out[17];
    assign wire_4436 = lut_tile_4_5_chanxy_out[18];
    assign wire_4438 = lut_tile_4_5_chanxy_out[19];
    assign wire_4440 = lut_tile_4_5_chanxy_out[20];
    assign wire_4442 = lut_tile_4_5_chanxy_out[21];
    assign wire_4444 = lut_tile_4_5_chanxy_out[22];
    assign wire_4446 = lut_tile_4_5_chanxy_out[23];
    assign wire_6899 = lut_tile_4_5_chanxy_out[24];
    assign wire_6907 = lut_tile_4_5_chanxy_out[25];
    assign wire_6915 = lut_tile_4_5_chanxy_out[26];
    assign wire_6923 = lut_tile_4_5_chanxy_out[27];
    assign wire_6931 = lut_tile_4_5_chanxy_out[28];
    assign wire_6939 = lut_tile_4_5_chanxy_out[29];
    assign wire_6947 = lut_tile_4_5_chanxy_out[30];
    assign wire_6955 = lut_tile_4_5_chanxy_out[31];
    assign wire_6963 = lut_tile_4_5_chanxy_out[32];
    assign wire_6971 = lut_tile_4_5_chanxy_out[33];
    assign wire_6979 = lut_tile_4_5_chanxy_out[34];
    assign wire_6987 = lut_tile_4_5_chanxy_out[35];
    assign wire_7040 = lut_tile_4_5_chanxy_out[36];
    assign wire_7042 = lut_tile_4_5_chanxy_out[37];
    assign wire_7044 = lut_tile_4_5_chanxy_out[38];
    assign wire_7046 = lut_tile_4_5_chanxy_out[39];
    assign wire_7048 = lut_tile_4_5_chanxy_out[40];
    assign wire_7050 = lut_tile_4_5_chanxy_out[41];
    assign wire_7052 = lut_tile_4_5_chanxy_out[42];
    assign wire_7054 = lut_tile_4_5_chanxy_out[43];
    assign wire_7056 = lut_tile_4_5_chanxy_out[44];
    assign wire_7058 = lut_tile_4_5_chanxy_out[45];
    assign wire_7060 = lut_tile_4_5_chanxy_out[46];
    assign wire_7062 = lut_tile_4_5_chanxy_out[47];
   // CHANXY OUT
    assign lut_tile_4_6_chanxy_in = {wire_7250, wire_4209, wire_4179, wire_4178, wire_4171, wire_4170, wire_4163, wire_4162, wire_4114, wire_7242, wire_4231, wire_4183, wire_4182, wire_4175, wire_4174, wire_4167, wire_4166, wire_4116, wire_7234, wire_4229, wire_4155, wire_4154, wire_4147, wire_4146, wire_4139, wire_4138, wire_4118, wire_2355, wire_7226, wire_4227, wire_4159, wire_4158, wire_4151, wire_4150, wire_4143, wire_4142, wire_4120, wire_2355, wire_7218, wire_4225, wire_4203, wire_4202, wire_4195, wire_4194, wire_4187, wire_4186, wire_4122, wire_2355, wire_7210, wire_4223, wire_4207, wire_4206, wire_4199, wire_4198, wire_4191, wire_4190, wire_4124, wire_2355, wire_7202, wire_4221, wire_4177, wire_4176, wire_4169, wire_4168, wire_4161, wire_4160, wire_4126, wire_2355, wire_7194, wire_4219, wire_4181, wire_4180, wire_4173, wire_4172, wire_4165, wire_4164, wire_4128, wire_2053, wire_7186, wire_4217, wire_4153, wire_4152, wire_4145, wire_4144, wire_4137, wire_4136, wire_4130, wire_2053, wire_7178, wire_4215, wire_4157, wire_4156, wire_4149, wire_4148, wire_4141, wire_4140, wire_4132, wire_2053, wire_7170, wire_4213, wire_4201, wire_4200, wire_4193, wire_4192, wire_4185, wire_4184, wire_4134, wire_2053, wire_7162, wire_4211, wire_4205, wire_4204, wire_4197, wire_4196, wire_4189, wire_4188, wire_4112, wire_2053, wire_7351, wire_4495, wire_4419, wire_4418, wire_4411, wire_4410, wire_4403, wire_4402, wire_4376, wire_7349, wire_4473, wire_4423, wire_4422, wire_4415, wire_4414, wire_4407, wire_4406, wire_4398, wire_7347, wire_4475, wire_4467, wire_4466, wire_4459, wire_4458, wire_4451, wire_4450, wire_4396, wire_2355, wire_7345, wire_4477, wire_4471, wire_4470, wire_4463, wire_4462, wire_4455, wire_4454, wire_4394, wire_2355, wire_7343, wire_4479, wire_4443, wire_4442, wire_4435, wire_4434, wire_4427, wire_4426, wire_4392, wire_2355, wire_7341, wire_4481, wire_4447, wire_4446, wire_4439, wire_4438, wire_4431, wire_4430, wire_4390, wire_2355, wire_7339, wire_4483, wire_4417, wire_4416, wire_4409, wire_4408, wire_4401, wire_4400, wire_4388, wire_2355, wire_7337, wire_4485, wire_4421, wire_4420, wire_4413, wire_4412, wire_4405, wire_4404, wire_4386, wire_2053, wire_7335, wire_4487, wire_4465, wire_4464, wire_4457, wire_4456, wire_4449, wire_4448, wire_4384, wire_2053, wire_7333, wire_4489, wire_4469, wire_4468, wire_4461, wire_4460, wire_4453, wire_4452, wire_4382, wire_2053, wire_7331, wire_4491, wire_4441, wire_4440, wire_4433, wire_4432, wire_4425, wire_4424, wire_4380, wire_2053, wire_7329, wire_4493, wire_4445, wire_4444, wire_4437, wire_4436, wire_4429, wire_4428, wire_4378, wire_2053, wire_7085, wire_7035, wire_7034, wire_7027, wire_7026, wire_7019, wire_7018, wire_6986, wire_4374, wire_7083, wire_7039, wire_7038, wire_7031, wire_7030, wire_7023, wire_7022, wire_6898, wire_4372, wire_7081, wire_7011, wire_7010, wire_7003, wire_7002, wire_6995, wire_6994, wire_6906, wire_4370, wire_2080, wire_7079, wire_7015, wire_7014, wire_7007, wire_7006, wire_6999, wire_6998, wire_6914, wire_4368, wire_2080, wire_7077, wire_7059, wire_7058, wire_7051, wire_7050, wire_7043, wire_7042, wire_6922, wire_4366, wire_2080, wire_7075, wire_7063, wire_7062, wire_7055, wire_7054, wire_7047, wire_7046, wire_6930, wire_4364, wire_2080, wire_7073, wire_7033, wire_7032, wire_7025, wire_7024, wire_7017, wire_7016, wire_6938, wire_4362, wire_2080, wire_7071, wire_7037, wire_7036, wire_7029, wire_7028, wire_7021, wire_7020, wire_6946, wire_4360, wire_2052, wire_7069, wire_7009, wire_7008, wire_7001, wire_7000, wire_6993, wire_6992, wire_6954, wire_4358, wire_2052, wire_7067, wire_7013, wire_7012, wire_7005, wire_7004, wire_6997, wire_6996, wire_6962, wire_4356, wire_2052, wire_7065, wire_7057, wire_7056, wire_7049, wire_7048, wire_7041, wire_7040, wire_6970, wire_4354, wire_2052, wire_7087, wire_7061, wire_7060, wire_7053, wire_7052, wire_7045, wire_7044, wire_6978, wire_4352, wire_2052, wire_7331, wire_7275, wire_7274, wire_7267, wire_7266, wire_7259, wire_7258, wire_7244, wire_4495, wire_7333, wire_7279, wire_7278, wire_7271, wire_7270, wire_7263, wire_7262, wire_7236, wire_4493, wire_7335, wire_7323, wire_7322, wire_7315, wire_7314, wire_7307, wire_7306, wire_7228, wire_4491, wire_2080, wire_7337, wire_7327, wire_7326, wire_7319, wire_7318, wire_7311, wire_7310, wire_7220, wire_4489, wire_2080, wire_7339, wire_7299, wire_7298, wire_7291, wire_7290, wire_7283, wire_7282, wire_7212, wire_4487, wire_2080, wire_7341, wire_7303, wire_7302, wire_7295, wire_7294, wire_7287, wire_7286, wire_7204, wire_4485, wire_2080, wire_7343, wire_7273, wire_7272, wire_7265, wire_7264, wire_7257, wire_7256, wire_7196, wire_4483, wire_2080, wire_7345, wire_7277, wire_7276, wire_7269, wire_7268, wire_7261, wire_7260, wire_7188, wire_4481, wire_2052, wire_7347, wire_7321, wire_7320, wire_7313, wire_7312, wire_7305, wire_7304, wire_7180, wire_4479, wire_2052, wire_7349, wire_7325, wire_7324, wire_7317, wire_7316, wire_7309, wire_7308, wire_7172, wire_4477, wire_2052, wire_7351, wire_7297, wire_7296, wire_7289, wire_7288, wire_7281, wire_7280, wire_7164, wire_4475, wire_2052, wire_7329, wire_7301, wire_7300, wire_7293, wire_7292, wire_7285, wire_7284, wire_7252, wire_4473, wire_2052};
    // CHNAXY TOTAL: 472
    assign wire_4377 = lut_tile_4_6_chanxy_out[0];
    assign wire_4379 = lut_tile_4_6_chanxy_out[1];
    assign wire_4381 = lut_tile_4_6_chanxy_out[2];
    assign wire_4383 = lut_tile_4_6_chanxy_out[3];
    assign wire_4385 = lut_tile_4_6_chanxy_out[4];
    assign wire_4387 = lut_tile_4_6_chanxy_out[5];
    assign wire_4389 = lut_tile_4_6_chanxy_out[6];
    assign wire_4391 = lut_tile_4_6_chanxy_out[7];
    assign wire_4393 = lut_tile_4_6_chanxy_out[8];
    assign wire_4395 = lut_tile_4_6_chanxy_out[9];
    assign wire_4397 = lut_tile_4_6_chanxy_out[10];
    assign wire_4399 = lut_tile_4_6_chanxy_out[11];
    assign wire_4448 = lut_tile_4_6_chanxy_out[12];
    assign wire_4450 = lut_tile_4_6_chanxy_out[13];
    assign wire_4452 = lut_tile_4_6_chanxy_out[14];
    assign wire_4454 = lut_tile_4_6_chanxy_out[15];
    assign wire_4456 = lut_tile_4_6_chanxy_out[16];
    assign wire_4458 = lut_tile_4_6_chanxy_out[17];
    assign wire_4460 = lut_tile_4_6_chanxy_out[18];
    assign wire_4462 = lut_tile_4_6_chanxy_out[19];
    assign wire_4464 = lut_tile_4_6_chanxy_out[20];
    assign wire_4466 = lut_tile_4_6_chanxy_out[21];
    assign wire_4468 = lut_tile_4_6_chanxy_out[22];
    assign wire_4470 = lut_tile_4_6_chanxy_out[23];
    assign wire_7165 = lut_tile_4_6_chanxy_out[24];
    assign wire_7173 = lut_tile_4_6_chanxy_out[25];
    assign wire_7181 = lut_tile_4_6_chanxy_out[26];
    assign wire_7189 = lut_tile_4_6_chanxy_out[27];
    assign wire_7197 = lut_tile_4_6_chanxy_out[28];
    assign wire_7205 = lut_tile_4_6_chanxy_out[29];
    assign wire_7213 = lut_tile_4_6_chanxy_out[30];
    assign wire_7221 = lut_tile_4_6_chanxy_out[31];
    assign wire_7229 = lut_tile_4_6_chanxy_out[32];
    assign wire_7237 = lut_tile_4_6_chanxy_out[33];
    assign wire_7245 = lut_tile_4_6_chanxy_out[34];
    assign wire_7253 = lut_tile_4_6_chanxy_out[35];
    assign wire_7304 = lut_tile_4_6_chanxy_out[36];
    assign wire_7306 = lut_tile_4_6_chanxy_out[37];
    assign wire_7308 = lut_tile_4_6_chanxy_out[38];
    assign wire_7310 = lut_tile_4_6_chanxy_out[39];
    assign wire_7312 = lut_tile_4_6_chanxy_out[40];
    assign wire_7314 = lut_tile_4_6_chanxy_out[41];
    assign wire_7316 = lut_tile_4_6_chanxy_out[42];
    assign wire_7318 = lut_tile_4_6_chanxy_out[43];
    assign wire_7320 = lut_tile_4_6_chanxy_out[44];
    assign wire_7322 = lut_tile_4_6_chanxy_out[45];
    assign wire_7324 = lut_tile_4_6_chanxy_out[46];
    assign wire_7326 = lut_tile_4_6_chanxy_out[47];
   // CHANXY OUT
    assign lut_tile_4_7_chanxy_in = {wire_7516, wire_4233, wire_4179, wire_4178, wire_4171, wire_4170, wire_4163, wire_4162, wire_4138, wire_7508, wire_4255, wire_4227, wire_4226, wire_4219, wire_4218, wire_4211, wire_4210, wire_4140, wire_7500, wire_4253, wire_4183, wire_4182, wire_4175, wire_4174, wire_4167, wire_4166, wire_4142, wire_2659, wire_7492, wire_4251, wire_4231, wire_4230, wire_4223, wire_4222, wire_4215, wire_4214, wire_4144, wire_2659, wire_7484, wire_4249, wire_4207, wire_4206, wire_4199, wire_4198, wire_4191, wire_4190, wire_4146, wire_2659, wire_7476, wire_4247, wire_4203, wire_4202, wire_4195, wire_4194, wire_4187, wire_4186, wire_4148, wire_2659, wire_7468, wire_4245, wire_4177, wire_4176, wire_4169, wire_4168, wire_4161, wire_4160, wire_4150, wire_2659, wire_7460, wire_4243, wire_4225, wire_4224, wire_4217, wire_4216, wire_4209, wire_4208, wire_4152, wire_2357, wire_7452, wire_4241, wire_4181, wire_4180, wire_4173, wire_4172, wire_4165, wire_4164, wire_4154, wire_2357, wire_7444, wire_4239, wire_4229, wire_4228, wire_4221, wire_4220, wire_4213, wire_4212, wire_4156, wire_2357, wire_7436, wire_4237, wire_4205, wire_4204, wire_4197, wire_4196, wire_4189, wire_4188, wire_4158, wire_2357, wire_7428, wire_4235, wire_4201, wire_4200, wire_4193, wire_4192, wire_4185, wire_4184, wire_4136, wire_2357, wire_7615, wire_4519, wire_4491, wire_4490, wire_4483, wire_4482, wire_4475, wire_4474, wire_4400, wire_7613, wire_4497, wire_4467, wire_4466, wire_4459, wire_4458, wire_4451, wire_4450, wire_4422, wire_7611, wire_4499, wire_4495, wire_4494, wire_4487, wire_4486, wire_4479, wire_4478, wire_4420, wire_2659, wire_7609, wire_4501, wire_4471, wire_4470, wire_4463, wire_4462, wire_4455, wire_4454, wire_4418, wire_2659, wire_7607, wire_4503, wire_4447, wire_4446, wire_4439, wire_4438, wire_4431, wire_4430, wire_4416, wire_2659, wire_7605, wire_4505, wire_4443, wire_4442, wire_4435, wire_4434, wire_4427, wire_4426, wire_4414, wire_2659, wire_7603, wire_4507, wire_4489, wire_4488, wire_4481, wire_4480, wire_4473, wire_4472, wire_4412, wire_2659, wire_7601, wire_4509, wire_4465, wire_4464, wire_4457, wire_4456, wire_4449, wire_4448, wire_4410, wire_2357, wire_7599, wire_4511, wire_4493, wire_4492, wire_4485, wire_4484, wire_4477, wire_4476, wire_4408, wire_2357, wire_7597, wire_4513, wire_4469, wire_4468, wire_4461, wire_4460, wire_4453, wire_4452, wire_4406, wire_2357, wire_7595, wire_4515, wire_4445, wire_4444, wire_4437, wire_4436, wire_4429, wire_4428, wire_4404, wire_2357, wire_7593, wire_4517, wire_4441, wire_4440, wire_4433, wire_4432, wire_4425, wire_4424, wire_4402, wire_2357, wire_7349, wire_7275, wire_7274, wire_7267, wire_7266, wire_7259, wire_7258, wire_7252, wire_4398, wire_7347, wire_7323, wire_7322, wire_7315, wire_7314, wire_7307, wire_7306, wire_7164, wire_4396, wire_7345, wire_7279, wire_7278, wire_7271, wire_7270, wire_7263, wire_7262, wire_7172, wire_4394, wire_2384, wire_7343, wire_7327, wire_7326, wire_7319, wire_7318, wire_7311, wire_7310, wire_7180, wire_4392, wire_2384, wire_7341, wire_7303, wire_7302, wire_7295, wire_7294, wire_7287, wire_7286, wire_7188, wire_4390, wire_2384, wire_7339, wire_7299, wire_7298, wire_7291, wire_7290, wire_7283, wire_7282, wire_7196, wire_4388, wire_2384, wire_7337, wire_7273, wire_7272, wire_7265, wire_7264, wire_7257, wire_7256, wire_7204, wire_4386, wire_2384, wire_7335, wire_7321, wire_7320, wire_7313, wire_7312, wire_7305, wire_7304, wire_7212, wire_4384, wire_2356, wire_7333, wire_7277, wire_7276, wire_7269, wire_7268, wire_7261, wire_7260, wire_7220, wire_4382, wire_2356, wire_7331, wire_7325, wire_7324, wire_7317, wire_7316, wire_7309, wire_7308, wire_7228, wire_4380, wire_2356, wire_7329, wire_7301, wire_7300, wire_7293, wire_7292, wire_7285, wire_7284, wire_7236, wire_4378, wire_2356, wire_7351, wire_7297, wire_7296, wire_7289, wire_7288, wire_7281, wire_7280, wire_7244, wire_4376, wire_2356, wire_7595, wire_7587, wire_7586, wire_7579, wire_7578, wire_7571, wire_7570, wire_7510, wire_4519, wire_7597, wire_7563, wire_7562, wire_7555, wire_7554, wire_7547, wire_7546, wire_7502, wire_4517, wire_7599, wire_7591, wire_7590, wire_7583, wire_7582, wire_7575, wire_7574, wire_7494, wire_4515, wire_2384, wire_7601, wire_7567, wire_7566, wire_7559, wire_7558, wire_7551, wire_7550, wire_7486, wire_4513, wire_2384, wire_7603, wire_7543, wire_7542, wire_7535, wire_7534, wire_7527, wire_7526, wire_7478, wire_4511, wire_2384, wire_7605, wire_7539, wire_7538, wire_7531, wire_7530, wire_7523, wire_7522, wire_7470, wire_4509, wire_2384, wire_7607, wire_7585, wire_7584, wire_7577, wire_7576, wire_7569, wire_7568, wire_7462, wire_4507, wire_2384, wire_7609, wire_7561, wire_7560, wire_7553, wire_7552, wire_7545, wire_7544, wire_7454, wire_4505, wire_2356, wire_7611, wire_7589, wire_7588, wire_7581, wire_7580, wire_7573, wire_7572, wire_7446, wire_4503, wire_2356, wire_7613, wire_7565, wire_7564, wire_7557, wire_7556, wire_7549, wire_7548, wire_7438, wire_4501, wire_2356, wire_7615, wire_7541, wire_7540, wire_7533, wire_7532, wire_7525, wire_7524, wire_7430, wire_4499, wire_2356, wire_7593, wire_7537, wire_7536, wire_7529, wire_7528, wire_7521, wire_7520, wire_7518, wire_4497, wire_2356};
    // CHNAXY TOTAL: 472
    assign wire_4401 = lut_tile_4_7_chanxy_out[0];
    assign wire_4403 = lut_tile_4_7_chanxy_out[1];
    assign wire_4405 = lut_tile_4_7_chanxy_out[2];
    assign wire_4407 = lut_tile_4_7_chanxy_out[3];
    assign wire_4409 = lut_tile_4_7_chanxy_out[4];
    assign wire_4411 = lut_tile_4_7_chanxy_out[5];
    assign wire_4413 = lut_tile_4_7_chanxy_out[6];
    assign wire_4415 = lut_tile_4_7_chanxy_out[7];
    assign wire_4417 = lut_tile_4_7_chanxy_out[8];
    assign wire_4419 = lut_tile_4_7_chanxy_out[9];
    assign wire_4421 = lut_tile_4_7_chanxy_out[10];
    assign wire_4423 = lut_tile_4_7_chanxy_out[11];
    assign wire_4472 = lut_tile_4_7_chanxy_out[12];
    assign wire_4474 = lut_tile_4_7_chanxy_out[13];
    assign wire_4476 = lut_tile_4_7_chanxy_out[14];
    assign wire_4478 = lut_tile_4_7_chanxy_out[15];
    assign wire_4480 = lut_tile_4_7_chanxy_out[16];
    assign wire_4482 = lut_tile_4_7_chanxy_out[17];
    assign wire_4484 = lut_tile_4_7_chanxy_out[18];
    assign wire_4486 = lut_tile_4_7_chanxy_out[19];
    assign wire_4488 = lut_tile_4_7_chanxy_out[20];
    assign wire_4490 = lut_tile_4_7_chanxy_out[21];
    assign wire_4492 = lut_tile_4_7_chanxy_out[22];
    assign wire_4494 = lut_tile_4_7_chanxy_out[23];
    assign wire_7431 = lut_tile_4_7_chanxy_out[24];
    assign wire_7439 = lut_tile_4_7_chanxy_out[25];
    assign wire_7447 = lut_tile_4_7_chanxy_out[26];
    assign wire_7455 = lut_tile_4_7_chanxy_out[27];
    assign wire_7463 = lut_tile_4_7_chanxy_out[28];
    assign wire_7471 = lut_tile_4_7_chanxy_out[29];
    assign wire_7479 = lut_tile_4_7_chanxy_out[30];
    assign wire_7487 = lut_tile_4_7_chanxy_out[31];
    assign wire_7495 = lut_tile_4_7_chanxy_out[32];
    assign wire_7503 = lut_tile_4_7_chanxy_out[33];
    assign wire_7511 = lut_tile_4_7_chanxy_out[34];
    assign wire_7519 = lut_tile_4_7_chanxy_out[35];
    assign wire_7568 = lut_tile_4_7_chanxy_out[36];
    assign wire_7570 = lut_tile_4_7_chanxy_out[37];
    assign wire_7572 = lut_tile_4_7_chanxy_out[38];
    assign wire_7574 = lut_tile_4_7_chanxy_out[39];
    assign wire_7576 = lut_tile_4_7_chanxy_out[40];
    assign wire_7578 = lut_tile_4_7_chanxy_out[41];
    assign wire_7580 = lut_tile_4_7_chanxy_out[42];
    assign wire_7582 = lut_tile_4_7_chanxy_out[43];
    assign wire_7584 = lut_tile_4_7_chanxy_out[44];
    assign wire_7586 = lut_tile_4_7_chanxy_out[45];
    assign wire_7588 = lut_tile_4_7_chanxy_out[46];
    assign wire_7590 = lut_tile_4_7_chanxy_out[47];
   // CHANXY OUT
    assign lut_tile_4_8_chanxy_in = {wire_7782, wire_4182, wire_4176, wire_4170, wire_4164, wire_3003, wire_2994, wire_2988, wire_7774, wire_4254, wire_4248, wire_4242, wire_4236, wire_3000, wire_2994, wire_2988, wire_7766, wire_4230, wire_4224, wire_4218, wire_4212, wire_3000, wire_2994, wire_2985, wire_7758, wire_4206, wire_4200, wire_4194, wire_4188, wire_3006, wire_3000, wire_2994, wire_2985, wire_7750, wire_4180, wire_4174, wire_4168, wire_4162, wire_3006, wire_3000, wire_2991, wire_2985, wire_7742, wire_4252, wire_4246, wire_4240, wire_4234, wire_3006, wire_3000, wire_2991, wire_2985, wire_7734, wire_4228, wire_4222, wire_4216, wire_4210, wire_3006, wire_2997, wire_2991, wire_2985, wire_7726, wire_4204, wire_4198, wire_4192, wire_4186, wire_3006, wire_2997, wire_2991, wire_2661, wire_7718, wire_4178, wire_4172, wire_4166, wire_4160, wire_3003, wire_2997, wire_2991, wire_2661, wire_7710, wire_4250, wire_4244, wire_4238, wire_4232, wire_3003, wire_2997, wire_2988, wire_2661, wire_7702, wire_4226, wire_4220, wire_4214, wire_4208, wire_3003, wire_2997, wire_2988, wire_2661, wire_7694, wire_4202, wire_4196, wire_4190, wire_4184, wire_3003, wire_2994, wire_2988, wire_2661, wire_7879, wire_4518, wire_4512, wire_4506, wire_4500, wire_3003, wire_2994, wire_2988, wire_7877, wire_4494, wire_4488, wire_4482, wire_4476, wire_3000, wire_2994, wire_2988, wire_7875, wire_4470, wire_4464, wire_4458, wire_4452, wire_3000, wire_2994, wire_2985, wire_7873, wire_4446, wire_4440, wire_4434, wire_4428, wire_3006, wire_3000, wire_2994, wire_2985, wire_7871, wire_4516, wire_4510, wire_4504, wire_4498, wire_3006, wire_3000, wire_2991, wire_2985, wire_7869, wire_4492, wire_4486, wire_4480, wire_4474, wire_3006, wire_3000, wire_2991, wire_2985, wire_7867, wire_4468, wire_4462, wire_4456, wire_4450, wire_3006, wire_2997, wire_2991, wire_2985, wire_7865, wire_4444, wire_4438, wire_4432, wire_4426, wire_3006, wire_2997, wire_2991, wire_2661, wire_7863, wire_4514, wire_4508, wire_4502, wire_4496, wire_3003, wire_2997, wire_2991, wire_2661, wire_7861, wire_4490, wire_4484, wire_4478, wire_4472, wire_3003, wire_2997, wire_2988, wire_2661, wire_7859, wire_4466, wire_4460, wire_4454, wire_4448, wire_3003, wire_2997, wire_2988, wire_2661, wire_7857, wire_4442, wire_4436, wire_4430, wire_4424, wire_3003, wire_2994, wire_2988, wire_2661, wire_7843, wire_7842, wire_7613, wire_7591, wire_7590, wire_7583, wire_7582, wire_7575, wire_7574, wire_7518, wire_4422, wire_7867, wire_7728, wire_7611, wire_7587, wire_7586, wire_7579, wire_7578, wire_7571, wire_7570, wire_7430, wire_4420, wire_7807, wire_7806, wire_7609, wire_7563, wire_7562, wire_7555, wire_7554, wire_7547, wire_7546, wire_7438, wire_4418, wire_2688, wire_7853, wire_7852, wire_7607, wire_7539, wire_7538, wire_7531, wire_7530, wire_7523, wire_7522, wire_7446, wire_4416, wire_2688, wire_7877, wire_7768, wire_7605, wire_7567, wire_7566, wire_7559, wire_7558, wire_7551, wire_7550, wire_7454, wire_4414, wire_2688, wire_7791, wire_7790, wire_7603, wire_7543, wire_7542, wire_7535, wire_7534, wire_7527, wire_7526, wire_7462, wire_4412, wire_2688, wire_7837, wire_7836, wire_7601, wire_7589, wire_7588, wire_7581, wire_7580, wire_7573, wire_7572, wire_7470, wire_4410, wire_2688, wire_7861, wire_7704, wire_7599, wire_7585, wire_7584, wire_7577, wire_7576, wire_7569, wire_7568, wire_7478, wire_4408, wire_2660, wire_7801, wire_7800, wire_7597, wire_7561, wire_7560, wire_7553, wire_7552, wire_7545, wire_7544, wire_7486, wire_4406, wire_2660, wire_7847, wire_7846, wire_7595, wire_7537, wire_7536, wire_7529, wire_7528, wire_7521, wire_7520, wire_7494, wire_4404, wire_2660, wire_7871, wire_7744, wire_2688, wire_7593, wire_7565, wire_7564, wire_7557, wire_7556, wire_7549, wire_7548, wire_7502, wire_4402, wire_2660, wire_7785, wire_7784, wire_2660, wire_7615, wire_7541, wire_7540, wire_7533, wire_7532, wire_7525, wire_7524, wire_7510, wire_4400, wire_2660, wire_7819, wire_7818, wire_7831, wire_7830, wire_7793, wire_7792, wire_7829, wire_7828, wire_7815, wire_7814, wire_7803, wire_7802, wire_7813, wire_7812, wire_7825, wire_7824, wire_7787, wire_7786, wire_7823, wire_7822, wire_7809, wire_7808, wire_2688, wire_7797, wire_7796, wire_2660, wire_7855, wire_7854, wire_7841, wire_7840, wire_7865, wire_7720, wire_7839, wire_7838, wire_7851, wire_7850, wire_7875, wire_7760, wire_7849, wire_7848, wire_7835, wire_7834, wire_7859, wire_7696, wire_7833, wire_7832, wire_2688, wire_7845, wire_7844, wire_2688, wire_7869, wire_7736, wire_2660, wire_7795, wire_7794, wire_7817, wire_7816, wire_7879, wire_7776, wire_7805, wire_7804, wire_7827, wire_7826, wire_7863, wire_7712, wire_7789, wire_7788, wire_7811, wire_7810, wire_7873, wire_7752, wire_7799, wire_7798, wire_2688, wire_7821, wire_7820, wire_2660, wire_7857, wire_7688, wire_2660};
    // CHNAXY TOTAL: 434
    assign wire_4425 = lut_tile_4_8_chanxy_out[0];
    assign wire_4427 = lut_tile_4_8_chanxy_out[1];
    assign wire_4429 = lut_tile_4_8_chanxy_out[2];
    assign wire_4431 = lut_tile_4_8_chanxy_out[3];
    assign wire_4433 = lut_tile_4_8_chanxy_out[4];
    assign wire_4435 = lut_tile_4_8_chanxy_out[5];
    assign wire_4437 = lut_tile_4_8_chanxy_out[6];
    assign wire_4439 = lut_tile_4_8_chanxy_out[7];
    assign wire_4441 = lut_tile_4_8_chanxy_out[8];
    assign wire_4443 = lut_tile_4_8_chanxy_out[9];
    assign wire_4445 = lut_tile_4_8_chanxy_out[10];
    assign wire_4447 = lut_tile_4_8_chanxy_out[11];
    assign wire_4449 = lut_tile_4_8_chanxy_out[12];
    assign wire_4451 = lut_tile_4_8_chanxy_out[13];
    assign wire_4453 = lut_tile_4_8_chanxy_out[14];
    assign wire_4455 = lut_tile_4_8_chanxy_out[15];
    assign wire_4457 = lut_tile_4_8_chanxy_out[16];
    assign wire_4459 = lut_tile_4_8_chanxy_out[17];
    assign wire_4461 = lut_tile_4_8_chanxy_out[18];
    assign wire_4463 = lut_tile_4_8_chanxy_out[19];
    assign wire_4465 = lut_tile_4_8_chanxy_out[20];
    assign wire_4467 = lut_tile_4_8_chanxy_out[21];
    assign wire_4469 = lut_tile_4_8_chanxy_out[22];
    assign wire_4471 = lut_tile_4_8_chanxy_out[23];
    assign wire_4473 = lut_tile_4_8_chanxy_out[24];
    assign wire_4475 = lut_tile_4_8_chanxy_out[25];
    assign wire_4477 = lut_tile_4_8_chanxy_out[26];
    assign wire_4479 = lut_tile_4_8_chanxy_out[27];
    assign wire_4481 = lut_tile_4_8_chanxy_out[28];
    assign wire_4483 = lut_tile_4_8_chanxy_out[29];
    assign wire_4485 = lut_tile_4_8_chanxy_out[30];
    assign wire_4487 = lut_tile_4_8_chanxy_out[31];
    assign wire_4489 = lut_tile_4_8_chanxy_out[32];
    assign wire_4491 = lut_tile_4_8_chanxy_out[33];
    assign wire_4493 = lut_tile_4_8_chanxy_out[34];
    assign wire_4495 = lut_tile_4_8_chanxy_out[35];
    assign wire_4496 = lut_tile_4_8_chanxy_out[36];
    assign wire_4497 = lut_tile_4_8_chanxy_out[37];
    assign wire_4498 = lut_tile_4_8_chanxy_out[38];
    assign wire_4499 = lut_tile_4_8_chanxy_out[39];
    assign wire_4500 = lut_tile_4_8_chanxy_out[40];
    assign wire_4501 = lut_tile_4_8_chanxy_out[41];
    assign wire_4502 = lut_tile_4_8_chanxy_out[42];
    assign wire_4503 = lut_tile_4_8_chanxy_out[43];
    assign wire_4504 = lut_tile_4_8_chanxy_out[44];
    assign wire_4505 = lut_tile_4_8_chanxy_out[45];
    assign wire_4506 = lut_tile_4_8_chanxy_out[46];
    assign wire_4507 = lut_tile_4_8_chanxy_out[47];
    assign wire_4508 = lut_tile_4_8_chanxy_out[48];
    assign wire_4509 = lut_tile_4_8_chanxy_out[49];
    assign wire_4510 = lut_tile_4_8_chanxy_out[50];
    assign wire_4511 = lut_tile_4_8_chanxy_out[51];
    assign wire_4512 = lut_tile_4_8_chanxy_out[52];
    assign wire_4513 = lut_tile_4_8_chanxy_out[53];
    assign wire_4514 = lut_tile_4_8_chanxy_out[54];
    assign wire_4515 = lut_tile_4_8_chanxy_out[55];
    assign wire_4516 = lut_tile_4_8_chanxy_out[56];
    assign wire_4517 = lut_tile_4_8_chanxy_out[57];
    assign wire_4518 = lut_tile_4_8_chanxy_out[58];
    assign wire_4519 = lut_tile_4_8_chanxy_out[59];
    assign wire_7689 = lut_tile_4_8_chanxy_out[60];
    assign wire_7697 = lut_tile_4_8_chanxy_out[61];
    assign wire_7705 = lut_tile_4_8_chanxy_out[62];
    assign wire_7713 = lut_tile_4_8_chanxy_out[63];
    assign wire_7721 = lut_tile_4_8_chanxy_out[64];
    assign wire_7729 = lut_tile_4_8_chanxy_out[65];
    assign wire_7737 = lut_tile_4_8_chanxy_out[66];
    assign wire_7745 = lut_tile_4_8_chanxy_out[67];
    assign wire_7753 = lut_tile_4_8_chanxy_out[68];
    assign wire_7761 = lut_tile_4_8_chanxy_out[69];
    assign wire_7769 = lut_tile_4_8_chanxy_out[70];
    assign wire_7777 = lut_tile_4_8_chanxy_out[71];
    assign wire_7832 = lut_tile_4_8_chanxy_out[72];
    assign wire_7834 = lut_tile_4_8_chanxy_out[73];
    assign wire_7836 = lut_tile_4_8_chanxy_out[74];
    assign wire_7838 = lut_tile_4_8_chanxy_out[75];
    assign wire_7840 = lut_tile_4_8_chanxy_out[76];
    assign wire_7842 = lut_tile_4_8_chanxy_out[77];
    assign wire_7844 = lut_tile_4_8_chanxy_out[78];
    assign wire_7846 = lut_tile_4_8_chanxy_out[79];
    assign wire_7848 = lut_tile_4_8_chanxy_out[80];
    assign wire_7850 = lut_tile_4_8_chanxy_out[81];
    assign wire_7852 = lut_tile_4_8_chanxy_out[82];
    assign wire_7854 = lut_tile_4_8_chanxy_out[83];
   // CHANXY OUT
    assign lut_tile_5_1_chanxy_in = {wire_5930, wire_4353, wire_4335, wire_4334, wire_4303, wire_4302, wire_4271, wire_4270, wire_4266, wire_5922, wire_4375, wire_4351, wire_4350, wire_4319, wire_4318, wire_4287, wire_4286, wire_4274, wire_5914, wire_4373, wire_4333, wire_4332, wire_4301, wire_4300, wire_4282, wire_4269, wire_4268, wire_861, wire_5906, wire_4371, wire_4349, wire_4348, wire_4317, wire_4316, wire_4290, wire_4285, wire_4284, wire_861, wire_5898, wire_4369, wire_4329, wire_4328, wire_4298, wire_4297, wire_4296, wire_4265, wire_4264, wire_861, wire_5890, wire_4367, wire_4345, wire_4344, wire_4313, wire_4312, wire_4306, wire_4281, wire_4280, wire_861, wire_5882, wire_4365, wire_4327, wire_4326, wire_4314, wire_4295, wire_4294, wire_4263, wire_4262, wire_861, wire_5874, wire_4363, wire_4343, wire_4342, wire_4322, wire_4311, wire_4310, wire_4279, wire_4278, wire_559, wire_5866, wire_4361, wire_4330, wire_4325, wire_4324, wire_4293, wire_4292, wire_4261, wire_4260, wire_559, wire_5858, wire_4359, wire_4341, wire_4340, wire_4338, wire_4309, wire_4308, wire_4277, wire_4276, wire_559, wire_5850, wire_4357, wire_4346, wire_4321, wire_4320, wire_4289, wire_4288, wire_4257, wire_4256, wire_559, wire_5842, wire_4355, wire_4337, wire_4336, wire_4305, wire_4304, wire_4273, wire_4272, wire_4258, wire_559, wire_6055, wire_4639, wire_4599, wire_4598, wire_4567, wire_4566, wire_4535, wire_4534, wire_4524, wire_6053, wire_4617, wire_4615, wire_4614, wire_4612, wire_4583, wire_4582, wire_4551, wire_4550, wire_6051, wire_4619, wire_4604, wire_4595, wire_4594, wire_4563, wire_4562, wire_4531, wire_4530, wire_861, wire_6049, wire_4621, wire_4611, wire_4610, wire_4596, wire_4579, wire_4578, wire_4547, wire_4546, wire_861, wire_6047, wire_4623, wire_4593, wire_4592, wire_4588, wire_4561, wire_4560, wire_4529, wire_4528, wire_861, wire_6045, wire_4625, wire_4609, wire_4608, wire_4580, wire_4577, wire_4576, wire_4545, wire_4544, wire_861, wire_6043, wire_4627, wire_4591, wire_4590, wire_4572, wire_4559, wire_4558, wire_4527, wire_4526, wire_861, wire_6041, wire_4629, wire_4607, wire_4606, wire_4575, wire_4574, wire_4564, wire_4543, wire_4542, wire_559, wire_6039, wire_4631, wire_4587, wire_4586, wire_4556, wire_4555, wire_4554, wire_4523, wire_4522, wire_559, wire_6037, wire_4633, wire_4603, wire_4602, wire_4571, wire_4570, wire_4548, wire_4539, wire_4538, wire_559, wire_6035, wire_4635, wire_4585, wire_4584, wire_4553, wire_4552, wire_4540, wire_4521, wire_4520, wire_559, wire_6033, wire_4637, wire_4601, wire_4600, wire_4569, wire_4568, wire_4537, wire_4536, wire_4532, wire_559, wire_5743, wire_5742, wire_6035, wire_5979, wire_5978, wire_5971, wire_5970, wire_5963, wire_5962, wire_5956, wire_4639, wire_5731, wire_5730, wire_5707, wire_5706, wire_5719, wire_5718, wire_5779, wire_5682, wire_6037, wire_5983, wire_5982, wire_5975, wire_5974, wire_5967, wire_5966, wire_5954, wire_4637, wire_5755, wire_5754, wire_5791, wire_5694, wire_5729, wire_5728, wire_5705, wire_5704, wire_6039, wire_6027, wire_6026, wire_6019, wire_6018, wire_6011, wire_6010, wire_5952, wire_4635, wire_586, wire_5767, wire_5766, wire_5777, wire_5680, wire_5753, wire_5752, wire_5727, wire_5726, wire_6041, wire_6031, wire_6030, wire_6023, wire_6022, wire_6015, wire_6014, wire_5950, wire_4633, wire_586, wire_5741, wire_5740, wire_5717, wire_5716, wire_5703, wire_5702, wire_5789, wire_5692, wire_6043, wire_6003, wire_6002, wire_5995, wire_5994, wire_5987, wire_5986, wire_5948, wire_4631, wire_586, wire_5765, wire_5764, wire_5775, wire_5678, wire_5739, wire_5738, wire_5715, wire_5714, wire_6045, wire_6007, wire_6006, wire_5999, wire_5998, wire_5991, wire_5990, wire_5946, wire_4629, wire_586, wire_5751, wire_5750, wire_5787, wire_5690, wire_5763, wire_5762, wire_5737, wire_5736, wire_6047, wire_5977, wire_5976, wire_5969, wire_5968, wire_5961, wire_5960, wire_5944, wire_4627, wire_586, wire_5725, wire_5724, wire_5701, wire_5700, wire_5713, wire_5712, wire_5773, wire_5676, wire_6049, wire_5981, wire_5980, wire_5973, wire_5972, wire_5965, wire_5964, wire_5942, wire_4625, wire_558, wire_5749, wire_5748, wire_5785, wire_5688, wire_5723, wire_5722, wire_5699, wire_5698, wire_6051, wire_6025, wire_6024, wire_6017, wire_6016, wire_6009, wire_6008, wire_5940, wire_4623, wire_558, wire_5761, wire_5760, wire_5771, wire_5674, wire_5747, wire_5746, wire_5721, wire_5720, wire_6053, wire_6029, wire_6028, wire_6021, wire_6020, wire_6013, wire_6012, wire_5938, wire_4621, wire_558, wire_5735, wire_5734, wire_5711, wire_5710, wire_586, wire_5697, wire_5696, wire_586, wire_5783, wire_5686, wire_586, wire_6055, wire_6001, wire_6000, wire_5993, wire_5992, wire_5985, wire_5984, wire_5936, wire_4619, wire_558, wire_5759, wire_5758, wire_586, wire_5769, wire_5672, wire_586, wire_5733, wire_5732, wire_558, wire_5709, wire_5708, wire_558, wire_6033, wire_6005, wire_6004, wire_5997, wire_5996, wire_5989, wire_5988, wire_5958, wire_4617, wire_558, wire_5745, wire_5744, wire_558, wire_5781, wire_5684, wire_558, wire_5757, wire_5756, wire_558};
    // CHNAXY TOTAL: 460
    assign wire_4520 = lut_tile_5_1_chanxy_out[0];
    assign wire_4522 = lut_tile_5_1_chanxy_out[1];
    assign wire_4524 = lut_tile_5_1_chanxy_out[2];
    assign wire_4525 = lut_tile_5_1_chanxy_out[3];
    assign wire_4526 = lut_tile_5_1_chanxy_out[4];
    assign wire_4528 = lut_tile_5_1_chanxy_out[5];
    assign wire_4530 = lut_tile_5_1_chanxy_out[6];
    assign wire_4532 = lut_tile_5_1_chanxy_out[7];
    assign wire_4533 = lut_tile_5_1_chanxy_out[8];
    assign wire_4534 = lut_tile_5_1_chanxy_out[9];
    assign wire_4536 = lut_tile_5_1_chanxy_out[10];
    assign wire_4538 = lut_tile_5_1_chanxy_out[11];
    assign wire_4540 = lut_tile_5_1_chanxy_out[12];
    assign wire_4541 = lut_tile_5_1_chanxy_out[13];
    assign wire_4542 = lut_tile_5_1_chanxy_out[14];
    assign wire_4544 = lut_tile_5_1_chanxy_out[15];
    assign wire_4546 = lut_tile_5_1_chanxy_out[16];
    assign wire_4548 = lut_tile_5_1_chanxy_out[17];
    assign wire_4549 = lut_tile_5_1_chanxy_out[18];
    assign wire_4550 = lut_tile_5_1_chanxy_out[19];
    assign wire_4552 = lut_tile_5_1_chanxy_out[20];
    assign wire_4554 = lut_tile_5_1_chanxy_out[21];
    assign wire_4556 = lut_tile_5_1_chanxy_out[22];
    assign wire_4557 = lut_tile_5_1_chanxy_out[23];
    assign wire_4558 = lut_tile_5_1_chanxy_out[24];
    assign wire_4560 = lut_tile_5_1_chanxy_out[25];
    assign wire_4562 = lut_tile_5_1_chanxy_out[26];
    assign wire_4564 = lut_tile_5_1_chanxy_out[27];
    assign wire_4565 = lut_tile_5_1_chanxy_out[28];
    assign wire_4566 = lut_tile_5_1_chanxy_out[29];
    assign wire_4568 = lut_tile_5_1_chanxy_out[30];
    assign wire_4570 = lut_tile_5_1_chanxy_out[31];
    assign wire_4572 = lut_tile_5_1_chanxy_out[32];
    assign wire_4573 = lut_tile_5_1_chanxy_out[33];
    assign wire_4574 = lut_tile_5_1_chanxy_out[34];
    assign wire_4576 = lut_tile_5_1_chanxy_out[35];
    assign wire_4578 = lut_tile_5_1_chanxy_out[36];
    assign wire_4580 = lut_tile_5_1_chanxy_out[37];
    assign wire_4581 = lut_tile_5_1_chanxy_out[38];
    assign wire_4582 = lut_tile_5_1_chanxy_out[39];
    assign wire_4584 = lut_tile_5_1_chanxy_out[40];
    assign wire_4586 = lut_tile_5_1_chanxy_out[41];
    assign wire_4588 = lut_tile_5_1_chanxy_out[42];
    assign wire_4589 = lut_tile_5_1_chanxy_out[43];
    assign wire_4590 = lut_tile_5_1_chanxy_out[44];
    assign wire_4592 = lut_tile_5_1_chanxy_out[45];
    assign wire_4594 = lut_tile_5_1_chanxy_out[46];
    assign wire_4596 = lut_tile_5_1_chanxy_out[47];
    assign wire_4597 = lut_tile_5_1_chanxy_out[48];
    assign wire_4598 = lut_tile_5_1_chanxy_out[49];
    assign wire_4600 = lut_tile_5_1_chanxy_out[50];
    assign wire_4602 = lut_tile_5_1_chanxy_out[51];
    assign wire_4604 = lut_tile_5_1_chanxy_out[52];
    assign wire_4605 = lut_tile_5_1_chanxy_out[53];
    assign wire_4606 = lut_tile_5_1_chanxy_out[54];
    assign wire_4608 = lut_tile_5_1_chanxy_out[55];
    assign wire_4610 = lut_tile_5_1_chanxy_out[56];
    assign wire_4612 = lut_tile_5_1_chanxy_out[57];
    assign wire_4613 = lut_tile_5_1_chanxy_out[58];
    assign wire_4614 = lut_tile_5_1_chanxy_out[59];
    assign wire_5937 = lut_tile_5_1_chanxy_out[60];
    assign wire_5939 = lut_tile_5_1_chanxy_out[61];
    assign wire_5941 = lut_tile_5_1_chanxy_out[62];
    assign wire_5943 = lut_tile_5_1_chanxy_out[63];
    assign wire_5945 = lut_tile_5_1_chanxy_out[64];
    assign wire_5947 = lut_tile_5_1_chanxy_out[65];
    assign wire_5949 = lut_tile_5_1_chanxy_out[66];
    assign wire_5951 = lut_tile_5_1_chanxy_out[67];
    assign wire_5953 = lut_tile_5_1_chanxy_out[68];
    assign wire_5955 = lut_tile_5_1_chanxy_out[69];
    assign wire_5957 = lut_tile_5_1_chanxy_out[70];
    assign wire_5959 = lut_tile_5_1_chanxy_out[71];
    assign wire_6008 = lut_tile_5_1_chanxy_out[72];
    assign wire_6010 = lut_tile_5_1_chanxy_out[73];
    assign wire_6012 = lut_tile_5_1_chanxy_out[74];
    assign wire_6014 = lut_tile_5_1_chanxy_out[75];
    assign wire_6016 = lut_tile_5_1_chanxy_out[76];
    assign wire_6018 = lut_tile_5_1_chanxy_out[77];
    assign wire_6020 = lut_tile_5_1_chanxy_out[78];
    assign wire_6022 = lut_tile_5_1_chanxy_out[79];
    assign wire_6024 = lut_tile_5_1_chanxy_out[80];
    assign wire_6026 = lut_tile_5_1_chanxy_out[81];
    assign wire_6028 = lut_tile_5_1_chanxy_out[82];
    assign wire_6030 = lut_tile_5_1_chanxy_out[83];
   // CHANXY OUT
    assign lut_tile_5_2_chanxy_in = {wire_6196, wire_4377, wire_4335, wire_4334, wire_4303, wire_4302, wire_4271, wire_4270, wire_4268, wire_6188, wire_4399, wire_4371, wire_4370, wire_4363, wire_4362, wire_4355, wire_4354, wire_4276, wire_6180, wire_4397, wire_4351, wire_4350, wire_4319, wire_4318, wire_4287, wire_4286, wire_4284, wire_1165, wire_6172, wire_4395, wire_4375, wire_4374, wire_4367, wire_4366, wire_4359, wire_4358, wire_4292, wire_1165, wire_6164, wire_4393, wire_4345, wire_4344, wire_4313, wire_4312, wire_4300, wire_4281, wire_4280, wire_1165, wire_6156, wire_4391, wire_4329, wire_4328, wire_4308, wire_4297, wire_4296, wire_4265, wire_4264, wire_1165, wire_6148, wire_4389, wire_4327, wire_4326, wire_4316, wire_4295, wire_4294, wire_4263, wire_4262, wire_1165, wire_6140, wire_4387, wire_4369, wire_4368, wire_4361, wire_4360, wire_4353, wire_4352, wire_4324, wire_863, wire_6132, wire_4385, wire_4343, wire_4342, wire_4332, wire_4311, wire_4310, wire_4279, wire_4278, wire_863, wire_6124, wire_4383, wire_4373, wire_4372, wire_4365, wire_4364, wire_4357, wire_4356, wire_4340, wire_863, wire_6116, wire_4381, wire_4348, wire_4337, wire_4336, wire_4305, wire_4304, wire_4273, wire_4272, wire_863, wire_6108, wire_4379, wire_4321, wire_4320, wire_4289, wire_4288, wire_4260, wire_4257, wire_4256, wire_863, wire_6319, wire_4663, wire_4635, wire_4634, wire_4627, wire_4626, wire_4619, wire_4618, wire_4526, wire_6317, wire_4641, wire_4614, wire_4595, wire_4594, wire_4563, wire_4562, wire_4531, wire_4530, wire_6315, wire_4643, wire_4639, wire_4638, wire_4631, wire_4630, wire_4623, wire_4622, wire_4606, wire_1165, wire_6313, wire_4645, wire_4611, wire_4610, wire_4598, wire_4579, wire_4578, wire_4547, wire_4546, wire_1165, wire_6311, wire_4647, wire_4609, wire_4608, wire_4590, wire_4577, wire_4576, wire_4545, wire_4544, wire_1165, wire_6309, wire_4649, wire_4593, wire_4592, wire_4582, wire_4561, wire_4560, wire_4529, wire_4528, wire_1165, wire_6307, wire_4651, wire_4633, wire_4632, wire_4625, wire_4624, wire_4617, wire_4616, wire_4574, wire_1165, wire_6305, wire_4653, wire_4587, wire_4586, wire_4566, wire_4555, wire_4554, wire_4523, wire_4522, wire_863, wire_6303, wire_4655, wire_4637, wire_4636, wire_4629, wire_4628, wire_4621, wire_4620, wire_4558, wire_863, wire_6301, wire_4657, wire_4603, wire_4602, wire_4571, wire_4570, wire_4550, wire_4539, wire_4538, wire_863, wire_6299, wire_4659, wire_4601, wire_4600, wire_4569, wire_4568, wire_4542, wire_4537, wire_4536, wire_863, wire_6297, wire_4661, wire_4585, wire_4584, wire_4553, wire_4552, wire_4534, wire_4521, wire_4520, wire_863, wire_6053, wire_5979, wire_5978, wire_5971, wire_5970, wire_5963, wire_5962, wire_5958, wire_4612, wire_6051, wire_6027, wire_6026, wire_6019, wire_6018, wire_6011, wire_6010, wire_5936, wire_4604, wire_6049, wire_5983, wire_5982, wire_5975, wire_5974, wire_5967, wire_5966, wire_5938, wire_4596, wire_890, wire_6047, wire_6031, wire_6030, wire_6023, wire_6022, wire_6015, wire_6014, wire_5940, wire_4588, wire_890, wire_6045, wire_6007, wire_6006, wire_5999, wire_5998, wire_5991, wire_5990, wire_5942, wire_4580, wire_890, wire_6043, wire_6003, wire_6002, wire_5995, wire_5994, wire_5987, wire_5986, wire_5944, wire_4572, wire_890, wire_6041, wire_5977, wire_5976, wire_5969, wire_5968, wire_5961, wire_5960, wire_5946, wire_4564, wire_890, wire_6039, wire_6025, wire_6024, wire_6017, wire_6016, wire_6009, wire_6008, wire_5948, wire_4556, wire_862, wire_6037, wire_5981, wire_5980, wire_5973, wire_5972, wire_5965, wire_5964, wire_5950, wire_4548, wire_862, wire_6035, wire_6029, wire_6028, wire_6021, wire_6020, wire_6013, wire_6012, wire_5952, wire_4540, wire_862, wire_6033, wire_6005, wire_6004, wire_5997, wire_5996, wire_5989, wire_5988, wire_5954, wire_4532, wire_862, wire_6055, wire_6001, wire_6000, wire_5993, wire_5992, wire_5985, wire_5984, wire_5956, wire_4524, wire_862, wire_6299, wire_6291, wire_6290, wire_6283, wire_6282, wire_6275, wire_6274, wire_6220, wire_4663, wire_6301, wire_6267, wire_6266, wire_6259, wire_6258, wire_6251, wire_6250, wire_6218, wire_4661, wire_6303, wire_6295, wire_6294, wire_6287, wire_6286, wire_6279, wire_6278, wire_6216, wire_4659, wire_890, wire_6305, wire_6271, wire_6270, wire_6263, wire_6262, wire_6255, wire_6254, wire_6214, wire_4657, wire_890, wire_6307, wire_6247, wire_6246, wire_6239, wire_6238, wire_6231, wire_6230, wire_6212, wire_4655, wire_890, wire_6309, wire_6243, wire_6242, wire_6235, wire_6234, wire_6227, wire_6226, wire_6210, wire_4653, wire_890, wire_6311, wire_6289, wire_6288, wire_6281, wire_6280, wire_6273, wire_6272, wire_6208, wire_4651, wire_890, wire_6313, wire_6265, wire_6264, wire_6257, wire_6256, wire_6249, wire_6248, wire_6206, wire_4649, wire_862, wire_6315, wire_6293, wire_6292, wire_6285, wire_6284, wire_6277, wire_6276, wire_6204, wire_4647, wire_862, wire_6317, wire_6269, wire_6268, wire_6261, wire_6260, wire_6253, wire_6252, wire_6202, wire_4645, wire_862, wire_6319, wire_6245, wire_6244, wire_6237, wire_6236, wire_6229, wire_6228, wire_6200, wire_4643, wire_862, wire_6297, wire_6241, wire_6240, wire_6233, wire_6232, wire_6225, wire_6224, wire_6222, wire_4641, wire_862};
    // CHNAXY TOTAL: 472
    assign wire_4527 = lut_tile_5_2_chanxy_out[0];
    assign wire_4535 = lut_tile_5_2_chanxy_out[1];
    assign wire_4543 = lut_tile_5_2_chanxy_out[2];
    assign wire_4551 = lut_tile_5_2_chanxy_out[3];
    assign wire_4559 = lut_tile_5_2_chanxy_out[4];
    assign wire_4567 = lut_tile_5_2_chanxy_out[5];
    assign wire_4575 = lut_tile_5_2_chanxy_out[6];
    assign wire_4583 = lut_tile_5_2_chanxy_out[7];
    assign wire_4591 = lut_tile_5_2_chanxy_out[8];
    assign wire_4599 = lut_tile_5_2_chanxy_out[9];
    assign wire_4607 = lut_tile_5_2_chanxy_out[10];
    assign wire_4615 = lut_tile_5_2_chanxy_out[11];
    assign wire_4616 = lut_tile_5_2_chanxy_out[12];
    assign wire_4618 = lut_tile_5_2_chanxy_out[13];
    assign wire_4620 = lut_tile_5_2_chanxy_out[14];
    assign wire_4622 = lut_tile_5_2_chanxy_out[15];
    assign wire_4624 = lut_tile_5_2_chanxy_out[16];
    assign wire_4626 = lut_tile_5_2_chanxy_out[17];
    assign wire_4628 = lut_tile_5_2_chanxy_out[18];
    assign wire_4630 = lut_tile_5_2_chanxy_out[19];
    assign wire_4632 = lut_tile_5_2_chanxy_out[20];
    assign wire_4634 = lut_tile_5_2_chanxy_out[21];
    assign wire_4636 = lut_tile_5_2_chanxy_out[22];
    assign wire_4638 = lut_tile_5_2_chanxy_out[23];
    assign wire_6201 = lut_tile_5_2_chanxy_out[24];
    assign wire_6203 = lut_tile_5_2_chanxy_out[25];
    assign wire_6205 = lut_tile_5_2_chanxy_out[26];
    assign wire_6207 = lut_tile_5_2_chanxy_out[27];
    assign wire_6209 = lut_tile_5_2_chanxy_out[28];
    assign wire_6211 = lut_tile_5_2_chanxy_out[29];
    assign wire_6213 = lut_tile_5_2_chanxy_out[30];
    assign wire_6215 = lut_tile_5_2_chanxy_out[31];
    assign wire_6217 = lut_tile_5_2_chanxy_out[32];
    assign wire_6219 = lut_tile_5_2_chanxy_out[33];
    assign wire_6221 = lut_tile_5_2_chanxy_out[34];
    assign wire_6223 = lut_tile_5_2_chanxy_out[35];
    assign wire_6272 = lut_tile_5_2_chanxy_out[36];
    assign wire_6274 = lut_tile_5_2_chanxy_out[37];
    assign wire_6276 = lut_tile_5_2_chanxy_out[38];
    assign wire_6278 = lut_tile_5_2_chanxy_out[39];
    assign wire_6280 = lut_tile_5_2_chanxy_out[40];
    assign wire_6282 = lut_tile_5_2_chanxy_out[41];
    assign wire_6284 = lut_tile_5_2_chanxy_out[42];
    assign wire_6286 = lut_tile_5_2_chanxy_out[43];
    assign wire_6288 = lut_tile_5_2_chanxy_out[44];
    assign wire_6290 = lut_tile_5_2_chanxy_out[45];
    assign wire_6292 = lut_tile_5_2_chanxy_out[46];
    assign wire_6294 = lut_tile_5_2_chanxy_out[47];
   // CHANXY OUT
    assign lut_tile_5_3_chanxy_in = {wire_6462, wire_4401, wire_4399, wire_4398, wire_4391, wire_4390, wire_4383, wire_4382, wire_4270, wire_6454, wire_4423, wire_4395, wire_4394, wire_4387, wire_4386, wire_4379, wire_4378, wire_4278, wire_6446, wire_4421, wire_4371, wire_4370, wire_4363, wire_4362, wire_4355, wire_4354, wire_4286, wire_1469, wire_6438, wire_4419, wire_4329, wire_4328, wire_4297, wire_4296, wire_4294, wire_4265, wire_4264, wire_1469, wire_6430, wire_4417, wire_4375, wire_4374, wire_4367, wire_4366, wire_4359, wire_4358, wire_4302, wire_1469, wire_6422, wire_4415, wire_4345, wire_4344, wire_4313, wire_4312, wire_4310, wire_4281, wire_4280, wire_1469, wire_6414, wire_4413, wire_4397, wire_4396, wire_4389, wire_4388, wire_4381, wire_4380, wire_4318, wire_1469, wire_6406, wire_4411, wire_4393, wire_4392, wire_4385, wire_4384, wire_4377, wire_4376, wire_4326, wire_1167, wire_6398, wire_4409, wire_4369, wire_4368, wire_4361, wire_4360, wire_4353, wire_4352, wire_4334, wire_1167, wire_6390, wire_4407, wire_4342, wire_4321, wire_4320, wire_4289, wire_4288, wire_4257, wire_4256, wire_1167, wire_6382, wire_4405, wire_4373, wire_4372, wire_4365, wire_4364, wire_4357, wire_4356, wire_4350, wire_1167, wire_6374, wire_4403, wire_4337, wire_4336, wire_4305, wire_4304, wire_4273, wire_4272, wire_4262, wire_1167, wire_6583, wire_4687, wire_4659, wire_4658, wire_4651, wire_4650, wire_4643, wire_4642, wire_4520, wire_6581, wire_4665, wire_4635, wire_4634, wire_4627, wire_4626, wire_4619, wire_4618, wire_4608, wire_6579, wire_4667, wire_4663, wire_4662, wire_4655, wire_4654, wire_4647, wire_4646, wire_4600, wire_1469, wire_6577, wire_4669, wire_4639, wire_4638, wire_4631, wire_4630, wire_4623, wire_4622, wire_4592, wire_1469, wire_6575, wire_4671, wire_4611, wire_4610, wire_4584, wire_4579, wire_4578, wire_4547, wire_4546, wire_1469, wire_6573, wire_4673, wire_4595, wire_4594, wire_4576, wire_4563, wire_4562, wire_4531, wire_4530, wire_1469, wire_6571, wire_4675, wire_4657, wire_4656, wire_4649, wire_4648, wire_4641, wire_4640, wire_4568, wire_1469, wire_6569, wire_4677, wire_4633, wire_4632, wire_4625, wire_4624, wire_4617, wire_4616, wire_4560, wire_1167, wire_6567, wire_4679, wire_4661, wire_4660, wire_4653, wire_4652, wire_4645, wire_4644, wire_4552, wire_1167, wire_6565, wire_4681, wire_4637, wire_4636, wire_4629, wire_4628, wire_4621, wire_4620, wire_4544, wire_1167, wire_6563, wire_4683, wire_4603, wire_4602, wire_4571, wire_4570, wire_4539, wire_4538, wire_4536, wire_1167, wire_6561, wire_4685, wire_4587, wire_4586, wire_4555, wire_4554, wire_4528, wire_4523, wire_4522, wire_1167, wire_6317, wire_6295, wire_6294, wire_6287, wire_6286, wire_6279, wire_6278, wire_6222, wire_4614, wire_6315, wire_6291, wire_6290, wire_6283, wire_6282, wire_6275, wire_6274, wire_6200, wire_4606, wire_6313, wire_6267, wire_6266, wire_6259, wire_6258, wire_6251, wire_6250, wire_6202, wire_4598, wire_1194, wire_6311, wire_6243, wire_6242, wire_6235, wire_6234, wire_6227, wire_6226, wire_6204, wire_4590, wire_1194, wire_6309, wire_6271, wire_6270, wire_6263, wire_6262, wire_6255, wire_6254, wire_6206, wire_4582, wire_1194, wire_6307, wire_6247, wire_6246, wire_6239, wire_6238, wire_6231, wire_6230, wire_6208, wire_4574, wire_1194, wire_6305, wire_6293, wire_6292, wire_6285, wire_6284, wire_6277, wire_6276, wire_6210, wire_4566, wire_1194, wire_6303, wire_6289, wire_6288, wire_6281, wire_6280, wire_6273, wire_6272, wire_6212, wire_4558, wire_1166, wire_6301, wire_6265, wire_6264, wire_6257, wire_6256, wire_6249, wire_6248, wire_6214, wire_4550, wire_1166, wire_6299, wire_6241, wire_6240, wire_6233, wire_6232, wire_6225, wire_6224, wire_6216, wire_4542, wire_1166, wire_6297, wire_6269, wire_6268, wire_6261, wire_6260, wire_6253, wire_6252, wire_6218, wire_4534, wire_1166, wire_6319, wire_6245, wire_6244, wire_6237, wire_6236, wire_6229, wire_6228, wire_6220, wire_4526, wire_1166, wire_6563, wire_6555, wire_6554, wire_6547, wire_6546, wire_6539, wire_6538, wire_6484, wire_4687, wire_6565, wire_6531, wire_6530, wire_6523, wire_6522, wire_6515, wire_6514, wire_6482, wire_4685, wire_6567, wire_6559, wire_6558, wire_6551, wire_6550, wire_6543, wire_6542, wire_6480, wire_4683, wire_1194, wire_6569, wire_6535, wire_6534, wire_6527, wire_6526, wire_6519, wire_6518, wire_6478, wire_4681, wire_1194, wire_6571, wire_6511, wire_6510, wire_6503, wire_6502, wire_6495, wire_6494, wire_6476, wire_4679, wire_1194, wire_6573, wire_6507, wire_6506, wire_6499, wire_6498, wire_6491, wire_6490, wire_6474, wire_4677, wire_1194, wire_6575, wire_6553, wire_6552, wire_6545, wire_6544, wire_6537, wire_6536, wire_6472, wire_4675, wire_1194, wire_6577, wire_6529, wire_6528, wire_6521, wire_6520, wire_6513, wire_6512, wire_6470, wire_4673, wire_1166, wire_6579, wire_6557, wire_6556, wire_6549, wire_6548, wire_6541, wire_6540, wire_6468, wire_4671, wire_1166, wire_6581, wire_6533, wire_6532, wire_6525, wire_6524, wire_6517, wire_6516, wire_6466, wire_4669, wire_1166, wire_6583, wire_6509, wire_6508, wire_6501, wire_6500, wire_6493, wire_6492, wire_6464, wire_4667, wire_1166, wire_6561, wire_6505, wire_6504, wire_6497, wire_6496, wire_6489, wire_6488, wire_6486, wire_4665, wire_1166};
    // CHNAXY TOTAL: 472
    assign wire_4521 = lut_tile_5_3_chanxy_out[0];
    assign wire_4529 = lut_tile_5_3_chanxy_out[1];
    assign wire_4537 = lut_tile_5_3_chanxy_out[2];
    assign wire_4545 = lut_tile_5_3_chanxy_out[3];
    assign wire_4553 = lut_tile_5_3_chanxy_out[4];
    assign wire_4561 = lut_tile_5_3_chanxy_out[5];
    assign wire_4569 = lut_tile_5_3_chanxy_out[6];
    assign wire_4577 = lut_tile_5_3_chanxy_out[7];
    assign wire_4585 = lut_tile_5_3_chanxy_out[8];
    assign wire_4593 = lut_tile_5_3_chanxy_out[9];
    assign wire_4601 = lut_tile_5_3_chanxy_out[10];
    assign wire_4609 = lut_tile_5_3_chanxy_out[11];
    assign wire_4640 = lut_tile_5_3_chanxy_out[12];
    assign wire_4642 = lut_tile_5_3_chanxy_out[13];
    assign wire_4644 = lut_tile_5_3_chanxy_out[14];
    assign wire_4646 = lut_tile_5_3_chanxy_out[15];
    assign wire_4648 = lut_tile_5_3_chanxy_out[16];
    assign wire_4650 = lut_tile_5_3_chanxy_out[17];
    assign wire_4652 = lut_tile_5_3_chanxy_out[18];
    assign wire_4654 = lut_tile_5_3_chanxy_out[19];
    assign wire_4656 = lut_tile_5_3_chanxy_out[20];
    assign wire_4658 = lut_tile_5_3_chanxy_out[21];
    assign wire_4660 = lut_tile_5_3_chanxy_out[22];
    assign wire_4662 = lut_tile_5_3_chanxy_out[23];
    assign wire_6465 = lut_tile_5_3_chanxy_out[24];
    assign wire_6467 = lut_tile_5_3_chanxy_out[25];
    assign wire_6469 = lut_tile_5_3_chanxy_out[26];
    assign wire_6471 = lut_tile_5_3_chanxy_out[27];
    assign wire_6473 = lut_tile_5_3_chanxy_out[28];
    assign wire_6475 = lut_tile_5_3_chanxy_out[29];
    assign wire_6477 = lut_tile_5_3_chanxy_out[30];
    assign wire_6479 = lut_tile_5_3_chanxy_out[31];
    assign wire_6481 = lut_tile_5_3_chanxy_out[32];
    assign wire_6483 = lut_tile_5_3_chanxy_out[33];
    assign wire_6485 = lut_tile_5_3_chanxy_out[34];
    assign wire_6487 = lut_tile_5_3_chanxy_out[35];
    assign wire_6536 = lut_tile_5_3_chanxy_out[36];
    assign wire_6538 = lut_tile_5_3_chanxy_out[37];
    assign wire_6540 = lut_tile_5_3_chanxy_out[38];
    assign wire_6542 = lut_tile_5_3_chanxy_out[39];
    assign wire_6544 = lut_tile_5_3_chanxy_out[40];
    assign wire_6546 = lut_tile_5_3_chanxy_out[41];
    assign wire_6548 = lut_tile_5_3_chanxy_out[42];
    assign wire_6550 = lut_tile_5_3_chanxy_out[43];
    assign wire_6552 = lut_tile_5_3_chanxy_out[44];
    assign wire_6554 = lut_tile_5_3_chanxy_out[45];
    assign wire_6556 = lut_tile_5_3_chanxy_out[46];
    assign wire_6558 = lut_tile_5_3_chanxy_out[47];
   // CHANXY OUT
    assign lut_tile_5_4_chanxy_in = {wire_6720, wire_4425, wire_4423, wire_4422, wire_4415, wire_4414, wire_4407, wire_4406, wire_4264, wire_6712, wire_4447, wire_4419, wire_4418, wire_4411, wire_4410, wire_4403, wire_4402, wire_4272, wire_6704, wire_4445, wire_4395, wire_4394, wire_4387, wire_4386, wire_4379, wire_4378, wire_4280, wire_1773, wire_6696, wire_4443, wire_4371, wire_4370, wire_4363, wire_4362, wire_4355, wire_4354, wire_4288, wire_1773, wire_6688, wire_4441, wire_4399, wire_4398, wire_4391, wire_4390, wire_4383, wire_4382, wire_4296, wire_1773, wire_6680, wire_4439, wire_4375, wire_4374, wire_4367, wire_4366, wire_4359, wire_4358, wire_4304, wire_1773, wire_6672, wire_4437, wire_4421, wire_4420, wire_4413, wire_4412, wire_4405, wire_4404, wire_4312, wire_1773, wire_6664, wire_4435, wire_4417, wire_4416, wire_4409, wire_4408, wire_4401, wire_4400, wire_4320, wire_1471, wire_6656, wire_4433, wire_4393, wire_4392, wire_4385, wire_4384, wire_4377, wire_4376, wire_4328, wire_1471, wire_6648, wire_4431, wire_4369, wire_4368, wire_4361, wire_4360, wire_4353, wire_4352, wire_4336, wire_1471, wire_6640, wire_4429, wire_4397, wire_4396, wire_4389, wire_4388, wire_4381, wire_4380, wire_4344, wire_1471, wire_6632, wire_4427, wire_4373, wire_4372, wire_4365, wire_4364, wire_4357, wire_4356, wire_4256, wire_1471, wire_6847, wire_4711, wire_4663, wire_4662, wire_4655, wire_4654, wire_4647, wire_4646, wire_4522, wire_6845, wire_4689, wire_4659, wire_4658, wire_4651, wire_4650, wire_4643, wire_4642, wire_4610, wire_6843, wire_4691, wire_4635, wire_4634, wire_4627, wire_4626, wire_4619, wire_4618, wire_4602, wire_1773, wire_6841, wire_4693, wire_4683, wire_4682, wire_4675, wire_4674, wire_4667, wire_4666, wire_4594, wire_1773, wire_6839, wire_4695, wire_4639, wire_4638, wire_4631, wire_4630, wire_4623, wire_4622, wire_4586, wire_1773, wire_6837, wire_4697, wire_4687, wire_4686, wire_4679, wire_4678, wire_4671, wire_4670, wire_4578, wire_1773, wire_6835, wire_4699, wire_4661, wire_4660, wire_4653, wire_4652, wire_4645, wire_4644, wire_4570, wire_1773, wire_6833, wire_4701, wire_4657, wire_4656, wire_4649, wire_4648, wire_4641, wire_4640, wire_4562, wire_1471, wire_6831, wire_4703, wire_4633, wire_4632, wire_4625, wire_4624, wire_4617, wire_4616, wire_4554, wire_1471, wire_6829, wire_4705, wire_4681, wire_4680, wire_4673, wire_4672, wire_4665, wire_4664, wire_4546, wire_1471, wire_6827, wire_4707, wire_4637, wire_4636, wire_4629, wire_4628, wire_4621, wire_4620, wire_4538, wire_1471, wire_6825, wire_4709, wire_4685, wire_4684, wire_4677, wire_4676, wire_4669, wire_4668, wire_4530, wire_1471, wire_6581, wire_6559, wire_6558, wire_6551, wire_6550, wire_6543, wire_6542, wire_6486, wire_4608, wire_6579, wire_6555, wire_6554, wire_6547, wire_6546, wire_6539, wire_6538, wire_6464, wire_4600, wire_6577, wire_6531, wire_6530, wire_6523, wire_6522, wire_6515, wire_6514, wire_6466, wire_4592, wire_1498, wire_6575, wire_6507, wire_6506, wire_6499, wire_6498, wire_6491, wire_6490, wire_6468, wire_4584, wire_1498, wire_6573, wire_6535, wire_6534, wire_6527, wire_6526, wire_6519, wire_6518, wire_6470, wire_4576, wire_1498, wire_6571, wire_6511, wire_6510, wire_6503, wire_6502, wire_6495, wire_6494, wire_6472, wire_4568, wire_1498, wire_6569, wire_6557, wire_6556, wire_6549, wire_6548, wire_6541, wire_6540, wire_6474, wire_4560, wire_1498, wire_6567, wire_6553, wire_6552, wire_6545, wire_6544, wire_6537, wire_6536, wire_6476, wire_4552, wire_1470, wire_6565, wire_6529, wire_6528, wire_6521, wire_6520, wire_6513, wire_6512, wire_6478, wire_4544, wire_1470, wire_6563, wire_6505, wire_6504, wire_6497, wire_6496, wire_6489, wire_6488, wire_6480, wire_4536, wire_1470, wire_6561, wire_6533, wire_6532, wire_6525, wire_6524, wire_6517, wire_6516, wire_6482, wire_4528, wire_1470, wire_6583, wire_6509, wire_6508, wire_6501, wire_6500, wire_6493, wire_6492, wire_6484, wire_4520, wire_1470, wire_6827, wire_6799, wire_6798, wire_6791, wire_6790, wire_6783, wire_6782, wire_6748, wire_4711, wire_6829, wire_6795, wire_6794, wire_6787, wire_6786, wire_6779, wire_6778, wire_6746, wire_4709, wire_6831, wire_6771, wire_6770, wire_6763, wire_6762, wire_6755, wire_6754, wire_6744, wire_4707, wire_1498, wire_6833, wire_6819, wire_6818, wire_6811, wire_6810, wire_6803, wire_6802, wire_6742, wire_4705, wire_1498, wire_6835, wire_6775, wire_6774, wire_6767, wire_6766, wire_6759, wire_6758, wire_6740, wire_4703, wire_1498, wire_6837, wire_6823, wire_6822, wire_6815, wire_6814, wire_6807, wire_6806, wire_6738, wire_4701, wire_1498, wire_6839, wire_6797, wire_6796, wire_6789, wire_6788, wire_6781, wire_6780, wire_6736, wire_4699, wire_1498, wire_6841, wire_6793, wire_6792, wire_6785, wire_6784, wire_6777, wire_6776, wire_6734, wire_4697, wire_1470, wire_6843, wire_6769, wire_6768, wire_6761, wire_6760, wire_6753, wire_6752, wire_6732, wire_4695, wire_1470, wire_6845, wire_6817, wire_6816, wire_6809, wire_6808, wire_6801, wire_6800, wire_6730, wire_4693, wire_1470, wire_6847, wire_6773, wire_6772, wire_6765, wire_6764, wire_6757, wire_6756, wire_6728, wire_4691, wire_1470, wire_6825, wire_6821, wire_6820, wire_6813, wire_6812, wire_6805, wire_6804, wire_6750, wire_4689, wire_1470};
    // CHNAXY TOTAL: 472
    assign wire_4523 = lut_tile_5_4_chanxy_out[0];
    assign wire_4531 = lut_tile_5_4_chanxy_out[1];
    assign wire_4539 = lut_tile_5_4_chanxy_out[2];
    assign wire_4547 = lut_tile_5_4_chanxy_out[3];
    assign wire_4555 = lut_tile_5_4_chanxy_out[4];
    assign wire_4563 = lut_tile_5_4_chanxy_out[5];
    assign wire_4571 = lut_tile_5_4_chanxy_out[6];
    assign wire_4579 = lut_tile_5_4_chanxy_out[7];
    assign wire_4587 = lut_tile_5_4_chanxy_out[8];
    assign wire_4595 = lut_tile_5_4_chanxy_out[9];
    assign wire_4603 = lut_tile_5_4_chanxy_out[10];
    assign wire_4611 = lut_tile_5_4_chanxy_out[11];
    assign wire_4664 = lut_tile_5_4_chanxy_out[12];
    assign wire_4666 = lut_tile_5_4_chanxy_out[13];
    assign wire_4668 = lut_tile_5_4_chanxy_out[14];
    assign wire_4670 = lut_tile_5_4_chanxy_out[15];
    assign wire_4672 = lut_tile_5_4_chanxy_out[16];
    assign wire_4674 = lut_tile_5_4_chanxy_out[17];
    assign wire_4676 = lut_tile_5_4_chanxy_out[18];
    assign wire_4678 = lut_tile_5_4_chanxy_out[19];
    assign wire_4680 = lut_tile_5_4_chanxy_out[20];
    assign wire_4682 = lut_tile_5_4_chanxy_out[21];
    assign wire_4684 = lut_tile_5_4_chanxy_out[22];
    assign wire_4686 = lut_tile_5_4_chanxy_out[23];
    assign wire_6729 = lut_tile_5_4_chanxy_out[24];
    assign wire_6731 = lut_tile_5_4_chanxy_out[25];
    assign wire_6733 = lut_tile_5_4_chanxy_out[26];
    assign wire_6735 = lut_tile_5_4_chanxy_out[27];
    assign wire_6737 = lut_tile_5_4_chanxy_out[28];
    assign wire_6739 = lut_tile_5_4_chanxy_out[29];
    assign wire_6741 = lut_tile_5_4_chanxy_out[30];
    assign wire_6743 = lut_tile_5_4_chanxy_out[31];
    assign wire_6745 = lut_tile_5_4_chanxy_out[32];
    assign wire_6747 = lut_tile_5_4_chanxy_out[33];
    assign wire_6749 = lut_tile_5_4_chanxy_out[34];
    assign wire_6751 = lut_tile_5_4_chanxy_out[35];
    assign wire_6800 = lut_tile_5_4_chanxy_out[36];
    assign wire_6802 = lut_tile_5_4_chanxy_out[37];
    assign wire_6804 = lut_tile_5_4_chanxy_out[38];
    assign wire_6806 = lut_tile_5_4_chanxy_out[39];
    assign wire_6808 = lut_tile_5_4_chanxy_out[40];
    assign wire_6810 = lut_tile_5_4_chanxy_out[41];
    assign wire_6812 = lut_tile_5_4_chanxy_out[42];
    assign wire_6814 = lut_tile_5_4_chanxy_out[43];
    assign wire_6816 = lut_tile_5_4_chanxy_out[44];
    assign wire_6818 = lut_tile_5_4_chanxy_out[45];
    assign wire_6820 = lut_tile_5_4_chanxy_out[46];
    assign wire_6822 = lut_tile_5_4_chanxy_out[47];
   // CHANXY OUT
    assign lut_tile_5_5_chanxy_in = {wire_6986, wire_4449, wire_4419, wire_4418, wire_4411, wire_4410, wire_4403, wire_4402, wire_4354, wire_6978, wire_4471, wire_4423, wire_4422, wire_4415, wire_4414, wire_4407, wire_4406, wire_4356, wire_6970, wire_4469, wire_4395, wire_4394, wire_4387, wire_4386, wire_4379, wire_4378, wire_4358, wire_2077, wire_6962, wire_4467, wire_4399, wire_4398, wire_4391, wire_4390, wire_4383, wire_4382, wire_4360, wire_2077, wire_6954, wire_4465, wire_4443, wire_4442, wire_4435, wire_4434, wire_4427, wire_4426, wire_4362, wire_2077, wire_6946, wire_4463, wire_4447, wire_4446, wire_4439, wire_4438, wire_4431, wire_4430, wire_4364, wire_2077, wire_6938, wire_4461, wire_4417, wire_4416, wire_4409, wire_4408, wire_4401, wire_4400, wire_4366, wire_2077, wire_6930, wire_4459, wire_4421, wire_4420, wire_4413, wire_4412, wire_4405, wire_4404, wire_4368, wire_1775, wire_6922, wire_4457, wire_4393, wire_4392, wire_4385, wire_4384, wire_4377, wire_4376, wire_4370, wire_1775, wire_6914, wire_4455, wire_4397, wire_4396, wire_4389, wire_4388, wire_4381, wire_4380, wire_4372, wire_1775, wire_6906, wire_4453, wire_4441, wire_4440, wire_4433, wire_4432, wire_4425, wire_4424, wire_4374, wire_1775, wire_6898, wire_4451, wire_4445, wire_4444, wire_4437, wire_4436, wire_4429, wire_4428, wire_4352, wire_1775, wire_7111, wire_4735, wire_4659, wire_4658, wire_4651, wire_4650, wire_4643, wire_4642, wire_4616, wire_7109, wire_4713, wire_4663, wire_4662, wire_4655, wire_4654, wire_4647, wire_4646, wire_4638, wire_7107, wire_4715, wire_4707, wire_4706, wire_4699, wire_4698, wire_4691, wire_4690, wire_4636, wire_2077, wire_7105, wire_4717, wire_4711, wire_4710, wire_4703, wire_4702, wire_4695, wire_4694, wire_4634, wire_2077, wire_7103, wire_4719, wire_4683, wire_4682, wire_4675, wire_4674, wire_4667, wire_4666, wire_4632, wire_2077, wire_7101, wire_4721, wire_4687, wire_4686, wire_4679, wire_4678, wire_4671, wire_4670, wire_4630, wire_2077, wire_7099, wire_4723, wire_4657, wire_4656, wire_4649, wire_4648, wire_4641, wire_4640, wire_4628, wire_2077, wire_7097, wire_4725, wire_4661, wire_4660, wire_4653, wire_4652, wire_4645, wire_4644, wire_4626, wire_1775, wire_7095, wire_4727, wire_4705, wire_4704, wire_4697, wire_4696, wire_4689, wire_4688, wire_4624, wire_1775, wire_7093, wire_4729, wire_4709, wire_4708, wire_4701, wire_4700, wire_4693, wire_4692, wire_4622, wire_1775, wire_7091, wire_4731, wire_4681, wire_4680, wire_4673, wire_4672, wire_4665, wire_4664, wire_4620, wire_1775, wire_7089, wire_4733, wire_4685, wire_4684, wire_4677, wire_4676, wire_4669, wire_4668, wire_4618, wire_1775, wire_6845, wire_6795, wire_6794, wire_6787, wire_6786, wire_6779, wire_6778, wire_6750, wire_4610, wire_6843, wire_6799, wire_6798, wire_6791, wire_6790, wire_6783, wire_6782, wire_6728, wire_4602, wire_6841, wire_6771, wire_6770, wire_6763, wire_6762, wire_6755, wire_6754, wire_6730, wire_4594, wire_1802, wire_6839, wire_6775, wire_6774, wire_6767, wire_6766, wire_6759, wire_6758, wire_6732, wire_4586, wire_1802, wire_6837, wire_6819, wire_6818, wire_6811, wire_6810, wire_6803, wire_6802, wire_6734, wire_4578, wire_1802, wire_6835, wire_6823, wire_6822, wire_6815, wire_6814, wire_6807, wire_6806, wire_6736, wire_4570, wire_1802, wire_6833, wire_6793, wire_6792, wire_6785, wire_6784, wire_6777, wire_6776, wire_6738, wire_4562, wire_1802, wire_6831, wire_6797, wire_6796, wire_6789, wire_6788, wire_6781, wire_6780, wire_6740, wire_4554, wire_1774, wire_6829, wire_6769, wire_6768, wire_6761, wire_6760, wire_6753, wire_6752, wire_6742, wire_4546, wire_1774, wire_6827, wire_6773, wire_6772, wire_6765, wire_6764, wire_6757, wire_6756, wire_6744, wire_4538, wire_1774, wire_6825, wire_6817, wire_6816, wire_6809, wire_6808, wire_6801, wire_6800, wire_6746, wire_4530, wire_1774, wire_6847, wire_6821, wire_6820, wire_6813, wire_6812, wire_6805, wire_6804, wire_6748, wire_4522, wire_1774, wire_7091, wire_7035, wire_7034, wire_7027, wire_7026, wire_7019, wire_7018, wire_7012, wire_4735, wire_7093, wire_7039, wire_7038, wire_7031, wire_7030, wire_7023, wire_7022, wire_7010, wire_4733, wire_7095, wire_7083, wire_7082, wire_7075, wire_7074, wire_7067, wire_7066, wire_7008, wire_4731, wire_1802, wire_7097, wire_7087, wire_7086, wire_7079, wire_7078, wire_7071, wire_7070, wire_7006, wire_4729, wire_1802, wire_7099, wire_7059, wire_7058, wire_7051, wire_7050, wire_7043, wire_7042, wire_7004, wire_4727, wire_1802, wire_7101, wire_7063, wire_7062, wire_7055, wire_7054, wire_7047, wire_7046, wire_7002, wire_4725, wire_1802, wire_7103, wire_7033, wire_7032, wire_7025, wire_7024, wire_7017, wire_7016, wire_7000, wire_4723, wire_1802, wire_7105, wire_7037, wire_7036, wire_7029, wire_7028, wire_7021, wire_7020, wire_6998, wire_4721, wire_1774, wire_7107, wire_7081, wire_7080, wire_7073, wire_7072, wire_7065, wire_7064, wire_6996, wire_4719, wire_1774, wire_7109, wire_7085, wire_7084, wire_7077, wire_7076, wire_7069, wire_7068, wire_6994, wire_4717, wire_1774, wire_7111, wire_7057, wire_7056, wire_7049, wire_7048, wire_7041, wire_7040, wire_6992, wire_4715, wire_1774, wire_7089, wire_7061, wire_7060, wire_7053, wire_7052, wire_7045, wire_7044, wire_7014, wire_4713, wire_1774};
    // CHNAXY TOTAL: 472
    assign wire_4617 = lut_tile_5_5_chanxy_out[0];
    assign wire_4619 = lut_tile_5_5_chanxy_out[1];
    assign wire_4621 = lut_tile_5_5_chanxy_out[2];
    assign wire_4623 = lut_tile_5_5_chanxy_out[3];
    assign wire_4625 = lut_tile_5_5_chanxy_out[4];
    assign wire_4627 = lut_tile_5_5_chanxy_out[5];
    assign wire_4629 = lut_tile_5_5_chanxy_out[6];
    assign wire_4631 = lut_tile_5_5_chanxy_out[7];
    assign wire_4633 = lut_tile_5_5_chanxy_out[8];
    assign wire_4635 = lut_tile_5_5_chanxy_out[9];
    assign wire_4637 = lut_tile_5_5_chanxy_out[10];
    assign wire_4639 = lut_tile_5_5_chanxy_out[11];
    assign wire_4688 = lut_tile_5_5_chanxy_out[12];
    assign wire_4690 = lut_tile_5_5_chanxy_out[13];
    assign wire_4692 = lut_tile_5_5_chanxy_out[14];
    assign wire_4694 = lut_tile_5_5_chanxy_out[15];
    assign wire_4696 = lut_tile_5_5_chanxy_out[16];
    assign wire_4698 = lut_tile_5_5_chanxy_out[17];
    assign wire_4700 = lut_tile_5_5_chanxy_out[18];
    assign wire_4702 = lut_tile_5_5_chanxy_out[19];
    assign wire_4704 = lut_tile_5_5_chanxy_out[20];
    assign wire_4706 = lut_tile_5_5_chanxy_out[21];
    assign wire_4708 = lut_tile_5_5_chanxy_out[22];
    assign wire_4710 = lut_tile_5_5_chanxy_out[23];
    assign wire_6993 = lut_tile_5_5_chanxy_out[24];
    assign wire_6995 = lut_tile_5_5_chanxy_out[25];
    assign wire_6997 = lut_tile_5_5_chanxy_out[26];
    assign wire_6999 = lut_tile_5_5_chanxy_out[27];
    assign wire_7001 = lut_tile_5_5_chanxy_out[28];
    assign wire_7003 = lut_tile_5_5_chanxy_out[29];
    assign wire_7005 = lut_tile_5_5_chanxy_out[30];
    assign wire_7007 = lut_tile_5_5_chanxy_out[31];
    assign wire_7009 = lut_tile_5_5_chanxy_out[32];
    assign wire_7011 = lut_tile_5_5_chanxy_out[33];
    assign wire_7013 = lut_tile_5_5_chanxy_out[34];
    assign wire_7015 = lut_tile_5_5_chanxy_out[35];
    assign wire_7064 = lut_tile_5_5_chanxy_out[36];
    assign wire_7066 = lut_tile_5_5_chanxy_out[37];
    assign wire_7068 = lut_tile_5_5_chanxy_out[38];
    assign wire_7070 = lut_tile_5_5_chanxy_out[39];
    assign wire_7072 = lut_tile_5_5_chanxy_out[40];
    assign wire_7074 = lut_tile_5_5_chanxy_out[41];
    assign wire_7076 = lut_tile_5_5_chanxy_out[42];
    assign wire_7078 = lut_tile_5_5_chanxy_out[43];
    assign wire_7080 = lut_tile_5_5_chanxy_out[44];
    assign wire_7082 = lut_tile_5_5_chanxy_out[45];
    assign wire_7084 = lut_tile_5_5_chanxy_out[46];
    assign wire_7086 = lut_tile_5_5_chanxy_out[47];
   // CHANXY OUT
    assign lut_tile_5_6_chanxy_in = {wire_7252, wire_4473, wire_4419, wire_4418, wire_4411, wire_4410, wire_4403, wire_4402, wire_4378, wire_7244, wire_4495, wire_4467, wire_4466, wire_4459, wire_4458, wire_4451, wire_4450, wire_4380, wire_7236, wire_4493, wire_4423, wire_4422, wire_4415, wire_4414, wire_4407, wire_4406, wire_4382, wire_2381, wire_7228, wire_4491, wire_4471, wire_4470, wire_4463, wire_4462, wire_4455, wire_4454, wire_4384, wire_2381, wire_7220, wire_4489, wire_4447, wire_4446, wire_4439, wire_4438, wire_4431, wire_4430, wire_4386, wire_2381, wire_7212, wire_4487, wire_4443, wire_4442, wire_4435, wire_4434, wire_4427, wire_4426, wire_4388, wire_2381, wire_7204, wire_4485, wire_4417, wire_4416, wire_4409, wire_4408, wire_4401, wire_4400, wire_4390, wire_2381, wire_7196, wire_4483, wire_4465, wire_4464, wire_4457, wire_4456, wire_4449, wire_4448, wire_4392, wire_2079, wire_7188, wire_4481, wire_4421, wire_4420, wire_4413, wire_4412, wire_4405, wire_4404, wire_4394, wire_2079, wire_7180, wire_4479, wire_4469, wire_4468, wire_4461, wire_4460, wire_4453, wire_4452, wire_4396, wire_2079, wire_7172, wire_4477, wire_4445, wire_4444, wire_4437, wire_4436, wire_4429, wire_4428, wire_4398, wire_2079, wire_7164, wire_4475, wire_4441, wire_4440, wire_4433, wire_4432, wire_4425, wire_4424, wire_4376, wire_2079, wire_7375, wire_4759, wire_4731, wire_4730, wire_4723, wire_4722, wire_4715, wire_4714, wire_4640, wire_7373, wire_4737, wire_4707, wire_4706, wire_4699, wire_4698, wire_4691, wire_4690, wire_4662, wire_7371, wire_4739, wire_4735, wire_4734, wire_4727, wire_4726, wire_4719, wire_4718, wire_4660, wire_2381, wire_7369, wire_4741, wire_4711, wire_4710, wire_4703, wire_4702, wire_4695, wire_4694, wire_4658, wire_2381, wire_7367, wire_4743, wire_4687, wire_4686, wire_4679, wire_4678, wire_4671, wire_4670, wire_4656, wire_2381, wire_7365, wire_4745, wire_4683, wire_4682, wire_4675, wire_4674, wire_4667, wire_4666, wire_4654, wire_2381, wire_7363, wire_4747, wire_4729, wire_4728, wire_4721, wire_4720, wire_4713, wire_4712, wire_4652, wire_2381, wire_7361, wire_4749, wire_4705, wire_4704, wire_4697, wire_4696, wire_4689, wire_4688, wire_4650, wire_2079, wire_7359, wire_4751, wire_4733, wire_4732, wire_4725, wire_4724, wire_4717, wire_4716, wire_4648, wire_2079, wire_7357, wire_4753, wire_4709, wire_4708, wire_4701, wire_4700, wire_4693, wire_4692, wire_4646, wire_2079, wire_7355, wire_4755, wire_4685, wire_4684, wire_4677, wire_4676, wire_4669, wire_4668, wire_4644, wire_2079, wire_7353, wire_4757, wire_4681, wire_4680, wire_4673, wire_4672, wire_4665, wire_4664, wire_4642, wire_2079, wire_7109, wire_7035, wire_7034, wire_7027, wire_7026, wire_7019, wire_7018, wire_7014, wire_4638, wire_7107, wire_7083, wire_7082, wire_7075, wire_7074, wire_7067, wire_7066, wire_6992, wire_4636, wire_7105, wire_7039, wire_7038, wire_7031, wire_7030, wire_7023, wire_7022, wire_6994, wire_4634, wire_2106, wire_7103, wire_7087, wire_7086, wire_7079, wire_7078, wire_7071, wire_7070, wire_6996, wire_4632, wire_2106, wire_7101, wire_7063, wire_7062, wire_7055, wire_7054, wire_7047, wire_7046, wire_6998, wire_4630, wire_2106, wire_7099, wire_7059, wire_7058, wire_7051, wire_7050, wire_7043, wire_7042, wire_7000, wire_4628, wire_2106, wire_7097, wire_7033, wire_7032, wire_7025, wire_7024, wire_7017, wire_7016, wire_7002, wire_4626, wire_2106, wire_7095, wire_7081, wire_7080, wire_7073, wire_7072, wire_7065, wire_7064, wire_7004, wire_4624, wire_2078, wire_7093, wire_7037, wire_7036, wire_7029, wire_7028, wire_7021, wire_7020, wire_7006, wire_4622, wire_2078, wire_7091, wire_7085, wire_7084, wire_7077, wire_7076, wire_7069, wire_7068, wire_7008, wire_4620, wire_2078, wire_7089, wire_7061, wire_7060, wire_7053, wire_7052, wire_7045, wire_7044, wire_7010, wire_4618, wire_2078, wire_7111, wire_7057, wire_7056, wire_7049, wire_7048, wire_7041, wire_7040, wire_7012, wire_4616, wire_2078, wire_7355, wire_7347, wire_7346, wire_7339, wire_7338, wire_7331, wire_7330, wire_7276, wire_4759, wire_7357, wire_7323, wire_7322, wire_7315, wire_7314, wire_7307, wire_7306, wire_7274, wire_4757, wire_7359, wire_7351, wire_7350, wire_7343, wire_7342, wire_7335, wire_7334, wire_7272, wire_4755, wire_2106, wire_7361, wire_7327, wire_7326, wire_7319, wire_7318, wire_7311, wire_7310, wire_7270, wire_4753, wire_2106, wire_7363, wire_7303, wire_7302, wire_7295, wire_7294, wire_7287, wire_7286, wire_7268, wire_4751, wire_2106, wire_7365, wire_7299, wire_7298, wire_7291, wire_7290, wire_7283, wire_7282, wire_7266, wire_4749, wire_2106, wire_7367, wire_7345, wire_7344, wire_7337, wire_7336, wire_7329, wire_7328, wire_7264, wire_4747, wire_2106, wire_7369, wire_7321, wire_7320, wire_7313, wire_7312, wire_7305, wire_7304, wire_7262, wire_4745, wire_2078, wire_7371, wire_7349, wire_7348, wire_7341, wire_7340, wire_7333, wire_7332, wire_7260, wire_4743, wire_2078, wire_7373, wire_7325, wire_7324, wire_7317, wire_7316, wire_7309, wire_7308, wire_7258, wire_4741, wire_2078, wire_7375, wire_7301, wire_7300, wire_7293, wire_7292, wire_7285, wire_7284, wire_7256, wire_4739, wire_2078, wire_7353, wire_7297, wire_7296, wire_7289, wire_7288, wire_7281, wire_7280, wire_7278, wire_4737, wire_2078};
    // CHNAXY TOTAL: 472
    assign wire_4641 = lut_tile_5_6_chanxy_out[0];
    assign wire_4643 = lut_tile_5_6_chanxy_out[1];
    assign wire_4645 = lut_tile_5_6_chanxy_out[2];
    assign wire_4647 = lut_tile_5_6_chanxy_out[3];
    assign wire_4649 = lut_tile_5_6_chanxy_out[4];
    assign wire_4651 = lut_tile_5_6_chanxy_out[5];
    assign wire_4653 = lut_tile_5_6_chanxy_out[6];
    assign wire_4655 = lut_tile_5_6_chanxy_out[7];
    assign wire_4657 = lut_tile_5_6_chanxy_out[8];
    assign wire_4659 = lut_tile_5_6_chanxy_out[9];
    assign wire_4661 = lut_tile_5_6_chanxy_out[10];
    assign wire_4663 = lut_tile_5_6_chanxy_out[11];
    assign wire_4712 = lut_tile_5_6_chanxy_out[12];
    assign wire_4714 = lut_tile_5_6_chanxy_out[13];
    assign wire_4716 = lut_tile_5_6_chanxy_out[14];
    assign wire_4718 = lut_tile_5_6_chanxy_out[15];
    assign wire_4720 = lut_tile_5_6_chanxy_out[16];
    assign wire_4722 = lut_tile_5_6_chanxy_out[17];
    assign wire_4724 = lut_tile_5_6_chanxy_out[18];
    assign wire_4726 = lut_tile_5_6_chanxy_out[19];
    assign wire_4728 = lut_tile_5_6_chanxy_out[20];
    assign wire_4730 = lut_tile_5_6_chanxy_out[21];
    assign wire_4732 = lut_tile_5_6_chanxy_out[22];
    assign wire_4734 = lut_tile_5_6_chanxy_out[23];
    assign wire_7257 = lut_tile_5_6_chanxy_out[24];
    assign wire_7259 = lut_tile_5_6_chanxy_out[25];
    assign wire_7261 = lut_tile_5_6_chanxy_out[26];
    assign wire_7263 = lut_tile_5_6_chanxy_out[27];
    assign wire_7265 = lut_tile_5_6_chanxy_out[28];
    assign wire_7267 = lut_tile_5_6_chanxy_out[29];
    assign wire_7269 = lut_tile_5_6_chanxy_out[30];
    assign wire_7271 = lut_tile_5_6_chanxy_out[31];
    assign wire_7273 = lut_tile_5_6_chanxy_out[32];
    assign wire_7275 = lut_tile_5_6_chanxy_out[33];
    assign wire_7277 = lut_tile_5_6_chanxy_out[34];
    assign wire_7279 = lut_tile_5_6_chanxy_out[35];
    assign wire_7328 = lut_tile_5_6_chanxy_out[36];
    assign wire_7330 = lut_tile_5_6_chanxy_out[37];
    assign wire_7332 = lut_tile_5_6_chanxy_out[38];
    assign wire_7334 = lut_tile_5_6_chanxy_out[39];
    assign wire_7336 = lut_tile_5_6_chanxy_out[40];
    assign wire_7338 = lut_tile_5_6_chanxy_out[41];
    assign wire_7340 = lut_tile_5_6_chanxy_out[42];
    assign wire_7342 = lut_tile_5_6_chanxy_out[43];
    assign wire_7344 = lut_tile_5_6_chanxy_out[44];
    assign wire_7346 = lut_tile_5_6_chanxy_out[45];
    assign wire_7348 = lut_tile_5_6_chanxy_out[46];
    assign wire_7350 = lut_tile_5_6_chanxy_out[47];
   // CHANXY OUT
    assign lut_tile_5_7_chanxy_in = {wire_7518, wire_4497, wire_4495, wire_4494, wire_4487, wire_4486, wire_4479, wire_4478, wire_4402, wire_7510, wire_4519, wire_4491, wire_4490, wire_4483, wire_4482, wire_4475, wire_4474, wire_4404, wire_7502, wire_4517, wire_4467, wire_4466, wire_4459, wire_4458, wire_4451, wire_4450, wire_4406, wire_2685, wire_7494, wire_4515, wire_4443, wire_4442, wire_4435, wire_4434, wire_4427, wire_4426, wire_4408, wire_2685, wire_7486, wire_4513, wire_4471, wire_4470, wire_4463, wire_4462, wire_4455, wire_4454, wire_4410, wire_2685, wire_7478, wire_4511, wire_4447, wire_4446, wire_4439, wire_4438, wire_4431, wire_4430, wire_4412, wire_2685, wire_7470, wire_4509, wire_4493, wire_4492, wire_4485, wire_4484, wire_4477, wire_4476, wire_4414, wire_2685, wire_7462, wire_4507, wire_4489, wire_4488, wire_4481, wire_4480, wire_4473, wire_4472, wire_4416, wire_2383, wire_7454, wire_4505, wire_4465, wire_4464, wire_4457, wire_4456, wire_4449, wire_4448, wire_4418, wire_2383, wire_7446, wire_4503, wire_4441, wire_4440, wire_4433, wire_4432, wire_4425, wire_4424, wire_4420, wire_2383, wire_7438, wire_4501, wire_4469, wire_4468, wire_4461, wire_4460, wire_4453, wire_4452, wire_4422, wire_2383, wire_7430, wire_4499, wire_4445, wire_4444, wire_4437, wire_4436, wire_4429, wire_4428, wire_4400, wire_2383, wire_7639, wire_4783, wire_4755, wire_4754, wire_4747, wire_4746, wire_4739, wire_4738, wire_4664, wire_7637, wire_4761, wire_4731, wire_4730, wire_4723, wire_4722, wire_4715, wire_4714, wire_4686, wire_7635, wire_4763, wire_4759, wire_4758, wire_4751, wire_4750, wire_4743, wire_4742, wire_4684, wire_2685, wire_7633, wire_4765, wire_4735, wire_4734, wire_4727, wire_4726, wire_4719, wire_4718, wire_4682, wire_2685, wire_7631, wire_4767, wire_4711, wire_4710, wire_4703, wire_4702, wire_4695, wire_4694, wire_4680, wire_2685, wire_7629, wire_4769, wire_4707, wire_4706, wire_4699, wire_4698, wire_4691, wire_4690, wire_4678, wire_2685, wire_7627, wire_4771, wire_4753, wire_4752, wire_4745, wire_4744, wire_4737, wire_4736, wire_4676, wire_2685, wire_7625, wire_4773, wire_4729, wire_4728, wire_4721, wire_4720, wire_4713, wire_4712, wire_4674, wire_2383, wire_7623, wire_4775, wire_4757, wire_4756, wire_4749, wire_4748, wire_4741, wire_4740, wire_4672, wire_2383, wire_7621, wire_4777, wire_4733, wire_4732, wire_4725, wire_4724, wire_4717, wire_4716, wire_4670, wire_2383, wire_7619, wire_4779, wire_4709, wire_4708, wire_4701, wire_4700, wire_4693, wire_4692, wire_4668, wire_2383, wire_7617, wire_4781, wire_4705, wire_4704, wire_4697, wire_4696, wire_4689, wire_4688, wire_4666, wire_2383, wire_7373, wire_7351, wire_7350, wire_7343, wire_7342, wire_7335, wire_7334, wire_7278, wire_4662, wire_7371, wire_7347, wire_7346, wire_7339, wire_7338, wire_7331, wire_7330, wire_7256, wire_4660, wire_7369, wire_7323, wire_7322, wire_7315, wire_7314, wire_7307, wire_7306, wire_7258, wire_4658, wire_2410, wire_7367, wire_7299, wire_7298, wire_7291, wire_7290, wire_7283, wire_7282, wire_7260, wire_4656, wire_2410, wire_7365, wire_7327, wire_7326, wire_7319, wire_7318, wire_7311, wire_7310, wire_7262, wire_4654, wire_2410, wire_7363, wire_7303, wire_7302, wire_7295, wire_7294, wire_7287, wire_7286, wire_7264, wire_4652, wire_2410, wire_7361, wire_7349, wire_7348, wire_7341, wire_7340, wire_7333, wire_7332, wire_7266, wire_4650, wire_2410, wire_7359, wire_7345, wire_7344, wire_7337, wire_7336, wire_7329, wire_7328, wire_7268, wire_4648, wire_2382, wire_7357, wire_7321, wire_7320, wire_7313, wire_7312, wire_7305, wire_7304, wire_7270, wire_4646, wire_2382, wire_7355, wire_7297, wire_7296, wire_7289, wire_7288, wire_7281, wire_7280, wire_7272, wire_4644, wire_2382, wire_7353, wire_7325, wire_7324, wire_7317, wire_7316, wire_7309, wire_7308, wire_7274, wire_4642, wire_2382, wire_7375, wire_7301, wire_7300, wire_7293, wire_7292, wire_7285, wire_7284, wire_7276, wire_4640, wire_2382, wire_7619, wire_7611, wire_7610, wire_7603, wire_7602, wire_7595, wire_7594, wire_7540, wire_4783, wire_7621, wire_7587, wire_7586, wire_7579, wire_7578, wire_7571, wire_7570, wire_7538, wire_4781, wire_7623, wire_7615, wire_7614, wire_7607, wire_7606, wire_7599, wire_7598, wire_7536, wire_4779, wire_2410, wire_7625, wire_7591, wire_7590, wire_7583, wire_7582, wire_7575, wire_7574, wire_7534, wire_4777, wire_2410, wire_7627, wire_7567, wire_7566, wire_7559, wire_7558, wire_7551, wire_7550, wire_7532, wire_4775, wire_2410, wire_7629, wire_7563, wire_7562, wire_7555, wire_7554, wire_7547, wire_7546, wire_7530, wire_4773, wire_2410, wire_7631, wire_7609, wire_7608, wire_7601, wire_7600, wire_7593, wire_7592, wire_7528, wire_4771, wire_2410, wire_7633, wire_7585, wire_7584, wire_7577, wire_7576, wire_7569, wire_7568, wire_7526, wire_4769, wire_2382, wire_7635, wire_7613, wire_7612, wire_7605, wire_7604, wire_7597, wire_7596, wire_7524, wire_4767, wire_2382, wire_7637, wire_7589, wire_7588, wire_7581, wire_7580, wire_7573, wire_7572, wire_7522, wire_4765, wire_2382, wire_7639, wire_7565, wire_7564, wire_7557, wire_7556, wire_7549, wire_7548, wire_7520, wire_4763, wire_2382, wire_7617, wire_7561, wire_7560, wire_7553, wire_7552, wire_7545, wire_7544, wire_7542, wire_4761, wire_2382};
    // CHNAXY TOTAL: 472
    assign wire_4665 = lut_tile_5_7_chanxy_out[0];
    assign wire_4667 = lut_tile_5_7_chanxy_out[1];
    assign wire_4669 = lut_tile_5_7_chanxy_out[2];
    assign wire_4671 = lut_tile_5_7_chanxy_out[3];
    assign wire_4673 = lut_tile_5_7_chanxy_out[4];
    assign wire_4675 = lut_tile_5_7_chanxy_out[5];
    assign wire_4677 = lut_tile_5_7_chanxy_out[6];
    assign wire_4679 = lut_tile_5_7_chanxy_out[7];
    assign wire_4681 = lut_tile_5_7_chanxy_out[8];
    assign wire_4683 = lut_tile_5_7_chanxy_out[9];
    assign wire_4685 = lut_tile_5_7_chanxy_out[10];
    assign wire_4687 = lut_tile_5_7_chanxy_out[11];
    assign wire_4736 = lut_tile_5_7_chanxy_out[12];
    assign wire_4738 = lut_tile_5_7_chanxy_out[13];
    assign wire_4740 = lut_tile_5_7_chanxy_out[14];
    assign wire_4742 = lut_tile_5_7_chanxy_out[15];
    assign wire_4744 = lut_tile_5_7_chanxy_out[16];
    assign wire_4746 = lut_tile_5_7_chanxy_out[17];
    assign wire_4748 = lut_tile_5_7_chanxy_out[18];
    assign wire_4750 = lut_tile_5_7_chanxy_out[19];
    assign wire_4752 = lut_tile_5_7_chanxy_out[20];
    assign wire_4754 = lut_tile_5_7_chanxy_out[21];
    assign wire_4756 = lut_tile_5_7_chanxy_out[22];
    assign wire_4758 = lut_tile_5_7_chanxy_out[23];
    assign wire_7521 = lut_tile_5_7_chanxy_out[24];
    assign wire_7523 = lut_tile_5_7_chanxy_out[25];
    assign wire_7525 = lut_tile_5_7_chanxy_out[26];
    assign wire_7527 = lut_tile_5_7_chanxy_out[27];
    assign wire_7529 = lut_tile_5_7_chanxy_out[28];
    assign wire_7531 = lut_tile_5_7_chanxy_out[29];
    assign wire_7533 = lut_tile_5_7_chanxy_out[30];
    assign wire_7535 = lut_tile_5_7_chanxy_out[31];
    assign wire_7537 = lut_tile_5_7_chanxy_out[32];
    assign wire_7539 = lut_tile_5_7_chanxy_out[33];
    assign wire_7541 = lut_tile_5_7_chanxy_out[34];
    assign wire_7543 = lut_tile_5_7_chanxy_out[35];
    assign wire_7592 = lut_tile_5_7_chanxy_out[36];
    assign wire_7594 = lut_tile_5_7_chanxy_out[37];
    assign wire_7596 = lut_tile_5_7_chanxy_out[38];
    assign wire_7598 = lut_tile_5_7_chanxy_out[39];
    assign wire_7600 = lut_tile_5_7_chanxy_out[40];
    assign wire_7602 = lut_tile_5_7_chanxy_out[41];
    assign wire_7604 = lut_tile_5_7_chanxy_out[42];
    assign wire_7606 = lut_tile_5_7_chanxy_out[43];
    assign wire_7608 = lut_tile_5_7_chanxy_out[44];
    assign wire_7610 = lut_tile_5_7_chanxy_out[45];
    assign wire_7612 = lut_tile_5_7_chanxy_out[46];
    assign wire_7614 = lut_tile_5_7_chanxy_out[47];
   // CHANXY OUT
    assign lut_tile_5_8_chanxy_in = {wire_7776, wire_4518, wire_4512, wire_4506, wire_4500, wire_3051, wire_3042, wire_3036, wire_7768, wire_4494, wire_4488, wire_4482, wire_4476, wire_3048, wire_3042, wire_3036, wire_7760, wire_4470, wire_4464, wire_4458, wire_4452, wire_3048, wire_3042, wire_3033, wire_7752, wire_4446, wire_4440, wire_4434, wire_4428, wire_3054, wire_3048, wire_3042, wire_3033, wire_7744, wire_4516, wire_4510, wire_4504, wire_4498, wire_3054, wire_3048, wire_3039, wire_3033, wire_7736, wire_4492, wire_4486, wire_4480, wire_4474, wire_3054, wire_3048, wire_3039, wire_3033, wire_7728, wire_4468, wire_4462, wire_4456, wire_4450, wire_3054, wire_3045, wire_3039, wire_3033, wire_7720, wire_4444, wire_4438, wire_4432, wire_4426, wire_3054, wire_3045, wire_3039, wire_2687, wire_7712, wire_4514, wire_4508, wire_4502, wire_4496, wire_3051, wire_3045, wire_3039, wire_2687, wire_7704, wire_4490, wire_4484, wire_4478, wire_4472, wire_3051, wire_3045, wire_3036, wire_2687, wire_7696, wire_4466, wire_4460, wire_4454, wire_4448, wire_3051, wire_3045, wire_3036, wire_2687, wire_7688, wire_4442, wire_4436, wire_4430, wire_4424, wire_3051, wire_3042, wire_3036, wire_2687, wire_7903, wire_4758, wire_4752, wire_4746, wire_4740, wire_3051, wire_3042, wire_3036, wire_7901, wire_4734, wire_4728, wire_4722, wire_4716, wire_3048, wire_3042, wire_3036, wire_7899, wire_4710, wire_4704, wire_4698, wire_4692, wire_3048, wire_3042, wire_3033, wire_7897, wire_4782, wire_4776, wire_4770, wire_4764, wire_3054, wire_3048, wire_3042, wire_3033, wire_7895, wire_4756, wire_4750, wire_4744, wire_4738, wire_3054, wire_3048, wire_3039, wire_3033, wire_7893, wire_4732, wire_4726, wire_4720, wire_4714, wire_3054, wire_3048, wire_3039, wire_3033, wire_7891, wire_4708, wire_4702, wire_4696, wire_4690, wire_3054, wire_3045, wire_3039, wire_3033, wire_7889, wire_4780, wire_4774, wire_4768, wire_4762, wire_3054, wire_3045, wire_3039, wire_2687, wire_7887, wire_4754, wire_4748, wire_4742, wire_4736, wire_3051, wire_3045, wire_3039, wire_2687, wire_7885, wire_4730, wire_4724, wire_4718, wire_4712, wire_3051, wire_3045, wire_3036, wire_2687, wire_7883, wire_4706, wire_4700, wire_4694, wire_4688, wire_3051, wire_3045, wire_3036, wire_2687, wire_7881, wire_4778, wire_4772, wire_4766, wire_4760, wire_3051, wire_3042, wire_3036, wire_2687, wire_7891, wire_7794, wire_7637, wire_7615, wire_7614, wire_7607, wire_7606, wire_7599, wire_7598, wire_7542, wire_4686, wire_7817, wire_7816, wire_7635, wire_7611, wire_7610, wire_7603, wire_7602, wire_7595, wire_7594, wire_7520, wire_4684, wire_7879, wire_7878, wire_7633, wire_7587, wire_7586, wire_7579, wire_7578, wire_7571, wire_7570, wire_7522, wire_4682, wire_2714, wire_7901, wire_7804, wire_7631, wire_7563, wire_7562, wire_7555, wire_7554, wire_7547, wire_7546, wire_7524, wire_4680, wire_2714, wire_7827, wire_7826, wire_7629, wire_7591, wire_7590, wire_7583, wire_7582, wire_7575, wire_7574, wire_7526, wire_4678, wire_2714, wire_7863, wire_7862, wire_7627, wire_7567, wire_7566, wire_7559, wire_7558, wire_7551, wire_7550, wire_7528, wire_4676, wire_2714, wire_7885, wire_7788, wire_7625, wire_7613, wire_7612, wire_7605, wire_7604, wire_7597, wire_7596, wire_7530, wire_4674, wire_2714, wire_7811, wire_7810, wire_7623, wire_7609, wire_7608, wire_7601, wire_7600, wire_7593, wire_7592, wire_7532, wire_4672, wire_2686, wire_7873, wire_7872, wire_7621, wire_7585, wire_7584, wire_7577, wire_7576, wire_7569, wire_7568, wire_7534, wire_4670, wire_2686, wire_7895, wire_7798, wire_2714, wire_7619, wire_7561, wire_7560, wire_7553, wire_7552, wire_7545, wire_7544, wire_7536, wire_4668, wire_2686, wire_7821, wire_7820, wire_2686, wire_7617, wire_7589, wire_7588, wire_7581, wire_7580, wire_7573, wire_7572, wire_7538, wire_4666, wire_2686, wire_7857, wire_7856, wire_2686, wire_7639, wire_7565, wire_7564, wire_7557, wire_7556, wire_7549, wire_7548, wire_7540, wire_4664, wire_2686, wire_7843, wire_7842, wire_7867, wire_7866, wire_7903, wire_7806, wire_7853, wire_7852, wire_7877, wire_7876, wire_7887, wire_7790, wire_7837, wire_7836, wire_7861, wire_7860, wire_7897, wire_7800, wire_7847, wire_7846, wire_7871, wire_7870, wire_2714, wire_7881, wire_7784, wire_2686, wire_7819, wire_7818, wire_7831, wire_7830, wire_7889, wire_7792, wire_7829, wire_7828, wire_7815, wire_7814, wire_7899, wire_7802, wire_7813, wire_7812, wire_7825, wire_7824, wire_7883, wire_7786, wire_7823, wire_7822, wire_7809, wire_7808, wire_2714, wire_7893, wire_7796, wire_2686, wire_7855, wire_7854, wire_7841, wire_7840, wire_7865, wire_7864, wire_7839, wire_7838, wire_7851, wire_7850, wire_7875, wire_7874, wire_7849, wire_7848, wire_7835, wire_7834, wire_7859, wire_7858, wire_7833, wire_7832, wire_2714, wire_7845, wire_7844, wire_2714, wire_7869, wire_7868, wire_2686};
    // CHNAXY TOTAL: 434
    assign wire_4689 = lut_tile_5_8_chanxy_out[0];
    assign wire_4691 = lut_tile_5_8_chanxy_out[1];
    assign wire_4693 = lut_tile_5_8_chanxy_out[2];
    assign wire_4695 = lut_tile_5_8_chanxy_out[3];
    assign wire_4697 = lut_tile_5_8_chanxy_out[4];
    assign wire_4699 = lut_tile_5_8_chanxy_out[5];
    assign wire_4701 = lut_tile_5_8_chanxy_out[6];
    assign wire_4703 = lut_tile_5_8_chanxy_out[7];
    assign wire_4705 = lut_tile_5_8_chanxy_out[8];
    assign wire_4707 = lut_tile_5_8_chanxy_out[9];
    assign wire_4709 = lut_tile_5_8_chanxy_out[10];
    assign wire_4711 = lut_tile_5_8_chanxy_out[11];
    assign wire_4713 = lut_tile_5_8_chanxy_out[12];
    assign wire_4715 = lut_tile_5_8_chanxy_out[13];
    assign wire_4717 = lut_tile_5_8_chanxy_out[14];
    assign wire_4719 = lut_tile_5_8_chanxy_out[15];
    assign wire_4721 = lut_tile_5_8_chanxy_out[16];
    assign wire_4723 = lut_tile_5_8_chanxy_out[17];
    assign wire_4725 = lut_tile_5_8_chanxy_out[18];
    assign wire_4727 = lut_tile_5_8_chanxy_out[19];
    assign wire_4729 = lut_tile_5_8_chanxy_out[20];
    assign wire_4731 = lut_tile_5_8_chanxy_out[21];
    assign wire_4733 = lut_tile_5_8_chanxy_out[22];
    assign wire_4735 = lut_tile_5_8_chanxy_out[23];
    assign wire_4737 = lut_tile_5_8_chanxy_out[24];
    assign wire_4739 = lut_tile_5_8_chanxy_out[25];
    assign wire_4741 = lut_tile_5_8_chanxy_out[26];
    assign wire_4743 = lut_tile_5_8_chanxy_out[27];
    assign wire_4745 = lut_tile_5_8_chanxy_out[28];
    assign wire_4747 = lut_tile_5_8_chanxy_out[29];
    assign wire_4749 = lut_tile_5_8_chanxy_out[30];
    assign wire_4751 = lut_tile_5_8_chanxy_out[31];
    assign wire_4753 = lut_tile_5_8_chanxy_out[32];
    assign wire_4755 = lut_tile_5_8_chanxy_out[33];
    assign wire_4757 = lut_tile_5_8_chanxy_out[34];
    assign wire_4759 = lut_tile_5_8_chanxy_out[35];
    assign wire_4760 = lut_tile_5_8_chanxy_out[36];
    assign wire_4761 = lut_tile_5_8_chanxy_out[37];
    assign wire_4762 = lut_tile_5_8_chanxy_out[38];
    assign wire_4763 = lut_tile_5_8_chanxy_out[39];
    assign wire_4764 = lut_tile_5_8_chanxy_out[40];
    assign wire_4765 = lut_tile_5_8_chanxy_out[41];
    assign wire_4766 = lut_tile_5_8_chanxy_out[42];
    assign wire_4767 = lut_tile_5_8_chanxy_out[43];
    assign wire_4768 = lut_tile_5_8_chanxy_out[44];
    assign wire_4769 = lut_tile_5_8_chanxy_out[45];
    assign wire_4770 = lut_tile_5_8_chanxy_out[46];
    assign wire_4771 = lut_tile_5_8_chanxy_out[47];
    assign wire_4772 = lut_tile_5_8_chanxy_out[48];
    assign wire_4773 = lut_tile_5_8_chanxy_out[49];
    assign wire_4774 = lut_tile_5_8_chanxy_out[50];
    assign wire_4775 = lut_tile_5_8_chanxy_out[51];
    assign wire_4776 = lut_tile_5_8_chanxy_out[52];
    assign wire_4777 = lut_tile_5_8_chanxy_out[53];
    assign wire_4778 = lut_tile_5_8_chanxy_out[54];
    assign wire_4779 = lut_tile_5_8_chanxy_out[55];
    assign wire_4780 = lut_tile_5_8_chanxy_out[56];
    assign wire_4781 = lut_tile_5_8_chanxy_out[57];
    assign wire_4782 = lut_tile_5_8_chanxy_out[58];
    assign wire_4783 = lut_tile_5_8_chanxy_out[59];
    assign wire_7785 = lut_tile_5_8_chanxy_out[60];
    assign wire_7787 = lut_tile_5_8_chanxy_out[61];
    assign wire_7789 = lut_tile_5_8_chanxy_out[62];
    assign wire_7791 = lut_tile_5_8_chanxy_out[63];
    assign wire_7793 = lut_tile_5_8_chanxy_out[64];
    assign wire_7795 = lut_tile_5_8_chanxy_out[65];
    assign wire_7797 = lut_tile_5_8_chanxy_out[66];
    assign wire_7799 = lut_tile_5_8_chanxy_out[67];
    assign wire_7801 = lut_tile_5_8_chanxy_out[68];
    assign wire_7803 = lut_tile_5_8_chanxy_out[69];
    assign wire_7805 = lut_tile_5_8_chanxy_out[70];
    assign wire_7807 = lut_tile_5_8_chanxy_out[71];
    assign wire_7856 = lut_tile_5_8_chanxy_out[72];
    assign wire_7858 = lut_tile_5_8_chanxy_out[73];
    assign wire_7860 = lut_tile_5_8_chanxy_out[74];
    assign wire_7862 = lut_tile_5_8_chanxy_out[75];
    assign wire_7864 = lut_tile_5_8_chanxy_out[76];
    assign wire_7866 = lut_tile_5_8_chanxy_out[77];
    assign wire_7868 = lut_tile_5_8_chanxy_out[78];
    assign wire_7870 = lut_tile_5_8_chanxy_out[79];
    assign wire_7872 = lut_tile_5_8_chanxy_out[80];
    assign wire_7874 = lut_tile_5_8_chanxy_out[81];
    assign wire_7876 = lut_tile_5_8_chanxy_out[82];
    assign wire_7878 = lut_tile_5_8_chanxy_out[83];
   // CHANXY OUT
    assign lut_tile_6_1_chanxy_in = {wire_5958, wire_4617, wire_4599, wire_4598, wire_4567, wire_4566, wire_4535, wire_4534, wire_4532, wire_5956, wire_4639, wire_4595, wire_4594, wire_4563, wire_4562, wire_4540, wire_4531, wire_4530, wire_5954, wire_4637, wire_4615, wire_4614, wire_4583, wire_4582, wire_4551, wire_4550, wire_4548, wire_887, wire_5952, wire_4635, wire_4611, wire_4610, wire_4579, wire_4578, wire_4556, wire_4547, wire_4546, wire_887, wire_5950, wire_4633, wire_4609, wire_4608, wire_4577, wire_4576, wire_4564, wire_4545, wire_4544, wire_887, wire_5948, wire_4631, wire_4593, wire_4592, wire_4572, wire_4561, wire_4560, wire_4529, wire_4528, wire_887, wire_5946, wire_4629, wire_4591, wire_4590, wire_4580, wire_4559, wire_4558, wire_4527, wire_4526, wire_887, wire_5944, wire_4627, wire_4588, wire_4587, wire_4586, wire_4555, wire_4554, wire_4523, wire_4522, wire_585, wire_5942, wire_4625, wire_4607, wire_4606, wire_4596, wire_4575, wire_4574, wire_4543, wire_4542, wire_585, wire_5940, wire_4623, wire_4604, wire_4603, wire_4602, wire_4571, wire_4570, wire_4539, wire_4538, wire_585, wire_5938, wire_4621, wire_4612, wire_4601, wire_4600, wire_4569, wire_4568, wire_4537, wire_4536, wire_585, wire_5936, wire_4619, wire_4585, wire_4584, wire_4553, wire_4552, wire_4524, wire_4521, wire_4520, wire_585, wire_6079, wire_4903, wire_4861, wire_4860, wire_4829, wire_4828, wire_4797, wire_4796, wire_4790, wire_6077, wire_4881, wire_4878, wire_4859, wire_4858, wire_4827, wire_4826, wire_4795, wire_4794, wire_6075, wire_4883, wire_4877, wire_4876, wire_4870, wire_4845, wire_4844, wire_4813, wire_4812, wire_887, wire_6073, wire_4885, wire_4875, wire_4874, wire_4862, wire_4843, wire_4842, wire_4811, wire_4810, wire_887, wire_6071, wire_4887, wire_4873, wire_4872, wire_4854, wire_4841, wire_4840, wire_4809, wire_4808, wire_887, wire_6069, wire_4889, wire_4857, wire_4856, wire_4846, wire_4825, wire_4824, wire_4793, wire_4792, wire_887, wire_6067, wire_4891, wire_4853, wire_4852, wire_4838, wire_4821, wire_4820, wire_4789, wire_4788, wire_887, wire_6065, wire_4893, wire_4851, wire_4850, wire_4830, wire_4819, wire_4818, wire_4787, wire_4786, wire_585, wire_6063, wire_4895, wire_4869, wire_4868, wire_4837, wire_4836, wire_4822, wire_4805, wire_4804, wire_585, wire_6061, wire_4897, wire_4867, wire_4866, wire_4835, wire_4834, wire_4814, wire_4803, wire_4802, wire_585, wire_6059, wire_4899, wire_4865, wire_4864, wire_4833, wire_4832, wire_4806, wire_4801, wire_4800, wire_585, wire_6057, wire_4901, wire_4849, wire_4848, wire_4817, wire_4816, wire_4798, wire_4785, wire_4784, wire_585, wire_6059, wire_6051, wire_6050, wire_6043, wire_6042, wire_6035, wire_6034, wire_5980, wire_4903, wire_5743, wire_5742, wire_5731, wire_5730, wire_5803, wire_5706, wire_5815, wire_5718, wire_6061, wire_6027, wire_6026, wire_6019, wire_6018, wire_6011, wire_6010, wire_5978, wire_4901, wire_5779, wire_5778, wire_5755, wire_5754, wire_5791, wire_5790, wire_5729, wire_5728, wire_6063, wire_6055, wire_6054, wire_6047, wire_6046, wire_6039, wire_6038, wire_5976, wire_4899, wire_612, wire_5801, wire_5704, wire_5767, wire_5766, wire_5777, wire_5776, wire_5753, wire_5752, wire_6065, wire_6031, wire_6030, wire_6023, wire_6022, wire_6015, wire_6014, wire_5974, wire_4897, wire_612, wire_5727, wire_5726, wire_5741, wire_5740, wire_5813, wire_5716, wire_5799, wire_5702, wire_6067, wire_6007, wire_6006, wire_5999, wire_5998, wire_5991, wire_5990, wire_5972, wire_4895, wire_612, wire_5789, wire_5788, wire_5765, wire_5764, wire_5775, wire_5774, wire_5739, wire_5738, wire_6069, wire_6003, wire_6002, wire_5995, wire_5994, wire_5987, wire_5986, wire_5970, wire_4893, wire_612, wire_5811, wire_5714, wire_5751, wire_5750, wire_5787, wire_5786, wire_5763, wire_5762, wire_6071, wire_6049, wire_6048, wire_6041, wire_6040, wire_6033, wire_6032, wire_5968, wire_4891, wire_612, wire_5737, wire_5736, wire_5725, wire_5724, wire_5797, wire_5700, wire_5809, wire_5712, wire_6073, wire_6025, wire_6024, wire_6017, wire_6016, wire_6009, wire_6008, wire_5966, wire_4889, wire_584, wire_5773, wire_5772, wire_5749, wire_5748, wire_5785, wire_5784, wire_5723, wire_5722, wire_6075, wire_6053, wire_6052, wire_6045, wire_6044, wire_6037, wire_6036, wire_5964, wire_4887, wire_584, wire_5795, wire_5698, wire_5761, wire_5760, wire_5771, wire_5770, wire_5747, wire_5746, wire_6077, wire_6029, wire_6028, wire_6021, wire_6020, wire_6013, wire_6012, wire_5962, wire_4885, wire_584, wire_5721, wire_5720, wire_5735, wire_5734, wire_5807, wire_5710, wire_612, wire_5793, wire_5696, wire_612, wire_6079, wire_6005, wire_6004, wire_5997, wire_5996, wire_5989, wire_5988, wire_5960, wire_4883, wire_584, wire_5783, wire_5782, wire_612, wire_5759, wire_5758, wire_612, wire_5769, wire_5768, wire_612, wire_5733, wire_5732, wire_584, wire_6057, wire_6001, wire_6000, wire_5993, wire_5992, wire_5985, wire_5984, wire_5982, wire_4881, wire_584, wire_5805, wire_5708, wire_584, wire_5745, wire_5744, wire_584, wire_5781, wire_5780, wire_584, wire_5757, wire_5756, wire_584};
    // CHNAXY TOTAL: 460
    assign wire_4784 = lut_tile_6_1_chanxy_out[0];
    assign wire_4786 = lut_tile_6_1_chanxy_out[1];
    assign wire_4788 = lut_tile_6_1_chanxy_out[2];
    assign wire_4790 = lut_tile_6_1_chanxy_out[3];
    assign wire_4791 = lut_tile_6_1_chanxy_out[4];
    assign wire_4792 = lut_tile_6_1_chanxy_out[5];
    assign wire_4794 = lut_tile_6_1_chanxy_out[6];
    assign wire_4796 = lut_tile_6_1_chanxy_out[7];
    assign wire_4798 = lut_tile_6_1_chanxy_out[8];
    assign wire_4799 = lut_tile_6_1_chanxy_out[9];
    assign wire_4800 = lut_tile_6_1_chanxy_out[10];
    assign wire_4802 = lut_tile_6_1_chanxy_out[11];
    assign wire_4804 = lut_tile_6_1_chanxy_out[12];
    assign wire_4806 = lut_tile_6_1_chanxy_out[13];
    assign wire_4807 = lut_tile_6_1_chanxy_out[14];
    assign wire_4808 = lut_tile_6_1_chanxy_out[15];
    assign wire_4810 = lut_tile_6_1_chanxy_out[16];
    assign wire_4812 = lut_tile_6_1_chanxy_out[17];
    assign wire_4814 = lut_tile_6_1_chanxy_out[18];
    assign wire_4815 = lut_tile_6_1_chanxy_out[19];
    assign wire_4816 = lut_tile_6_1_chanxy_out[20];
    assign wire_4818 = lut_tile_6_1_chanxy_out[21];
    assign wire_4820 = lut_tile_6_1_chanxy_out[22];
    assign wire_4822 = lut_tile_6_1_chanxy_out[23];
    assign wire_4823 = lut_tile_6_1_chanxy_out[24];
    assign wire_4824 = lut_tile_6_1_chanxy_out[25];
    assign wire_4826 = lut_tile_6_1_chanxy_out[26];
    assign wire_4828 = lut_tile_6_1_chanxy_out[27];
    assign wire_4830 = lut_tile_6_1_chanxy_out[28];
    assign wire_4831 = lut_tile_6_1_chanxy_out[29];
    assign wire_4832 = lut_tile_6_1_chanxy_out[30];
    assign wire_4834 = lut_tile_6_1_chanxy_out[31];
    assign wire_4836 = lut_tile_6_1_chanxy_out[32];
    assign wire_4838 = lut_tile_6_1_chanxy_out[33];
    assign wire_4839 = lut_tile_6_1_chanxy_out[34];
    assign wire_4840 = lut_tile_6_1_chanxy_out[35];
    assign wire_4842 = lut_tile_6_1_chanxy_out[36];
    assign wire_4844 = lut_tile_6_1_chanxy_out[37];
    assign wire_4846 = lut_tile_6_1_chanxy_out[38];
    assign wire_4847 = lut_tile_6_1_chanxy_out[39];
    assign wire_4848 = lut_tile_6_1_chanxy_out[40];
    assign wire_4850 = lut_tile_6_1_chanxy_out[41];
    assign wire_4852 = lut_tile_6_1_chanxy_out[42];
    assign wire_4854 = lut_tile_6_1_chanxy_out[43];
    assign wire_4855 = lut_tile_6_1_chanxy_out[44];
    assign wire_4856 = lut_tile_6_1_chanxy_out[45];
    assign wire_4858 = lut_tile_6_1_chanxy_out[46];
    assign wire_4860 = lut_tile_6_1_chanxy_out[47];
    assign wire_4862 = lut_tile_6_1_chanxy_out[48];
    assign wire_4863 = lut_tile_6_1_chanxy_out[49];
    assign wire_4864 = lut_tile_6_1_chanxy_out[50];
    assign wire_4866 = lut_tile_6_1_chanxy_out[51];
    assign wire_4868 = lut_tile_6_1_chanxy_out[52];
    assign wire_4870 = lut_tile_6_1_chanxy_out[53];
    assign wire_4871 = lut_tile_6_1_chanxy_out[54];
    assign wire_4872 = lut_tile_6_1_chanxy_out[55];
    assign wire_4874 = lut_tile_6_1_chanxy_out[56];
    assign wire_4876 = lut_tile_6_1_chanxy_out[57];
    assign wire_4878 = lut_tile_6_1_chanxy_out[58];
    assign wire_4879 = lut_tile_6_1_chanxy_out[59];
    assign wire_5961 = lut_tile_6_1_chanxy_out[60];
    assign wire_5963 = lut_tile_6_1_chanxy_out[61];
    assign wire_5965 = lut_tile_6_1_chanxy_out[62];
    assign wire_5967 = lut_tile_6_1_chanxy_out[63];
    assign wire_5969 = lut_tile_6_1_chanxy_out[64];
    assign wire_5971 = lut_tile_6_1_chanxy_out[65];
    assign wire_5973 = lut_tile_6_1_chanxy_out[66];
    assign wire_5975 = lut_tile_6_1_chanxy_out[67];
    assign wire_5977 = lut_tile_6_1_chanxy_out[68];
    assign wire_5979 = lut_tile_6_1_chanxy_out[69];
    assign wire_5981 = lut_tile_6_1_chanxy_out[70];
    assign wire_5983 = lut_tile_6_1_chanxy_out[71];
    assign wire_6032 = lut_tile_6_1_chanxy_out[72];
    assign wire_6034 = lut_tile_6_1_chanxy_out[73];
    assign wire_6036 = lut_tile_6_1_chanxy_out[74];
    assign wire_6038 = lut_tile_6_1_chanxy_out[75];
    assign wire_6040 = lut_tile_6_1_chanxy_out[76];
    assign wire_6042 = lut_tile_6_1_chanxy_out[77];
    assign wire_6044 = lut_tile_6_1_chanxy_out[78];
    assign wire_6046 = lut_tile_6_1_chanxy_out[79];
    assign wire_6048 = lut_tile_6_1_chanxy_out[80];
    assign wire_6050 = lut_tile_6_1_chanxy_out[81];
    assign wire_6052 = lut_tile_6_1_chanxy_out[82];
    assign wire_6054 = lut_tile_6_1_chanxy_out[83];
   // CHANXY OUT
    assign lut_tile_6_2_chanxy_in = {wire_6222, wire_4641, wire_4639, wire_4638, wire_4631, wire_4630, wire_4623, wire_4622, wire_4534, wire_6220, wire_4663, wire_4635, wire_4634, wire_4627, wire_4626, wire_4619, wire_4618, wire_4542, wire_6218, wire_4661, wire_4595, wire_4594, wire_4563, wire_4562, wire_4550, wire_4531, wire_4530, wire_1191, wire_6216, wire_4659, wire_4593, wire_4592, wire_4561, wire_4560, wire_4558, wire_4529, wire_4528, wire_1191, wire_6214, wire_4657, wire_4611, wire_4610, wire_4579, wire_4578, wire_4566, wire_4547, wire_4546, wire_1191, wire_6212, wire_4655, wire_4609, wire_4608, wire_4577, wire_4576, wire_4574, wire_4545, wire_4544, wire_1191, wire_6210, wire_4653, wire_4637, wire_4636, wire_4629, wire_4628, wire_4621, wire_4620, wire_4582, wire_1191, wire_6208, wire_4651, wire_4633, wire_4632, wire_4625, wire_4624, wire_4617, wire_4616, wire_4590, wire_889, wire_6206, wire_4649, wire_4598, wire_4587, wire_4586, wire_4555, wire_4554, wire_4523, wire_4522, wire_889, wire_6204, wire_4647, wire_4606, wire_4585, wire_4584, wire_4553, wire_4552, wire_4521, wire_4520, wire_889, wire_6202, wire_4645, wire_4614, wire_4603, wire_4602, wire_4571, wire_4570, wire_4539, wire_4538, wire_889, wire_6200, wire_4643, wire_4601, wire_4600, wire_4569, wire_4568, wire_4537, wire_4536, wire_4526, wire_889, wire_6343, wire_4927, wire_4899, wire_4898, wire_4891, wire_4890, wire_4883, wire_4882, wire_4784, wire_6341, wire_4905, wire_4872, wire_4861, wire_4860, wire_4829, wire_4828, wire_4797, wire_4796, wire_6339, wire_4907, wire_4903, wire_4902, wire_4895, wire_4894, wire_4887, wire_4886, wire_4864, wire_1191, wire_6337, wire_4909, wire_4877, wire_4876, wire_4856, wire_4845, wire_4844, wire_4813, wire_4812, wire_1191, wire_6335, wire_4911, wire_4875, wire_4874, wire_4848, wire_4843, wire_4842, wire_4811, wire_4810, wire_1191, wire_6333, wire_4913, wire_4859, wire_4858, wire_4840, wire_4827, wire_4826, wire_4795, wire_4794, wire_1191, wire_6331, wire_4915, wire_4897, wire_4896, wire_4889, wire_4888, wire_4881, wire_4880, wire_4832, wire_1191, wire_6329, wire_4917, wire_4853, wire_4852, wire_4824, wire_4821, wire_4820, wire_4789, wire_4788, wire_889, wire_6327, wire_4919, wire_4901, wire_4900, wire_4893, wire_4892, wire_4885, wire_4884, wire_4816, wire_889, wire_6325, wire_4921, wire_4869, wire_4868, wire_4837, wire_4836, wire_4808, wire_4805, wire_4804, wire_889, wire_6323, wire_4923, wire_4867, wire_4866, wire_4835, wire_4834, wire_4803, wire_4802, wire_4800, wire_889, wire_6321, wire_4925, wire_4851, wire_4850, wire_4819, wire_4818, wire_4792, wire_4787, wire_4786, wire_889, wire_6077, wire_6055, wire_6054, wire_6047, wire_6046, wire_6039, wire_6038, wire_5982, wire_4878, wire_6075, wire_6051, wire_6050, wire_6043, wire_6042, wire_6035, wire_6034, wire_5960, wire_4870, wire_6073, wire_6027, wire_6026, wire_6019, wire_6018, wire_6011, wire_6010, wire_5962, wire_4862, wire_916, wire_6071, wire_6003, wire_6002, wire_5995, wire_5994, wire_5987, wire_5986, wire_5964, wire_4854, wire_916, wire_6069, wire_6031, wire_6030, wire_6023, wire_6022, wire_6015, wire_6014, wire_5966, wire_4846, wire_916, wire_6067, wire_6007, wire_6006, wire_5999, wire_5998, wire_5991, wire_5990, wire_5968, wire_4838, wire_916, wire_6065, wire_6053, wire_6052, wire_6045, wire_6044, wire_6037, wire_6036, wire_5970, wire_4830, wire_916, wire_6063, wire_6049, wire_6048, wire_6041, wire_6040, wire_6033, wire_6032, wire_5972, wire_4822, wire_888, wire_6061, wire_6025, wire_6024, wire_6017, wire_6016, wire_6009, wire_6008, wire_5974, wire_4814, wire_888, wire_6059, wire_6001, wire_6000, wire_5993, wire_5992, wire_5985, wire_5984, wire_5976, wire_4806, wire_888, wire_6057, wire_6029, wire_6028, wire_6021, wire_6020, wire_6013, wire_6012, wire_5978, wire_4798, wire_888, wire_6079, wire_6005, wire_6004, wire_5997, wire_5996, wire_5989, wire_5988, wire_5980, wire_4790, wire_888, wire_6323, wire_6315, wire_6314, wire_6307, wire_6306, wire_6299, wire_6298, wire_6244, wire_4927, wire_6325, wire_6291, wire_6290, wire_6283, wire_6282, wire_6275, wire_6274, wire_6242, wire_4925, wire_6327, wire_6319, wire_6318, wire_6311, wire_6310, wire_6303, wire_6302, wire_6240, wire_4923, wire_916, wire_6329, wire_6295, wire_6294, wire_6287, wire_6286, wire_6279, wire_6278, wire_6238, wire_4921, wire_916, wire_6331, wire_6271, wire_6270, wire_6263, wire_6262, wire_6255, wire_6254, wire_6236, wire_4919, wire_916, wire_6333, wire_6267, wire_6266, wire_6259, wire_6258, wire_6251, wire_6250, wire_6234, wire_4917, wire_916, wire_6335, wire_6313, wire_6312, wire_6305, wire_6304, wire_6297, wire_6296, wire_6232, wire_4915, wire_916, wire_6337, wire_6289, wire_6288, wire_6281, wire_6280, wire_6273, wire_6272, wire_6230, wire_4913, wire_888, wire_6339, wire_6317, wire_6316, wire_6309, wire_6308, wire_6301, wire_6300, wire_6228, wire_4911, wire_888, wire_6341, wire_6293, wire_6292, wire_6285, wire_6284, wire_6277, wire_6276, wire_6226, wire_4909, wire_888, wire_6343, wire_6269, wire_6268, wire_6261, wire_6260, wire_6253, wire_6252, wire_6224, wire_4907, wire_888, wire_6321, wire_6265, wire_6264, wire_6257, wire_6256, wire_6249, wire_6248, wire_6246, wire_4905, wire_888};
    // CHNAXY TOTAL: 472
    assign wire_4785 = lut_tile_6_2_chanxy_out[0];
    assign wire_4793 = lut_tile_6_2_chanxy_out[1];
    assign wire_4801 = lut_tile_6_2_chanxy_out[2];
    assign wire_4809 = lut_tile_6_2_chanxy_out[3];
    assign wire_4817 = lut_tile_6_2_chanxy_out[4];
    assign wire_4825 = lut_tile_6_2_chanxy_out[5];
    assign wire_4833 = lut_tile_6_2_chanxy_out[6];
    assign wire_4841 = lut_tile_6_2_chanxy_out[7];
    assign wire_4849 = lut_tile_6_2_chanxy_out[8];
    assign wire_4857 = lut_tile_6_2_chanxy_out[9];
    assign wire_4865 = lut_tile_6_2_chanxy_out[10];
    assign wire_4873 = lut_tile_6_2_chanxy_out[11];
    assign wire_4880 = lut_tile_6_2_chanxy_out[12];
    assign wire_4882 = lut_tile_6_2_chanxy_out[13];
    assign wire_4884 = lut_tile_6_2_chanxy_out[14];
    assign wire_4886 = lut_tile_6_2_chanxy_out[15];
    assign wire_4888 = lut_tile_6_2_chanxy_out[16];
    assign wire_4890 = lut_tile_6_2_chanxy_out[17];
    assign wire_4892 = lut_tile_6_2_chanxy_out[18];
    assign wire_4894 = lut_tile_6_2_chanxy_out[19];
    assign wire_4896 = lut_tile_6_2_chanxy_out[20];
    assign wire_4898 = lut_tile_6_2_chanxy_out[21];
    assign wire_4900 = lut_tile_6_2_chanxy_out[22];
    assign wire_4902 = lut_tile_6_2_chanxy_out[23];
    assign wire_6225 = lut_tile_6_2_chanxy_out[24];
    assign wire_6227 = lut_tile_6_2_chanxy_out[25];
    assign wire_6229 = lut_tile_6_2_chanxy_out[26];
    assign wire_6231 = lut_tile_6_2_chanxy_out[27];
    assign wire_6233 = lut_tile_6_2_chanxy_out[28];
    assign wire_6235 = lut_tile_6_2_chanxy_out[29];
    assign wire_6237 = lut_tile_6_2_chanxy_out[30];
    assign wire_6239 = lut_tile_6_2_chanxy_out[31];
    assign wire_6241 = lut_tile_6_2_chanxy_out[32];
    assign wire_6243 = lut_tile_6_2_chanxy_out[33];
    assign wire_6245 = lut_tile_6_2_chanxy_out[34];
    assign wire_6247 = lut_tile_6_2_chanxy_out[35];
    assign wire_6296 = lut_tile_6_2_chanxy_out[36];
    assign wire_6298 = lut_tile_6_2_chanxy_out[37];
    assign wire_6300 = lut_tile_6_2_chanxy_out[38];
    assign wire_6302 = lut_tile_6_2_chanxy_out[39];
    assign wire_6304 = lut_tile_6_2_chanxy_out[40];
    assign wire_6306 = lut_tile_6_2_chanxy_out[41];
    assign wire_6308 = lut_tile_6_2_chanxy_out[42];
    assign wire_6310 = lut_tile_6_2_chanxy_out[43];
    assign wire_6312 = lut_tile_6_2_chanxy_out[44];
    assign wire_6314 = lut_tile_6_2_chanxy_out[45];
    assign wire_6316 = lut_tile_6_2_chanxy_out[46];
    assign wire_6318 = lut_tile_6_2_chanxy_out[47];
   // CHANXY OUT
    assign lut_tile_6_3_chanxy_in = {wire_6486, wire_4665, wire_4663, wire_4662, wire_4655, wire_4654, wire_4647, wire_4646, wire_4528, wire_6484, wire_4687, wire_4659, wire_4658, wire_4651, wire_4650, wire_4643, wire_4642, wire_4536, wire_6482, wire_4685, wire_4635, wire_4634, wire_4627, wire_4626, wire_4619, wire_4618, wire_4544, wire_1495, wire_6480, wire_4683, wire_4595, wire_4594, wire_4563, wire_4562, wire_4552, wire_4531, wire_4530, wire_1495, wire_6478, wire_4681, wire_4639, wire_4638, wire_4631, wire_4630, wire_4623, wire_4622, wire_4560, wire_1495, wire_6476, wire_4679, wire_4611, wire_4610, wire_4579, wire_4578, wire_4568, wire_4547, wire_4546, wire_1495, wire_6474, wire_4677, wire_4661, wire_4660, wire_4653, wire_4652, wire_4645, wire_4644, wire_4576, wire_1495, wire_6472, wire_4675, wire_4657, wire_4656, wire_4649, wire_4648, wire_4641, wire_4640, wire_4584, wire_1193, wire_6470, wire_4673, wire_4633, wire_4632, wire_4625, wire_4624, wire_4617, wire_4616, wire_4592, wire_1193, wire_6468, wire_4671, wire_4600, wire_4587, wire_4586, wire_4555, wire_4554, wire_4523, wire_4522, wire_1193, wire_6466, wire_4669, wire_4637, wire_4636, wire_4629, wire_4628, wire_4621, wire_4620, wire_4608, wire_1193, wire_6464, wire_4667, wire_4603, wire_4602, wire_4571, wire_4570, wire_4539, wire_4538, wire_4520, wire_1193, wire_6607, wire_4951, wire_4903, wire_4902, wire_4895, wire_4894, wire_4887, wire_4886, wire_4786, wire_6605, wire_4929, wire_4899, wire_4898, wire_4891, wire_4890, wire_4883, wire_4882, wire_4874, wire_6603, wire_4931, wire_4866, wire_4861, wire_4860, wire_4829, wire_4828, wire_4797, wire_4796, wire_1495, wire_6601, wire_4933, wire_4923, wire_4922, wire_4915, wire_4914, wire_4907, wire_4906, wire_4858, wire_1495, wire_6599, wire_4935, wire_4877, wire_4876, wire_4850, wire_4845, wire_4844, wire_4813, wire_4812, wire_1495, wire_6597, wire_4937, wire_4927, wire_4926, wire_4919, wire_4918, wire_4911, wire_4910, wire_4842, wire_1495, wire_6595, wire_4939, wire_4901, wire_4900, wire_4893, wire_4892, wire_4885, wire_4884, wire_4834, wire_1495, wire_6593, wire_4941, wire_4897, wire_4896, wire_4889, wire_4888, wire_4881, wire_4880, wire_4826, wire_1193, wire_6591, wire_4943, wire_4853, wire_4852, wire_4821, wire_4820, wire_4818, wire_4789, wire_4788, wire_1193, wire_6589, wire_4945, wire_4921, wire_4920, wire_4913, wire_4912, wire_4905, wire_4904, wire_4810, wire_1193, wire_6587, wire_4947, wire_4869, wire_4868, wire_4837, wire_4836, wire_4805, wire_4804, wire_4802, wire_1193, wire_6585, wire_4949, wire_4925, wire_4924, wire_4917, wire_4916, wire_4909, wire_4908, wire_4794, wire_1193, wire_6341, wire_6319, wire_6318, wire_6311, wire_6310, wire_6303, wire_6302, wire_6246, wire_4872, wire_6339, wire_6315, wire_6314, wire_6307, wire_6306, wire_6299, wire_6298, wire_6224, wire_4864, wire_6337, wire_6291, wire_6290, wire_6283, wire_6282, wire_6275, wire_6274, wire_6226, wire_4856, wire_1220, wire_6335, wire_6267, wire_6266, wire_6259, wire_6258, wire_6251, wire_6250, wire_6228, wire_4848, wire_1220, wire_6333, wire_6295, wire_6294, wire_6287, wire_6286, wire_6279, wire_6278, wire_6230, wire_4840, wire_1220, wire_6331, wire_6271, wire_6270, wire_6263, wire_6262, wire_6255, wire_6254, wire_6232, wire_4832, wire_1220, wire_6329, wire_6317, wire_6316, wire_6309, wire_6308, wire_6301, wire_6300, wire_6234, wire_4824, wire_1220, wire_6327, wire_6313, wire_6312, wire_6305, wire_6304, wire_6297, wire_6296, wire_6236, wire_4816, wire_1192, wire_6325, wire_6289, wire_6288, wire_6281, wire_6280, wire_6273, wire_6272, wire_6238, wire_4808, wire_1192, wire_6323, wire_6265, wire_6264, wire_6257, wire_6256, wire_6249, wire_6248, wire_6240, wire_4800, wire_1192, wire_6321, wire_6293, wire_6292, wire_6285, wire_6284, wire_6277, wire_6276, wire_6242, wire_4792, wire_1192, wire_6343, wire_6269, wire_6268, wire_6261, wire_6260, wire_6253, wire_6252, wire_6244, wire_4784, wire_1192, wire_6587, wire_6559, wire_6558, wire_6551, wire_6550, wire_6543, wire_6542, wire_6508, wire_4951, wire_6589, wire_6555, wire_6554, wire_6547, wire_6546, wire_6539, wire_6538, wire_6506, wire_4949, wire_6591, wire_6531, wire_6530, wire_6523, wire_6522, wire_6515, wire_6514, wire_6504, wire_4947, wire_1220, wire_6593, wire_6579, wire_6578, wire_6571, wire_6570, wire_6563, wire_6562, wire_6502, wire_4945, wire_1220, wire_6595, wire_6535, wire_6534, wire_6527, wire_6526, wire_6519, wire_6518, wire_6500, wire_4943, wire_1220, wire_6597, wire_6583, wire_6582, wire_6575, wire_6574, wire_6567, wire_6566, wire_6498, wire_4941, wire_1220, wire_6599, wire_6557, wire_6556, wire_6549, wire_6548, wire_6541, wire_6540, wire_6496, wire_4939, wire_1220, wire_6601, wire_6553, wire_6552, wire_6545, wire_6544, wire_6537, wire_6536, wire_6494, wire_4937, wire_1192, wire_6603, wire_6529, wire_6528, wire_6521, wire_6520, wire_6513, wire_6512, wire_6492, wire_4935, wire_1192, wire_6605, wire_6577, wire_6576, wire_6569, wire_6568, wire_6561, wire_6560, wire_6490, wire_4933, wire_1192, wire_6607, wire_6533, wire_6532, wire_6525, wire_6524, wire_6517, wire_6516, wire_6488, wire_4931, wire_1192, wire_6585, wire_6581, wire_6580, wire_6573, wire_6572, wire_6565, wire_6564, wire_6510, wire_4929, wire_1192};
    // CHNAXY TOTAL: 472
    assign wire_4787 = lut_tile_6_3_chanxy_out[0];
    assign wire_4795 = lut_tile_6_3_chanxy_out[1];
    assign wire_4803 = lut_tile_6_3_chanxy_out[2];
    assign wire_4811 = lut_tile_6_3_chanxy_out[3];
    assign wire_4819 = lut_tile_6_3_chanxy_out[4];
    assign wire_4827 = lut_tile_6_3_chanxy_out[5];
    assign wire_4835 = lut_tile_6_3_chanxy_out[6];
    assign wire_4843 = lut_tile_6_3_chanxy_out[7];
    assign wire_4851 = lut_tile_6_3_chanxy_out[8];
    assign wire_4859 = lut_tile_6_3_chanxy_out[9];
    assign wire_4867 = lut_tile_6_3_chanxy_out[10];
    assign wire_4875 = lut_tile_6_3_chanxy_out[11];
    assign wire_4904 = lut_tile_6_3_chanxy_out[12];
    assign wire_4906 = lut_tile_6_3_chanxy_out[13];
    assign wire_4908 = lut_tile_6_3_chanxy_out[14];
    assign wire_4910 = lut_tile_6_3_chanxy_out[15];
    assign wire_4912 = lut_tile_6_3_chanxy_out[16];
    assign wire_4914 = lut_tile_6_3_chanxy_out[17];
    assign wire_4916 = lut_tile_6_3_chanxy_out[18];
    assign wire_4918 = lut_tile_6_3_chanxy_out[19];
    assign wire_4920 = lut_tile_6_3_chanxy_out[20];
    assign wire_4922 = lut_tile_6_3_chanxy_out[21];
    assign wire_4924 = lut_tile_6_3_chanxy_out[22];
    assign wire_4926 = lut_tile_6_3_chanxy_out[23];
    assign wire_6489 = lut_tile_6_3_chanxy_out[24];
    assign wire_6491 = lut_tile_6_3_chanxy_out[25];
    assign wire_6493 = lut_tile_6_3_chanxy_out[26];
    assign wire_6495 = lut_tile_6_3_chanxy_out[27];
    assign wire_6497 = lut_tile_6_3_chanxy_out[28];
    assign wire_6499 = lut_tile_6_3_chanxy_out[29];
    assign wire_6501 = lut_tile_6_3_chanxy_out[30];
    assign wire_6503 = lut_tile_6_3_chanxy_out[31];
    assign wire_6505 = lut_tile_6_3_chanxy_out[32];
    assign wire_6507 = lut_tile_6_3_chanxy_out[33];
    assign wire_6509 = lut_tile_6_3_chanxy_out[34];
    assign wire_6511 = lut_tile_6_3_chanxy_out[35];
    assign wire_6560 = lut_tile_6_3_chanxy_out[36];
    assign wire_6562 = lut_tile_6_3_chanxy_out[37];
    assign wire_6564 = lut_tile_6_3_chanxy_out[38];
    assign wire_6566 = lut_tile_6_3_chanxy_out[39];
    assign wire_6568 = lut_tile_6_3_chanxy_out[40];
    assign wire_6570 = lut_tile_6_3_chanxy_out[41];
    assign wire_6572 = lut_tile_6_3_chanxy_out[42];
    assign wire_6574 = lut_tile_6_3_chanxy_out[43];
    assign wire_6576 = lut_tile_6_3_chanxy_out[44];
    assign wire_6578 = lut_tile_6_3_chanxy_out[45];
    assign wire_6580 = lut_tile_6_3_chanxy_out[46];
    assign wire_6582 = lut_tile_6_3_chanxy_out[47];
   // CHANXY OUT
    assign lut_tile_6_4_chanxy_in = {wire_6750, wire_4689, wire_4659, wire_4658, wire_4651, wire_4650, wire_4643, wire_4642, wire_4530, wire_6748, wire_4711, wire_4663, wire_4662, wire_4655, wire_4654, wire_4647, wire_4646, wire_4538, wire_6746, wire_4709, wire_4635, wire_4634, wire_4627, wire_4626, wire_4619, wire_4618, wire_4546, wire_1799, wire_6744, wire_4707, wire_4639, wire_4638, wire_4631, wire_4630, wire_4623, wire_4622, wire_4554, wire_1799, wire_6742, wire_4705, wire_4683, wire_4682, wire_4675, wire_4674, wire_4667, wire_4666, wire_4562, wire_1799, wire_6740, wire_4703, wire_4687, wire_4686, wire_4679, wire_4678, wire_4671, wire_4670, wire_4570, wire_1799, wire_6738, wire_4701, wire_4657, wire_4656, wire_4649, wire_4648, wire_4641, wire_4640, wire_4578, wire_1799, wire_6736, wire_4699, wire_4661, wire_4660, wire_4653, wire_4652, wire_4645, wire_4644, wire_4586, wire_1497, wire_6734, wire_4697, wire_4633, wire_4632, wire_4625, wire_4624, wire_4617, wire_4616, wire_4594, wire_1497, wire_6732, wire_4695, wire_4637, wire_4636, wire_4629, wire_4628, wire_4621, wire_4620, wire_4602, wire_1497, wire_6730, wire_4693, wire_4681, wire_4680, wire_4673, wire_4672, wire_4665, wire_4664, wire_4610, wire_1497, wire_6728, wire_4691, wire_4685, wire_4684, wire_4677, wire_4676, wire_4669, wire_4668, wire_4522, wire_1497, wire_6871, wire_4975, wire_4899, wire_4898, wire_4891, wire_4890, wire_4883, wire_4882, wire_4788, wire_6869, wire_4953, wire_4903, wire_4902, wire_4895, wire_4894, wire_4887, wire_4886, wire_4876, wire_6867, wire_4955, wire_4947, wire_4946, wire_4939, wire_4938, wire_4931, wire_4930, wire_4868, wire_1799, wire_6865, wire_4957, wire_4951, wire_4950, wire_4943, wire_4942, wire_4935, wire_4934, wire_4860, wire_1799, wire_6863, wire_4959, wire_4923, wire_4922, wire_4915, wire_4914, wire_4907, wire_4906, wire_4852, wire_1799, wire_6861, wire_4961, wire_4927, wire_4926, wire_4919, wire_4918, wire_4911, wire_4910, wire_4844, wire_1799, wire_6859, wire_4963, wire_4897, wire_4896, wire_4889, wire_4888, wire_4881, wire_4880, wire_4836, wire_1799, wire_6857, wire_4965, wire_4901, wire_4900, wire_4893, wire_4892, wire_4885, wire_4884, wire_4828, wire_1497, wire_6855, wire_4967, wire_4945, wire_4944, wire_4937, wire_4936, wire_4929, wire_4928, wire_4820, wire_1497, wire_6853, wire_4969, wire_4949, wire_4948, wire_4941, wire_4940, wire_4933, wire_4932, wire_4812, wire_1497, wire_6851, wire_4971, wire_4921, wire_4920, wire_4913, wire_4912, wire_4905, wire_4904, wire_4804, wire_1497, wire_6849, wire_4973, wire_4925, wire_4924, wire_4917, wire_4916, wire_4909, wire_4908, wire_4796, wire_1497, wire_6605, wire_6555, wire_6554, wire_6547, wire_6546, wire_6539, wire_6538, wire_6510, wire_4874, wire_6603, wire_6559, wire_6558, wire_6551, wire_6550, wire_6543, wire_6542, wire_6488, wire_4866, wire_6601, wire_6531, wire_6530, wire_6523, wire_6522, wire_6515, wire_6514, wire_6490, wire_4858, wire_1524, wire_6599, wire_6535, wire_6534, wire_6527, wire_6526, wire_6519, wire_6518, wire_6492, wire_4850, wire_1524, wire_6597, wire_6579, wire_6578, wire_6571, wire_6570, wire_6563, wire_6562, wire_6494, wire_4842, wire_1524, wire_6595, wire_6583, wire_6582, wire_6575, wire_6574, wire_6567, wire_6566, wire_6496, wire_4834, wire_1524, wire_6593, wire_6553, wire_6552, wire_6545, wire_6544, wire_6537, wire_6536, wire_6498, wire_4826, wire_1524, wire_6591, wire_6557, wire_6556, wire_6549, wire_6548, wire_6541, wire_6540, wire_6500, wire_4818, wire_1496, wire_6589, wire_6529, wire_6528, wire_6521, wire_6520, wire_6513, wire_6512, wire_6502, wire_4810, wire_1496, wire_6587, wire_6533, wire_6532, wire_6525, wire_6524, wire_6517, wire_6516, wire_6504, wire_4802, wire_1496, wire_6585, wire_6577, wire_6576, wire_6569, wire_6568, wire_6561, wire_6560, wire_6506, wire_4794, wire_1496, wire_6607, wire_6581, wire_6580, wire_6573, wire_6572, wire_6565, wire_6564, wire_6508, wire_4786, wire_1496, wire_6851, wire_6795, wire_6794, wire_6787, wire_6786, wire_6779, wire_6778, wire_6772, wire_4975, wire_6853, wire_6799, wire_6798, wire_6791, wire_6790, wire_6783, wire_6782, wire_6770, wire_4973, wire_6855, wire_6843, wire_6842, wire_6835, wire_6834, wire_6827, wire_6826, wire_6768, wire_4971, wire_1524, wire_6857, wire_6847, wire_6846, wire_6839, wire_6838, wire_6831, wire_6830, wire_6766, wire_4969, wire_1524, wire_6859, wire_6819, wire_6818, wire_6811, wire_6810, wire_6803, wire_6802, wire_6764, wire_4967, wire_1524, wire_6861, wire_6823, wire_6822, wire_6815, wire_6814, wire_6807, wire_6806, wire_6762, wire_4965, wire_1524, wire_6863, wire_6793, wire_6792, wire_6785, wire_6784, wire_6777, wire_6776, wire_6760, wire_4963, wire_1524, wire_6865, wire_6797, wire_6796, wire_6789, wire_6788, wire_6781, wire_6780, wire_6758, wire_4961, wire_1496, wire_6867, wire_6841, wire_6840, wire_6833, wire_6832, wire_6825, wire_6824, wire_6756, wire_4959, wire_1496, wire_6869, wire_6845, wire_6844, wire_6837, wire_6836, wire_6829, wire_6828, wire_6754, wire_4957, wire_1496, wire_6871, wire_6817, wire_6816, wire_6809, wire_6808, wire_6801, wire_6800, wire_6752, wire_4955, wire_1496, wire_6849, wire_6821, wire_6820, wire_6813, wire_6812, wire_6805, wire_6804, wire_6774, wire_4953, wire_1496};
    // CHNAXY TOTAL: 472
    assign wire_4789 = lut_tile_6_4_chanxy_out[0];
    assign wire_4797 = lut_tile_6_4_chanxy_out[1];
    assign wire_4805 = lut_tile_6_4_chanxy_out[2];
    assign wire_4813 = lut_tile_6_4_chanxy_out[3];
    assign wire_4821 = lut_tile_6_4_chanxy_out[4];
    assign wire_4829 = lut_tile_6_4_chanxy_out[5];
    assign wire_4837 = lut_tile_6_4_chanxy_out[6];
    assign wire_4845 = lut_tile_6_4_chanxy_out[7];
    assign wire_4853 = lut_tile_6_4_chanxy_out[8];
    assign wire_4861 = lut_tile_6_4_chanxy_out[9];
    assign wire_4869 = lut_tile_6_4_chanxy_out[10];
    assign wire_4877 = lut_tile_6_4_chanxy_out[11];
    assign wire_4928 = lut_tile_6_4_chanxy_out[12];
    assign wire_4930 = lut_tile_6_4_chanxy_out[13];
    assign wire_4932 = lut_tile_6_4_chanxy_out[14];
    assign wire_4934 = lut_tile_6_4_chanxy_out[15];
    assign wire_4936 = lut_tile_6_4_chanxy_out[16];
    assign wire_4938 = lut_tile_6_4_chanxy_out[17];
    assign wire_4940 = lut_tile_6_4_chanxy_out[18];
    assign wire_4942 = lut_tile_6_4_chanxy_out[19];
    assign wire_4944 = lut_tile_6_4_chanxy_out[20];
    assign wire_4946 = lut_tile_6_4_chanxy_out[21];
    assign wire_4948 = lut_tile_6_4_chanxy_out[22];
    assign wire_4950 = lut_tile_6_4_chanxy_out[23];
    assign wire_6753 = lut_tile_6_4_chanxy_out[24];
    assign wire_6755 = lut_tile_6_4_chanxy_out[25];
    assign wire_6757 = lut_tile_6_4_chanxy_out[26];
    assign wire_6759 = lut_tile_6_4_chanxy_out[27];
    assign wire_6761 = lut_tile_6_4_chanxy_out[28];
    assign wire_6763 = lut_tile_6_4_chanxy_out[29];
    assign wire_6765 = lut_tile_6_4_chanxy_out[30];
    assign wire_6767 = lut_tile_6_4_chanxy_out[31];
    assign wire_6769 = lut_tile_6_4_chanxy_out[32];
    assign wire_6771 = lut_tile_6_4_chanxy_out[33];
    assign wire_6773 = lut_tile_6_4_chanxy_out[34];
    assign wire_6775 = lut_tile_6_4_chanxy_out[35];
    assign wire_6824 = lut_tile_6_4_chanxy_out[36];
    assign wire_6826 = lut_tile_6_4_chanxy_out[37];
    assign wire_6828 = lut_tile_6_4_chanxy_out[38];
    assign wire_6830 = lut_tile_6_4_chanxy_out[39];
    assign wire_6832 = lut_tile_6_4_chanxy_out[40];
    assign wire_6834 = lut_tile_6_4_chanxy_out[41];
    assign wire_6836 = lut_tile_6_4_chanxy_out[42];
    assign wire_6838 = lut_tile_6_4_chanxy_out[43];
    assign wire_6840 = lut_tile_6_4_chanxy_out[44];
    assign wire_6842 = lut_tile_6_4_chanxy_out[45];
    assign wire_6844 = lut_tile_6_4_chanxy_out[46];
    assign wire_6846 = lut_tile_6_4_chanxy_out[47];
   // CHANXY OUT
    assign lut_tile_6_5_chanxy_in = {wire_7014, wire_4713, wire_4659, wire_4658, wire_4651, wire_4650, wire_4643, wire_4642, wire_4618, wire_7012, wire_4735, wire_4707, wire_4706, wire_4699, wire_4698, wire_4691, wire_4690, wire_4620, wire_7010, wire_4733, wire_4663, wire_4662, wire_4655, wire_4654, wire_4647, wire_4646, wire_4622, wire_2103, wire_7008, wire_4731, wire_4711, wire_4710, wire_4703, wire_4702, wire_4695, wire_4694, wire_4624, wire_2103, wire_7006, wire_4729, wire_4687, wire_4686, wire_4679, wire_4678, wire_4671, wire_4670, wire_4626, wire_2103, wire_7004, wire_4727, wire_4683, wire_4682, wire_4675, wire_4674, wire_4667, wire_4666, wire_4628, wire_2103, wire_7002, wire_4725, wire_4657, wire_4656, wire_4649, wire_4648, wire_4641, wire_4640, wire_4630, wire_2103, wire_7000, wire_4723, wire_4705, wire_4704, wire_4697, wire_4696, wire_4689, wire_4688, wire_4632, wire_1801, wire_6998, wire_4721, wire_4661, wire_4660, wire_4653, wire_4652, wire_4645, wire_4644, wire_4634, wire_1801, wire_6996, wire_4719, wire_4709, wire_4708, wire_4701, wire_4700, wire_4693, wire_4692, wire_4636, wire_1801, wire_6994, wire_4717, wire_4685, wire_4684, wire_4677, wire_4676, wire_4669, wire_4668, wire_4638, wire_1801, wire_6992, wire_4715, wire_4681, wire_4680, wire_4673, wire_4672, wire_4665, wire_4664, wire_4616, wire_1801, wire_7135, wire_4999, wire_4971, wire_4970, wire_4963, wire_4962, wire_4955, wire_4954, wire_4880, wire_7133, wire_4977, wire_4947, wire_4946, wire_4939, wire_4938, wire_4931, wire_4930, wire_4902, wire_7131, wire_4979, wire_4975, wire_4974, wire_4967, wire_4966, wire_4959, wire_4958, wire_4900, wire_2103, wire_7129, wire_4981, wire_4951, wire_4950, wire_4943, wire_4942, wire_4935, wire_4934, wire_4898, wire_2103, wire_7127, wire_4983, wire_4927, wire_4926, wire_4919, wire_4918, wire_4911, wire_4910, wire_4896, wire_2103, wire_7125, wire_4985, wire_4923, wire_4922, wire_4915, wire_4914, wire_4907, wire_4906, wire_4894, wire_2103, wire_7123, wire_4987, wire_4969, wire_4968, wire_4961, wire_4960, wire_4953, wire_4952, wire_4892, wire_2103, wire_7121, wire_4989, wire_4945, wire_4944, wire_4937, wire_4936, wire_4929, wire_4928, wire_4890, wire_1801, wire_7119, wire_4991, wire_4973, wire_4972, wire_4965, wire_4964, wire_4957, wire_4956, wire_4888, wire_1801, wire_7117, wire_4993, wire_4949, wire_4948, wire_4941, wire_4940, wire_4933, wire_4932, wire_4886, wire_1801, wire_7115, wire_4995, wire_4925, wire_4924, wire_4917, wire_4916, wire_4909, wire_4908, wire_4884, wire_1801, wire_7113, wire_4997, wire_4921, wire_4920, wire_4913, wire_4912, wire_4905, wire_4904, wire_4882, wire_1801, wire_6869, wire_6795, wire_6794, wire_6787, wire_6786, wire_6779, wire_6778, wire_6774, wire_4876, wire_6867, wire_6843, wire_6842, wire_6835, wire_6834, wire_6827, wire_6826, wire_6752, wire_4868, wire_6865, wire_6799, wire_6798, wire_6791, wire_6790, wire_6783, wire_6782, wire_6754, wire_4860, wire_1828, wire_6863, wire_6847, wire_6846, wire_6839, wire_6838, wire_6831, wire_6830, wire_6756, wire_4852, wire_1828, wire_6861, wire_6823, wire_6822, wire_6815, wire_6814, wire_6807, wire_6806, wire_6758, wire_4844, wire_1828, wire_6859, wire_6819, wire_6818, wire_6811, wire_6810, wire_6803, wire_6802, wire_6760, wire_4836, wire_1828, wire_6857, wire_6793, wire_6792, wire_6785, wire_6784, wire_6777, wire_6776, wire_6762, wire_4828, wire_1828, wire_6855, wire_6841, wire_6840, wire_6833, wire_6832, wire_6825, wire_6824, wire_6764, wire_4820, wire_1800, wire_6853, wire_6797, wire_6796, wire_6789, wire_6788, wire_6781, wire_6780, wire_6766, wire_4812, wire_1800, wire_6851, wire_6845, wire_6844, wire_6837, wire_6836, wire_6829, wire_6828, wire_6768, wire_4804, wire_1800, wire_6849, wire_6821, wire_6820, wire_6813, wire_6812, wire_6805, wire_6804, wire_6770, wire_4796, wire_1800, wire_6871, wire_6817, wire_6816, wire_6809, wire_6808, wire_6801, wire_6800, wire_6772, wire_4788, wire_1800, wire_7115, wire_7107, wire_7106, wire_7099, wire_7098, wire_7091, wire_7090, wire_7036, wire_4999, wire_7117, wire_7083, wire_7082, wire_7075, wire_7074, wire_7067, wire_7066, wire_7034, wire_4997, wire_7119, wire_7111, wire_7110, wire_7103, wire_7102, wire_7095, wire_7094, wire_7032, wire_4995, wire_1828, wire_7121, wire_7087, wire_7086, wire_7079, wire_7078, wire_7071, wire_7070, wire_7030, wire_4993, wire_1828, wire_7123, wire_7063, wire_7062, wire_7055, wire_7054, wire_7047, wire_7046, wire_7028, wire_4991, wire_1828, wire_7125, wire_7059, wire_7058, wire_7051, wire_7050, wire_7043, wire_7042, wire_7026, wire_4989, wire_1828, wire_7127, wire_7105, wire_7104, wire_7097, wire_7096, wire_7089, wire_7088, wire_7024, wire_4987, wire_1828, wire_7129, wire_7081, wire_7080, wire_7073, wire_7072, wire_7065, wire_7064, wire_7022, wire_4985, wire_1800, wire_7131, wire_7109, wire_7108, wire_7101, wire_7100, wire_7093, wire_7092, wire_7020, wire_4983, wire_1800, wire_7133, wire_7085, wire_7084, wire_7077, wire_7076, wire_7069, wire_7068, wire_7018, wire_4981, wire_1800, wire_7135, wire_7061, wire_7060, wire_7053, wire_7052, wire_7045, wire_7044, wire_7016, wire_4979, wire_1800, wire_7113, wire_7057, wire_7056, wire_7049, wire_7048, wire_7041, wire_7040, wire_7038, wire_4977, wire_1800};
    // CHNAXY TOTAL: 472
    assign wire_4881 = lut_tile_6_5_chanxy_out[0];
    assign wire_4883 = lut_tile_6_5_chanxy_out[1];
    assign wire_4885 = lut_tile_6_5_chanxy_out[2];
    assign wire_4887 = lut_tile_6_5_chanxy_out[3];
    assign wire_4889 = lut_tile_6_5_chanxy_out[4];
    assign wire_4891 = lut_tile_6_5_chanxy_out[5];
    assign wire_4893 = lut_tile_6_5_chanxy_out[6];
    assign wire_4895 = lut_tile_6_5_chanxy_out[7];
    assign wire_4897 = lut_tile_6_5_chanxy_out[8];
    assign wire_4899 = lut_tile_6_5_chanxy_out[9];
    assign wire_4901 = lut_tile_6_5_chanxy_out[10];
    assign wire_4903 = lut_tile_6_5_chanxy_out[11];
    assign wire_4952 = lut_tile_6_5_chanxy_out[12];
    assign wire_4954 = lut_tile_6_5_chanxy_out[13];
    assign wire_4956 = lut_tile_6_5_chanxy_out[14];
    assign wire_4958 = lut_tile_6_5_chanxy_out[15];
    assign wire_4960 = lut_tile_6_5_chanxy_out[16];
    assign wire_4962 = lut_tile_6_5_chanxy_out[17];
    assign wire_4964 = lut_tile_6_5_chanxy_out[18];
    assign wire_4966 = lut_tile_6_5_chanxy_out[19];
    assign wire_4968 = lut_tile_6_5_chanxy_out[20];
    assign wire_4970 = lut_tile_6_5_chanxy_out[21];
    assign wire_4972 = lut_tile_6_5_chanxy_out[22];
    assign wire_4974 = lut_tile_6_5_chanxy_out[23];
    assign wire_7017 = lut_tile_6_5_chanxy_out[24];
    assign wire_7019 = lut_tile_6_5_chanxy_out[25];
    assign wire_7021 = lut_tile_6_5_chanxy_out[26];
    assign wire_7023 = lut_tile_6_5_chanxy_out[27];
    assign wire_7025 = lut_tile_6_5_chanxy_out[28];
    assign wire_7027 = lut_tile_6_5_chanxy_out[29];
    assign wire_7029 = lut_tile_6_5_chanxy_out[30];
    assign wire_7031 = lut_tile_6_5_chanxy_out[31];
    assign wire_7033 = lut_tile_6_5_chanxy_out[32];
    assign wire_7035 = lut_tile_6_5_chanxy_out[33];
    assign wire_7037 = lut_tile_6_5_chanxy_out[34];
    assign wire_7039 = lut_tile_6_5_chanxy_out[35];
    assign wire_7088 = lut_tile_6_5_chanxy_out[36];
    assign wire_7090 = lut_tile_6_5_chanxy_out[37];
    assign wire_7092 = lut_tile_6_5_chanxy_out[38];
    assign wire_7094 = lut_tile_6_5_chanxy_out[39];
    assign wire_7096 = lut_tile_6_5_chanxy_out[40];
    assign wire_7098 = lut_tile_6_5_chanxy_out[41];
    assign wire_7100 = lut_tile_6_5_chanxy_out[42];
    assign wire_7102 = lut_tile_6_5_chanxy_out[43];
    assign wire_7104 = lut_tile_6_5_chanxy_out[44];
    assign wire_7106 = lut_tile_6_5_chanxy_out[45];
    assign wire_7108 = lut_tile_6_5_chanxy_out[46];
    assign wire_7110 = lut_tile_6_5_chanxy_out[47];
   // CHANXY OUT
    assign lut_tile_6_6_chanxy_in = {wire_7278, wire_4737, wire_4735, wire_4734, wire_4727, wire_4726, wire_4719, wire_4718, wire_4642, wire_7276, wire_4759, wire_4731, wire_4730, wire_4723, wire_4722, wire_4715, wire_4714, wire_4644, wire_7274, wire_4757, wire_4707, wire_4706, wire_4699, wire_4698, wire_4691, wire_4690, wire_4646, wire_2407, wire_7272, wire_4755, wire_4683, wire_4682, wire_4675, wire_4674, wire_4667, wire_4666, wire_4648, wire_2407, wire_7270, wire_4753, wire_4711, wire_4710, wire_4703, wire_4702, wire_4695, wire_4694, wire_4650, wire_2407, wire_7268, wire_4751, wire_4687, wire_4686, wire_4679, wire_4678, wire_4671, wire_4670, wire_4652, wire_2407, wire_7266, wire_4749, wire_4733, wire_4732, wire_4725, wire_4724, wire_4717, wire_4716, wire_4654, wire_2407, wire_7264, wire_4747, wire_4729, wire_4728, wire_4721, wire_4720, wire_4713, wire_4712, wire_4656, wire_2105, wire_7262, wire_4745, wire_4705, wire_4704, wire_4697, wire_4696, wire_4689, wire_4688, wire_4658, wire_2105, wire_7260, wire_4743, wire_4681, wire_4680, wire_4673, wire_4672, wire_4665, wire_4664, wire_4660, wire_2105, wire_7258, wire_4741, wire_4709, wire_4708, wire_4701, wire_4700, wire_4693, wire_4692, wire_4662, wire_2105, wire_7256, wire_4739, wire_4685, wire_4684, wire_4677, wire_4676, wire_4669, wire_4668, wire_4640, wire_2105, wire_7399, wire_5023, wire_4995, wire_4994, wire_4987, wire_4986, wire_4979, wire_4978, wire_4904, wire_7397, wire_5001, wire_4971, wire_4970, wire_4963, wire_4962, wire_4955, wire_4954, wire_4926, wire_7395, wire_5003, wire_4999, wire_4998, wire_4991, wire_4990, wire_4983, wire_4982, wire_4924, wire_2407, wire_7393, wire_5005, wire_4975, wire_4974, wire_4967, wire_4966, wire_4959, wire_4958, wire_4922, wire_2407, wire_7391, wire_5007, wire_4951, wire_4950, wire_4943, wire_4942, wire_4935, wire_4934, wire_4920, wire_2407, wire_7389, wire_5009, wire_4947, wire_4946, wire_4939, wire_4938, wire_4931, wire_4930, wire_4918, wire_2407, wire_7387, wire_5011, wire_4993, wire_4992, wire_4985, wire_4984, wire_4977, wire_4976, wire_4916, wire_2407, wire_7385, wire_5013, wire_4969, wire_4968, wire_4961, wire_4960, wire_4953, wire_4952, wire_4914, wire_2105, wire_7383, wire_5015, wire_4997, wire_4996, wire_4989, wire_4988, wire_4981, wire_4980, wire_4912, wire_2105, wire_7381, wire_5017, wire_4973, wire_4972, wire_4965, wire_4964, wire_4957, wire_4956, wire_4910, wire_2105, wire_7379, wire_5019, wire_4949, wire_4948, wire_4941, wire_4940, wire_4933, wire_4932, wire_4908, wire_2105, wire_7377, wire_5021, wire_4945, wire_4944, wire_4937, wire_4936, wire_4929, wire_4928, wire_4906, wire_2105, wire_7133, wire_7111, wire_7110, wire_7103, wire_7102, wire_7095, wire_7094, wire_7038, wire_4902, wire_7131, wire_7107, wire_7106, wire_7099, wire_7098, wire_7091, wire_7090, wire_7016, wire_4900, wire_7129, wire_7083, wire_7082, wire_7075, wire_7074, wire_7067, wire_7066, wire_7018, wire_4898, wire_2132, wire_7127, wire_7059, wire_7058, wire_7051, wire_7050, wire_7043, wire_7042, wire_7020, wire_4896, wire_2132, wire_7125, wire_7087, wire_7086, wire_7079, wire_7078, wire_7071, wire_7070, wire_7022, wire_4894, wire_2132, wire_7123, wire_7063, wire_7062, wire_7055, wire_7054, wire_7047, wire_7046, wire_7024, wire_4892, wire_2132, wire_7121, wire_7109, wire_7108, wire_7101, wire_7100, wire_7093, wire_7092, wire_7026, wire_4890, wire_2132, wire_7119, wire_7105, wire_7104, wire_7097, wire_7096, wire_7089, wire_7088, wire_7028, wire_4888, wire_2104, wire_7117, wire_7081, wire_7080, wire_7073, wire_7072, wire_7065, wire_7064, wire_7030, wire_4886, wire_2104, wire_7115, wire_7057, wire_7056, wire_7049, wire_7048, wire_7041, wire_7040, wire_7032, wire_4884, wire_2104, wire_7113, wire_7085, wire_7084, wire_7077, wire_7076, wire_7069, wire_7068, wire_7034, wire_4882, wire_2104, wire_7135, wire_7061, wire_7060, wire_7053, wire_7052, wire_7045, wire_7044, wire_7036, wire_4880, wire_2104, wire_7379, wire_7371, wire_7370, wire_7363, wire_7362, wire_7355, wire_7354, wire_7300, wire_5023, wire_7381, wire_7347, wire_7346, wire_7339, wire_7338, wire_7331, wire_7330, wire_7298, wire_5021, wire_7383, wire_7375, wire_7374, wire_7367, wire_7366, wire_7359, wire_7358, wire_7296, wire_5019, wire_2132, wire_7385, wire_7351, wire_7350, wire_7343, wire_7342, wire_7335, wire_7334, wire_7294, wire_5017, wire_2132, wire_7387, wire_7327, wire_7326, wire_7319, wire_7318, wire_7311, wire_7310, wire_7292, wire_5015, wire_2132, wire_7389, wire_7323, wire_7322, wire_7315, wire_7314, wire_7307, wire_7306, wire_7290, wire_5013, wire_2132, wire_7391, wire_7369, wire_7368, wire_7361, wire_7360, wire_7353, wire_7352, wire_7288, wire_5011, wire_2132, wire_7393, wire_7345, wire_7344, wire_7337, wire_7336, wire_7329, wire_7328, wire_7286, wire_5009, wire_2104, wire_7395, wire_7373, wire_7372, wire_7365, wire_7364, wire_7357, wire_7356, wire_7284, wire_5007, wire_2104, wire_7397, wire_7349, wire_7348, wire_7341, wire_7340, wire_7333, wire_7332, wire_7282, wire_5005, wire_2104, wire_7399, wire_7325, wire_7324, wire_7317, wire_7316, wire_7309, wire_7308, wire_7280, wire_5003, wire_2104, wire_7377, wire_7321, wire_7320, wire_7313, wire_7312, wire_7305, wire_7304, wire_7302, wire_5001, wire_2104};
    // CHNAXY TOTAL: 472
    assign wire_4905 = lut_tile_6_6_chanxy_out[0];
    assign wire_4907 = lut_tile_6_6_chanxy_out[1];
    assign wire_4909 = lut_tile_6_6_chanxy_out[2];
    assign wire_4911 = lut_tile_6_6_chanxy_out[3];
    assign wire_4913 = lut_tile_6_6_chanxy_out[4];
    assign wire_4915 = lut_tile_6_6_chanxy_out[5];
    assign wire_4917 = lut_tile_6_6_chanxy_out[6];
    assign wire_4919 = lut_tile_6_6_chanxy_out[7];
    assign wire_4921 = lut_tile_6_6_chanxy_out[8];
    assign wire_4923 = lut_tile_6_6_chanxy_out[9];
    assign wire_4925 = lut_tile_6_6_chanxy_out[10];
    assign wire_4927 = lut_tile_6_6_chanxy_out[11];
    assign wire_4976 = lut_tile_6_6_chanxy_out[12];
    assign wire_4978 = lut_tile_6_6_chanxy_out[13];
    assign wire_4980 = lut_tile_6_6_chanxy_out[14];
    assign wire_4982 = lut_tile_6_6_chanxy_out[15];
    assign wire_4984 = lut_tile_6_6_chanxy_out[16];
    assign wire_4986 = lut_tile_6_6_chanxy_out[17];
    assign wire_4988 = lut_tile_6_6_chanxy_out[18];
    assign wire_4990 = lut_tile_6_6_chanxy_out[19];
    assign wire_4992 = lut_tile_6_6_chanxy_out[20];
    assign wire_4994 = lut_tile_6_6_chanxy_out[21];
    assign wire_4996 = lut_tile_6_6_chanxy_out[22];
    assign wire_4998 = lut_tile_6_6_chanxy_out[23];
    assign wire_7281 = lut_tile_6_6_chanxy_out[24];
    assign wire_7283 = lut_tile_6_6_chanxy_out[25];
    assign wire_7285 = lut_tile_6_6_chanxy_out[26];
    assign wire_7287 = lut_tile_6_6_chanxy_out[27];
    assign wire_7289 = lut_tile_6_6_chanxy_out[28];
    assign wire_7291 = lut_tile_6_6_chanxy_out[29];
    assign wire_7293 = lut_tile_6_6_chanxy_out[30];
    assign wire_7295 = lut_tile_6_6_chanxy_out[31];
    assign wire_7297 = lut_tile_6_6_chanxy_out[32];
    assign wire_7299 = lut_tile_6_6_chanxy_out[33];
    assign wire_7301 = lut_tile_6_6_chanxy_out[34];
    assign wire_7303 = lut_tile_6_6_chanxy_out[35];
    assign wire_7352 = lut_tile_6_6_chanxy_out[36];
    assign wire_7354 = lut_tile_6_6_chanxy_out[37];
    assign wire_7356 = lut_tile_6_6_chanxy_out[38];
    assign wire_7358 = lut_tile_6_6_chanxy_out[39];
    assign wire_7360 = lut_tile_6_6_chanxy_out[40];
    assign wire_7362 = lut_tile_6_6_chanxy_out[41];
    assign wire_7364 = lut_tile_6_6_chanxy_out[42];
    assign wire_7366 = lut_tile_6_6_chanxy_out[43];
    assign wire_7368 = lut_tile_6_6_chanxy_out[44];
    assign wire_7370 = lut_tile_6_6_chanxy_out[45];
    assign wire_7372 = lut_tile_6_6_chanxy_out[46];
    assign wire_7374 = lut_tile_6_6_chanxy_out[47];
   // CHANXY OUT
    assign lut_tile_6_7_chanxy_in = {wire_7542, wire_4761, wire_4759, wire_4758, wire_4751, wire_4750, wire_4743, wire_4742, wire_4666, wire_7540, wire_4783, wire_4755, wire_4754, wire_4747, wire_4746, wire_4739, wire_4738, wire_4668, wire_7538, wire_4781, wire_4731, wire_4730, wire_4723, wire_4722, wire_4715, wire_4714, wire_4670, wire_2711, wire_7536, wire_4779, wire_4707, wire_4706, wire_4699, wire_4698, wire_4691, wire_4690, wire_4672, wire_2711, wire_7534, wire_4777, wire_4735, wire_4734, wire_4727, wire_4726, wire_4719, wire_4718, wire_4674, wire_2711, wire_7532, wire_4775, wire_4711, wire_4710, wire_4703, wire_4702, wire_4695, wire_4694, wire_4676, wire_2711, wire_7530, wire_4773, wire_4757, wire_4756, wire_4749, wire_4748, wire_4741, wire_4740, wire_4678, wire_2711, wire_7528, wire_4771, wire_4753, wire_4752, wire_4745, wire_4744, wire_4737, wire_4736, wire_4680, wire_2409, wire_7526, wire_4769, wire_4729, wire_4728, wire_4721, wire_4720, wire_4713, wire_4712, wire_4682, wire_2409, wire_7524, wire_4767, wire_4705, wire_4704, wire_4697, wire_4696, wire_4689, wire_4688, wire_4684, wire_2409, wire_7522, wire_4765, wire_4733, wire_4732, wire_4725, wire_4724, wire_4717, wire_4716, wire_4686, wire_2409, wire_7520, wire_4763, wire_4709, wire_4708, wire_4701, wire_4700, wire_4693, wire_4692, wire_4664, wire_2409, wire_7663, wire_5047, wire_4999, wire_4998, wire_4991, wire_4990, wire_4983, wire_4982, wire_4928, wire_7661, wire_5025, wire_4995, wire_4994, wire_4987, wire_4986, wire_4979, wire_4978, wire_4950, wire_7659, wire_5027, wire_4971, wire_4970, wire_4963, wire_4962, wire_4955, wire_4954, wire_4948, wire_2711, wire_7657, wire_5029, wire_5019, wire_5018, wire_5011, wire_5010, wire_5003, wire_5002, wire_4946, wire_2711, wire_7655, wire_5031, wire_4975, wire_4974, wire_4967, wire_4966, wire_4959, wire_4958, wire_4944, wire_2711, wire_7653, wire_5033, wire_5023, wire_5022, wire_5015, wire_5014, wire_5007, wire_5006, wire_4942, wire_2711, wire_7651, wire_5035, wire_4997, wire_4996, wire_4989, wire_4988, wire_4981, wire_4980, wire_4940, wire_2711, wire_7649, wire_5037, wire_4993, wire_4992, wire_4985, wire_4984, wire_4977, wire_4976, wire_4938, wire_2409, wire_7647, wire_5039, wire_4969, wire_4968, wire_4961, wire_4960, wire_4953, wire_4952, wire_4936, wire_2409, wire_7645, wire_5041, wire_5017, wire_5016, wire_5009, wire_5008, wire_5001, wire_5000, wire_4934, wire_2409, wire_7643, wire_5043, wire_4973, wire_4972, wire_4965, wire_4964, wire_4957, wire_4956, wire_4932, wire_2409, wire_7641, wire_5045, wire_5021, wire_5020, wire_5013, wire_5012, wire_5005, wire_5004, wire_4930, wire_2409, wire_7397, wire_7375, wire_7374, wire_7367, wire_7366, wire_7359, wire_7358, wire_7302, wire_4926, wire_7395, wire_7371, wire_7370, wire_7363, wire_7362, wire_7355, wire_7354, wire_7280, wire_4924, wire_7393, wire_7347, wire_7346, wire_7339, wire_7338, wire_7331, wire_7330, wire_7282, wire_4922, wire_2436, wire_7391, wire_7323, wire_7322, wire_7315, wire_7314, wire_7307, wire_7306, wire_7284, wire_4920, wire_2436, wire_7389, wire_7351, wire_7350, wire_7343, wire_7342, wire_7335, wire_7334, wire_7286, wire_4918, wire_2436, wire_7387, wire_7327, wire_7326, wire_7319, wire_7318, wire_7311, wire_7310, wire_7288, wire_4916, wire_2436, wire_7385, wire_7373, wire_7372, wire_7365, wire_7364, wire_7357, wire_7356, wire_7290, wire_4914, wire_2436, wire_7383, wire_7369, wire_7368, wire_7361, wire_7360, wire_7353, wire_7352, wire_7292, wire_4912, wire_2408, wire_7381, wire_7345, wire_7344, wire_7337, wire_7336, wire_7329, wire_7328, wire_7294, wire_4910, wire_2408, wire_7379, wire_7321, wire_7320, wire_7313, wire_7312, wire_7305, wire_7304, wire_7296, wire_4908, wire_2408, wire_7377, wire_7349, wire_7348, wire_7341, wire_7340, wire_7333, wire_7332, wire_7298, wire_4906, wire_2408, wire_7399, wire_7325, wire_7324, wire_7317, wire_7316, wire_7309, wire_7308, wire_7300, wire_4904, wire_2408, wire_7643, wire_7615, wire_7614, wire_7607, wire_7606, wire_7599, wire_7598, wire_7564, wire_5047, wire_7645, wire_7611, wire_7610, wire_7603, wire_7602, wire_7595, wire_7594, wire_7562, wire_5045, wire_7647, wire_7587, wire_7586, wire_7579, wire_7578, wire_7571, wire_7570, wire_7560, wire_5043, wire_2436, wire_7649, wire_7635, wire_7634, wire_7627, wire_7626, wire_7619, wire_7618, wire_7558, wire_5041, wire_2436, wire_7651, wire_7591, wire_7590, wire_7583, wire_7582, wire_7575, wire_7574, wire_7556, wire_5039, wire_2436, wire_7653, wire_7639, wire_7638, wire_7631, wire_7630, wire_7623, wire_7622, wire_7554, wire_5037, wire_2436, wire_7655, wire_7613, wire_7612, wire_7605, wire_7604, wire_7597, wire_7596, wire_7552, wire_5035, wire_2436, wire_7657, wire_7609, wire_7608, wire_7601, wire_7600, wire_7593, wire_7592, wire_7550, wire_5033, wire_2408, wire_7659, wire_7585, wire_7584, wire_7577, wire_7576, wire_7569, wire_7568, wire_7548, wire_5031, wire_2408, wire_7661, wire_7633, wire_7632, wire_7625, wire_7624, wire_7617, wire_7616, wire_7546, wire_5029, wire_2408, wire_7663, wire_7589, wire_7588, wire_7581, wire_7580, wire_7573, wire_7572, wire_7544, wire_5027, wire_2408, wire_7641, wire_7637, wire_7636, wire_7629, wire_7628, wire_7621, wire_7620, wire_7566, wire_5025, wire_2408};
    // CHNAXY TOTAL: 472
    assign wire_4929 = lut_tile_6_7_chanxy_out[0];
    assign wire_4931 = lut_tile_6_7_chanxy_out[1];
    assign wire_4933 = lut_tile_6_7_chanxy_out[2];
    assign wire_4935 = lut_tile_6_7_chanxy_out[3];
    assign wire_4937 = lut_tile_6_7_chanxy_out[4];
    assign wire_4939 = lut_tile_6_7_chanxy_out[5];
    assign wire_4941 = lut_tile_6_7_chanxy_out[6];
    assign wire_4943 = lut_tile_6_7_chanxy_out[7];
    assign wire_4945 = lut_tile_6_7_chanxy_out[8];
    assign wire_4947 = lut_tile_6_7_chanxy_out[9];
    assign wire_4949 = lut_tile_6_7_chanxy_out[10];
    assign wire_4951 = lut_tile_6_7_chanxy_out[11];
    assign wire_5000 = lut_tile_6_7_chanxy_out[12];
    assign wire_5002 = lut_tile_6_7_chanxy_out[13];
    assign wire_5004 = lut_tile_6_7_chanxy_out[14];
    assign wire_5006 = lut_tile_6_7_chanxy_out[15];
    assign wire_5008 = lut_tile_6_7_chanxy_out[16];
    assign wire_5010 = lut_tile_6_7_chanxy_out[17];
    assign wire_5012 = lut_tile_6_7_chanxy_out[18];
    assign wire_5014 = lut_tile_6_7_chanxy_out[19];
    assign wire_5016 = lut_tile_6_7_chanxy_out[20];
    assign wire_5018 = lut_tile_6_7_chanxy_out[21];
    assign wire_5020 = lut_tile_6_7_chanxy_out[22];
    assign wire_5022 = lut_tile_6_7_chanxy_out[23];
    assign wire_7545 = lut_tile_6_7_chanxy_out[24];
    assign wire_7547 = lut_tile_6_7_chanxy_out[25];
    assign wire_7549 = lut_tile_6_7_chanxy_out[26];
    assign wire_7551 = lut_tile_6_7_chanxy_out[27];
    assign wire_7553 = lut_tile_6_7_chanxy_out[28];
    assign wire_7555 = lut_tile_6_7_chanxy_out[29];
    assign wire_7557 = lut_tile_6_7_chanxy_out[30];
    assign wire_7559 = lut_tile_6_7_chanxy_out[31];
    assign wire_7561 = lut_tile_6_7_chanxy_out[32];
    assign wire_7563 = lut_tile_6_7_chanxy_out[33];
    assign wire_7565 = lut_tile_6_7_chanxy_out[34];
    assign wire_7567 = lut_tile_6_7_chanxy_out[35];
    assign wire_7616 = lut_tile_6_7_chanxy_out[36];
    assign wire_7618 = lut_tile_6_7_chanxy_out[37];
    assign wire_7620 = lut_tile_6_7_chanxy_out[38];
    assign wire_7622 = lut_tile_6_7_chanxy_out[39];
    assign wire_7624 = lut_tile_6_7_chanxy_out[40];
    assign wire_7626 = lut_tile_6_7_chanxy_out[41];
    assign wire_7628 = lut_tile_6_7_chanxy_out[42];
    assign wire_7630 = lut_tile_6_7_chanxy_out[43];
    assign wire_7632 = lut_tile_6_7_chanxy_out[44];
    assign wire_7634 = lut_tile_6_7_chanxy_out[45];
    assign wire_7636 = lut_tile_6_7_chanxy_out[46];
    assign wire_7638 = lut_tile_6_7_chanxy_out[47];
   // CHANXY OUT
    assign lut_tile_6_8_chanxy_in = {wire_7806, wire_4758, wire_4752, wire_4746, wire_4740, wire_3099, wire_3090, wire_3084, wire_7804, wire_4734, wire_4728, wire_4722, wire_4716, wire_3096, wire_3090, wire_3084, wire_7802, wire_4710, wire_4704, wire_4698, wire_4692, wire_3096, wire_3090, wire_3081, wire_7800, wire_4782, wire_4776, wire_4770, wire_4764, wire_3102, wire_3096, wire_3090, wire_3081, wire_7798, wire_4756, wire_4750, wire_4744, wire_4738, wire_3102, wire_3096, wire_3087, wire_3081, wire_7796, wire_4732, wire_4726, wire_4720, wire_4714, wire_3102, wire_3096, wire_3087, wire_3081, wire_7794, wire_4708, wire_4702, wire_4696, wire_4690, wire_3102, wire_3093, wire_3087, wire_3081, wire_7792, wire_4780, wire_4774, wire_4768, wire_4762, wire_3102, wire_3093, wire_3087, wire_2713, wire_7790, wire_4754, wire_4748, wire_4742, wire_4736, wire_3099, wire_3093, wire_3087, wire_2713, wire_7788, wire_4730, wire_4724, wire_4718, wire_4712, wire_3099, wire_3093, wire_3084, wire_2713, wire_7786, wire_4706, wire_4700, wire_4694, wire_4688, wire_3099, wire_3093, wire_3084, wire_2713, wire_7784, wire_4778, wire_4772, wire_4766, wire_4760, wire_3099, wire_3090, wire_3084, wire_2713, wire_7927, wire_4998, wire_4992, wire_4986, wire_4980, wire_3099, wire_3090, wire_3084, wire_7925, wire_4974, wire_4968, wire_4962, wire_4956, wire_3096, wire_3090, wire_3084, wire_7923, wire_5046, wire_5040, wire_5034, wire_5028, wire_3096, wire_3090, wire_3081, wire_7921, wire_5022, wire_5016, wire_5010, wire_5004, wire_3102, wire_3096, wire_3090, wire_3081, wire_7919, wire_4996, wire_4990, wire_4984, wire_4978, wire_3102, wire_3096, wire_3087, wire_3081, wire_7917, wire_4972, wire_4966, wire_4960, wire_4954, wire_3102, wire_3096, wire_3087, wire_3081, wire_7915, wire_5044, wire_5038, wire_5032, wire_5026, wire_3102, wire_3093, wire_3087, wire_3081, wire_7913, wire_5020, wire_5014, wire_5008, wire_5002, wire_3102, wire_3093, wire_3087, wire_2713, wire_7911, wire_4994, wire_4988, wire_4982, wire_4976, wire_3099, wire_3093, wire_3087, wire_2713, wire_7909, wire_4970, wire_4964, wire_4958, wire_4952, wire_3099, wire_3093, wire_3084, wire_2713, wire_7907, wire_5042, wire_5036, wire_5030, wire_5024, wire_3099, wire_3093, wire_3084, wire_2713, wire_7905, wire_5018, wire_5012, wire_5006, wire_5000, wire_3099, wire_3090, wire_3084, wire_2713, wire_7855, wire_7854, wire_7661, wire_7611, wire_7610, wire_7603, wire_7602, wire_7595, wire_7594, wire_7566, wire_4950, wire_7841, wire_7840, wire_7659, wire_7615, wire_7614, wire_7607, wire_7606, wire_7599, wire_7598, wire_7544, wire_4948, wire_7865, wire_7864, wire_7657, wire_7587, wire_7586, wire_7579, wire_7578, wire_7571, wire_7570, wire_7546, wire_4946, wire_2740, wire_7839, wire_7838, wire_7655, wire_7591, wire_7590, wire_7583, wire_7582, wire_7575, wire_7574, wire_7548, wire_4944, wire_2740, wire_7851, wire_7850, wire_7653, wire_7635, wire_7634, wire_7627, wire_7626, wire_7619, wire_7618, wire_7550, wire_4942, wire_2740, wire_7875, wire_7874, wire_7651, wire_7639, wire_7638, wire_7631, wire_7630, wire_7623, wire_7622, wire_7552, wire_4940, wire_2740, wire_7849, wire_7848, wire_7649, wire_7609, wire_7608, wire_7601, wire_7600, wire_7593, wire_7592, wire_7554, wire_4938, wire_2740, wire_7835, wire_7834, wire_7647, wire_7613, wire_7612, wire_7605, wire_7604, wire_7597, wire_7596, wire_7556, wire_4936, wire_2712, wire_7859, wire_7858, wire_7645, wire_7585, wire_7584, wire_7577, wire_7576, wire_7569, wire_7568, wire_7558, wire_4934, wire_2712, wire_7833, wire_7832, wire_2740, wire_7643, wire_7589, wire_7588, wire_7581, wire_7580, wire_7573, wire_7572, wire_7560, wire_4932, wire_2712, wire_7845, wire_7844, wire_2740, wire_7641, wire_7633, wire_7632, wire_7625, wire_7624, wire_7617, wire_7616, wire_7562, wire_4930, wire_2712, wire_7869, wire_7868, wire_2712, wire_7663, wire_7637, wire_7636, wire_7629, wire_7628, wire_7621, wire_7620, wire_7564, wire_4928, wire_2712, wire_7891, wire_7890, wire_7913, wire_7816, wire_7879, wire_7878, wire_7901, wire_7900, wire_7923, wire_7826, wire_7863, wire_7862, wire_7885, wire_7884, wire_7907, wire_7810, wire_7873, wire_7872, wire_7895, wire_7894, wire_2740, wire_7917, wire_7820, wire_2712, wire_7857, wire_7856, wire_2712, wire_7843, wire_7842, wire_7867, wire_7866, wire_7903, wire_7902, wire_7853, wire_7852, wire_7877, wire_7876, wire_7887, wire_7886, wire_7837, wire_7836, wire_7861, wire_7860, wire_7897, wire_7896, wire_7847, wire_7846, wire_7871, wire_7870, wire_2740, wire_7881, wire_7880, wire_2712, wire_7915, wire_7818, wire_7927, wire_7830, wire_7889, wire_7888, wire_7925, wire_7828, wire_7911, wire_7814, wire_7899, wire_7898, wire_7909, wire_7812, wire_7921, wire_7824, wire_7883, wire_7882, wire_7919, wire_7822, wire_7905, wire_7808, wire_2740, wire_7893, wire_7892, wire_2712};
    // CHNAXY TOTAL: 434
    assign wire_4953 = lut_tile_6_8_chanxy_out[0];
    assign wire_4955 = lut_tile_6_8_chanxy_out[1];
    assign wire_4957 = lut_tile_6_8_chanxy_out[2];
    assign wire_4959 = lut_tile_6_8_chanxy_out[3];
    assign wire_4961 = lut_tile_6_8_chanxy_out[4];
    assign wire_4963 = lut_tile_6_8_chanxy_out[5];
    assign wire_4965 = lut_tile_6_8_chanxy_out[6];
    assign wire_4967 = lut_tile_6_8_chanxy_out[7];
    assign wire_4969 = lut_tile_6_8_chanxy_out[8];
    assign wire_4971 = lut_tile_6_8_chanxy_out[9];
    assign wire_4973 = lut_tile_6_8_chanxy_out[10];
    assign wire_4975 = lut_tile_6_8_chanxy_out[11];
    assign wire_4977 = lut_tile_6_8_chanxy_out[12];
    assign wire_4979 = lut_tile_6_8_chanxy_out[13];
    assign wire_4981 = lut_tile_6_8_chanxy_out[14];
    assign wire_4983 = lut_tile_6_8_chanxy_out[15];
    assign wire_4985 = lut_tile_6_8_chanxy_out[16];
    assign wire_4987 = lut_tile_6_8_chanxy_out[17];
    assign wire_4989 = lut_tile_6_8_chanxy_out[18];
    assign wire_4991 = lut_tile_6_8_chanxy_out[19];
    assign wire_4993 = lut_tile_6_8_chanxy_out[20];
    assign wire_4995 = lut_tile_6_8_chanxy_out[21];
    assign wire_4997 = lut_tile_6_8_chanxy_out[22];
    assign wire_4999 = lut_tile_6_8_chanxy_out[23];
    assign wire_5001 = lut_tile_6_8_chanxy_out[24];
    assign wire_5003 = lut_tile_6_8_chanxy_out[25];
    assign wire_5005 = lut_tile_6_8_chanxy_out[26];
    assign wire_5007 = lut_tile_6_8_chanxy_out[27];
    assign wire_5009 = lut_tile_6_8_chanxy_out[28];
    assign wire_5011 = lut_tile_6_8_chanxy_out[29];
    assign wire_5013 = lut_tile_6_8_chanxy_out[30];
    assign wire_5015 = lut_tile_6_8_chanxy_out[31];
    assign wire_5017 = lut_tile_6_8_chanxy_out[32];
    assign wire_5019 = lut_tile_6_8_chanxy_out[33];
    assign wire_5021 = lut_tile_6_8_chanxy_out[34];
    assign wire_5023 = lut_tile_6_8_chanxy_out[35];
    assign wire_5024 = lut_tile_6_8_chanxy_out[36];
    assign wire_5025 = lut_tile_6_8_chanxy_out[37];
    assign wire_5026 = lut_tile_6_8_chanxy_out[38];
    assign wire_5027 = lut_tile_6_8_chanxy_out[39];
    assign wire_5028 = lut_tile_6_8_chanxy_out[40];
    assign wire_5029 = lut_tile_6_8_chanxy_out[41];
    assign wire_5030 = lut_tile_6_8_chanxy_out[42];
    assign wire_5031 = lut_tile_6_8_chanxy_out[43];
    assign wire_5032 = lut_tile_6_8_chanxy_out[44];
    assign wire_5033 = lut_tile_6_8_chanxy_out[45];
    assign wire_5034 = lut_tile_6_8_chanxy_out[46];
    assign wire_5035 = lut_tile_6_8_chanxy_out[47];
    assign wire_5036 = lut_tile_6_8_chanxy_out[48];
    assign wire_5037 = lut_tile_6_8_chanxy_out[49];
    assign wire_5038 = lut_tile_6_8_chanxy_out[50];
    assign wire_5039 = lut_tile_6_8_chanxy_out[51];
    assign wire_5040 = lut_tile_6_8_chanxy_out[52];
    assign wire_5041 = lut_tile_6_8_chanxy_out[53];
    assign wire_5042 = lut_tile_6_8_chanxy_out[54];
    assign wire_5043 = lut_tile_6_8_chanxy_out[55];
    assign wire_5044 = lut_tile_6_8_chanxy_out[56];
    assign wire_5045 = lut_tile_6_8_chanxy_out[57];
    assign wire_5046 = lut_tile_6_8_chanxy_out[58];
    assign wire_5047 = lut_tile_6_8_chanxy_out[59];
    assign wire_7809 = lut_tile_6_8_chanxy_out[60];
    assign wire_7811 = lut_tile_6_8_chanxy_out[61];
    assign wire_7813 = lut_tile_6_8_chanxy_out[62];
    assign wire_7815 = lut_tile_6_8_chanxy_out[63];
    assign wire_7817 = lut_tile_6_8_chanxy_out[64];
    assign wire_7819 = lut_tile_6_8_chanxy_out[65];
    assign wire_7821 = lut_tile_6_8_chanxy_out[66];
    assign wire_7823 = lut_tile_6_8_chanxy_out[67];
    assign wire_7825 = lut_tile_6_8_chanxy_out[68];
    assign wire_7827 = lut_tile_6_8_chanxy_out[69];
    assign wire_7829 = lut_tile_6_8_chanxy_out[70];
    assign wire_7831 = lut_tile_6_8_chanxy_out[71];
    assign wire_7880 = lut_tile_6_8_chanxy_out[72];
    assign wire_7882 = lut_tile_6_8_chanxy_out[73];
    assign wire_7884 = lut_tile_6_8_chanxy_out[74];
    assign wire_7886 = lut_tile_6_8_chanxy_out[75];
    assign wire_7888 = lut_tile_6_8_chanxy_out[76];
    assign wire_7890 = lut_tile_6_8_chanxy_out[77];
    assign wire_7892 = lut_tile_6_8_chanxy_out[78];
    assign wire_7894 = lut_tile_6_8_chanxy_out[79];
    assign wire_7896 = lut_tile_6_8_chanxy_out[80];
    assign wire_7898 = lut_tile_6_8_chanxy_out[81];
    assign wire_7900 = lut_tile_6_8_chanxy_out[82];
    assign wire_7902 = lut_tile_6_8_chanxy_out[83];
   // CHANXY OUT
    assign lut_tile_7_1_chanxy_in = {wire_5982, wire_4881, wire_4877, wire_4876, wire_4845, wire_4844, wire_4813, wire_4812, wire_4798, wire_5980, wire_4903, wire_4861, wire_4860, wire_4829, wire_4828, wire_4806, wire_4797, wire_4796, wire_5978, wire_4901, wire_4859, wire_4858, wire_4827, wire_4826, wire_4814, wire_4795, wire_4794, wire_913, wire_5976, wire_4899, wire_4857, wire_4856, wire_4825, wire_4824, wire_4822, wire_4793, wire_4792, wire_913, wire_5974, wire_4897, wire_4875, wire_4874, wire_4843, wire_4842, wire_4830, wire_4811, wire_4810, wire_913, wire_5972, wire_4895, wire_4873, wire_4872, wire_4841, wire_4840, wire_4838, wire_4809, wire_4808, wire_913, wire_5970, wire_4893, wire_4869, wire_4868, wire_4846, wire_4837, wire_4836, wire_4805, wire_4804, wire_913, wire_5968, wire_4891, wire_4854, wire_4853, wire_4852, wire_4821, wire_4820, wire_4789, wire_4788, wire_611, wire_5966, wire_4889, wire_4862, wire_4851, wire_4850, wire_4819, wire_4818, wire_4787, wire_4786, wire_611, wire_5964, wire_4887, wire_4870, wire_4849, wire_4848, wire_4817, wire_4816, wire_4785, wire_4784, wire_611, wire_5962, wire_4885, wire_4878, wire_4867, wire_4866, wire_4835, wire_4834, wire_4803, wire_4802, wire_611, wire_5960, wire_4883, wire_4865, wire_4864, wire_4833, wire_4832, wire_4801, wire_4800, wire_4790, wire_611, wire_6103, wire_5167, wire_5127, wire_5126, wire_5095, wire_5094, wire_5063, wire_5062, wire_5048, wire_6101, wire_5145, wire_5136, wire_5125, wire_5124, wire_5093, wire_5092, wire_5061, wire_5060, wire_6099, wire_5147, wire_5143, wire_5142, wire_5128, wire_5111, wire_5110, wire_5079, wire_5078, wire_913, wire_6097, wire_5149, wire_5141, wire_5140, wire_5120, wire_5109, wire_5108, wire_5077, wire_5076, wire_913, wire_6095, wire_5151, wire_5139, wire_5138, wire_5112, wire_5107, wire_5106, wire_5075, wire_5074, wire_913, wire_6093, wire_5153, wire_5123, wire_5122, wire_5104, wire_5091, wire_5090, wire_5059, wire_5058, wire_913, wire_6091, wire_5155, wire_5119, wire_5118, wire_5096, wire_5087, wire_5086, wire_5055, wire_5054, wire_913, wire_6089, wire_5157, wire_5117, wire_5116, wire_5088, wire_5085, wire_5084, wire_5053, wire_5052, wire_611, wire_6087, wire_5159, wire_5135, wire_5134, wire_5103, wire_5102, wire_5080, wire_5071, wire_5070, wire_611, wire_6085, wire_5161, wire_5133, wire_5132, wire_5101, wire_5100, wire_5072, wire_5069, wire_5068, wire_611, wire_6083, wire_5163, wire_5131, wire_5130, wire_5099, wire_5098, wire_5067, wire_5066, wire_5064, wire_611, wire_6081, wire_5165, wire_5115, wire_5114, wire_5083, wire_5082, wire_5056, wire_5051, wire_5050, wire_611, wire_5839, wire_5742, wire_5827, wire_5730, wire_5803, wire_5802, wire_6083, wire_6075, wire_6074, wire_6067, wire_6066, wire_6059, wire_6058, wire_6004, wire_5167, wire_5815, wire_5814, wire_5779, wire_5778, wire_5755, wire_5754, wire_5791, wire_5790, wire_6085, wire_6051, wire_6050, wire_6043, wire_6042, wire_6035, wire_6034, wire_6002, wire_5165, wire_5825, wire_5728, wire_5801, wire_5800, wire_5767, wire_5766, wire_5777, wire_5776, wire_6087, wire_6079, wire_6078, wire_6071, wire_6070, wire_6063, wire_6062, wire_6000, wire_5163, wire_638, wire_5753, wire_5752, wire_5823, wire_5726, wire_5837, wire_5740, wire_5813, wire_5812, wire_6089, wire_6055, wire_6054, wire_6047, wire_6046, wire_6039, wire_6038, wire_5998, wire_5161, wire_638, wire_5799, wire_5798, wire_5789, wire_5788, wire_5765, wire_5764, wire_5775, wire_5774, wire_6091, wire_6031, wire_6030, wire_6023, wire_6022, wire_6015, wire_6014, wire_5996, wire_5159, wire_638, wire_5835, wire_5738, wire_5811, wire_5810, wire_5751, wire_5750, wire_5787, wire_5786, wire_6093, wire_6027, wire_6026, wire_6019, wire_6018, wire_6011, wire_6010, wire_5994, wire_5157, wire_638, wire_5763, wire_5762, wire_5833, wire_5736, wire_5821, wire_5724, wire_5797, wire_5796, wire_6095, wire_6073, wire_6072, wire_6065, wire_6064, wire_6057, wire_6056, wire_5992, wire_5155, wire_638, wire_5809, wire_5808, wire_5773, wire_5772, wire_5749, wire_5748, wire_5785, wire_5784, wire_6097, wire_6049, wire_6048, wire_6041, wire_6040, wire_6033, wire_6032, wire_5990, wire_5153, wire_610, wire_5819, wire_5722, wire_5795, wire_5794, wire_5761, wire_5760, wire_5771, wire_5770, wire_6099, wire_6077, wire_6076, wire_6069, wire_6068, wire_6061, wire_6060, wire_5988, wire_5151, wire_610, wire_5747, wire_5746, wire_5817, wire_5720, wire_5831, wire_5734, wire_5807, wire_5806, wire_638, wire_6101, wire_6053, wire_6052, wire_6045, wire_6044, wire_6037, wire_6036, wire_5986, wire_5149, wire_610, wire_5793, wire_5792, wire_638, wire_5783, wire_5782, wire_638, wire_5759, wire_5758, wire_638, wire_5769, wire_5768, wire_638, wire_6103, wire_6029, wire_6028, wire_6021, wire_6020, wire_6013, wire_6012, wire_5984, wire_5147, wire_610, wire_5829, wire_5732, wire_610, wire_5805, wire_5804, wire_610, wire_5745, wire_5744, wire_610, wire_5781, wire_5780, wire_610, wire_6081, wire_6025, wire_6024, wire_6017, wire_6016, wire_6009, wire_6008, wire_6006, wire_5145, wire_610, wire_5757, wire_5756, wire_610};
    // CHNAXY TOTAL: 460
    assign wire_5048 = lut_tile_7_1_chanxy_out[0];
    assign wire_5049 = lut_tile_7_1_chanxy_out[1];
    assign wire_5050 = lut_tile_7_1_chanxy_out[2];
    assign wire_5052 = lut_tile_7_1_chanxy_out[3];
    assign wire_5054 = lut_tile_7_1_chanxy_out[4];
    assign wire_5056 = lut_tile_7_1_chanxy_out[5];
    assign wire_5057 = lut_tile_7_1_chanxy_out[6];
    assign wire_5058 = lut_tile_7_1_chanxy_out[7];
    assign wire_5060 = lut_tile_7_1_chanxy_out[8];
    assign wire_5062 = lut_tile_7_1_chanxy_out[9];
    assign wire_5064 = lut_tile_7_1_chanxy_out[10];
    assign wire_5065 = lut_tile_7_1_chanxy_out[11];
    assign wire_5066 = lut_tile_7_1_chanxy_out[12];
    assign wire_5068 = lut_tile_7_1_chanxy_out[13];
    assign wire_5070 = lut_tile_7_1_chanxy_out[14];
    assign wire_5072 = lut_tile_7_1_chanxy_out[15];
    assign wire_5073 = lut_tile_7_1_chanxy_out[16];
    assign wire_5074 = lut_tile_7_1_chanxy_out[17];
    assign wire_5076 = lut_tile_7_1_chanxy_out[18];
    assign wire_5078 = lut_tile_7_1_chanxy_out[19];
    assign wire_5080 = lut_tile_7_1_chanxy_out[20];
    assign wire_5081 = lut_tile_7_1_chanxy_out[21];
    assign wire_5082 = lut_tile_7_1_chanxy_out[22];
    assign wire_5084 = lut_tile_7_1_chanxy_out[23];
    assign wire_5086 = lut_tile_7_1_chanxy_out[24];
    assign wire_5088 = lut_tile_7_1_chanxy_out[25];
    assign wire_5089 = lut_tile_7_1_chanxy_out[26];
    assign wire_5090 = lut_tile_7_1_chanxy_out[27];
    assign wire_5092 = lut_tile_7_1_chanxy_out[28];
    assign wire_5094 = lut_tile_7_1_chanxy_out[29];
    assign wire_5096 = lut_tile_7_1_chanxy_out[30];
    assign wire_5097 = lut_tile_7_1_chanxy_out[31];
    assign wire_5098 = lut_tile_7_1_chanxy_out[32];
    assign wire_5100 = lut_tile_7_1_chanxy_out[33];
    assign wire_5102 = lut_tile_7_1_chanxy_out[34];
    assign wire_5104 = lut_tile_7_1_chanxy_out[35];
    assign wire_5105 = lut_tile_7_1_chanxy_out[36];
    assign wire_5106 = lut_tile_7_1_chanxy_out[37];
    assign wire_5108 = lut_tile_7_1_chanxy_out[38];
    assign wire_5110 = lut_tile_7_1_chanxy_out[39];
    assign wire_5112 = lut_tile_7_1_chanxy_out[40];
    assign wire_5113 = lut_tile_7_1_chanxy_out[41];
    assign wire_5114 = lut_tile_7_1_chanxy_out[42];
    assign wire_5116 = lut_tile_7_1_chanxy_out[43];
    assign wire_5118 = lut_tile_7_1_chanxy_out[44];
    assign wire_5120 = lut_tile_7_1_chanxy_out[45];
    assign wire_5121 = lut_tile_7_1_chanxy_out[46];
    assign wire_5122 = lut_tile_7_1_chanxy_out[47];
    assign wire_5124 = lut_tile_7_1_chanxy_out[48];
    assign wire_5126 = lut_tile_7_1_chanxy_out[49];
    assign wire_5128 = lut_tile_7_1_chanxy_out[50];
    assign wire_5129 = lut_tile_7_1_chanxy_out[51];
    assign wire_5130 = lut_tile_7_1_chanxy_out[52];
    assign wire_5132 = lut_tile_7_1_chanxy_out[53];
    assign wire_5134 = lut_tile_7_1_chanxy_out[54];
    assign wire_5136 = lut_tile_7_1_chanxy_out[55];
    assign wire_5137 = lut_tile_7_1_chanxy_out[56];
    assign wire_5138 = lut_tile_7_1_chanxy_out[57];
    assign wire_5140 = lut_tile_7_1_chanxy_out[58];
    assign wire_5142 = lut_tile_7_1_chanxy_out[59];
    assign wire_5985 = lut_tile_7_1_chanxy_out[60];
    assign wire_5987 = lut_tile_7_1_chanxy_out[61];
    assign wire_5989 = lut_tile_7_1_chanxy_out[62];
    assign wire_5991 = lut_tile_7_1_chanxy_out[63];
    assign wire_5993 = lut_tile_7_1_chanxy_out[64];
    assign wire_5995 = lut_tile_7_1_chanxy_out[65];
    assign wire_5997 = lut_tile_7_1_chanxy_out[66];
    assign wire_5999 = lut_tile_7_1_chanxy_out[67];
    assign wire_6001 = lut_tile_7_1_chanxy_out[68];
    assign wire_6003 = lut_tile_7_1_chanxy_out[69];
    assign wire_6005 = lut_tile_7_1_chanxy_out[70];
    assign wire_6007 = lut_tile_7_1_chanxy_out[71];
    assign wire_6056 = lut_tile_7_1_chanxy_out[72];
    assign wire_6058 = lut_tile_7_1_chanxy_out[73];
    assign wire_6060 = lut_tile_7_1_chanxy_out[74];
    assign wire_6062 = lut_tile_7_1_chanxy_out[75];
    assign wire_6064 = lut_tile_7_1_chanxy_out[76];
    assign wire_6066 = lut_tile_7_1_chanxy_out[77];
    assign wire_6068 = lut_tile_7_1_chanxy_out[78];
    assign wire_6070 = lut_tile_7_1_chanxy_out[79];
    assign wire_6072 = lut_tile_7_1_chanxy_out[80];
    assign wire_6074 = lut_tile_7_1_chanxy_out[81];
    assign wire_6076 = lut_tile_7_1_chanxy_out[82];
    assign wire_6078 = lut_tile_7_1_chanxy_out[83];
   // CHANXY OUT
    assign lut_tile_7_2_chanxy_in = {wire_6246, wire_4905, wire_4903, wire_4902, wire_4895, wire_4894, wire_4887, wire_4886, wire_4792, wire_6244, wire_4927, wire_4899, wire_4898, wire_4891, wire_4890, wire_4883, wire_4882, wire_4800, wire_6242, wire_4925, wire_4861, wire_4860, wire_4829, wire_4828, wire_4808, wire_4797, wire_4796, wire_1217, wire_6240, wire_4923, wire_4859, wire_4858, wire_4827, wire_4826, wire_4816, wire_4795, wire_4794, wire_1217, wire_6238, wire_4921, wire_4877, wire_4876, wire_4845, wire_4844, wire_4824, wire_4813, wire_4812, wire_1217, wire_6236, wire_4919, wire_4875, wire_4874, wire_4843, wire_4842, wire_4832, wire_4811, wire_4810, wire_1217, wire_6234, wire_4917, wire_4901, wire_4900, wire_4893, wire_4892, wire_4885, wire_4884, wire_4840, wire_1217, wire_6232, wire_4915, wire_4897, wire_4896, wire_4889, wire_4888, wire_4881, wire_4880, wire_4848, wire_915, wire_6230, wire_4913, wire_4856, wire_4853, wire_4852, wire_4821, wire_4820, wire_4789, wire_4788, wire_915, wire_6228, wire_4911, wire_4864, wire_4851, wire_4850, wire_4819, wire_4818, wire_4787, wire_4786, wire_915, wire_6226, wire_4909, wire_4872, wire_4869, wire_4868, wire_4837, wire_4836, wire_4805, wire_4804, wire_915, wire_6224, wire_4907, wire_4867, wire_4866, wire_4835, wire_4834, wire_4803, wire_4802, wire_4784, wire_915, wire_6367, wire_5191, wire_5143, wire_5142, wire_5111, wire_5110, wire_5079, wire_5078, wire_5050, wire_6365, wire_5169, wire_5138, wire_5127, wire_5126, wire_5095, wire_5094, wire_5063, wire_5062, wire_6363, wire_5171, wire_5130, wire_5125, wire_5124, wire_5093, wire_5092, wire_5061, wire_5060, wire_1217, wire_6361, wire_5173, wire_5163, wire_5162, wire_5155, wire_5154, wire_5147, wire_5146, wire_5122, wire_1217, wire_6359, wire_5175, wire_5141, wire_5140, wire_5114, wire_5109, wire_5108, wire_5077, wire_5076, wire_1217, wire_6357, wire_5177, wire_5167, wire_5166, wire_5159, wire_5158, wire_5151, wire_5150, wire_5106, wire_1217, wire_6355, wire_5179, wire_5135, wire_5134, wire_5103, wire_5102, wire_5098, wire_5071, wire_5070, wire_1217, wire_6353, wire_5181, wire_5119, wire_5118, wire_5090, wire_5087, wire_5086, wire_5055, wire_5054, wire_915, wire_6351, wire_5183, wire_5117, wire_5116, wire_5085, wire_5084, wire_5082, wire_5053, wire_5052, wire_915, wire_6349, wire_5185, wire_5161, wire_5160, wire_5153, wire_5152, wire_5145, wire_5144, wire_5074, wire_915, wire_6347, wire_5187, wire_5133, wire_5132, wire_5101, wire_5100, wire_5069, wire_5068, wire_5066, wire_915, wire_6345, wire_5189, wire_5165, wire_5164, wire_5157, wire_5156, wire_5149, wire_5148, wire_5058, wire_915, wire_6101, wire_6079, wire_6078, wire_6071, wire_6070, wire_6063, wire_6062, wire_6006, wire_5136, wire_6099, wire_6075, wire_6074, wire_6067, wire_6066, wire_6059, wire_6058, wire_5984, wire_5128, wire_6097, wire_6051, wire_6050, wire_6043, wire_6042, wire_6035, wire_6034, wire_5986, wire_5120, wire_942, wire_6095, wire_6027, wire_6026, wire_6019, wire_6018, wire_6011, wire_6010, wire_5988, wire_5112, wire_942, wire_6093, wire_6055, wire_6054, wire_6047, wire_6046, wire_6039, wire_6038, wire_5990, wire_5104, wire_942, wire_6091, wire_6031, wire_6030, wire_6023, wire_6022, wire_6015, wire_6014, wire_5992, wire_5096, wire_942, wire_6089, wire_6077, wire_6076, wire_6069, wire_6068, wire_6061, wire_6060, wire_5994, wire_5088, wire_942, wire_6087, wire_6073, wire_6072, wire_6065, wire_6064, wire_6057, wire_6056, wire_5996, wire_5080, wire_914, wire_6085, wire_6049, wire_6048, wire_6041, wire_6040, wire_6033, wire_6032, wire_5998, wire_5072, wire_914, wire_6083, wire_6025, wire_6024, wire_6017, wire_6016, wire_6009, wire_6008, wire_6000, wire_5064, wire_914, wire_6081, wire_6053, wire_6052, wire_6045, wire_6044, wire_6037, wire_6036, wire_6002, wire_5056, wire_914, wire_6103, wire_6029, wire_6028, wire_6021, wire_6020, wire_6013, wire_6012, wire_6004, wire_5048, wire_914, wire_6347, wire_6319, wire_6318, wire_6311, wire_6310, wire_6303, wire_6302, wire_6268, wire_5191, wire_6349, wire_6315, wire_6314, wire_6307, wire_6306, wire_6299, wire_6298, wire_6266, wire_5189, wire_6351, wire_6291, wire_6290, wire_6283, wire_6282, wire_6275, wire_6274, wire_6264, wire_5187, wire_942, wire_6353, wire_6339, wire_6338, wire_6331, wire_6330, wire_6323, wire_6322, wire_6262, wire_5185, wire_942, wire_6355, wire_6295, wire_6294, wire_6287, wire_6286, wire_6279, wire_6278, wire_6260, wire_5183, wire_942, wire_6357, wire_6343, wire_6342, wire_6335, wire_6334, wire_6327, wire_6326, wire_6258, wire_5181, wire_942, wire_6359, wire_6317, wire_6316, wire_6309, wire_6308, wire_6301, wire_6300, wire_6256, wire_5179, wire_942, wire_6361, wire_6313, wire_6312, wire_6305, wire_6304, wire_6297, wire_6296, wire_6254, wire_5177, wire_914, wire_6363, wire_6289, wire_6288, wire_6281, wire_6280, wire_6273, wire_6272, wire_6252, wire_5175, wire_914, wire_6365, wire_6337, wire_6336, wire_6329, wire_6328, wire_6321, wire_6320, wire_6250, wire_5173, wire_914, wire_6367, wire_6293, wire_6292, wire_6285, wire_6284, wire_6277, wire_6276, wire_6248, wire_5171, wire_914, wire_6345, wire_6341, wire_6340, wire_6333, wire_6332, wire_6325, wire_6324, wire_6270, wire_5169, wire_914};
    // CHNAXY TOTAL: 472
    assign wire_5051 = lut_tile_7_2_chanxy_out[0];
    assign wire_5059 = lut_tile_7_2_chanxy_out[1];
    assign wire_5067 = lut_tile_7_2_chanxy_out[2];
    assign wire_5075 = lut_tile_7_2_chanxy_out[3];
    assign wire_5083 = lut_tile_7_2_chanxy_out[4];
    assign wire_5091 = lut_tile_7_2_chanxy_out[5];
    assign wire_5099 = lut_tile_7_2_chanxy_out[6];
    assign wire_5107 = lut_tile_7_2_chanxy_out[7];
    assign wire_5115 = lut_tile_7_2_chanxy_out[8];
    assign wire_5123 = lut_tile_7_2_chanxy_out[9];
    assign wire_5131 = lut_tile_7_2_chanxy_out[10];
    assign wire_5139 = lut_tile_7_2_chanxy_out[11];
    assign wire_5144 = lut_tile_7_2_chanxy_out[12];
    assign wire_5146 = lut_tile_7_2_chanxy_out[13];
    assign wire_5148 = lut_tile_7_2_chanxy_out[14];
    assign wire_5150 = lut_tile_7_2_chanxy_out[15];
    assign wire_5152 = lut_tile_7_2_chanxy_out[16];
    assign wire_5154 = lut_tile_7_2_chanxy_out[17];
    assign wire_5156 = lut_tile_7_2_chanxy_out[18];
    assign wire_5158 = lut_tile_7_2_chanxy_out[19];
    assign wire_5160 = lut_tile_7_2_chanxy_out[20];
    assign wire_5162 = lut_tile_7_2_chanxy_out[21];
    assign wire_5164 = lut_tile_7_2_chanxy_out[22];
    assign wire_5166 = lut_tile_7_2_chanxy_out[23];
    assign wire_6249 = lut_tile_7_2_chanxy_out[24];
    assign wire_6251 = lut_tile_7_2_chanxy_out[25];
    assign wire_6253 = lut_tile_7_2_chanxy_out[26];
    assign wire_6255 = lut_tile_7_2_chanxy_out[27];
    assign wire_6257 = lut_tile_7_2_chanxy_out[28];
    assign wire_6259 = lut_tile_7_2_chanxy_out[29];
    assign wire_6261 = lut_tile_7_2_chanxy_out[30];
    assign wire_6263 = lut_tile_7_2_chanxy_out[31];
    assign wire_6265 = lut_tile_7_2_chanxy_out[32];
    assign wire_6267 = lut_tile_7_2_chanxy_out[33];
    assign wire_6269 = lut_tile_7_2_chanxy_out[34];
    assign wire_6271 = lut_tile_7_2_chanxy_out[35];
    assign wire_6320 = lut_tile_7_2_chanxy_out[36];
    assign wire_6322 = lut_tile_7_2_chanxy_out[37];
    assign wire_6324 = lut_tile_7_2_chanxy_out[38];
    assign wire_6326 = lut_tile_7_2_chanxy_out[39];
    assign wire_6328 = lut_tile_7_2_chanxy_out[40];
    assign wire_6330 = lut_tile_7_2_chanxy_out[41];
    assign wire_6332 = lut_tile_7_2_chanxy_out[42];
    assign wire_6334 = lut_tile_7_2_chanxy_out[43];
    assign wire_6336 = lut_tile_7_2_chanxy_out[44];
    assign wire_6338 = lut_tile_7_2_chanxy_out[45];
    assign wire_6340 = lut_tile_7_2_chanxy_out[46];
    assign wire_6342 = lut_tile_7_2_chanxy_out[47];
   // CHANXY OUT
    assign lut_tile_7_3_chanxy_in = {wire_6510, wire_4929, wire_4899, wire_4898, wire_4891, wire_4890, wire_4883, wire_4882, wire_4794, wire_6508, wire_4951, wire_4903, wire_4902, wire_4895, wire_4894, wire_4887, wire_4886, wire_4802, wire_6506, wire_4949, wire_4861, wire_4860, wire_4829, wire_4828, wire_4810, wire_4797, wire_4796, wire_1521, wire_6504, wire_4947, wire_4877, wire_4876, wire_4845, wire_4844, wire_4818, wire_4813, wire_4812, wire_1521, wire_6502, wire_4945, wire_4923, wire_4922, wire_4915, wire_4914, wire_4907, wire_4906, wire_4826, wire_1521, wire_6500, wire_4943, wire_4927, wire_4926, wire_4919, wire_4918, wire_4911, wire_4910, wire_4834, wire_1521, wire_6498, wire_4941, wire_4897, wire_4896, wire_4889, wire_4888, wire_4881, wire_4880, wire_4842, wire_1521, wire_6496, wire_4939, wire_4901, wire_4900, wire_4893, wire_4892, wire_4885, wire_4884, wire_4850, wire_1219, wire_6494, wire_4937, wire_4858, wire_4853, wire_4852, wire_4821, wire_4820, wire_4789, wire_4788, wire_1219, wire_6492, wire_4935, wire_4869, wire_4868, wire_4866, wire_4837, wire_4836, wire_4805, wire_4804, wire_1219, wire_6490, wire_4933, wire_4921, wire_4920, wire_4913, wire_4912, wire_4905, wire_4904, wire_4874, wire_1219, wire_6488, wire_4931, wire_4925, wire_4924, wire_4917, wire_4916, wire_4909, wire_4908, wire_4786, wire_1219, wire_6631, wire_5215, wire_5127, wire_5126, wire_5095, wire_5094, wire_5063, wire_5062, wire_5052, wire_6629, wire_5193, wire_5143, wire_5142, wire_5140, wire_5111, wire_5110, wire_5079, wire_5078, wire_6627, wire_5195, wire_5187, wire_5186, wire_5179, wire_5178, wire_5171, wire_5170, wire_5132, wire_1521, wire_6625, wire_5197, wire_5191, wire_5190, wire_5183, wire_5182, wire_5175, wire_5174, wire_5124, wire_1521, wire_6623, wire_5199, wire_5163, wire_5162, wire_5155, wire_5154, wire_5147, wire_5146, wire_5116, wire_1521, wire_6621, wire_5201, wire_5167, wire_5166, wire_5159, wire_5158, wire_5151, wire_5150, wire_5108, wire_1521, wire_6619, wire_5203, wire_5119, wire_5118, wire_5100, wire_5087, wire_5086, wire_5055, wire_5054, wire_1521, wire_6617, wire_5205, wire_5135, wire_5134, wire_5103, wire_5102, wire_5092, wire_5071, wire_5070, wire_1219, wire_6615, wire_5207, wire_5185, wire_5184, wire_5177, wire_5176, wire_5169, wire_5168, wire_5084, wire_1219, wire_6613, wire_5209, wire_5189, wire_5188, wire_5181, wire_5180, wire_5173, wire_5172, wire_5076, wire_1219, wire_6611, wire_5211, wire_5161, wire_5160, wire_5153, wire_5152, wire_5145, wire_5144, wire_5068, wire_1219, wire_6609, wire_5213, wire_5165, wire_5164, wire_5157, wire_5156, wire_5149, wire_5148, wire_5060, wire_1219, wire_6365, wire_6315, wire_6314, wire_6307, wire_6306, wire_6299, wire_6298, wire_6270, wire_5138, wire_6363, wire_6319, wire_6318, wire_6311, wire_6310, wire_6303, wire_6302, wire_6248, wire_5130, wire_6361, wire_6291, wire_6290, wire_6283, wire_6282, wire_6275, wire_6274, wire_6250, wire_5122, wire_1246, wire_6359, wire_6295, wire_6294, wire_6287, wire_6286, wire_6279, wire_6278, wire_6252, wire_5114, wire_1246, wire_6357, wire_6339, wire_6338, wire_6331, wire_6330, wire_6323, wire_6322, wire_6254, wire_5106, wire_1246, wire_6355, wire_6343, wire_6342, wire_6335, wire_6334, wire_6327, wire_6326, wire_6256, wire_5098, wire_1246, wire_6353, wire_6313, wire_6312, wire_6305, wire_6304, wire_6297, wire_6296, wire_6258, wire_5090, wire_1246, wire_6351, wire_6317, wire_6316, wire_6309, wire_6308, wire_6301, wire_6300, wire_6260, wire_5082, wire_1218, wire_6349, wire_6289, wire_6288, wire_6281, wire_6280, wire_6273, wire_6272, wire_6262, wire_5074, wire_1218, wire_6347, wire_6293, wire_6292, wire_6285, wire_6284, wire_6277, wire_6276, wire_6264, wire_5066, wire_1218, wire_6345, wire_6337, wire_6336, wire_6329, wire_6328, wire_6321, wire_6320, wire_6266, wire_5058, wire_1218, wire_6367, wire_6341, wire_6340, wire_6333, wire_6332, wire_6325, wire_6324, wire_6268, wire_5050, wire_1218, wire_6611, wire_6555, wire_6554, wire_6547, wire_6546, wire_6539, wire_6538, wire_6532, wire_5215, wire_6613, wire_6559, wire_6558, wire_6551, wire_6550, wire_6543, wire_6542, wire_6530, wire_5213, wire_6615, wire_6603, wire_6602, wire_6595, wire_6594, wire_6587, wire_6586, wire_6528, wire_5211, wire_1246, wire_6617, wire_6607, wire_6606, wire_6599, wire_6598, wire_6591, wire_6590, wire_6526, wire_5209, wire_1246, wire_6619, wire_6579, wire_6578, wire_6571, wire_6570, wire_6563, wire_6562, wire_6524, wire_5207, wire_1246, wire_6621, wire_6583, wire_6582, wire_6575, wire_6574, wire_6567, wire_6566, wire_6522, wire_5205, wire_1246, wire_6623, wire_6553, wire_6552, wire_6545, wire_6544, wire_6537, wire_6536, wire_6520, wire_5203, wire_1246, wire_6625, wire_6557, wire_6556, wire_6549, wire_6548, wire_6541, wire_6540, wire_6518, wire_5201, wire_1218, wire_6627, wire_6601, wire_6600, wire_6593, wire_6592, wire_6585, wire_6584, wire_6516, wire_5199, wire_1218, wire_6629, wire_6605, wire_6604, wire_6597, wire_6596, wire_6589, wire_6588, wire_6514, wire_5197, wire_1218, wire_6631, wire_6577, wire_6576, wire_6569, wire_6568, wire_6561, wire_6560, wire_6512, wire_5195, wire_1218, wire_6609, wire_6581, wire_6580, wire_6573, wire_6572, wire_6565, wire_6564, wire_6534, wire_5193, wire_1218};
    // CHNAXY TOTAL: 472
    assign wire_5053 = lut_tile_7_3_chanxy_out[0];
    assign wire_5061 = lut_tile_7_3_chanxy_out[1];
    assign wire_5069 = lut_tile_7_3_chanxy_out[2];
    assign wire_5077 = lut_tile_7_3_chanxy_out[3];
    assign wire_5085 = lut_tile_7_3_chanxy_out[4];
    assign wire_5093 = lut_tile_7_3_chanxy_out[5];
    assign wire_5101 = lut_tile_7_3_chanxy_out[6];
    assign wire_5109 = lut_tile_7_3_chanxy_out[7];
    assign wire_5117 = lut_tile_7_3_chanxy_out[8];
    assign wire_5125 = lut_tile_7_3_chanxy_out[9];
    assign wire_5133 = lut_tile_7_3_chanxy_out[10];
    assign wire_5141 = lut_tile_7_3_chanxy_out[11];
    assign wire_5168 = lut_tile_7_3_chanxy_out[12];
    assign wire_5170 = lut_tile_7_3_chanxy_out[13];
    assign wire_5172 = lut_tile_7_3_chanxy_out[14];
    assign wire_5174 = lut_tile_7_3_chanxy_out[15];
    assign wire_5176 = lut_tile_7_3_chanxy_out[16];
    assign wire_5178 = lut_tile_7_3_chanxy_out[17];
    assign wire_5180 = lut_tile_7_3_chanxy_out[18];
    assign wire_5182 = lut_tile_7_3_chanxy_out[19];
    assign wire_5184 = lut_tile_7_3_chanxy_out[20];
    assign wire_5186 = lut_tile_7_3_chanxy_out[21];
    assign wire_5188 = lut_tile_7_3_chanxy_out[22];
    assign wire_5190 = lut_tile_7_3_chanxy_out[23];
    assign wire_6513 = lut_tile_7_3_chanxy_out[24];
    assign wire_6515 = lut_tile_7_3_chanxy_out[25];
    assign wire_6517 = lut_tile_7_3_chanxy_out[26];
    assign wire_6519 = lut_tile_7_3_chanxy_out[27];
    assign wire_6521 = lut_tile_7_3_chanxy_out[28];
    assign wire_6523 = lut_tile_7_3_chanxy_out[29];
    assign wire_6525 = lut_tile_7_3_chanxy_out[30];
    assign wire_6527 = lut_tile_7_3_chanxy_out[31];
    assign wire_6529 = lut_tile_7_3_chanxy_out[32];
    assign wire_6531 = lut_tile_7_3_chanxy_out[33];
    assign wire_6533 = lut_tile_7_3_chanxy_out[34];
    assign wire_6535 = lut_tile_7_3_chanxy_out[35];
    assign wire_6584 = lut_tile_7_3_chanxy_out[36];
    assign wire_6586 = lut_tile_7_3_chanxy_out[37];
    assign wire_6588 = lut_tile_7_3_chanxy_out[38];
    assign wire_6590 = lut_tile_7_3_chanxy_out[39];
    assign wire_6592 = lut_tile_7_3_chanxy_out[40];
    assign wire_6594 = lut_tile_7_3_chanxy_out[41];
    assign wire_6596 = lut_tile_7_3_chanxy_out[42];
    assign wire_6598 = lut_tile_7_3_chanxy_out[43];
    assign wire_6600 = lut_tile_7_3_chanxy_out[44];
    assign wire_6602 = lut_tile_7_3_chanxy_out[45];
    assign wire_6604 = lut_tile_7_3_chanxy_out[46];
    assign wire_6606 = lut_tile_7_3_chanxy_out[47];
   // CHANXY OUT
    assign lut_tile_7_4_chanxy_in = {wire_6774, wire_4953, wire_4899, wire_4898, wire_4891, wire_4890, wire_4883, wire_4882, wire_4796, wire_6772, wire_4975, wire_4947, wire_4946, wire_4939, wire_4938, wire_4931, wire_4930, wire_4804, wire_6770, wire_4973, wire_4903, wire_4902, wire_4895, wire_4894, wire_4887, wire_4886, wire_4812, wire_1825, wire_6768, wire_4971, wire_4951, wire_4950, wire_4943, wire_4942, wire_4935, wire_4934, wire_4820, wire_1825, wire_6766, wire_4969, wire_4927, wire_4926, wire_4919, wire_4918, wire_4911, wire_4910, wire_4828, wire_1825, wire_6764, wire_4967, wire_4923, wire_4922, wire_4915, wire_4914, wire_4907, wire_4906, wire_4836, wire_1825, wire_6762, wire_4965, wire_4897, wire_4896, wire_4889, wire_4888, wire_4881, wire_4880, wire_4844, wire_1825, wire_6760, wire_4963, wire_4945, wire_4944, wire_4937, wire_4936, wire_4929, wire_4928, wire_4852, wire_1523, wire_6758, wire_4961, wire_4901, wire_4900, wire_4893, wire_4892, wire_4885, wire_4884, wire_4860, wire_1523, wire_6756, wire_4959, wire_4949, wire_4948, wire_4941, wire_4940, wire_4933, wire_4932, wire_4868, wire_1523, wire_6754, wire_4957, wire_4925, wire_4924, wire_4917, wire_4916, wire_4909, wire_4908, wire_4876, wire_1523, wire_6752, wire_4955, wire_4921, wire_4920, wire_4913, wire_4912, wire_4905, wire_4904, wire_4788, wire_1523, wire_6895, wire_5239, wire_5211, wire_5210, wire_5203, wire_5202, wire_5195, wire_5194, wire_5054, wire_6893, wire_5217, wire_5187, wire_5186, wire_5179, wire_5178, wire_5171, wire_5170, wire_5142, wire_6891, wire_5219, wire_5215, wire_5214, wire_5207, wire_5206, wire_5199, wire_5198, wire_5134, wire_1825, wire_6889, wire_5221, wire_5191, wire_5190, wire_5183, wire_5182, wire_5175, wire_5174, wire_5126, wire_1825, wire_6887, wire_5223, wire_5167, wire_5166, wire_5159, wire_5158, wire_5151, wire_5150, wire_5118, wire_1825, wire_6885, wire_5225, wire_5163, wire_5162, wire_5155, wire_5154, wire_5147, wire_5146, wire_5110, wire_1825, wire_6883, wire_5227, wire_5209, wire_5208, wire_5201, wire_5200, wire_5193, wire_5192, wire_5102, wire_1825, wire_6881, wire_5229, wire_5185, wire_5184, wire_5177, wire_5176, wire_5169, wire_5168, wire_5094, wire_1523, wire_6879, wire_5231, wire_5213, wire_5212, wire_5205, wire_5204, wire_5197, wire_5196, wire_5086, wire_1523, wire_6877, wire_5233, wire_5189, wire_5188, wire_5181, wire_5180, wire_5173, wire_5172, wire_5078, wire_1523, wire_6875, wire_5235, wire_5165, wire_5164, wire_5157, wire_5156, wire_5149, wire_5148, wire_5070, wire_1523, wire_6873, wire_5237, wire_5161, wire_5160, wire_5153, wire_5152, wire_5145, wire_5144, wire_5062, wire_1523, wire_6629, wire_6555, wire_6554, wire_6547, wire_6546, wire_6539, wire_6538, wire_6534, wire_5140, wire_6627, wire_6603, wire_6602, wire_6595, wire_6594, wire_6587, wire_6586, wire_6512, wire_5132, wire_6625, wire_6559, wire_6558, wire_6551, wire_6550, wire_6543, wire_6542, wire_6514, wire_5124, wire_1550, wire_6623, wire_6607, wire_6606, wire_6599, wire_6598, wire_6591, wire_6590, wire_6516, wire_5116, wire_1550, wire_6621, wire_6583, wire_6582, wire_6575, wire_6574, wire_6567, wire_6566, wire_6518, wire_5108, wire_1550, wire_6619, wire_6579, wire_6578, wire_6571, wire_6570, wire_6563, wire_6562, wire_6520, wire_5100, wire_1550, wire_6617, wire_6553, wire_6552, wire_6545, wire_6544, wire_6537, wire_6536, wire_6522, wire_5092, wire_1550, wire_6615, wire_6601, wire_6600, wire_6593, wire_6592, wire_6585, wire_6584, wire_6524, wire_5084, wire_1522, wire_6613, wire_6557, wire_6556, wire_6549, wire_6548, wire_6541, wire_6540, wire_6526, wire_5076, wire_1522, wire_6611, wire_6605, wire_6604, wire_6597, wire_6596, wire_6589, wire_6588, wire_6528, wire_5068, wire_1522, wire_6609, wire_6581, wire_6580, wire_6573, wire_6572, wire_6565, wire_6564, wire_6530, wire_5060, wire_1522, wire_6631, wire_6577, wire_6576, wire_6569, wire_6568, wire_6561, wire_6560, wire_6532, wire_5052, wire_1522, wire_6875, wire_6867, wire_6866, wire_6859, wire_6858, wire_6851, wire_6850, wire_6796, wire_5239, wire_6877, wire_6843, wire_6842, wire_6835, wire_6834, wire_6827, wire_6826, wire_6794, wire_5237, wire_6879, wire_6871, wire_6870, wire_6863, wire_6862, wire_6855, wire_6854, wire_6792, wire_5235, wire_1550, wire_6881, wire_6847, wire_6846, wire_6839, wire_6838, wire_6831, wire_6830, wire_6790, wire_5233, wire_1550, wire_6883, wire_6823, wire_6822, wire_6815, wire_6814, wire_6807, wire_6806, wire_6788, wire_5231, wire_1550, wire_6885, wire_6819, wire_6818, wire_6811, wire_6810, wire_6803, wire_6802, wire_6786, wire_5229, wire_1550, wire_6887, wire_6865, wire_6864, wire_6857, wire_6856, wire_6849, wire_6848, wire_6784, wire_5227, wire_1550, wire_6889, wire_6841, wire_6840, wire_6833, wire_6832, wire_6825, wire_6824, wire_6782, wire_5225, wire_1522, wire_6891, wire_6869, wire_6868, wire_6861, wire_6860, wire_6853, wire_6852, wire_6780, wire_5223, wire_1522, wire_6893, wire_6845, wire_6844, wire_6837, wire_6836, wire_6829, wire_6828, wire_6778, wire_5221, wire_1522, wire_6895, wire_6821, wire_6820, wire_6813, wire_6812, wire_6805, wire_6804, wire_6776, wire_5219, wire_1522, wire_6873, wire_6817, wire_6816, wire_6809, wire_6808, wire_6801, wire_6800, wire_6798, wire_5217, wire_1522};
    // CHNAXY TOTAL: 472
    assign wire_5055 = lut_tile_7_4_chanxy_out[0];
    assign wire_5063 = lut_tile_7_4_chanxy_out[1];
    assign wire_5071 = lut_tile_7_4_chanxy_out[2];
    assign wire_5079 = lut_tile_7_4_chanxy_out[3];
    assign wire_5087 = lut_tile_7_4_chanxy_out[4];
    assign wire_5095 = lut_tile_7_4_chanxy_out[5];
    assign wire_5103 = lut_tile_7_4_chanxy_out[6];
    assign wire_5111 = lut_tile_7_4_chanxy_out[7];
    assign wire_5119 = lut_tile_7_4_chanxy_out[8];
    assign wire_5127 = lut_tile_7_4_chanxy_out[9];
    assign wire_5135 = lut_tile_7_4_chanxy_out[10];
    assign wire_5143 = lut_tile_7_4_chanxy_out[11];
    assign wire_5192 = lut_tile_7_4_chanxy_out[12];
    assign wire_5194 = lut_tile_7_4_chanxy_out[13];
    assign wire_5196 = lut_tile_7_4_chanxy_out[14];
    assign wire_5198 = lut_tile_7_4_chanxy_out[15];
    assign wire_5200 = lut_tile_7_4_chanxy_out[16];
    assign wire_5202 = lut_tile_7_4_chanxy_out[17];
    assign wire_5204 = lut_tile_7_4_chanxy_out[18];
    assign wire_5206 = lut_tile_7_4_chanxy_out[19];
    assign wire_5208 = lut_tile_7_4_chanxy_out[20];
    assign wire_5210 = lut_tile_7_4_chanxy_out[21];
    assign wire_5212 = lut_tile_7_4_chanxy_out[22];
    assign wire_5214 = lut_tile_7_4_chanxy_out[23];
    assign wire_6777 = lut_tile_7_4_chanxy_out[24];
    assign wire_6779 = lut_tile_7_4_chanxy_out[25];
    assign wire_6781 = lut_tile_7_4_chanxy_out[26];
    assign wire_6783 = lut_tile_7_4_chanxy_out[27];
    assign wire_6785 = lut_tile_7_4_chanxy_out[28];
    assign wire_6787 = lut_tile_7_4_chanxy_out[29];
    assign wire_6789 = lut_tile_7_4_chanxy_out[30];
    assign wire_6791 = lut_tile_7_4_chanxy_out[31];
    assign wire_6793 = lut_tile_7_4_chanxy_out[32];
    assign wire_6795 = lut_tile_7_4_chanxy_out[33];
    assign wire_6797 = lut_tile_7_4_chanxy_out[34];
    assign wire_6799 = lut_tile_7_4_chanxy_out[35];
    assign wire_6848 = lut_tile_7_4_chanxy_out[36];
    assign wire_6850 = lut_tile_7_4_chanxy_out[37];
    assign wire_6852 = lut_tile_7_4_chanxy_out[38];
    assign wire_6854 = lut_tile_7_4_chanxy_out[39];
    assign wire_6856 = lut_tile_7_4_chanxy_out[40];
    assign wire_6858 = lut_tile_7_4_chanxy_out[41];
    assign wire_6860 = lut_tile_7_4_chanxy_out[42];
    assign wire_6862 = lut_tile_7_4_chanxy_out[43];
    assign wire_6864 = lut_tile_7_4_chanxy_out[44];
    assign wire_6866 = lut_tile_7_4_chanxy_out[45];
    assign wire_6868 = lut_tile_7_4_chanxy_out[46];
    assign wire_6870 = lut_tile_7_4_chanxy_out[47];
   // CHANXY OUT
    assign lut_tile_7_5_chanxy_in = {wire_7038, wire_4977, wire_4975, wire_4974, wire_4967, wire_4966, wire_4959, wire_4958, wire_4882, wire_7036, wire_4999, wire_4971, wire_4970, wire_4963, wire_4962, wire_4955, wire_4954, wire_4884, wire_7034, wire_4997, wire_4947, wire_4946, wire_4939, wire_4938, wire_4931, wire_4930, wire_4886, wire_2129, wire_7032, wire_4995, wire_4923, wire_4922, wire_4915, wire_4914, wire_4907, wire_4906, wire_4888, wire_2129, wire_7030, wire_4993, wire_4951, wire_4950, wire_4943, wire_4942, wire_4935, wire_4934, wire_4890, wire_2129, wire_7028, wire_4991, wire_4927, wire_4926, wire_4919, wire_4918, wire_4911, wire_4910, wire_4892, wire_2129, wire_7026, wire_4989, wire_4973, wire_4972, wire_4965, wire_4964, wire_4957, wire_4956, wire_4894, wire_2129, wire_7024, wire_4987, wire_4969, wire_4968, wire_4961, wire_4960, wire_4953, wire_4952, wire_4896, wire_1827, wire_7022, wire_4985, wire_4945, wire_4944, wire_4937, wire_4936, wire_4929, wire_4928, wire_4898, wire_1827, wire_7020, wire_4983, wire_4921, wire_4920, wire_4913, wire_4912, wire_4905, wire_4904, wire_4900, wire_1827, wire_7018, wire_4981, wire_4949, wire_4948, wire_4941, wire_4940, wire_4933, wire_4932, wire_4902, wire_1827, wire_7016, wire_4979, wire_4925, wire_4924, wire_4917, wire_4916, wire_4909, wire_4908, wire_4880, wire_1827, wire_7159, wire_5263, wire_5235, wire_5234, wire_5227, wire_5226, wire_5219, wire_5218, wire_5144, wire_7157, wire_5241, wire_5211, wire_5210, wire_5203, wire_5202, wire_5195, wire_5194, wire_5166, wire_7155, wire_5243, wire_5239, wire_5238, wire_5231, wire_5230, wire_5223, wire_5222, wire_5164, wire_2129, wire_7153, wire_5245, wire_5215, wire_5214, wire_5207, wire_5206, wire_5199, wire_5198, wire_5162, wire_2129, wire_7151, wire_5247, wire_5191, wire_5190, wire_5183, wire_5182, wire_5175, wire_5174, wire_5160, wire_2129, wire_7149, wire_5249, wire_5187, wire_5186, wire_5179, wire_5178, wire_5171, wire_5170, wire_5158, wire_2129, wire_7147, wire_5251, wire_5233, wire_5232, wire_5225, wire_5224, wire_5217, wire_5216, wire_5156, wire_2129, wire_7145, wire_5253, wire_5209, wire_5208, wire_5201, wire_5200, wire_5193, wire_5192, wire_5154, wire_1827, wire_7143, wire_5255, wire_5237, wire_5236, wire_5229, wire_5228, wire_5221, wire_5220, wire_5152, wire_1827, wire_7141, wire_5257, wire_5213, wire_5212, wire_5205, wire_5204, wire_5197, wire_5196, wire_5150, wire_1827, wire_7139, wire_5259, wire_5189, wire_5188, wire_5181, wire_5180, wire_5173, wire_5172, wire_5148, wire_1827, wire_7137, wire_5261, wire_5185, wire_5184, wire_5177, wire_5176, wire_5169, wire_5168, wire_5146, wire_1827, wire_6893, wire_6871, wire_6870, wire_6863, wire_6862, wire_6855, wire_6854, wire_6798, wire_5142, wire_6891, wire_6867, wire_6866, wire_6859, wire_6858, wire_6851, wire_6850, wire_6776, wire_5134, wire_6889, wire_6843, wire_6842, wire_6835, wire_6834, wire_6827, wire_6826, wire_6778, wire_5126, wire_1854, wire_6887, wire_6819, wire_6818, wire_6811, wire_6810, wire_6803, wire_6802, wire_6780, wire_5118, wire_1854, wire_6885, wire_6847, wire_6846, wire_6839, wire_6838, wire_6831, wire_6830, wire_6782, wire_5110, wire_1854, wire_6883, wire_6823, wire_6822, wire_6815, wire_6814, wire_6807, wire_6806, wire_6784, wire_5102, wire_1854, wire_6881, wire_6869, wire_6868, wire_6861, wire_6860, wire_6853, wire_6852, wire_6786, wire_5094, wire_1854, wire_6879, wire_6865, wire_6864, wire_6857, wire_6856, wire_6849, wire_6848, wire_6788, wire_5086, wire_1826, wire_6877, wire_6841, wire_6840, wire_6833, wire_6832, wire_6825, wire_6824, wire_6790, wire_5078, wire_1826, wire_6875, wire_6817, wire_6816, wire_6809, wire_6808, wire_6801, wire_6800, wire_6792, wire_5070, wire_1826, wire_6873, wire_6845, wire_6844, wire_6837, wire_6836, wire_6829, wire_6828, wire_6794, wire_5062, wire_1826, wire_6895, wire_6821, wire_6820, wire_6813, wire_6812, wire_6805, wire_6804, wire_6796, wire_5054, wire_1826, wire_7139, wire_7131, wire_7130, wire_7123, wire_7122, wire_7115, wire_7114, wire_7060, wire_5263, wire_7141, wire_7107, wire_7106, wire_7099, wire_7098, wire_7091, wire_7090, wire_7058, wire_5261, wire_7143, wire_7135, wire_7134, wire_7127, wire_7126, wire_7119, wire_7118, wire_7056, wire_5259, wire_1854, wire_7145, wire_7111, wire_7110, wire_7103, wire_7102, wire_7095, wire_7094, wire_7054, wire_5257, wire_1854, wire_7147, wire_7087, wire_7086, wire_7079, wire_7078, wire_7071, wire_7070, wire_7052, wire_5255, wire_1854, wire_7149, wire_7083, wire_7082, wire_7075, wire_7074, wire_7067, wire_7066, wire_7050, wire_5253, wire_1854, wire_7151, wire_7129, wire_7128, wire_7121, wire_7120, wire_7113, wire_7112, wire_7048, wire_5251, wire_1854, wire_7153, wire_7105, wire_7104, wire_7097, wire_7096, wire_7089, wire_7088, wire_7046, wire_5249, wire_1826, wire_7155, wire_7133, wire_7132, wire_7125, wire_7124, wire_7117, wire_7116, wire_7044, wire_5247, wire_1826, wire_7157, wire_7109, wire_7108, wire_7101, wire_7100, wire_7093, wire_7092, wire_7042, wire_5245, wire_1826, wire_7159, wire_7085, wire_7084, wire_7077, wire_7076, wire_7069, wire_7068, wire_7040, wire_5243, wire_1826, wire_7137, wire_7081, wire_7080, wire_7073, wire_7072, wire_7065, wire_7064, wire_7062, wire_5241, wire_1826};
    // CHNAXY TOTAL: 472
    assign wire_5145 = lut_tile_7_5_chanxy_out[0];
    assign wire_5147 = lut_tile_7_5_chanxy_out[1];
    assign wire_5149 = lut_tile_7_5_chanxy_out[2];
    assign wire_5151 = lut_tile_7_5_chanxy_out[3];
    assign wire_5153 = lut_tile_7_5_chanxy_out[4];
    assign wire_5155 = lut_tile_7_5_chanxy_out[5];
    assign wire_5157 = lut_tile_7_5_chanxy_out[6];
    assign wire_5159 = lut_tile_7_5_chanxy_out[7];
    assign wire_5161 = lut_tile_7_5_chanxy_out[8];
    assign wire_5163 = lut_tile_7_5_chanxy_out[9];
    assign wire_5165 = lut_tile_7_5_chanxy_out[10];
    assign wire_5167 = lut_tile_7_5_chanxy_out[11];
    assign wire_5216 = lut_tile_7_5_chanxy_out[12];
    assign wire_5218 = lut_tile_7_5_chanxy_out[13];
    assign wire_5220 = lut_tile_7_5_chanxy_out[14];
    assign wire_5222 = lut_tile_7_5_chanxy_out[15];
    assign wire_5224 = lut_tile_7_5_chanxy_out[16];
    assign wire_5226 = lut_tile_7_5_chanxy_out[17];
    assign wire_5228 = lut_tile_7_5_chanxy_out[18];
    assign wire_5230 = lut_tile_7_5_chanxy_out[19];
    assign wire_5232 = lut_tile_7_5_chanxy_out[20];
    assign wire_5234 = lut_tile_7_5_chanxy_out[21];
    assign wire_5236 = lut_tile_7_5_chanxy_out[22];
    assign wire_5238 = lut_tile_7_5_chanxy_out[23];
    assign wire_7041 = lut_tile_7_5_chanxy_out[24];
    assign wire_7043 = lut_tile_7_5_chanxy_out[25];
    assign wire_7045 = lut_tile_7_5_chanxy_out[26];
    assign wire_7047 = lut_tile_7_5_chanxy_out[27];
    assign wire_7049 = lut_tile_7_5_chanxy_out[28];
    assign wire_7051 = lut_tile_7_5_chanxy_out[29];
    assign wire_7053 = lut_tile_7_5_chanxy_out[30];
    assign wire_7055 = lut_tile_7_5_chanxy_out[31];
    assign wire_7057 = lut_tile_7_5_chanxy_out[32];
    assign wire_7059 = lut_tile_7_5_chanxy_out[33];
    assign wire_7061 = lut_tile_7_5_chanxy_out[34];
    assign wire_7063 = lut_tile_7_5_chanxy_out[35];
    assign wire_7112 = lut_tile_7_5_chanxy_out[36];
    assign wire_7114 = lut_tile_7_5_chanxy_out[37];
    assign wire_7116 = lut_tile_7_5_chanxy_out[38];
    assign wire_7118 = lut_tile_7_5_chanxy_out[39];
    assign wire_7120 = lut_tile_7_5_chanxy_out[40];
    assign wire_7122 = lut_tile_7_5_chanxy_out[41];
    assign wire_7124 = lut_tile_7_5_chanxy_out[42];
    assign wire_7126 = lut_tile_7_5_chanxy_out[43];
    assign wire_7128 = lut_tile_7_5_chanxy_out[44];
    assign wire_7130 = lut_tile_7_5_chanxy_out[45];
    assign wire_7132 = lut_tile_7_5_chanxy_out[46];
    assign wire_7134 = lut_tile_7_5_chanxy_out[47];
   // CHANXY OUT
    assign lut_tile_7_6_chanxy_in = {wire_7302, wire_5001, wire_4999, wire_4998, wire_4991, wire_4990, wire_4983, wire_4982, wire_4906, wire_7300, wire_5023, wire_4995, wire_4994, wire_4987, wire_4986, wire_4979, wire_4978, wire_4908, wire_7298, wire_5021, wire_4971, wire_4970, wire_4963, wire_4962, wire_4955, wire_4954, wire_4910, wire_2433, wire_7296, wire_5019, wire_4947, wire_4946, wire_4939, wire_4938, wire_4931, wire_4930, wire_4912, wire_2433, wire_7294, wire_5017, wire_4975, wire_4974, wire_4967, wire_4966, wire_4959, wire_4958, wire_4914, wire_2433, wire_7292, wire_5015, wire_4951, wire_4950, wire_4943, wire_4942, wire_4935, wire_4934, wire_4916, wire_2433, wire_7290, wire_5013, wire_4997, wire_4996, wire_4989, wire_4988, wire_4981, wire_4980, wire_4918, wire_2433, wire_7288, wire_5011, wire_4993, wire_4992, wire_4985, wire_4984, wire_4977, wire_4976, wire_4920, wire_2131, wire_7286, wire_5009, wire_4969, wire_4968, wire_4961, wire_4960, wire_4953, wire_4952, wire_4922, wire_2131, wire_7284, wire_5007, wire_4945, wire_4944, wire_4937, wire_4936, wire_4929, wire_4928, wire_4924, wire_2131, wire_7282, wire_5005, wire_4973, wire_4972, wire_4965, wire_4964, wire_4957, wire_4956, wire_4926, wire_2131, wire_7280, wire_5003, wire_4949, wire_4948, wire_4941, wire_4940, wire_4933, wire_4932, wire_4904, wire_2131, wire_7423, wire_5287, wire_5239, wire_5238, wire_5231, wire_5230, wire_5223, wire_5222, wire_5168, wire_7421, wire_5265, wire_5235, wire_5234, wire_5227, wire_5226, wire_5219, wire_5218, wire_5190, wire_7419, wire_5267, wire_5211, wire_5210, wire_5203, wire_5202, wire_5195, wire_5194, wire_5188, wire_2433, wire_7417, wire_5269, wire_5259, wire_5258, wire_5251, wire_5250, wire_5243, wire_5242, wire_5186, wire_2433, wire_7415, wire_5271, wire_5215, wire_5214, wire_5207, wire_5206, wire_5199, wire_5198, wire_5184, wire_2433, wire_7413, wire_5273, wire_5263, wire_5262, wire_5255, wire_5254, wire_5247, wire_5246, wire_5182, wire_2433, wire_7411, wire_5275, wire_5237, wire_5236, wire_5229, wire_5228, wire_5221, wire_5220, wire_5180, wire_2433, wire_7409, wire_5277, wire_5233, wire_5232, wire_5225, wire_5224, wire_5217, wire_5216, wire_5178, wire_2131, wire_7407, wire_5279, wire_5209, wire_5208, wire_5201, wire_5200, wire_5193, wire_5192, wire_5176, wire_2131, wire_7405, wire_5281, wire_5257, wire_5256, wire_5249, wire_5248, wire_5241, wire_5240, wire_5174, wire_2131, wire_7403, wire_5283, wire_5213, wire_5212, wire_5205, wire_5204, wire_5197, wire_5196, wire_5172, wire_2131, wire_7401, wire_5285, wire_5261, wire_5260, wire_5253, wire_5252, wire_5245, wire_5244, wire_5170, wire_2131, wire_7157, wire_7135, wire_7134, wire_7127, wire_7126, wire_7119, wire_7118, wire_7062, wire_5166, wire_7155, wire_7131, wire_7130, wire_7123, wire_7122, wire_7115, wire_7114, wire_7040, wire_5164, wire_7153, wire_7107, wire_7106, wire_7099, wire_7098, wire_7091, wire_7090, wire_7042, wire_5162, wire_2158, wire_7151, wire_7083, wire_7082, wire_7075, wire_7074, wire_7067, wire_7066, wire_7044, wire_5160, wire_2158, wire_7149, wire_7111, wire_7110, wire_7103, wire_7102, wire_7095, wire_7094, wire_7046, wire_5158, wire_2158, wire_7147, wire_7087, wire_7086, wire_7079, wire_7078, wire_7071, wire_7070, wire_7048, wire_5156, wire_2158, wire_7145, wire_7133, wire_7132, wire_7125, wire_7124, wire_7117, wire_7116, wire_7050, wire_5154, wire_2158, wire_7143, wire_7129, wire_7128, wire_7121, wire_7120, wire_7113, wire_7112, wire_7052, wire_5152, wire_2130, wire_7141, wire_7105, wire_7104, wire_7097, wire_7096, wire_7089, wire_7088, wire_7054, wire_5150, wire_2130, wire_7139, wire_7081, wire_7080, wire_7073, wire_7072, wire_7065, wire_7064, wire_7056, wire_5148, wire_2130, wire_7137, wire_7109, wire_7108, wire_7101, wire_7100, wire_7093, wire_7092, wire_7058, wire_5146, wire_2130, wire_7159, wire_7085, wire_7084, wire_7077, wire_7076, wire_7069, wire_7068, wire_7060, wire_5144, wire_2130, wire_7403, wire_7375, wire_7374, wire_7367, wire_7366, wire_7359, wire_7358, wire_7324, wire_5287, wire_7405, wire_7371, wire_7370, wire_7363, wire_7362, wire_7355, wire_7354, wire_7322, wire_5285, wire_7407, wire_7347, wire_7346, wire_7339, wire_7338, wire_7331, wire_7330, wire_7320, wire_5283, wire_2158, wire_7409, wire_7395, wire_7394, wire_7387, wire_7386, wire_7379, wire_7378, wire_7318, wire_5281, wire_2158, wire_7411, wire_7351, wire_7350, wire_7343, wire_7342, wire_7335, wire_7334, wire_7316, wire_5279, wire_2158, wire_7413, wire_7399, wire_7398, wire_7391, wire_7390, wire_7383, wire_7382, wire_7314, wire_5277, wire_2158, wire_7415, wire_7373, wire_7372, wire_7365, wire_7364, wire_7357, wire_7356, wire_7312, wire_5275, wire_2158, wire_7417, wire_7369, wire_7368, wire_7361, wire_7360, wire_7353, wire_7352, wire_7310, wire_5273, wire_2130, wire_7419, wire_7345, wire_7344, wire_7337, wire_7336, wire_7329, wire_7328, wire_7308, wire_5271, wire_2130, wire_7421, wire_7393, wire_7392, wire_7385, wire_7384, wire_7377, wire_7376, wire_7306, wire_5269, wire_2130, wire_7423, wire_7349, wire_7348, wire_7341, wire_7340, wire_7333, wire_7332, wire_7304, wire_5267, wire_2130, wire_7401, wire_7397, wire_7396, wire_7389, wire_7388, wire_7381, wire_7380, wire_7326, wire_5265, wire_2130};
    // CHNAXY TOTAL: 472
    assign wire_5169 = lut_tile_7_6_chanxy_out[0];
    assign wire_5171 = lut_tile_7_6_chanxy_out[1];
    assign wire_5173 = lut_tile_7_6_chanxy_out[2];
    assign wire_5175 = lut_tile_7_6_chanxy_out[3];
    assign wire_5177 = lut_tile_7_6_chanxy_out[4];
    assign wire_5179 = lut_tile_7_6_chanxy_out[5];
    assign wire_5181 = lut_tile_7_6_chanxy_out[6];
    assign wire_5183 = lut_tile_7_6_chanxy_out[7];
    assign wire_5185 = lut_tile_7_6_chanxy_out[8];
    assign wire_5187 = lut_tile_7_6_chanxy_out[9];
    assign wire_5189 = lut_tile_7_6_chanxy_out[10];
    assign wire_5191 = lut_tile_7_6_chanxy_out[11];
    assign wire_5240 = lut_tile_7_6_chanxy_out[12];
    assign wire_5242 = lut_tile_7_6_chanxy_out[13];
    assign wire_5244 = lut_tile_7_6_chanxy_out[14];
    assign wire_5246 = lut_tile_7_6_chanxy_out[15];
    assign wire_5248 = lut_tile_7_6_chanxy_out[16];
    assign wire_5250 = lut_tile_7_6_chanxy_out[17];
    assign wire_5252 = lut_tile_7_6_chanxy_out[18];
    assign wire_5254 = lut_tile_7_6_chanxy_out[19];
    assign wire_5256 = lut_tile_7_6_chanxy_out[20];
    assign wire_5258 = lut_tile_7_6_chanxy_out[21];
    assign wire_5260 = lut_tile_7_6_chanxy_out[22];
    assign wire_5262 = lut_tile_7_6_chanxy_out[23];
    assign wire_7305 = lut_tile_7_6_chanxy_out[24];
    assign wire_7307 = lut_tile_7_6_chanxy_out[25];
    assign wire_7309 = lut_tile_7_6_chanxy_out[26];
    assign wire_7311 = lut_tile_7_6_chanxy_out[27];
    assign wire_7313 = lut_tile_7_6_chanxy_out[28];
    assign wire_7315 = lut_tile_7_6_chanxy_out[29];
    assign wire_7317 = lut_tile_7_6_chanxy_out[30];
    assign wire_7319 = lut_tile_7_6_chanxy_out[31];
    assign wire_7321 = lut_tile_7_6_chanxy_out[32];
    assign wire_7323 = lut_tile_7_6_chanxy_out[33];
    assign wire_7325 = lut_tile_7_6_chanxy_out[34];
    assign wire_7327 = lut_tile_7_6_chanxy_out[35];
    assign wire_7376 = lut_tile_7_6_chanxy_out[36];
    assign wire_7378 = lut_tile_7_6_chanxy_out[37];
    assign wire_7380 = lut_tile_7_6_chanxy_out[38];
    assign wire_7382 = lut_tile_7_6_chanxy_out[39];
    assign wire_7384 = lut_tile_7_6_chanxy_out[40];
    assign wire_7386 = lut_tile_7_6_chanxy_out[41];
    assign wire_7388 = lut_tile_7_6_chanxy_out[42];
    assign wire_7390 = lut_tile_7_6_chanxy_out[43];
    assign wire_7392 = lut_tile_7_6_chanxy_out[44];
    assign wire_7394 = lut_tile_7_6_chanxy_out[45];
    assign wire_7396 = lut_tile_7_6_chanxy_out[46];
    assign wire_7398 = lut_tile_7_6_chanxy_out[47];
   // CHANXY OUT
    assign lut_tile_7_7_chanxy_in = {wire_7566, wire_5025, wire_4995, wire_4994, wire_4987, wire_4986, wire_4979, wire_4978, wire_4930, wire_7564, wire_5047, wire_4999, wire_4998, wire_4991, wire_4990, wire_4983, wire_4982, wire_4932, wire_7562, wire_5045, wire_4971, wire_4970, wire_4963, wire_4962, wire_4955, wire_4954, wire_4934, wire_2737, wire_7560, wire_5043, wire_4975, wire_4974, wire_4967, wire_4966, wire_4959, wire_4958, wire_4936, wire_2737, wire_7558, wire_5041, wire_5019, wire_5018, wire_5011, wire_5010, wire_5003, wire_5002, wire_4938, wire_2737, wire_7556, wire_5039, wire_5023, wire_5022, wire_5015, wire_5014, wire_5007, wire_5006, wire_4940, wire_2737, wire_7554, wire_5037, wire_4993, wire_4992, wire_4985, wire_4984, wire_4977, wire_4976, wire_4942, wire_2737, wire_7552, wire_5035, wire_4997, wire_4996, wire_4989, wire_4988, wire_4981, wire_4980, wire_4944, wire_2435, wire_7550, wire_5033, wire_4969, wire_4968, wire_4961, wire_4960, wire_4953, wire_4952, wire_4946, wire_2435, wire_7548, wire_5031, wire_4973, wire_4972, wire_4965, wire_4964, wire_4957, wire_4956, wire_4948, wire_2435, wire_7546, wire_5029, wire_5017, wire_5016, wire_5009, wire_5008, wire_5001, wire_5000, wire_4950, wire_2435, wire_7544, wire_5027, wire_5021, wire_5020, wire_5013, wire_5012, wire_5005, wire_5004, wire_4928, wire_2435, wire_7687, wire_5311, wire_5235, wire_5234, wire_5227, wire_5226, wire_5219, wire_5218, wire_5192, wire_7685, wire_5289, wire_5239, wire_5238, wire_5231, wire_5230, wire_5223, wire_5222, wire_5214, wire_7683, wire_5291, wire_5283, wire_5282, wire_5275, wire_5274, wire_5267, wire_5266, wire_5212, wire_2737, wire_7681, wire_5293, wire_5287, wire_5286, wire_5279, wire_5278, wire_5271, wire_5270, wire_5210, wire_2737, wire_7679, wire_5295, wire_5259, wire_5258, wire_5251, wire_5250, wire_5243, wire_5242, wire_5208, wire_2737, wire_7677, wire_5297, wire_5263, wire_5262, wire_5255, wire_5254, wire_5247, wire_5246, wire_5206, wire_2737, wire_7675, wire_5299, wire_5233, wire_5232, wire_5225, wire_5224, wire_5217, wire_5216, wire_5204, wire_2737, wire_7673, wire_5301, wire_5237, wire_5236, wire_5229, wire_5228, wire_5221, wire_5220, wire_5202, wire_2435, wire_7671, wire_5303, wire_5281, wire_5280, wire_5273, wire_5272, wire_5265, wire_5264, wire_5200, wire_2435, wire_7669, wire_5305, wire_5285, wire_5284, wire_5277, wire_5276, wire_5269, wire_5268, wire_5198, wire_2435, wire_7667, wire_5307, wire_5257, wire_5256, wire_5249, wire_5248, wire_5241, wire_5240, wire_5196, wire_2435, wire_7665, wire_5309, wire_5261, wire_5260, wire_5253, wire_5252, wire_5245, wire_5244, wire_5194, wire_2435, wire_7421, wire_7371, wire_7370, wire_7363, wire_7362, wire_7355, wire_7354, wire_7326, wire_5190, wire_7419, wire_7375, wire_7374, wire_7367, wire_7366, wire_7359, wire_7358, wire_7304, wire_5188, wire_7417, wire_7347, wire_7346, wire_7339, wire_7338, wire_7331, wire_7330, wire_7306, wire_5186, wire_2462, wire_7415, wire_7351, wire_7350, wire_7343, wire_7342, wire_7335, wire_7334, wire_7308, wire_5184, wire_2462, wire_7413, wire_7395, wire_7394, wire_7387, wire_7386, wire_7379, wire_7378, wire_7310, wire_5182, wire_2462, wire_7411, wire_7399, wire_7398, wire_7391, wire_7390, wire_7383, wire_7382, wire_7312, wire_5180, wire_2462, wire_7409, wire_7369, wire_7368, wire_7361, wire_7360, wire_7353, wire_7352, wire_7314, wire_5178, wire_2462, wire_7407, wire_7373, wire_7372, wire_7365, wire_7364, wire_7357, wire_7356, wire_7316, wire_5176, wire_2434, wire_7405, wire_7345, wire_7344, wire_7337, wire_7336, wire_7329, wire_7328, wire_7318, wire_5174, wire_2434, wire_7403, wire_7349, wire_7348, wire_7341, wire_7340, wire_7333, wire_7332, wire_7320, wire_5172, wire_2434, wire_7401, wire_7393, wire_7392, wire_7385, wire_7384, wire_7377, wire_7376, wire_7322, wire_5170, wire_2434, wire_7423, wire_7397, wire_7396, wire_7389, wire_7388, wire_7381, wire_7380, wire_7324, wire_5168, wire_2434, wire_7667, wire_7611, wire_7610, wire_7603, wire_7602, wire_7595, wire_7594, wire_7588, wire_5311, wire_7669, wire_7615, wire_7614, wire_7607, wire_7606, wire_7599, wire_7598, wire_7586, wire_5309, wire_7671, wire_7659, wire_7658, wire_7651, wire_7650, wire_7643, wire_7642, wire_7584, wire_5307, wire_2462, wire_7673, wire_7663, wire_7662, wire_7655, wire_7654, wire_7647, wire_7646, wire_7582, wire_5305, wire_2462, wire_7675, wire_7635, wire_7634, wire_7627, wire_7626, wire_7619, wire_7618, wire_7580, wire_5303, wire_2462, wire_7677, wire_7639, wire_7638, wire_7631, wire_7630, wire_7623, wire_7622, wire_7578, wire_5301, wire_2462, wire_7679, wire_7609, wire_7608, wire_7601, wire_7600, wire_7593, wire_7592, wire_7576, wire_5299, wire_2462, wire_7681, wire_7613, wire_7612, wire_7605, wire_7604, wire_7597, wire_7596, wire_7574, wire_5297, wire_2434, wire_7683, wire_7657, wire_7656, wire_7649, wire_7648, wire_7641, wire_7640, wire_7572, wire_5295, wire_2434, wire_7685, wire_7661, wire_7660, wire_7653, wire_7652, wire_7645, wire_7644, wire_7570, wire_5293, wire_2434, wire_7687, wire_7633, wire_7632, wire_7625, wire_7624, wire_7617, wire_7616, wire_7568, wire_5291, wire_2434, wire_7665, wire_7637, wire_7636, wire_7629, wire_7628, wire_7621, wire_7620, wire_7590, wire_5289, wire_2434};
    // CHNAXY TOTAL: 472
    assign wire_5193 = lut_tile_7_7_chanxy_out[0];
    assign wire_5195 = lut_tile_7_7_chanxy_out[1];
    assign wire_5197 = lut_tile_7_7_chanxy_out[2];
    assign wire_5199 = lut_tile_7_7_chanxy_out[3];
    assign wire_5201 = lut_tile_7_7_chanxy_out[4];
    assign wire_5203 = lut_tile_7_7_chanxy_out[5];
    assign wire_5205 = lut_tile_7_7_chanxy_out[6];
    assign wire_5207 = lut_tile_7_7_chanxy_out[7];
    assign wire_5209 = lut_tile_7_7_chanxy_out[8];
    assign wire_5211 = lut_tile_7_7_chanxy_out[9];
    assign wire_5213 = lut_tile_7_7_chanxy_out[10];
    assign wire_5215 = lut_tile_7_7_chanxy_out[11];
    assign wire_5264 = lut_tile_7_7_chanxy_out[12];
    assign wire_5266 = lut_tile_7_7_chanxy_out[13];
    assign wire_5268 = lut_tile_7_7_chanxy_out[14];
    assign wire_5270 = lut_tile_7_7_chanxy_out[15];
    assign wire_5272 = lut_tile_7_7_chanxy_out[16];
    assign wire_5274 = lut_tile_7_7_chanxy_out[17];
    assign wire_5276 = lut_tile_7_7_chanxy_out[18];
    assign wire_5278 = lut_tile_7_7_chanxy_out[19];
    assign wire_5280 = lut_tile_7_7_chanxy_out[20];
    assign wire_5282 = lut_tile_7_7_chanxy_out[21];
    assign wire_5284 = lut_tile_7_7_chanxy_out[22];
    assign wire_5286 = lut_tile_7_7_chanxy_out[23];
    assign wire_7569 = lut_tile_7_7_chanxy_out[24];
    assign wire_7571 = lut_tile_7_7_chanxy_out[25];
    assign wire_7573 = lut_tile_7_7_chanxy_out[26];
    assign wire_7575 = lut_tile_7_7_chanxy_out[27];
    assign wire_7577 = lut_tile_7_7_chanxy_out[28];
    assign wire_7579 = lut_tile_7_7_chanxy_out[29];
    assign wire_7581 = lut_tile_7_7_chanxy_out[30];
    assign wire_7583 = lut_tile_7_7_chanxy_out[31];
    assign wire_7585 = lut_tile_7_7_chanxy_out[32];
    assign wire_7587 = lut_tile_7_7_chanxy_out[33];
    assign wire_7589 = lut_tile_7_7_chanxy_out[34];
    assign wire_7591 = lut_tile_7_7_chanxy_out[35];
    assign wire_7640 = lut_tile_7_7_chanxy_out[36];
    assign wire_7642 = lut_tile_7_7_chanxy_out[37];
    assign wire_7644 = lut_tile_7_7_chanxy_out[38];
    assign wire_7646 = lut_tile_7_7_chanxy_out[39];
    assign wire_7648 = lut_tile_7_7_chanxy_out[40];
    assign wire_7650 = lut_tile_7_7_chanxy_out[41];
    assign wire_7652 = lut_tile_7_7_chanxy_out[42];
    assign wire_7654 = lut_tile_7_7_chanxy_out[43];
    assign wire_7656 = lut_tile_7_7_chanxy_out[44];
    assign wire_7658 = lut_tile_7_7_chanxy_out[45];
    assign wire_7660 = lut_tile_7_7_chanxy_out[46];
    assign wire_7662 = lut_tile_7_7_chanxy_out[47];
   // CHANXY OUT
    assign lut_tile_7_8_chanxy_in = {wire_7830, wire_4998, wire_4992, wire_4986, wire_4980, wire_3147, wire_3138, wire_3132, wire_7828, wire_4974, wire_4968, wire_4962, wire_4956, wire_3144, wire_3138, wire_3132, wire_7826, wire_5046, wire_5040, wire_5034, wire_5028, wire_3144, wire_3138, wire_3129, wire_7824, wire_5022, wire_5016, wire_5010, wire_5004, wire_3150, wire_3144, wire_3138, wire_3129, wire_7822, wire_4996, wire_4990, wire_4984, wire_4978, wire_3150, wire_3144, wire_3135, wire_3129, wire_7820, wire_4972, wire_4966, wire_4960, wire_4954, wire_3150, wire_3144, wire_3135, wire_3129, wire_7818, wire_5044, wire_5038, wire_5032, wire_5026, wire_3150, wire_3141, wire_3135, wire_3129, wire_7816, wire_5020, wire_5014, wire_5008, wire_5002, wire_3150, wire_3141, wire_3135, wire_2739, wire_7814, wire_4994, wire_4988, wire_4982, wire_4976, wire_3147, wire_3141, wire_3135, wire_2739, wire_7812, wire_4970, wire_4964, wire_4958, wire_4952, wire_3147, wire_3141, wire_3132, wire_2739, wire_7810, wire_5042, wire_5036, wire_5030, wire_5024, wire_3147, wire_3141, wire_3132, wire_2739, wire_7808, wire_5018, wire_5012, wire_5006, wire_5000, wire_3147, wire_3138, wire_3132, wire_2739, wire_7951, wire_5238, wire_5232, wire_5226, wire_5220, wire_3147, wire_3138, wire_3132, wire_7949, wire_5310, wire_5304, wire_5298, wire_5292, wire_3144, wire_3138, wire_3132, wire_7947, wire_5286, wire_5280, wire_5274, wire_5268, wire_3144, wire_3138, wire_3129, wire_7945, wire_5262, wire_5256, wire_5250, wire_5244, wire_3150, wire_3144, wire_3138, wire_3129, wire_7943, wire_5236, wire_5230, wire_5224, wire_5218, wire_3150, wire_3144, wire_3135, wire_3129, wire_7941, wire_5308, wire_5302, wire_5296, wire_5290, wire_3150, wire_3144, wire_3135, wire_3129, wire_7939, wire_5284, wire_5278, wire_5272, wire_5266, wire_3150, wire_3141, wire_3135, wire_3129, wire_7937, wire_5260, wire_5254, wire_5248, wire_5242, wire_3150, wire_3141, wire_3135, wire_2739, wire_7935, wire_5234, wire_5228, wire_5222, wire_5216, wire_3147, wire_3141, wire_3135, wire_2739, wire_7933, wire_5306, wire_5300, wire_5294, wire_5288, wire_3147, wire_3141, wire_3132, wire_2739, wire_7931, wire_5282, wire_5276, wire_5270, wire_5264, wire_3147, wire_3141, wire_3132, wire_2739, wire_7929, wire_5258, wire_5252, wire_5246, wire_5240, wire_3147, wire_3138, wire_3132, wire_2739, wire_7915, wire_7914, wire_7685, wire_7611, wire_7610, wire_7603, wire_7602, wire_7595, wire_7594, wire_7590, wire_5214, wire_7927, wire_7926, wire_7683, wire_7659, wire_7658, wire_7651, wire_7650, wire_7643, wire_7642, wire_7568, wire_5212, wire_7889, wire_7888, wire_7681, wire_7615, wire_7614, wire_7607, wire_7606, wire_7599, wire_7598, wire_7570, wire_5210, wire_2766, wire_7925, wire_7924, wire_7679, wire_7663, wire_7662, wire_7655, wire_7654, wire_7647, wire_7646, wire_7572, wire_5208, wire_2766, wire_7911, wire_7910, wire_7677, wire_7639, wire_7638, wire_7631, wire_7630, wire_7623, wire_7622, wire_7574, wire_5206, wire_2766, wire_7899, wire_7898, wire_7675, wire_7635, wire_7634, wire_7627, wire_7626, wire_7619, wire_7618, wire_7576, wire_5204, wire_2766, wire_7909, wire_7908, wire_7673, wire_7609, wire_7608, wire_7601, wire_7600, wire_7593, wire_7592, wire_7578, wire_5202, wire_2766, wire_7921, wire_7920, wire_7671, wire_7657, wire_7656, wire_7649, wire_7648, wire_7641, wire_7640, wire_7580, wire_5200, wire_2738, wire_7883, wire_7882, wire_7669, wire_7613, wire_7612, wire_7605, wire_7604, wire_7597, wire_7596, wire_7582, wire_5198, wire_2738, wire_7919, wire_7918, wire_7667, wire_7661, wire_7660, wire_7653, wire_7652, wire_7645, wire_7644, wire_7584, wire_5196, wire_2738, wire_7905, wire_7904, wire_2766, wire_7665, wire_7637, wire_7636, wire_7629, wire_7628, wire_7621, wire_7620, wire_7586, wire_5194, wire_2738, wire_7893, wire_7892, wire_2738, wire_7687, wire_7633, wire_7632, wire_7625, wire_7624, wire_7617, wire_7616, wire_7588, wire_5192, wire_2738, wire_7951, wire_7854, wire_7937, wire_7840, wire_7865, wire_7864, wire_7935, wire_7838, wire_7947, wire_7850, wire_7875, wire_7874, wire_7945, wire_7848, wire_7931, wire_7834, wire_7859, wire_7858, wire_7929, wire_7832, wire_2766, wire_7941, wire_7844, wire_2766, wire_7869, wire_7868, wire_2738, wire_7891, wire_7890, wire_7913, wire_7912, wire_7879, wire_7878, wire_7901, wire_7900, wire_7923, wire_7922, wire_7863, wire_7862, wire_7885, wire_7884, wire_7907, wire_7906, wire_7873, wire_7872, wire_7895, wire_7894, wire_2766, wire_7917, wire_7916, wire_2738, wire_7857, wire_7856, wire_2738, wire_7939, wire_7842, wire_7867, wire_7866, wire_7903, wire_7902, wire_7949, wire_7852, wire_7877, wire_7876, wire_7887, wire_7886, wire_7933, wire_7836, wire_7861, wire_7860, wire_7897, wire_7896, wire_7943, wire_7846, wire_7871, wire_7870, wire_2766, wire_7881, wire_7880, wire_2738};
    // CHNAXY TOTAL: 434
    assign wire_5217 = lut_tile_7_8_chanxy_out[0];
    assign wire_5219 = lut_tile_7_8_chanxy_out[1];
    assign wire_5221 = lut_tile_7_8_chanxy_out[2];
    assign wire_5223 = lut_tile_7_8_chanxy_out[3];
    assign wire_5225 = lut_tile_7_8_chanxy_out[4];
    assign wire_5227 = lut_tile_7_8_chanxy_out[5];
    assign wire_5229 = lut_tile_7_8_chanxy_out[6];
    assign wire_5231 = lut_tile_7_8_chanxy_out[7];
    assign wire_5233 = lut_tile_7_8_chanxy_out[8];
    assign wire_5235 = lut_tile_7_8_chanxy_out[9];
    assign wire_5237 = lut_tile_7_8_chanxy_out[10];
    assign wire_5239 = lut_tile_7_8_chanxy_out[11];
    assign wire_5241 = lut_tile_7_8_chanxy_out[12];
    assign wire_5243 = lut_tile_7_8_chanxy_out[13];
    assign wire_5245 = lut_tile_7_8_chanxy_out[14];
    assign wire_5247 = lut_tile_7_8_chanxy_out[15];
    assign wire_5249 = lut_tile_7_8_chanxy_out[16];
    assign wire_5251 = lut_tile_7_8_chanxy_out[17];
    assign wire_5253 = lut_tile_7_8_chanxy_out[18];
    assign wire_5255 = lut_tile_7_8_chanxy_out[19];
    assign wire_5257 = lut_tile_7_8_chanxy_out[20];
    assign wire_5259 = lut_tile_7_8_chanxy_out[21];
    assign wire_5261 = lut_tile_7_8_chanxy_out[22];
    assign wire_5263 = lut_tile_7_8_chanxy_out[23];
    assign wire_5265 = lut_tile_7_8_chanxy_out[24];
    assign wire_5267 = lut_tile_7_8_chanxy_out[25];
    assign wire_5269 = lut_tile_7_8_chanxy_out[26];
    assign wire_5271 = lut_tile_7_8_chanxy_out[27];
    assign wire_5273 = lut_tile_7_8_chanxy_out[28];
    assign wire_5275 = lut_tile_7_8_chanxy_out[29];
    assign wire_5277 = lut_tile_7_8_chanxy_out[30];
    assign wire_5279 = lut_tile_7_8_chanxy_out[31];
    assign wire_5281 = lut_tile_7_8_chanxy_out[32];
    assign wire_5283 = lut_tile_7_8_chanxy_out[33];
    assign wire_5285 = lut_tile_7_8_chanxy_out[34];
    assign wire_5287 = lut_tile_7_8_chanxy_out[35];
    assign wire_5288 = lut_tile_7_8_chanxy_out[36];
    assign wire_5289 = lut_tile_7_8_chanxy_out[37];
    assign wire_5290 = lut_tile_7_8_chanxy_out[38];
    assign wire_5291 = lut_tile_7_8_chanxy_out[39];
    assign wire_5292 = lut_tile_7_8_chanxy_out[40];
    assign wire_5293 = lut_tile_7_8_chanxy_out[41];
    assign wire_5294 = lut_tile_7_8_chanxy_out[42];
    assign wire_5295 = lut_tile_7_8_chanxy_out[43];
    assign wire_5296 = lut_tile_7_8_chanxy_out[44];
    assign wire_5297 = lut_tile_7_8_chanxy_out[45];
    assign wire_5298 = lut_tile_7_8_chanxy_out[46];
    assign wire_5299 = lut_tile_7_8_chanxy_out[47];
    assign wire_5300 = lut_tile_7_8_chanxy_out[48];
    assign wire_5301 = lut_tile_7_8_chanxy_out[49];
    assign wire_5302 = lut_tile_7_8_chanxy_out[50];
    assign wire_5303 = lut_tile_7_8_chanxy_out[51];
    assign wire_5304 = lut_tile_7_8_chanxy_out[52];
    assign wire_5305 = lut_tile_7_8_chanxy_out[53];
    assign wire_5306 = lut_tile_7_8_chanxy_out[54];
    assign wire_5307 = lut_tile_7_8_chanxy_out[55];
    assign wire_5308 = lut_tile_7_8_chanxy_out[56];
    assign wire_5309 = lut_tile_7_8_chanxy_out[57];
    assign wire_5310 = lut_tile_7_8_chanxy_out[58];
    assign wire_5311 = lut_tile_7_8_chanxy_out[59];
    assign wire_7833 = lut_tile_7_8_chanxy_out[60];
    assign wire_7835 = lut_tile_7_8_chanxy_out[61];
    assign wire_7837 = lut_tile_7_8_chanxy_out[62];
    assign wire_7839 = lut_tile_7_8_chanxy_out[63];
    assign wire_7841 = lut_tile_7_8_chanxy_out[64];
    assign wire_7843 = lut_tile_7_8_chanxy_out[65];
    assign wire_7845 = lut_tile_7_8_chanxy_out[66];
    assign wire_7847 = lut_tile_7_8_chanxy_out[67];
    assign wire_7849 = lut_tile_7_8_chanxy_out[68];
    assign wire_7851 = lut_tile_7_8_chanxy_out[69];
    assign wire_7853 = lut_tile_7_8_chanxy_out[70];
    assign wire_7855 = lut_tile_7_8_chanxy_out[71];
    assign wire_7904 = lut_tile_7_8_chanxy_out[72];
    assign wire_7906 = lut_tile_7_8_chanxy_out[73];
    assign wire_7908 = lut_tile_7_8_chanxy_out[74];
    assign wire_7910 = lut_tile_7_8_chanxy_out[75];
    assign wire_7912 = lut_tile_7_8_chanxy_out[76];
    assign wire_7914 = lut_tile_7_8_chanxy_out[77];
    assign wire_7916 = lut_tile_7_8_chanxy_out[78];
    assign wire_7918 = lut_tile_7_8_chanxy_out[79];
    assign wire_7920 = lut_tile_7_8_chanxy_out[80];
    assign wire_7922 = lut_tile_7_8_chanxy_out[81];
    assign wire_7924 = lut_tile_7_8_chanxy_out[82];
    assign wire_7926 = lut_tile_7_8_chanxy_out[83];
   // CHANXY OUT
    assign lut_tile_8_1_chanxy_in = {wire_5419, wire_5354, wire_6006, wire_5145, wire_5143, wire_5142, wire_5111, wire_5110, wire_5079, wire_5078, wire_5056, wire_5349, wire_5348, wire_6004, wire_5167, wire_5127, wire_5126, wire_5095, wire_5094, wire_5064, wire_5063, wire_5062, wire_5401, wire_5400, wire_6002, wire_5165, wire_5125, wire_5124, wire_5093, wire_5092, wire_5072, wire_5061, wire_5060, wire_939, wire_5429, wire_5394, wire_6000, wire_5163, wire_5123, wire_5122, wire_5091, wire_5090, wire_5080, wire_5059, wire_5058, wire_939, wire_5389, wire_5388, wire_5998, wire_5161, wire_5141, wire_5140, wire_5109, wire_5108, wire_5088, wire_5077, wire_5076, wire_939, wire_5337, wire_5336, wire_5996, wire_5159, wire_5139, wire_5138, wire_5107, wire_5106, wire_5096, wire_5075, wire_5074, wire_939, wire_5413, wire_5330, wire_5994, wire_5157, wire_5135, wire_5134, wire_5104, wire_5103, wire_5102, wire_5071, wire_5070, wire_939, wire_5325, wire_5324, wire_5992, wire_5155, wire_5119, wire_5118, wire_5112, wire_5087, wire_5086, wire_5055, wire_5054, wire_637, wire_5377, wire_5376, wire_5990, wire_5153, wire_5120, wire_5117, wire_5116, wire_5085, wire_5084, wire_5053, wire_5052, wire_637, wire_5423, wire_5370, wire_939, wire_5988, wire_5151, wire_5128, wire_5115, wire_5114, wire_5083, wire_5082, wire_5051, wire_5050, wire_637, wire_5365, wire_5364, wire_637, wire_5986, wire_5149, wire_5136, wire_5133, wire_5132, wire_5101, wire_5100, wire_5069, wire_5068, wire_637, wire_5313, wire_5312, wire_637, wire_5984, wire_5147, wire_5131, wire_5130, wire_5099, wire_5098, wire_5067, wire_5066, wire_5048, wire_637, wire_5359, wire_5358, wire_5353, wire_5352, wire_5431, wire_5402, wire_5399, wire_5398, wire_5393, wire_5392, wire_5415, wire_5338, wire_5335, wire_5334, wire_5329, wire_5328, wire_5425, wire_5378, wire_5375, wire_5374, wire_5369, wire_5368, wire_939, wire_5409, wire_5314, wire_637, wire_5357, wire_5356, wire_5405, wire_5404, wire_5417, wire_5346, wire_5397, wire_5396, wire_5341, wire_5340, wire_5427, wire_5386, wire_5333, wire_5332, wire_5381, wire_5380, wire_5411, wire_5322, wire_5373, wire_5372, wire_5317, wire_5316, wire_939, wire_5421, wire_5362, wire_637, wire_5407, wire_5406, wire_5351, wire_5350, wire_5345, wire_5344, wire_5343, wire_5342, wire_5391, wire_5390, wire_5385, wire_5384, wire_5383, wire_5382, wire_5327, wire_5326, wire_5321, wire_5320, wire_5319, wire_5318, wire_939, wire_5367, wire_5366, wire_939, wire_5361, wire_5360, wire_637, wire_5838, wire_5744, wire_6078, wire_6072, wire_6066, wire_6060, wire_5431, wire_683, wire_674, wire_668, wire_5768, wire_5792, wire_686, wire_5816, wire_686, wire_5746, wire_686, wire_6054, wire_6048, wire_6042, wire_6036, wire_5429, wire_680, wire_674, wire_668, wire_5770, wire_686, wire_5794, wire_686, wire_5818, wire_683, wire_5748, wire_683, wire_6030, wire_6024, wire_6018, wire_6012, wire_5427, wire_680, wire_674, wire_665, wire_5772, wire_683, wire_5796, wire_683, wire_5820, wire_683, wire_5750, wire_680, wire_6102, wire_6096, wire_6090, wire_6084, wire_5425, wire_686, wire_680, wire_674, wire_665, wire_5774, wire_680, wire_5798, wire_680, wire_5822, wire_680, wire_5752, wire_680, wire_6076, wire_6070, wire_6064, wire_6058, wire_5423, wire_686, wire_680, wire_671, wire_665, wire_5776, wire_677, wire_5800, wire_677, wire_5824, wire_677, wire_5754, wire_677, wire_6052, wire_6046, wire_6040, wire_6034, wire_5421, wire_686, wire_680, wire_671, wire_665, wire_5778, wire_677, wire_5802, wire_674, wire_5826, wire_674, wire_5756, wire_674, wire_6028, wire_6022, wire_6016, wire_6010, wire_5419, wire_686, wire_677, wire_671, wire_665, wire_5780, wire_674, wire_5804, wire_674, wire_5828, wire_671, wire_5758, wire_671, wire_6100, wire_6094, wire_6088, wire_6082, wire_5417, wire_686, wire_677, wire_671, wire_636, wire_5782, wire_671, wire_5806, wire_671, wire_5830, wire_671, wire_5760, wire_668, wire_6074, wire_6068, wire_6062, wire_6056, wire_5415, wire_683, wire_677, wire_671, wire_636, wire_5784, wire_668, wire_5808, wire_668, wire_5832, wire_668, wire_5762, wire_668, wire_6050, wire_6044, wire_6038, wire_6032, wire_5413, wire_683, wire_677, wire_668, wire_636, wire_5786, wire_665, wire_5810, wire_665, wire_5834, wire_665, wire_5764, wire_665, wire_6026, wire_6020, wire_6014, wire_6008, wire_5411, wire_683, wire_677, wire_668, wire_636, wire_5788, wire_665, wire_5812, wire_636, wire_5836, wire_636, wire_5766, wire_636, wire_6098, wire_6092, wire_6086, wire_6080, wire_5409, wire_683, wire_674, wire_668, wire_636, wire_5790, wire_636, wire_5814, wire_636};
    // CHNAXY TOTAL: 422
    assign wire_5312 = lut_tile_8_1_chanxy_out[0];
    assign wire_5314 = lut_tile_8_1_chanxy_out[1];
    assign wire_5315 = lut_tile_8_1_chanxy_out[2];
    assign wire_5316 = lut_tile_8_1_chanxy_out[3];
    assign wire_5318 = lut_tile_8_1_chanxy_out[4];
    assign wire_5320 = lut_tile_8_1_chanxy_out[5];
    assign wire_5322 = lut_tile_8_1_chanxy_out[6];
    assign wire_5323 = lut_tile_8_1_chanxy_out[7];
    assign wire_5324 = lut_tile_8_1_chanxy_out[8];
    assign wire_5326 = lut_tile_8_1_chanxy_out[9];
    assign wire_5328 = lut_tile_8_1_chanxy_out[10];
    assign wire_5330 = lut_tile_8_1_chanxy_out[11];
    assign wire_5331 = lut_tile_8_1_chanxy_out[12];
    assign wire_5332 = lut_tile_8_1_chanxy_out[13];
    assign wire_5334 = lut_tile_8_1_chanxy_out[14];
    assign wire_5336 = lut_tile_8_1_chanxy_out[15];
    assign wire_5338 = lut_tile_8_1_chanxy_out[16];
    assign wire_5339 = lut_tile_8_1_chanxy_out[17];
    assign wire_5340 = lut_tile_8_1_chanxy_out[18];
    assign wire_5342 = lut_tile_8_1_chanxy_out[19];
    assign wire_5344 = lut_tile_8_1_chanxy_out[20];
    assign wire_5346 = lut_tile_8_1_chanxy_out[21];
    assign wire_5347 = lut_tile_8_1_chanxy_out[22];
    assign wire_5348 = lut_tile_8_1_chanxy_out[23];
    assign wire_5350 = lut_tile_8_1_chanxy_out[24];
    assign wire_5352 = lut_tile_8_1_chanxy_out[25];
    assign wire_5354 = lut_tile_8_1_chanxy_out[26];
    assign wire_5355 = lut_tile_8_1_chanxy_out[27];
    assign wire_5356 = lut_tile_8_1_chanxy_out[28];
    assign wire_5358 = lut_tile_8_1_chanxy_out[29];
    assign wire_5360 = lut_tile_8_1_chanxy_out[30];
    assign wire_5362 = lut_tile_8_1_chanxy_out[31];
    assign wire_5363 = lut_tile_8_1_chanxy_out[32];
    assign wire_5364 = lut_tile_8_1_chanxy_out[33];
    assign wire_5366 = lut_tile_8_1_chanxy_out[34];
    assign wire_5368 = lut_tile_8_1_chanxy_out[35];
    assign wire_5370 = lut_tile_8_1_chanxy_out[36];
    assign wire_5371 = lut_tile_8_1_chanxy_out[37];
    assign wire_5372 = lut_tile_8_1_chanxy_out[38];
    assign wire_5374 = lut_tile_8_1_chanxy_out[39];
    assign wire_5376 = lut_tile_8_1_chanxy_out[40];
    assign wire_5378 = lut_tile_8_1_chanxy_out[41];
    assign wire_5379 = lut_tile_8_1_chanxy_out[42];
    assign wire_5380 = lut_tile_8_1_chanxy_out[43];
    assign wire_5382 = lut_tile_8_1_chanxy_out[44];
    assign wire_5384 = lut_tile_8_1_chanxy_out[45];
    assign wire_5386 = lut_tile_8_1_chanxy_out[46];
    assign wire_5387 = lut_tile_8_1_chanxy_out[47];
    assign wire_5388 = lut_tile_8_1_chanxy_out[48];
    assign wire_5390 = lut_tile_8_1_chanxy_out[49];
    assign wire_5392 = lut_tile_8_1_chanxy_out[50];
    assign wire_5394 = lut_tile_8_1_chanxy_out[51];
    assign wire_5395 = lut_tile_8_1_chanxy_out[52];
    assign wire_5396 = lut_tile_8_1_chanxy_out[53];
    assign wire_5398 = lut_tile_8_1_chanxy_out[54];
    assign wire_5400 = lut_tile_8_1_chanxy_out[55];
    assign wire_5402 = lut_tile_8_1_chanxy_out[56];
    assign wire_5403 = lut_tile_8_1_chanxy_out[57];
    assign wire_5404 = lut_tile_8_1_chanxy_out[58];
    assign wire_5406 = lut_tile_8_1_chanxy_out[59];
    assign wire_6009 = lut_tile_8_1_chanxy_out[60];
    assign wire_6011 = lut_tile_8_1_chanxy_out[61];
    assign wire_6013 = lut_tile_8_1_chanxy_out[62];
    assign wire_6015 = lut_tile_8_1_chanxy_out[63];
    assign wire_6017 = lut_tile_8_1_chanxy_out[64];
    assign wire_6019 = lut_tile_8_1_chanxy_out[65];
    assign wire_6021 = lut_tile_8_1_chanxy_out[66];
    assign wire_6023 = lut_tile_8_1_chanxy_out[67];
    assign wire_6025 = lut_tile_8_1_chanxy_out[68];
    assign wire_6027 = lut_tile_8_1_chanxy_out[69];
    assign wire_6029 = lut_tile_8_1_chanxy_out[70];
    assign wire_6031 = lut_tile_8_1_chanxy_out[71];
    assign wire_6033 = lut_tile_8_1_chanxy_out[72];
    assign wire_6035 = lut_tile_8_1_chanxy_out[73];
    assign wire_6037 = lut_tile_8_1_chanxy_out[74];
    assign wire_6039 = lut_tile_8_1_chanxy_out[75];
    assign wire_6041 = lut_tile_8_1_chanxy_out[76];
    assign wire_6043 = lut_tile_8_1_chanxy_out[77];
    assign wire_6045 = lut_tile_8_1_chanxy_out[78];
    assign wire_6047 = lut_tile_8_1_chanxy_out[79];
    assign wire_6049 = lut_tile_8_1_chanxy_out[80];
    assign wire_6051 = lut_tile_8_1_chanxy_out[81];
    assign wire_6053 = lut_tile_8_1_chanxy_out[82];
    assign wire_6055 = lut_tile_8_1_chanxy_out[83];
    assign wire_6057 = lut_tile_8_1_chanxy_out[84];
    assign wire_6059 = lut_tile_8_1_chanxy_out[85];
    assign wire_6061 = lut_tile_8_1_chanxy_out[86];
    assign wire_6063 = lut_tile_8_1_chanxy_out[87];
    assign wire_6065 = lut_tile_8_1_chanxy_out[88];
    assign wire_6067 = lut_tile_8_1_chanxy_out[89];
    assign wire_6069 = lut_tile_8_1_chanxy_out[90];
    assign wire_6071 = lut_tile_8_1_chanxy_out[91];
    assign wire_6073 = lut_tile_8_1_chanxy_out[92];
    assign wire_6075 = lut_tile_8_1_chanxy_out[93];
    assign wire_6077 = lut_tile_8_1_chanxy_out[94];
    assign wire_6079 = lut_tile_8_1_chanxy_out[95];
    assign wire_6080 = lut_tile_8_1_chanxy_out[96];
    assign wire_6081 = lut_tile_8_1_chanxy_out[97];
    assign wire_6082 = lut_tile_8_1_chanxy_out[98];
    assign wire_6083 = lut_tile_8_1_chanxy_out[99];
    assign wire_6084 = lut_tile_8_1_chanxy_out[100];
    assign wire_6085 = lut_tile_8_1_chanxy_out[101];
    assign wire_6086 = lut_tile_8_1_chanxy_out[102];
    assign wire_6087 = lut_tile_8_1_chanxy_out[103];
    assign wire_6088 = lut_tile_8_1_chanxy_out[104];
    assign wire_6089 = lut_tile_8_1_chanxy_out[105];
    assign wire_6090 = lut_tile_8_1_chanxy_out[106];
    assign wire_6091 = lut_tile_8_1_chanxy_out[107];
    assign wire_6092 = lut_tile_8_1_chanxy_out[108];
    assign wire_6093 = lut_tile_8_1_chanxy_out[109];
    assign wire_6094 = lut_tile_8_1_chanxy_out[110];
    assign wire_6095 = lut_tile_8_1_chanxy_out[111];
    assign wire_6096 = lut_tile_8_1_chanxy_out[112];
    assign wire_6097 = lut_tile_8_1_chanxy_out[113];
    assign wire_6098 = lut_tile_8_1_chanxy_out[114];
    assign wire_6099 = lut_tile_8_1_chanxy_out[115];
    assign wire_6100 = lut_tile_8_1_chanxy_out[116];
    assign wire_6101 = lut_tile_8_1_chanxy_out[117];
    assign wire_6102 = lut_tile_8_1_chanxy_out[118];
    assign wire_6103 = lut_tile_8_1_chanxy_out[119];
   // CHANXY OUT
    assign lut_tile_8_2_chanxy_in = {wire_5407, wire_5406, wire_6270, wire_5169, wire_5127, wire_5126, wire_5095, wire_5094, wire_5063, wire_5062, wire_5058, wire_5351, wire_5350, wire_6268, wire_5191, wire_5143, wire_5142, wire_5111, wire_5110, wire_5079, wire_5078, wire_5066, wire_5345, wire_5344, wire_6266, wire_5189, wire_5125, wire_5124, wire_5093, wire_5092, wire_5074, wire_5061, wire_5060, wire_1243, wire_5343, wire_5342, wire_6264, wire_5187, wire_5141, wire_5140, wire_5109, wire_5108, wire_5082, wire_5077, wire_5076, wire_1243, wire_5391, wire_5390, wire_6262, wire_5185, wire_5163, wire_5162, wire_5155, wire_5154, wire_5147, wire_5146, wire_5090, wire_1243, wire_5385, wire_5384, wire_6260, wire_5183, wire_5167, wire_5166, wire_5159, wire_5158, wire_5151, wire_5150, wire_5098, wire_1243, wire_5383, wire_5382, wire_6258, wire_5181, wire_5119, wire_5118, wire_5106, wire_5087, wire_5086, wire_5055, wire_5054, wire_1243, wire_5327, wire_5326, wire_6256, wire_5179, wire_5135, wire_5134, wire_5114, wire_5103, wire_5102, wire_5071, wire_5070, wire_941, wire_5321, wire_5320, wire_6254, wire_5177, wire_5122, wire_5117, wire_5116, wire_5085, wire_5084, wire_5053, wire_5052, wire_941, wire_5319, wire_5318, wire_1243, wire_6252, wire_5175, wire_5133, wire_5132, wire_5130, wire_5101, wire_5100, wire_5069, wire_5068, wire_941, wire_5367, wire_5366, wire_1243, wire_6250, wire_5173, wire_5161, wire_5160, wire_5153, wire_5152, wire_5145, wire_5144, wire_5138, wire_941, wire_5361, wire_5360, wire_941, wire_6248, wire_5171, wire_5165, wire_5164, wire_5157, wire_5156, wire_5149, wire_5148, wire_5050, wire_941, wire_5419, wire_5418, wire_5441, wire_5348, wire_5401, wire_5400, wire_5429, wire_5428, wire_5451, wire_5388, wire_5337, wire_5336, wire_5413, wire_5412, wire_5435, wire_5324, wire_5377, wire_5376, wire_5423, wire_5422, wire_1243, wire_5445, wire_5364, wire_941, wire_5313, wire_5312, wire_941, wire_5359, wire_5358, wire_5353, wire_5352, wire_5431, wire_5430, wire_5399, wire_5398, wire_5393, wire_5392, wire_5415, wire_5414, wire_5335, wire_5334, wire_5329, wire_5328, wire_5425, wire_5424, wire_5375, wire_5374, wire_5369, wire_5368, wire_1243, wire_5409, wire_5408, wire_941, wire_5443, wire_5356, wire_5455, wire_5404, wire_5417, wire_5416, wire_5453, wire_5396, wire_5439, wire_5340, wire_5427, wire_5426, wire_5437, wire_5332, wire_5449, wire_5380, wire_5411, wire_5410, wire_5447, wire_5372, wire_5433, wire_5316, wire_1243, wire_5421, wire_5420, wire_941, wire_6078, wire_6072, wire_6066, wire_6060, wire_5402, wire_987, wire_978, wire_972, wire_6054, wire_6048, wire_6042, wire_6036, wire_5394, wire_984, wire_978, wire_972, wire_6030, wire_6024, wire_6018, wire_6012, wire_5386, wire_984, wire_978, wire_969, wire_6102, wire_6096, wire_6090, wire_6084, wire_5378, wire_990, wire_984, wire_978, wire_969, wire_6076, wire_6070, wire_6064, wire_6058, wire_5370, wire_990, wire_984, wire_975, wire_969, wire_6052, wire_6046, wire_6040, wire_6034, wire_5362, wire_990, wire_984, wire_975, wire_969, wire_6028, wire_6022, wire_6016, wire_6010, wire_5354, wire_990, wire_981, wire_975, wire_969, wire_6100, wire_6094, wire_6088, wire_6082, wire_5346, wire_990, wire_981, wire_975, wire_940, wire_6074, wire_6068, wire_6062, wire_6056, wire_5338, wire_987, wire_981, wire_975, wire_940, wire_6050, wire_6044, wire_6038, wire_6032, wire_5330, wire_987, wire_981, wire_972, wire_940, wire_6026, wire_6020, wire_6014, wire_6008, wire_5322, wire_987, wire_981, wire_972, wire_940, wire_6098, wire_6092, wire_6086, wire_6080, wire_5314, wire_987, wire_978, wire_972, wire_940, wire_6318, wire_6312, wire_6306, wire_6300, wire_5455, wire_987, wire_978, wire_972, wire_6294, wire_6288, wire_6282, wire_6276, wire_5453, wire_984, wire_978, wire_972, wire_6366, wire_6360, wire_6354, wire_6348, wire_5451, wire_984, wire_978, wire_969, wire_6342, wire_6336, wire_6330, wire_6324, wire_5449, wire_990, wire_984, wire_978, wire_969, wire_6316, wire_6310, wire_6304, wire_6298, wire_5447, wire_990, wire_984, wire_975, wire_969, wire_6292, wire_6286, wire_6280, wire_6274, wire_5445, wire_990, wire_984, wire_975, wire_969, wire_6364, wire_6358, wire_6352, wire_6346, wire_5443, wire_990, wire_981, wire_975, wire_969, wire_6340, wire_6334, wire_6328, wire_6322, wire_5441, wire_990, wire_981, wire_975, wire_940, wire_6314, wire_6308, wire_6302, wire_6296, wire_5439, wire_987, wire_981, wire_975, wire_940, wire_6290, wire_6284, wire_6278, wire_6272, wire_5437, wire_987, wire_981, wire_972, wire_940, wire_6362, wire_6356, wire_6350, wire_6344, wire_5435, wire_987, wire_981, wire_972, wire_940, wire_6338, wire_6332, wire_6326, wire_6320, wire_5433, wire_987, wire_978, wire_972, wire_940};
    // CHNAXY TOTAL: 434
    assign wire_5317 = lut_tile_8_2_chanxy_out[0];
    assign wire_5325 = lut_tile_8_2_chanxy_out[1];
    assign wire_5333 = lut_tile_8_2_chanxy_out[2];
    assign wire_5341 = lut_tile_8_2_chanxy_out[3];
    assign wire_5349 = lut_tile_8_2_chanxy_out[4];
    assign wire_5357 = lut_tile_8_2_chanxy_out[5];
    assign wire_5365 = lut_tile_8_2_chanxy_out[6];
    assign wire_5373 = lut_tile_8_2_chanxy_out[7];
    assign wire_5381 = lut_tile_8_2_chanxy_out[8];
    assign wire_5389 = lut_tile_8_2_chanxy_out[9];
    assign wire_5397 = lut_tile_8_2_chanxy_out[10];
    assign wire_5405 = lut_tile_8_2_chanxy_out[11];
    assign wire_5408 = lut_tile_8_2_chanxy_out[12];
    assign wire_5410 = lut_tile_8_2_chanxy_out[13];
    assign wire_5412 = lut_tile_8_2_chanxy_out[14];
    assign wire_5414 = lut_tile_8_2_chanxy_out[15];
    assign wire_5416 = lut_tile_8_2_chanxy_out[16];
    assign wire_5418 = lut_tile_8_2_chanxy_out[17];
    assign wire_5420 = lut_tile_8_2_chanxy_out[18];
    assign wire_5422 = lut_tile_8_2_chanxy_out[19];
    assign wire_5424 = lut_tile_8_2_chanxy_out[20];
    assign wire_5426 = lut_tile_8_2_chanxy_out[21];
    assign wire_5428 = lut_tile_8_2_chanxy_out[22];
    assign wire_5430 = lut_tile_8_2_chanxy_out[23];
    assign wire_6273 = lut_tile_8_2_chanxy_out[24];
    assign wire_6275 = lut_tile_8_2_chanxy_out[25];
    assign wire_6277 = lut_tile_8_2_chanxy_out[26];
    assign wire_6279 = lut_tile_8_2_chanxy_out[27];
    assign wire_6281 = lut_tile_8_2_chanxy_out[28];
    assign wire_6283 = lut_tile_8_2_chanxy_out[29];
    assign wire_6285 = lut_tile_8_2_chanxy_out[30];
    assign wire_6287 = lut_tile_8_2_chanxy_out[31];
    assign wire_6289 = lut_tile_8_2_chanxy_out[32];
    assign wire_6291 = lut_tile_8_2_chanxy_out[33];
    assign wire_6293 = lut_tile_8_2_chanxy_out[34];
    assign wire_6295 = lut_tile_8_2_chanxy_out[35];
    assign wire_6297 = lut_tile_8_2_chanxy_out[36];
    assign wire_6299 = lut_tile_8_2_chanxy_out[37];
    assign wire_6301 = lut_tile_8_2_chanxy_out[38];
    assign wire_6303 = lut_tile_8_2_chanxy_out[39];
    assign wire_6305 = lut_tile_8_2_chanxy_out[40];
    assign wire_6307 = lut_tile_8_2_chanxy_out[41];
    assign wire_6309 = lut_tile_8_2_chanxy_out[42];
    assign wire_6311 = lut_tile_8_2_chanxy_out[43];
    assign wire_6313 = lut_tile_8_2_chanxy_out[44];
    assign wire_6315 = lut_tile_8_2_chanxy_out[45];
    assign wire_6317 = lut_tile_8_2_chanxy_out[46];
    assign wire_6319 = lut_tile_8_2_chanxy_out[47];
    assign wire_6321 = lut_tile_8_2_chanxy_out[48];
    assign wire_6323 = lut_tile_8_2_chanxy_out[49];
    assign wire_6325 = lut_tile_8_2_chanxy_out[50];
    assign wire_6327 = lut_tile_8_2_chanxy_out[51];
    assign wire_6329 = lut_tile_8_2_chanxy_out[52];
    assign wire_6331 = lut_tile_8_2_chanxy_out[53];
    assign wire_6333 = lut_tile_8_2_chanxy_out[54];
    assign wire_6335 = lut_tile_8_2_chanxy_out[55];
    assign wire_6337 = lut_tile_8_2_chanxy_out[56];
    assign wire_6339 = lut_tile_8_2_chanxy_out[57];
    assign wire_6341 = lut_tile_8_2_chanxy_out[58];
    assign wire_6343 = lut_tile_8_2_chanxy_out[59];
    assign wire_6344 = lut_tile_8_2_chanxy_out[60];
    assign wire_6345 = lut_tile_8_2_chanxy_out[61];
    assign wire_6346 = lut_tile_8_2_chanxy_out[62];
    assign wire_6347 = lut_tile_8_2_chanxy_out[63];
    assign wire_6348 = lut_tile_8_2_chanxy_out[64];
    assign wire_6349 = lut_tile_8_2_chanxy_out[65];
    assign wire_6350 = lut_tile_8_2_chanxy_out[66];
    assign wire_6351 = lut_tile_8_2_chanxy_out[67];
    assign wire_6352 = lut_tile_8_2_chanxy_out[68];
    assign wire_6353 = lut_tile_8_2_chanxy_out[69];
    assign wire_6354 = lut_tile_8_2_chanxy_out[70];
    assign wire_6355 = lut_tile_8_2_chanxy_out[71];
    assign wire_6356 = lut_tile_8_2_chanxy_out[72];
    assign wire_6357 = lut_tile_8_2_chanxy_out[73];
    assign wire_6358 = lut_tile_8_2_chanxy_out[74];
    assign wire_6359 = lut_tile_8_2_chanxy_out[75];
    assign wire_6360 = lut_tile_8_2_chanxy_out[76];
    assign wire_6361 = lut_tile_8_2_chanxy_out[77];
    assign wire_6362 = lut_tile_8_2_chanxy_out[78];
    assign wire_6363 = lut_tile_8_2_chanxy_out[79];
    assign wire_6364 = lut_tile_8_2_chanxy_out[80];
    assign wire_6365 = lut_tile_8_2_chanxy_out[81];
    assign wire_6366 = lut_tile_8_2_chanxy_out[82];
    assign wire_6367 = lut_tile_8_2_chanxy_out[83];
   // CHANXY OUT
    assign lut_tile_8_3_chanxy_in = {wire_5443, wire_5442, wire_6534, wire_5193, wire_5127, wire_5126, wire_5095, wire_5094, wire_5063, wire_5062, wire_5060, wire_5455, wire_5454, wire_6532, wire_5215, wire_5187, wire_5186, wire_5179, wire_5178, wire_5171, wire_5170, wire_5068, wire_5417, wire_5416, wire_6530, wire_5213, wire_5143, wire_5142, wire_5111, wire_5110, wire_5079, wire_5078, wire_5076, wire_1547, wire_5453, wire_5452, wire_6528, wire_5211, wire_5191, wire_5190, wire_5183, wire_5182, wire_5175, wire_5174, wire_5084, wire_1547, wire_5439, wire_5438, wire_6526, wire_5209, wire_5167, wire_5166, wire_5159, wire_5158, wire_5151, wire_5150, wire_5092, wire_1547, wire_5427, wire_5426, wire_6524, wire_5207, wire_5163, wire_5162, wire_5155, wire_5154, wire_5147, wire_5146, wire_5100, wire_1547, wire_5437, wire_5436, wire_6522, wire_5205, wire_5119, wire_5118, wire_5108, wire_5087, wire_5086, wire_5055, wire_5054, wire_1547, wire_5449, wire_5448, wire_6520, wire_5203, wire_5185, wire_5184, wire_5177, wire_5176, wire_5169, wire_5168, wire_5116, wire_1245, wire_5411, wire_5410, wire_6518, wire_5201, wire_5135, wire_5134, wire_5124, wire_5103, wire_5102, wire_5071, wire_5070, wire_1245, wire_5447, wire_5446, wire_6516, wire_5199, wire_5189, wire_5188, wire_5181, wire_5180, wire_5173, wire_5172, wire_5132, wire_1245, wire_5433, wire_5432, wire_1547, wire_6514, wire_5197, wire_5165, wire_5164, wire_5157, wire_5156, wire_5149, wire_5148, wire_5140, wire_1245, wire_5421, wire_5420, wire_1245, wire_6512, wire_5195, wire_5161, wire_5160, wire_5153, wire_5152, wire_5145, wire_5144, wire_5052, wire_1245, wire_5479, wire_5406, wire_5465, wire_5350, wire_5345, wire_5344, wire_5463, wire_5342, wire_5475, wire_5390, wire_5385, wire_5384, wire_5473, wire_5382, wire_5459, wire_5326, wire_5321, wire_5320, wire_5457, wire_5318, wire_1547, wire_5469, wire_5366, wire_1547, wire_5361, wire_5360, wire_1245, wire_5419, wire_5418, wire_5441, wire_5440, wire_5401, wire_5400, wire_5429, wire_5428, wire_5451, wire_5450, wire_5337, wire_5336, wire_5413, wire_5412, wire_5435, wire_5434, wire_5377, wire_5376, wire_5423, wire_5422, wire_1547, wire_5445, wire_5444, wire_1245, wire_5313, wire_5312, wire_1245, wire_5467, wire_5358, wire_5353, wire_5352, wire_5431, wire_5430, wire_5477, wire_5398, wire_5393, wire_5392, wire_5415, wire_5414, wire_5461, wire_5334, wire_5329, wire_5328, wire_5425, wire_5424, wire_5471, wire_5374, wire_5369, wire_5368, wire_1547, wire_5409, wire_5408, wire_1245, wire_6318, wire_6312, wire_6306, wire_6300, wire_5404, wire_1291, wire_1282, wire_1276, wire_6294, wire_6288, wire_6282, wire_6276, wire_5396, wire_1288, wire_1282, wire_1276, wire_6366, wire_6360, wire_6354, wire_6348, wire_5388, wire_1288, wire_1282, wire_1273, wire_6342, wire_6336, wire_6330, wire_6324, wire_5380, wire_1294, wire_1288, wire_1282, wire_1273, wire_6316, wire_6310, wire_6304, wire_6298, wire_5372, wire_1294, wire_1288, wire_1279, wire_1273, wire_6292, wire_6286, wire_6280, wire_6274, wire_5364, wire_1294, wire_1288, wire_1279, wire_1273, wire_6364, wire_6358, wire_6352, wire_6346, wire_5356, wire_1294, wire_1285, wire_1279, wire_1273, wire_6340, wire_6334, wire_6328, wire_6322, wire_5348, wire_1294, wire_1285, wire_1279, wire_1244, wire_6314, wire_6308, wire_6302, wire_6296, wire_5340, wire_1291, wire_1285, wire_1279, wire_1244, wire_6290, wire_6284, wire_6278, wire_6272, wire_5332, wire_1291, wire_1285, wire_1276, wire_1244, wire_6362, wire_6356, wire_6350, wire_6344, wire_5324, wire_1291, wire_1285, wire_1276, wire_1244, wire_6338, wire_6332, wire_6326, wire_6320, wire_5316, wire_1291, wire_1282, wire_1276, wire_1244, wire_6558, wire_6552, wire_6546, wire_6540, wire_5479, wire_1291, wire_1282, wire_1276, wire_6630, wire_6624, wire_6618, wire_6612, wire_5477, wire_1288, wire_1282, wire_1276, wire_6606, wire_6600, wire_6594, wire_6588, wire_5475, wire_1288, wire_1282, wire_1273, wire_6582, wire_6576, wire_6570, wire_6564, wire_5473, wire_1294, wire_1288, wire_1282, wire_1273, wire_6556, wire_6550, wire_6544, wire_6538, wire_5471, wire_1294, wire_1288, wire_1279, wire_1273, wire_6628, wire_6622, wire_6616, wire_6610, wire_5469, wire_1294, wire_1288, wire_1279, wire_1273, wire_6604, wire_6598, wire_6592, wire_6586, wire_5467, wire_1294, wire_1285, wire_1279, wire_1273, wire_6580, wire_6574, wire_6568, wire_6562, wire_5465, wire_1294, wire_1285, wire_1279, wire_1244, wire_6554, wire_6548, wire_6542, wire_6536, wire_5463, wire_1291, wire_1285, wire_1279, wire_1244, wire_6626, wire_6620, wire_6614, wire_6608, wire_5461, wire_1291, wire_1285, wire_1276, wire_1244, wire_6602, wire_6596, wire_6590, wire_6584, wire_5459, wire_1291, wire_1285, wire_1276, wire_1244, wire_6578, wire_6572, wire_6566, wire_6560, wire_5457, wire_1291, wire_1282, wire_1276, wire_1244};
    // CHNAXY TOTAL: 434
    assign wire_5319 = lut_tile_8_3_chanxy_out[0];
    assign wire_5327 = lut_tile_8_3_chanxy_out[1];
    assign wire_5335 = lut_tile_8_3_chanxy_out[2];
    assign wire_5343 = lut_tile_8_3_chanxy_out[3];
    assign wire_5351 = lut_tile_8_3_chanxy_out[4];
    assign wire_5359 = lut_tile_8_3_chanxy_out[5];
    assign wire_5367 = lut_tile_8_3_chanxy_out[6];
    assign wire_5375 = lut_tile_8_3_chanxy_out[7];
    assign wire_5383 = lut_tile_8_3_chanxy_out[8];
    assign wire_5391 = lut_tile_8_3_chanxy_out[9];
    assign wire_5399 = lut_tile_8_3_chanxy_out[10];
    assign wire_5407 = lut_tile_8_3_chanxy_out[11];
    assign wire_5432 = lut_tile_8_3_chanxy_out[12];
    assign wire_5434 = lut_tile_8_3_chanxy_out[13];
    assign wire_5436 = lut_tile_8_3_chanxy_out[14];
    assign wire_5438 = lut_tile_8_3_chanxy_out[15];
    assign wire_5440 = lut_tile_8_3_chanxy_out[16];
    assign wire_5442 = lut_tile_8_3_chanxy_out[17];
    assign wire_5444 = lut_tile_8_3_chanxy_out[18];
    assign wire_5446 = lut_tile_8_3_chanxy_out[19];
    assign wire_5448 = lut_tile_8_3_chanxy_out[20];
    assign wire_5450 = lut_tile_8_3_chanxy_out[21];
    assign wire_5452 = lut_tile_8_3_chanxy_out[22];
    assign wire_5454 = lut_tile_8_3_chanxy_out[23];
    assign wire_6537 = lut_tile_8_3_chanxy_out[24];
    assign wire_6539 = lut_tile_8_3_chanxy_out[25];
    assign wire_6541 = lut_tile_8_3_chanxy_out[26];
    assign wire_6543 = lut_tile_8_3_chanxy_out[27];
    assign wire_6545 = lut_tile_8_3_chanxy_out[28];
    assign wire_6547 = lut_tile_8_3_chanxy_out[29];
    assign wire_6549 = lut_tile_8_3_chanxy_out[30];
    assign wire_6551 = lut_tile_8_3_chanxy_out[31];
    assign wire_6553 = lut_tile_8_3_chanxy_out[32];
    assign wire_6555 = lut_tile_8_3_chanxy_out[33];
    assign wire_6557 = lut_tile_8_3_chanxy_out[34];
    assign wire_6559 = lut_tile_8_3_chanxy_out[35];
    assign wire_6561 = lut_tile_8_3_chanxy_out[36];
    assign wire_6563 = lut_tile_8_3_chanxy_out[37];
    assign wire_6565 = lut_tile_8_3_chanxy_out[38];
    assign wire_6567 = lut_tile_8_3_chanxy_out[39];
    assign wire_6569 = lut_tile_8_3_chanxy_out[40];
    assign wire_6571 = lut_tile_8_3_chanxy_out[41];
    assign wire_6573 = lut_tile_8_3_chanxy_out[42];
    assign wire_6575 = lut_tile_8_3_chanxy_out[43];
    assign wire_6577 = lut_tile_8_3_chanxy_out[44];
    assign wire_6579 = lut_tile_8_3_chanxy_out[45];
    assign wire_6581 = lut_tile_8_3_chanxy_out[46];
    assign wire_6583 = lut_tile_8_3_chanxy_out[47];
    assign wire_6585 = lut_tile_8_3_chanxy_out[48];
    assign wire_6587 = lut_tile_8_3_chanxy_out[49];
    assign wire_6589 = lut_tile_8_3_chanxy_out[50];
    assign wire_6591 = lut_tile_8_3_chanxy_out[51];
    assign wire_6593 = lut_tile_8_3_chanxy_out[52];
    assign wire_6595 = lut_tile_8_3_chanxy_out[53];
    assign wire_6597 = lut_tile_8_3_chanxy_out[54];
    assign wire_6599 = lut_tile_8_3_chanxy_out[55];
    assign wire_6601 = lut_tile_8_3_chanxy_out[56];
    assign wire_6603 = lut_tile_8_3_chanxy_out[57];
    assign wire_6605 = lut_tile_8_3_chanxy_out[58];
    assign wire_6607 = lut_tile_8_3_chanxy_out[59];
    assign wire_6608 = lut_tile_8_3_chanxy_out[60];
    assign wire_6609 = lut_tile_8_3_chanxy_out[61];
    assign wire_6610 = lut_tile_8_3_chanxy_out[62];
    assign wire_6611 = lut_tile_8_3_chanxy_out[63];
    assign wire_6612 = lut_tile_8_3_chanxy_out[64];
    assign wire_6613 = lut_tile_8_3_chanxy_out[65];
    assign wire_6614 = lut_tile_8_3_chanxy_out[66];
    assign wire_6615 = lut_tile_8_3_chanxy_out[67];
    assign wire_6616 = lut_tile_8_3_chanxy_out[68];
    assign wire_6617 = lut_tile_8_3_chanxy_out[69];
    assign wire_6618 = lut_tile_8_3_chanxy_out[70];
    assign wire_6619 = lut_tile_8_3_chanxy_out[71];
    assign wire_6620 = lut_tile_8_3_chanxy_out[72];
    assign wire_6621 = lut_tile_8_3_chanxy_out[73];
    assign wire_6622 = lut_tile_8_3_chanxy_out[74];
    assign wire_6623 = lut_tile_8_3_chanxy_out[75];
    assign wire_6624 = lut_tile_8_3_chanxy_out[76];
    assign wire_6625 = lut_tile_8_3_chanxy_out[77];
    assign wire_6626 = lut_tile_8_3_chanxy_out[78];
    assign wire_6627 = lut_tile_8_3_chanxy_out[79];
    assign wire_6628 = lut_tile_8_3_chanxy_out[80];
    assign wire_6629 = lut_tile_8_3_chanxy_out[81];
    assign wire_6630 = lut_tile_8_3_chanxy_out[82];
    assign wire_6631 = lut_tile_8_3_chanxy_out[83];
   // CHANXY OUT
    assign lut_tile_8_4_chanxy_in = {wire_5467, wire_5466, wire_6798, wire_5217, wire_5215, wire_5214, wire_5207, wire_5206, wire_5199, wire_5198, wire_5062, wire_5491, wire_5352, wire_6796, wire_5239, wire_5211, wire_5210, wire_5203, wire_5202, wire_5195, wire_5194, wire_5070, wire_5431, wire_5430, wire_6794, wire_5237, wire_5187, wire_5186, wire_5179, wire_5178, wire_5171, wire_5170, wire_5078, wire_1851, wire_5477, wire_5476, wire_6792, wire_5235, wire_5163, wire_5162, wire_5155, wire_5154, wire_5147, wire_5146, wire_5086, wire_1851, wire_5501, wire_5392, wire_6790, wire_5233, wire_5191, wire_5190, wire_5183, wire_5182, wire_5175, wire_5174, wire_5094, wire_1851, wire_5415, wire_5414, wire_6788, wire_5231, wire_5167, wire_5166, wire_5159, wire_5158, wire_5151, wire_5150, wire_5102, wire_1851, wire_5461, wire_5460, wire_6786, wire_5229, wire_5213, wire_5212, wire_5205, wire_5204, wire_5197, wire_5196, wire_5110, wire_1851, wire_5485, wire_5328, wire_6784, wire_5227, wire_5209, wire_5208, wire_5201, wire_5200, wire_5193, wire_5192, wire_5118, wire_1549, wire_5425, wire_5424, wire_6782, wire_5225, wire_5185, wire_5184, wire_5177, wire_5176, wire_5169, wire_5168, wire_5126, wire_1549, wire_5471, wire_5470, wire_6780, wire_5223, wire_5161, wire_5160, wire_5153, wire_5152, wire_5145, wire_5144, wire_5134, wire_1549, wire_5495, wire_5368, wire_1851, wire_6778, wire_5221, wire_5189, wire_5188, wire_5181, wire_5180, wire_5173, wire_5172, wire_5142, wire_1549, wire_5409, wire_5408, wire_1549, wire_6776, wire_5219, wire_5165, wire_5164, wire_5157, wire_5156, wire_5149, wire_5148, wire_5054, wire_1549, wire_5443, wire_5442, wire_5455, wire_5454, wire_5417, wire_5416, wire_5453, wire_5452, wire_5439, wire_5438, wire_5427, wire_5426, wire_5437, wire_5436, wire_5449, wire_5448, wire_5411, wire_5410, wire_5447, wire_5446, wire_5433, wire_5432, wire_1851, wire_5421, wire_5420, wire_1549, wire_5479, wire_5478, wire_5465, wire_5464, wire_5489, wire_5344, wire_5463, wire_5462, wire_5475, wire_5474, wire_5499, wire_5384, wire_5473, wire_5472, wire_5459, wire_5458, wire_5483, wire_5320, wire_5457, wire_5456, wire_1851, wire_5469, wire_5468, wire_1851, wire_5493, wire_5360, wire_1549, wire_5419, wire_5418, wire_5441, wire_5440, wire_5503, wire_5400, wire_5429, wire_5428, wire_5451, wire_5450, wire_5487, wire_5336, wire_5413, wire_5412, wire_5435, wire_5434, wire_5497, wire_5376, wire_5423, wire_5422, wire_1851, wire_5445, wire_5444, wire_1549, wire_5481, wire_5312, wire_1549, wire_6558, wire_6552, wire_6546, wire_6540, wire_5406, wire_1595, wire_1586, wire_1580, wire_6630, wire_6624, wire_6618, wire_6612, wire_5398, wire_1592, wire_1586, wire_1580, wire_6606, wire_6600, wire_6594, wire_6588, wire_5390, wire_1592, wire_1586, wire_1577, wire_6582, wire_6576, wire_6570, wire_6564, wire_5382, wire_1598, wire_1592, wire_1586, wire_1577, wire_6556, wire_6550, wire_6544, wire_6538, wire_5374, wire_1598, wire_1592, wire_1583, wire_1577, wire_6628, wire_6622, wire_6616, wire_6610, wire_5366, wire_1598, wire_1592, wire_1583, wire_1577, wire_6604, wire_6598, wire_6592, wire_6586, wire_5358, wire_1598, wire_1589, wire_1583, wire_1577, wire_6580, wire_6574, wire_6568, wire_6562, wire_5350, wire_1598, wire_1589, wire_1583, wire_1548, wire_6554, wire_6548, wire_6542, wire_6536, wire_5342, wire_1595, wire_1589, wire_1583, wire_1548, wire_6626, wire_6620, wire_6614, wire_6608, wire_5334, wire_1595, wire_1589, wire_1580, wire_1548, wire_6602, wire_6596, wire_6590, wire_6584, wire_5326, wire_1595, wire_1589, wire_1580, wire_1548, wire_6578, wire_6572, wire_6566, wire_6560, wire_5318, wire_1595, wire_1586, wire_1580, wire_1548, wire_6894, wire_6888, wire_6882, wire_6876, wire_5503, wire_1595, wire_1586, wire_1580, wire_6870, wire_6864, wire_6858, wire_6852, wire_5501, wire_1592, wire_1586, wire_1580, wire_6846, wire_6840, wire_6834, wire_6828, wire_5499, wire_1592, wire_1586, wire_1577, wire_6822, wire_6816, wire_6810, wire_6804, wire_5497, wire_1598, wire_1592, wire_1586, wire_1577, wire_6892, wire_6886, wire_6880, wire_6874, wire_5495, wire_1598, wire_1592, wire_1583, wire_1577, wire_6868, wire_6862, wire_6856, wire_6850, wire_5493, wire_1598, wire_1592, wire_1583, wire_1577, wire_6844, wire_6838, wire_6832, wire_6826, wire_5491, wire_1598, wire_1589, wire_1583, wire_1577, wire_6820, wire_6814, wire_6808, wire_6802, wire_5489, wire_1598, wire_1589, wire_1583, wire_1548, wire_6890, wire_6884, wire_6878, wire_6872, wire_5487, wire_1595, wire_1589, wire_1583, wire_1548, wire_6866, wire_6860, wire_6854, wire_6848, wire_5485, wire_1595, wire_1589, wire_1580, wire_1548, wire_6842, wire_6836, wire_6830, wire_6824, wire_5483, wire_1595, wire_1589, wire_1580, wire_1548, wire_6818, wire_6812, wire_6806, wire_6800, wire_5481, wire_1595, wire_1586, wire_1580, wire_1548};
    // CHNAXY TOTAL: 434
    assign wire_5313 = lut_tile_8_4_chanxy_out[0];
    assign wire_5321 = lut_tile_8_4_chanxy_out[1];
    assign wire_5329 = lut_tile_8_4_chanxy_out[2];
    assign wire_5337 = lut_tile_8_4_chanxy_out[3];
    assign wire_5345 = lut_tile_8_4_chanxy_out[4];
    assign wire_5353 = lut_tile_8_4_chanxy_out[5];
    assign wire_5361 = lut_tile_8_4_chanxy_out[6];
    assign wire_5369 = lut_tile_8_4_chanxy_out[7];
    assign wire_5377 = lut_tile_8_4_chanxy_out[8];
    assign wire_5385 = lut_tile_8_4_chanxy_out[9];
    assign wire_5393 = lut_tile_8_4_chanxy_out[10];
    assign wire_5401 = lut_tile_8_4_chanxy_out[11];
    assign wire_5456 = lut_tile_8_4_chanxy_out[12];
    assign wire_5458 = lut_tile_8_4_chanxy_out[13];
    assign wire_5460 = lut_tile_8_4_chanxy_out[14];
    assign wire_5462 = lut_tile_8_4_chanxy_out[15];
    assign wire_5464 = lut_tile_8_4_chanxy_out[16];
    assign wire_5466 = lut_tile_8_4_chanxy_out[17];
    assign wire_5468 = lut_tile_8_4_chanxy_out[18];
    assign wire_5470 = lut_tile_8_4_chanxy_out[19];
    assign wire_5472 = lut_tile_8_4_chanxy_out[20];
    assign wire_5474 = lut_tile_8_4_chanxy_out[21];
    assign wire_5476 = lut_tile_8_4_chanxy_out[22];
    assign wire_5478 = lut_tile_8_4_chanxy_out[23];
    assign wire_6801 = lut_tile_8_4_chanxy_out[24];
    assign wire_6803 = lut_tile_8_4_chanxy_out[25];
    assign wire_6805 = lut_tile_8_4_chanxy_out[26];
    assign wire_6807 = lut_tile_8_4_chanxy_out[27];
    assign wire_6809 = lut_tile_8_4_chanxy_out[28];
    assign wire_6811 = lut_tile_8_4_chanxy_out[29];
    assign wire_6813 = lut_tile_8_4_chanxy_out[30];
    assign wire_6815 = lut_tile_8_4_chanxy_out[31];
    assign wire_6817 = lut_tile_8_4_chanxy_out[32];
    assign wire_6819 = lut_tile_8_4_chanxy_out[33];
    assign wire_6821 = lut_tile_8_4_chanxy_out[34];
    assign wire_6823 = lut_tile_8_4_chanxy_out[35];
    assign wire_6825 = lut_tile_8_4_chanxy_out[36];
    assign wire_6827 = lut_tile_8_4_chanxy_out[37];
    assign wire_6829 = lut_tile_8_4_chanxy_out[38];
    assign wire_6831 = lut_tile_8_4_chanxy_out[39];
    assign wire_6833 = lut_tile_8_4_chanxy_out[40];
    assign wire_6835 = lut_tile_8_4_chanxy_out[41];
    assign wire_6837 = lut_tile_8_4_chanxy_out[42];
    assign wire_6839 = lut_tile_8_4_chanxy_out[43];
    assign wire_6841 = lut_tile_8_4_chanxy_out[44];
    assign wire_6843 = lut_tile_8_4_chanxy_out[45];
    assign wire_6845 = lut_tile_8_4_chanxy_out[46];
    assign wire_6847 = lut_tile_8_4_chanxy_out[47];
    assign wire_6849 = lut_tile_8_4_chanxy_out[48];
    assign wire_6851 = lut_tile_8_4_chanxy_out[49];
    assign wire_6853 = lut_tile_8_4_chanxy_out[50];
    assign wire_6855 = lut_tile_8_4_chanxy_out[51];
    assign wire_6857 = lut_tile_8_4_chanxy_out[52];
    assign wire_6859 = lut_tile_8_4_chanxy_out[53];
    assign wire_6861 = lut_tile_8_4_chanxy_out[54];
    assign wire_6863 = lut_tile_8_4_chanxy_out[55];
    assign wire_6865 = lut_tile_8_4_chanxy_out[56];
    assign wire_6867 = lut_tile_8_4_chanxy_out[57];
    assign wire_6869 = lut_tile_8_4_chanxy_out[58];
    assign wire_6871 = lut_tile_8_4_chanxy_out[59];
    assign wire_6872 = lut_tile_8_4_chanxy_out[60];
    assign wire_6873 = lut_tile_8_4_chanxy_out[61];
    assign wire_6874 = lut_tile_8_4_chanxy_out[62];
    assign wire_6875 = lut_tile_8_4_chanxy_out[63];
    assign wire_6876 = lut_tile_8_4_chanxy_out[64];
    assign wire_6877 = lut_tile_8_4_chanxy_out[65];
    assign wire_6878 = lut_tile_8_4_chanxy_out[66];
    assign wire_6879 = lut_tile_8_4_chanxy_out[67];
    assign wire_6880 = lut_tile_8_4_chanxy_out[68];
    assign wire_6881 = lut_tile_8_4_chanxy_out[69];
    assign wire_6882 = lut_tile_8_4_chanxy_out[70];
    assign wire_6883 = lut_tile_8_4_chanxy_out[71];
    assign wire_6884 = lut_tile_8_4_chanxy_out[72];
    assign wire_6885 = lut_tile_8_4_chanxy_out[73];
    assign wire_6886 = lut_tile_8_4_chanxy_out[74];
    assign wire_6887 = lut_tile_8_4_chanxy_out[75];
    assign wire_6888 = lut_tile_8_4_chanxy_out[76];
    assign wire_6889 = lut_tile_8_4_chanxy_out[77];
    assign wire_6890 = lut_tile_8_4_chanxy_out[78];
    assign wire_6891 = lut_tile_8_4_chanxy_out[79];
    assign wire_6892 = lut_tile_8_4_chanxy_out[80];
    assign wire_6893 = lut_tile_8_4_chanxy_out[81];
    assign wire_6894 = lut_tile_8_4_chanxy_out[82];
    assign wire_6895 = lut_tile_8_4_chanxy_out[83];
   // CHANXY OUT
    assign lut_tile_8_5_chanxy_in = {wire_5515, wire_5418, wire_7062, wire_5241, wire_5239, wire_5238, wire_5231, wire_5230, wire_5223, wire_5222, wire_5146, wire_5441, wire_5440, wire_7060, wire_5263, wire_5235, wire_5234, wire_5227, wire_5226, wire_5219, wire_5218, wire_5148, wire_5503, wire_5502, wire_7058, wire_5261, wire_5211, wire_5210, wire_5203, wire_5202, wire_5195, wire_5194, wire_5150, wire_2155, wire_5525, wire_5428, wire_7056, wire_5259, wire_5187, wire_5186, wire_5179, wire_5178, wire_5171, wire_5170, wire_5152, wire_2155, wire_5451, wire_5450, wire_7054, wire_5257, wire_5215, wire_5214, wire_5207, wire_5206, wire_5199, wire_5198, wire_5154, wire_2155, wire_5487, wire_5486, wire_7052, wire_5255, wire_5191, wire_5190, wire_5183, wire_5182, wire_5175, wire_5174, wire_5156, wire_2155, wire_5509, wire_5412, wire_7050, wire_5253, wire_5237, wire_5236, wire_5229, wire_5228, wire_5221, wire_5220, wire_5158, wire_2155, wire_5435, wire_5434, wire_7048, wire_5251, wire_5233, wire_5232, wire_5225, wire_5224, wire_5217, wire_5216, wire_5160, wire_1853, wire_5497, wire_5496, wire_7046, wire_5249, wire_5209, wire_5208, wire_5201, wire_5200, wire_5193, wire_5192, wire_5162, wire_1853, wire_5519, wire_5422, wire_2155, wire_7044, wire_5247, wire_5185, wire_5184, wire_5177, wire_5176, wire_5169, wire_5168, wire_5164, wire_1853, wire_5445, wire_5444, wire_1853, wire_7042, wire_5245, wire_5213, wire_5212, wire_5205, wire_5204, wire_5197, wire_5196, wire_5166, wire_1853, wire_5481, wire_5480, wire_1853, wire_7040, wire_5243, wire_5189, wire_5188, wire_5181, wire_5180, wire_5173, wire_5172, wire_5144, wire_1853, wire_5467, wire_5466, wire_5491, wire_5490, wire_5527, wire_5430, wire_5477, wire_5476, wire_5501, wire_5500, wire_5511, wire_5414, wire_5461, wire_5460, wire_5485, wire_5484, wire_5521, wire_5424, wire_5471, wire_5470, wire_5495, wire_5494, wire_2155, wire_5505, wire_5408, wire_1853, wire_5443, wire_5442, wire_5455, wire_5454, wire_5513, wire_5416, wire_5453, wire_5452, wire_5439, wire_5438, wire_5523, wire_5426, wire_5437, wire_5436, wire_5449, wire_5448, wire_5507, wire_5410, wire_5447, wire_5446, wire_5433, wire_5432, wire_2155, wire_5517, wire_5420, wire_1853, wire_5479, wire_5478, wire_5465, wire_5464, wire_5489, wire_5488, wire_5463, wire_5462, wire_5475, wire_5474, wire_5499, wire_5498, wire_5473, wire_5472, wire_5459, wire_5458, wire_5483, wire_5482, wire_5457, wire_5456, wire_2155, wire_5469, wire_5468, wire_2155, wire_5493, wire_5492, wire_1853, wire_6894, wire_6888, wire_6882, wire_6876, wire_5400, wire_1899, wire_1890, wire_1884, wire_6870, wire_6864, wire_6858, wire_6852, wire_5392, wire_1896, wire_1890, wire_1884, wire_6846, wire_6840, wire_6834, wire_6828, wire_5384, wire_1896, wire_1890, wire_1881, wire_6822, wire_6816, wire_6810, wire_6804, wire_5376, wire_1902, wire_1896, wire_1890, wire_1881, wire_6892, wire_6886, wire_6880, wire_6874, wire_5368, wire_1902, wire_1896, wire_1887, wire_1881, wire_6868, wire_6862, wire_6856, wire_6850, wire_5360, wire_1902, wire_1896, wire_1887, wire_1881, wire_6844, wire_6838, wire_6832, wire_6826, wire_5352, wire_1902, wire_1893, wire_1887, wire_1881, wire_6820, wire_6814, wire_6808, wire_6802, wire_5344, wire_1902, wire_1893, wire_1887, wire_1852, wire_6890, wire_6884, wire_6878, wire_6872, wire_5336, wire_1899, wire_1893, wire_1887, wire_1852, wire_6866, wire_6860, wire_6854, wire_6848, wire_5328, wire_1899, wire_1893, wire_1884, wire_1852, wire_6842, wire_6836, wire_6830, wire_6824, wire_5320, wire_1899, wire_1893, wire_1884, wire_1852, wire_6818, wire_6812, wire_6806, wire_6800, wire_5312, wire_1899, wire_1890, wire_1884, wire_1852, wire_7134, wire_7128, wire_7122, wire_7116, wire_5527, wire_1899, wire_1890, wire_1884, wire_7110, wire_7104, wire_7098, wire_7092, wire_5525, wire_1896, wire_1890, wire_1884, wire_7086, wire_7080, wire_7074, wire_7068, wire_5523, wire_1896, wire_1890, wire_1881, wire_7158, wire_7152, wire_7146, wire_7140, wire_5521, wire_1902, wire_1896, wire_1890, wire_1881, wire_7132, wire_7126, wire_7120, wire_7114, wire_5519, wire_1902, wire_1896, wire_1887, wire_1881, wire_7108, wire_7102, wire_7096, wire_7090, wire_5517, wire_1902, wire_1896, wire_1887, wire_1881, wire_7084, wire_7078, wire_7072, wire_7066, wire_5515, wire_1902, wire_1893, wire_1887, wire_1881, wire_7156, wire_7150, wire_7144, wire_7138, wire_5513, wire_1902, wire_1893, wire_1887, wire_1852, wire_7130, wire_7124, wire_7118, wire_7112, wire_5511, wire_1899, wire_1893, wire_1887, wire_1852, wire_7106, wire_7100, wire_7094, wire_7088, wire_5509, wire_1899, wire_1893, wire_1884, wire_1852, wire_7082, wire_7076, wire_7070, wire_7064, wire_5507, wire_1899, wire_1893, wire_1884, wire_1852, wire_7154, wire_7148, wire_7142, wire_7136, wire_5505, wire_1899, wire_1890, wire_1884, wire_1852};
    // CHNAXY TOTAL: 434
    assign wire_5409 = lut_tile_8_5_chanxy_out[0];
    assign wire_5411 = lut_tile_8_5_chanxy_out[1];
    assign wire_5413 = lut_tile_8_5_chanxy_out[2];
    assign wire_5415 = lut_tile_8_5_chanxy_out[3];
    assign wire_5417 = lut_tile_8_5_chanxy_out[4];
    assign wire_5419 = lut_tile_8_5_chanxy_out[5];
    assign wire_5421 = lut_tile_8_5_chanxy_out[6];
    assign wire_5423 = lut_tile_8_5_chanxy_out[7];
    assign wire_5425 = lut_tile_8_5_chanxy_out[8];
    assign wire_5427 = lut_tile_8_5_chanxy_out[9];
    assign wire_5429 = lut_tile_8_5_chanxy_out[10];
    assign wire_5431 = lut_tile_8_5_chanxy_out[11];
    assign wire_5480 = lut_tile_8_5_chanxy_out[12];
    assign wire_5482 = lut_tile_8_5_chanxy_out[13];
    assign wire_5484 = lut_tile_8_5_chanxy_out[14];
    assign wire_5486 = lut_tile_8_5_chanxy_out[15];
    assign wire_5488 = lut_tile_8_5_chanxy_out[16];
    assign wire_5490 = lut_tile_8_5_chanxy_out[17];
    assign wire_5492 = lut_tile_8_5_chanxy_out[18];
    assign wire_5494 = lut_tile_8_5_chanxy_out[19];
    assign wire_5496 = lut_tile_8_5_chanxy_out[20];
    assign wire_5498 = lut_tile_8_5_chanxy_out[21];
    assign wire_5500 = lut_tile_8_5_chanxy_out[22];
    assign wire_5502 = lut_tile_8_5_chanxy_out[23];
    assign wire_7065 = lut_tile_8_5_chanxy_out[24];
    assign wire_7067 = lut_tile_8_5_chanxy_out[25];
    assign wire_7069 = lut_tile_8_5_chanxy_out[26];
    assign wire_7071 = lut_tile_8_5_chanxy_out[27];
    assign wire_7073 = lut_tile_8_5_chanxy_out[28];
    assign wire_7075 = lut_tile_8_5_chanxy_out[29];
    assign wire_7077 = lut_tile_8_5_chanxy_out[30];
    assign wire_7079 = lut_tile_8_5_chanxy_out[31];
    assign wire_7081 = lut_tile_8_5_chanxy_out[32];
    assign wire_7083 = lut_tile_8_5_chanxy_out[33];
    assign wire_7085 = lut_tile_8_5_chanxy_out[34];
    assign wire_7087 = lut_tile_8_5_chanxy_out[35];
    assign wire_7089 = lut_tile_8_5_chanxy_out[36];
    assign wire_7091 = lut_tile_8_5_chanxy_out[37];
    assign wire_7093 = lut_tile_8_5_chanxy_out[38];
    assign wire_7095 = lut_tile_8_5_chanxy_out[39];
    assign wire_7097 = lut_tile_8_5_chanxy_out[40];
    assign wire_7099 = lut_tile_8_5_chanxy_out[41];
    assign wire_7101 = lut_tile_8_5_chanxy_out[42];
    assign wire_7103 = lut_tile_8_5_chanxy_out[43];
    assign wire_7105 = lut_tile_8_5_chanxy_out[44];
    assign wire_7107 = lut_tile_8_5_chanxy_out[45];
    assign wire_7109 = lut_tile_8_5_chanxy_out[46];
    assign wire_7111 = lut_tile_8_5_chanxy_out[47];
    assign wire_7113 = lut_tile_8_5_chanxy_out[48];
    assign wire_7115 = lut_tile_8_5_chanxy_out[49];
    assign wire_7117 = lut_tile_8_5_chanxy_out[50];
    assign wire_7119 = lut_tile_8_5_chanxy_out[51];
    assign wire_7121 = lut_tile_8_5_chanxy_out[52];
    assign wire_7123 = lut_tile_8_5_chanxy_out[53];
    assign wire_7125 = lut_tile_8_5_chanxy_out[54];
    assign wire_7127 = lut_tile_8_5_chanxy_out[55];
    assign wire_7129 = lut_tile_8_5_chanxy_out[56];
    assign wire_7131 = lut_tile_8_5_chanxy_out[57];
    assign wire_7133 = lut_tile_8_5_chanxy_out[58];
    assign wire_7135 = lut_tile_8_5_chanxy_out[59];
    assign wire_7136 = lut_tile_8_5_chanxy_out[60];
    assign wire_7137 = lut_tile_8_5_chanxy_out[61];
    assign wire_7138 = lut_tile_8_5_chanxy_out[62];
    assign wire_7139 = lut_tile_8_5_chanxy_out[63];
    assign wire_7140 = lut_tile_8_5_chanxy_out[64];
    assign wire_7141 = lut_tile_8_5_chanxy_out[65];
    assign wire_7142 = lut_tile_8_5_chanxy_out[66];
    assign wire_7143 = lut_tile_8_5_chanxy_out[67];
    assign wire_7144 = lut_tile_8_5_chanxy_out[68];
    assign wire_7145 = lut_tile_8_5_chanxy_out[69];
    assign wire_7146 = lut_tile_8_5_chanxy_out[70];
    assign wire_7147 = lut_tile_8_5_chanxy_out[71];
    assign wire_7148 = lut_tile_8_5_chanxy_out[72];
    assign wire_7149 = lut_tile_8_5_chanxy_out[73];
    assign wire_7150 = lut_tile_8_5_chanxy_out[74];
    assign wire_7151 = lut_tile_8_5_chanxy_out[75];
    assign wire_7152 = lut_tile_8_5_chanxy_out[76];
    assign wire_7153 = lut_tile_8_5_chanxy_out[77];
    assign wire_7154 = lut_tile_8_5_chanxy_out[78];
    assign wire_7155 = lut_tile_8_5_chanxy_out[79];
    assign wire_7156 = lut_tile_8_5_chanxy_out[80];
    assign wire_7157 = lut_tile_8_5_chanxy_out[81];
    assign wire_7158 = lut_tile_8_5_chanxy_out[82];
    assign wire_7159 = lut_tile_8_5_chanxy_out[83];
   // CHANXY OUT
    assign lut_tile_8_6_chanxy_in = {wire_5479, wire_5478, wire_7326, wire_5265, wire_5235, wire_5234, wire_5227, wire_5226, wire_5219, wire_5218, wire_5170, wire_5465, wire_5464, wire_7324, wire_5287, wire_5239, wire_5238, wire_5231, wire_5230, wire_5223, wire_5222, wire_5172, wire_5489, wire_5488, wire_7322, wire_5285, wire_5211, wire_5210, wire_5203, wire_5202, wire_5195, wire_5194, wire_5174, wire_2459, wire_5463, wire_5462, wire_7320, wire_5283, wire_5215, wire_5214, wire_5207, wire_5206, wire_5199, wire_5198, wire_5176, wire_2459, wire_5475, wire_5474, wire_7318, wire_5281, wire_5259, wire_5258, wire_5251, wire_5250, wire_5243, wire_5242, wire_5178, wire_2459, wire_5499, wire_5498, wire_7316, wire_5279, wire_5263, wire_5262, wire_5255, wire_5254, wire_5247, wire_5246, wire_5180, wire_2459, wire_5473, wire_5472, wire_7314, wire_5277, wire_5233, wire_5232, wire_5225, wire_5224, wire_5217, wire_5216, wire_5182, wire_2459, wire_5459, wire_5458, wire_7312, wire_5275, wire_5237, wire_5236, wire_5229, wire_5228, wire_5221, wire_5220, wire_5184, wire_2157, wire_5483, wire_5482, wire_7310, wire_5273, wire_5209, wire_5208, wire_5201, wire_5200, wire_5193, wire_5192, wire_5186, wire_2157, wire_5457, wire_5456, wire_2459, wire_7308, wire_5271, wire_5213, wire_5212, wire_5205, wire_5204, wire_5197, wire_5196, wire_5188, wire_2157, wire_5469, wire_5468, wire_2459, wire_7306, wire_5269, wire_5257, wire_5256, wire_5249, wire_5248, wire_5241, wire_5240, wire_5190, wire_2157, wire_5493, wire_5492, wire_2157, wire_7304, wire_5267, wire_5261, wire_5260, wire_5253, wire_5252, wire_5245, wire_5244, wire_5168, wire_2157, wire_5515, wire_5514, wire_5537, wire_5440, wire_5503, wire_5502, wire_5525, wire_5524, wire_5547, wire_5450, wire_5487, wire_5486, wire_5509, wire_5508, wire_5531, wire_5434, wire_5497, wire_5496, wire_5519, wire_5518, wire_2459, wire_5541, wire_5444, wire_2157, wire_5481, wire_5480, wire_2157, wire_5467, wire_5466, wire_5491, wire_5490, wire_5527, wire_5526, wire_5477, wire_5476, wire_5501, wire_5500, wire_5511, wire_5510, wire_5461, wire_5460, wire_5485, wire_5484, wire_5521, wire_5520, wire_5471, wire_5470, wire_5495, wire_5494, wire_2459, wire_5505, wire_5504, wire_2157, wire_5539, wire_5442, wire_5551, wire_5454, wire_5513, wire_5512, wire_5549, wire_5452, wire_5535, wire_5438, wire_5523, wire_5522, wire_5533, wire_5436, wire_5545, wire_5448, wire_5507, wire_5506, wire_5543, wire_5446, wire_5529, wire_5432, wire_2459, wire_5517, wire_5516, wire_2157, wire_7134, wire_7128, wire_7122, wire_7116, wire_5430, wire_2203, wire_2194, wire_2188, wire_7110, wire_7104, wire_7098, wire_7092, wire_5428, wire_2200, wire_2194, wire_2188, wire_7086, wire_7080, wire_7074, wire_7068, wire_5426, wire_2200, wire_2194, wire_2185, wire_7158, wire_7152, wire_7146, wire_7140, wire_5424, wire_2206, wire_2200, wire_2194, wire_2185, wire_7132, wire_7126, wire_7120, wire_7114, wire_5422, wire_2206, wire_2200, wire_2191, wire_2185, wire_7108, wire_7102, wire_7096, wire_7090, wire_5420, wire_2206, wire_2200, wire_2191, wire_2185, wire_7084, wire_7078, wire_7072, wire_7066, wire_5418, wire_2206, wire_2197, wire_2191, wire_2185, wire_7156, wire_7150, wire_7144, wire_7138, wire_5416, wire_2206, wire_2197, wire_2191, wire_2156, wire_7130, wire_7124, wire_7118, wire_7112, wire_5414, wire_2203, wire_2197, wire_2191, wire_2156, wire_7106, wire_7100, wire_7094, wire_7088, wire_5412, wire_2203, wire_2197, wire_2188, wire_2156, wire_7082, wire_7076, wire_7070, wire_7064, wire_5410, wire_2203, wire_2197, wire_2188, wire_2156, wire_7154, wire_7148, wire_7142, wire_7136, wire_5408, wire_2203, wire_2194, wire_2188, wire_2156, wire_7374, wire_7368, wire_7362, wire_7356, wire_5551, wire_2203, wire_2194, wire_2188, wire_7350, wire_7344, wire_7338, wire_7332, wire_5549, wire_2200, wire_2194, wire_2188, wire_7422, wire_7416, wire_7410, wire_7404, wire_5547, wire_2200, wire_2194, wire_2185, wire_7398, wire_7392, wire_7386, wire_7380, wire_5545, wire_2206, wire_2200, wire_2194, wire_2185, wire_7372, wire_7366, wire_7360, wire_7354, wire_5543, wire_2206, wire_2200, wire_2191, wire_2185, wire_7348, wire_7342, wire_7336, wire_7330, wire_5541, wire_2206, wire_2200, wire_2191, wire_2185, wire_7420, wire_7414, wire_7408, wire_7402, wire_5539, wire_2206, wire_2197, wire_2191, wire_2185, wire_7396, wire_7390, wire_7384, wire_7378, wire_5537, wire_2206, wire_2197, wire_2191, wire_2156, wire_7370, wire_7364, wire_7358, wire_7352, wire_5535, wire_2203, wire_2197, wire_2191, wire_2156, wire_7346, wire_7340, wire_7334, wire_7328, wire_5533, wire_2203, wire_2197, wire_2188, wire_2156, wire_7418, wire_7412, wire_7406, wire_7400, wire_5531, wire_2203, wire_2197, wire_2188, wire_2156, wire_7394, wire_7388, wire_7382, wire_7376, wire_5529, wire_2203, wire_2194, wire_2188, wire_2156};
    // CHNAXY TOTAL: 434
    assign wire_5433 = lut_tile_8_6_chanxy_out[0];
    assign wire_5435 = lut_tile_8_6_chanxy_out[1];
    assign wire_5437 = lut_tile_8_6_chanxy_out[2];
    assign wire_5439 = lut_tile_8_6_chanxy_out[3];
    assign wire_5441 = lut_tile_8_6_chanxy_out[4];
    assign wire_5443 = lut_tile_8_6_chanxy_out[5];
    assign wire_5445 = lut_tile_8_6_chanxy_out[6];
    assign wire_5447 = lut_tile_8_6_chanxy_out[7];
    assign wire_5449 = lut_tile_8_6_chanxy_out[8];
    assign wire_5451 = lut_tile_8_6_chanxy_out[9];
    assign wire_5453 = lut_tile_8_6_chanxy_out[10];
    assign wire_5455 = lut_tile_8_6_chanxy_out[11];
    assign wire_5504 = lut_tile_8_6_chanxy_out[12];
    assign wire_5506 = lut_tile_8_6_chanxy_out[13];
    assign wire_5508 = lut_tile_8_6_chanxy_out[14];
    assign wire_5510 = lut_tile_8_6_chanxy_out[15];
    assign wire_5512 = lut_tile_8_6_chanxy_out[16];
    assign wire_5514 = lut_tile_8_6_chanxy_out[17];
    assign wire_5516 = lut_tile_8_6_chanxy_out[18];
    assign wire_5518 = lut_tile_8_6_chanxy_out[19];
    assign wire_5520 = lut_tile_8_6_chanxy_out[20];
    assign wire_5522 = lut_tile_8_6_chanxy_out[21];
    assign wire_5524 = lut_tile_8_6_chanxy_out[22];
    assign wire_5526 = lut_tile_8_6_chanxy_out[23];
    assign wire_7329 = lut_tile_8_6_chanxy_out[24];
    assign wire_7331 = lut_tile_8_6_chanxy_out[25];
    assign wire_7333 = lut_tile_8_6_chanxy_out[26];
    assign wire_7335 = lut_tile_8_6_chanxy_out[27];
    assign wire_7337 = lut_tile_8_6_chanxy_out[28];
    assign wire_7339 = lut_tile_8_6_chanxy_out[29];
    assign wire_7341 = lut_tile_8_6_chanxy_out[30];
    assign wire_7343 = lut_tile_8_6_chanxy_out[31];
    assign wire_7345 = lut_tile_8_6_chanxy_out[32];
    assign wire_7347 = lut_tile_8_6_chanxy_out[33];
    assign wire_7349 = lut_tile_8_6_chanxy_out[34];
    assign wire_7351 = lut_tile_8_6_chanxy_out[35];
    assign wire_7353 = lut_tile_8_6_chanxy_out[36];
    assign wire_7355 = lut_tile_8_6_chanxy_out[37];
    assign wire_7357 = lut_tile_8_6_chanxy_out[38];
    assign wire_7359 = lut_tile_8_6_chanxy_out[39];
    assign wire_7361 = lut_tile_8_6_chanxy_out[40];
    assign wire_7363 = lut_tile_8_6_chanxy_out[41];
    assign wire_7365 = lut_tile_8_6_chanxy_out[42];
    assign wire_7367 = lut_tile_8_6_chanxy_out[43];
    assign wire_7369 = lut_tile_8_6_chanxy_out[44];
    assign wire_7371 = lut_tile_8_6_chanxy_out[45];
    assign wire_7373 = lut_tile_8_6_chanxy_out[46];
    assign wire_7375 = lut_tile_8_6_chanxy_out[47];
    assign wire_7377 = lut_tile_8_6_chanxy_out[48];
    assign wire_7379 = lut_tile_8_6_chanxy_out[49];
    assign wire_7381 = lut_tile_8_6_chanxy_out[50];
    assign wire_7383 = lut_tile_8_6_chanxy_out[51];
    assign wire_7385 = lut_tile_8_6_chanxy_out[52];
    assign wire_7387 = lut_tile_8_6_chanxy_out[53];
    assign wire_7389 = lut_tile_8_6_chanxy_out[54];
    assign wire_7391 = lut_tile_8_6_chanxy_out[55];
    assign wire_7393 = lut_tile_8_6_chanxy_out[56];
    assign wire_7395 = lut_tile_8_6_chanxy_out[57];
    assign wire_7397 = lut_tile_8_6_chanxy_out[58];
    assign wire_7399 = lut_tile_8_6_chanxy_out[59];
    assign wire_7400 = lut_tile_8_6_chanxy_out[60];
    assign wire_7401 = lut_tile_8_6_chanxy_out[61];
    assign wire_7402 = lut_tile_8_6_chanxy_out[62];
    assign wire_7403 = lut_tile_8_6_chanxy_out[63];
    assign wire_7404 = lut_tile_8_6_chanxy_out[64];
    assign wire_7405 = lut_tile_8_6_chanxy_out[65];
    assign wire_7406 = lut_tile_8_6_chanxy_out[66];
    assign wire_7407 = lut_tile_8_6_chanxy_out[67];
    assign wire_7408 = lut_tile_8_6_chanxy_out[68];
    assign wire_7409 = lut_tile_8_6_chanxy_out[69];
    assign wire_7410 = lut_tile_8_6_chanxy_out[70];
    assign wire_7411 = lut_tile_8_6_chanxy_out[71];
    assign wire_7412 = lut_tile_8_6_chanxy_out[72];
    assign wire_7413 = lut_tile_8_6_chanxy_out[73];
    assign wire_7414 = lut_tile_8_6_chanxy_out[74];
    assign wire_7415 = lut_tile_8_6_chanxy_out[75];
    assign wire_7416 = lut_tile_8_6_chanxy_out[76];
    assign wire_7417 = lut_tile_8_6_chanxy_out[77];
    assign wire_7418 = lut_tile_8_6_chanxy_out[78];
    assign wire_7419 = lut_tile_8_6_chanxy_out[79];
    assign wire_7420 = lut_tile_8_6_chanxy_out[80];
    assign wire_7421 = lut_tile_8_6_chanxy_out[81];
    assign wire_7422 = lut_tile_8_6_chanxy_out[82];
    assign wire_7423 = lut_tile_8_6_chanxy_out[83];
   // CHANXY OUT
    assign lut_tile_8_7_chanxy_in = {wire_5539, wire_5538, wire_7590, wire_5289, wire_5235, wire_5234, wire_5227, wire_5226, wire_5219, wire_5218, wire_5194, wire_5551, wire_5550, wire_7588, wire_5311, wire_5283, wire_5282, wire_5275, wire_5274, wire_5267, wire_5266, wire_5196, wire_5513, wire_5512, wire_7586, wire_5309, wire_5239, wire_5238, wire_5231, wire_5230, wire_5223, wire_5222, wire_5198, wire_2763, wire_5549, wire_5548, wire_7584, wire_5307, wire_5287, wire_5286, wire_5279, wire_5278, wire_5271, wire_5270, wire_5200, wire_2763, wire_5535, wire_5534, wire_7582, wire_5305, wire_5263, wire_5262, wire_5255, wire_5254, wire_5247, wire_5246, wire_5202, wire_2763, wire_5523, wire_5522, wire_7580, wire_5303, wire_5259, wire_5258, wire_5251, wire_5250, wire_5243, wire_5242, wire_5204, wire_2763, wire_5533, wire_5532, wire_7578, wire_5301, wire_5233, wire_5232, wire_5225, wire_5224, wire_5217, wire_5216, wire_5206, wire_2763, wire_5545, wire_5544, wire_7576, wire_5299, wire_5281, wire_5280, wire_5273, wire_5272, wire_5265, wire_5264, wire_5208, wire_2461, wire_5507, wire_5506, wire_7574, wire_5297, wire_5237, wire_5236, wire_5229, wire_5228, wire_5221, wire_5220, wire_5210, wire_2461, wire_5543, wire_5542, wire_7572, wire_5295, wire_5285, wire_5284, wire_5277, wire_5276, wire_5269, wire_5268, wire_5212, wire_2461, wire_5529, wire_5528, wire_2763, wire_7570, wire_5293, wire_5261, wire_5260, wire_5253, wire_5252, wire_5245, wire_5244, wire_5214, wire_2461, wire_5517, wire_5516, wire_2461, wire_7568, wire_5291, wire_5257, wire_5256, wire_5249, wire_5248, wire_5241, wire_5240, wire_5192, wire_2461, wire_5575, wire_5478, wire_5561, wire_5464, wire_5489, wire_5488, wire_5559, wire_5462, wire_5571, wire_5474, wire_5499, wire_5498, wire_5569, wire_5472, wire_5555, wire_5458, wire_5483, wire_5482, wire_5553, wire_5456, wire_2763, wire_5565, wire_5468, wire_2763, wire_5493, wire_5492, wire_2461, wire_5515, wire_5514, wire_5537, wire_5536, wire_5503, wire_5502, wire_5525, wire_5524, wire_5547, wire_5546, wire_5487, wire_5486, wire_5509, wire_5508, wire_5531, wire_5530, wire_5497, wire_5496, wire_5519, wire_5518, wire_2763, wire_5541, wire_5540, wire_2461, wire_5481, wire_5480, wire_2461, wire_5563, wire_5466, wire_5491, wire_5490, wire_5527, wire_5526, wire_5573, wire_5476, wire_5501, wire_5500, wire_5511, wire_5510, wire_5557, wire_5460, wire_5485, wire_5484, wire_5521, wire_5520, wire_5567, wire_5470, wire_5495, wire_5494, wire_2763, wire_5505, wire_5504, wire_2461, wire_7374, wire_7368, wire_7362, wire_7356, wire_5454, wire_2507, wire_2498, wire_2492, wire_7350, wire_7344, wire_7338, wire_7332, wire_5452, wire_2504, wire_2498, wire_2492, wire_7422, wire_7416, wire_7410, wire_7404, wire_5450, wire_2504, wire_2498, wire_2489, wire_7398, wire_7392, wire_7386, wire_7380, wire_5448, wire_2510, wire_2504, wire_2498, wire_2489, wire_7372, wire_7366, wire_7360, wire_7354, wire_5446, wire_2510, wire_2504, wire_2495, wire_2489, wire_7348, wire_7342, wire_7336, wire_7330, wire_5444, wire_2510, wire_2504, wire_2495, wire_2489, wire_7420, wire_7414, wire_7408, wire_7402, wire_5442, wire_2510, wire_2501, wire_2495, wire_2489, wire_7396, wire_7390, wire_7384, wire_7378, wire_5440, wire_2510, wire_2501, wire_2495, wire_2460, wire_7370, wire_7364, wire_7358, wire_7352, wire_5438, wire_2507, wire_2501, wire_2495, wire_2460, wire_7346, wire_7340, wire_7334, wire_7328, wire_5436, wire_2507, wire_2501, wire_2492, wire_2460, wire_7418, wire_7412, wire_7406, wire_7400, wire_5434, wire_2507, wire_2501, wire_2492, wire_2460, wire_7394, wire_7388, wire_7382, wire_7376, wire_5432, wire_2507, wire_2498, wire_2492, wire_2460, wire_7614, wire_7608, wire_7602, wire_7596, wire_5575, wire_2507, wire_2498, wire_2492, wire_7686, wire_7680, wire_7674, wire_7668, wire_5573, wire_2504, wire_2498, wire_2492, wire_7662, wire_7656, wire_7650, wire_7644, wire_5571, wire_2504, wire_2498, wire_2489, wire_7638, wire_7632, wire_7626, wire_7620, wire_5569, wire_2510, wire_2504, wire_2498, wire_2489, wire_7612, wire_7606, wire_7600, wire_7594, wire_5567, wire_2510, wire_2504, wire_2495, wire_2489, wire_7684, wire_7678, wire_7672, wire_7666, wire_5565, wire_2510, wire_2504, wire_2495, wire_2489, wire_7660, wire_7654, wire_7648, wire_7642, wire_5563, wire_2510, wire_2501, wire_2495, wire_2489, wire_7636, wire_7630, wire_7624, wire_7618, wire_5561, wire_2510, wire_2501, wire_2495, wire_2460, wire_7610, wire_7604, wire_7598, wire_7592, wire_5559, wire_2507, wire_2501, wire_2495, wire_2460, wire_7682, wire_7676, wire_7670, wire_7664, wire_5557, wire_2507, wire_2501, wire_2492, wire_2460, wire_7658, wire_7652, wire_7646, wire_7640, wire_5555, wire_2507, wire_2501, wire_2492, wire_2460, wire_7634, wire_7628, wire_7622, wire_7616, wire_5553, wire_2507, wire_2498, wire_2492, wire_2460};
    // CHNAXY TOTAL: 434
    assign wire_5457 = lut_tile_8_7_chanxy_out[0];
    assign wire_5459 = lut_tile_8_7_chanxy_out[1];
    assign wire_5461 = lut_tile_8_7_chanxy_out[2];
    assign wire_5463 = lut_tile_8_7_chanxy_out[3];
    assign wire_5465 = lut_tile_8_7_chanxy_out[4];
    assign wire_5467 = lut_tile_8_7_chanxy_out[5];
    assign wire_5469 = lut_tile_8_7_chanxy_out[6];
    assign wire_5471 = lut_tile_8_7_chanxy_out[7];
    assign wire_5473 = lut_tile_8_7_chanxy_out[8];
    assign wire_5475 = lut_tile_8_7_chanxy_out[9];
    assign wire_5477 = lut_tile_8_7_chanxy_out[10];
    assign wire_5479 = lut_tile_8_7_chanxy_out[11];
    assign wire_5528 = lut_tile_8_7_chanxy_out[12];
    assign wire_5530 = lut_tile_8_7_chanxy_out[13];
    assign wire_5532 = lut_tile_8_7_chanxy_out[14];
    assign wire_5534 = lut_tile_8_7_chanxy_out[15];
    assign wire_5536 = lut_tile_8_7_chanxy_out[16];
    assign wire_5538 = lut_tile_8_7_chanxy_out[17];
    assign wire_5540 = lut_tile_8_7_chanxy_out[18];
    assign wire_5542 = lut_tile_8_7_chanxy_out[19];
    assign wire_5544 = lut_tile_8_7_chanxy_out[20];
    assign wire_5546 = lut_tile_8_7_chanxy_out[21];
    assign wire_5548 = lut_tile_8_7_chanxy_out[22];
    assign wire_5550 = lut_tile_8_7_chanxy_out[23];
    assign wire_7593 = lut_tile_8_7_chanxy_out[24];
    assign wire_7595 = lut_tile_8_7_chanxy_out[25];
    assign wire_7597 = lut_tile_8_7_chanxy_out[26];
    assign wire_7599 = lut_tile_8_7_chanxy_out[27];
    assign wire_7601 = lut_tile_8_7_chanxy_out[28];
    assign wire_7603 = lut_tile_8_7_chanxy_out[29];
    assign wire_7605 = lut_tile_8_7_chanxy_out[30];
    assign wire_7607 = lut_tile_8_7_chanxy_out[31];
    assign wire_7609 = lut_tile_8_7_chanxy_out[32];
    assign wire_7611 = lut_tile_8_7_chanxy_out[33];
    assign wire_7613 = lut_tile_8_7_chanxy_out[34];
    assign wire_7615 = lut_tile_8_7_chanxy_out[35];
    assign wire_7617 = lut_tile_8_7_chanxy_out[36];
    assign wire_7619 = lut_tile_8_7_chanxy_out[37];
    assign wire_7621 = lut_tile_8_7_chanxy_out[38];
    assign wire_7623 = lut_tile_8_7_chanxy_out[39];
    assign wire_7625 = lut_tile_8_7_chanxy_out[40];
    assign wire_7627 = lut_tile_8_7_chanxy_out[41];
    assign wire_7629 = lut_tile_8_7_chanxy_out[42];
    assign wire_7631 = lut_tile_8_7_chanxy_out[43];
    assign wire_7633 = lut_tile_8_7_chanxy_out[44];
    assign wire_7635 = lut_tile_8_7_chanxy_out[45];
    assign wire_7637 = lut_tile_8_7_chanxy_out[46];
    assign wire_7639 = lut_tile_8_7_chanxy_out[47];
    assign wire_7641 = lut_tile_8_7_chanxy_out[48];
    assign wire_7643 = lut_tile_8_7_chanxy_out[49];
    assign wire_7645 = lut_tile_8_7_chanxy_out[50];
    assign wire_7647 = lut_tile_8_7_chanxy_out[51];
    assign wire_7649 = lut_tile_8_7_chanxy_out[52];
    assign wire_7651 = lut_tile_8_7_chanxy_out[53];
    assign wire_7653 = lut_tile_8_7_chanxy_out[54];
    assign wire_7655 = lut_tile_8_7_chanxy_out[55];
    assign wire_7657 = lut_tile_8_7_chanxy_out[56];
    assign wire_7659 = lut_tile_8_7_chanxy_out[57];
    assign wire_7661 = lut_tile_8_7_chanxy_out[58];
    assign wire_7663 = lut_tile_8_7_chanxy_out[59];
    assign wire_7664 = lut_tile_8_7_chanxy_out[60];
    assign wire_7665 = lut_tile_8_7_chanxy_out[61];
    assign wire_7666 = lut_tile_8_7_chanxy_out[62];
    assign wire_7667 = lut_tile_8_7_chanxy_out[63];
    assign wire_7668 = lut_tile_8_7_chanxy_out[64];
    assign wire_7669 = lut_tile_8_7_chanxy_out[65];
    assign wire_7670 = lut_tile_8_7_chanxy_out[66];
    assign wire_7671 = lut_tile_8_7_chanxy_out[67];
    assign wire_7672 = lut_tile_8_7_chanxy_out[68];
    assign wire_7673 = lut_tile_8_7_chanxy_out[69];
    assign wire_7674 = lut_tile_8_7_chanxy_out[70];
    assign wire_7675 = lut_tile_8_7_chanxy_out[71];
    assign wire_7676 = lut_tile_8_7_chanxy_out[72];
    assign wire_7677 = lut_tile_8_7_chanxy_out[73];
    assign wire_7678 = lut_tile_8_7_chanxy_out[74];
    assign wire_7679 = lut_tile_8_7_chanxy_out[75];
    assign wire_7680 = lut_tile_8_7_chanxy_out[76];
    assign wire_7681 = lut_tile_8_7_chanxy_out[77];
    assign wire_7682 = lut_tile_8_7_chanxy_out[78];
    assign wire_7683 = lut_tile_8_7_chanxy_out[79];
    assign wire_7684 = lut_tile_8_7_chanxy_out[80];
    assign wire_7685 = lut_tile_8_7_chanxy_out[81];
    assign wire_7686 = lut_tile_8_7_chanxy_out[82];
    assign wire_7687 = lut_tile_8_7_chanxy_out[83];
   // CHANXY OUT
    assign lut_tile_8_8_chanxy_in = {wire_5480, wire_7854, wire_5238, wire_5232, wire_5226, wire_5220, wire_3195, wire_3186, wire_3180, wire_5502, wire_3198, wire_7852, wire_5310, wire_5304, wire_5298, wire_5292, wire_3192, wire_3186, wire_3180, wire_5500, wire_3195, wire_7850, wire_5286, wire_5280, wire_5274, wire_5268, wire_3192, wire_3186, wire_3177, wire_5498, wire_3195, wire_7848, wire_5262, wire_5256, wire_5250, wire_5244, wire_3198, wire_3192, wire_3186, wire_3177, wire_5496, wire_3192, wire_7846, wire_5236, wire_5230, wire_5224, wire_5218, wire_3198, wire_3192, wire_3183, wire_3177, wire_5494, wire_3189, wire_7844, wire_5308, wire_5302, wire_5296, wire_5290, wire_3198, wire_3192, wire_3183, wire_3177, wire_5492, wire_3186, wire_7842, wire_5284, wire_5278, wire_5272, wire_5266, wire_3198, wire_3189, wire_3183, wire_3177, wire_5490, wire_3183, wire_7840, wire_5260, wire_5254, wire_5248, wire_5242, wire_3198, wire_3189, wire_3183, wire_2765, wire_5488, wire_3183, wire_7838, wire_5234, wire_5228, wire_5222, wire_5216, wire_3195, wire_3189, wire_3183, wire_2765, wire_5486, wire_3180, wire_7836, wire_5306, wire_5300, wire_5294, wire_5288, wire_3195, wire_3189, wire_3180, wire_2765, wire_5484, wire_3177, wire_7834, wire_5282, wire_5276, wire_5270, wire_5264, wire_3195, wire_3189, wire_3180, wire_2765, wire_5482, wire_2765, wire_7832, wire_5258, wire_5252, wire_5246, wire_5240, wire_3195, wire_3186, wire_3180, wire_2765, wire_5574, wire_5572, wire_3198, wire_5570, wire_3195, wire_5568, wire_3192, wire_5566, wire_3192, wire_5564, wire_3189, wire_5562, wire_3186, wire_5560, wire_3183, wire_5558, wire_3180, wire_5556, wire_3180, wire_5554, wire_3177, wire_5552, wire_2765, wire_5550, wire_5548, wire_3198, wire_5546, wire_3195, wire_5544, wire_3192, wire_5542, wire_3189, wire_5540, wire_3189, wire_5538, wire_3186, wire_5536, wire_3183, wire_5534, wire_3180, wire_5532, wire_3177, wire_5530, wire_3177, wire_5528, wire_2765, wire_5526, wire_3198, wire_5524, wire_3198, wire_5522, wire_3195, wire_5520, wire_3192, wire_5518, wire_3189, wire_5516, wire_3186, wire_5514, wire_3186, wire_5512, wire_3183, wire_5510, wire_3180, wire_5508, wire_3177, wire_5506, wire_2765, wire_5504, wire_2765, wire_7926, wire_7614, wire_7608, wire_7602, wire_7596, wire_5478, wire_2811, wire_2802, wire_2796, wire_7924, wire_2814, wire_7686, wire_7680, wire_7674, wire_7668, wire_5476, wire_2808, wire_2802, wire_2796, wire_7922, wire_2811, wire_7662, wire_7656, wire_7650, wire_7644, wire_5474, wire_2808, wire_2802, wire_2793, wire_7920, wire_2811, wire_7638, wire_7632, wire_7626, wire_7620, wire_5472, wire_2814, wire_2808, wire_2802, wire_2793, wire_7918, wire_2808, wire_7612, wire_7606, wire_7600, wire_7594, wire_5470, wire_2814, wire_2808, wire_2799, wire_2793, wire_7916, wire_2805, wire_7684, wire_7678, wire_7672, wire_7666, wire_5468, wire_2814, wire_2808, wire_2799, wire_2793, wire_7914, wire_2802, wire_7660, wire_7654, wire_7648, wire_7642, wire_5466, wire_2814, wire_2805, wire_2799, wire_2793, wire_7912, wire_2799, wire_7636, wire_7630, wire_7624, wire_7618, wire_5464, wire_2814, wire_2805, wire_2799, wire_2764, wire_7910, wire_2799, wire_7610, wire_7604, wire_7598, wire_7592, wire_5462, wire_2811, wire_2805, wire_2799, wire_2764, wire_7908, wire_2796, wire_7682, wire_7676, wire_7670, wire_7664, wire_5460, wire_2811, wire_2805, wire_2796, wire_2764, wire_7906, wire_2793, wire_7658, wire_7652, wire_7646, wire_7640, wire_5458, wire_2811, wire_2805, wire_2796, wire_2764, wire_7904, wire_2764, wire_7634, wire_7628, wire_7622, wire_7616, wire_5456, wire_2811, wire_2802, wire_2796, wire_2764, wire_7902, wire_7900, wire_2814, wire_7898, wire_2811, wire_7896, wire_2808, wire_7894, wire_2808, wire_7892, wire_2805, wire_7890, wire_2802, wire_7888, wire_2799, wire_7886, wire_2796, wire_7884, wire_2796, wire_7882, wire_2793, wire_7880, wire_2764, wire_7878, wire_7876, wire_2814, wire_7874, wire_2811, wire_7872, wire_2808, wire_7870, wire_2805, wire_7868, wire_2805, wire_7866, wire_2802, wire_7864, wire_2799, wire_7862, wire_2796, wire_7860, wire_2793, wire_7858, wire_2793, wire_7856, wire_2764, wire_7948, wire_2814, wire_7946, wire_2814, wire_7944, wire_2811, wire_7942, wire_2808, wire_7940, wire_2805, wire_7938, wire_2802, wire_7936, wire_2802, wire_7934, wire_2799, wire_7932, wire_2796, wire_7930, wire_2793, wire_7928, wire_2764, wire_7950, wire_2764};
    // CHNAXY TOTAL: 396
    assign wire_5481 = lut_tile_8_8_chanxy_out[0];
    assign wire_5483 = lut_tile_8_8_chanxy_out[1];
    assign wire_5485 = lut_tile_8_8_chanxy_out[2];
    assign wire_5487 = lut_tile_8_8_chanxy_out[3];
    assign wire_5489 = lut_tile_8_8_chanxy_out[4];
    assign wire_5491 = lut_tile_8_8_chanxy_out[5];
    assign wire_5493 = lut_tile_8_8_chanxy_out[6];
    assign wire_5495 = lut_tile_8_8_chanxy_out[7];
    assign wire_5497 = lut_tile_8_8_chanxy_out[8];
    assign wire_5499 = lut_tile_8_8_chanxy_out[9];
    assign wire_5501 = lut_tile_8_8_chanxy_out[10];
    assign wire_5503 = lut_tile_8_8_chanxy_out[11];
    assign wire_5505 = lut_tile_8_8_chanxy_out[12];
    assign wire_5507 = lut_tile_8_8_chanxy_out[13];
    assign wire_5509 = lut_tile_8_8_chanxy_out[14];
    assign wire_5511 = lut_tile_8_8_chanxy_out[15];
    assign wire_5513 = lut_tile_8_8_chanxy_out[16];
    assign wire_5515 = lut_tile_8_8_chanxy_out[17];
    assign wire_5517 = lut_tile_8_8_chanxy_out[18];
    assign wire_5519 = lut_tile_8_8_chanxy_out[19];
    assign wire_5521 = lut_tile_8_8_chanxy_out[20];
    assign wire_5523 = lut_tile_8_8_chanxy_out[21];
    assign wire_5525 = lut_tile_8_8_chanxy_out[22];
    assign wire_5527 = lut_tile_8_8_chanxy_out[23];
    assign wire_5529 = lut_tile_8_8_chanxy_out[24];
    assign wire_5531 = lut_tile_8_8_chanxy_out[25];
    assign wire_5533 = lut_tile_8_8_chanxy_out[26];
    assign wire_5535 = lut_tile_8_8_chanxy_out[27];
    assign wire_5537 = lut_tile_8_8_chanxy_out[28];
    assign wire_5539 = lut_tile_8_8_chanxy_out[29];
    assign wire_5541 = lut_tile_8_8_chanxy_out[30];
    assign wire_5543 = lut_tile_8_8_chanxy_out[31];
    assign wire_5545 = lut_tile_8_8_chanxy_out[32];
    assign wire_5547 = lut_tile_8_8_chanxy_out[33];
    assign wire_5549 = lut_tile_8_8_chanxy_out[34];
    assign wire_5551 = lut_tile_8_8_chanxy_out[35];
    assign wire_5552 = lut_tile_8_8_chanxy_out[36];
    assign wire_5553 = lut_tile_8_8_chanxy_out[37];
    assign wire_5554 = lut_tile_8_8_chanxy_out[38];
    assign wire_5555 = lut_tile_8_8_chanxy_out[39];
    assign wire_5556 = lut_tile_8_8_chanxy_out[40];
    assign wire_5557 = lut_tile_8_8_chanxy_out[41];
    assign wire_5558 = lut_tile_8_8_chanxy_out[42];
    assign wire_5559 = lut_tile_8_8_chanxy_out[43];
    assign wire_5560 = lut_tile_8_8_chanxy_out[44];
    assign wire_5561 = lut_tile_8_8_chanxy_out[45];
    assign wire_5562 = lut_tile_8_8_chanxy_out[46];
    assign wire_5563 = lut_tile_8_8_chanxy_out[47];
    assign wire_5564 = lut_tile_8_8_chanxy_out[48];
    assign wire_5565 = lut_tile_8_8_chanxy_out[49];
    assign wire_5566 = lut_tile_8_8_chanxy_out[50];
    assign wire_5567 = lut_tile_8_8_chanxy_out[51];
    assign wire_5568 = lut_tile_8_8_chanxy_out[52];
    assign wire_5569 = lut_tile_8_8_chanxy_out[53];
    assign wire_5570 = lut_tile_8_8_chanxy_out[54];
    assign wire_5571 = lut_tile_8_8_chanxy_out[55];
    assign wire_5572 = lut_tile_8_8_chanxy_out[56];
    assign wire_5573 = lut_tile_8_8_chanxy_out[57];
    assign wire_5574 = lut_tile_8_8_chanxy_out[58];
    assign wire_5575 = lut_tile_8_8_chanxy_out[59];
    assign wire_7857 = lut_tile_8_8_chanxy_out[60];
    assign wire_7859 = lut_tile_8_8_chanxy_out[61];
    assign wire_7861 = lut_tile_8_8_chanxy_out[62];
    assign wire_7863 = lut_tile_8_8_chanxy_out[63];
    assign wire_7865 = lut_tile_8_8_chanxy_out[64];
    assign wire_7867 = lut_tile_8_8_chanxy_out[65];
    assign wire_7869 = lut_tile_8_8_chanxy_out[66];
    assign wire_7871 = lut_tile_8_8_chanxy_out[67];
    assign wire_7873 = lut_tile_8_8_chanxy_out[68];
    assign wire_7875 = lut_tile_8_8_chanxy_out[69];
    assign wire_7877 = lut_tile_8_8_chanxy_out[70];
    assign wire_7879 = lut_tile_8_8_chanxy_out[71];
    assign wire_7881 = lut_tile_8_8_chanxy_out[72];
    assign wire_7883 = lut_tile_8_8_chanxy_out[73];
    assign wire_7885 = lut_tile_8_8_chanxy_out[74];
    assign wire_7887 = lut_tile_8_8_chanxy_out[75];
    assign wire_7889 = lut_tile_8_8_chanxy_out[76];
    assign wire_7891 = lut_tile_8_8_chanxy_out[77];
    assign wire_7893 = lut_tile_8_8_chanxy_out[78];
    assign wire_7895 = lut_tile_8_8_chanxy_out[79];
    assign wire_7897 = lut_tile_8_8_chanxy_out[80];
    assign wire_7899 = lut_tile_8_8_chanxy_out[81];
    assign wire_7901 = lut_tile_8_8_chanxy_out[82];
    assign wire_7903 = lut_tile_8_8_chanxy_out[83];
    assign wire_7905 = lut_tile_8_8_chanxy_out[84];
    assign wire_7907 = lut_tile_8_8_chanxy_out[85];
    assign wire_7909 = lut_tile_8_8_chanxy_out[86];
    assign wire_7911 = lut_tile_8_8_chanxy_out[87];
    assign wire_7913 = lut_tile_8_8_chanxy_out[88];
    assign wire_7915 = lut_tile_8_8_chanxy_out[89];
    assign wire_7917 = lut_tile_8_8_chanxy_out[90];
    assign wire_7919 = lut_tile_8_8_chanxy_out[91];
    assign wire_7921 = lut_tile_8_8_chanxy_out[92];
    assign wire_7923 = lut_tile_8_8_chanxy_out[93];
    assign wire_7925 = lut_tile_8_8_chanxy_out[94];
    assign wire_7927 = lut_tile_8_8_chanxy_out[95];
    assign wire_7928 = lut_tile_8_8_chanxy_out[96];
    assign wire_7929 = lut_tile_8_8_chanxy_out[97];
    assign wire_7930 = lut_tile_8_8_chanxy_out[98];
    assign wire_7931 = lut_tile_8_8_chanxy_out[99];
    assign wire_7932 = lut_tile_8_8_chanxy_out[100];
    assign wire_7933 = lut_tile_8_8_chanxy_out[101];
    assign wire_7934 = lut_tile_8_8_chanxy_out[102];
    assign wire_7935 = lut_tile_8_8_chanxy_out[103];
    assign wire_7936 = lut_tile_8_8_chanxy_out[104];
    assign wire_7937 = lut_tile_8_8_chanxy_out[105];
    assign wire_7938 = lut_tile_8_8_chanxy_out[106];
    assign wire_7939 = lut_tile_8_8_chanxy_out[107];
    assign wire_7940 = lut_tile_8_8_chanxy_out[108];
    assign wire_7941 = lut_tile_8_8_chanxy_out[109];
    assign wire_7942 = lut_tile_8_8_chanxy_out[110];
    assign wire_7943 = lut_tile_8_8_chanxy_out[111];
    assign wire_7944 = lut_tile_8_8_chanxy_out[112];
    assign wire_7945 = lut_tile_8_8_chanxy_out[113];
    assign wire_7946 = lut_tile_8_8_chanxy_out[114];
    assign wire_7947 = lut_tile_8_8_chanxy_out[115];
    assign wire_7948 = lut_tile_8_8_chanxy_out[116];
    assign wire_7949 = lut_tile_8_8_chanxy_out[117];
    assign wire_7950 = lut_tile_8_8_chanxy_out[118];
    assign wire_7951 = lut_tile_8_8_chanxy_out[119];
   // CHANXY OUT
    // FPGA IO IPIN
    assign io_tile_1_0_ipin_in = {wire_5671, wire_5670, wire_5651, wire_5650, wire_5631, wire_5630, wire_5613, wire_5612, wire_5593, wire_5592, wire_5667, wire_5666, wire_5649, wire_5648, wire_5629, wire_5628, wire_5611, wire_5610, wire_5591, wire_5590, wire_5665, wire_5664, wire_5647, wire_5646, wire_5627, wire_5626, wire_5607, wire_5606, wire_5589, wire_5588, wire_5663, wire_5662, wire_5643, wire_5642, wire_5625, wire_5624, wire_5605, wire_5604, wire_5587, wire_5586, wire_5661, wire_5660, wire_5641, wire_5640, wire_5623, wire_5622, wire_5603, wire_5602, wire_5583, wire_5582, wire_5659, wire_5658, wire_5639, wire_5638, wire_5619, wire_5618, wire_5601, wire_5600, wire_5581, wire_5580, wire_5655, wire_5654, wire_5637, wire_5636, wire_5617, wire_5616, wire_5599, wire_5598, wire_5579, wire_5578, wire_5653, wire_5652, wire_5635, wire_5634, wire_5615, wire_5614, wire_5595, wire_5594, wire_5577, wire_5576};
    // FPGA IPIN IN
    assign io_tile_2_0_ipin_in = {wire_5681, wire_5680, wire_5669, wire_5668, wire_5649, wire_5648, wire_5629, wire_5628, wire_5599, wire_5598, wire_5685, wire_5684, wire_5665, wire_5664, wire_5655, wire_5654, wire_5609, wire_5608, wire_5589, wire_5588, wire_5675, wire_5674, wire_5671, wire_5670, wire_5645, wire_5644, wire_5625, wire_5624, wire_5605, wire_5604, wire_5679, wire_5678, wire_5661, wire_5660, wire_5641, wire_5640, wire_5631, wire_5630, wire_5585, wire_5584, wire_5693, wire_5692, wire_5647, wire_5646, wire_5621, wire_5620, wire_5601, wire_5600, wire_5581, wire_5580, wire_5673, wire_5672, wire_5657, wire_5656, wire_5637, wire_5636, wire_5617, wire_5616, wire_5607, wire_5606, wire_5687, wire_5686, wire_5653, wire_5652, wire_5623, wire_5622, wire_5597, wire_5596, wire_5577, wire_5576, wire_5691, wire_5690, wire_5633, wire_5632, wire_5613, wire_5612, wire_5593, wire_5592, wire_5583, wire_5582};
    // FPGA IPIN IN
    assign io_tile_3_0_ipin_in = {wire_5701, wire_5700, wire_5695, wire_5694, wire_5685, wire_5684, wire_5655, wire_5654, wire_5609, wire_5608, wire_5715, wire_5714, wire_5675, wire_5674, wire_5671, wire_5670, wire_5625, wire_5624, wire_5615, wire_5614, wire_5719, wire_5718, wire_5689, wire_5688, wire_5679, wire_5678, wire_5631, wire_5630, wire_5585, wire_5584, wire_5709, wire_5708, wire_5693, wire_5692, wire_5647, wire_5646, wire_5601, wire_5600, wire_5591, wire_5590, wire_5713, wire_5712, wire_5683, wire_5682, wire_5673, wire_5672, wire_5657, wire_5656, wire_5607, wire_5606, wire_5703, wire_5702, wire_5687, wire_5686, wire_5663, wire_5662, wire_5623, wire_5622, wire_5577, wire_5576, wire_5707, wire_5706, wire_5691, wire_5690, wire_5677, wire_5676, wire_5633, wire_5632, wire_5583, wire_5582, wire_5697, wire_5696, wire_5681, wire_5680, wire_5649, wire_5648, wire_5639, wire_5638, wire_5599, wire_5598};
    // FPGA IPIN IN
    assign io_tile_4_0_ipin_in = {wire_5729, wire_5728, wire_5715, wire_5714, wire_5677, wire_5676, wire_5665, wire_5664, wire_5625, wire_5624, wire_5733, wire_5732, wire_5719, wire_5718, wire_5705, wire_5704, wire_5691, wire_5690, wire_5585, wire_5584, wire_5723, wire_5722, wire_5709, wire_5708, wire_5695, wire_5694, wire_5641, wire_5640, wire_5601, wire_5600, wire_5727, wire_5726, wire_5713, wire_5712, wire_5699, wire_5698, wire_5685, wire_5684, wire_5657, wire_5656, wire_5741, wire_5740, wire_5703, wire_5702, wire_5689, wire_5688, wire_5617, wire_5616, wire_5577, wire_5576, wire_5721, wire_5720, wire_5717, wire_5716, wire_5707, wire_5706, wire_5679, wire_5678, wire_5633, wire_5632, wire_5735, wire_5734, wire_5697, wire_5696, wire_5683, wire_5682, wire_5649, wire_5648, wire_5593, wire_5592, wire_5739, wire_5738, wire_5711, wire_5710, wire_5701, wire_5700, wire_5673, wire_5672, wire_5609, wire_5608};
    // FPGA IPIN IN
    assign io_tile_5_0_ipin_in = {wire_5749, wire_5748, wire_5743, wire_5742, wire_5733, wire_5732, wire_5705, wire_5704, wire_5691, wire_5690, wire_5763, wire_5762, wire_5723, wire_5722, wire_5709, wire_5708, wire_5695, wire_5694, wire_5681, wire_5680, wire_5767, wire_5766, wire_5737, wire_5736, wire_5727, wire_5726, wire_5699, wire_5698, wire_5685, wire_5684, wire_5757, wire_5756, wire_5741, wire_5740, wire_5703, wire_5702, wire_5689, wire_5688, wire_5675, wire_5674, wire_5761, wire_5760, wire_5731, wire_5730, wire_5721, wire_5720, wire_5717, wire_5716, wire_5679, wire_5678, wire_5751, wire_5750, wire_5735, wire_5734, wire_5697, wire_5696, wire_5693, wire_5692, wire_5683, wire_5682, wire_5755, wire_5754, wire_5739, wire_5738, wire_5725, wire_5724, wire_5711, wire_5710, wire_5673, wire_5672, wire_5745, wire_5744, wire_5729, wire_5728, wire_5715, wire_5714, wire_5687, wire_5686, wire_5677, wire_5676};
    // FPGA IPIN IN
    assign io_tile_6_0_ipin_in = {wire_5777, wire_5776, wire_5763, wire_5762, wire_5725, wire_5724, wire_5719, wire_5718, wire_5709, wire_5708, wire_5781, wire_5780, wire_5767, wire_5766, wire_5753, wire_5752, wire_5739, wire_5738, wire_5699, wire_5698, wire_5771, wire_5770, wire_5757, wire_5756, wire_5743, wire_5742, wire_5713, wire_5712, wire_5703, wire_5702, wire_5775, wire_5774, wire_5761, wire_5760, wire_5747, wire_5746, wire_5733, wire_5732, wire_5717, wire_5716, wire_5789, wire_5788, wire_5751, wire_5750, wire_5737, wire_5736, wire_5707, wire_5706, wire_5697, wire_5696, wire_5769, wire_5768, wire_5765, wire_5764, wire_5755, wire_5754, wire_5727, wire_5726, wire_5711, wire_5710, wire_5783, wire_5782, wire_5745, wire_5744, wire_5731, wire_5730, wire_5715, wire_5714, wire_5701, wire_5700, wire_5787, wire_5786, wire_5759, wire_5758, wire_5749, wire_5748, wire_5721, wire_5720, wire_5705, wire_5704};
    // FPGA IPIN IN
    assign io_tile_7_0_ipin_in = {wire_5797, wire_5796, wire_5791, wire_5790, wire_5781, wire_5780, wire_5753, wire_5752, wire_5739, wire_5738, wire_5811, wire_5810, wire_5771, wire_5770, wire_5757, wire_5756, wire_5743, wire_5742, wire_5729, wire_5728, wire_5815, wire_5814, wire_5785, wire_5784, wire_5775, wire_5774, wire_5747, wire_5746, wire_5733, wire_5732, wire_5805, wire_5804, wire_5789, wire_5788, wire_5751, wire_5750, wire_5737, wire_5736, wire_5723, wire_5722, wire_5809, wire_5808, wire_5779, wire_5778, wire_5769, wire_5768, wire_5765, wire_5764, wire_5727, wire_5726, wire_5799, wire_5798, wire_5783, wire_5782, wire_5745, wire_5744, wire_5741, wire_5740, wire_5731, wire_5730, wire_5803, wire_5802, wire_5787, wire_5786, wire_5773, wire_5772, wire_5759, wire_5758, wire_5721, wire_5720, wire_5793, wire_5792, wire_5777, wire_5776, wire_5763, wire_5762, wire_5735, wire_5734, wire_5725, wire_5724};
    // FPGA IPIN IN
    assign io_tile_8_0_ipin_in = {wire_5825, wire_5824, wire_5811, wire_5810, wire_5773, wire_5772, wire_5767, wire_5766, wire_5757, wire_5756, wire_5829, wire_5828, wire_5815, wire_5814, wire_5801, wire_5800, wire_5787, wire_5786, wire_5747, wire_5746, wire_5819, wire_5818, wire_5805, wire_5804, wire_5791, wire_5790, wire_5761, wire_5760, wire_5751, wire_5750, wire_5823, wire_5822, wire_5809, wire_5808, wire_5795, wire_5794, wire_5781, wire_5780, wire_5765, wire_5764, wire_5837, wire_5836, wire_5799, wire_5798, wire_5785, wire_5784, wire_5755, wire_5754, wire_5745, wire_5744, wire_5817, wire_5816, wire_5813, wire_5812, wire_5803, wire_5802, wire_5775, wire_5774, wire_5759, wire_5758, wire_5831, wire_5830, wire_5793, wire_5792, wire_5779, wire_5778, wire_5763, wire_5762, wire_5749, wire_5748, wire_5835, wire_5834, wire_5807, wire_5806, wire_5797, wire_5796, wire_5769, wire_5768, wire_5753, wire_5752};
    // FPGA IPIN IN
    assign io_tile_1_9_ipin_in = {wire_7783, wire_7782, wire_7765, wire_7764, wire_7745, wire_7744, wire_7725, wire_7724, wire_7707, wire_7706, wire_7781, wire_7780, wire_7761, wire_7760, wire_7743, wire_7742, wire_7723, wire_7722, wire_7705, wire_7704, wire_7779, wire_7778, wire_7759, wire_7758, wire_7741, wire_7740, wire_7721, wire_7720, wire_7701, wire_7700, wire_7777, wire_7776, wire_7757, wire_7756, wire_7737, wire_7736, wire_7719, wire_7718, wire_7699, wire_7698, wire_7773, wire_7772, wire_7755, wire_7754, wire_7735, wire_7734, wire_7717, wire_7716, wire_7697, wire_7696, wire_7771, wire_7770, wire_7753, wire_7752, wire_7733, wire_7732, wire_7713, wire_7712, wire_7695, wire_7694, wire_7769, wire_7768, wire_7749, wire_7748, wire_7731, wire_7730, wire_7711, wire_7710, wire_7693, wire_7692, wire_7767, wire_7766, wire_7747, wire_7746, wire_7729, wire_7728, wire_7709, wire_7708, wire_7689, wire_7688};
    // FPGA IPIN IN
    assign io_tile_2_9_ipin_in = {wire_7803, wire_7802, wire_7793, wire_7792, wire_7781, wire_7780, wire_7751, wire_7750, wire_7705, wire_7704, wire_7807, wire_7806, wire_7767, wire_7766, wire_7741, wire_7740, wire_7721, wire_7720, wire_7711, wire_7710, wire_7797, wire_7796, wire_7787, wire_7786, wire_7777, wire_7776, wire_7757, wire_7756, wire_7727, wire_7726, wire_7801, wire_7800, wire_7783, wire_7782, wire_7743, wire_7742, wire_7717, wire_7716, wire_7697, wire_7696, wire_7805, wire_7804, wire_7791, wire_7790, wire_7753, wire_7752, wire_7733, wire_7732, wire_7703, wire_7702, wire_7795, wire_7794, wire_7769, wire_7768, wire_7759, wire_7758, wire_7719, wire_7718, wire_7693, wire_7692, wire_7799, wire_7798, wire_7785, wire_7784, wire_7775, wire_7774, wire_7729, wire_7728, wire_7709, wire_7708, wire_7789, wire_7788, wire_7765, wire_7764, wire_7745, wire_7744, wire_7735, wire_7734, wire_7695, wire_7694};
    // FPGA IPIN IN
    assign io_tile_3_9_ipin_in = {wire_7823, wire_7822, wire_7807, wire_7806, wire_7761, wire_7760, wire_7721, wire_7720, wire_7711, wire_7710, wire_7827, wire_7826, wire_7813, wire_7812, wire_7797, wire_7796, wire_7777, wire_7776, wire_7727, wire_7726, wire_7817, wire_7816, wire_7801, wire_7800, wire_7783, wire_7782, wire_7737, wire_7736, wire_7697, wire_7696, wire_7831, wire_7830, wire_7821, wire_7820, wire_7791, wire_7790, wire_7753, wire_7752, wire_7703, wire_7702, wire_7811, wire_7810, wire_7795, wire_7794, wire_7769, wire_7768, wire_7759, wire_7758, wire_7713, wire_7712, wire_7825, wire_7824, wire_7815, wire_7814, wire_7785, wire_7784, wire_7775, wire_7774, wire_7729, wire_7728, wire_7829, wire_7828, wire_7789, wire_7788, wire_7745, wire_7744, wire_7735, wire_7734, wire_7689, wire_7688, wire_7819, wire_7818, wire_7809, wire_7808, wire_7803, wire_7802, wire_7751, wire_7750, wire_7705, wire_7704};
    // FPGA IPIN IN
    assign io_tile_4_9_ipin_in = {wire_7851, wire_7850, wire_7841, wire_7840, wire_7813, wire_7812, wire_7799, wire_7798, wire_7777, wire_7776, wire_7855, wire_7854, wire_7817, wire_7816, wire_7803, wire_7802, wire_7789, wire_7788, wire_7737, wire_7736, wire_7845, wire_7844, wire_7835, wire_7834, wire_7831, wire_7830, wire_7793, wire_7792, wire_7753, wire_7752, wire_7849, wire_7848, wire_7811, wire_7810, wire_7807, wire_7806, wire_7797, wire_7796, wire_7713, wire_7712, wire_7853, wire_7852, wire_7839, wire_7838, wire_7825, wire_7824, wire_7787, wire_7786, wire_7729, wire_7728, wire_7843, wire_7842, wire_7829, wire_7828, wire_7801, wire_7800, wire_7791, wire_7790, wire_7689, wire_7688, wire_7847, wire_7846, wire_7833, wire_7832, wire_7819, wire_7818, wire_7805, wire_7804, wire_7705, wire_7704, wire_7837, wire_7836, wire_7823, wire_7822, wire_7795, wire_7794, wire_7785, wire_7784, wire_7761, wire_7760};
    // FPGA IPIN IN
    assign io_tile_5_9_ipin_in = {wire_7871, wire_7870, wire_7855, wire_7854, wire_7827, wire_7826, wire_7817, wire_7816, wire_7789, wire_7788, wire_7875, wire_7874, wire_7861, wire_7860, wire_7845, wire_7844, wire_7831, wire_7830, wire_7793, wire_7792, wire_7865, wire_7864, wire_7849, wire_7848, wire_7821, wire_7820, wire_7811, wire_7810, wire_7807, wire_7806, wire_7879, wire_7878, wire_7869, wire_7868, wire_7839, wire_7838, wire_7825, wire_7824, wire_7787, wire_7786, wire_7859, wire_7858, wire_7843, wire_7842, wire_7829, wire_7828, wire_7815, wire_7814, wire_7801, wire_7800, wire_7873, wire_7872, wire_7863, wire_7862, wire_7833, wire_7832, wire_7819, wire_7818, wire_7805, wire_7804, wire_7877, wire_7876, wire_7837, wire_7836, wire_7823, wire_7822, wire_7809, wire_7808, wire_7795, wire_7794, wire_7867, wire_7866, wire_7857, wire_7856, wire_7851, wire_7850, wire_7813, wire_7812, wire_7799, wire_7798};
    // FPGA IPIN IN
    assign io_tile_6_9_ipin_in = {wire_7899, wire_7898, wire_7889, wire_7888, wire_7861, wire_7860, wire_7847, wire_7846, wire_7831, wire_7830, wire_7903, wire_7902, wire_7865, wire_7864, wire_7851, wire_7850, wire_7837, wire_7836, wire_7821, wire_7820, wire_7893, wire_7892, wire_7883, wire_7882, wire_7879, wire_7878, wire_7841, wire_7840, wire_7825, wire_7824, wire_7897, wire_7896, wire_7859, wire_7858, wire_7855, wire_7854, wire_7845, wire_7844, wire_7815, wire_7814, wire_7901, wire_7900, wire_7887, wire_7886, wire_7873, wire_7872, wire_7835, wire_7834, wire_7819, wire_7818, wire_7891, wire_7890, wire_7877, wire_7876, wire_7849, wire_7848, wire_7839, wire_7838, wire_7809, wire_7808, wire_7895, wire_7894, wire_7881, wire_7880, wire_7867, wire_7866, wire_7853, wire_7852, wire_7813, wire_7812, wire_7885, wire_7884, wire_7871, wire_7870, wire_7843, wire_7842, wire_7833, wire_7832, wire_7827, wire_7826};
    // FPGA IPIN IN
    assign io_tile_7_9_ipin_in = {wire_7919, wire_7918, wire_7903, wire_7902, wire_7875, wire_7874, wire_7865, wire_7864, wire_7837, wire_7836, wire_7923, wire_7922, wire_7909, wire_7908, wire_7893, wire_7892, wire_7879, wire_7878, wire_7841, wire_7840, wire_7913, wire_7912, wire_7897, wire_7896, wire_7869, wire_7868, wire_7859, wire_7858, wire_7855, wire_7854, wire_7927, wire_7926, wire_7917, wire_7916, wire_7887, wire_7886, wire_7873, wire_7872, wire_7835, wire_7834, wire_7907, wire_7906, wire_7891, wire_7890, wire_7877, wire_7876, wire_7863, wire_7862, wire_7849, wire_7848, wire_7921, wire_7920, wire_7911, wire_7910, wire_7881, wire_7880, wire_7867, wire_7866, wire_7853, wire_7852, wire_7925, wire_7924, wire_7885, wire_7884, wire_7871, wire_7870, wire_7857, wire_7856, wire_7843, wire_7842, wire_7915, wire_7914, wire_7905, wire_7904, wire_7899, wire_7898, wire_7861, wire_7860, wire_7847, wire_7846};
    // FPGA IPIN IN
    assign io_tile_8_9_ipin_in = {wire_7947, wire_7946, wire_7937, wire_7936, wire_7909, wire_7908, wire_7895, wire_7894, wire_7879, wire_7878, wire_7951, wire_7950, wire_7913, wire_7912, wire_7899, wire_7898, wire_7885, wire_7884, wire_7869, wire_7868, wire_7941, wire_7940, wire_7931, wire_7930, wire_7927, wire_7926, wire_7889, wire_7888, wire_7873, wire_7872, wire_7945, wire_7944, wire_7907, wire_7906, wire_7903, wire_7902, wire_7893, wire_7892, wire_7863, wire_7862, wire_7949, wire_7948, wire_7935, wire_7934, wire_7921, wire_7920, wire_7883, wire_7882, wire_7867, wire_7866, wire_7939, wire_7938, wire_7925, wire_7924, wire_7897, wire_7896, wire_7887, wire_7886, wire_7857, wire_7856, wire_7943, wire_7942, wire_7929, wire_7928, wire_7915, wire_7914, wire_7901, wire_7900, wire_7861, wire_7860, wire_7933, wire_7932, wire_7919, wire_7918, wire_7891, wire_7890, wire_7881, wire_7880, wire_7875, wire_7874};
    // FPGA IPIN IN
    assign io_tile_0_1_ipin_in = {wire_3293, wire_3292, wire_3275, wire_3274, wire_3255, wire_3254, wire_3237, wire_3236, wire_3217, wire_3216, wire_3291, wire_3290, wire_3273, wire_3272, wire_3253, wire_3252, wire_3233, wire_3232, wire_3215, wire_3214, wire_3289, wire_3288, wire_3269, wire_3268, wire_3251, wire_3250, wire_3231, wire_3230, wire_3213, wire_3212, wire_3287, wire_3286, wire_3267, wire_3266, wire_3249, wire_3248, wire_3229, wire_3228, wire_3209, wire_3208, wire_3285, wire_3284, wire_3265, wire_3264, wire_3245, wire_3244, wire_3227, wire_3226, wire_3207, wire_3206, wire_3281, wire_3280, wire_3263, wire_3262, wire_3243, wire_3242, wire_3225, wire_3224, wire_3205, wire_3204, wire_3279, wire_3278, wire_3261, wire_3260, wire_3241, wire_3240, wire_3221, wire_3220, wire_3203, wire_3202, wire_3277, wire_3276, wire_3257, wire_3256, wire_3239, wire_3238, wire_3219, wire_3218, wire_3201, wire_3200};
    // FPGA IPIN IN
    assign io_tile_0_2_ipin_in = {wire_3319, wire_3318, wire_3305, wire_3304, wire_3273, wire_3272, wire_3253, wire_3252, wire_3223, wire_3222, wire_3309, wire_3308, wire_3289, wire_3288, wire_3279, wire_3278, wire_3239, wire_3238, wire_3213, wire_3212, wire_3313, wire_3312, wire_3299, wire_3298, wire_3295, wire_3294, wire_3249, wire_3248, wire_3229, wire_3228, wire_3303, wire_3302, wire_3285, wire_3284, wire_3265, wire_3264, wire_3255, wire_3254, wire_3215, wire_3214, wire_3317, wire_3316, wire_3307, wire_3306, wire_3271, wire_3270, wire_3225, wire_3224, wire_3205, wire_3204, wire_3297, wire_3296, wire_3287, wire_3286, wire_3261, wire_3260, wire_3241, wire_3240, wire_3231, wire_3230, wire_3311, wire_3310, wire_3301, wire_3300, wire_3277, wire_3276, wire_3247, wire_3246, wire_3201, wire_3200, wire_3315, wire_3314, wire_3263, wire_3262, wire_3237, wire_3236, wire_3217, wire_3216, wire_3207, wire_3206};
    // FPGA IPIN IN
    assign io_tile_0_3_ipin_in = {wire_3325, wire_3324, wire_3309, wire_3308, wire_3289, wire_3288, wire_3279, wire_3278, wire_3233, wire_3232, wire_3339, wire_3338, wire_3329, wire_3328, wire_3299, wire_3298, wire_3295, wire_3294, wire_3249, wire_3248, wire_3343, wire_3342, wire_3303, wire_3302, wire_3265, wire_3264, wire_3255, wire_3254, wire_3209, wire_3208, wire_3333, wire_3332, wire_3323, wire_3322, wire_3317, wire_3316, wire_3271, wire_3270, wire_3225, wire_3224, wire_3337, wire_3336, wire_3297, wire_3296, wire_3281, wire_3280, wire_3241, wire_3240, wire_3231, wire_3230, wire_3341, wire_3340, wire_3327, wire_3326, wire_3311, wire_3310, wire_3247, wire_3246, wire_3201, wire_3200, wire_3331, wire_3330, wire_3315, wire_3314, wire_3257, wire_3256, wire_3217, wire_3216, wire_3207, wire_3206, wire_3335, wire_3334, wire_3321, wire_3320, wire_3305, wire_3304, wire_3273, wire_3272, wire_3223, wire_3222};
    // FPGA IPIN IN
    assign io_tile_0_4_ipin_in = {wire_3367, wire_3366, wire_3353, wire_3352, wire_3339, wire_3338, wire_3301, wire_3300, wire_3249, wire_3248, wire_3357, wire_3356, wire_3343, wire_3342, wire_3315, wire_3314, wire_3305, wire_3304, wire_3209, wire_3208, wire_3361, wire_3360, wire_3347, wire_3346, wire_3333, wire_3332, wire_3319, wire_3318, wire_3225, wire_3224, wire_3351, wire_3350, wire_3337, wire_3336, wire_3309, wire_3308, wire_3299, wire_3298, wire_3281, wire_3280, wire_3365, wire_3364, wire_3355, wire_3354, wire_3327, wire_3326, wire_3313, wire_3312, wire_3201, wire_3200, wire_3345, wire_3344, wire_3331, wire_3330, wire_3317, wire_3316, wire_3303, wire_3302, wire_3257, wire_3256, wire_3359, wire_3358, wire_3349, wire_3348, wire_3321, wire_3320, wire_3307, wire_3306, wire_3273, wire_3272, wire_3363, wire_3362, wire_3325, wire_3324, wire_3311, wire_3310, wire_3297, wire_3296, wire_3233, wire_3232};
    // FPGA IPIN IN
    assign io_tile_0_5_ipin_in = {wire_3373, wire_3372, wire_3357, wire_3356, wire_3343, wire_3342, wire_3329, wire_3328, wire_3315, wire_3314, wire_3387, wire_3386, wire_3377, wire_3376, wire_3347, wire_3346, wire_3333, wire_3332, wire_3319, wire_3318, wire_3391, wire_3390, wire_3351, wire_3350, wire_3337, wire_3336, wire_3323, wire_3322, wire_3309, wire_3308, wire_3381, wire_3380, wire_3371, wire_3370, wire_3365, wire_3364, wire_3327, wire_3326, wire_3313, wire_3312, wire_3385, wire_3384, wire_3345, wire_3344, wire_3341, wire_3340, wire_3331, wire_3330, wire_3303, wire_3302, wire_3389, wire_3388, wire_3375, wire_3374, wire_3359, wire_3358, wire_3321, wire_3320, wire_3307, wire_3306, wire_3379, wire_3378, wire_3363, wire_3362, wire_3335, wire_3334, wire_3325, wire_3324, wire_3297, wire_3296, wire_3383, wire_3382, wire_3369, wire_3368, wire_3353, wire_3352, wire_3339, wire_3338, wire_3301, wire_3300};
    // FPGA IPIN IN
    assign io_tile_0_6_ipin_in = {wire_3415, wire_3414, wire_3401, wire_3400, wire_3387, wire_3386, wire_3349, wire_3348, wire_3333, wire_3332, wire_3405, wire_3404, wire_3391, wire_3390, wire_3363, wire_3362, wire_3353, wire_3352, wire_3323, wire_3322, wire_3409, wire_3408, wire_3395, wire_3394, wire_3381, wire_3380, wire_3367, wire_3366, wire_3327, wire_3326, wire_3399, wire_3398, wire_3385, wire_3384, wire_3357, wire_3356, wire_3347, wire_3346, wire_3341, wire_3340, wire_3413, wire_3412, wire_3403, wire_3402, wire_3375, wire_3374, wire_3361, wire_3360, wire_3321, wire_3320, wire_3393, wire_3392, wire_3379, wire_3378, wire_3365, wire_3364, wire_3351, wire_3350, wire_3335, wire_3334, wire_3407, wire_3406, wire_3397, wire_3396, wire_3369, wire_3368, wire_3355, wire_3354, wire_3339, wire_3338, wire_3411, wire_3410, wire_3373, wire_3372, wire_3359, wire_3358, wire_3345, wire_3344, wire_3329, wire_3328};
    // FPGA IPIN IN
    assign io_tile_0_7_ipin_in = {wire_3421, wire_3420, wire_3405, wire_3404, wire_3391, wire_3390, wire_3377, wire_3376, wire_3363, wire_3362, wire_3435, wire_3434, wire_3425, wire_3424, wire_3395, wire_3394, wire_3381, wire_3380, wire_3367, wire_3366, wire_3439, wire_3438, wire_3399, wire_3398, wire_3385, wire_3384, wire_3371, wire_3370, wire_3357, wire_3356, wire_3429, wire_3428, wire_3419, wire_3418, wire_3413, wire_3412, wire_3375, wire_3374, wire_3361, wire_3360, wire_3433, wire_3432, wire_3393, wire_3392, wire_3389, wire_3388, wire_3379, wire_3378, wire_3351, wire_3350, wire_3437, wire_3436, wire_3423, wire_3422, wire_3407, wire_3406, wire_3369, wire_3368, wire_3355, wire_3354, wire_3427, wire_3426, wire_3411, wire_3410, wire_3383, wire_3382, wire_3373, wire_3372, wire_3345, wire_3344, wire_3431, wire_3430, wire_3417, wire_3416, wire_3401, wire_3400, wire_3387, wire_3386, wire_3349, wire_3348};
    // FPGA IPIN IN
    assign io_tile_0_8_ipin_in = {wire_3463, wire_3462, wire_3449, wire_3448, wire_3435, wire_3434, wire_3397, wire_3396, wire_3381, wire_3380, wire_3453, wire_3452, wire_3439, wire_3438, wire_3411, wire_3410, wire_3401, wire_3400, wire_3371, wire_3370, wire_3457, wire_3456, wire_3443, wire_3442, wire_3429, wire_3428, wire_3415, wire_3414, wire_3375, wire_3374, wire_3447, wire_3446, wire_3433, wire_3432, wire_3405, wire_3404, wire_3395, wire_3394, wire_3389, wire_3388, wire_3461, wire_3460, wire_3451, wire_3450, wire_3423, wire_3422, wire_3409, wire_3408, wire_3369, wire_3368, wire_3441, wire_3440, wire_3427, wire_3426, wire_3413, wire_3412, wire_3399, wire_3398, wire_3383, wire_3382, wire_3455, wire_3454, wire_3445, wire_3444, wire_3417, wire_3416, wire_3403, wire_3402, wire_3387, wire_3386, wire_3459, wire_3458, wire_3421, wire_3420, wire_3407, wire_3406, wire_3393, wire_3392, wire_3377, wire_3376};
    // FPGA IPIN IN
    assign io_tile_9_1_ipin_in = {wire_5407, wire_5406, wire_5387, wire_5386, wire_5369, wire_5368, wire_5349, wire_5348, wire_5331, wire_5330, wire_5405, wire_5404, wire_5385, wire_5384, wire_5367, wire_5366, wire_5347, wire_5346, wire_5327, wire_5326, wire_5403, wire_5402, wire_5383, wire_5382, wire_5363, wire_5362, wire_5345, wire_5344, wire_5325, wire_5324, wire_5399, wire_5398, wire_5381, wire_5380, wire_5361, wire_5360, wire_5343, wire_5342, wire_5323, wire_5322, wire_5397, wire_5396, wire_5379, wire_5378, wire_5359, wire_5358, wire_5339, wire_5338, wire_5321, wire_5320, wire_5395, wire_5394, wire_5375, wire_5374, wire_5357, wire_5356, wire_5337, wire_5336, wire_5319, wire_5318, wire_5393, wire_5392, wire_5373, wire_5372, wire_5355, wire_5354, wire_5335, wire_5334, wire_5315, wire_5314, wire_5391, wire_5390, wire_5371, wire_5370, wire_5351, wire_5350, wire_5333, wire_5332, wire_5313, wire_5312};
    // FPGA IPIN IN
    assign io_tile_9_2_ipin_in = {wire_5417, wire_5416, wire_5405, wire_5404, wire_5385, wire_5384, wire_5375, wire_5374, wire_5329, wire_5328, wire_5431, wire_5430, wire_5391, wire_5390, wire_5365, wire_5364, wire_5345, wire_5344, wire_5325, wire_5324, wire_5411, wire_5410, wire_5401, wire_5400, wire_5381, wire_5380, wire_5361, wire_5360, wire_5351, wire_5350, wire_5425, wire_5424, wire_5397, wire_5396, wire_5367, wire_5366, wire_5341, wire_5340, wire_5321, wire_5320, wire_5429, wire_5428, wire_5377, wire_5376, wire_5357, wire_5356, wire_5337, wire_5336, wire_5327, wire_5326, wire_5419, wire_5418, wire_5393, wire_5392, wire_5373, wire_5372, wire_5343, wire_5342, wire_5317, wire_5316, wire_5423, wire_5422, wire_5399, wire_5398, wire_5353, wire_5352, wire_5333, wire_5332, wire_5313, wire_5312, wire_5413, wire_5412, wire_5389, wire_5388, wire_5369, wire_5368, wire_5349, wire_5348, wire_5319, wire_5318};
    // FPGA IPIN IN
    assign io_tile_9_3_ipin_in = {wire_5447, wire_5446, wire_5431, wire_5430, wire_5391, wire_5390, wire_5345, wire_5344, wire_5335, wire_5334, wire_5451, wire_5450, wire_5421, wire_5420, wire_5411, wire_5410, wire_5401, wire_5400, wire_5351, wire_5350, wire_5441, wire_5440, wire_5425, wire_5424, wire_5407, wire_5406, wire_5367, wire_5366, wire_5321, wire_5320, wire_5445, wire_5444, wire_5429, wire_5428, wire_5415, wire_5414, wire_5377, wire_5376, wire_5327, wire_5326, wire_5435, wire_5434, wire_5419, wire_5418, wire_5393, wire_5392, wire_5383, wire_5382, wire_5343, wire_5342, wire_5439, wire_5438, wire_5423, wire_5422, wire_5409, wire_5408, wire_5399, wire_5398, wire_5353, wire_5352, wire_5453, wire_5452, wire_5413, wire_5412, wire_5369, wire_5368, wire_5359, wire_5358, wire_5319, wire_5318, wire_5433, wire_5432, wire_5427, wire_5426, wire_5417, wire_5416, wire_5375, wire_5374, wire_5329, wire_5328};
    // FPGA IPIN IN
    assign io_tile_9_4_ipin_in = {wire_5465, wire_5464, wire_5451, wire_5450, wire_5437, wire_5436, wire_5423, wire_5422, wire_5401, wire_5400, wire_5479, wire_5478, wire_5441, wire_5440, wire_5427, wire_5426, wire_5361, wire_5360, wire_5321, wire_5320, wire_5459, wire_5458, wire_5455, wire_5454, wire_5445, wire_5444, wire_5417, wire_5416, wire_5377, wire_5376, wire_5473, wire_5472, wire_5435, wire_5434, wire_5421, wire_5420, wire_5393, wire_5392, wire_5337, wire_5336, wire_5477, wire_5476, wire_5449, wire_5448, wire_5439, wire_5438, wire_5411, wire_5410, wire_5353, wire_5352, wire_5467, wire_5466, wire_5453, wire_5452, wire_5415, wire_5414, wire_5369, wire_5368, wire_5313, wire_5312, wire_5471, wire_5470, wire_5443, wire_5442, wire_5433, wire_5432, wire_5429, wire_5428, wire_5329, wire_5328, wire_5461, wire_5460, wire_5447, wire_5446, wire_5409, wire_5408, wire_5385, wire_5384, wire_5345, wire_5344};
    // FPGA IPIN IN
    assign io_tile_9_5_ipin_in = {wire_5495, wire_5494, wire_5479, wire_5478, wire_5441, wire_5440, wire_5427, wire_5426, wire_5413, wire_5412, wire_5499, wire_5498, wire_5469, wire_5468, wire_5459, wire_5458, wire_5455, wire_5454, wire_5417, wire_5416, wire_5489, wire_5488, wire_5473, wire_5472, wire_5435, wire_5434, wire_5431, wire_5430, wire_5421, wire_5420, wire_5493, wire_5492, wire_5477, wire_5476, wire_5463, wire_5462, wire_5449, wire_5448, wire_5411, wire_5410, wire_5483, wire_5482, wire_5467, wire_5466, wire_5453, wire_5452, wire_5425, wire_5424, wire_5415, wire_5414, wire_5487, wire_5486, wire_5471, wire_5470, wire_5457, wire_5456, wire_5443, wire_5442, wire_5429, wire_5428, wire_5501, wire_5500, wire_5461, wire_5460, wire_5447, wire_5446, wire_5419, wire_5418, wire_5409, wire_5408, wire_5481, wire_5480, wire_5475, wire_5474, wire_5465, wire_5464, wire_5437, wire_5436, wire_5423, wire_5422};
    // FPGA IPIN IN
    assign io_tile_9_6_ipin_in = {wire_5513, wire_5512, wire_5499, wire_5498, wire_5485, wire_5484, wire_5471, wire_5470, wire_5455, wire_5454, wire_5527, wire_5526, wire_5489, wire_5488, wire_5475, wire_5474, wire_5445, wire_5444, wire_5435, wire_5434, wire_5507, wire_5506, wire_5503, wire_5502, wire_5493, wire_5492, wire_5465, wire_5464, wire_5449, wire_5448, wire_5521, wire_5520, wire_5483, wire_5482, wire_5469, wire_5468, wire_5453, wire_5452, wire_5439, wire_5438, wire_5525, wire_5524, wire_5497, wire_5496, wire_5487, wire_5486, wire_5459, wire_5458, wire_5443, wire_5442, wire_5515, wire_5514, wire_5501, wire_5500, wire_5463, wire_5462, wire_5447, wire_5446, wire_5433, wire_5432, wire_5519, wire_5518, wire_5491, wire_5490, wire_5481, wire_5480, wire_5477, wire_5476, wire_5437, wire_5436, wire_5509, wire_5508, wire_5495, wire_5494, wire_5457, wire_5456, wire_5451, wire_5450, wire_5441, wire_5440};
    // FPGA IPIN IN
    assign io_tile_9_7_ipin_in = {wire_5543, wire_5542, wire_5527, wire_5526, wire_5489, wire_5488, wire_5475, wire_5474, wire_5461, wire_5460, wire_5547, wire_5546, wire_5517, wire_5516, wire_5507, wire_5506, wire_5503, wire_5502, wire_5465, wire_5464, wire_5537, wire_5536, wire_5521, wire_5520, wire_5483, wire_5482, wire_5479, wire_5478, wire_5469, wire_5468, wire_5541, wire_5540, wire_5525, wire_5524, wire_5511, wire_5510, wire_5497, wire_5496, wire_5459, wire_5458, wire_5531, wire_5530, wire_5515, wire_5514, wire_5501, wire_5500, wire_5473, wire_5472, wire_5463, wire_5462, wire_5535, wire_5534, wire_5519, wire_5518, wire_5505, wire_5504, wire_5491, wire_5490, wire_5477, wire_5476, wire_5549, wire_5548, wire_5509, wire_5508, wire_5495, wire_5494, wire_5467, wire_5466, wire_5457, wire_5456, wire_5529, wire_5528, wire_5523, wire_5522, wire_5513, wire_5512, wire_5485, wire_5484, wire_5471, wire_5470};
    // FPGA IPIN IN
    assign io_tile_9_8_ipin_in = {wire_5561, wire_5560, wire_5547, wire_5546, wire_5533, wire_5532, wire_5519, wire_5518, wire_5503, wire_5502, wire_5575, wire_5574, wire_5537, wire_5536, wire_5523, wire_5522, wire_5493, wire_5492, wire_5483, wire_5482, wire_5555, wire_5554, wire_5551, wire_5550, wire_5541, wire_5540, wire_5513, wire_5512, wire_5497, wire_5496, wire_5569, wire_5568, wire_5531, wire_5530, wire_5517, wire_5516, wire_5501, wire_5500, wire_5487, wire_5486, wire_5573, wire_5572, wire_5545, wire_5544, wire_5535, wire_5534, wire_5507, wire_5506, wire_5491, wire_5490, wire_5563, wire_5562, wire_5549, wire_5548, wire_5511, wire_5510, wire_5495, wire_5494, wire_5481, wire_5480, wire_5567, wire_5566, wire_5539, wire_5538, wire_5529, wire_5528, wire_5525, wire_5524, wire_5485, wire_5484, wire_5557, wire_5556, wire_5543, wire_5542, wire_5505, wire_5504, wire_5499, wire_5498, wire_5489, wire_5488};
    // FPGA IPIN IN


    // FPGA IO OPIN
    assign wire_25 = io_tile_1_0_opin_out[0];
    assign wire_28 = io_tile_1_0_opin_out[1];
    assign wire_31 = io_tile_1_0_opin_out[2];
    assign wire_34 = io_tile_1_0_opin_out[3];
    assign wire_37 = io_tile_1_0_opin_out[4];
    assign wire_40 = io_tile_1_0_opin_out[5];
    assign wire_43 = io_tile_1_0_opin_out[6];
    assign wire_46 = io_tile_1_0_opin_out[7];
    assign wire_73 = io_tile_2_0_opin_out[0];
    assign wire_76 = io_tile_2_0_opin_out[1];
    assign wire_79 = io_tile_2_0_opin_out[2];
    assign wire_82 = io_tile_2_0_opin_out[3];
    assign wire_85 = io_tile_2_0_opin_out[4];
    assign wire_88 = io_tile_2_0_opin_out[5];
    assign wire_91 = io_tile_2_0_opin_out[6];
    assign wire_94 = io_tile_2_0_opin_out[7];
    assign wire_121 = io_tile_3_0_opin_out[0];
    assign wire_124 = io_tile_3_0_opin_out[1];
    assign wire_127 = io_tile_3_0_opin_out[2];
    assign wire_130 = io_tile_3_0_opin_out[3];
    assign wire_133 = io_tile_3_0_opin_out[4];
    assign wire_136 = io_tile_3_0_opin_out[5];
    assign wire_139 = io_tile_3_0_opin_out[6];
    assign wire_142 = io_tile_3_0_opin_out[7];
    assign wire_169 = io_tile_4_0_opin_out[0];
    assign wire_172 = io_tile_4_0_opin_out[1];
    assign wire_175 = io_tile_4_0_opin_out[2];
    assign wire_178 = io_tile_4_0_opin_out[3];
    assign wire_181 = io_tile_4_0_opin_out[4];
    assign wire_184 = io_tile_4_0_opin_out[5];
    assign wire_187 = io_tile_4_0_opin_out[6];
    assign wire_190 = io_tile_4_0_opin_out[7];
    assign wire_217 = io_tile_5_0_opin_out[0];
    assign wire_220 = io_tile_5_0_opin_out[1];
    assign wire_223 = io_tile_5_0_opin_out[2];
    assign wire_226 = io_tile_5_0_opin_out[3];
    assign wire_229 = io_tile_5_0_opin_out[4];
    assign wire_232 = io_tile_5_0_opin_out[5];
    assign wire_235 = io_tile_5_0_opin_out[6];
    assign wire_238 = io_tile_5_0_opin_out[7];
    assign wire_265 = io_tile_6_0_opin_out[0];
    assign wire_268 = io_tile_6_0_opin_out[1];
    assign wire_271 = io_tile_6_0_opin_out[2];
    assign wire_274 = io_tile_6_0_opin_out[3];
    assign wire_277 = io_tile_6_0_opin_out[4];
    assign wire_280 = io_tile_6_0_opin_out[5];
    assign wire_283 = io_tile_6_0_opin_out[6];
    assign wire_286 = io_tile_6_0_opin_out[7];
    assign wire_313 = io_tile_7_0_opin_out[0];
    assign wire_316 = io_tile_7_0_opin_out[1];
    assign wire_319 = io_tile_7_0_opin_out[2];
    assign wire_322 = io_tile_7_0_opin_out[3];
    assign wire_325 = io_tile_7_0_opin_out[4];
    assign wire_328 = io_tile_7_0_opin_out[5];
    assign wire_331 = io_tile_7_0_opin_out[6];
    assign wire_334 = io_tile_7_0_opin_out[7];
    assign wire_361 = io_tile_8_0_opin_out[0];
    assign wire_364 = io_tile_8_0_opin_out[1];
    assign wire_367 = io_tile_8_0_opin_out[2];
    assign wire_370 = io_tile_8_0_opin_out[3];
    assign wire_373 = io_tile_8_0_opin_out[4];
    assign wire_376 = io_tile_8_0_opin_out[5];
    assign wire_379 = io_tile_8_0_opin_out[6];
    assign wire_382 = io_tile_8_0_opin_out[7];
    assign wire_2841 = io_tile_1_9_opin_out[0];
    assign wire_2844 = io_tile_1_9_opin_out[1];
    assign wire_2847 = io_tile_1_9_opin_out[2];
    assign wire_2850 = io_tile_1_9_opin_out[3];
    assign wire_2853 = io_tile_1_9_opin_out[4];
    assign wire_2856 = io_tile_1_9_opin_out[5];
    assign wire_2859 = io_tile_1_9_opin_out[6];
    assign wire_2862 = io_tile_1_9_opin_out[7];
    assign wire_2889 = io_tile_2_9_opin_out[0];
    assign wire_2892 = io_tile_2_9_opin_out[1];
    assign wire_2895 = io_tile_2_9_opin_out[2];
    assign wire_2898 = io_tile_2_9_opin_out[3];
    assign wire_2901 = io_tile_2_9_opin_out[4];
    assign wire_2904 = io_tile_2_9_opin_out[5];
    assign wire_2907 = io_tile_2_9_opin_out[6];
    assign wire_2910 = io_tile_2_9_opin_out[7];
    assign wire_2937 = io_tile_3_9_opin_out[0];
    assign wire_2940 = io_tile_3_9_opin_out[1];
    assign wire_2943 = io_tile_3_9_opin_out[2];
    assign wire_2946 = io_tile_3_9_opin_out[3];
    assign wire_2949 = io_tile_3_9_opin_out[4];
    assign wire_2952 = io_tile_3_9_opin_out[5];
    assign wire_2955 = io_tile_3_9_opin_out[6];
    assign wire_2958 = io_tile_3_9_opin_out[7];
    assign wire_2985 = io_tile_4_9_opin_out[0];
    assign wire_2988 = io_tile_4_9_opin_out[1];
    assign wire_2991 = io_tile_4_9_opin_out[2];
    assign wire_2994 = io_tile_4_9_opin_out[3];
    assign wire_2997 = io_tile_4_9_opin_out[4];
    assign wire_3000 = io_tile_4_9_opin_out[5];
    assign wire_3003 = io_tile_4_9_opin_out[6];
    assign wire_3006 = io_tile_4_9_opin_out[7];
    assign wire_3033 = io_tile_5_9_opin_out[0];
    assign wire_3036 = io_tile_5_9_opin_out[1];
    assign wire_3039 = io_tile_5_9_opin_out[2];
    assign wire_3042 = io_tile_5_9_opin_out[3];
    assign wire_3045 = io_tile_5_9_opin_out[4];
    assign wire_3048 = io_tile_5_9_opin_out[5];
    assign wire_3051 = io_tile_5_9_opin_out[6];
    assign wire_3054 = io_tile_5_9_opin_out[7];
    assign wire_3081 = io_tile_6_9_opin_out[0];
    assign wire_3084 = io_tile_6_9_opin_out[1];
    assign wire_3087 = io_tile_6_9_opin_out[2];
    assign wire_3090 = io_tile_6_9_opin_out[3];
    assign wire_3093 = io_tile_6_9_opin_out[4];
    assign wire_3096 = io_tile_6_9_opin_out[5];
    assign wire_3099 = io_tile_6_9_opin_out[6];
    assign wire_3102 = io_tile_6_9_opin_out[7];
    assign wire_3129 = io_tile_7_9_opin_out[0];
    assign wire_3132 = io_tile_7_9_opin_out[1];
    assign wire_3135 = io_tile_7_9_opin_out[2];
    assign wire_3138 = io_tile_7_9_opin_out[3];
    assign wire_3141 = io_tile_7_9_opin_out[4];
    assign wire_3144 = io_tile_7_9_opin_out[5];
    assign wire_3147 = io_tile_7_9_opin_out[6];
    assign wire_3150 = io_tile_7_9_opin_out[7];
    assign wire_3177 = io_tile_8_9_opin_out[0];
    assign wire_3180 = io_tile_8_9_opin_out[1];
    assign wire_3183 = io_tile_8_9_opin_out[2];
    assign wire_3186 = io_tile_8_9_opin_out[3];
    assign wire_3189 = io_tile_8_9_opin_out[4];
    assign wire_3192 = io_tile_8_9_opin_out[5];
    assign wire_3195 = io_tile_8_9_opin_out[6];
    assign wire_3198 = io_tile_8_9_opin_out[7];
    assign wire_409 = io_tile_0_1_opin_out[0];
    assign wire_412 = io_tile_0_1_opin_out[1];
    assign wire_415 = io_tile_0_1_opin_out[2];
    assign wire_418 = io_tile_0_1_opin_out[3];
    assign wire_421 = io_tile_0_1_opin_out[4];
    assign wire_424 = io_tile_0_1_opin_out[5];
    assign wire_427 = io_tile_0_1_opin_out[6];
    assign wire_430 = io_tile_0_1_opin_out[7];
    assign wire_713 = io_tile_0_2_opin_out[0];
    assign wire_716 = io_tile_0_2_opin_out[1];
    assign wire_719 = io_tile_0_2_opin_out[2];
    assign wire_722 = io_tile_0_2_opin_out[3];
    assign wire_725 = io_tile_0_2_opin_out[4];
    assign wire_728 = io_tile_0_2_opin_out[5];
    assign wire_731 = io_tile_0_2_opin_out[6];
    assign wire_734 = io_tile_0_2_opin_out[7];
    assign wire_1017 = io_tile_0_3_opin_out[0];
    assign wire_1020 = io_tile_0_3_opin_out[1];
    assign wire_1023 = io_tile_0_3_opin_out[2];
    assign wire_1026 = io_tile_0_3_opin_out[3];
    assign wire_1029 = io_tile_0_3_opin_out[4];
    assign wire_1032 = io_tile_0_3_opin_out[5];
    assign wire_1035 = io_tile_0_3_opin_out[6];
    assign wire_1038 = io_tile_0_3_opin_out[7];
    assign wire_1321 = io_tile_0_4_opin_out[0];
    assign wire_1324 = io_tile_0_4_opin_out[1];
    assign wire_1327 = io_tile_0_4_opin_out[2];
    assign wire_1330 = io_tile_0_4_opin_out[3];
    assign wire_1333 = io_tile_0_4_opin_out[4];
    assign wire_1336 = io_tile_0_4_opin_out[5];
    assign wire_1339 = io_tile_0_4_opin_out[6];
    assign wire_1342 = io_tile_0_4_opin_out[7];
    assign wire_1625 = io_tile_0_5_opin_out[0];
    assign wire_1628 = io_tile_0_5_opin_out[1];
    assign wire_1631 = io_tile_0_5_opin_out[2];
    assign wire_1634 = io_tile_0_5_opin_out[3];
    assign wire_1637 = io_tile_0_5_opin_out[4];
    assign wire_1640 = io_tile_0_5_opin_out[5];
    assign wire_1643 = io_tile_0_5_opin_out[6];
    assign wire_1646 = io_tile_0_5_opin_out[7];
    assign wire_1929 = io_tile_0_6_opin_out[0];
    assign wire_1932 = io_tile_0_6_opin_out[1];
    assign wire_1935 = io_tile_0_6_opin_out[2];
    assign wire_1938 = io_tile_0_6_opin_out[3];
    assign wire_1941 = io_tile_0_6_opin_out[4];
    assign wire_1944 = io_tile_0_6_opin_out[5];
    assign wire_1947 = io_tile_0_6_opin_out[6];
    assign wire_1950 = io_tile_0_6_opin_out[7];
    assign wire_2233 = io_tile_0_7_opin_out[0];
    assign wire_2236 = io_tile_0_7_opin_out[1];
    assign wire_2239 = io_tile_0_7_opin_out[2];
    assign wire_2242 = io_tile_0_7_opin_out[3];
    assign wire_2245 = io_tile_0_7_opin_out[4];
    assign wire_2248 = io_tile_0_7_opin_out[5];
    assign wire_2251 = io_tile_0_7_opin_out[6];
    assign wire_2254 = io_tile_0_7_opin_out[7];
    assign wire_2537 = io_tile_0_8_opin_out[0];
    assign wire_2540 = io_tile_0_8_opin_out[1];
    assign wire_2543 = io_tile_0_8_opin_out[2];
    assign wire_2546 = io_tile_0_8_opin_out[3];
    assign wire_2549 = io_tile_0_8_opin_out[4];
    assign wire_2552 = io_tile_0_8_opin_out[5];
    assign wire_2555 = io_tile_0_8_opin_out[6];
    assign wire_2558 = io_tile_0_8_opin_out[7];
    assign wire_665 = io_tile_9_1_opin_out[0];
    assign wire_668 = io_tile_9_1_opin_out[1];
    assign wire_671 = io_tile_9_1_opin_out[2];
    assign wire_674 = io_tile_9_1_opin_out[3];
    assign wire_677 = io_tile_9_1_opin_out[4];
    assign wire_680 = io_tile_9_1_opin_out[5];
    assign wire_683 = io_tile_9_1_opin_out[6];
    assign wire_686 = io_tile_9_1_opin_out[7];
    assign wire_969 = io_tile_9_2_opin_out[0];
    assign wire_972 = io_tile_9_2_opin_out[1];
    assign wire_975 = io_tile_9_2_opin_out[2];
    assign wire_978 = io_tile_9_2_opin_out[3];
    assign wire_981 = io_tile_9_2_opin_out[4];
    assign wire_984 = io_tile_9_2_opin_out[5];
    assign wire_987 = io_tile_9_2_opin_out[6];
    assign wire_990 = io_tile_9_2_opin_out[7];
    assign wire_1273 = io_tile_9_3_opin_out[0];
    assign wire_1276 = io_tile_9_3_opin_out[1];
    assign wire_1279 = io_tile_9_3_opin_out[2];
    assign wire_1282 = io_tile_9_3_opin_out[3];
    assign wire_1285 = io_tile_9_3_opin_out[4];
    assign wire_1288 = io_tile_9_3_opin_out[5];
    assign wire_1291 = io_tile_9_3_opin_out[6];
    assign wire_1294 = io_tile_9_3_opin_out[7];
    assign wire_1577 = io_tile_9_4_opin_out[0];
    assign wire_1580 = io_tile_9_4_opin_out[1];
    assign wire_1583 = io_tile_9_4_opin_out[2];
    assign wire_1586 = io_tile_9_4_opin_out[3];
    assign wire_1589 = io_tile_9_4_opin_out[4];
    assign wire_1592 = io_tile_9_4_opin_out[5];
    assign wire_1595 = io_tile_9_4_opin_out[6];
    assign wire_1598 = io_tile_9_4_opin_out[7];
    assign wire_1881 = io_tile_9_5_opin_out[0];
    assign wire_1884 = io_tile_9_5_opin_out[1];
    assign wire_1887 = io_tile_9_5_opin_out[2];
    assign wire_1890 = io_tile_9_5_opin_out[3];
    assign wire_1893 = io_tile_9_5_opin_out[4];
    assign wire_1896 = io_tile_9_5_opin_out[5];
    assign wire_1899 = io_tile_9_5_opin_out[6];
    assign wire_1902 = io_tile_9_5_opin_out[7];
    assign wire_2185 = io_tile_9_6_opin_out[0];
    assign wire_2188 = io_tile_9_6_opin_out[1];
    assign wire_2191 = io_tile_9_6_opin_out[2];
    assign wire_2194 = io_tile_9_6_opin_out[3];
    assign wire_2197 = io_tile_9_6_opin_out[4];
    assign wire_2200 = io_tile_9_6_opin_out[5];
    assign wire_2203 = io_tile_9_6_opin_out[6];
    assign wire_2206 = io_tile_9_6_opin_out[7];
    assign wire_2489 = io_tile_9_7_opin_out[0];
    assign wire_2492 = io_tile_9_7_opin_out[1];
    assign wire_2495 = io_tile_9_7_opin_out[2];
    assign wire_2498 = io_tile_9_7_opin_out[3];
    assign wire_2501 = io_tile_9_7_opin_out[4];
    assign wire_2504 = io_tile_9_7_opin_out[5];
    assign wire_2507 = io_tile_9_7_opin_out[6];
    assign wire_2510 = io_tile_9_7_opin_out[7];
    assign wire_2793 = io_tile_9_8_opin_out[0];
    assign wire_2796 = io_tile_9_8_opin_out[1];
    assign wire_2799 = io_tile_9_8_opin_out[2];
    assign wire_2802 = io_tile_9_8_opin_out[3];
    assign wire_2805 = io_tile_9_8_opin_out[4];
    assign wire_2808 = io_tile_9_8_opin_out[5];
    assign wire_2811 = io_tile_9_8_opin_out[6];
    assign wire_2814 = io_tile_9_8_opin_out[7];
    // FPGA IO CHANXY
    assign io_tile_1_0_chanxy_in = {wire_3201, wire_3295, wire_5695, wire_3559, wire_3535, wire_3511, wire_3487, wire_46, wire_37, wire_31, wire_3293, wire_3291, wire_453, wire_3289, wire_453, wire_3287, wire_453, wire_5693, wire_3557, wire_3533, wire_3509, wire_3485, wire_43, wire_37, wire_31, wire_3285, wire_453, wire_3283, wire_453, wire_3281, wire_46, wire_3279, wire_46, wire_5691, wire_3555, wire_3531, wire_3507, wire_3483, wire_43, wire_37, wire_28, wire_3277, wire_46, wire_3275, wire_46, wire_3273, wire_46, wire_3271, wire_43, wire_5689, wire_3553, wire_3529, wire_3505, wire_3481, wire_453, wire_43, wire_37, wire_28, wire_3269, wire_43, wire_3267, wire_43, wire_3265, wire_43, wire_3263, wire_43, wire_5687, wire_3551, wire_3527, wire_3503, wire_3479, wire_453, wire_43, wire_34, wire_28, wire_3261, wire_40, wire_3259, wire_40, wire_3257, wire_40, wire_3255, wire_40, wire_5685, wire_3549, wire_3525, wire_3501, wire_3477, wire_453, wire_43, wire_34, wire_28, wire_3253, wire_40, wire_3251, wire_37, wire_3249, wire_37, wire_3247, wire_37, wire_5683, wire_3547, wire_3523, wire_3499, wire_3475, wire_453, wire_40, wire_34, wire_28, wire_3245, wire_37, wire_3243, wire_37, wire_3241, wire_34, wire_3239, wire_34, wire_5681, wire_3545, wire_3521, wire_3497, wire_3473, wire_453, wire_40, wire_34, wire_25, wire_3237, wire_34, wire_3235, wire_34, wire_3233, wire_34, wire_3231, wire_31, wire_5679, wire_3543, wire_3519, wire_3495, wire_3471, wire_46, wire_40, wire_34, wire_25, wire_3229, wire_31, wire_3227, wire_31, wire_3225, wire_31, wire_3223, wire_31, wire_5677, wire_3541, wire_3517, wire_3493, wire_3469, wire_46, wire_40, wire_31, wire_25, wire_3221, wire_28, wire_3219, wire_28, wire_3217, wire_28, wire_3215, wire_28, wire_5675, wire_3539, wire_3515, wire_3491, wire_3467, wire_46, wire_40, wire_31, wire_25, wire_3213, wire_28, wire_3211, wire_25, wire_3209, wire_25, wire_3207, wire_25, wire_5673, wire_3537, wire_3513, wire_3489, wire_3465, wire_46, wire_37, wire_31, wire_25, wire_3205, wire_25, wire_3203, wire_25};
    // CHNAXY TOTAL: 60
    assign wire_5576 = io_tile_1_0_chanxy_out[0];
    assign wire_5578 = io_tile_1_0_chanxy_out[1];
    assign wire_5579 = io_tile_1_0_chanxy_out[2];
    assign wire_5580 = io_tile_1_0_chanxy_out[3];
    assign wire_5582 = io_tile_1_0_chanxy_out[4];
    assign wire_5584 = io_tile_1_0_chanxy_out[5];
    assign wire_5586 = io_tile_1_0_chanxy_out[6];
    assign wire_5587 = io_tile_1_0_chanxy_out[7];
    assign wire_5588 = io_tile_1_0_chanxy_out[8];
    assign wire_5590 = io_tile_1_0_chanxy_out[9];
    assign wire_5592 = io_tile_1_0_chanxy_out[10];
    assign wire_5594 = io_tile_1_0_chanxy_out[11];
    assign wire_5595 = io_tile_1_0_chanxy_out[12];
    assign wire_5596 = io_tile_1_0_chanxy_out[13];
    assign wire_5598 = io_tile_1_0_chanxy_out[14];
    assign wire_5600 = io_tile_1_0_chanxy_out[15];
    assign wire_5602 = io_tile_1_0_chanxy_out[16];
    assign wire_5603 = io_tile_1_0_chanxy_out[17];
    assign wire_5604 = io_tile_1_0_chanxy_out[18];
    assign wire_5606 = io_tile_1_0_chanxy_out[19];
    assign wire_5608 = io_tile_1_0_chanxy_out[20];
    assign wire_5610 = io_tile_1_0_chanxy_out[21];
    assign wire_5611 = io_tile_1_0_chanxy_out[22];
    assign wire_5612 = io_tile_1_0_chanxy_out[23];
    assign wire_5614 = io_tile_1_0_chanxy_out[24];
    assign wire_5616 = io_tile_1_0_chanxy_out[25];
    assign wire_5618 = io_tile_1_0_chanxy_out[26];
    assign wire_5619 = io_tile_1_0_chanxy_out[27];
    assign wire_5620 = io_tile_1_0_chanxy_out[28];
    assign wire_5622 = io_tile_1_0_chanxy_out[29];
    assign wire_5624 = io_tile_1_0_chanxy_out[30];
    assign wire_5626 = io_tile_1_0_chanxy_out[31];
    assign wire_5627 = io_tile_1_0_chanxy_out[32];
    assign wire_5628 = io_tile_1_0_chanxy_out[33];
    assign wire_5630 = io_tile_1_0_chanxy_out[34];
    assign wire_5632 = io_tile_1_0_chanxy_out[35];
    assign wire_5634 = io_tile_1_0_chanxy_out[36];
    assign wire_5635 = io_tile_1_0_chanxy_out[37];
    assign wire_5636 = io_tile_1_0_chanxy_out[38];
    assign wire_5638 = io_tile_1_0_chanxy_out[39];
    assign wire_5640 = io_tile_1_0_chanxy_out[40];
    assign wire_5642 = io_tile_1_0_chanxy_out[41];
    assign wire_5643 = io_tile_1_0_chanxy_out[42];
    assign wire_5644 = io_tile_1_0_chanxy_out[43];
    assign wire_5646 = io_tile_1_0_chanxy_out[44];
    assign wire_5648 = io_tile_1_0_chanxy_out[45];
    assign wire_5650 = io_tile_1_0_chanxy_out[46];
    assign wire_5651 = io_tile_1_0_chanxy_out[47];
    assign wire_5652 = io_tile_1_0_chanxy_out[48];
    assign wire_5654 = io_tile_1_0_chanxy_out[49];
    assign wire_5656 = io_tile_1_0_chanxy_out[50];
    assign wire_5658 = io_tile_1_0_chanxy_out[51];
    assign wire_5659 = io_tile_1_0_chanxy_out[52];
    assign wire_5660 = io_tile_1_0_chanxy_out[53];
    assign wire_5662 = io_tile_1_0_chanxy_out[54];
    assign wire_5664 = io_tile_1_0_chanxy_out[55];
    assign wire_5666 = io_tile_1_0_chanxy_out[56];
    assign wire_5667 = io_tile_1_0_chanxy_out[57];
    assign wire_5668 = io_tile_1_0_chanxy_out[58];
    assign wire_5670 = io_tile_1_0_chanxy_out[59];
    assign io_tile_2_0_chanxy_in = {wire_5666, wire_3559, wire_3535, wire_3511, wire_3487, wire_94, wire_85, wire_79, wire_5658, wire_3557, wire_3533, wire_3509, wire_3485, wire_91, wire_85, wire_79, wire_5650, wire_3555, wire_3531, wire_3507, wire_3483, wire_91, wire_85, wire_76, wire_5642, wire_3553, wire_3529, wire_3505, wire_3481, wire_479, wire_91, wire_85, wire_76, wire_5634, wire_3551, wire_3527, wire_3503, wire_3479, wire_479, wire_91, wire_82, wire_76, wire_5626, wire_3549, wire_3525, wire_3501, wire_3477, wire_479, wire_91, wire_82, wire_76, wire_5618, wire_3547, wire_3523, wire_3499, wire_3475, wire_479, wire_88, wire_82, wire_76, wire_5610, wire_3545, wire_3521, wire_3497, wire_3473, wire_479, wire_88, wire_82, wire_73, wire_5602, wire_3543, wire_3519, wire_3495, wire_3471, wire_94, wire_88, wire_82, wire_73, wire_5594, wire_3541, wire_3517, wire_3493, wire_3469, wire_94, wire_88, wire_79, wire_73, wire_5586, wire_3539, wire_3515, wire_3491, wire_3467, wire_94, wire_88, wire_79, wire_73, wire_5578, wire_3537, wire_3513, wire_3489, wire_3465, wire_94, wire_85, wire_79, wire_73, wire_5719, wire_3823, wire_3799, wire_3775, wire_3751, wire_94, wire_85, wire_79, wire_5717, wire_3821, wire_3797, wire_3773, wire_3749, wire_91, wire_85, wire_79, wire_5715, wire_3819, wire_3795, wire_3771, wire_3747, wire_91, wire_85, wire_76, wire_5713, wire_3817, wire_3793, wire_3769, wire_3745, wire_479, wire_91, wire_85, wire_76, wire_5711, wire_3815, wire_3791, wire_3767, wire_3743, wire_479, wire_91, wire_82, wire_76, wire_5709, wire_3813, wire_3789, wire_3765, wire_3741, wire_479, wire_91, wire_82, wire_76, wire_5707, wire_3811, wire_3787, wire_3763, wire_3739, wire_479, wire_88, wire_82, wire_76, wire_5705, wire_3809, wire_3785, wire_3761, wire_3737, wire_479, wire_88, wire_82, wire_73, wire_5703, wire_3807, wire_3783, wire_3759, wire_3735, wire_94, wire_88, wire_82, wire_73, wire_5701, wire_3805, wire_3781, wire_3757, wire_3733, wire_94, wire_88, wire_79, wire_73, wire_5699, wire_3803, wire_3779, wire_3755, wire_3731, wire_94, wire_88, wire_79, wire_73, wire_5697, wire_3801, wire_3777, wire_3753, wire_3729, wire_94, wire_85, wire_79, wire_73};
    // CHNAXY TOTAL: 24
    assign wire_5581 = io_tile_2_0_chanxy_out[0];
    assign wire_5589 = io_tile_2_0_chanxy_out[1];
    assign wire_5597 = io_tile_2_0_chanxy_out[2];
    assign wire_5605 = io_tile_2_0_chanxy_out[3];
    assign wire_5613 = io_tile_2_0_chanxy_out[4];
    assign wire_5621 = io_tile_2_0_chanxy_out[5];
    assign wire_5629 = io_tile_2_0_chanxy_out[6];
    assign wire_5637 = io_tile_2_0_chanxy_out[7];
    assign wire_5645 = io_tile_2_0_chanxy_out[8];
    assign wire_5653 = io_tile_2_0_chanxy_out[9];
    assign wire_5661 = io_tile_2_0_chanxy_out[10];
    assign wire_5669 = io_tile_2_0_chanxy_out[11];
    assign wire_5672 = io_tile_2_0_chanxy_out[12];
    assign wire_5674 = io_tile_2_0_chanxy_out[13];
    assign wire_5676 = io_tile_2_0_chanxy_out[14];
    assign wire_5678 = io_tile_2_0_chanxy_out[15];
    assign wire_5680 = io_tile_2_0_chanxy_out[16];
    assign wire_5682 = io_tile_2_0_chanxy_out[17];
    assign wire_5684 = io_tile_2_0_chanxy_out[18];
    assign wire_5686 = io_tile_2_0_chanxy_out[19];
    assign wire_5688 = io_tile_2_0_chanxy_out[20];
    assign wire_5690 = io_tile_2_0_chanxy_out[21];
    assign wire_5692 = io_tile_2_0_chanxy_out[22];
    assign wire_5694 = io_tile_2_0_chanxy_out[23];
    assign io_tile_3_0_chanxy_in = {wire_5668, wire_3823, wire_3799, wire_3775, wire_3751, wire_142, wire_133, wire_127, wire_5660, wire_3821, wire_3797, wire_3773, wire_3749, wire_139, wire_133, wire_127, wire_5652, wire_3819, wire_3795, wire_3771, wire_3747, wire_139, wire_133, wire_124, wire_5644, wire_3817, wire_3793, wire_3769, wire_3745, wire_505, wire_139, wire_133, wire_124, wire_5636, wire_3815, wire_3791, wire_3767, wire_3743, wire_505, wire_139, wire_130, wire_124, wire_5628, wire_3813, wire_3789, wire_3765, wire_3741, wire_505, wire_139, wire_130, wire_124, wire_5620, wire_3811, wire_3787, wire_3763, wire_3739, wire_505, wire_136, wire_130, wire_124, wire_5612, wire_3809, wire_3785, wire_3761, wire_3737, wire_505, wire_136, wire_130, wire_121, wire_5604, wire_3807, wire_3783, wire_3759, wire_3735, wire_142, wire_136, wire_130, wire_121, wire_5596, wire_3805, wire_3781, wire_3757, wire_3733, wire_142, wire_136, wire_127, wire_121, wire_5588, wire_3803, wire_3779, wire_3755, wire_3731, wire_142, wire_136, wire_127, wire_121, wire_5580, wire_3801, wire_3777, wire_3753, wire_3729, wire_142, wire_133, wire_127, wire_121, wire_5743, wire_4087, wire_4063, wire_4039, wire_4015, wire_142, wire_133, wire_127, wire_5741, wire_4085, wire_4061, wire_4037, wire_4013, wire_139, wire_133, wire_127, wire_5739, wire_4083, wire_4059, wire_4035, wire_4011, wire_139, wire_133, wire_124, wire_5737, wire_4081, wire_4057, wire_4033, wire_4009, wire_505, wire_139, wire_133, wire_124, wire_5735, wire_4079, wire_4055, wire_4031, wire_4007, wire_505, wire_139, wire_130, wire_124, wire_5733, wire_4077, wire_4053, wire_4029, wire_4005, wire_505, wire_139, wire_130, wire_124, wire_5731, wire_4075, wire_4051, wire_4027, wire_4003, wire_505, wire_136, wire_130, wire_124, wire_5729, wire_4073, wire_4049, wire_4025, wire_4001, wire_505, wire_136, wire_130, wire_121, wire_5727, wire_4071, wire_4047, wire_4023, wire_3999, wire_142, wire_136, wire_130, wire_121, wire_5725, wire_4069, wire_4045, wire_4021, wire_3997, wire_142, wire_136, wire_127, wire_121, wire_5723, wire_4067, wire_4043, wire_4019, wire_3995, wire_142, wire_136, wire_127, wire_121, wire_5721, wire_4065, wire_4041, wire_4017, wire_3993, wire_142, wire_133, wire_127, wire_121};
    // CHNAXY TOTAL: 24
    assign wire_5583 = io_tile_3_0_chanxy_out[0];
    assign wire_5591 = io_tile_3_0_chanxy_out[1];
    assign wire_5599 = io_tile_3_0_chanxy_out[2];
    assign wire_5607 = io_tile_3_0_chanxy_out[3];
    assign wire_5615 = io_tile_3_0_chanxy_out[4];
    assign wire_5623 = io_tile_3_0_chanxy_out[5];
    assign wire_5631 = io_tile_3_0_chanxy_out[6];
    assign wire_5639 = io_tile_3_0_chanxy_out[7];
    assign wire_5647 = io_tile_3_0_chanxy_out[8];
    assign wire_5655 = io_tile_3_0_chanxy_out[9];
    assign wire_5663 = io_tile_3_0_chanxy_out[10];
    assign wire_5671 = io_tile_3_0_chanxy_out[11];
    assign wire_5696 = io_tile_3_0_chanxy_out[12];
    assign wire_5698 = io_tile_3_0_chanxy_out[13];
    assign wire_5700 = io_tile_3_0_chanxy_out[14];
    assign wire_5702 = io_tile_3_0_chanxy_out[15];
    assign wire_5704 = io_tile_3_0_chanxy_out[16];
    assign wire_5706 = io_tile_3_0_chanxy_out[17];
    assign wire_5708 = io_tile_3_0_chanxy_out[18];
    assign wire_5710 = io_tile_3_0_chanxy_out[19];
    assign wire_5712 = io_tile_3_0_chanxy_out[20];
    assign wire_5714 = io_tile_3_0_chanxy_out[21];
    assign wire_5716 = io_tile_3_0_chanxy_out[22];
    assign wire_5718 = io_tile_3_0_chanxy_out[23];
    assign io_tile_4_0_chanxy_in = {wire_5670, wire_4087, wire_4063, wire_4039, wire_4015, wire_190, wire_181, wire_175, wire_5662, wire_4085, wire_4061, wire_4037, wire_4013, wire_187, wire_181, wire_175, wire_5654, wire_4083, wire_4059, wire_4035, wire_4011, wire_187, wire_181, wire_172, wire_5646, wire_4081, wire_4057, wire_4033, wire_4009, wire_531, wire_187, wire_181, wire_172, wire_5638, wire_4079, wire_4055, wire_4031, wire_4007, wire_531, wire_187, wire_178, wire_172, wire_5630, wire_4077, wire_4053, wire_4029, wire_4005, wire_531, wire_187, wire_178, wire_172, wire_5622, wire_4075, wire_4051, wire_4027, wire_4003, wire_531, wire_184, wire_178, wire_172, wire_5614, wire_4073, wire_4049, wire_4025, wire_4001, wire_531, wire_184, wire_178, wire_169, wire_5606, wire_4071, wire_4047, wire_4023, wire_3999, wire_190, wire_184, wire_178, wire_169, wire_5598, wire_4069, wire_4045, wire_4021, wire_3997, wire_190, wire_184, wire_175, wire_169, wire_5590, wire_4067, wire_4043, wire_4019, wire_3995, wire_190, wire_184, wire_175, wire_169, wire_5582, wire_4065, wire_4041, wire_4017, wire_3993, wire_190, wire_181, wire_175, wire_169, wire_5767, wire_4351, wire_4327, wire_4303, wire_4279, wire_190, wire_181, wire_175, wire_5765, wire_4349, wire_4325, wire_4301, wire_4277, wire_187, wire_181, wire_175, wire_5763, wire_4347, wire_4323, wire_4299, wire_4275, wire_187, wire_181, wire_172, wire_5761, wire_4345, wire_4321, wire_4297, wire_4273, wire_531, wire_187, wire_181, wire_172, wire_5759, wire_4343, wire_4319, wire_4295, wire_4271, wire_531, wire_187, wire_178, wire_172, wire_5757, wire_4341, wire_4317, wire_4293, wire_4269, wire_531, wire_187, wire_178, wire_172, wire_5755, wire_4339, wire_4315, wire_4291, wire_4267, wire_531, wire_184, wire_178, wire_172, wire_5753, wire_4337, wire_4313, wire_4289, wire_4265, wire_531, wire_184, wire_178, wire_169, wire_5751, wire_4335, wire_4311, wire_4287, wire_4263, wire_190, wire_184, wire_178, wire_169, wire_5749, wire_4333, wire_4309, wire_4285, wire_4261, wire_190, wire_184, wire_175, wire_169, wire_5747, wire_4331, wire_4307, wire_4283, wire_4259, wire_190, wire_184, wire_175, wire_169, wire_5745, wire_4329, wire_4305, wire_4281, wire_4257, wire_190, wire_181, wire_175, wire_169};
    // CHNAXY TOTAL: 24
    assign wire_5577 = io_tile_4_0_chanxy_out[0];
    assign wire_5585 = io_tile_4_0_chanxy_out[1];
    assign wire_5593 = io_tile_4_0_chanxy_out[2];
    assign wire_5601 = io_tile_4_0_chanxy_out[3];
    assign wire_5609 = io_tile_4_0_chanxy_out[4];
    assign wire_5617 = io_tile_4_0_chanxy_out[5];
    assign wire_5625 = io_tile_4_0_chanxy_out[6];
    assign wire_5633 = io_tile_4_0_chanxy_out[7];
    assign wire_5641 = io_tile_4_0_chanxy_out[8];
    assign wire_5649 = io_tile_4_0_chanxy_out[9];
    assign wire_5657 = io_tile_4_0_chanxy_out[10];
    assign wire_5665 = io_tile_4_0_chanxy_out[11];
    assign wire_5720 = io_tile_4_0_chanxy_out[12];
    assign wire_5722 = io_tile_4_0_chanxy_out[13];
    assign wire_5724 = io_tile_4_0_chanxy_out[14];
    assign wire_5726 = io_tile_4_0_chanxy_out[15];
    assign wire_5728 = io_tile_4_0_chanxy_out[16];
    assign wire_5730 = io_tile_4_0_chanxy_out[17];
    assign wire_5732 = io_tile_4_0_chanxy_out[18];
    assign wire_5734 = io_tile_4_0_chanxy_out[19];
    assign wire_5736 = io_tile_4_0_chanxy_out[20];
    assign wire_5738 = io_tile_4_0_chanxy_out[21];
    assign wire_5740 = io_tile_4_0_chanxy_out[22];
    assign wire_5742 = io_tile_4_0_chanxy_out[23];
    assign io_tile_5_0_chanxy_in = {wire_5664, wire_4351, wire_4327, wire_4303, wire_4279, wire_238, wire_229, wire_223, wire_5656, wire_4349, wire_4325, wire_4301, wire_4277, wire_235, wire_229, wire_223, wire_5648, wire_4347, wire_4323, wire_4299, wire_4275, wire_235, wire_229, wire_220, wire_5640, wire_4345, wire_4321, wire_4297, wire_4273, wire_557, wire_235, wire_229, wire_220, wire_5632, wire_4343, wire_4319, wire_4295, wire_4271, wire_557, wire_235, wire_226, wire_220, wire_5624, wire_4341, wire_4317, wire_4293, wire_4269, wire_557, wire_235, wire_226, wire_220, wire_5616, wire_4339, wire_4315, wire_4291, wire_4267, wire_557, wire_232, wire_226, wire_220, wire_5608, wire_4337, wire_4313, wire_4289, wire_4265, wire_557, wire_232, wire_226, wire_217, wire_5600, wire_4335, wire_4311, wire_4287, wire_4263, wire_238, wire_232, wire_226, wire_217, wire_5592, wire_4333, wire_4309, wire_4285, wire_4261, wire_238, wire_232, wire_223, wire_217, wire_5584, wire_4331, wire_4307, wire_4283, wire_4259, wire_238, wire_232, wire_223, wire_217, wire_5576, wire_4329, wire_4305, wire_4281, wire_4257, wire_238, wire_229, wire_223, wire_217, wire_5791, wire_4615, wire_4591, wire_4567, wire_4543, wire_238, wire_229, wire_223, wire_5789, wire_4613, wire_4589, wire_4565, wire_4541, wire_235, wire_229, wire_223, wire_5787, wire_4611, wire_4587, wire_4563, wire_4539, wire_235, wire_229, wire_220, wire_5785, wire_4609, wire_4585, wire_4561, wire_4537, wire_557, wire_235, wire_229, wire_220, wire_5783, wire_4607, wire_4583, wire_4559, wire_4535, wire_557, wire_235, wire_226, wire_220, wire_5781, wire_4605, wire_4581, wire_4557, wire_4533, wire_557, wire_235, wire_226, wire_220, wire_5779, wire_4603, wire_4579, wire_4555, wire_4531, wire_557, wire_232, wire_226, wire_220, wire_5777, wire_4601, wire_4577, wire_4553, wire_4529, wire_557, wire_232, wire_226, wire_217, wire_5775, wire_4599, wire_4575, wire_4551, wire_4527, wire_238, wire_232, wire_226, wire_217, wire_5773, wire_4597, wire_4573, wire_4549, wire_4525, wire_238, wire_232, wire_223, wire_217, wire_5771, wire_4595, wire_4571, wire_4547, wire_4523, wire_238, wire_232, wire_223, wire_217, wire_5769, wire_4593, wire_4569, wire_4545, wire_4521, wire_238, wire_229, wire_223, wire_217};
    // CHNAXY TOTAL: 24
    assign wire_5673 = io_tile_5_0_chanxy_out[0];
    assign wire_5675 = io_tile_5_0_chanxy_out[1];
    assign wire_5677 = io_tile_5_0_chanxy_out[2];
    assign wire_5679 = io_tile_5_0_chanxy_out[3];
    assign wire_5681 = io_tile_5_0_chanxy_out[4];
    assign wire_5683 = io_tile_5_0_chanxy_out[5];
    assign wire_5685 = io_tile_5_0_chanxy_out[6];
    assign wire_5687 = io_tile_5_0_chanxy_out[7];
    assign wire_5689 = io_tile_5_0_chanxy_out[8];
    assign wire_5691 = io_tile_5_0_chanxy_out[9];
    assign wire_5693 = io_tile_5_0_chanxy_out[10];
    assign wire_5695 = io_tile_5_0_chanxy_out[11];
    assign wire_5744 = io_tile_5_0_chanxy_out[12];
    assign wire_5746 = io_tile_5_0_chanxy_out[13];
    assign wire_5748 = io_tile_5_0_chanxy_out[14];
    assign wire_5750 = io_tile_5_0_chanxy_out[15];
    assign wire_5752 = io_tile_5_0_chanxy_out[16];
    assign wire_5754 = io_tile_5_0_chanxy_out[17];
    assign wire_5756 = io_tile_5_0_chanxy_out[18];
    assign wire_5758 = io_tile_5_0_chanxy_out[19];
    assign wire_5760 = io_tile_5_0_chanxy_out[20];
    assign wire_5762 = io_tile_5_0_chanxy_out[21];
    assign wire_5764 = io_tile_5_0_chanxy_out[22];
    assign wire_5766 = io_tile_5_0_chanxy_out[23];
    assign io_tile_6_0_chanxy_in = {wire_5694, wire_4615, wire_4591, wire_4567, wire_4543, wire_286, wire_277, wire_271, wire_5692, wire_4613, wire_4589, wire_4565, wire_4541, wire_283, wire_277, wire_271, wire_5690, wire_4611, wire_4587, wire_4563, wire_4539, wire_283, wire_277, wire_268, wire_5688, wire_4609, wire_4585, wire_4561, wire_4537, wire_583, wire_283, wire_277, wire_268, wire_5686, wire_4607, wire_4583, wire_4559, wire_4535, wire_583, wire_283, wire_274, wire_268, wire_5684, wire_4605, wire_4581, wire_4557, wire_4533, wire_583, wire_283, wire_274, wire_268, wire_5682, wire_4603, wire_4579, wire_4555, wire_4531, wire_583, wire_280, wire_274, wire_268, wire_5680, wire_4601, wire_4577, wire_4553, wire_4529, wire_583, wire_280, wire_274, wire_265, wire_5678, wire_4599, wire_4575, wire_4551, wire_4527, wire_286, wire_280, wire_274, wire_265, wire_5676, wire_4597, wire_4573, wire_4549, wire_4525, wire_286, wire_280, wire_271, wire_265, wire_5674, wire_4595, wire_4571, wire_4547, wire_4523, wire_286, wire_280, wire_271, wire_265, wire_5672, wire_4593, wire_4569, wire_4545, wire_4521, wire_286, wire_277, wire_271, wire_265, wire_5815, wire_4879, wire_4855, wire_4831, wire_4807, wire_286, wire_277, wire_271, wire_5813, wire_4877, wire_4853, wire_4829, wire_4805, wire_283, wire_277, wire_271, wire_5811, wire_4875, wire_4851, wire_4827, wire_4803, wire_283, wire_277, wire_268, wire_5809, wire_4873, wire_4849, wire_4825, wire_4801, wire_583, wire_283, wire_277, wire_268, wire_5807, wire_4871, wire_4847, wire_4823, wire_4799, wire_583, wire_283, wire_274, wire_268, wire_5805, wire_4869, wire_4845, wire_4821, wire_4797, wire_583, wire_283, wire_274, wire_268, wire_5803, wire_4867, wire_4843, wire_4819, wire_4795, wire_583, wire_280, wire_274, wire_268, wire_5801, wire_4865, wire_4841, wire_4817, wire_4793, wire_583, wire_280, wire_274, wire_265, wire_5799, wire_4863, wire_4839, wire_4815, wire_4791, wire_286, wire_280, wire_274, wire_265, wire_5797, wire_4861, wire_4837, wire_4813, wire_4789, wire_286, wire_280, wire_271, wire_265, wire_5795, wire_4859, wire_4835, wire_4811, wire_4787, wire_286, wire_280, wire_271, wire_265, wire_5793, wire_4857, wire_4833, wire_4809, wire_4785, wire_286, wire_277, wire_271, wire_265};
    // CHNAXY TOTAL: 24
    assign wire_5697 = io_tile_6_0_chanxy_out[0];
    assign wire_5699 = io_tile_6_0_chanxy_out[1];
    assign wire_5701 = io_tile_6_0_chanxy_out[2];
    assign wire_5703 = io_tile_6_0_chanxy_out[3];
    assign wire_5705 = io_tile_6_0_chanxy_out[4];
    assign wire_5707 = io_tile_6_0_chanxy_out[5];
    assign wire_5709 = io_tile_6_0_chanxy_out[6];
    assign wire_5711 = io_tile_6_0_chanxy_out[7];
    assign wire_5713 = io_tile_6_0_chanxy_out[8];
    assign wire_5715 = io_tile_6_0_chanxy_out[9];
    assign wire_5717 = io_tile_6_0_chanxy_out[10];
    assign wire_5719 = io_tile_6_0_chanxy_out[11];
    assign wire_5768 = io_tile_6_0_chanxy_out[12];
    assign wire_5770 = io_tile_6_0_chanxy_out[13];
    assign wire_5772 = io_tile_6_0_chanxy_out[14];
    assign wire_5774 = io_tile_6_0_chanxy_out[15];
    assign wire_5776 = io_tile_6_0_chanxy_out[16];
    assign wire_5778 = io_tile_6_0_chanxy_out[17];
    assign wire_5780 = io_tile_6_0_chanxy_out[18];
    assign wire_5782 = io_tile_6_0_chanxy_out[19];
    assign wire_5784 = io_tile_6_0_chanxy_out[20];
    assign wire_5786 = io_tile_6_0_chanxy_out[21];
    assign wire_5788 = io_tile_6_0_chanxy_out[22];
    assign wire_5790 = io_tile_6_0_chanxy_out[23];
    assign io_tile_7_0_chanxy_in = {wire_5718, wire_4879, wire_4855, wire_4831, wire_4807, wire_334, wire_325, wire_319, wire_5716, wire_4877, wire_4853, wire_4829, wire_4805, wire_331, wire_325, wire_319, wire_5714, wire_4875, wire_4851, wire_4827, wire_4803, wire_331, wire_325, wire_316, wire_5712, wire_4873, wire_4849, wire_4825, wire_4801, wire_609, wire_331, wire_325, wire_316, wire_5710, wire_4871, wire_4847, wire_4823, wire_4799, wire_609, wire_331, wire_322, wire_316, wire_5708, wire_4869, wire_4845, wire_4821, wire_4797, wire_609, wire_331, wire_322, wire_316, wire_5706, wire_4867, wire_4843, wire_4819, wire_4795, wire_609, wire_328, wire_322, wire_316, wire_5704, wire_4865, wire_4841, wire_4817, wire_4793, wire_609, wire_328, wire_322, wire_313, wire_5702, wire_4863, wire_4839, wire_4815, wire_4791, wire_334, wire_328, wire_322, wire_313, wire_5700, wire_4861, wire_4837, wire_4813, wire_4789, wire_334, wire_328, wire_319, wire_313, wire_5698, wire_4859, wire_4835, wire_4811, wire_4787, wire_334, wire_328, wire_319, wire_313, wire_5696, wire_4857, wire_4833, wire_4809, wire_4785, wire_334, wire_325, wire_319, wire_313, wire_5839, wire_5143, wire_5119, wire_5095, wire_5071, wire_334, wire_325, wire_319, wire_5837, wire_5141, wire_5117, wire_5093, wire_5069, wire_331, wire_325, wire_319, wire_5835, wire_5139, wire_5115, wire_5091, wire_5067, wire_331, wire_325, wire_316, wire_5833, wire_5137, wire_5113, wire_5089, wire_5065, wire_609, wire_331, wire_325, wire_316, wire_5831, wire_5135, wire_5111, wire_5087, wire_5063, wire_609, wire_331, wire_322, wire_316, wire_5829, wire_5133, wire_5109, wire_5085, wire_5061, wire_609, wire_331, wire_322, wire_316, wire_5827, wire_5131, wire_5107, wire_5083, wire_5059, wire_609, wire_328, wire_322, wire_316, wire_5825, wire_5129, wire_5105, wire_5081, wire_5057, wire_609, wire_328, wire_322, wire_313, wire_5823, wire_5127, wire_5103, wire_5079, wire_5055, wire_334, wire_328, wire_322, wire_313, wire_5821, wire_5125, wire_5101, wire_5077, wire_5053, wire_334, wire_328, wire_319, wire_313, wire_5819, wire_5123, wire_5099, wire_5075, wire_5051, wire_334, wire_328, wire_319, wire_313, wire_5817, wire_5121, wire_5097, wire_5073, wire_5049, wire_334, wire_325, wire_319, wire_313};
    // CHNAXY TOTAL: 24
    assign wire_5721 = io_tile_7_0_chanxy_out[0];
    assign wire_5723 = io_tile_7_0_chanxy_out[1];
    assign wire_5725 = io_tile_7_0_chanxy_out[2];
    assign wire_5727 = io_tile_7_0_chanxy_out[3];
    assign wire_5729 = io_tile_7_0_chanxy_out[4];
    assign wire_5731 = io_tile_7_0_chanxy_out[5];
    assign wire_5733 = io_tile_7_0_chanxy_out[6];
    assign wire_5735 = io_tile_7_0_chanxy_out[7];
    assign wire_5737 = io_tile_7_0_chanxy_out[8];
    assign wire_5739 = io_tile_7_0_chanxy_out[9];
    assign wire_5741 = io_tile_7_0_chanxy_out[10];
    assign wire_5743 = io_tile_7_0_chanxy_out[11];
    assign wire_5792 = io_tile_7_0_chanxy_out[12];
    assign wire_5794 = io_tile_7_0_chanxy_out[13];
    assign wire_5796 = io_tile_7_0_chanxy_out[14];
    assign wire_5798 = io_tile_7_0_chanxy_out[15];
    assign wire_5800 = io_tile_7_0_chanxy_out[16];
    assign wire_5802 = io_tile_7_0_chanxy_out[17];
    assign wire_5804 = io_tile_7_0_chanxy_out[18];
    assign wire_5806 = io_tile_7_0_chanxy_out[19];
    assign wire_5808 = io_tile_7_0_chanxy_out[20];
    assign wire_5810 = io_tile_7_0_chanxy_out[21];
    assign wire_5812 = io_tile_7_0_chanxy_out[22];
    assign wire_5814 = io_tile_7_0_chanxy_out[23];
    assign io_tile_8_0_chanxy_in = {wire_5407, wire_5742, wire_5143, wire_5119, wire_5095, wire_5071, wire_382, wire_373, wire_367, wire_5319, wire_635, wire_5740, wire_5141, wire_5117, wire_5093, wire_5069, wire_379, wire_373, wire_367, wire_5327, wire_382, wire_5738, wire_5139, wire_5115, wire_5091, wire_5067, wire_379, wire_373, wire_364, wire_5335, wire_382, wire_5736, wire_5137, wire_5113, wire_5089, wire_5065, wire_635, wire_379, wire_373, wire_364, wire_5343, wire_379, wire_5734, wire_5135, wire_5111, wire_5087, wire_5063, wire_635, wire_379, wire_370, wire_364, wire_5351, wire_376, wire_5732, wire_5133, wire_5109, wire_5085, wire_5061, wire_635, wire_379, wire_370, wire_364, wire_5359, wire_373, wire_5730, wire_5131, wire_5107, wire_5083, wire_5059, wire_635, wire_376, wire_370, wire_364, wire_5367, wire_370, wire_5728, wire_5129, wire_5105, wire_5081, wire_5057, wire_635, wire_376, wire_370, wire_361, wire_5375, wire_370, wire_5726, wire_5127, wire_5103, wire_5079, wire_5055, wire_382, wire_376, wire_370, wire_361, wire_5383, wire_367, wire_5724, wire_5125, wire_5101, wire_5077, wire_5053, wire_382, wire_376, wire_367, wire_361, wire_5391, wire_364, wire_5722, wire_5123, wire_5099, wire_5075, wire_5051, wire_382, wire_376, wire_367, wire_361, wire_5399, wire_361, wire_5720, wire_5121, wire_5097, wire_5073, wire_5049, wire_382, wire_373, wire_367, wire_361, wire_5313, wire_5321, wire_635, wire_5329, wire_382, wire_5337, wire_379, wire_5345, wire_379, wire_5353, wire_376, wire_5361, wire_373, wire_5369, wire_370, wire_5377, wire_367, wire_5385, wire_367, wire_5393, wire_364, wire_5401, wire_361, wire_5315, wire_5323, wire_635, wire_5331, wire_382, wire_5339, wire_379, wire_5347, wire_376, wire_5355, wire_376, wire_5363, wire_373, wire_5371, wire_370, wire_5379, wire_367, wire_5387, wire_364, wire_5395, wire_364, wire_5403, wire_361, wire_5317, wire_635, wire_5325, wire_635, wire_5333, wire_382, wire_5341, wire_379, wire_5349, wire_376, wire_5357, wire_373, wire_5365, wire_373, wire_5373, wire_370, wire_5381, wire_367, wire_5389, wire_364, wire_5397, wire_361, wire_5405, wire_361};
    // CHNAXY TOTAL: 60
    assign wire_5745 = io_tile_8_0_chanxy_out[0];
    assign wire_5747 = io_tile_8_0_chanxy_out[1];
    assign wire_5749 = io_tile_8_0_chanxy_out[2];
    assign wire_5751 = io_tile_8_0_chanxy_out[3];
    assign wire_5753 = io_tile_8_0_chanxy_out[4];
    assign wire_5755 = io_tile_8_0_chanxy_out[5];
    assign wire_5757 = io_tile_8_0_chanxy_out[6];
    assign wire_5759 = io_tile_8_0_chanxy_out[7];
    assign wire_5761 = io_tile_8_0_chanxy_out[8];
    assign wire_5763 = io_tile_8_0_chanxy_out[9];
    assign wire_5765 = io_tile_8_0_chanxy_out[10];
    assign wire_5767 = io_tile_8_0_chanxy_out[11];
    assign wire_5769 = io_tile_8_0_chanxy_out[12];
    assign wire_5771 = io_tile_8_0_chanxy_out[13];
    assign wire_5773 = io_tile_8_0_chanxy_out[14];
    assign wire_5775 = io_tile_8_0_chanxy_out[15];
    assign wire_5777 = io_tile_8_0_chanxy_out[16];
    assign wire_5779 = io_tile_8_0_chanxy_out[17];
    assign wire_5781 = io_tile_8_0_chanxy_out[18];
    assign wire_5783 = io_tile_8_0_chanxy_out[19];
    assign wire_5785 = io_tile_8_0_chanxy_out[20];
    assign wire_5787 = io_tile_8_0_chanxy_out[21];
    assign wire_5789 = io_tile_8_0_chanxy_out[22];
    assign wire_5791 = io_tile_8_0_chanxy_out[23];
    assign wire_5793 = io_tile_8_0_chanxy_out[24];
    assign wire_5795 = io_tile_8_0_chanxy_out[25];
    assign wire_5797 = io_tile_8_0_chanxy_out[26];
    assign wire_5799 = io_tile_8_0_chanxy_out[27];
    assign wire_5801 = io_tile_8_0_chanxy_out[28];
    assign wire_5803 = io_tile_8_0_chanxy_out[29];
    assign wire_5805 = io_tile_8_0_chanxy_out[30];
    assign wire_5807 = io_tile_8_0_chanxy_out[31];
    assign wire_5809 = io_tile_8_0_chanxy_out[32];
    assign wire_5811 = io_tile_8_0_chanxy_out[33];
    assign wire_5813 = io_tile_8_0_chanxy_out[34];
    assign wire_5815 = io_tile_8_0_chanxy_out[35];
    assign wire_5816 = io_tile_8_0_chanxy_out[36];
    assign wire_5817 = io_tile_8_0_chanxy_out[37];
    assign wire_5818 = io_tile_8_0_chanxy_out[38];
    assign wire_5819 = io_tile_8_0_chanxy_out[39];
    assign wire_5820 = io_tile_8_0_chanxy_out[40];
    assign wire_5821 = io_tile_8_0_chanxy_out[41];
    assign wire_5822 = io_tile_8_0_chanxy_out[42];
    assign wire_5823 = io_tile_8_0_chanxy_out[43];
    assign wire_5824 = io_tile_8_0_chanxy_out[44];
    assign wire_5825 = io_tile_8_0_chanxy_out[45];
    assign wire_5826 = io_tile_8_0_chanxy_out[46];
    assign wire_5827 = io_tile_8_0_chanxy_out[47];
    assign wire_5828 = io_tile_8_0_chanxy_out[48];
    assign wire_5829 = io_tile_8_0_chanxy_out[49];
    assign wire_5830 = io_tile_8_0_chanxy_out[50];
    assign wire_5831 = io_tile_8_0_chanxy_out[51];
    assign wire_5832 = io_tile_8_0_chanxy_out[52];
    assign wire_5833 = io_tile_8_0_chanxy_out[53];
    assign wire_5834 = io_tile_8_0_chanxy_out[54];
    assign wire_5835 = io_tile_8_0_chanxy_out[55];
    assign wire_5836 = io_tile_8_0_chanxy_out[56];
    assign wire_5837 = io_tile_8_0_chanxy_out[57];
    assign wire_5838 = io_tile_8_0_chanxy_out[58];
    assign wire_5839 = io_tile_8_0_chanxy_out[59];
    assign io_tile_0_1_chanxy_in = {wire_5669, wire_5667, wire_5935, wire_5911, wire_5887, wire_5863, wire_3319, wire_430, wire_421, wire_415, wire_5665, wire_5663, wire_456, wire_5661, wire_456, wire_5659, wire_456, wire_5933, wire_5909, wire_5885, wire_5861, wire_3317, wire_427, wire_421, wire_415, wire_5657, wire_456, wire_5655, wire_456, wire_5653, wire_430, wire_5651, wire_430, wire_5931, wire_5907, wire_5883, wire_5859, wire_3315, wire_427, wire_421, wire_412, wire_5649, wire_430, wire_5647, wire_430, wire_5645, wire_430, wire_5643, wire_427, wire_5929, wire_5905, wire_5881, wire_5857, wire_3313, wire_456, wire_427, wire_421, wire_412, wire_5641, wire_427, wire_5639, wire_427, wire_5637, wire_427, wire_5635, wire_427, wire_5927, wire_5903, wire_5879, wire_5855, wire_3311, wire_456, wire_427, wire_418, wire_412, wire_5633, wire_424, wire_5631, wire_424, wire_5629, wire_424, wire_5627, wire_424, wire_5925, wire_5901, wire_5877, wire_5853, wire_3309, wire_456, wire_427, wire_418, wire_412, wire_5625, wire_424, wire_5623, wire_421, wire_5621, wire_421, wire_5619, wire_421, wire_5923, wire_5899, wire_5875, wire_5851, wire_3307, wire_456, wire_424, wire_418, wire_412, wire_5617, wire_421, wire_5615, wire_421, wire_5613, wire_418, wire_5611, wire_418, wire_5921, wire_5897, wire_5873, wire_5849, wire_3305, wire_456, wire_424, wire_418, wire_409, wire_5609, wire_418, wire_5607, wire_418, wire_5605, wire_418, wire_5603, wire_415, wire_5919, wire_5895, wire_5871, wire_5847, wire_3303, wire_430, wire_424, wire_418, wire_409, wire_5601, wire_415, wire_5599, wire_415, wire_5597, wire_415, wire_5595, wire_415, wire_5917, wire_5893, wire_5869, wire_5845, wire_3301, wire_430, wire_424, wire_415, wire_409, wire_5593, wire_412, wire_5591, wire_412, wire_5589, wire_412, wire_5587, wire_412, wire_5915, wire_5891, wire_5867, wire_5843, wire_3299, wire_430, wire_424, wire_415, wire_409, wire_5585, wire_412, wire_5583, wire_409, wire_5581, wire_409, wire_5579, wire_409, wire_5913, wire_5889, wire_5865, wire_5841, wire_3297, wire_430, wire_421, wire_415, wire_409, wire_5577, wire_409, wire_5671, wire_409};
    // CHNAXY TOTAL: 60
    assign wire_3200 = io_tile_0_1_chanxy_out[0];
    assign wire_3202 = io_tile_0_1_chanxy_out[1];
    assign wire_3203 = io_tile_0_1_chanxy_out[2];
    assign wire_3204 = io_tile_0_1_chanxy_out[3];
    assign wire_3206 = io_tile_0_1_chanxy_out[4];
    assign wire_3208 = io_tile_0_1_chanxy_out[5];
    assign wire_3210 = io_tile_0_1_chanxy_out[6];
    assign wire_3211 = io_tile_0_1_chanxy_out[7];
    assign wire_3212 = io_tile_0_1_chanxy_out[8];
    assign wire_3214 = io_tile_0_1_chanxy_out[9];
    assign wire_3216 = io_tile_0_1_chanxy_out[10];
    assign wire_3218 = io_tile_0_1_chanxy_out[11];
    assign wire_3219 = io_tile_0_1_chanxy_out[12];
    assign wire_3220 = io_tile_0_1_chanxy_out[13];
    assign wire_3222 = io_tile_0_1_chanxy_out[14];
    assign wire_3224 = io_tile_0_1_chanxy_out[15];
    assign wire_3226 = io_tile_0_1_chanxy_out[16];
    assign wire_3227 = io_tile_0_1_chanxy_out[17];
    assign wire_3228 = io_tile_0_1_chanxy_out[18];
    assign wire_3230 = io_tile_0_1_chanxy_out[19];
    assign wire_3232 = io_tile_0_1_chanxy_out[20];
    assign wire_3234 = io_tile_0_1_chanxy_out[21];
    assign wire_3235 = io_tile_0_1_chanxy_out[22];
    assign wire_3236 = io_tile_0_1_chanxy_out[23];
    assign wire_3238 = io_tile_0_1_chanxy_out[24];
    assign wire_3240 = io_tile_0_1_chanxy_out[25];
    assign wire_3242 = io_tile_0_1_chanxy_out[26];
    assign wire_3243 = io_tile_0_1_chanxy_out[27];
    assign wire_3244 = io_tile_0_1_chanxy_out[28];
    assign wire_3246 = io_tile_0_1_chanxy_out[29];
    assign wire_3248 = io_tile_0_1_chanxy_out[30];
    assign wire_3250 = io_tile_0_1_chanxy_out[31];
    assign wire_3251 = io_tile_0_1_chanxy_out[32];
    assign wire_3252 = io_tile_0_1_chanxy_out[33];
    assign wire_3254 = io_tile_0_1_chanxy_out[34];
    assign wire_3256 = io_tile_0_1_chanxy_out[35];
    assign wire_3258 = io_tile_0_1_chanxy_out[36];
    assign wire_3259 = io_tile_0_1_chanxy_out[37];
    assign wire_3260 = io_tile_0_1_chanxy_out[38];
    assign wire_3262 = io_tile_0_1_chanxy_out[39];
    assign wire_3264 = io_tile_0_1_chanxy_out[40];
    assign wire_3266 = io_tile_0_1_chanxy_out[41];
    assign wire_3267 = io_tile_0_1_chanxy_out[42];
    assign wire_3268 = io_tile_0_1_chanxy_out[43];
    assign wire_3270 = io_tile_0_1_chanxy_out[44];
    assign wire_3272 = io_tile_0_1_chanxy_out[45];
    assign wire_3274 = io_tile_0_1_chanxy_out[46];
    assign wire_3275 = io_tile_0_1_chanxy_out[47];
    assign wire_3276 = io_tile_0_1_chanxy_out[48];
    assign wire_3278 = io_tile_0_1_chanxy_out[49];
    assign wire_3280 = io_tile_0_1_chanxy_out[50];
    assign wire_3282 = io_tile_0_1_chanxy_out[51];
    assign wire_3283 = io_tile_0_1_chanxy_out[52];
    assign wire_3284 = io_tile_0_1_chanxy_out[53];
    assign wire_3286 = io_tile_0_1_chanxy_out[54];
    assign wire_3288 = io_tile_0_1_chanxy_out[55];
    assign wire_3290 = io_tile_0_1_chanxy_out[56];
    assign wire_3291 = io_tile_0_1_chanxy_out[57];
    assign wire_3292 = io_tile_0_1_chanxy_out[58];
    assign wire_3294 = io_tile_0_1_chanxy_out[59];
    assign io_tile_0_2_chanxy_in = {wire_5935, wire_5911, wire_5887, wire_5863, wire_3290, wire_734, wire_725, wire_719, wire_5933, wire_5909, wire_5885, wire_5861, wire_3282, wire_731, wire_725, wire_719, wire_5931, wire_5907, wire_5883, wire_5859, wire_3274, wire_731, wire_725, wire_716, wire_5929, wire_5905, wire_5881, wire_5857, wire_3266, wire_760, wire_731, wire_725, wire_716, wire_5927, wire_5903, wire_5879, wire_5855, wire_3258, wire_760, wire_731, wire_722, wire_716, wire_5925, wire_5901, wire_5877, wire_5853, wire_3250, wire_760, wire_731, wire_722, wire_716, wire_5923, wire_5899, wire_5875, wire_5851, wire_3242, wire_760, wire_728, wire_722, wire_716, wire_5921, wire_5897, wire_5873, wire_5849, wire_3234, wire_760, wire_728, wire_722, wire_713, wire_5919, wire_5895, wire_5871, wire_5847, wire_3226, wire_734, wire_728, wire_722, wire_713, wire_5917, wire_5893, wire_5869, wire_5845, wire_3218, wire_734, wire_728, wire_719, wire_713, wire_5915, wire_5891, wire_5867, wire_5843, wire_3210, wire_734, wire_728, wire_719, wire_713, wire_5913, wire_5889, wire_5865, wire_5841, wire_3202, wire_734, wire_725, wire_719, wire_713, wire_6199, wire_6175, wire_6151, wire_6127, wire_3343, wire_734, wire_725, wire_719, wire_6197, wire_6173, wire_6149, wire_6125, wire_3341, wire_731, wire_725, wire_719, wire_6195, wire_6171, wire_6147, wire_6123, wire_3339, wire_731, wire_725, wire_716, wire_6193, wire_6169, wire_6145, wire_6121, wire_3337, wire_760, wire_731, wire_725, wire_716, wire_6191, wire_6167, wire_6143, wire_6119, wire_3335, wire_760, wire_731, wire_722, wire_716, wire_6189, wire_6165, wire_6141, wire_6117, wire_3333, wire_760, wire_731, wire_722, wire_716, wire_6187, wire_6163, wire_6139, wire_6115, wire_3331, wire_760, wire_728, wire_722, wire_716, wire_6185, wire_6161, wire_6137, wire_6113, wire_3329, wire_760, wire_728, wire_722, wire_713, wire_6183, wire_6159, wire_6135, wire_6111, wire_3327, wire_734, wire_728, wire_722, wire_713, wire_6181, wire_6157, wire_6133, wire_6109, wire_3325, wire_734, wire_728, wire_719, wire_713, wire_6179, wire_6155, wire_6131, wire_6107, wire_3323, wire_734, wire_728, wire_719, wire_713, wire_6177, wire_6153, wire_6129, wire_6105, wire_3321, wire_734, wire_725, wire_719, wire_713};
    // CHNAXY TOTAL: 24
    assign wire_3205 = io_tile_0_2_chanxy_out[0];
    assign wire_3213 = io_tile_0_2_chanxy_out[1];
    assign wire_3221 = io_tile_0_2_chanxy_out[2];
    assign wire_3229 = io_tile_0_2_chanxy_out[3];
    assign wire_3237 = io_tile_0_2_chanxy_out[4];
    assign wire_3245 = io_tile_0_2_chanxy_out[5];
    assign wire_3253 = io_tile_0_2_chanxy_out[6];
    assign wire_3261 = io_tile_0_2_chanxy_out[7];
    assign wire_3269 = io_tile_0_2_chanxy_out[8];
    assign wire_3277 = io_tile_0_2_chanxy_out[9];
    assign wire_3285 = io_tile_0_2_chanxy_out[10];
    assign wire_3293 = io_tile_0_2_chanxy_out[11];
    assign wire_3296 = io_tile_0_2_chanxy_out[12];
    assign wire_3298 = io_tile_0_2_chanxy_out[13];
    assign wire_3300 = io_tile_0_2_chanxy_out[14];
    assign wire_3302 = io_tile_0_2_chanxy_out[15];
    assign wire_3304 = io_tile_0_2_chanxy_out[16];
    assign wire_3306 = io_tile_0_2_chanxy_out[17];
    assign wire_3308 = io_tile_0_2_chanxy_out[18];
    assign wire_3310 = io_tile_0_2_chanxy_out[19];
    assign wire_3312 = io_tile_0_2_chanxy_out[20];
    assign wire_3314 = io_tile_0_2_chanxy_out[21];
    assign wire_3316 = io_tile_0_2_chanxy_out[22];
    assign wire_3318 = io_tile_0_2_chanxy_out[23];
    assign io_tile_0_3_chanxy_in = {wire_6199, wire_6175, wire_6151, wire_6127, wire_3292, wire_1038, wire_1029, wire_1023, wire_6197, wire_6173, wire_6149, wire_6125, wire_3284, wire_1035, wire_1029, wire_1023, wire_6195, wire_6171, wire_6147, wire_6123, wire_3276, wire_1035, wire_1029, wire_1020, wire_6193, wire_6169, wire_6145, wire_6121, wire_3268, wire_1064, wire_1035, wire_1029, wire_1020, wire_6191, wire_6167, wire_6143, wire_6119, wire_3260, wire_1064, wire_1035, wire_1026, wire_1020, wire_6189, wire_6165, wire_6141, wire_6117, wire_3252, wire_1064, wire_1035, wire_1026, wire_1020, wire_6187, wire_6163, wire_6139, wire_6115, wire_3244, wire_1064, wire_1032, wire_1026, wire_1020, wire_6185, wire_6161, wire_6137, wire_6113, wire_3236, wire_1064, wire_1032, wire_1026, wire_1017, wire_6183, wire_6159, wire_6135, wire_6111, wire_3228, wire_1038, wire_1032, wire_1026, wire_1017, wire_6181, wire_6157, wire_6133, wire_6109, wire_3220, wire_1038, wire_1032, wire_1023, wire_1017, wire_6179, wire_6155, wire_6131, wire_6107, wire_3212, wire_1038, wire_1032, wire_1023, wire_1017, wire_6177, wire_6153, wire_6129, wire_6105, wire_3204, wire_1038, wire_1029, wire_1023, wire_1017, wire_6463, wire_6439, wire_6415, wire_6391, wire_3367, wire_1038, wire_1029, wire_1023, wire_6461, wire_6437, wire_6413, wire_6389, wire_3365, wire_1035, wire_1029, wire_1023, wire_6459, wire_6435, wire_6411, wire_6387, wire_3363, wire_1035, wire_1029, wire_1020, wire_6457, wire_6433, wire_6409, wire_6385, wire_3361, wire_1064, wire_1035, wire_1029, wire_1020, wire_6455, wire_6431, wire_6407, wire_6383, wire_3359, wire_1064, wire_1035, wire_1026, wire_1020, wire_6453, wire_6429, wire_6405, wire_6381, wire_3357, wire_1064, wire_1035, wire_1026, wire_1020, wire_6451, wire_6427, wire_6403, wire_6379, wire_3355, wire_1064, wire_1032, wire_1026, wire_1020, wire_6449, wire_6425, wire_6401, wire_6377, wire_3353, wire_1064, wire_1032, wire_1026, wire_1017, wire_6447, wire_6423, wire_6399, wire_6375, wire_3351, wire_1038, wire_1032, wire_1026, wire_1017, wire_6445, wire_6421, wire_6397, wire_6373, wire_3349, wire_1038, wire_1032, wire_1023, wire_1017, wire_6443, wire_6419, wire_6395, wire_6371, wire_3347, wire_1038, wire_1032, wire_1023, wire_1017, wire_6441, wire_6417, wire_6393, wire_6369, wire_3345, wire_1038, wire_1029, wire_1023, wire_1017};
    // CHNAXY TOTAL: 24
    assign wire_3207 = io_tile_0_3_chanxy_out[0];
    assign wire_3215 = io_tile_0_3_chanxy_out[1];
    assign wire_3223 = io_tile_0_3_chanxy_out[2];
    assign wire_3231 = io_tile_0_3_chanxy_out[3];
    assign wire_3239 = io_tile_0_3_chanxy_out[4];
    assign wire_3247 = io_tile_0_3_chanxy_out[5];
    assign wire_3255 = io_tile_0_3_chanxy_out[6];
    assign wire_3263 = io_tile_0_3_chanxy_out[7];
    assign wire_3271 = io_tile_0_3_chanxy_out[8];
    assign wire_3279 = io_tile_0_3_chanxy_out[9];
    assign wire_3287 = io_tile_0_3_chanxy_out[10];
    assign wire_3295 = io_tile_0_3_chanxy_out[11];
    assign wire_3320 = io_tile_0_3_chanxy_out[12];
    assign wire_3322 = io_tile_0_3_chanxy_out[13];
    assign wire_3324 = io_tile_0_3_chanxy_out[14];
    assign wire_3326 = io_tile_0_3_chanxy_out[15];
    assign wire_3328 = io_tile_0_3_chanxy_out[16];
    assign wire_3330 = io_tile_0_3_chanxy_out[17];
    assign wire_3332 = io_tile_0_3_chanxy_out[18];
    assign wire_3334 = io_tile_0_3_chanxy_out[19];
    assign wire_3336 = io_tile_0_3_chanxy_out[20];
    assign wire_3338 = io_tile_0_3_chanxy_out[21];
    assign wire_3340 = io_tile_0_3_chanxy_out[22];
    assign wire_3342 = io_tile_0_3_chanxy_out[23];
    assign io_tile_0_4_chanxy_in = {wire_6463, wire_6439, wire_6415, wire_6391, wire_3294, wire_1342, wire_1333, wire_1327, wire_6461, wire_6437, wire_6413, wire_6389, wire_3286, wire_1339, wire_1333, wire_1327, wire_6459, wire_6435, wire_6411, wire_6387, wire_3278, wire_1339, wire_1333, wire_1324, wire_6457, wire_6433, wire_6409, wire_6385, wire_3270, wire_1368, wire_1339, wire_1333, wire_1324, wire_6455, wire_6431, wire_6407, wire_6383, wire_3262, wire_1368, wire_1339, wire_1330, wire_1324, wire_6453, wire_6429, wire_6405, wire_6381, wire_3254, wire_1368, wire_1339, wire_1330, wire_1324, wire_6451, wire_6427, wire_6403, wire_6379, wire_3246, wire_1368, wire_1336, wire_1330, wire_1324, wire_6449, wire_6425, wire_6401, wire_6377, wire_3238, wire_1368, wire_1336, wire_1330, wire_1321, wire_6447, wire_6423, wire_6399, wire_6375, wire_3230, wire_1342, wire_1336, wire_1330, wire_1321, wire_6445, wire_6421, wire_6397, wire_6373, wire_3222, wire_1342, wire_1336, wire_1327, wire_1321, wire_6443, wire_6419, wire_6395, wire_6371, wire_3214, wire_1342, wire_1336, wire_1327, wire_1321, wire_6441, wire_6417, wire_6393, wire_6369, wire_3206, wire_1342, wire_1333, wire_1327, wire_1321, wire_6727, wire_6703, wire_6679, wire_6655, wire_3391, wire_1342, wire_1333, wire_1327, wire_6725, wire_6701, wire_6677, wire_6653, wire_3389, wire_1339, wire_1333, wire_1327, wire_6723, wire_6699, wire_6675, wire_6651, wire_3387, wire_1339, wire_1333, wire_1324, wire_6721, wire_6697, wire_6673, wire_6649, wire_3385, wire_1368, wire_1339, wire_1333, wire_1324, wire_6719, wire_6695, wire_6671, wire_6647, wire_3383, wire_1368, wire_1339, wire_1330, wire_1324, wire_6717, wire_6693, wire_6669, wire_6645, wire_3381, wire_1368, wire_1339, wire_1330, wire_1324, wire_6715, wire_6691, wire_6667, wire_6643, wire_3379, wire_1368, wire_1336, wire_1330, wire_1324, wire_6713, wire_6689, wire_6665, wire_6641, wire_3377, wire_1368, wire_1336, wire_1330, wire_1321, wire_6711, wire_6687, wire_6663, wire_6639, wire_3375, wire_1342, wire_1336, wire_1330, wire_1321, wire_6709, wire_6685, wire_6661, wire_6637, wire_3373, wire_1342, wire_1336, wire_1327, wire_1321, wire_6707, wire_6683, wire_6659, wire_6635, wire_3371, wire_1342, wire_1336, wire_1327, wire_1321, wire_6705, wire_6681, wire_6657, wire_6633, wire_3369, wire_1342, wire_1333, wire_1327, wire_1321};
    // CHNAXY TOTAL: 24
    assign wire_3201 = io_tile_0_4_chanxy_out[0];
    assign wire_3209 = io_tile_0_4_chanxy_out[1];
    assign wire_3217 = io_tile_0_4_chanxy_out[2];
    assign wire_3225 = io_tile_0_4_chanxy_out[3];
    assign wire_3233 = io_tile_0_4_chanxy_out[4];
    assign wire_3241 = io_tile_0_4_chanxy_out[5];
    assign wire_3249 = io_tile_0_4_chanxy_out[6];
    assign wire_3257 = io_tile_0_4_chanxy_out[7];
    assign wire_3265 = io_tile_0_4_chanxy_out[8];
    assign wire_3273 = io_tile_0_4_chanxy_out[9];
    assign wire_3281 = io_tile_0_4_chanxy_out[10];
    assign wire_3289 = io_tile_0_4_chanxy_out[11];
    assign wire_3344 = io_tile_0_4_chanxy_out[12];
    assign wire_3346 = io_tile_0_4_chanxy_out[13];
    assign wire_3348 = io_tile_0_4_chanxy_out[14];
    assign wire_3350 = io_tile_0_4_chanxy_out[15];
    assign wire_3352 = io_tile_0_4_chanxy_out[16];
    assign wire_3354 = io_tile_0_4_chanxy_out[17];
    assign wire_3356 = io_tile_0_4_chanxy_out[18];
    assign wire_3358 = io_tile_0_4_chanxy_out[19];
    assign wire_3360 = io_tile_0_4_chanxy_out[20];
    assign wire_3362 = io_tile_0_4_chanxy_out[21];
    assign wire_3364 = io_tile_0_4_chanxy_out[22];
    assign wire_3366 = io_tile_0_4_chanxy_out[23];
    assign io_tile_0_5_chanxy_in = {wire_6727, wire_6703, wire_6679, wire_6655, wire_3288, wire_1646, wire_1637, wire_1631, wire_6725, wire_6701, wire_6677, wire_6653, wire_3280, wire_1643, wire_1637, wire_1631, wire_6723, wire_6699, wire_6675, wire_6651, wire_3272, wire_1643, wire_1637, wire_1628, wire_6721, wire_6697, wire_6673, wire_6649, wire_3264, wire_1672, wire_1643, wire_1637, wire_1628, wire_6719, wire_6695, wire_6671, wire_6647, wire_3256, wire_1672, wire_1643, wire_1634, wire_1628, wire_6717, wire_6693, wire_6669, wire_6645, wire_3248, wire_1672, wire_1643, wire_1634, wire_1628, wire_6715, wire_6691, wire_6667, wire_6643, wire_3240, wire_1672, wire_1640, wire_1634, wire_1628, wire_6713, wire_6689, wire_6665, wire_6641, wire_3232, wire_1672, wire_1640, wire_1634, wire_1625, wire_6711, wire_6687, wire_6663, wire_6639, wire_3224, wire_1646, wire_1640, wire_1634, wire_1625, wire_6709, wire_6685, wire_6661, wire_6637, wire_3216, wire_1646, wire_1640, wire_1631, wire_1625, wire_6707, wire_6683, wire_6659, wire_6635, wire_3208, wire_1646, wire_1640, wire_1631, wire_1625, wire_6705, wire_6681, wire_6657, wire_6633, wire_3200, wire_1646, wire_1637, wire_1631, wire_1625, wire_6991, wire_6967, wire_6943, wire_6919, wire_3415, wire_1646, wire_1637, wire_1631, wire_6989, wire_6965, wire_6941, wire_6917, wire_3413, wire_1643, wire_1637, wire_1631, wire_6987, wire_6963, wire_6939, wire_6915, wire_3411, wire_1643, wire_1637, wire_1628, wire_6985, wire_6961, wire_6937, wire_6913, wire_3409, wire_1672, wire_1643, wire_1637, wire_1628, wire_6983, wire_6959, wire_6935, wire_6911, wire_3407, wire_1672, wire_1643, wire_1634, wire_1628, wire_6981, wire_6957, wire_6933, wire_6909, wire_3405, wire_1672, wire_1643, wire_1634, wire_1628, wire_6979, wire_6955, wire_6931, wire_6907, wire_3403, wire_1672, wire_1640, wire_1634, wire_1628, wire_6977, wire_6953, wire_6929, wire_6905, wire_3401, wire_1672, wire_1640, wire_1634, wire_1625, wire_6975, wire_6951, wire_6927, wire_6903, wire_3399, wire_1646, wire_1640, wire_1634, wire_1625, wire_6973, wire_6949, wire_6925, wire_6901, wire_3397, wire_1646, wire_1640, wire_1631, wire_1625, wire_6971, wire_6947, wire_6923, wire_6899, wire_3395, wire_1646, wire_1640, wire_1631, wire_1625, wire_6969, wire_6945, wire_6921, wire_6897, wire_3393, wire_1646, wire_1637, wire_1631, wire_1625};
    // CHNAXY TOTAL: 24
    assign wire_3297 = io_tile_0_5_chanxy_out[0];
    assign wire_3299 = io_tile_0_5_chanxy_out[1];
    assign wire_3301 = io_tile_0_5_chanxy_out[2];
    assign wire_3303 = io_tile_0_5_chanxy_out[3];
    assign wire_3305 = io_tile_0_5_chanxy_out[4];
    assign wire_3307 = io_tile_0_5_chanxy_out[5];
    assign wire_3309 = io_tile_0_5_chanxy_out[6];
    assign wire_3311 = io_tile_0_5_chanxy_out[7];
    assign wire_3313 = io_tile_0_5_chanxy_out[8];
    assign wire_3315 = io_tile_0_5_chanxy_out[9];
    assign wire_3317 = io_tile_0_5_chanxy_out[10];
    assign wire_3319 = io_tile_0_5_chanxy_out[11];
    assign wire_3368 = io_tile_0_5_chanxy_out[12];
    assign wire_3370 = io_tile_0_5_chanxy_out[13];
    assign wire_3372 = io_tile_0_5_chanxy_out[14];
    assign wire_3374 = io_tile_0_5_chanxy_out[15];
    assign wire_3376 = io_tile_0_5_chanxy_out[16];
    assign wire_3378 = io_tile_0_5_chanxy_out[17];
    assign wire_3380 = io_tile_0_5_chanxy_out[18];
    assign wire_3382 = io_tile_0_5_chanxy_out[19];
    assign wire_3384 = io_tile_0_5_chanxy_out[20];
    assign wire_3386 = io_tile_0_5_chanxy_out[21];
    assign wire_3388 = io_tile_0_5_chanxy_out[22];
    assign wire_3390 = io_tile_0_5_chanxy_out[23];
    assign io_tile_0_6_chanxy_in = {wire_6991, wire_6967, wire_6943, wire_6919, wire_3318, wire_1950, wire_1941, wire_1935, wire_6989, wire_6965, wire_6941, wire_6917, wire_3316, wire_1947, wire_1941, wire_1935, wire_6987, wire_6963, wire_6939, wire_6915, wire_3314, wire_1947, wire_1941, wire_1932, wire_6985, wire_6961, wire_6937, wire_6913, wire_3312, wire_1976, wire_1947, wire_1941, wire_1932, wire_6983, wire_6959, wire_6935, wire_6911, wire_3310, wire_1976, wire_1947, wire_1938, wire_1932, wire_6981, wire_6957, wire_6933, wire_6909, wire_3308, wire_1976, wire_1947, wire_1938, wire_1932, wire_6979, wire_6955, wire_6931, wire_6907, wire_3306, wire_1976, wire_1944, wire_1938, wire_1932, wire_6977, wire_6953, wire_6929, wire_6905, wire_3304, wire_1976, wire_1944, wire_1938, wire_1929, wire_6975, wire_6951, wire_6927, wire_6903, wire_3302, wire_1950, wire_1944, wire_1938, wire_1929, wire_6973, wire_6949, wire_6925, wire_6901, wire_3300, wire_1950, wire_1944, wire_1935, wire_1929, wire_6971, wire_6947, wire_6923, wire_6899, wire_3298, wire_1950, wire_1944, wire_1935, wire_1929, wire_6969, wire_6945, wire_6921, wire_6897, wire_3296, wire_1950, wire_1941, wire_1935, wire_1929, wire_7255, wire_7231, wire_7207, wire_7183, wire_3439, wire_1950, wire_1941, wire_1935, wire_7253, wire_7229, wire_7205, wire_7181, wire_3437, wire_1947, wire_1941, wire_1935, wire_7251, wire_7227, wire_7203, wire_7179, wire_3435, wire_1947, wire_1941, wire_1932, wire_7249, wire_7225, wire_7201, wire_7177, wire_3433, wire_1976, wire_1947, wire_1941, wire_1932, wire_7247, wire_7223, wire_7199, wire_7175, wire_3431, wire_1976, wire_1947, wire_1938, wire_1932, wire_7245, wire_7221, wire_7197, wire_7173, wire_3429, wire_1976, wire_1947, wire_1938, wire_1932, wire_7243, wire_7219, wire_7195, wire_7171, wire_3427, wire_1976, wire_1944, wire_1938, wire_1932, wire_7241, wire_7217, wire_7193, wire_7169, wire_3425, wire_1976, wire_1944, wire_1938, wire_1929, wire_7239, wire_7215, wire_7191, wire_7167, wire_3423, wire_1950, wire_1944, wire_1938, wire_1929, wire_7237, wire_7213, wire_7189, wire_7165, wire_3421, wire_1950, wire_1944, wire_1935, wire_1929, wire_7235, wire_7211, wire_7187, wire_7163, wire_3419, wire_1950, wire_1944, wire_1935, wire_1929, wire_7233, wire_7209, wire_7185, wire_7161, wire_3417, wire_1950, wire_1941, wire_1935, wire_1929};
    // CHNAXY TOTAL: 24
    assign wire_3321 = io_tile_0_6_chanxy_out[0];
    assign wire_3323 = io_tile_0_6_chanxy_out[1];
    assign wire_3325 = io_tile_0_6_chanxy_out[2];
    assign wire_3327 = io_tile_0_6_chanxy_out[3];
    assign wire_3329 = io_tile_0_6_chanxy_out[4];
    assign wire_3331 = io_tile_0_6_chanxy_out[5];
    assign wire_3333 = io_tile_0_6_chanxy_out[6];
    assign wire_3335 = io_tile_0_6_chanxy_out[7];
    assign wire_3337 = io_tile_0_6_chanxy_out[8];
    assign wire_3339 = io_tile_0_6_chanxy_out[9];
    assign wire_3341 = io_tile_0_6_chanxy_out[10];
    assign wire_3343 = io_tile_0_6_chanxy_out[11];
    assign wire_3392 = io_tile_0_6_chanxy_out[12];
    assign wire_3394 = io_tile_0_6_chanxy_out[13];
    assign wire_3396 = io_tile_0_6_chanxy_out[14];
    assign wire_3398 = io_tile_0_6_chanxy_out[15];
    assign wire_3400 = io_tile_0_6_chanxy_out[16];
    assign wire_3402 = io_tile_0_6_chanxy_out[17];
    assign wire_3404 = io_tile_0_6_chanxy_out[18];
    assign wire_3406 = io_tile_0_6_chanxy_out[19];
    assign wire_3408 = io_tile_0_6_chanxy_out[20];
    assign wire_3410 = io_tile_0_6_chanxy_out[21];
    assign wire_3412 = io_tile_0_6_chanxy_out[22];
    assign wire_3414 = io_tile_0_6_chanxy_out[23];
    assign io_tile_0_7_chanxy_in = {wire_7255, wire_7231, wire_7207, wire_7183, wire_3342, wire_2254, wire_2245, wire_2239, wire_7253, wire_7229, wire_7205, wire_7181, wire_3340, wire_2251, wire_2245, wire_2239, wire_7251, wire_7227, wire_7203, wire_7179, wire_3338, wire_2251, wire_2245, wire_2236, wire_7249, wire_7225, wire_7201, wire_7177, wire_3336, wire_2280, wire_2251, wire_2245, wire_2236, wire_7247, wire_7223, wire_7199, wire_7175, wire_3334, wire_2280, wire_2251, wire_2242, wire_2236, wire_7245, wire_7221, wire_7197, wire_7173, wire_3332, wire_2280, wire_2251, wire_2242, wire_2236, wire_7243, wire_7219, wire_7195, wire_7171, wire_3330, wire_2280, wire_2248, wire_2242, wire_2236, wire_7241, wire_7217, wire_7193, wire_7169, wire_3328, wire_2280, wire_2248, wire_2242, wire_2233, wire_7239, wire_7215, wire_7191, wire_7167, wire_3326, wire_2254, wire_2248, wire_2242, wire_2233, wire_7237, wire_7213, wire_7189, wire_7165, wire_3324, wire_2254, wire_2248, wire_2239, wire_2233, wire_7235, wire_7211, wire_7187, wire_7163, wire_3322, wire_2254, wire_2248, wire_2239, wire_2233, wire_7233, wire_7209, wire_7185, wire_7161, wire_3320, wire_2254, wire_2245, wire_2239, wire_2233, wire_7519, wire_7495, wire_7471, wire_7447, wire_3463, wire_2254, wire_2245, wire_2239, wire_7517, wire_7493, wire_7469, wire_7445, wire_3461, wire_2251, wire_2245, wire_2239, wire_7515, wire_7491, wire_7467, wire_7443, wire_3459, wire_2251, wire_2245, wire_2236, wire_7513, wire_7489, wire_7465, wire_7441, wire_3457, wire_2280, wire_2251, wire_2245, wire_2236, wire_7511, wire_7487, wire_7463, wire_7439, wire_3455, wire_2280, wire_2251, wire_2242, wire_2236, wire_7509, wire_7485, wire_7461, wire_7437, wire_3453, wire_2280, wire_2251, wire_2242, wire_2236, wire_7507, wire_7483, wire_7459, wire_7435, wire_3451, wire_2280, wire_2248, wire_2242, wire_2236, wire_7505, wire_7481, wire_7457, wire_7433, wire_3449, wire_2280, wire_2248, wire_2242, wire_2233, wire_7503, wire_7479, wire_7455, wire_7431, wire_3447, wire_2254, wire_2248, wire_2242, wire_2233, wire_7501, wire_7477, wire_7453, wire_7429, wire_3445, wire_2254, wire_2248, wire_2239, wire_2233, wire_7499, wire_7475, wire_7451, wire_7427, wire_3443, wire_2254, wire_2248, wire_2239, wire_2233, wire_7497, wire_7473, wire_7449, wire_7425, wire_3441, wire_2254, wire_2245, wire_2239, wire_2233};
    // CHNAXY TOTAL: 24
    assign wire_3345 = io_tile_0_7_chanxy_out[0];
    assign wire_3347 = io_tile_0_7_chanxy_out[1];
    assign wire_3349 = io_tile_0_7_chanxy_out[2];
    assign wire_3351 = io_tile_0_7_chanxy_out[3];
    assign wire_3353 = io_tile_0_7_chanxy_out[4];
    assign wire_3355 = io_tile_0_7_chanxy_out[5];
    assign wire_3357 = io_tile_0_7_chanxy_out[6];
    assign wire_3359 = io_tile_0_7_chanxy_out[7];
    assign wire_3361 = io_tile_0_7_chanxy_out[8];
    assign wire_3363 = io_tile_0_7_chanxy_out[9];
    assign wire_3365 = io_tile_0_7_chanxy_out[10];
    assign wire_3367 = io_tile_0_7_chanxy_out[11];
    assign wire_3416 = io_tile_0_7_chanxy_out[12];
    assign wire_3418 = io_tile_0_7_chanxy_out[13];
    assign wire_3420 = io_tile_0_7_chanxy_out[14];
    assign wire_3422 = io_tile_0_7_chanxy_out[15];
    assign wire_3424 = io_tile_0_7_chanxy_out[16];
    assign wire_3426 = io_tile_0_7_chanxy_out[17];
    assign wire_3428 = io_tile_0_7_chanxy_out[18];
    assign wire_3430 = io_tile_0_7_chanxy_out[19];
    assign wire_3432 = io_tile_0_7_chanxy_out[20];
    assign wire_3434 = io_tile_0_7_chanxy_out[21];
    assign wire_3436 = io_tile_0_7_chanxy_out[22];
    assign wire_3438 = io_tile_0_7_chanxy_out[23];
    assign io_tile_0_8_chanxy_in = {wire_7691, wire_7519, wire_7495, wire_7471, wire_7447, wire_3366, wire_2558, wire_2549, wire_2543, wire_7699, wire_2584, wire_7517, wire_7493, wire_7469, wire_7445, wire_3364, wire_2555, wire_2549, wire_2543, wire_7707, wire_2558, wire_7515, wire_7491, wire_7467, wire_7443, wire_3362, wire_2555, wire_2549, wire_2540, wire_7715, wire_2558, wire_7513, wire_7489, wire_7465, wire_7441, wire_3360, wire_2584, wire_2555, wire_2549, wire_2540, wire_7723, wire_2555, wire_7511, wire_7487, wire_7463, wire_7439, wire_3358, wire_2584, wire_2555, wire_2546, wire_2540, wire_7731, wire_2552, wire_7509, wire_7485, wire_7461, wire_7437, wire_3356, wire_2584, wire_2555, wire_2546, wire_2540, wire_7739, wire_2549, wire_7507, wire_7483, wire_7459, wire_7435, wire_3354, wire_2584, wire_2552, wire_2546, wire_2540, wire_7747, wire_2546, wire_7505, wire_7481, wire_7457, wire_7433, wire_3352, wire_2584, wire_2552, wire_2546, wire_2537, wire_7755, wire_2546, wire_7503, wire_7479, wire_7455, wire_7431, wire_3350, wire_2558, wire_2552, wire_2546, wire_2537, wire_7763, wire_2543, wire_7501, wire_7477, wire_7453, wire_7429, wire_3348, wire_2558, wire_2552, wire_2543, wire_2537, wire_7771, wire_2540, wire_7499, wire_7475, wire_7451, wire_7427, wire_3346, wire_2558, wire_2552, wire_2543, wire_2537, wire_7779, wire_2537, wire_7497, wire_7473, wire_7449, wire_7425, wire_3344, wire_2558, wire_2549, wire_2543, wire_2537, wire_7693, wire_7701, wire_2584, wire_7709, wire_2558, wire_7717, wire_2555, wire_7725, wire_2555, wire_7733, wire_2552, wire_7741, wire_2549, wire_7749, wire_2546, wire_7757, wire_2543, wire_7765, wire_2543, wire_7773, wire_2540, wire_7781, wire_2537, wire_7695, wire_7703, wire_2584, wire_7711, wire_2558, wire_7719, wire_2555, wire_7727, wire_2552, wire_7735, wire_2552, wire_7743, wire_2549, wire_7751, wire_2546, wire_7759, wire_2543, wire_7767, wire_2540, wire_7775, wire_2540, wire_7783, wire_2537, wire_7697, wire_2584, wire_7705, wire_2584, wire_7713, wire_2558, wire_7721, wire_2555, wire_7729, wire_2552, wire_7737, wire_2549, wire_7745, wire_2549, wire_7753, wire_2546, wire_7761, wire_2543, wire_7769, wire_2540, wire_7777, wire_2537, wire_7689, wire_2537};
    // CHNAXY TOTAL: 60
    assign wire_3369 = io_tile_0_8_chanxy_out[0];
    assign wire_3371 = io_tile_0_8_chanxy_out[1];
    assign wire_3373 = io_tile_0_8_chanxy_out[2];
    assign wire_3375 = io_tile_0_8_chanxy_out[3];
    assign wire_3377 = io_tile_0_8_chanxy_out[4];
    assign wire_3379 = io_tile_0_8_chanxy_out[5];
    assign wire_3381 = io_tile_0_8_chanxy_out[6];
    assign wire_3383 = io_tile_0_8_chanxy_out[7];
    assign wire_3385 = io_tile_0_8_chanxy_out[8];
    assign wire_3387 = io_tile_0_8_chanxy_out[9];
    assign wire_3389 = io_tile_0_8_chanxy_out[10];
    assign wire_3391 = io_tile_0_8_chanxy_out[11];
    assign wire_3393 = io_tile_0_8_chanxy_out[12];
    assign wire_3395 = io_tile_0_8_chanxy_out[13];
    assign wire_3397 = io_tile_0_8_chanxy_out[14];
    assign wire_3399 = io_tile_0_8_chanxy_out[15];
    assign wire_3401 = io_tile_0_8_chanxy_out[16];
    assign wire_3403 = io_tile_0_8_chanxy_out[17];
    assign wire_3405 = io_tile_0_8_chanxy_out[18];
    assign wire_3407 = io_tile_0_8_chanxy_out[19];
    assign wire_3409 = io_tile_0_8_chanxy_out[20];
    assign wire_3411 = io_tile_0_8_chanxy_out[21];
    assign wire_3413 = io_tile_0_8_chanxy_out[22];
    assign wire_3415 = io_tile_0_8_chanxy_out[23];
    assign wire_3417 = io_tile_0_8_chanxy_out[24];
    assign wire_3419 = io_tile_0_8_chanxy_out[25];
    assign wire_3421 = io_tile_0_8_chanxy_out[26];
    assign wire_3423 = io_tile_0_8_chanxy_out[27];
    assign wire_3425 = io_tile_0_8_chanxy_out[28];
    assign wire_3427 = io_tile_0_8_chanxy_out[29];
    assign wire_3429 = io_tile_0_8_chanxy_out[30];
    assign wire_3431 = io_tile_0_8_chanxy_out[31];
    assign wire_3433 = io_tile_0_8_chanxy_out[32];
    assign wire_3435 = io_tile_0_8_chanxy_out[33];
    assign wire_3437 = io_tile_0_8_chanxy_out[34];
    assign wire_3439 = io_tile_0_8_chanxy_out[35];
    assign wire_3440 = io_tile_0_8_chanxy_out[36];
    assign wire_3441 = io_tile_0_8_chanxy_out[37];
    assign wire_3442 = io_tile_0_8_chanxy_out[38];
    assign wire_3443 = io_tile_0_8_chanxy_out[39];
    assign wire_3444 = io_tile_0_8_chanxy_out[40];
    assign wire_3445 = io_tile_0_8_chanxy_out[41];
    assign wire_3446 = io_tile_0_8_chanxy_out[42];
    assign wire_3447 = io_tile_0_8_chanxy_out[43];
    assign wire_3448 = io_tile_0_8_chanxy_out[44];
    assign wire_3449 = io_tile_0_8_chanxy_out[45];
    assign wire_3450 = io_tile_0_8_chanxy_out[46];
    assign wire_3451 = io_tile_0_8_chanxy_out[47];
    assign wire_3452 = io_tile_0_8_chanxy_out[48];
    assign wire_3453 = io_tile_0_8_chanxy_out[49];
    assign wire_3454 = io_tile_0_8_chanxy_out[50];
    assign wire_3455 = io_tile_0_8_chanxy_out[51];
    assign wire_3456 = io_tile_0_8_chanxy_out[52];
    assign wire_3457 = io_tile_0_8_chanxy_out[53];
    assign wire_3458 = io_tile_0_8_chanxy_out[54];
    assign wire_3459 = io_tile_0_8_chanxy_out[55];
    assign wire_3460 = io_tile_0_8_chanxy_out[56];
    assign wire_3461 = io_tile_0_8_chanxy_out[57];
    assign wire_3462 = io_tile_0_8_chanxy_out[58];
    assign wire_3463 = io_tile_0_8_chanxy_out[59];
endmodule
