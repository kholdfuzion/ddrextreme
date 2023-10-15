.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches


glabel FUN_800ce93c
/* BF13C 800CE93C A8FEBD27 */  addiu      $sp, $sp, -0x158
/* BF140 800CE940 3001B0AF */  sw         $s0, 0x130($sp)
/* BF144 800CE944 21808000 */  addu       $s0, $a0, $zero
/* BF148 800CE948 1000A427 */  addiu      $a0, $sp, 0x10
/* BF14C 800CE94C 5401BFAF */  sw         $ra, 0x154($sp)
/* BF150 800CE950 5001BEAF */  sw         $fp, 0x150($sp)
/* BF154 800CE954 4C01B7AF */  sw         $s7, 0x14c($sp)
/* BF158 800CE958 4801B6AF */  sw         $s6, 0x148($sp)
/* BF15C 800CE95C 4401B5AF */  sw         $s5, 0x144($sp)
/* BF160 800CE960 4001B4AF */  sw         $s4, 0x140($sp)
/* BF164 800CE964 3C01B3AF */  sw         $s3, 0x13c($sp)
/* BF168 800CE968 3801B2AF */  sw         $s2, 0x138($sp)
/* BF16C 800CE96C 3401B1AF */  sw         $s1, 0x134($sp)
/* BF170 800CE970 00001E8E */  lw         $fp, ($s0)
/* BF174 800CE974 0400198E */  lw         $t9, 4($s0)
/* BF178 800CE978 0800188E */  lw         $t8, 8($s0)
/* BF17C 800CE97C 0C00178E */  lw         $s7, 0xc($s0)
/* BF180 800CE980 40000624 */  addiu      $a2, $zero, 0x40
/* BF184 800CE984 2001B8AF */  sw         $t8, 0x120($sp)
/* BF188 800CE988 843E030C */  jal        FUN_800cfa10
/* BF18C 800CE98C 2401B9AF */   sw        $t9, 0x124($sp)
/* BF190 800CE990 6AD7073C */  lui        $a3, 0xd76a
/* BF194 800CE994 78A4E734 */  ori        $a3, $a3, 0xa478
/* BF198 800CE998 C7E8083C */  lui        $t0, 0xe8c7
/* BF19C 800CE99C 56B70835 */  ori        $t0, $t0, 0xb756
/* BF1A0 800CE9A0 2024093C */  lui        $t1, 0x2420
/* BF1A4 800CE9A4 DB702935 */  ori        $t1, $t1, 0x70db
/* BF1A8 800CE9A8 BDC10A3C */  lui        $t2, 0xc1bd
/* BF1AC 800CE9AC EECE4A35 */  ori        $t2, $t2, 0xceee
/* BF1B0 800CE9B0 7CF50B3C */  lui        $t3, 0xf57c
/* BF1B4 800CE9B4 AF0F6B35 */  ori        $t3, $t3, 0xfaf
/* BF1B8 800CE9B8 87470C3C */  lui        $t4, 0x4787
/* BF1BC 800CE9BC 2AC68C35 */  ori        $t4, $t4, 0xc62a
/* BF1C0 800CE9C0 30A80D3C */  lui        $t5, 0xa830
/* BF1C4 800CE9C4 1346AD35 */  ori        $t5, $t5, 0x4613
/* BF1C8 800CE9C8 46FD0E3C */  lui        $t6, 0xfd46
/* BF1CC 800CE9CC 0195CE35 */  ori        $t6, $t6, 0x9501
/* BF1D0 800CE9D0 80690F3C */  lui        $t7, 0x6980
/* BF1D4 800CE9D4 D898EF35 */  ori        $t7, $t7, 0x98d8
/* BF1D8 800CE9D8 448B113C */  lui        $s1, 0x8b44
/* BF1DC 800CE9DC AFF73136 */  ori        $s1, $s1, 0xf7af
/* BF1E0 800CE9E0 FFFF123C */  lui        $s2, 0xffff
/* BF1E4 800CE9E4 B15B5236 */  ori        $s2, $s2, 0x5bb1
/* BF1E8 800CE9E8 5C89133C */  lui        $s3, 0x895c
/* BF1EC 800CE9EC BED77336 */  ori        $s3, $s3, 0xd7be
/* BF1F0 800CE9F0 906B143C */  lui        $s4, 0x6b90
/* BF1F4 800CE9F4 22119436 */  ori        $s4, $s4, 0x1122
/* BF1F8 800CE9F8 98FD153C */  lui        $s5, 0xfd98
/* BF1FC 800CE9FC 9371B536 */  ori        $s5, $s5, 0x7193
/* BF200 800CEA00 79A6163C */  lui        $s6, 0xa679
/* BF204 800CEA04 8E43D636 */  ori        $s6, $s6, 0x438e
/* BF208 800CEA08 2801B1AF */  sw         $s1, 0x128($sp)
/* BF20C 800CEA0C B449113C */  lui        $s1, 0x49b4
/* BF210 800CEA10 21083136 */  ori        $s1, $s1, 0x821
/* BF214 800CEA14 5400B1AF */  sw         $s1, 0x54($sp)
/* BF218 800CEA18 1EF6113C */  lui        $s1, 0xf61e
/* BF21C 800CEA1C 62253136 */  ori        $s1, $s1, 0x2562
/* BF220 800CEA20 5C00B1AF */  sw         $s1, 0x5c($sp)
/* BF224 800CEA24 40C0113C */  lui        $s1, 0xc040
/* BF228 800CEA28 40B33136 */  ori        $s1, $s1, 0xb340
/* BF22C 800CEA2C 6400B1AF */  sw         $s1, 0x64($sp)
/* BF230 800CEA30 5E26113C */  lui        $s1, 0x265e
/* BF234 800CEA34 515A3136 */  ori        $s1, $s1, 0x5a51
/* BF238 800CEA38 6800B1AF */  sw         $s1, 0x68($sp)
/* BF23C 800CEA3C B6E9113C */  lui        $s1, 0xe9b6
/* BF240 800CEA40 AAC73136 */  ori        $s1, $s1, 0xc7aa
/* BF244 800CEA44 6C00B1AF */  sw         $s1, 0x6c($sp)
/* BF248 800CEA48 2FD6113C */  lui        $s1, 0xd62f
/* BF24C 800CEA4C 5D103136 */  ori        $s1, $s1, 0x105d
/* BF250 800CEA50 7000B1AF */  sw         $s1, 0x70($sp)
/* BF254 800CEA54 4402113C */  lui        $s1, 0x244
/* BF258 800CEA58 53143136 */  ori        $s1, $s1, 0x1453
/* BF25C 800CEA5C 7400B1AF */  sw         $s1, 0x74($sp)
/* BF260 800CEA60 A1D8113C */  lui        $s1, 0xd8a1
/* BF264 800CEA64 81E63136 */  ori        $s1, $s1, 0xe681
/* BF268 800CEA68 7800B1AF */  sw         $s1, 0x78($sp)
/* BF26C 800CEA6C D3E7113C */  lui        $s1, 0xe7d3
/* BF270 800CEA70 C8FB3136 */  ori        $s1, $s1, 0xfbc8
/* BF274 800CEA74 7C00B1AF */  sw         $s1, 0x7c($sp)
/* BF278 800CEA78 E121113C */  lui        $s1, 0x21e1
/* BF27C 800CEA7C E6CD3136 */  ori        $s1, $s1, 0xcde6
/* BF280 800CEA80 8000B1AF */  sw         $s1, 0x80($sp)
/* BF284 800CEA84 37C3113C */  lui        $s1, 0xc337
/* BF288 800CEA88 D6073136 */  ori        $s1, $s1, 0x7d6
/* BF28C 800CEA8C 8400B1AF */  sw         $s1, 0x84($sp)
/* BF290 800CEA90 D5F4113C */  lui        $s1, 0xf4d5
/* BF294 800CEA94 870D3136 */  ori        $s1, $s1, 0xd87
/* BF298 800CEA98 8800B1AF */  sw         $s1, 0x88($sp)
/* BF29C 800CEA9C 5A45113C */  lui        $s1, 0x455a
/* BF2A0 800CEAA0 ED143136 */  ori        $s1, $s1, 0x14ed
/* BF2A4 800CEAA4 8C00B1AF */  sw         $s1, 0x8c($sp)
/* BF2A8 800CEAA8 E3A9113C */  lui        $s1, 0xa9e3
/* BF2AC 800CEAAC 05E93136 */  ori        $s1, $s1, 0xe905
/* BF2B0 800CEAB0 9000B1AF */  sw         $s1, 0x90($sp)
/* BF2B4 800CEAB4 EFFC113C */  lui        $s1, 0xfcef
/* BF2B8 800CEAB8 F8A33136 */  ori        $s1, $s1, 0xa3f8
/* BF2BC 800CEABC 9400B1AF */  sw         $s1, 0x94($sp)
/* BF2C0 800CEAC0 6F67113C */  lui        $s1, 0x676f
/* BF2C4 800CEAC4 D9023136 */  ori        $s1, $s1, 0x2d9
/* BF2C8 800CEAC8 9800B1AF */  sw         $s1, 0x98($sp)
/* BF2CC 800CEACC 2A8D113C */  lui        $s1, 0x8d2a
/* BF2D0 800CEAD0 8A4C3136 */  ori        $s1, $s1, 0x4c8a
/* BF2D4 800CEAD4 9C00B1AF */  sw         $s1, 0x9c($sp)
/* BF2D8 800CEAD8 FAFF113C */  lui        $s1, 0xfffa
/* BF2DC 800CEADC 42393136 */  ori        $s1, $s1, 0x3942
/* BF2E0 800CEAE0 A000B1AF */  sw         $s1, 0xa0($sp)
/* BF2E4 800CEAE4 7187113C */  lui        $s1, 0x8771
/* BF2E8 800CEAE8 81F63136 */  ori        $s1, $s1, 0xf681
/* BF2EC 800CEAEC A400B1AF */  sw         $s1, 0xa4($sp)
/* BF2F0 800CEAF0 9D6D113C */  lui        $s1, 0x6d9d
/* BF2F4 800CEAF4 22613136 */  ori        $s1, $s1, 0x6122
/* BF2F8 800CEAF8 A800B1AF */  sw         $s1, 0xa8($sp)
/* BF2FC 800CEAFC E5FD113C */  lui        $s1, 0xfde5
/* BF300 800CEB00 0C383136 */  ori        $s1, $s1, 0x380c
/* BF304 800CEB04 AC00B1AF */  sw         $s1, 0xac($sp)
/* BF308 800CEB08 BEA4113C */  lui        $s1, 0xa4be
/* BF30C 800CEB0C 44EA3136 */  ori        $s1, $s1, 0xea44
/* BF310 800CEB10 B000B1AF */  sw         $s1, 0xb0($sp)
/* BF314 800CEB14 DE4B113C */  lui        $s1, 0x4bde
/* BF318 800CEB18 A9CF3136 */  ori        $s1, $s1, 0xcfa9
/* BF31C 800CEB1C B400B1AF */  sw         $s1, 0xb4($sp)
/* BF320 800CEB20 BBF6113C */  lui        $s1, 0xf6bb
/* BF324 800CEB24 604B3136 */  ori        $s1, $s1, 0x4b60
/* BF328 800CEB28 B800B1AF */  sw         $s1, 0xb8($sp)
/* BF32C 800CEB2C BFBE113C */  lui        $s1, 0xbebf
/* BF330 800CEB30 70BC3136 */  ori        $s1, $s1, 0xbc70
/* BF334 800CEB34 BC00B1AF */  sw         $s1, 0xbc($sp)
/* BF338 800CEB38 9B28113C */  lui        $s1, 0x289b
/* BF33C 800CEB3C C67E3136 */  ori        $s1, $s1, 0x7ec6
/* BF340 800CEB40 C000B1AF */  sw         $s1, 0xc0($sp)
/* BF344 800CEB44 A1EA113C */  lui        $s1, 0xeaa1
/* BF348 800CEB48 FA273136 */  ori        $s1, $s1, 0x27fa
/* BF34C 800CEB4C C400B1AF */  sw         $s1, 0xc4($sp)
/* BF350 800CEB50 EFD4113C */  lui        $s1, 0xd4ef
/* BF354 800CEB54 85303136 */  ori        $s1, $s1, 0x3085
/* BF358 800CEB58 C800B1AF */  sw         $s1, 0xc8($sp)
/* BF35C 800CEB5C 8804113C */  lui        $s1, 0x488
/* BF360 800CEB60 051D3136 */  ori        $s1, $s1, 0x1d05
/* BF364 800CEB64 CC00B1AF */  sw         $s1, 0xcc($sp)
/* BF368 800CEB68 D4D9113C */  lui        $s1, 0xd9d4
/* BF36C 800CEB6C 39D03136 */  ori        $s1, $s1, 0xd039
/* BF370 800CEB70 D000B1AF */  sw         $s1, 0xd0($sp)
/* BF374 800CEB74 DBE6113C */  lui        $s1, 0xe6db
/* BF378 800CEB78 E5993136 */  ori        $s1, $s1, 0x99e5
/* BF37C 800CEB7C D400B1AF */  sw         $s1, 0xd4($sp)
/* BF380 800CEB80 A21F113C */  lui        $s1, 0x1fa2
/* BF384 800CEB84 F87C3136 */  ori        $s1, $s1, 0x7cf8
/* BF388 800CEB88 D800B1AF */  sw         $s1, 0xd8($sp)
/* BF38C 800CEB8C ACC4113C */  lui        $s1, 0xc4ac
/* BF390 800CEB90 65563136 */  ori        $s1, $s1, 0x5665
/* BF394 800CEB94 DC00B1AF */  sw         $s1, 0xdc($sp)
/* BF398 800CEB98 29F4113C */  lui        $s1, 0xf429
/* BF39C 800CEB9C 44223136 */  ori        $s1, $s1, 0x2244
/* BF3A0 800CEBA0 E000B1AF */  sw         $s1, 0xe0($sp)
/* BF3A4 800CEBA4 2A43113C */  lui        $s1, 0x432a
/* BF3A8 800CEBA8 97FF3136 */  ori        $s1, $s1, 0xff97
/* BF3AC 800CEBAC E400B1AF */  sw         $s1, 0xe4($sp)
/* BF3B0 800CEBB0 94AB113C */  lui        $s1, 0xab94
/* BF3B4 800CEBB4 A7233136 */  ori        $s1, $s1, 0x23a7
/* BF3B8 800CEBB8 E800B1AF */  sw         $s1, 0xe8($sp)
/* BF3BC 800CEBBC 93FC113C */  lui        $s1, 0xfc93
/* BF3C0 800CEBC0 39A03136 */  ori        $s1, $s1, 0xa039
/* BF3C4 800CEBC4 EC00B1AF */  sw         $s1, 0xec($sp)
/* BF3C8 800CEBC8 5B65113C */  lui        $s1, 0x655b
/* BF3CC 800CEBCC C3593136 */  ori        $s1, $s1, 0x59c3
/* BF3D0 800CEBD0 F000B1AF */  sw         $s1, 0xf0($sp)
/* BF3D4 800CEBD4 0C8F113C */  lui        $s1, 0x8f0c
/* BF3D8 800CEBD8 92CC3136 */  ori        $s1, $s1, 0xcc92
/* BF3DC 800CEBDC F400B1AF */  sw         $s1, 0xf4($sp)
/* BF3E0 800CEBE0 EFFF113C */  lui        $s1, 0xffef
/* BF3E4 800CEBE4 7DF43136 */  ori        $s1, $s1, 0xf47d
/* BF3E8 800CEBE8 F800B1AF */  sw         $s1, 0xf8($sp)
/* BF3EC 800CEBEC 8485113C */  lui        $s1, 0x8584
/* BF3F0 800CEBF0 D15D3136 */  ori        $s1, $s1, 0x5dd1
/* BF3F4 800CEBF4 FC00B1AF */  sw         $s1, 0xfc($sp)
/* BF3F8 800CEBF8 A86F113C */  lui        $s1, 0x6fa8
/* BF3FC 800CEBFC 4F7E3136 */  ori        $s1, $s1, 0x7e4f
/* BF400 800CEC00 0001B1AF */  sw         $s1, 0x100($sp)
/* BF404 800CEC04 2CFE113C */  lui        $s1, 0xfe2c
/* BF408 800CEC08 E0E63136 */  ori        $s1, $s1, 0xe6e0
/* BF40C 800CEC0C 0401B1AF */  sw         $s1, 0x104($sp)
/* BF410 800CEC10 01A3113C */  lui        $s1, 0xa301
/* BF414 800CEC14 14433136 */  ori        $s1, $s1, 0x4314
/* BF418 800CEC18 0801B1AF */  sw         $s1, 0x108($sp)
/* BF41C 800CEC1C 084E113C */  lui        $s1, 0x4e08
/* BF420 800CEC20 A1113136 */  ori        $s1, $s1, 0x11a1
/* BF424 800CEC24 0C01B1AF */  sw         $s1, 0x10c($sp)
/* BF428 800CEC28 53F7113C */  lui        $s1, 0xf753
/* BF42C 800CEC2C 827E3136 */  ori        $s1, $s1, 0x7e82
/* BF430 800CEC30 1001B1AF */  sw         $s1, 0x110($sp)
/* BF434 800CEC34 3ABD113C */  lui        $s1, 0xbd3a
/* BF438 800CEC38 35F23136 */  ori        $s1, $s1, 0xf235
/* BF43C 800CEC3C 1401B1AF */  sw         $s1, 0x114($sp)
/* BF440 800CEC40 D72A113C */  lui        $s1, 0x2ad7
/* BF444 800CEC44 BBD23136 */  ori        $s1, $s1, 0xd2bb
/* BF448 800CEC48 1801B1AF */  sw         $s1, 0x118($sp)
/* BF44C 800CEC4C 86EB113C */  lui        $s1, 0xeb86
/* BF450 800CEC50 91D33136 */  ori        $s1, $s1, 0xd391
/* BF454 800CEC54 1000A427 */  addiu      $a0, $sp, 0x10
/* BF458 800CEC58 21280000 */  addu       $a1, $zero, $zero
/* BF45C 800CEC5C 40000624 */  addiu      $a2, $zero, 0x40
/* BF460 800CEC60 2138C703 */  addu       $a3, $fp, $a3
/* BF464 800CEC64 2001B88F */  lw         $t8, 0x120($sp)
/* BF468 800CEC68 2401B98F */  lw         $t9, 0x124($sp)
/* BF46C 800CEC6C 2140E802 */  addu       $t0, $s7, $t0
/* BF470 800CEC70 1C01B1AF */  sw         $s1, 0x11c($sp)
/* BF474 800CEC74 1000B18F */  lw         $s1, 0x10($sp)
/* BF478 800CEC78 24183803 */  and        $v1, $t9, $t8
/* BF47C 800CEC7C 27101900 */  nor        $v0, $zero, $t9
/* BF480 800CEC80 24105700 */  and        $v0, $v0, $s7
/* BF484 800CEC84 25186200 */  or         $v1, $v1, $v0
/* BF488 800CEC88 21187100 */  addu       $v1, $v1, $s1
/* BF48C 800CEC8C 21F0E300 */  addu       $fp, $a3, $v1
/* BF490 800CEC90 C0191E00 */  sll        $v1, $fp, 7
/* BF494 800CEC94 42161E00 */  srl        $v0, $fp, 0x19
/* BF498 800CEC98 25F06200 */  or         $fp, $v1, $v0
/* BF49C 800CEC9C 21F0D903 */  addu       $fp, $fp, $t9
/* BF4A0 800CECA0 2418D903 */  and        $v1, $fp, $t9
/* BF4A4 800CECA4 27101E00 */  nor        $v0, $zero, $fp
/* BF4A8 800CECA8 24105800 */  and        $v0, $v0, $t8
/* BF4AC 800CECAC 25186200 */  or         $v1, $v1, $v0
/* BF4B0 800CECB0 21480903 */  addu       $t1, $t8, $t1
/* BF4B4 800CECB4 21502A03 */  addu       $t2, $t9, $t2
/* BF4B8 800CECB8 1400B18F */  lw         $s1, 0x14($sp)
/* BF4BC 800CECBC 2158CB03 */  addu       $t3, $fp, $t3
/* BF4C0 800CECC0 21187100 */  addu       $v1, $v1, $s1
/* BF4C4 800CECC4 21B80301 */  addu       $s7, $t0, $v1
/* BF4C8 800CECC8 001B1700 */  sll        $v1, $s7, 0xc
/* BF4CC 800CECCC 02151700 */  srl        $v0, $s7, 0x14
/* BF4D0 800CECD0 25B86200 */  or         $s7, $v1, $v0
/* BF4D4 800CECD4 21B8FE02 */  addu       $s7, $s7, $fp
/* BF4D8 800CECD8 2418FE02 */  and        $v1, $s7, $fp
/* BF4DC 800CECDC 27101700 */  nor        $v0, $zero, $s7
/* BF4E0 800CECE0 24105900 */  and        $v0, $v0, $t9
/* BF4E4 800CECE4 25186200 */  or         $v1, $v1, $v0
/* BF4E8 800CECE8 1800B18F */  lw         $s1, 0x18($sp)
/* BF4EC 800CECEC 2160EC02 */  addu       $t4, $s7, $t4
/* BF4F0 800CECF0 21187100 */  addu       $v1, $v1, $s1
/* BF4F4 800CECF4 21C02301 */  addu       $t8, $t1, $v1
/* BF4F8 800CECF8 401C1800 */  sll        $v1, $t8, 0x11
/* BF4FC 800CECFC C2131800 */  srl        $v0, $t8, 0xf
/* BF500 800CED00 25C06200 */  or         $t8, $v1, $v0
/* BF504 800CED04 21C01703 */  addu       $t8, $t8, $s7
/* BF508 800CED08 24181703 */  and        $v1, $t8, $s7
/* BF50C 800CED0C 27101800 */  nor        $v0, $zero, $t8
/* BF510 800CED10 24105E00 */  and        $v0, $v0, $fp
/* BF514 800CED14 25186200 */  or         $v1, $v1, $v0
/* BF518 800CED18 21680D03 */  addu       $t5, $t8, $t5
/* BF51C 800CED1C 1C00B18F */  lw         $s1, 0x1c($sp)
/* BF520 800CED20 4800A98F */  lw         $t1, 0x48($sp)
/* BF524 800CED24 21187100 */  addu       $v1, $v1, $s1
/* BF528 800CED28 21C84301 */  addu       $t9, $t2, $v1
/* BF52C 800CED2C 801D1900 */  sll        $v1, $t9, 0x16
/* BF530 800CED30 82121900 */  srl        $v0, $t9, 0xa
/* BF534 800CED34 25C86200 */  or         $t9, $v1, $v0
/* BF538 800CED38 21C83803 */  addu       $t9, $t9, $t8
/* BF53C 800CED3C 24183803 */  and        $v1, $t9, $t8
/* BF540 800CED40 27101900 */  nor        $v0, $zero, $t9
/* BF544 800CED44 24105700 */  and        $v0, $v0, $s7
/* BF548 800CED48 25186200 */  or         $v1, $v1, $v0
/* BF54C 800CED4C 21702E03 */  addu       $t6, $t9, $t6
/* BF550 800CED50 2000B18F */  lw         $s1, 0x20($sp)
/* BF554 800CED54 4000AA8F */  lw         $t2, 0x40($sp)
/* BF558 800CED58 21187100 */  addu       $v1, $v1, $s1
/* BF55C 800CED5C 21F06301 */  addu       $fp, $t3, $v1
/* BF560 800CED60 C0191E00 */  sll        $v1, $fp, 7
/* BF564 800CED64 42161E00 */  srl        $v0, $fp, 0x19
/* BF568 800CED68 25F06200 */  or         $fp, $v1, $v0
/* BF56C 800CED6C 21F0D903 */  addu       $fp, $fp, $t9
/* BF570 800CED70 2418D903 */  and        $v1, $fp, $t9
/* BF574 800CED74 27101E00 */  nor        $v0, $zero, $fp
/* BF578 800CED78 24105800 */  and        $v0, $v0, $t8
/* BF57C 800CED7C 25186200 */  or         $v1, $v1, $v0
/* BF580 800CED80 2400B18F */  lw         $s1, 0x24($sp)
/* BF584 800CED84 2178CF03 */  addu       $t7, $fp, $t7
/* BF588 800CED88 21187100 */  addu       $v1, $v1, $s1
/* BF58C 800CED8C 21B88301 */  addu       $s7, $t4, $v1
/* BF590 800CED90 001B1700 */  sll        $v1, $s7, 0xc
/* BF594 800CED94 02151700 */  srl        $v0, $s7, 0x14
/* BF598 800CED98 25B86200 */  or         $s7, $v1, $v0
/* BF59C 800CED9C 21B8FE02 */  addu       $s7, $s7, $fp
/* BF5A0 800CEDA0 2418FE02 */  and        $v1, $s7, $fp
/* BF5A4 800CEDA4 27101700 */  nor        $v0, $zero, $s7
/* BF5A8 800CEDA8 24105900 */  and        $v0, $v0, $t9
/* BF5AC 800CEDAC 25186200 */  or         $v1, $v1, $v0
/* BF5B0 800CEDB0 2800B18F */  lw         $s1, 0x28($sp)
/* BF5B4 800CEDB4 2C00AC8F */  lw         $t4, 0x2c($sp)
/* BF5B8 800CEDB8 21187100 */  addu       $v1, $v1, $s1
/* BF5BC 800CEDBC 21C0A301 */  addu       $t8, $t5, $v1
/* BF5C0 800CEDC0 401C1800 */  sll        $v1, $t8, 0x11
/* BF5C4 800CEDC4 C2131800 */  srl        $v0, $t8, 0xf
/* BF5C8 800CEDC8 25C06200 */  or         $t8, $v1, $v0
/* BF5CC 800CEDCC 21C01703 */  addu       $t8, $t8, $s7
/* BF5D0 800CEDD0 24181703 */  and        $v1, $t8, $s7
/* BF5D4 800CEDD4 27101800 */  nor        $v0, $zero, $t8
/* BF5D8 800CEDD8 24105E00 */  and        $v0, $v0, $fp
/* BF5DC 800CEDDC 25186200 */  or         $v1, $v1, $v0
/* BF5E0 800CEDE0 21186C00 */  addu       $v1, $v1, $t4
/* BF5E4 800CEDE4 21C8C301 */  addu       $t9, $t6, $v1
/* BF5E8 800CEDE8 801D1900 */  sll        $v1, $t9, 0x16
/* BF5EC 800CEDEC 82121900 */  srl        $v0, $t9, 0xa
/* BF5F0 800CEDF0 25C86200 */  or         $t9, $v1, $v0
/* BF5F4 800CEDF4 21C83803 */  addu       $t9, $t9, $t8
/* BF5F8 800CEDF8 24183803 */  and        $v1, $t9, $t8
/* BF5FC 800CEDFC 27101900 */  nor        $v0, $zero, $t9
/* BF600 800CEE00 24105700 */  and        $v0, $v0, $s7
/* BF604 800CEE04 25186200 */  or         $v1, $v1, $v0
/* BF608 800CEE08 21901203 */  addu       $s2, $t8, $s2
/* BF60C 800CEE0C 21983303 */  addu       $s3, $t9, $s3
/* BF610 800CEE10 3000B18F */  lw         $s1, 0x30($sp)
/* BF614 800CEE14 3800AD8F */  lw         $t5, 0x38($sp)
/* BF618 800CEE18 4400AE8F */  lw         $t6, 0x44($sp)
/* BF61C 800CEE1C 21187100 */  addu       $v1, $v1, $s1
/* BF620 800CEE20 21F0E301 */  addu       $fp, $t7, $v1
/* BF624 800CEE24 C0191E00 */  sll        $v1, $fp, 7
/* BF628 800CEE28 42161E00 */  srl        $v0, $fp, 0x19
/* BF62C 800CEE2C 25F06200 */  or         $fp, $v1, $v0
/* BF630 800CEE30 21F0D903 */  addu       $fp, $fp, $t9
/* BF634 800CEE34 2418D903 */  and        $v1, $fp, $t9
/* BF638 800CEE38 27101E00 */  nor        $v0, $zero, $fp
/* BF63C 800CEE3C 24105800 */  and        $v0, $v0, $t8
/* BF640 800CEE40 25186200 */  or         $v1, $v1, $v0
/* BF644 800CEE44 2801B18F */  lw         $s1, 0x128($sp)
/* BF648 800CEE48 3C00AF8F */  lw         $t7, 0x3c($sp)
/* BF64C 800CEE4C 21B8F102 */  addu       $s7, $s7, $s1
/* BF650 800CEE50 3400B18F */  lw         $s1, 0x34($sp)
/* BF654 800CEE54 21A0D403 */  addu       $s4, $fp, $s4
/* BF658 800CEE58 2801B7AF */  sw         $s7, 0x128($sp)
/* BF65C 800CEE5C 21187100 */  addu       $v1, $v1, $s1
/* BF660 800CEE60 21B8E302 */  addu       $s7, $s7, $v1
/* BF664 800CEE64 001B1700 */  sll        $v1, $s7, 0xc
/* BF668 800CEE68 02151700 */  srl        $v0, $s7, 0x14
/* BF66C 800CEE6C 25B86200 */  or         $s7, $v1, $v0
/* BF670 800CEE70 21B8FE02 */  addu       $s7, $s7, $fp
/* BF674 800CEE74 2418FE02 */  and        $v1, $s7, $fp
/* BF678 800CEE78 27101700 */  nor        $v0, $zero, $s7
/* BF67C 800CEE7C 24105900 */  and        $v0, $v0, $t9
/* BF680 800CEE80 25186200 */  or         $v1, $v1, $v0
/* BF684 800CEE84 21186D00 */  addu       $v1, $v1, $t5
/* BF688 800CEE88 21C04302 */  addu       $t8, $s2, $v1
/* BF68C 800CEE8C 401C1800 */  sll        $v1, $t8, 0x11
/* BF690 800CEE90 C2131800 */  srl        $v0, $t8, 0xf
/* BF694 800CEE94 25C06200 */  or         $t8, $v1, $v0
/* BF698 800CEE98 21C01703 */  addu       $t8, $t8, $s7
/* BF69C 800CEE9C 24181703 */  and        $v1, $t8, $s7
/* BF6A0 800CEEA0 27101800 */  nor        $v0, $zero, $t8
/* BF6A4 800CEEA4 24105E00 */  and        $v0, $v0, $fp
/* BF6A8 800CEEA8 25186200 */  or         $v1, $v1, $v0
/* BF6AC 800CEEAC 21186F00 */  addu       $v1, $v1, $t7
/* BF6B0 800CEEB0 21C86302 */  addu       $t9, $s3, $v1
/* BF6B4 800CEEB4 801D1900 */  sll        $v1, $t9, 0x16
/* BF6B8 800CEEB8 82121900 */  srl        $v0, $t9, 0xa
/* BF6BC 800CEEBC 25C86200 */  or         $t9, $v1, $v0
/* BF6C0 800CEEC0 21C83803 */  addu       $t9, $t9, $t8
/* BF6C4 800CEEC4 24183803 */  and        $v1, $t9, $t8
/* BF6C8 800CEEC8 27101900 */  nor        $v0, $zero, $t9
/* BF6CC 800CEECC 24105700 */  and        $v0, $v0, $s7
/* BF6D0 800CEED0 25186200 */  or         $v1, $v1, $v0
/* BF6D4 800CEED4 21186A00 */  addu       $v1, $v1, $t2
/* BF6D8 800CEED8 21F08302 */  addu       $fp, $s4, $v1
/* BF6DC 800CEEDC C0191E00 */  sll        $v1, $fp, 7
/* BF6E0 800CEEE0 42161E00 */  srl        $v0, $fp, 0x19
/* BF6E4 800CEEE4 25F06200 */  or         $fp, $v1, $v0
/* BF6E8 800CEEE8 21F0D903 */  addu       $fp, $fp, $t9
/* BF6EC 800CEEEC 21A8F502 */  addu       $s5, $s7, $s5
/* BF6F0 800CEEF0 2418D903 */  and        $v1, $fp, $t9
/* BF6F4 800CEEF4 27101E00 */  nor        $v0, $zero, $fp
/* BF6F8 800CEEF8 24105800 */  and        $v0, $v0, $t8
/* BF6FC 800CEEFC 25186200 */  or         $v1, $v1, $v0
/* BF700 800CEF00 21186E00 */  addu       $v1, $v1, $t6
/* BF704 800CEF04 21B8A302 */  addu       $s7, $s5, $v1
/* BF708 800CEF08 001B1700 */  sll        $v1, $s7, 0xc
/* BF70C 800CEF0C 02151700 */  srl        $v0, $s7, 0x14
/* BF710 800CEF10 25B86200 */  or         $s7, $v1, $v0
/* BF714 800CEF14 21B8FE02 */  addu       $s7, $s7, $fp
/* BF718 800CEF18 21B01603 */  addu       $s6, $t8, $s6
/* BF71C 800CEF1C 2410FE02 */  and        $v0, $s7, $fp
/* BF720 800CEF20 27401700 */  nor        $t0, $zero, $s7
/* BF724 800CEF24 24181901 */  and        $v1, $t0, $t9
/* BF728 800CEF28 25104300 */  or         $v0, $v0, $v1
/* BF72C 800CEF2C 21104900 */  addu       $v0, $v0, $t1
/* BF730 800CEF30 21C0C202 */  addu       $t8, $s6, $v0
/* BF734 800CEF34 401C1800 */  sll        $v1, $t8, 0x11
/* BF738 800CEF38 C2131800 */  srl        $v0, $t8, 0xf
/* BF73C 800CEF3C 25C06200 */  or         $t8, $v1, $v0
/* BF740 800CEF40 21C01703 */  addu       $t8, $t8, $s7
/* BF744 800CEF44 24101703 */  and        $v0, $t8, $s7
/* BF748 800CEF48 27381800 */  nor        $a3, $zero, $t8
/* BF74C 800CEF4C 2418FE00 */  and        $v1, $a3, $fp
/* BF750 800CEF50 25104300 */  or         $v0, $v0, $v1
/* BF754 800CEF54 5400B18F */  lw         $s1, 0x54($sp)
/* BF758 800CEF58 24400803 */  and        $t0, $t8, $t0
/* BF75C 800CEF5C 21C83103 */  addu       $t9, $t9, $s1
/* BF760 800CEF60 5000B9AF */  sw         $t9, 0x50($sp)
/* BF764 800CEF64 4C00AB8F */  lw         $t3, 0x4c($sp)
/* BF768 800CEF68 5C00B18F */  lw         $s1, 0x5c($sp)
/* BF76C 800CEF6C 21104B00 */  addu       $v0, $v0, $t3
/* BF770 800CEF70 21C82203 */  addu       $t9, $t9, $v0
/* BF774 800CEF74 801D1900 */  sll        $v1, $t9, 0x16
/* BF778 800CEF78 82121900 */  srl        $v0, $t9, 0xa
/* BF77C 800CEF7C 25C86200 */  or         $t9, $v1, $v0
/* BF780 800CEF80 21C83803 */  addu       $t9, $t9, $t8
/* BF784 800CEF84 2188D103 */  addu       $s1, $fp, $s1
/* BF788 800CEF88 24103703 */  and        $v0, $t9, $s7
/* BF78C 800CEF8C 5800B1AF */  sw         $s1, 0x58($sp)
/* BF790 800CEF90 1400B18F */  lw         $s1, 0x14($sp)
/* BF794 800CEF94 25104800 */  or         $v0, $v0, $t0
/* BF798 800CEF98 21105100 */  addu       $v0, $v0, $s1
/* BF79C 800CEF9C 5800B18F */  lw         $s1, 0x58($sp)
/* BF7A0 800CEFA0 24382703 */  and        $a3, $t9, $a3
/* BF7A4 800CEFA4 21F02202 */  addu       $fp, $s1, $v0
/* BF7A8 800CEFA8 40191E00 */  sll        $v1, $fp, 5
/* BF7AC 800CEFAC C2161E00 */  srl        $v0, $fp, 0x1b
/* BF7B0 800CEFB0 25F06200 */  or         $fp, $v1, $v0
/* BF7B4 800CEFB4 21F0D903 */  addu       $fp, $fp, $t9
/* BF7B8 800CEFB8 6400B18F */  lw         $s1, 0x64($sp)
/* BF7BC 800CEFBC 2410D803 */  and        $v0, $fp, $t8
/* BF7C0 800CEFC0 21B8F102 */  addu       $s7, $s7, $s1
/* BF7C4 800CEFC4 2800B18F */  lw         $s1, 0x28($sp)
/* BF7C8 800CEFC8 25104700 */  or         $v0, $v0, $a3
/* BF7CC 800CEFCC 6000B7AF */  sw         $s7, 0x60($sp)
/* BF7D0 800CEFD0 21105100 */  addu       $v0, $v0, $s1
/* BF7D4 800CEFD4 21B8E202 */  addu       $s7, $s7, $v0
/* BF7D8 800CEFD8 401A1700 */  sll        $v1, $s7, 9
/* BF7DC 800CEFDC C2151700 */  srl        $v0, $s7, 0x17
/* BF7E0 800CEFE0 25B86200 */  or         $s7, $v1, $v0
/* BF7E4 800CEFE4 21B8FE02 */  addu       $s7, $s7, $fp
/* BF7E8 800CEFE8 2418F902 */  and        $v1, $s7, $t9
/* BF7EC 800CEFEC 27101900 */  nor        $v0, $zero, $t9
/* BF7F0 800CEFF0 2410C203 */  and        $v0, $fp, $v0
/* BF7F4 800CEFF4 25186200 */  or         $v1, $v1, $v0
/* BF7F8 800CEFF8 6800B18F */  lw         $s1, 0x68($sp)
/* BF7FC 800CEFFC 21186F00 */  addu       $v1, $v1, $t7
/* BF800 800CF000 21381103 */  addu       $a3, $t8, $s1
/* BF804 800CF004 21C0E300 */  addu       $t8, $a3, $v1
/* BF808 800CF008 801B1800 */  sll        $v1, $t8, 0xe
/* BF80C 800CF00C 82141800 */  srl        $v0, $t8, 0x12
/* BF810 800CF010 25C06200 */  or         $t8, $v1, $v0
/* BF814 800CF014 21C01703 */  addu       $t8, $t8, $s7
/* BF818 800CF018 24181E03 */  and        $v1, $t8, $fp
/* BF81C 800CF01C 27101E00 */  nor        $v0, $zero, $fp
/* BF820 800CF020 6C00B18F */  lw         $s1, 0x6c($sp)
/* BF824 800CF024 2410E202 */  and        $v0, $s7, $v0
/* BF828 800CF028 21383103 */  addu       $a3, $t9, $s1
/* BF82C 800CF02C 1000B18F */  lw         $s1, 0x10($sp)
/* BF830 800CF030 25186200 */  or         $v1, $v1, $v0
/* BF834 800CF034 21187100 */  addu       $v1, $v1, $s1
/* BF838 800CF038 21C8E300 */  addu       $t9, $a3, $v1
/* BF83C 800CF03C 001D1900 */  sll        $v1, $t9, 0x14
/* BF840 800CF040 02131900 */  srl        $v0, $t9, 0xc
/* BF844 800CF044 25C86200 */  or         $t9, $v1, $v0
/* BF848 800CF048 21C83803 */  addu       $t9, $t9, $t8
/* BF84C 800CF04C 24183703 */  and        $v1, $t9, $s7
/* BF850 800CF050 27101700 */  nor        $v0, $zero, $s7
/* BF854 800CF054 7000B18F */  lw         $s1, 0x70($sp)
/* BF858 800CF058 24100203 */  and        $v0, $t8, $v0
/* BF85C 800CF05C 2138D103 */  addu       $a3, $fp, $s1
/* BF860 800CF060 2400B18F */  lw         $s1, 0x24($sp)
/* BF864 800CF064 25186200 */  or         $v1, $v1, $v0
/* BF868 800CF068 21187100 */  addu       $v1, $v1, $s1
/* BF86C 800CF06C 21F0E300 */  addu       $fp, $a3, $v1
/* BF870 800CF070 40191E00 */  sll        $v1, $fp, 5
/* BF874 800CF074 C2161E00 */  srl        $v0, $fp, 0x1b
/* BF878 800CF078 25F06200 */  or         $fp, $v1, $v0
/* BF87C 800CF07C 21F0D903 */  addu       $fp, $fp, $t9
/* BF880 800CF080 2418D803 */  and        $v1, $fp, $t8
/* BF884 800CF084 27101800 */  nor        $v0, $zero, $t8
/* BF888 800CF088 24102203 */  and        $v0, $t9, $v0
/* BF88C 800CF08C 25186200 */  or         $v1, $v1, $v0
/* BF890 800CF090 7400B18F */  lw         $s1, 0x74($sp)
/* BF894 800CF094 21186D00 */  addu       $v1, $v1, $t5
/* BF898 800CF098 2140F102 */  addu       $t0, $s7, $s1
/* BF89C 800CF09C 21B80301 */  addu       $s7, $t0, $v1
/* BF8A0 800CF0A0 401A1700 */  sll        $v1, $s7, 9
/* BF8A4 800CF0A4 C2151700 */  srl        $v0, $s7, 0x17
/* BF8A8 800CF0A8 25B86200 */  or         $s7, $v1, $v0
/* BF8AC 800CF0AC 21B8FE02 */  addu       $s7, $s7, $fp
/* BF8B0 800CF0B0 2418F902 */  and        $v1, $s7, $t9
/* BF8B4 800CF0B4 27101900 */  nor        $v0, $zero, $t9
/* BF8B8 800CF0B8 2410C203 */  and        $v0, $fp, $v0
/* BF8BC 800CF0BC 25186200 */  or         $v1, $v1, $v0
/* BF8C0 800CF0C0 7800B18F */  lw         $s1, 0x78($sp)
/* BF8C4 800CF0C4 21186B00 */  addu       $v1, $v1, $t3
/* BF8C8 800CF0C8 21381103 */  addu       $a3, $t8, $s1
/* BF8CC 800CF0CC 21C0E300 */  addu       $t8, $a3, $v1
/* BF8D0 800CF0D0 801B1800 */  sll        $v1, $t8, 0xe
/* BF8D4 800CF0D4 82141800 */  srl        $v0, $t8, 0x12
/* BF8D8 800CF0D8 25C06200 */  or         $t8, $v1, $v0
/* BF8DC 800CF0DC 21C01703 */  addu       $t8, $t8, $s7
/* BF8E0 800CF0E0 24181E03 */  and        $v1, $t8, $fp
/* BF8E4 800CF0E4 27101E00 */  nor        $v0, $zero, $fp
/* BF8E8 800CF0E8 7C00B18F */  lw         $s1, 0x7c($sp)
/* BF8EC 800CF0EC 2410E202 */  and        $v0, $s7, $v0
/* BF8F0 800CF0F0 21383103 */  addu       $a3, $t9, $s1
/* BF8F4 800CF0F4 2000B18F */  lw         $s1, 0x20($sp)
/* BF8F8 800CF0F8 25186200 */  or         $v1, $v1, $v0
/* BF8FC 800CF0FC 21187100 */  addu       $v1, $v1, $s1
/* BF900 800CF100 21C8E300 */  addu       $t9, $a3, $v1
/* BF904 800CF104 001D1900 */  sll        $v1, $t9, 0x14
/* BF908 800CF108 02131900 */  srl        $v0, $t9, 0xc
/* BF90C 800CF10C 25C86200 */  or         $t9, $v1, $v0
/* BF910 800CF110 21C83803 */  addu       $t9, $t9, $t8
/* BF914 800CF114 24183703 */  and        $v1, $t9, $s7
/* BF918 800CF118 27101700 */  nor        $v0, $zero, $s7
/* BF91C 800CF11C 8000B18F */  lw         $s1, 0x80($sp)
/* BF920 800CF120 24100203 */  and        $v0, $t8, $v0
/* BF924 800CF124 2138D103 */  addu       $a3, $fp, $s1
/* BF928 800CF128 3400B18F */  lw         $s1, 0x34($sp)
/* BF92C 800CF12C 25186200 */  or         $v1, $v1, $v0
/* BF930 800CF130 21187100 */  addu       $v1, $v1, $s1
/* BF934 800CF134 21F0E300 */  addu       $fp, $a3, $v1
/* BF938 800CF138 40191E00 */  sll        $v1, $fp, 5
/* BF93C 800CF13C C2161E00 */  srl        $v0, $fp, 0x1b
/* BF940 800CF140 25F06200 */  or         $fp, $v1, $v0
/* BF944 800CF144 21F0D903 */  addu       $fp, $fp, $t9
/* BF948 800CF148 2418D803 */  and        $v1, $fp, $t8
/* BF94C 800CF14C 27101800 */  nor        $v0, $zero, $t8
/* BF950 800CF150 24102203 */  and        $v0, $t9, $v0
/* BF954 800CF154 25186200 */  or         $v1, $v1, $v0
/* BF958 800CF158 8400B18F */  lw         $s1, 0x84($sp)
/* BF95C 800CF15C 21186900 */  addu       $v1, $v1, $t1
/* BF960 800CF160 2140F102 */  addu       $t0, $s7, $s1
/* BF964 800CF164 21B80301 */  addu       $s7, $t0, $v1
/* BF968 800CF168 401A1700 */  sll        $v1, $s7, 9
/* BF96C 800CF16C C2151700 */  srl        $v0, $s7, 0x17
/* BF970 800CF170 25B86200 */  or         $s7, $v1, $v0
/* BF974 800CF174 21B8FE02 */  addu       $s7, $s7, $fp
/* BF978 800CF178 2418F902 */  and        $v1, $s7, $t9
/* BF97C 800CF17C 27101900 */  nor        $v0, $zero, $t9
/* BF980 800CF180 8800B18F */  lw         $s1, 0x88($sp)
/* BF984 800CF184 2410C203 */  and        $v0, $fp, $v0
/* BF988 800CF188 21381103 */  addu       $a3, $t8, $s1
/* BF98C 800CF18C 1C00B18F */  lw         $s1, 0x1c($sp)
/* BF990 800CF190 25186200 */  or         $v1, $v1, $v0
/* BF994 800CF194 21187100 */  addu       $v1, $v1, $s1
/* BF998 800CF198 21C0E300 */  addu       $t8, $a3, $v1
/* BF99C 800CF19C 801B1800 */  sll        $v1, $t8, 0xe
/* BF9A0 800CF1A0 82141800 */  srl        $v0, $t8, 0x12
/* BF9A4 800CF1A4 25C06200 */  or         $t8, $v1, $v0
/* BF9A8 800CF1A8 21C01703 */  addu       $t8, $t8, $s7
/* BF9AC 800CF1AC 24181E03 */  and        $v1, $t8, $fp
/* BF9B0 800CF1B0 27101E00 */  nor        $v0, $zero, $fp
/* BF9B4 800CF1B4 8C00B18F */  lw         $s1, 0x8c($sp)
/* BF9B8 800CF1B8 2410E202 */  and        $v0, $s7, $v0
/* BF9BC 800CF1BC 21383103 */  addu       $a3, $t9, $s1
/* BF9C0 800CF1C0 3000B18F */  lw         $s1, 0x30($sp)
/* BF9C4 800CF1C4 25186200 */  or         $v1, $v1, $v0
/* BF9C8 800CF1C8 21187100 */  addu       $v1, $v1, $s1
/* BF9CC 800CF1CC 21C8E300 */  addu       $t9, $a3, $v1
/* BF9D0 800CF1D0 001D1900 */  sll        $v1, $t9, 0x14
/* BF9D4 800CF1D4 02131900 */  srl        $v0, $t9, 0xc
/* BF9D8 800CF1D8 25C86200 */  or         $t9, $v1, $v0
/* BF9DC 800CF1DC 21C83803 */  addu       $t9, $t9, $t8
/* BF9E0 800CF1E0 24183703 */  and        $v1, $t9, $s7
/* BF9E4 800CF1E4 27101700 */  nor        $v0, $zero, $s7
/* BF9E8 800CF1E8 24100203 */  and        $v0, $t8, $v0
/* BF9EC 800CF1EC 25186200 */  or         $v1, $v1, $v0
/* BF9F0 800CF1F0 9000B18F */  lw         $s1, 0x90($sp)
/* BF9F4 800CF1F4 21186E00 */  addu       $v1, $v1, $t6
/* BF9F8 800CF1F8 2138D103 */  addu       $a3, $fp, $s1
/* BF9FC 800CF1FC 21F0E300 */  addu       $fp, $a3, $v1
/* BFA00 800CF200 40191E00 */  sll        $v1, $fp, 5
/* BFA04 800CF204 C2161E00 */  srl        $v0, $fp, 0x1b
/* BFA08 800CF208 25F06200 */  or         $fp, $v1, $v0
/* BFA0C 800CF20C 21F0D903 */  addu       $fp, $fp, $t9
/* BFA10 800CF210 2418D803 */  and        $v1, $fp, $t8
/* BFA14 800CF214 27101800 */  nor        $v0, $zero, $t8
/* BFA18 800CF218 9400B18F */  lw         $s1, 0x94($sp)
/* BFA1C 800CF21C 24102203 */  and        $v0, $t9, $v0
/* BFA20 800CF220 2140F102 */  addu       $t0, $s7, $s1
/* BFA24 800CF224 1800B18F */  lw         $s1, 0x18($sp)
/* BFA28 800CF228 25186200 */  or         $v1, $v1, $v0
/* BFA2C 800CF22C 21187100 */  addu       $v1, $v1, $s1
/* BFA30 800CF230 21B80301 */  addu       $s7, $t0, $v1
/* BFA34 800CF234 401A1700 */  sll        $v1, $s7, 9
/* BFA38 800CF238 C2151700 */  srl        $v0, $s7, 0x17
/* BFA3C 800CF23C 25B86200 */  or         $s7, $v1, $v0
/* BFA40 800CF240 21B8FE02 */  addu       $s7, $s7, $fp
/* BFA44 800CF244 2418F902 */  and        $v1, $s7, $t9
/* BFA48 800CF248 27101900 */  nor        $v0, $zero, $t9
/* BFA4C 800CF24C 2410C203 */  and        $v0, $fp, $v0
/* BFA50 800CF250 25186200 */  or         $v1, $v1, $v0
/* BFA54 800CF254 9800B18F */  lw         $s1, 0x98($sp)
/* BFA58 800CF258 21186C00 */  addu       $v1, $v1, $t4
/* BFA5C 800CF25C 21381103 */  addu       $a3, $t8, $s1
/* BFA60 800CF260 21C0E300 */  addu       $t8, $a3, $v1
/* BFA64 800CF264 801B1800 */  sll        $v1, $t8, 0xe
/* BFA68 800CF268 82141800 */  srl        $v0, $t8, 0x12
/* BFA6C 800CF26C 25C06200 */  or         $t8, $v1, $v0
/* BFA70 800CF270 21C01703 */  addu       $t8, $t8, $s7
/* BFA74 800CF274 24181E03 */  and        $v1, $t8, $fp
/* BFA78 800CF278 27101E00 */  nor        $v0, $zero, $fp
/* BFA7C 800CF27C 2410E202 */  and        $v0, $s7, $v0
/* BFA80 800CF280 25186200 */  or         $v1, $v1, $v0
/* BFA84 800CF284 9C00B18F */  lw         $s1, 0x9c($sp)
/* BFA88 800CF288 21186A00 */  addu       $v1, $v1, $t2
/* BFA8C 800CF28C 21383103 */  addu       $a3, $t9, $s1
/* BFA90 800CF290 21C8E300 */  addu       $t9, $a3, $v1
/* BFA94 800CF294 001D1900 */  sll        $v1, $t9, 0x14
/* BFA98 800CF298 02131900 */  srl        $v0, $t9, 0xc
/* BFA9C 800CF29C 25C86200 */  or         $t9, $v1, $v0
/* BFAA0 800CF2A0 21C83803 */  addu       $t9, $t9, $t8
/* BFAA4 800CF2A4 A000B18F */  lw         $s1, 0xa0($sp)
/* BFAA8 800CF2A8 26103803 */  xor        $v0, $t9, $t8
/* BFAAC 800CF2AC 2118D103 */  addu       $v1, $fp, $s1
/* BFAB0 800CF2B0 2400B18F */  lw         $s1, 0x24($sp)
/* BFAB4 800CF2B4 26105700 */  xor        $v0, $v0, $s7
/* BFAB8 800CF2B8 21105100 */  addu       $v0, $v0, $s1
/* BFABC 800CF2BC 21F06200 */  addu       $fp, $v1, $v0
/* BFAC0 800CF2C0 00191E00 */  sll        $v1, $fp, 4
/* BFAC4 800CF2C4 02171E00 */  srl        $v0, $fp, 0x1c
/* BFAC8 800CF2C8 25F06200 */  or         $fp, $v1, $v0
/* BFACC 800CF2CC 21F0D903 */  addu       $fp, $fp, $t9
/* BFAD0 800CF2D0 A400B18F */  lw         $s1, 0xa4($sp)
/* BFAD4 800CF2D4 2610D903 */  xor        $v0, $fp, $t9
/* BFAD8 800CF2D8 2118F102 */  addu       $v1, $s7, $s1
/* BFADC 800CF2DC 3000B18F */  lw         $s1, 0x30($sp)
/* BFAE0 800CF2E0 26105800 */  xor        $v0, $v0, $t8
/* BFAE4 800CF2E4 21105100 */  addu       $v0, $v0, $s1
/* BFAE8 800CF2E8 21B86200 */  addu       $s7, $v1, $v0
/* BFAEC 800CF2EC C01A1700 */  sll        $v1, $s7, 0xb
/* BFAF0 800CF2F0 42151700 */  srl        $v0, $s7, 0x15
/* BFAF4 800CF2F4 25B86200 */  or         $s7, $v1, $v0
/* BFAF8 800CF2F8 21B8FE02 */  addu       $s7, $s7, $fp
/* BFAFC 800CF2FC 2610FE02 */  xor        $v0, $s7, $fp
/* BFB00 800CF300 26105900 */  xor        $v0, $v0, $t9
/* BFB04 800CF304 A800B18F */  lw         $s1, 0xa8($sp)
/* BFB08 800CF308 21104F00 */  addu       $v0, $v0, $t7
/* BFB0C 800CF30C 21181103 */  addu       $v1, $t8, $s1
/* BFB10 800CF310 21C06200 */  addu       $t8, $v1, $v0
/* BFB14 800CF314 001C1800 */  sll        $v1, $t8, 0x10
/* BFB18 800CF318 02141800 */  srl        $v0, $t8, 0x10
/* BFB1C 800CF31C 25C06200 */  or         $t8, $v1, $v0
/* BFB20 800CF320 21C01703 */  addu       $t8, $t8, $s7
/* BFB24 800CF324 26101703 */  xor        $v0, $t8, $s7
/* BFB28 800CF328 26105E00 */  xor        $v0, $v0, $fp
/* BFB2C 800CF32C AC00B18F */  lw         $s1, 0xac($sp)
/* BFB30 800CF330 21104900 */  addu       $v0, $v0, $t1
/* BFB34 800CF334 21183103 */  addu       $v1, $t9, $s1
/* BFB38 800CF338 21C86200 */  addu       $t9, $v1, $v0
/* BFB3C 800CF33C C01D1900 */  sll        $v1, $t9, 0x17
/* BFB40 800CF340 42121900 */  srl        $v0, $t9, 9
/* BFB44 800CF344 25C86200 */  or         $t9, $v1, $v0
/* BFB48 800CF348 21C83803 */  addu       $t9, $t9, $t8
/* BFB4C 800CF34C B000B18F */  lw         $s1, 0xb0($sp)
/* BFB50 800CF350 26103803 */  xor        $v0, $t9, $t8
/* BFB54 800CF354 2118D103 */  addu       $v1, $fp, $s1
/* BFB58 800CF358 1400B18F */  lw         $s1, 0x14($sp)
/* BFB5C 800CF35C 26105700 */  xor        $v0, $v0, $s7
/* BFB60 800CF360 21105100 */  addu       $v0, $v0, $s1
/* BFB64 800CF364 21F06200 */  addu       $fp, $v1, $v0
/* BFB68 800CF368 00191E00 */  sll        $v1, $fp, 4
/* BFB6C 800CF36C 02171E00 */  srl        $v0, $fp, 0x1c
/* BFB70 800CF370 25F06200 */  or         $fp, $v1, $v0
/* BFB74 800CF374 21F0D903 */  addu       $fp, $fp, $t9
/* BFB78 800CF378 B400B18F */  lw         $s1, 0xb4($sp)
/* BFB7C 800CF37C 2610D903 */  xor        $v0, $fp, $t9
/* BFB80 800CF380 2118F102 */  addu       $v1, $s7, $s1
/* BFB84 800CF384 2000B18F */  lw         $s1, 0x20($sp)
/* BFB88 800CF388 26105800 */  xor        $v0, $v0, $t8
/* BFB8C 800CF38C 21105100 */  addu       $v0, $v0, $s1
/* BFB90 800CF390 21B86200 */  addu       $s7, $v1, $v0
/* BFB94 800CF394 C01A1700 */  sll        $v1, $s7, 0xb
/* BFB98 800CF398 42151700 */  srl        $v0, $s7, 0x15
/* BFB9C 800CF39C 25B86200 */  or         $s7, $v1, $v0
/* BFBA0 800CF3A0 21B8FE02 */  addu       $s7, $s7, $fp
/* BFBA4 800CF3A4 2610FE02 */  xor        $v0, $s7, $fp
/* BFBA8 800CF3A8 26105900 */  xor        $v0, $v0, $t9
/* BFBAC 800CF3AC B800B18F */  lw         $s1, 0xb8($sp)
/* BFBB0 800CF3B0 21104C00 */  addu       $v0, $v0, $t4
/* BFBB4 800CF3B4 21181103 */  addu       $v1, $t8, $s1
/* BFBB8 800CF3B8 21C06200 */  addu       $t8, $v1, $v0
/* BFBBC 800CF3BC 001C1800 */  sll        $v1, $t8, 0x10
/* BFBC0 800CF3C0 02141800 */  srl        $v0, $t8, 0x10
/* BFBC4 800CF3C4 25C06200 */  or         $t8, $v1, $v0
/* BFBC8 800CF3C8 21C01703 */  addu       $t8, $t8, $s7
/* BFBCC 800CF3CC 26101703 */  xor        $v0, $t8, $s7
/* BFBD0 800CF3D0 26105E00 */  xor        $v0, $v0, $fp
/* BFBD4 800CF3D4 BC00B18F */  lw         $s1, 0xbc($sp)
/* BFBD8 800CF3D8 21104D00 */  addu       $v0, $v0, $t5
/* BFBDC 800CF3DC 21183103 */  addu       $v1, $t9, $s1
/* BFBE0 800CF3E0 21C86200 */  addu       $t9, $v1, $v0
/* BFBE4 800CF3E4 C01D1900 */  sll        $v1, $t9, 0x17
/* BFBE8 800CF3E8 42121900 */  srl        $v0, $t9, 9
/* BFBEC 800CF3EC 25C86200 */  or         $t9, $v1, $v0
/* BFBF0 800CF3F0 21C83803 */  addu       $t9, $t9, $t8
/* BFBF4 800CF3F4 26103803 */  xor        $v0, $t9, $t8
/* BFBF8 800CF3F8 26105700 */  xor        $v0, $v0, $s7
/* BFBFC 800CF3FC C000B18F */  lw         $s1, 0xc0($sp)
/* BFC00 800CF400 21104E00 */  addu       $v0, $v0, $t6
/* BFC04 800CF404 2118D103 */  addu       $v1, $fp, $s1
/* BFC08 800CF408 21F06200 */  addu       $fp, $v1, $v0
/* BFC0C 800CF40C 00191E00 */  sll        $v1, $fp, 4
/* BFC10 800CF410 02171E00 */  srl        $v0, $fp, 0x1c
/* BFC14 800CF414 25F06200 */  or         $fp, $v1, $v0
/* BFC18 800CF418 21F0D903 */  addu       $fp, $fp, $t9
/* BFC1C 800CF41C C400B18F */  lw         $s1, 0xc4($sp)
/* BFC20 800CF420 2610D903 */  xor        $v0, $fp, $t9
/* BFC24 800CF424 2118F102 */  addu       $v1, $s7, $s1
/* BFC28 800CF428 1000B18F */  lw         $s1, 0x10($sp)
/* BFC2C 800CF42C 26105800 */  xor        $v0, $v0, $t8
/* BFC30 800CF430 21105100 */  addu       $v0, $v0, $s1
/* BFC34 800CF434 21B86200 */  addu       $s7, $v1, $v0
/* BFC38 800CF438 C01A1700 */  sll        $v1, $s7, 0xb
/* BFC3C 800CF43C 42151700 */  srl        $v0, $s7, 0x15
/* BFC40 800CF440 25B86200 */  or         $s7, $v1, $v0
/* BFC44 800CF444 21B8FE02 */  addu       $s7, $s7, $fp
/* BFC48 800CF448 C800B18F */  lw         $s1, 0xc8($sp)
/* BFC4C 800CF44C 2610FE02 */  xor        $v0, $s7, $fp
/* BFC50 800CF450 21181103 */  addu       $v1, $t8, $s1
/* BFC54 800CF454 1C00B18F */  lw         $s1, 0x1c($sp)
/* BFC58 800CF458 26105900 */  xor        $v0, $v0, $t9
/* BFC5C 800CF45C 21105100 */  addu       $v0, $v0, $s1
/* BFC60 800CF460 21C06200 */  addu       $t8, $v1, $v0
/* BFC64 800CF464 001C1800 */  sll        $v1, $t8, 0x10
/* BFC68 800CF468 02141800 */  srl        $v0, $t8, 0x10
/* BFC6C 800CF46C 25C06200 */  or         $t8, $v1, $v0
/* BFC70 800CF470 21C01703 */  addu       $t8, $t8, $s7
/* BFC74 800CF474 CC00B18F */  lw         $s1, 0xcc($sp)
/* BFC78 800CF478 26101703 */  xor        $v0, $t8, $s7
/* BFC7C 800CF47C 21183103 */  addu       $v1, $t9, $s1
/* BFC80 800CF480 2800B18F */  lw         $s1, 0x28($sp)
/* BFC84 800CF484 26105E00 */  xor        $v0, $v0, $fp
/* BFC88 800CF488 21105100 */  addu       $v0, $v0, $s1
/* BFC8C 800CF48C 21C86200 */  addu       $t9, $v1, $v0
/* BFC90 800CF490 C01D1900 */  sll        $v1, $t9, 0x17
/* BFC94 800CF494 42121900 */  srl        $v0, $t9, 9
/* BFC98 800CF498 25C86200 */  or         $t9, $v1, $v0
/* BFC9C 800CF49C 21C83803 */  addu       $t9, $t9, $t8
/* BFCA0 800CF4A0 D000B18F */  lw         $s1, 0xd0($sp)
/* BFCA4 800CF4A4 26103803 */  xor        $v0, $t9, $t8
/* BFCA8 800CF4A8 2118D103 */  addu       $v1, $fp, $s1
/* BFCAC 800CF4AC 3400B18F */  lw         $s1, 0x34($sp)
/* BFCB0 800CF4B0 26105700 */  xor        $v0, $v0, $s7
/* BFCB4 800CF4B4 21105100 */  addu       $v0, $v0, $s1
/* BFCB8 800CF4B8 21F06200 */  addu       $fp, $v1, $v0
/* BFCBC 800CF4BC 00191E00 */  sll        $v1, $fp, 4
/* BFCC0 800CF4C0 02171E00 */  srl        $v0, $fp, 0x1c
/* BFCC4 800CF4C4 25F06200 */  or         $fp, $v1, $v0
/* BFCC8 800CF4C8 21F0D903 */  addu       $fp, $fp, $t9
/* BFCCC 800CF4CC 2610D903 */  xor        $v0, $fp, $t9
/* BFCD0 800CF4D0 26105800 */  xor        $v0, $v0, $t8
/* BFCD4 800CF4D4 D400B18F */  lw         $s1, 0xd4($sp)
/* BFCD8 800CF4D8 21104A00 */  addu       $v0, $v0, $t2
/* BFCDC 800CF4DC 2118F102 */  addu       $v1, $s7, $s1
/* BFCE0 800CF4E0 21B86200 */  addu       $s7, $v1, $v0
/* BFCE4 800CF4E4 C01A1700 */  sll        $v1, $s7, 0xb
/* BFCE8 800CF4E8 42151700 */  srl        $v0, $s7, 0x15
/* BFCEC 800CF4EC 25B86200 */  or         $s7, $v1, $v0
/* BFCF0 800CF4F0 21B8FE02 */  addu       $s7, $s7, $fp
/* BFCF4 800CF4F4 2610FE02 */  xor        $v0, $s7, $fp
/* BFCF8 800CF4F8 26105900 */  xor        $v0, $v0, $t9
/* BFCFC 800CF4FC D800B18F */  lw         $s1, 0xd8($sp)
/* BFD00 800CF500 21104B00 */  addu       $v0, $v0, $t3
/* BFD04 800CF504 21181103 */  addu       $v1, $t8, $s1
/* BFD08 800CF508 21C06200 */  addu       $t8, $v1, $v0
/* BFD0C 800CF50C 001C1800 */  sll        $v1, $t8, 0x10
/* BFD10 800CF510 02141800 */  srl        $v0, $t8, 0x10
/* BFD14 800CF514 25C06200 */  or         $t8, $v1, $v0
/* BFD18 800CF518 21C01703 */  addu       $t8, $t8, $s7
/* BFD1C 800CF51C DC00B18F */  lw         $s1, 0xdc($sp)
/* BFD20 800CF520 26101703 */  xor        $v0, $t8, $s7
/* BFD24 800CF524 21183103 */  addu       $v1, $t9, $s1
/* BFD28 800CF528 1800B18F */  lw         $s1, 0x18($sp)
/* BFD2C 800CF52C 26105E00 */  xor        $v0, $v0, $fp
/* BFD30 800CF530 21105100 */  addu       $v0, $v0, $s1
/* BFD34 800CF534 21C86200 */  addu       $t9, $v1, $v0
/* BFD38 800CF538 C01D1900 */  sll        $v1, $t9, 0x17
/* BFD3C 800CF53C 42121900 */  srl        $v0, $t9, 9
/* BFD40 800CF540 25C86200 */  or         $t9, $v1, $v0
/* BFD44 800CF544 21C83803 */  addu       $t9, $t9, $t8
/* BFD48 800CF548 27101700 */  nor        $v0, $zero, $s7
/* BFD4C 800CF54C E000B18F */  lw         $s1, 0xe0($sp)
/* BFD50 800CF550 25102203 */  or         $v0, $t9, $v0
/* BFD54 800CF554 2118D103 */  addu       $v1, $fp, $s1
/* BFD58 800CF558 1000B18F */  lw         $s1, 0x10($sp)
/* BFD5C 800CF55C 26100203 */  xor        $v0, $t8, $v0
/* BFD60 800CF560 21105100 */  addu       $v0, $v0, $s1
/* BFD64 800CF564 21F06200 */  addu       $fp, $v1, $v0
/* BFD68 800CF568 80191E00 */  sll        $v1, $fp, 6
/* BFD6C 800CF56C 82161E00 */  srl        $v0, $fp, 0x1a
/* BFD70 800CF570 25F06200 */  or         $fp, $v1, $v0
/* BFD74 800CF574 21F0D903 */  addu       $fp, $fp, $t9
/* BFD78 800CF578 27101800 */  nor        $v0, $zero, $t8
/* BFD7C 800CF57C 2510C203 */  or         $v0, $fp, $v0
/* BFD80 800CF580 26102203 */  xor        $v0, $t9, $v0
/* BFD84 800CF584 E400B18F */  lw         $s1, 0xe4($sp)
/* BFD88 800CF588 21104C00 */  addu       $v0, $v0, $t4
/* BFD8C 800CF58C 2118F102 */  addu       $v1, $s7, $s1
/* BFD90 800CF590 21B86200 */  addu       $s7, $v1, $v0
/* BFD94 800CF594 801A1700 */  sll        $v1, $s7, 0xa
/* BFD98 800CF598 82151700 */  srl        $v0, $s7, 0x16
/* BFD9C 800CF59C 25B86200 */  or         $s7, $v1, $v0
/* BFDA0 800CF5A0 21B8FE02 */  addu       $s7, $s7, $fp
/* BFDA4 800CF5A4 27101900 */  nor        $v0, $zero, $t9
/* BFDA8 800CF5A8 2510E202 */  or         $v0, $s7, $v0
/* BFDAC 800CF5AC 2610C203 */  xor        $v0, $fp, $v0
/* BFDB0 800CF5B0 E800B18F */  lw         $s1, 0xe8($sp)
/* BFDB4 800CF5B4 21104900 */  addu       $v0, $v0, $t1
/* BFDB8 800CF5B8 21181103 */  addu       $v1, $t8, $s1
/* BFDBC 800CF5BC 21C06200 */  addu       $t8, $v1, $v0
/* BFDC0 800CF5C0 C01B1800 */  sll        $v1, $t8, 0xf
/* BFDC4 800CF5C4 42141800 */  srl        $v0, $t8, 0x11
/* BFDC8 800CF5C8 25C06200 */  or         $t8, $v1, $v0
/* BFDCC 800CF5CC 21C01703 */  addu       $t8, $t8, $s7
/* BFDD0 800CF5D0 27101E00 */  nor        $v0, $zero, $fp
/* BFDD4 800CF5D4 EC00B18F */  lw         $s1, 0xec($sp)
/* BFDD8 800CF5D8 25100203 */  or         $v0, $t8, $v0
/* BFDDC 800CF5DC 21183103 */  addu       $v1, $t9, $s1
/* BFDE0 800CF5E0 2400B18F */  lw         $s1, 0x24($sp)
/* BFDE4 800CF5E4 2610E202 */  xor        $v0, $s7, $v0
/* BFDE8 800CF5E8 21105100 */  addu       $v0, $v0, $s1
/* BFDEC 800CF5EC 21C86200 */  addu       $t9, $v1, $v0
/* BFDF0 800CF5F0 401D1900 */  sll        $v1, $t9, 0x15
/* BFDF4 800CF5F4 C2121900 */  srl        $v0, $t9, 0xb
/* BFDF8 800CF5F8 25C86200 */  or         $t9, $v1, $v0
/* BFDFC 800CF5FC 21C83803 */  addu       $t9, $t9, $t8
/* BFE00 800CF600 27101700 */  nor        $v0, $zero, $s7
/* BFE04 800CF604 25102203 */  or         $v0, $t9, $v0
/* BFE08 800CF608 26100203 */  xor        $v0, $t8, $v0
/* BFE0C 800CF60C F000B18F */  lw         $s1, 0xf0($sp)
/* BFE10 800CF610 21104A00 */  addu       $v0, $v0, $t2
/* BFE14 800CF614 2118D103 */  addu       $v1, $fp, $s1
/* BFE18 800CF618 21F06200 */  addu       $fp, $v1, $v0
/* BFE1C 800CF61C 80191E00 */  sll        $v1, $fp, 6
/* BFE20 800CF620 82161E00 */  srl        $v0, $fp, 0x1a
/* BFE24 800CF624 25F06200 */  or         $fp, $v1, $v0
/* BFE28 800CF628 21F0D903 */  addu       $fp, $fp, $t9
/* BFE2C 800CF62C 27101800 */  nor        $v0, $zero, $t8
/* BFE30 800CF630 F400B18F */  lw         $s1, 0xf4($sp)
/* BFE34 800CF634 2510C203 */  or         $v0, $fp, $v0
/* BFE38 800CF638 2118F102 */  addu       $v1, $s7, $s1
/* BFE3C 800CF63C 1C00B18F */  lw         $s1, 0x1c($sp)
/* BFE40 800CF640 26102203 */  xor        $v0, $t9, $v0
/* BFE44 800CF644 21105100 */  addu       $v0, $v0, $s1
/* BFE48 800CF648 21B86200 */  addu       $s7, $v1, $v0
/* BFE4C 800CF64C 801A1700 */  sll        $v1, $s7, 0xa
/* BFE50 800CF650 82151700 */  srl        $v0, $s7, 0x16
/* BFE54 800CF654 25B86200 */  or         $s7, $v1, $v0
/* BFE58 800CF658 21B8FE02 */  addu       $s7, $s7, $fp
/* BFE5C 800CF65C 27101900 */  nor        $v0, $zero, $t9
/* BFE60 800CF660 2510E202 */  or         $v0, $s7, $v0
/* BFE64 800CF664 2610C203 */  xor        $v0, $fp, $v0
/* BFE68 800CF668 F800B18F */  lw         $s1, 0xf8($sp)
/* BFE6C 800CF66C 21104D00 */  addu       $v0, $v0, $t5
/* BFE70 800CF670 21181103 */  addu       $v1, $t8, $s1
/* BFE74 800CF674 21C06200 */  addu       $t8, $v1, $v0
/* BFE78 800CF678 C01B1800 */  sll        $v1, $t8, 0xf
/* BFE7C 800CF67C 42141800 */  srl        $v0, $t8, 0x11
/* BFE80 800CF680 25C06200 */  or         $t8, $v1, $v0
/* BFE84 800CF684 21C01703 */  addu       $t8, $t8, $s7
/* BFE88 800CF688 27101E00 */  nor        $v0, $zero, $fp
/* BFE8C 800CF68C FC00B18F */  lw         $s1, 0xfc($sp)
/* BFE90 800CF690 25100203 */  or         $v0, $t8, $v0
/* BFE94 800CF694 21183103 */  addu       $v1, $t9, $s1
/* BFE98 800CF698 1400B18F */  lw         $s1, 0x14($sp)
/* BFE9C 800CF69C 2610E202 */  xor        $v0, $s7, $v0
/* BFEA0 800CF6A0 21105100 */  addu       $v0, $v0, $s1
/* BFEA4 800CF6A4 21C86200 */  addu       $t9, $v1, $v0
/* BFEA8 800CF6A8 401D1900 */  sll        $v1, $t9, 0x15
/* BFEAC 800CF6AC C2121900 */  srl        $v0, $t9, 0xb
/* BFEB0 800CF6B0 25C86200 */  or         $t9, $v1, $v0
/* BFEB4 800CF6B4 21C83803 */  addu       $t9, $t9, $t8
/* BFEB8 800CF6B8 27101700 */  nor        $v0, $zero, $s7
/* BFEBC 800CF6BC 0001B18F */  lw         $s1, 0x100($sp)
/* BFEC0 800CF6C0 25102203 */  or         $v0, $t9, $v0
/* BFEC4 800CF6C4 2118D103 */  addu       $v1, $fp, $s1
/* BFEC8 800CF6C8 3000B18F */  lw         $s1, 0x30($sp)
/* BFECC 800CF6CC 26100203 */  xor        $v0, $t8, $v0
/* BFED0 800CF6D0 21105100 */  addu       $v0, $v0, $s1
/* BFED4 800CF6D4 21F06200 */  addu       $fp, $v1, $v0
/* BFED8 800CF6D8 80191E00 */  sll        $v1, $fp, 6
/* BFEDC 800CF6DC 82161E00 */  srl        $v0, $fp, 0x1a
/* BFEE0 800CF6E0 25F06200 */  or         $fp, $v1, $v0
/* BFEE4 800CF6E4 21F0D903 */  addu       $fp, $fp, $t9
/* BFEE8 800CF6E8 27101800 */  nor        $v0, $zero, $t8
/* BFEEC 800CF6EC 2510C203 */  or         $v0, $fp, $v0
/* BFEF0 800CF6F0 26102203 */  xor        $v0, $t9, $v0
/* BFEF4 800CF6F4 0401B18F */  lw         $s1, 0x104($sp)
/* BFEF8 800CF6F8 21104B00 */  addu       $v0, $v0, $t3
/* BFEFC 800CF6FC 2118F102 */  addu       $v1, $s7, $s1
/* BFF00 800CF700 21B86200 */  addu       $s7, $v1, $v0
/* BFF04 800CF704 801A1700 */  sll        $v1, $s7, 0xa
/* BFF08 800CF708 82151700 */  srl        $v0, $s7, 0x16
/* BFF0C 800CF70C 25B86200 */  or         $s7, $v1, $v0
/* BFF10 800CF710 21B8FE02 */  addu       $s7, $s7, $fp
/* BFF14 800CF714 27101900 */  nor        $v0, $zero, $t9
/* BFF18 800CF718 0801B18F */  lw         $s1, 0x108($sp)
/* BFF1C 800CF71C 2510E202 */  or         $v0, $s7, $v0
/* BFF20 800CF720 21181103 */  addu       $v1, $t8, $s1
/* BFF24 800CF724 2800B18F */  lw         $s1, 0x28($sp)
/* BFF28 800CF728 2610C203 */  xor        $v0, $fp, $v0
/* BFF2C 800CF72C 21105100 */  addu       $v0, $v0, $s1
/* BFF30 800CF730 21C06200 */  addu       $t8, $v1, $v0
/* BFF34 800CF734 C01B1800 */  sll        $v1, $t8, 0xf
/* BFF38 800CF738 42141800 */  srl        $v0, $t8, 0x11
/* BFF3C 800CF73C 25C06200 */  or         $t8, $v1, $v0
/* BFF40 800CF740 21C01703 */  addu       $t8, $t8, $s7
/* BFF44 800CF744 27101E00 */  nor        $v0, $zero, $fp
/* BFF48 800CF748 25100203 */  or         $v0, $t8, $v0
/* BFF4C 800CF74C 2610E202 */  xor        $v0, $s7, $v0
/* BFF50 800CF750 0C01B18F */  lw         $s1, 0x10c($sp)
/* BFF54 800CF754 21104E00 */  addu       $v0, $v0, $t6
/* BFF58 800CF758 21183103 */  addu       $v1, $t9, $s1
/* BFF5C 800CF75C 21C86200 */  addu       $t9, $v1, $v0
/* BFF60 800CF760 401D1900 */  sll        $v1, $t9, 0x15
/* BFF64 800CF764 C2121900 */  srl        $v0, $t9, 0xb
/* BFF68 800CF768 25C86200 */  or         $t9, $v1, $v0
/* BFF6C 800CF76C 21C83803 */  addu       $t9, $t9, $t8
/* BFF70 800CF770 27101700 */  nor        $v0, $zero, $s7
/* BFF74 800CF774 1001B18F */  lw         $s1, 0x110($sp)
/* BFF78 800CF778 25102203 */  or         $v0, $t9, $v0
/* BFF7C 800CF77C 2118D103 */  addu       $v1, $fp, $s1
/* BFF80 800CF780 2000B18F */  lw         $s1, 0x20($sp)
/* BFF84 800CF784 26100203 */  xor        $v0, $t8, $v0
/* BFF88 800CF788 21105100 */  addu       $v0, $v0, $s1
/* BFF8C 800CF78C 21F06200 */  addu       $fp, $v1, $v0
/* BFF90 800CF790 80191E00 */  sll        $v1, $fp, 6
/* BFF94 800CF794 82161E00 */  srl        $v0, $fp, 0x1a
/* BFF98 800CF798 25F06200 */  or         $fp, $v1, $v0
/* BFF9C 800CF79C 21F0D903 */  addu       $fp, $fp, $t9
/* BFFA0 800CF7A0 27101800 */  nor        $v0, $zero, $t8
/* BFFA4 800CF7A4 2510C203 */  or         $v0, $fp, $v0
/* BFFA8 800CF7A8 26102203 */  xor        $v0, $t9, $v0
/* BFFAC 800CF7AC 1401B18F */  lw         $s1, 0x114($sp)
/* BFFB0 800CF7B0 21104F00 */  addu       $v0, $v0, $t7
/* BFFB4 800CF7B4 2118F102 */  addu       $v1, $s7, $s1
/* BFFB8 800CF7B8 21B86200 */  addu       $s7, $v1, $v0
/* BFFBC 800CF7BC 801A1700 */  sll        $v1, $s7, 0xa
/* BFFC0 800CF7C0 82151700 */  srl        $v0, $s7, 0x16
/* BFFC4 800CF7C4 25B86200 */  or         $s7, $v1, $v0
/* BFFC8 800CF7C8 21B8FE02 */  addu       $s7, $s7, $fp
/* BFFCC 800CF7CC 27101900 */  nor        $v0, $zero, $t9
/* BFFD0 800CF7D0 1801B18F */  lw         $s1, 0x118($sp)
/* BFFD4 800CF7D4 2510E202 */  or         $v0, $s7, $v0
/* BFFD8 800CF7D8 21181103 */  addu       $v1, $t8, $s1
/* BFFDC 800CF7DC 1800B18F */  lw         $s1, 0x18($sp)
/* BFFE0 800CF7E0 2610C203 */  xor        $v0, $fp, $v0
/* BFFE4 800CF7E4 21105100 */  addu       $v0, $v0, $s1
/* BFFE8 800CF7E8 21C06200 */  addu       $t8, $v1, $v0
/* BFFEC 800CF7EC C01B1800 */  sll        $v1, $t8, 0xf
/* BFFF0 800CF7F0 42141800 */  srl        $v0, $t8, 0x11
/* BFFF4 800CF7F4 25C06200 */  or         $t8, $v1, $v0
/* BFFF8 800CF7F8 21C01703 */  addu       $t8, $t8, $s7
/* BFFFC 800CF7FC 27101E00 */  nor        $v0, $zero, $fp
/* C0000 800CF800 1C01B18F */  lw         $s1, 0x11c($sp)
/* C0004 800CF804 25100203 */  or         $v0, $t8, $v0
/* C0008 800CF808 21183103 */  addu       $v1, $t9, $s1
/* C000C 800CF80C 3400B18F */  lw         $s1, 0x34($sp)
/* C0010 800CF810 2610E202 */  xor        $v0, $s7, $v0
/* C0014 800CF814 21105100 */  addu       $v0, $v0, $s1
/* C0018 800CF818 21C86200 */  addu       $t9, $v1, $v0
/* C001C 800CF81C 401D1900 */  sll        $v1, $t9, 0x15
/* C0020 800CF820 C2121900 */  srl        $v0, $t9, 0xb
/* C0024 800CF824 25C86200 */  or         $t9, $v1, $v0
/* C0028 800CF828 21C83803 */  addu       $t9, $t9, $t8
/* C002C 800CF82C 0000028E */  lw         $v0, ($s0)
/* C0030 800CF830 0400038E */  lw         $v1, 4($s0)
/* C0034 800CF834 21105E00 */  addu       $v0, $v0, $fp
/* C0038 800CF838 000002AE */  sw         $v0, ($s0)
/* C003C 800CF83C 0800028E */  lw         $v0, 8($s0)
/* C0040 800CF840 21187900 */  addu       $v1, $v1, $t9
/* C0044 800CF844 040003AE */  sw         $v1, 4($s0)
/* C0048 800CF848 0C00038E */  lw         $v1, 0xc($s0)
/* C004C 800CF84C 21105800 */  addu       $v0, $v0, $t8
/* C0050 800CF850 21187700 */  addu       $v1, $v1, $s7
/* C0054 800CF854 080002AE */  sw         $v0, 8($s0)
/* C0058 800CF858 A63E030C */  jal        FUN_800cfa98
/* C005C 800CF85C 0C0003AE */   sw        $v1, 0xc($s0)
/* C0060 800CF860 5401BF8F */  lw         $ra, 0x154($sp)
/* C0064 800CF864 5001BE8F */  lw         $fp, 0x150($sp)
/* C0068 800CF868 4C01B78F */  lw         $s7, 0x14c($sp)
/* C006C 800CF86C 4801B68F */  lw         $s6, 0x148($sp)
/* C0070 800CF870 4401B58F */  lw         $s5, 0x144($sp)
/* C0074 800CF874 4001B48F */  lw         $s4, 0x140($sp)
/* C0078 800CF878 3C01B38F */  lw         $s3, 0x13c($sp)
/* C007C 800CF87C 3801B28F */  lw         $s2, 0x138($sp)
/* C0080 800CF880 3401B18F */  lw         $s1, 0x134($sp)
/* C0084 800CF884 3001B08F */  lw         $s0, 0x130($sp)
/* C0088 800CF888 0800E003 */  jr         $ra
/* C008C 800CF88C 5801BD27 */   addiu     $sp, $sp, 0x158
