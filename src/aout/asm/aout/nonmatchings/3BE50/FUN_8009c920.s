.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches


glabel FUN_8009c920
/* 8D120 8009C920 B0FFBD27 */  addiu      $sp, $sp, -0x50
/* 8D124 8009C924 3C00B5AF */  sw         $s5, 0x3c($sp)
/* 8D128 8009C928 21A88000 */  addu       $s5, $a0, $zero
/* 8D12C 8009C92C 4C00BFAF */  sw         $ra, 0x4c($sp)
/* 8D130 8009C930 4800BEAF */  sw         $fp, 0x48($sp)
/* 8D134 8009C934 4400B7AF */  sw         $s7, 0x44($sp)
/* 8D138 8009C938 4000B6AF */  sw         $s6, 0x40($sp)
/* 8D13C 8009C93C 3800B4AF */  sw         $s4, 0x38($sp)
/* 8D140 8009C940 3400B3AF */  sw         $s3, 0x34($sp)
/* 8D144 8009C944 3000B2AF */  sw         $s2, 0x30($sp)
/* 8D148 8009C948 2C00B1AF */  sw         $s1, 0x2c($sp)
/* 8D14C 8009C94C 2800B0AF */  sw         $s0, 0x28($sp)
/* 8D150 8009C950 2400A28E */  lw         $v0, 0x24($s5)
/* 8D154 8009C954 00000000 */  nop
/* 8D158 8009C958 AD004014 */  bnez       $v0, .L8009CC10
/* 8D15C 8009C95C 2000A0AE */   sw        $zero, 0x20($s5)
/* 8D160 8009C960 21800000 */  addu       $s0, $zero, $zero
/* 8D164 8009C964 21200000 */  addu       $a0, $zero, $zero
/* 8D168 8009C968 FA56010C */  jal        FUN_80055be8
/* 8D16C 8009C96C 0F000524 */   addiu     $a1, $zero, 0xf
/* 8D170 8009C970 21200000 */  addu       $a0, $zero, $zero
/* 8D174 8009C974 946B010C */  jal        FUN_8005ae50
/* 8D178 8009C978 FFFF0524 */   addiu     $a1, $zero, -1
/* 8D17C 8009C97C 21200000 */  addu       $a0, $zero, $zero
/* 8D180 8009C980 376C010C */  jal        FUN_8005b0dc
/* 8D184 8009C984 FC000524 */   addiu     $a1, $zero, 0xfc
/* 8D188 8009C988 0F80053C */  lui        $a1, %hi(D_800EFFA8)
/* 8D18C 8009C98C A8FFA224 */  addiu      $v0, $a1, %lo(D_800EFFA8)
/* 8D190 8009C990 7400448C */  lw         $a0, 0x74($v0)
/* 8D194 8009C994 1000A38E */  lw         $v1, 0x10($s5)
/* 8D198 8009C998 1400A28E */  lw         $v0, 0x14($s5)
/* 8D19C 8009C99C 23908300 */  subu       $s2, $a0, $v1
/* 8D1A0 8009C9A0 23888200 */  subu       $s1, $a0, $v0
/* 8D1A4 8009C9A4 01000224 */  addiu      $v0, $zero, 1
/* 8D1A8 8009C9A8 03004212 */  beq        $s2, $v0, .L8009C9B8
/* 8D1AC 8009C9AC 00000000 */   nop
/* 8D1B0 8009C9B0 03002216 */  bne        $s1, $v0, .L8009C9C0
/* 8D1B4 8009C9B4 00000000 */   nop
.L8009C9B8:
/* 8D1B8 8009C9B8 12CB020C */  jal        FUN_800b2c48
/* 8D1BC 8009C9BC 14000424 */   addiu     $a0, $zero, 0x14
.L8009C9C0:
/* 8D1C0 8009C9C0 95004006 */  bltz       $s2, .L8009CC18
/* 8D1C4 8009C9C4 1500422A */   slti      $v0, $s2, 0x15
/* 8D1C8 8009C9C8 15004010 */  beqz       $v0, .L8009CA20
/* 8D1CC 8009C9CC 21280000 */   addu      $a1, $zero, $zero
/* 8D1D0 8009C9D0 2000B026 */  addiu      $s0, $s5, 0x20
/* 8D1D4 8009C9D4 21200002 */  addu       $a0, $s0, $zero
/* 8D1D8 8009C9D8 21300000 */  addu       $a2, $zero, $zero
/* 8D1DC 8009C9DC 06000724 */  addiu      $a3, $zero, 6
/* 8D1E0 8009C9E0 08070224 */  addiu      $v0, $zero, 0x708
/* 8D1E4 8009C9E4 1000A2AF */  sw         $v0, 0x10($sp)
/* 8D1E8 8009C9E8 01000224 */  addiu      $v0, $zero, 1
/* 8D1EC 8009C9EC 1400A0AF */  sw         $zero, 0x14($sp)
/* 8D1F0 8009C9F0 1800A0AF */  sw         $zero, 0x18($sp)
/* 8D1F4 8009C9F4 D2F9010C */  jal        FUN_8007e748
/* 8D1F8 8009C9F8 1C00A2AF */   sw        $v0, 0x1c($sp)
/* 8D1FC 8009C9FC 21200002 */  addu       $a0, $s0, $zero
/* 8D200 8009CA00 21280000 */  addu       $a1, $zero, $zero
/* 8D204 8009CA04 21304000 */  addu       $a2, $v0, $zero
/* 8D208 8009CA08 59000724 */  addiu      $a3, $zero, 0x59
/* 8D20C 8009CA0C 14000224 */  addiu      $v0, $zero, 0x14
/* 8D210 8009CA10 1000A0AF */  sw         $zero, 0x10($sp)
/* 8D214 8009CA14 1400B2AF */  sw         $s2, 0x14($sp)
/* 8D218 8009CA18 D2720208 */  j          .L8009CB48
/* 8D21C 8009CA1C 1800A2AF */   sw        $v0, 0x18($sp)
.L8009CA20:
/* 8D220 8009CA20 4700422A */  slti       $v0, $s2, 0x47
/* 8D224 8009CA24 13004010 */  beqz       $v0, .L8009CA74
/* 8D228 8009CA28 2000A426 */   addiu     $a0, $s5, 0x20
/* 8D22C 8009CA2C 21280000 */  addu       $a1, $zero, $zero
/* 8D230 8009CA30 21300000 */  addu       $a2, $zero, $zero
/* 8D234 8009CA34 06000724 */  addiu      $a3, $zero, 6
/* 8D238 8009CA38 08070224 */  addiu      $v0, $zero, 0x708
/* 8D23C 8009CA3C 01000324 */  addiu      $v1, $zero, 1
/* 8D240 8009CA40 ECFF5126 */  addiu      $s1, $s2, -0x14
/* 8D244 8009CA44 32001024 */  addiu      $s0, $zero, 0x32
/* 8D248 8009CA48 1000A2AF */  sw         $v0, 0x10($sp)
/* 8D24C 8009CA4C 1400A3AF */  sw         $v1, 0x14($sp)
/* 8D250 8009CA50 1800B1AF */  sw         $s1, 0x18($sp)
/* 8D254 8009CA54 D2F9010C */  jal        FUN_8007e748
/* 8D258 8009CA58 1C00B0AF */   sw        $s0, 0x1c($sp)
/* 8D25C 8009CA5C 2120A002 */  addu       $a0, $s5, $zero
/* 8D260 8009CA60 21280000 */  addu       $a1, $zero, $zero
/* 8D264 8009CA64 21304000 */  addu       $a2, $v0, $zero
/* 8D268 8009CA68 21382002 */  addu       $a3, $s1, $zero
/* 8D26C 8009CA6C B3720208 */  j          .L8009CACC
/* 8D270 8009CA70 1000B0AF */   sw        $s0, 0x10($sp)
.L8009CA74:
/* 8D274 8009CA74 1400A38E */  lw         $v1, 0x14($s5)
/* 8D278 8009CA78 FFFF0224 */  addiu      $v0, $zero, -1
/* 8D27C 8009CA7C 17006214 */  bne        $v1, $v0, .L8009CADC
/* 8D280 8009CA80 3300222A */   slti      $v0, $s1, 0x33
/* 8D284 8009CA84 2000A426 */  addiu      $a0, $s5, 0x20
/* 8D288 8009CA88 21280000 */  addu       $a1, $zero, $zero
/* 8D28C 8009CA8C 21300000 */  addu       $a2, $zero, $zero
/* 8D290 8009CA90 06000724 */  addiu      $a3, $zero, 6
/* 8D294 8009CA94 08070224 */  addiu      $v0, $zero, 0x708
/* 8D298 8009CA98 02000324 */  addiu      $v1, $zero, 2
/* 8D29C 8009CA9C 1000A2AF */  sw         $v0, 0x10($sp)
/* 8D2A0 8009CAA0 01000224 */  addiu      $v0, $zero, 1
/* 8D2A4 8009CAA4 1400A3AF */  sw         $v1, 0x14($sp)
/* 8D2A8 8009CAA8 1800A2AF */  sw         $v0, 0x18($sp)
/* 8D2AC 8009CAAC D2F9010C */  jal        FUN_8007e748
/* 8D2B0 8009CAB0 1C00A2AF */   sw        $v0, 0x1c($sp)
/* 8D2B4 8009CAB4 2120A002 */  addu       $a0, $s5, $zero
/* 8D2B8 8009CAB8 21280000 */  addu       $a1, $zero, $zero
/* 8D2BC 8009CABC 21304000 */  addu       $a2, $v0, $zero
/* 8D2C0 8009CAC0 46000724 */  addiu      $a3, $zero, 0x46
/* 8D2C4 8009CAC4 46000224 */  addiu      $v0, $zero, 0x46
/* 8D2C8 8009CAC8 1000A2AF */  sw         $v0, 0x10($sp)
.L8009CACC:
/* 8D2CC 8009CACC 5868020C */  jal        FUN_8009a160
/* 8D2D0 8009CAD0 00000000 */   nop
/* 8D2D4 8009CAD4 06730208 */  j          .L8009CC18
/* 8D2D8 8009CAD8 21804000 */   addu      $s0, $v0, $zero
.L8009CADC:
/* 8D2DC 8009CADC 1E004010 */  beqz       $v0, .L8009CB58
/* 8D2E0 8009CAE0 2000B226 */   addiu     $s2, $s5, 0x20
/* 8D2E4 8009CAE4 21204002 */  addu       $a0, $s2, $zero
/* 8D2E8 8009CAE8 21280000 */  addu       $a1, $zero, $zero
/* 8D2EC 8009CAEC 21300000 */  addu       $a2, $zero, $zero
/* 8D2F0 8009CAF0 06000724 */  addiu      $a3, $zero, 6
/* 8D2F4 8009CAF4 08070224 */  addiu      $v0, $zero, 0x708
/* 8D2F8 8009CAF8 32003126 */  addiu      $s1, $s1, 0x32
/* 8D2FC 8009CAFC 32001024 */  addiu      $s0, $zero, 0x32
/* 8D300 8009CB00 1000A2AF */  sw         $v0, 0x10($sp)
/* 8D304 8009CB04 1400A0AF */  sw         $zero, 0x14($sp)
/* 8D308 8009CB08 1800B1AF */  sw         $s1, 0x18($sp)
/* 8D30C 8009CB0C D2F9010C */  jal        FUN_8007e748
/* 8D310 8009CB10 1C00B0AF */   sw        $s0, 0x1c($sp)
/* 8D314 8009CB14 2120A002 */  addu       $a0, $s5, $zero
/* 8D318 8009CB18 21280000 */  addu       $a1, $zero, $zero
/* 8D31C 8009CB1C 21304000 */  addu       $a2, $v0, $zero
/* 8D320 8009CB20 21382002 */  addu       $a3, $s1, $zero
/* 8D324 8009CB24 5868020C */  jal        FUN_8009a160
/* 8D328 8009CB28 1000B0AF */   sw        $s0, 0x10($sp)
/* 8D32C 8009CB2C 21204002 */  addu       $a0, $s2, $zero
/* 8D330 8009CB30 21280000 */  addu       $a1, $zero, $zero
/* 8D334 8009CB34 21304000 */  addu       $a2, $v0, $zero
/* 8D338 8009CB38 59000724 */  addiu      $a3, $zero, 0x59
/* 8D33C 8009CB3C 1000A0AF */  sw         $zero, 0x10($sp)
/* 8D340 8009CB40 1400B1AF */  sw         $s1, 0x14($sp)
/* 8D344 8009CB44 1800B0AF */  sw         $s0, 0x18($sp)
.L8009CB48:
/* 8D348 8009CB48 C4F6010C */  jal        FUN_8007db10
/* 8D34C 8009CB4C 00000000 */   nop
/* 8D350 8009CB50 06730208 */  j          .L8009CC18
/* 8D354 8009CB54 21804000 */   addu      $s0, $v0, $zero
.L8009CB58:
/* 8D358 8009CB58 4600222A */  slti       $v0, $s1, 0x46
/* 8D35C 8009CB5C 2F004014 */  bnez       $v0, .L8009CC1C
/* 8D360 8009CB60 21200000 */   addu      $a0, $zero, $zero
/* 8D364 8009CB64 46000224 */  addiu      $v0, $zero, 0x46
/* 8D368 8009CB68 2C002212 */  beq        $s1, $v0, .L8009CC1C
/* 8D36C 8009CB6C 07000B24 */   addiu     $t3, $zero, 7
/* 8D370 8009CB70 02000A24 */  addiu      $t2, $zero, 2
/* 8D374 8009CB74 1B80033C */  lui        $v1, %hi(D_801B2B48)
/* 8D378 8009CB78 482B6924 */  addiu      $t1, $v1, %lo(D_801B2B48)
/* 8D37C 8009CB7C 0F80023C */  lui        $v0, %hi(D_800EBFB0)
/* 8D380 8009CB80 B0BF4224 */  addiu      $v0, $v0, %lo(D_800EBFB0)
/* 8D384 8009CB84 30034524 */  addiu      $a1, $v0, 0x330
/* 8D388 8009CB88 0F80023C */  lui        $v0, %hi(D_800F0028)
/* 8D38C 8009CB8C 28004824 */  addiu      $t0, $v0, %lo(D_800F0028)
/* 8D390 8009CB90 21200001 */  addu       $a0, $t0, $zero
/* 8D394 8009CB94 0100063C */  lui        $a2, 1
/* 8D398 8009CB98 7C42C634 */  ori        $a2, $a2, 0x427c
/* 8D39C 8009CB9C 01000724 */  addiu      $a3, $zero, 1
.L8009CBA0:
/* 8D3A0 8009CBA0 8A008290 */  lbu        $v0, 0x8a($a0)
/* 8D3A4 8009CBA4 00000000 */  nop
/* 8D3A8 8009CBA8 15004B10 */  beq        $v0, $t3, .L8009CC00
/* 8D3AC 8009CBAC 00000000 */   nop
/* 8D3B0 8009CBB0 13004010 */  beqz       $v0, .L8009CC00
/* 8D3B4 8009CBB4 00000000 */   nop
/* 8D3B8 8009CBB8 20000281 */  lb         $v0, 0x20($t0)
/* 8D3BC 8009CBBC 00000000 */  nop
/* 8D3C0 8009CBC0 08004A14 */  bne        $v0, $t2, .L8009CBE4
/* 8D3C4 8009CBC4 00000000 */   nop
/* 8D3C8 8009CBC8 0000A28C */  lw         $v0, ($a1)
/* 8D3CC 8009CBCC 00000000 */  nop
/* 8D3D0 8009CBD0 80100200 */  sll        $v0, $v0, 2
/* 8D3D4 8009CBD4 21104900 */  addu       $v0, $v0, $t1
/* 8D3D8 8009CBD8 00004390 */  lbu        $v1, ($v0)
/* 8D3DC 8009CBDC 00730208 */  j          .L8009CC00
/* 8D3E0 8009CBE0 220003A1 */   sb        $v1, 0x22($t0)
.L8009CBE4:
/* 8D3E4 8009CBE4 0000A28C */  lw         $v0, ($a1)
/* 8D3E8 8009CBE8 00000000 */  nop
/* 8D3EC 8009CBEC 80100200 */  sll        $v0, $v0, 2
/* 8D3F0 8009CBF0 21104900 */  addu       $v0, $v0, $t1
/* 8D3F4 8009CBF4 00004390 */  lbu        $v1, ($v0)
/* 8D3F8 8009CBF8 00000000 */  nop
/* 8D3FC 8009CBFC 880083A0 */  sb         $v1, 0x88($a0)
.L8009CC00:
/* 8D400 8009CC00 0400A524 */  addiu      $a1, $a1, 4
/* 8D404 8009CC04 FFFFE724 */  addiu      $a3, $a3, -1
/* 8D408 8009CC08 E5FFE104 */  bgez       $a3, .L8009CBA0
/* 8D40C 8009CC0C 21208600 */   addu      $a0, $a0, $a2
.L8009CC10:
/* 8D410 8009CC10 FC730208 */  j          .L8009CFF0
/* 8D414 8009CC14 04000224 */   addiu     $v0, $zero, 4
.L8009CC18:
/* 8D418 8009CC18 21200000 */  addu       $a0, $zero, $zero
.L8009CC1C:
/* 8D41C 8009CC1C 1D6B010C */  jal        FUN_8005ac74
/* 8D420 8009CC20 21280002 */   addu      $a1, $s0, $zero
/* 8D424 8009CC24 9157010C */  jal        FUN_80055e44
/* 8D428 8009CC28 21200000 */   addu      $a0, $zero, $zero
/* 8D42C 8009CC2C 0F80033C */  lui        $v1, %hi(D_800EFFA8)
/* 8D430 8009CC30 A8FF6424 */  addiu      $a0, $v1, %lo(D_800EFFA8)
/* 8D434 8009CC34 7800838C */  lw         $v1, 0x78($a0)
/* 8D438 8009CC38 00000000 */  nop
/* 8D43C 8009CC3C 0A006228 */  slti       $v0, $v1, 0xa
/* 8D440 8009CC40 EB004014 */  bnez       $v0, .L8009CFF0
/* 8D444 8009CC44 21100000 */   addu      $v0, $zero, $zero
/* 8D448 8009CC48 7400858C */  lw         $a1, 0x74($a0)
/* 8D44C 8009CC4C 1000A28E */  lw         $v0, 0x10($s5)
/* 8D450 8009CC50 00000000 */  nop
/* 8D454 8009CC54 2310A200 */  subu       $v0, $a1, $v0
/* 8D458 8009CC58 47004228 */  slti       $v0, $v0, 0x47
/* 8D45C 8009CC5C E4004014 */  bnez       $v0, .L8009CFF0
/* 8D460 8009CC60 21100000 */   addu      $v0, $zero, $zero
/* 8D464 8009CC64 09070224 */  addiu      $v0, $zero, 0x709
/* 8D468 8009CC68 08006214 */  bne        $v1, $v0, .L8009CC8C
/* 8D46C 8009CC6C FFFF0224 */   addiu     $v0, $zero, -1
/* 8D470 8009CC70 1400A38E */  lw         $v1, 0x14($s5)
/* 8D474 8009CC74 00000000 */  nop
/* 8D478 8009CC78 04006214 */  bne        $v1, $v0, .L8009CC8C
/* 8D47C 8009CC7C 08070224 */   addiu     $v0, $zero, 0x708
/* 8D480 8009CC80 780082AC */  sw         $v0, 0x78($a0)
/* 8D484 8009CC84 13C8020C */  jal        FUN_800b204c
/* 8D488 8009CC88 1400A5AE */   sw        $a1, 0x14($s5)
.L8009CC8C:
/* 8D48C 8009CC8C 0F80043C */  lui        $a0, %hi(D_800EFFA8)
/* 8D490 8009CC90 A8FF8324 */  addiu      $v1, $a0, %lo(D_800EFFA8)
/* 8D494 8009CC94 7800628C */  lw         $v0, 0x78($v1)
/* 8D498 8009CC98 00000000 */  nop
/* 8D49C 8009CC9C 09074228 */  slti       $v0, $v0, 0x709
/* 8D4A0 8009CCA0 03004014 */  bnez       $v0, .L8009CCB0
/* 8D4A4 8009CCA4 01001724 */   addiu     $s7, $zero, 1
/* 8D4A8 8009CCA8 FC730208 */  j          .L8009CFF0
/* 8D4AC 8009CCAC 03000224 */   addiu     $v0, $zero, 3
.L8009CCB0:
/* 8D4B0 8009CCB0 07000724 */  addiu      $a3, $zero, 7
/* 8D4B4 8009CCB4 08000624 */  addiu      $a2, $zero, 8
/* 8D4B8 8009CCB8 0800B626 */  addiu      $s6, $s5, 8
/* 8D4BC 8009CCBC 2118C002 */  addu       $v1, $s6, $zero
/* 8D4C0 8009CCC0 0F80043C */  lui        $a0, %hi(D_800F0028)
/* 8D4C4 8009CCC4 28008224 */  addiu      $v0, $a0, %lo(D_800F0028)
/* 8D4C8 8009CCC8 8A004524 */  addiu      $a1, $v0, 0x8a
/* 8D4CC 8009CCCC 0100043C */  lui        $a0, 1
/* 8D4D0 8009CCD0 7C428434 */  ori        $a0, $a0, 0x427c
/* 8D4D4 8009CCD4 01001424 */  addiu      $s4, $zero, 1
.L8009CCD8:
/* 8D4D8 8009CCD8 0000A290 */  lbu        $v0, ($a1)
/* 8D4DC 8009CCDC 00000000 */  nop
/* 8D4E0 8009CCE0 08004710 */  beq        $v0, $a3, .L8009CD04
/* 8D4E4 8009CCE4 00000000 */   nop
/* 8D4E8 8009CCE8 06004010 */  beqz       $v0, .L8009CD04
/* 8D4EC 8009CCEC 00000000 */   nop
/* 8D4F0 8009CCF0 0000628C */  lw         $v0, ($v1)
/* 8D4F4 8009CCF4 00000000 */  nop
/* 8D4F8 8009CCF8 02004610 */  beq        $v0, $a2, .L8009CD04
/* 8D4FC 8009CCFC 00000000 */   nop
/* 8D500 8009CD00 21B80000 */  addu       $s7, $zero, $zero
.L8009CD04:
/* 8D504 8009CD04 04006324 */  addiu      $v1, $v1, 4
/* 8D508 8009CD08 FFFF9426 */  addiu      $s4, $s4, -1
/* 8D50C 8009CD0C F2FF8106 */  bgez       $s4, .L8009CCD8
/* 8D510 8009CD10 2128A400 */   addu      $a1, $a1, $a0
/* 8D514 8009CD14 21A00000 */  addu       $s4, $zero, $zero
/* 8D518 8009CD18 0F80023C */  lui        $v0, %hi(D_800F0028)
/* 8D51C 8009CD1C 28004224 */  addiu      $v0, $v0, %lo(D_800F0028)
/* 8D520 8009CD20 8A004224 */  addiu      $v0, $v0, 0x8a
/* 8D524 8009CD24 2000A2AF */  sw         $v0, 0x20($sp)
.L8009CD28:
/* 8D528 8009CD28 2000A28F */  lw         $v0, 0x20($sp)
/* 8D52C 8009CD2C 00000000 */  nop
/* 8D530 8009CD30 00004390 */  lbu        $v1, ($v0)
/* 8D534 8009CD34 07000224 */  addiu      $v0, $zero, 7
/* 8D538 8009CD38 03006214 */  bne        $v1, $v0, .L8009CD48
/* 8D53C 8009CD3C 21908002 */   addu      $s2, $s4, $zero
/* 8D540 8009CD40 01000224 */  addiu      $v0, $zero, 1
/* 8D544 8009CD44 23905400 */  subu       $s2, $v0, $s4
.L8009CD48:
/* 8D548 8009CD48 80181200 */  sll        $v1, $s2, 2
/* 8D54C 8009CD4C 2188C302 */  addu       $s1, $s6, $v1
/* 8D550 8009CD50 0000228E */  lw         $v0, ($s1)
/* 8D554 8009CD54 21F00000 */  addu       $fp, $zero, $zero
/* 8D558 8009CD58 0900422C */  sltiu      $v0, $v0, 9
/* 8D55C 8009CD5C 80004010 */  beqz       $v0, .L8009CF60
/* 8D560 8009CD60 21986000 */   addu      $s3, $v1, $zero
/* 8D564 8009CD64 23F8010C */  jal        FUN_8007e08c
/* 8D568 8009CD68 21208002 */   addu      $a0, $s4, $zero
/* 8D56C 8009CD6C 2B800200 */  sltu       $s0, $zero, $v0
/* 8D570 8009CD70 40F8010C */  jal        FUN_8007e100
/* 8D574 8009CD74 21208002 */   addu      $a0, $s4, $zero
/* 8D578 8009CD78 02004010 */  beqz       $v0, .L8009CD84
/* 8D57C 8009CD7C 00000000 */   nop
/* 8D580 8009CD80 FFFF1026 */  addiu      $s0, $s0, -1
.L8009CD84:
/* 8D584 8009CD84 5DF8010C */  jal        FUN_8007e174
/* 8D588 8009CD88 21208002 */   addu      $a0, $s4, $zero
/* 8D58C 8009CD8C 03004010 */  beqz       $v0, .L8009CD9C
/* 8D590 8009CD90 00000000 */   nop
/* 8D594 8009CD94 01001E24 */  addiu      $fp, $zero, 1
/* 8D598 8009CD98 21800000 */  addu       $s0, $zero, $zero
.L8009CD9C:
/* 8D59C 8009CD9C 4F000012 */  beqz       $s0, .L8009CEDC
/* 8D5A0 8009CDA0 0F80023C */   lui       $v0, %hi(D_800EBFB0)
/* 8D5A4 8009CDA4 B0BF4924 */  addiu      $t1, $v0, %lo(D_800EBFB0)
/* 8D5A8 8009CDA8 0000288E */  lw         $t0, ($s1)
/* 8D5AC 8009CDAC 07000224 */  addiu      $v0, $zero, 7
/* 8D5B0 8009CDB0 C0180800 */  sll        $v1, $t0, 3
/* 8D5B4 8009CDB4 23186800 */  subu       $v1, $v1, $t0
/* 8D5B8 8009CDB8 80180300 */  sll        $v1, $v1, 2
/* 8D5BC 8009CDBC 21186800 */  addu       $v1, $v1, $t0
/* 8D5C0 8009CDC0 80180300 */  sll        $v1, $v1, 2
/* 8D5C4 8009CDC4 21186900 */  addu       $v1, $v1, $t1
/* 8D5C8 8009CDC8 0000678C */  lw         $a3, ($v1)
/* 8D5CC 8009CDCC 2A000215 */  bne        $t0, $v0, .L8009CE78
/* 8D5D0 8009CDD0 2110D302 */   addu      $v0, $s6, $s3
/* 8D5D4 8009CDD4 0F80033C */  lui        $v1, %hi(D_800F0028)
/* 8D5D8 8009CDD8 28006A24 */  addiu      $t2, $v1, %lo(D_800F0028)
/* 8D5DC 8009CDDC 20004381 */  lb         $v1, 0x20($t2)
/* 8D5E0 8009CDE0 02000224 */  addiu      $v0, $zero, 2
/* 8D5E4 8009CDE4 24006214 */  bne        $v1, $v0, .L8009CE78
/* 8D5E8 8009CDE8 2110D302 */   addu      $v0, $s6, $s3
/* 8D5EC 8009CDEC 21286902 */  addu       $a1, $s3, $t1
/* 8D5F0 8009CDF0 3003A524 */  addiu      $a1, $a1, 0x330
/* 8D5F4 8009CDF4 0000A28C */  lw         $v0, ($a1)
/* 8D5F8 8009CDF8 00000000 */  nop
/* 8D5FC 8009CDFC 23105000 */  subu       $v0, $v0, $s0
/* 8D600 8009CE00 21104700 */  addu       $v0, $v0, $a3
/* 8D604 8009CE04 1A004700 */  div        $zero, $v0, $a3
/* 8D608 8009CE08 10300000 */  mfhi       $a2
/* 8D60C 8009CE0C 0200E014 */  bnez       $a3, .L8009CE18
/* 8D610 8009CE10 00000000 */   nop
/* 8D614 8009CE14 CD010000 */  break      0, 7
.L8009CE18:
/* 8D618 8009CE18 01000424 */   addiu     $a0, $zero, 1
/* 8D61C 8009CE1C 23209200 */  subu       $a0, $a0, $s2
/* 8D620 8009CE20 80380400 */  sll        $a3, $a0, 2
/* 8D624 8009CE24 2110E400 */  addu       $v0, $a3, $a0
/* 8D628 8009CE28 C0190200 */  sll        $v1, $v0, 7
/* 8D62C 8009CE2C 21104300 */  addu       $v0, $v0, $v1
/* 8D630 8009CE30 40110200 */  sll        $v0, $v0, 5
/* 8D634 8009CE34 23104400 */  subu       $v0, $v0, $a0
/* 8D638 8009CE38 80100200 */  sll        $v0, $v0, 2
/* 8D63C 8009CE3C 21104A00 */  addu       $v0, $v0, $t2
/* 8D640 8009CE40 8A004290 */  lbu        $v0, 0x8a($v0)
/* 8D644 8009CE44 00000000 */  nop
/* 8D648 8009CE48 07004810 */  beq        $v0, $t0, .L8009CE68
/* 8D64C 8009CE4C 0000A6AC */   sw        $a2, ($a1)
/* 8D650 8009CE50 05004010 */  beqz       $v0, .L8009CE68
/* 8D654 8009CE54 30032225 */   addiu     $v0, $t1, 0x330
/* 8D658 8009CE58 21186202 */  addu       $v1, $s3, $v0
/* 8D65C 8009CE5C 0000648C */  lw         $a0, ($v1)
/* 8D660 8009CE60 2110E200 */  addu       $v0, $a3, $v0
/* 8D664 8009CE64 000044AC */  sw         $a0, ($v0)
.L8009CE68:
/* 8D668 8009CE68 12CB020C */  jal        FUN_800b2c48
/* 8D66C 8009CE6C 0A000424 */   addiu     $a0, $zero, 0xa
/* 8D670 8009CE70 B7730208 */  j          .L8009CEDC
/* 8D674 8009CE74 00000000 */   nop
.L8009CE78:
/* 8D678 8009CE78 0000428C */  lw         $v0, ($v0)
/* 8D67C 8009CE7C 08000324 */  addiu      $v1, $zero, 8
/* 8D680 8009CE80 16004310 */  beq        $v0, $v1, .L8009CEDC
/* 8D684 8009CE84 C0180200 */   sll       $v1, $v0, 3
/* 8D688 8009CE88 23186200 */  subu       $v1, $v1, $v0
/* 8D68C 8009CE8C 80180300 */  sll        $v1, $v1, 2
/* 8D690 8009CE90 21186200 */  addu       $v1, $v1, $v0
/* 8D694 8009CE94 80180300 */  sll        $v1, $v1, 2
/* 8D698 8009CE98 21186302 */  addu       $v1, $s3, $v1
/* 8D69C 8009CE9C 0F80023C */  lui        $v0, %hi(D_800EBFB0)
/* 8D6A0 8009CEA0 B0BF4224 */  addiu      $v0, $v0, %lo(D_800EBFB0)
/* 8D6A4 8009CEA4 04004424 */  addiu      $a0, $v0, 4
/* 8D6A8 8009CEA8 21186400 */  addu       $v1, $v1, $a0
/* 8D6AC 8009CEAC 0000628C */  lw         $v0, ($v1)
/* 8D6B0 8009CEB0 00000000 */  nop
/* 8D6B4 8009CEB4 23105000 */  subu       $v0, $v0, $s0
/* 8D6B8 8009CEB8 21104700 */  addu       $v0, $v0, $a3
/* 8D6BC 8009CEBC 1A004700 */  div        $zero, $v0, $a3
/* 8D6C0 8009CEC0 10280000 */  mfhi       $a1
/* 8D6C4 8009CEC4 0200E014 */  bnez       $a3, .L8009CED0
/* 8D6C8 8009CEC8 00000000 */   nop
/* 8D6CC 8009CECC CD010000 */  break      0, 7
.L8009CED0:
/* 8D6D0 8009CED0 0A000424 */   addiu     $a0, $zero, 0xa
/* 8D6D4 8009CED4 12CB020C */  jal        FUN_800b2c48
/* 8D6D8 8009CED8 000065AC */   sw        $a1, ($v1)
.L8009CEDC:
/* 8D6DC 8009CEDC 2100C013 */  beqz       $fp, .L8009CF64
/* 8D6E0 8009CEE0 0100023C */   lui       $v0, 1
/* 8D6E4 8009CEE4 8AF8010C */  jal        FUN_8007e228
/* 8D6E8 8009CEE8 21208002 */   addu      $a0, $s4, $zero
/* 8D6EC 8009CEEC 05004014 */  bnez       $v0, .L8009CF04
/* 8D6F0 8009CEF0 2118D302 */   addu      $v1, $s6, $s3
/* 8D6F4 8009CEF4 A7F8010C */  jal        FUN_8007e29c
/* 8D6F8 8009CEF8 21208002 */   addu      $a0, $s4, $zero
/* 8D6FC 8009CEFC 0A004010 */  beqz       $v0, .L8009CF28
/* 8D700 8009CF00 2118D302 */   addu      $v1, $s6, $s3
.L8009CF04:
/* 8D704 8009CF04 0000628C */  lw         $v0, ($v1)
/* 8D708 8009CF08 00000000 */  nop
/* 8D70C 8009CF0C 14004018 */  blez       $v0, .L8009CF60
/* 8D710 8009CF10 FFFF4224 */   addiu     $v0, $v0, -1
/* 8D714 8009CF14 000062AC */  sw         $v0, ($v1)
/* 8D718 8009CF18 12CB020C */  jal        FUN_800b2c48
/* 8D71C 8009CF1C 0D000424 */   addiu     $a0, $zero, 0xd
/* 8D720 8009CF20 D9730208 */  j          .L8009CF64
/* 8D724 8009CF24 0100023C */   lui       $v0, 1
.L8009CF28:
/* 8D728 8009CF28 0000648C */  lw         $a0, ($v1)
/* 8D72C 8009CF2C 08000224 */  addiu      $v0, $zero, 8
/* 8D730 8009CF30 08008214 */  bne        $a0, $v0, .L8009CF54
/* 8D734 8009CF34 01008224 */   addiu     $v0, $a0, 1
/* 8D738 8009CF38 0A00E012 */  beqz       $s7, .L8009CF64
/* 8D73C 8009CF3C 0100023C */   lui       $v0, 1
/* 8D740 8009CF40 0100F726 */  addiu      $s7, $s7, 1
/* 8D744 8009CF44 12CB020C */  jal        FUN_800b2c48
/* 8D748 8009CF48 02000424 */   addiu     $a0, $zero, 2
/* 8D74C 8009CF4C D9730208 */  j          .L8009CF64
/* 8D750 8009CF50 0100023C */   lui       $v0, 1
.L8009CF54:
/* 8D754 8009CF54 000062AC */  sw         $v0, ($v1)
/* 8D758 8009CF58 12CB020C */  jal        FUN_800b2c48
/* 8D75C 8009CF5C 0B000424 */   addiu     $a0, $zero, 0xb
.L8009CF60:
/* 8D760 8009CF60 0100023C */  lui        $v0, 1
.L8009CF64:
/* 8D764 8009CF64 7C424234 */  ori        $v0, $v0, 0x427c
/* 8D768 8009CF68 2000A38F */  lw         $v1, 0x20($sp)
/* 8D76C 8009CF6C 01009426 */  addiu      $s4, $s4, 1
/* 8D770 8009CF70 21186200 */  addu       $v1, $v1, $v0
/* 8D774 8009CF74 0200822A */  slti       $v0, $s4, 2
/* 8D778 8009CF78 6BFF4014 */  bnez       $v0, .L8009CD28
/* 8D77C 8009CF7C 2000A3AF */   sw        $v1, 0x20($sp)
/* 8D780 8009CF80 0200E22A */  slti       $v0, $s7, 2
/* 8D784 8009CF84 10004014 */  bnez       $v0, .L8009CFC8
/* 8D788 8009CF88 0F80033C */   lui       $v1, 0x800f
/* 8D78C 8009CF8C 0F80023C */  lui        $v0, %hi(D_800EFFA8)
/* 8D790 8009CF90 A8FF4424 */  addiu      $a0, $v0, %lo(D_800EFFA8)
/* 8D794 8009CF94 7400838C */  lw         $v1, 0x74($a0)
/* 8D798 8009CF98 1000A28E */  lw         $v0, 0x10($s5)
/* 8D79C 8009CF9C 00000000 */  nop
/* 8D7A0 8009CFA0 23106200 */  subu       $v0, $v1, $v0
/* 8D7A4 8009CFA4 47004228 */  slti       $v0, $v0, 0x47
/* 8D7A8 8009CFA8 06004014 */  bnez       $v0, .L8009CFC4
/* 8D7AC 8009CFAC 08070224 */   addiu     $v0, $zero, 0x708
/* 8D7B0 8009CFB0 780082AC */  sw         $v0, 0x78($a0)
/* 8D7B4 8009CFB4 FFFF0224 */  addiu      $v0, $zero, -1
/* 8D7B8 8009CFB8 1400A3AE */  sw         $v1, 0x14($s5)
/* 8D7BC 8009CFBC 13C8020C */  jal        FUN_800b204c
/* 8D7C0 8009CFC0 1C00A2AE */   sw        $v0, 0x1c($s5)
.L8009CFC4:
/* 8D7C4 8009CFC4 0F80033C */  lui        $v1, %hi(D_800EFFA8)
.L8009CFC8:
/* 8D7C8 8009CFC8 A8FF6224 */  addiu      $v0, $v1, %lo(D_800EFFA8)
/* 8D7CC 8009CFCC 7800448C */  lw         $a0, 0x78($v0)
/* 8D7D0 8009CFD0 08070324 */  addiu      $v1, $zero, 0x708
/* 8D7D4 8009CFD4 06008314 */  bne        $a0, $v1, .L8009CFF0
/* 8D7D8 8009CFD8 01000224 */   addiu     $v0, $zero, 1
/* 8D7DC 8009CFDC 1400A48E */  lw         $a0, 0x14($s5)
/* 8D7E0 8009CFE0 FFFF0324 */  addiu      $v1, $zero, -1
/* 8D7E4 8009CFE4 02008314 */  bne        $a0, $v1, .L8009CFF0
/* 8D7E8 8009CFE8 02000224 */   addiu     $v0, $zero, 2
/* 8D7EC 8009CFEC 01000224 */  addiu      $v0, $zero, 1
.L8009CFF0:
/* 8D7F0 8009CFF0 4C00BF8F */  lw         $ra, 0x4c($sp)
/* 8D7F4 8009CFF4 4800BE8F */  lw         $fp, 0x48($sp)
/* 8D7F8 8009CFF8 4400B78F */  lw         $s7, 0x44($sp)
/* 8D7FC 8009CFFC 4000B68F */  lw         $s6, 0x40($sp)
/* 8D800 8009D000 3C00B58F */  lw         $s5, 0x3c($sp)
/* 8D804 8009D004 3800B48F */  lw         $s4, 0x38($sp)
/* 8D808 8009D008 3400B38F */  lw         $s3, 0x34($sp)
/* 8D80C 8009D00C 3000B28F */  lw         $s2, 0x30($sp)
/* 8D810 8009D010 2C00B18F */  lw         $s1, 0x2c($sp)
/* 8D814 8009D014 2800B08F */  lw         $s0, 0x28($sp)
/* 8D818 8009D018 0800E003 */  jr         $ra
/* 8D81C 8009D01C 5000BD27 */   addiu     $sp, $sp, 0x50
