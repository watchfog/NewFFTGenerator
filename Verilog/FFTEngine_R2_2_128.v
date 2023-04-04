module FFTTwiddle(
  input  [7:0]  io_nk,
  input  [1:0]  io_twiLutCaseIndex,
  output [13:0] io_wR,
  output [13:0] io_wI
);
  wire [7:0] _idx_r_pre_T_1 = ~io_nk; // @[FFTTwiddle.scala 36:51]
  wire [7:0] _idx_r_pre_T_3 = _idx_r_pre_T_1 + 8'h1; // @[FFTTwiddle.scala 36:58]
  wire [7:0] _idx_r_pre_T_4 = io_nk[7] ? _idx_r_pre_T_3 : io_nk; // @[FFTTwiddle.scala 36:24]
  wire [6:0] idx_r_pre = _idx_r_pre_T_4[6:0]; // @[FFTTwiddle.scala 36:72]
  wire  _idx_r_T_3 = idx_r_pre[6] & |idx_r_pre[5:0]; // @[FFTTwiddle.scala 38:54]
  wire [6:0] _idx_r_T_4 = ~idx_r_pre; // @[FFTTwiddle.scala 38:98]
  wire [6:0] _idx_r_T_6 = _idx_r_T_4 + 7'h1; // @[FFTTwiddle.scala 38:109]
  wire [6:0] idx_r = idx_r_pre[6] & |idx_r_pre[5:0] ? _idx_r_T_6 : idx_r_pre; // @[FFTTwiddle.scala 38:20]
  wire  lut_chg_sign_flag_i = ~io_nk[7]; // @[FFTTwiddle.scala 46:31]
  wire  chg_sign_flag_r = io_twiLutCaseIndex == 2'h2 ? ~_idx_r_T_3 : _idx_r_T_3; // @[FFTTwiddle.scala 50:30]
  wire  chg_sign_flag_i = io_twiLutCaseIndex == 2'h1 ? ~lut_chg_sign_flag_i : lut_chg_sign_flag_i; // @[FFTTwiddle.scala 51:30]
  wire [13:0] _GEN_1 = 7'h1 == idx_r ? $signed(14'shfff) : $signed(14'sh1000); // @[FFTTwiddle.scala 53:{35,35}]
  wire [13:0] _GEN_2 = 7'h2 == idx_r ? $signed(14'shffb) : $signed(_GEN_1); // @[FFTTwiddle.scala 53:{35,35}]
  wire [13:0] _GEN_3 = 7'h3 == idx_r ? $signed(14'shff5) : $signed(_GEN_2); // @[FFTTwiddle.scala 53:{35,35}]
  wire [13:0] _GEN_4 = 7'h4 == idx_r ? $signed(14'shfec) : $signed(_GEN_3); // @[FFTTwiddle.scala 53:{35,35}]
  wire [13:0] _GEN_5 = 7'h5 == idx_r ? $signed(14'shfe1) : $signed(_GEN_4); // @[FFTTwiddle.scala 53:{35,35}]
  wire [13:0] _GEN_6 = 7'h6 == idx_r ? $signed(14'shfd4) : $signed(_GEN_5); // @[FFTTwiddle.scala 53:{35,35}]
  wire [13:0] _GEN_7 = 7'h7 == idx_r ? $signed(14'shfc4) : $signed(_GEN_6); // @[FFTTwiddle.scala 53:{35,35}]
  wire [13:0] _GEN_8 = 7'h8 == idx_r ? $signed(14'shfb1) : $signed(_GEN_7); // @[FFTTwiddle.scala 53:{35,35}]
  wire [13:0] _GEN_9 = 7'h9 == idx_r ? $signed(14'shf9c) : $signed(_GEN_8); // @[FFTTwiddle.scala 53:{35,35}]
  wire [13:0] _GEN_10 = 7'ha == idx_r ? $signed(14'shf85) : $signed(_GEN_9); // @[FFTTwiddle.scala 53:{35,35}]
  wire [13:0] _GEN_11 = 7'hb == idx_r ? $signed(14'shf6c) : $signed(_GEN_10); // @[FFTTwiddle.scala 53:{35,35}]
  wire [13:0] _GEN_12 = 7'hc == idx_r ? $signed(14'shf50) : $signed(_GEN_11); // @[FFTTwiddle.scala 53:{35,35}]
  wire [13:0] _GEN_13 = 7'hd == idx_r ? $signed(14'shf31) : $signed(_GEN_12); // @[FFTTwiddle.scala 53:{35,35}]
  wire [13:0] _GEN_14 = 7'he == idx_r ? $signed(14'shf11) : $signed(_GEN_13); // @[FFTTwiddle.scala 53:{35,35}]
  wire [13:0] _GEN_15 = 7'hf == idx_r ? $signed(14'sheee) : $signed(_GEN_14); // @[FFTTwiddle.scala 53:{35,35}]
  wire [13:0] _GEN_16 = 7'h10 == idx_r ? $signed(14'shec8) : $signed(_GEN_15); // @[FFTTwiddle.scala 53:{35,35}]
  wire [13:0] _GEN_17 = 7'h11 == idx_r ? $signed(14'shea1) : $signed(_GEN_16); // @[FFTTwiddle.scala 53:{35,35}]
  wire [13:0] _GEN_18 = 7'h12 == idx_r ? $signed(14'she77) : $signed(_GEN_17); // @[FFTTwiddle.scala 53:{35,35}]
  wire [13:0] _GEN_19 = 7'h13 == idx_r ? $signed(14'she4b) : $signed(_GEN_18); // @[FFTTwiddle.scala 53:{35,35}]
  wire [13:0] _GEN_20 = 7'h14 == idx_r ? $signed(14'she1c) : $signed(_GEN_19); // @[FFTTwiddle.scala 53:{35,35}]
  wire [13:0] _GEN_21 = 7'h15 == idx_r ? $signed(14'shdec) : $signed(_GEN_20); // @[FFTTwiddle.scala 53:{35,35}]
  wire [13:0] _GEN_22 = 7'h16 == idx_r ? $signed(14'shdb9) : $signed(_GEN_21); // @[FFTTwiddle.scala 53:{35,35}]
  wire [13:0] _GEN_23 = 7'h17 == idx_r ? $signed(14'shd85) : $signed(_GEN_22); // @[FFTTwiddle.scala 53:{35,35}]
  wire [13:0] _GEN_24 = 7'h18 == idx_r ? $signed(14'shd4e) : $signed(_GEN_23); // @[FFTTwiddle.scala 53:{35,35}]
  wire [13:0] _GEN_25 = 7'h19 == idx_r ? $signed(14'shd15) : $signed(_GEN_24); // @[FFTTwiddle.scala 53:{35,35}]
  wire [13:0] _GEN_26 = 7'h1a == idx_r ? $signed(14'shcda) : $signed(_GEN_25); // @[FFTTwiddle.scala 53:{35,35}]
  wire [13:0] _GEN_27 = 7'h1b == idx_r ? $signed(14'shc9d) : $signed(_GEN_26); // @[FFTTwiddle.scala 53:{35,35}]
  wire [13:0] _GEN_28 = 7'h1c == idx_r ? $signed(14'shc5e) : $signed(_GEN_27); // @[FFTTwiddle.scala 53:{35,35}]
  wire [13:0] _GEN_29 = 7'h1d == idx_r ? $signed(14'shc1e) : $signed(_GEN_28); // @[FFTTwiddle.scala 53:{35,35}]
  wire [13:0] _GEN_30 = 7'h1e == idx_r ? $signed(14'shbdb) : $signed(_GEN_29); // @[FFTTwiddle.scala 53:{35,35}]
  wire [13:0] _GEN_31 = 7'h1f == idx_r ? $signed(14'shb97) : $signed(_GEN_30); // @[FFTTwiddle.scala 53:{35,35}]
  wire [13:0] _GEN_32 = 7'h20 == idx_r ? $signed(14'shb50) : $signed(_GEN_31); // @[FFTTwiddle.scala 53:{35,35}]
  wire [13:0] _GEN_33 = 7'h21 == idx_r ? $signed(14'shb08) : $signed(_GEN_32); // @[FFTTwiddle.scala 53:{35,35}]
  wire [13:0] _GEN_34 = 7'h22 == idx_r ? $signed(14'shabf) : $signed(_GEN_33); // @[FFTTwiddle.scala 53:{35,35}]
  wire [13:0] _GEN_35 = 7'h23 == idx_r ? $signed(14'sha73) : $signed(_GEN_34); // @[FFTTwiddle.scala 53:{35,35}]
  wire [13:0] _GEN_36 = 7'h24 == idx_r ? $signed(14'sha26) : $signed(_GEN_35); // @[FFTTwiddle.scala 53:{35,35}]
  wire [13:0] _GEN_37 = 7'h25 == idx_r ? $signed(14'sh9d8) : $signed(_GEN_36); // @[FFTTwiddle.scala 53:{35,35}]
  wire [13:0] _GEN_38 = 7'h26 == idx_r ? $signed(14'sh988) : $signed(_GEN_37); // @[FFTTwiddle.scala 53:{35,35}]
  wire [13:0] _GEN_39 = 7'h27 == idx_r ? $signed(14'sh937) : $signed(_GEN_38); // @[FFTTwiddle.scala 53:{35,35}]
  wire [13:0] _GEN_40 = 7'h28 == idx_r ? $signed(14'sh8e4) : $signed(_GEN_39); // @[FFTTwiddle.scala 53:{35,35}]
  wire [13:0] _GEN_41 = 7'h29 == idx_r ? $signed(14'sh88f) : $signed(_GEN_40); // @[FFTTwiddle.scala 53:{35,35}]
  wire [13:0] _GEN_42 = 7'h2a == idx_r ? $signed(14'sh83a) : $signed(_GEN_41); // @[FFTTwiddle.scala 53:{35,35}]
  wire [13:0] _GEN_43 = 7'h2b == idx_r ? $signed(14'sh7e3) : $signed(_GEN_42); // @[FFTTwiddle.scala 53:{35,35}]
  wire [13:0] _GEN_44 = 7'h2c == idx_r ? $signed(14'sh78b) : $signed(_GEN_43); // @[FFTTwiddle.scala 53:{35,35}]
  wire [13:0] _GEN_45 = 7'h2d == idx_r ? $signed(14'sh732) : $signed(_GEN_44); // @[FFTTwiddle.scala 53:{35,35}]
  wire [13:0] _GEN_46 = 7'h2e == idx_r ? $signed(14'sh6d7) : $signed(_GEN_45); // @[FFTTwiddle.scala 53:{35,35}]
  wire [13:0] _GEN_47 = 7'h2f == idx_r ? $signed(14'sh67c) : $signed(_GEN_46); // @[FFTTwiddle.scala 53:{35,35}]
  wire [13:0] _GEN_48 = 7'h30 == idx_r ? $signed(14'sh61f) : $signed(_GEN_47); // @[FFTTwiddle.scala 53:{35,35}]
  wire [13:0] _GEN_49 = 7'h31 == idx_r ? $signed(14'sh5c2) : $signed(_GEN_48); // @[FFTTwiddle.scala 53:{35,35}]
  wire [13:0] _GEN_50 = 7'h32 == idx_r ? $signed(14'sh564) : $signed(_GEN_49); // @[FFTTwiddle.scala 53:{35,35}]
  wire [13:0] _GEN_51 = 7'h33 == idx_r ? $signed(14'sh505) : $signed(_GEN_50); // @[FFTTwiddle.scala 53:{35,35}]
  wire [13:0] _GEN_52 = 7'h34 == idx_r ? $signed(14'sh4a5) : $signed(_GEN_51); // @[FFTTwiddle.scala 53:{35,35}]
  wire [13:0] _GEN_53 = 7'h35 == idx_r ? $signed(14'sh444) : $signed(_GEN_52); // @[FFTTwiddle.scala 53:{35,35}]
  wire [13:0] _GEN_54 = 7'h36 == idx_r ? $signed(14'sh3e3) : $signed(_GEN_53); // @[FFTTwiddle.scala 53:{35,35}]
  wire [13:0] _GEN_55 = 7'h37 == idx_r ? $signed(14'sh381) : $signed(_GEN_54); // @[FFTTwiddle.scala 53:{35,35}]
  wire [13:0] _GEN_56 = 7'h38 == idx_r ? $signed(14'sh31f) : $signed(_GEN_55); // @[FFTTwiddle.scala 53:{35,35}]
  wire [13:0] _GEN_57 = 7'h39 == idx_r ? $signed(14'sh2bc) : $signed(_GEN_56); // @[FFTTwiddle.scala 53:{35,35}]
  wire [13:0] _GEN_58 = 7'h3a == idx_r ? $signed(14'sh259) : $signed(_GEN_57); // @[FFTTwiddle.scala 53:{35,35}]
  wire [13:0] _GEN_59 = 7'h3b == idx_r ? $signed(14'sh1f5) : $signed(_GEN_58); // @[FFTTwiddle.scala 53:{35,35}]
  wire [13:0] _GEN_60 = 7'h3c == idx_r ? $signed(14'sh191) : $signed(_GEN_59); // @[FFTTwiddle.scala 53:{35,35}]
  wire [13:0] _GEN_61 = 7'h3d == idx_r ? $signed(14'sh12d) : $signed(_GEN_60); // @[FFTTwiddle.scala 53:{35,35}]
  wire [13:0] _GEN_62 = 7'h3e == idx_r ? $signed(14'shc9) : $signed(_GEN_61); // @[FFTTwiddle.scala 53:{35,35}]
  wire [13:0] _GEN_63 = 7'h3f == idx_r ? $signed(14'sh65) : $signed(_GEN_62); // @[FFTTwiddle.scala 53:{35,35}]
  wire [13:0] _GEN_64 = 7'h40 == idx_r ? $signed(14'sh0) : $signed(_GEN_63); // @[FFTTwiddle.scala 53:{35,35}]
  wire [13:0] _io_wR_T_2 = 14'sh0 - $signed(_GEN_64); // @[FFTTwiddle.scala 53:35]
  wire [13:0] _GEN_66 = 7'h1 == idx_r ? $signed(14'sh65) : $signed(14'sh0); // @[FFTTwiddle.scala 54:{35,35}]
  wire [13:0] _GEN_67 = 7'h2 == idx_r ? $signed(14'shc9) : $signed(_GEN_66); // @[FFTTwiddle.scala 54:{35,35}]
  wire [13:0] _GEN_68 = 7'h3 == idx_r ? $signed(14'sh12d) : $signed(_GEN_67); // @[FFTTwiddle.scala 54:{35,35}]
  wire [13:0] _GEN_69 = 7'h4 == idx_r ? $signed(14'sh191) : $signed(_GEN_68); // @[FFTTwiddle.scala 54:{35,35}]
  wire [13:0] _GEN_70 = 7'h5 == idx_r ? $signed(14'sh1f5) : $signed(_GEN_69); // @[FFTTwiddle.scala 54:{35,35}]
  wire [13:0] _GEN_71 = 7'h6 == idx_r ? $signed(14'sh259) : $signed(_GEN_70); // @[FFTTwiddle.scala 54:{35,35}]
  wire [13:0] _GEN_72 = 7'h7 == idx_r ? $signed(14'sh2bc) : $signed(_GEN_71); // @[FFTTwiddle.scala 54:{35,35}]
  wire [13:0] _GEN_73 = 7'h8 == idx_r ? $signed(14'sh31f) : $signed(_GEN_72); // @[FFTTwiddle.scala 54:{35,35}]
  wire [13:0] _GEN_74 = 7'h9 == idx_r ? $signed(14'sh381) : $signed(_GEN_73); // @[FFTTwiddle.scala 54:{35,35}]
  wire [13:0] _GEN_75 = 7'ha == idx_r ? $signed(14'sh3e3) : $signed(_GEN_74); // @[FFTTwiddle.scala 54:{35,35}]
  wire [13:0] _GEN_76 = 7'hb == idx_r ? $signed(14'sh444) : $signed(_GEN_75); // @[FFTTwiddle.scala 54:{35,35}]
  wire [13:0] _GEN_77 = 7'hc == idx_r ? $signed(14'sh4a5) : $signed(_GEN_76); // @[FFTTwiddle.scala 54:{35,35}]
  wire [13:0] _GEN_78 = 7'hd == idx_r ? $signed(14'sh505) : $signed(_GEN_77); // @[FFTTwiddle.scala 54:{35,35}]
  wire [13:0] _GEN_79 = 7'he == idx_r ? $signed(14'sh564) : $signed(_GEN_78); // @[FFTTwiddle.scala 54:{35,35}]
  wire [13:0] _GEN_80 = 7'hf == idx_r ? $signed(14'sh5c2) : $signed(_GEN_79); // @[FFTTwiddle.scala 54:{35,35}]
  wire [13:0] _GEN_81 = 7'h10 == idx_r ? $signed(14'sh61f) : $signed(_GEN_80); // @[FFTTwiddle.scala 54:{35,35}]
  wire [13:0] _GEN_82 = 7'h11 == idx_r ? $signed(14'sh67c) : $signed(_GEN_81); // @[FFTTwiddle.scala 54:{35,35}]
  wire [13:0] _GEN_83 = 7'h12 == idx_r ? $signed(14'sh6d7) : $signed(_GEN_82); // @[FFTTwiddle.scala 54:{35,35}]
  wire [13:0] _GEN_84 = 7'h13 == idx_r ? $signed(14'sh732) : $signed(_GEN_83); // @[FFTTwiddle.scala 54:{35,35}]
  wire [13:0] _GEN_85 = 7'h14 == idx_r ? $signed(14'sh78b) : $signed(_GEN_84); // @[FFTTwiddle.scala 54:{35,35}]
  wire [13:0] _GEN_86 = 7'h15 == idx_r ? $signed(14'sh7e3) : $signed(_GEN_85); // @[FFTTwiddle.scala 54:{35,35}]
  wire [13:0] _GEN_87 = 7'h16 == idx_r ? $signed(14'sh83a) : $signed(_GEN_86); // @[FFTTwiddle.scala 54:{35,35}]
  wire [13:0] _GEN_88 = 7'h17 == idx_r ? $signed(14'sh88f) : $signed(_GEN_87); // @[FFTTwiddle.scala 54:{35,35}]
  wire [13:0] _GEN_89 = 7'h18 == idx_r ? $signed(14'sh8e4) : $signed(_GEN_88); // @[FFTTwiddle.scala 54:{35,35}]
  wire [13:0] _GEN_90 = 7'h19 == idx_r ? $signed(14'sh937) : $signed(_GEN_89); // @[FFTTwiddle.scala 54:{35,35}]
  wire [13:0] _GEN_91 = 7'h1a == idx_r ? $signed(14'sh988) : $signed(_GEN_90); // @[FFTTwiddle.scala 54:{35,35}]
  wire [13:0] _GEN_92 = 7'h1b == idx_r ? $signed(14'sh9d8) : $signed(_GEN_91); // @[FFTTwiddle.scala 54:{35,35}]
  wire [13:0] _GEN_93 = 7'h1c == idx_r ? $signed(14'sha26) : $signed(_GEN_92); // @[FFTTwiddle.scala 54:{35,35}]
  wire [13:0] _GEN_94 = 7'h1d == idx_r ? $signed(14'sha73) : $signed(_GEN_93); // @[FFTTwiddle.scala 54:{35,35}]
  wire [13:0] _GEN_95 = 7'h1e == idx_r ? $signed(14'shabf) : $signed(_GEN_94); // @[FFTTwiddle.scala 54:{35,35}]
  wire [13:0] _GEN_96 = 7'h1f == idx_r ? $signed(14'shb08) : $signed(_GEN_95); // @[FFTTwiddle.scala 54:{35,35}]
  wire [13:0] _GEN_97 = 7'h20 == idx_r ? $signed(14'shb50) : $signed(_GEN_96); // @[FFTTwiddle.scala 54:{35,35}]
  wire [13:0] _GEN_98 = 7'h21 == idx_r ? $signed(14'shb97) : $signed(_GEN_97); // @[FFTTwiddle.scala 54:{35,35}]
  wire [13:0] _GEN_99 = 7'h22 == idx_r ? $signed(14'shbdb) : $signed(_GEN_98); // @[FFTTwiddle.scala 54:{35,35}]
  wire [13:0] _GEN_100 = 7'h23 == idx_r ? $signed(14'shc1e) : $signed(_GEN_99); // @[FFTTwiddle.scala 54:{35,35}]
  wire [13:0] _GEN_101 = 7'h24 == idx_r ? $signed(14'shc5e) : $signed(_GEN_100); // @[FFTTwiddle.scala 54:{35,35}]
  wire [13:0] _GEN_102 = 7'h25 == idx_r ? $signed(14'shc9d) : $signed(_GEN_101); // @[FFTTwiddle.scala 54:{35,35}]
  wire [13:0] _GEN_103 = 7'h26 == idx_r ? $signed(14'shcda) : $signed(_GEN_102); // @[FFTTwiddle.scala 54:{35,35}]
  wire [13:0] _GEN_104 = 7'h27 == idx_r ? $signed(14'shd15) : $signed(_GEN_103); // @[FFTTwiddle.scala 54:{35,35}]
  wire [13:0] _GEN_105 = 7'h28 == idx_r ? $signed(14'shd4e) : $signed(_GEN_104); // @[FFTTwiddle.scala 54:{35,35}]
  wire [13:0] _GEN_106 = 7'h29 == idx_r ? $signed(14'shd85) : $signed(_GEN_105); // @[FFTTwiddle.scala 54:{35,35}]
  wire [13:0] _GEN_107 = 7'h2a == idx_r ? $signed(14'shdb9) : $signed(_GEN_106); // @[FFTTwiddle.scala 54:{35,35}]
  wire [13:0] _GEN_108 = 7'h2b == idx_r ? $signed(14'shdec) : $signed(_GEN_107); // @[FFTTwiddle.scala 54:{35,35}]
  wire [13:0] _GEN_109 = 7'h2c == idx_r ? $signed(14'she1c) : $signed(_GEN_108); // @[FFTTwiddle.scala 54:{35,35}]
  wire [13:0] _GEN_110 = 7'h2d == idx_r ? $signed(14'she4b) : $signed(_GEN_109); // @[FFTTwiddle.scala 54:{35,35}]
  wire [13:0] _GEN_111 = 7'h2e == idx_r ? $signed(14'she77) : $signed(_GEN_110); // @[FFTTwiddle.scala 54:{35,35}]
  wire [13:0] _GEN_112 = 7'h2f == idx_r ? $signed(14'shea1) : $signed(_GEN_111); // @[FFTTwiddle.scala 54:{35,35}]
  wire [13:0] _GEN_113 = 7'h30 == idx_r ? $signed(14'shec8) : $signed(_GEN_112); // @[FFTTwiddle.scala 54:{35,35}]
  wire [13:0] _GEN_114 = 7'h31 == idx_r ? $signed(14'sheee) : $signed(_GEN_113); // @[FFTTwiddle.scala 54:{35,35}]
  wire [13:0] _GEN_115 = 7'h32 == idx_r ? $signed(14'shf11) : $signed(_GEN_114); // @[FFTTwiddle.scala 54:{35,35}]
  wire [13:0] _GEN_116 = 7'h33 == idx_r ? $signed(14'shf31) : $signed(_GEN_115); // @[FFTTwiddle.scala 54:{35,35}]
  wire [13:0] _GEN_117 = 7'h34 == idx_r ? $signed(14'shf50) : $signed(_GEN_116); // @[FFTTwiddle.scala 54:{35,35}]
  wire [13:0] _GEN_118 = 7'h35 == idx_r ? $signed(14'shf6c) : $signed(_GEN_117); // @[FFTTwiddle.scala 54:{35,35}]
  wire [13:0] _GEN_119 = 7'h36 == idx_r ? $signed(14'shf85) : $signed(_GEN_118); // @[FFTTwiddle.scala 54:{35,35}]
  wire [13:0] _GEN_120 = 7'h37 == idx_r ? $signed(14'shf9c) : $signed(_GEN_119); // @[FFTTwiddle.scala 54:{35,35}]
  wire [13:0] _GEN_121 = 7'h38 == idx_r ? $signed(14'shfb1) : $signed(_GEN_120); // @[FFTTwiddle.scala 54:{35,35}]
  wire [13:0] _GEN_122 = 7'h39 == idx_r ? $signed(14'shfc4) : $signed(_GEN_121); // @[FFTTwiddle.scala 54:{35,35}]
  wire [13:0] _GEN_123 = 7'h3a == idx_r ? $signed(14'shfd4) : $signed(_GEN_122); // @[FFTTwiddle.scala 54:{35,35}]
  wire [13:0] _GEN_124 = 7'h3b == idx_r ? $signed(14'shfe1) : $signed(_GEN_123); // @[FFTTwiddle.scala 54:{35,35}]
  wire [13:0] _GEN_125 = 7'h3c == idx_r ? $signed(14'shfec) : $signed(_GEN_124); // @[FFTTwiddle.scala 54:{35,35}]
  wire [13:0] _GEN_126 = 7'h3d == idx_r ? $signed(14'shff5) : $signed(_GEN_125); // @[FFTTwiddle.scala 54:{35,35}]
  wire [13:0] _GEN_127 = 7'h3e == idx_r ? $signed(14'shffb) : $signed(_GEN_126); // @[FFTTwiddle.scala 54:{35,35}]
  wire [13:0] _GEN_128 = 7'h3f == idx_r ? $signed(14'shfff) : $signed(_GEN_127); // @[FFTTwiddle.scala 54:{35,35}]
  wire [13:0] _GEN_129 = 7'h40 == idx_r ? $signed(14'sh1000) : $signed(_GEN_128); // @[FFTTwiddle.scala 54:{35,35}]
  wire [13:0] _io_wI_T_2 = 14'sh0 - $signed(_GEN_129); // @[FFTTwiddle.scala 54:35]
  assign io_wR = chg_sign_flag_r ? $signed(_io_wR_T_2) : $signed(_GEN_64); // @[FFTTwiddle.scala 53:17]
  assign io_wI = chg_sign_flag_i ? $signed(_io_wI_T_2) : $signed(_GEN_129); // @[FFTTwiddle.scala 54:17]
endmodule
module FFT3PipelineCalc(
  input         clock,
  input         reset,
  input  [15:0] io_dataInSR,
  input  [15:0] io_dataInSI,
  input  [15:0] io_dataInTR,
  input  [15:0] io_dataInTI,
  output [15:0] io_dataOutSR3c,
  output [15:0] io_dataOutSI3c,
  output [15:0] io_dataOutTR3c,
  output [15:0] io_dataOutTI3c,
  input  [6:0]  io_nk,
  input         io_rShiftSym,
  input         io_isFFT,
  input         io_procMode,
  input         io_state1c,
  input         io_state2c
);
`ifdef RANDOMIZE_REG_INIT
  reg [31:0] _RAND_0;
  reg [31:0] _RAND_1;
  reg [31:0] _RAND_2;
  reg [31:0] _RAND_3;
  reg [31:0] _RAND_4;
  reg [31:0] _RAND_5;
  reg [31:0] _RAND_6;
  reg [31:0] _RAND_7;
  reg [31:0] _RAND_8;
  reg [31:0] _RAND_9;
  reg [31:0] _RAND_10;
`endif // RANDOMIZE_REG_INIT
  wire [7:0] fftTwiddle_io_nk; // @[FFT3PipelineCalc.scala 45:28]
  wire [1:0] fftTwiddle_io_twiLutCaseIndex; // @[FFT3PipelineCalc.scala 45:28]
  wire [13:0] fftTwiddle_io_wR; // @[FFT3PipelineCalc.scala 45:28]
  wire [13:0] fftTwiddle_io_wI; // @[FFT3PipelineCalc.scala 45:28]
  wire [15:0] _dataInSRRnd_T_2 = {io_dataInSR[15],io_dataInSR[15:1]}; // @[Cat.scala 33:92]
  wire [15:0] _dataInSRRnd_T_5 = {15'h0,io_dataInSR[0]}; // @[Cat.scala 33:92]
  wire [15:0] _dataInSIRnd_T_2 = {io_dataInSI[15],io_dataInSI[15:1]}; // @[Cat.scala 33:92]
  wire [15:0] _dataInSIRnd_T_5 = {15'h0,io_dataInSI[0]}; // @[Cat.scala 33:92]
  wire [15:0] _dataInTRRnd_T_2 = {io_dataInTR[15],io_dataInTR[15:1]}; // @[Cat.scala 33:92]
  wire [15:0] _dataInTRRnd_T_5 = {15'h0,io_dataInTR[0]}; // @[Cat.scala 33:92]
  wire [15:0] _dataInTIRnd_T_2 = {io_dataInTI[15],io_dataInTI[15:1]}; // @[Cat.scala 33:92]
  wire [15:0] _dataInTIRnd_T_5 = {15'h0,io_dataInTI[0]}; // @[Cat.scala 33:92]
  wire [15:0] _dataInSR1c_T = _dataInSRRnd_T_2 + _dataInSRRnd_T_5; // @[FFT3PipelineCalc.scala 34:64]
  wire [15:0] _dataInSI1c_T = _dataInSIRnd_T_2 + _dataInSIRnd_T_5; // @[FFT3PipelineCalc.scala 35:64]
  wire [15:0] _dataInTR1c_T = _dataInTRRnd_T_2 + _dataInTRRnd_T_5; // @[FFT3PipelineCalc.scala 36:64]
  wire [15:0] _dataInTI1c_T = _dataInTIRnd_T_2 + _dataInTIRnd_T_5; // @[FFT3PipelineCalc.scala 37:64]
  reg [6:0] nk1c; // @[Reg.scala 35:20]
  reg [15:0] sR2c; // @[Reg.scala 35:20]
  reg [15:0] sI2c; // @[Reg.scala 35:20]
  reg [15:0] qR2cProc; // @[Reg.scala 35:20]
  reg [15:0] tI2c; // @[Reg.scala 35:20]
  reg [13:0] wR2c; // @[Reg.scala 35:20]
  reg [13:0] wI2c; // @[Reg.scala 35:20]
  wire [15:0] addTRI = $signed(qR2cProc) + $signed(tI2c); // @[FFT3PipelineCalc.scala 58:23]
  wire [13:0] addWRI = $signed(wR2c) + $signed(wI2c); // @[FFT3PipelineCalc.scala 59:23]
  wire [29:0] multS = $signed(addTRI) * $signed(addWRI); // @[FFT3PipelineCalc.scala 60:24]
  wire [29:0] multR = $signed(qR2cProc) * $signed(wR2c); // @[FFT3PipelineCalc.scala 62:25]
  wire [29:0] multI = $signed(tI2c) * $signed(wI2c); // @[FFT3PipelineCalc.scala 65:25]
  wire [29:0] qR2cKernel = $signed(multR) - $signed(multI); // @[FFT3PipelineCalc.scala 68:28]
  wire [29:0] _qI2cKernel_T_2 = $signed(multS) - $signed(multR); // @[FFT3PipelineCalc.scala 69:28]
  wire [29:0] qI2cKernel = $signed(_qI2cKernel_T_2) - $signed(multI); // @[FFT3PipelineCalc.scala 69:36]
  wire [15:0] qI2cProc = 16'sh0 - $signed(tI2c); // @[FFT3PipelineCalc.scala 72:20]
  wire [27:0] _GEN_11 = {$signed(qR2cProc), 12'h0}; // @[FFT3PipelineCalc.scala 74:19]
  wire [29:0] qR2c = io_procMode ? $signed({{2{_GEN_11[27]}},_GEN_11}) : $signed(qR2cKernel); // @[FFT3PipelineCalc.scala 74:19]
  wire [27:0] _GEN_12 = {$signed(qI2cProc), 12'h0}; // @[FFT3PipelineCalc.scala 75:19]
  wire [29:0] qI2c = io_procMode ? $signed({{2{_GEN_12[27]}},_GEN_12}) : $signed(qI2cKernel); // @[FFT3PipelineCalc.scala 75:19]
  reg [15:0] sR3c; // @[Reg.scala 35:20]
  reg [15:0] sI3c; // @[Reg.scala 35:20]
  reg [29:0] qR3c; // @[Reg.scala 35:20]
  wire [41:0] _GEN_9 = io_state2c ? $signed({{12{qR2c[29]}},qR2c}) : $signed({$signed(qR3c), 12'h0}); // @[Reg.scala 36:18 35:20 36:22]
  reg [29:0] qI3c; // @[Reg.scala 35:20]
  wire [41:0] _GEN_10 = io_state2c ? $signed({{12{qI2c[29]}},qI2c}) : $signed({$signed(qI3c), 12'h0}); // @[Reg.scala 36:18 35:20 36:22]
  wire [29:0] _GEN_13 = {{14{sR3c[15]}},sR3c}; // @[FFT3PipelineCalc.scala 83:27]
  wire [29:0] xR3cPrePre = $signed(_GEN_13) + $signed(qR3c); // @[FFT3PipelineCalc.scala 83:27]
  wire [29:0] _GEN_14 = {{14{sI3c[15]}},sI3c}; // @[FFT3PipelineCalc.scala 84:27]
  wire [29:0] xI3cPrePre = $signed(_GEN_14) + $signed(qI3c); // @[FFT3PipelineCalc.scala 84:27]
  wire [14:0] _xR3cPre_T_10 = xR3cPrePre[29] ? 15'h7fff : 15'h0; // @[Bitwise.scala 77:12]
  wire [14:0] _xR3cPre_T_11 = ~_xR3cPre_T_10; // @[FFT3PipelineCalc.scala 86:188]
  wire [15:0] _xR3cPre_T_13 = {xR3cPrePre[29],_xR3cPre_T_11}; // @[FFT3PipelineCalc.scala 86:262]
  wire [29:0] xR3cPre = sR3c[15] == qR3c[29] & sR3c[15] != xR3cPrePre[29] ? $signed({{14{_xR3cPre_T_13[15]}},
    _xR3cPre_T_13}) : $signed(xR3cPrePre); // @[FFT3PipelineCalc.scala 86:22]
  wire [14:0] _xI3cPre_T_10 = xI3cPrePre[29] ? 15'h7fff : 15'h0; // @[Bitwise.scala 77:12]
  wire [14:0] _xI3cPre_T_11 = ~_xI3cPre_T_10; // @[FFT3PipelineCalc.scala 87:188]
  wire [15:0] _xI3cPre_T_13 = {xI3cPrePre[29],_xI3cPre_T_11}; // @[FFT3PipelineCalc.scala 87:262]
  wire [29:0] xI3cPre = sI3c[15] == qI3c[29] & sI3c[15] != xI3cPrePre[29] ? $signed({{14{_xI3cPre_T_13[15]}},
    _xI3cPre_T_13}) : $signed(xI3cPrePre); // @[FFT3PipelineCalc.scala 87:22]
  wire [29:0] yR3cPrePre = $signed(_GEN_13) - $signed(qR3c); // @[FFT3PipelineCalc.scala 92:27]
  wire [29:0] yI3cPrePre = $signed(_GEN_14) - $signed(qI3c); // @[FFT3PipelineCalc.scala 93:27]
  wire [14:0] _yR3cPre_T_10 = yR3cPrePre[29] ? 15'h7fff : 15'h0; // @[Bitwise.scala 77:12]
  wire [14:0] _yR3cPre_T_11 = ~_yR3cPre_T_10; // @[FFT3PipelineCalc.scala 95:188]
  wire [15:0] _yR3cPre_T_13 = {yR3cPrePre[29],_yR3cPre_T_11}; // @[FFT3PipelineCalc.scala 95:262]
  wire [29:0] yR3cPre = sR3c[15] != qR3c[29] & sR3c[15] != yR3cPrePre[29] ? $signed({{14{_yR3cPre_T_13[15]}},
    _yR3cPre_T_13}) : $signed(yR3cPrePre); // @[FFT3PipelineCalc.scala 95:22]
  wire [14:0] _yI3cPre_T_10 = yI3cPrePre[29] ? 15'h7fff : 15'h0; // @[Bitwise.scala 77:12]
  wire [14:0] _yI3cPre_T_11 = ~_yI3cPre_T_10; // @[FFT3PipelineCalc.scala 96:188]
  wire [15:0] _yI3cPre_T_13 = {yI3cPrePre[29],_yI3cPre_T_11}; // @[FFT3PipelineCalc.scala 96:262]
  wire [29:0] yI3cPre = sI3c[15] != qI3c[29] & sI3c[15] != yI3cPrePre[29] ? $signed({{14{_yI3cPre_T_13[15]}},
    _yI3cPre_T_13}) : $signed(yI3cPrePre); // @[FFT3PipelineCalc.scala 96:22]
  FFTTwiddle fftTwiddle ( // @[FFT3PipelineCalc.scala 45:28]
    .io_nk(fftTwiddle_io_nk),
    .io_twiLutCaseIndex(fftTwiddle_io_twiLutCaseIndex),
    .io_wR(fftTwiddle_io_wR),
    .io_wI(fftTwiddle_io_wI)
  );
  assign io_dataOutSR3c = xR3cPre[15:0]; // @[FFT3PipelineCalc.scala 89:64]
  assign io_dataOutSI3c = xI3cPre[15:0]; // @[FFT3PipelineCalc.scala 90:64]
  assign io_dataOutTR3c = yR3cPre[15:0]; // @[FFT3PipelineCalc.scala 98:64]
  assign io_dataOutTI3c = yI3cPre[15:0]; // @[FFT3PipelineCalc.scala 99:64]
  assign fftTwiddle_io_nk = {{1'd0}, nk1c}; // @[FFT3PipelineCalc.scala 46:22]
  assign fftTwiddle_io_twiLutCaseIndex = io_isFFT ? 2'h0 : 2'h1; // @[FFT3PipelineCalc.scala 43:30]
  always @(posedge clock) begin
    if (reset) begin // @[Reg.scala 35:20]
      nk1c <= 7'h0; // @[Reg.scala 35:20]
    end else begin
      nk1c <= io_nk;
    end
    if (reset) begin // @[Reg.scala 35:20]
      sR2c <= 16'sh0; // @[Reg.scala 35:20]
    end else if (io_state1c) begin // @[Reg.scala 36:18]
      if (io_rShiftSym) begin // @[FFT3PipelineCalc.scala 34:25]
        sR2c <= _dataInSR1c_T;
      end else begin
        sR2c <= io_dataInSR;
      end
    end
    if (reset) begin // @[Reg.scala 35:20]
      sI2c <= 16'sh0; // @[Reg.scala 35:20]
    end else if (io_state1c) begin // @[Reg.scala 36:18]
      if (io_rShiftSym) begin // @[FFT3PipelineCalc.scala 35:25]
        sI2c <= _dataInSI1c_T;
      end else begin
        sI2c <= io_dataInSI;
      end
    end
    if (reset) begin // @[Reg.scala 35:20]
      qR2cProc <= 16'sh0; // @[Reg.scala 35:20]
    end else if (io_state1c) begin // @[Reg.scala 36:18]
      if (io_rShiftSym) begin // @[FFT3PipelineCalc.scala 36:25]
        qR2cProc <= _dataInTR1c_T;
      end else begin
        qR2cProc <= io_dataInTR;
      end
    end
    if (reset) begin // @[Reg.scala 35:20]
      tI2c <= 16'sh0; // @[Reg.scala 35:20]
    end else if (io_state1c) begin // @[Reg.scala 36:18]
      if (io_rShiftSym) begin // @[FFT3PipelineCalc.scala 37:25]
        tI2c <= _dataInTI1c_T;
      end else begin
        tI2c <= io_dataInTI;
      end
    end
    if (reset) begin // @[Reg.scala 35:20]
      wR2c <= 14'sh0; // @[Reg.scala 35:20]
    end else if (io_state1c) begin // @[Reg.scala 36:18]
      wR2c <= fftTwiddle_io_wR; // @[Reg.scala 36:22]
    end
    if (reset) begin // @[Reg.scala 35:20]
      wI2c <= 14'sh0; // @[Reg.scala 35:20]
    end else if (io_state1c) begin // @[Reg.scala 36:18]
      wI2c <= fftTwiddle_io_wI; // @[Reg.scala 36:22]
    end
    if (reset) begin // @[Reg.scala 35:20]
      sR3c <= 16'sh0; // @[Reg.scala 35:20]
    end else if (io_state2c) begin // @[Reg.scala 36:18]
      sR3c <= sR2c; // @[Reg.scala 36:22]
    end
    if (reset) begin // @[Reg.scala 35:20]
      sI3c <= 16'sh0; // @[Reg.scala 35:20]
    end else if (io_state2c) begin // @[Reg.scala 36:18]
      sI3c <= sI2c; // @[Reg.scala 36:22]
    end
    if (reset) begin // @[Reg.scala 35:20]
      qR3c <= 30'sh0; // @[Reg.scala 35:20]
    end else begin
      qR3c <= _GEN_9[41:12];
    end
    if (reset) begin // @[Reg.scala 35:20]
      qI3c <= 30'sh0; // @[Reg.scala 35:20]
    end else begin
      qI3c <= _GEN_10[41:12];
    end
  end
// Register and memory initialization
`ifdef RANDOMIZE_GARBAGE_ASSIGN
`define RANDOMIZE
`endif
`ifdef RANDOMIZE_INVALID_ASSIGN
`define RANDOMIZE
`endif
`ifdef RANDOMIZE_REG_INIT
`define RANDOMIZE
`endif
`ifdef RANDOMIZE_MEM_INIT
`define RANDOMIZE
`endif
`ifndef RANDOM
`define RANDOM $random
`endif
`ifdef RANDOMIZE_MEM_INIT
  integer initvar;
`endif
`ifndef SYNTHESIS
`ifdef FIRRTL_BEFORE_INITIAL
`FIRRTL_BEFORE_INITIAL
`endif
initial begin
  `ifdef RANDOMIZE
    `ifdef INIT_RANDOM
      `INIT_RANDOM
    `endif
    `ifndef VERILATOR
      `ifdef RANDOMIZE_DELAY
        #`RANDOMIZE_DELAY begin end
      `else
        #0.002 begin end
      `endif
    `endif
`ifdef RANDOMIZE_REG_INIT
  _RAND_0 = {1{`RANDOM}};
  nk1c = _RAND_0[6:0];
  _RAND_1 = {1{`RANDOM}};
  sR2c = _RAND_1[15:0];
  _RAND_2 = {1{`RANDOM}};
  sI2c = _RAND_2[15:0];
  _RAND_3 = {1{`RANDOM}};
  qR2cProc = _RAND_3[15:0];
  _RAND_4 = {1{`RANDOM}};
  tI2c = _RAND_4[15:0];
  _RAND_5 = {1{`RANDOM}};
  wR2c = _RAND_5[13:0];
  _RAND_6 = {1{`RANDOM}};
  wI2c = _RAND_6[13:0];
  _RAND_7 = {1{`RANDOM}};
  sR3c = _RAND_7[15:0];
  _RAND_8 = {1{`RANDOM}};
  sI3c = _RAND_8[15:0];
  _RAND_9 = {1{`RANDOM}};
  qR3c = _RAND_9[29:0];
  _RAND_10 = {1{`RANDOM}};
  qI3c = _RAND_10[29:0];
`endif // RANDOMIZE_REG_INIT
  `endif // RANDOMIZE
end // initial
`ifdef FIRRTL_AFTER_INITIAL
`FIRRTL_AFTER_INITIAL
`endif
`endif // SYNTHESIS
endmodule
module FFTTwiddle_1(
  input  [6:0]  io_nk,
  input  [1:0]  io_twiLutCaseIndex,
  output [13:0] io_wR,
  output [13:0] io_wI
);
  wire [6:0] _idx_r_pre_T_1 = ~io_nk; // @[FFTTwiddle.scala 36:51]
  wire [6:0] _idx_r_pre_T_3 = _idx_r_pre_T_1 + 7'h1; // @[FFTTwiddle.scala 36:58]
  wire [6:0] _idx_r_pre_T_4 = io_nk[6] ? _idx_r_pre_T_3 : io_nk; // @[FFTTwiddle.scala 36:24]
  wire [5:0] idx_r_pre = _idx_r_pre_T_4[5:0]; // @[FFTTwiddle.scala 36:72]
  wire  _idx_r_T_3 = idx_r_pre[5] & |idx_r_pre[4:0]; // @[FFTTwiddle.scala 38:54]
  wire [5:0] _idx_r_T_4 = ~idx_r_pre; // @[FFTTwiddle.scala 38:98]
  wire [5:0] _idx_r_T_6 = _idx_r_T_4 + 6'h1; // @[FFTTwiddle.scala 38:109]
  wire [5:0] idx_r = idx_r_pre[5] & |idx_r_pre[4:0] ? _idx_r_T_6 : idx_r_pre; // @[FFTTwiddle.scala 38:20]
  wire  lut_chg_sign_flag_i = ~io_nk[6]; // @[FFTTwiddle.scala 46:31]
  wire  chg_sign_flag_r = io_twiLutCaseIndex == 2'h2 ? ~_idx_r_T_3 : _idx_r_T_3; // @[FFTTwiddle.scala 50:30]
  wire  chg_sign_flag_i = io_twiLutCaseIndex == 2'h1 ? ~lut_chg_sign_flag_i : lut_chg_sign_flag_i; // @[FFTTwiddle.scala 51:30]
  wire [13:0] _GEN_1 = 6'h1 == idx_r ? $signed(14'shffb) : $signed(14'sh1000); // @[FFTTwiddle.scala 53:{35,35}]
  wire [13:0] _GEN_2 = 6'h2 == idx_r ? $signed(14'shfec) : $signed(_GEN_1); // @[FFTTwiddle.scala 53:{35,35}]
  wire [13:0] _GEN_3 = 6'h3 == idx_r ? $signed(14'shfd4) : $signed(_GEN_2); // @[FFTTwiddle.scala 53:{35,35}]
  wire [13:0] _GEN_4 = 6'h4 == idx_r ? $signed(14'shfb1) : $signed(_GEN_3); // @[FFTTwiddle.scala 53:{35,35}]
  wire [13:0] _GEN_5 = 6'h5 == idx_r ? $signed(14'shf85) : $signed(_GEN_4); // @[FFTTwiddle.scala 53:{35,35}]
  wire [13:0] _GEN_6 = 6'h6 == idx_r ? $signed(14'shf50) : $signed(_GEN_5); // @[FFTTwiddle.scala 53:{35,35}]
  wire [13:0] _GEN_7 = 6'h7 == idx_r ? $signed(14'shf11) : $signed(_GEN_6); // @[FFTTwiddle.scala 53:{35,35}]
  wire [13:0] _GEN_8 = 6'h8 == idx_r ? $signed(14'shec8) : $signed(_GEN_7); // @[FFTTwiddle.scala 53:{35,35}]
  wire [13:0] _GEN_9 = 6'h9 == idx_r ? $signed(14'she77) : $signed(_GEN_8); // @[FFTTwiddle.scala 53:{35,35}]
  wire [13:0] _GEN_10 = 6'ha == idx_r ? $signed(14'she1c) : $signed(_GEN_9); // @[FFTTwiddle.scala 53:{35,35}]
  wire [13:0] _GEN_11 = 6'hb == idx_r ? $signed(14'shdb9) : $signed(_GEN_10); // @[FFTTwiddle.scala 53:{35,35}]
  wire [13:0] _GEN_12 = 6'hc == idx_r ? $signed(14'shd4e) : $signed(_GEN_11); // @[FFTTwiddle.scala 53:{35,35}]
  wire [13:0] _GEN_13 = 6'hd == idx_r ? $signed(14'shcda) : $signed(_GEN_12); // @[FFTTwiddle.scala 53:{35,35}]
  wire [13:0] _GEN_14 = 6'he == idx_r ? $signed(14'shc5e) : $signed(_GEN_13); // @[FFTTwiddle.scala 53:{35,35}]
  wire [13:0] _GEN_15 = 6'hf == idx_r ? $signed(14'shbdb) : $signed(_GEN_14); // @[FFTTwiddle.scala 53:{35,35}]
  wire [13:0] _GEN_16 = 6'h10 == idx_r ? $signed(14'shb50) : $signed(_GEN_15); // @[FFTTwiddle.scala 53:{35,35}]
  wire [13:0] _GEN_17 = 6'h11 == idx_r ? $signed(14'shabf) : $signed(_GEN_16); // @[FFTTwiddle.scala 53:{35,35}]
  wire [13:0] _GEN_18 = 6'h12 == idx_r ? $signed(14'sha26) : $signed(_GEN_17); // @[FFTTwiddle.scala 53:{35,35}]
  wire [13:0] _GEN_19 = 6'h13 == idx_r ? $signed(14'sh988) : $signed(_GEN_18); // @[FFTTwiddle.scala 53:{35,35}]
  wire [13:0] _GEN_20 = 6'h14 == idx_r ? $signed(14'sh8e4) : $signed(_GEN_19); // @[FFTTwiddle.scala 53:{35,35}]
  wire [13:0] _GEN_21 = 6'h15 == idx_r ? $signed(14'sh83a) : $signed(_GEN_20); // @[FFTTwiddle.scala 53:{35,35}]
  wire [13:0] _GEN_22 = 6'h16 == idx_r ? $signed(14'sh78b) : $signed(_GEN_21); // @[FFTTwiddle.scala 53:{35,35}]
  wire [13:0] _GEN_23 = 6'h17 == idx_r ? $signed(14'sh6d7) : $signed(_GEN_22); // @[FFTTwiddle.scala 53:{35,35}]
  wire [13:0] _GEN_24 = 6'h18 == idx_r ? $signed(14'sh61f) : $signed(_GEN_23); // @[FFTTwiddle.scala 53:{35,35}]
  wire [13:0] _GEN_25 = 6'h19 == idx_r ? $signed(14'sh564) : $signed(_GEN_24); // @[FFTTwiddle.scala 53:{35,35}]
  wire [13:0] _GEN_26 = 6'h1a == idx_r ? $signed(14'sh4a5) : $signed(_GEN_25); // @[FFTTwiddle.scala 53:{35,35}]
  wire [13:0] _GEN_27 = 6'h1b == idx_r ? $signed(14'sh3e3) : $signed(_GEN_26); // @[FFTTwiddle.scala 53:{35,35}]
  wire [13:0] _GEN_28 = 6'h1c == idx_r ? $signed(14'sh31f) : $signed(_GEN_27); // @[FFTTwiddle.scala 53:{35,35}]
  wire [13:0] _GEN_29 = 6'h1d == idx_r ? $signed(14'sh259) : $signed(_GEN_28); // @[FFTTwiddle.scala 53:{35,35}]
  wire [13:0] _GEN_30 = 6'h1e == idx_r ? $signed(14'sh191) : $signed(_GEN_29); // @[FFTTwiddle.scala 53:{35,35}]
  wire [13:0] _GEN_31 = 6'h1f == idx_r ? $signed(14'shc9) : $signed(_GEN_30); // @[FFTTwiddle.scala 53:{35,35}]
  wire [13:0] _GEN_32 = 6'h20 == idx_r ? $signed(14'sh0) : $signed(_GEN_31); // @[FFTTwiddle.scala 53:{35,35}]
  wire [13:0] _io_wR_T_2 = 14'sh0 - $signed(_GEN_32); // @[FFTTwiddle.scala 53:35]
  wire [13:0] _GEN_34 = 6'h1 == idx_r ? $signed(14'shc9) : $signed(14'sh0); // @[FFTTwiddle.scala 54:{35,35}]
  wire [13:0] _GEN_35 = 6'h2 == idx_r ? $signed(14'sh191) : $signed(_GEN_34); // @[FFTTwiddle.scala 54:{35,35}]
  wire [13:0] _GEN_36 = 6'h3 == idx_r ? $signed(14'sh259) : $signed(_GEN_35); // @[FFTTwiddle.scala 54:{35,35}]
  wire [13:0] _GEN_37 = 6'h4 == idx_r ? $signed(14'sh31f) : $signed(_GEN_36); // @[FFTTwiddle.scala 54:{35,35}]
  wire [13:0] _GEN_38 = 6'h5 == idx_r ? $signed(14'sh3e3) : $signed(_GEN_37); // @[FFTTwiddle.scala 54:{35,35}]
  wire [13:0] _GEN_39 = 6'h6 == idx_r ? $signed(14'sh4a5) : $signed(_GEN_38); // @[FFTTwiddle.scala 54:{35,35}]
  wire [13:0] _GEN_40 = 6'h7 == idx_r ? $signed(14'sh564) : $signed(_GEN_39); // @[FFTTwiddle.scala 54:{35,35}]
  wire [13:0] _GEN_41 = 6'h8 == idx_r ? $signed(14'sh61f) : $signed(_GEN_40); // @[FFTTwiddle.scala 54:{35,35}]
  wire [13:0] _GEN_42 = 6'h9 == idx_r ? $signed(14'sh6d7) : $signed(_GEN_41); // @[FFTTwiddle.scala 54:{35,35}]
  wire [13:0] _GEN_43 = 6'ha == idx_r ? $signed(14'sh78b) : $signed(_GEN_42); // @[FFTTwiddle.scala 54:{35,35}]
  wire [13:0] _GEN_44 = 6'hb == idx_r ? $signed(14'sh83a) : $signed(_GEN_43); // @[FFTTwiddle.scala 54:{35,35}]
  wire [13:0] _GEN_45 = 6'hc == idx_r ? $signed(14'sh8e4) : $signed(_GEN_44); // @[FFTTwiddle.scala 54:{35,35}]
  wire [13:0] _GEN_46 = 6'hd == idx_r ? $signed(14'sh988) : $signed(_GEN_45); // @[FFTTwiddle.scala 54:{35,35}]
  wire [13:0] _GEN_47 = 6'he == idx_r ? $signed(14'sha26) : $signed(_GEN_46); // @[FFTTwiddle.scala 54:{35,35}]
  wire [13:0] _GEN_48 = 6'hf == idx_r ? $signed(14'shabf) : $signed(_GEN_47); // @[FFTTwiddle.scala 54:{35,35}]
  wire [13:0] _GEN_49 = 6'h10 == idx_r ? $signed(14'shb50) : $signed(_GEN_48); // @[FFTTwiddle.scala 54:{35,35}]
  wire [13:0] _GEN_50 = 6'h11 == idx_r ? $signed(14'shbdb) : $signed(_GEN_49); // @[FFTTwiddle.scala 54:{35,35}]
  wire [13:0] _GEN_51 = 6'h12 == idx_r ? $signed(14'shc5e) : $signed(_GEN_50); // @[FFTTwiddle.scala 54:{35,35}]
  wire [13:0] _GEN_52 = 6'h13 == idx_r ? $signed(14'shcda) : $signed(_GEN_51); // @[FFTTwiddle.scala 54:{35,35}]
  wire [13:0] _GEN_53 = 6'h14 == idx_r ? $signed(14'shd4e) : $signed(_GEN_52); // @[FFTTwiddle.scala 54:{35,35}]
  wire [13:0] _GEN_54 = 6'h15 == idx_r ? $signed(14'shdb9) : $signed(_GEN_53); // @[FFTTwiddle.scala 54:{35,35}]
  wire [13:0] _GEN_55 = 6'h16 == idx_r ? $signed(14'she1c) : $signed(_GEN_54); // @[FFTTwiddle.scala 54:{35,35}]
  wire [13:0] _GEN_56 = 6'h17 == idx_r ? $signed(14'she77) : $signed(_GEN_55); // @[FFTTwiddle.scala 54:{35,35}]
  wire [13:0] _GEN_57 = 6'h18 == idx_r ? $signed(14'shec8) : $signed(_GEN_56); // @[FFTTwiddle.scala 54:{35,35}]
  wire [13:0] _GEN_58 = 6'h19 == idx_r ? $signed(14'shf11) : $signed(_GEN_57); // @[FFTTwiddle.scala 54:{35,35}]
  wire [13:0] _GEN_59 = 6'h1a == idx_r ? $signed(14'shf50) : $signed(_GEN_58); // @[FFTTwiddle.scala 54:{35,35}]
  wire [13:0] _GEN_60 = 6'h1b == idx_r ? $signed(14'shf85) : $signed(_GEN_59); // @[FFTTwiddle.scala 54:{35,35}]
  wire [13:0] _GEN_61 = 6'h1c == idx_r ? $signed(14'shfb1) : $signed(_GEN_60); // @[FFTTwiddle.scala 54:{35,35}]
  wire [13:0] _GEN_62 = 6'h1d == idx_r ? $signed(14'shfd4) : $signed(_GEN_61); // @[FFTTwiddle.scala 54:{35,35}]
  wire [13:0] _GEN_63 = 6'h1e == idx_r ? $signed(14'shfec) : $signed(_GEN_62); // @[FFTTwiddle.scala 54:{35,35}]
  wire [13:0] _GEN_64 = 6'h1f == idx_r ? $signed(14'shffb) : $signed(_GEN_63); // @[FFTTwiddle.scala 54:{35,35}]
  wire [13:0] _GEN_65 = 6'h20 == idx_r ? $signed(14'sh1000) : $signed(_GEN_64); // @[FFTTwiddle.scala 54:{35,35}]
  wire [13:0] _io_wI_T_2 = 14'sh0 - $signed(_GEN_65); // @[FFTTwiddle.scala 54:35]
  assign io_wR = chg_sign_flag_r ? $signed(_io_wR_T_2) : $signed(_GEN_32); // @[FFTTwiddle.scala 53:17]
  assign io_wI = chg_sign_flag_i ? $signed(_io_wI_T_2) : $signed(_GEN_65); // @[FFTTwiddle.scala 54:17]
endmodule
module FFT3PipelineCalc_1(
  input         clock,
  input         reset,
  input  [15:0] io_dataInSR,
  input  [15:0] io_dataInSI,
  input  [15:0] io_dataInTR,
  input  [15:0] io_dataInTI,
  output [15:0] io_dataOutSR3c,
  output [15:0] io_dataOutSI3c,
  output [15:0] io_dataOutTR3c,
  output [15:0] io_dataOutTI3c,
  input  [5:0]  io_nk,
  input         io_rShiftSym,
  input         io_isFFT,
  input         io_procMode,
  input         io_state1c,
  input         io_state2c
);
`ifdef RANDOMIZE_REG_INIT
  reg [31:0] _RAND_0;
  reg [31:0] _RAND_1;
  reg [31:0] _RAND_2;
  reg [31:0] _RAND_3;
  reg [31:0] _RAND_4;
  reg [31:0] _RAND_5;
  reg [31:0] _RAND_6;
  reg [31:0] _RAND_7;
  reg [31:0] _RAND_8;
  reg [31:0] _RAND_9;
  reg [31:0] _RAND_10;
`endif // RANDOMIZE_REG_INIT
  wire [6:0] fftTwiddle_io_nk; // @[FFT3PipelineCalc.scala 45:28]
  wire [1:0] fftTwiddle_io_twiLutCaseIndex; // @[FFT3PipelineCalc.scala 45:28]
  wire [13:0] fftTwiddle_io_wR; // @[FFT3PipelineCalc.scala 45:28]
  wire [13:0] fftTwiddle_io_wI; // @[FFT3PipelineCalc.scala 45:28]
  wire [15:0] _dataInSRRnd_T_2 = {io_dataInSR[15],io_dataInSR[15:1]}; // @[Cat.scala 33:92]
  wire [15:0] _dataInSRRnd_T_5 = {15'h0,io_dataInSR[0]}; // @[Cat.scala 33:92]
  wire [15:0] _dataInSIRnd_T_2 = {io_dataInSI[15],io_dataInSI[15:1]}; // @[Cat.scala 33:92]
  wire [15:0] _dataInSIRnd_T_5 = {15'h0,io_dataInSI[0]}; // @[Cat.scala 33:92]
  wire [15:0] _dataInTRRnd_T_2 = {io_dataInTR[15],io_dataInTR[15:1]}; // @[Cat.scala 33:92]
  wire [15:0] _dataInTRRnd_T_5 = {15'h0,io_dataInTR[0]}; // @[Cat.scala 33:92]
  wire [15:0] _dataInTIRnd_T_2 = {io_dataInTI[15],io_dataInTI[15:1]}; // @[Cat.scala 33:92]
  wire [15:0] _dataInTIRnd_T_5 = {15'h0,io_dataInTI[0]}; // @[Cat.scala 33:92]
  wire [15:0] _dataInSR1c_T = _dataInSRRnd_T_2 + _dataInSRRnd_T_5; // @[FFT3PipelineCalc.scala 34:64]
  wire [15:0] _dataInSI1c_T = _dataInSIRnd_T_2 + _dataInSIRnd_T_5; // @[FFT3PipelineCalc.scala 35:64]
  wire [15:0] _dataInTR1c_T = _dataInTRRnd_T_2 + _dataInTRRnd_T_5; // @[FFT3PipelineCalc.scala 36:64]
  wire [15:0] _dataInTI1c_T = _dataInTIRnd_T_2 + _dataInTIRnd_T_5; // @[FFT3PipelineCalc.scala 37:64]
  reg [5:0] nk1c; // @[Reg.scala 35:20]
  reg [15:0] sR2c; // @[Reg.scala 35:20]
  reg [15:0] sI2c; // @[Reg.scala 35:20]
  reg [15:0] qR2cProc; // @[Reg.scala 35:20]
  reg [15:0] tI2c; // @[Reg.scala 35:20]
  reg [13:0] wR2c; // @[Reg.scala 35:20]
  reg [13:0] wI2c; // @[Reg.scala 35:20]
  wire [15:0] addTRI = $signed(qR2cProc) + $signed(tI2c); // @[FFT3PipelineCalc.scala 58:23]
  wire [13:0] addWRI = $signed(wR2c) + $signed(wI2c); // @[FFT3PipelineCalc.scala 59:23]
  wire [29:0] multS = $signed(addTRI) * $signed(addWRI); // @[FFT3PipelineCalc.scala 60:24]
  wire [29:0] multR = $signed(qR2cProc) * $signed(wR2c); // @[FFT3PipelineCalc.scala 62:25]
  wire [29:0] multI = $signed(tI2c) * $signed(wI2c); // @[FFT3PipelineCalc.scala 65:25]
  wire [29:0] qR2cKernel = $signed(multR) - $signed(multI); // @[FFT3PipelineCalc.scala 68:28]
  wire [29:0] _qI2cKernel_T_2 = $signed(multS) - $signed(multR); // @[FFT3PipelineCalc.scala 69:28]
  wire [29:0] qI2cKernel = $signed(_qI2cKernel_T_2) - $signed(multI); // @[FFT3PipelineCalc.scala 69:36]
  wire [15:0] qI2cProc = 16'sh0 - $signed(tI2c); // @[FFT3PipelineCalc.scala 72:20]
  wire [27:0] _GEN_11 = {$signed(qR2cProc), 12'h0}; // @[FFT3PipelineCalc.scala 74:19]
  wire [29:0] qR2c = io_procMode ? $signed({{2{_GEN_11[27]}},_GEN_11}) : $signed(qR2cKernel); // @[FFT3PipelineCalc.scala 74:19]
  wire [27:0] _GEN_12 = {$signed(qI2cProc), 12'h0}; // @[FFT3PipelineCalc.scala 75:19]
  wire [29:0] qI2c = io_procMode ? $signed({{2{_GEN_12[27]}},_GEN_12}) : $signed(qI2cKernel); // @[FFT3PipelineCalc.scala 75:19]
  reg [15:0] sR3c; // @[Reg.scala 35:20]
  reg [15:0] sI3c; // @[Reg.scala 35:20]
  reg [29:0] qR3c; // @[Reg.scala 35:20]
  wire [41:0] _GEN_9 = io_state2c ? $signed({{12{qR2c[29]}},qR2c}) : $signed({$signed(qR3c), 12'h0}); // @[Reg.scala 36:18 35:20 36:22]
  reg [29:0] qI3c; // @[Reg.scala 35:20]
  wire [41:0] _GEN_10 = io_state2c ? $signed({{12{qI2c[29]}},qI2c}) : $signed({$signed(qI3c), 12'h0}); // @[Reg.scala 36:18 35:20 36:22]
  wire [29:0] _GEN_13 = {{14{sR3c[15]}},sR3c}; // @[FFT3PipelineCalc.scala 83:27]
  wire [29:0] xR3cPrePre = $signed(_GEN_13) + $signed(qR3c); // @[FFT3PipelineCalc.scala 83:27]
  wire [29:0] _GEN_14 = {{14{sI3c[15]}},sI3c}; // @[FFT3PipelineCalc.scala 84:27]
  wire [29:0] xI3cPrePre = $signed(_GEN_14) + $signed(qI3c); // @[FFT3PipelineCalc.scala 84:27]
  wire [14:0] _xR3cPre_T_10 = xR3cPrePre[29] ? 15'h7fff : 15'h0; // @[Bitwise.scala 77:12]
  wire [14:0] _xR3cPre_T_11 = ~_xR3cPre_T_10; // @[FFT3PipelineCalc.scala 86:188]
  wire [15:0] _xR3cPre_T_13 = {xR3cPrePre[29],_xR3cPre_T_11}; // @[FFT3PipelineCalc.scala 86:262]
  wire [29:0] xR3cPre = sR3c[15] == qR3c[29] & sR3c[15] != xR3cPrePre[29] ? $signed({{14{_xR3cPre_T_13[15]}},
    _xR3cPre_T_13}) : $signed(xR3cPrePre); // @[FFT3PipelineCalc.scala 86:22]
  wire [14:0] _xI3cPre_T_10 = xI3cPrePre[29] ? 15'h7fff : 15'h0; // @[Bitwise.scala 77:12]
  wire [14:0] _xI3cPre_T_11 = ~_xI3cPre_T_10; // @[FFT3PipelineCalc.scala 87:188]
  wire [15:0] _xI3cPre_T_13 = {xI3cPrePre[29],_xI3cPre_T_11}; // @[FFT3PipelineCalc.scala 87:262]
  wire [29:0] xI3cPre = sI3c[15] == qI3c[29] & sI3c[15] != xI3cPrePre[29] ? $signed({{14{_xI3cPre_T_13[15]}},
    _xI3cPre_T_13}) : $signed(xI3cPrePre); // @[FFT3PipelineCalc.scala 87:22]
  wire [29:0] yR3cPrePre = $signed(_GEN_13) - $signed(qR3c); // @[FFT3PipelineCalc.scala 92:27]
  wire [29:0] yI3cPrePre = $signed(_GEN_14) - $signed(qI3c); // @[FFT3PipelineCalc.scala 93:27]
  wire [14:0] _yR3cPre_T_10 = yR3cPrePre[29] ? 15'h7fff : 15'h0; // @[Bitwise.scala 77:12]
  wire [14:0] _yR3cPre_T_11 = ~_yR3cPre_T_10; // @[FFT3PipelineCalc.scala 95:188]
  wire [15:0] _yR3cPre_T_13 = {yR3cPrePre[29],_yR3cPre_T_11}; // @[FFT3PipelineCalc.scala 95:262]
  wire [29:0] yR3cPre = sR3c[15] != qR3c[29] & sR3c[15] != yR3cPrePre[29] ? $signed({{14{_yR3cPre_T_13[15]}},
    _yR3cPre_T_13}) : $signed(yR3cPrePre); // @[FFT3PipelineCalc.scala 95:22]
  wire [14:0] _yI3cPre_T_10 = yI3cPrePre[29] ? 15'h7fff : 15'h0; // @[Bitwise.scala 77:12]
  wire [14:0] _yI3cPre_T_11 = ~_yI3cPre_T_10; // @[FFT3PipelineCalc.scala 96:188]
  wire [15:0] _yI3cPre_T_13 = {yI3cPrePre[29],_yI3cPre_T_11}; // @[FFT3PipelineCalc.scala 96:262]
  wire [29:0] yI3cPre = sI3c[15] != qI3c[29] & sI3c[15] != yI3cPrePre[29] ? $signed({{14{_yI3cPre_T_13[15]}},
    _yI3cPre_T_13}) : $signed(yI3cPrePre); // @[FFT3PipelineCalc.scala 96:22]
  FFTTwiddle_1 fftTwiddle ( // @[FFT3PipelineCalc.scala 45:28]
    .io_nk(fftTwiddle_io_nk),
    .io_twiLutCaseIndex(fftTwiddle_io_twiLutCaseIndex),
    .io_wR(fftTwiddle_io_wR),
    .io_wI(fftTwiddle_io_wI)
  );
  assign io_dataOutSR3c = xR3cPre[15:0]; // @[FFT3PipelineCalc.scala 89:64]
  assign io_dataOutSI3c = xI3cPre[15:0]; // @[FFT3PipelineCalc.scala 90:64]
  assign io_dataOutTR3c = yR3cPre[15:0]; // @[FFT3PipelineCalc.scala 98:64]
  assign io_dataOutTI3c = yI3cPre[15:0]; // @[FFT3PipelineCalc.scala 99:64]
  assign fftTwiddle_io_nk = {{1'd0}, nk1c}; // @[FFT3PipelineCalc.scala 46:22]
  assign fftTwiddle_io_twiLutCaseIndex = io_isFFT ? 2'h0 : 2'h1; // @[FFT3PipelineCalc.scala 43:30]
  always @(posedge clock) begin
    if (reset) begin // @[Reg.scala 35:20]
      nk1c <= 6'h0; // @[Reg.scala 35:20]
    end else begin
      nk1c <= io_nk;
    end
    if (reset) begin // @[Reg.scala 35:20]
      sR2c <= 16'sh0; // @[Reg.scala 35:20]
    end else if (io_state1c) begin // @[Reg.scala 36:18]
      if (io_rShiftSym) begin // @[FFT3PipelineCalc.scala 34:25]
        sR2c <= _dataInSR1c_T;
      end else begin
        sR2c <= io_dataInSR;
      end
    end
    if (reset) begin // @[Reg.scala 35:20]
      sI2c <= 16'sh0; // @[Reg.scala 35:20]
    end else if (io_state1c) begin // @[Reg.scala 36:18]
      if (io_rShiftSym) begin // @[FFT3PipelineCalc.scala 35:25]
        sI2c <= _dataInSI1c_T;
      end else begin
        sI2c <= io_dataInSI;
      end
    end
    if (reset) begin // @[Reg.scala 35:20]
      qR2cProc <= 16'sh0; // @[Reg.scala 35:20]
    end else if (io_state1c) begin // @[Reg.scala 36:18]
      if (io_rShiftSym) begin // @[FFT3PipelineCalc.scala 36:25]
        qR2cProc <= _dataInTR1c_T;
      end else begin
        qR2cProc <= io_dataInTR;
      end
    end
    if (reset) begin // @[Reg.scala 35:20]
      tI2c <= 16'sh0; // @[Reg.scala 35:20]
    end else if (io_state1c) begin // @[Reg.scala 36:18]
      if (io_rShiftSym) begin // @[FFT3PipelineCalc.scala 37:25]
        tI2c <= _dataInTI1c_T;
      end else begin
        tI2c <= io_dataInTI;
      end
    end
    if (reset) begin // @[Reg.scala 35:20]
      wR2c <= 14'sh0; // @[Reg.scala 35:20]
    end else if (io_state1c) begin // @[Reg.scala 36:18]
      wR2c <= fftTwiddle_io_wR; // @[Reg.scala 36:22]
    end
    if (reset) begin // @[Reg.scala 35:20]
      wI2c <= 14'sh0; // @[Reg.scala 35:20]
    end else if (io_state1c) begin // @[Reg.scala 36:18]
      wI2c <= fftTwiddle_io_wI; // @[Reg.scala 36:22]
    end
    if (reset) begin // @[Reg.scala 35:20]
      sR3c <= 16'sh0; // @[Reg.scala 35:20]
    end else if (io_state2c) begin // @[Reg.scala 36:18]
      sR3c <= sR2c; // @[Reg.scala 36:22]
    end
    if (reset) begin // @[Reg.scala 35:20]
      sI3c <= 16'sh0; // @[Reg.scala 35:20]
    end else if (io_state2c) begin // @[Reg.scala 36:18]
      sI3c <= sI2c; // @[Reg.scala 36:22]
    end
    if (reset) begin // @[Reg.scala 35:20]
      qR3c <= 30'sh0; // @[Reg.scala 35:20]
    end else begin
      qR3c <= _GEN_9[41:12];
    end
    if (reset) begin // @[Reg.scala 35:20]
      qI3c <= 30'sh0; // @[Reg.scala 35:20]
    end else begin
      qI3c <= _GEN_10[41:12];
    end
  end
// Register and memory initialization
`ifdef RANDOMIZE_GARBAGE_ASSIGN
`define RANDOMIZE
`endif
`ifdef RANDOMIZE_INVALID_ASSIGN
`define RANDOMIZE
`endif
`ifdef RANDOMIZE_REG_INIT
`define RANDOMIZE
`endif
`ifdef RANDOMIZE_MEM_INIT
`define RANDOMIZE
`endif
`ifndef RANDOM
`define RANDOM $random
`endif
`ifdef RANDOMIZE_MEM_INIT
  integer initvar;
`endif
`ifndef SYNTHESIS
`ifdef FIRRTL_BEFORE_INITIAL
`FIRRTL_BEFORE_INITIAL
`endif
initial begin
  `ifdef RANDOMIZE
    `ifdef INIT_RANDOM
      `INIT_RANDOM
    `endif
    `ifndef VERILATOR
      `ifdef RANDOMIZE_DELAY
        #`RANDOMIZE_DELAY begin end
      `else
        #0.002 begin end
      `endif
    `endif
`ifdef RANDOMIZE_REG_INIT
  _RAND_0 = {1{`RANDOM}};
  nk1c = _RAND_0[5:0];
  _RAND_1 = {1{`RANDOM}};
  sR2c = _RAND_1[15:0];
  _RAND_2 = {1{`RANDOM}};
  sI2c = _RAND_2[15:0];
  _RAND_3 = {1{`RANDOM}};
  qR2cProc = _RAND_3[15:0];
  _RAND_4 = {1{`RANDOM}};
  tI2c = _RAND_4[15:0];
  _RAND_5 = {1{`RANDOM}};
  wR2c = _RAND_5[13:0];
  _RAND_6 = {1{`RANDOM}};
  wI2c = _RAND_6[13:0];
  _RAND_7 = {1{`RANDOM}};
  sR3c = _RAND_7[15:0];
  _RAND_8 = {1{`RANDOM}};
  sI3c = _RAND_8[15:0];
  _RAND_9 = {1{`RANDOM}};
  qR3c = _RAND_9[29:0];
  _RAND_10 = {1{`RANDOM}};
  qI3c = _RAND_10[29:0];
`endif // RANDOMIZE_REG_INIT
  `endif // RANDOMIZE
end // initial
`ifdef FIRRTL_AFTER_INITIAL
`FIRRTL_AFTER_INITIAL
`endif
`endif // SYNTHESIS
endmodule
module FFTEngine(
  input         clock,
  input         reset,
  input  [31:0] io_readDataSram0Bank_0,
  input  [31:0] io_readDataSram0Bank_1,
  input  [31:0] io_readDataSram0Bank_2,
  input  [31:0] io_readDataSram0Bank_3,
  input  [31:0] io_readDataSram1Bank_0,
  input  [31:0] io_readDataSram1Bank_1,
  input  [31:0] io_readDataSram1Bank_2,
  input  [31:0] io_readDataSram1Bank_3,
  output        io_readEnableSram0Bank_0,
  output        io_readEnableSram0Bank_1,
  output        io_readEnableSram0Bank_2,
  output        io_readEnableSram0Bank_3,
  output        io_readEnableSram1Bank_0,
  output        io_readEnableSram1Bank_1,
  output        io_readEnableSram1Bank_2,
  output        io_readEnableSram1Bank_3,
  output [31:0] io_writeDataSram0Bank_0,
  output [31:0] io_writeDataSram0Bank_1,
  output [31:0] io_writeDataSram0Bank_2,
  output [31:0] io_writeDataSram0Bank_3,
  output [31:0] io_writeDataSram1Bank_0,
  output [31:0] io_writeDataSram1Bank_1,
  output [31:0] io_writeDataSram1Bank_2,
  output [31:0] io_writeDataSram1Bank_3,
  output        io_writeEnableSram0Bank_0,
  output        io_writeEnableSram0Bank_1,
  output        io_writeEnableSram0Bank_2,
  output        io_writeEnableSram0Bank_3,
  output        io_writeEnableSram1Bank_0,
  output        io_writeEnableSram1Bank_1,
  output        io_writeEnableSram1Bank_2,
  output        io_writeEnableSram1Bank_3,
  output [4:0]  io_addrSram0Bank_0,
  output [4:0]  io_addrSram0Bank_1,
  output [4:0]  io_addrSram0Bank_2,
  output [4:0]  io_addrSram0Bank_3,
  output [4:0]  io_addrSram1Bank_0,
  output [4:0]  io_addrSram1Bank_1,
  output [4:0]  io_addrSram1Bank_2,
  output [4:0]  io_addrSram1Bank_3,
  output        io_fftDone,
  input         io_fftEngineKick,
  input         io_fftMode,
  input         io_fftRShiftP0_0,
  input         io_fftRShiftP0_1,
  input         io_fftRShiftP0_2,
  input         io_fftRShiftP0_3,
  input         io_fftRShiftP0_4,
  input         io_fftRShiftP0_5,
  input         io_fftRShiftP0_6
);
`ifdef RANDOMIZE_REG_INIT
  reg [31:0] _RAND_0;
  reg [31:0] _RAND_1;
  reg [31:0] _RAND_2;
  reg [31:0] _RAND_3;
  reg [31:0] _RAND_4;
  reg [31:0] _RAND_5;
  reg [31:0] _RAND_6;
  reg [31:0] _RAND_7;
  reg [31:0] _RAND_8;
  reg [31:0] _RAND_9;
  reg [31:0] _RAND_10;
  reg [31:0] _RAND_11;
  reg [31:0] _RAND_12;
  reg [31:0] _RAND_13;
  reg [31:0] _RAND_14;
  reg [31:0] _RAND_15;
  reg [31:0] _RAND_16;
  reg [31:0] _RAND_17;
  reg [31:0] _RAND_18;
  reg [31:0] _RAND_19;
  reg [31:0] _RAND_20;
  reg [31:0] _RAND_21;
  reg [31:0] _RAND_22;
  reg [31:0] _RAND_23;
  reg [31:0] _RAND_24;
  reg [31:0] _RAND_25;
  reg [31:0] _RAND_26;
  reg [31:0] _RAND_27;
  reg [31:0] _RAND_28;
  reg [31:0] _RAND_29;
  reg [31:0] _RAND_30;
  reg [31:0] _RAND_31;
  reg [31:0] _RAND_32;
  reg [31:0] _RAND_33;
  reg [31:0] _RAND_34;
  reg [31:0] _RAND_35;
  reg [31:0] _RAND_36;
  reg [31:0] _RAND_37;
  reg [31:0] _RAND_38;
  reg [31:0] _RAND_39;
  reg [31:0] _RAND_40;
  reg [31:0] _RAND_41;
  reg [31:0] _RAND_42;
  reg [31:0] _RAND_43;
  reg [31:0] _RAND_44;
  reg [31:0] _RAND_45;
  reg [31:0] _RAND_46;
  reg [31:0] _RAND_47;
  reg [31:0] _RAND_48;
  reg [31:0] _RAND_49;
  reg [31:0] _RAND_50;
  reg [31:0] _RAND_51;
  reg [31:0] _RAND_52;
  reg [31:0] _RAND_53;
`endif // RANDOMIZE_REG_INIT
  wire  fftCalc_clock; // @[FFTEngine.scala 481:29]
  wire  fftCalc_reset; // @[FFTEngine.scala 481:29]
  wire [15:0] fftCalc_io_dataInSR; // @[FFTEngine.scala 481:29]
  wire [15:0] fftCalc_io_dataInSI; // @[FFTEngine.scala 481:29]
  wire [15:0] fftCalc_io_dataInTR; // @[FFTEngine.scala 481:29]
  wire [15:0] fftCalc_io_dataInTI; // @[FFTEngine.scala 481:29]
  wire [15:0] fftCalc_io_dataOutSR3c; // @[FFTEngine.scala 481:29]
  wire [15:0] fftCalc_io_dataOutSI3c; // @[FFTEngine.scala 481:29]
  wire [15:0] fftCalc_io_dataOutTR3c; // @[FFTEngine.scala 481:29]
  wire [15:0] fftCalc_io_dataOutTI3c; // @[FFTEngine.scala 481:29]
  wire [6:0] fftCalc_io_nk; // @[FFTEngine.scala 481:29]
  wire  fftCalc_io_rShiftSym; // @[FFTEngine.scala 481:29]
  wire  fftCalc_io_isFFT; // @[FFTEngine.scala 481:29]
  wire  fftCalc_io_procMode; // @[FFTEngine.scala 481:29]
  wire  fftCalc_io_state1c; // @[FFTEngine.scala 481:29]
  wire  fftCalc_io_state2c; // @[FFTEngine.scala 481:29]
  wire  fftCalc_1_clock; // @[FFTEngine.scala 481:29]
  wire  fftCalc_1_reset; // @[FFTEngine.scala 481:29]
  wire [15:0] fftCalc_1_io_dataInSR; // @[FFTEngine.scala 481:29]
  wire [15:0] fftCalc_1_io_dataInSI; // @[FFTEngine.scala 481:29]
  wire [15:0] fftCalc_1_io_dataInTR; // @[FFTEngine.scala 481:29]
  wire [15:0] fftCalc_1_io_dataInTI; // @[FFTEngine.scala 481:29]
  wire [15:0] fftCalc_1_io_dataOutSR3c; // @[FFTEngine.scala 481:29]
  wire [15:0] fftCalc_1_io_dataOutSI3c; // @[FFTEngine.scala 481:29]
  wire [15:0] fftCalc_1_io_dataOutTR3c; // @[FFTEngine.scala 481:29]
  wire [15:0] fftCalc_1_io_dataOutTI3c; // @[FFTEngine.scala 481:29]
  wire [5:0] fftCalc_1_io_nk; // @[FFTEngine.scala 481:29]
  wire  fftCalc_1_io_rShiftSym; // @[FFTEngine.scala 481:29]
  wire  fftCalc_1_io_isFFT; // @[FFTEngine.scala 481:29]
  wire  fftCalc_1_io_procMode; // @[FFTEngine.scala 481:29]
  wire  fftCalc_1_io_state1c; // @[FFTEngine.scala 481:29]
  wire  fftCalc_1_io_state2c; // @[FFTEngine.scala 481:29]
  reg [2:0] stateReg; // @[FFTEngine.scala 46:27]
  reg [6:0] addrSProc; // @[FFTEngine.scala 48:29]
  reg [2:0] phaseCount; // @[FFTEngine.scala 50:29]
  wire  _T_2 = addrSProc == 7'h1f; // @[FFTEngine.scala 62:33]
  wire  _T_4 = addrSProc == 7'h3; // @[FFTEngine.scala 69:33]
  wire [2:0] _GEN_2 = addrSProc == 7'h3 ? 3'h3 : stateReg; // @[FFTEngine.scala 69:49 70:30 72:30]
  wire  _T_6 = phaseCount == 3'h6; // @[FFTEngine.scala 76:33]
  wire [2:0] _stateReg_T_1 = io_fftMode ? 3'h4 : 3'h7; // @[FFTEngine.scala 77:36]
  wire [2:0] _GEN_3 = phaseCount == 3'h6 ? _stateReg_T_1 : 3'h1; // @[FFTEngine.scala 76:50 77:30 79:30]
  wire  _T_8 = addrSProc == 7'h3f; // @[FFTEngine.scala 83:33]
  wire [2:0] _GEN_4 = addrSProc == 7'h3f ? 3'h5 : stateReg; // @[FFTEngine.scala 83:51 84:30 86:30]
  wire [2:0] _GEN_5 = _T_4 ? 3'h6 : stateReg; // @[FFTEngine.scala 90:50 91:30 93:30]
  wire  _T_12 = phaseCount == 3'h1; // @[FFTEngine.scala 97:33]
  wire [2:0] _stateReg_T_2 = io_fftMode ? 3'h7 : 3'h1; // @[FFTEngine.scala 98:36]
  wire [2:0] _GEN_6 = phaseCount == 3'h1 ? _stateReg_T_2 : 3'h4; // @[FFTEngine.scala 100:30 97:51 98:30]
  wire [2:0] _GEN_7 = 3'h7 == stateReg ? 3'h0 : stateReg; // @[FFTEngine.scala 104:26 53:26 46:27]
  wire [2:0] _GEN_8 = 3'h6 == stateReg ? _GEN_6 : _GEN_7; // @[FFTEngine.scala 53:26]
  wire [2:0] _GEN_9 = 3'h5 == stateReg ? _GEN_5 : _GEN_8; // @[FFTEngine.scala 53:26]
  wire [2:0] _GEN_10 = 3'h4 == stateReg ? _GEN_4 : _GEN_9; // @[FFTEngine.scala 53:26]
  wire [2:0] _GEN_11 = 3'h3 == stateReg ? _GEN_3 : _GEN_10; // @[FFTEngine.scala 53:26]
  wire  _radixInit_T = stateReg == 3'h0; // @[FFTEngine.scala 143:31]
  wire  _radixInit_T_1 = stateReg == 3'h1; // @[FFTEngine.scala 144:16]
  wire  _radixInit_T_3 = stateReg == 3'h1 & _T_2; // @[FFTEngine.scala 144:30]
  wire  _radixInit_T_4 = stateReg == 3'h0 | _radixInit_T_3; // @[FFTEngine.scala 143:45]
  wire  _radixInit_T_5 = stateReg == 3'h2; // @[FFTEngine.scala 145:16]
  wire  _radixInit_T_7 = stateReg == 3'h2 & _T_4; // @[FFTEngine.scala 145:31]
  wire  _radixInit_T_8 = _radixInit_T_4 | _radixInit_T_7; // @[FFTEngine.scala 144:63]
  wire  _radixInit_T_9 = stateReg == 3'h3; // @[FFTEngine.scala 146:15]
  wire  _radixInit_T_10 = _radixInit_T_8 | _radixInit_T_9; // @[FFTEngine.scala 145:63]
  wire  _radixInit_T_11 = stateReg == 3'h4; // @[FFTEngine.scala 147:16]
  wire  _radixInit_T_13 = stateReg == 3'h4 & _T_8; // @[FFTEngine.scala 147:28]
  wire  _radixInit_T_14 = _radixInit_T_10 | _radixInit_T_13; // @[FFTEngine.scala 146:32]
  wire  _radixInit_T_15 = stateReg == 3'h5; // @[FFTEngine.scala 148:16]
  wire  _radixInit_T_17 = stateReg == 3'h5 & _T_4; // @[FFTEngine.scala 148:29]
  wire  _radixInit_T_18 = _radixInit_T_14 | _radixInit_T_17; // @[FFTEngine.scala 147:62]
  wire  _radixInit_T_19 = stateReg == 3'h6; // @[FFTEngine.scala 149:15]
  wire  _radixInit_T_20 = _radixInit_T_18 | _radixInit_T_19; // @[FFTEngine.scala 148:62]
  wire  _radixInit_T_21 = stateReg == 3'h7; // @[FFTEngine.scala 150:15]
  wire  radixInit = _radixInit_T_20 | _radixInit_T_21; // @[FFTEngine.scala 149:30]
  wire  _radixUp_T_4 = _radixInit_T_1 | _radixInit_T_5 | _radixInit_T_11; // @[FFTEngine.scala 152:70]
  wire  radixUp = _radixUp_T_4 | _radixInit_T_15; // @[FFTEngine.scala 153:27]
  wire [6:0] _radixCount_T_1 = addrSProc + 7'h1; // @[FFTEngine.scala 159:34]
  wire  _phaseInit_T_3 = _radixInit_T_9 & _T_6; // @[FFTEngine.scala 165:33]
  wire  _phaseInit_T_4 = _radixInit_T | _phaseInit_T_3; // @[FFTEngine.scala 164:45]
  wire  _phaseInit_T_7 = _radixInit_T_19 & _T_12; // @[FFTEngine.scala 166:31]
  wire  _phaseInit_T_8 = _phaseInit_T_4 | _phaseInit_T_7; // @[FFTEngine.scala 165:65]
  wire  phaseInit = _phaseInit_T_8 | _radixInit_T_21; // @[FFTEngine.scala 166:64]
  wire  phaseUp = _radixInit_T_9 | _radixInit_T_19; // @[FFTEngine.scala 169:46]
  wire [2:0] _phaseCount_T_1 = phaseCount + 3'h1; // @[FFTEngine.scala 174:34]
  reg  srcBuffer; // @[FFTEngine.scala 179:28]
  wire  _srcBufferNext_T_3 = ~srcBuffer; // @[FFTEngine.scala 181:79]
  wire  srcBufferNext = phaseUp & ~srcBuffer; // @[FFTEngine.scala 181:77]
  wire  srcUp = _radixInit_T | _radixInit_T_9 | _radixInit_T_19; // @[FFTEngine.scala 183:70]
  wire  readEnable = _radixInit_T_1 | _radixInit_T_11; // @[FFTEngine.scala 194:34]
  wire [4:0] radixCountTemp = addrSProc[4:0]; // @[FFTEngine.scala 196:36]
  wire [5:0] _nk_0_T_1 = {1'h0,radixCountTemp}; // @[Cat.scala 33:92]
  wire [5:0] _nk_1_T_1 = {1'h1,radixCountTemp}; // @[Cat.scala 33:92]
  wire [5:0] _nk_0_T_3 = {radixCountTemp,1'h0}; // @[Cat.scala 33:92]
  wire [6:0] _nk_0_T_6 = 7'h3f >> phaseCount; // @[FFTEngine.scala 215:174]
  wire [6:0] _nk_0_T_7 = ~_nk_0_T_6; // @[FFTEngine.scala 215:112]
  wire [6:0] _GEN_422 = {{1'd0}, _nk_0_T_3}; // @[FFTEngine.scala 215:110]
  wire [6:0] _nk_0_T_8 = _GEN_422 & _nk_0_T_7; // @[FFTEngine.scala 215:110]
  wire [5:0] _nk_1_T_3 = {radixCountTemp,1'h1}; // @[Cat.scala 33:92]
  wire [6:0] _GEN_423 = {{1'd0}, _nk_1_T_3}; // @[FFTEngine.scala 215:110]
  wire [6:0] _nk_1_T_8 = _GEN_423 & _nk_0_T_7; // @[FFTEngine.scala 215:110]
  wire [6:0] nk_0 = _T_6 ? {{1'd0}, _nk_0_T_1} : _nk_0_T_8; // @[FFTEngine.scala 209:42 211:23 215:23]
  wire [6:0] nk_1 = _T_6 ? {{1'd0}, _nk_1_T_1} : _nk_1_T_8; // @[FFTEngine.scala 209:42 211:23 215:23]
  wire [6:0] _addrSKernelPre_0_T = {2'h0,radixCountTemp}; // @[Cat.scala 33:92]
  wire [6:0] _addrTKernelPre_0_T = {2'h2,radixCountTemp}; // @[Cat.scala 33:92]
  wire [6:0] _addrSKernelPre_1_T = {2'h1,radixCountTemp}; // @[Cat.scala 33:92]
  wire [6:0] _addrTKernelPre_1_T = {2'h3,radixCountTemp}; // @[Cat.scala 33:92]
  wire [13:0] _addrSKernelPre_0_dataTemp_T = {radixCountTemp,1'h0,1'h0,radixCountTemp,1'h0,1'h0}; // @[Cat.scala 33:92]
  wire [20:0] _GEN_20 = {{7'd0}, _addrSKernelPre_0_dataTemp_T}; // @[FFTEngine.scala 263:40]
  wire [20:0] addrSKernelPre_0_dataTemp = _GEN_20 << phaseCount; // @[FFTEngine.scala 263:40]
  wire [13:0] _addrTKernelPre_0_dataTemp_T = {radixCountTemp,1'h0,1'h1,radixCountTemp,1'h0,1'h1}; // @[Cat.scala 33:92]
  wire [20:0] _GEN_21 = {{7'd0}, _addrTKernelPre_0_dataTemp_T}; // @[FFTEngine.scala 263:40]
  wire [20:0] addrTKernelPre_0_dataTemp = _GEN_21 << phaseCount; // @[FFTEngine.scala 263:40]
  wire [13:0] _addrSKernelPre_1_dataTemp_T = {radixCountTemp,1'h1,1'h0,radixCountTemp,1'h1,1'h0}; // @[Cat.scala 33:92]
  wire [20:0] _GEN_22 = {{7'd0}, _addrSKernelPre_1_dataTemp_T}; // @[FFTEngine.scala 263:40]
  wire [20:0] addrSKernelPre_1_dataTemp = _GEN_22 << phaseCount; // @[FFTEngine.scala 263:40]
  wire [13:0] _addrTKernelPre_1_dataTemp_T = {radixCountTemp,1'h1,1'h1,radixCountTemp,1'h1,1'h1}; // @[Cat.scala 33:92]
  wire [20:0] _GEN_23 = {{7'd0}, _addrTKernelPre_1_dataTemp_T}; // @[FFTEngine.scala 263:40]
  wire [20:0] addrTKernelPre_1_dataTemp = _GEN_23 << phaseCount; // @[FFTEngine.scala 263:40]
  wire [6:0] addrSKernelPre_0 = _T_6 ? _addrSKernelPre_0_T : addrSKernelPre_0_dataTemp[13:7]; // @[FFTEngine.scala 279:42 281:35 286:35]
  wire [6:0] addrTKernelPre_0 = _T_6 ? _addrTKernelPre_0_T : addrTKernelPre_0_dataTemp[13:7]; // @[FFTEngine.scala 279:42 282:35 287:35]
  wire [6:0] addrSKernelPre_1 = _T_6 ? _addrSKernelPre_1_T : addrSKernelPre_1_dataTemp[13:7]; // @[FFTEngine.scala 279:42 281:35 286:35]
  wire [6:0] addrTKernelPre_1 = _T_6 ? _addrTKernelPre_1_T : addrTKernelPre_1_dataTemp[13:7]; // @[FFTEngine.scala 279:42 282:35 287:35]
  wire [6:0] _addrTProc_T = ~addrSProc; // @[FFTEngine.scala 332:22]
  wire [6:0] addrTProc = _addrTProc_T + 7'h1; // @[FFTEngine.scala 332:34]
  wire  addrS_0_temp_0 = io_fftMode ? addrSProc[6] : addrSProc[0]; // @[FFTEngine.scala 200:26]
  wire  addrS_0_temp_1 = io_fftMode ? addrSProc[5] : addrSProc[1]; // @[FFTEngine.scala 200:26]
  wire  addrS_0_temp_2 = io_fftMode ? addrSProc[4] : addrSProc[2]; // @[FFTEngine.scala 200:26]
  wire  addrS_0_temp_3 = io_fftMode ? addrSProc[3] : addrSProc[3]; // @[FFTEngine.scala 200:26]
  wire  addrS_0_temp_4 = io_fftMode ? addrSProc[2] : addrSProc[4]; // @[FFTEngine.scala 200:26]
  wire  addrS_0_temp_5 = io_fftMode ? addrSProc[1] : addrSProc[5]; // @[FFTEngine.scala 200:26]
  wire  addrS_0_temp_6 = io_fftMode ? addrSProc[0] : addrSProc[6]; // @[FFTEngine.scala 200:26]
  wire [6:0] _addrS_0_T = {addrS_0_temp_6,addrS_0_temp_5,addrS_0_temp_4,addrS_0_temp_3,addrS_0_temp_2,addrS_0_temp_1,
    addrS_0_temp_0}; // @[FFTEngine.scala 201:23]
  wire  addrS_0_temp_0_1 = addrSKernelPre_0[6]; // @[FFTEngine.scala 200:34]
  wire  addrS_0_temp_1_1 = addrSKernelPre_0[5]; // @[FFTEngine.scala 200:34]
  wire  addrS_0_temp_2_1 = addrSKernelPre_0[4]; // @[FFTEngine.scala 200:34]
  wire  addrS_0_temp_3_1 = addrSKernelPre_0[3]; // @[FFTEngine.scala 200:34]
  wire [6:0] _addrS_0_T_1 = {addrSKernelPre_0[0],addrSKernelPre_0[1],addrSKernelPre_0[2],addrS_0_temp_3_1,
    addrS_0_temp_2_1,addrS_0_temp_1_1,addrS_0_temp_0_1}; // @[FFTEngine.scala 201:23]
  wire [6:0] addrS_0 = _radixInit_T_11 ? _addrS_0_T : _addrS_0_T_1; // @[FFTEngine.scala 338:28]
  wire  addrT_0_temp_0 = io_fftMode ? addrTProc[6] : addrTProc[0]; // @[FFTEngine.scala 200:26]
  wire  addrT_0_temp_1 = io_fftMode ? addrTProc[5] : addrTProc[1]; // @[FFTEngine.scala 200:26]
  wire  addrT_0_temp_2 = io_fftMode ? addrTProc[4] : addrTProc[2]; // @[FFTEngine.scala 200:26]
  wire  addrT_0_temp_3 = io_fftMode ? addrTProc[3] : addrTProc[3]; // @[FFTEngine.scala 200:26]
  wire  addrT_0_temp_4 = io_fftMode ? addrTProc[2] : addrTProc[4]; // @[FFTEngine.scala 200:26]
  wire  addrT_0_temp_5 = io_fftMode ? addrTProc[1] : addrTProc[5]; // @[FFTEngine.scala 200:26]
  wire  addrT_0_temp_6 = io_fftMode ? addrTProc[0] : addrTProc[6]; // @[FFTEngine.scala 200:26]
  wire [6:0] _addrT_0_T = {addrT_0_temp_6,addrT_0_temp_5,addrT_0_temp_4,addrT_0_temp_3,addrT_0_temp_2,addrT_0_temp_1,
    addrT_0_temp_0}; // @[FFTEngine.scala 201:23]
  wire  addrT_0_temp_0_1 = addrTKernelPre_0[6]; // @[FFTEngine.scala 200:34]
  wire  addrT_0_temp_1_1 = addrTKernelPre_0[5]; // @[FFTEngine.scala 200:34]
  wire  addrT_0_temp_2_1 = addrTKernelPre_0[4]; // @[FFTEngine.scala 200:34]
  wire  addrT_0_temp_3_1 = addrTKernelPre_0[3]; // @[FFTEngine.scala 200:34]
  wire [6:0] _addrT_0_T_1 = {addrTKernelPre_0[0],addrTKernelPre_0[1],addrTKernelPre_0[2],addrT_0_temp_3_1,
    addrT_0_temp_2_1,addrT_0_temp_1_1,addrT_0_temp_0_1}; // @[FFTEngine.scala 201:23]
  wire [6:0] addrT_0 = _radixInit_T_11 ? _addrT_0_T : _addrT_0_T_1; // @[FFTEngine.scala 339:28]
  wire  addrS_1_temp_0 = addrSKernelPre_1[6]; // @[FFTEngine.scala 200:34]
  wire  addrS_1_temp_1 = addrSKernelPre_1[5]; // @[FFTEngine.scala 200:34]
  wire  addrS_1_temp_2 = addrSKernelPre_1[4]; // @[FFTEngine.scala 200:34]
  wire  addrS_1_temp_3 = addrSKernelPre_1[3]; // @[FFTEngine.scala 200:34]
  wire [6:0] addrS_1 = {addrSKernelPre_1[0],addrSKernelPre_1[1],addrSKernelPre_1[2],addrS_1_temp_3,addrS_1_temp_2,
    addrS_1_temp_1,addrS_1_temp_0}; // @[FFTEngine.scala 201:23]
  wire  addrT_1_temp_0 = addrTKernelPre_1[6]; // @[FFTEngine.scala 200:34]
  wire  addrT_1_temp_1 = addrTKernelPre_1[5]; // @[FFTEngine.scala 200:34]
  wire  addrT_1_temp_2 = addrTKernelPre_1[4]; // @[FFTEngine.scala 200:34]
  wire  addrT_1_temp_3 = addrTKernelPre_1[3]; // @[FFTEngine.scala 200:34]
  wire [6:0] addrT_1 = {addrTKernelPre_1[0],addrTKernelPre_1[1],addrTKernelPre_1[2],addrT_1_temp_3,addrT_1_temp_2,
    addrT_1_temp_1,addrT_1_temp_0}; // @[FFTEngine.scala 201:23]
  wire  sameAddr = addrS_0 == addrT_0; // @[FFTEngine.scala 346:29]
  wire [6:0] _addrSBankSelKernelPrePre_sum_T = {{1'd0}, addrS_0[6:1]}; // @[FFTEngine.scala 349:115]
  wire [1:0] _GEN_425 = {{1'd0}, _addrSBankSelKernelPrePre_sum_T[0]}; // @[FFTEngine.scala 349:107]
  wire [2:0] _addrSBankSelKernelPrePre_sum_T_2 = {{1'd0}, _GEN_425}; // @[FFTEngine.scala 349:107]
  wire [6:0] _addrSBankSelKernelPrePre_sum_T_4 = {{3'd0}, addrS_0[6:3]}; // @[FFTEngine.scala 349:115]
  wire [1:0] _GEN_427 = {{1'd0}, _addrSBankSelKernelPrePre_sum_T_4[0]}; // @[FFTEngine.scala 349:107]
  wire [1:0] _addrSBankSelKernelPrePre_sum_T_7 = _addrSBankSelKernelPrePre_sum_T_2[1:0] + _GEN_427; // @[FFTEngine.scala 349:107]
  wire [6:0] _addrSBankSelKernelPrePre_sum_T_8 = {{5'd0}, addrS_0[6:5]}; // @[FFTEngine.scala 349:115]
  wire [1:0] _GEN_429 = {{1'd0}, _addrSBankSelKernelPrePre_sum_T_8[0]}; // @[FFTEngine.scala 349:107]
  wire [1:0] addrSBankSelKernelPrePre_0_0 = _addrSBankSelKernelPrePre_sum_T_7 + _GEN_429; // @[FFTEngine.scala 349:107]
  wire [1:0] _GEN_430 = {{1'd0}, addrS_0[0]}; // @[FFTEngine.scala 349:107]
  wire [2:0] _addrSBankSelKernelPrePre_sum_T_13 = {{1'd0}, _GEN_430}; // @[FFTEngine.scala 349:107]
  wire [6:0] _addrSBankSelKernelPrePre_sum_T_15 = {{2'd0}, addrS_0[6:2]}; // @[FFTEngine.scala 349:115]
  wire [1:0] _GEN_432 = {{1'd0}, _addrSBankSelKernelPrePre_sum_T_15[0]}; // @[FFTEngine.scala 349:107]
  wire [1:0] _addrSBankSelKernelPrePre_sum_T_18 = _addrSBankSelKernelPrePre_sum_T_13[1:0] + _GEN_432; // @[FFTEngine.scala 349:107]
  wire [6:0] _addrSBankSelKernelPrePre_sum_T_19 = {{4'd0}, addrS_0[6:4]}; // @[FFTEngine.scala 349:115]
  wire [1:0] _GEN_434 = {{1'd0}, _addrSBankSelKernelPrePre_sum_T_19[0]}; // @[FFTEngine.scala 349:107]
  wire [1:0] _addrSBankSelKernelPrePre_sum_T_22 = _addrSBankSelKernelPrePre_sum_T_18 + _GEN_434; // @[FFTEngine.scala 349:107]
  wire [6:0] _addrSBankSelKernelPrePre_sum_T_23 = {{6'd0}, addrS_0[6]}; // @[FFTEngine.scala 349:115]
  wire [1:0] _GEN_436 = {{1'd0}, _addrSBankSelKernelPrePre_sum_T_23[0]}; // @[FFTEngine.scala 349:107]
  wire [1:0] addrSBankSelKernelPrePre_0_1 = _addrSBankSelKernelPrePre_sum_T_22 + _GEN_436; // @[FFTEngine.scala 349:107]
  wire [6:0] _addrSBankSelKernelPrePre_sum_T_26 = {{1'd0}, addrS_1[6:1]}; // @[FFTEngine.scala 349:115]
  wire [1:0] _GEN_438 = {{1'd0}, _addrSBankSelKernelPrePre_sum_T_26[0]}; // @[FFTEngine.scala 349:107]
  wire [2:0] _addrSBankSelKernelPrePre_sum_T_28 = {{1'd0}, _GEN_438}; // @[FFTEngine.scala 349:107]
  wire [6:0] _addrSBankSelKernelPrePre_sum_T_30 = {{3'd0}, addrS_1[6:3]}; // @[FFTEngine.scala 349:115]
  wire [1:0] _GEN_440 = {{1'd0}, _addrSBankSelKernelPrePre_sum_T_30[0]}; // @[FFTEngine.scala 349:107]
  wire [1:0] _addrSBankSelKernelPrePre_sum_T_33 = _addrSBankSelKernelPrePre_sum_T_28[1:0] + _GEN_440; // @[FFTEngine.scala 349:107]
  wire [6:0] _addrSBankSelKernelPrePre_sum_T_34 = {{5'd0}, addrS_1[6:5]}; // @[FFTEngine.scala 349:115]
  wire [1:0] _GEN_442 = {{1'd0}, _addrSBankSelKernelPrePre_sum_T_34[0]}; // @[FFTEngine.scala 349:107]
  wire [1:0] addrSBankSelKernelPrePre_1_0 = _addrSBankSelKernelPrePre_sum_T_33 + _GEN_442; // @[FFTEngine.scala 349:107]
  wire [1:0] _GEN_443 = {{1'd0}, addrS_1[0]}; // @[FFTEngine.scala 349:107]
  wire [2:0] _addrSBankSelKernelPrePre_sum_T_39 = {{1'd0}, _GEN_443}; // @[FFTEngine.scala 349:107]
  wire [6:0] _addrSBankSelKernelPrePre_sum_T_41 = {{2'd0}, addrS_1[6:2]}; // @[FFTEngine.scala 349:115]
  wire [1:0] _GEN_445 = {{1'd0}, _addrSBankSelKernelPrePre_sum_T_41[0]}; // @[FFTEngine.scala 349:107]
  wire [1:0] _addrSBankSelKernelPrePre_sum_T_44 = _addrSBankSelKernelPrePre_sum_T_39[1:0] + _GEN_445; // @[FFTEngine.scala 349:107]
  wire [6:0] _addrSBankSelKernelPrePre_sum_T_45 = {{4'd0}, addrS_1[6:4]}; // @[FFTEngine.scala 349:115]
  wire [1:0] _GEN_447 = {{1'd0}, _addrSBankSelKernelPrePre_sum_T_45[0]}; // @[FFTEngine.scala 349:107]
  wire [1:0] _addrSBankSelKernelPrePre_sum_T_48 = _addrSBankSelKernelPrePre_sum_T_44 + _GEN_447; // @[FFTEngine.scala 349:107]
  wire [6:0] _addrSBankSelKernelPrePre_sum_T_49 = {{6'd0}, addrS_1[6]}; // @[FFTEngine.scala 349:115]
  wire [1:0] _GEN_449 = {{1'd0}, _addrSBankSelKernelPrePre_sum_T_49[0]}; // @[FFTEngine.scala 349:107]
  wire [1:0] addrSBankSelKernelPrePre_1_1 = _addrSBankSelKernelPrePre_sum_T_48 + _GEN_449; // @[FFTEngine.scala 349:107]
  wire [2:0] _addrSBankSelKernelPre_T_1 = {{1'd0}, addrSBankSelKernelPrePre_0_0}; // @[FFTEngine.scala 355:144]
  wire [2:0] _addrSBankSelKernelPre_T_3 = {_addrSBankSelKernelPre_T_1[1:0], 1'h0}; // @[FFTEngine.scala 355:138]
  wire [2:0] _GEN_450 = {{1'd0}, addrSBankSelKernelPrePre_0_1}; // @[FFTEngine.scala 355:144]
  wire [2:0] _addrSBankSelKernelPre_T_5 = _addrSBankSelKernelPre_T_3 + _GEN_450; // @[FFTEngine.scala 355:144]
  wire [2:0] _addrSBankSelKernelPre_T_7 = {{1'd0}, addrSBankSelKernelPrePre_1_0}; // @[FFTEngine.scala 355:144]
  wire [2:0] _addrSBankSelKernelPre_T_9 = {_addrSBankSelKernelPre_T_7[1:0], 1'h0}; // @[FFTEngine.scala 355:138]
  wire [2:0] _GEN_451 = {{1'd0}, addrSBankSelKernelPrePre_1_1}; // @[FFTEngine.scala 355:144]
  wire [2:0] _addrSBankSelKernelPre_T_11 = _addrSBankSelKernelPre_T_9 + _GEN_451; // @[FFTEngine.scala 355:144]
  wire [1:0] addrSBankSelKernelPre_0 = _addrSBankSelKernelPre_T_5[1:0]; // @[FFTEngine.scala 355:160]
  wire [1:0] addrSBankSelKernelPre_1 = _addrSBankSelKernelPre_T_11[1:0]; // @[FFTEngine.scala 355:160]
  wire [6:0] _addrTBankSelKernelPrePre_sum_T = {{1'd0}, addrT_0[6:1]}; // @[FFTEngine.scala 349:115]
  wire [1:0] _GEN_453 = {{1'd0}, _addrTBankSelKernelPrePre_sum_T[0]}; // @[FFTEngine.scala 349:107]
  wire [2:0] _addrTBankSelKernelPrePre_sum_T_2 = {{1'd0}, _GEN_453}; // @[FFTEngine.scala 349:107]
  wire [6:0] _addrTBankSelKernelPrePre_sum_T_4 = {{3'd0}, addrT_0[6:3]}; // @[FFTEngine.scala 349:115]
  wire [1:0] _GEN_455 = {{1'd0}, _addrTBankSelKernelPrePre_sum_T_4[0]}; // @[FFTEngine.scala 349:107]
  wire [1:0] _addrTBankSelKernelPrePre_sum_T_7 = _addrTBankSelKernelPrePre_sum_T_2[1:0] + _GEN_455; // @[FFTEngine.scala 349:107]
  wire [6:0] _addrTBankSelKernelPrePre_sum_T_8 = {{5'd0}, addrT_0[6:5]}; // @[FFTEngine.scala 349:115]
  wire [1:0] _GEN_457 = {{1'd0}, _addrTBankSelKernelPrePre_sum_T_8[0]}; // @[FFTEngine.scala 349:107]
  wire [1:0] addrTBankSelKernelPrePre_0_0 = _addrTBankSelKernelPrePre_sum_T_7 + _GEN_457; // @[FFTEngine.scala 349:107]
  wire [1:0] _GEN_458 = {{1'd0}, addrT_0[0]}; // @[FFTEngine.scala 349:107]
  wire [2:0] _addrTBankSelKernelPrePre_sum_T_13 = {{1'd0}, _GEN_458}; // @[FFTEngine.scala 349:107]
  wire [6:0] _addrTBankSelKernelPrePre_sum_T_15 = {{2'd0}, addrT_0[6:2]}; // @[FFTEngine.scala 349:115]
  wire [1:0] _GEN_460 = {{1'd0}, _addrTBankSelKernelPrePre_sum_T_15[0]}; // @[FFTEngine.scala 349:107]
  wire [1:0] _addrTBankSelKernelPrePre_sum_T_18 = _addrTBankSelKernelPrePre_sum_T_13[1:0] + _GEN_460; // @[FFTEngine.scala 349:107]
  wire [6:0] _addrTBankSelKernelPrePre_sum_T_19 = {{4'd0}, addrT_0[6:4]}; // @[FFTEngine.scala 349:115]
  wire [1:0] _GEN_462 = {{1'd0}, _addrTBankSelKernelPrePre_sum_T_19[0]}; // @[FFTEngine.scala 349:107]
  wire [1:0] _addrTBankSelKernelPrePre_sum_T_22 = _addrTBankSelKernelPrePre_sum_T_18 + _GEN_462; // @[FFTEngine.scala 349:107]
  wire [6:0] _addrTBankSelKernelPrePre_sum_T_23 = {{6'd0}, addrT_0[6]}; // @[FFTEngine.scala 349:115]
  wire [1:0] _GEN_464 = {{1'd0}, _addrTBankSelKernelPrePre_sum_T_23[0]}; // @[FFTEngine.scala 349:107]
  wire [1:0] addrTBankSelKernelPrePre_0_1 = _addrTBankSelKernelPrePre_sum_T_22 + _GEN_464; // @[FFTEngine.scala 349:107]
  wire [6:0] _addrTBankSelKernelPrePre_sum_T_26 = {{1'd0}, addrT_1[6:1]}; // @[FFTEngine.scala 349:115]
  wire [1:0] _GEN_466 = {{1'd0}, _addrTBankSelKernelPrePre_sum_T_26[0]}; // @[FFTEngine.scala 349:107]
  wire [2:0] _addrTBankSelKernelPrePre_sum_T_28 = {{1'd0}, _GEN_466}; // @[FFTEngine.scala 349:107]
  wire [6:0] _addrTBankSelKernelPrePre_sum_T_30 = {{3'd0}, addrT_1[6:3]}; // @[FFTEngine.scala 349:115]
  wire [1:0] _GEN_468 = {{1'd0}, _addrTBankSelKernelPrePre_sum_T_30[0]}; // @[FFTEngine.scala 349:107]
  wire [1:0] _addrTBankSelKernelPrePre_sum_T_33 = _addrTBankSelKernelPrePre_sum_T_28[1:0] + _GEN_468; // @[FFTEngine.scala 349:107]
  wire [6:0] _addrTBankSelKernelPrePre_sum_T_34 = {{5'd0}, addrT_1[6:5]}; // @[FFTEngine.scala 349:115]
  wire [1:0] _GEN_470 = {{1'd0}, _addrTBankSelKernelPrePre_sum_T_34[0]}; // @[FFTEngine.scala 349:107]
  wire [1:0] addrTBankSelKernelPrePre_1_0 = _addrTBankSelKernelPrePre_sum_T_33 + _GEN_470; // @[FFTEngine.scala 349:107]
  wire [1:0] _GEN_471 = {{1'd0}, addrT_1[0]}; // @[FFTEngine.scala 349:107]
  wire [2:0] _addrTBankSelKernelPrePre_sum_T_39 = {{1'd0}, _GEN_471}; // @[FFTEngine.scala 349:107]
  wire [6:0] _addrTBankSelKernelPrePre_sum_T_41 = {{2'd0}, addrT_1[6:2]}; // @[FFTEngine.scala 349:115]
  wire [1:0] _GEN_473 = {{1'd0}, _addrTBankSelKernelPrePre_sum_T_41[0]}; // @[FFTEngine.scala 349:107]
  wire [1:0] _addrTBankSelKernelPrePre_sum_T_44 = _addrTBankSelKernelPrePre_sum_T_39[1:0] + _GEN_473; // @[FFTEngine.scala 349:107]
  wire [6:0] _addrTBankSelKernelPrePre_sum_T_45 = {{4'd0}, addrT_1[6:4]}; // @[FFTEngine.scala 349:115]
  wire [1:0] _GEN_475 = {{1'd0}, _addrTBankSelKernelPrePre_sum_T_45[0]}; // @[FFTEngine.scala 349:107]
  wire [1:0] _addrTBankSelKernelPrePre_sum_T_48 = _addrTBankSelKernelPrePre_sum_T_44 + _GEN_475; // @[FFTEngine.scala 349:107]
  wire [6:0] _addrTBankSelKernelPrePre_sum_T_49 = {{6'd0}, addrT_1[6]}; // @[FFTEngine.scala 349:115]
  wire [1:0] _GEN_477 = {{1'd0}, _addrTBankSelKernelPrePre_sum_T_49[0]}; // @[FFTEngine.scala 349:107]
  wire [1:0] addrTBankSelKernelPrePre_1_1 = _addrTBankSelKernelPrePre_sum_T_48 + _GEN_477; // @[FFTEngine.scala 349:107]
  wire [2:0] _addrTBankSelKernelPre_T_1 = {{1'd0}, addrTBankSelKernelPrePre_0_0}; // @[FFTEngine.scala 361:144]
  wire [2:0] _addrTBankSelKernelPre_T_3 = {_addrTBankSelKernelPre_T_1[1:0], 1'h0}; // @[FFTEngine.scala 361:138]
  wire [2:0] _GEN_478 = {{1'd0}, addrTBankSelKernelPrePre_0_1}; // @[FFTEngine.scala 361:144]
  wire [2:0] _addrTBankSelKernelPre_T_5 = _addrTBankSelKernelPre_T_3 + _GEN_478; // @[FFTEngine.scala 361:144]
  wire [2:0] _addrTBankSelKernelPre_T_7 = {{1'd0}, addrTBankSelKernelPrePre_1_0}; // @[FFTEngine.scala 361:144]
  wire [2:0] _addrTBankSelKernelPre_T_9 = {_addrTBankSelKernelPre_T_7[1:0], 1'h0}; // @[FFTEngine.scala 361:138]
  wire [2:0] _GEN_479 = {{1'd0}, addrTBankSelKernelPrePre_1_1}; // @[FFTEngine.scala 361:144]
  wire [2:0] _addrTBankSelKernelPre_T_11 = _addrTBankSelKernelPre_T_9 + _GEN_479; // @[FFTEngine.scala 361:144]
  wire [1:0] addrTBankSelKernelPre_0 = _addrTBankSelKernelPre_T_5[1:0]; // @[FFTEngine.scala 361:160]
  wire [1:0] addrTBankSelKernelPre_1 = _addrTBankSelKernelPre_T_11[1:0]; // @[FFTEngine.scala 361:160]
  wire [1:0] addrSBankSelKernel_0 = _radixInit_T_1 ? addrSBankSelKernelPre_0 : 2'h0; // @[FFTEngine.scala 366:27 367:35 370:35]
  wire [1:0] addrTBankSelKernel_0 = _radixInit_T_1 ? addrTBankSelKernelPre_0 : 2'h1; // @[FFTEngine.scala 366:27 368:35 371:35]
  wire [1:0] addrSBankSelKernel_1 = _radixInit_T_1 ? addrSBankSelKernelPre_1 : 2'h2; // @[FFTEngine.scala 366:27 367:35 370:35]
  wire [1:0] addrTBankSelKernel_1 = _radixInit_T_1 ? addrTBankSelKernelPre_1 : 2'h3; // @[FFTEngine.scala 366:27 368:35 371:35]
  wire  addrSBankSelProcPre__0 = addrS_0[0] ^ addrS_0[6]; // @[FFTEngine.scala 382:55]
  wire  addrTBankSelProcPre__0 = addrT_0[0] ^ addrT_0[6]; // @[FFTEngine.scala 383:55]
  wire  addrSBankSelProcPre__1 = addrS_0[1] ^ addrS_0[5]; // @[FFTEngine.scala 382:55]
  wire  addrTBankSelProcPre__1 = addrT_0[1] ^ addrT_0[5]; // @[FFTEngine.scala 383:55]
  wire [1:0] addrSBankSelProc_0 = {addrSBankSelProcPre__0,addrSBankSelProcPre__1}; // @[Cat.scala 33:92]
  wire [1:0] addrTBankSelProc_0 = {addrTBankSelProcPre__0,addrTBankSelProcPre__1}; // @[Cat.scala 33:92]
  wire  addrSBankSelProcPre_1_0 = addrS_1[0] ^ addrS_1[6]; // @[FFTEngine.scala 382:55]
  wire  addrTBankSelProcPre_1_0 = addrT_1[0] ^ addrT_1[6]; // @[FFTEngine.scala 383:55]
  wire  addrSBankSelProcPre_1_1 = addrS_1[1] ^ addrS_1[5]; // @[FFTEngine.scala 382:55]
  wire  addrTBankSelProcPre_1_1 = addrT_1[1] ^ addrT_1[5]; // @[FFTEngine.scala 383:55]
  wire [1:0] addrSBankSelProc_1 = {addrSBankSelProcPre_1_0,addrSBankSelProcPre_1_1}; // @[Cat.scala 33:92]
  wire [1:0] addrTBankSelProc_1 = {addrTBankSelProcPre_1_0,addrTBankSelProcPre_1_1}; // @[Cat.scala 33:92]
  reg [1:0] addrSBankSelKernel1c_0_r; // @[Reg.scala 35:20]
  reg [1:0] addrSBankSelKernel2c_0_r; // @[Reg.scala 35:20]
  reg [1:0] addrSBankSelKernel3c_0_r; // @[Reg.scala 35:20]
  reg [1:0] addrTBankSelKernel1c_0_r; // @[Reg.scala 35:20]
  reg [1:0] addrTBankSelKernel2c_0_r; // @[Reg.scala 35:20]
  reg [1:0] addrTBankSelKernel3c_0_r; // @[Reg.scala 35:20]
  reg [1:0] addrSBankSelKernel1c_1_r; // @[Reg.scala 35:20]
  reg [1:0] addrSBankSelKernel2c_1_r; // @[Reg.scala 35:20]
  reg [1:0] addrSBankSelKernel3c_1_r; // @[Reg.scala 35:20]
  reg [1:0] addrTBankSelKernel1c_1_r; // @[Reg.scala 35:20]
  reg [1:0] addrTBankSelKernel2c_1_r; // @[Reg.scala 35:20]
  reg [1:0] addrTBankSelKernel3c_1_r; // @[Reg.scala 35:20]
  reg [1:0] addrSBankSelProc1c_0_r; // @[Reg.scala 35:20]
  reg [1:0] addrSBankSelProc2c_0_r; // @[Reg.scala 35:20]
  reg [1:0] addrSBankSelProc3c_0_r; // @[Reg.scala 35:20]
  reg [1:0] addrTBankSelProc1c_0_r; // @[Reg.scala 35:20]
  reg [1:0] addrTBankSelProc2c_0_r; // @[Reg.scala 35:20]
  reg [1:0] addrTBankSelProc3c_0_r; // @[Reg.scala 35:20]
  reg [1:0] addrSBankSelProc1c_1_r; // @[Reg.scala 35:20]
  reg [1:0] addrSBankSelProc2c_1_r; // @[Reg.scala 35:20]
  reg [1:0] addrSBankSelProc3c_1_r; // @[Reg.scala 35:20]
  reg [1:0] addrTBankSelProc1c_1_r; // @[Reg.scala 35:20]
  reg [1:0] addrTBankSelProc2c_1_r; // @[Reg.scala 35:20]
  reg [1:0] addrTBankSelProc3c_1_r; // @[Reg.scala 35:20]
  reg  kernelState1c; // @[Reg.scala 35:20]
  reg  kernelState2c; // @[Reg.scala 35:20]
  reg  kernelState3c; // @[Reg.scala 35:20]
  reg  procState1c; // @[Reg.scala 35:20]
  reg  procState2c; // @[Reg.scala 35:20]
  reg  procState3c; // @[Reg.scala 35:20]
  reg  sameAddr1c; // @[Reg.scala 35:20]
  reg  sameAddr2c; // @[Reg.scala 35:20]
  reg  sameAddr3c; // @[Reg.scala 35:20]
  wire [15:0] _dataInPre_0_T_1 = io_readDataSram1Bank_0[15:0]; // @[FFTEngine.scala 447:72]
  wire [15:0] _dataInPre_0_T_3 = io_readDataSram1Bank_0[31:16]; // @[FFTEngine.scala 447:72]
  wire [15:0] _dataInPre_0_T_5 = io_readDataSram0Bank_0[15:0]; // @[FFTEngine.scala 447:121]
  wire [15:0] _dataInPre_0_T_7 = io_readDataSram0Bank_0[31:16]; // @[FFTEngine.scala 447:121]
  wire [15:0] dataInPre_0_im = srcBuffer ? $signed(_dataInPre_0_T_3) : $signed(_dataInPre_0_T_7); // @[FFTEngine.scala 447:28]
  wire [15:0] dataInPre_0_re = srcBuffer ? $signed(_dataInPre_0_T_1) : $signed(_dataInPre_0_T_5); // @[FFTEngine.scala 447:28]
  wire [15:0] _dataInPre_1_T_1 = io_readDataSram1Bank_1[15:0]; // @[FFTEngine.scala 447:72]
  wire [15:0] _dataInPre_1_T_3 = io_readDataSram1Bank_1[31:16]; // @[FFTEngine.scala 447:72]
  wire [15:0] _dataInPre_1_T_5 = io_readDataSram0Bank_1[15:0]; // @[FFTEngine.scala 447:121]
  wire [15:0] _dataInPre_1_T_7 = io_readDataSram0Bank_1[31:16]; // @[FFTEngine.scala 447:121]
  wire [15:0] dataInPre_1_im = srcBuffer ? $signed(_dataInPre_1_T_3) : $signed(_dataInPre_1_T_7); // @[FFTEngine.scala 447:28]
  wire [15:0] dataInPre_1_re = srcBuffer ? $signed(_dataInPre_1_T_1) : $signed(_dataInPre_1_T_5); // @[FFTEngine.scala 447:28]
  wire [15:0] _dataInPre_2_T_1 = io_readDataSram1Bank_2[15:0]; // @[FFTEngine.scala 447:72]
  wire [15:0] _dataInPre_2_T_3 = io_readDataSram1Bank_2[31:16]; // @[FFTEngine.scala 447:72]
  wire [15:0] _dataInPre_2_T_5 = io_readDataSram0Bank_2[15:0]; // @[FFTEngine.scala 447:121]
  wire [15:0] _dataInPre_2_T_7 = io_readDataSram0Bank_2[31:16]; // @[FFTEngine.scala 447:121]
  wire [15:0] dataInPre_2_im = srcBuffer ? $signed(_dataInPre_2_T_3) : $signed(_dataInPre_2_T_7); // @[FFTEngine.scala 447:28]
  wire [15:0] dataInPre_2_re = srcBuffer ? $signed(_dataInPre_2_T_1) : $signed(_dataInPre_2_T_5); // @[FFTEngine.scala 447:28]
  wire [15:0] _dataInPre_3_T_1 = io_readDataSram1Bank_3[15:0]; // @[FFTEngine.scala 447:72]
  wire [15:0] _dataInPre_3_T_3 = io_readDataSram1Bank_3[31:16]; // @[FFTEngine.scala 447:72]
  wire [15:0] _dataInPre_3_T_5 = io_readDataSram0Bank_3[15:0]; // @[FFTEngine.scala 447:121]
  wire [15:0] _dataInPre_3_T_7 = io_readDataSram0Bank_3[31:16]; // @[FFTEngine.scala 447:121]
  wire [15:0] dataInPre_3_im = srcBuffer ? $signed(_dataInPre_3_T_3) : $signed(_dataInPre_3_T_7); // @[FFTEngine.scala 447:28]
  wire [15:0] dataInPre_3_re = srcBuffer ? $signed(_dataInPre_3_T_1) : $signed(_dataInPre_3_T_5); // @[FFTEngine.scala 447:28]
  reg [4:0] addrS1c; // @[Reg.scala 35:20]
  reg [4:0] addrS2c; // @[Reg.scala 35:20]
  reg [4:0] addrS3c; // @[Reg.scala 35:20]
  reg [4:0] addrT1c; // @[Reg.scala 35:20]
  reg [4:0] addrT2c; // @[Reg.scala 35:20]
  reg [4:0] addrT3c; // @[Reg.scala 35:20]
  wire [1:0] _addrSBankSel_T_1 = _radixInit_T_11 ? addrSBankSelProc_0 : addrSBankSelKernel_0; // @[FFTEngine.scala 471:32]
  wire  _addrSBankSel_T_2 = phaseCount == 3'h0; // @[FFTEngine.scala 474:72]
  wire  _addrSBankSel_T_4 = _radixInit_T_11 | _radixInit_T_1 & phaseCount == 3'h0; // @[FFTEngine.scala 474:43]
  wire [1:0] _addrSBankSel_T_5 = _radixInit_T_11 | _radixInit_T_1 & phaseCount == 3'h0 ? addrSBankSelProc_0 :
    addrSBankSelKernel_0; // @[FFTEngine.scala 474:32]
  wire [1:0] addrSBankSel = io_fftMode ? _addrSBankSel_T_1 : _addrSBankSel_T_5; // @[FFTEngine.scala 470:21 471:26 474:26]
  reg [1:0] addrSBankSel1c; // @[Reg.scala 35:20]
  reg [1:0] addrTBankSel1c; // @[Reg.scala 35:20]
  wire [15:0] _GEN_74 = 2'h1 == addrSBankSel1c ? $signed(dataInPre_1_re) : $signed(dataInPre_0_re); // @[FFTEngine.scala 482:{29,29}]
  wire [15:0] _GEN_75 = 2'h2 == addrSBankSel1c ? $signed(dataInPre_2_re) : $signed(_GEN_74); // @[FFTEngine.scala 482:{29,29}]
  wire  _fftCalc_io_dataInSI_T_1 = sameAddr1c & _T_12; // @[FFTEngine.scala 483:47]
  wire [15:0] _GEN_78 = 2'h1 == addrSBankSel1c ? $signed(dataInPre_1_im) : $signed(dataInPre_0_im); // @[FFTEngine.scala 483:{35,35}]
  wire [15:0] _GEN_79 = 2'h2 == addrSBankSel1c ? $signed(dataInPre_2_im) : $signed(_GEN_78); // @[FFTEngine.scala 483:{35,35}]
  wire [15:0] _GEN_80 = 2'h3 == addrSBankSel1c ? $signed(dataInPre_3_im) : $signed(_GEN_79); // @[FFTEngine.scala 483:{35,35}]
  wire [15:0] _GEN_82 = 2'h1 == addrTBankSel1c ? $signed(dataInPre_1_im) : $signed(dataInPre_0_im); // @[FFTEngine.scala 484:{35,35}]
  wire [15:0] _GEN_83 = 2'h2 == addrTBankSel1c ? $signed(dataInPre_2_im) : $signed(_GEN_82); // @[FFTEngine.scala 484:{35,35}]
  wire [15:0] _GEN_84 = 2'h3 == addrTBankSel1c ? $signed(dataInPre_3_im) : $signed(_GEN_83); // @[FFTEngine.scala 484:{35,35}]
  wire [15:0] _GEN_86 = 2'h1 == addrTBankSel1c ? $signed(dataInPre_1_re) : $signed(dataInPre_0_re); // @[FFTEngine.scala 484:{35,35}]
  wire [15:0] _GEN_87 = 2'h2 == addrTBankSel1c ? $signed(dataInPre_2_re) : $signed(_GEN_86); // @[FFTEngine.scala 484:{35,35}]
  wire [15:0] _GEN_88 = 2'h3 == addrTBankSel1c ? $signed(dataInPre_3_re) : $signed(_GEN_87); // @[FFTEngine.scala 484:{35,35}]
  wire [6:0] _fftCalc_io_nk_T_2 = {nk_0[5:0],1'h0}; // @[Cat.scala 33:92]
  wire  _GEN_94 = 3'h1 == phaseCount ? io_fftRShiftP0_1 : io_fftRShiftP0_0; // @[FFTEngine.scala 491:{36,36}]
  wire  _GEN_95 = 3'h2 == phaseCount ? io_fftRShiftP0_2 : _GEN_94; // @[FFTEngine.scala 491:{36,36}]
  wire  _GEN_96 = 3'h3 == phaseCount ? io_fftRShiftP0_3 : _GEN_95; // @[FFTEngine.scala 491:{36,36}]
  wire  _GEN_97 = 3'h4 == phaseCount ? io_fftRShiftP0_4 : _GEN_96; // @[FFTEngine.scala 491:{36,36}]
  wire  _GEN_98 = 3'h5 == phaseCount ? io_fftRShiftP0_5 : _GEN_97; // @[FFTEngine.scala 491:{36,36}]
  wire  _GEN_99 = 3'h6 == phaseCount ? io_fftRShiftP0_6 : _GEN_98; // @[FFTEngine.scala 491:{36,36}]
  wire [15:0] _writeDataTRPre3c_T_3 = 16'sh0 - $signed(fftCalc_io_dataOutTI3c); // @[FFTEngine.scala 498:132]
  wire [15:0] _writeDataTRPre3c_T_4 = io_fftMode ? $signed(fftCalc_io_dataOutTI3c) : $signed(_writeDataTRPre3c_T_3); // @[FFTEngine.scala 498:100]
  wire [15:0] _writeDataTRPre3c_T_5 = _T_12 ? $signed(fftCalc_io_dataOutTR3c) : $signed(_writeDataTRPre3c_T_4); // @[FFTEngine.scala 498:52]
  wire [15:0] writeDataTRPre3c = procState3c ? $signed(_writeDataTRPre3c_T_5) : $signed(fftCalc_io_dataOutTR3c); // @[FFTEngine.scala 498:35]
  wire [15:0] _writeDataTIPre3c_T_6 = 16'sh0 - $signed(fftCalc_io_dataOutTR3c); // @[FFTEngine.scala 499:109]
  wire [15:0] _writeDataTIPre3c_T_7 = io_fftMode ? $signed(_writeDataTIPre3c_T_6) : $signed(fftCalc_io_dataOutTR3c); // @[FFTEngine.scala 499:101]
  wire [15:0] _writeDataTIPre3c_T_8 = _T_12 ? $signed(_writeDataTRPre3c_T_3) : $signed(_writeDataTIPre3c_T_7); // @[FFTEngine.scala 499:52]
  wire [15:0] writeDataTIPre3c = procState3c ? $signed(_writeDataTIPre3c_T_8) : $signed(fftCalc_io_dataOutTI3c); // @[FFTEngine.scala 499:35]
  wire  _addrSBankSel3c_T_1 = kernelState3c & _T_6; // @[FFTEngine.scala 505:64]
  wire  _addrSBankSel3c_T_2 = procState3c | kernelState3c & _T_6; // @[FFTEngine.scala 505:47]
  wire [1:0] _addrSBankSel3c_T_3 = procState3c | kernelState3c & _T_6 ? addrSBankSelProc3c_0_r :
    addrSBankSelKernel3c_0_r; // @[FFTEngine.scala 505:34]
  wire [1:0] _addrTBankSel3c_T_3 = _addrSBankSel3c_T_2 ? addrTBankSelProc3c_0_r : addrTBankSelKernel3c_0_r; // @[FFTEngine.scala 506:34]
  wire [1:0] _addrSBankSel3c_T_4 = procState3c ? addrSBankSelProc3c_0_r : addrSBankSelKernel3c_0_r; // @[FFTEngine.scala 508:34]
  wire [1:0] _addrTBankSel3c_T_4 = procState3c ? addrTBankSelProc3c_0_r : addrTBankSelKernel3c_0_r; // @[FFTEngine.scala 509:34]
  wire [1:0] addrSBankSel3c = io_fftMode ? _addrSBankSel3c_T_3 : _addrSBankSel3c_T_4; // @[FFTEngine.scala 504:21 505:28 508:28]
  wire [1:0] addrTBankSel3c = io_fftMode ? _addrTBankSel3c_T_3 : _addrTBankSel3c_T_4; // @[FFTEngine.scala 504:21 506:28 509:28]
  wire  _GEN_102 = (2'h0 == addrSBankSelProc3c_0_r | 2'h0 == addrTBankSelProc3c_0_r) & (srcBuffer & procState3c); // @[FFTEngine.scala 515:94 516:52 519:52]
  wire  _GEN_103 = (2'h0 == addrSBankSelProc3c_0_r | 2'h0 == addrTBankSelProc3c_0_r) & (_srcBufferNext_T_3 & procState3c
    ); // @[FFTEngine.scala 515:94 517:52 520:52]
  wire  _GEN_106 = (2'h1 == addrSBankSelProc3c_0_r | 2'h1 == addrTBankSelProc3c_0_r) & (srcBuffer & procState3c); // @[FFTEngine.scala 515:94 516:52 519:52]
  wire  _GEN_107 = (2'h1 == addrSBankSelProc3c_0_r | 2'h1 == addrTBankSelProc3c_0_r) & (_srcBufferNext_T_3 & procState3c
    ); // @[FFTEngine.scala 515:94 517:52 520:52]
  wire  _GEN_110 = (2'h2 == addrSBankSelProc3c_0_r | 2'h2 == addrTBankSelProc3c_0_r) & (srcBuffer & procState3c); // @[FFTEngine.scala 515:94 516:52 519:52]
  wire  _GEN_111 = (2'h2 == addrSBankSelProc3c_0_r | 2'h2 == addrTBankSelProc3c_0_r) & (_srcBufferNext_T_3 & procState3c
    ); // @[FFTEngine.scala 515:94 517:52 520:52]
  wire  _GEN_114 = (2'h3 == addrSBankSelProc3c_0_r | 2'h3 == addrTBankSelProc3c_0_r) & (srcBuffer & procState3c); // @[FFTEngine.scala 515:94 516:52 519:52]
  wire  _GEN_115 = (2'h3 == addrSBankSelProc3c_0_r | 2'h3 == addrTBankSelProc3c_0_r) & (_srcBufferNext_T_3 & procState3c
    ); // @[FFTEngine.scala 515:94 517:52 520:52]
  wire [4:0] _GEN_122 = 2'h0 == addrSBankSel ? addrS_0[4:0] : addrT_0[4:0]; // @[FFTEngine.scala 532:{48,48}]
  wire [4:0] _GEN_123 = 2'h1 == addrSBankSel ? addrS_0[4:0] : addrT_0[4:0]; // @[FFTEngine.scala 532:{48,48}]
  wire [4:0] _GEN_124 = 2'h2 == addrSBankSel ? addrS_0[4:0] : addrT_0[4:0]; // @[FFTEngine.scala 532:{48,48}]
  wire [4:0] _GEN_125 = 2'h3 == addrSBankSel ? addrS_0[4:0] : addrT_0[4:0]; // @[FFTEngine.scala 532:{48,48}]
  wire [4:0] _GEN_166 = ~_radixInit_T_11 ? _GEN_122 : _GEN_122; // @[FFTEngine.scala 529:26]
  wire [4:0] _GEN_167 = ~_radixInit_T_11 ? _GEN_123 : _GEN_123; // @[FFTEngine.scala 529:26]
  wire [4:0] _GEN_168 = ~_radixInit_T_11 ? _GEN_124 : _GEN_124; // @[FFTEngine.scala 529:26]
  wire [4:0] _GEN_169 = ~_radixInit_T_11 ? _GEN_125 : _GEN_125; // @[FFTEngine.scala 529:26]
  wire [4:0] _GEN_174 = 2'h0 == addrTBankSel3c ? addrT3c : _GEN_166; // @[FFTEngine.scala 551:{50,50}]
  wire [4:0] _GEN_175 = 2'h1 == addrTBankSel3c ? addrT3c : _GEN_167; // @[FFTEngine.scala 551:{50,50}]
  wire [4:0] _GEN_176 = 2'h2 == addrTBankSel3c ? addrT3c : _GEN_168; // @[FFTEngine.scala 551:{50,50}]
  wire [4:0] _GEN_177 = 2'h3 == addrTBankSel3c ? addrT3c : _GEN_169; // @[FFTEngine.scala 551:{50,50}]
  wire [4:0] _GEN_178 = 2'h0 == addrSBankSel3c ? addrS3c : _GEN_174; // @[FFTEngine.scala 552:{50,50}]
  wire [4:0] _GEN_179 = 2'h1 == addrSBankSel3c ? addrS3c : _GEN_175; // @[FFTEngine.scala 552:{50,50}]
  wire [4:0] _GEN_180 = 2'h2 == addrSBankSel3c ? addrS3c : _GEN_176; // @[FFTEngine.scala 552:{50,50}]
  wire [4:0] _GEN_181 = 2'h3 == addrSBankSel3c ? addrS3c : _GEN_177; // @[FFTEngine.scala 552:{50,50}]
  wire [4:0] _GEN_190 = _srcBufferNext_T_3 ? _GEN_178 : _GEN_166; // @[FFTEngine.scala 550:37]
  wire [4:0] _GEN_191 = _srcBufferNext_T_3 ? _GEN_179 : _GEN_167; // @[FFTEngine.scala 550:37]
  wire [4:0] _GEN_192 = _srcBufferNext_T_3 ? _GEN_180 : _GEN_168; // @[FFTEngine.scala 550:37]
  wire [4:0] _GEN_193 = _srcBufferNext_T_3 ? _GEN_181 : _GEN_169; // @[FFTEngine.scala 550:37]
  wire [4:0] _GEN_194 = _srcBufferNext_T_3 ? _GEN_166 : _GEN_178; // @[FFTEngine.scala 550:37]
  wire [4:0] _GEN_195 = _srcBufferNext_T_3 ? _GEN_167 : _GEN_179; // @[FFTEngine.scala 550:37]
  wire [4:0] _GEN_196 = _srcBufferNext_T_3 ? _GEN_168 : _GEN_180; // @[FFTEngine.scala 550:37]
  wire [4:0] _GEN_197 = _srcBufferNext_T_3 ? _GEN_169 : _GEN_181; // @[FFTEngine.scala 550:37]
  wire [4:0] _GEN_222 = ~procState3c ? _GEN_190 : _GEN_190; // @[FFTEngine.scala 549:28]
  wire [4:0] _GEN_223 = ~procState3c ? _GEN_191 : _GEN_191; // @[FFTEngine.scala 549:28]
  wire [4:0] _GEN_224 = ~procState3c ? _GEN_192 : _GEN_192; // @[FFTEngine.scala 549:28]
  wire [4:0] _GEN_225 = ~procState3c ? _GEN_193 : _GEN_193; // @[FFTEngine.scala 549:28]
  wire [4:0] _GEN_226 = ~procState3c ? _GEN_194 : _GEN_194; // @[FFTEngine.scala 549:28]
  wire [4:0] _GEN_227 = ~procState3c ? _GEN_195 : _GEN_195; // @[FFTEngine.scala 549:28]
  wire [4:0] _GEN_228 = ~procState3c ? _GEN_196 : _GEN_196; // @[FFTEngine.scala 549:28]
  wire [4:0] _GEN_229 = ~procState3c ? _GEN_197 : _GEN_197; // @[FFTEngine.scala 549:28]
  wire [14:0] _writeDataS3c_re_T = fftCalc_io_dataOutSR3c[15:1]; // @[FFTEngine.scala 579:53]
  wire [14:0] _writeDataS3c_im_T = writeDataTRPre3c[15:1]; // @[FFTEngine.scala 580:53]
  wire [15:0] _GEN_230 = ~io_fftMode & _T_12 ? $signed({{1{_writeDataS3c_re_T[14]}},_writeDataS3c_re_T}) : $signed(
    fftCalc_io_dataOutSR3c); // @[FFTEngine.scala 578:55 579:33 583:33]
  wire [15:0] _GEN_231 = ~io_fftMode & _T_12 ? $signed({{1{_writeDataS3c_im_T[14]}},_writeDataS3c_im_T}) : $signed(
    fftCalc_io_dataOutSI3c); // @[FFTEngine.scala 578:55 580:33 584:33]
  wire [15:0] _GEN_235 = io_fftMode & _addrSBankSel_T_2 ? $signed(writeDataTRPre3c) : $signed(_GEN_231); // @[FFTEngine.scala 574:47 576:33]
  wire [15:0] _GEN_239 = fftCalc_io_dataOutSI3c; // @[FFTEngine.scala 588:120 590:29 595:29]
  wire [15:0] writeDataS3c_im = sameAddr3c ? $signed(_GEN_235) : $signed(_GEN_239); // @[FFTEngine.scala 573:26]
  wire [15:0] _GEN_232 = ~io_fftMode & _T_12 ? $signed(writeDataS3c_im) : $signed(writeDataTIPre3c); // @[FFTEngine.scala 578:55 581:30 586:33]
  wire [15:0] _GEN_234 = io_fftMode & _addrSBankSel_T_2 ? $signed(fftCalc_io_dataOutSR3c) : $signed(_GEN_230); // @[FFTEngine.scala 574:47 575:33]
  wire [15:0] _GEN_238 = fftCalc_io_dataOutSR3c; // @[FFTEngine.scala 588:120 589:29 594:29]
  wire [15:0] writeDataS3c_re = sameAddr3c ? $signed(_GEN_234) : $signed(_GEN_238); // @[FFTEngine.scala 573:26]
  wire [15:0] _GEN_233 = ~io_fftMode & _T_12 ? $signed(writeDataS3c_re) : $signed(writeDataTRPre3c); // @[FFTEngine.scala 578:55 581:30 585:33]
  wire [15:0] _GEN_236 = io_fftMode & _addrSBankSel_T_2 ? $signed(writeDataS3c_im) : $signed(_GEN_232); // @[FFTEngine.scala 574:47 577:30]
  wire [15:0] _GEN_237 = io_fftMode & _addrSBankSel_T_2 ? $signed(writeDataS3c_re) : $signed(_GEN_233); // @[FFTEngine.scala 574:47 577:30]
  wire [15:0] _writeDataT3c_im_T_2 = 16'sh0 - $signed(writeDataTIPre3c); // @[FFTEngine.scala 592:32]
  wire [15:0] _GEN_241 = _addrSBankSel3c_T_1 & addrTBankSel3c == 2'h2 & addrT3c == 5'h1 ? $signed(_writeDataT3c_im_T_2)
     : $signed(writeDataTIPre3c); // @[FFTEngine.scala 588:120 592:29 597:29]
  wire [15:0] _io_writeDataSram0Bank_0_T = sameAddr3c ? $signed(_GEN_234) : $signed(_GEN_238); // @[FFTEngine.scala 604:66]
  wire [15:0] _io_writeDataSram0Bank_0_T_1 = sameAddr3c ? $signed(_GEN_235) : $signed(_GEN_239); // @[FFTEngine.scala 604:66]
  wire [31:0] _io_writeDataSram0Bank_0_T_2 = {_io_writeDataSram0Bank_0_T_1,_io_writeDataSram0Bank_0_T}; // @[FFTEngine.scala 604:66]
  wire [15:0] _io_writeDataSram0Bank_0_T_3 = sameAddr3c ? $signed(_GEN_237) : $signed(writeDataTRPre3c); // @[FFTEngine.scala 607:66]
  wire [15:0] _io_writeDataSram0Bank_0_T_4 = sameAddr3c ? $signed(_GEN_236) : $signed(_GEN_241); // @[FFTEngine.scala 607:66]
  wire [31:0] _io_writeDataSram0Bank_0_T_5 = {_io_writeDataSram0Bank_0_T_4,_io_writeDataSram0Bank_0_T_3}; // @[FFTEngine.scala 607:66]
  wire [31:0] _GEN_248 = 2'h0 == addrSBankSel3c ? _io_writeDataSram0Bank_0_T_2 : _io_writeDataSram0Bank_0_T_5; // @[FFTEngine.scala 603:50 604:50]
  wire [31:0] _GEN_254 = procState3c ? _GEN_248 : _GEN_248; // @[FFTEngine.scala 601:30]
  wire [31:0] _GEN_258 = 2'h1 == addrSBankSel3c ? _io_writeDataSram0Bank_0_T_2 : _io_writeDataSram0Bank_0_T_5; // @[FFTEngine.scala 603:50 604:50]
  wire [31:0] _GEN_264 = procState3c ? _GEN_258 : _GEN_258; // @[FFTEngine.scala 601:30]
  wire [31:0] _GEN_268 = 2'h2 == addrSBankSel3c ? _io_writeDataSram0Bank_0_T_2 : _io_writeDataSram0Bank_0_T_5; // @[FFTEngine.scala 603:50 604:50]
  wire [31:0] _GEN_274 = procState3c ? _GEN_268 : _GEN_268; // @[FFTEngine.scala 601:30]
  wire [31:0] _GEN_278 = 2'h3 == addrSBankSel3c ? _io_writeDataSram0Bank_0_T_2 : _io_writeDataSram0Bank_0_T_5; // @[FFTEngine.scala 603:50 604:50]
  wire [31:0] _GEN_284 = procState3c ? _GEN_278 : _GEN_278; // @[FFTEngine.scala 601:30]
  reg [4:0] addrS1c_1; // @[Reg.scala 35:20]
  reg [4:0] addrS2c_1; // @[Reg.scala 35:20]
  reg [4:0] addrS3c_1; // @[Reg.scala 35:20]
  reg [4:0] addrT1c_1; // @[Reg.scala 35:20]
  reg [4:0] addrT2c_1; // @[Reg.scala 35:20]
  reg [4:0] addrT3c_1; // @[Reg.scala 35:20]
  wire [1:0] _addrSBankSel_T_6 = _radixInit_T_11 ? addrSBankSelProc_1 : addrSBankSelKernel_1; // @[FFTEngine.scala 471:32]
  wire [1:0] _addrTBankSel_T_6 = _radixInit_T_11 ? addrTBankSelProc_1 : addrTBankSelKernel_1; // @[FFTEngine.scala 472:32]
  wire [1:0] _addrSBankSel_T_10 = _radixInit_T_11 | _radixInit_T_1 & phaseCount == 3'h0 ? addrSBankSelProc_1 :
    addrSBankSelKernel_1; // @[FFTEngine.scala 474:32]
  wire [1:0] _addrTBankSel_T_10 = _addrSBankSel_T_4 ? addrTBankSelProc_1 : addrTBankSelKernel_1; // @[FFTEngine.scala 475:32]
  wire [1:0] addrSBankSel_1 = io_fftMode ? _addrSBankSel_T_6 : _addrSBankSel_T_10; // @[FFTEngine.scala 470:21 471:26 474:26]
  wire [1:0] addrTBankSel_1 = io_fftMode ? _addrTBankSel_T_6 : _addrTBankSel_T_10; // @[FFTEngine.scala 470:21 472:26 475:26]
  reg [1:0] addrSBankSel1c_1; // @[Reg.scala 35:20]
  reg [1:0] addrTBankSel1c_1; // @[Reg.scala 35:20]
  wire [15:0] _GEN_297 = 2'h1 == addrSBankSel1c_1 ? $signed(dataInPre_1_re) : $signed(dataInPre_0_re); // @[FFTEngine.scala 482:{29,29}]
  wire [15:0] _GEN_298 = 2'h2 == addrSBankSel1c_1 ? $signed(dataInPre_2_re) : $signed(_GEN_297); // @[FFTEngine.scala 482:{29,29}]
  wire [15:0] _GEN_301 = 2'h1 == addrSBankSel1c_1 ? $signed(dataInPre_1_im) : $signed(dataInPre_0_im); // @[FFTEngine.scala 483:{35,35}]
  wire [15:0] _GEN_302 = 2'h2 == addrSBankSel1c_1 ? $signed(dataInPre_2_im) : $signed(_GEN_301); // @[FFTEngine.scala 483:{35,35}]
  wire [15:0] _GEN_303 = 2'h3 == addrSBankSel1c_1 ? $signed(dataInPre_3_im) : $signed(_GEN_302); // @[FFTEngine.scala 483:{35,35}]
  wire [15:0] _GEN_305 = 2'h1 == addrTBankSel1c_1 ? $signed(dataInPre_1_im) : $signed(dataInPre_0_im); // @[FFTEngine.scala 484:{35,35}]
  wire [15:0] _GEN_306 = 2'h2 == addrTBankSel1c_1 ? $signed(dataInPre_2_im) : $signed(_GEN_305); // @[FFTEngine.scala 484:{35,35}]
  wire [15:0] _GEN_307 = 2'h3 == addrTBankSel1c_1 ? $signed(dataInPre_3_im) : $signed(_GEN_306); // @[FFTEngine.scala 484:{35,35}]
  wire [15:0] _GEN_309 = 2'h1 == addrTBankSel1c_1 ? $signed(dataInPre_1_re) : $signed(dataInPre_0_re); // @[FFTEngine.scala 484:{35,35}]
  wire [15:0] _GEN_310 = 2'h2 == addrTBankSel1c_1 ? $signed(dataInPre_2_re) : $signed(_GEN_309); // @[FFTEngine.scala 484:{35,35}]
  wire [15:0] _GEN_311 = 2'h3 == addrTBankSel1c_1 ? $signed(dataInPre_3_re) : $signed(_GEN_310); // @[FFTEngine.scala 484:{35,35}]
  wire [15:0] _writeDataTRPre3c_T_9 = 16'sh0 - $signed(fftCalc_1_io_dataOutTI3c); // @[FFTEngine.scala 498:132]
  wire [15:0] _writeDataTRPre3c_T_10 = io_fftMode ? $signed(fftCalc_1_io_dataOutTI3c) : $signed(_writeDataTRPre3c_T_9); // @[FFTEngine.scala 498:100]
  wire [15:0] _writeDataTRPre3c_T_11 = _T_12 ? $signed(fftCalc_1_io_dataOutTR3c) : $signed(_writeDataTRPre3c_T_10); // @[FFTEngine.scala 498:52]
  wire [15:0] writeDataTRPre3c_1 = procState3c ? $signed(_writeDataTRPre3c_T_11) : $signed(fftCalc_1_io_dataOutTR3c); // @[FFTEngine.scala 498:35]
  wire [15:0] _writeDataTIPre3c_T_15 = 16'sh0 - $signed(fftCalc_1_io_dataOutTR3c); // @[FFTEngine.scala 499:109]
  wire [15:0] _writeDataTIPre3c_T_16 = io_fftMode ? $signed(_writeDataTIPre3c_T_15) : $signed(fftCalc_1_io_dataOutTR3c); // @[FFTEngine.scala 499:101]
  wire [15:0] _writeDataTIPre3c_T_17 = _T_12 ? $signed(_writeDataTRPre3c_T_9) : $signed(_writeDataTIPre3c_T_16); // @[FFTEngine.scala 499:52]
  wire [15:0] writeDataTIPre3c_1 = procState3c ? $signed(_writeDataTIPre3c_T_17) : $signed(fftCalc_1_io_dataOutTI3c); // @[FFTEngine.scala 499:35]
  wire [1:0] _addrSBankSel3c_T_8 = procState3c | kernelState3c & _T_6 ? addrSBankSelProc3c_1_r :
    addrSBankSelKernel3c_1_r; // @[FFTEngine.scala 505:34]
  wire [1:0] _addrTBankSel3c_T_8 = _addrSBankSel3c_T_2 ? addrTBankSelProc3c_1_r : addrTBankSelKernel3c_1_r; // @[FFTEngine.scala 506:34]
  wire [1:0] _addrSBankSel3c_T_9 = procState3c ? addrSBankSelProc3c_1_r : addrSBankSelKernel3c_1_r; // @[FFTEngine.scala 508:34]
  wire [1:0] _addrTBankSel3c_T_9 = procState3c ? addrTBankSelProc3c_1_r : addrTBankSelKernel3c_1_r; // @[FFTEngine.scala 509:34]
  wire [1:0] addrSBankSel3c_1 = io_fftMode ? _addrSBankSel3c_T_8 : _addrSBankSel3c_T_9; // @[FFTEngine.scala 504:21 505:28 508:28]
  wire [1:0] addrTBankSel3c_1 = io_fftMode ? _addrTBankSel3c_T_8 : _addrTBankSel3c_T_9; // @[FFTEngine.scala 504:21 506:28 509:28]
  wire [4:0] _GEN_318 = 2'h0 == addrTBankSel_1 ? addrT_1[4:0] : _GEN_226; // @[FFTEngine.scala 531:{48,48}]
  wire [4:0] _GEN_319 = 2'h1 == addrTBankSel_1 ? addrT_1[4:0] : _GEN_227; // @[FFTEngine.scala 531:{48,48}]
  wire [4:0] _GEN_320 = 2'h2 == addrTBankSel_1 ? addrT_1[4:0] : _GEN_228; // @[FFTEngine.scala 531:{48,48}]
  wire [4:0] _GEN_321 = 2'h3 == addrTBankSel_1 ? addrT_1[4:0] : _GEN_229; // @[FFTEngine.scala 531:{48,48}]
  wire [4:0] _GEN_322 = 2'h0 == addrSBankSel_1 ? addrS_1[4:0] : _GEN_318; // @[FFTEngine.scala 532:{48,48}]
  wire [4:0] _GEN_323 = 2'h1 == addrSBankSel_1 ? addrS_1[4:0] : _GEN_319; // @[FFTEngine.scala 532:{48,48}]
  wire [4:0] _GEN_324 = 2'h2 == addrSBankSel_1 ? addrS_1[4:0] : _GEN_320; // @[FFTEngine.scala 532:{48,48}]
  wire [4:0] _GEN_325 = 2'h3 == addrSBankSel_1 ? addrS_1[4:0] : _GEN_321; // @[FFTEngine.scala 532:{48,48}]
  wire [4:0] _GEN_326 = 2'h0 == addrTBankSel_1 ? addrT_1[4:0] : _GEN_222; // @[FFTEngine.scala 534:{48,48}]
  wire [4:0] _GEN_327 = 2'h1 == addrTBankSel_1 ? addrT_1[4:0] : _GEN_223; // @[FFTEngine.scala 534:{48,48}]
  wire [4:0] _GEN_328 = 2'h2 == addrTBankSel_1 ? addrT_1[4:0] : _GEN_224; // @[FFTEngine.scala 534:{48,48}]
  wire [4:0] _GEN_329 = 2'h3 == addrTBankSel_1 ? addrT_1[4:0] : _GEN_225; // @[FFTEngine.scala 534:{48,48}]
  wire [4:0] _GEN_330 = 2'h0 == addrSBankSel_1 ? addrS_1[4:0] : _GEN_326; // @[FFTEngine.scala 535:{48,48}]
  wire [4:0] _GEN_331 = 2'h1 == addrSBankSel_1 ? addrS_1[4:0] : _GEN_327; // @[FFTEngine.scala 535:{48,48}]
  wire [4:0] _GEN_332 = 2'h2 == addrSBankSel_1 ? addrS_1[4:0] : _GEN_328; // @[FFTEngine.scala 535:{48,48}]
  wire [4:0] _GEN_333 = 2'h3 == addrSBankSel_1 ? addrS_1[4:0] : _GEN_329; // @[FFTEngine.scala 535:{48,48}]
  wire [4:0] _GEN_334 = _srcBufferNext_T_3 ? _GEN_322 : _GEN_226; // @[FFTEngine.scala 530:37]
  wire [4:0] _GEN_335 = _srcBufferNext_T_3 ? _GEN_323 : _GEN_227; // @[FFTEngine.scala 530:37]
  wire [4:0] _GEN_336 = _srcBufferNext_T_3 ? _GEN_324 : _GEN_228; // @[FFTEngine.scala 530:37]
  wire [4:0] _GEN_337 = _srcBufferNext_T_3 ? _GEN_325 : _GEN_229; // @[FFTEngine.scala 530:37]
  wire [4:0] _GEN_338 = _srcBufferNext_T_3 ? _GEN_222 : _GEN_330; // @[FFTEngine.scala 530:37]
  wire [4:0] _GEN_339 = _srcBufferNext_T_3 ? _GEN_223 : _GEN_331; // @[FFTEngine.scala 530:37]
  wire [4:0] _GEN_340 = _srcBufferNext_T_3 ? _GEN_224 : _GEN_332; // @[FFTEngine.scala 530:37]
  wire [4:0] _GEN_341 = _srcBufferNext_T_3 ? _GEN_225 : _GEN_333; // @[FFTEngine.scala 530:37]
  wire [4:0] _GEN_342 = ~_radixInit_T_11 ? _GEN_334 : _GEN_226; // @[FFTEngine.scala 529:26]
  wire [4:0] _GEN_343 = ~_radixInit_T_11 ? _GEN_335 : _GEN_227; // @[FFTEngine.scala 529:26]
  wire [4:0] _GEN_344 = ~_radixInit_T_11 ? _GEN_336 : _GEN_228; // @[FFTEngine.scala 529:26]
  wire [4:0] _GEN_345 = ~_radixInit_T_11 ? _GEN_337 : _GEN_229; // @[FFTEngine.scala 529:26]
  wire [4:0] _GEN_346 = ~_radixInit_T_11 ? _GEN_338 : _GEN_222; // @[FFTEngine.scala 529:26]
  wire [4:0] _GEN_347 = ~_radixInit_T_11 ? _GEN_339 : _GEN_223; // @[FFTEngine.scala 529:26]
  wire [4:0] _GEN_348 = ~_radixInit_T_11 ? _GEN_340 : _GEN_224; // @[FFTEngine.scala 529:26]
  wire [4:0] _GEN_349 = ~_radixInit_T_11 ? _GEN_341 : _GEN_225; // @[FFTEngine.scala 529:26]
  wire [4:0] _GEN_350 = 2'h0 == addrTBankSel3c_1 ? addrT3c_1 : _GEN_346; // @[FFTEngine.scala 551:{50,50}]
  wire [4:0] _GEN_351 = 2'h1 == addrTBankSel3c_1 ? addrT3c_1 : _GEN_347; // @[FFTEngine.scala 551:{50,50}]
  wire [4:0] _GEN_352 = 2'h2 == addrTBankSel3c_1 ? addrT3c_1 : _GEN_348; // @[FFTEngine.scala 551:{50,50}]
  wire [4:0] _GEN_353 = 2'h3 == addrTBankSel3c_1 ? addrT3c_1 : _GEN_349; // @[FFTEngine.scala 551:{50,50}]
  wire [4:0] _GEN_354 = 2'h0 == addrSBankSel3c_1 ? addrS3c_1 : _GEN_350; // @[FFTEngine.scala 552:{50,50}]
  wire [4:0] _GEN_355 = 2'h1 == addrSBankSel3c_1 ? addrS3c_1 : _GEN_351; // @[FFTEngine.scala 552:{50,50}]
  wire [4:0] _GEN_356 = 2'h2 == addrSBankSel3c_1 ? addrS3c_1 : _GEN_352; // @[FFTEngine.scala 552:{50,50}]
  wire [4:0] _GEN_357 = 2'h3 == addrSBankSel3c_1 ? addrS3c_1 : _GEN_353; // @[FFTEngine.scala 552:{50,50}]
  wire [4:0] _GEN_358 = 2'h0 == addrTBankSel3c_1 ? addrT3c_1 : _GEN_342; // @[FFTEngine.scala 554:{50,50}]
  wire [4:0] _GEN_359 = 2'h1 == addrTBankSel3c_1 ? addrT3c_1 : _GEN_343; // @[FFTEngine.scala 554:{50,50}]
  wire [4:0] _GEN_360 = 2'h2 == addrTBankSel3c_1 ? addrT3c_1 : _GEN_344; // @[FFTEngine.scala 554:{50,50}]
  wire [4:0] _GEN_361 = 2'h3 == addrTBankSel3c_1 ? addrT3c_1 : _GEN_345; // @[FFTEngine.scala 554:{50,50}]
  wire [4:0] _GEN_362 = 2'h0 == addrSBankSel3c_1 ? addrS3c_1 : _GEN_358; // @[FFTEngine.scala 555:{50,50}]
  wire [4:0] _GEN_363 = 2'h1 == addrSBankSel3c_1 ? addrS3c_1 : _GEN_359; // @[FFTEngine.scala 555:{50,50}]
  wire [4:0] _GEN_364 = 2'h2 == addrSBankSel3c_1 ? addrS3c_1 : _GEN_360; // @[FFTEngine.scala 555:{50,50}]
  wire [4:0] _GEN_365 = 2'h3 == addrSBankSel3c_1 ? addrS3c_1 : _GEN_361; // @[FFTEngine.scala 555:{50,50}]
  wire [4:0] _GEN_366 = _srcBufferNext_T_3 ? _GEN_354 : _GEN_346; // @[FFTEngine.scala 550:37]
  wire [4:0] _GEN_367 = _srcBufferNext_T_3 ? _GEN_355 : _GEN_347; // @[FFTEngine.scala 550:37]
  wire [4:0] _GEN_368 = _srcBufferNext_T_3 ? _GEN_356 : _GEN_348; // @[FFTEngine.scala 550:37]
  wire [4:0] _GEN_369 = _srcBufferNext_T_3 ? _GEN_357 : _GEN_349; // @[FFTEngine.scala 550:37]
  wire [4:0] _GEN_370 = _srcBufferNext_T_3 ? _GEN_342 : _GEN_362; // @[FFTEngine.scala 550:37]
  wire [4:0] _GEN_371 = _srcBufferNext_T_3 ? _GEN_343 : _GEN_363; // @[FFTEngine.scala 550:37]
  wire [4:0] _GEN_372 = _srcBufferNext_T_3 ? _GEN_344 : _GEN_364; // @[FFTEngine.scala 550:37]
  wire [4:0] _GEN_373 = _srcBufferNext_T_3 ? _GEN_345 : _GEN_365; // @[FFTEngine.scala 550:37]
  wire [14:0] _writeDataS3c_re_T_1 = fftCalc_1_io_dataOutSR3c[15:1]; // @[FFTEngine.scala 579:53]
  wire [14:0] _writeDataS3c_im_T_1 = writeDataTRPre3c_1[15:1]; // @[FFTEngine.scala 580:53]
  wire [15:0] _GEN_382 = ~io_fftMode & _T_12 ? $signed({{1{_writeDataS3c_re_T_1[14]}},_writeDataS3c_re_T_1}) : $signed(
    fftCalc_1_io_dataOutSR3c); // @[FFTEngine.scala 578:55 579:33 583:33]
  wire [15:0] _GEN_383 = ~io_fftMode & _T_12 ? $signed({{1{_writeDataS3c_im_T_1[14]}},_writeDataS3c_im_T_1}) : $signed(
    fftCalc_1_io_dataOutSI3c); // @[FFTEngine.scala 578:55 580:33 584:33]
  wire [15:0] _GEN_387 = io_fftMode & _addrSBankSel_T_2 ? $signed(writeDataTRPre3c_1) : $signed(_GEN_383); // @[FFTEngine.scala 574:47 576:33]
  wire [15:0] _GEN_391 = fftCalc_1_io_dataOutSI3c; // @[FFTEngine.scala 588:120 590:29 595:29]
  wire [15:0] writeDataS3c_1_im = sameAddr3c ? $signed(_GEN_387) : $signed(_GEN_391); // @[FFTEngine.scala 573:26]
  wire [15:0] _GEN_384 = ~io_fftMode & _T_12 ? $signed(writeDataS3c_1_im) : $signed(writeDataTIPre3c_1); // @[FFTEngine.scala 578:55 581:30 586:33]
  wire [15:0] _GEN_386 = io_fftMode & _addrSBankSel_T_2 ? $signed(fftCalc_1_io_dataOutSR3c) : $signed(_GEN_382); // @[FFTEngine.scala 574:47 575:33]
  wire [15:0] _GEN_390 = fftCalc_1_io_dataOutSR3c; // @[FFTEngine.scala 588:120 589:29 594:29]
  wire [15:0] writeDataS3c_1_re = sameAddr3c ? $signed(_GEN_386) : $signed(_GEN_390); // @[FFTEngine.scala 573:26]
  wire [15:0] _GEN_385 = ~io_fftMode & _T_12 ? $signed(writeDataS3c_1_re) : $signed(writeDataTRPre3c_1); // @[FFTEngine.scala 578:55 581:30 585:33]
  wire [15:0] _GEN_388 = io_fftMode & _addrSBankSel_T_2 ? $signed(writeDataS3c_1_im) : $signed(_GEN_384); // @[FFTEngine.scala 574:47 577:30]
  wire [15:0] _GEN_389 = io_fftMode & _addrSBankSel_T_2 ? $signed(writeDataS3c_1_re) : $signed(_GEN_385); // @[FFTEngine.scala 574:47 577:30]
  wire [15:0] _writeDataT3c_im_T_5 = 16'sh0 - $signed(writeDataTIPre3c_1); // @[FFTEngine.scala 592:32]
  wire [15:0] _GEN_393 = _addrSBankSel3c_T_1 & addrTBankSel3c_1 == 2'h2 & addrT3c_1 == 5'h1 ? $signed(
    _writeDataT3c_im_T_5) : $signed(writeDataTIPre3c_1); // @[FFTEngine.scala 588:120 592:29 597:29]
  wire [15:0] _io_writeDataSram0Bank_0_T_12 = sameAddr3c ? $signed(_GEN_386) : $signed(_GEN_390); // @[FFTEngine.scala 613:62]
  wire [15:0] _io_writeDataSram0Bank_0_T_13 = sameAddr3c ? $signed(_GEN_387) : $signed(_GEN_391); // @[FFTEngine.scala 613:62]
  wire [31:0] _io_writeDataSram0Bank_0_T_14 = {_io_writeDataSram0Bank_0_T_13,_io_writeDataSram0Bank_0_T_12}; // @[FFTEngine.scala 613:62]
  wire [15:0] _io_writeDataSram0Bank_0_T_15 = sameAddr3c ? $signed(_GEN_389) : $signed(writeDataTRPre3c_1); // @[FFTEngine.scala 616:62]
  wire [15:0] _io_writeDataSram0Bank_0_T_16 = sameAddr3c ? $signed(_GEN_388) : $signed(_GEN_393); // @[FFTEngine.scala 616:62]
  wire [31:0] _io_writeDataSram0Bank_0_T_17 = {_io_writeDataSram0Bank_0_T_16,_io_writeDataSram0Bank_0_T_15}; // @[FFTEngine.scala 616:62]
  wire [31:0] _GEN_398 = 2'h0 == addrTBankSel3c_1 ? _io_writeDataSram0Bank_0_T_17 : _GEN_254; // @[FFTEngine.scala 615:53 616:46]
  wire [31:0] _GEN_400 = 2'h0 == addrSBankSel3c_1 ? _io_writeDataSram0Bank_0_T_14 : _GEN_398; // @[FFTEngine.scala 612:46 613:46]
  wire [31:0] _GEN_404 = 2'h1 == addrTBankSel3c_1 ? _io_writeDataSram0Bank_0_T_17 : _GEN_264; // @[FFTEngine.scala 615:53 616:46]
  wire [31:0] _GEN_406 = 2'h1 == addrSBankSel3c_1 ? _io_writeDataSram0Bank_0_T_14 : _GEN_404; // @[FFTEngine.scala 612:46 613:46]
  wire [31:0] _GEN_410 = 2'h2 == addrTBankSel3c_1 ? _io_writeDataSram0Bank_0_T_17 : _GEN_274; // @[FFTEngine.scala 615:53 616:46]
  wire [31:0] _GEN_412 = 2'h2 == addrSBankSel3c_1 ? _io_writeDataSram0Bank_0_T_14 : _GEN_410; // @[FFTEngine.scala 612:46 613:46]
  wire [31:0] _GEN_416 = 2'h3 == addrTBankSel3c_1 ? _io_writeDataSram0Bank_0_T_17 : _GEN_284; // @[FFTEngine.scala 615:53 616:46]
  wire [31:0] _GEN_418 = 2'h3 == addrSBankSel3c_1 ? _io_writeDataSram0Bank_0_T_14 : _GEN_416; // @[FFTEngine.scala 612:46 613:46]
  reg  fftDoneReg; // @[FFTEngine.scala 624:29]
  FFT3PipelineCalc fftCalc ( // @[FFTEngine.scala 481:29]
    .clock(fftCalc_clock),
    .reset(fftCalc_reset),
    .io_dataInSR(fftCalc_io_dataInSR),
    .io_dataInSI(fftCalc_io_dataInSI),
    .io_dataInTR(fftCalc_io_dataInTR),
    .io_dataInTI(fftCalc_io_dataInTI),
    .io_dataOutSR3c(fftCalc_io_dataOutSR3c),
    .io_dataOutSI3c(fftCalc_io_dataOutSI3c),
    .io_dataOutTR3c(fftCalc_io_dataOutTR3c),
    .io_dataOutTI3c(fftCalc_io_dataOutTI3c),
    .io_nk(fftCalc_io_nk),
    .io_rShiftSym(fftCalc_io_rShiftSym),
    .io_isFFT(fftCalc_io_isFFT),
    .io_procMode(fftCalc_io_procMode),
    .io_state1c(fftCalc_io_state1c),
    .io_state2c(fftCalc_io_state2c)
  );
  FFT3PipelineCalc_1 fftCalc_1 ( // @[FFTEngine.scala 481:29]
    .clock(fftCalc_1_clock),
    .reset(fftCalc_1_reset),
    .io_dataInSR(fftCalc_1_io_dataInSR),
    .io_dataInSI(fftCalc_1_io_dataInSI),
    .io_dataInTR(fftCalc_1_io_dataInTR),
    .io_dataInTI(fftCalc_1_io_dataInTI),
    .io_dataOutSR3c(fftCalc_1_io_dataOutSR3c),
    .io_dataOutSI3c(fftCalc_1_io_dataOutSI3c),
    .io_dataOutTR3c(fftCalc_1_io_dataOutTR3c),
    .io_dataOutTI3c(fftCalc_1_io_dataOutTI3c),
    .io_nk(fftCalc_1_io_nk),
    .io_rShiftSym(fftCalc_1_io_rShiftSym),
    .io_isFFT(fftCalc_1_io_isFFT),
    .io_procMode(fftCalc_1_io_procMode),
    .io_state1c(fftCalc_1_io_state1c),
    .io_state2c(fftCalc_1_io_state2c)
  );
  assign io_readEnableSram0Bank_0 = readEnable & _srcBufferNext_T_3; // @[FFTEngine.scala 440:49]
  assign io_readEnableSram0Bank_1 = readEnable & _srcBufferNext_T_3; // @[FFTEngine.scala 440:49]
  assign io_readEnableSram0Bank_2 = readEnable & _srcBufferNext_T_3; // @[FFTEngine.scala 440:49]
  assign io_readEnableSram0Bank_3 = readEnable & _srcBufferNext_T_3; // @[FFTEngine.scala 440:49]
  assign io_readEnableSram1Bank_0 = readEnable & srcBuffer; // @[FFTEngine.scala 441:49]
  assign io_readEnableSram1Bank_1 = readEnable & srcBuffer; // @[FFTEngine.scala 441:49]
  assign io_readEnableSram1Bank_2 = readEnable & srcBuffer; // @[FFTEngine.scala 441:49]
  assign io_readEnableSram1Bank_3 = readEnable & srcBuffer; // @[FFTEngine.scala 441:49]
  assign io_writeDataSram0Bank_0 = procState3c ? _GEN_254 : _GEN_400; // @[FFTEngine.scala 601:30]
  assign io_writeDataSram0Bank_1 = procState3c ? _GEN_264 : _GEN_406; // @[FFTEngine.scala 601:30]
  assign io_writeDataSram0Bank_2 = procState3c ? _GEN_274 : _GEN_412; // @[FFTEngine.scala 601:30]
  assign io_writeDataSram0Bank_3 = procState3c ? _GEN_284 : _GEN_418; // @[FFTEngine.scala 601:30]
  assign io_writeDataSram1Bank_0 = procState3c ? _GEN_254 : _GEN_400; // @[FFTEngine.scala 601:30]
  assign io_writeDataSram1Bank_1 = procState3c ? _GEN_264 : _GEN_406; // @[FFTEngine.scala 601:30]
  assign io_writeDataSram1Bank_2 = procState3c ? _GEN_274 : _GEN_412; // @[FFTEngine.scala 601:30]
  assign io_writeDataSram1Bank_3 = procState3c ? _GEN_284 : _GEN_418; // @[FFTEngine.scala 601:30]
  assign io_writeEnableSram0Bank_0 = procState3c ? _GEN_102 : srcBuffer & kernelState3c; // @[FFTEngine.scala 514:34 523:48]
  assign io_writeEnableSram0Bank_1 = procState3c ? _GEN_106 : srcBuffer & kernelState3c; // @[FFTEngine.scala 514:34 523:48]
  assign io_writeEnableSram0Bank_2 = procState3c ? _GEN_110 : srcBuffer & kernelState3c; // @[FFTEngine.scala 514:34 523:48]
  assign io_writeEnableSram0Bank_3 = procState3c ? _GEN_114 : srcBuffer & kernelState3c; // @[FFTEngine.scala 514:34 523:48]
  assign io_writeEnableSram1Bank_0 = procState3c ? _GEN_103 : _srcBufferNext_T_3 & kernelState3c; // @[FFTEngine.scala 514:34 524:48]
  assign io_writeEnableSram1Bank_1 = procState3c ? _GEN_107 : _srcBufferNext_T_3 & kernelState3c; // @[FFTEngine.scala 514:34 524:48]
  assign io_writeEnableSram1Bank_2 = procState3c ? _GEN_111 : _srcBufferNext_T_3 & kernelState3c; // @[FFTEngine.scala 514:34 524:48]
  assign io_writeEnableSram1Bank_3 = procState3c ? _GEN_115 : _srcBufferNext_T_3 & kernelState3c; // @[FFTEngine.scala 514:34 524:48]
  assign io_addrSram0Bank_0 = ~procState3c ? _GEN_370 : _GEN_342; // @[FFTEngine.scala 549:28]
  assign io_addrSram0Bank_1 = ~procState3c ? _GEN_371 : _GEN_343; // @[FFTEngine.scala 549:28]
  assign io_addrSram0Bank_2 = ~procState3c ? _GEN_372 : _GEN_344; // @[FFTEngine.scala 549:28]
  assign io_addrSram0Bank_3 = ~procState3c ? _GEN_373 : _GEN_345; // @[FFTEngine.scala 549:28]
  assign io_addrSram1Bank_0 = ~procState3c ? _GEN_366 : _GEN_346; // @[FFTEngine.scala 549:28]
  assign io_addrSram1Bank_1 = ~procState3c ? _GEN_367 : _GEN_347; // @[FFTEngine.scala 549:28]
  assign io_addrSram1Bank_2 = ~procState3c ? _GEN_368 : _GEN_348; // @[FFTEngine.scala 549:28]
  assign io_addrSram1Bank_3 = ~procState3c ? _GEN_369 : _GEN_349; // @[FFTEngine.scala 549:28]
  assign io_fftDone = fftDoneReg; // @[FFTEngine.scala 625:16]
  assign fftCalc_clock = clock;
  assign fftCalc_reset = reset;
  assign fftCalc_io_dataInSR = 2'h3 == addrSBankSel1c ? $signed(dataInPre_3_re) : $signed(_GEN_75); // @[FFTEngine.scala 482:{29,29}]
  assign fftCalc_io_dataInSI = sameAddr1c & _T_12 ? $signed(16'sh0) : $signed(_GEN_80); // @[FFTEngine.scala 483:35]
  assign fftCalc_io_dataInTR = _fftCalc_io_dataInSI_T_1 ? $signed(_GEN_84) : $signed(_GEN_88); // @[FFTEngine.scala 484:35]
  assign fftCalc_io_dataInTI = _fftCalc_io_dataInSI_T_1 ? $signed(16'sh0) : $signed(_GEN_84); // @[FFTEngine.scala 485:35]
  assign fftCalc_io_nk = _radixInit_T_11 ? addrSProc : _fftCalc_io_nk_T_2; // @[FFTEngine.scala 487:33]
  assign fftCalc_io_rShiftSym = kernelState1c ? _GEN_99 : phaseCount[0]; // @[FFTEngine.scala 491:36]
  assign fftCalc_io_isFFT = io_fftMode; // @[FFTEngine.scala 492:26]
  assign fftCalc_io_procMode = ~phaseCount[0] & procState2c; // @[FFTEngine.scala 493:48]
  assign fftCalc_io_state1c = kernelState1c | procState1c; // @[FFTEngine.scala 494:45]
  assign fftCalc_io_state2c = kernelState2c | procState2c; // @[FFTEngine.scala 495:45]
  assign fftCalc_1_clock = clock;
  assign fftCalc_1_reset = reset;
  assign fftCalc_1_io_dataInSR = 2'h3 == addrSBankSel1c_1 ? $signed(dataInPre_3_re) : $signed(_GEN_298); // @[FFTEngine.scala 482:{29,29}]
  assign fftCalc_1_io_dataInSI = sameAddr1c & _T_12 ? $signed(16'sh0) : $signed(_GEN_303); // @[FFTEngine.scala 483:35]
  assign fftCalc_1_io_dataInTR = _fftCalc_io_dataInSI_T_1 ? $signed(_GEN_307) : $signed(_GEN_311); // @[FFTEngine.scala 484:35]
  assign fftCalc_1_io_dataInTI = _fftCalc_io_dataInSI_T_1 ? $signed(16'sh0) : $signed(_GEN_307); // @[FFTEngine.scala 485:35]
  assign fftCalc_1_io_nk = nk_1[5:0]; // @[FFTEngine.scala 489:35]
  assign fftCalc_1_io_rShiftSym = kernelState1c ? _GEN_99 : phaseCount[0]; // @[FFTEngine.scala 491:36]
  assign fftCalc_1_io_isFFT = io_fftMode; // @[FFTEngine.scala 492:26]
  assign fftCalc_1_io_procMode = ~phaseCount[0] & procState2c; // @[FFTEngine.scala 493:48]
  assign fftCalc_1_io_state1c = kernelState1c | procState1c; // @[FFTEngine.scala 494:45]
  assign fftCalc_1_io_state2c = kernelState2c | procState2c; // @[FFTEngine.scala 495:45]
  always @(posedge clock) begin
    if (reset) begin // @[FFTEngine.scala 46:27]
      stateReg <= 3'h0; // @[FFTEngine.scala 46:27]
    end else if (3'h0 == stateReg) begin // @[FFTEngine.scala 53:26]
      if (io_fftEngineKick) begin // @[FFTEngine.scala 55:44]
        if (io_fftMode) begin // @[FFTEngine.scala 56:40]
          stateReg <= 3'h1;
        end else begin
          stateReg <= 3'h4;
        end
      end
    end else if (3'h1 == stateReg) begin // @[FFTEngine.scala 53:26]
      if (addrSProc == 7'h1f) begin // @[FFTEngine.scala 62:50]
        stateReg <= 3'h2; // @[FFTEngine.scala 63:30]
      end
    end else if (3'h2 == stateReg) begin // @[FFTEngine.scala 53:26]
      stateReg <= _GEN_2;
    end else begin
      stateReg <= _GEN_11;
    end
    if (reset) begin // @[FFTEngine.scala 48:29]
      addrSProc <= 7'h0; // @[FFTEngine.scala 48:29]
    end else if (radixInit) begin // @[FFTEngine.scala 156:21]
      addrSProc <= 7'h0; // @[FFTEngine.scala 157:20]
    end else if (radixUp) begin // @[FFTEngine.scala 158:26]
      addrSProc <= _radixCount_T_1; // @[FFTEngine.scala 159:20]
    end
    if (reset) begin // @[FFTEngine.scala 50:29]
      phaseCount <= 3'h0; // @[FFTEngine.scala 50:29]
    end else if (phaseInit) begin // @[FFTEngine.scala 171:21]
      phaseCount <= 3'h0; // @[FFTEngine.scala 172:20]
    end else if (phaseUp) begin // @[FFTEngine.scala 173:26]
      phaseCount <= _phaseCount_T_1; // @[FFTEngine.scala 174:20]
    end
    if (reset) begin // @[FFTEngine.scala 179:28]
      srcBuffer <= 1'h0; // @[FFTEngine.scala 179:28]
    end else if (srcUp) begin // @[FFTEngine.scala 185:17]
      srcBuffer <= srcBufferNext; // @[FFTEngine.scala 186:19]
    end
    if (reset) begin // @[Reg.scala 35:20]
      addrSBankSelKernel1c_0_r <= 2'h0; // @[Reg.scala 35:20]
    end else if (_radixInit_T_1) begin // @[FFTEngine.scala 366:27]
      addrSBankSelKernel1c_0_r <= addrSBankSelKernelPre_0; // @[FFTEngine.scala 367:35]
    end else begin
      addrSBankSelKernel1c_0_r <= 2'h0; // @[FFTEngine.scala 370:35]
    end
    if (reset) begin // @[Reg.scala 35:20]
      addrSBankSelKernel2c_0_r <= 2'h0; // @[Reg.scala 35:20]
    end else begin
      addrSBankSelKernel2c_0_r <= addrSBankSelKernel1c_0_r;
    end
    if (reset) begin // @[Reg.scala 35:20]
      addrSBankSelKernel3c_0_r <= 2'h0; // @[Reg.scala 35:20]
    end else begin
      addrSBankSelKernel3c_0_r <= addrSBankSelKernel2c_0_r;
    end
    if (reset) begin // @[Reg.scala 35:20]
      addrTBankSelKernel1c_0_r <= 2'h1; // @[Reg.scala 35:20]
    end else if (_radixInit_T_1) begin // @[FFTEngine.scala 366:27]
      addrTBankSelKernel1c_0_r <= addrTBankSelKernelPre_0; // @[FFTEngine.scala 368:35]
    end else begin
      addrTBankSelKernel1c_0_r <= 2'h1; // @[FFTEngine.scala 371:35]
    end
    if (reset) begin // @[Reg.scala 35:20]
      addrTBankSelKernel2c_0_r <= 2'h1; // @[Reg.scala 35:20]
    end else begin
      addrTBankSelKernel2c_0_r <= addrTBankSelKernel1c_0_r;
    end
    if (reset) begin // @[Reg.scala 35:20]
      addrTBankSelKernel3c_0_r <= 2'h1; // @[Reg.scala 35:20]
    end else begin
      addrTBankSelKernel3c_0_r <= addrTBankSelKernel2c_0_r;
    end
    if (reset) begin // @[Reg.scala 35:20]
      addrSBankSelKernel1c_1_r <= 2'h2; // @[Reg.scala 35:20]
    end else if (_radixInit_T_1) begin // @[FFTEngine.scala 366:27]
      addrSBankSelKernel1c_1_r <= addrSBankSelKernelPre_1; // @[FFTEngine.scala 367:35]
    end else begin
      addrSBankSelKernel1c_1_r <= 2'h2; // @[FFTEngine.scala 370:35]
    end
    if (reset) begin // @[Reg.scala 35:20]
      addrSBankSelKernel2c_1_r <= 2'h2; // @[Reg.scala 35:20]
    end else begin
      addrSBankSelKernel2c_1_r <= addrSBankSelKernel1c_1_r;
    end
    if (reset) begin // @[Reg.scala 35:20]
      addrSBankSelKernel3c_1_r <= 2'h2; // @[Reg.scala 35:20]
    end else begin
      addrSBankSelKernel3c_1_r <= addrSBankSelKernel2c_1_r;
    end
    if (reset) begin // @[Reg.scala 35:20]
      addrTBankSelKernel1c_1_r <= 2'h3; // @[Reg.scala 35:20]
    end else if (_radixInit_T_1) begin // @[FFTEngine.scala 366:27]
      addrTBankSelKernel1c_1_r <= addrTBankSelKernelPre_1; // @[FFTEngine.scala 368:35]
    end else begin
      addrTBankSelKernel1c_1_r <= 2'h3; // @[FFTEngine.scala 371:35]
    end
    if (reset) begin // @[Reg.scala 35:20]
      addrTBankSelKernel2c_1_r <= 2'h3; // @[Reg.scala 35:20]
    end else begin
      addrTBankSelKernel2c_1_r <= addrTBankSelKernel1c_1_r;
    end
    if (reset) begin // @[Reg.scala 35:20]
      addrTBankSelKernel3c_1_r <= 2'h3; // @[Reg.scala 35:20]
    end else begin
      addrTBankSelKernel3c_1_r <= addrTBankSelKernel2c_1_r;
    end
    if (reset) begin // @[Reg.scala 35:20]
      addrSBankSelProc1c_0_r <= 2'h0; // @[Reg.scala 35:20]
    end else begin
      addrSBankSelProc1c_0_r <= addrSBankSelProc_0;
    end
    if (reset) begin // @[Reg.scala 35:20]
      addrSBankSelProc2c_0_r <= 2'h0; // @[Reg.scala 35:20]
    end else begin
      addrSBankSelProc2c_0_r <= addrSBankSelProc1c_0_r;
    end
    if (reset) begin // @[Reg.scala 35:20]
      addrSBankSelProc3c_0_r <= 2'h0; // @[Reg.scala 35:20]
    end else begin
      addrSBankSelProc3c_0_r <= addrSBankSelProc2c_0_r;
    end
    if (reset) begin // @[Reg.scala 35:20]
      addrTBankSelProc1c_0_r <= 2'h1; // @[Reg.scala 35:20]
    end else begin
      addrTBankSelProc1c_0_r <= addrTBankSelProc_0;
    end
    if (reset) begin // @[Reg.scala 35:20]
      addrTBankSelProc2c_0_r <= 2'h1; // @[Reg.scala 35:20]
    end else begin
      addrTBankSelProc2c_0_r <= addrTBankSelProc1c_0_r;
    end
    if (reset) begin // @[Reg.scala 35:20]
      addrTBankSelProc3c_0_r <= 2'h1; // @[Reg.scala 35:20]
    end else begin
      addrTBankSelProc3c_0_r <= addrTBankSelProc2c_0_r;
    end
    if (reset) begin // @[Reg.scala 35:20]
      addrSBankSelProc1c_1_r <= 2'h2; // @[Reg.scala 35:20]
    end else begin
      addrSBankSelProc1c_1_r <= addrSBankSelProc_1;
    end
    if (reset) begin // @[Reg.scala 35:20]
      addrSBankSelProc2c_1_r <= 2'h2; // @[Reg.scala 35:20]
    end else begin
      addrSBankSelProc2c_1_r <= addrSBankSelProc1c_1_r;
    end
    if (reset) begin // @[Reg.scala 35:20]
      addrSBankSelProc3c_1_r <= 2'h2; // @[Reg.scala 35:20]
    end else begin
      addrSBankSelProc3c_1_r <= addrSBankSelProc2c_1_r;
    end
    if (reset) begin // @[Reg.scala 35:20]
      addrTBankSelProc1c_1_r <= 2'h3; // @[Reg.scala 35:20]
    end else begin
      addrTBankSelProc1c_1_r <= addrTBankSelProc_1;
    end
    if (reset) begin // @[Reg.scala 35:20]
      addrTBankSelProc2c_1_r <= 2'h3; // @[Reg.scala 35:20]
    end else begin
      addrTBankSelProc2c_1_r <= addrTBankSelProc1c_1_r;
    end
    if (reset) begin // @[Reg.scala 35:20]
      addrTBankSelProc3c_1_r <= 2'h3; // @[Reg.scala 35:20]
    end else begin
      addrTBankSelProc3c_1_r <= addrTBankSelProc2c_1_r;
    end
    if (reset) begin // @[Reg.scala 35:20]
      kernelState1c <= 1'h0; // @[Reg.scala 35:20]
    end else begin
      kernelState1c <= _radixInit_T_1;
    end
    if (reset) begin // @[Reg.scala 35:20]
      kernelState2c <= 1'h0; // @[Reg.scala 35:20]
    end else begin
      kernelState2c <= kernelState1c;
    end
    if (reset) begin // @[Reg.scala 35:20]
      kernelState3c <= 1'h0; // @[Reg.scala 35:20]
    end else begin
      kernelState3c <= kernelState2c;
    end
    if (reset) begin // @[Reg.scala 35:20]
      procState1c <= 1'h0; // @[Reg.scala 35:20]
    end else begin
      procState1c <= _radixInit_T_11;
    end
    if (reset) begin // @[Reg.scala 35:20]
      procState2c <= 1'h0; // @[Reg.scala 35:20]
    end else begin
      procState2c <= procState1c;
    end
    if (reset) begin // @[Reg.scala 35:20]
      procState3c <= 1'h0; // @[Reg.scala 35:20]
    end else begin
      procState3c <= procState2c;
    end
    if (reset) begin // @[Reg.scala 35:20]
      sameAddr1c <= 1'h0; // @[Reg.scala 35:20]
    end else begin
      sameAddr1c <= sameAddr;
    end
    if (reset) begin // @[Reg.scala 35:20]
      sameAddr2c <= 1'h0; // @[Reg.scala 35:20]
    end else begin
      sameAddr2c <= sameAddr1c;
    end
    if (reset) begin // @[Reg.scala 35:20]
      sameAddr3c <= 1'h0; // @[Reg.scala 35:20]
    end else begin
      sameAddr3c <= sameAddr2c;
    end
    if (reset) begin // @[Reg.scala 35:20]
      addrS1c <= 5'h0; // @[Reg.scala 35:20]
    end else begin
      addrS1c <= addrS_0[4:0];
    end
    if (reset) begin // @[Reg.scala 35:20]
      addrS2c <= 5'h0; // @[Reg.scala 35:20]
    end else begin
      addrS2c <= addrS1c;
    end
    if (reset) begin // @[Reg.scala 35:20]
      addrS3c <= 5'h0; // @[Reg.scala 35:20]
    end else begin
      addrS3c <= addrS2c;
    end
    if (reset) begin // @[Reg.scala 35:20]
      addrT1c <= 5'h0; // @[Reg.scala 35:20]
    end else begin
      addrT1c <= addrT_0[4:0];
    end
    if (reset) begin // @[Reg.scala 35:20]
      addrT2c <= 5'h0; // @[Reg.scala 35:20]
    end else begin
      addrT2c <= addrT1c;
    end
    if (reset) begin // @[Reg.scala 35:20]
      addrT3c <= 5'h0; // @[Reg.scala 35:20]
    end else begin
      addrT3c <= addrT2c;
    end
    if (reset) begin // @[Reg.scala 35:20]
      addrSBankSel1c <= 2'h0; // @[Reg.scala 35:20]
    end else if (io_fftMode) begin // @[FFTEngine.scala 470:21]
      if (_radixInit_T_11) begin // @[FFTEngine.scala 471:32]
        addrSBankSel1c <= addrSBankSelProc_0;
      end else begin
        addrSBankSel1c <= addrSBankSelKernel_0;
      end
    end else if (_radixInit_T_11 | _radixInit_T_1 & phaseCount == 3'h0) begin // @[FFTEngine.scala 474:32]
      addrSBankSel1c <= addrSBankSelProc_0;
    end else begin
      addrSBankSel1c <= addrSBankSelKernel_0;
    end
    if (reset) begin // @[Reg.scala 35:20]
      addrTBankSel1c <= 2'h1; // @[Reg.scala 35:20]
    end else if (io_fftMode) begin // @[FFTEngine.scala 470:21]
      if (_radixInit_T_11) begin // @[FFTEngine.scala 472:32]
        addrTBankSel1c <= addrTBankSelProc_0;
      end else begin
        addrTBankSel1c <= addrTBankSelKernel_0;
      end
    end else if (_addrSBankSel_T_4) begin // @[FFTEngine.scala 475:32]
      addrTBankSel1c <= addrTBankSelProc_0;
    end else begin
      addrTBankSel1c <= addrTBankSelKernel_0;
    end
    if (reset) begin // @[Reg.scala 35:20]
      addrS1c_1 <= 5'h0; // @[Reg.scala 35:20]
    end else begin
      addrS1c_1 <= addrS_1[4:0];
    end
    if (reset) begin // @[Reg.scala 35:20]
      addrS2c_1 <= 5'h0; // @[Reg.scala 35:20]
    end else begin
      addrS2c_1 <= addrS1c_1;
    end
    if (reset) begin // @[Reg.scala 35:20]
      addrS3c_1 <= 5'h0; // @[Reg.scala 35:20]
    end else begin
      addrS3c_1 <= addrS2c_1;
    end
    if (reset) begin // @[Reg.scala 35:20]
      addrT1c_1 <= 5'h0; // @[Reg.scala 35:20]
    end else begin
      addrT1c_1 <= addrT_1[4:0];
    end
    if (reset) begin // @[Reg.scala 35:20]
      addrT2c_1 <= 5'h0; // @[Reg.scala 35:20]
    end else begin
      addrT2c_1 <= addrT1c_1;
    end
    if (reset) begin // @[Reg.scala 35:20]
      addrT3c_1 <= 5'h0; // @[Reg.scala 35:20]
    end else begin
      addrT3c_1 <= addrT2c_1;
    end
    if (reset) begin // @[Reg.scala 35:20]
      addrSBankSel1c_1 <= 2'h0; // @[Reg.scala 35:20]
    end else if (io_fftMode) begin // @[FFTEngine.scala 470:21]
      if (_radixInit_T_11) begin // @[FFTEngine.scala 471:32]
        addrSBankSel1c_1 <= addrSBankSelProc_1;
      end else begin
        addrSBankSel1c_1 <= addrSBankSelKernel_1;
      end
    end else if (_radixInit_T_11 | _radixInit_T_1 & phaseCount == 3'h0) begin // @[FFTEngine.scala 474:32]
      addrSBankSel1c_1 <= addrSBankSelProc_1;
    end else begin
      addrSBankSel1c_1 <= addrSBankSelKernel_1;
    end
    if (reset) begin // @[Reg.scala 35:20]
      addrTBankSel1c_1 <= 2'h1; // @[Reg.scala 35:20]
    end else if (io_fftMode) begin // @[FFTEngine.scala 470:21]
      if (_radixInit_T_11) begin // @[FFTEngine.scala 472:32]
        addrTBankSel1c_1 <= addrTBankSelProc_1;
      end else begin
        addrTBankSel1c_1 <= addrTBankSelKernel_1;
      end
    end else if (_addrSBankSel_T_4) begin // @[FFTEngine.scala 475:32]
      addrTBankSel1c_1 <= addrTBankSelProc_1;
    end else begin
      addrTBankSel1c_1 <= addrTBankSelKernel_1;
    end
    if (reset) begin // @[FFTEngine.scala 624:29]
      fftDoneReg <= 1'h0; // @[FFTEngine.scala 624:29]
    end else begin
      fftDoneReg <= _radixInit_T_21; // @[FFTEngine.scala 624:29]
    end
  end
// Register and memory initialization
`ifdef RANDOMIZE_GARBAGE_ASSIGN
`define RANDOMIZE
`endif
`ifdef RANDOMIZE_INVALID_ASSIGN
`define RANDOMIZE
`endif
`ifdef RANDOMIZE_REG_INIT
`define RANDOMIZE
`endif
`ifdef RANDOMIZE_MEM_INIT
`define RANDOMIZE
`endif
`ifndef RANDOM
`define RANDOM $random
`endif
`ifdef RANDOMIZE_MEM_INIT
  integer initvar;
`endif
`ifndef SYNTHESIS
`ifdef FIRRTL_BEFORE_INITIAL
`FIRRTL_BEFORE_INITIAL
`endif
initial begin
  `ifdef RANDOMIZE
    `ifdef INIT_RANDOM
      `INIT_RANDOM
    `endif
    `ifndef VERILATOR
      `ifdef RANDOMIZE_DELAY
        #`RANDOMIZE_DELAY begin end
      `else
        #0.002 begin end
      `endif
    `endif
`ifdef RANDOMIZE_REG_INIT
  _RAND_0 = {1{`RANDOM}};
  stateReg = _RAND_0[2:0];
  _RAND_1 = {1{`RANDOM}};
  addrSProc = _RAND_1[6:0];
  _RAND_2 = {1{`RANDOM}};
  phaseCount = _RAND_2[2:0];
  _RAND_3 = {1{`RANDOM}};
  srcBuffer = _RAND_3[0:0];
  _RAND_4 = {1{`RANDOM}};
  addrSBankSelKernel1c_0_r = _RAND_4[1:0];
  _RAND_5 = {1{`RANDOM}};
  addrSBankSelKernel2c_0_r = _RAND_5[1:0];
  _RAND_6 = {1{`RANDOM}};
  addrSBankSelKernel3c_0_r = _RAND_6[1:0];
  _RAND_7 = {1{`RANDOM}};
  addrTBankSelKernel1c_0_r = _RAND_7[1:0];
  _RAND_8 = {1{`RANDOM}};
  addrTBankSelKernel2c_0_r = _RAND_8[1:0];
  _RAND_9 = {1{`RANDOM}};
  addrTBankSelKernel3c_0_r = _RAND_9[1:0];
  _RAND_10 = {1{`RANDOM}};
  addrSBankSelKernel1c_1_r = _RAND_10[1:0];
  _RAND_11 = {1{`RANDOM}};
  addrSBankSelKernel2c_1_r = _RAND_11[1:0];
  _RAND_12 = {1{`RANDOM}};
  addrSBankSelKernel3c_1_r = _RAND_12[1:0];
  _RAND_13 = {1{`RANDOM}};
  addrTBankSelKernel1c_1_r = _RAND_13[1:0];
  _RAND_14 = {1{`RANDOM}};
  addrTBankSelKernel2c_1_r = _RAND_14[1:0];
  _RAND_15 = {1{`RANDOM}};
  addrTBankSelKernel3c_1_r = _RAND_15[1:0];
  _RAND_16 = {1{`RANDOM}};
  addrSBankSelProc1c_0_r = _RAND_16[1:0];
  _RAND_17 = {1{`RANDOM}};
  addrSBankSelProc2c_0_r = _RAND_17[1:0];
  _RAND_18 = {1{`RANDOM}};
  addrSBankSelProc3c_0_r = _RAND_18[1:0];
  _RAND_19 = {1{`RANDOM}};
  addrTBankSelProc1c_0_r = _RAND_19[1:0];
  _RAND_20 = {1{`RANDOM}};
  addrTBankSelProc2c_0_r = _RAND_20[1:0];
  _RAND_21 = {1{`RANDOM}};
  addrTBankSelProc3c_0_r = _RAND_21[1:0];
  _RAND_22 = {1{`RANDOM}};
  addrSBankSelProc1c_1_r = _RAND_22[1:0];
  _RAND_23 = {1{`RANDOM}};
  addrSBankSelProc2c_1_r = _RAND_23[1:0];
  _RAND_24 = {1{`RANDOM}};
  addrSBankSelProc3c_1_r = _RAND_24[1:0];
  _RAND_25 = {1{`RANDOM}};
  addrTBankSelProc1c_1_r = _RAND_25[1:0];
  _RAND_26 = {1{`RANDOM}};
  addrTBankSelProc2c_1_r = _RAND_26[1:0];
  _RAND_27 = {1{`RANDOM}};
  addrTBankSelProc3c_1_r = _RAND_27[1:0];
  _RAND_28 = {1{`RANDOM}};
  kernelState1c = _RAND_28[0:0];
  _RAND_29 = {1{`RANDOM}};
  kernelState2c = _RAND_29[0:0];
  _RAND_30 = {1{`RANDOM}};
  kernelState3c = _RAND_30[0:0];
  _RAND_31 = {1{`RANDOM}};
  procState1c = _RAND_31[0:0];
  _RAND_32 = {1{`RANDOM}};
  procState2c = _RAND_32[0:0];
  _RAND_33 = {1{`RANDOM}};
  procState3c = _RAND_33[0:0];
  _RAND_34 = {1{`RANDOM}};
  sameAddr1c = _RAND_34[0:0];
  _RAND_35 = {1{`RANDOM}};
  sameAddr2c = _RAND_35[0:0];
  _RAND_36 = {1{`RANDOM}};
  sameAddr3c = _RAND_36[0:0];
  _RAND_37 = {1{`RANDOM}};
  addrS1c = _RAND_37[4:0];
  _RAND_38 = {1{`RANDOM}};
  addrS2c = _RAND_38[4:0];
  _RAND_39 = {1{`RANDOM}};
  addrS3c = _RAND_39[4:0];
  _RAND_40 = {1{`RANDOM}};
  addrT1c = _RAND_40[4:0];
  _RAND_41 = {1{`RANDOM}};
  addrT2c = _RAND_41[4:0];
  _RAND_42 = {1{`RANDOM}};
  addrT3c = _RAND_42[4:0];
  _RAND_43 = {1{`RANDOM}};
  addrSBankSel1c = _RAND_43[1:0];
  _RAND_44 = {1{`RANDOM}};
  addrTBankSel1c = _RAND_44[1:0];
  _RAND_45 = {1{`RANDOM}};
  addrS1c_1 = _RAND_45[4:0];
  _RAND_46 = {1{`RANDOM}};
  addrS2c_1 = _RAND_46[4:0];
  _RAND_47 = {1{`RANDOM}};
  addrS3c_1 = _RAND_47[4:0];
  _RAND_48 = {1{`RANDOM}};
  addrT1c_1 = _RAND_48[4:0];
  _RAND_49 = {1{`RANDOM}};
  addrT2c_1 = _RAND_49[4:0];
  _RAND_50 = {1{`RANDOM}};
  addrT3c_1 = _RAND_50[4:0];
  _RAND_51 = {1{`RANDOM}};
  addrSBankSel1c_1 = _RAND_51[1:0];
  _RAND_52 = {1{`RANDOM}};
  addrTBankSel1c_1 = _RAND_52[1:0];
  _RAND_53 = {1{`RANDOM}};
  fftDoneReg = _RAND_53[0:0];
`endif // RANDOMIZE_REG_INIT
  `endif // RANDOMIZE
end // initial
`ifdef FIRRTL_AFTER_INITIAL
`FIRRTL_AFTER_INITIAL
`endif
`endif // SYNTHESIS
endmodule
