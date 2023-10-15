.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches


glabel func_8005C880
/* 4D080 8005C880 70FFBD27 */  addiu      $sp, $sp, -0x90
/* 4D084 8005C884 8400B7AF */  sw         $s7, 0x84($sp)
/* 4D088 8005C888 21B8A000 */  addu       $s7, $a1, $zero
/* 4D08C 8005C88C 7400B3AF */  sw         $s3, 0x74($sp)
/* 4D090 8005C890 2198C000 */  addu       $s3, $a2, $zero
/* 4D094 8005C894 0180023C */  lui        $v0, %hi(D_800140F8)
/* 4D098 8005C898 F8404224 */  addiu      $v0, $v0, %lo(D_800140F8)
/* 4D09C 8005C89C A400A98F */  lw         $t1, 0xa4($sp)
/* 4D0A0 8005C8A0 1380053C */  lui        $a1, 0x8013
/* 4D0A4 8005C8A4 8C00BFAF */  sw         $ra, 0x8c($sp)
/* 4D0A8 8005C8A8 8800BEAF */  sw         $fp, 0x88($sp)
/* 4D0AC 8005C8AC 8000B6AF */  sw         $s6, 0x80($sp)
/* 4D0B0 8005C8B0 7C00B5AF */  sw         $s5, 0x7c($sp)
/* 4D0B4 8005C8B4 7800B4AF */  sw         $s4, 0x78($sp)
/* 4D0B8 8005C8B8 7000B2AF */  sw         $s2, 0x70($sp)
/* 4D0BC 8005C8BC 6C00B1AF */  sw         $s1, 0x6c($sp)
/* 4D0C0 8005C8C0 6800B0AF */  sw         $s0, 0x68($sp)
/* 4D0C4 8005C8C4 0F002331 */  andi       $v1, $t1, 0xf
/* 4D0C8 8005C8C8 80300300 */  sll        $a2, $v1, 2
/* 4D0CC 8005C8CC 2110C200 */  addu       $v0, $a2, $v0
/* 4D0D0 8005C8D0 0000428C */  lw         $v0, ($v0)
/* 4D0D4 8005C8D4 E080A524 */  addiu      $a1, $a1, -0x7f20
/* 4D0D8 8005C8D8 4800A2AF */  sw         $v0, 0x48($sp)
/* 4D0DC 8005C8DC FFFF4224 */  addiu      $v0, $v0, -1
/* 4D0E0 8005C8E0 4C00A2AF */  sw         $v0, 0x4c($sp)
/* 4D0E4 8005C8E4 0180023C */  lui        $v0, %hi(D_80014038)
/* 4D0E8 8005C8E8 38404224 */  addiu      $v0, $v0, %lo(D_80014038)
/* 4D0EC 8005C8EC 2110C200 */  addu       $v0, $a2, $v0
/* 4D0F0 8005C8F0 0000438C */  lw         $v1, ($v0)
/* 4D0F4 8005C8F4 A000AA8F */  lw         $t2, 0xa0($sp)
/* 4D0F8 8005C8F8 21186500 */  addu       $v1, $v1, $a1
/* 4D0FC 8005C8FC 00006290 */  lbu        $v0, ($v1)
/* 4D100 8005C900 2188E000 */  addu       $s1, $a3, $zero
/* 4D104 8005C904 9000A4AF */  sw         $a0, 0x90($sp)
/* 4D108 8005C908 0180043C */  lui        $a0, %hi(D_80014078)
/* 4D10C 8005C90C 78408424 */  addiu      $a0, $a0, %lo(D_80014078)
/* 4D110 8005C910 2120C400 */  addu       $a0, $a2, $a0
/* 4D114 8005C914 0000848C */  lw         $a0, ($a0)
/* 4D118 8005C918 C0180200 */  sll        $v1, $v0, 3
/* 4D11C 8005C91C 23186200 */  subu       $v1, $v1, $v0
/* 4D120 8005C920 80180300 */  sll        $v1, $v1, 2
/* 4D124 8005C924 1380023C */  lui        $v0, %hi(D_801282E0)
/* 4D128 8005C928 E0824224 */  addiu      $v0, $v0, %lo(D_801282E0)
/* 4D12C 8005C92C 21186200 */  addu       $v1, $v1, $v0
/* 4D130 8005C930 4000A3AF */  sw         $v1, 0x40($sp)
/* 4D134 8005C934 4800A38F */  lw         $v1, 0x48($sp)
/* 4D138 8005C938 0D000224 */  addiu      $v0, $zero, 0xd
/* 4D13C 8005C93C 04006214 */  bne        $v1, $v0, .L8005C950
/* 4D140 8005C940 4400A4AF */   sw        $a0, 0x44($sp)
/* 4D144 8005C944 10000424 */  addiu      $a0, $zero, 0x10
/* 4D148 8005C948 4800A4AF */  sw         $a0, 0x48($sp)
/* 4D14C 8005C94C 4C00A2AF */  sw         $v0, 0x4c($sp)
.L8005C950:
/* 4D150 8005C950 021A0900 */  srl        $v1, $t1, 8
/* 4D154 8005C954 0180023C */  lui        $v0, %hi(D_800140B8)
/* 4D158 8005C958 B8404224 */  addiu      $v0, $v0, %lo(D_800140B8)
/* 4D15C 8005C95C 2110C200 */  addu       $v0, $a2, $v0
/* 4D160 8005C960 0000448C */  lw         $a0, ($v0)
/* 4D164 8005C964 FF006730 */  andi       $a3, $v1, 0xff
/* 4D168 8005C968 21A0E400 */  addu       $s4, $a3, $a0
/* 4D16C 8005C96C 40181400 */  sll        $v1, $s4, 1
/* 4D170 8005C970 21187400 */  addu       $v1, $v1, $s4
/* 4D174 8005C974 00110300 */  sll        $v0, $v1, 4
/* 4D178 8005C978 23104300 */  subu       $v0, $v0, $v1
/* 4D17C 8005C97C 80100200 */  sll        $v0, $v0, 2
/* 4D180 8005C980 21105400 */  addu       $v0, $v0, $s4
/* 4D184 8005C984 00110200 */  sll        $v0, $v0, 4
/* 4D188 8005C988 03A30200 */  sra        $s4, $v0, 0xc
/* 4D18C 8005C98C 02190900 */  srl        $v1, $t1, 4
/* 4D190 8005C990 03006330 */  andi       $v1, $v1, 3
/* 4D194 8005C994 FFFF6324 */  addiu      $v1, $v1, -1
/* 4D198 8005C998 02240900 */  srl        $a0, $t1, 0x10
/* 4D19C 8005C99C FF008830 */  andi       $t0, $a0, 0xff
/* 4D1A0 8005C9A0 02150900 */  srl        $v0, $t1, 0x14
/* 4D1A4 8005C9A4 5800A3AF */  sw         $v1, 0x58($sp)
/* 4D1A8 8005C9A8 4000A38F */  lw         $v1, 0x40($sp)
/* 4D1AC 8005C9AC F0004230 */  andi       $v0, $v0, 0xf0
/* 4D1B0 8005C9B0 16006484 */  lh         $a0, 0x16($v1)
/* 4D1B4 8005C9B4 0180033C */  lui        $v1, %hi(D_80014138)
/* 4D1B8 8005C9B8 38416324 */  addiu      $v1, $v1, %lo(D_80014138)
/* 4D1BC 8005C9BC 2118C300 */  addu       $v1, $a2, $v1
/* 4D1C0 8005C9C0 21208200 */  addu       $a0, $a0, $v0
/* 4D1C4 8005C9C4 0180023C */  lui        $v0, %hi(D_80014178)
/* 4D1C8 8005C9C8 78414224 */  addiu      $v0, $v0, %lo(D_80014178)
/* 4D1CC 8005C9CC 5000A4AF */  sw         $a0, 0x50($sp)
/* 4D1D0 8005C9D0 4000A48F */  lw         $a0, 0x40($sp)
/* 4D1D4 8005C9D4 2110C200 */  addu       $v0, $a2, $v0
/* 4D1D8 8005C9D8 04008684 */  lh         $a2, 4($a0)
/* 4D1DC 8005C9DC 0000648C */  lw         $a0, ($v1)
/* 4D1E0 8005C9E0 4000A38F */  lw         $v1, 0x40($sp)
/* 4D1E4 8005C9E4 2130C400 */  addu       $a2, $a2, $a0
/* 4D1E8 8005C9E8 06006584 */  lh         $a1, 6($v1)
/* 4D1EC 8005C9EC 0000438C */  lw         $v1, ($v0)
/* 4D1F0 8005C9F0 4000A48F */  lw         $a0, 0x40($sp)
/* 4D1F4 8005C9F4 5C00A6AF */  sw         $a2, 0x5c($sp)
/* 4D1F8 8005C9F8 2128A300 */  addu       $a1, $a1, $v1
/* 4D1FC 8005C9FC 6000A5AF */  sw         $a1, 0x60($sp)
/* 4D200 8005CA00 00004291 */  lbu        $v0, ($t2)
/* 4D204 8005CA04 18008484 */  lh         $a0, 0x18($a0)
/* 4D208 8005CA08 21B0E002 */  addu       $s6, $s7, $zero
/* 4D20C 8005CA0C 65004010 */  beqz       $v0, .L8005CBA4
/* 4D210 8005CA10 5400A4AF */   sw        $a0, 0x54($sp)
/* 4D214 8005CA14 40180700 */  sll        $v1, $a3, 1
/* 4D218 8005CA18 21186700 */  addu       $v1, $v1, $a3
/* 4D21C 8005CA1C 00110300 */  sll        $v0, $v1, 4
/* 4D220 8005CA20 23104300 */  subu       $v0, $v0, $v1
/* 4D224 8005CA24 80100200 */  sll        $v0, $v0, 2
/* 4D228 8005CA28 21104700 */  addu       $v0, $v0, $a3
/* 4D22C 8005CA2C 00110200 */  sll        $v0, $v0, 4
/* 4D230 8005CA30 03AB0200 */  sra        $s5, $v0, 0xc
/* 4D234 8005CA34 FFFFA226 */  addiu      $v0, $s5, -1
/* 4D238 8005CA38 6400A2AF */  sw         $v0, 0x64($sp)
/* 4D23C 8005CA3C 21904001 */  addu       $s2, $t2, $zero
/* 4D240 8005CA40 40180800 */  sll        $v1, $t0, 1
/* 4D244 8005CA44 21186800 */  addu       $v1, $v1, $t0
/* 4D248 8005CA48 00110300 */  sll        $v0, $v1, 4
/* 4D24C 8005CA4C 23104300 */  subu       $v0, $v0, $v1
/* 4D250 8005CA50 80100200 */  sll        $v0, $v0, 2
/* 4D254 8005CA54 21104800 */  addu       $v0, $v0, $t0
/* 4D258 8005CA58 03F20200 */  sra        $fp, $v0, 8
.L8005CA5C:
/* 4D25C 8005CA5C 00004392 */  lbu        $v1, ($s2)
/* 4D260 8005CA60 7E000224 */  addiu      $v0, $zero, 0x7e
/* 4D264 8005CA64 04006214 */  bne        $v1, $v0, .L8005CA78
/* 4D268 8005CA68 43101400 */   sra       $v0, $s4, 1
/* 4D26C 8005CA6C 21986202 */  addu       $s3, $s3, $v0
/* 4D270 8005CA70 D5720108 */  j          .L8005CB54
/* 4D274 8005CA74 23882202 */   subu      $s1, $s1, $v0
.L8005CA78:
/* 4D278 8005CA78 00004292 */  lbu        $v0, ($s2)
/* 4D27C 8005CA7C 00000000 */  nop
/* 4D280 8005CA80 E0FF5024 */  addiu      $s0, $v0, -0x20
/* 4D284 8005CA84 31000012 */  beqz       $s0, .L8005CB4C
/* 4D288 8005CA88 2128E002 */   addu      $a1, $s7, $zero
/* 4D28C 8005CA8C 2000A627 */  addiu      $a2, $sp, 0x20
/* 4D290 8005CA90 3000A727 */  addiu      $a3, $sp, 0x30
/* 4D294 8005CA94 21107502 */  addu       $v0, $s3, $s5
/* 4D298 8005CA98 23183502 */  subu       $v1, $s1, $s5
/* 4D29C 8005CA9C 21487E02 */  addu       $t1, $s3, $fp
/* 4D2A0 8005CAA0 2400A2AF */  sw         $v0, 0x24($sp)
/* 4D2A4 8005CAA4 01002225 */  addiu      $v0, $t1, 1
/* 4D2A8 8005CAA8 3400A3AF */  sw         $v1, 0x34($sp)
/* 4D2AC 8005CAAC 0100A326 */  addiu      $v1, $s5, 1
/* 4D2B0 8005CAB0 21482301 */  addu       $t1, $t1, $v1
/* 4D2B4 8005CAB4 9000A48F */  lw         $a0, 0x90($sp)
/* 4D2B8 8005CAB8 6400A38F */  lw         $v1, 0x64($sp)
/* 4D2BC 8005CABC 21403E02 */  addu       $t0, $s1, $fp
/* 4D2C0 8005CAC0 2800A2AF */  sw         $v0, 0x28($sp)
/* 4D2C4 8005CAC4 01000225 */  addiu      $v0, $t0, 1
/* 4D2C8 8005CAC8 2000B3AF */  sw         $s3, 0x20($sp)
/* 4D2CC 8005CACC 3000B1AF */  sw         $s1, 0x30($sp)
/* 4D2D0 8005CAD0 3800A2AF */  sw         $v0, 0x38($sp)
/* 4D2D4 8005CAD4 2C00A9AF */  sw         $t1, 0x2c($sp)
/* 4D2D8 8005CAD8 23400301 */  subu       $t0, $t0, $v1
/* 4D2DC 8005CADC C16D010C */  jal        FUN_8005b704
/* 4D2E0 8005CAE0 3C00A8AF */   sw        $t0, 0x3c($sp)
/* 4D2E4 8005CAE4 4400A28F */  lw         $v0, 0x44($sp)
/* 4D2E8 8005CAE8 03311000 */  sra        $a2, $s0, 4
/* 4D2EC 8005CAEC 18004600 */  mult       $v0, $a2
/* 4D2F0 8005CAF0 0F000732 */  andi       $a3, $s0, 0xf
/* 4D2F4 8005CAF4 9000A48F */  lw         $a0, 0x90($sp)
/* 4D2F8 8005CAF8 12300000 */  mflo       $a2
/* 4D2FC 8005CAFC 4800A28F */  lw         $v0, 0x48($sp)
/* 4D300 8005CB00 4000A38F */  lw         $v1, 0x40($sp)
/* 4D304 8005CB04 18004700 */  mult       $v0, $a3
/* 4D308 8005CB08 0C006284 */  lh         $v0, 0xc($v1)
/* 4D30C 8005CB0C 4400A38F */  lw         $v1, 0x44($sp)
/* 4D310 8005CB10 00000000 */  nop
/* 4D314 8005CB14 1000A3AF */  sw         $v1, 0x10($sp)
/* 4D318 8005CB18 4C00A38F */  lw         $v1, 0x4c($sp)
/* 4D31C 8005CB1C 1800A2AF */  sw         $v0, 0x18($sp)
/* 4D320 8005CB20 5C00A28F */  lw         $v0, 0x5c($sp)
/* 4D324 8005CB24 2128E002 */  addu       $a1, $s7, $zero
/* 4D328 8005CB28 1400A3AF */  sw         $v1, 0x14($sp)
/* 4D32C 8005CB2C 5800A38F */  lw         $v1, 0x58($sp)
/* 4D330 8005CB30 21304600 */  addu       $a2, $v0, $a2
/* 4D334 8005CB34 1C00A3AF */  sw         $v1, 0x1c($sp)
/* 4D338 8005CB38 6000A38F */  lw         $v1, 0x60($sp)
/* 4D33C 8005CB3C 12380000 */  mflo       $a3
/* 4D340 8005CB40 1769010C */  jal        FUN_8005a45c
/* 4D344 8005CB44 21386700 */   addu      $a3, $v1, $a3
/* 4D348 8005CB48 0100F726 */  addiu      $s7, $s7, 1
.L8005CB4C:
/* 4D34C 8005CB4C 21987402 */  addu       $s3, $s3, $s4
/* 4D350 8005CB50 23883402 */  subu       $s1, $s1, $s4
.L8005CB54:
/* 4D354 8005CB54 01005226 */  addiu      $s2, $s2, 1
/* 4D358 8005CB58 00004292 */  lbu        $v0, ($s2)
/* 4D35C 8005CB5C 00000000 */  nop
/* 4D360 8005CB60 BEFF4014 */  bnez       $v0, .L8005CA5C
/* 4D364 8005CB64 2A10D702 */   slt       $v0, $s6, $s7
/* 4D368 8005CB68 EA720108 */  j          .L8005CBA8
/* 4D36C 8005CB6C 00000000 */   nop
.L8005CB70:
/* 4D370 8005CB70 9000A48F */  lw         $a0, 0x90($sp)
/* 4D374 8005CB74 5000A68F */  lw         $a2, 0x50($sp)
/* 4D378 8005CB78 5400A78F */  lw         $a3, 0x54($sp)
/* 4D37C 8005CB7C 396D010C */  jal        FUN_8005b4e4
/* 4D380 8005CB80 2128C002 */   addu      $a1, $s6, $zero
/* 4D384 8005CB84 A800A48F */  lw         $a0, 0xa8($sp)
/* 4D388 8005CB88 A800A68F */  lw         $a2, 0xa8($sp)
/* 4D38C 8005CB8C 2128C002 */  addu       $a1, $s6, $zero
/* 4D390 8005CB90 1000A4AF */  sw         $a0, 0x10($sp)
/* 4D394 8005CB94 9000A48F */  lw         $a0, 0x90($sp)
/* 4D398 8005CB98 EB6C010C */  jal        FUN_8005b3ac
/* 4D39C 8005CB9C 2138C000 */   addu      $a3, $a2, $zero
/* 4D3A0 8005CBA0 0100D626 */  addiu      $s6, $s6, 1
.L8005CBA4:
/* 4D3A4 8005CBA4 2A10D702 */  slt        $v0, $s6, $s7
.L8005CBA8:
/* 4D3A8 8005CBA8 F1FF4014 */  bnez       $v0, .L8005CB70
/* 4D3AC 8005CBAC 2110E002 */   addu      $v0, $s7, $zero
/* 4D3B0 8005CBB0 8C00BF8F */  lw         $ra, 0x8c($sp)
/* 4D3B4 8005CBB4 8800BE8F */  lw         $fp, 0x88($sp)
/* 4D3B8 8005CBB8 8400B78F */  lw         $s7, 0x84($sp)
/* 4D3BC 8005CBBC 8000B68F */  lw         $s6, 0x80($sp)
/* 4D3C0 8005CBC0 7C00B58F */  lw         $s5, 0x7c($sp)
/* 4D3C4 8005CBC4 7800B48F */  lw         $s4, 0x78($sp)
/* 4D3C8 8005CBC8 7400B38F */  lw         $s3, 0x74($sp)
/* 4D3CC 8005CBCC 7000B28F */  lw         $s2, 0x70($sp)
/* 4D3D0 8005CBD0 6C00B18F */  lw         $s1, 0x6c($sp)
/* 4D3D4 8005CBD4 6800B08F */  lw         $s0, 0x68($sp)
/* 4D3D8 8005CBD8 0800E003 */  jr         $ra
/* 4D3DC 8005CBDC 9000BD27 */   addiu     $sp, $sp, 0x90
