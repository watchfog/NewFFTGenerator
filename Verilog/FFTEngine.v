module FFTTwiddle(
  input  [6:0]  io_nk,
  input  [1:0]  io_twiLutCaseIndex,
  output [11:0] io_wR,
  output [11:0] io_wI
);
  wire  _idx_r_T_3 = io_nk[6] & |io_nk[5:0]; // @[FFTTwiddle.scala 35:43]
  wire [6:0] _idx_r_T_4 = ~io_nk; // @[FFTTwiddle.scala 35:80]
  wire [6:0] _idx_r_T_6 = _idx_r_T_4 + 7'h1; // @[FFTTwiddle.scala 35:87]
  wire [6:0] idx_r = io_nk[6] & |io_nk[5:0] ? _idx_r_T_6 : io_nk; // @[FFTTwiddle.scala 35:20]
  wire  chg_sign_flag_r = io_twiLutCaseIndex == 2'h2 ? ~_idx_r_T_3 : _idx_r_T_3; // @[FFTTwiddle.scala 47:30]
  wire  chg_sign_flag_i = io_twiLutCaseIndex == 2'h1 ? 1'h0 : 1'h1; // @[FFTTwiddle.scala 48:30]
  wire [11:0] _GEN_2 = 7'h2 == idx_r ? 12'h3ff : 12'h400; // @[FFTTwiddle.scala 50:{36,36}]
  wire [11:0] _GEN_3 = 7'h3 == idx_r ? 12'h3fd : _GEN_2; // @[FFTTwiddle.scala 50:{36,36}]
  wire [11:0] _GEN_4 = 7'h4 == idx_r ? 12'h3fb : _GEN_3; // @[FFTTwiddle.scala 50:{36,36}]
  wire [11:0] _GEN_5 = 7'h5 == idx_r ? 12'h3f8 : _GEN_4; // @[FFTTwiddle.scala 50:{36,36}]
  wire [11:0] _GEN_6 = 7'h6 == idx_r ? 12'h3f5 : _GEN_5; // @[FFTTwiddle.scala 50:{36,36}]
  wire [11:0] _GEN_7 = 7'h7 == idx_r ? 12'h3f1 : _GEN_6; // @[FFTTwiddle.scala 50:{36,36}]
  wire [11:0] _GEN_8 = 7'h8 == idx_r ? 12'h3ec : _GEN_7; // @[FFTTwiddle.scala 50:{36,36}]
  wire [11:0] _GEN_9 = 7'h9 == idx_r ? 12'h3e7 : _GEN_8; // @[FFTTwiddle.scala 50:{36,36}]
  wire [11:0] _GEN_10 = 7'ha == idx_r ? 12'h3e1 : _GEN_9; // @[FFTTwiddle.scala 50:{36,36}]
  wire [11:0] _GEN_11 = 7'hb == idx_r ? 12'h3db : _GEN_10; // @[FFTTwiddle.scala 50:{36,36}]
  wire [11:0] _GEN_12 = 7'hc == idx_r ? 12'h3d4 : _GEN_11; // @[FFTTwiddle.scala 50:{36,36}]
  wire [11:0] _GEN_13 = 7'hd == idx_r ? 12'h3cc : _GEN_12; // @[FFTTwiddle.scala 50:{36,36}]
  wire [11:0] _GEN_14 = 7'he == idx_r ? 12'h3c4 : _GEN_13; // @[FFTTwiddle.scala 50:{36,36}]
  wire [11:0] _GEN_15 = 7'hf == idx_r ? 12'h3bb : _GEN_14; // @[FFTTwiddle.scala 50:{36,36}]
  wire [11:0] _GEN_16 = 7'h10 == idx_r ? 12'h3b2 : _GEN_15; // @[FFTTwiddle.scala 50:{36,36}]
  wire [11:0] _GEN_17 = 7'h11 == idx_r ? 12'h3a8 : _GEN_16; // @[FFTTwiddle.scala 50:{36,36}]
  wire [11:0] _GEN_18 = 7'h12 == idx_r ? 12'h39e : _GEN_17; // @[FFTTwiddle.scala 50:{36,36}]
  wire [11:0] _GEN_19 = 7'h13 == idx_r ? 12'h393 : _GEN_18; // @[FFTTwiddle.scala 50:{36,36}]
  wire [11:0] _GEN_20 = 7'h14 == idx_r ? 12'h387 : _GEN_19; // @[FFTTwiddle.scala 50:{36,36}]
  wire [11:0] _GEN_21 = 7'h15 == idx_r ? 12'h37b : _GEN_20; // @[FFTTwiddle.scala 50:{36,36}]
  wire [11:0] _GEN_22 = 7'h16 == idx_r ? 12'h36e : _GEN_21; // @[FFTTwiddle.scala 50:{36,36}]
  wire [11:0] _GEN_23 = 7'h17 == idx_r ? 12'h361 : _GEN_22; // @[FFTTwiddle.scala 50:{36,36}]
  wire [11:0] _GEN_24 = 7'h18 == idx_r ? 12'h353 : _GEN_23; // @[FFTTwiddle.scala 50:{36,36}]
  wire [11:0] _GEN_25 = 7'h19 == idx_r ? 12'h345 : _GEN_24; // @[FFTTwiddle.scala 50:{36,36}]
  wire [11:0] _GEN_26 = 7'h1a == idx_r ? 12'h336 : _GEN_25; // @[FFTTwiddle.scala 50:{36,36}]
  wire [11:0] _GEN_27 = 7'h1b == idx_r ? 12'h327 : _GEN_26; // @[FFTTwiddle.scala 50:{36,36}]
  wire [11:0] _GEN_28 = 7'h1c == idx_r ? 12'h318 : _GEN_27; // @[FFTTwiddle.scala 50:{36,36}]
  wire [11:0] _GEN_29 = 7'h1d == idx_r ? 12'h307 : _GEN_28; // @[FFTTwiddle.scala 50:{36,36}]
  wire [11:0] _GEN_30 = 7'h1e == idx_r ? 12'h2f7 : _GEN_29; // @[FFTTwiddle.scala 50:{36,36}]
  wire [11:0] _GEN_31 = 7'h1f == idx_r ? 12'h2e6 : _GEN_30; // @[FFTTwiddle.scala 50:{36,36}]
  wire [11:0] _GEN_32 = 7'h20 == idx_r ? 12'h2d4 : _GEN_31; // @[FFTTwiddle.scala 50:{36,36}]
  wire [11:0] _GEN_33 = 7'h21 == idx_r ? 12'h2c2 : _GEN_32; // @[FFTTwiddle.scala 50:{36,36}]
  wire [11:0] _GEN_34 = 7'h22 == idx_r ? 12'h2b0 : _GEN_33; // @[FFTTwiddle.scala 50:{36,36}]
  wire [11:0] _GEN_35 = 7'h23 == idx_r ? 12'h29d : _GEN_34; // @[FFTTwiddle.scala 50:{36,36}]
  wire [11:0] _GEN_36 = 7'h24 == idx_r ? 12'h28a : _GEN_35; // @[FFTTwiddle.scala 50:{36,36}]
  wire [11:0] _GEN_37 = 7'h25 == idx_r ? 12'h276 : _GEN_36; // @[FFTTwiddle.scala 50:{36,36}]
  wire [11:0] _GEN_38 = 7'h26 == idx_r ? 12'h262 : _GEN_37; // @[FFTTwiddle.scala 50:{36,36}]
  wire [11:0] _GEN_39 = 7'h27 == idx_r ? 12'h24e : _GEN_38; // @[FFTTwiddle.scala 50:{36,36}]
  wire [11:0] _GEN_40 = 7'h28 == idx_r ? 12'h239 : _GEN_39; // @[FFTTwiddle.scala 50:{36,36}]
  wire [11:0] _GEN_41 = 7'h29 == idx_r ? 12'h224 : _GEN_40; // @[FFTTwiddle.scala 50:{36,36}]
  wire [11:0] _GEN_42 = 7'h2a == idx_r ? 12'h20e : _GEN_41; // @[FFTTwiddle.scala 50:{36,36}]
  wire [11:0] _GEN_43 = 7'h2b == idx_r ? 12'h1f9 : _GEN_42; // @[FFTTwiddle.scala 50:{36,36}]
  wire [11:0] _GEN_44 = 7'h2c == idx_r ? 12'h1e3 : _GEN_43; // @[FFTTwiddle.scala 50:{36,36}]
  wire [11:0] _GEN_45 = 7'h2d == idx_r ? 12'h1cc : _GEN_44; // @[FFTTwiddle.scala 50:{36,36}]
  wire [11:0] _GEN_46 = 7'h2e == idx_r ? 12'h1b6 : _GEN_45; // @[FFTTwiddle.scala 50:{36,36}]
  wire [11:0] _GEN_47 = 7'h2f == idx_r ? 12'h19f : _GEN_46; // @[FFTTwiddle.scala 50:{36,36}]
  wire [11:0] _GEN_48 = 7'h30 == idx_r ? 12'h188 : _GEN_47; // @[FFTTwiddle.scala 50:{36,36}]
  wire [11:0] _GEN_49 = 7'h31 == idx_r ? 12'h171 : _GEN_48; // @[FFTTwiddle.scala 50:{36,36}]
  wire [11:0] _GEN_50 = 7'h32 == idx_r ? 12'h159 : _GEN_49; // @[FFTTwiddle.scala 50:{36,36}]
  wire [11:0] _GEN_51 = 7'h33 == idx_r ? 12'h141 : _GEN_50; // @[FFTTwiddle.scala 50:{36,36}]
  wire [11:0] _GEN_52 = 7'h34 == idx_r ? 12'h129 : _GEN_51; // @[FFTTwiddle.scala 50:{36,36}]
  wire [11:0] _GEN_53 = 7'h35 == idx_r ? 12'h111 : _GEN_52; // @[FFTTwiddle.scala 50:{36,36}]
  wire [11:0] _GEN_54 = 7'h36 == idx_r ? 12'hf9 : _GEN_53; // @[FFTTwiddle.scala 50:{36,36}]
  wire [11:0] _GEN_55 = 7'h37 == idx_r ? 12'he0 : _GEN_54; // @[FFTTwiddle.scala 50:{36,36}]
  wire [11:0] _GEN_56 = 7'h38 == idx_r ? 12'hc8 : _GEN_55; // @[FFTTwiddle.scala 50:{36,36}]
  wire [11:0] _GEN_57 = 7'h39 == idx_r ? 12'haf : _GEN_56; // @[FFTTwiddle.scala 50:{36,36}]
  wire [11:0] _GEN_58 = 7'h3a == idx_r ? 12'h96 : _GEN_57; // @[FFTTwiddle.scala 50:{36,36}]
  wire [11:0] _GEN_59 = 7'h3b == idx_r ? 12'h7d : _GEN_58; // @[FFTTwiddle.scala 50:{36,36}]
  wire [11:0] _GEN_60 = 7'h3c == idx_r ? 12'h64 : _GEN_59; // @[FFTTwiddle.scala 50:{36,36}]
  wire [11:0] _GEN_61 = 7'h3d == idx_r ? 12'h4b : _GEN_60; // @[FFTTwiddle.scala 50:{36,36}]
  wire [11:0] _GEN_62 = 7'h3e == idx_r ? 12'h32 : _GEN_61; // @[FFTTwiddle.scala 50:{36,36}]
  wire [11:0] _GEN_63 = 7'h3f == idx_r ? 12'h19 : _GEN_62; // @[FFTTwiddle.scala 50:{36,36}]
  wire [11:0] _GEN_64 = 7'h40 == idx_r ? 12'h0 : _GEN_63; // @[FFTTwiddle.scala 50:{36,36}]
  wire [11:0] _GEN_65 = 7'h41 == idx_r ? 12'h0 : _GEN_64; // @[FFTTwiddle.scala 50:{36,36}]
  wire [11:0] _GEN_66 = 7'h42 == idx_r ? 12'h0 : _GEN_65; // @[FFTTwiddle.scala 50:{36,36}]
  wire [11:0] _GEN_67 = 7'h43 == idx_r ? 12'h0 : _GEN_66; // @[FFTTwiddle.scala 50:{36,36}]
  wire [11:0] _GEN_68 = 7'h44 == idx_r ? 12'h0 : _GEN_67; // @[FFTTwiddle.scala 50:{36,36}]
  wire [11:0] _GEN_69 = 7'h45 == idx_r ? 12'h0 : _GEN_68; // @[FFTTwiddle.scala 50:{36,36}]
  wire [11:0] _GEN_70 = 7'h46 == idx_r ? 12'h0 : _GEN_69; // @[FFTTwiddle.scala 50:{36,36}]
  wire [11:0] _GEN_71 = 7'h47 == idx_r ? 12'h0 : _GEN_70; // @[FFTTwiddle.scala 50:{36,36}]
  wire [11:0] _GEN_72 = 7'h48 == idx_r ? 12'h0 : _GEN_71; // @[FFTTwiddle.scala 50:{36,36}]
  wire [11:0] _GEN_73 = 7'h49 == idx_r ? 12'h0 : _GEN_72; // @[FFTTwiddle.scala 50:{36,36}]
  wire [11:0] _GEN_74 = 7'h4a == idx_r ? 12'h0 : _GEN_73; // @[FFTTwiddle.scala 50:{36,36}]
  wire [11:0] _GEN_75 = 7'h4b == idx_r ? 12'h0 : _GEN_74; // @[FFTTwiddle.scala 50:{36,36}]
  wire [11:0] _GEN_76 = 7'h4c == idx_r ? 12'h0 : _GEN_75; // @[FFTTwiddle.scala 50:{36,36}]
  wire [11:0] _GEN_77 = 7'h4d == idx_r ? 12'h0 : _GEN_76; // @[FFTTwiddle.scala 50:{36,36}]
  wire [11:0] _GEN_78 = 7'h4e == idx_r ? 12'h0 : _GEN_77; // @[FFTTwiddle.scala 50:{36,36}]
  wire [11:0] _GEN_79 = 7'h4f == idx_r ? 12'h0 : _GEN_78; // @[FFTTwiddle.scala 50:{36,36}]
  wire [11:0] _GEN_80 = 7'h50 == idx_r ? 12'h0 : _GEN_79; // @[FFTTwiddle.scala 50:{36,36}]
  wire [11:0] _GEN_81 = 7'h51 == idx_r ? 12'h0 : _GEN_80; // @[FFTTwiddle.scala 50:{36,36}]
  wire [11:0] _GEN_82 = 7'h52 == idx_r ? 12'h0 : _GEN_81; // @[FFTTwiddle.scala 50:{36,36}]
  wire [11:0] _GEN_83 = 7'h53 == idx_r ? 12'h0 : _GEN_82; // @[FFTTwiddle.scala 50:{36,36}]
  wire [11:0] _GEN_84 = 7'h54 == idx_r ? 12'h0 : _GEN_83; // @[FFTTwiddle.scala 50:{36,36}]
  wire [11:0] _GEN_85 = 7'h55 == idx_r ? 12'h0 : _GEN_84; // @[FFTTwiddle.scala 50:{36,36}]
  wire [11:0] _GEN_86 = 7'h56 == idx_r ? 12'h0 : _GEN_85; // @[FFTTwiddle.scala 50:{36,36}]
  wire [11:0] _GEN_87 = 7'h57 == idx_r ? 12'h0 : _GEN_86; // @[FFTTwiddle.scala 50:{36,36}]
  wire [11:0] _GEN_88 = 7'h58 == idx_r ? 12'h0 : _GEN_87; // @[FFTTwiddle.scala 50:{36,36}]
  wire [11:0] _GEN_89 = 7'h59 == idx_r ? 12'h0 : _GEN_88; // @[FFTTwiddle.scala 50:{36,36}]
  wire [11:0] _GEN_90 = 7'h5a == idx_r ? 12'h0 : _GEN_89; // @[FFTTwiddle.scala 50:{36,36}]
  wire [11:0] _GEN_91 = 7'h5b == idx_r ? 12'h0 : _GEN_90; // @[FFTTwiddle.scala 50:{36,36}]
  wire [11:0] _GEN_92 = 7'h5c == idx_r ? 12'h0 : _GEN_91; // @[FFTTwiddle.scala 50:{36,36}]
  wire [11:0] _GEN_93 = 7'h5d == idx_r ? 12'h0 : _GEN_92; // @[FFTTwiddle.scala 50:{36,36}]
  wire [11:0] _GEN_94 = 7'h5e == idx_r ? 12'h0 : _GEN_93; // @[FFTTwiddle.scala 50:{36,36}]
  wire [11:0] _GEN_95 = 7'h5f == idx_r ? 12'h0 : _GEN_94; // @[FFTTwiddle.scala 50:{36,36}]
  wire [11:0] _GEN_96 = 7'h60 == idx_r ? 12'h0 : _GEN_95; // @[FFTTwiddle.scala 50:{36,36}]
  wire [11:0] _GEN_97 = 7'h61 == idx_r ? 12'h0 : _GEN_96; // @[FFTTwiddle.scala 50:{36,36}]
  wire [11:0] _GEN_98 = 7'h62 == idx_r ? 12'h0 : _GEN_97; // @[FFTTwiddle.scala 50:{36,36}]
  wire [11:0] _GEN_99 = 7'h63 == idx_r ? 12'h0 : _GEN_98; // @[FFTTwiddle.scala 50:{36,36}]
  wire [11:0] _GEN_100 = 7'h64 == idx_r ? 12'h0 : _GEN_99; // @[FFTTwiddle.scala 50:{36,36}]
  wire [11:0] _GEN_101 = 7'h65 == idx_r ? 12'h0 : _GEN_100; // @[FFTTwiddle.scala 50:{36,36}]
  wire [11:0] _GEN_102 = 7'h66 == idx_r ? 12'h0 : _GEN_101; // @[FFTTwiddle.scala 50:{36,36}]
  wire [11:0] _GEN_103 = 7'h67 == idx_r ? 12'h0 : _GEN_102; // @[FFTTwiddle.scala 50:{36,36}]
  wire [11:0] _GEN_104 = 7'h68 == idx_r ? 12'h0 : _GEN_103; // @[FFTTwiddle.scala 50:{36,36}]
  wire [11:0] _GEN_105 = 7'h69 == idx_r ? 12'h0 : _GEN_104; // @[FFTTwiddle.scala 50:{36,36}]
  wire [11:0] _GEN_106 = 7'h6a == idx_r ? 12'h0 : _GEN_105; // @[FFTTwiddle.scala 50:{36,36}]
  wire [11:0] _GEN_107 = 7'h6b == idx_r ? 12'h0 : _GEN_106; // @[FFTTwiddle.scala 50:{36,36}]
  wire [11:0] _GEN_108 = 7'h6c == idx_r ? 12'h0 : _GEN_107; // @[FFTTwiddle.scala 50:{36,36}]
  wire [11:0] _GEN_109 = 7'h6d == idx_r ? 12'h0 : _GEN_108; // @[FFTTwiddle.scala 50:{36,36}]
  wire [11:0] _GEN_110 = 7'h6e == idx_r ? 12'h0 : _GEN_109; // @[FFTTwiddle.scala 50:{36,36}]
  wire [11:0] _GEN_111 = 7'h6f == idx_r ? 12'h0 : _GEN_110; // @[FFTTwiddle.scala 50:{36,36}]
  wire [11:0] _GEN_112 = 7'h70 == idx_r ? 12'h0 : _GEN_111; // @[FFTTwiddle.scala 50:{36,36}]
  wire [11:0] _GEN_113 = 7'h71 == idx_r ? 12'h0 : _GEN_112; // @[FFTTwiddle.scala 50:{36,36}]
  wire [11:0] _GEN_114 = 7'h72 == idx_r ? 12'h0 : _GEN_113; // @[FFTTwiddle.scala 50:{36,36}]
  wire [11:0] _GEN_115 = 7'h73 == idx_r ? 12'h0 : _GEN_114; // @[FFTTwiddle.scala 50:{36,36}]
  wire [11:0] _GEN_116 = 7'h74 == idx_r ? 12'h0 : _GEN_115; // @[FFTTwiddle.scala 50:{36,36}]
  wire [11:0] _GEN_117 = 7'h75 == idx_r ? 12'h0 : _GEN_116; // @[FFTTwiddle.scala 50:{36,36}]
  wire [11:0] _GEN_118 = 7'h76 == idx_r ? 12'h0 : _GEN_117; // @[FFTTwiddle.scala 50:{36,36}]
  wire [11:0] _GEN_119 = 7'h77 == idx_r ? 12'h0 : _GEN_118; // @[FFTTwiddle.scala 50:{36,36}]
  wire [11:0] _GEN_120 = 7'h78 == idx_r ? 12'h0 : _GEN_119; // @[FFTTwiddle.scala 50:{36,36}]
  wire [11:0] _GEN_121 = 7'h79 == idx_r ? 12'h0 : _GEN_120; // @[FFTTwiddle.scala 50:{36,36}]
  wire [11:0] _GEN_122 = 7'h7a == idx_r ? 12'h0 : _GEN_121; // @[FFTTwiddle.scala 50:{36,36}]
  wire [11:0] _GEN_123 = 7'h7b == idx_r ? 12'h0 : _GEN_122; // @[FFTTwiddle.scala 50:{36,36}]
  wire [11:0] _GEN_124 = 7'h7c == idx_r ? 12'h0 : _GEN_123; // @[FFTTwiddle.scala 50:{36,36}]
  wire [11:0] _GEN_125 = 7'h7d == idx_r ? 12'h0 : _GEN_124; // @[FFTTwiddle.scala 50:{36,36}]
  wire [11:0] _GEN_126 = 7'h7e == idx_r ? 12'h0 : _GEN_125; // @[FFTTwiddle.scala 50:{36,36}]
  wire [11:0] _GEN_127 = 7'h7f == idx_r ? 12'h0 : _GEN_126; // @[FFTTwiddle.scala 50:{36,36}]
  wire [11:0] _io_wR_T = ~_GEN_127; // @[FFTTwiddle.scala 50:36]
  wire [11:0] _io_wR_T_2 = _io_wR_T + 12'h1; // @[FFTTwiddle.scala 50:45]
  wire [11:0] _GEN_129 = 7'h1 == idx_r ? 12'h19 : 12'h0; // @[FFTTwiddle.scala 51:{36,36}]
  wire [11:0] _GEN_130 = 7'h2 == idx_r ? 12'h32 : _GEN_129; // @[FFTTwiddle.scala 51:{36,36}]
  wire [11:0] _GEN_131 = 7'h3 == idx_r ? 12'h4b : _GEN_130; // @[FFTTwiddle.scala 51:{36,36}]
  wire [11:0] _GEN_132 = 7'h4 == idx_r ? 12'h64 : _GEN_131; // @[FFTTwiddle.scala 51:{36,36}]
  wire [11:0] _GEN_133 = 7'h5 == idx_r ? 12'h7d : _GEN_132; // @[FFTTwiddle.scala 51:{36,36}]
  wire [11:0] _GEN_134 = 7'h6 == idx_r ? 12'h96 : _GEN_133; // @[FFTTwiddle.scala 51:{36,36}]
  wire [11:0] _GEN_135 = 7'h7 == idx_r ? 12'haf : _GEN_134; // @[FFTTwiddle.scala 51:{36,36}]
  wire [11:0] _GEN_136 = 7'h8 == idx_r ? 12'hc8 : _GEN_135; // @[FFTTwiddle.scala 51:{36,36}]
  wire [11:0] _GEN_137 = 7'h9 == idx_r ? 12'he0 : _GEN_136; // @[FFTTwiddle.scala 51:{36,36}]
  wire [11:0] _GEN_138 = 7'ha == idx_r ? 12'hf9 : _GEN_137; // @[FFTTwiddle.scala 51:{36,36}]
  wire [11:0] _GEN_139 = 7'hb == idx_r ? 12'h111 : _GEN_138; // @[FFTTwiddle.scala 51:{36,36}]
  wire [11:0] _GEN_140 = 7'hc == idx_r ? 12'h129 : _GEN_139; // @[FFTTwiddle.scala 51:{36,36}]
  wire [11:0] _GEN_141 = 7'hd == idx_r ? 12'h141 : _GEN_140; // @[FFTTwiddle.scala 51:{36,36}]
  wire [11:0] _GEN_142 = 7'he == idx_r ? 12'h159 : _GEN_141; // @[FFTTwiddle.scala 51:{36,36}]
  wire [11:0] _GEN_143 = 7'hf == idx_r ? 12'h171 : _GEN_142; // @[FFTTwiddle.scala 51:{36,36}]
  wire [11:0] _GEN_144 = 7'h10 == idx_r ? 12'h188 : _GEN_143; // @[FFTTwiddle.scala 51:{36,36}]
  wire [11:0] _GEN_145 = 7'h11 == idx_r ? 12'h19f : _GEN_144; // @[FFTTwiddle.scala 51:{36,36}]
  wire [11:0] _GEN_146 = 7'h12 == idx_r ? 12'h1b6 : _GEN_145; // @[FFTTwiddle.scala 51:{36,36}]
  wire [11:0] _GEN_147 = 7'h13 == idx_r ? 12'h1cc : _GEN_146; // @[FFTTwiddle.scala 51:{36,36}]
  wire [11:0] _GEN_148 = 7'h14 == idx_r ? 12'h1e3 : _GEN_147; // @[FFTTwiddle.scala 51:{36,36}]
  wire [11:0] _GEN_149 = 7'h15 == idx_r ? 12'h1f9 : _GEN_148; // @[FFTTwiddle.scala 51:{36,36}]
  wire [11:0] _GEN_150 = 7'h16 == idx_r ? 12'h20e : _GEN_149; // @[FFTTwiddle.scala 51:{36,36}]
  wire [11:0] _GEN_151 = 7'h17 == idx_r ? 12'h224 : _GEN_150; // @[FFTTwiddle.scala 51:{36,36}]
  wire [11:0] _GEN_152 = 7'h18 == idx_r ? 12'h239 : _GEN_151; // @[FFTTwiddle.scala 51:{36,36}]
  wire [11:0] _GEN_153 = 7'h19 == idx_r ? 12'h24e : _GEN_152; // @[FFTTwiddle.scala 51:{36,36}]
  wire [11:0] _GEN_154 = 7'h1a == idx_r ? 12'h262 : _GEN_153; // @[FFTTwiddle.scala 51:{36,36}]
  wire [11:0] _GEN_155 = 7'h1b == idx_r ? 12'h276 : _GEN_154; // @[FFTTwiddle.scala 51:{36,36}]
  wire [11:0] _GEN_156 = 7'h1c == idx_r ? 12'h28a : _GEN_155; // @[FFTTwiddle.scala 51:{36,36}]
  wire [11:0] _GEN_157 = 7'h1d == idx_r ? 12'h29d : _GEN_156; // @[FFTTwiddle.scala 51:{36,36}]
  wire [11:0] _GEN_158 = 7'h1e == idx_r ? 12'h2b0 : _GEN_157; // @[FFTTwiddle.scala 51:{36,36}]
  wire [11:0] _GEN_159 = 7'h1f == idx_r ? 12'h2c2 : _GEN_158; // @[FFTTwiddle.scala 51:{36,36}]
  wire [11:0] _GEN_160 = 7'h20 == idx_r ? 12'h2d4 : _GEN_159; // @[FFTTwiddle.scala 51:{36,36}]
  wire [11:0] _GEN_161 = 7'h21 == idx_r ? 12'h2e6 : _GEN_160; // @[FFTTwiddle.scala 51:{36,36}]
  wire [11:0] _GEN_162 = 7'h22 == idx_r ? 12'h2f7 : _GEN_161; // @[FFTTwiddle.scala 51:{36,36}]
  wire [11:0] _GEN_163 = 7'h23 == idx_r ? 12'h307 : _GEN_162; // @[FFTTwiddle.scala 51:{36,36}]
  wire [11:0] _GEN_164 = 7'h24 == idx_r ? 12'h318 : _GEN_163; // @[FFTTwiddle.scala 51:{36,36}]
  wire [11:0] _GEN_165 = 7'h25 == idx_r ? 12'h327 : _GEN_164; // @[FFTTwiddle.scala 51:{36,36}]
  wire [11:0] _GEN_166 = 7'h26 == idx_r ? 12'h336 : _GEN_165; // @[FFTTwiddle.scala 51:{36,36}]
  wire [11:0] _GEN_167 = 7'h27 == idx_r ? 12'h345 : _GEN_166; // @[FFTTwiddle.scala 51:{36,36}]
  wire [11:0] _GEN_168 = 7'h28 == idx_r ? 12'h353 : _GEN_167; // @[FFTTwiddle.scala 51:{36,36}]
  wire [11:0] _GEN_169 = 7'h29 == idx_r ? 12'h361 : _GEN_168; // @[FFTTwiddle.scala 51:{36,36}]
  wire [11:0] _GEN_170 = 7'h2a == idx_r ? 12'h36e : _GEN_169; // @[FFTTwiddle.scala 51:{36,36}]
  wire [11:0] _GEN_171 = 7'h2b == idx_r ? 12'h37b : _GEN_170; // @[FFTTwiddle.scala 51:{36,36}]
  wire [11:0] _GEN_172 = 7'h2c == idx_r ? 12'h387 : _GEN_171; // @[FFTTwiddle.scala 51:{36,36}]
  wire [11:0] _GEN_173 = 7'h2d == idx_r ? 12'h393 : _GEN_172; // @[FFTTwiddle.scala 51:{36,36}]
  wire [11:0] _GEN_174 = 7'h2e == idx_r ? 12'h39e : _GEN_173; // @[FFTTwiddle.scala 51:{36,36}]
  wire [11:0] _GEN_175 = 7'h2f == idx_r ? 12'h3a8 : _GEN_174; // @[FFTTwiddle.scala 51:{36,36}]
  wire [11:0] _GEN_176 = 7'h30 == idx_r ? 12'h3b2 : _GEN_175; // @[FFTTwiddle.scala 51:{36,36}]
  wire [11:0] _GEN_177 = 7'h31 == idx_r ? 12'h3bb : _GEN_176; // @[FFTTwiddle.scala 51:{36,36}]
  wire [11:0] _GEN_178 = 7'h32 == idx_r ? 12'h3c4 : _GEN_177; // @[FFTTwiddle.scala 51:{36,36}]
  wire [11:0] _GEN_179 = 7'h33 == idx_r ? 12'h3cc : _GEN_178; // @[FFTTwiddle.scala 51:{36,36}]
  wire [11:0] _GEN_180 = 7'h34 == idx_r ? 12'h3d4 : _GEN_179; // @[FFTTwiddle.scala 51:{36,36}]
  wire [11:0] _GEN_181 = 7'h35 == idx_r ? 12'h3db : _GEN_180; // @[FFTTwiddle.scala 51:{36,36}]
  wire [11:0] _GEN_182 = 7'h36 == idx_r ? 12'h3e1 : _GEN_181; // @[FFTTwiddle.scala 51:{36,36}]
  wire [11:0] _GEN_183 = 7'h37 == idx_r ? 12'h3e7 : _GEN_182; // @[FFTTwiddle.scala 51:{36,36}]
  wire [11:0] _GEN_184 = 7'h38 == idx_r ? 12'h3ec : _GEN_183; // @[FFTTwiddle.scala 51:{36,36}]
  wire [11:0] _GEN_185 = 7'h39 == idx_r ? 12'h3f1 : _GEN_184; // @[FFTTwiddle.scala 51:{36,36}]
  wire [11:0] _GEN_186 = 7'h3a == idx_r ? 12'h3f5 : _GEN_185; // @[FFTTwiddle.scala 51:{36,36}]
  wire [11:0] _GEN_187 = 7'h3b == idx_r ? 12'h3f8 : _GEN_186; // @[FFTTwiddle.scala 51:{36,36}]
  wire [11:0] _GEN_188 = 7'h3c == idx_r ? 12'h3fb : _GEN_187; // @[FFTTwiddle.scala 51:{36,36}]
  wire [11:0] _GEN_189 = 7'h3d == idx_r ? 12'h3fd : _GEN_188; // @[FFTTwiddle.scala 51:{36,36}]
  wire [11:0] _GEN_190 = 7'h3e == idx_r ? 12'h3ff : _GEN_189; // @[FFTTwiddle.scala 51:{36,36}]
  wire [11:0] _GEN_191 = 7'h3f == idx_r ? 12'h400 : _GEN_190; // @[FFTTwiddle.scala 51:{36,36}]
  wire [11:0] _GEN_192 = 7'h40 == idx_r ? 12'h400 : _GEN_191; // @[FFTTwiddle.scala 51:{36,36}]
  wire [11:0] _GEN_193 = 7'h41 == idx_r ? 12'h0 : _GEN_192; // @[FFTTwiddle.scala 51:{36,36}]
  wire [11:0] _GEN_194 = 7'h42 == idx_r ? 12'h0 : _GEN_193; // @[FFTTwiddle.scala 51:{36,36}]
  wire [11:0] _GEN_195 = 7'h43 == idx_r ? 12'h0 : _GEN_194; // @[FFTTwiddle.scala 51:{36,36}]
  wire [11:0] _GEN_196 = 7'h44 == idx_r ? 12'h0 : _GEN_195; // @[FFTTwiddle.scala 51:{36,36}]
  wire [11:0] _GEN_197 = 7'h45 == idx_r ? 12'h0 : _GEN_196; // @[FFTTwiddle.scala 51:{36,36}]
  wire [11:0] _GEN_198 = 7'h46 == idx_r ? 12'h0 : _GEN_197; // @[FFTTwiddle.scala 51:{36,36}]
  wire [11:0] _GEN_199 = 7'h47 == idx_r ? 12'h0 : _GEN_198; // @[FFTTwiddle.scala 51:{36,36}]
  wire [11:0] _GEN_200 = 7'h48 == idx_r ? 12'h0 : _GEN_199; // @[FFTTwiddle.scala 51:{36,36}]
  wire [11:0] _GEN_201 = 7'h49 == idx_r ? 12'h0 : _GEN_200; // @[FFTTwiddle.scala 51:{36,36}]
  wire [11:0] _GEN_202 = 7'h4a == idx_r ? 12'h0 : _GEN_201; // @[FFTTwiddle.scala 51:{36,36}]
  wire [11:0] _GEN_203 = 7'h4b == idx_r ? 12'h0 : _GEN_202; // @[FFTTwiddle.scala 51:{36,36}]
  wire [11:0] _GEN_204 = 7'h4c == idx_r ? 12'h0 : _GEN_203; // @[FFTTwiddle.scala 51:{36,36}]
  wire [11:0] _GEN_205 = 7'h4d == idx_r ? 12'h0 : _GEN_204; // @[FFTTwiddle.scala 51:{36,36}]
  wire [11:0] _GEN_206 = 7'h4e == idx_r ? 12'h0 : _GEN_205; // @[FFTTwiddle.scala 51:{36,36}]
  wire [11:0] _GEN_207 = 7'h4f == idx_r ? 12'h0 : _GEN_206; // @[FFTTwiddle.scala 51:{36,36}]
  wire [11:0] _GEN_208 = 7'h50 == idx_r ? 12'h0 : _GEN_207; // @[FFTTwiddle.scala 51:{36,36}]
  wire [11:0] _GEN_209 = 7'h51 == idx_r ? 12'h0 : _GEN_208; // @[FFTTwiddle.scala 51:{36,36}]
  wire [11:0] _GEN_210 = 7'h52 == idx_r ? 12'h0 : _GEN_209; // @[FFTTwiddle.scala 51:{36,36}]
  wire [11:0] _GEN_211 = 7'h53 == idx_r ? 12'h0 : _GEN_210; // @[FFTTwiddle.scala 51:{36,36}]
  wire [11:0] _GEN_212 = 7'h54 == idx_r ? 12'h0 : _GEN_211; // @[FFTTwiddle.scala 51:{36,36}]
  wire [11:0] _GEN_213 = 7'h55 == idx_r ? 12'h0 : _GEN_212; // @[FFTTwiddle.scala 51:{36,36}]
  wire [11:0] _GEN_214 = 7'h56 == idx_r ? 12'h0 : _GEN_213; // @[FFTTwiddle.scala 51:{36,36}]
  wire [11:0] _GEN_215 = 7'h57 == idx_r ? 12'h0 : _GEN_214; // @[FFTTwiddle.scala 51:{36,36}]
  wire [11:0] _GEN_216 = 7'h58 == idx_r ? 12'h0 : _GEN_215; // @[FFTTwiddle.scala 51:{36,36}]
  wire [11:0] _GEN_217 = 7'h59 == idx_r ? 12'h0 : _GEN_216; // @[FFTTwiddle.scala 51:{36,36}]
  wire [11:0] _GEN_218 = 7'h5a == idx_r ? 12'h0 : _GEN_217; // @[FFTTwiddle.scala 51:{36,36}]
  wire [11:0] _GEN_219 = 7'h5b == idx_r ? 12'h0 : _GEN_218; // @[FFTTwiddle.scala 51:{36,36}]
  wire [11:0] _GEN_220 = 7'h5c == idx_r ? 12'h0 : _GEN_219; // @[FFTTwiddle.scala 51:{36,36}]
  wire [11:0] _GEN_221 = 7'h5d == idx_r ? 12'h0 : _GEN_220; // @[FFTTwiddle.scala 51:{36,36}]
  wire [11:0] _GEN_222 = 7'h5e == idx_r ? 12'h0 : _GEN_221; // @[FFTTwiddle.scala 51:{36,36}]
  wire [11:0] _GEN_223 = 7'h5f == idx_r ? 12'h0 : _GEN_222; // @[FFTTwiddle.scala 51:{36,36}]
  wire [11:0] _GEN_224 = 7'h60 == idx_r ? 12'h0 : _GEN_223; // @[FFTTwiddle.scala 51:{36,36}]
  wire [11:0] _GEN_225 = 7'h61 == idx_r ? 12'h0 : _GEN_224; // @[FFTTwiddle.scala 51:{36,36}]
  wire [11:0] _GEN_226 = 7'h62 == idx_r ? 12'h0 : _GEN_225; // @[FFTTwiddle.scala 51:{36,36}]
  wire [11:0] _GEN_227 = 7'h63 == idx_r ? 12'h0 : _GEN_226; // @[FFTTwiddle.scala 51:{36,36}]
  wire [11:0] _GEN_228 = 7'h64 == idx_r ? 12'h0 : _GEN_227; // @[FFTTwiddle.scala 51:{36,36}]
  wire [11:0] _GEN_229 = 7'h65 == idx_r ? 12'h0 : _GEN_228; // @[FFTTwiddle.scala 51:{36,36}]
  wire [11:0] _GEN_230 = 7'h66 == idx_r ? 12'h0 : _GEN_229; // @[FFTTwiddle.scala 51:{36,36}]
  wire [11:0] _GEN_231 = 7'h67 == idx_r ? 12'h0 : _GEN_230; // @[FFTTwiddle.scala 51:{36,36}]
  wire [11:0] _GEN_232 = 7'h68 == idx_r ? 12'h0 : _GEN_231; // @[FFTTwiddle.scala 51:{36,36}]
  wire [11:0] _GEN_233 = 7'h69 == idx_r ? 12'h0 : _GEN_232; // @[FFTTwiddle.scala 51:{36,36}]
  wire [11:0] _GEN_234 = 7'h6a == idx_r ? 12'h0 : _GEN_233; // @[FFTTwiddle.scala 51:{36,36}]
  wire [11:0] _GEN_235 = 7'h6b == idx_r ? 12'h0 : _GEN_234; // @[FFTTwiddle.scala 51:{36,36}]
  wire [11:0] _GEN_236 = 7'h6c == idx_r ? 12'h0 : _GEN_235; // @[FFTTwiddle.scala 51:{36,36}]
  wire [11:0] _GEN_237 = 7'h6d == idx_r ? 12'h0 : _GEN_236; // @[FFTTwiddle.scala 51:{36,36}]
  wire [11:0] _GEN_238 = 7'h6e == idx_r ? 12'h0 : _GEN_237; // @[FFTTwiddle.scala 51:{36,36}]
  wire [11:0] _GEN_239 = 7'h6f == idx_r ? 12'h0 : _GEN_238; // @[FFTTwiddle.scala 51:{36,36}]
  wire [11:0] _GEN_240 = 7'h70 == idx_r ? 12'h0 : _GEN_239; // @[FFTTwiddle.scala 51:{36,36}]
  wire [11:0] _GEN_241 = 7'h71 == idx_r ? 12'h0 : _GEN_240; // @[FFTTwiddle.scala 51:{36,36}]
  wire [11:0] _GEN_242 = 7'h72 == idx_r ? 12'h0 : _GEN_241; // @[FFTTwiddle.scala 51:{36,36}]
  wire [11:0] _GEN_243 = 7'h73 == idx_r ? 12'h0 : _GEN_242; // @[FFTTwiddle.scala 51:{36,36}]
  wire [11:0] _GEN_244 = 7'h74 == idx_r ? 12'h0 : _GEN_243; // @[FFTTwiddle.scala 51:{36,36}]
  wire [11:0] _GEN_245 = 7'h75 == idx_r ? 12'h0 : _GEN_244; // @[FFTTwiddle.scala 51:{36,36}]
  wire [11:0] _GEN_246 = 7'h76 == idx_r ? 12'h0 : _GEN_245; // @[FFTTwiddle.scala 51:{36,36}]
  wire [11:0] _GEN_247 = 7'h77 == idx_r ? 12'h0 : _GEN_246; // @[FFTTwiddle.scala 51:{36,36}]
  wire [11:0] _GEN_248 = 7'h78 == idx_r ? 12'h0 : _GEN_247; // @[FFTTwiddle.scala 51:{36,36}]
  wire [11:0] _GEN_249 = 7'h79 == idx_r ? 12'h0 : _GEN_248; // @[FFTTwiddle.scala 51:{36,36}]
  wire [11:0] _GEN_250 = 7'h7a == idx_r ? 12'h0 : _GEN_249; // @[FFTTwiddle.scala 51:{36,36}]
  wire [11:0] _GEN_251 = 7'h7b == idx_r ? 12'h0 : _GEN_250; // @[FFTTwiddle.scala 51:{36,36}]
  wire [11:0] _GEN_252 = 7'h7c == idx_r ? 12'h0 : _GEN_251; // @[FFTTwiddle.scala 51:{36,36}]
  wire [11:0] _GEN_253 = 7'h7d == idx_r ? 12'h0 : _GEN_252; // @[FFTTwiddle.scala 51:{36,36}]
  wire [11:0] _GEN_254 = 7'h7e == idx_r ? 12'h0 : _GEN_253; // @[FFTTwiddle.scala 51:{36,36}]
  wire [11:0] _GEN_255 = 7'h7f == idx_r ? 12'h0 : _GEN_254; // @[FFTTwiddle.scala 51:{36,36}]
  wire [11:0] _io_wI_T = ~_GEN_255; // @[FFTTwiddle.scala 51:36]
  wire [11:0] _io_wI_T_2 = _io_wI_T + 12'h1; // @[FFTTwiddle.scala 51:45]
  assign io_wR = chg_sign_flag_r ? _io_wR_T_2 : _GEN_127; // @[FFTTwiddle.scala 50:17]
  assign io_wI = chg_sign_flag_i ? _io_wI_T_2 : _GEN_255; // @[FFTTwiddle.scala 51:17]
endmodule
module FFTMultiply(
  input  [17:0] io_a,
  input  [17:0] io_b,
  output [35:0] io_product
);
  wire [17:0] _temp_a_T_1 = ~io_a; // @[FFTMultiply.scala 14:51]
  wire [17:0] _temp_a_T_3 = _temp_a_T_1 + 18'h1; // @[FFTMultiply.scala 14:57]
  wire [17:0] temp_a = io_a[17] ? _temp_a_T_3 : io_a; // @[FFTMultiply.scala 14:21]
  wire [17:0] _temp_b_T_1 = ~io_b; // @[FFTMultiply.scala 15:51]
  wire [17:0] _temp_b_T_3 = _temp_b_T_1 + 18'h1; // @[FFTMultiply.scala 15:57]
  wire [17:0] temp_b = io_b[17] ? _temp_b_T_3 : io_b; // @[FFTMultiply.scala 15:21]
  wire [35:0] long_temp1 = temp_a * temp_b; // @[FFTMultiply.scala 17:29]
  wire [35:0] _long_temp2_T_1 = long_temp1 - 36'h1; // @[FFTMultiply.scala 18:35]
  wire [35:0] long_temp2 = ~_long_temp2_T_1; // @[FFTMultiply.scala 18:22]
  wire [36:0] _io_product_T_17 = {1'h1,long_temp2}; // @[Cat.scala 33:92]
  wire [36:0] _io_product_T_18 = {1'h0,long_temp1}; // @[Cat.scala 33:92]
  wire [36:0] _io_product_T_19 = (io_a[17] ^ io_b[17]) & |long_temp1 ? _io_product_T_17 : _io_product_T_18; // @[FFTMultiply.scala 20:187]
  assign io_product = _io_product_T_19[35:0]; // @[FFTMultiply.scala 20:16]
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
  wire [6:0] fftTwiddle_io_nk; // @[FFT3PipelineCalc.scala 44:28]
  wire [1:0] fftTwiddle_io_twiLutCaseIndex; // @[FFT3PipelineCalc.scala 44:28]
  wire [11:0] fftTwiddle_io_wR; // @[FFT3PipelineCalc.scala 44:28]
  wire [11:0] fftTwiddle_io_wI; // @[FFT3PipelineCalc.scala 44:28]
  wire [17:0] fftMultiply_io_a; // @[FFT3PipelineCalc.scala 59:29]
  wire [17:0] fftMultiply_io_b; // @[FFT3PipelineCalc.scala 59:29]
  wire [35:0] fftMultiply_io_product; // @[FFT3PipelineCalc.scala 59:29]
  wire [15:0] _dataInSRRnd_T_2 = {io_dataInSR[15],io_dataInSR[15:1]}; // @[Cat.scala 33:92]
  wire [15:0] _dataInSRRnd_T_5 = {15'h0,io_dataInSR[0]}; // @[Cat.scala 33:92]
  wire [15:0] dataInSRRnd = _dataInSRRnd_T_2 + _dataInSRRnd_T_5; // @[FFT3PipelineCalc.scala 28:92]
  wire [15:0] _dataInSIRnd_T_2 = {io_dataInSI[15],io_dataInSI[15:1]}; // @[Cat.scala 33:92]
  wire [15:0] _dataInSIRnd_T_5 = {15'h0,io_dataInSI[0]}; // @[Cat.scala 33:92]
  wire [15:0] dataInSIRnd = _dataInSIRnd_T_2 + _dataInSIRnd_T_5; // @[FFT3PipelineCalc.scala 29:92]
  wire [15:0] _dataInTRRnd_T_2 = {io_dataInTR[15],io_dataInTR[15:1]}; // @[Cat.scala 33:92]
  wire [15:0] _dataInTRRnd_T_5 = {15'h0,io_dataInTR[0]}; // @[Cat.scala 33:92]
  wire [15:0] dataInTRRnd = _dataInTRRnd_T_2 + _dataInTRRnd_T_5; // @[FFT3PipelineCalc.scala 30:92]
  wire [15:0] _dataInTIRnd_T_2 = {io_dataInTI[15],io_dataInTI[15:1]}; // @[Cat.scala 33:92]
  wire [15:0] _dataInTIRnd_T_5 = {15'h0,io_dataInTI[0]}; // @[Cat.scala 33:92]
  wire [15:0] dataInTIRnd = _dataInTIRnd_T_2 + _dataInTIRnd_T_5; // @[FFT3PipelineCalc.scala 31:92]
  reg [6:0] nk1c; // @[Reg.scala 35:20]
  reg [15:0] sR2c; // @[Reg.scala 35:20]
  reg [15:0] sI2c; // @[Reg.scala 35:20]
  reg [15:0] tR2c; // @[Reg.scala 35:20]
  reg [15:0] tI2c; // @[Reg.scala 35:20]
  wire [16:0] _wR2c_T_1 = {fftTwiddle_io_wR,5'h0}; // @[Cat.scala 33:92]
  reg [16:0] wR2c; // @[Reg.scala 35:20]
  wire [16:0] _wI2c_T_1 = {fftTwiddle_io_wI,5'h0}; // @[Cat.scala 33:92]
  reg [16:0] wI2c; // @[Reg.scala 35:20]
  wire [1:0] _addTRI_T_2 = tR2c[15] ? 2'h3 : 2'h0; // @[Bitwise.scala 77:12]
  wire [17:0] _addTRI_T_3 = {_addTRI_T_2,tR2c}; // @[Cat.scala 33:92]
  wire [1:0] _addTRI_T_6 = tI2c[15] ? 2'h3 : 2'h0; // @[Bitwise.scala 77:12]
  wire [17:0] _addTRI_T_7 = {_addTRI_T_6,tI2c}; // @[Cat.scala 33:92]
  wire [17:0] _addWRI_T_1 = {wR2c[16],wR2c}; // @[Cat.scala 33:92]
  wire [17:0] _addWRI_T_3 = {wI2c[16],wI2c}; // @[Cat.scala 33:92]
  wire [16:0] _multRPre_T_2 = tR2c[15] ? 17'h1ffff : 17'h0; // @[Bitwise.scala 77:12]
  wire [32:0] _multRPre_T_3 = {_multRPre_T_2,tR2c}; // @[Cat.scala 33:92]
  wire [15:0] _multRPre_T_6 = wR2c[16] ? 16'hffff : 16'h0; // @[Bitwise.scala 77:12]
  wire [32:0] _multRPre_T_7 = {_multRPre_T_6,wR2c}; // @[Cat.scala 33:92]
  wire [65:0] multRPre = _multRPre_T_3 * _multRPre_T_7; // @[FFT3PipelineCalc.scala 65:78]
  wire [32:0] multR = multRPre[32:0]; // @[FFT3PipelineCalc.scala 66:25]
  wire [16:0] _multIPre_T_2 = tI2c[15] ? 17'h1ffff : 17'h0; // @[Bitwise.scala 77:12]
  wire [32:0] _multIPre_T_3 = {_multIPre_T_2,tI2c}; // @[Cat.scala 33:92]
  wire [15:0] _multIPre_T_6 = wI2c[16] ? 16'hffff : 16'h0; // @[Bitwise.scala 77:12]
  wire [32:0] _multIPre_T_7 = {_multIPre_T_6,wI2c}; // @[Cat.scala 33:92]
  wire [65:0] multIPre = _multIPre_T_3 * _multIPre_T_7; // @[FFT3PipelineCalc.scala 68:78]
  wire [32:0] multI = multIPre[32:0]; // @[FFT3PipelineCalc.scala 69:25]
  wire [16:0] _qR2cKernel_T_2 = {multR[32],multR[30:15]}; // @[Cat.scala 33:92]
  wire [16:0] _qR2cKernel_T_5 = {multI[32],multI[30:15]}; // @[Cat.scala 33:92]
  wire [16:0] qR2cKernel = _qR2cKernel_T_2 - _qR2cKernel_T_5; // @[FFT3PipelineCalc.scala 71:108]
  wire [16:0] _qI2cKernel_T_2 = {fftMultiply_io_product[35],fftMultiply_io_product[30:15]}; // @[Cat.scala 33:92]
  wire [16:0] _qI2cKernel_T_7 = _qI2cKernel_T_2 - _qR2cKernel_T_2; // @[FFT3PipelineCalc.scala 72:112]
  wire [16:0] qI2cKernel = _qI2cKernel_T_7 - _qR2cKernel_T_5; // @[FFT3PipelineCalc.scala 72:200]
  wire [16:0] qR2cProc = {tR2c[15],tR2c}; // @[Cat.scala 33:92]
  wire [16:0] _qI2cProc_T_1 = {tI2c[15],tI2c}; // @[Cat.scala 33:92]
  wire [16:0] _qI2cProc_T_2 = ~_qI2cProc_T_1; // @[FFT3PipelineCalc.scala 75:20]
  wire [16:0] qI2cProc = _qI2cProc_T_2 + 17'h1; // @[FFT3PipelineCalc.scala 75:55]
  reg [15:0] sR3c; // @[Reg.scala 35:20]
  reg [15:0] sI3c; // @[Reg.scala 35:20]
  reg [16:0] qR3c; // @[Reg.scala 35:20]
  reg [16:0] qI3c; // @[Reg.scala 35:20]
  wire [1:0] _xR3cPre_T_2 = sR3c[15] ? 2'h3 : 2'h0; // @[Bitwise.scala 77:12]
  wire [17:0] _xR3cPre_T_3 = {_xR3cPre_T_2,sR3c}; // @[Cat.scala 33:92]
  wire [17:0] _xR3cPre_T_5 = {qR3c[16],qR3c}; // @[Cat.scala 33:92]
  wire [17:0] xR3cPre = _xR3cPre_T_3 + _xR3cPre_T_5; // @[FFT3PipelineCalc.scala 86:62]
  wire [1:0] _xI3cPre_T_2 = sI3c[15] ? 2'h3 : 2'h0; // @[Bitwise.scala 77:12]
  wire [17:0] _xI3cPre_T_3 = {_xI3cPre_T_2,sI3c}; // @[Cat.scala 33:92]
  wire [17:0] _xI3cPre_T_5 = {qI3c[16],qI3c}; // @[Cat.scala 33:92]
  wire [17:0] xI3cPre = _xI3cPre_T_3 + _xI3cPre_T_5; // @[FFT3PipelineCalc.scala 87:62]
  wire [14:0] _xR3c_T_6 = xR3cPre[17] ? 15'h7fff : 15'h0; // @[Bitwise.scala 77:12]
  wire [14:0] _xR3c_T_7 = ~_xR3c_T_6; // @[FFT3PipelineCalc.scala 89:108]
  wire [15:0] _xR3c_T_8 = {xR3cPre[17],_xR3c_T_7}; // @[Cat.scala 33:92]
  wire [15:0] _xR3c_T_19 = xR3cPre[17] ^ xR3cPre[15] ? _xR3c_T_8 : xR3cPre[15:0]; // @[FFT3PipelineCalc.scala 89:164]
  wire [14:0] _xI3c_T_6 = xI3cPre[17] ? 15'h7fff : 15'h0; // @[Bitwise.scala 77:12]
  wire [14:0] _xI3c_T_7 = ~_xI3c_T_6; // @[FFT3PipelineCalc.scala 90:108]
  wire [15:0] _xI3c_T_8 = {xI3cPre[17],_xI3c_T_7}; // @[Cat.scala 33:92]
  wire [15:0] _xI3c_T_19 = xI3cPre[17] ^ xI3cPre[15] ? _xI3c_T_8 : xI3cPre[15:0]; // @[FFT3PipelineCalc.scala 90:164]
  wire [17:0] yR3cPre = _xR3cPre_T_3 - _xR3cPre_T_5; // @[FFT3PipelineCalc.scala 95:62]
  wire [17:0] yI3cPre = _xI3cPre_T_3 - _xI3cPre_T_5; // @[FFT3PipelineCalc.scala 96:62]
  wire [14:0] _yR3c_T_6 = yR3cPre[17] ? 15'h7fff : 15'h0; // @[Bitwise.scala 77:12]
  wire [14:0] _yR3c_T_7 = ~_yR3c_T_6; // @[FFT3PipelineCalc.scala 98:108]
  wire [15:0] _yR3c_T_8 = {yR3cPre[17],_yR3c_T_7}; // @[Cat.scala 33:92]
  wire [15:0] _yR3c_T_19 = yR3cPre[17] ^ yR3cPre[15] ? _yR3c_T_8 : yR3cPre[15:0]; // @[FFT3PipelineCalc.scala 98:164]
  wire [14:0] _yI3c_T_6 = yI3cPre[17] ? 15'h7fff : 15'h0; // @[Bitwise.scala 77:12]
  wire [14:0] _yI3c_T_7 = ~_yI3c_T_6; // @[FFT3PipelineCalc.scala 99:108]
  wire [15:0] _yI3c_T_8 = {yI3cPre[17],_yI3c_T_7}; // @[Cat.scala 33:92]
  wire [15:0] _yI3c_T_19 = yI3cPre[17] ^ yI3cPre[15] ? _yI3c_T_8 : yI3cPre[15:0]; // @[FFT3PipelineCalc.scala 99:164]
  FFTTwiddle fftTwiddle ( // @[FFT3PipelineCalc.scala 44:28]
    .io_nk(fftTwiddle_io_nk),
    .io_twiLutCaseIndex(fftTwiddle_io_twiLutCaseIndex),
    .io_wR(fftTwiddle_io_wR),
    .io_wI(fftTwiddle_io_wI)
  );
  FFTMultiply fftMultiply ( // @[FFT3PipelineCalc.scala 59:29]
    .io_a(fftMultiply_io_a),
    .io_b(fftMultiply_io_b),
    .io_product(fftMultiply_io_product)
  );
  assign io_dataOutSR3c = xR3cPre[17] ^ xR3cPre[16] ? _xR3c_T_8 : _xR3c_T_19; // @[FFT3PipelineCalc.scala 89:19]
  assign io_dataOutSI3c = xI3cPre[17] ^ xI3cPre[16] ? _xI3c_T_8 : _xI3c_T_19; // @[FFT3PipelineCalc.scala 90:19]
  assign io_dataOutTR3c = yR3cPre[17] ^ yR3cPre[16] ? _yR3c_T_8 : _yR3c_T_19; // @[FFT3PipelineCalc.scala 98:19]
  assign io_dataOutTI3c = yI3cPre[17] ^ yI3cPre[16] ? _yI3c_T_8 : _yI3c_T_19; // @[FFT3PipelineCalc.scala 99:19]
  assign fftTwiddle_io_nk = nk1c; // @[FFT3PipelineCalc.scala 45:22]
  assign fftTwiddle_io_twiLutCaseIndex = io_isFFT ? 2'h0 : 2'h1; // @[FFT3PipelineCalc.scala 42:30]
  assign fftMultiply_io_a = _addTRI_T_3 + _addTRI_T_7; // @[FFT3PipelineCalc.scala 57:61]
  assign fftMultiply_io_b = _addWRI_T_1 + _addWRI_T_3; // @[FFT3PipelineCalc.scala 58:52]
  always @(posedge clock) begin
    if (reset) begin // @[Reg.scala 35:20]
      nk1c <= 7'h0; // @[Reg.scala 35:20]
    end else begin
      nk1c <= io_nk;
    end
    if (reset) begin // @[Reg.scala 35:20]
      sR2c <= 16'h0; // @[Reg.scala 35:20]
    end else if (io_state1c) begin // @[Reg.scala 36:18]
      if (io_rShiftSym) begin // @[FFT3PipelineCalc.scala 33:25]
        sR2c <= dataInSRRnd;
      end else begin
        sR2c <= io_dataInSR;
      end
    end
    if (reset) begin // @[Reg.scala 35:20]
      sI2c <= 16'h0; // @[Reg.scala 35:20]
    end else if (io_state1c) begin // @[Reg.scala 36:18]
      if (io_rShiftSym) begin // @[FFT3PipelineCalc.scala 34:25]
        sI2c <= dataInSIRnd;
      end else begin
        sI2c <= io_dataInSI;
      end
    end
    if (reset) begin // @[Reg.scala 35:20]
      tR2c <= 16'h0; // @[Reg.scala 35:20]
    end else if (io_state1c) begin // @[Reg.scala 36:18]
      if (io_rShiftSym) begin // @[FFT3PipelineCalc.scala 35:25]
        tR2c <= dataInTRRnd;
      end else begin
        tR2c <= io_dataInTR;
      end
    end
    if (reset) begin // @[Reg.scala 35:20]
      tI2c <= 16'h0; // @[Reg.scala 35:20]
    end else if (io_state1c) begin // @[Reg.scala 36:18]
      if (io_rShiftSym) begin // @[FFT3PipelineCalc.scala 36:25]
        tI2c <= dataInTIRnd;
      end else begin
        tI2c <= io_dataInTI;
      end
    end
    if (reset) begin // @[Reg.scala 35:20]
      wR2c <= 17'h0; // @[Reg.scala 35:20]
    end else if (io_state1c) begin // @[Reg.scala 36:18]
      wR2c <= _wR2c_T_1; // @[Reg.scala 36:22]
    end
    if (reset) begin // @[Reg.scala 35:20]
      wI2c <= 17'h0; // @[Reg.scala 35:20]
    end else if (io_state1c) begin // @[Reg.scala 36:18]
      wI2c <= _wI2c_T_1; // @[Reg.scala 36:22]
    end
    if (reset) begin // @[Reg.scala 35:20]
      sR3c <= 16'h0; // @[Reg.scala 35:20]
    end else if (io_state2c) begin // @[Reg.scala 36:18]
      sR3c <= sR2c; // @[Reg.scala 36:22]
    end
    if (reset) begin // @[Reg.scala 35:20]
      sI3c <= 16'h0; // @[Reg.scala 35:20]
    end else if (io_state2c) begin // @[Reg.scala 36:18]
      sI3c <= sI2c; // @[Reg.scala 36:22]
    end
    if (reset) begin // @[Reg.scala 35:20]
      qR3c <= 17'h0; // @[Reg.scala 35:20]
    end else if (io_state2c) begin // @[Reg.scala 36:18]
      if (io_procMode) begin // @[FFT3PipelineCalc.scala 77:19]
        qR3c <= qR2cProc;
      end else begin
        qR3c <= qR2cKernel;
      end
    end
    if (reset) begin // @[Reg.scala 35:20]
      qI3c <= 17'h0; // @[Reg.scala 35:20]
    end else if (io_state2c) begin // @[Reg.scala 36:18]
      if (io_procMode) begin // @[FFT3PipelineCalc.scala 78:19]
        qI3c <= qI2cProc;
      end else begin
        qI3c <= qI2cKernel;
      end
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
  tR2c = _RAND_3[15:0];
  _RAND_4 = {1{`RANDOM}};
  tI2c = _RAND_4[15:0];
  _RAND_5 = {1{`RANDOM}};
  wR2c = _RAND_5[16:0];
  _RAND_6 = {1{`RANDOM}};
  wI2c = _RAND_6[16:0];
  _RAND_7 = {1{`RANDOM}};
  sR3c = _RAND_7[15:0];
  _RAND_8 = {1{`RANDOM}};
  sI3c = _RAND_8[15:0];
  _RAND_9 = {1{`RANDOM}};
  qR3c = _RAND_9[16:0];
  _RAND_10 = {1{`RANDOM}};
  qI3c = _RAND_10[16:0];
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
  input  [31:0] io_readDataSram0Bank_4,
  input  [31:0] io_readDataSram0Bank_5,
  input  [31:0] io_readDataSram0Bank_6,
  input  [31:0] io_readDataSram0Bank_7,
  input  [31:0] io_readDataSram1Bank_0,
  input  [31:0] io_readDataSram1Bank_1,
  input  [31:0] io_readDataSram1Bank_2,
  input  [31:0] io_readDataSram1Bank_3,
  input  [31:0] io_readDataSram1Bank_4,
  input  [31:0] io_readDataSram1Bank_5,
  input  [31:0] io_readDataSram1Bank_6,
  input  [31:0] io_readDataSram1Bank_7,
  output        io_readEnableSram0Bank_0,
  output        io_readEnableSram0Bank_1,
  output        io_readEnableSram0Bank_2,
  output        io_readEnableSram0Bank_3,
  output        io_readEnableSram0Bank_4,
  output        io_readEnableSram0Bank_5,
  output        io_readEnableSram0Bank_6,
  output        io_readEnableSram0Bank_7,
  output        io_readEnableSram1Bank_0,
  output        io_readEnableSram1Bank_1,
  output        io_readEnableSram1Bank_2,
  output        io_readEnableSram1Bank_3,
  output        io_readEnableSram1Bank_4,
  output        io_readEnableSram1Bank_5,
  output        io_readEnableSram1Bank_6,
  output        io_readEnableSram1Bank_7,
  output [31:0] io_writeDataSram0Bank_0,
  output [31:0] io_writeDataSram0Bank_1,
  output [31:0] io_writeDataSram0Bank_2,
  output [31:0] io_writeDataSram0Bank_3,
  output [31:0] io_writeDataSram0Bank_4,
  output [31:0] io_writeDataSram0Bank_5,
  output [31:0] io_writeDataSram0Bank_6,
  output [31:0] io_writeDataSram0Bank_7,
  output [31:0] io_writeDataSram1Bank_0,
  output [31:0] io_writeDataSram1Bank_1,
  output [31:0] io_writeDataSram1Bank_2,
  output [31:0] io_writeDataSram1Bank_3,
  output [31:0] io_writeDataSram1Bank_4,
  output [31:0] io_writeDataSram1Bank_5,
  output [31:0] io_writeDataSram1Bank_6,
  output [31:0] io_writeDataSram1Bank_7,
  output        io_writeEnableSram0Bank_0,
  output        io_writeEnableSram0Bank_1,
  output        io_writeEnableSram0Bank_2,
  output        io_writeEnableSram0Bank_3,
  output        io_writeEnableSram0Bank_4,
  output        io_writeEnableSram0Bank_5,
  output        io_writeEnableSram0Bank_6,
  output        io_writeEnableSram0Bank_7,
  output        io_writeEnableSram1Bank_0,
  output        io_writeEnableSram1Bank_1,
  output        io_writeEnableSram1Bank_2,
  output        io_writeEnableSram1Bank_3,
  output        io_writeEnableSram1Bank_4,
  output        io_writeEnableSram1Bank_5,
  output        io_writeEnableSram1Bank_6,
  output        io_writeEnableSram1Bank_7,
  output [3:0]  io_addrSram0Bank_0,
  output [3:0]  io_addrSram0Bank_1,
  output [3:0]  io_addrSram0Bank_2,
  output [3:0]  io_addrSram0Bank_3,
  output [3:0]  io_addrSram0Bank_4,
  output [3:0]  io_addrSram0Bank_5,
  output [3:0]  io_addrSram0Bank_6,
  output [3:0]  io_addrSram0Bank_7,
  output [3:0]  io_addrSram1Bank_0,
  output [3:0]  io_addrSram1Bank_1,
  output [3:0]  io_addrSram1Bank_2,
  output [3:0]  io_addrSram1Bank_3,
  output [3:0]  io_addrSram1Bank_4,
  output [3:0]  io_addrSram1Bank_5,
  output [3:0]  io_addrSram1Bank_6,
  output [3:0]  io_addrSram1Bank_7,
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
  reg [31:0] _RAND_54;
  reg [31:0] _RAND_55;
  reg [31:0] _RAND_56;
  reg [31:0] _RAND_57;
  reg [31:0] _RAND_58;
  reg [31:0] _RAND_59;
  reg [31:0] _RAND_60;
  reg [31:0] _RAND_61;
  reg [31:0] _RAND_62;
  reg [31:0] _RAND_63;
  reg [31:0] _RAND_64;
  reg [31:0] _RAND_65;
  reg [31:0] _RAND_66;
  reg [31:0] _RAND_67;
  reg [31:0] _RAND_68;
  reg [31:0] _RAND_69;
  reg [31:0] _RAND_70;
  reg [31:0] _RAND_71;
  reg [31:0] _RAND_72;
  reg [31:0] _RAND_73;
  reg [31:0] _RAND_74;
  reg [31:0] _RAND_75;
  reg [31:0] _RAND_76;
  reg [31:0] _RAND_77;
  reg [31:0] _RAND_78;
  reg [31:0] _RAND_79;
  reg [31:0] _RAND_80;
  reg [31:0] _RAND_81;
  reg [31:0] _RAND_82;
  reg [31:0] _RAND_83;
  reg [31:0] _RAND_84;
  reg [31:0] _RAND_85;
  reg [31:0] _RAND_86;
  reg [31:0] _RAND_87;
  reg [31:0] _RAND_88;
  reg [31:0] _RAND_89;
  reg [31:0] _RAND_90;
  reg [31:0] _RAND_91;
  reg [31:0] _RAND_92;
  reg [31:0] _RAND_93;
`endif // RANDOMIZE_REG_INIT
  wire  fftCalc_clock; // @[FFTEngine.scala 394:29]
  wire  fftCalc_reset; // @[FFTEngine.scala 394:29]
  wire [15:0] fftCalc_io_dataInSR; // @[FFTEngine.scala 394:29]
  wire [15:0] fftCalc_io_dataInSI; // @[FFTEngine.scala 394:29]
  wire [15:0] fftCalc_io_dataInTR; // @[FFTEngine.scala 394:29]
  wire [15:0] fftCalc_io_dataInTI; // @[FFTEngine.scala 394:29]
  wire [15:0] fftCalc_io_dataOutSR3c; // @[FFTEngine.scala 394:29]
  wire [15:0] fftCalc_io_dataOutSI3c; // @[FFTEngine.scala 394:29]
  wire [15:0] fftCalc_io_dataOutTR3c; // @[FFTEngine.scala 394:29]
  wire [15:0] fftCalc_io_dataOutTI3c; // @[FFTEngine.scala 394:29]
  wire [6:0] fftCalc_io_nk; // @[FFTEngine.scala 394:29]
  wire  fftCalc_io_rShiftSym; // @[FFTEngine.scala 394:29]
  wire  fftCalc_io_isFFT; // @[FFTEngine.scala 394:29]
  wire  fftCalc_io_procMode; // @[FFTEngine.scala 394:29]
  wire  fftCalc_io_state1c; // @[FFTEngine.scala 394:29]
  wire  fftCalc_io_state2c; // @[FFTEngine.scala 394:29]
  wire  fftCalc_1_clock; // @[FFTEngine.scala 394:29]
  wire  fftCalc_1_reset; // @[FFTEngine.scala 394:29]
  wire [15:0] fftCalc_1_io_dataInSR; // @[FFTEngine.scala 394:29]
  wire [15:0] fftCalc_1_io_dataInSI; // @[FFTEngine.scala 394:29]
  wire [15:0] fftCalc_1_io_dataInTR; // @[FFTEngine.scala 394:29]
  wire [15:0] fftCalc_1_io_dataInTI; // @[FFTEngine.scala 394:29]
  wire [15:0] fftCalc_1_io_dataOutSR3c; // @[FFTEngine.scala 394:29]
  wire [15:0] fftCalc_1_io_dataOutSI3c; // @[FFTEngine.scala 394:29]
  wire [15:0] fftCalc_1_io_dataOutTR3c; // @[FFTEngine.scala 394:29]
  wire [15:0] fftCalc_1_io_dataOutTI3c; // @[FFTEngine.scala 394:29]
  wire [6:0] fftCalc_1_io_nk; // @[FFTEngine.scala 394:29]
  wire  fftCalc_1_io_rShiftSym; // @[FFTEngine.scala 394:29]
  wire  fftCalc_1_io_isFFT; // @[FFTEngine.scala 394:29]
  wire  fftCalc_1_io_procMode; // @[FFTEngine.scala 394:29]
  wire  fftCalc_1_io_state1c; // @[FFTEngine.scala 394:29]
  wire  fftCalc_1_io_state2c; // @[FFTEngine.scala 394:29]
  wire  fftCalc_2_clock; // @[FFTEngine.scala 394:29]
  wire  fftCalc_2_reset; // @[FFTEngine.scala 394:29]
  wire [15:0] fftCalc_2_io_dataInSR; // @[FFTEngine.scala 394:29]
  wire [15:0] fftCalc_2_io_dataInSI; // @[FFTEngine.scala 394:29]
  wire [15:0] fftCalc_2_io_dataInTR; // @[FFTEngine.scala 394:29]
  wire [15:0] fftCalc_2_io_dataInTI; // @[FFTEngine.scala 394:29]
  wire [15:0] fftCalc_2_io_dataOutSR3c; // @[FFTEngine.scala 394:29]
  wire [15:0] fftCalc_2_io_dataOutSI3c; // @[FFTEngine.scala 394:29]
  wire [15:0] fftCalc_2_io_dataOutTR3c; // @[FFTEngine.scala 394:29]
  wire [15:0] fftCalc_2_io_dataOutTI3c; // @[FFTEngine.scala 394:29]
  wire [6:0] fftCalc_2_io_nk; // @[FFTEngine.scala 394:29]
  wire  fftCalc_2_io_rShiftSym; // @[FFTEngine.scala 394:29]
  wire  fftCalc_2_io_isFFT; // @[FFTEngine.scala 394:29]
  wire  fftCalc_2_io_procMode; // @[FFTEngine.scala 394:29]
  wire  fftCalc_2_io_state1c; // @[FFTEngine.scala 394:29]
  wire  fftCalc_2_io_state2c; // @[FFTEngine.scala 394:29]
  wire  fftCalc_3_clock; // @[FFTEngine.scala 394:29]
  wire  fftCalc_3_reset; // @[FFTEngine.scala 394:29]
  wire [15:0] fftCalc_3_io_dataInSR; // @[FFTEngine.scala 394:29]
  wire [15:0] fftCalc_3_io_dataInSI; // @[FFTEngine.scala 394:29]
  wire [15:0] fftCalc_3_io_dataInTR; // @[FFTEngine.scala 394:29]
  wire [15:0] fftCalc_3_io_dataInTI; // @[FFTEngine.scala 394:29]
  wire [15:0] fftCalc_3_io_dataOutSR3c; // @[FFTEngine.scala 394:29]
  wire [15:0] fftCalc_3_io_dataOutSI3c; // @[FFTEngine.scala 394:29]
  wire [15:0] fftCalc_3_io_dataOutTR3c; // @[FFTEngine.scala 394:29]
  wire [15:0] fftCalc_3_io_dataOutTI3c; // @[FFTEngine.scala 394:29]
  wire [6:0] fftCalc_3_io_nk; // @[FFTEngine.scala 394:29]
  wire  fftCalc_3_io_rShiftSym; // @[FFTEngine.scala 394:29]
  wire  fftCalc_3_io_isFFT; // @[FFTEngine.scala 394:29]
  wire  fftCalc_3_io_procMode; // @[FFTEngine.scala 394:29]
  wire  fftCalc_3_io_state1c; // @[FFTEngine.scala 394:29]
  wire  fftCalc_3_io_state2c; // @[FFTEngine.scala 394:29]
  wire  isFFT = ~io_fftMode; // @[FFTEngine.scala 43:17]
  reg [2:0] stateReg; // @[FFTEngine.scala 45:27]
  reg [6:0] addrSProc; // @[FFTEngine.scala 47:29]
  reg [2:0] phaseCount; // @[FFTEngine.scala 49:29]
  wire  _T_2 = addrSProc == 7'hf; // @[FFTEngine.scala 60:29]
  wire  _T_4 = addrSProc == 7'h3; // @[FFTEngine.scala 67:29]
  wire [2:0] _GEN_2 = addrSProc == 7'h3 ? 3'h3 : stateReg; // @[FFTEngine.scala 67:45 68:26 70:26]
  wire  _T_6 = phaseCount == 3'h6; // @[FFTEngine.scala 74:29]
  wire [2:0] _stateReg_T_1 = isFFT ? 3'h4 : 3'h7; // @[FFTEngine.scala 75:32]
  wire [2:0] _GEN_3 = phaseCount == 3'h6 ? _stateReg_T_1 : 3'h1; // @[FFTEngine.scala 74:46 75:26 77:26]
  wire  _T_8 = addrSProc == 7'h3f; // @[FFTEngine.scala 81:29]
  wire [2:0] _GEN_4 = addrSProc == 7'h3f ? 3'h5 : stateReg; // @[FFTEngine.scala 81:47 82:26 84:26]
  wire [2:0] _GEN_5 = _T_4 ? 3'h6 : stateReg; // @[FFTEngine.scala 88:46 89:26 91:26]
  wire  _T_12 = phaseCount == 3'h1; // @[FFTEngine.scala 95:29]
  wire [2:0] _stateReg_T_2 = isFFT ? 3'h7 : 3'h1; // @[FFTEngine.scala 96:32]
  wire [2:0] _GEN_6 = phaseCount == 3'h1 ? _stateReg_T_2 : 3'h4; // @[FFTEngine.scala 95:47 96:26 98:26]
  wire [2:0] _GEN_7 = 3'h7 == stateReg ? 3'h0 : stateReg; // @[FFTEngine.scala 102:22 51:22 45:27]
  wire [2:0] _GEN_8 = 3'h6 == stateReg ? _GEN_6 : _GEN_7; // @[FFTEngine.scala 51:22]
  wire [2:0] _GEN_9 = 3'h5 == stateReg ? _GEN_5 : _GEN_8; // @[FFTEngine.scala 51:22]
  wire [2:0] _GEN_10 = 3'h4 == stateReg ? _GEN_4 : _GEN_9; // @[FFTEngine.scala 51:22]
  wire [2:0] _GEN_11 = 3'h3 == stateReg ? _GEN_3 : _GEN_10; // @[FFTEngine.scala 51:22]
  wire  _radixInit_T = stateReg == 3'h0; // @[FFTEngine.scala 106:31]
  wire  _radixInit_T_1 = stateReg == 3'h1; // @[FFTEngine.scala 107:16]
  wire  _radixInit_T_3 = stateReg == 3'h1 & _T_2; // @[FFTEngine.scala 107:30]
  wire  _radixInit_T_4 = stateReg == 3'h0 | _radixInit_T_3; // @[FFTEngine.scala 106:45]
  wire  _radixInit_T_5 = stateReg == 3'h2; // @[FFTEngine.scala 108:16]
  wire  _radixInit_T_7 = stateReg == 3'h2 & _T_4; // @[FFTEngine.scala 108:31]
  wire  _radixInit_T_8 = _radixInit_T_4 | _radixInit_T_7; // @[FFTEngine.scala 107:63]
  wire  _radixInit_T_9 = stateReg == 3'h3; // @[FFTEngine.scala 109:15]
  wire  _radixInit_T_10 = _radixInit_T_8 | _radixInit_T_9; // @[FFTEngine.scala 108:63]
  wire  _radixInit_T_11 = stateReg == 3'h4; // @[FFTEngine.scala 110:16]
  wire  _radixInit_T_13 = stateReg == 3'h4 & _T_8; // @[FFTEngine.scala 110:28]
  wire  _radixInit_T_14 = _radixInit_T_10 | _radixInit_T_13; // @[FFTEngine.scala 109:32]
  wire  _radixInit_T_15 = stateReg == 3'h5; // @[FFTEngine.scala 111:16]
  wire  _radixInit_T_17 = stateReg == 3'h5 & _T_4; // @[FFTEngine.scala 111:29]
  wire  _radixInit_T_18 = _radixInit_T_14 | _radixInit_T_17; // @[FFTEngine.scala 110:62]
  wire  _radixInit_T_19 = stateReg == 3'h6; // @[FFTEngine.scala 112:15]
  wire  _radixInit_T_20 = _radixInit_T_18 | _radixInit_T_19; // @[FFTEngine.scala 111:62]
  wire  _radixInit_T_21 = stateReg == 3'h7; // @[FFTEngine.scala 113:15]
  wire  radixInit = _radixInit_T_20 | _radixInit_T_21; // @[FFTEngine.scala 112:30]
  wire  _radixUp_T_4 = _radixInit_T_1 | _radixInit_T_5 | _radixInit_T_11; // @[FFTEngine.scala 115:70]
  wire  radixUp = _radixUp_T_4 | _radixInit_T_15; // @[FFTEngine.scala 116:27]
  wire [6:0] _radixCount_T_1 = addrSProc + 7'h1; // @[FFTEngine.scala 122:34]
  wire  _phaseInit_T_3 = _radixInit_T_9 & _T_6; // @[FFTEngine.scala 128:33]
  wire  _phaseInit_T_4 = _radixInit_T | _phaseInit_T_3; // @[FFTEngine.scala 127:45]
  wire  _phaseInit_T_7 = _radixInit_T_19 & _T_12; // @[FFTEngine.scala 129:31]
  wire  _phaseInit_T_8 = _phaseInit_T_4 | _phaseInit_T_7; // @[FFTEngine.scala 128:65]
  wire  phaseInit = _phaseInit_T_8 | _radixInit_T_21; // @[FFTEngine.scala 129:64]
  wire  phaseUp = _radixInit_T_9 | _radixInit_T_19; // @[FFTEngine.scala 132:46]
  wire [2:0] _phaseCount_T_1 = phaseCount + 3'h1; // @[FFTEngine.scala 137:34]
  reg  srcBuffer; // @[FFTEngine.scala 142:28]
  wire  _srcBufferNext_T_3 = ~srcBuffer; // @[FFTEngine.scala 144:79]
  wire  srcBufferNext = phaseUp & ~srcBuffer; // @[FFTEngine.scala 144:77]
  wire  srcUp = _radixInit_T | _radixInit_T_9 | _radixInit_T_19; // @[FFTEngine.scala 146:70]
  wire  readEnable = _radixInit_T_1 | _radixInit_T_11; // @[FFTEngine.scala 157:34]
  wire [3:0] radixCountTemp = addrSProc[3:0]; // @[FFTEngine.scala 159:36]
  wire [4:0] _nk_0_T_1 = {1'h0,radixCountTemp}; // @[Cat.scala 33:92]
  wire [4:0] _nk_1_T_1 = {1'h1,radixCountTemp}; // @[Cat.scala 33:92]
  wire [5:0] _nk_2_T_1 = {2'h2,radixCountTemp}; // @[Cat.scala 33:92]
  wire [5:0] _nk_3_T_1 = {2'h3,radixCountTemp}; // @[Cat.scala 33:92]
  wire  _T_15 = phaseCount == 3'h5; // @[FFTEngine.scala 186:32]
  wire [4:0] _nk_0_T_3 = {1'h0,addrSProc[3:1],1'h0}; // @[Cat.scala 33:92]
  wire [4:0] _nk_1_T_3 = {1'h1,addrSProc[3:1],1'h0}; // @[Cat.scala 33:92]
  wire [5:0] _nk_2_T_3 = {2'h2,addrSProc[3:1],1'h0}; // @[Cat.scala 33:92]
  wire [5:0] _nk_3_T_3 = {2'h3,addrSProc[3:1],1'h0}; // @[Cat.scala 33:92]
  wire [7:0] _nk_0_T_5 = {addrSProc[5:0],2'h0}; // @[Cat.scala 33:92]
  wire [6:0] _nk_0_T_8 = 7'h3f >> phaseCount; // @[FFTEngine.scala 197:164]
  wire [6:0] _nk_0_T_9 = ~_nk_0_T_8; // @[FFTEngine.scala 197:102]
  wire [7:0] _GEN_1100 = {{1'd0}, _nk_0_T_9}; // @[FFTEngine.scala 197:100]
  wire [7:0] _nk_0_T_10 = _nk_0_T_5 & _GEN_1100; // @[FFTEngine.scala 197:100]
  wire [7:0] _nk_1_T_5 = {addrSProc[5:0],2'h1}; // @[Cat.scala 33:92]
  wire [7:0] _nk_1_T_10 = _nk_1_T_5 & _GEN_1100; // @[FFTEngine.scala 197:100]
  wire [7:0] _nk_2_T_5 = {addrSProc[5:0],2'h2}; // @[Cat.scala 33:92]
  wire [7:0] _nk_2_T_10 = _nk_2_T_5 & _GEN_1100; // @[FFTEngine.scala 197:100]
  wire [7:0] _nk_3_T_5 = {addrSProc[5:0],2'h3}; // @[Cat.scala 33:92]
  wire [7:0] _nk_3_T_10 = _nk_3_T_5 & _GEN_1100; // @[FFTEngine.scala 197:100]
  wire [7:0] _GEN_20 = phaseCount == 3'h5 ? {{3'd0}, _nk_0_T_3} : _nk_0_T_10; // @[FFTEngine.scala 186:51 191:27 197:23]
  wire [7:0] _GEN_21 = phaseCount == 3'h5 ? {{3'd0}, _nk_1_T_3} : _nk_1_T_10; // @[FFTEngine.scala 186:51 191:27 197:23]
  wire [7:0] _GEN_22 = phaseCount == 3'h5 ? {{2'd0}, _nk_2_T_3} : _nk_2_T_10; // @[FFTEngine.scala 186:51 191:27 197:23]
  wire [7:0] _GEN_23 = phaseCount == 3'h5 ? {{2'd0}, _nk_3_T_3} : _nk_3_T_10; // @[FFTEngine.scala 186:51 191:27 197:23]
  wire [7:0] nk_0 = _T_6 ? {{3'd0}, _nk_0_T_1} : _GEN_20; // @[FFTEngine.scala 182:42 184:23]
  wire [7:0] nk_1 = _T_6 ? {{3'd0}, _nk_1_T_1} : _GEN_21; // @[FFTEngine.scala 182:42 184:23]
  wire [7:0] nk_2 = _T_6 ? {{2'd0}, _nk_2_T_1} : _GEN_22; // @[FFTEngine.scala 182:42 184:23]
  wire [7:0] nk_3 = _T_6 ? {{2'd0}, _nk_3_T_1} : _GEN_23; // @[FFTEngine.scala 182:42 184:23]
  wire [13:0] addrSKernelPre_0_dataTemp = {3'h0,radixCountTemp,3'h0,radixCountTemp}; // @[Cat.scala 33:92]
  wire [13:0] addrTKernelPre_0_dataTemp = {3'h4,radixCountTemp,3'h4,radixCountTemp}; // @[Cat.scala 33:92]
  wire [13:0] addrSKernelPre_1_dataTemp = {3'h1,radixCountTemp,3'h1,radixCountTemp}; // @[Cat.scala 33:92]
  wire [13:0] addrTKernelPre_1_dataTemp = {3'h5,radixCountTemp,3'h5,radixCountTemp}; // @[Cat.scala 33:92]
  wire [13:0] addrSKernelPre_2_dataTemp = {3'h2,radixCountTemp,3'h2,radixCountTemp}; // @[Cat.scala 33:92]
  wire [13:0] addrTKernelPre_2_dataTemp = {3'h6,radixCountTemp,3'h6,radixCountTemp}; // @[Cat.scala 33:92]
  wire [13:0] addrSKernelPre_3_dataTemp = {3'h3,radixCountTemp,3'h3,radixCountTemp}; // @[Cat.scala 33:92]
  wire [13:0] addrTKernelPre_3_dataTemp = {3'h7,radixCountTemp,3'h7,radixCountTemp}; // @[Cat.scala 33:92]
  wire [13:0] addrSKernelPre_0_dataTemp_1 = {{1'd0}, addrSKernelPre_0_dataTemp[13:1]}; // @[FFTEngine.scala 208:40]
  wire [13:0] addrTKernelPre_0_dataTemp_1 = {{1'd0}, addrTKernelPre_0_dataTemp[13:1]}; // @[FFTEngine.scala 208:40]
  wire [13:0] addrSKernelPre_1_dataTemp_1 = {{1'd0}, addrSKernelPre_1_dataTemp[13:1]}; // @[FFTEngine.scala 208:40]
  wire [13:0] addrTKernelPre_1_dataTemp_1 = {{1'd0}, addrTKernelPre_1_dataTemp[13:1]}; // @[FFTEngine.scala 208:40]
  wire [13:0] addrSKernelPre_2_dataTemp_1 = {{1'd0}, addrSKernelPre_2_dataTemp[13:1]}; // @[FFTEngine.scala 208:40]
  wire [13:0] addrTKernelPre_2_dataTemp_1 = {{1'd0}, addrTKernelPre_2_dataTemp[13:1]}; // @[FFTEngine.scala 208:40]
  wire [13:0] addrSKernelPre_3_dataTemp_1 = {{1'd0}, addrSKernelPre_3_dataTemp[13:1]}; // @[FFTEngine.scala 208:40]
  wire [13:0] addrTKernelPre_3_dataTemp_1 = {{1'd0}, addrTKernelPre_3_dataTemp[13:1]}; // @[FFTEngine.scala 208:40]
  wire [13:0] _addrSKernelPre_0_dataTemp_T_2 = {radixCountTemp,2'h0,1'h0,radixCountTemp,2'h0,1'h0}; // @[Cat.scala 33:92]
  wire [20:0] _GEN_24 = {{7'd0}, _addrSKernelPre_0_dataTemp_T_2}; // @[FFTEngine.scala 203:40]
  wire [20:0] addrSKernelPre_0_dataTemp_2 = _GEN_24 << phaseCount; // @[FFTEngine.scala 203:40]
  wire [13:0] _addrTKernelPre_0_dataTemp_T_2 = {radixCountTemp,2'h0,1'h1,radixCountTemp,2'h0,1'h1}; // @[Cat.scala 33:92]
  wire [20:0] _GEN_25 = {{7'd0}, _addrTKernelPre_0_dataTemp_T_2}; // @[FFTEngine.scala 203:40]
  wire [20:0] addrTKernelPre_0_dataTemp_2 = _GEN_25 << phaseCount; // @[FFTEngine.scala 203:40]
  wire [13:0] _addrSKernelPre_1_dataTemp_T_2 = {radixCountTemp,2'h1,1'h0,radixCountTemp,2'h1,1'h0}; // @[Cat.scala 33:92]
  wire [20:0] _GEN_26 = {{7'd0}, _addrSKernelPre_1_dataTemp_T_2}; // @[FFTEngine.scala 203:40]
  wire [20:0] addrSKernelPre_1_dataTemp_2 = _GEN_26 << phaseCount; // @[FFTEngine.scala 203:40]
  wire [13:0] _addrTKernelPre_1_dataTemp_T_2 = {radixCountTemp,2'h1,1'h1,radixCountTemp,2'h1,1'h1}; // @[Cat.scala 33:92]
  wire [20:0] _GEN_27 = {{7'd0}, _addrTKernelPre_1_dataTemp_T_2}; // @[FFTEngine.scala 203:40]
  wire [20:0] addrTKernelPre_1_dataTemp_2 = _GEN_27 << phaseCount; // @[FFTEngine.scala 203:40]
  wire [13:0] _addrSKernelPre_2_dataTemp_T_2 = {radixCountTemp,2'h2,1'h0,radixCountTemp,2'h2,1'h0}; // @[Cat.scala 33:92]
  wire [20:0] _GEN_36 = {{7'd0}, _addrSKernelPre_2_dataTemp_T_2}; // @[FFTEngine.scala 203:40]
  wire [20:0] addrSKernelPre_2_dataTemp_2 = _GEN_36 << phaseCount; // @[FFTEngine.scala 203:40]
  wire [13:0] _addrTKernelPre_2_dataTemp_T_2 = {radixCountTemp,2'h2,1'h1,radixCountTemp,2'h2,1'h1}; // @[Cat.scala 33:92]
  wire [20:0] _GEN_37 = {{7'd0}, _addrTKernelPre_2_dataTemp_T_2}; // @[FFTEngine.scala 203:40]
  wire [20:0] addrTKernelPre_2_dataTemp_2 = _GEN_37 << phaseCount; // @[FFTEngine.scala 203:40]
  wire [13:0] _addrSKernelPre_3_dataTemp_T_2 = {radixCountTemp,2'h3,1'h0,radixCountTemp,2'h3,1'h0}; // @[Cat.scala 33:92]
  wire [20:0] _GEN_38 = {{7'd0}, _addrSKernelPre_3_dataTemp_T_2}; // @[FFTEngine.scala 203:40]
  wire [20:0] addrSKernelPre_3_dataTemp_2 = _GEN_38 << phaseCount; // @[FFTEngine.scala 203:40]
  wire [13:0] _addrTKernelPre_3_dataTemp_T_2 = {radixCountTemp,2'h3,1'h1,radixCountTemp,2'h3,1'h1}; // @[Cat.scala 33:92]
  wire [20:0] _GEN_39 = {{7'd0}, _addrTKernelPre_3_dataTemp_T_2}; // @[FFTEngine.scala 203:40]
  wire [20:0] addrTKernelPre_3_dataTemp_2 = _GEN_39 << phaseCount; // @[FFTEngine.scala 203:40]
  wire [6:0] _GEN_28 = _T_15 ? addrSKernelPre_0_dataTemp_1[6:0] : addrSKernelPre_0_dataTemp_2[13:7]; // @[FFTEngine.scala 236:51 238:35 243:35]
  wire [6:0] _GEN_29 = _T_15 ? addrTKernelPre_0_dataTemp_1[6:0] : addrTKernelPre_0_dataTemp_2[13:7]; // @[FFTEngine.scala 236:51 239:35 244:35]
  wire [6:0] _GEN_30 = _T_15 ? addrSKernelPre_1_dataTemp_1[6:0] : addrSKernelPre_1_dataTemp_2[13:7]; // @[FFTEngine.scala 236:51 238:35 243:35]
  wire [6:0] _GEN_31 = _T_15 ? addrTKernelPre_1_dataTemp_1[6:0] : addrTKernelPre_1_dataTemp_2[13:7]; // @[FFTEngine.scala 236:51 239:35 244:35]
  wire [6:0] _GEN_32 = _T_15 ? addrSKernelPre_2_dataTemp_1[6:0] : addrSKernelPre_2_dataTemp_2[13:7]; // @[FFTEngine.scala 236:51 238:35 243:35]
  wire [6:0] _GEN_33 = _T_15 ? addrTKernelPre_2_dataTemp_1[6:0] : addrTKernelPre_2_dataTemp_2[13:7]; // @[FFTEngine.scala 236:51 239:35 244:35]
  wire [6:0] _GEN_34 = _T_15 ? addrSKernelPre_3_dataTemp_1[6:0] : addrSKernelPre_3_dataTemp_2[13:7]; // @[FFTEngine.scala 236:51 238:35 243:35]
  wire [6:0] _GEN_35 = _T_15 ? addrTKernelPre_3_dataTemp_1[6:0] : addrTKernelPre_3_dataTemp_2[13:7]; // @[FFTEngine.scala 236:51 239:35 244:35]
  wire [6:0] addrSKernelPre_0 = _T_6 ? addrSKernelPre_0_dataTemp[6:0] : _GEN_28; // @[FFTEngine.scala 231:42 233:35]
  wire [6:0] addrTKernelPre_0 = _T_6 ? addrTKernelPre_0_dataTemp[6:0] : _GEN_29; // @[FFTEngine.scala 231:42 234:35]
  wire [6:0] addrSKernelPre_1 = _T_6 ? addrSKernelPre_1_dataTemp[6:0] : _GEN_30; // @[FFTEngine.scala 231:42 233:35]
  wire [6:0] addrTKernelPre_1 = _T_6 ? addrTKernelPre_1_dataTemp[6:0] : _GEN_31; // @[FFTEngine.scala 231:42 234:35]
  wire [6:0] addrSKernelPre_2 = _T_6 ? addrSKernelPre_2_dataTemp[6:0] : _GEN_32; // @[FFTEngine.scala 231:42 233:35]
  wire [6:0] addrTKernelPre_2 = _T_6 ? addrTKernelPre_2_dataTemp[6:0] : _GEN_33; // @[FFTEngine.scala 231:42 234:35]
  wire [6:0] addrSKernelPre_3 = _T_6 ? addrSKernelPre_3_dataTemp[6:0] : _GEN_34; // @[FFTEngine.scala 231:42 233:35]
  wire [6:0] addrTKernelPre_3 = _T_6 ? addrTKernelPre_3_dataTemp[6:0] : _GEN_35; // @[FFTEngine.scala 231:42 234:35]
  wire [6:0] _addrTProc_T = ~addrSProc; // @[FFTEngine.scala 250:22]
  wire [6:0] addrTProc = _addrTProc_T + 7'h1; // @[FFTEngine.scala 250:34]
  wire  addrS_0_temp_0 = isFFT ? addrSProc[6] : addrSProc[0]; // @[FFTEngine.scala 163:26]
  wire  addrS_0_temp_1 = isFFT ? addrSProc[5] : addrSProc[1]; // @[FFTEngine.scala 163:26]
  wire  addrS_0_temp_2 = isFFT ? addrSProc[4] : addrSProc[2]; // @[FFTEngine.scala 163:26]
  wire  addrS_0_temp_3 = isFFT ? addrSProc[3] : addrSProc[3]; // @[FFTEngine.scala 163:26]
  wire  addrS_0_temp_4 = isFFT ? addrSProc[2] : addrSProc[4]; // @[FFTEngine.scala 163:26]
  wire  addrS_0_temp_5 = isFFT ? addrSProc[1] : addrSProc[5]; // @[FFTEngine.scala 163:26]
  wire  addrS_0_temp_6 = isFFT ? addrSProc[0] : addrSProc[6]; // @[FFTEngine.scala 163:26]
  wire [6:0] _addrS_0_T = {addrS_0_temp_6,addrS_0_temp_5,addrS_0_temp_4,addrS_0_temp_3,addrS_0_temp_2,addrS_0_temp_1,
    addrS_0_temp_0}; // @[FFTEngine.scala 164:23]
  wire  addrS_0_temp_0_1 = addrSKernelPre_0[6]; // @[FFTEngine.scala 163:34]
  wire  addrS_0_temp_1_1 = addrSKernelPre_0[5]; // @[FFTEngine.scala 163:34]
  wire  addrS_0_temp_2_1 = addrSKernelPre_0[4]; // @[FFTEngine.scala 163:34]
  wire  addrS_0_temp_3_1 = addrSKernelPre_0[3]; // @[FFTEngine.scala 163:34]
  wire [6:0] _addrS_0_T_1 = {addrSKernelPre_0[0],addrSKernelPre_0[1],addrSKernelPre_0[2],addrS_0_temp_3_1,
    addrS_0_temp_2_1,addrS_0_temp_1_1,addrS_0_temp_0_1}; // @[FFTEngine.scala 164:23]
  wire [6:0] addrS_0 = _radixInit_T_11 ? _addrS_0_T : _addrS_0_T_1; // @[FFTEngine.scala 256:28]
  wire  addrT_0_temp_0 = isFFT ? addrTProc[6] : addrTProc[0]; // @[FFTEngine.scala 163:26]
  wire  addrT_0_temp_1 = isFFT ? addrTProc[5] : addrTProc[1]; // @[FFTEngine.scala 163:26]
  wire  addrT_0_temp_2 = isFFT ? addrTProc[4] : addrTProc[2]; // @[FFTEngine.scala 163:26]
  wire  addrT_0_temp_3 = isFFT ? addrTProc[3] : addrTProc[3]; // @[FFTEngine.scala 163:26]
  wire  addrT_0_temp_4 = isFFT ? addrTProc[2] : addrTProc[4]; // @[FFTEngine.scala 163:26]
  wire  addrT_0_temp_5 = isFFT ? addrTProc[1] : addrTProc[5]; // @[FFTEngine.scala 163:26]
  wire  addrT_0_temp_6 = isFFT ? addrTProc[0] : addrTProc[6]; // @[FFTEngine.scala 163:26]
  wire [6:0] _addrT_0_T = {addrT_0_temp_6,addrT_0_temp_5,addrT_0_temp_4,addrT_0_temp_3,addrT_0_temp_2,addrT_0_temp_1,
    addrT_0_temp_0}; // @[FFTEngine.scala 164:23]
  wire  addrT_0_temp_0_1 = addrTKernelPre_0[6]; // @[FFTEngine.scala 163:34]
  wire  addrT_0_temp_1_1 = addrTKernelPre_0[5]; // @[FFTEngine.scala 163:34]
  wire  addrT_0_temp_2_1 = addrTKernelPre_0[4]; // @[FFTEngine.scala 163:34]
  wire  addrT_0_temp_3_1 = addrTKernelPre_0[3]; // @[FFTEngine.scala 163:34]
  wire [6:0] _addrT_0_T_1 = {addrTKernelPre_0[0],addrTKernelPre_0[1],addrTKernelPre_0[2],addrT_0_temp_3_1,
    addrT_0_temp_2_1,addrT_0_temp_1_1,addrT_0_temp_0_1}; // @[FFTEngine.scala 164:23]
  wire [6:0] addrT_0 = _radixInit_T_11 ? _addrT_0_T : _addrT_0_T_1; // @[FFTEngine.scala 257:28]
  wire  addrS_1_temp_0 = addrSKernelPre_1[6]; // @[FFTEngine.scala 163:34]
  wire  addrS_1_temp_1 = addrSKernelPre_1[5]; // @[FFTEngine.scala 163:34]
  wire  addrS_1_temp_2 = addrSKernelPre_1[4]; // @[FFTEngine.scala 163:34]
  wire  addrS_1_temp_3 = addrSKernelPre_1[3]; // @[FFTEngine.scala 163:34]
  wire [6:0] addrS_1 = {addrSKernelPre_1[0],addrSKernelPre_1[1],addrSKernelPre_1[2],addrS_1_temp_3,addrS_1_temp_2,
    addrS_1_temp_1,addrS_1_temp_0}; // @[FFTEngine.scala 164:23]
  wire  addrT_1_temp_0 = addrTKernelPre_1[6]; // @[FFTEngine.scala 163:34]
  wire  addrT_1_temp_1 = addrTKernelPre_1[5]; // @[FFTEngine.scala 163:34]
  wire  addrT_1_temp_2 = addrTKernelPre_1[4]; // @[FFTEngine.scala 163:34]
  wire  addrT_1_temp_3 = addrTKernelPre_1[3]; // @[FFTEngine.scala 163:34]
  wire [6:0] addrT_1 = {addrTKernelPre_1[0],addrTKernelPre_1[1],addrTKernelPre_1[2],addrT_1_temp_3,addrT_1_temp_2,
    addrT_1_temp_1,addrT_1_temp_0}; // @[FFTEngine.scala 164:23]
  wire  addrS_2_temp_0 = addrSKernelPre_2[6]; // @[FFTEngine.scala 163:34]
  wire  addrS_2_temp_1 = addrSKernelPre_2[5]; // @[FFTEngine.scala 163:34]
  wire  addrS_2_temp_2 = addrSKernelPre_2[4]; // @[FFTEngine.scala 163:34]
  wire  addrS_2_temp_3 = addrSKernelPre_2[3]; // @[FFTEngine.scala 163:34]
  wire [6:0] addrS_2 = {addrSKernelPre_2[0],addrSKernelPre_2[1],addrSKernelPre_2[2],addrS_2_temp_3,addrS_2_temp_2,
    addrS_2_temp_1,addrS_2_temp_0}; // @[FFTEngine.scala 164:23]
  wire  addrT_2_temp_0 = addrTKernelPre_2[6]; // @[FFTEngine.scala 163:34]
  wire  addrT_2_temp_1 = addrTKernelPre_2[5]; // @[FFTEngine.scala 163:34]
  wire  addrT_2_temp_2 = addrTKernelPre_2[4]; // @[FFTEngine.scala 163:34]
  wire  addrT_2_temp_3 = addrTKernelPre_2[3]; // @[FFTEngine.scala 163:34]
  wire [6:0] addrT_2 = {addrTKernelPre_2[0],addrTKernelPre_2[1],addrTKernelPre_2[2],addrT_2_temp_3,addrT_2_temp_2,
    addrT_2_temp_1,addrT_2_temp_0}; // @[FFTEngine.scala 164:23]
  wire  addrS_3_temp_0 = addrSKernelPre_3[6]; // @[FFTEngine.scala 163:34]
  wire  addrS_3_temp_1 = addrSKernelPre_3[5]; // @[FFTEngine.scala 163:34]
  wire  addrS_3_temp_2 = addrSKernelPre_3[4]; // @[FFTEngine.scala 163:34]
  wire  addrS_3_temp_3 = addrSKernelPre_3[3]; // @[FFTEngine.scala 163:34]
  wire [6:0] addrS_3 = {addrSKernelPre_3[0],addrSKernelPre_3[1],addrSKernelPre_3[2],addrS_3_temp_3,addrS_3_temp_2,
    addrS_3_temp_1,addrS_3_temp_0}; // @[FFTEngine.scala 164:23]
  wire  addrT_3_temp_0 = addrTKernelPre_3[6]; // @[FFTEngine.scala 163:34]
  wire  addrT_3_temp_1 = addrTKernelPre_3[5]; // @[FFTEngine.scala 163:34]
  wire  addrT_3_temp_2 = addrTKernelPre_3[4]; // @[FFTEngine.scala 163:34]
  wire  addrT_3_temp_3 = addrTKernelPre_3[3]; // @[FFTEngine.scala 163:34]
  wire [6:0] addrT_3 = {addrTKernelPre_3[0],addrTKernelPre_3[1],addrTKernelPre_3[2],addrT_3_temp_3,addrT_3_temp_2,
    addrT_3_temp_1,addrT_3_temp_0}; // @[FFTEngine.scala 164:23]
  wire  sameAddr = addrS_0 == addrT_0; // @[FFTEngine.scala 264:29]
  wire [6:0] _addrSBankSelKernelPrePre_sum_T = {{2'd0}, addrS_0[6:2]}; // @[FFTEngine.scala 267:115]
  wire [2:0] _GEN_1113 = {{2'd0}, _addrSBankSelKernelPrePre_sum_T[0]}; // @[FFTEngine.scala 267:107]
  wire [3:0] _addrSBankSelKernelPrePre_sum_T_2 = {{1'd0}, _GEN_1113}; // @[FFTEngine.scala 267:107]
  wire [6:0] _addrSBankSelKernelPrePre_sum_T_4 = {{5'd0}, addrS_0[6:5]}; // @[FFTEngine.scala 267:115]
  wire [2:0] _GEN_1115 = {{2'd0}, _addrSBankSelKernelPrePre_sum_T_4[0]}; // @[FFTEngine.scala 267:107]
  wire [2:0] addrSBankSelKernelPrePre_0_0 = _addrSBankSelKernelPrePre_sum_T_2[2:0] + _GEN_1115; // @[FFTEngine.scala 267:107]
  wire [6:0] _addrSBankSelKernelPrePre_sum_T_7 = {{1'd0}, addrS_0[6:1]}; // @[FFTEngine.scala 267:115]
  wire [2:0] _GEN_1117 = {{2'd0}, _addrSBankSelKernelPrePre_sum_T_7[0]}; // @[FFTEngine.scala 267:107]
  wire [3:0] _addrSBankSelKernelPrePre_sum_T_9 = {{1'd0}, _GEN_1117}; // @[FFTEngine.scala 267:107]
  wire [6:0] _addrSBankSelKernelPrePre_sum_T_11 = {{4'd0}, addrS_0[6:4]}; // @[FFTEngine.scala 267:115]
  wire [2:0] _GEN_1119 = {{2'd0}, _addrSBankSelKernelPrePre_sum_T_11[0]}; // @[FFTEngine.scala 267:107]
  wire [2:0] addrSBankSelKernelPrePre_0_1 = _addrSBankSelKernelPrePre_sum_T_9[2:0] + _GEN_1119; // @[FFTEngine.scala 267:107]
  wire [2:0] _GEN_1120 = {{2'd0}, addrS_0[0]}; // @[FFTEngine.scala 267:107]
  wire [3:0] _addrSBankSelKernelPrePre_sum_T_16 = {{1'd0}, _GEN_1120}; // @[FFTEngine.scala 267:107]
  wire [6:0] _addrSBankSelKernelPrePre_sum_T_18 = {{3'd0}, addrS_0[6:3]}; // @[FFTEngine.scala 267:115]
  wire [2:0] _GEN_1122 = {{2'd0}, _addrSBankSelKernelPrePre_sum_T_18[0]}; // @[FFTEngine.scala 267:107]
  wire [2:0] _addrSBankSelKernelPrePre_sum_T_21 = _addrSBankSelKernelPrePre_sum_T_16[2:0] + _GEN_1122; // @[FFTEngine.scala 267:107]
  wire [6:0] _addrSBankSelKernelPrePre_sum_T_22 = {{6'd0}, addrS_0[6]}; // @[FFTEngine.scala 267:115]
  wire [2:0] _GEN_1124 = {{2'd0}, _addrSBankSelKernelPrePre_sum_T_22[0]}; // @[FFTEngine.scala 267:107]
  wire [2:0] addrSBankSelKernelPrePre_0_2 = _addrSBankSelKernelPrePre_sum_T_21 + _GEN_1124; // @[FFTEngine.scala 267:107]
  wire [6:0] _addrSBankSelKernelPrePre_sum_T_25 = {{2'd0}, addrS_1[6:2]}; // @[FFTEngine.scala 267:115]
  wire [2:0] _GEN_1126 = {{2'd0}, _addrSBankSelKernelPrePre_sum_T_25[0]}; // @[FFTEngine.scala 267:107]
  wire [3:0] _addrSBankSelKernelPrePre_sum_T_27 = {{1'd0}, _GEN_1126}; // @[FFTEngine.scala 267:107]
  wire [6:0] _addrSBankSelKernelPrePre_sum_T_29 = {{5'd0}, addrS_1[6:5]}; // @[FFTEngine.scala 267:115]
  wire [2:0] _GEN_1128 = {{2'd0}, _addrSBankSelKernelPrePre_sum_T_29[0]}; // @[FFTEngine.scala 267:107]
  wire [2:0] addrSBankSelKernelPrePre_1_0 = _addrSBankSelKernelPrePre_sum_T_27[2:0] + _GEN_1128; // @[FFTEngine.scala 267:107]
  wire [6:0] _addrSBankSelKernelPrePre_sum_T_32 = {{1'd0}, addrS_1[6:1]}; // @[FFTEngine.scala 267:115]
  wire [2:0] _GEN_1130 = {{2'd0}, _addrSBankSelKernelPrePre_sum_T_32[0]}; // @[FFTEngine.scala 267:107]
  wire [3:0] _addrSBankSelKernelPrePre_sum_T_34 = {{1'd0}, _GEN_1130}; // @[FFTEngine.scala 267:107]
  wire [6:0] _addrSBankSelKernelPrePre_sum_T_36 = {{4'd0}, addrS_1[6:4]}; // @[FFTEngine.scala 267:115]
  wire [2:0] _GEN_1132 = {{2'd0}, _addrSBankSelKernelPrePre_sum_T_36[0]}; // @[FFTEngine.scala 267:107]
  wire [2:0] addrSBankSelKernelPrePre_1_1 = _addrSBankSelKernelPrePre_sum_T_34[2:0] + _GEN_1132; // @[FFTEngine.scala 267:107]
  wire [2:0] _GEN_1133 = {{2'd0}, addrS_1[0]}; // @[FFTEngine.scala 267:107]
  wire [3:0] _addrSBankSelKernelPrePre_sum_T_41 = {{1'd0}, _GEN_1133}; // @[FFTEngine.scala 267:107]
  wire [6:0] _addrSBankSelKernelPrePre_sum_T_43 = {{3'd0}, addrS_1[6:3]}; // @[FFTEngine.scala 267:115]
  wire [2:0] _GEN_1135 = {{2'd0}, _addrSBankSelKernelPrePre_sum_T_43[0]}; // @[FFTEngine.scala 267:107]
  wire [2:0] _addrSBankSelKernelPrePre_sum_T_46 = _addrSBankSelKernelPrePre_sum_T_41[2:0] + _GEN_1135; // @[FFTEngine.scala 267:107]
  wire [6:0] _addrSBankSelKernelPrePre_sum_T_47 = {{6'd0}, addrS_1[6]}; // @[FFTEngine.scala 267:115]
  wire [2:0] _GEN_1137 = {{2'd0}, _addrSBankSelKernelPrePre_sum_T_47[0]}; // @[FFTEngine.scala 267:107]
  wire [2:0] addrSBankSelKernelPrePre_1_2 = _addrSBankSelKernelPrePre_sum_T_46 + _GEN_1137; // @[FFTEngine.scala 267:107]
  wire [6:0] _addrSBankSelKernelPrePre_sum_T_50 = {{2'd0}, addrS_2[6:2]}; // @[FFTEngine.scala 267:115]
  wire [2:0] _GEN_1139 = {{2'd0}, _addrSBankSelKernelPrePre_sum_T_50[0]}; // @[FFTEngine.scala 267:107]
  wire [3:0] _addrSBankSelKernelPrePre_sum_T_52 = {{1'd0}, _GEN_1139}; // @[FFTEngine.scala 267:107]
  wire [6:0] _addrSBankSelKernelPrePre_sum_T_54 = {{5'd0}, addrS_2[6:5]}; // @[FFTEngine.scala 267:115]
  wire [2:0] _GEN_1141 = {{2'd0}, _addrSBankSelKernelPrePre_sum_T_54[0]}; // @[FFTEngine.scala 267:107]
  wire [2:0] addrSBankSelKernelPrePre_2_0 = _addrSBankSelKernelPrePre_sum_T_52[2:0] + _GEN_1141; // @[FFTEngine.scala 267:107]
  wire [6:0] _addrSBankSelKernelPrePre_sum_T_57 = {{1'd0}, addrS_2[6:1]}; // @[FFTEngine.scala 267:115]
  wire [2:0] _GEN_1143 = {{2'd0}, _addrSBankSelKernelPrePre_sum_T_57[0]}; // @[FFTEngine.scala 267:107]
  wire [3:0] _addrSBankSelKernelPrePre_sum_T_59 = {{1'd0}, _GEN_1143}; // @[FFTEngine.scala 267:107]
  wire [6:0] _addrSBankSelKernelPrePre_sum_T_61 = {{4'd0}, addrS_2[6:4]}; // @[FFTEngine.scala 267:115]
  wire [2:0] _GEN_1145 = {{2'd0}, _addrSBankSelKernelPrePre_sum_T_61[0]}; // @[FFTEngine.scala 267:107]
  wire [2:0] addrSBankSelKernelPrePre_2_1 = _addrSBankSelKernelPrePre_sum_T_59[2:0] + _GEN_1145; // @[FFTEngine.scala 267:107]
  wire [2:0] _GEN_1146 = {{2'd0}, addrS_2[0]}; // @[FFTEngine.scala 267:107]
  wire [3:0] _addrSBankSelKernelPrePre_sum_T_66 = {{1'd0}, _GEN_1146}; // @[FFTEngine.scala 267:107]
  wire [6:0] _addrSBankSelKernelPrePre_sum_T_68 = {{3'd0}, addrS_2[6:3]}; // @[FFTEngine.scala 267:115]
  wire [2:0] _GEN_1148 = {{2'd0}, _addrSBankSelKernelPrePre_sum_T_68[0]}; // @[FFTEngine.scala 267:107]
  wire [2:0] _addrSBankSelKernelPrePre_sum_T_71 = _addrSBankSelKernelPrePre_sum_T_66[2:0] + _GEN_1148; // @[FFTEngine.scala 267:107]
  wire [6:0] _addrSBankSelKernelPrePre_sum_T_72 = {{6'd0}, addrS_2[6]}; // @[FFTEngine.scala 267:115]
  wire [2:0] _GEN_1150 = {{2'd0}, _addrSBankSelKernelPrePre_sum_T_72[0]}; // @[FFTEngine.scala 267:107]
  wire [2:0] addrSBankSelKernelPrePre_2_2 = _addrSBankSelKernelPrePre_sum_T_71 + _GEN_1150; // @[FFTEngine.scala 267:107]
  wire [6:0] _addrSBankSelKernelPrePre_sum_T_75 = {{2'd0}, addrS_3[6:2]}; // @[FFTEngine.scala 267:115]
  wire [2:0] _GEN_1152 = {{2'd0}, _addrSBankSelKernelPrePre_sum_T_75[0]}; // @[FFTEngine.scala 267:107]
  wire [3:0] _addrSBankSelKernelPrePre_sum_T_77 = {{1'd0}, _GEN_1152}; // @[FFTEngine.scala 267:107]
  wire [6:0] _addrSBankSelKernelPrePre_sum_T_79 = {{5'd0}, addrS_3[6:5]}; // @[FFTEngine.scala 267:115]
  wire [2:0] _GEN_1154 = {{2'd0}, _addrSBankSelKernelPrePre_sum_T_79[0]}; // @[FFTEngine.scala 267:107]
  wire [2:0] addrSBankSelKernelPrePre_3_0 = _addrSBankSelKernelPrePre_sum_T_77[2:0] + _GEN_1154; // @[FFTEngine.scala 267:107]
  wire [6:0] _addrSBankSelKernelPrePre_sum_T_82 = {{1'd0}, addrS_3[6:1]}; // @[FFTEngine.scala 267:115]
  wire [2:0] _GEN_1156 = {{2'd0}, _addrSBankSelKernelPrePre_sum_T_82[0]}; // @[FFTEngine.scala 267:107]
  wire [3:0] _addrSBankSelKernelPrePre_sum_T_84 = {{1'd0}, _GEN_1156}; // @[FFTEngine.scala 267:107]
  wire [6:0] _addrSBankSelKernelPrePre_sum_T_86 = {{4'd0}, addrS_3[6:4]}; // @[FFTEngine.scala 267:115]
  wire [2:0] _GEN_1158 = {{2'd0}, _addrSBankSelKernelPrePre_sum_T_86[0]}; // @[FFTEngine.scala 267:107]
  wire [2:0] addrSBankSelKernelPrePre_3_1 = _addrSBankSelKernelPrePre_sum_T_84[2:0] + _GEN_1158; // @[FFTEngine.scala 267:107]
  wire [2:0] _GEN_1159 = {{2'd0}, addrS_3[0]}; // @[FFTEngine.scala 267:107]
  wire [3:0] _addrSBankSelKernelPrePre_sum_T_91 = {{1'd0}, _GEN_1159}; // @[FFTEngine.scala 267:107]
  wire [6:0] _addrSBankSelKernelPrePre_sum_T_93 = {{3'd0}, addrS_3[6:3]}; // @[FFTEngine.scala 267:115]
  wire [2:0] _GEN_1161 = {{2'd0}, _addrSBankSelKernelPrePre_sum_T_93[0]}; // @[FFTEngine.scala 267:107]
  wire [2:0] _addrSBankSelKernelPrePre_sum_T_96 = _addrSBankSelKernelPrePre_sum_T_91[2:0] + _GEN_1161; // @[FFTEngine.scala 267:107]
  wire [6:0] _addrSBankSelKernelPrePre_sum_T_97 = {{6'd0}, addrS_3[6]}; // @[FFTEngine.scala 267:115]
  wire [2:0] _GEN_1163 = {{2'd0}, _addrSBankSelKernelPrePre_sum_T_97[0]}; // @[FFTEngine.scala 267:107]
  wire [2:0] addrSBankSelKernelPrePre_3_2 = _addrSBankSelKernelPrePre_sum_T_96 + _GEN_1163; // @[FFTEngine.scala 267:107]
  wire [3:0] _addrSBankSelKernelPre_T_1 = {{1'd0}, addrSBankSelKernelPrePre_0_0}; // @[FFTEngine.scala 273:144]
  wire [3:0] _addrSBankSelKernelPre_T_3 = {_addrSBankSelKernelPre_T_1[2:0], 1'h0}; // @[FFTEngine.scala 273:138]
  wire [3:0] _GEN_1164 = {{1'd0}, addrSBankSelKernelPrePre_0_1}; // @[FFTEngine.scala 273:144]
  wire [3:0] _addrSBankSelKernelPre_T_5 = _addrSBankSelKernelPre_T_3 + _GEN_1164; // @[FFTEngine.scala 273:144]
  wire [4:0] _addrSBankSelKernelPre_T_6 = {_addrSBankSelKernelPre_T_5, 1'h0}; // @[FFTEngine.scala 273:138]
  wire [4:0] _GEN_1165 = {{2'd0}, addrSBankSelKernelPrePre_0_2}; // @[FFTEngine.scala 273:144]
  wire [4:0] _addrSBankSelKernelPre_T_8 = _addrSBankSelKernelPre_T_6 + _GEN_1165; // @[FFTEngine.scala 273:144]
  wire [3:0] _addrSBankSelKernelPre_T_10 = {{1'd0}, addrSBankSelKernelPrePre_1_0}; // @[FFTEngine.scala 273:144]
  wire [3:0] _addrSBankSelKernelPre_T_12 = {_addrSBankSelKernelPre_T_10[2:0], 1'h0}; // @[FFTEngine.scala 273:138]
  wire [3:0] _GEN_1166 = {{1'd0}, addrSBankSelKernelPrePre_1_1}; // @[FFTEngine.scala 273:144]
  wire [3:0] _addrSBankSelKernelPre_T_14 = _addrSBankSelKernelPre_T_12 + _GEN_1166; // @[FFTEngine.scala 273:144]
  wire [4:0] _addrSBankSelKernelPre_T_15 = {_addrSBankSelKernelPre_T_14, 1'h0}; // @[FFTEngine.scala 273:138]
  wire [4:0] _GEN_1167 = {{2'd0}, addrSBankSelKernelPrePre_1_2}; // @[FFTEngine.scala 273:144]
  wire [4:0] _addrSBankSelKernelPre_T_17 = _addrSBankSelKernelPre_T_15 + _GEN_1167; // @[FFTEngine.scala 273:144]
  wire [3:0] _addrSBankSelKernelPre_T_19 = {{1'd0}, addrSBankSelKernelPrePre_2_0}; // @[FFTEngine.scala 273:144]
  wire [3:0] _addrSBankSelKernelPre_T_21 = {_addrSBankSelKernelPre_T_19[2:0], 1'h0}; // @[FFTEngine.scala 273:138]
  wire [3:0] _GEN_1168 = {{1'd0}, addrSBankSelKernelPrePre_2_1}; // @[FFTEngine.scala 273:144]
  wire [3:0] _addrSBankSelKernelPre_T_23 = _addrSBankSelKernelPre_T_21 + _GEN_1168; // @[FFTEngine.scala 273:144]
  wire [4:0] _addrSBankSelKernelPre_T_24 = {_addrSBankSelKernelPre_T_23, 1'h0}; // @[FFTEngine.scala 273:138]
  wire [4:0] _GEN_1169 = {{2'd0}, addrSBankSelKernelPrePre_2_2}; // @[FFTEngine.scala 273:144]
  wire [4:0] _addrSBankSelKernelPre_T_26 = _addrSBankSelKernelPre_T_24 + _GEN_1169; // @[FFTEngine.scala 273:144]
  wire [3:0] _addrSBankSelKernelPre_T_28 = {{1'd0}, addrSBankSelKernelPrePre_3_0}; // @[FFTEngine.scala 273:144]
  wire [3:0] _addrSBankSelKernelPre_T_30 = {_addrSBankSelKernelPre_T_28[2:0], 1'h0}; // @[FFTEngine.scala 273:138]
  wire [3:0] _GEN_1170 = {{1'd0}, addrSBankSelKernelPrePre_3_1}; // @[FFTEngine.scala 273:144]
  wire [3:0] _addrSBankSelKernelPre_T_32 = _addrSBankSelKernelPre_T_30 + _GEN_1170; // @[FFTEngine.scala 273:144]
  wire [4:0] _addrSBankSelKernelPre_T_33 = {_addrSBankSelKernelPre_T_32, 1'h0}; // @[FFTEngine.scala 273:138]
  wire [4:0] _GEN_1171 = {{2'd0}, addrSBankSelKernelPrePre_3_2}; // @[FFTEngine.scala 273:144]
  wire [4:0] _addrSBankSelKernelPre_T_35 = _addrSBankSelKernelPre_T_33 + _GEN_1171; // @[FFTEngine.scala 273:144]
  wire [2:0] addrSBankSelKernelPre_0 = _addrSBankSelKernelPre_T_8[2:0]; // @[FFTEngine.scala 273:160]
  wire [2:0] addrSBankSelKernelPre_1 = _addrSBankSelKernelPre_T_17[2:0]; // @[FFTEngine.scala 273:160]
  wire [2:0] addrSBankSelKernelPre_2 = _addrSBankSelKernelPre_T_26[2:0]; // @[FFTEngine.scala 273:160]
  wire [2:0] addrSBankSelKernelPre_3 = _addrSBankSelKernelPre_T_35[2:0]; // @[FFTEngine.scala 273:160]
  wire [6:0] _addrTBankSelKernelPrePre_sum_T = {{2'd0}, addrT_0[6:2]}; // @[FFTEngine.scala 267:115]
  wire [2:0] _GEN_1173 = {{2'd0}, _addrTBankSelKernelPrePre_sum_T[0]}; // @[FFTEngine.scala 267:107]
  wire [3:0] _addrTBankSelKernelPrePre_sum_T_2 = {{1'd0}, _GEN_1173}; // @[FFTEngine.scala 267:107]
  wire [6:0] _addrTBankSelKernelPrePre_sum_T_4 = {{5'd0}, addrT_0[6:5]}; // @[FFTEngine.scala 267:115]
  wire [2:0] _GEN_1175 = {{2'd0}, _addrTBankSelKernelPrePre_sum_T_4[0]}; // @[FFTEngine.scala 267:107]
  wire [2:0] addrTBankSelKernelPrePre_0_0 = _addrTBankSelKernelPrePre_sum_T_2[2:0] + _GEN_1175; // @[FFTEngine.scala 267:107]
  wire [6:0] _addrTBankSelKernelPrePre_sum_T_7 = {{1'd0}, addrT_0[6:1]}; // @[FFTEngine.scala 267:115]
  wire [2:0] _GEN_1177 = {{2'd0}, _addrTBankSelKernelPrePre_sum_T_7[0]}; // @[FFTEngine.scala 267:107]
  wire [3:0] _addrTBankSelKernelPrePre_sum_T_9 = {{1'd0}, _GEN_1177}; // @[FFTEngine.scala 267:107]
  wire [6:0] _addrTBankSelKernelPrePre_sum_T_11 = {{4'd0}, addrT_0[6:4]}; // @[FFTEngine.scala 267:115]
  wire [2:0] _GEN_1179 = {{2'd0}, _addrTBankSelKernelPrePre_sum_T_11[0]}; // @[FFTEngine.scala 267:107]
  wire [2:0] addrTBankSelKernelPrePre_0_1 = _addrTBankSelKernelPrePre_sum_T_9[2:0] + _GEN_1179; // @[FFTEngine.scala 267:107]
  wire [2:0] _GEN_1180 = {{2'd0}, addrT_0[0]}; // @[FFTEngine.scala 267:107]
  wire [3:0] _addrTBankSelKernelPrePre_sum_T_16 = {{1'd0}, _GEN_1180}; // @[FFTEngine.scala 267:107]
  wire [6:0] _addrTBankSelKernelPrePre_sum_T_18 = {{3'd0}, addrT_0[6:3]}; // @[FFTEngine.scala 267:115]
  wire [2:0] _GEN_1182 = {{2'd0}, _addrTBankSelKernelPrePre_sum_T_18[0]}; // @[FFTEngine.scala 267:107]
  wire [2:0] _addrTBankSelKernelPrePre_sum_T_21 = _addrTBankSelKernelPrePre_sum_T_16[2:0] + _GEN_1182; // @[FFTEngine.scala 267:107]
  wire [6:0] _addrTBankSelKernelPrePre_sum_T_22 = {{6'd0}, addrT_0[6]}; // @[FFTEngine.scala 267:115]
  wire [2:0] _GEN_1184 = {{2'd0}, _addrTBankSelKernelPrePre_sum_T_22[0]}; // @[FFTEngine.scala 267:107]
  wire [2:0] addrTBankSelKernelPrePre_0_2 = _addrTBankSelKernelPrePre_sum_T_21 + _GEN_1184; // @[FFTEngine.scala 267:107]
  wire [6:0] _addrTBankSelKernelPrePre_sum_T_25 = {{2'd0}, addrT_1[6:2]}; // @[FFTEngine.scala 267:115]
  wire [2:0] _GEN_1186 = {{2'd0}, _addrTBankSelKernelPrePre_sum_T_25[0]}; // @[FFTEngine.scala 267:107]
  wire [3:0] _addrTBankSelKernelPrePre_sum_T_27 = {{1'd0}, _GEN_1186}; // @[FFTEngine.scala 267:107]
  wire [6:0] _addrTBankSelKernelPrePre_sum_T_29 = {{5'd0}, addrT_1[6:5]}; // @[FFTEngine.scala 267:115]
  wire [2:0] _GEN_1188 = {{2'd0}, _addrTBankSelKernelPrePre_sum_T_29[0]}; // @[FFTEngine.scala 267:107]
  wire [2:0] addrTBankSelKernelPrePre_1_0 = _addrTBankSelKernelPrePre_sum_T_27[2:0] + _GEN_1188; // @[FFTEngine.scala 267:107]
  wire [6:0] _addrTBankSelKernelPrePre_sum_T_32 = {{1'd0}, addrT_1[6:1]}; // @[FFTEngine.scala 267:115]
  wire [2:0] _GEN_1190 = {{2'd0}, _addrTBankSelKernelPrePre_sum_T_32[0]}; // @[FFTEngine.scala 267:107]
  wire [3:0] _addrTBankSelKernelPrePre_sum_T_34 = {{1'd0}, _GEN_1190}; // @[FFTEngine.scala 267:107]
  wire [6:0] _addrTBankSelKernelPrePre_sum_T_36 = {{4'd0}, addrT_1[6:4]}; // @[FFTEngine.scala 267:115]
  wire [2:0] _GEN_1192 = {{2'd0}, _addrTBankSelKernelPrePre_sum_T_36[0]}; // @[FFTEngine.scala 267:107]
  wire [2:0] addrTBankSelKernelPrePre_1_1 = _addrTBankSelKernelPrePre_sum_T_34[2:0] + _GEN_1192; // @[FFTEngine.scala 267:107]
  wire [2:0] _GEN_1193 = {{2'd0}, addrT_1[0]}; // @[FFTEngine.scala 267:107]
  wire [3:0] _addrTBankSelKernelPrePre_sum_T_41 = {{1'd0}, _GEN_1193}; // @[FFTEngine.scala 267:107]
  wire [6:0] _addrTBankSelKernelPrePre_sum_T_43 = {{3'd0}, addrT_1[6:3]}; // @[FFTEngine.scala 267:115]
  wire [2:0] _GEN_1195 = {{2'd0}, _addrTBankSelKernelPrePre_sum_T_43[0]}; // @[FFTEngine.scala 267:107]
  wire [2:0] _addrTBankSelKernelPrePre_sum_T_46 = _addrTBankSelKernelPrePre_sum_T_41[2:0] + _GEN_1195; // @[FFTEngine.scala 267:107]
  wire [6:0] _addrTBankSelKernelPrePre_sum_T_47 = {{6'd0}, addrT_1[6]}; // @[FFTEngine.scala 267:115]
  wire [2:0] _GEN_1197 = {{2'd0}, _addrTBankSelKernelPrePre_sum_T_47[0]}; // @[FFTEngine.scala 267:107]
  wire [2:0] addrTBankSelKernelPrePre_1_2 = _addrTBankSelKernelPrePre_sum_T_46 + _GEN_1197; // @[FFTEngine.scala 267:107]
  wire [6:0] _addrTBankSelKernelPrePre_sum_T_50 = {{2'd0}, addrT_2[6:2]}; // @[FFTEngine.scala 267:115]
  wire [2:0] _GEN_1199 = {{2'd0}, _addrTBankSelKernelPrePre_sum_T_50[0]}; // @[FFTEngine.scala 267:107]
  wire [3:0] _addrTBankSelKernelPrePre_sum_T_52 = {{1'd0}, _GEN_1199}; // @[FFTEngine.scala 267:107]
  wire [6:0] _addrTBankSelKernelPrePre_sum_T_54 = {{5'd0}, addrT_2[6:5]}; // @[FFTEngine.scala 267:115]
  wire [2:0] _GEN_1201 = {{2'd0}, _addrTBankSelKernelPrePre_sum_T_54[0]}; // @[FFTEngine.scala 267:107]
  wire [2:0] addrTBankSelKernelPrePre_2_0 = _addrTBankSelKernelPrePre_sum_T_52[2:0] + _GEN_1201; // @[FFTEngine.scala 267:107]
  wire [6:0] _addrTBankSelKernelPrePre_sum_T_57 = {{1'd0}, addrT_2[6:1]}; // @[FFTEngine.scala 267:115]
  wire [2:0] _GEN_1203 = {{2'd0}, _addrTBankSelKernelPrePre_sum_T_57[0]}; // @[FFTEngine.scala 267:107]
  wire [3:0] _addrTBankSelKernelPrePre_sum_T_59 = {{1'd0}, _GEN_1203}; // @[FFTEngine.scala 267:107]
  wire [6:0] _addrTBankSelKernelPrePre_sum_T_61 = {{4'd0}, addrT_2[6:4]}; // @[FFTEngine.scala 267:115]
  wire [2:0] _GEN_1205 = {{2'd0}, _addrTBankSelKernelPrePre_sum_T_61[0]}; // @[FFTEngine.scala 267:107]
  wire [2:0] addrTBankSelKernelPrePre_2_1 = _addrTBankSelKernelPrePre_sum_T_59[2:0] + _GEN_1205; // @[FFTEngine.scala 267:107]
  wire [2:0] _GEN_1206 = {{2'd0}, addrT_2[0]}; // @[FFTEngine.scala 267:107]
  wire [3:0] _addrTBankSelKernelPrePre_sum_T_66 = {{1'd0}, _GEN_1206}; // @[FFTEngine.scala 267:107]
  wire [6:0] _addrTBankSelKernelPrePre_sum_T_68 = {{3'd0}, addrT_2[6:3]}; // @[FFTEngine.scala 267:115]
  wire [2:0] _GEN_1208 = {{2'd0}, _addrTBankSelKernelPrePre_sum_T_68[0]}; // @[FFTEngine.scala 267:107]
  wire [2:0] _addrTBankSelKernelPrePre_sum_T_71 = _addrTBankSelKernelPrePre_sum_T_66[2:0] + _GEN_1208; // @[FFTEngine.scala 267:107]
  wire [6:0] _addrTBankSelKernelPrePre_sum_T_72 = {{6'd0}, addrT_2[6]}; // @[FFTEngine.scala 267:115]
  wire [2:0] _GEN_1210 = {{2'd0}, _addrTBankSelKernelPrePre_sum_T_72[0]}; // @[FFTEngine.scala 267:107]
  wire [2:0] addrTBankSelKernelPrePre_2_2 = _addrTBankSelKernelPrePre_sum_T_71 + _GEN_1210; // @[FFTEngine.scala 267:107]
  wire [6:0] _addrTBankSelKernelPrePre_sum_T_75 = {{2'd0}, addrT_3[6:2]}; // @[FFTEngine.scala 267:115]
  wire [2:0] _GEN_1212 = {{2'd0}, _addrTBankSelKernelPrePre_sum_T_75[0]}; // @[FFTEngine.scala 267:107]
  wire [3:0] _addrTBankSelKernelPrePre_sum_T_77 = {{1'd0}, _GEN_1212}; // @[FFTEngine.scala 267:107]
  wire [6:0] _addrTBankSelKernelPrePre_sum_T_79 = {{5'd0}, addrT_3[6:5]}; // @[FFTEngine.scala 267:115]
  wire [2:0] _GEN_1214 = {{2'd0}, _addrTBankSelKernelPrePre_sum_T_79[0]}; // @[FFTEngine.scala 267:107]
  wire [2:0] addrTBankSelKernelPrePre_3_0 = _addrTBankSelKernelPrePre_sum_T_77[2:0] + _GEN_1214; // @[FFTEngine.scala 267:107]
  wire [6:0] _addrTBankSelKernelPrePre_sum_T_82 = {{1'd0}, addrT_3[6:1]}; // @[FFTEngine.scala 267:115]
  wire [2:0] _GEN_1216 = {{2'd0}, _addrTBankSelKernelPrePre_sum_T_82[0]}; // @[FFTEngine.scala 267:107]
  wire [3:0] _addrTBankSelKernelPrePre_sum_T_84 = {{1'd0}, _GEN_1216}; // @[FFTEngine.scala 267:107]
  wire [6:0] _addrTBankSelKernelPrePre_sum_T_86 = {{4'd0}, addrT_3[6:4]}; // @[FFTEngine.scala 267:115]
  wire [2:0] _GEN_1218 = {{2'd0}, _addrTBankSelKernelPrePre_sum_T_86[0]}; // @[FFTEngine.scala 267:107]
  wire [2:0] addrTBankSelKernelPrePre_3_1 = _addrTBankSelKernelPrePre_sum_T_84[2:0] + _GEN_1218; // @[FFTEngine.scala 267:107]
  wire [2:0] _GEN_1219 = {{2'd0}, addrT_3[0]}; // @[FFTEngine.scala 267:107]
  wire [3:0] _addrTBankSelKernelPrePre_sum_T_91 = {{1'd0}, _GEN_1219}; // @[FFTEngine.scala 267:107]
  wire [6:0] _addrTBankSelKernelPrePre_sum_T_93 = {{3'd0}, addrT_3[6:3]}; // @[FFTEngine.scala 267:115]
  wire [2:0] _GEN_1221 = {{2'd0}, _addrTBankSelKernelPrePre_sum_T_93[0]}; // @[FFTEngine.scala 267:107]
  wire [2:0] _addrTBankSelKernelPrePre_sum_T_96 = _addrTBankSelKernelPrePre_sum_T_91[2:0] + _GEN_1221; // @[FFTEngine.scala 267:107]
  wire [6:0] _addrTBankSelKernelPrePre_sum_T_97 = {{6'd0}, addrT_3[6]}; // @[FFTEngine.scala 267:115]
  wire [2:0] _GEN_1223 = {{2'd0}, _addrTBankSelKernelPrePre_sum_T_97[0]}; // @[FFTEngine.scala 267:107]
  wire [2:0] addrTBankSelKernelPrePre_3_2 = _addrTBankSelKernelPrePre_sum_T_96 + _GEN_1223; // @[FFTEngine.scala 267:107]
  wire [3:0] _addrTBankSelKernelPre_T_1 = {{1'd0}, addrTBankSelKernelPrePre_0_0}; // @[FFTEngine.scala 279:144]
  wire [3:0] _addrTBankSelKernelPre_T_3 = {_addrTBankSelKernelPre_T_1[2:0], 1'h0}; // @[FFTEngine.scala 279:138]
  wire [3:0] _GEN_1224 = {{1'd0}, addrTBankSelKernelPrePre_0_1}; // @[FFTEngine.scala 279:144]
  wire [3:0] _addrTBankSelKernelPre_T_5 = _addrTBankSelKernelPre_T_3 + _GEN_1224; // @[FFTEngine.scala 279:144]
  wire [4:0] _addrTBankSelKernelPre_T_6 = {_addrTBankSelKernelPre_T_5, 1'h0}; // @[FFTEngine.scala 279:138]
  wire [4:0] _GEN_1225 = {{2'd0}, addrTBankSelKernelPrePre_0_2}; // @[FFTEngine.scala 279:144]
  wire [4:0] _addrTBankSelKernelPre_T_8 = _addrTBankSelKernelPre_T_6 + _GEN_1225; // @[FFTEngine.scala 279:144]
  wire [3:0] _addrTBankSelKernelPre_T_10 = {{1'd0}, addrTBankSelKernelPrePre_1_0}; // @[FFTEngine.scala 279:144]
  wire [3:0] _addrTBankSelKernelPre_T_12 = {_addrTBankSelKernelPre_T_10[2:0], 1'h0}; // @[FFTEngine.scala 279:138]
  wire [3:0] _GEN_1226 = {{1'd0}, addrTBankSelKernelPrePre_1_1}; // @[FFTEngine.scala 279:144]
  wire [3:0] _addrTBankSelKernelPre_T_14 = _addrTBankSelKernelPre_T_12 + _GEN_1226; // @[FFTEngine.scala 279:144]
  wire [4:0] _addrTBankSelKernelPre_T_15 = {_addrTBankSelKernelPre_T_14, 1'h0}; // @[FFTEngine.scala 279:138]
  wire [4:0] _GEN_1227 = {{2'd0}, addrTBankSelKernelPrePre_1_2}; // @[FFTEngine.scala 279:144]
  wire [4:0] _addrTBankSelKernelPre_T_17 = _addrTBankSelKernelPre_T_15 + _GEN_1227; // @[FFTEngine.scala 279:144]
  wire [3:0] _addrTBankSelKernelPre_T_19 = {{1'd0}, addrTBankSelKernelPrePre_2_0}; // @[FFTEngine.scala 279:144]
  wire [3:0] _addrTBankSelKernelPre_T_21 = {_addrTBankSelKernelPre_T_19[2:0], 1'h0}; // @[FFTEngine.scala 279:138]
  wire [3:0] _GEN_1228 = {{1'd0}, addrTBankSelKernelPrePre_2_1}; // @[FFTEngine.scala 279:144]
  wire [3:0] _addrTBankSelKernelPre_T_23 = _addrTBankSelKernelPre_T_21 + _GEN_1228; // @[FFTEngine.scala 279:144]
  wire [4:0] _addrTBankSelKernelPre_T_24 = {_addrTBankSelKernelPre_T_23, 1'h0}; // @[FFTEngine.scala 279:138]
  wire [4:0] _GEN_1229 = {{2'd0}, addrTBankSelKernelPrePre_2_2}; // @[FFTEngine.scala 279:144]
  wire [4:0] _addrTBankSelKernelPre_T_26 = _addrTBankSelKernelPre_T_24 + _GEN_1229; // @[FFTEngine.scala 279:144]
  wire [3:0] _addrTBankSelKernelPre_T_28 = {{1'd0}, addrTBankSelKernelPrePre_3_0}; // @[FFTEngine.scala 279:144]
  wire [3:0] _addrTBankSelKernelPre_T_30 = {_addrTBankSelKernelPre_T_28[2:0], 1'h0}; // @[FFTEngine.scala 279:138]
  wire [3:0] _GEN_1230 = {{1'd0}, addrTBankSelKernelPrePre_3_1}; // @[FFTEngine.scala 279:144]
  wire [3:0] _addrTBankSelKernelPre_T_32 = _addrTBankSelKernelPre_T_30 + _GEN_1230; // @[FFTEngine.scala 279:144]
  wire [4:0] _addrTBankSelKernelPre_T_33 = {_addrTBankSelKernelPre_T_32, 1'h0}; // @[FFTEngine.scala 279:138]
  wire [4:0] _GEN_1231 = {{2'd0}, addrTBankSelKernelPrePre_3_2}; // @[FFTEngine.scala 279:144]
  wire [4:0] _addrTBankSelKernelPre_T_35 = _addrTBankSelKernelPre_T_33 + _GEN_1231; // @[FFTEngine.scala 279:144]
  wire [2:0] addrTBankSelKernelPre_0 = _addrTBankSelKernelPre_T_8[2:0]; // @[FFTEngine.scala 279:160]
  wire [2:0] addrTBankSelKernelPre_1 = _addrTBankSelKernelPre_T_17[2:0]; // @[FFTEngine.scala 279:160]
  wire [2:0] addrTBankSelKernelPre_2 = _addrTBankSelKernelPre_T_26[2:0]; // @[FFTEngine.scala 279:160]
  wire [2:0] addrTBankSelKernelPre_3 = _addrTBankSelKernelPre_T_35[2:0]; // @[FFTEngine.scala 279:160]
  wire [2:0] addrSBankSelKernel_0 = _radixInit_T_1 ? addrSBankSelKernelPre_0 : 3'h0; // @[FFTEngine.scala 284:27 285:35 288:35]
  wire [2:0] addrTBankSelKernel_0 = _radixInit_T_1 ? addrTBankSelKernelPre_0 : 3'h1; // @[FFTEngine.scala 284:27 286:35 289:35]
  wire [2:0] addrSBankSelKernel_1 = _radixInit_T_1 ? addrSBankSelKernelPre_1 : 3'h2; // @[FFTEngine.scala 284:27 285:35 288:35]
  wire [2:0] addrTBankSelKernel_1 = _radixInit_T_1 ? addrTBankSelKernelPre_1 : 3'h3; // @[FFTEngine.scala 284:27 286:35 289:35]
  wire [2:0] addrSBankSelKernel_2 = _radixInit_T_1 ? addrSBankSelKernelPre_2 : 3'h4; // @[FFTEngine.scala 284:27 285:35 288:35]
  wire [2:0] addrTBankSelKernel_2 = _radixInit_T_1 ? addrTBankSelKernelPre_2 : 3'h5; // @[FFTEngine.scala 284:27 286:35 289:35]
  wire [2:0] addrSBankSelKernel_3 = _radixInit_T_1 ? addrSBankSelKernelPre_3 : 3'h6; // @[FFTEngine.scala 284:27 285:35 288:35]
  wire [2:0] addrTBankSelKernel_3 = _radixInit_T_1 ? addrTBankSelKernelPre_3 : 3'h7; // @[FFTEngine.scala 284:27 286:35 289:35]
  wire  addrSBankSelProcPre__0 = addrS_0[0] ^ addrS_0[6]; // @[FFTEngine.scala 299:51]
  wire  addrTBankSelProcPre__0 = addrT_0[0] ^ addrT_0[6]; // @[FFTEngine.scala 300:51]
  wire  addrSBankSelProcPre__1 = addrS_0[1] ^ addrS_0[5]; // @[FFTEngine.scala 299:51]
  wire  addrTBankSelProcPre__1 = addrT_0[1] ^ addrT_0[5]; // @[FFTEngine.scala 300:51]
  wire  addrSBankSelProcPre__2 = addrS_0[2] ^ addrS_0[4]; // @[FFTEngine.scala 299:51]
  wire  addrTBankSelProcPre__2 = addrT_0[2] ^ addrT_0[4]; // @[FFTEngine.scala 300:51]
  wire [2:0] addrSBankSelProc_0 = {addrSBankSelProcPre__0,addrSBankSelProcPre__1,addrSBankSelProcPre__2}; // @[Cat.scala 33:92]
  wire [2:0] addrTBankSelProc_0 = {addrTBankSelProcPre__0,addrTBankSelProcPre__1,addrTBankSelProcPre__2}; // @[Cat.scala 33:92]
  wire  addrSBankSelProcPre_1_0 = addrS_1[0] ^ addrS_1[6]; // @[FFTEngine.scala 299:51]
  wire  addrTBankSelProcPre_1_0 = addrT_1[0] ^ addrT_1[6]; // @[FFTEngine.scala 300:51]
  wire  addrSBankSelProcPre_1_1 = addrS_1[1] ^ addrS_1[5]; // @[FFTEngine.scala 299:51]
  wire  addrTBankSelProcPre_1_1 = addrT_1[1] ^ addrT_1[5]; // @[FFTEngine.scala 300:51]
  wire  addrSBankSelProcPre_1_2 = addrS_1[2] ^ addrS_1[4]; // @[FFTEngine.scala 299:51]
  wire  addrTBankSelProcPre_1_2 = addrT_1[2] ^ addrT_1[4]; // @[FFTEngine.scala 300:51]
  wire [2:0] addrSBankSelProc_1 = {addrSBankSelProcPre_1_0,addrSBankSelProcPre_1_1,addrSBankSelProcPre_1_2}; // @[Cat.scala 33:92]
  wire [2:0] addrTBankSelProc_1 = {addrTBankSelProcPre_1_0,addrTBankSelProcPre_1_1,addrTBankSelProcPre_1_2}; // @[Cat.scala 33:92]
  wire  addrSBankSelProcPre_2_0 = addrS_2[0] ^ addrS_2[6]; // @[FFTEngine.scala 299:51]
  wire  addrTBankSelProcPre_2_0 = addrT_2[0] ^ addrT_2[6]; // @[FFTEngine.scala 300:51]
  wire  addrSBankSelProcPre_2_1 = addrS_2[1] ^ addrS_2[5]; // @[FFTEngine.scala 299:51]
  wire  addrTBankSelProcPre_2_1 = addrT_2[1] ^ addrT_2[5]; // @[FFTEngine.scala 300:51]
  wire  addrSBankSelProcPre_2_2 = addrS_2[2] ^ addrS_2[4]; // @[FFTEngine.scala 299:51]
  wire  addrTBankSelProcPre_2_2 = addrT_2[2] ^ addrT_2[4]; // @[FFTEngine.scala 300:51]
  wire [2:0] addrSBankSelProc_2 = {addrSBankSelProcPre_2_0,addrSBankSelProcPre_2_1,addrSBankSelProcPre_2_2}; // @[Cat.scala 33:92]
  wire [2:0] addrTBankSelProc_2 = {addrTBankSelProcPre_2_0,addrTBankSelProcPre_2_1,addrTBankSelProcPre_2_2}; // @[Cat.scala 33:92]
  wire  addrSBankSelProcPre_3_0 = addrS_3[0] ^ addrS_3[6]; // @[FFTEngine.scala 299:51]
  wire  addrTBankSelProcPre_3_0 = addrT_3[0] ^ addrT_3[6]; // @[FFTEngine.scala 300:51]
  wire  addrSBankSelProcPre_3_1 = addrS_3[1] ^ addrS_3[5]; // @[FFTEngine.scala 299:51]
  wire  addrTBankSelProcPre_3_1 = addrT_3[1] ^ addrT_3[5]; // @[FFTEngine.scala 300:51]
  wire  addrSBankSelProcPre_3_2 = addrS_3[2] ^ addrS_3[4]; // @[FFTEngine.scala 299:51]
  wire  addrTBankSelProcPre_3_2 = addrT_3[2] ^ addrT_3[4]; // @[FFTEngine.scala 300:51]
  wire [2:0] addrSBankSelProc_3 = {addrSBankSelProcPre_3_0,addrSBankSelProcPre_3_1,addrSBankSelProcPre_3_2}; // @[Cat.scala 33:92]
  wire [2:0] addrTBankSelProc_3 = {addrTBankSelProcPre_3_0,addrTBankSelProcPre_3_1,addrTBankSelProcPre_3_2}; // @[Cat.scala 33:92]
  reg [2:0] addrSBankSelKernel1c_0_r; // @[Reg.scala 35:20]
  reg [2:0] addrSBankSelKernel2c_0_r; // @[Reg.scala 35:20]
  reg [2:0] addrSBankSelKernel3c_0_r; // @[Reg.scala 35:20]
  reg [2:0] addrTBankSelKernel1c_0_r; // @[Reg.scala 35:20]
  reg [2:0] addrTBankSelKernel2c_0_r; // @[Reg.scala 35:20]
  reg [2:0] addrTBankSelKernel3c_0_r; // @[Reg.scala 35:20]
  reg [2:0] addrSBankSelKernel1c_1_r; // @[Reg.scala 35:20]
  reg [2:0] addrSBankSelKernel2c_1_r; // @[Reg.scala 35:20]
  reg [2:0] addrSBankSelKernel3c_1_r; // @[Reg.scala 35:20]
  reg [2:0] addrTBankSelKernel1c_1_r; // @[Reg.scala 35:20]
  reg [2:0] addrTBankSelKernel2c_1_r; // @[Reg.scala 35:20]
  reg [2:0] addrTBankSelKernel3c_1_r; // @[Reg.scala 35:20]
  reg [2:0] addrSBankSelKernel1c_2_r; // @[Reg.scala 35:20]
  reg [2:0] addrSBankSelKernel2c_2_r; // @[Reg.scala 35:20]
  reg [2:0] addrSBankSelKernel3c_2_r; // @[Reg.scala 35:20]
  reg [2:0] addrTBankSelKernel1c_2_r; // @[Reg.scala 35:20]
  reg [2:0] addrTBankSelKernel2c_2_r; // @[Reg.scala 35:20]
  reg [2:0] addrTBankSelKernel3c_2_r; // @[Reg.scala 35:20]
  reg [2:0] addrSBankSelKernel1c_3_r; // @[Reg.scala 35:20]
  reg [2:0] addrSBankSelKernel2c_3_r; // @[Reg.scala 35:20]
  reg [2:0] addrSBankSelKernel3c_3_r; // @[Reg.scala 35:20]
  reg [2:0] addrTBankSelKernel1c_3_r; // @[Reg.scala 35:20]
  reg [2:0] addrTBankSelKernel2c_3_r; // @[Reg.scala 35:20]
  reg [2:0] addrTBankSelKernel3c_3_r; // @[Reg.scala 35:20]
  reg [2:0] addrSBankSelProc1c_0_r; // @[Reg.scala 35:20]
  reg [2:0] addrSBankSelProc2c_0_r; // @[Reg.scala 35:20]
  reg [2:0] addrSBankSelProc3c_0_r; // @[Reg.scala 35:20]
  reg [2:0] addrTBankSelProc1c_0_r; // @[Reg.scala 35:20]
  reg [2:0] addrTBankSelProc2c_0_r; // @[Reg.scala 35:20]
  reg [2:0] addrTBankSelProc3c_0_r; // @[Reg.scala 35:20]
  reg [2:0] addrSBankSelProc1c_1_r; // @[Reg.scala 35:20]
  reg [2:0] addrSBankSelProc2c_1_r; // @[Reg.scala 35:20]
  reg [2:0] addrSBankSelProc3c_1_r; // @[Reg.scala 35:20]
  reg [2:0] addrTBankSelProc1c_1_r; // @[Reg.scala 35:20]
  reg [2:0] addrTBankSelProc2c_1_r; // @[Reg.scala 35:20]
  reg [2:0] addrTBankSelProc3c_1_r; // @[Reg.scala 35:20]
  reg [2:0] addrSBankSelProc1c_2_r; // @[Reg.scala 35:20]
  reg [2:0] addrSBankSelProc2c_2_r; // @[Reg.scala 35:20]
  reg [2:0] addrSBankSelProc3c_2_r; // @[Reg.scala 35:20]
  reg [2:0] addrTBankSelProc1c_2_r; // @[Reg.scala 35:20]
  reg [2:0] addrTBankSelProc2c_2_r; // @[Reg.scala 35:20]
  reg [2:0] addrTBankSelProc3c_2_r; // @[Reg.scala 35:20]
  reg [2:0] addrSBankSelProc1c_3_r; // @[Reg.scala 35:20]
  reg [2:0] addrSBankSelProc2c_3_r; // @[Reg.scala 35:20]
  reg [2:0] addrSBankSelProc3c_3_r; // @[Reg.scala 35:20]
  reg [2:0] addrTBankSelProc1c_3_r; // @[Reg.scala 35:20]
  reg [2:0] addrTBankSelProc2c_3_r; // @[Reg.scala 35:20]
  reg [2:0] addrTBankSelProc3c_3_r; // @[Reg.scala 35:20]
  reg  kernelState1c; // @[Reg.scala 35:20]
  reg  kernelState2c; // @[Reg.scala 35:20]
  reg  kernelState3c; // @[Reg.scala 35:20]
  reg  procState1c; // @[Reg.scala 35:20]
  reg  procState2c; // @[Reg.scala 35:20]
  reg  procState3c; // @[Reg.scala 35:20]
  reg  sameAddr1c; // @[Reg.scala 35:20]
  reg  sameAddr2c; // @[Reg.scala 35:20]
  reg  sameAddr3c; // @[Reg.scala 35:20]
  wire [15:0] dataInRPre_0 = srcBuffer ? io_readDataSram1Bank_0[15:0] : io_readDataSram0Bank_0[15:0]; // @[FFTEngine.scala 359:29]
  wire [15:0] dataInIPre_0 = srcBuffer ? io_readDataSram1Bank_0[31:16] : io_readDataSram0Bank_0[31:16]; // @[FFTEngine.scala 360:29]
  wire [15:0] dataInRPre_1 = srcBuffer ? io_readDataSram1Bank_1[15:0] : io_readDataSram0Bank_1[15:0]; // @[FFTEngine.scala 359:29]
  wire [15:0] dataInIPre_1 = srcBuffer ? io_readDataSram1Bank_1[31:16] : io_readDataSram0Bank_1[31:16]; // @[FFTEngine.scala 360:29]
  wire [15:0] dataInRPre_2 = srcBuffer ? io_readDataSram1Bank_2[15:0] : io_readDataSram0Bank_2[15:0]; // @[FFTEngine.scala 359:29]
  wire [15:0] dataInIPre_2 = srcBuffer ? io_readDataSram1Bank_2[31:16] : io_readDataSram0Bank_2[31:16]; // @[FFTEngine.scala 360:29]
  wire [15:0] dataInRPre_3 = srcBuffer ? io_readDataSram1Bank_3[15:0] : io_readDataSram0Bank_3[15:0]; // @[FFTEngine.scala 359:29]
  wire [15:0] dataInIPre_3 = srcBuffer ? io_readDataSram1Bank_3[31:16] : io_readDataSram0Bank_3[31:16]; // @[FFTEngine.scala 360:29]
  wire [15:0] dataInRPre_4 = srcBuffer ? io_readDataSram1Bank_4[15:0] : io_readDataSram0Bank_4[15:0]; // @[FFTEngine.scala 359:29]
  wire [15:0] dataInIPre_4 = srcBuffer ? io_readDataSram1Bank_4[31:16] : io_readDataSram0Bank_4[31:16]; // @[FFTEngine.scala 360:29]
  wire [15:0] dataInRPre_5 = srcBuffer ? io_readDataSram1Bank_5[15:0] : io_readDataSram0Bank_5[15:0]; // @[FFTEngine.scala 359:29]
  wire [15:0] dataInIPre_5 = srcBuffer ? io_readDataSram1Bank_5[31:16] : io_readDataSram0Bank_5[31:16]; // @[FFTEngine.scala 360:29]
  wire [15:0] dataInRPre_6 = srcBuffer ? io_readDataSram1Bank_6[15:0] : io_readDataSram0Bank_6[15:0]; // @[FFTEngine.scala 359:29]
  wire [15:0] dataInIPre_6 = srcBuffer ? io_readDataSram1Bank_6[31:16] : io_readDataSram0Bank_6[31:16]; // @[FFTEngine.scala 360:29]
  wire [15:0] dataInRPre_7 = srcBuffer ? io_readDataSram1Bank_7[15:0] : io_readDataSram0Bank_7[15:0]; // @[FFTEngine.scala 359:29]
  wire [15:0] dataInIPre_7 = srcBuffer ? io_readDataSram1Bank_7[31:16] : io_readDataSram0Bank_7[31:16]; // @[FFTEngine.scala 360:29]
  reg [3:0] addrS1c; // @[Reg.scala 35:20]
  reg [3:0] addrS2c; // @[Reg.scala 35:20]
  reg [3:0] addrS3c; // @[Reg.scala 35:20]
  reg [3:0] addrT1c; // @[Reg.scala 35:20]
  reg [3:0] addrT2c; // @[Reg.scala 35:20]
  reg [3:0] addrT3c; // @[Reg.scala 35:20]
  wire [2:0] _addrSBankSel_T_1 = _radixInit_T_11 ? addrSBankSelProc_0 : addrSBankSelKernel_0; // @[FFTEngine.scala 384:32]
  wire  _addrSBankSel_T_2 = phaseCount == 3'h0; // @[FFTEngine.scala 387:72]
  wire  _addrSBankSel_T_4 = _radixInit_T_11 | _radixInit_T_1 & phaseCount == 3'h0; // @[FFTEngine.scala 387:43]
  wire [2:0] _addrSBankSel_T_5 = _radixInit_T_11 | _radixInit_T_1 & phaseCount == 3'h0 ? addrSBankSelProc_0 :
    addrSBankSelKernel_0; // @[FFTEngine.scala 387:32]
  wire [2:0] addrSBankSel = isFFT ? _addrSBankSel_T_1 : _addrSBankSel_T_5; // @[FFTEngine.scala 383:21 384:26 387:26]
  reg [2:0] addrSBankSel1c; // @[Reg.scala 35:20]
  reg [2:0] addrTBankSel1c; // @[Reg.scala 35:20]
  wire [15:0] _GEN_120 = 3'h1 == addrSBankSel1c ? dataInRPre_1 : dataInRPre_0; // @[FFTEngine.scala 395:{29,29}]
  wire [15:0] _GEN_121 = 3'h2 == addrSBankSel1c ? dataInRPre_2 : _GEN_120; // @[FFTEngine.scala 395:{29,29}]
  wire [15:0] _GEN_122 = 3'h3 == addrSBankSel1c ? dataInRPre_3 : _GEN_121; // @[FFTEngine.scala 395:{29,29}]
  wire [15:0] _GEN_123 = 3'h4 == addrSBankSel1c ? dataInRPre_4 : _GEN_122; // @[FFTEngine.scala 395:{29,29}]
  wire [15:0] _GEN_124 = 3'h5 == addrSBankSel1c ? dataInRPre_5 : _GEN_123; // @[FFTEngine.scala 395:{29,29}]
  wire [15:0] _GEN_125 = 3'h6 == addrSBankSel1c ? dataInRPre_6 : _GEN_124; // @[FFTEngine.scala 395:{29,29}]
  wire  _fftCalc_io_dataInSI_T_1 = sameAddr1c & _T_12; // @[FFTEngine.scala 396:47]
  wire [15:0] _GEN_128 = 3'h1 == addrSBankSel1c ? dataInIPre_1 : dataInIPre_0; // @[FFTEngine.scala 396:{35,35}]
  wire [15:0] _GEN_129 = 3'h2 == addrSBankSel1c ? dataInIPre_2 : _GEN_128; // @[FFTEngine.scala 396:{35,35}]
  wire [15:0] _GEN_130 = 3'h3 == addrSBankSel1c ? dataInIPre_3 : _GEN_129; // @[FFTEngine.scala 396:{35,35}]
  wire [15:0] _GEN_131 = 3'h4 == addrSBankSel1c ? dataInIPre_4 : _GEN_130; // @[FFTEngine.scala 396:{35,35}]
  wire [15:0] _GEN_132 = 3'h5 == addrSBankSel1c ? dataInIPre_5 : _GEN_131; // @[FFTEngine.scala 396:{35,35}]
  wire [15:0] _GEN_133 = 3'h6 == addrSBankSel1c ? dataInIPre_6 : _GEN_132; // @[FFTEngine.scala 396:{35,35}]
  wire [15:0] _GEN_134 = 3'h7 == addrSBankSel1c ? dataInIPre_7 : _GEN_133; // @[FFTEngine.scala 396:{35,35}]
  wire [15:0] _GEN_136 = 3'h1 == addrTBankSel1c ? dataInIPre_1 : dataInIPre_0; // @[FFTEngine.scala 397:{35,35}]
  wire [15:0] _GEN_137 = 3'h2 == addrTBankSel1c ? dataInIPre_2 : _GEN_136; // @[FFTEngine.scala 397:{35,35}]
  wire [15:0] _GEN_138 = 3'h3 == addrTBankSel1c ? dataInIPre_3 : _GEN_137; // @[FFTEngine.scala 397:{35,35}]
  wire [15:0] _GEN_139 = 3'h4 == addrTBankSel1c ? dataInIPre_4 : _GEN_138; // @[FFTEngine.scala 397:{35,35}]
  wire [15:0] _GEN_140 = 3'h5 == addrTBankSel1c ? dataInIPre_5 : _GEN_139; // @[FFTEngine.scala 397:{35,35}]
  wire [15:0] _GEN_141 = 3'h6 == addrTBankSel1c ? dataInIPre_6 : _GEN_140; // @[FFTEngine.scala 397:{35,35}]
  wire [15:0] _GEN_142 = 3'h7 == addrTBankSel1c ? dataInIPre_7 : _GEN_141; // @[FFTEngine.scala 397:{35,35}]
  wire [15:0] _GEN_144 = 3'h1 == addrTBankSel1c ? dataInRPre_1 : dataInRPre_0; // @[FFTEngine.scala 397:{35,35}]
  wire [15:0] _GEN_145 = 3'h2 == addrTBankSel1c ? dataInRPre_2 : _GEN_144; // @[FFTEngine.scala 397:{35,35}]
  wire [15:0] _GEN_146 = 3'h3 == addrTBankSel1c ? dataInRPre_3 : _GEN_145; // @[FFTEngine.scala 397:{35,35}]
  wire [15:0] _GEN_147 = 3'h4 == addrTBankSel1c ? dataInRPre_4 : _GEN_146; // @[FFTEngine.scala 397:{35,35}]
  wire [15:0] _GEN_148 = 3'h5 == addrTBankSel1c ? dataInRPre_5 : _GEN_147; // @[FFTEngine.scala 397:{35,35}]
  wire [15:0] _GEN_149 = 3'h6 == addrTBankSel1c ? dataInRPre_6 : _GEN_148; // @[FFTEngine.scala 397:{35,35}]
  wire [15:0] _GEN_150 = 3'h7 == addrTBankSel1c ? dataInRPre_7 : _GEN_149; // @[FFTEngine.scala 397:{35,35}]
  wire [6:0] _fftCalc_io_nk_T_2 = {nk_0[5:0],1'h0}; // @[Cat.scala 33:92]
  wire  _GEN_160 = 3'h1 == phaseCount ? io_fftRShiftP0_1 : io_fftRShiftP0_0; // @[FFTEngine.scala 400:{36,36}]
  wire  _GEN_161 = 3'h2 == phaseCount ? io_fftRShiftP0_2 : _GEN_160; // @[FFTEngine.scala 400:{36,36}]
  wire  _GEN_162 = 3'h3 == phaseCount ? io_fftRShiftP0_3 : _GEN_161; // @[FFTEngine.scala 400:{36,36}]
  wire  _GEN_163 = 3'h4 == phaseCount ? io_fftRShiftP0_4 : _GEN_162; // @[FFTEngine.scala 400:{36,36}]
  wire  _GEN_164 = 3'h5 == phaseCount ? io_fftRShiftP0_5 : _GEN_163; // @[FFTEngine.scala 400:{36,36}]
  wire  _GEN_165 = 3'h6 == phaseCount ? io_fftRShiftP0_6 : _GEN_164; // @[FFTEngine.scala 400:{36,36}]
  wire [15:0] _writeDataTRPre3c_T_1 = ~fftCalc_io_dataOutTI3c; // @[FFTEngine.scala 407:132]
  wire [15:0] _writeDataTRPre3c_T_3 = _writeDataTRPre3c_T_1 + 16'h1; // @[FFTEngine.scala 407:156]
  wire [15:0] _writeDataTRPre3c_T_4 = isFFT ? fftCalc_io_dataOutTI3c : _writeDataTRPre3c_T_3; // @[FFTEngine.scala 407:100]
  wire [15:0] _writeDataTRPre3c_T_5 = _T_12 ? fftCalc_io_dataOutTR3c : _writeDataTRPre3c_T_4; // @[FFTEngine.scala 407:52]
  wire [15:0] writeDataTRPre3c = procState3c ? _writeDataTRPre3c_T_5 : fftCalc_io_dataOutTR3c; // @[FFTEngine.scala 407:35]
  wire [15:0] _writeDataTIPre3c_T_4 = ~fftCalc_io_dataOutTR3c; // @[FFTEngine.scala 408:115]
  wire [15:0] _writeDataTIPre3c_T_6 = _writeDataTIPre3c_T_4 + 16'h1; // @[FFTEngine.scala 408:139]
  wire [15:0] _writeDataTIPre3c_T_7 = isFFT ? _writeDataTIPre3c_T_6 : fftCalc_io_dataOutTR3c; // @[FFTEngine.scala 408:107]
  wire [15:0] _writeDataTIPre3c_T_8 = _T_12 ? _writeDataTRPre3c_T_3 : _writeDataTIPre3c_T_7; // @[FFTEngine.scala 408:52]
  wire [15:0] writeDataTIPre3c = procState3c ? _writeDataTIPre3c_T_8 : fftCalc_io_dataOutTI3c; // @[FFTEngine.scala 408:35]
  wire  _addrSBankSel3c_T_2 = procState3c | kernelState3c & _T_6; // @[FFTEngine.scala 414:47]
  wire [2:0] _addrSBankSel3c_T_3 = procState3c | kernelState3c & _T_6 ? addrSBankSelProc3c_0_r :
    addrSBankSelKernel3c_0_r; // @[FFTEngine.scala 414:34]
  wire [2:0] _addrTBankSel3c_T_3 = _addrSBankSel3c_T_2 ? addrTBankSelProc3c_0_r : addrTBankSelKernel3c_0_r; // @[FFTEngine.scala 415:34]
  wire [2:0] _addrSBankSel3c_T_4 = procState3c ? addrSBankSelProc3c_0_r : addrSBankSelKernel3c_0_r; // @[FFTEngine.scala 417:34]
  wire [2:0] _addrTBankSel3c_T_4 = procState3c ? addrTBankSelProc3c_0_r : addrTBankSelKernel3c_0_r; // @[FFTEngine.scala 418:34]
  wire [2:0] addrSBankSel3c = isFFT ? _addrSBankSel3c_T_3 : _addrSBankSel3c_T_4; // @[FFTEngine.scala 413:21 414:28 417:28]
  wire [2:0] addrTBankSel3c = isFFT ? _addrTBankSel3c_T_3 : _addrTBankSel3c_T_4; // @[FFTEngine.scala 413:21 415:28 418:28]
  wire  _GEN_168 = (3'h0 == addrSBankSelProc3c_0_r | 3'h0 == addrTBankSelProc3c_0_r) & (srcBuffer & procState3c); // @[FFTEngine.scala 424:94 425:52 428:52]
  wire  _GEN_169 = (3'h0 == addrSBankSelProc3c_0_r | 3'h0 == addrTBankSelProc3c_0_r) & (_srcBufferNext_T_3 & procState3c
    ); // @[FFTEngine.scala 424:94 426:52 429:52]
  wire  _GEN_172 = (3'h1 == addrSBankSelProc3c_0_r | 3'h1 == addrTBankSelProc3c_0_r) & (srcBuffer & procState3c); // @[FFTEngine.scala 424:94 425:52 428:52]
  wire  _GEN_173 = (3'h1 == addrSBankSelProc3c_0_r | 3'h1 == addrTBankSelProc3c_0_r) & (_srcBufferNext_T_3 & procState3c
    ); // @[FFTEngine.scala 424:94 426:52 429:52]
  wire  _GEN_176 = (3'h2 == addrSBankSelProc3c_0_r | 3'h2 == addrTBankSelProc3c_0_r) & (srcBuffer & procState3c); // @[FFTEngine.scala 424:94 425:52 428:52]
  wire  _GEN_177 = (3'h2 == addrSBankSelProc3c_0_r | 3'h2 == addrTBankSelProc3c_0_r) & (_srcBufferNext_T_3 & procState3c
    ); // @[FFTEngine.scala 424:94 426:52 429:52]
  wire  _GEN_180 = (3'h3 == addrSBankSelProc3c_0_r | 3'h3 == addrTBankSelProc3c_0_r) & (srcBuffer & procState3c); // @[FFTEngine.scala 424:94 425:52 428:52]
  wire  _GEN_181 = (3'h3 == addrSBankSelProc3c_0_r | 3'h3 == addrTBankSelProc3c_0_r) & (_srcBufferNext_T_3 & procState3c
    ); // @[FFTEngine.scala 424:94 426:52 429:52]
  wire  _GEN_184 = (3'h4 == addrSBankSelProc3c_0_r | 3'h4 == addrTBankSelProc3c_0_r) & (srcBuffer & procState3c); // @[FFTEngine.scala 424:94 425:52 428:52]
  wire  _GEN_185 = (3'h4 == addrSBankSelProc3c_0_r | 3'h4 == addrTBankSelProc3c_0_r) & (_srcBufferNext_T_3 & procState3c
    ); // @[FFTEngine.scala 424:94 426:52 429:52]
  wire  _GEN_188 = (3'h5 == addrSBankSelProc3c_0_r | 3'h5 == addrTBankSelProc3c_0_r) & (srcBuffer & procState3c); // @[FFTEngine.scala 424:94 425:52 428:52]
  wire  _GEN_189 = (3'h5 == addrSBankSelProc3c_0_r | 3'h5 == addrTBankSelProc3c_0_r) & (_srcBufferNext_T_3 & procState3c
    ); // @[FFTEngine.scala 424:94 426:52 429:52]
  wire  _GEN_192 = (3'h6 == addrSBankSelProc3c_0_r | 3'h6 == addrTBankSelProc3c_0_r) & (srcBuffer & procState3c); // @[FFTEngine.scala 424:94 425:52 428:52]
  wire  _GEN_193 = (3'h6 == addrSBankSelProc3c_0_r | 3'h6 == addrTBankSelProc3c_0_r) & (_srcBufferNext_T_3 & procState3c
    ); // @[FFTEngine.scala 424:94 426:52 429:52]
  wire  _GEN_196 = (3'h7 == addrSBankSelProc3c_0_r | 3'h7 == addrTBankSelProc3c_0_r) & (srcBuffer & procState3c); // @[FFTEngine.scala 424:94 425:52 428:52]
  wire  _GEN_197 = (3'h7 == addrSBankSelProc3c_0_r | 3'h7 == addrTBankSelProc3c_0_r) & (_srcBufferNext_T_3 & procState3c
    ); // @[FFTEngine.scala 424:94 426:52 429:52]
  wire [3:0] _GEN_208 = 3'h0 == addrSBankSel ? addrS_0[3:0] : addrT_0[3:0]; // @[FFTEngine.scala 441:{48,48}]
  wire [3:0] _GEN_209 = 3'h1 == addrSBankSel ? addrS_0[3:0] : addrT_0[3:0]; // @[FFTEngine.scala 441:{48,48}]
  wire [3:0] _GEN_210 = 3'h2 == addrSBankSel ? addrS_0[3:0] : addrT_0[3:0]; // @[FFTEngine.scala 441:{48,48}]
  wire [3:0] _GEN_211 = 3'h3 == addrSBankSel ? addrS_0[3:0] : addrT_0[3:0]; // @[FFTEngine.scala 441:{48,48}]
  wire [3:0] _GEN_212 = 3'h4 == addrSBankSel ? addrS_0[3:0] : addrT_0[3:0]; // @[FFTEngine.scala 441:{48,48}]
  wire [3:0] _GEN_213 = 3'h5 == addrSBankSel ? addrS_0[3:0] : addrT_0[3:0]; // @[FFTEngine.scala 441:{48,48}]
  wire [3:0] _GEN_214 = 3'h6 == addrSBankSel ? addrS_0[3:0] : addrT_0[3:0]; // @[FFTEngine.scala 441:{48,48}]
  wire [3:0] _GEN_215 = 3'h7 == addrSBankSel ? addrS_0[3:0] : addrT_0[3:0]; // @[FFTEngine.scala 441:{48,48}]
  wire [3:0] _GEN_296 = ~_radixInit_T_11 ? _GEN_208 : _GEN_208; // @[FFTEngine.scala 438:26]
  wire [3:0] _GEN_297 = ~_radixInit_T_11 ? _GEN_209 : _GEN_209; // @[FFTEngine.scala 438:26]
  wire [3:0] _GEN_298 = ~_radixInit_T_11 ? _GEN_210 : _GEN_210; // @[FFTEngine.scala 438:26]
  wire [3:0] _GEN_299 = ~_radixInit_T_11 ? _GEN_211 : _GEN_211; // @[FFTEngine.scala 438:26]
  wire [3:0] _GEN_300 = ~_radixInit_T_11 ? _GEN_212 : _GEN_212; // @[FFTEngine.scala 438:26]
  wire [3:0] _GEN_301 = ~_radixInit_T_11 ? _GEN_213 : _GEN_213; // @[FFTEngine.scala 438:26]
  wire [3:0] _GEN_302 = ~_radixInit_T_11 ? _GEN_214 : _GEN_214; // @[FFTEngine.scala 438:26]
  wire [3:0] _GEN_303 = ~_radixInit_T_11 ? _GEN_215 : _GEN_215; // @[FFTEngine.scala 438:26]
  wire [3:0] _GEN_312 = 3'h0 == addrTBankSel3c ? addrT3c : _GEN_296; // @[FFTEngine.scala 460:{50,50}]
  wire [3:0] _GEN_313 = 3'h1 == addrTBankSel3c ? addrT3c : _GEN_297; // @[FFTEngine.scala 460:{50,50}]
  wire [3:0] _GEN_314 = 3'h2 == addrTBankSel3c ? addrT3c : _GEN_298; // @[FFTEngine.scala 460:{50,50}]
  wire [3:0] _GEN_315 = 3'h3 == addrTBankSel3c ? addrT3c : _GEN_299; // @[FFTEngine.scala 460:{50,50}]
  wire [3:0] _GEN_316 = 3'h4 == addrTBankSel3c ? addrT3c : _GEN_300; // @[FFTEngine.scala 460:{50,50}]
  wire [3:0] _GEN_317 = 3'h5 == addrTBankSel3c ? addrT3c : _GEN_301; // @[FFTEngine.scala 460:{50,50}]
  wire [3:0] _GEN_318 = 3'h6 == addrTBankSel3c ? addrT3c : _GEN_302; // @[FFTEngine.scala 460:{50,50}]
  wire [3:0] _GEN_319 = 3'h7 == addrTBankSel3c ? addrT3c : _GEN_303; // @[FFTEngine.scala 460:{50,50}]
  wire [3:0] _GEN_320 = 3'h0 == addrSBankSel3c ? addrS3c : _GEN_312; // @[FFTEngine.scala 461:{50,50}]
  wire [3:0] _GEN_321 = 3'h1 == addrSBankSel3c ? addrS3c : _GEN_313; // @[FFTEngine.scala 461:{50,50}]
  wire [3:0] _GEN_322 = 3'h2 == addrSBankSel3c ? addrS3c : _GEN_314; // @[FFTEngine.scala 461:{50,50}]
  wire [3:0] _GEN_323 = 3'h3 == addrSBankSel3c ? addrS3c : _GEN_315; // @[FFTEngine.scala 461:{50,50}]
  wire [3:0] _GEN_324 = 3'h4 == addrSBankSel3c ? addrS3c : _GEN_316; // @[FFTEngine.scala 461:{50,50}]
  wire [3:0] _GEN_325 = 3'h5 == addrSBankSel3c ? addrS3c : _GEN_317; // @[FFTEngine.scala 461:{50,50}]
  wire [3:0] _GEN_326 = 3'h6 == addrSBankSel3c ? addrS3c : _GEN_318; // @[FFTEngine.scala 461:{50,50}]
  wire [3:0] _GEN_327 = 3'h7 == addrSBankSel3c ? addrS3c : _GEN_319; // @[FFTEngine.scala 461:{50,50}]
  wire [3:0] _GEN_344 = _srcBufferNext_T_3 ? _GEN_320 : _GEN_296; // @[FFTEngine.scala 459:37]
  wire [3:0] _GEN_345 = _srcBufferNext_T_3 ? _GEN_321 : _GEN_297; // @[FFTEngine.scala 459:37]
  wire [3:0] _GEN_346 = _srcBufferNext_T_3 ? _GEN_322 : _GEN_298; // @[FFTEngine.scala 459:37]
  wire [3:0] _GEN_347 = _srcBufferNext_T_3 ? _GEN_323 : _GEN_299; // @[FFTEngine.scala 459:37]
  wire [3:0] _GEN_348 = _srcBufferNext_T_3 ? _GEN_324 : _GEN_300; // @[FFTEngine.scala 459:37]
  wire [3:0] _GEN_349 = _srcBufferNext_T_3 ? _GEN_325 : _GEN_301; // @[FFTEngine.scala 459:37]
  wire [3:0] _GEN_350 = _srcBufferNext_T_3 ? _GEN_326 : _GEN_302; // @[FFTEngine.scala 459:37]
  wire [3:0] _GEN_351 = _srcBufferNext_T_3 ? _GEN_327 : _GEN_303; // @[FFTEngine.scala 459:37]
  wire [3:0] _GEN_352 = _srcBufferNext_T_3 ? _GEN_296 : _GEN_320; // @[FFTEngine.scala 459:37]
  wire [3:0] _GEN_353 = _srcBufferNext_T_3 ? _GEN_297 : _GEN_321; // @[FFTEngine.scala 459:37]
  wire [3:0] _GEN_354 = _srcBufferNext_T_3 ? _GEN_298 : _GEN_322; // @[FFTEngine.scala 459:37]
  wire [3:0] _GEN_355 = _srcBufferNext_T_3 ? _GEN_299 : _GEN_323; // @[FFTEngine.scala 459:37]
  wire [3:0] _GEN_356 = _srcBufferNext_T_3 ? _GEN_300 : _GEN_324; // @[FFTEngine.scala 459:37]
  wire [3:0] _GEN_357 = _srcBufferNext_T_3 ? _GEN_301 : _GEN_325; // @[FFTEngine.scala 459:37]
  wire [3:0] _GEN_358 = _srcBufferNext_T_3 ? _GEN_302 : _GEN_326; // @[FFTEngine.scala 459:37]
  wire [3:0] _GEN_359 = _srcBufferNext_T_3 ? _GEN_303 : _GEN_327; // @[FFTEngine.scala 459:37]
  wire [3:0] _GEN_408 = ~procState3c ? _GEN_344 : _GEN_344; // @[FFTEngine.scala 458:28]
  wire [3:0] _GEN_409 = ~procState3c ? _GEN_345 : _GEN_345; // @[FFTEngine.scala 458:28]
  wire [3:0] _GEN_410 = ~procState3c ? _GEN_346 : _GEN_346; // @[FFTEngine.scala 458:28]
  wire [3:0] _GEN_411 = ~procState3c ? _GEN_347 : _GEN_347; // @[FFTEngine.scala 458:28]
  wire [3:0] _GEN_412 = ~procState3c ? _GEN_348 : _GEN_348; // @[FFTEngine.scala 458:28]
  wire [3:0] _GEN_413 = ~procState3c ? _GEN_349 : _GEN_349; // @[FFTEngine.scala 458:28]
  wire [3:0] _GEN_414 = ~procState3c ? _GEN_350 : _GEN_350; // @[FFTEngine.scala 458:28]
  wire [3:0] _GEN_415 = ~procState3c ? _GEN_351 : _GEN_351; // @[FFTEngine.scala 458:28]
  wire [3:0] _GEN_416 = ~procState3c ? _GEN_352 : _GEN_352; // @[FFTEngine.scala 458:28]
  wire [3:0] _GEN_417 = ~procState3c ? _GEN_353 : _GEN_353; // @[FFTEngine.scala 458:28]
  wire [3:0] _GEN_418 = ~procState3c ? _GEN_354 : _GEN_354; // @[FFTEngine.scala 458:28]
  wire [3:0] _GEN_419 = ~procState3c ? _GEN_355 : _GEN_355; // @[FFTEngine.scala 458:28]
  wire [3:0] _GEN_420 = ~procState3c ? _GEN_356 : _GEN_356; // @[FFTEngine.scala 458:28]
  wire [3:0] _GEN_421 = ~procState3c ? _GEN_357 : _GEN_357; // @[FFTEngine.scala 458:28]
  wire [3:0] _GEN_422 = ~procState3c ? _GEN_358 : _GEN_358; // @[FFTEngine.scala 458:28]
  wire [3:0] _GEN_423 = ~procState3c ? _GEN_359 : _GEN_359; // @[FFTEngine.scala 458:28]
  wire [31:0] _writeDataS3c_T = {writeDataTRPre3c,fftCalc_io_dataOutSR3c}; // @[Cat.scala 33:92]
  wire [31:0] _writeDataS3c_T_7 = {writeDataTRPre3c[15],writeDataTRPre3c[15:1],fftCalc_io_dataOutSR3c[15],
    fftCalc_io_dataOutSR3c[15:1]}; // @[Cat.scala 33:92]
  wire [31:0] _writeDataS3c_T_8 = {fftCalc_io_dataOutSI3c,fftCalc_io_dataOutSR3c}; // @[Cat.scala 33:92]
  wire [31:0] _writeDataT3c_T_8 = {writeDataTIPre3c,writeDataTRPre3c}; // @[Cat.scala 33:92]
  wire [31:0] _GEN_424 = ~isFFT & _T_12 ? _writeDataS3c_T_7 : _writeDataS3c_T_8; // @[FFTEngine.scala 486:55 487:30 490:30]
  wire [31:0] _GEN_425 = ~isFFT & _T_12 ? _writeDataS3c_T_7 : _writeDataT3c_T_8; // @[FFTEngine.scala 486:55 488:30 491:30]
  wire [31:0] _GEN_426 = isFFT & _addrSBankSel_T_2 ? _writeDataS3c_T : _GEN_424; // @[FFTEngine.scala 483:47 484:30]
  wire [31:0] _GEN_427 = isFFT & _addrSBankSel_T_2 ? _writeDataS3c_T : _GEN_425; // @[FFTEngine.scala 483:47 485:30]
  wire [31:0] writeDataS3c = sameAddr3c ? _GEN_426 : _writeDataS3c_T_8; // @[FFTEngine.scala 482:26 494:26]
  wire [31:0] writeDataT3c = sameAddr3c ? _GEN_427 : _writeDataT3c_T_8; // @[FFTEngine.scala 482:26 495:26]
  wire [31:0] _GEN_431 = 3'h0 == addrSBankSel3c ? writeDataS3c : writeDataT3c; // @[FFTEngine.scala 501:50 502:50]
  wire [31:0] _GEN_434 = procState3c ? _GEN_431 : _GEN_431; // @[FFTEngine.scala 499:30]
  wire [31:0] _GEN_436 = 3'h1 == addrSBankSel3c ? writeDataS3c : writeDataT3c; // @[FFTEngine.scala 501:50 502:50]
  wire [31:0] _GEN_439 = procState3c ? _GEN_436 : _GEN_436; // @[FFTEngine.scala 499:30]
  wire [31:0] _GEN_441 = 3'h2 == addrSBankSel3c ? writeDataS3c : writeDataT3c; // @[FFTEngine.scala 501:50 502:50]
  wire [31:0] _GEN_444 = procState3c ? _GEN_441 : _GEN_441; // @[FFTEngine.scala 499:30]
  wire [31:0] _GEN_446 = 3'h3 == addrSBankSel3c ? writeDataS3c : writeDataT3c; // @[FFTEngine.scala 501:50 502:50]
  wire [31:0] _GEN_449 = procState3c ? _GEN_446 : _GEN_446; // @[FFTEngine.scala 499:30]
  wire [31:0] _GEN_451 = 3'h4 == addrSBankSel3c ? writeDataS3c : writeDataT3c; // @[FFTEngine.scala 501:50 502:50]
  wire [31:0] _GEN_454 = procState3c ? _GEN_451 : _GEN_451; // @[FFTEngine.scala 499:30]
  wire [31:0] _GEN_456 = 3'h5 == addrSBankSel3c ? writeDataS3c : writeDataT3c; // @[FFTEngine.scala 501:50 502:50]
  wire [31:0] _GEN_459 = procState3c ? _GEN_456 : _GEN_456; // @[FFTEngine.scala 499:30]
  wire [31:0] _GEN_461 = 3'h6 == addrSBankSel3c ? writeDataS3c : writeDataT3c; // @[FFTEngine.scala 501:50 502:50]
  wire [31:0] _GEN_464 = procState3c ? _GEN_461 : _GEN_461; // @[FFTEngine.scala 499:30]
  wire [31:0] _GEN_466 = 3'h7 == addrSBankSel3c ? writeDataS3c : writeDataT3c; // @[FFTEngine.scala 501:50 502:50]
  wire [31:0] _GEN_469 = procState3c ? _GEN_466 : _GEN_466; // @[FFTEngine.scala 499:30]
  reg [3:0] addrS1c_1; // @[Reg.scala 35:20]
  reg [3:0] addrS2c_1; // @[Reg.scala 35:20]
  reg [3:0] addrS3c_1; // @[Reg.scala 35:20]
  reg [3:0] addrT1c_1; // @[Reg.scala 35:20]
  reg [3:0] addrT2c_1; // @[Reg.scala 35:20]
  reg [3:0] addrT3c_1; // @[Reg.scala 35:20]
  wire [2:0] _addrSBankSel_T_6 = _radixInit_T_11 ? addrSBankSelProc_1 : addrSBankSelKernel_1; // @[FFTEngine.scala 384:32]
  wire [2:0] _addrTBankSel_T_6 = _radixInit_T_11 ? addrTBankSelProc_1 : addrTBankSelKernel_1; // @[FFTEngine.scala 385:32]
  wire [2:0] _addrSBankSel_T_10 = _radixInit_T_11 | _radixInit_T_1 & phaseCount == 3'h0 ? addrSBankSelProc_1 :
    addrSBankSelKernel_1; // @[FFTEngine.scala 387:32]
  wire [2:0] _addrTBankSel_T_10 = _addrSBankSel_T_4 ? addrTBankSelProc_1 : addrTBankSelKernel_1; // @[FFTEngine.scala 388:32]
  wire [2:0] addrSBankSel_1 = isFFT ? _addrSBankSel_T_6 : _addrSBankSel_T_10; // @[FFTEngine.scala 383:21 384:26 387:26]
  wire [2:0] addrTBankSel_1 = isFFT ? _addrTBankSel_T_6 : _addrTBankSel_T_10; // @[FFTEngine.scala 383:21 385:26 388:26]
  reg [2:0] addrSBankSel1c_1; // @[Reg.scala 35:20]
  reg [2:0] addrTBankSel1c_1; // @[Reg.scala 35:20]
  wire [15:0] _GEN_481 = 3'h1 == addrSBankSel1c_1 ? dataInRPre_1 : dataInRPre_0; // @[FFTEngine.scala 395:{29,29}]
  wire [15:0] _GEN_482 = 3'h2 == addrSBankSel1c_1 ? dataInRPre_2 : _GEN_481; // @[FFTEngine.scala 395:{29,29}]
  wire [15:0] _GEN_483 = 3'h3 == addrSBankSel1c_1 ? dataInRPre_3 : _GEN_482; // @[FFTEngine.scala 395:{29,29}]
  wire [15:0] _GEN_484 = 3'h4 == addrSBankSel1c_1 ? dataInRPre_4 : _GEN_483; // @[FFTEngine.scala 395:{29,29}]
  wire [15:0] _GEN_485 = 3'h5 == addrSBankSel1c_1 ? dataInRPre_5 : _GEN_484; // @[FFTEngine.scala 395:{29,29}]
  wire [15:0] _GEN_486 = 3'h6 == addrSBankSel1c_1 ? dataInRPre_6 : _GEN_485; // @[FFTEngine.scala 395:{29,29}]
  wire [15:0] _GEN_489 = 3'h1 == addrSBankSel1c_1 ? dataInIPre_1 : dataInIPre_0; // @[FFTEngine.scala 396:{35,35}]
  wire [15:0] _GEN_490 = 3'h2 == addrSBankSel1c_1 ? dataInIPre_2 : _GEN_489; // @[FFTEngine.scala 396:{35,35}]
  wire [15:0] _GEN_491 = 3'h3 == addrSBankSel1c_1 ? dataInIPre_3 : _GEN_490; // @[FFTEngine.scala 396:{35,35}]
  wire [15:0] _GEN_492 = 3'h4 == addrSBankSel1c_1 ? dataInIPre_4 : _GEN_491; // @[FFTEngine.scala 396:{35,35}]
  wire [15:0] _GEN_493 = 3'h5 == addrSBankSel1c_1 ? dataInIPre_5 : _GEN_492; // @[FFTEngine.scala 396:{35,35}]
  wire [15:0] _GEN_494 = 3'h6 == addrSBankSel1c_1 ? dataInIPre_6 : _GEN_493; // @[FFTEngine.scala 396:{35,35}]
  wire [15:0] _GEN_495 = 3'h7 == addrSBankSel1c_1 ? dataInIPre_7 : _GEN_494; // @[FFTEngine.scala 396:{35,35}]
  wire [15:0] _GEN_497 = 3'h1 == addrTBankSel1c_1 ? dataInIPre_1 : dataInIPre_0; // @[FFTEngine.scala 397:{35,35}]
  wire [15:0] _GEN_498 = 3'h2 == addrTBankSel1c_1 ? dataInIPre_2 : _GEN_497; // @[FFTEngine.scala 397:{35,35}]
  wire [15:0] _GEN_499 = 3'h3 == addrTBankSel1c_1 ? dataInIPre_3 : _GEN_498; // @[FFTEngine.scala 397:{35,35}]
  wire [15:0] _GEN_500 = 3'h4 == addrTBankSel1c_1 ? dataInIPre_4 : _GEN_499; // @[FFTEngine.scala 397:{35,35}]
  wire [15:0] _GEN_501 = 3'h5 == addrTBankSel1c_1 ? dataInIPre_5 : _GEN_500; // @[FFTEngine.scala 397:{35,35}]
  wire [15:0] _GEN_502 = 3'h6 == addrTBankSel1c_1 ? dataInIPre_6 : _GEN_501; // @[FFTEngine.scala 397:{35,35}]
  wire [15:0] _GEN_503 = 3'h7 == addrTBankSel1c_1 ? dataInIPre_7 : _GEN_502; // @[FFTEngine.scala 397:{35,35}]
  wire [15:0] _GEN_505 = 3'h1 == addrTBankSel1c_1 ? dataInRPre_1 : dataInRPre_0; // @[FFTEngine.scala 397:{35,35}]
  wire [15:0] _GEN_506 = 3'h2 == addrTBankSel1c_1 ? dataInRPre_2 : _GEN_505; // @[FFTEngine.scala 397:{35,35}]
  wire [15:0] _GEN_507 = 3'h3 == addrTBankSel1c_1 ? dataInRPre_3 : _GEN_506; // @[FFTEngine.scala 397:{35,35}]
  wire [15:0] _GEN_508 = 3'h4 == addrTBankSel1c_1 ? dataInRPre_4 : _GEN_507; // @[FFTEngine.scala 397:{35,35}]
  wire [15:0] _GEN_509 = 3'h5 == addrTBankSel1c_1 ? dataInRPre_5 : _GEN_508; // @[FFTEngine.scala 397:{35,35}]
  wire [15:0] _GEN_510 = 3'h6 == addrTBankSel1c_1 ? dataInRPre_6 : _GEN_509; // @[FFTEngine.scala 397:{35,35}]
  wire [15:0] _GEN_511 = 3'h7 == addrTBankSel1c_1 ? dataInRPre_7 : _GEN_510; // @[FFTEngine.scala 397:{35,35}]
  wire [6:0] _fftCalc_io_nk_T_6 = {nk_1[5:0],1'h0}; // @[Cat.scala 33:92]
  wire [15:0] _writeDataTRPre3c_T_7 = ~fftCalc_1_io_dataOutTI3c; // @[FFTEngine.scala 407:132]
  wire [15:0] _writeDataTRPre3c_T_9 = _writeDataTRPre3c_T_7 + 16'h1; // @[FFTEngine.scala 407:156]
  wire [15:0] _writeDataTRPre3c_T_10 = isFFT ? fftCalc_1_io_dataOutTI3c : _writeDataTRPre3c_T_9; // @[FFTEngine.scala 407:100]
  wire [15:0] _writeDataTRPre3c_T_11 = _T_12 ? fftCalc_1_io_dataOutTR3c : _writeDataTRPre3c_T_10; // @[FFTEngine.scala 407:52]
  wire [15:0] writeDataTRPre3c_1 = procState3c ? _writeDataTRPre3c_T_11 : fftCalc_1_io_dataOutTR3c; // @[FFTEngine.scala 407:35]
  wire [15:0] _writeDataTIPre3c_T_13 = ~fftCalc_1_io_dataOutTR3c; // @[FFTEngine.scala 408:115]
  wire [15:0] _writeDataTIPre3c_T_15 = _writeDataTIPre3c_T_13 + 16'h1; // @[FFTEngine.scala 408:139]
  wire [15:0] _writeDataTIPre3c_T_16 = isFFT ? _writeDataTIPre3c_T_15 : fftCalc_1_io_dataOutTR3c; // @[FFTEngine.scala 408:107]
  wire [15:0] _writeDataTIPre3c_T_17 = _T_12 ? _writeDataTRPre3c_T_9 : _writeDataTIPre3c_T_16; // @[FFTEngine.scala 408:52]
  wire [15:0] writeDataTIPre3c_1 = procState3c ? _writeDataTIPre3c_T_17 : fftCalc_1_io_dataOutTI3c; // @[FFTEngine.scala 408:35]
  wire [2:0] _addrSBankSel3c_T_8 = procState3c | kernelState3c & _T_6 ? addrSBankSelProc3c_1_r :
    addrSBankSelKernel3c_1_r; // @[FFTEngine.scala 414:34]
  wire [2:0] _addrTBankSel3c_T_8 = _addrSBankSel3c_T_2 ? addrTBankSelProc3c_1_r : addrTBankSelKernel3c_1_r; // @[FFTEngine.scala 415:34]
  wire [2:0] _addrSBankSel3c_T_9 = procState3c ? addrSBankSelProc3c_1_r : addrSBankSelKernel3c_1_r; // @[FFTEngine.scala 417:34]
  wire [2:0] _addrTBankSel3c_T_9 = procState3c ? addrTBankSelProc3c_1_r : addrTBankSelKernel3c_1_r; // @[FFTEngine.scala 418:34]
  wire [2:0] addrSBankSel3c_1 = isFFT ? _addrSBankSel3c_T_8 : _addrSBankSel3c_T_9; // @[FFTEngine.scala 413:21 414:28 417:28]
  wire [2:0] addrTBankSel3c_1 = isFFT ? _addrTBankSel3c_T_8 : _addrTBankSel3c_T_9; // @[FFTEngine.scala 413:21 415:28 418:28]
  wire [3:0] _GEN_522 = 3'h0 == addrTBankSel_1 ? addrT_1[3:0] : _GEN_416; // @[FFTEngine.scala 440:{48,48}]
  wire [3:0] _GEN_523 = 3'h1 == addrTBankSel_1 ? addrT_1[3:0] : _GEN_417; // @[FFTEngine.scala 440:{48,48}]
  wire [3:0] _GEN_524 = 3'h2 == addrTBankSel_1 ? addrT_1[3:0] : _GEN_418; // @[FFTEngine.scala 440:{48,48}]
  wire [3:0] _GEN_525 = 3'h3 == addrTBankSel_1 ? addrT_1[3:0] : _GEN_419; // @[FFTEngine.scala 440:{48,48}]
  wire [3:0] _GEN_526 = 3'h4 == addrTBankSel_1 ? addrT_1[3:0] : _GEN_420; // @[FFTEngine.scala 440:{48,48}]
  wire [3:0] _GEN_527 = 3'h5 == addrTBankSel_1 ? addrT_1[3:0] : _GEN_421; // @[FFTEngine.scala 440:{48,48}]
  wire [3:0] _GEN_528 = 3'h6 == addrTBankSel_1 ? addrT_1[3:0] : _GEN_422; // @[FFTEngine.scala 440:{48,48}]
  wire [3:0] _GEN_529 = 3'h7 == addrTBankSel_1 ? addrT_1[3:0] : _GEN_423; // @[FFTEngine.scala 440:{48,48}]
  wire [3:0] _GEN_530 = 3'h0 == addrSBankSel_1 ? addrS_1[3:0] : _GEN_522; // @[FFTEngine.scala 441:{48,48}]
  wire [3:0] _GEN_531 = 3'h1 == addrSBankSel_1 ? addrS_1[3:0] : _GEN_523; // @[FFTEngine.scala 441:{48,48}]
  wire [3:0] _GEN_532 = 3'h2 == addrSBankSel_1 ? addrS_1[3:0] : _GEN_524; // @[FFTEngine.scala 441:{48,48}]
  wire [3:0] _GEN_533 = 3'h3 == addrSBankSel_1 ? addrS_1[3:0] : _GEN_525; // @[FFTEngine.scala 441:{48,48}]
  wire [3:0] _GEN_534 = 3'h4 == addrSBankSel_1 ? addrS_1[3:0] : _GEN_526; // @[FFTEngine.scala 441:{48,48}]
  wire [3:0] _GEN_535 = 3'h5 == addrSBankSel_1 ? addrS_1[3:0] : _GEN_527; // @[FFTEngine.scala 441:{48,48}]
  wire [3:0] _GEN_536 = 3'h6 == addrSBankSel_1 ? addrS_1[3:0] : _GEN_528; // @[FFTEngine.scala 441:{48,48}]
  wire [3:0] _GEN_537 = 3'h7 == addrSBankSel_1 ? addrS_1[3:0] : _GEN_529; // @[FFTEngine.scala 441:{48,48}]
  wire [3:0] _GEN_538 = 3'h0 == addrTBankSel_1 ? addrT_1[3:0] : _GEN_408; // @[FFTEngine.scala 443:{48,48}]
  wire [3:0] _GEN_539 = 3'h1 == addrTBankSel_1 ? addrT_1[3:0] : _GEN_409; // @[FFTEngine.scala 443:{48,48}]
  wire [3:0] _GEN_540 = 3'h2 == addrTBankSel_1 ? addrT_1[3:0] : _GEN_410; // @[FFTEngine.scala 443:{48,48}]
  wire [3:0] _GEN_541 = 3'h3 == addrTBankSel_1 ? addrT_1[3:0] : _GEN_411; // @[FFTEngine.scala 443:{48,48}]
  wire [3:0] _GEN_542 = 3'h4 == addrTBankSel_1 ? addrT_1[3:0] : _GEN_412; // @[FFTEngine.scala 443:{48,48}]
  wire [3:0] _GEN_543 = 3'h5 == addrTBankSel_1 ? addrT_1[3:0] : _GEN_413; // @[FFTEngine.scala 443:{48,48}]
  wire [3:0] _GEN_544 = 3'h6 == addrTBankSel_1 ? addrT_1[3:0] : _GEN_414; // @[FFTEngine.scala 443:{48,48}]
  wire [3:0] _GEN_545 = 3'h7 == addrTBankSel_1 ? addrT_1[3:0] : _GEN_415; // @[FFTEngine.scala 443:{48,48}]
  wire [3:0] _GEN_546 = 3'h0 == addrSBankSel_1 ? addrS_1[3:0] : _GEN_538; // @[FFTEngine.scala 444:{48,48}]
  wire [3:0] _GEN_547 = 3'h1 == addrSBankSel_1 ? addrS_1[3:0] : _GEN_539; // @[FFTEngine.scala 444:{48,48}]
  wire [3:0] _GEN_548 = 3'h2 == addrSBankSel_1 ? addrS_1[3:0] : _GEN_540; // @[FFTEngine.scala 444:{48,48}]
  wire [3:0] _GEN_549 = 3'h3 == addrSBankSel_1 ? addrS_1[3:0] : _GEN_541; // @[FFTEngine.scala 444:{48,48}]
  wire [3:0] _GEN_550 = 3'h4 == addrSBankSel_1 ? addrS_1[3:0] : _GEN_542; // @[FFTEngine.scala 444:{48,48}]
  wire [3:0] _GEN_551 = 3'h5 == addrSBankSel_1 ? addrS_1[3:0] : _GEN_543; // @[FFTEngine.scala 444:{48,48}]
  wire [3:0] _GEN_552 = 3'h6 == addrSBankSel_1 ? addrS_1[3:0] : _GEN_544; // @[FFTEngine.scala 444:{48,48}]
  wire [3:0] _GEN_553 = 3'h7 == addrSBankSel_1 ? addrS_1[3:0] : _GEN_545; // @[FFTEngine.scala 444:{48,48}]
  wire [3:0] _GEN_554 = _srcBufferNext_T_3 ? _GEN_530 : _GEN_416; // @[FFTEngine.scala 439:37]
  wire [3:0] _GEN_555 = _srcBufferNext_T_3 ? _GEN_531 : _GEN_417; // @[FFTEngine.scala 439:37]
  wire [3:0] _GEN_556 = _srcBufferNext_T_3 ? _GEN_532 : _GEN_418; // @[FFTEngine.scala 439:37]
  wire [3:0] _GEN_557 = _srcBufferNext_T_3 ? _GEN_533 : _GEN_419; // @[FFTEngine.scala 439:37]
  wire [3:0] _GEN_558 = _srcBufferNext_T_3 ? _GEN_534 : _GEN_420; // @[FFTEngine.scala 439:37]
  wire [3:0] _GEN_559 = _srcBufferNext_T_3 ? _GEN_535 : _GEN_421; // @[FFTEngine.scala 439:37]
  wire [3:0] _GEN_560 = _srcBufferNext_T_3 ? _GEN_536 : _GEN_422; // @[FFTEngine.scala 439:37]
  wire [3:0] _GEN_561 = _srcBufferNext_T_3 ? _GEN_537 : _GEN_423; // @[FFTEngine.scala 439:37]
  wire [3:0] _GEN_562 = _srcBufferNext_T_3 ? _GEN_408 : _GEN_546; // @[FFTEngine.scala 439:37]
  wire [3:0] _GEN_563 = _srcBufferNext_T_3 ? _GEN_409 : _GEN_547; // @[FFTEngine.scala 439:37]
  wire [3:0] _GEN_564 = _srcBufferNext_T_3 ? _GEN_410 : _GEN_548; // @[FFTEngine.scala 439:37]
  wire [3:0] _GEN_565 = _srcBufferNext_T_3 ? _GEN_411 : _GEN_549; // @[FFTEngine.scala 439:37]
  wire [3:0] _GEN_566 = _srcBufferNext_T_3 ? _GEN_412 : _GEN_550; // @[FFTEngine.scala 439:37]
  wire [3:0] _GEN_567 = _srcBufferNext_T_3 ? _GEN_413 : _GEN_551; // @[FFTEngine.scala 439:37]
  wire [3:0] _GEN_568 = _srcBufferNext_T_3 ? _GEN_414 : _GEN_552; // @[FFTEngine.scala 439:37]
  wire [3:0] _GEN_569 = _srcBufferNext_T_3 ? _GEN_415 : _GEN_553; // @[FFTEngine.scala 439:37]
  wire [3:0] _GEN_570 = ~_radixInit_T_11 ? _GEN_554 : _GEN_416; // @[FFTEngine.scala 438:26]
  wire [3:0] _GEN_571 = ~_radixInit_T_11 ? _GEN_555 : _GEN_417; // @[FFTEngine.scala 438:26]
  wire [3:0] _GEN_572 = ~_radixInit_T_11 ? _GEN_556 : _GEN_418; // @[FFTEngine.scala 438:26]
  wire [3:0] _GEN_573 = ~_radixInit_T_11 ? _GEN_557 : _GEN_419; // @[FFTEngine.scala 438:26]
  wire [3:0] _GEN_574 = ~_radixInit_T_11 ? _GEN_558 : _GEN_420; // @[FFTEngine.scala 438:26]
  wire [3:0] _GEN_575 = ~_radixInit_T_11 ? _GEN_559 : _GEN_421; // @[FFTEngine.scala 438:26]
  wire [3:0] _GEN_576 = ~_radixInit_T_11 ? _GEN_560 : _GEN_422; // @[FFTEngine.scala 438:26]
  wire [3:0] _GEN_577 = ~_radixInit_T_11 ? _GEN_561 : _GEN_423; // @[FFTEngine.scala 438:26]
  wire [3:0] _GEN_578 = ~_radixInit_T_11 ? _GEN_562 : _GEN_408; // @[FFTEngine.scala 438:26]
  wire [3:0] _GEN_579 = ~_radixInit_T_11 ? _GEN_563 : _GEN_409; // @[FFTEngine.scala 438:26]
  wire [3:0] _GEN_580 = ~_radixInit_T_11 ? _GEN_564 : _GEN_410; // @[FFTEngine.scala 438:26]
  wire [3:0] _GEN_581 = ~_radixInit_T_11 ? _GEN_565 : _GEN_411; // @[FFTEngine.scala 438:26]
  wire [3:0] _GEN_582 = ~_radixInit_T_11 ? _GEN_566 : _GEN_412; // @[FFTEngine.scala 438:26]
  wire [3:0] _GEN_583 = ~_radixInit_T_11 ? _GEN_567 : _GEN_413; // @[FFTEngine.scala 438:26]
  wire [3:0] _GEN_584 = ~_radixInit_T_11 ? _GEN_568 : _GEN_414; // @[FFTEngine.scala 438:26]
  wire [3:0] _GEN_585 = ~_radixInit_T_11 ? _GEN_569 : _GEN_415; // @[FFTEngine.scala 438:26]
  wire [3:0] _GEN_586 = 3'h0 == addrTBankSel3c_1 ? addrT3c_1 : _GEN_578; // @[FFTEngine.scala 460:{50,50}]
  wire [3:0] _GEN_587 = 3'h1 == addrTBankSel3c_1 ? addrT3c_1 : _GEN_579; // @[FFTEngine.scala 460:{50,50}]
  wire [3:0] _GEN_588 = 3'h2 == addrTBankSel3c_1 ? addrT3c_1 : _GEN_580; // @[FFTEngine.scala 460:{50,50}]
  wire [3:0] _GEN_589 = 3'h3 == addrTBankSel3c_1 ? addrT3c_1 : _GEN_581; // @[FFTEngine.scala 460:{50,50}]
  wire [3:0] _GEN_590 = 3'h4 == addrTBankSel3c_1 ? addrT3c_1 : _GEN_582; // @[FFTEngine.scala 460:{50,50}]
  wire [3:0] _GEN_591 = 3'h5 == addrTBankSel3c_1 ? addrT3c_1 : _GEN_583; // @[FFTEngine.scala 460:{50,50}]
  wire [3:0] _GEN_592 = 3'h6 == addrTBankSel3c_1 ? addrT3c_1 : _GEN_584; // @[FFTEngine.scala 460:{50,50}]
  wire [3:0] _GEN_593 = 3'h7 == addrTBankSel3c_1 ? addrT3c_1 : _GEN_585; // @[FFTEngine.scala 460:{50,50}]
  wire [3:0] _GEN_594 = 3'h0 == addrSBankSel3c_1 ? addrS3c_1 : _GEN_586; // @[FFTEngine.scala 461:{50,50}]
  wire [3:0] _GEN_595 = 3'h1 == addrSBankSel3c_1 ? addrS3c_1 : _GEN_587; // @[FFTEngine.scala 461:{50,50}]
  wire [3:0] _GEN_596 = 3'h2 == addrSBankSel3c_1 ? addrS3c_1 : _GEN_588; // @[FFTEngine.scala 461:{50,50}]
  wire [3:0] _GEN_597 = 3'h3 == addrSBankSel3c_1 ? addrS3c_1 : _GEN_589; // @[FFTEngine.scala 461:{50,50}]
  wire [3:0] _GEN_598 = 3'h4 == addrSBankSel3c_1 ? addrS3c_1 : _GEN_590; // @[FFTEngine.scala 461:{50,50}]
  wire [3:0] _GEN_599 = 3'h5 == addrSBankSel3c_1 ? addrS3c_1 : _GEN_591; // @[FFTEngine.scala 461:{50,50}]
  wire [3:0] _GEN_600 = 3'h6 == addrSBankSel3c_1 ? addrS3c_1 : _GEN_592; // @[FFTEngine.scala 461:{50,50}]
  wire [3:0] _GEN_601 = 3'h7 == addrSBankSel3c_1 ? addrS3c_1 : _GEN_593; // @[FFTEngine.scala 461:{50,50}]
  wire [3:0] _GEN_602 = 3'h0 == addrTBankSel3c_1 ? addrT3c_1 : _GEN_570; // @[FFTEngine.scala 463:{50,50}]
  wire [3:0] _GEN_603 = 3'h1 == addrTBankSel3c_1 ? addrT3c_1 : _GEN_571; // @[FFTEngine.scala 463:{50,50}]
  wire [3:0] _GEN_604 = 3'h2 == addrTBankSel3c_1 ? addrT3c_1 : _GEN_572; // @[FFTEngine.scala 463:{50,50}]
  wire [3:0] _GEN_605 = 3'h3 == addrTBankSel3c_1 ? addrT3c_1 : _GEN_573; // @[FFTEngine.scala 463:{50,50}]
  wire [3:0] _GEN_606 = 3'h4 == addrTBankSel3c_1 ? addrT3c_1 : _GEN_574; // @[FFTEngine.scala 463:{50,50}]
  wire [3:0] _GEN_607 = 3'h5 == addrTBankSel3c_1 ? addrT3c_1 : _GEN_575; // @[FFTEngine.scala 463:{50,50}]
  wire [3:0] _GEN_608 = 3'h6 == addrTBankSel3c_1 ? addrT3c_1 : _GEN_576; // @[FFTEngine.scala 463:{50,50}]
  wire [3:0] _GEN_609 = 3'h7 == addrTBankSel3c_1 ? addrT3c_1 : _GEN_577; // @[FFTEngine.scala 463:{50,50}]
  wire [3:0] _GEN_610 = 3'h0 == addrSBankSel3c_1 ? addrS3c_1 : _GEN_602; // @[FFTEngine.scala 464:{50,50}]
  wire [3:0] _GEN_611 = 3'h1 == addrSBankSel3c_1 ? addrS3c_1 : _GEN_603; // @[FFTEngine.scala 464:{50,50}]
  wire [3:0] _GEN_612 = 3'h2 == addrSBankSel3c_1 ? addrS3c_1 : _GEN_604; // @[FFTEngine.scala 464:{50,50}]
  wire [3:0] _GEN_613 = 3'h3 == addrSBankSel3c_1 ? addrS3c_1 : _GEN_605; // @[FFTEngine.scala 464:{50,50}]
  wire [3:0] _GEN_614 = 3'h4 == addrSBankSel3c_1 ? addrS3c_1 : _GEN_606; // @[FFTEngine.scala 464:{50,50}]
  wire [3:0] _GEN_615 = 3'h5 == addrSBankSel3c_1 ? addrS3c_1 : _GEN_607; // @[FFTEngine.scala 464:{50,50}]
  wire [3:0] _GEN_616 = 3'h6 == addrSBankSel3c_1 ? addrS3c_1 : _GEN_608; // @[FFTEngine.scala 464:{50,50}]
  wire [3:0] _GEN_617 = 3'h7 == addrSBankSel3c_1 ? addrS3c_1 : _GEN_609; // @[FFTEngine.scala 464:{50,50}]
  wire [3:0] _GEN_618 = _srcBufferNext_T_3 ? _GEN_594 : _GEN_578; // @[FFTEngine.scala 459:37]
  wire [3:0] _GEN_619 = _srcBufferNext_T_3 ? _GEN_595 : _GEN_579; // @[FFTEngine.scala 459:37]
  wire [3:0] _GEN_620 = _srcBufferNext_T_3 ? _GEN_596 : _GEN_580; // @[FFTEngine.scala 459:37]
  wire [3:0] _GEN_621 = _srcBufferNext_T_3 ? _GEN_597 : _GEN_581; // @[FFTEngine.scala 459:37]
  wire [3:0] _GEN_622 = _srcBufferNext_T_3 ? _GEN_598 : _GEN_582; // @[FFTEngine.scala 459:37]
  wire [3:0] _GEN_623 = _srcBufferNext_T_3 ? _GEN_599 : _GEN_583; // @[FFTEngine.scala 459:37]
  wire [3:0] _GEN_624 = _srcBufferNext_T_3 ? _GEN_600 : _GEN_584; // @[FFTEngine.scala 459:37]
  wire [3:0] _GEN_625 = _srcBufferNext_T_3 ? _GEN_601 : _GEN_585; // @[FFTEngine.scala 459:37]
  wire [3:0] _GEN_626 = _srcBufferNext_T_3 ? _GEN_570 : _GEN_610; // @[FFTEngine.scala 459:37]
  wire [3:0] _GEN_627 = _srcBufferNext_T_3 ? _GEN_571 : _GEN_611; // @[FFTEngine.scala 459:37]
  wire [3:0] _GEN_628 = _srcBufferNext_T_3 ? _GEN_572 : _GEN_612; // @[FFTEngine.scala 459:37]
  wire [3:0] _GEN_629 = _srcBufferNext_T_3 ? _GEN_573 : _GEN_613; // @[FFTEngine.scala 459:37]
  wire [3:0] _GEN_630 = _srcBufferNext_T_3 ? _GEN_574 : _GEN_614; // @[FFTEngine.scala 459:37]
  wire [3:0] _GEN_631 = _srcBufferNext_T_3 ? _GEN_575 : _GEN_615; // @[FFTEngine.scala 459:37]
  wire [3:0] _GEN_632 = _srcBufferNext_T_3 ? _GEN_576 : _GEN_616; // @[FFTEngine.scala 459:37]
  wire [3:0] _GEN_633 = _srcBufferNext_T_3 ? _GEN_577 : _GEN_617; // @[FFTEngine.scala 459:37]
  wire [3:0] _GEN_634 = ~procState3c ? _GEN_618 : _GEN_578; // @[FFTEngine.scala 458:28]
  wire [3:0] _GEN_635 = ~procState3c ? _GEN_619 : _GEN_579; // @[FFTEngine.scala 458:28]
  wire [3:0] _GEN_636 = ~procState3c ? _GEN_620 : _GEN_580; // @[FFTEngine.scala 458:28]
  wire [3:0] _GEN_637 = ~procState3c ? _GEN_621 : _GEN_581; // @[FFTEngine.scala 458:28]
  wire [3:0] _GEN_638 = ~procState3c ? _GEN_622 : _GEN_582; // @[FFTEngine.scala 458:28]
  wire [3:0] _GEN_639 = ~procState3c ? _GEN_623 : _GEN_583; // @[FFTEngine.scala 458:28]
  wire [3:0] _GEN_640 = ~procState3c ? _GEN_624 : _GEN_584; // @[FFTEngine.scala 458:28]
  wire [3:0] _GEN_641 = ~procState3c ? _GEN_625 : _GEN_585; // @[FFTEngine.scala 458:28]
  wire [3:0] _GEN_642 = ~procState3c ? _GEN_626 : _GEN_570; // @[FFTEngine.scala 458:28]
  wire [3:0] _GEN_643 = ~procState3c ? _GEN_627 : _GEN_571; // @[FFTEngine.scala 458:28]
  wire [3:0] _GEN_644 = ~procState3c ? _GEN_628 : _GEN_572; // @[FFTEngine.scala 458:28]
  wire [3:0] _GEN_645 = ~procState3c ? _GEN_629 : _GEN_573; // @[FFTEngine.scala 458:28]
  wire [3:0] _GEN_646 = ~procState3c ? _GEN_630 : _GEN_574; // @[FFTEngine.scala 458:28]
  wire [3:0] _GEN_647 = ~procState3c ? _GEN_631 : _GEN_575; // @[FFTEngine.scala 458:28]
  wire [3:0] _GEN_648 = ~procState3c ? _GEN_632 : _GEN_576; // @[FFTEngine.scala 458:28]
  wire [3:0] _GEN_649 = ~procState3c ? _GEN_633 : _GEN_577; // @[FFTEngine.scala 458:28]
  wire [31:0] _writeDataS3c_T_10 = {writeDataTRPre3c_1,fftCalc_1_io_dataOutSR3c}; // @[Cat.scala 33:92]
  wire [31:0] _writeDataS3c_T_17 = {writeDataTRPre3c_1[15],writeDataTRPre3c_1[15:1],fftCalc_1_io_dataOutSR3c[15],
    fftCalc_1_io_dataOutSR3c[15:1]}; // @[Cat.scala 33:92]
  wire [31:0] _writeDataS3c_T_18 = {fftCalc_1_io_dataOutSI3c,fftCalc_1_io_dataOutSR3c}; // @[Cat.scala 33:92]
  wire [31:0] _writeDataT3c_T_18 = {writeDataTIPre3c_1,writeDataTRPre3c_1}; // @[Cat.scala 33:92]
  wire [31:0] _GEN_650 = ~isFFT & _T_12 ? _writeDataS3c_T_17 : _writeDataS3c_T_18; // @[FFTEngine.scala 486:55 487:30 490:30]
  wire [31:0] _GEN_651 = ~isFFT & _T_12 ? _writeDataS3c_T_17 : _writeDataT3c_T_18; // @[FFTEngine.scala 486:55 488:30 491:30]
  wire [31:0] _GEN_652 = isFFT & _addrSBankSel_T_2 ? _writeDataS3c_T_10 : _GEN_650; // @[FFTEngine.scala 483:47 484:30]
  wire [31:0] _GEN_653 = isFFT & _addrSBankSel_T_2 ? _writeDataS3c_T_10 : _GEN_651; // @[FFTEngine.scala 483:47 485:30]
  wire [31:0] writeDataS3c_1 = sameAddr3c ? _GEN_652 : _writeDataS3c_T_18; // @[FFTEngine.scala 482:26 494:26]
  wire [31:0] writeDataT3c_1 = sameAddr3c ? _GEN_653 : _writeDataT3c_T_18; // @[FFTEngine.scala 482:26 495:26]
  wire [31:0] _GEN_656 = 3'h0 == addrTBankSel3c_1 ? writeDataT3c_1 : _GEN_434; // @[FFTEngine.scala 513:53 514:46]
  wire [31:0] _GEN_657 = 3'h0 == addrSBankSel3c_1 ? writeDataS3c_1 : _GEN_656; // @[FFTEngine.scala 510:46 511:46]
  wire [31:0] _GEN_658 = procState3c ? _GEN_434 : _GEN_657; // @[FFTEngine.scala 499:30]
  wire [31:0] _GEN_659 = 3'h1 == addrTBankSel3c_1 ? writeDataT3c_1 : _GEN_439; // @[FFTEngine.scala 513:53 514:46]
  wire [31:0] _GEN_660 = 3'h1 == addrSBankSel3c_1 ? writeDataS3c_1 : _GEN_659; // @[FFTEngine.scala 510:46 511:46]
  wire [31:0] _GEN_661 = procState3c ? _GEN_439 : _GEN_660; // @[FFTEngine.scala 499:30]
  wire [31:0] _GEN_662 = 3'h2 == addrTBankSel3c_1 ? writeDataT3c_1 : _GEN_444; // @[FFTEngine.scala 513:53 514:46]
  wire [31:0] _GEN_663 = 3'h2 == addrSBankSel3c_1 ? writeDataS3c_1 : _GEN_662; // @[FFTEngine.scala 510:46 511:46]
  wire [31:0] _GEN_664 = procState3c ? _GEN_444 : _GEN_663; // @[FFTEngine.scala 499:30]
  wire [31:0] _GEN_665 = 3'h3 == addrTBankSel3c_1 ? writeDataT3c_1 : _GEN_449; // @[FFTEngine.scala 513:53 514:46]
  wire [31:0] _GEN_666 = 3'h3 == addrSBankSel3c_1 ? writeDataS3c_1 : _GEN_665; // @[FFTEngine.scala 510:46 511:46]
  wire [31:0] _GEN_667 = procState3c ? _GEN_449 : _GEN_666; // @[FFTEngine.scala 499:30]
  wire [31:0] _GEN_668 = 3'h4 == addrTBankSel3c_1 ? writeDataT3c_1 : _GEN_454; // @[FFTEngine.scala 513:53 514:46]
  wire [31:0] _GEN_669 = 3'h4 == addrSBankSel3c_1 ? writeDataS3c_1 : _GEN_668; // @[FFTEngine.scala 510:46 511:46]
  wire [31:0] _GEN_670 = procState3c ? _GEN_454 : _GEN_669; // @[FFTEngine.scala 499:30]
  wire [31:0] _GEN_671 = 3'h5 == addrTBankSel3c_1 ? writeDataT3c_1 : _GEN_459; // @[FFTEngine.scala 513:53 514:46]
  wire [31:0] _GEN_672 = 3'h5 == addrSBankSel3c_1 ? writeDataS3c_1 : _GEN_671; // @[FFTEngine.scala 510:46 511:46]
  wire [31:0] _GEN_673 = procState3c ? _GEN_459 : _GEN_672; // @[FFTEngine.scala 499:30]
  wire [31:0] _GEN_674 = 3'h6 == addrTBankSel3c_1 ? writeDataT3c_1 : _GEN_464; // @[FFTEngine.scala 513:53 514:46]
  wire [31:0] _GEN_675 = 3'h6 == addrSBankSel3c_1 ? writeDataS3c_1 : _GEN_674; // @[FFTEngine.scala 510:46 511:46]
  wire [31:0] _GEN_676 = procState3c ? _GEN_464 : _GEN_675; // @[FFTEngine.scala 499:30]
  wire [31:0] _GEN_677 = 3'h7 == addrTBankSel3c_1 ? writeDataT3c_1 : _GEN_469; // @[FFTEngine.scala 513:53 514:46]
  wire [31:0] _GEN_678 = 3'h7 == addrSBankSel3c_1 ? writeDataS3c_1 : _GEN_677; // @[FFTEngine.scala 510:46 511:46]
  wire [31:0] _GEN_679 = procState3c ? _GEN_469 : _GEN_678; // @[FFTEngine.scala 499:30]
  reg [3:0] addrS1c_2; // @[Reg.scala 35:20]
  reg [3:0] addrS2c_2; // @[Reg.scala 35:20]
  reg [3:0] addrS3c_2; // @[Reg.scala 35:20]
  reg [3:0] addrT1c_2; // @[Reg.scala 35:20]
  reg [3:0] addrT2c_2; // @[Reg.scala 35:20]
  reg [3:0] addrT3c_2; // @[Reg.scala 35:20]
  wire [2:0] _addrSBankSel_T_11 = _radixInit_T_11 ? addrSBankSelProc_2 : addrSBankSelKernel_2; // @[FFTEngine.scala 384:32]
  wire [2:0] _addrTBankSel_T_11 = _radixInit_T_11 ? addrTBankSelProc_2 : addrTBankSelKernel_2; // @[FFTEngine.scala 385:32]
  wire [2:0] _addrSBankSel_T_15 = _radixInit_T_11 | _radixInit_T_1 & phaseCount == 3'h0 ? addrSBankSelProc_2 :
    addrSBankSelKernel_2; // @[FFTEngine.scala 387:32]
  wire [2:0] _addrTBankSel_T_15 = _addrSBankSel_T_4 ? addrTBankSelProc_2 : addrTBankSelKernel_2; // @[FFTEngine.scala 388:32]
  wire [2:0] addrSBankSel_2 = isFFT ? _addrSBankSel_T_11 : _addrSBankSel_T_15; // @[FFTEngine.scala 383:21 384:26 387:26]
  wire [2:0] addrTBankSel_2 = isFFT ? _addrTBankSel_T_11 : _addrTBankSel_T_15; // @[FFTEngine.scala 383:21 385:26 388:26]
  reg [2:0] addrSBankSel1c_2; // @[Reg.scala 35:20]
  reg [2:0] addrTBankSel1c_2; // @[Reg.scala 35:20]
  wire [15:0] _GEN_691 = 3'h1 == addrSBankSel1c_2 ? dataInRPre_1 : dataInRPre_0; // @[FFTEngine.scala 395:{29,29}]
  wire [15:0] _GEN_692 = 3'h2 == addrSBankSel1c_2 ? dataInRPre_2 : _GEN_691; // @[FFTEngine.scala 395:{29,29}]
  wire [15:0] _GEN_693 = 3'h3 == addrSBankSel1c_2 ? dataInRPre_3 : _GEN_692; // @[FFTEngine.scala 395:{29,29}]
  wire [15:0] _GEN_694 = 3'h4 == addrSBankSel1c_2 ? dataInRPre_4 : _GEN_693; // @[FFTEngine.scala 395:{29,29}]
  wire [15:0] _GEN_695 = 3'h5 == addrSBankSel1c_2 ? dataInRPre_5 : _GEN_694; // @[FFTEngine.scala 395:{29,29}]
  wire [15:0] _GEN_696 = 3'h6 == addrSBankSel1c_2 ? dataInRPre_6 : _GEN_695; // @[FFTEngine.scala 395:{29,29}]
  wire [15:0] _GEN_699 = 3'h1 == addrSBankSel1c_2 ? dataInIPre_1 : dataInIPre_0; // @[FFTEngine.scala 396:{35,35}]
  wire [15:0] _GEN_700 = 3'h2 == addrSBankSel1c_2 ? dataInIPre_2 : _GEN_699; // @[FFTEngine.scala 396:{35,35}]
  wire [15:0] _GEN_701 = 3'h3 == addrSBankSel1c_2 ? dataInIPre_3 : _GEN_700; // @[FFTEngine.scala 396:{35,35}]
  wire [15:0] _GEN_702 = 3'h4 == addrSBankSel1c_2 ? dataInIPre_4 : _GEN_701; // @[FFTEngine.scala 396:{35,35}]
  wire [15:0] _GEN_703 = 3'h5 == addrSBankSel1c_2 ? dataInIPre_5 : _GEN_702; // @[FFTEngine.scala 396:{35,35}]
  wire [15:0] _GEN_704 = 3'h6 == addrSBankSel1c_2 ? dataInIPre_6 : _GEN_703; // @[FFTEngine.scala 396:{35,35}]
  wire [15:0] _GEN_705 = 3'h7 == addrSBankSel1c_2 ? dataInIPre_7 : _GEN_704; // @[FFTEngine.scala 396:{35,35}]
  wire [15:0] _GEN_707 = 3'h1 == addrTBankSel1c_2 ? dataInIPre_1 : dataInIPre_0; // @[FFTEngine.scala 397:{35,35}]
  wire [15:0] _GEN_708 = 3'h2 == addrTBankSel1c_2 ? dataInIPre_2 : _GEN_707; // @[FFTEngine.scala 397:{35,35}]
  wire [15:0] _GEN_709 = 3'h3 == addrTBankSel1c_2 ? dataInIPre_3 : _GEN_708; // @[FFTEngine.scala 397:{35,35}]
  wire [15:0] _GEN_710 = 3'h4 == addrTBankSel1c_2 ? dataInIPre_4 : _GEN_709; // @[FFTEngine.scala 397:{35,35}]
  wire [15:0] _GEN_711 = 3'h5 == addrTBankSel1c_2 ? dataInIPre_5 : _GEN_710; // @[FFTEngine.scala 397:{35,35}]
  wire [15:0] _GEN_712 = 3'h6 == addrTBankSel1c_2 ? dataInIPre_6 : _GEN_711; // @[FFTEngine.scala 397:{35,35}]
  wire [15:0] _GEN_713 = 3'h7 == addrTBankSel1c_2 ? dataInIPre_7 : _GEN_712; // @[FFTEngine.scala 397:{35,35}]
  wire [15:0] _GEN_715 = 3'h1 == addrTBankSel1c_2 ? dataInRPre_1 : dataInRPre_0; // @[FFTEngine.scala 397:{35,35}]
  wire [15:0] _GEN_716 = 3'h2 == addrTBankSel1c_2 ? dataInRPre_2 : _GEN_715; // @[FFTEngine.scala 397:{35,35}]
  wire [15:0] _GEN_717 = 3'h3 == addrTBankSel1c_2 ? dataInRPre_3 : _GEN_716; // @[FFTEngine.scala 397:{35,35}]
  wire [15:0] _GEN_718 = 3'h4 == addrTBankSel1c_2 ? dataInRPre_4 : _GEN_717; // @[FFTEngine.scala 397:{35,35}]
  wire [15:0] _GEN_719 = 3'h5 == addrTBankSel1c_2 ? dataInRPre_5 : _GEN_718; // @[FFTEngine.scala 397:{35,35}]
  wire [15:0] _GEN_720 = 3'h6 == addrTBankSel1c_2 ? dataInRPre_6 : _GEN_719; // @[FFTEngine.scala 397:{35,35}]
  wire [15:0] _GEN_721 = 3'h7 == addrTBankSel1c_2 ? dataInRPre_7 : _GEN_720; // @[FFTEngine.scala 397:{35,35}]
  wire [6:0] _fftCalc_io_nk_T_10 = {nk_2[5:0],1'h0}; // @[Cat.scala 33:92]
  wire [15:0] _writeDataTRPre3c_T_13 = ~fftCalc_2_io_dataOutTI3c; // @[FFTEngine.scala 407:132]
  wire [15:0] _writeDataTRPre3c_T_15 = _writeDataTRPre3c_T_13 + 16'h1; // @[FFTEngine.scala 407:156]
  wire [15:0] _writeDataTRPre3c_T_16 = isFFT ? fftCalc_2_io_dataOutTI3c : _writeDataTRPre3c_T_15; // @[FFTEngine.scala 407:100]
  wire [15:0] _writeDataTRPre3c_T_17 = _T_12 ? fftCalc_2_io_dataOutTR3c : _writeDataTRPre3c_T_16; // @[FFTEngine.scala 407:52]
  wire [15:0] writeDataTRPre3c_2 = procState3c ? _writeDataTRPre3c_T_17 : fftCalc_2_io_dataOutTR3c; // @[FFTEngine.scala 407:35]
  wire [15:0] _writeDataTIPre3c_T_22 = ~fftCalc_2_io_dataOutTR3c; // @[FFTEngine.scala 408:115]
  wire [15:0] _writeDataTIPre3c_T_24 = _writeDataTIPre3c_T_22 + 16'h1; // @[FFTEngine.scala 408:139]
  wire [15:0] _writeDataTIPre3c_T_25 = isFFT ? _writeDataTIPre3c_T_24 : fftCalc_2_io_dataOutTR3c; // @[FFTEngine.scala 408:107]
  wire [15:0] _writeDataTIPre3c_T_26 = _T_12 ? _writeDataTRPre3c_T_15 : _writeDataTIPre3c_T_25; // @[FFTEngine.scala 408:52]
  wire [15:0] writeDataTIPre3c_2 = procState3c ? _writeDataTIPre3c_T_26 : fftCalc_2_io_dataOutTI3c; // @[FFTEngine.scala 408:35]
  wire [2:0] _addrSBankSel3c_T_13 = procState3c | kernelState3c & _T_6 ? addrSBankSelProc3c_2_r :
    addrSBankSelKernel3c_2_r; // @[FFTEngine.scala 414:34]
  wire [2:0] _addrTBankSel3c_T_13 = _addrSBankSel3c_T_2 ? addrTBankSelProc3c_2_r : addrTBankSelKernel3c_2_r; // @[FFTEngine.scala 415:34]
  wire [2:0] _addrSBankSel3c_T_14 = procState3c ? addrSBankSelProc3c_2_r : addrSBankSelKernel3c_2_r; // @[FFTEngine.scala 417:34]
  wire [2:0] _addrTBankSel3c_T_14 = procState3c ? addrTBankSelProc3c_2_r : addrTBankSelKernel3c_2_r; // @[FFTEngine.scala 418:34]
  wire [2:0] addrSBankSel3c_2 = isFFT ? _addrSBankSel3c_T_13 : _addrSBankSel3c_T_14; // @[FFTEngine.scala 413:21 414:28 417:28]
  wire [2:0] addrTBankSel3c_2 = isFFT ? _addrTBankSel3c_T_13 : _addrTBankSel3c_T_14; // @[FFTEngine.scala 413:21 415:28 418:28]
  wire [3:0] _GEN_732 = 3'h0 == addrTBankSel_2 ? addrT_2[3:0] : _GEN_642; // @[FFTEngine.scala 440:{48,48}]
  wire [3:0] _GEN_733 = 3'h1 == addrTBankSel_2 ? addrT_2[3:0] : _GEN_643; // @[FFTEngine.scala 440:{48,48}]
  wire [3:0] _GEN_734 = 3'h2 == addrTBankSel_2 ? addrT_2[3:0] : _GEN_644; // @[FFTEngine.scala 440:{48,48}]
  wire [3:0] _GEN_735 = 3'h3 == addrTBankSel_2 ? addrT_2[3:0] : _GEN_645; // @[FFTEngine.scala 440:{48,48}]
  wire [3:0] _GEN_736 = 3'h4 == addrTBankSel_2 ? addrT_2[3:0] : _GEN_646; // @[FFTEngine.scala 440:{48,48}]
  wire [3:0] _GEN_737 = 3'h5 == addrTBankSel_2 ? addrT_2[3:0] : _GEN_647; // @[FFTEngine.scala 440:{48,48}]
  wire [3:0] _GEN_738 = 3'h6 == addrTBankSel_2 ? addrT_2[3:0] : _GEN_648; // @[FFTEngine.scala 440:{48,48}]
  wire [3:0] _GEN_739 = 3'h7 == addrTBankSel_2 ? addrT_2[3:0] : _GEN_649; // @[FFTEngine.scala 440:{48,48}]
  wire [3:0] _GEN_740 = 3'h0 == addrSBankSel_2 ? addrS_2[3:0] : _GEN_732; // @[FFTEngine.scala 441:{48,48}]
  wire [3:0] _GEN_741 = 3'h1 == addrSBankSel_2 ? addrS_2[3:0] : _GEN_733; // @[FFTEngine.scala 441:{48,48}]
  wire [3:0] _GEN_742 = 3'h2 == addrSBankSel_2 ? addrS_2[3:0] : _GEN_734; // @[FFTEngine.scala 441:{48,48}]
  wire [3:0] _GEN_743 = 3'h3 == addrSBankSel_2 ? addrS_2[3:0] : _GEN_735; // @[FFTEngine.scala 441:{48,48}]
  wire [3:0] _GEN_744 = 3'h4 == addrSBankSel_2 ? addrS_2[3:0] : _GEN_736; // @[FFTEngine.scala 441:{48,48}]
  wire [3:0] _GEN_745 = 3'h5 == addrSBankSel_2 ? addrS_2[3:0] : _GEN_737; // @[FFTEngine.scala 441:{48,48}]
  wire [3:0] _GEN_746 = 3'h6 == addrSBankSel_2 ? addrS_2[3:0] : _GEN_738; // @[FFTEngine.scala 441:{48,48}]
  wire [3:0] _GEN_747 = 3'h7 == addrSBankSel_2 ? addrS_2[3:0] : _GEN_739; // @[FFTEngine.scala 441:{48,48}]
  wire [3:0] _GEN_748 = 3'h0 == addrTBankSel_2 ? addrT_2[3:0] : _GEN_634; // @[FFTEngine.scala 443:{48,48}]
  wire [3:0] _GEN_749 = 3'h1 == addrTBankSel_2 ? addrT_2[3:0] : _GEN_635; // @[FFTEngine.scala 443:{48,48}]
  wire [3:0] _GEN_750 = 3'h2 == addrTBankSel_2 ? addrT_2[3:0] : _GEN_636; // @[FFTEngine.scala 443:{48,48}]
  wire [3:0] _GEN_751 = 3'h3 == addrTBankSel_2 ? addrT_2[3:0] : _GEN_637; // @[FFTEngine.scala 443:{48,48}]
  wire [3:0] _GEN_752 = 3'h4 == addrTBankSel_2 ? addrT_2[3:0] : _GEN_638; // @[FFTEngine.scala 443:{48,48}]
  wire [3:0] _GEN_753 = 3'h5 == addrTBankSel_2 ? addrT_2[3:0] : _GEN_639; // @[FFTEngine.scala 443:{48,48}]
  wire [3:0] _GEN_754 = 3'h6 == addrTBankSel_2 ? addrT_2[3:0] : _GEN_640; // @[FFTEngine.scala 443:{48,48}]
  wire [3:0] _GEN_755 = 3'h7 == addrTBankSel_2 ? addrT_2[3:0] : _GEN_641; // @[FFTEngine.scala 443:{48,48}]
  wire [3:0] _GEN_756 = 3'h0 == addrSBankSel_2 ? addrS_2[3:0] : _GEN_748; // @[FFTEngine.scala 444:{48,48}]
  wire [3:0] _GEN_757 = 3'h1 == addrSBankSel_2 ? addrS_2[3:0] : _GEN_749; // @[FFTEngine.scala 444:{48,48}]
  wire [3:0] _GEN_758 = 3'h2 == addrSBankSel_2 ? addrS_2[3:0] : _GEN_750; // @[FFTEngine.scala 444:{48,48}]
  wire [3:0] _GEN_759 = 3'h3 == addrSBankSel_2 ? addrS_2[3:0] : _GEN_751; // @[FFTEngine.scala 444:{48,48}]
  wire [3:0] _GEN_760 = 3'h4 == addrSBankSel_2 ? addrS_2[3:0] : _GEN_752; // @[FFTEngine.scala 444:{48,48}]
  wire [3:0] _GEN_761 = 3'h5 == addrSBankSel_2 ? addrS_2[3:0] : _GEN_753; // @[FFTEngine.scala 444:{48,48}]
  wire [3:0] _GEN_762 = 3'h6 == addrSBankSel_2 ? addrS_2[3:0] : _GEN_754; // @[FFTEngine.scala 444:{48,48}]
  wire [3:0] _GEN_763 = 3'h7 == addrSBankSel_2 ? addrS_2[3:0] : _GEN_755; // @[FFTEngine.scala 444:{48,48}]
  wire [3:0] _GEN_764 = _srcBufferNext_T_3 ? _GEN_740 : _GEN_642; // @[FFTEngine.scala 439:37]
  wire [3:0] _GEN_765 = _srcBufferNext_T_3 ? _GEN_741 : _GEN_643; // @[FFTEngine.scala 439:37]
  wire [3:0] _GEN_766 = _srcBufferNext_T_3 ? _GEN_742 : _GEN_644; // @[FFTEngine.scala 439:37]
  wire [3:0] _GEN_767 = _srcBufferNext_T_3 ? _GEN_743 : _GEN_645; // @[FFTEngine.scala 439:37]
  wire [3:0] _GEN_768 = _srcBufferNext_T_3 ? _GEN_744 : _GEN_646; // @[FFTEngine.scala 439:37]
  wire [3:0] _GEN_769 = _srcBufferNext_T_3 ? _GEN_745 : _GEN_647; // @[FFTEngine.scala 439:37]
  wire [3:0] _GEN_770 = _srcBufferNext_T_3 ? _GEN_746 : _GEN_648; // @[FFTEngine.scala 439:37]
  wire [3:0] _GEN_771 = _srcBufferNext_T_3 ? _GEN_747 : _GEN_649; // @[FFTEngine.scala 439:37]
  wire [3:0] _GEN_772 = _srcBufferNext_T_3 ? _GEN_634 : _GEN_756; // @[FFTEngine.scala 439:37]
  wire [3:0] _GEN_773 = _srcBufferNext_T_3 ? _GEN_635 : _GEN_757; // @[FFTEngine.scala 439:37]
  wire [3:0] _GEN_774 = _srcBufferNext_T_3 ? _GEN_636 : _GEN_758; // @[FFTEngine.scala 439:37]
  wire [3:0] _GEN_775 = _srcBufferNext_T_3 ? _GEN_637 : _GEN_759; // @[FFTEngine.scala 439:37]
  wire [3:0] _GEN_776 = _srcBufferNext_T_3 ? _GEN_638 : _GEN_760; // @[FFTEngine.scala 439:37]
  wire [3:0] _GEN_777 = _srcBufferNext_T_3 ? _GEN_639 : _GEN_761; // @[FFTEngine.scala 439:37]
  wire [3:0] _GEN_778 = _srcBufferNext_T_3 ? _GEN_640 : _GEN_762; // @[FFTEngine.scala 439:37]
  wire [3:0] _GEN_779 = _srcBufferNext_T_3 ? _GEN_641 : _GEN_763; // @[FFTEngine.scala 439:37]
  wire [3:0] _GEN_780 = ~_radixInit_T_11 ? _GEN_764 : _GEN_642; // @[FFTEngine.scala 438:26]
  wire [3:0] _GEN_781 = ~_radixInit_T_11 ? _GEN_765 : _GEN_643; // @[FFTEngine.scala 438:26]
  wire [3:0] _GEN_782 = ~_radixInit_T_11 ? _GEN_766 : _GEN_644; // @[FFTEngine.scala 438:26]
  wire [3:0] _GEN_783 = ~_radixInit_T_11 ? _GEN_767 : _GEN_645; // @[FFTEngine.scala 438:26]
  wire [3:0] _GEN_784 = ~_radixInit_T_11 ? _GEN_768 : _GEN_646; // @[FFTEngine.scala 438:26]
  wire [3:0] _GEN_785 = ~_radixInit_T_11 ? _GEN_769 : _GEN_647; // @[FFTEngine.scala 438:26]
  wire [3:0] _GEN_786 = ~_radixInit_T_11 ? _GEN_770 : _GEN_648; // @[FFTEngine.scala 438:26]
  wire [3:0] _GEN_787 = ~_radixInit_T_11 ? _GEN_771 : _GEN_649; // @[FFTEngine.scala 438:26]
  wire [3:0] _GEN_788 = ~_radixInit_T_11 ? _GEN_772 : _GEN_634; // @[FFTEngine.scala 438:26]
  wire [3:0] _GEN_789 = ~_radixInit_T_11 ? _GEN_773 : _GEN_635; // @[FFTEngine.scala 438:26]
  wire [3:0] _GEN_790 = ~_radixInit_T_11 ? _GEN_774 : _GEN_636; // @[FFTEngine.scala 438:26]
  wire [3:0] _GEN_791 = ~_radixInit_T_11 ? _GEN_775 : _GEN_637; // @[FFTEngine.scala 438:26]
  wire [3:0] _GEN_792 = ~_radixInit_T_11 ? _GEN_776 : _GEN_638; // @[FFTEngine.scala 438:26]
  wire [3:0] _GEN_793 = ~_radixInit_T_11 ? _GEN_777 : _GEN_639; // @[FFTEngine.scala 438:26]
  wire [3:0] _GEN_794 = ~_radixInit_T_11 ? _GEN_778 : _GEN_640; // @[FFTEngine.scala 438:26]
  wire [3:0] _GEN_795 = ~_radixInit_T_11 ? _GEN_779 : _GEN_641; // @[FFTEngine.scala 438:26]
  wire [3:0] _GEN_796 = 3'h0 == addrTBankSel3c_2 ? addrT3c_2 : _GEN_788; // @[FFTEngine.scala 460:{50,50}]
  wire [3:0] _GEN_797 = 3'h1 == addrTBankSel3c_2 ? addrT3c_2 : _GEN_789; // @[FFTEngine.scala 460:{50,50}]
  wire [3:0] _GEN_798 = 3'h2 == addrTBankSel3c_2 ? addrT3c_2 : _GEN_790; // @[FFTEngine.scala 460:{50,50}]
  wire [3:0] _GEN_799 = 3'h3 == addrTBankSel3c_2 ? addrT3c_2 : _GEN_791; // @[FFTEngine.scala 460:{50,50}]
  wire [3:0] _GEN_800 = 3'h4 == addrTBankSel3c_2 ? addrT3c_2 : _GEN_792; // @[FFTEngine.scala 460:{50,50}]
  wire [3:0] _GEN_801 = 3'h5 == addrTBankSel3c_2 ? addrT3c_2 : _GEN_793; // @[FFTEngine.scala 460:{50,50}]
  wire [3:0] _GEN_802 = 3'h6 == addrTBankSel3c_2 ? addrT3c_2 : _GEN_794; // @[FFTEngine.scala 460:{50,50}]
  wire [3:0] _GEN_803 = 3'h7 == addrTBankSel3c_2 ? addrT3c_2 : _GEN_795; // @[FFTEngine.scala 460:{50,50}]
  wire [3:0] _GEN_804 = 3'h0 == addrSBankSel3c_2 ? addrS3c_2 : _GEN_796; // @[FFTEngine.scala 461:{50,50}]
  wire [3:0] _GEN_805 = 3'h1 == addrSBankSel3c_2 ? addrS3c_2 : _GEN_797; // @[FFTEngine.scala 461:{50,50}]
  wire [3:0] _GEN_806 = 3'h2 == addrSBankSel3c_2 ? addrS3c_2 : _GEN_798; // @[FFTEngine.scala 461:{50,50}]
  wire [3:0] _GEN_807 = 3'h3 == addrSBankSel3c_2 ? addrS3c_2 : _GEN_799; // @[FFTEngine.scala 461:{50,50}]
  wire [3:0] _GEN_808 = 3'h4 == addrSBankSel3c_2 ? addrS3c_2 : _GEN_800; // @[FFTEngine.scala 461:{50,50}]
  wire [3:0] _GEN_809 = 3'h5 == addrSBankSel3c_2 ? addrS3c_2 : _GEN_801; // @[FFTEngine.scala 461:{50,50}]
  wire [3:0] _GEN_810 = 3'h6 == addrSBankSel3c_2 ? addrS3c_2 : _GEN_802; // @[FFTEngine.scala 461:{50,50}]
  wire [3:0] _GEN_811 = 3'h7 == addrSBankSel3c_2 ? addrS3c_2 : _GEN_803; // @[FFTEngine.scala 461:{50,50}]
  wire [3:0] _GEN_812 = 3'h0 == addrTBankSel3c_2 ? addrT3c_2 : _GEN_780; // @[FFTEngine.scala 463:{50,50}]
  wire [3:0] _GEN_813 = 3'h1 == addrTBankSel3c_2 ? addrT3c_2 : _GEN_781; // @[FFTEngine.scala 463:{50,50}]
  wire [3:0] _GEN_814 = 3'h2 == addrTBankSel3c_2 ? addrT3c_2 : _GEN_782; // @[FFTEngine.scala 463:{50,50}]
  wire [3:0] _GEN_815 = 3'h3 == addrTBankSel3c_2 ? addrT3c_2 : _GEN_783; // @[FFTEngine.scala 463:{50,50}]
  wire [3:0] _GEN_816 = 3'h4 == addrTBankSel3c_2 ? addrT3c_2 : _GEN_784; // @[FFTEngine.scala 463:{50,50}]
  wire [3:0] _GEN_817 = 3'h5 == addrTBankSel3c_2 ? addrT3c_2 : _GEN_785; // @[FFTEngine.scala 463:{50,50}]
  wire [3:0] _GEN_818 = 3'h6 == addrTBankSel3c_2 ? addrT3c_2 : _GEN_786; // @[FFTEngine.scala 463:{50,50}]
  wire [3:0] _GEN_819 = 3'h7 == addrTBankSel3c_2 ? addrT3c_2 : _GEN_787; // @[FFTEngine.scala 463:{50,50}]
  wire [3:0] _GEN_820 = 3'h0 == addrSBankSel3c_2 ? addrS3c_2 : _GEN_812; // @[FFTEngine.scala 464:{50,50}]
  wire [3:0] _GEN_821 = 3'h1 == addrSBankSel3c_2 ? addrS3c_2 : _GEN_813; // @[FFTEngine.scala 464:{50,50}]
  wire [3:0] _GEN_822 = 3'h2 == addrSBankSel3c_2 ? addrS3c_2 : _GEN_814; // @[FFTEngine.scala 464:{50,50}]
  wire [3:0] _GEN_823 = 3'h3 == addrSBankSel3c_2 ? addrS3c_2 : _GEN_815; // @[FFTEngine.scala 464:{50,50}]
  wire [3:0] _GEN_824 = 3'h4 == addrSBankSel3c_2 ? addrS3c_2 : _GEN_816; // @[FFTEngine.scala 464:{50,50}]
  wire [3:0] _GEN_825 = 3'h5 == addrSBankSel3c_2 ? addrS3c_2 : _GEN_817; // @[FFTEngine.scala 464:{50,50}]
  wire [3:0] _GEN_826 = 3'h6 == addrSBankSel3c_2 ? addrS3c_2 : _GEN_818; // @[FFTEngine.scala 464:{50,50}]
  wire [3:0] _GEN_827 = 3'h7 == addrSBankSel3c_2 ? addrS3c_2 : _GEN_819; // @[FFTEngine.scala 464:{50,50}]
  wire [3:0] _GEN_828 = _srcBufferNext_T_3 ? _GEN_804 : _GEN_788; // @[FFTEngine.scala 459:37]
  wire [3:0] _GEN_829 = _srcBufferNext_T_3 ? _GEN_805 : _GEN_789; // @[FFTEngine.scala 459:37]
  wire [3:0] _GEN_830 = _srcBufferNext_T_3 ? _GEN_806 : _GEN_790; // @[FFTEngine.scala 459:37]
  wire [3:0] _GEN_831 = _srcBufferNext_T_3 ? _GEN_807 : _GEN_791; // @[FFTEngine.scala 459:37]
  wire [3:0] _GEN_832 = _srcBufferNext_T_3 ? _GEN_808 : _GEN_792; // @[FFTEngine.scala 459:37]
  wire [3:0] _GEN_833 = _srcBufferNext_T_3 ? _GEN_809 : _GEN_793; // @[FFTEngine.scala 459:37]
  wire [3:0] _GEN_834 = _srcBufferNext_T_3 ? _GEN_810 : _GEN_794; // @[FFTEngine.scala 459:37]
  wire [3:0] _GEN_835 = _srcBufferNext_T_3 ? _GEN_811 : _GEN_795; // @[FFTEngine.scala 459:37]
  wire [3:0] _GEN_836 = _srcBufferNext_T_3 ? _GEN_780 : _GEN_820; // @[FFTEngine.scala 459:37]
  wire [3:0] _GEN_837 = _srcBufferNext_T_3 ? _GEN_781 : _GEN_821; // @[FFTEngine.scala 459:37]
  wire [3:0] _GEN_838 = _srcBufferNext_T_3 ? _GEN_782 : _GEN_822; // @[FFTEngine.scala 459:37]
  wire [3:0] _GEN_839 = _srcBufferNext_T_3 ? _GEN_783 : _GEN_823; // @[FFTEngine.scala 459:37]
  wire [3:0] _GEN_840 = _srcBufferNext_T_3 ? _GEN_784 : _GEN_824; // @[FFTEngine.scala 459:37]
  wire [3:0] _GEN_841 = _srcBufferNext_T_3 ? _GEN_785 : _GEN_825; // @[FFTEngine.scala 459:37]
  wire [3:0] _GEN_842 = _srcBufferNext_T_3 ? _GEN_786 : _GEN_826; // @[FFTEngine.scala 459:37]
  wire [3:0] _GEN_843 = _srcBufferNext_T_3 ? _GEN_787 : _GEN_827; // @[FFTEngine.scala 459:37]
  wire [3:0] _GEN_844 = ~procState3c ? _GEN_828 : _GEN_788; // @[FFTEngine.scala 458:28]
  wire [3:0] _GEN_845 = ~procState3c ? _GEN_829 : _GEN_789; // @[FFTEngine.scala 458:28]
  wire [3:0] _GEN_846 = ~procState3c ? _GEN_830 : _GEN_790; // @[FFTEngine.scala 458:28]
  wire [3:0] _GEN_847 = ~procState3c ? _GEN_831 : _GEN_791; // @[FFTEngine.scala 458:28]
  wire [3:0] _GEN_848 = ~procState3c ? _GEN_832 : _GEN_792; // @[FFTEngine.scala 458:28]
  wire [3:0] _GEN_849 = ~procState3c ? _GEN_833 : _GEN_793; // @[FFTEngine.scala 458:28]
  wire [3:0] _GEN_850 = ~procState3c ? _GEN_834 : _GEN_794; // @[FFTEngine.scala 458:28]
  wire [3:0] _GEN_851 = ~procState3c ? _GEN_835 : _GEN_795; // @[FFTEngine.scala 458:28]
  wire [3:0] _GEN_852 = ~procState3c ? _GEN_836 : _GEN_780; // @[FFTEngine.scala 458:28]
  wire [3:0] _GEN_853 = ~procState3c ? _GEN_837 : _GEN_781; // @[FFTEngine.scala 458:28]
  wire [3:0] _GEN_854 = ~procState3c ? _GEN_838 : _GEN_782; // @[FFTEngine.scala 458:28]
  wire [3:0] _GEN_855 = ~procState3c ? _GEN_839 : _GEN_783; // @[FFTEngine.scala 458:28]
  wire [3:0] _GEN_856 = ~procState3c ? _GEN_840 : _GEN_784; // @[FFTEngine.scala 458:28]
  wire [3:0] _GEN_857 = ~procState3c ? _GEN_841 : _GEN_785; // @[FFTEngine.scala 458:28]
  wire [3:0] _GEN_858 = ~procState3c ? _GEN_842 : _GEN_786; // @[FFTEngine.scala 458:28]
  wire [3:0] _GEN_859 = ~procState3c ? _GEN_843 : _GEN_787; // @[FFTEngine.scala 458:28]
  wire [31:0] _writeDataS3c_T_20 = {writeDataTRPre3c_2,fftCalc_2_io_dataOutSR3c}; // @[Cat.scala 33:92]
  wire [31:0] _writeDataS3c_T_27 = {writeDataTRPre3c_2[15],writeDataTRPre3c_2[15:1],fftCalc_2_io_dataOutSR3c[15],
    fftCalc_2_io_dataOutSR3c[15:1]}; // @[Cat.scala 33:92]
  wire [31:0] _writeDataS3c_T_28 = {fftCalc_2_io_dataOutSI3c,fftCalc_2_io_dataOutSR3c}; // @[Cat.scala 33:92]
  wire [31:0] _writeDataT3c_T_28 = {writeDataTIPre3c_2,writeDataTRPre3c_2}; // @[Cat.scala 33:92]
  wire [31:0] _GEN_860 = ~isFFT & _T_12 ? _writeDataS3c_T_27 : _writeDataS3c_T_28; // @[FFTEngine.scala 486:55 487:30 490:30]
  wire [31:0] _GEN_861 = ~isFFT & _T_12 ? _writeDataS3c_T_27 : _writeDataT3c_T_28; // @[FFTEngine.scala 486:55 488:30 491:30]
  wire [31:0] _GEN_862 = isFFT & _addrSBankSel_T_2 ? _writeDataS3c_T_20 : _GEN_860; // @[FFTEngine.scala 483:47 484:30]
  wire [31:0] _GEN_863 = isFFT & _addrSBankSel_T_2 ? _writeDataS3c_T_20 : _GEN_861; // @[FFTEngine.scala 483:47 485:30]
  wire [31:0] writeDataS3c_2 = sameAddr3c ? _GEN_862 : _writeDataS3c_T_28; // @[FFTEngine.scala 482:26 494:26]
  wire [31:0] writeDataT3c_2 = sameAddr3c ? _GEN_863 : _writeDataT3c_T_28; // @[FFTEngine.scala 482:26 495:26]
  wire [31:0] _GEN_866 = 3'h0 == addrTBankSel3c_2 ? writeDataT3c_2 : _GEN_658; // @[FFTEngine.scala 513:53 514:46]
  wire [31:0] _GEN_867 = 3'h0 == addrSBankSel3c_2 ? writeDataS3c_2 : _GEN_866; // @[FFTEngine.scala 510:46 511:46]
  wire [31:0] _GEN_868 = procState3c ? _GEN_658 : _GEN_867; // @[FFTEngine.scala 499:30]
  wire [31:0] _GEN_869 = 3'h1 == addrTBankSel3c_2 ? writeDataT3c_2 : _GEN_661; // @[FFTEngine.scala 513:53 514:46]
  wire [31:0] _GEN_870 = 3'h1 == addrSBankSel3c_2 ? writeDataS3c_2 : _GEN_869; // @[FFTEngine.scala 510:46 511:46]
  wire [31:0] _GEN_871 = procState3c ? _GEN_661 : _GEN_870; // @[FFTEngine.scala 499:30]
  wire [31:0] _GEN_872 = 3'h2 == addrTBankSel3c_2 ? writeDataT3c_2 : _GEN_664; // @[FFTEngine.scala 513:53 514:46]
  wire [31:0] _GEN_873 = 3'h2 == addrSBankSel3c_2 ? writeDataS3c_2 : _GEN_872; // @[FFTEngine.scala 510:46 511:46]
  wire [31:0] _GEN_874 = procState3c ? _GEN_664 : _GEN_873; // @[FFTEngine.scala 499:30]
  wire [31:0] _GEN_875 = 3'h3 == addrTBankSel3c_2 ? writeDataT3c_2 : _GEN_667; // @[FFTEngine.scala 513:53 514:46]
  wire [31:0] _GEN_876 = 3'h3 == addrSBankSel3c_2 ? writeDataS3c_2 : _GEN_875; // @[FFTEngine.scala 510:46 511:46]
  wire [31:0] _GEN_877 = procState3c ? _GEN_667 : _GEN_876; // @[FFTEngine.scala 499:30]
  wire [31:0] _GEN_878 = 3'h4 == addrTBankSel3c_2 ? writeDataT3c_2 : _GEN_670; // @[FFTEngine.scala 513:53 514:46]
  wire [31:0] _GEN_879 = 3'h4 == addrSBankSel3c_2 ? writeDataS3c_2 : _GEN_878; // @[FFTEngine.scala 510:46 511:46]
  wire [31:0] _GEN_880 = procState3c ? _GEN_670 : _GEN_879; // @[FFTEngine.scala 499:30]
  wire [31:0] _GEN_881 = 3'h5 == addrTBankSel3c_2 ? writeDataT3c_2 : _GEN_673; // @[FFTEngine.scala 513:53 514:46]
  wire [31:0] _GEN_882 = 3'h5 == addrSBankSel3c_2 ? writeDataS3c_2 : _GEN_881; // @[FFTEngine.scala 510:46 511:46]
  wire [31:0] _GEN_883 = procState3c ? _GEN_673 : _GEN_882; // @[FFTEngine.scala 499:30]
  wire [31:0] _GEN_884 = 3'h6 == addrTBankSel3c_2 ? writeDataT3c_2 : _GEN_676; // @[FFTEngine.scala 513:53 514:46]
  wire [31:0] _GEN_885 = 3'h6 == addrSBankSel3c_2 ? writeDataS3c_2 : _GEN_884; // @[FFTEngine.scala 510:46 511:46]
  wire [31:0] _GEN_886 = procState3c ? _GEN_676 : _GEN_885; // @[FFTEngine.scala 499:30]
  wire [31:0] _GEN_887 = 3'h7 == addrTBankSel3c_2 ? writeDataT3c_2 : _GEN_679; // @[FFTEngine.scala 513:53 514:46]
  wire [31:0] _GEN_888 = 3'h7 == addrSBankSel3c_2 ? writeDataS3c_2 : _GEN_887; // @[FFTEngine.scala 510:46 511:46]
  wire [31:0] _GEN_889 = procState3c ? _GEN_679 : _GEN_888; // @[FFTEngine.scala 499:30]
  reg [3:0] addrS1c_3; // @[Reg.scala 35:20]
  reg [3:0] addrS2c_3; // @[Reg.scala 35:20]
  reg [3:0] addrS3c_3; // @[Reg.scala 35:20]
  reg [3:0] addrT1c_3; // @[Reg.scala 35:20]
  reg [3:0] addrT2c_3; // @[Reg.scala 35:20]
  reg [3:0] addrT3c_3; // @[Reg.scala 35:20]
  wire [2:0] _addrSBankSel_T_16 = _radixInit_T_11 ? addrSBankSelProc_3 : addrSBankSelKernel_3; // @[FFTEngine.scala 384:32]
  wire [2:0] _addrTBankSel_T_16 = _radixInit_T_11 ? addrTBankSelProc_3 : addrTBankSelKernel_3; // @[FFTEngine.scala 385:32]
  wire [2:0] _addrSBankSel_T_20 = _radixInit_T_11 | _radixInit_T_1 & phaseCount == 3'h0 ? addrSBankSelProc_3 :
    addrSBankSelKernel_3; // @[FFTEngine.scala 387:32]
  wire [2:0] _addrTBankSel_T_20 = _addrSBankSel_T_4 ? addrTBankSelProc_3 : addrTBankSelKernel_3; // @[FFTEngine.scala 388:32]
  wire [2:0] addrSBankSel_3 = isFFT ? _addrSBankSel_T_16 : _addrSBankSel_T_20; // @[FFTEngine.scala 383:21 384:26 387:26]
  wire [2:0] addrTBankSel_3 = isFFT ? _addrTBankSel_T_16 : _addrTBankSel_T_20; // @[FFTEngine.scala 383:21 385:26 388:26]
  reg [2:0] addrSBankSel1c_3; // @[Reg.scala 35:20]
  reg [2:0] addrTBankSel1c_3; // @[Reg.scala 35:20]
  wire [15:0] _GEN_901 = 3'h1 == addrSBankSel1c_3 ? dataInRPre_1 : dataInRPre_0; // @[FFTEngine.scala 395:{29,29}]
  wire [15:0] _GEN_902 = 3'h2 == addrSBankSel1c_3 ? dataInRPre_2 : _GEN_901; // @[FFTEngine.scala 395:{29,29}]
  wire [15:0] _GEN_903 = 3'h3 == addrSBankSel1c_3 ? dataInRPre_3 : _GEN_902; // @[FFTEngine.scala 395:{29,29}]
  wire [15:0] _GEN_904 = 3'h4 == addrSBankSel1c_3 ? dataInRPre_4 : _GEN_903; // @[FFTEngine.scala 395:{29,29}]
  wire [15:0] _GEN_905 = 3'h5 == addrSBankSel1c_3 ? dataInRPre_5 : _GEN_904; // @[FFTEngine.scala 395:{29,29}]
  wire [15:0] _GEN_906 = 3'h6 == addrSBankSel1c_3 ? dataInRPre_6 : _GEN_905; // @[FFTEngine.scala 395:{29,29}]
  wire [15:0] _GEN_909 = 3'h1 == addrSBankSel1c_3 ? dataInIPre_1 : dataInIPre_0; // @[FFTEngine.scala 396:{35,35}]
  wire [15:0] _GEN_910 = 3'h2 == addrSBankSel1c_3 ? dataInIPre_2 : _GEN_909; // @[FFTEngine.scala 396:{35,35}]
  wire [15:0] _GEN_911 = 3'h3 == addrSBankSel1c_3 ? dataInIPre_3 : _GEN_910; // @[FFTEngine.scala 396:{35,35}]
  wire [15:0] _GEN_912 = 3'h4 == addrSBankSel1c_3 ? dataInIPre_4 : _GEN_911; // @[FFTEngine.scala 396:{35,35}]
  wire [15:0] _GEN_913 = 3'h5 == addrSBankSel1c_3 ? dataInIPre_5 : _GEN_912; // @[FFTEngine.scala 396:{35,35}]
  wire [15:0] _GEN_914 = 3'h6 == addrSBankSel1c_3 ? dataInIPre_6 : _GEN_913; // @[FFTEngine.scala 396:{35,35}]
  wire [15:0] _GEN_915 = 3'h7 == addrSBankSel1c_3 ? dataInIPre_7 : _GEN_914; // @[FFTEngine.scala 396:{35,35}]
  wire [15:0] _GEN_917 = 3'h1 == addrTBankSel1c_3 ? dataInIPre_1 : dataInIPre_0; // @[FFTEngine.scala 397:{35,35}]
  wire [15:0] _GEN_918 = 3'h2 == addrTBankSel1c_3 ? dataInIPre_2 : _GEN_917; // @[FFTEngine.scala 397:{35,35}]
  wire [15:0] _GEN_919 = 3'h3 == addrTBankSel1c_3 ? dataInIPre_3 : _GEN_918; // @[FFTEngine.scala 397:{35,35}]
  wire [15:0] _GEN_920 = 3'h4 == addrTBankSel1c_3 ? dataInIPre_4 : _GEN_919; // @[FFTEngine.scala 397:{35,35}]
  wire [15:0] _GEN_921 = 3'h5 == addrTBankSel1c_3 ? dataInIPre_5 : _GEN_920; // @[FFTEngine.scala 397:{35,35}]
  wire [15:0] _GEN_922 = 3'h6 == addrTBankSel1c_3 ? dataInIPre_6 : _GEN_921; // @[FFTEngine.scala 397:{35,35}]
  wire [15:0] _GEN_923 = 3'h7 == addrTBankSel1c_3 ? dataInIPre_7 : _GEN_922; // @[FFTEngine.scala 397:{35,35}]
  wire [15:0] _GEN_925 = 3'h1 == addrTBankSel1c_3 ? dataInRPre_1 : dataInRPre_0; // @[FFTEngine.scala 397:{35,35}]
  wire [15:0] _GEN_926 = 3'h2 == addrTBankSel1c_3 ? dataInRPre_2 : _GEN_925; // @[FFTEngine.scala 397:{35,35}]
  wire [15:0] _GEN_927 = 3'h3 == addrTBankSel1c_3 ? dataInRPre_3 : _GEN_926; // @[FFTEngine.scala 397:{35,35}]
  wire [15:0] _GEN_928 = 3'h4 == addrTBankSel1c_3 ? dataInRPre_4 : _GEN_927; // @[FFTEngine.scala 397:{35,35}]
  wire [15:0] _GEN_929 = 3'h5 == addrTBankSel1c_3 ? dataInRPre_5 : _GEN_928; // @[FFTEngine.scala 397:{35,35}]
  wire [15:0] _GEN_930 = 3'h6 == addrTBankSel1c_3 ? dataInRPre_6 : _GEN_929; // @[FFTEngine.scala 397:{35,35}]
  wire [15:0] _GEN_931 = 3'h7 == addrTBankSel1c_3 ? dataInRPre_7 : _GEN_930; // @[FFTEngine.scala 397:{35,35}]
  wire [6:0] _fftCalc_io_nk_T_14 = {nk_3[5:0],1'h0}; // @[Cat.scala 33:92]
  wire [15:0] _writeDataTRPre3c_T_19 = ~fftCalc_3_io_dataOutTI3c; // @[FFTEngine.scala 407:132]
  wire [15:0] _writeDataTRPre3c_T_21 = _writeDataTRPre3c_T_19 + 16'h1; // @[FFTEngine.scala 407:156]
  wire [15:0] _writeDataTRPre3c_T_22 = isFFT ? fftCalc_3_io_dataOutTI3c : _writeDataTRPre3c_T_21; // @[FFTEngine.scala 407:100]
  wire [15:0] _writeDataTRPre3c_T_23 = _T_12 ? fftCalc_3_io_dataOutTR3c : _writeDataTRPre3c_T_22; // @[FFTEngine.scala 407:52]
  wire [15:0] writeDataTRPre3c_3 = procState3c ? _writeDataTRPre3c_T_23 : fftCalc_3_io_dataOutTR3c; // @[FFTEngine.scala 407:35]
  wire [15:0] _writeDataTIPre3c_T_31 = ~fftCalc_3_io_dataOutTR3c; // @[FFTEngine.scala 408:115]
  wire [15:0] _writeDataTIPre3c_T_33 = _writeDataTIPre3c_T_31 + 16'h1; // @[FFTEngine.scala 408:139]
  wire [15:0] _writeDataTIPre3c_T_34 = isFFT ? _writeDataTIPre3c_T_33 : fftCalc_3_io_dataOutTR3c; // @[FFTEngine.scala 408:107]
  wire [15:0] _writeDataTIPre3c_T_35 = _T_12 ? _writeDataTRPre3c_T_21 : _writeDataTIPre3c_T_34; // @[FFTEngine.scala 408:52]
  wire [15:0] writeDataTIPre3c_3 = procState3c ? _writeDataTIPre3c_T_35 : fftCalc_3_io_dataOutTI3c; // @[FFTEngine.scala 408:35]
  wire [2:0] _addrSBankSel3c_T_18 = procState3c | kernelState3c & _T_6 ? addrSBankSelProc3c_3_r :
    addrSBankSelKernel3c_3_r; // @[FFTEngine.scala 414:34]
  wire [2:0] _addrTBankSel3c_T_18 = _addrSBankSel3c_T_2 ? addrTBankSelProc3c_3_r : addrTBankSelKernel3c_3_r; // @[FFTEngine.scala 415:34]
  wire [2:0] _addrSBankSel3c_T_19 = procState3c ? addrSBankSelProc3c_3_r : addrSBankSelKernel3c_3_r; // @[FFTEngine.scala 417:34]
  wire [2:0] _addrTBankSel3c_T_19 = procState3c ? addrTBankSelProc3c_3_r : addrTBankSelKernel3c_3_r; // @[FFTEngine.scala 418:34]
  wire [2:0] addrSBankSel3c_3 = isFFT ? _addrSBankSel3c_T_18 : _addrSBankSel3c_T_19; // @[FFTEngine.scala 413:21 414:28 417:28]
  wire [2:0] addrTBankSel3c_3 = isFFT ? _addrTBankSel3c_T_18 : _addrTBankSel3c_T_19; // @[FFTEngine.scala 413:21 415:28 418:28]
  wire [3:0] _GEN_942 = 3'h0 == addrTBankSel_3 ? addrT_3[3:0] : _GEN_852; // @[FFTEngine.scala 440:{48,48}]
  wire [3:0] _GEN_943 = 3'h1 == addrTBankSel_3 ? addrT_3[3:0] : _GEN_853; // @[FFTEngine.scala 440:{48,48}]
  wire [3:0] _GEN_944 = 3'h2 == addrTBankSel_3 ? addrT_3[3:0] : _GEN_854; // @[FFTEngine.scala 440:{48,48}]
  wire [3:0] _GEN_945 = 3'h3 == addrTBankSel_3 ? addrT_3[3:0] : _GEN_855; // @[FFTEngine.scala 440:{48,48}]
  wire [3:0] _GEN_946 = 3'h4 == addrTBankSel_3 ? addrT_3[3:0] : _GEN_856; // @[FFTEngine.scala 440:{48,48}]
  wire [3:0] _GEN_947 = 3'h5 == addrTBankSel_3 ? addrT_3[3:0] : _GEN_857; // @[FFTEngine.scala 440:{48,48}]
  wire [3:0] _GEN_948 = 3'h6 == addrTBankSel_3 ? addrT_3[3:0] : _GEN_858; // @[FFTEngine.scala 440:{48,48}]
  wire [3:0] _GEN_949 = 3'h7 == addrTBankSel_3 ? addrT_3[3:0] : _GEN_859; // @[FFTEngine.scala 440:{48,48}]
  wire [3:0] _GEN_950 = 3'h0 == addrSBankSel_3 ? addrS_3[3:0] : _GEN_942; // @[FFTEngine.scala 441:{48,48}]
  wire [3:0] _GEN_951 = 3'h1 == addrSBankSel_3 ? addrS_3[3:0] : _GEN_943; // @[FFTEngine.scala 441:{48,48}]
  wire [3:0] _GEN_952 = 3'h2 == addrSBankSel_3 ? addrS_3[3:0] : _GEN_944; // @[FFTEngine.scala 441:{48,48}]
  wire [3:0] _GEN_953 = 3'h3 == addrSBankSel_3 ? addrS_3[3:0] : _GEN_945; // @[FFTEngine.scala 441:{48,48}]
  wire [3:0] _GEN_954 = 3'h4 == addrSBankSel_3 ? addrS_3[3:0] : _GEN_946; // @[FFTEngine.scala 441:{48,48}]
  wire [3:0] _GEN_955 = 3'h5 == addrSBankSel_3 ? addrS_3[3:0] : _GEN_947; // @[FFTEngine.scala 441:{48,48}]
  wire [3:0] _GEN_956 = 3'h6 == addrSBankSel_3 ? addrS_3[3:0] : _GEN_948; // @[FFTEngine.scala 441:{48,48}]
  wire [3:0] _GEN_957 = 3'h7 == addrSBankSel_3 ? addrS_3[3:0] : _GEN_949; // @[FFTEngine.scala 441:{48,48}]
  wire [3:0] _GEN_958 = 3'h0 == addrTBankSel_3 ? addrT_3[3:0] : _GEN_844; // @[FFTEngine.scala 443:{48,48}]
  wire [3:0] _GEN_959 = 3'h1 == addrTBankSel_3 ? addrT_3[3:0] : _GEN_845; // @[FFTEngine.scala 443:{48,48}]
  wire [3:0] _GEN_960 = 3'h2 == addrTBankSel_3 ? addrT_3[3:0] : _GEN_846; // @[FFTEngine.scala 443:{48,48}]
  wire [3:0] _GEN_961 = 3'h3 == addrTBankSel_3 ? addrT_3[3:0] : _GEN_847; // @[FFTEngine.scala 443:{48,48}]
  wire [3:0] _GEN_962 = 3'h4 == addrTBankSel_3 ? addrT_3[3:0] : _GEN_848; // @[FFTEngine.scala 443:{48,48}]
  wire [3:0] _GEN_963 = 3'h5 == addrTBankSel_3 ? addrT_3[3:0] : _GEN_849; // @[FFTEngine.scala 443:{48,48}]
  wire [3:0] _GEN_964 = 3'h6 == addrTBankSel_3 ? addrT_3[3:0] : _GEN_850; // @[FFTEngine.scala 443:{48,48}]
  wire [3:0] _GEN_965 = 3'h7 == addrTBankSel_3 ? addrT_3[3:0] : _GEN_851; // @[FFTEngine.scala 443:{48,48}]
  wire [3:0] _GEN_966 = 3'h0 == addrSBankSel_3 ? addrS_3[3:0] : _GEN_958; // @[FFTEngine.scala 444:{48,48}]
  wire [3:0] _GEN_967 = 3'h1 == addrSBankSel_3 ? addrS_3[3:0] : _GEN_959; // @[FFTEngine.scala 444:{48,48}]
  wire [3:0] _GEN_968 = 3'h2 == addrSBankSel_3 ? addrS_3[3:0] : _GEN_960; // @[FFTEngine.scala 444:{48,48}]
  wire [3:0] _GEN_969 = 3'h3 == addrSBankSel_3 ? addrS_3[3:0] : _GEN_961; // @[FFTEngine.scala 444:{48,48}]
  wire [3:0] _GEN_970 = 3'h4 == addrSBankSel_3 ? addrS_3[3:0] : _GEN_962; // @[FFTEngine.scala 444:{48,48}]
  wire [3:0] _GEN_971 = 3'h5 == addrSBankSel_3 ? addrS_3[3:0] : _GEN_963; // @[FFTEngine.scala 444:{48,48}]
  wire [3:0] _GEN_972 = 3'h6 == addrSBankSel_3 ? addrS_3[3:0] : _GEN_964; // @[FFTEngine.scala 444:{48,48}]
  wire [3:0] _GEN_973 = 3'h7 == addrSBankSel_3 ? addrS_3[3:0] : _GEN_965; // @[FFTEngine.scala 444:{48,48}]
  wire [3:0] _GEN_974 = _srcBufferNext_T_3 ? _GEN_950 : _GEN_852; // @[FFTEngine.scala 439:37]
  wire [3:0] _GEN_975 = _srcBufferNext_T_3 ? _GEN_951 : _GEN_853; // @[FFTEngine.scala 439:37]
  wire [3:0] _GEN_976 = _srcBufferNext_T_3 ? _GEN_952 : _GEN_854; // @[FFTEngine.scala 439:37]
  wire [3:0] _GEN_977 = _srcBufferNext_T_3 ? _GEN_953 : _GEN_855; // @[FFTEngine.scala 439:37]
  wire [3:0] _GEN_978 = _srcBufferNext_T_3 ? _GEN_954 : _GEN_856; // @[FFTEngine.scala 439:37]
  wire [3:0] _GEN_979 = _srcBufferNext_T_3 ? _GEN_955 : _GEN_857; // @[FFTEngine.scala 439:37]
  wire [3:0] _GEN_980 = _srcBufferNext_T_3 ? _GEN_956 : _GEN_858; // @[FFTEngine.scala 439:37]
  wire [3:0] _GEN_981 = _srcBufferNext_T_3 ? _GEN_957 : _GEN_859; // @[FFTEngine.scala 439:37]
  wire [3:0] _GEN_982 = _srcBufferNext_T_3 ? _GEN_844 : _GEN_966; // @[FFTEngine.scala 439:37]
  wire [3:0] _GEN_983 = _srcBufferNext_T_3 ? _GEN_845 : _GEN_967; // @[FFTEngine.scala 439:37]
  wire [3:0] _GEN_984 = _srcBufferNext_T_3 ? _GEN_846 : _GEN_968; // @[FFTEngine.scala 439:37]
  wire [3:0] _GEN_985 = _srcBufferNext_T_3 ? _GEN_847 : _GEN_969; // @[FFTEngine.scala 439:37]
  wire [3:0] _GEN_986 = _srcBufferNext_T_3 ? _GEN_848 : _GEN_970; // @[FFTEngine.scala 439:37]
  wire [3:0] _GEN_987 = _srcBufferNext_T_3 ? _GEN_849 : _GEN_971; // @[FFTEngine.scala 439:37]
  wire [3:0] _GEN_988 = _srcBufferNext_T_3 ? _GEN_850 : _GEN_972; // @[FFTEngine.scala 439:37]
  wire [3:0] _GEN_989 = _srcBufferNext_T_3 ? _GEN_851 : _GEN_973; // @[FFTEngine.scala 439:37]
  wire [3:0] _GEN_990 = ~_radixInit_T_11 ? _GEN_974 : _GEN_852; // @[FFTEngine.scala 438:26]
  wire [3:0] _GEN_991 = ~_radixInit_T_11 ? _GEN_975 : _GEN_853; // @[FFTEngine.scala 438:26]
  wire [3:0] _GEN_992 = ~_radixInit_T_11 ? _GEN_976 : _GEN_854; // @[FFTEngine.scala 438:26]
  wire [3:0] _GEN_993 = ~_radixInit_T_11 ? _GEN_977 : _GEN_855; // @[FFTEngine.scala 438:26]
  wire [3:0] _GEN_994 = ~_radixInit_T_11 ? _GEN_978 : _GEN_856; // @[FFTEngine.scala 438:26]
  wire [3:0] _GEN_995 = ~_radixInit_T_11 ? _GEN_979 : _GEN_857; // @[FFTEngine.scala 438:26]
  wire [3:0] _GEN_996 = ~_radixInit_T_11 ? _GEN_980 : _GEN_858; // @[FFTEngine.scala 438:26]
  wire [3:0] _GEN_997 = ~_radixInit_T_11 ? _GEN_981 : _GEN_859; // @[FFTEngine.scala 438:26]
  wire [3:0] _GEN_998 = ~_radixInit_T_11 ? _GEN_982 : _GEN_844; // @[FFTEngine.scala 438:26]
  wire [3:0] _GEN_999 = ~_radixInit_T_11 ? _GEN_983 : _GEN_845; // @[FFTEngine.scala 438:26]
  wire [3:0] _GEN_1000 = ~_radixInit_T_11 ? _GEN_984 : _GEN_846; // @[FFTEngine.scala 438:26]
  wire [3:0] _GEN_1001 = ~_radixInit_T_11 ? _GEN_985 : _GEN_847; // @[FFTEngine.scala 438:26]
  wire [3:0] _GEN_1002 = ~_radixInit_T_11 ? _GEN_986 : _GEN_848; // @[FFTEngine.scala 438:26]
  wire [3:0] _GEN_1003 = ~_radixInit_T_11 ? _GEN_987 : _GEN_849; // @[FFTEngine.scala 438:26]
  wire [3:0] _GEN_1004 = ~_radixInit_T_11 ? _GEN_988 : _GEN_850; // @[FFTEngine.scala 438:26]
  wire [3:0] _GEN_1005 = ~_radixInit_T_11 ? _GEN_989 : _GEN_851; // @[FFTEngine.scala 438:26]
  wire [3:0] _GEN_1006 = 3'h0 == addrTBankSel3c_3 ? addrT3c_3 : _GEN_998; // @[FFTEngine.scala 460:{50,50}]
  wire [3:0] _GEN_1007 = 3'h1 == addrTBankSel3c_3 ? addrT3c_3 : _GEN_999; // @[FFTEngine.scala 460:{50,50}]
  wire [3:0] _GEN_1008 = 3'h2 == addrTBankSel3c_3 ? addrT3c_3 : _GEN_1000; // @[FFTEngine.scala 460:{50,50}]
  wire [3:0] _GEN_1009 = 3'h3 == addrTBankSel3c_3 ? addrT3c_3 : _GEN_1001; // @[FFTEngine.scala 460:{50,50}]
  wire [3:0] _GEN_1010 = 3'h4 == addrTBankSel3c_3 ? addrT3c_3 : _GEN_1002; // @[FFTEngine.scala 460:{50,50}]
  wire [3:0] _GEN_1011 = 3'h5 == addrTBankSel3c_3 ? addrT3c_3 : _GEN_1003; // @[FFTEngine.scala 460:{50,50}]
  wire [3:0] _GEN_1012 = 3'h6 == addrTBankSel3c_3 ? addrT3c_3 : _GEN_1004; // @[FFTEngine.scala 460:{50,50}]
  wire [3:0] _GEN_1013 = 3'h7 == addrTBankSel3c_3 ? addrT3c_3 : _GEN_1005; // @[FFTEngine.scala 460:{50,50}]
  wire [3:0] _GEN_1014 = 3'h0 == addrSBankSel3c_3 ? addrS3c_3 : _GEN_1006; // @[FFTEngine.scala 461:{50,50}]
  wire [3:0] _GEN_1015 = 3'h1 == addrSBankSel3c_3 ? addrS3c_3 : _GEN_1007; // @[FFTEngine.scala 461:{50,50}]
  wire [3:0] _GEN_1016 = 3'h2 == addrSBankSel3c_3 ? addrS3c_3 : _GEN_1008; // @[FFTEngine.scala 461:{50,50}]
  wire [3:0] _GEN_1017 = 3'h3 == addrSBankSel3c_3 ? addrS3c_3 : _GEN_1009; // @[FFTEngine.scala 461:{50,50}]
  wire [3:0] _GEN_1018 = 3'h4 == addrSBankSel3c_3 ? addrS3c_3 : _GEN_1010; // @[FFTEngine.scala 461:{50,50}]
  wire [3:0] _GEN_1019 = 3'h5 == addrSBankSel3c_3 ? addrS3c_3 : _GEN_1011; // @[FFTEngine.scala 461:{50,50}]
  wire [3:0] _GEN_1020 = 3'h6 == addrSBankSel3c_3 ? addrS3c_3 : _GEN_1012; // @[FFTEngine.scala 461:{50,50}]
  wire [3:0] _GEN_1021 = 3'h7 == addrSBankSel3c_3 ? addrS3c_3 : _GEN_1013; // @[FFTEngine.scala 461:{50,50}]
  wire [3:0] _GEN_1022 = 3'h0 == addrTBankSel3c_3 ? addrT3c_3 : _GEN_990; // @[FFTEngine.scala 463:{50,50}]
  wire [3:0] _GEN_1023 = 3'h1 == addrTBankSel3c_3 ? addrT3c_3 : _GEN_991; // @[FFTEngine.scala 463:{50,50}]
  wire [3:0] _GEN_1024 = 3'h2 == addrTBankSel3c_3 ? addrT3c_3 : _GEN_992; // @[FFTEngine.scala 463:{50,50}]
  wire [3:0] _GEN_1025 = 3'h3 == addrTBankSel3c_3 ? addrT3c_3 : _GEN_993; // @[FFTEngine.scala 463:{50,50}]
  wire [3:0] _GEN_1026 = 3'h4 == addrTBankSel3c_3 ? addrT3c_3 : _GEN_994; // @[FFTEngine.scala 463:{50,50}]
  wire [3:0] _GEN_1027 = 3'h5 == addrTBankSel3c_3 ? addrT3c_3 : _GEN_995; // @[FFTEngine.scala 463:{50,50}]
  wire [3:0] _GEN_1028 = 3'h6 == addrTBankSel3c_3 ? addrT3c_3 : _GEN_996; // @[FFTEngine.scala 463:{50,50}]
  wire [3:0] _GEN_1029 = 3'h7 == addrTBankSel3c_3 ? addrT3c_3 : _GEN_997; // @[FFTEngine.scala 463:{50,50}]
  wire [3:0] _GEN_1030 = 3'h0 == addrSBankSel3c_3 ? addrS3c_3 : _GEN_1022; // @[FFTEngine.scala 464:{50,50}]
  wire [3:0] _GEN_1031 = 3'h1 == addrSBankSel3c_3 ? addrS3c_3 : _GEN_1023; // @[FFTEngine.scala 464:{50,50}]
  wire [3:0] _GEN_1032 = 3'h2 == addrSBankSel3c_3 ? addrS3c_3 : _GEN_1024; // @[FFTEngine.scala 464:{50,50}]
  wire [3:0] _GEN_1033 = 3'h3 == addrSBankSel3c_3 ? addrS3c_3 : _GEN_1025; // @[FFTEngine.scala 464:{50,50}]
  wire [3:0] _GEN_1034 = 3'h4 == addrSBankSel3c_3 ? addrS3c_3 : _GEN_1026; // @[FFTEngine.scala 464:{50,50}]
  wire [3:0] _GEN_1035 = 3'h5 == addrSBankSel3c_3 ? addrS3c_3 : _GEN_1027; // @[FFTEngine.scala 464:{50,50}]
  wire [3:0] _GEN_1036 = 3'h6 == addrSBankSel3c_3 ? addrS3c_3 : _GEN_1028; // @[FFTEngine.scala 464:{50,50}]
  wire [3:0] _GEN_1037 = 3'h7 == addrSBankSel3c_3 ? addrS3c_3 : _GEN_1029; // @[FFTEngine.scala 464:{50,50}]
  wire [3:0] _GEN_1038 = _srcBufferNext_T_3 ? _GEN_1014 : _GEN_998; // @[FFTEngine.scala 459:37]
  wire [3:0] _GEN_1039 = _srcBufferNext_T_3 ? _GEN_1015 : _GEN_999; // @[FFTEngine.scala 459:37]
  wire [3:0] _GEN_1040 = _srcBufferNext_T_3 ? _GEN_1016 : _GEN_1000; // @[FFTEngine.scala 459:37]
  wire [3:0] _GEN_1041 = _srcBufferNext_T_3 ? _GEN_1017 : _GEN_1001; // @[FFTEngine.scala 459:37]
  wire [3:0] _GEN_1042 = _srcBufferNext_T_3 ? _GEN_1018 : _GEN_1002; // @[FFTEngine.scala 459:37]
  wire [3:0] _GEN_1043 = _srcBufferNext_T_3 ? _GEN_1019 : _GEN_1003; // @[FFTEngine.scala 459:37]
  wire [3:0] _GEN_1044 = _srcBufferNext_T_3 ? _GEN_1020 : _GEN_1004; // @[FFTEngine.scala 459:37]
  wire [3:0] _GEN_1045 = _srcBufferNext_T_3 ? _GEN_1021 : _GEN_1005; // @[FFTEngine.scala 459:37]
  wire [3:0] _GEN_1046 = _srcBufferNext_T_3 ? _GEN_990 : _GEN_1030; // @[FFTEngine.scala 459:37]
  wire [3:0] _GEN_1047 = _srcBufferNext_T_3 ? _GEN_991 : _GEN_1031; // @[FFTEngine.scala 459:37]
  wire [3:0] _GEN_1048 = _srcBufferNext_T_3 ? _GEN_992 : _GEN_1032; // @[FFTEngine.scala 459:37]
  wire [3:0] _GEN_1049 = _srcBufferNext_T_3 ? _GEN_993 : _GEN_1033; // @[FFTEngine.scala 459:37]
  wire [3:0] _GEN_1050 = _srcBufferNext_T_3 ? _GEN_994 : _GEN_1034; // @[FFTEngine.scala 459:37]
  wire [3:0] _GEN_1051 = _srcBufferNext_T_3 ? _GEN_995 : _GEN_1035; // @[FFTEngine.scala 459:37]
  wire [3:0] _GEN_1052 = _srcBufferNext_T_3 ? _GEN_996 : _GEN_1036; // @[FFTEngine.scala 459:37]
  wire [3:0] _GEN_1053 = _srcBufferNext_T_3 ? _GEN_997 : _GEN_1037; // @[FFTEngine.scala 459:37]
  wire [31:0] _writeDataS3c_T_30 = {writeDataTRPre3c_3,fftCalc_3_io_dataOutSR3c}; // @[Cat.scala 33:92]
  wire [31:0] _writeDataS3c_T_37 = {writeDataTRPre3c_3[15],writeDataTRPre3c_3[15:1],fftCalc_3_io_dataOutSR3c[15],
    fftCalc_3_io_dataOutSR3c[15:1]}; // @[Cat.scala 33:92]
  wire [31:0] _writeDataS3c_T_38 = {fftCalc_3_io_dataOutSI3c,fftCalc_3_io_dataOutSR3c}; // @[Cat.scala 33:92]
  wire [31:0] _writeDataT3c_T_38 = {writeDataTIPre3c_3,writeDataTRPre3c_3}; // @[Cat.scala 33:92]
  wire [31:0] _GEN_1070 = ~isFFT & _T_12 ? _writeDataS3c_T_37 : _writeDataS3c_T_38; // @[FFTEngine.scala 486:55 487:30 490:30]
  wire [31:0] _GEN_1071 = ~isFFT & _T_12 ? _writeDataS3c_T_37 : _writeDataT3c_T_38; // @[FFTEngine.scala 486:55 488:30 491:30]
  wire [31:0] _GEN_1072 = isFFT & _addrSBankSel_T_2 ? _writeDataS3c_T_30 : _GEN_1070; // @[FFTEngine.scala 483:47 484:30]
  wire [31:0] _GEN_1073 = isFFT & _addrSBankSel_T_2 ? _writeDataS3c_T_30 : _GEN_1071; // @[FFTEngine.scala 483:47 485:30]
  wire [31:0] writeDataS3c_3 = sameAddr3c ? _GEN_1072 : _writeDataS3c_T_38; // @[FFTEngine.scala 482:26 494:26]
  wire [31:0] writeDataT3c_3 = sameAddr3c ? _GEN_1073 : _writeDataT3c_T_38; // @[FFTEngine.scala 482:26 495:26]
  wire [31:0] _GEN_1076 = 3'h0 == addrTBankSel3c_3 ? writeDataT3c_3 : _GEN_868; // @[FFTEngine.scala 513:53 514:46]
  wire [31:0] _GEN_1077 = 3'h0 == addrSBankSel3c_3 ? writeDataS3c_3 : _GEN_1076; // @[FFTEngine.scala 510:46 511:46]
  wire [31:0] _GEN_1079 = 3'h1 == addrTBankSel3c_3 ? writeDataT3c_3 : _GEN_871; // @[FFTEngine.scala 513:53 514:46]
  wire [31:0] _GEN_1080 = 3'h1 == addrSBankSel3c_3 ? writeDataS3c_3 : _GEN_1079; // @[FFTEngine.scala 510:46 511:46]
  wire [31:0] _GEN_1082 = 3'h2 == addrTBankSel3c_3 ? writeDataT3c_3 : _GEN_874; // @[FFTEngine.scala 513:53 514:46]
  wire [31:0] _GEN_1083 = 3'h2 == addrSBankSel3c_3 ? writeDataS3c_3 : _GEN_1082; // @[FFTEngine.scala 510:46 511:46]
  wire [31:0] _GEN_1085 = 3'h3 == addrTBankSel3c_3 ? writeDataT3c_3 : _GEN_877; // @[FFTEngine.scala 513:53 514:46]
  wire [31:0] _GEN_1086 = 3'h3 == addrSBankSel3c_3 ? writeDataS3c_3 : _GEN_1085; // @[FFTEngine.scala 510:46 511:46]
  wire [31:0] _GEN_1088 = 3'h4 == addrTBankSel3c_3 ? writeDataT3c_3 : _GEN_880; // @[FFTEngine.scala 513:53 514:46]
  wire [31:0] _GEN_1089 = 3'h4 == addrSBankSel3c_3 ? writeDataS3c_3 : _GEN_1088; // @[FFTEngine.scala 510:46 511:46]
  wire [31:0] _GEN_1091 = 3'h5 == addrTBankSel3c_3 ? writeDataT3c_3 : _GEN_883; // @[FFTEngine.scala 513:53 514:46]
  wire [31:0] _GEN_1092 = 3'h5 == addrSBankSel3c_3 ? writeDataS3c_3 : _GEN_1091; // @[FFTEngine.scala 510:46 511:46]
  wire [31:0] _GEN_1094 = 3'h6 == addrTBankSel3c_3 ? writeDataT3c_3 : _GEN_886; // @[FFTEngine.scala 513:53 514:46]
  wire [31:0] _GEN_1095 = 3'h6 == addrSBankSel3c_3 ? writeDataS3c_3 : _GEN_1094; // @[FFTEngine.scala 510:46 511:46]
  wire [31:0] _GEN_1097 = 3'h7 == addrTBankSel3c_3 ? writeDataT3c_3 : _GEN_889; // @[FFTEngine.scala 513:53 514:46]
  wire [31:0] _GEN_1098 = 3'h7 == addrSBankSel3c_3 ? writeDataS3c_3 : _GEN_1097; // @[FFTEngine.scala 510:46 511:46]
  reg  fftDoneReg; // @[FFTEngine.scala 522:29]
  FFT3PipelineCalc fftCalc ( // @[FFTEngine.scala 394:29]
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
  FFT3PipelineCalc fftCalc_1 ( // @[FFTEngine.scala 394:29]
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
  FFT3PipelineCalc fftCalc_2 ( // @[FFTEngine.scala 394:29]
    .clock(fftCalc_2_clock),
    .reset(fftCalc_2_reset),
    .io_dataInSR(fftCalc_2_io_dataInSR),
    .io_dataInSI(fftCalc_2_io_dataInSI),
    .io_dataInTR(fftCalc_2_io_dataInTR),
    .io_dataInTI(fftCalc_2_io_dataInTI),
    .io_dataOutSR3c(fftCalc_2_io_dataOutSR3c),
    .io_dataOutSI3c(fftCalc_2_io_dataOutSI3c),
    .io_dataOutTR3c(fftCalc_2_io_dataOutTR3c),
    .io_dataOutTI3c(fftCalc_2_io_dataOutTI3c),
    .io_nk(fftCalc_2_io_nk),
    .io_rShiftSym(fftCalc_2_io_rShiftSym),
    .io_isFFT(fftCalc_2_io_isFFT),
    .io_procMode(fftCalc_2_io_procMode),
    .io_state1c(fftCalc_2_io_state1c),
    .io_state2c(fftCalc_2_io_state2c)
  );
  FFT3PipelineCalc fftCalc_3 ( // @[FFTEngine.scala 394:29]
    .clock(fftCalc_3_clock),
    .reset(fftCalc_3_reset),
    .io_dataInSR(fftCalc_3_io_dataInSR),
    .io_dataInSI(fftCalc_3_io_dataInSI),
    .io_dataInTR(fftCalc_3_io_dataInTR),
    .io_dataInTI(fftCalc_3_io_dataInTI),
    .io_dataOutSR3c(fftCalc_3_io_dataOutSR3c),
    .io_dataOutSI3c(fftCalc_3_io_dataOutSI3c),
    .io_dataOutTR3c(fftCalc_3_io_dataOutTR3c),
    .io_dataOutTI3c(fftCalc_3_io_dataOutTI3c),
    .io_nk(fftCalc_3_io_nk),
    .io_rShiftSym(fftCalc_3_io_rShiftSym),
    .io_isFFT(fftCalc_3_io_isFFT),
    .io_procMode(fftCalc_3_io_procMode),
    .io_state1c(fftCalc_3_io_state1c),
    .io_state2c(fftCalc_3_io_state2c)
  );
  assign io_readEnableSram0Bank_0 = readEnable & _srcBufferNext_T_3; // @[FFTEngine.scala 351:49]
  assign io_readEnableSram0Bank_1 = readEnable & _srcBufferNext_T_3; // @[FFTEngine.scala 351:49]
  assign io_readEnableSram0Bank_2 = readEnable & _srcBufferNext_T_3; // @[FFTEngine.scala 351:49]
  assign io_readEnableSram0Bank_3 = readEnable & _srcBufferNext_T_3; // @[FFTEngine.scala 351:49]
  assign io_readEnableSram0Bank_4 = readEnable & _srcBufferNext_T_3; // @[FFTEngine.scala 351:49]
  assign io_readEnableSram0Bank_5 = readEnable & _srcBufferNext_T_3; // @[FFTEngine.scala 351:49]
  assign io_readEnableSram0Bank_6 = readEnable & _srcBufferNext_T_3; // @[FFTEngine.scala 351:49]
  assign io_readEnableSram0Bank_7 = readEnable & _srcBufferNext_T_3; // @[FFTEngine.scala 351:49]
  assign io_readEnableSram1Bank_0 = readEnable & srcBuffer; // @[FFTEngine.scala 352:49]
  assign io_readEnableSram1Bank_1 = readEnable & srcBuffer; // @[FFTEngine.scala 352:49]
  assign io_readEnableSram1Bank_2 = readEnable & srcBuffer; // @[FFTEngine.scala 352:49]
  assign io_readEnableSram1Bank_3 = readEnable & srcBuffer; // @[FFTEngine.scala 352:49]
  assign io_readEnableSram1Bank_4 = readEnable & srcBuffer; // @[FFTEngine.scala 352:49]
  assign io_readEnableSram1Bank_5 = readEnable & srcBuffer; // @[FFTEngine.scala 352:49]
  assign io_readEnableSram1Bank_6 = readEnable & srcBuffer; // @[FFTEngine.scala 352:49]
  assign io_readEnableSram1Bank_7 = readEnable & srcBuffer; // @[FFTEngine.scala 352:49]
  assign io_writeDataSram0Bank_0 = procState3c ? _GEN_868 : _GEN_1077; // @[FFTEngine.scala 499:30]
  assign io_writeDataSram0Bank_1 = procState3c ? _GEN_871 : _GEN_1080; // @[FFTEngine.scala 499:30]
  assign io_writeDataSram0Bank_2 = procState3c ? _GEN_874 : _GEN_1083; // @[FFTEngine.scala 499:30]
  assign io_writeDataSram0Bank_3 = procState3c ? _GEN_877 : _GEN_1086; // @[FFTEngine.scala 499:30]
  assign io_writeDataSram0Bank_4 = procState3c ? _GEN_880 : _GEN_1089; // @[FFTEngine.scala 499:30]
  assign io_writeDataSram0Bank_5 = procState3c ? _GEN_883 : _GEN_1092; // @[FFTEngine.scala 499:30]
  assign io_writeDataSram0Bank_6 = procState3c ? _GEN_886 : _GEN_1095; // @[FFTEngine.scala 499:30]
  assign io_writeDataSram0Bank_7 = procState3c ? _GEN_889 : _GEN_1098; // @[FFTEngine.scala 499:30]
  assign io_writeDataSram1Bank_0 = procState3c ? _GEN_868 : _GEN_1077; // @[FFTEngine.scala 499:30]
  assign io_writeDataSram1Bank_1 = procState3c ? _GEN_871 : _GEN_1080; // @[FFTEngine.scala 499:30]
  assign io_writeDataSram1Bank_2 = procState3c ? _GEN_874 : _GEN_1083; // @[FFTEngine.scala 499:30]
  assign io_writeDataSram1Bank_3 = procState3c ? _GEN_877 : _GEN_1086; // @[FFTEngine.scala 499:30]
  assign io_writeDataSram1Bank_4 = procState3c ? _GEN_880 : _GEN_1089; // @[FFTEngine.scala 499:30]
  assign io_writeDataSram1Bank_5 = procState3c ? _GEN_883 : _GEN_1092; // @[FFTEngine.scala 499:30]
  assign io_writeDataSram1Bank_6 = procState3c ? _GEN_886 : _GEN_1095; // @[FFTEngine.scala 499:30]
  assign io_writeDataSram1Bank_7 = procState3c ? _GEN_889 : _GEN_1098; // @[FFTEngine.scala 499:30]
  assign io_writeEnableSram0Bank_0 = procState3c ? _GEN_168 : srcBuffer & kernelState3c; // @[FFTEngine.scala 423:34 432:48]
  assign io_writeEnableSram0Bank_1 = procState3c ? _GEN_172 : srcBuffer & kernelState3c; // @[FFTEngine.scala 423:34 432:48]
  assign io_writeEnableSram0Bank_2 = procState3c ? _GEN_176 : srcBuffer & kernelState3c; // @[FFTEngine.scala 423:34 432:48]
  assign io_writeEnableSram0Bank_3 = procState3c ? _GEN_180 : srcBuffer & kernelState3c; // @[FFTEngine.scala 423:34 432:48]
  assign io_writeEnableSram0Bank_4 = procState3c ? _GEN_184 : srcBuffer & kernelState3c; // @[FFTEngine.scala 423:34 432:48]
  assign io_writeEnableSram0Bank_5 = procState3c ? _GEN_188 : srcBuffer & kernelState3c; // @[FFTEngine.scala 423:34 432:48]
  assign io_writeEnableSram0Bank_6 = procState3c ? _GEN_192 : srcBuffer & kernelState3c; // @[FFTEngine.scala 423:34 432:48]
  assign io_writeEnableSram0Bank_7 = procState3c ? _GEN_196 : srcBuffer & kernelState3c; // @[FFTEngine.scala 423:34 432:48]
  assign io_writeEnableSram1Bank_0 = procState3c ? _GEN_169 : _srcBufferNext_T_3 & kernelState3c; // @[FFTEngine.scala 423:34 433:48]
  assign io_writeEnableSram1Bank_1 = procState3c ? _GEN_173 : _srcBufferNext_T_3 & kernelState3c; // @[FFTEngine.scala 423:34 433:48]
  assign io_writeEnableSram1Bank_2 = procState3c ? _GEN_177 : _srcBufferNext_T_3 & kernelState3c; // @[FFTEngine.scala 423:34 433:48]
  assign io_writeEnableSram1Bank_3 = procState3c ? _GEN_181 : _srcBufferNext_T_3 & kernelState3c; // @[FFTEngine.scala 423:34 433:48]
  assign io_writeEnableSram1Bank_4 = procState3c ? _GEN_185 : _srcBufferNext_T_3 & kernelState3c; // @[FFTEngine.scala 423:34 433:48]
  assign io_writeEnableSram1Bank_5 = procState3c ? _GEN_189 : _srcBufferNext_T_3 & kernelState3c; // @[FFTEngine.scala 423:34 433:48]
  assign io_writeEnableSram1Bank_6 = procState3c ? _GEN_193 : _srcBufferNext_T_3 & kernelState3c; // @[FFTEngine.scala 423:34 433:48]
  assign io_writeEnableSram1Bank_7 = procState3c ? _GEN_197 : _srcBufferNext_T_3 & kernelState3c; // @[FFTEngine.scala 423:34 433:48]
  assign io_addrSram0Bank_0 = ~procState3c ? _GEN_1046 : _GEN_990; // @[FFTEngine.scala 458:28]
  assign io_addrSram0Bank_1 = ~procState3c ? _GEN_1047 : _GEN_991; // @[FFTEngine.scala 458:28]
  assign io_addrSram0Bank_2 = ~procState3c ? _GEN_1048 : _GEN_992; // @[FFTEngine.scala 458:28]
  assign io_addrSram0Bank_3 = ~procState3c ? _GEN_1049 : _GEN_993; // @[FFTEngine.scala 458:28]
  assign io_addrSram0Bank_4 = ~procState3c ? _GEN_1050 : _GEN_994; // @[FFTEngine.scala 458:28]
  assign io_addrSram0Bank_5 = ~procState3c ? _GEN_1051 : _GEN_995; // @[FFTEngine.scala 458:28]
  assign io_addrSram0Bank_6 = ~procState3c ? _GEN_1052 : _GEN_996; // @[FFTEngine.scala 458:28]
  assign io_addrSram0Bank_7 = ~procState3c ? _GEN_1053 : _GEN_997; // @[FFTEngine.scala 458:28]
  assign io_addrSram1Bank_0 = ~procState3c ? _GEN_1038 : _GEN_998; // @[FFTEngine.scala 458:28]
  assign io_addrSram1Bank_1 = ~procState3c ? _GEN_1039 : _GEN_999; // @[FFTEngine.scala 458:28]
  assign io_addrSram1Bank_2 = ~procState3c ? _GEN_1040 : _GEN_1000; // @[FFTEngine.scala 458:28]
  assign io_addrSram1Bank_3 = ~procState3c ? _GEN_1041 : _GEN_1001; // @[FFTEngine.scala 458:28]
  assign io_addrSram1Bank_4 = ~procState3c ? _GEN_1042 : _GEN_1002; // @[FFTEngine.scala 458:28]
  assign io_addrSram1Bank_5 = ~procState3c ? _GEN_1043 : _GEN_1003; // @[FFTEngine.scala 458:28]
  assign io_addrSram1Bank_6 = ~procState3c ? _GEN_1044 : _GEN_1004; // @[FFTEngine.scala 458:28]
  assign io_addrSram1Bank_7 = ~procState3c ? _GEN_1045 : _GEN_1005; // @[FFTEngine.scala 458:28]
  assign io_fftDone = fftDoneReg; // @[FFTEngine.scala 523:16]
  assign fftCalc_clock = clock;
  assign fftCalc_reset = reset;
  assign fftCalc_io_dataInSR = 3'h7 == addrSBankSel1c ? dataInRPre_7 : _GEN_125; // @[FFTEngine.scala 395:{29,29}]
  assign fftCalc_io_dataInSI = sameAddr1c & _T_12 ? 16'h0 : _GEN_134; // @[FFTEngine.scala 396:35]
  assign fftCalc_io_dataInTR = _fftCalc_io_dataInSI_T_1 ? _GEN_142 : _GEN_150; // @[FFTEngine.scala 397:35]
  assign fftCalc_io_dataInTI = _fftCalc_io_dataInSI_T_1 ? 16'h0 : _GEN_142; // @[FFTEngine.scala 398:35]
  assign fftCalc_io_nk = _radixInit_T_11 ? addrSProc : _fftCalc_io_nk_T_2; // @[FFTEngine.scala 399:29]
  assign fftCalc_io_rShiftSym = kernelState1c ? _GEN_165 : phaseCount[0]; // @[FFTEngine.scala 400:36]
  assign fftCalc_io_isFFT = ~io_fftMode; // @[FFTEngine.scala 43:17]
  assign fftCalc_io_procMode = ~phaseCount[0] & procState2c; // @[FFTEngine.scala 402:48]
  assign fftCalc_io_state1c = kernelState1c | procState1c; // @[FFTEngine.scala 403:45]
  assign fftCalc_io_state2c = kernelState2c | procState2c; // @[FFTEngine.scala 404:45]
  assign fftCalc_1_clock = clock;
  assign fftCalc_1_reset = reset;
  assign fftCalc_1_io_dataInSR = 3'h7 == addrSBankSel1c_1 ? dataInRPre_7 : _GEN_486; // @[FFTEngine.scala 395:{29,29}]
  assign fftCalc_1_io_dataInSI = sameAddr1c & _T_12 ? 16'h0 : _GEN_495; // @[FFTEngine.scala 396:35]
  assign fftCalc_1_io_dataInTR = _fftCalc_io_dataInSI_T_1 ? _GEN_503 : _GEN_511; // @[FFTEngine.scala 397:35]
  assign fftCalc_1_io_dataInTI = _fftCalc_io_dataInSI_T_1 ? 16'h0 : _GEN_503; // @[FFTEngine.scala 398:35]
  assign fftCalc_1_io_nk = _radixInit_T_11 ? addrSProc : _fftCalc_io_nk_T_6; // @[FFTEngine.scala 399:29]
  assign fftCalc_1_io_rShiftSym = kernelState1c ? _GEN_165 : phaseCount[0]; // @[FFTEngine.scala 400:36]
  assign fftCalc_1_io_isFFT = ~io_fftMode; // @[FFTEngine.scala 43:17]
  assign fftCalc_1_io_procMode = ~phaseCount[0] & procState2c; // @[FFTEngine.scala 402:48]
  assign fftCalc_1_io_state1c = kernelState1c | procState1c; // @[FFTEngine.scala 403:45]
  assign fftCalc_1_io_state2c = kernelState2c | procState2c; // @[FFTEngine.scala 404:45]
  assign fftCalc_2_clock = clock;
  assign fftCalc_2_reset = reset;
  assign fftCalc_2_io_dataInSR = 3'h7 == addrSBankSel1c_2 ? dataInRPre_7 : _GEN_696; // @[FFTEngine.scala 395:{29,29}]
  assign fftCalc_2_io_dataInSI = sameAddr1c & _T_12 ? 16'h0 : _GEN_705; // @[FFTEngine.scala 396:35]
  assign fftCalc_2_io_dataInTR = _fftCalc_io_dataInSI_T_1 ? _GEN_713 : _GEN_721; // @[FFTEngine.scala 397:35]
  assign fftCalc_2_io_dataInTI = _fftCalc_io_dataInSI_T_1 ? 16'h0 : _GEN_713; // @[FFTEngine.scala 398:35]
  assign fftCalc_2_io_nk = _radixInit_T_11 ? addrSProc : _fftCalc_io_nk_T_10; // @[FFTEngine.scala 399:29]
  assign fftCalc_2_io_rShiftSym = kernelState1c ? _GEN_165 : phaseCount[0]; // @[FFTEngine.scala 400:36]
  assign fftCalc_2_io_isFFT = ~io_fftMode; // @[FFTEngine.scala 43:17]
  assign fftCalc_2_io_procMode = ~phaseCount[0] & procState2c; // @[FFTEngine.scala 402:48]
  assign fftCalc_2_io_state1c = kernelState1c | procState1c; // @[FFTEngine.scala 403:45]
  assign fftCalc_2_io_state2c = kernelState2c | procState2c; // @[FFTEngine.scala 404:45]
  assign fftCalc_3_clock = clock;
  assign fftCalc_3_reset = reset;
  assign fftCalc_3_io_dataInSR = 3'h7 == addrSBankSel1c_3 ? dataInRPre_7 : _GEN_906; // @[FFTEngine.scala 395:{29,29}]
  assign fftCalc_3_io_dataInSI = sameAddr1c & _T_12 ? 16'h0 : _GEN_915; // @[FFTEngine.scala 396:35]
  assign fftCalc_3_io_dataInTR = _fftCalc_io_dataInSI_T_1 ? _GEN_923 : _GEN_931; // @[FFTEngine.scala 397:35]
  assign fftCalc_3_io_dataInTI = _fftCalc_io_dataInSI_T_1 ? 16'h0 : _GEN_923; // @[FFTEngine.scala 398:35]
  assign fftCalc_3_io_nk = _radixInit_T_11 ? addrSProc : _fftCalc_io_nk_T_14; // @[FFTEngine.scala 399:29]
  assign fftCalc_3_io_rShiftSym = kernelState1c ? _GEN_165 : phaseCount[0]; // @[FFTEngine.scala 400:36]
  assign fftCalc_3_io_isFFT = ~io_fftMode; // @[FFTEngine.scala 43:17]
  assign fftCalc_3_io_procMode = ~phaseCount[0] & procState2c; // @[FFTEngine.scala 402:48]
  assign fftCalc_3_io_state1c = kernelState1c | procState1c; // @[FFTEngine.scala 403:45]
  assign fftCalc_3_io_state2c = kernelState2c | procState2c; // @[FFTEngine.scala 404:45]
  always @(posedge clock) begin
    if (reset) begin // @[FFTEngine.scala 45:27]
      stateReg <= 3'h0; // @[FFTEngine.scala 45:27]
    end else if (3'h0 == stateReg) begin // @[FFTEngine.scala 51:22]
      if (io_fftEngineKick) begin // @[FFTEngine.scala 53:36]
        if (isFFT) begin // @[FFTEngine.scala 54:32]
          stateReg <= 3'h1;
        end else begin
          stateReg <= 3'h4;
        end
      end
    end else if (3'h1 == stateReg) begin // @[FFTEngine.scala 51:22]
      if (addrSProc == 7'hf) begin // @[FFTEngine.scala 60:46]
        stateReg <= 3'h2; // @[FFTEngine.scala 61:26]
      end
    end else if (3'h2 == stateReg) begin // @[FFTEngine.scala 51:22]
      stateReg <= _GEN_2;
    end else begin
      stateReg <= _GEN_11;
    end
    if (reset) begin // @[FFTEngine.scala 47:29]
      addrSProc <= 7'h0; // @[FFTEngine.scala 47:29]
    end else if (radixInit) begin // @[FFTEngine.scala 119:21]
      addrSProc <= 7'h0; // @[FFTEngine.scala 120:20]
    end else if (radixUp) begin // @[FFTEngine.scala 121:26]
      addrSProc <= _radixCount_T_1; // @[FFTEngine.scala 122:20]
    end
    if (reset) begin // @[FFTEngine.scala 49:29]
      phaseCount <= 3'h0; // @[FFTEngine.scala 49:29]
    end else if (phaseInit) begin // @[FFTEngine.scala 134:21]
      phaseCount <= 3'h0; // @[FFTEngine.scala 135:20]
    end else if (phaseUp) begin // @[FFTEngine.scala 136:26]
      phaseCount <= _phaseCount_T_1; // @[FFTEngine.scala 137:20]
    end
    if (reset) begin // @[FFTEngine.scala 142:28]
      srcBuffer <= 1'h0; // @[FFTEngine.scala 142:28]
    end else if (srcUp) begin // @[FFTEngine.scala 148:17]
      srcBuffer <= srcBufferNext; // @[FFTEngine.scala 149:19]
    end
    if (reset) begin // @[Reg.scala 35:20]
      addrSBankSelKernel1c_0_r <= 3'h0; // @[Reg.scala 35:20]
    end else if (_radixInit_T_1) begin // @[FFTEngine.scala 284:27]
      addrSBankSelKernel1c_0_r <= addrSBankSelKernelPre_0; // @[FFTEngine.scala 285:35]
    end else begin
      addrSBankSelKernel1c_0_r <= 3'h0; // @[FFTEngine.scala 288:35]
    end
    if (reset) begin // @[Reg.scala 35:20]
      addrSBankSelKernel2c_0_r <= 3'h0; // @[Reg.scala 35:20]
    end else begin
      addrSBankSelKernel2c_0_r <= addrSBankSelKernel1c_0_r;
    end
    if (reset) begin // @[Reg.scala 35:20]
      addrSBankSelKernel3c_0_r <= 3'h0; // @[Reg.scala 35:20]
    end else begin
      addrSBankSelKernel3c_0_r <= addrSBankSelKernel2c_0_r;
    end
    if (reset) begin // @[Reg.scala 35:20]
      addrTBankSelKernel1c_0_r <= 3'h1; // @[Reg.scala 35:20]
    end else if (_radixInit_T_1) begin // @[FFTEngine.scala 284:27]
      addrTBankSelKernel1c_0_r <= addrTBankSelKernelPre_0; // @[FFTEngine.scala 286:35]
    end else begin
      addrTBankSelKernel1c_0_r <= 3'h1; // @[FFTEngine.scala 289:35]
    end
    if (reset) begin // @[Reg.scala 35:20]
      addrTBankSelKernel2c_0_r <= 3'h1; // @[Reg.scala 35:20]
    end else begin
      addrTBankSelKernel2c_0_r <= addrTBankSelKernel1c_0_r;
    end
    if (reset) begin // @[Reg.scala 35:20]
      addrTBankSelKernel3c_0_r <= 3'h1; // @[Reg.scala 35:20]
    end else begin
      addrTBankSelKernel3c_0_r <= addrTBankSelKernel2c_0_r;
    end
    if (reset) begin // @[Reg.scala 35:20]
      addrSBankSelKernel1c_1_r <= 3'h2; // @[Reg.scala 35:20]
    end else if (_radixInit_T_1) begin // @[FFTEngine.scala 284:27]
      addrSBankSelKernel1c_1_r <= addrSBankSelKernelPre_1; // @[FFTEngine.scala 285:35]
    end else begin
      addrSBankSelKernel1c_1_r <= 3'h2; // @[FFTEngine.scala 288:35]
    end
    if (reset) begin // @[Reg.scala 35:20]
      addrSBankSelKernel2c_1_r <= 3'h2; // @[Reg.scala 35:20]
    end else begin
      addrSBankSelKernel2c_1_r <= addrSBankSelKernel1c_1_r;
    end
    if (reset) begin // @[Reg.scala 35:20]
      addrSBankSelKernel3c_1_r <= 3'h2; // @[Reg.scala 35:20]
    end else begin
      addrSBankSelKernel3c_1_r <= addrSBankSelKernel2c_1_r;
    end
    if (reset) begin // @[Reg.scala 35:20]
      addrTBankSelKernel1c_1_r <= 3'h3; // @[Reg.scala 35:20]
    end else if (_radixInit_T_1) begin // @[FFTEngine.scala 284:27]
      addrTBankSelKernel1c_1_r <= addrTBankSelKernelPre_1; // @[FFTEngine.scala 286:35]
    end else begin
      addrTBankSelKernel1c_1_r <= 3'h3; // @[FFTEngine.scala 289:35]
    end
    if (reset) begin // @[Reg.scala 35:20]
      addrTBankSelKernel2c_1_r <= 3'h3; // @[Reg.scala 35:20]
    end else begin
      addrTBankSelKernel2c_1_r <= addrTBankSelKernel1c_1_r;
    end
    if (reset) begin // @[Reg.scala 35:20]
      addrTBankSelKernel3c_1_r <= 3'h3; // @[Reg.scala 35:20]
    end else begin
      addrTBankSelKernel3c_1_r <= addrTBankSelKernel2c_1_r;
    end
    if (reset) begin // @[Reg.scala 35:20]
      addrSBankSelKernel1c_2_r <= 3'h4; // @[Reg.scala 35:20]
    end else if (_radixInit_T_1) begin // @[FFTEngine.scala 284:27]
      addrSBankSelKernel1c_2_r <= addrSBankSelKernelPre_2; // @[FFTEngine.scala 285:35]
    end else begin
      addrSBankSelKernel1c_2_r <= 3'h4; // @[FFTEngine.scala 288:35]
    end
    if (reset) begin // @[Reg.scala 35:20]
      addrSBankSelKernel2c_2_r <= 3'h4; // @[Reg.scala 35:20]
    end else begin
      addrSBankSelKernel2c_2_r <= addrSBankSelKernel1c_2_r;
    end
    if (reset) begin // @[Reg.scala 35:20]
      addrSBankSelKernel3c_2_r <= 3'h4; // @[Reg.scala 35:20]
    end else begin
      addrSBankSelKernel3c_2_r <= addrSBankSelKernel2c_2_r;
    end
    if (reset) begin // @[Reg.scala 35:20]
      addrTBankSelKernel1c_2_r <= 3'h5; // @[Reg.scala 35:20]
    end else if (_radixInit_T_1) begin // @[FFTEngine.scala 284:27]
      addrTBankSelKernel1c_2_r <= addrTBankSelKernelPre_2; // @[FFTEngine.scala 286:35]
    end else begin
      addrTBankSelKernel1c_2_r <= 3'h5; // @[FFTEngine.scala 289:35]
    end
    if (reset) begin // @[Reg.scala 35:20]
      addrTBankSelKernel2c_2_r <= 3'h5; // @[Reg.scala 35:20]
    end else begin
      addrTBankSelKernel2c_2_r <= addrTBankSelKernel1c_2_r;
    end
    if (reset) begin // @[Reg.scala 35:20]
      addrTBankSelKernel3c_2_r <= 3'h5; // @[Reg.scala 35:20]
    end else begin
      addrTBankSelKernel3c_2_r <= addrTBankSelKernel2c_2_r;
    end
    if (reset) begin // @[Reg.scala 35:20]
      addrSBankSelKernel1c_3_r <= 3'h6; // @[Reg.scala 35:20]
    end else if (_radixInit_T_1) begin // @[FFTEngine.scala 284:27]
      addrSBankSelKernel1c_3_r <= addrSBankSelKernelPre_3; // @[FFTEngine.scala 285:35]
    end else begin
      addrSBankSelKernel1c_3_r <= 3'h6; // @[FFTEngine.scala 288:35]
    end
    if (reset) begin // @[Reg.scala 35:20]
      addrSBankSelKernel2c_3_r <= 3'h6; // @[Reg.scala 35:20]
    end else begin
      addrSBankSelKernel2c_3_r <= addrSBankSelKernel1c_3_r;
    end
    if (reset) begin // @[Reg.scala 35:20]
      addrSBankSelKernel3c_3_r <= 3'h6; // @[Reg.scala 35:20]
    end else begin
      addrSBankSelKernel3c_3_r <= addrSBankSelKernel2c_3_r;
    end
    if (reset) begin // @[Reg.scala 35:20]
      addrTBankSelKernel1c_3_r <= 3'h7; // @[Reg.scala 35:20]
    end else if (_radixInit_T_1) begin // @[FFTEngine.scala 284:27]
      addrTBankSelKernel1c_3_r <= addrTBankSelKernelPre_3; // @[FFTEngine.scala 286:35]
    end else begin
      addrTBankSelKernel1c_3_r <= 3'h7; // @[FFTEngine.scala 289:35]
    end
    if (reset) begin // @[Reg.scala 35:20]
      addrTBankSelKernel2c_3_r <= 3'h7; // @[Reg.scala 35:20]
    end else begin
      addrTBankSelKernel2c_3_r <= addrTBankSelKernel1c_3_r;
    end
    if (reset) begin // @[Reg.scala 35:20]
      addrTBankSelKernel3c_3_r <= 3'h7; // @[Reg.scala 35:20]
    end else begin
      addrTBankSelKernel3c_3_r <= addrTBankSelKernel2c_3_r;
    end
    if (reset) begin // @[Reg.scala 35:20]
      addrSBankSelProc1c_0_r <= 3'h0; // @[Reg.scala 35:20]
    end else begin
      addrSBankSelProc1c_0_r <= addrSBankSelProc_0;
    end
    if (reset) begin // @[Reg.scala 35:20]
      addrSBankSelProc2c_0_r <= 3'h0; // @[Reg.scala 35:20]
    end else begin
      addrSBankSelProc2c_0_r <= addrSBankSelProc1c_0_r;
    end
    if (reset) begin // @[Reg.scala 35:20]
      addrSBankSelProc3c_0_r <= 3'h0; // @[Reg.scala 35:20]
    end else begin
      addrSBankSelProc3c_0_r <= addrSBankSelProc2c_0_r;
    end
    if (reset) begin // @[Reg.scala 35:20]
      addrTBankSelProc1c_0_r <= 3'h1; // @[Reg.scala 35:20]
    end else begin
      addrTBankSelProc1c_0_r <= addrTBankSelProc_0;
    end
    if (reset) begin // @[Reg.scala 35:20]
      addrTBankSelProc2c_0_r <= 3'h1; // @[Reg.scala 35:20]
    end else begin
      addrTBankSelProc2c_0_r <= addrTBankSelProc1c_0_r;
    end
    if (reset) begin // @[Reg.scala 35:20]
      addrTBankSelProc3c_0_r <= 3'h1; // @[Reg.scala 35:20]
    end else begin
      addrTBankSelProc3c_0_r <= addrTBankSelProc2c_0_r;
    end
    if (reset) begin // @[Reg.scala 35:20]
      addrSBankSelProc1c_1_r <= 3'h2; // @[Reg.scala 35:20]
    end else begin
      addrSBankSelProc1c_1_r <= addrSBankSelProc_1;
    end
    if (reset) begin // @[Reg.scala 35:20]
      addrSBankSelProc2c_1_r <= 3'h2; // @[Reg.scala 35:20]
    end else begin
      addrSBankSelProc2c_1_r <= addrSBankSelProc1c_1_r;
    end
    if (reset) begin // @[Reg.scala 35:20]
      addrSBankSelProc3c_1_r <= 3'h2; // @[Reg.scala 35:20]
    end else begin
      addrSBankSelProc3c_1_r <= addrSBankSelProc2c_1_r;
    end
    if (reset) begin // @[Reg.scala 35:20]
      addrTBankSelProc1c_1_r <= 3'h3; // @[Reg.scala 35:20]
    end else begin
      addrTBankSelProc1c_1_r <= addrTBankSelProc_1;
    end
    if (reset) begin // @[Reg.scala 35:20]
      addrTBankSelProc2c_1_r <= 3'h3; // @[Reg.scala 35:20]
    end else begin
      addrTBankSelProc2c_1_r <= addrTBankSelProc1c_1_r;
    end
    if (reset) begin // @[Reg.scala 35:20]
      addrTBankSelProc3c_1_r <= 3'h3; // @[Reg.scala 35:20]
    end else begin
      addrTBankSelProc3c_1_r <= addrTBankSelProc2c_1_r;
    end
    if (reset) begin // @[Reg.scala 35:20]
      addrSBankSelProc1c_2_r <= 3'h4; // @[Reg.scala 35:20]
    end else begin
      addrSBankSelProc1c_2_r <= addrSBankSelProc_2;
    end
    if (reset) begin // @[Reg.scala 35:20]
      addrSBankSelProc2c_2_r <= 3'h4; // @[Reg.scala 35:20]
    end else begin
      addrSBankSelProc2c_2_r <= addrSBankSelProc1c_2_r;
    end
    if (reset) begin // @[Reg.scala 35:20]
      addrSBankSelProc3c_2_r <= 3'h4; // @[Reg.scala 35:20]
    end else begin
      addrSBankSelProc3c_2_r <= addrSBankSelProc2c_2_r;
    end
    if (reset) begin // @[Reg.scala 35:20]
      addrTBankSelProc1c_2_r <= 3'h5; // @[Reg.scala 35:20]
    end else begin
      addrTBankSelProc1c_2_r <= addrTBankSelProc_2;
    end
    if (reset) begin // @[Reg.scala 35:20]
      addrTBankSelProc2c_2_r <= 3'h5; // @[Reg.scala 35:20]
    end else begin
      addrTBankSelProc2c_2_r <= addrTBankSelProc1c_2_r;
    end
    if (reset) begin // @[Reg.scala 35:20]
      addrTBankSelProc3c_2_r <= 3'h5; // @[Reg.scala 35:20]
    end else begin
      addrTBankSelProc3c_2_r <= addrTBankSelProc2c_2_r;
    end
    if (reset) begin // @[Reg.scala 35:20]
      addrSBankSelProc1c_3_r <= 3'h6; // @[Reg.scala 35:20]
    end else begin
      addrSBankSelProc1c_3_r <= addrSBankSelProc_3;
    end
    if (reset) begin // @[Reg.scala 35:20]
      addrSBankSelProc2c_3_r <= 3'h6; // @[Reg.scala 35:20]
    end else begin
      addrSBankSelProc2c_3_r <= addrSBankSelProc1c_3_r;
    end
    if (reset) begin // @[Reg.scala 35:20]
      addrSBankSelProc3c_3_r <= 3'h6; // @[Reg.scala 35:20]
    end else begin
      addrSBankSelProc3c_3_r <= addrSBankSelProc2c_3_r;
    end
    if (reset) begin // @[Reg.scala 35:20]
      addrTBankSelProc1c_3_r <= 3'h7; // @[Reg.scala 35:20]
    end else begin
      addrTBankSelProc1c_3_r <= addrTBankSelProc_3;
    end
    if (reset) begin // @[Reg.scala 35:20]
      addrTBankSelProc2c_3_r <= 3'h7; // @[Reg.scala 35:20]
    end else begin
      addrTBankSelProc2c_3_r <= addrTBankSelProc1c_3_r;
    end
    if (reset) begin // @[Reg.scala 35:20]
      addrTBankSelProc3c_3_r <= 3'h7; // @[Reg.scala 35:20]
    end else begin
      addrTBankSelProc3c_3_r <= addrTBankSelProc2c_3_r;
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
      addrS1c <= 4'h0; // @[Reg.scala 35:20]
    end else begin
      addrS1c <= addrS_0[3:0];
    end
    if (reset) begin // @[Reg.scala 35:20]
      addrS2c <= 4'h0; // @[Reg.scala 35:20]
    end else begin
      addrS2c <= addrS1c;
    end
    if (reset) begin // @[Reg.scala 35:20]
      addrS3c <= 4'h0; // @[Reg.scala 35:20]
    end else begin
      addrS3c <= addrS2c;
    end
    if (reset) begin // @[Reg.scala 35:20]
      addrT1c <= 4'h0; // @[Reg.scala 35:20]
    end else begin
      addrT1c <= addrT_0[3:0];
    end
    if (reset) begin // @[Reg.scala 35:20]
      addrT2c <= 4'h0; // @[Reg.scala 35:20]
    end else begin
      addrT2c <= addrT1c;
    end
    if (reset) begin // @[Reg.scala 35:20]
      addrT3c <= 4'h0; // @[Reg.scala 35:20]
    end else begin
      addrT3c <= addrT2c;
    end
    if (reset) begin // @[Reg.scala 35:20]
      addrSBankSel1c <= 3'h0; // @[Reg.scala 35:20]
    end else if (isFFT) begin // @[FFTEngine.scala 383:21]
      if (_radixInit_T_11) begin // @[FFTEngine.scala 384:32]
        addrSBankSel1c <= addrSBankSelProc_0;
      end else begin
        addrSBankSel1c <= addrSBankSelKernel_0;
      end
    end else if (_radixInit_T_11 | _radixInit_T_1 & phaseCount == 3'h0) begin // @[FFTEngine.scala 387:32]
      addrSBankSel1c <= addrSBankSelProc_0;
    end else begin
      addrSBankSel1c <= addrSBankSelKernel_0;
    end
    if (reset) begin // @[Reg.scala 35:20]
      addrTBankSel1c <= 3'h1; // @[Reg.scala 35:20]
    end else if (isFFT) begin // @[FFTEngine.scala 383:21]
      if (_radixInit_T_11) begin // @[FFTEngine.scala 385:32]
        addrTBankSel1c <= addrTBankSelProc_0;
      end else begin
        addrTBankSel1c <= addrTBankSelKernel_0;
      end
    end else if (_addrSBankSel_T_4) begin // @[FFTEngine.scala 388:32]
      addrTBankSel1c <= addrTBankSelProc_0;
    end else begin
      addrTBankSel1c <= addrTBankSelKernel_0;
    end
    if (reset) begin // @[Reg.scala 35:20]
      addrS1c_1 <= 4'h0; // @[Reg.scala 35:20]
    end else begin
      addrS1c_1 <= addrS_1[3:0];
    end
    if (reset) begin // @[Reg.scala 35:20]
      addrS2c_1 <= 4'h0; // @[Reg.scala 35:20]
    end else begin
      addrS2c_1 <= addrS1c_1;
    end
    if (reset) begin // @[Reg.scala 35:20]
      addrS3c_1 <= 4'h0; // @[Reg.scala 35:20]
    end else begin
      addrS3c_1 <= addrS2c_1;
    end
    if (reset) begin // @[Reg.scala 35:20]
      addrT1c_1 <= 4'h0; // @[Reg.scala 35:20]
    end else begin
      addrT1c_1 <= addrT_1[3:0];
    end
    if (reset) begin // @[Reg.scala 35:20]
      addrT2c_1 <= 4'h0; // @[Reg.scala 35:20]
    end else begin
      addrT2c_1 <= addrT1c_1;
    end
    if (reset) begin // @[Reg.scala 35:20]
      addrT3c_1 <= 4'h0; // @[Reg.scala 35:20]
    end else begin
      addrT3c_1 <= addrT2c_1;
    end
    if (reset) begin // @[Reg.scala 35:20]
      addrSBankSel1c_1 <= 3'h0; // @[Reg.scala 35:20]
    end else if (isFFT) begin // @[FFTEngine.scala 383:21]
      if (_radixInit_T_11) begin // @[FFTEngine.scala 384:32]
        addrSBankSel1c_1 <= addrSBankSelProc_1;
      end else begin
        addrSBankSel1c_1 <= addrSBankSelKernel_1;
      end
    end else if (_radixInit_T_11 | _radixInit_T_1 & phaseCount == 3'h0) begin // @[FFTEngine.scala 387:32]
      addrSBankSel1c_1 <= addrSBankSelProc_1;
    end else begin
      addrSBankSel1c_1 <= addrSBankSelKernel_1;
    end
    if (reset) begin // @[Reg.scala 35:20]
      addrTBankSel1c_1 <= 3'h1; // @[Reg.scala 35:20]
    end else if (isFFT) begin // @[FFTEngine.scala 383:21]
      if (_radixInit_T_11) begin // @[FFTEngine.scala 385:32]
        addrTBankSel1c_1 <= addrTBankSelProc_1;
      end else begin
        addrTBankSel1c_1 <= addrTBankSelKernel_1;
      end
    end else if (_addrSBankSel_T_4) begin // @[FFTEngine.scala 388:32]
      addrTBankSel1c_1 <= addrTBankSelProc_1;
    end else begin
      addrTBankSel1c_1 <= addrTBankSelKernel_1;
    end
    if (reset) begin // @[Reg.scala 35:20]
      addrS1c_2 <= 4'h0; // @[Reg.scala 35:20]
    end else begin
      addrS1c_2 <= addrS_2[3:0];
    end
    if (reset) begin // @[Reg.scala 35:20]
      addrS2c_2 <= 4'h0; // @[Reg.scala 35:20]
    end else begin
      addrS2c_2 <= addrS1c_2;
    end
    if (reset) begin // @[Reg.scala 35:20]
      addrS3c_2 <= 4'h0; // @[Reg.scala 35:20]
    end else begin
      addrS3c_2 <= addrS2c_2;
    end
    if (reset) begin // @[Reg.scala 35:20]
      addrT1c_2 <= 4'h0; // @[Reg.scala 35:20]
    end else begin
      addrT1c_2 <= addrT_2[3:0];
    end
    if (reset) begin // @[Reg.scala 35:20]
      addrT2c_2 <= 4'h0; // @[Reg.scala 35:20]
    end else begin
      addrT2c_2 <= addrT1c_2;
    end
    if (reset) begin // @[Reg.scala 35:20]
      addrT3c_2 <= 4'h0; // @[Reg.scala 35:20]
    end else begin
      addrT3c_2 <= addrT2c_2;
    end
    if (reset) begin // @[Reg.scala 35:20]
      addrSBankSel1c_2 <= 3'h0; // @[Reg.scala 35:20]
    end else if (isFFT) begin // @[FFTEngine.scala 383:21]
      if (_radixInit_T_11) begin // @[FFTEngine.scala 384:32]
        addrSBankSel1c_2 <= addrSBankSelProc_2;
      end else begin
        addrSBankSel1c_2 <= addrSBankSelKernel_2;
      end
    end else if (_radixInit_T_11 | _radixInit_T_1 & phaseCount == 3'h0) begin // @[FFTEngine.scala 387:32]
      addrSBankSel1c_2 <= addrSBankSelProc_2;
    end else begin
      addrSBankSel1c_2 <= addrSBankSelKernel_2;
    end
    if (reset) begin // @[Reg.scala 35:20]
      addrTBankSel1c_2 <= 3'h1; // @[Reg.scala 35:20]
    end else if (isFFT) begin // @[FFTEngine.scala 383:21]
      if (_radixInit_T_11) begin // @[FFTEngine.scala 385:32]
        addrTBankSel1c_2 <= addrTBankSelProc_2;
      end else begin
        addrTBankSel1c_2 <= addrTBankSelKernel_2;
      end
    end else if (_addrSBankSel_T_4) begin // @[FFTEngine.scala 388:32]
      addrTBankSel1c_2 <= addrTBankSelProc_2;
    end else begin
      addrTBankSel1c_2 <= addrTBankSelKernel_2;
    end
    if (reset) begin // @[Reg.scala 35:20]
      addrS1c_3 <= 4'h0; // @[Reg.scala 35:20]
    end else begin
      addrS1c_3 <= addrS_3[3:0];
    end
    if (reset) begin // @[Reg.scala 35:20]
      addrS2c_3 <= 4'h0; // @[Reg.scala 35:20]
    end else begin
      addrS2c_3 <= addrS1c_3;
    end
    if (reset) begin // @[Reg.scala 35:20]
      addrS3c_3 <= 4'h0; // @[Reg.scala 35:20]
    end else begin
      addrS3c_3 <= addrS2c_3;
    end
    if (reset) begin // @[Reg.scala 35:20]
      addrT1c_3 <= 4'h0; // @[Reg.scala 35:20]
    end else begin
      addrT1c_3 <= addrT_3[3:0];
    end
    if (reset) begin // @[Reg.scala 35:20]
      addrT2c_3 <= 4'h0; // @[Reg.scala 35:20]
    end else begin
      addrT2c_3 <= addrT1c_3;
    end
    if (reset) begin // @[Reg.scala 35:20]
      addrT3c_3 <= 4'h0; // @[Reg.scala 35:20]
    end else begin
      addrT3c_3 <= addrT2c_3;
    end
    if (reset) begin // @[Reg.scala 35:20]
      addrSBankSel1c_3 <= 3'h0; // @[Reg.scala 35:20]
    end else if (isFFT) begin // @[FFTEngine.scala 383:21]
      if (_radixInit_T_11) begin // @[FFTEngine.scala 384:32]
        addrSBankSel1c_3 <= addrSBankSelProc_3;
      end else begin
        addrSBankSel1c_3 <= addrSBankSelKernel_3;
      end
    end else if (_radixInit_T_11 | _radixInit_T_1 & phaseCount == 3'h0) begin // @[FFTEngine.scala 387:32]
      addrSBankSel1c_3 <= addrSBankSelProc_3;
    end else begin
      addrSBankSel1c_3 <= addrSBankSelKernel_3;
    end
    if (reset) begin // @[Reg.scala 35:20]
      addrTBankSel1c_3 <= 3'h1; // @[Reg.scala 35:20]
    end else if (isFFT) begin // @[FFTEngine.scala 383:21]
      if (_radixInit_T_11) begin // @[FFTEngine.scala 385:32]
        addrTBankSel1c_3 <= addrTBankSelProc_3;
      end else begin
        addrTBankSel1c_3 <= addrTBankSelKernel_3;
      end
    end else if (_addrSBankSel_T_4) begin // @[FFTEngine.scala 388:32]
      addrTBankSel1c_3 <= addrTBankSelProc_3;
    end else begin
      addrTBankSel1c_3 <= addrTBankSelKernel_3;
    end
    if (reset) begin // @[FFTEngine.scala 522:29]
      fftDoneReg <= 1'h0; // @[FFTEngine.scala 522:29]
    end else begin
      fftDoneReg <= _radixInit_T_21; // @[FFTEngine.scala 522:29]
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
  addrSBankSelKernel1c_0_r = _RAND_4[2:0];
  _RAND_5 = {1{`RANDOM}};
  addrSBankSelKernel2c_0_r = _RAND_5[2:0];
  _RAND_6 = {1{`RANDOM}};
  addrSBankSelKernel3c_0_r = _RAND_6[2:0];
  _RAND_7 = {1{`RANDOM}};
  addrTBankSelKernel1c_0_r = _RAND_7[2:0];
  _RAND_8 = {1{`RANDOM}};
  addrTBankSelKernel2c_0_r = _RAND_8[2:0];
  _RAND_9 = {1{`RANDOM}};
  addrTBankSelKernel3c_0_r = _RAND_9[2:0];
  _RAND_10 = {1{`RANDOM}};
  addrSBankSelKernel1c_1_r = _RAND_10[2:0];
  _RAND_11 = {1{`RANDOM}};
  addrSBankSelKernel2c_1_r = _RAND_11[2:0];
  _RAND_12 = {1{`RANDOM}};
  addrSBankSelKernel3c_1_r = _RAND_12[2:0];
  _RAND_13 = {1{`RANDOM}};
  addrTBankSelKernel1c_1_r = _RAND_13[2:0];
  _RAND_14 = {1{`RANDOM}};
  addrTBankSelKernel2c_1_r = _RAND_14[2:0];
  _RAND_15 = {1{`RANDOM}};
  addrTBankSelKernel3c_1_r = _RAND_15[2:0];
  _RAND_16 = {1{`RANDOM}};
  addrSBankSelKernel1c_2_r = _RAND_16[2:0];
  _RAND_17 = {1{`RANDOM}};
  addrSBankSelKernel2c_2_r = _RAND_17[2:0];
  _RAND_18 = {1{`RANDOM}};
  addrSBankSelKernel3c_2_r = _RAND_18[2:0];
  _RAND_19 = {1{`RANDOM}};
  addrTBankSelKernel1c_2_r = _RAND_19[2:0];
  _RAND_20 = {1{`RANDOM}};
  addrTBankSelKernel2c_2_r = _RAND_20[2:0];
  _RAND_21 = {1{`RANDOM}};
  addrTBankSelKernel3c_2_r = _RAND_21[2:0];
  _RAND_22 = {1{`RANDOM}};
  addrSBankSelKernel1c_3_r = _RAND_22[2:0];
  _RAND_23 = {1{`RANDOM}};
  addrSBankSelKernel2c_3_r = _RAND_23[2:0];
  _RAND_24 = {1{`RANDOM}};
  addrSBankSelKernel3c_3_r = _RAND_24[2:0];
  _RAND_25 = {1{`RANDOM}};
  addrTBankSelKernel1c_3_r = _RAND_25[2:0];
  _RAND_26 = {1{`RANDOM}};
  addrTBankSelKernel2c_3_r = _RAND_26[2:0];
  _RAND_27 = {1{`RANDOM}};
  addrTBankSelKernel3c_3_r = _RAND_27[2:0];
  _RAND_28 = {1{`RANDOM}};
  addrSBankSelProc1c_0_r = _RAND_28[2:0];
  _RAND_29 = {1{`RANDOM}};
  addrSBankSelProc2c_0_r = _RAND_29[2:0];
  _RAND_30 = {1{`RANDOM}};
  addrSBankSelProc3c_0_r = _RAND_30[2:0];
  _RAND_31 = {1{`RANDOM}};
  addrTBankSelProc1c_0_r = _RAND_31[2:0];
  _RAND_32 = {1{`RANDOM}};
  addrTBankSelProc2c_0_r = _RAND_32[2:0];
  _RAND_33 = {1{`RANDOM}};
  addrTBankSelProc3c_0_r = _RAND_33[2:0];
  _RAND_34 = {1{`RANDOM}};
  addrSBankSelProc1c_1_r = _RAND_34[2:0];
  _RAND_35 = {1{`RANDOM}};
  addrSBankSelProc2c_1_r = _RAND_35[2:0];
  _RAND_36 = {1{`RANDOM}};
  addrSBankSelProc3c_1_r = _RAND_36[2:0];
  _RAND_37 = {1{`RANDOM}};
  addrTBankSelProc1c_1_r = _RAND_37[2:0];
  _RAND_38 = {1{`RANDOM}};
  addrTBankSelProc2c_1_r = _RAND_38[2:0];
  _RAND_39 = {1{`RANDOM}};
  addrTBankSelProc3c_1_r = _RAND_39[2:0];
  _RAND_40 = {1{`RANDOM}};
  addrSBankSelProc1c_2_r = _RAND_40[2:0];
  _RAND_41 = {1{`RANDOM}};
  addrSBankSelProc2c_2_r = _RAND_41[2:0];
  _RAND_42 = {1{`RANDOM}};
  addrSBankSelProc3c_2_r = _RAND_42[2:0];
  _RAND_43 = {1{`RANDOM}};
  addrTBankSelProc1c_2_r = _RAND_43[2:0];
  _RAND_44 = {1{`RANDOM}};
  addrTBankSelProc2c_2_r = _RAND_44[2:0];
  _RAND_45 = {1{`RANDOM}};
  addrTBankSelProc3c_2_r = _RAND_45[2:0];
  _RAND_46 = {1{`RANDOM}};
  addrSBankSelProc1c_3_r = _RAND_46[2:0];
  _RAND_47 = {1{`RANDOM}};
  addrSBankSelProc2c_3_r = _RAND_47[2:0];
  _RAND_48 = {1{`RANDOM}};
  addrSBankSelProc3c_3_r = _RAND_48[2:0];
  _RAND_49 = {1{`RANDOM}};
  addrTBankSelProc1c_3_r = _RAND_49[2:0];
  _RAND_50 = {1{`RANDOM}};
  addrTBankSelProc2c_3_r = _RAND_50[2:0];
  _RAND_51 = {1{`RANDOM}};
  addrTBankSelProc3c_3_r = _RAND_51[2:0];
  _RAND_52 = {1{`RANDOM}};
  kernelState1c = _RAND_52[0:0];
  _RAND_53 = {1{`RANDOM}};
  kernelState2c = _RAND_53[0:0];
  _RAND_54 = {1{`RANDOM}};
  kernelState3c = _RAND_54[0:0];
  _RAND_55 = {1{`RANDOM}};
  procState1c = _RAND_55[0:0];
  _RAND_56 = {1{`RANDOM}};
  procState2c = _RAND_56[0:0];
  _RAND_57 = {1{`RANDOM}};
  procState3c = _RAND_57[0:0];
  _RAND_58 = {1{`RANDOM}};
  sameAddr1c = _RAND_58[0:0];
  _RAND_59 = {1{`RANDOM}};
  sameAddr2c = _RAND_59[0:0];
  _RAND_60 = {1{`RANDOM}};
  sameAddr3c = _RAND_60[0:0];
  _RAND_61 = {1{`RANDOM}};
  addrS1c = _RAND_61[3:0];
  _RAND_62 = {1{`RANDOM}};
  addrS2c = _RAND_62[3:0];
  _RAND_63 = {1{`RANDOM}};
  addrS3c = _RAND_63[3:0];
  _RAND_64 = {1{`RANDOM}};
  addrT1c = _RAND_64[3:0];
  _RAND_65 = {1{`RANDOM}};
  addrT2c = _RAND_65[3:0];
  _RAND_66 = {1{`RANDOM}};
  addrT3c = _RAND_66[3:0];
  _RAND_67 = {1{`RANDOM}};
  addrSBankSel1c = _RAND_67[2:0];
  _RAND_68 = {1{`RANDOM}};
  addrTBankSel1c = _RAND_68[2:0];
  _RAND_69 = {1{`RANDOM}};
  addrS1c_1 = _RAND_69[3:0];
  _RAND_70 = {1{`RANDOM}};
  addrS2c_1 = _RAND_70[3:0];
  _RAND_71 = {1{`RANDOM}};
  addrS3c_1 = _RAND_71[3:0];
  _RAND_72 = {1{`RANDOM}};
  addrT1c_1 = _RAND_72[3:0];
  _RAND_73 = {1{`RANDOM}};
  addrT2c_1 = _RAND_73[3:0];
  _RAND_74 = {1{`RANDOM}};
  addrT3c_1 = _RAND_74[3:0];
  _RAND_75 = {1{`RANDOM}};
  addrSBankSel1c_1 = _RAND_75[2:0];
  _RAND_76 = {1{`RANDOM}};
  addrTBankSel1c_1 = _RAND_76[2:0];
  _RAND_77 = {1{`RANDOM}};
  addrS1c_2 = _RAND_77[3:0];
  _RAND_78 = {1{`RANDOM}};
  addrS2c_2 = _RAND_78[3:0];
  _RAND_79 = {1{`RANDOM}};
  addrS3c_2 = _RAND_79[3:0];
  _RAND_80 = {1{`RANDOM}};
  addrT1c_2 = _RAND_80[3:0];
  _RAND_81 = {1{`RANDOM}};
  addrT2c_2 = _RAND_81[3:0];
  _RAND_82 = {1{`RANDOM}};
  addrT3c_2 = _RAND_82[3:0];
  _RAND_83 = {1{`RANDOM}};
  addrSBankSel1c_2 = _RAND_83[2:0];
  _RAND_84 = {1{`RANDOM}};
  addrTBankSel1c_2 = _RAND_84[2:0];
  _RAND_85 = {1{`RANDOM}};
  addrS1c_3 = _RAND_85[3:0];
  _RAND_86 = {1{`RANDOM}};
  addrS2c_3 = _RAND_86[3:0];
  _RAND_87 = {1{`RANDOM}};
  addrS3c_3 = _RAND_87[3:0];
  _RAND_88 = {1{`RANDOM}};
  addrT1c_3 = _RAND_88[3:0];
  _RAND_89 = {1{`RANDOM}};
  addrT2c_3 = _RAND_89[3:0];
  _RAND_90 = {1{`RANDOM}};
  addrT3c_3 = _RAND_90[3:0];
  _RAND_91 = {1{`RANDOM}};
  addrSBankSel1c_3 = _RAND_91[2:0];
  _RAND_92 = {1{`RANDOM}};
  addrTBankSel1c_3 = _RAND_92[2:0];
  _RAND_93 = {1{`RANDOM}};
  fftDoneReg = _RAND_93[0:0];
`endif // RANDOMIZE_REG_INIT
  `endif // RANDOMIZE
end // initial
`ifdef FIRRTL_AFTER_INITIAL
`FIRRTL_AFTER_INITIAL
`endif
`endif // SYNTHESIS
endmodule
