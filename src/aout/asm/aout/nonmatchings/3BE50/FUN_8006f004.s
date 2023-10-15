.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches


glabel FUN_8006f004
/* 5F804 8006F004 B0FFBD27 */  addiu      $sp, $sp, -0x50
/* 5F808 8006F008 3400B3AF */  sw         $s3, 0x34($sp)
/* 5F80C 8006F00C 8800B38F */  lw         $s3, 0x88($sp)
/* 5F810 8006F010 7C00A28F */  lw         $v0, 0x7c($sp)
/* 5F814 8006F014 6C00A38F */  lw         $v1, 0x6c($sp)
/* 5F818 8006F018 2800B0AF */  sw         $s0, 0x28($sp)
/* 5F81C 8006F01C 7000B08F */  lw         $s0, 0x70($sp)
/* 5F820 8006F020 3C00B5AF */  sw         $s5, 0x3c($sp)
/* 5F824 8006F024 7800B58F */  lw         $s5, 0x78($sp)
/* 5F828 8006F028 2C00B1AF */  sw         $s1, 0x2c($sp)
/* 5F82C 8006F02C 21888000 */  addu       $s1, $a0, $zero
/* 5F830 8006F030 3000B2AF */  sw         $s2, 0x30($sp)
/* 5F834 8006F034 6800B28F */  lw         $s2, 0x68($sp)
/* 5F838 8006F038 3800B4AF */  sw         $s4, 0x38($sp)
/* 5F83C 8006F03C 21A0A000 */  addu       $s4, $a1, $zero
/* 5F840 8006F040 4C00BFAF */  sw         $ra, 0x4c($sp)
/* 5F844 8006F044 4800BEAF */  sw         $fp, 0x48($sp)
/* 5F848 8006F048 4400B7AF */  sw         $s7, 0x44($sp)
/* 5F84C 8006F04C 4000B6AF */  sw         $s6, 0x40($sp)
/* 5F850 8006F050 1000A2AF */  sw         $v0, 0x10($sp)
/* 5F854 8006F054 1400B3AF */  sw         $s3, 0x14($sp)
/* 5F858 8006F058 1C00A3AF */  sw         $v1, 0x1c($sp)
/* 5F85C 8006F05C 04000286 */  lh         $v0, 4($s0)
/* 5F860 8006F060 7400A38F */  lw         $v1, 0x74($sp)
/* 5F864 8006F064 5800A6AF */  sw         $a2, 0x58($sp)
/* 5F868 8006F068 5C00A7AF */  sw         $a3, 0x5c($sp)
/* 5F86C 8006F06C 06000786 */  lh         $a3, 6($s0)
/* 5F870 8006F070 21304300 */  addu       $a2, $v0, $v1
/* 5F874 8006F074 0C000286 */  lh         $v0, 0xc($s0)
/* 5F878 8006F078 2138F500 */  addu       $a3, $a3, $s5
/* 5F87C 8006F07C 1769010C */  jal        FUN_8005a45c
/* 5F880 8006F080 1800A2AF */   sw        $v0, 0x18($sp)
/* 5F884 8006F084 21202002 */  addu       $a0, $s1, $zero
/* 5F888 8006F088 16000686 */  lh         $a2, 0x16($s0)
/* 5F88C 8006F08C 18000786 */  lh         $a3, 0x18($s0)
/* 5F890 8006F090 396D010C */  jal        FUN_8005b4e4
/* 5F894 8006F094 21288002 */   addu      $a1, $s4, $zero
/* 5F898 8006F098 21202002 */  addu       $a0, $s1, $zero
/* 5F89C 8006F09C 5800A68F */  lw         $a2, 0x58($sp)
/* 5F8A0 8006F0A0 5C00A78F */  lw         $a3, 0x5c($sp)
/* 5F8A4 8006F0A4 7C00A28F */  lw         $v0, 0x7c($sp)
/* 5F8A8 8006F0A8 21288002 */  addu       $a1, $s4, $zero
/* 5F8AC 8006F0AC 1400B3AF */  sw         $s3, 0x14($sp)
/* 5F8B0 8006F0B0 976D010C */  jal        FUN_8005b65c
/* 5F8B4 8006F0B4 1000A2AF */   sw        $v0, 0x10($sp)
/* 5F8B8 8006F0B8 21202002 */  addu       $a0, $s1, $zero
/* 5F8BC 8006F0BC 21288002 */  addu       $a1, $s4, $zero
/* 5F8C0 8006F0C0 21304002 */  addu       $a2, $s2, $zero
/* 5F8C4 8006F0C4 21384002 */  addu       $a3, $s2, $zero
/* 5F8C8 8006F0C8 EB6C010C */  jal        FUN_8005b3ac
/* 5F8CC 8006F0CC 1000B2AF */   sw        $s2, 0x10($sp)
/* 5F8D0 8006F0D0 01009E26 */  addiu      $fp, $s4, 1
/* 5F8D4 8006F0D4 21202002 */  addu       $a0, $s1, $zero
/* 5F8D8 8006F0D8 04000686 */  lh         $a2, 4($s0)
/* 5F8DC 8006F0DC 6C00A28F */  lw         $v0, 0x6c($sp)
/* 5F8E0 8006F0E0 01000324 */  addiu      $v1, $zero, 1
/* 5F8E4 8006F0E4 1000A3AF */  sw         $v1, 0x10($sp)
/* 5F8E8 8006F0E8 7400A38F */  lw         $v1, 0x74($sp)
/* 5F8EC 8006F0EC 2128C003 */  addu       $a1, $fp, $zero
/* 5F8F0 8006F0F0 1400B3AF */  sw         $s3, 0x14($sp)
/* 5F8F4 8006F0F4 2130C300 */  addu       $a2, $a2, $v1
/* 5F8F8 8006F0F8 1C00A2AF */  sw         $v0, 0x1c($sp)
/* 5F8FC 8006F0FC 7C00A28F */  lw         $v0, 0x7c($sp)
/* 5F900 8006F100 06000786 */  lh         $a3, 6($s0)
/* 5F904 8006F104 2130C200 */  addu       $a2, $a2, $v0
/* 5F908 8006F108 0C000286 */  lh         $v0, 0xc($s0)
/* 5F90C 8006F10C 2138F500 */  addu       $a3, $a3, $s5
/* 5F910 8006F110 1769010C */  jal        FUN_8005a45c
/* 5F914 8006F114 1800A2AF */   sw        $v0, 0x18($sp)
/* 5F918 8006F118 21202002 */  addu       $a0, $s1, $zero
/* 5F91C 8006F11C 16000686 */  lh         $a2, 0x16($s0)
/* 5F920 8006F120 18000786 */  lh         $a3, 0x18($s0)
/* 5F924 8006F124 396D010C */  jal        FUN_8005b4e4
/* 5F928 8006F128 2128C003 */   addu      $a1, $fp, $zero
/* 5F92C 8006F12C 21202002 */  addu       $a0, $s1, $zero
/* 5F930 8006F130 5800A38F */  lw         $v1, 0x58($sp)
/* 5F934 8006F134 7C00A28F */  lw         $v0, 0x7c($sp)
/* 5F938 8006F138 5C00A78F */  lw         $a3, 0x5c($sp)
/* 5F93C 8006F13C 2128C003 */  addu       $a1, $fp, $zero
/* 5F940 8006F140 1400B3AF */  sw         $s3, 0x14($sp)
/* 5F944 8006F144 21B06200 */  addu       $s6, $v1, $v0
/* 5F948 8006F148 6000A38F */  lw         $v1, 0x60($sp)
/* 5F94C 8006F14C 2130C002 */  addu       $a2, $s6, $zero
/* 5F950 8006F150 976D010C */  jal        FUN_8005b65c
/* 5F954 8006F154 1000A3AF */   sw        $v1, 0x10($sp)
/* 5F958 8006F158 21202002 */  addu       $a0, $s1, $zero
/* 5F95C 8006F15C 2128C003 */  addu       $a1, $fp, $zero
/* 5F960 8006F160 21304002 */  addu       $a2, $s2, $zero
/* 5F964 8006F164 21384002 */  addu       $a3, $s2, $zero
/* 5F968 8006F168 EB6C010C */  jal        FUN_8005b3ac
/* 5F96C 8006F16C 1000B2AF */   sw        $s2, 0x10($sp)
/* 5F970 8006F170 02009E26 */  addiu      $fp, $s4, 2
/* 5F974 8006F174 04000686 */  lh         $a2, 4($s0)
/* 5F978 8006F178 8400A28F */  lw         $v0, 0x84($sp)
/* 5F97C 8006F17C 6C00A38F */  lw         $v1, 0x6c($sp)
/* 5F980 8006F180 21202002 */  addu       $a0, $s1, $zero
/* 5F984 8006F184 1000A2AF */  sw         $v0, 0x10($sp)
/* 5F988 8006F188 7400A28F */  lw         $v0, 0x74($sp)
/* 5F98C 8006F18C 2128C003 */  addu       $a1, $fp, $zero
/* 5F990 8006F190 1400B3AF */  sw         $s3, 0x14($sp)
/* 5F994 8006F194 1C00A3AF */  sw         $v1, 0x1c($sp)
/* 5F998 8006F198 7C00A38F */  lw         $v1, 0x7c($sp)
/* 5F99C 8006F19C 06000786 */  lh         $a3, 6($s0)
/* 5F9A0 8006F1A0 2130C200 */  addu       $a2, $a2, $v0
/* 5F9A4 8006F1A4 8000A28F */  lw         $v0, 0x80($sp)
/* 5F9A8 8006F1A8 2130C300 */  addu       $a2, $a2, $v1
/* 5F9AC 8006F1AC 2130C200 */  addu       $a2, $a2, $v0
/* 5F9B0 8006F1B0 0C000286 */  lh         $v0, 0xc($s0)
/* 5F9B4 8006F1B4 2138F500 */  addu       $a3, $a3, $s5
/* 5F9B8 8006F1B8 1769010C */  jal        FUN_8005a45c
/* 5F9BC 8006F1BC 1800A2AF */   sw        $v0, 0x18($sp)
/* 5F9C0 8006F1C0 21202002 */  addu       $a0, $s1, $zero
/* 5F9C4 8006F1C4 16000686 */  lh         $a2, 0x16($s0)
/* 5F9C8 8006F1C8 18000786 */  lh         $a3, 0x18($s0)
/* 5F9CC 8006F1CC 396D010C */  jal        FUN_8005b4e4
/* 5F9D0 8006F1D0 2128C003 */   addu      $a1, $fp, $zero
/* 5F9D4 8006F1D4 21202002 */  addu       $a0, $s1, $zero
/* 5F9D8 8006F1D8 6000A38F */  lw         $v1, 0x60($sp)
/* 5F9DC 8006F1DC 5C00A78F */  lw         $a3, 0x5c($sp)
/* 5F9E0 8006F1E0 8400A28F */  lw         $v0, 0x84($sp)
/* 5F9E4 8006F1E4 2128C003 */  addu       $a1, $fp, $zero
/* 5F9E8 8006F1E8 1400B3AF */  sw         $s3, 0x14($sp)
/* 5F9EC 8006F1EC 2118C302 */  addu       $v1, $s6, $v1
/* 5F9F0 8006F1F0 21306000 */  addu       $a2, $v1, $zero
/* 5F9F4 8006F1F4 2000A3AF */  sw         $v1, 0x20($sp)
/* 5F9F8 8006F1F8 976D010C */  jal        FUN_8005b65c
/* 5F9FC 8006F1FC 1000A2AF */   sw        $v0, 0x10($sp)
/* 5FA00 8006F200 21202002 */  addu       $a0, $s1, $zero
/* 5FA04 8006F204 2128C003 */  addu       $a1, $fp, $zero
/* 5FA08 8006F208 21304002 */  addu       $a2, $s2, $zero
/* 5FA0C 8006F20C 21384002 */  addu       $a3, $s2, $zero
/* 5FA10 8006F210 EB6C010C */  jal        FUN_8005b3ac
/* 5FA14 8006F214 1000B2AF */   sw        $s2, 0x10($sp)
/* 5FA18 8006F218 03009E26 */  addiu      $fp, $s4, 3
/* 5FA1C 8006F21C 21202002 */  addu       $a0, $s1, $zero
/* 5FA20 8006F220 2128C003 */  addu       $a1, $fp, $zero
/* 5FA24 8006F224 0100D427 */  addiu      $s4, $fp, 1
/* 5FA28 8006F228 0400D727 */  addiu      $s7, $fp, 4
/* 5FA2C 8006F22C 04000686 */  lh         $a2, 4($s0)
/* 5FA30 8006F230 7C00A38F */  lw         $v1, 0x7c($sp)
/* 5FA34 8006F234 01000224 */  addiu      $v0, $zero, 1
/* 5FA38 8006F238 1400A2AF */  sw         $v0, 0x14($sp)
/* 5FA3C 8006F23C 7400A28F */  lw         $v0, 0x74($sp)
/* 5FA40 8006F240 21A8B302 */  addu       $s5, $s5, $s3
/* 5FA44 8006F244 1000A3AF */  sw         $v1, 0x10($sp)
/* 5FA48 8006F248 6C00A38F */  lw         $v1, 0x6c($sp)
/* 5FA4C 8006F24C 2130C200 */  addu       $a2, $a2, $v0
/* 5FA50 8006F250 1C00A3AF */  sw         $v1, 0x1c($sp)
/* 5FA54 8006F254 06000786 */  lh         $a3, 6($s0)
/* 5FA58 8006F258 0C000286 */  lh         $v0, 0xc($s0)
/* 5FA5C 8006F25C 5C00A38F */  lw         $v1, 0x5c($sp)
/* 5FA60 8006F260 2138F500 */  addu       $a3, $a3, $s5
/* 5FA64 8006F264 21987300 */  addu       $s3, $v1, $s3
/* 5FA68 8006F268 1769010C */  jal        FUN_8005a45c
/* 5FA6C 8006F26C 1800A2AF */   sw        $v0, 0x18($sp)
/* 5FA70 8006F270 21202002 */  addu       $a0, $s1, $zero
/* 5FA74 8006F274 16000686 */  lh         $a2, 0x16($s0)
/* 5FA78 8006F278 18000786 */  lh         $a3, 0x18($s0)
/* 5FA7C 8006F27C 396D010C */  jal        FUN_8005b4e4
/* 5FA80 8006F280 2128C003 */   addu      $a1, $fp, $zero
/* 5FA84 8006F284 21202002 */  addu       $a0, $s1, $zero
/* 5FA88 8006F288 2128C003 */  addu       $a1, $fp, $zero
/* 5FA8C 8006F28C 5800A68F */  lw         $a2, 0x58($sp)
/* 5FA90 8006F290 7C00A28F */  lw         $v0, 0x7c($sp)
/* 5FA94 8006F294 6400A38F */  lw         $v1, 0x64($sp)
/* 5FA98 8006F298 21386002 */  addu       $a3, $s3, $zero
/* 5FA9C 8006F29C 1000A2AF */  sw         $v0, 0x10($sp)
/* 5FAA0 8006F2A0 976D010C */  jal        FUN_8005b65c
/* 5FAA4 8006F2A4 1400A3AF */   sw        $v1, 0x14($sp)
/* 5FAA8 8006F2A8 21202002 */  addu       $a0, $s1, $zero
/* 5FAAC 8006F2AC 2128C003 */  addu       $a1, $fp, $zero
/* 5FAB0 8006F2B0 21304002 */  addu       $a2, $s2, $zero
/* 5FAB4 8006F2B4 21384002 */  addu       $a3, $s2, $zero
/* 5FAB8 8006F2B8 EB6C010C */  jal        FUN_8005b3ac
/* 5FABC 8006F2BC 1000B2AF */   sw        $s2, 0x10($sp)
/* 5FAC0 8006F2C0 21202002 */  addu       $a0, $s1, $zero
/* 5FAC4 8006F2C4 21288002 */  addu       $a1, $s4, $zero
/* 5FAC8 8006F2C8 04000686 */  lh         $a2, 4($s0)
/* 5FACC 8006F2CC 01000224 */  addiu      $v0, $zero, 1
/* 5FAD0 8006F2D0 1000A2AF */  sw         $v0, 0x10($sp)
/* 5FAD4 8006F2D4 1400A2AF */  sw         $v0, 0x14($sp)
/* 5FAD8 8006F2D8 7400A28F */  lw         $v0, 0x74($sp)
/* 5FADC 8006F2DC 6C00A38F */  lw         $v1, 0x6c($sp)
/* 5FAE0 8006F2E0 2130C200 */  addu       $a2, $a2, $v0
/* 5FAE4 8006F2E4 1C00A3AF */  sw         $v1, 0x1c($sp)
/* 5FAE8 8006F2E8 7C00A38F */  lw         $v1, 0x7c($sp)
/* 5FAEC 8006F2EC 06000786 */  lh         $a3, 6($s0)
/* 5FAF0 8006F2F0 0C000286 */  lh         $v0, 0xc($s0)
/* 5FAF4 8006F2F4 2130C300 */  addu       $a2, $a2, $v1
/* 5FAF8 8006F2F8 2138F500 */  addu       $a3, $a3, $s5
/* 5FAFC 8006F2FC 1769010C */  jal        FUN_8005a45c
/* 5FB00 8006F300 1800A2AF */   sw        $v0, 0x18($sp)
/* 5FB04 8006F304 21202002 */  addu       $a0, $s1, $zero
/* 5FB08 8006F308 16000686 */  lh         $a2, 0x16($s0)
/* 5FB0C 8006F30C 18000786 */  lh         $a3, 0x18($s0)
/* 5FB10 8006F310 396D010C */  jal        FUN_8005b4e4
/* 5FB14 8006F314 21288002 */   addu      $a1, $s4, $zero
/* 5FB18 8006F318 21202002 */  addu       $a0, $s1, $zero
/* 5FB1C 8006F31C 21288002 */  addu       $a1, $s4, $zero
/* 5FB20 8006F320 2130C002 */  addu       $a2, $s6, $zero
/* 5FB24 8006F324 6000A28F */  lw         $v0, 0x60($sp)
/* 5FB28 8006F328 6400A38F */  lw         $v1, 0x64($sp)
/* 5FB2C 8006F32C 21386002 */  addu       $a3, $s3, $zero
/* 5FB30 8006F330 1000A2AF */  sw         $v0, 0x10($sp)
/* 5FB34 8006F334 976D010C */  jal        FUN_8005b65c
/* 5FB38 8006F338 1400A3AF */   sw        $v1, 0x14($sp)
/* 5FB3C 8006F33C 21202002 */  addu       $a0, $s1, $zero
/* 5FB40 8006F340 21288002 */  addu       $a1, $s4, $zero
/* 5FB44 8006F344 21304002 */  addu       $a2, $s2, $zero
/* 5FB48 8006F348 21384002 */  addu       $a3, $s2, $zero
/* 5FB4C 8006F34C EB6C010C */  jal        FUN_8005b3ac
/* 5FB50 8006F350 1000B2AF */   sw        $s2, 0x10($sp)
/* 5FB54 8006F354 0200D427 */  addiu      $s4, $fp, 2
/* 5FB58 8006F358 21202002 */  addu       $a0, $s1, $zero
/* 5FB5C 8006F35C 04000686 */  lh         $a2, 4($s0)
/* 5FB60 8006F360 01000324 */  addiu      $v1, $zero, 1
/* 5FB64 8006F364 1400A3AF */  sw         $v1, 0x14($sp)
/* 5FB68 8006F368 7400A38F */  lw         $v1, 0x74($sp)
/* 5FB6C 8006F36C 8400A28F */  lw         $v0, 0x84($sp)
/* 5FB70 8006F370 2130C300 */  addu       $a2, $a2, $v1
/* 5FB74 8006F374 1000A2AF */  sw         $v0, 0x10($sp)
/* 5FB78 8006F378 6C00A28F */  lw         $v0, 0x6c($sp)
/* 5FB7C 8006F37C 8000A38F */  lw         $v1, 0x80($sp)
/* 5FB80 8006F380 21288002 */  addu       $a1, $s4, $zero
/* 5FB84 8006F384 1C00A2AF */  sw         $v0, 0x1c($sp)
/* 5FB88 8006F388 7C00A28F */  lw         $v0, 0x7c($sp)
/* 5FB8C 8006F38C 06000786 */  lh         $a3, 6($s0)
/* 5FB90 8006F390 2130C200 */  addu       $a2, $a2, $v0
/* 5FB94 8006F394 2130C300 */  addu       $a2, $a2, $v1
/* 5FB98 8006F398 0C000286 */  lh         $v0, 0xc($s0)
/* 5FB9C 8006F39C 2138F500 */  addu       $a3, $a3, $s5
/* 5FBA0 8006F3A0 1769010C */  jal        FUN_8005a45c
/* 5FBA4 8006F3A4 1800A2AF */   sw        $v0, 0x18($sp)
/* 5FBA8 8006F3A8 21202002 */  addu       $a0, $s1, $zero
/* 5FBAC 8006F3AC 16000686 */  lh         $a2, 0x16($s0)
/* 5FBB0 8006F3B0 18000786 */  lh         $a3, 0x18($s0)
/* 5FBB4 8006F3B4 396D010C */  jal        FUN_8005b4e4
/* 5FBB8 8006F3B8 21288002 */   addu      $a1, $s4, $zero
/* 5FBBC 8006F3BC 21202002 */  addu       $a0, $s1, $zero
/* 5FBC0 8006F3C0 21288002 */  addu       $a1, $s4, $zero
/* 5FBC4 8006F3C4 2000A68F */  lw         $a2, 0x20($sp)
/* 5FBC8 8006F3C8 8400A28F */  lw         $v0, 0x84($sp)
/* 5FBCC 8006F3CC 6400A38F */  lw         $v1, 0x64($sp)
/* 5FBD0 8006F3D0 21386002 */  addu       $a3, $s3, $zero
/* 5FBD4 8006F3D4 1000A2AF */  sw         $v0, 0x10($sp)
/* 5FBD8 8006F3D8 976D010C */  jal        FUN_8005b65c
/* 5FBDC 8006F3DC 1400A3AF */   sw        $v1, 0x14($sp)
/* 5FBE0 8006F3E0 21202002 */  addu       $a0, $s1, $zero
/* 5FBE4 8006F3E4 21288002 */  addu       $a1, $s4, $zero
/* 5FBE8 8006F3E8 21304002 */  addu       $a2, $s2, $zero
/* 5FBEC 8006F3EC 21384002 */  addu       $a3, $s2, $zero
/* 5FBF0 8006F3F0 EB6C010C */  jal        FUN_8005b3ac
/* 5FBF4 8006F3F4 1000B2AF */   sw        $s2, 0x10($sp)
/* 5FBF8 8006F3F8 0300D427 */  addiu      $s4, $fp, 3
/* 5FBFC 8006F3FC 04000686 */  lh         $a2, 4($s0)
/* 5FC00 8006F400 7C00A28F */  lw         $v0, 0x7c($sp)
/* 5FC04 8006F404 9000A38F */  lw         $v1, 0x90($sp)
/* 5FC08 8006F408 21202002 */  addu       $a0, $s1, $zero
/* 5FC0C 8006F40C 1400A3AF */  sw         $v1, 0x14($sp)
/* 5FC10 8006F410 7400A38F */  lw         $v1, 0x74($sp)
/* 5FC14 8006F414 21288002 */  addu       $a1, $s4, $zero
/* 5FC18 8006F418 1000A2AF */  sw         $v0, 0x10($sp)
/* 5FC1C 8006F41C 6C00A28F */  lw         $v0, 0x6c($sp)
/* 5FC20 8006F420 2130C300 */  addu       $a2, $a2, $v1
/* 5FC24 8006F424 1C00A2AF */  sw         $v0, 0x1c($sp)
/* 5FC28 8006F428 8C00A28F */  lw         $v0, 0x8c($sp)
/* 5FC2C 8006F42C 06000786 */  lh         $a3, 6($s0)
/* 5FC30 8006F430 6400A38F */  lw         $v1, 0x64($sp)
/* 5FC34 8006F434 21A8A202 */  addu       $s5, $s5, $v0
/* 5FC38 8006F438 2138F500 */  addu       $a3, $a3, $s5
/* 5FC3C 8006F43C 0C000286 */  lh         $v0, 0xc($s0)
/* 5FC40 8006F440 21986302 */  addu       $s3, $s3, $v1
/* 5FC44 8006F444 1769010C */  jal        FUN_8005a45c
/* 5FC48 8006F448 1800A2AF */   sw        $v0, 0x18($sp)
/* 5FC4C 8006F44C 21202002 */  addu       $a0, $s1, $zero
/* 5FC50 8006F450 16000686 */  lh         $a2, 0x16($s0)
/* 5FC54 8006F454 18000786 */  lh         $a3, 0x18($s0)
/* 5FC58 8006F458 396D010C */  jal        FUN_8005b4e4
/* 5FC5C 8006F45C 21288002 */   addu      $a1, $s4, $zero
/* 5FC60 8006F460 21202002 */  addu       $a0, $s1, $zero
/* 5FC64 8006F464 21288002 */  addu       $a1, $s4, $zero
/* 5FC68 8006F468 5800A68F */  lw         $a2, 0x58($sp)
/* 5FC6C 8006F46C 7C00A28F */  lw         $v0, 0x7c($sp)
/* 5FC70 8006F470 9000A38F */  lw         $v1, 0x90($sp)
/* 5FC74 8006F474 21386002 */  addu       $a3, $s3, $zero
/* 5FC78 8006F478 1000A2AF */  sw         $v0, 0x10($sp)
/* 5FC7C 8006F47C 976D010C */  jal        FUN_8005b65c
/* 5FC80 8006F480 1400A3AF */   sw        $v1, 0x14($sp)
/* 5FC84 8006F484 21202002 */  addu       $a0, $s1, $zero
/* 5FC88 8006F488 21288002 */  addu       $a1, $s4, $zero
/* 5FC8C 8006F48C 21304002 */  addu       $a2, $s2, $zero
/* 5FC90 8006F490 21384002 */  addu       $a3, $s2, $zero
/* 5FC94 8006F494 EB6C010C */  jal        FUN_8005b3ac
/* 5FC98 8006F498 1000B2AF */   sw        $s2, 0x10($sp)
/* 5FC9C 8006F49C 04000686 */  lh         $a2, 4($s0)
/* 5FCA0 8006F4A0 9000A38F */  lw         $v1, 0x90($sp)
/* 5FCA4 8006F4A4 01000224 */  addiu      $v0, $zero, 1
/* 5FCA8 8006F4A8 1000A2AF */  sw         $v0, 0x10($sp)
/* 5FCAC 8006F4AC 6C00A28F */  lw         $v0, 0x6c($sp)
/* 5FCB0 8006F4B0 21202002 */  addu       $a0, $s1, $zero
/* 5FCB4 8006F4B4 1400A3AF */  sw         $v1, 0x14($sp)
/* 5FCB8 8006F4B8 7400A38F */  lw         $v1, 0x74($sp)
/* 5FCBC 8006F4BC 2128E002 */  addu       $a1, $s7, $zero
/* 5FCC0 8006F4C0 1C00A2AF */  sw         $v0, 0x1c($sp)
/* 5FCC4 8006F4C4 7C00A28F */  lw         $v0, 0x7c($sp)
/* 5FCC8 8006F4C8 06000786 */  lh         $a3, 6($s0)
/* 5FCCC 8006F4CC 2130C300 */  addu       $a2, $a2, $v1
/* 5FCD0 8006F4D0 2130C200 */  addu       $a2, $a2, $v0
/* 5FCD4 8006F4D4 0C000286 */  lh         $v0, 0xc($s0)
/* 5FCD8 8006F4D8 2138F500 */  addu       $a3, $a3, $s5
/* 5FCDC 8006F4DC 1769010C */  jal        FUN_8005a45c
/* 5FCE0 8006F4E0 1800A2AF */   sw        $v0, 0x18($sp)
/* 5FCE4 8006F4E4 21202002 */  addu       $a0, $s1, $zero
/* 5FCE8 8006F4E8 16000686 */  lh         $a2, 0x16($s0)
/* 5FCEC 8006F4EC 18000786 */  lh         $a3, 0x18($s0)
/* 5FCF0 8006F4F0 396D010C */  jal        FUN_8005b4e4
/* 5FCF4 8006F4F4 2128E002 */   addu      $a1, $s7, $zero
/* 5FCF8 8006F4F8 21202002 */  addu       $a0, $s1, $zero
/* 5FCFC 8006F4FC 2128E002 */  addu       $a1, $s7, $zero
/* 5FD00 8006F500 2130C002 */  addu       $a2, $s6, $zero
/* 5FD04 8006F504 6000A38F */  lw         $v1, 0x60($sp)
/* 5FD08 8006F508 9000A28F */  lw         $v0, 0x90($sp)
/* 5FD0C 8006F50C 21386002 */  addu       $a3, $s3, $zero
/* 5FD10 8006F510 1000A3AF */  sw         $v1, 0x10($sp)
/* 5FD14 8006F514 976D010C */  jal        FUN_8005b65c
/* 5FD18 8006F518 1400A2AF */   sw        $v0, 0x14($sp)
/* 5FD1C 8006F51C 21202002 */  addu       $a0, $s1, $zero
/* 5FD20 8006F520 2128E002 */  addu       $a1, $s7, $zero
/* 5FD24 8006F524 21304002 */  addu       $a2, $s2, $zero
/* 5FD28 8006F528 21384002 */  addu       $a3, $s2, $zero
/* 5FD2C 8006F52C EB6C010C */  jal        FUN_8005b3ac
/* 5FD30 8006F530 1000B2AF */   sw        $s2, 0x10($sp)
/* 5FD34 8006F534 0500D727 */  addiu      $s7, $fp, 5
/* 5FD38 8006F538 04000686 */  lh         $a2, 4($s0)
/* 5FD3C 8006F53C 8400A38F */  lw         $v1, 0x84($sp)
/* 5FD40 8006F540 9000A28F */  lw         $v0, 0x90($sp)
/* 5FD44 8006F544 21202002 */  addu       $a0, $s1, $zero
/* 5FD48 8006F548 1400A2AF */  sw         $v0, 0x14($sp)
/* 5FD4C 8006F54C 7400A28F */  lw         $v0, 0x74($sp)
/* 5FD50 8006F550 2128E002 */  addu       $a1, $s7, $zero
/* 5FD54 8006F554 1000A3AF */  sw         $v1, 0x10($sp)
/* 5FD58 8006F558 6C00A38F */  lw         $v1, 0x6c($sp)
/* 5FD5C 8006F55C 2130C200 */  addu       $a2, $a2, $v0
/* 5FD60 8006F560 1C00A3AF */  sw         $v1, 0x1c($sp)
/* 5FD64 8006F564 7C00A38F */  lw         $v1, 0x7c($sp)
/* 5FD68 8006F568 8000A28F */  lw         $v0, 0x80($sp)
/* 5FD6C 8006F56C 06000786 */  lh         $a3, 6($s0)
/* 5FD70 8006F570 2130C300 */  addu       $a2, $a2, $v1
/* 5FD74 8006F574 2130C200 */  addu       $a2, $a2, $v0
/* 5FD78 8006F578 0C000286 */  lh         $v0, 0xc($s0)
/* 5FD7C 8006F57C 2138F500 */  addu       $a3, $a3, $s5
/* 5FD80 8006F580 1769010C */  jal        FUN_8005a45c
/* 5FD84 8006F584 1800A2AF */   sw        $v0, 0x18($sp)
/* 5FD88 8006F588 21202002 */  addu       $a0, $s1, $zero
/* 5FD8C 8006F58C 16000686 */  lh         $a2, 0x16($s0)
/* 5FD90 8006F590 18000786 */  lh         $a3, 0x18($s0)
/* 5FD94 8006F594 396D010C */  jal        FUN_8005b4e4
/* 5FD98 8006F598 2128E002 */   addu      $a1, $s7, $zero
/* 5FD9C 8006F59C 21202002 */  addu       $a0, $s1, $zero
/* 5FDA0 8006F5A0 2128E002 */  addu       $a1, $s7, $zero
/* 5FDA4 8006F5A4 2000A68F */  lw         $a2, 0x20($sp)
/* 5FDA8 8006F5A8 8400A38F */  lw         $v1, 0x84($sp)
/* 5FDAC 8006F5AC 9000A28F */  lw         $v0, 0x90($sp)
/* 5FDB0 8006F5B0 21386002 */  addu       $a3, $s3, $zero
/* 5FDB4 8006F5B4 1000A3AF */  sw         $v1, 0x10($sp)
/* 5FDB8 8006F5B8 976D010C */  jal        FUN_8005b65c
/* 5FDBC 8006F5BC 1400A2AF */   sw        $v0, 0x14($sp)
/* 5FDC0 8006F5C0 21202002 */  addu       $a0, $s1, $zero
/* 5FDC4 8006F5C4 2128E002 */  addu       $a1, $s7, $zero
/* 5FDC8 8006F5C8 21304002 */  addu       $a2, $s2, $zero
/* 5FDCC 8006F5CC 2138C000 */  addu       $a3, $a2, $zero
/* 5FDD0 8006F5D0 EB6C010C */  jal        FUN_8005b3ac
/* 5FDD4 8006F5D4 1000B2AF */   sw        $s2, 0x10($sp)
/* 5FDD8 8006F5D8 0600C227 */  addiu      $v0, $fp, 6
/* 5FDDC 8006F5DC 4C00BF8F */  lw         $ra, 0x4c($sp)
/* 5FDE0 8006F5E0 4800BE8F */  lw         $fp, 0x48($sp)
/* 5FDE4 8006F5E4 4400B78F */  lw         $s7, 0x44($sp)
/* 5FDE8 8006F5E8 4000B68F */  lw         $s6, 0x40($sp)
/* 5FDEC 8006F5EC 3C00B58F */  lw         $s5, 0x3c($sp)
/* 5FDF0 8006F5F0 3800B48F */  lw         $s4, 0x38($sp)
/* 5FDF4 8006F5F4 3400B38F */  lw         $s3, 0x34($sp)
/* 5FDF8 8006F5F8 3000B28F */  lw         $s2, 0x30($sp)
/* 5FDFC 8006F5FC 2C00B18F */  lw         $s1, 0x2c($sp)
/* 5FE00 8006F600 2800B08F */  lw         $s0, 0x28($sp)
/* 5FE04 8006F604 0800E003 */  jr         $ra
/* 5FE08 8006F608 5000BD27 */   addiu     $sp, $sp, 0x50
