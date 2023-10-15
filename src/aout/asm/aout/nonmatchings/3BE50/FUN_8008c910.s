.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches


glabel FUN_8008c910
/* 7D110 8008C910 78FFBD27 */  addiu      $sp, $sp, -0x88
/* 7D114 8008C914 6800B2AF */  sw         $s2, 0x68($sp)
/* 7D118 8008C918 21908000 */  addu       $s2, $a0, $zero
/* 7D11C 8008C91C 8400BFAF */  sw         $ra, 0x84($sp)
/* 7D120 8008C920 8000BEAF */  sw         $fp, 0x80($sp)
/* 7D124 8008C924 7C00B7AF */  sw         $s7, 0x7c($sp)
/* 7D128 8008C928 7800B6AF */  sw         $s6, 0x78($sp)
/* 7D12C 8008C92C 7400B5AF */  sw         $s5, 0x74($sp)
/* 7D130 8008C930 7000B4AF */  sw         $s4, 0x70($sp)
/* 7D134 8008C934 6C00B3AF */  sw         $s3, 0x6c($sp)
/* 7D138 8008C938 6400B1AF */  sw         $s1, 0x64($sp)
/* 7D13C 8008C93C 6000B0AF */  sw         $s0, 0x60($sp)
/* 7D140 8008C940 F858020C */  jal        FUN_800963e0
/* 7D144 8008C944 3800A0AF */   sw        $zero, 0x38($sp)
/* 7D148 8008C948 D00A438E */  lw         $v1, 0xad0($s2)
/* 7D14C 8008C94C CC0A428E */  lw         $v0, 0xacc($s2)
/* 7D150 8008C950 3C00A0AF */  sw         $zero, 0x3c($sp)
/* 7D154 8008C954 06006210 */  beq        $v1, $v0, .L8008C970
/* 7D158 8008C958 E80A40AE */   sw        $zero, 0xae8($s2)
/* 7D15C 8008C95C 0759020C */  jal        FUN_8009641c
/* 7D160 8008C960 00000000 */   nop
/* 7D164 8008C964 0200043C */  lui        $a0, 2
/* 7D168 8008C968 0359020C */  jal        FUN_8009640c
/* 7D16C 8008C96C 25204400 */   or        $a0, $v0, $a0
.L8008C970:
/* 7D170 8008C970 21A00000 */  addu       $s4, $zero, $zero
/* 7D174 8008C974 21208002 */  addu       $a0, $s4, $zero
/* 7D178 8008C978 FA56010C */  jal        FUN_80055be8
/* 7D17C 8008C97C 0F000524 */   addiu     $a1, $zero, 0xf
/* 7D180 8008C980 21208002 */  addu       $a0, $s4, $zero
/* 7D184 8008C984 946B010C */  jal        FUN_8005ae50
/* 7D188 8008C988 FFFF0524 */   addiu     $a1, $zero, -1
/* 7D18C 8008C98C 21208002 */  addu       $a0, $s4, $zero
/* 7D190 8008C990 376C010C */  jal        FUN_8005b0dc
/* 7D194 8008C994 FC000524 */   addiu     $a1, $zero, 0xfc
/* 7D198 8008C998 02001024 */  addiu      $s0, $zero, 2
/* 7D19C 8008C99C 0F80023C */  lui        $v0, %hi(D_800F001C)
/* 7D1A0 8008C9A0 1C00448C */  lw         $a0, %lo(D_800F001C)($v0)
/* 7D1A4 8008C9A4 D80A428E */  lw         $v0, 0xad8($s2)
/* 7D1A8 8008C9A8 DC0A438E */  lw         $v1, 0xadc($s2)
/* 7D1AC 8008C9AC 23988200 */  subu       $s3, $a0, $v0
/* 7D1B0 8008C9B0 23A88300 */  subu       $s5, $a0, $v1
/* 7D1B4 8008C9B4 0F80023C */  lui        $v0, %hi(D_800F0048)
/* 7D1B8 8008C9B8 48004280 */  lb         $v0, %lo(D_800F0048)($v0)
/* 7D1BC 8008C9BC 01000324 */  addiu      $v1, $zero, 1
/* 7D1C0 8008C9C0 02004314 */  bne        $v0, $v1, .L8008C9CC
/* 7D1C4 8008C9C4 21B08002 */   addu      $s6, $s4, $zero
/* 7D1C8 8008C9C8 05001024 */  addiu      $s0, $zero, 5
.L8008C9CC:
/* 7D1CC 8008C9CC 03006312 */  beq        $s3, $v1, .L8008C9DC
/* 7D1D0 8008C9D0 00000000 */   nop
/* 7D1D4 8008C9D4 0300A316 */  bne        $s5, $v1, .L8008C9E4
/* 7D1D8 8008C9D8 00000000 */   nop
.L8008C9DC:
/* 7D1DC 8008C9DC 12CB020C */  jal        FUN_800b2c48
/* 7D1E0 8008C9E0 14000424 */   addiu     $a0, $zero, 0x14
.L8008C9E4:
/* 7D1E4 8008C9E4 B4016006 */  bltz       $s3, .L8008D0B8
/* 7D1E8 8008C9E8 1500622A */   slti      $v0, $s3, 0x15
/* 7D1EC 8008C9EC 15004010 */  beqz       $v0, .L8008CA44
/* 7D1F0 8008C9F0 E80A5126 */   addiu     $s1, $s2, 0xae8
/* 7D1F4 8008C9F4 21202002 */  addu       $a0, $s1, $zero
/* 7D1F8 8008C9F8 2128C002 */  addu       $a1, $s6, $zero
/* 7D1FC 8008C9FC 21308002 */  addu       $a2, $s4, $zero
/* 7D200 8008CA00 21380002 */  addu       $a3, $s0, $zero
/* 7D204 8008CA04 18150224 */  addiu      $v0, $zero, 0x1518
/* 7D208 8008CA08 01001024 */  addiu      $s0, $zero, 1
/* 7D20C 8008CA0C 1000A2AF */  sw         $v0, 0x10($sp)
/* 7D210 8008CA10 1400B0AF */  sw         $s0, 0x14($sp)
/* 7D214 8008CA14 1800A0AF */  sw         $zero, 0x18($sp)
/* 7D218 8008CA18 D2F9010C */  jal        FUN_8007e748
/* 7D21C 8008CA1C 1C00B0AF */   sw        $s0, 0x1c($sp)
/* 7D220 8008CA20 21202002 */  addu       $a0, $s1, $zero
/* 7D224 8008CA24 2128C002 */  addu       $a1, $s6, $zero
/* 7D228 8008CA28 21304000 */  addu       $a2, $v0, $zero
/* 7D22C 8008CA2C 59000724 */  addiu      $a3, $zero, 0x59
/* 7D230 8008CA30 14000224 */  addiu      $v0, $zero, 0x14
/* 7D234 8008CA34 1000B0AF */  sw         $s0, 0x10($sp)
/* 7D238 8008CA38 1400B3AF */  sw         $s3, 0x14($sp)
/* 7D23C 8008CA3C FF320208 */  j          .L8008CBFC
/* 7D240 8008CA40 1800A2AF */   sw        $v0, 0x18($sp)
.L8008CA44:
/* 7D244 8008CA44 4500622A */  slti       $v0, $s3, 0x45
/* 7D248 8008CA48 12004010 */  beqz       $v0, .L8008CA94
/* 7D24C 8008CA4C E80A4426 */   addiu     $a0, $s2, 0xae8
/* 7D250 8008CA50 2128C002 */  addu       $a1, $s6, $zero
/* 7D254 8008CA54 21308002 */  addu       $a2, $s4, $zero
/* 7D258 8008CA58 21380002 */  addu       $a3, $s0, $zero
/* 7D25C 8008CA5C 18150224 */  addiu      $v0, $zero, 0x1518
/* 7D260 8008CA60 1000A2AF */  sw         $v0, 0x10($sp)
/* 7D264 8008CA64 01000224 */  addiu      $v0, $zero, 1
/* 7D268 8008CA68 ECFF7126 */  addiu      $s1, $s3, -0x14
/* 7D26C 8008CA6C 30001024 */  addiu      $s0, $zero, 0x30
/* 7D270 8008CA70 1400A2AF */  sw         $v0, 0x14($sp)
/* 7D274 8008CA74 1800B1AF */  sw         $s1, 0x18($sp)
/* 7D278 8008CA78 D2F9010C */  jal        FUN_8007e748
/* 7D27C 8008CA7C 1C00B0AF */   sw        $s0, 0x1c($sp)
/* 7D280 8008CA80 21204002 */  addu       $a0, $s2, $zero
/* 7D284 8008CA84 2128C002 */  addu       $a1, $s6, $zero
/* 7D288 8008CA88 21304000 */  addu       $a2, $v0, $zero
/* 7D28C 8008CA8C E2320208 */  j          .L8008CB88
/* 7D290 8008CA90 21382002 */   addu      $a3, $s1, $zero
.L8008CA94:
/* 7D294 8008CA94 DC0A438E */  lw         $v1, 0xadc($s2)
/* 7D298 8008CA98 FFFF0224 */  addiu      $v0, $zero, -1
/* 7D29C 8008CA9C 14006214 */  bne        $v1, $v0, .L8008CAF0
/* 7D2A0 8008CAA0 1500A22A */   slti      $v0, $s5, 0x15
/* 7D2A4 8008CAA4 E80A4426 */  addiu      $a0, $s2, 0xae8
/* 7D2A8 8008CAA8 2128C002 */  addu       $a1, $s6, $zero
/* 7D2AC 8008CAAC 21308002 */  addu       $a2, $s4, $zero
/* 7D2B0 8008CAB0 21380002 */  addu       $a3, $s0, $zero
/* 7D2B4 8008CAB4 18150224 */  addiu      $v0, $zero, 0x1518
/* 7D2B8 8008CAB8 1000A2AF */  sw         $v0, 0x10($sp)
/* 7D2BC 8008CABC 02000224 */  addiu      $v0, $zero, 2
/* 7D2C0 8008CAC0 1400A2AF */  sw         $v0, 0x14($sp)
/* 7D2C4 8008CAC4 01000224 */  addiu      $v0, $zero, 1
/* 7D2C8 8008CAC8 1800A2AF */  sw         $v0, 0x18($sp)
/* 7D2CC 8008CACC D2F9010C */  jal        FUN_8007e748
/* 7D2D0 8008CAD0 1C00A2AF */   sw        $v0, 0x1c($sp)
/* 7D2D4 8008CAD4 21204002 */  addu       $a0, $s2, $zero
/* 7D2D8 8008CAD8 2128C002 */  addu       $a1, $s6, $zero
/* 7D2DC 8008CADC 21304000 */  addu       $a2, $v0, $zero
/* 7D2E0 8008CAE0 30000724 */  addiu      $a3, $zero, 0x30
/* 7D2E4 8008CAE4 2110E000 */  addu       $v0, $a3, $zero
/* 7D2E8 8008CAE8 E3320208 */  j          .L8008CB8C
/* 7D2EC 8008CAEC 1000A2AF */   sw        $v0, 0x10($sp)
.L8008CAF0:
/* 7D2F0 8008CAF0 13004010 */  beqz       $v0, .L8008CB40
/* 7D2F4 8008CAF4 E80A4426 */   addiu     $a0, $s2, 0xae8
/* 7D2F8 8008CAF8 2128C002 */  addu       $a1, $s6, $zero
/* 7D2FC 8008CAFC 21308002 */  addu       $a2, $s4, $zero
/* 7D300 8008CB00 21380002 */  addu       $a3, $s0, $zero
/* 7D304 8008CB04 18150224 */  addiu      $v0, $zero, 0x1518
/* 7D308 8008CB08 1000A2AF */  sw         $v0, 0x10($sp)
/* 7D30C 8008CB0C 02000224 */  addiu      $v0, $zero, 2
/* 7D310 8008CB10 1400A2AF */  sw         $v0, 0x14($sp)
/* 7D314 8008CB14 01000224 */  addiu      $v0, $zero, 1
/* 7D318 8008CB18 1800A2AF */  sw         $v0, 0x18($sp)
/* 7D31C 8008CB1C D2F9010C */  jal        FUN_8007e748
/* 7D320 8008CB20 1C00A2AF */   sw        $v0, 0x1c($sp)
/* 7D324 8008CB24 21204002 */  addu       $a0, $s2, $zero
/* 7D328 8008CB28 2128C002 */  addu       $a1, $s6, $zero
/* 7D32C 8008CB2C 21304000 */  addu       $a2, $v0, $zero
/* 7D330 8008CB30 3000A726 */  addiu      $a3, $s5, 0x30
/* 7D334 8008CB34 30000224 */  addiu      $v0, $zero, 0x30
/* 7D338 8008CB38 E3320208 */  j          .L8008CB8C
/* 7D33C 8008CB3C 1000A2AF */   sw        $v0, 0x10($sp)
.L8008CB40:
/* 7D340 8008CB40 4500A22A */  slti       $v0, $s5, 0x45
/* 7D344 8008CB44 15004010 */  beqz       $v0, .L8008CB9C
/* 7D348 8008CB48 2128C002 */   addu      $a1, $s6, $zero
/* 7D34C 8008CB4C 21308002 */  addu       $a2, $s4, $zero
/* 7D350 8008CB50 21380002 */  addu       $a3, $s0, $zero
/* 7D354 8008CB54 18150224 */  addiu      $v0, $zero, 0x1518
/* 7D358 8008CB58 1000A2AF */  sw         $v0, 0x10($sp)
/* 7D35C 8008CB5C 01000224 */  addiu      $v0, $zero, 1
/* 7D360 8008CB60 1400A2AF */  sw         $v0, 0x14($sp)
/* 7D364 8008CB64 1C00A226 */  addiu      $v0, $s5, 0x1c
/* 7D368 8008CB68 30001024 */  addiu      $s0, $zero, 0x30
/* 7D36C 8008CB6C 1800A2AF */  sw         $v0, 0x18($sp)
/* 7D370 8008CB70 D2F9010C */  jal        FUN_8007e748
/* 7D374 8008CB74 1C00B0AF */   sw        $s0, 0x1c($sp)
/* 7D378 8008CB78 21204002 */  addu       $a0, $s2, $zero
/* 7D37C 8008CB7C 2128C002 */  addu       $a1, $s6, $zero
/* 7D380 8008CB80 21304000 */  addu       $a2, $v0, $zero
/* 7D384 8008CB84 2138B002 */  addu       $a3, $s5, $s0
.L8008CB88:
/* 7D388 8008CB88 1000B0AF */  sw         $s0, 0x10($sp)
.L8008CB8C:
/* 7D38C 8008CB8C BB31020C */  jal        FUN_8008c6ec
/* 7D390 8008CB90 00000000 */   nop
/* 7D394 8008CB94 2E340208 */  j          .L8008D0B8
/* 7D398 8008CB98 21A04000 */   addu      $s4, $v0, $zero
.L8008CB9C:
/* 7D39C 8008CB9C 5800A22A */  slti       $v0, $s5, 0x58
/* 7D3A0 8008CBA0 1A004010 */  beqz       $v0, .L8008CC0C
/* 7D3A4 8008CBA4 E80A5126 */   addiu     $s1, $s2, 0xae8
/* 7D3A8 8008CBA8 21202002 */  addu       $a0, $s1, $zero
/* 7D3AC 8008CBAC 2128C002 */  addu       $a1, $s6, $zero
/* 7D3B0 8008CBB0 21308002 */  addu       $a2, $s4, $zero
/* 7D3B4 8008CBB4 21380002 */  addu       $a3, $s0, $zero
/* 7D3B8 8008CBB8 18150224 */  addiu      $v0, $zero, 0x1518
/* 7D3BC 8008CBBC 1000A2AF */  sw         $v0, 0x10($sp)
/* 7D3C0 8008CBC0 D0FFA226 */  addiu      $v0, $s5, -0x30
/* 7D3C4 8008CBC4 14001024 */  addiu      $s0, $zero, 0x14
/* 7D3C8 8008CBC8 1400A0AF */  sw         $zero, 0x14($sp)
/* 7D3CC 8008CBCC 1800A2AF */  sw         $v0, 0x18($sp)
/* 7D3D0 8008CBD0 D2F9010C */  jal        FUN_8007e748
/* 7D3D4 8008CBD4 1C00B0AF */   sw        $s0, 0x1c($sp)
/* 7D3D8 8008CBD8 21202002 */  addu       $a0, $s1, $zero
/* 7D3DC 8008CBDC 2128C002 */  addu       $a1, $s6, $zero
/* 7D3E0 8008CBE0 21304000 */  addu       $a2, $v0, $zero
/* 7D3E4 8008CBE4 59000724 */  addiu      $a3, $zero, 0x59
/* 7D3E8 8008CBE8 58000224 */  addiu      $v0, $zero, 0x58
/* 7D3EC 8008CBEC 23105500 */  subu       $v0, $v0, $s5
/* 7D3F0 8008CBF0 1000A0AF */  sw         $zero, 0x10($sp)
/* 7D3F4 8008CBF4 1400A2AF */  sw         $v0, 0x14($sp)
/* 7D3F8 8008CBF8 1800B0AF */  sw         $s0, 0x18($sp)
.L8008CBFC:
/* 7D3FC 8008CBFC C4F6010C */  jal        FUN_8007db10
/* 7D400 8008CC00 00000000 */   nop
/* 7D404 8008CC04 2E340208 */  j          .L8008D0B8
/* 7D408 8008CC08 21A04000 */   addu      $s4, $v0, $zero
.L8008CC0C:
/* 7D40C 8008CC0C 58000224 */  addiu      $v0, $zero, 0x58
/* 7D410 8008CC10 840DA216 */  bne        $s5, $v0, .L80090224
/* 7D414 8008CC14 04000224 */   addiu     $v0, $zero, 4
/* 7D418 8008CC18 0F80023C */  lui        $v0, %hi(D_800F0028)
/* 7D41C 8008CC1C 28004424 */  addiu      $a0, $v0, %lo(D_800F0028)
/* 7D420 8008CC20 8A008390 */  lbu        $v1, 0x8a($a0)
/* 7D424 8008CC24 07000224 */  addiu      $v0, $zero, 7
/* 7D428 8008CC28 07006210 */  beq        $v1, $v0, .L8008CC48
/* 7D42C 8008CC2C 0F80023C */   lui       $v0, %hi(D_800F0028)
/* 7D430 8008CC30 06006010 */  beqz       $v1, .L8008CC4C
/* 7D434 8008CC34 28004224 */   addiu     $v0, $v0, %lo(D_800F0028)
/* 7D438 8008CC38 E6484292 */  lbu        $v0, 0x48e6($s2)
/* 7D43C 8008CC3C 00000000 */  nop
/* 7D440 8008CC40 880082A0 */  sb         $v0, 0x88($a0)
/* 7D444 8008CC44 0F80023C */  lui        $v0, %hi(D_800F0028)
.L8008CC48:
/* 7D448 8008CC48 28004224 */  addiu      $v0, $v0, %lo(D_800F0028)
.L8008CC4C:
/* 7D44C 8008CC4C 0100033C */  lui        $v1, 1
/* 7D450 8008CC50 21204300 */  addu       $a0, $v0, $v1
/* 7D454 8008CC54 06438390 */  lbu        $v1, 0x4306($a0)
/* 7D458 8008CC58 07000224 */  addiu      $v0, $zero, 7
/* 7D45C 8008CC5C 06006210 */  beq        $v1, $v0, .L8008CC78
/* 7D460 8008CC60 00000000 */   nop
/* 7D464 8008CC64 04006010 */  beqz       $v1, .L8008CC78
/* 7D468 8008CC68 00000000 */   nop
/* 7D46C 8008CC6C E7484292 */  lbu        $v0, 0x48e7($s2)
/* 7D470 8008CC70 00000000 */  nop
/* 7D474 8008CC74 044382A0 */  sb         $v0, 0x4304($a0)
.L8008CC78:
/* 7D478 8008CC78 9C0B4282 */  lb         $v0, 0xb9c($s2)
/* 7D47C 8008CC7C 00000000 */  nop
/* 7D480 8008CC80 3A004010 */  beqz       $v0, .L8008CD6C
/* 7D484 8008CC84 21280000 */   addu      $a1, $zero, $zero
/* 7D488 8008CC88 CC0A448E */  lw         $a0, 0xacc($s2)
/* 7D48C 8008CC8C 00000000 */  nop
/* 7D490 8008CC90 20008104 */  bgez       $a0, .L8008CD14
/* 7D494 8008CC94 23100400 */   negu      $v0, $a0
/* 7D498 8008CC98 0400438E */  lw         $v1, 4($s2)
/* 7D49C 8008CC9C 00000000 */  nop
/* 7D4A0 8008CCA0 001B0300 */  sll        $v1, $v1, 0xc
/* 7D4A4 8008CCA4 1A004300 */  div        $zero, $v0, $v1
/* 7D4A8 8008CCA8 02006014 */  bnez       $v1, .L8008CCB4
/* 7D4AC 8008CCAC 00000000 */   nop
/* 7D4B0 8008CCB0 0D000700 */  break      7
.L8008CCB4:
/* 7D4B4 8008CCB4 FFFF0124 */   addiu     $at, $zero, -1
/* 7D4B8 8008CCB8 04006114 */  bne        $v1, $at, .L8008CCCC
/* 7D4BC 8008CCBC 0080013C */   lui       $at, 0x8000
/* 7D4C0 8008CCC0 02004114 */  bne        $v0, $at, .L8008CCCC
/* 7D4C4 8008CCC4 00000000 */   nop
/* 7D4C8 8008CCC8 0D000600 */  break      6
.L8008CCCC:
/* 7D4CC 8008CCCC 10200000 */   mfhi      $a0
/* 7D4D0 8008CCD0 00000000 */  nop
/* 7D4D4 8008CCD4 23206400 */  subu       $a0, $v1, $a0
/* 7D4D8 8008CCD8 1A008300 */  div        $zero, $a0, $v1
/* 7D4DC 8008CCDC 02006014 */  bnez       $v1, .L8008CCE8
/* 7D4E0 8008CCE0 00000000 */   nop
/* 7D4E4 8008CCE4 0D000700 */  break      7
.L8008CCE8:
/* 7D4E8 8008CCE8 FFFF0124 */   addiu     $at, $zero, -1
/* 7D4EC 8008CCEC 04006114 */  bne        $v1, $at, .L8008CD00
/* 7D4F0 8008CCF0 0080013C */   lui       $at, 0x8000
/* 7D4F4 8008CCF4 02008114 */  bne        $a0, $at, .L8008CD00
/* 7D4F8 8008CCF8 00000000 */   nop
/* 7D4FC 8008CCFC 0D000600 */  break      6
.L8008CD00:
/* 7D500 8008CD00 10100000 */   mfhi      $v0
/* 7D504 8008CD04 00000000 */  nop
/* 7D508 8008CD08 03130200 */  sra        $v0, $v0, 0xc
/* 7D50C 8008CD0C 56330208 */  j          .L8008CD58
/* 7D510 8008CD10 40100200 */   sll       $v0, $v0, 1
.L8008CD14:
/* 7D514 8008CD14 0400428E */  lw         $v0, 4($s2)
/* 7D518 8008CD18 00000000 */  nop
/* 7D51C 8008CD1C 00130200 */  sll        $v0, $v0, 0xc
/* 7D520 8008CD20 1A008200 */  div        $zero, $a0, $v0
/* 7D524 8008CD24 02004014 */  bnez       $v0, .L8008CD30
/* 7D528 8008CD28 00000000 */   nop
/* 7D52C 8008CD2C 0D000700 */  break      7
.L8008CD30:
/* 7D530 8008CD30 FFFF0124 */   addiu     $at, $zero, -1
/* 7D534 8008CD34 04004114 */  bne        $v0, $at, .L8008CD48
/* 7D538 8008CD38 0080013C */   lui       $at, 0x8000
/* 7D53C 8008CD3C 02008114 */  bne        $a0, $at, .L8008CD48
/* 7D540 8008CD40 00000000 */   nop
/* 7D544 8008CD44 0D000600 */  break      6
.L8008CD48:
/* 7D548 8008CD48 10180000 */   mfhi      $v1
/* 7D54C 8008CD4C 00000000 */  nop
/* 7D550 8008CD50 031B0300 */  sra        $v1, $v1, 0xc
/* 7D554 8008CD54 40100300 */  sll        $v0, $v1, 1
.L8008CD58:
/* 7D558 8008CD58 21104202 */  addu       $v0, $s2, $v0
/* 7D55C 8008CD5C 18004284 */  lh         $v0, 0x18($v0)
/* 7D560 8008CD60 00000000 */  nop
/* 7D564 8008CD64 10004014 */  bnez       $v0, .L8008CDA8
/* 7D568 8008CD68 21280000 */   addu      $a1, $zero, $zero
.L8008CD6C:
/* 7D56C 8008CD6C FFFF0424 */  addiu      $a0, $zero, -1
/* 7D570 8008CD70 0F80023C */  lui        $v0, %hi(D_800F0028)
/* 7D574 8008CD74 28004324 */  addiu      $v1, $v0, %lo(D_800F0028)
/* 7D578 8008CD78 0100023C */  lui        $v0, 1
.L8008CD7C:
/* 7D57C 8008CD7C 7C424234 */  ori        $v0, $v0, 0x427c
/* 7D580 8008CD80 8C0060A0 */  sb         $zero, 0x8c($v1)
/* 7D584 8008CD84 8B0060A0 */  sb         $zero, 0x8b($v1)
/* 7D588 8008CD88 8E0064A4 */  sh         $a0, 0x8e($v1)
/* 7D58C 8008CD8C 21186200 */  addu       $v1, $v1, $v0
/* 7D590 8008CD90 0100A524 */  addiu      $a1, $a1, 1
/* 7D594 8008CD94 0200A228 */  slti       $v0, $a1, 2
/* 7D598 8008CD98 F8FF4014 */  bnez       $v0, .L8008CD7C
/* 7D59C 8008CD9C 0100023C */   lui       $v0, 1
/* 7D5A0 8008CDA0 F0330208 */  j          .L8008CFC0
/* 7D5A4 8008CDA4 0F80023C */   lui       $v0, 0x800f
.L8008CDA8:
/* 7D5A8 8008CDA8 CC0A448E */  lw         $a0, 0xacc($s2)
/* 7D5AC 8008CDAC 00000000 */  nop
/* 7D5B0 8008CDB0 20008104 */  bgez       $a0, .L8008CE34
/* 7D5B4 8008CDB4 23100400 */   negu      $v0, $a0
/* 7D5B8 8008CDB8 0400438E */  lw         $v1, 4($s2)
/* 7D5BC 8008CDBC 00000000 */  nop
/* 7D5C0 8008CDC0 001B0300 */  sll        $v1, $v1, 0xc
/* 7D5C4 8008CDC4 1A004300 */  div        $zero, $v0, $v1
/* 7D5C8 8008CDC8 02006014 */  bnez       $v1, .L8008CDD4
/* 7D5CC 8008CDCC 00000000 */   nop
/* 7D5D0 8008CDD0 0D000700 */  break      7
.L8008CDD4:
/* 7D5D4 8008CDD4 FFFF0124 */   addiu     $at, $zero, -1
/* 7D5D8 8008CDD8 04006114 */  bne        $v1, $at, .L8008CDEC
/* 7D5DC 8008CDDC 0080013C */   lui       $at, 0x8000
/* 7D5E0 8008CDE0 02004114 */  bne        $v0, $at, .L8008CDEC
/* 7D5E4 8008CDE4 00000000 */   nop
/* 7D5E8 8008CDE8 0D000600 */  break      6
.L8008CDEC:
/* 7D5EC 8008CDEC 10200000 */   mfhi      $a0
/* 7D5F0 8008CDF0 00000000 */  nop
/* 7D5F4 8008CDF4 23206400 */  subu       $a0, $v1, $a0
/* 7D5F8 8008CDF8 1A008300 */  div        $zero, $a0, $v1
/* 7D5FC 8008CDFC 02006014 */  bnez       $v1, .L8008CE08
/* 7D600 8008CE00 00000000 */   nop
/* 7D604 8008CE04 0D000700 */  break      7
.L8008CE08:
/* 7D608 8008CE08 FFFF0124 */   addiu     $at, $zero, -1
/* 7D60C 8008CE0C 04006114 */  bne        $v1, $at, .L8008CE20
/* 7D610 8008CE10 0080013C */   lui       $at, 0x8000
/* 7D614 8008CE14 02008114 */  bne        $a0, $at, .L8008CE20
/* 7D618 8008CE18 00000000 */   nop
/* 7D61C 8008CE1C 0D000600 */  break      6
.L8008CE20:
/* 7D620 8008CE20 10100000 */   mfhi      $v0
/* 7D624 8008CE24 00000000 */  nop
/* 7D628 8008CE28 03130200 */  sra        $v0, $v0, 0xc
/* 7D62C 8008CE2C 9E330208 */  j          .L8008CE78
/* 7D630 8008CE30 40100200 */   sll       $v0, $v0, 1
.L8008CE34:
/* 7D634 8008CE34 0400428E */  lw         $v0, 4($s2)
/* 7D638 8008CE38 00000000 */  nop
/* 7D63C 8008CE3C 00130200 */  sll        $v0, $v0, 0xc
/* 7D640 8008CE40 1A008200 */  div        $zero, $a0, $v0
/* 7D644 8008CE44 02004014 */  bnez       $v0, .L8008CE50
/* 7D648 8008CE48 00000000 */   nop
/* 7D64C 8008CE4C 0D000700 */  break      7
.L8008CE50:
/* 7D650 8008CE50 FFFF0124 */   addiu     $at, $zero, -1
/* 7D654 8008CE54 04004114 */  bne        $v0, $at, .L8008CE68
/* 7D658 8008CE58 0080013C */   lui       $at, 0x8000
/* 7D65C 8008CE5C 02008114 */  bne        $a0, $at, .L8008CE68
/* 7D660 8008CE60 00000000 */   nop
/* 7D664 8008CE64 0D000600 */  break      6
.L8008CE68:
/* 7D668 8008CE68 10180000 */   mfhi      $v1
/* 7D66C 8008CE6C 00000000 */  nop
/* 7D670 8008CE70 031B0300 */  sra        $v1, $v1, 0xc
/* 7D674 8008CE74 40100300 */  sll        $v0, $v1, 1
.L8008CE78:
/* 7D678 8008CE78 21184202 */  addu       $v1, $s2, $v0
/* 7D67C 8008CE7C 0F80023C */  lui        $v0, %hi(D_800F0028)
/* 7D680 8008CE80 28004624 */  addiu      $a2, $v0, %lo(D_800F0028)
/* 7D684 8008CE84 1C00C290 */  lbu        $v0, 0x1c($a2)
/* 7D688 8008CE88 18006384 */  lh         $v1, 0x18($v1)
/* 7D68C 8008CE8C 01004224 */  addiu      $v0, $v0, 1
/* 7D690 8008CE90 FFFF6424 */  addiu      $a0, $v1, -1
/* 7D694 8008CE94 1C00C2A0 */  sb         $v0, 0x1c($a2)
/* 7D698 8008CE98 1E00822C */  sltiu      $v0, $a0, 0x1e
/* 7D69C 8008CE9C 36004010 */  beqz       $v0, .L8008CF78
/* 7D6A0 8008CEA0 21280000 */   addu      $a1, $zero, $zero
/* 7D6A4 8008CEA4 01000724 */  addiu      $a3, $zero, 1
/* 7D6A8 8008CEA8 2118C000 */  addu       $v1, $a2, $zero
/* 7D6AC 8008CEAC 0100023C */  lui        $v0, 1
.L8008CEB0:
/* 7D6B0 8008CEB0 7C424234 */  ori        $v0, $v0, 0x427c
/* 7D6B4 8008CEB4 8C0067A0 */  sb         $a3, 0x8c($v1)
/* 7D6B8 8008CEB8 8B0060A0 */  sb         $zero, 0x8b($v1)
/* 7D6BC 8008CEBC 8E0064A4 */  sh         $a0, 0x8e($v1)
/* 7D6C0 8008CEC0 21186200 */  addu       $v1, $v1, $v0
/* 7D6C4 8008CEC4 0100A524 */  addiu      $a1, $a1, 1
/* 7D6C8 8008CEC8 0200A228 */  slti       $v0, $a1, 2
/* 7D6CC 8008CECC F8FF4014 */  bnez       $v0, .L8008CEB0
/* 7D6D0 8008CED0 0100023C */   lui       $v0, 1
/* 7D6D4 8008CED4 0F80023C */  lui        $v0, %hi(D_800F0028)
/* 7D6D8 8008CED8 28004524 */  addiu      $a1, $v0, %lo(D_800F0028)
/* 7D6DC 8008CEDC 3C00A280 */  lb         $v0, 0x3c($a1)
/* 7D6E0 8008CEE0 02000424 */  addiu      $a0, $zero, 2
/* 7D6E4 8008CEE4 1C004410 */  beq        $v0, $a0, .L8008CF58
/* 7D6E8 8008CEE8 04000324 */   addiu     $v1, $zero, 4
/* 7D6EC 8008CEEC 1A004310 */  beq        $v0, $v1, .L8008CF58
/* 7D6F0 8008CEF0 0100023C */   lui       $v0, 1
/* 7D6F4 8008CEF4 2130A200 */  addu       $a2, $a1, $v0
/* 7D6F8 8008CEF8 B842C280 */  lb         $v0, 0x42b8($a2)
/* 7D6FC 8008CEFC 00000000 */  nop
/* 7D700 8008CF00 12004410 */  beq        $v0, $a0, .L8008CF4C
/* 7D704 8008CF04 00000000 */   nop
/* 7D708 8008CF08 10004310 */  beq        $v0, $v1, .L8008CF4C
/* 7D70C 8008CF0C 07000324 */   addiu     $v1, $zero, 7
/* 7D710 8008CF10 8A00A290 */  lbu        $v0, 0x8a($a1)
/* 7D714 8008CF14 00000000 */  nop
/* 7D718 8008CF18 03004310 */  beq        $v0, $v1, .L8008CF28
/* 7D71C 8008CF1C 00000000 */   nop
/* 7D720 8008CF20 0E004014 */  bnez       $v0, .L8008CF5C
/* 7D724 8008CF24 21100000 */   addu      $v0, $zero, $zero
.L8008CF28:
/* 7D728 8008CF28 0643C290 */  lbu        $v0, 0x4306($a2)
/* 7D72C 8008CF2C 00000000 */  nop
/* 7D730 8008CF30 03004310 */  beq        $v0, $v1, .L8008CF40
/* 7D734 8008CF34 00000000 */   nop
/* 7D738 8008CF38 07004014 */  bnez       $v0, .L8008CF58
/* 7D73C 8008CF3C 00000000 */   nop
.L8008CF40:
/* 7D740 8008CF40 FEFF023C */  lui        $v0, 0xfffe
/* 7D744 8008CF44 D7330208 */  j          .L8008CF5C
/* 7D748 8008CF48 84BD4234 */   ori       $v0, $v0, 0xbd84
.L8008CF4C:
/* 7D74C 8008CF4C 0100023C */  lui        $v0, 1
/* 7D750 8008CF50 D7330208 */  j          .L8008CF5C
/* 7D754 8008CF54 7C424234 */   ori       $v0, $v0, 0x427c
.L8008CF58:
/* 7D758 8008CF58 21100000 */  addu       $v0, $zero, $zero
.L8008CF5C:
/* 7D75C 8008CF5C 2110A200 */  addu       $v0, $a1, $v0
/* 7D760 8008CF60 8E004484 */  lh         $a0, 0x8e($v0)
/* 7D764 8008CF64 0F80053C */  lui        $a1, %hi(D_800F02D4)
/* 7D768 8008CF68 D6AD020C */  jal        FUN_800ab758
/* 7D76C 8008CF6C D402A524 */   addiu     $a1, $a1, %lo(D_800F02D4)
/* 7D770 8008CF70 F0330208 */  j          .L8008CFC0
/* 7D774 8008CF74 0F80023C */   lui       $v0, 0x800f
.L8008CF78:
/* 7D778 8008CF78 1F006228 */  slti       $v0, $v1, 0x1f
/* 7D77C 8008CF7C 10004014 */  bnez       $v0, .L8008CFC0
/* 7D780 8008CF80 0F80023C */   lui       $v0, 0x800f
/* 7D784 8008CF84 21280000 */  addu       $a1, $zero, $zero
/* 7D788 8008CF88 01000724 */  addiu      $a3, $zero, 1
/* 7D78C 8008CF8C E1FF6424 */  addiu      $a0, $v1, -0x1f
/* 7D790 8008CF90 2118C000 */  addu       $v1, $a2, $zero
/* 7D794 8008CF94 0100023C */  lui        $v0, 1
.L8008CF98:
/* 7D798 8008CF98 7C424234 */  ori        $v0, $v0, 0x427c
/* 7D79C 8008CF9C 8C0060A0 */  sb         $zero, 0x8c($v1)
/* 7D7A0 8008CFA0 8B0067A0 */  sb         $a3, 0x8b($v1)
/* 7D7A4 8008CFA4 8E0064A4 */  sh         $a0, 0x8e($v1)
/* 7D7A8 8008CFA8 21186200 */  addu       $v1, $v1, $v0
/* 7D7AC 8008CFAC 0100A524 */  addiu      $a1, $a1, 1
/* 7D7B0 8008CFB0 0200A228 */  slti       $v0, $a1, 2
/* 7D7B4 8008CFB4 F8FF4014 */  bnez       $v0, .L8008CF98
/* 7D7B8 8008CFB8 0100023C */   lui       $v0, 1
/* 7D7BC 8008CFBC 0F80023C */  lui        $v0, %hi(D_800F0028)
.L8008CFC0:
/* 7D7C0 8008CFC0 28004324 */  addiu      $v1, $v0, %lo(D_800F0028)
/* 7D7C4 8008CFC4 3C006280 */  lb         $v0, 0x3c($v1)
/* 7D7C8 8008CFC8 02000524 */  addiu      $a1, $zero, 2
/* 7D7CC 8008CFCC 1A004510 */  beq        $v0, $a1, .L8008D038
/* 7D7D0 8008CFD0 04000424 */   addiu     $a0, $zero, 4
/* 7D7D4 8008CFD4 18004410 */  beq        $v0, $a0, .L8008D038
/* 7D7D8 8008CFD8 0100023C */   lui       $v0, 1
/* 7D7DC 8008CFDC 21306200 */  addu       $a2, $v1, $v0
/* 7D7E0 8008CFE0 B842C280 */  lb         $v0, 0x42b8($a2)
/* 7D7E4 8008CFE4 00000000 */  nop
/* 7D7E8 8008CFE8 11004510 */  beq        $v0, $a1, .L8008D030
/* 7D7EC 8008CFEC 00000000 */   nop
/* 7D7F0 8008CFF0 0F004410 */  beq        $v0, $a0, .L8008D030
/* 7D7F4 8008CFF4 00000000 */   nop
/* 7D7F8 8008CFF8 8A006290 */  lbu        $v0, 0x8a($v1)
/* 7D7FC 8008CFFC 07000324 */  addiu      $v1, $zero, 7
/* 7D800 8008D000 03004310 */  beq        $v0, $v1, .L8008D010
/* 7D804 8008D004 00000000 */   nop
/* 7D808 8008D008 0C004014 */  bnez       $v0, .L8008D03C
/* 7D80C 8008D00C 21280000 */   addu      $a1, $zero, $zero
.L8008D010:
/* 7D810 8008D010 0643C290 */  lbu        $v0, 0x4306($a2)
/* 7D814 8008D014 00000000 */  nop
/* 7D818 8008D018 08004310 */  beq        $v0, $v1, .L8008D03C
/* 7D81C 8008D01C FFFF0524 */   addiu     $a1, $zero, -1
/* 7D820 8008D020 06004014 */  bnez       $v0, .L8008D03C
/* 7D824 8008D024 21280000 */   addu      $a1, $zero, $zero
/* 7D828 8008D028 0F340208 */  j          .L8008D03C
/* 7D82C 8008D02C FFFF0524 */   addiu     $a1, $zero, -1
.L8008D030:
/* 7D830 8008D030 0F340208 */  j          .L8008D03C
/* 7D834 8008D034 01000524 */   addiu     $a1, $zero, 1
.L8008D038:
/* 7D838 8008D038 21280000 */  addu       $a1, $zero, $zero
.L8008D03C:
/* 7D83C 8008D03C 0F80023C */  lui        $v0, %hi(D_800F0028)
/* 7D840 8008D040 28004724 */  addiu      $a3, $v0, %lo(D_800F0028)
/* 7D844 8008D044 80100500 */  sll        $v0, $a1, 2
/* 7D848 8008D048 21104500 */  addu       $v0, $v0, $a1
/* 7D84C 8008D04C C0190200 */  sll        $v1, $v0, 7
/* 7D850 8008D050 21104300 */  addu       $v0, $v0, $v1
/* 7D854 8008D054 40110200 */  sll        $v0, $v0, 5
/* 7D858 8008D058 23104500 */  subu       $v0, $v0, $a1
/* 7D85C 8008D05C 80100200 */  sll        $v0, $v0, 2
/* 7D860 8008D060 21304700 */  addu       $a2, $v0, $a3
/* 7D864 8008D064 8A00C390 */  lbu        $v1, 0x8a($a2)
/* 7D868 8008D068 02000224 */  addiu      $v0, $zero, 2
/* 7D86C 8008D06C 12006214 */  bne        $v1, $v0, .L8008D0B8
/* 7D870 8008D070 01000424 */   addiu     $a0, $zero, 1
/* 7D874 8008D074 23208500 */  subu       $a0, $a0, $a1
/* 7D878 8008D078 04104400 */  sllv       $v0, $a0, $v0
/* 7D87C 8008D07C 21104400 */  addu       $v0, $v0, $a0
/* 7D880 8008D080 C0190200 */  sll        $v1, $v0, 7
/* 7D884 8008D084 21104300 */  addu       $v0, $v0, $v1
/* 7D888 8008D088 40110200 */  sll        $v0, $v0, 5
/* 7D88C 8008D08C 23104400 */  subu       $v0, $v0, $a0
/* 7D890 8008D090 80100200 */  sll        $v0, $v0, 2
/* 7D894 8008D094 21104700 */  addu       $v0, $v0, $a3
/* 7D898 8008D098 07000324 */  addiu      $v1, $zero, 7
/* 7D89C 8008D09C 8800C88C */  lw         $t0, 0x88($a2)
/* 7D8A0 8008D0A0 8C00C98C */  lw         $t1, 0x8c($a2)
/* 7D8A4 8008D0A4 9000CA8C */  lw         $t2, 0x90($a2)
/* 7D8A8 8008D0A8 880048AC */  sw         $t0, 0x88($v0)
/* 7D8AC 8008D0AC 8C0049AC */  sw         $t1, 0x8c($v0)
/* 7D8B0 8008D0B0 90004AAC */  sw         $t2, 0x90($v0)
/* 7D8B4 8008D0B4 8A0043A0 */  sb         $v1, 0x8a($v0)
.L8008D0B8:
/* 7D8B8 8008D0B8 AC484292 */  lbu        $v0, 0x48ac($s2)
/* 7D8BC 8008D0BC 00000000 */  nop
/* 7D8C0 8008D0C0 0B004010 */  beqz       $v0, .L8008D0F0
/* 7D8C4 8008D0C4 FFFF0224 */   addiu     $v0, $zero, -1
/* 7D8C8 8008D0C8 DC0A438E */  lw         $v1, 0xadc($s2)
/* 7D8CC 8008D0CC 00000000 */  nop
/* 7D8D0 8008D0D0 04006214 */  bne        $v1, $v0, .L8008D0E4
/* 7D8D4 8008D0D4 1500A22A */   slti      $v0, $s5, 0x15
/* 7D8D8 8008D0D8 01000224 */  addiu      $v0, $zero, 1
/* 7D8DC 8008D0DC 3C340208 */  j          .L8008D0F0
/* 7D8E0 8008D0E0 AD4842A2 */   sb        $v0, 0x48ad($s2)
.L8008D0E4:
/* 7D8E4 8008D0E4 02004010 */  beqz       $v0, .L8008D0F0
/* 7D8E8 8008D0E8 00000000 */   nop
/* 7D8EC 8008D0EC AD4840A2 */  sb         $zero, 0x48ad($s2)
.L8008D0F0:
/* 7D8F0 8008D0F0 AD484292 */  lbu        $v0, 0x48ad($s2)
/* 7D8F4 8008D0F4 00000000 */  nop
/* 7D8F8 8008D0F8 7F004010 */  beqz       $v0, .L8008D2F8
/* 7D8FC 8008D0FC 00000000 */   nop
/* 7D900 8008D100 DC48448E */  lw         $a0, 0x48dc($s2)
/* 7D904 8008D104 E389020C */  jal        FUN_800a278c
/* 7D908 8008D108 00000000 */   nop
/* 7D90C 8008D10C B0484386 */  lh         $v1, 0x48b0($s2)
/* 7D910 8008D110 B2484486 */  lh         $a0, 0x48b2($s2)
/* 7D914 8008D114 B0484596 */  lhu        $a1, 0x48b0($s2)
/* 7D918 8008D118 2A186400 */  slt        $v1, $v1, $a0
/* 7D91C 8008D11C 74006014 */  bnez       $v1, .L8008D2F0
/* 7D920 8008D120 21304000 */   addu      $a2, $v0, $zero
/* 7D924 8008D124 B4484386 */  lh         $v1, 0x48b4($s2)
/* 7D928 8008D128 B4484296 */  lhu        $v0, 0x48b4($s2)
/* 7D92C 8008D12C 13006014 */  bnez       $v1, .L8008D17C
/* 7D930 8008D130 00000000 */   nop
/* 7D934 8008D134 DC48448E */  lw         $a0, 0x48dc($s2)
/* 7D938 8008D138 0100A224 */  addiu      $v0, $a1, 1
/* 7D93C 8008D13C B04842A6 */  sh         $v0, 0x48b0($s2)
/* 7D940 8008D140 20000224 */  addiu      $v0, $zero, 0x20
/* 7D944 8008D144 B24842A6 */  sh         $v0, 0x48b2($s2)
/* 7D948 8008D148 D04840AE */  sw         $zero, 0x48d0($s2)
/* 7D94C 8008D14C 21188000 */  addu       $v1, $a0, $zero
/* 7D950 8008D150 E389020C */  jal        FUN_800a278c
/* 7D954 8008D154 D84843AE */   sw        $v1, 0x48d8($s2)
/* 7D958 8008D158 FFFF4224 */  addiu      $v0, $v0, -1
/* 7D95C 8008D15C D44842AE */  sw         $v0, 0x48d4($s2)
/* 7D960 8008D160 B4484296 */  lhu        $v0, 0x48b4($s2)
/* 7D964 8008D164 E8484392 */  lbu        $v1, 0x48e8($s2)
/* 7D968 8008D168 AE4840A2 */  sb         $zero, 0x48ae($s2)
/* 7D96C 8008D16C 01004224 */  addiu      $v0, $v0, 1
/* 7D970 8008D170 B44842A6 */  sh         $v0, 0x48b4($s2)
/* 7D974 8008D174 BE340208 */  j          .L8008D2F8
/* 7D978 8008D178 E94843A2 */   sb        $v1, 0x48e9($s2)
.L8008D17C:
/* 7D97C 8008D17C 01000424 */  addiu      $a0, $zero, 1
/* 7D980 8008D180 0D006414 */  bne        $v1, $a0, .L8008D1B8
/* 7D984 8008D184 01004230 */   andi      $v0, $v0, 1
/* 7D988 8008D188 2110A400 */  addu       $v0, $a1, $a0
/* 7D98C 8008D18C B04842A6 */  sh         $v0, 0x48b0($s2)
/* 7D990 8008D190 B2484296 */  lhu        $v0, 0x48b2($s2)
/* 7D994 8008D194 AE4844A2 */  sb         $a0, 0x48ae($s2)
/* 7D998 8008D198 D048448E */  lw         $a0, 0x48d0($s2)
/* 7D99C 8008D19C B4484396 */  lhu        $v1, 0x48b4($s2)
/* 7D9A0 8008D1A0 50004224 */  addiu      $v0, $v0, 0x50
/* 7D9A4 8008D1A4 01006324 */  addiu      $v1, $v1, 1
/* 7D9A8 8008D1A8 B24842A6 */  sh         $v0, 0x48b2($s2)
/* 7D9AC 8008D1AC D44844AE */  sw         $a0, 0x48d4($s2)
/* 7D9B0 8008D1B0 BE340208 */  j          .L8008D2F8
/* 7D9B4 8008D1B4 B44843A6 */   sh        $v1, 0x48b4($s2)
.L8008D1B8:
/* 7D9B8 8008D1B8 44004014 */  bnez       $v0, .L8008D2CC
/* 7D9BC 8008D1BC 0100A224 */   addiu     $v0, $a1, 1
/* 7D9C0 8008D1C0 D048428E */  lw         $v0, 0x48d0($s2)
/* 7D9C4 8008D1C4 00000000 */  nop
/* 7D9C8 8008D1C8 01004224 */  addiu      $v0, $v0, 1
/* 7D9CC 8008D1CC 1A004600 */  div        $zero, $v0, $a2
/* 7D9D0 8008D1D0 0200C014 */  bnez       $a2, .L8008D1DC
/* 7D9D4 8008D1D4 00000000 */   nop
/* 7D9D8 8008D1D8 0D000700 */  break      7
.L8008D1DC:
/* 7D9DC 8008D1DC FFFF0124 */   addiu     $at, $zero, -1
/* 7D9E0 8008D1E0 0400C114 */  bne        $a2, $at, .L8008D1F4
/* 7D9E4 8008D1E4 0080013C */   lui       $at, 0x8000
/* 7D9E8 8008D1E8 02004114 */  bne        $v0, $at, .L8008D1F4
/* 7D9EC 8008D1EC 00000000 */   nop
/* 7D9F0 8008D1F0 0D000600 */  break      6
.L8008D1F4:
/* 7D9F4 8008D1F4 10180000 */   mfhi      $v1
/* 7D9F8 8008D1F8 00000000 */  nop
/* 7D9FC 8008D1FC 04006014 */  bnez       $v1, .L8008D210
/* 7DA00 8008D200 D04843AE */   sw        $v1, 0x48d0($s2)
/* 7DA04 8008D204 70000224 */  addiu      $v0, $zero, 0x70
/* 7DA08 8008D208 B04842A6 */  sh         $v0, 0x48b0($s2)
/* 7DA0C 8008D20C B24842A6 */  sh         $v0, 0x48b2($s2)
.L8008D210:
/* 7DA10 8008D210 0F80023C */  lui        $v0, %hi(D_800F0048)
/* 7DA14 8008D214 48004280 */  lb         $v0, %lo(D_800F0048)($v0)
/* 7DA18 8008D218 00000000 */  nop
/* 7DA1C 8008D21C 06004414 */  bne        $v0, $a0, .L8008D238
/* 7DA20 8008D220 0500C228 */   slti      $v0, $a2, 5
/* 7DA24 8008D224 0600C228 */  slti       $v0, $a2, 6
/* 7DA28 8008D228 10004010 */  beqz       $v0, .L8008D26C
/* 7DA2C 8008D22C 00000000 */   nop
/* 7DA30 8008D230 90340208 */  j          .L8008D240
/* 7DA34 8008D234 00000000 */   nop
.L8008D238:
/* 7DA38 8008D238 0C004010 */  beqz       $v0, .L8008D26C
/* 7DA3C 8008D23C 00000000 */   nop
.L8008D240:
/* 7DA40 8008D240 DC48448E */  lw         $a0, 0x48dc($s2)
/* 7DA44 8008D244 20000224 */  addiu      $v0, $zero, 0x20
/* 7DA48 8008D248 B04842A6 */  sh         $v0, 0x48b0($s2)
/* 7DA4C 8008D24C B24842A6 */  sh         $v0, 0x48b2($s2)
/* 7DA50 8008D250 E389020C */  jal        FUN_800a278c
/* 7DA54 8008D254 D04840AE */   sw        $zero, 0x48d0($s2)
/* 7DA58 8008D258 FFFF4224 */  addiu      $v0, $v0, -1
/* 7DA5C 8008D25C D44842AE */  sw         $v0, 0x48d4($s2)
/* 7DA60 8008D260 02000224 */  addiu      $v0, $zero, 2
/* 7DA64 8008D264 BE340208 */  j          .L8008D2F8
/* 7DA68 8008D268 B44842A6 */   sh        $v0, 0x48b4($s2)
.L8008D26C:
/* 7DA6C 8008D26C D048428E */  lw         $v0, 0x48d0($s2)
/* 7DA70 8008D270 00000000 */  nop
/* 7DA74 8008D274 1A004600 */  div        $zero, $v0, $a2
/* 7DA78 8008D278 0200C014 */  bnez       $a2, .L8008D284
/* 7DA7C 8008D27C 00000000 */   nop
/* 7DA80 8008D280 0D000700 */  break      7
.L8008D284:
/* 7DA84 8008D284 FFFF0124 */   addiu     $at, $zero, -1
/* 7DA88 8008D288 0400C114 */  bne        $a2, $at, .L8008D29C
/* 7DA8C 8008D28C 0080013C */   lui       $at, 0x8000
/* 7DA90 8008D290 02004114 */  bne        $v0, $at, .L8008D29C
/* 7DA94 8008D294 00000000 */   nop
/* 7DA98 8008D298 0D000600 */  break      6
.L8008D29C:
/* 7DA9C 8008D29C 10200000 */   mfhi      $a0
/* 7DAA0 8008D2A0 B0484296 */  lhu        $v0, 0x48b0($s2)
/* 7DAA4 8008D2A4 B4484396 */  lhu        $v1, 0x48b4($s2)
/* 7DAA8 8008D2A8 01004224 */  addiu      $v0, $v0, 1
/* 7DAAC 8008D2AC B04842A6 */  sh         $v0, 0x48b0($s2)
/* 7DAB0 8008D2B0 B2484296 */  lhu        $v0, 0x48b2($s2)
/* 7DAB4 8008D2B4 01006324 */  addiu      $v1, $v1, 1
/* 7DAB8 8008D2B8 B44843A6 */  sh         $v1, 0x48b4($s2)
/* 7DABC 8008D2BC 18004224 */  addiu      $v0, $v0, 0x18
/* 7DAC0 8008D2C0 B24842A6 */  sh         $v0, 0x48b2($s2)
/* 7DAC4 8008D2C4 BE340208 */  j          .L8008D2F8
/* 7DAC8 8008D2C8 D04844AE */   sw        $a0, 0x48d0($s2)
.L8008D2CC:
/* 7DACC 8008D2CC D048448E */  lw         $a0, 0x48d0($s2)
/* 7DAD0 8008D2D0 B2484396 */  lhu        $v1, 0x48b2($s2)
/* 7DAD4 8008D2D4 B04842A6 */  sh         $v0, 0x48b0($s2)
/* 7DAD8 8008D2D8 02000224 */  addiu      $v0, $zero, 2
/* 7DADC 8008D2DC B44842A6 */  sh         $v0, 0x48b4($s2)
/* 7DAE0 8008D2E0 08006324 */  addiu      $v1, $v1, 8
/* 7DAE4 8008D2E4 D44844AE */  sw         $a0, 0x48d4($s2)
/* 7DAE8 8008D2E8 BE340208 */  j          .L8008D2F8
/* 7DAEC 8008D2EC B24843A6 */   sh        $v1, 0x48b2($s2)
.L8008D2F0:
/* 7DAF0 8008D2F0 0100A224 */  addiu      $v0, $a1, 1
/* 7DAF4 8008D2F4 B04842A6 */  sh         $v0, 0x48b0($s2)
.L8008D2F8:
/* 7DAF8 8008D2F8 E80A448E */  lw         $a0, 0xae8($s2)
/* 7DAFC 8008D2FC A9AD010C */  jal        FUN_8006b6a4
/* 7DB00 8008D300 00000000 */   nop
/* 7DB04 8008D304 2120C002 */  addu       $a0, $s6, $zero
/* 7DB08 8008D308 21288002 */  addu       $a1, $s4, $zero
/* 7DB0C 8008D30C 1D6B010C */  jal        FUN_8005ac74
/* 7DB10 8008D310 E80A42AE */   sw        $v0, 0xae8($s2)
/* 7DB14 8008D314 9157010C */  jal        FUN_80055e44
/* 7DB18 8008D318 2120C002 */   addu      $a0, $s6, $zero
/* 7DB1C 8008D31C 8847428E */  lw         $v0, 0x4788($s2)
/* 7DB20 8008D320 9C0B4482 */  lb         $a0, 0xb9c($s2)
/* 7DB24 8008D324 2A180200 */  slt        $v1, $zero, $v0
/* 7DB28 8008D328 23104300 */  subu       $v0, $v0, $v1
/* 7DB2C 8008D32C 14008014 */  bnez       $a0, .L8008D380
/* 7DB30 8008D330 884742AE */   sw        $v0, 0x4788($s2)
/* 7DB34 8008D334 AC484292 */  lbu        $v0, 0x48ac($s2)
/* 7DB38 8008D338 01000424 */  addiu      $a0, $zero, 1
/* 7DB3C 8008D33C 11004410 */  beq        $v0, $a0, .L8008D384
/* 7DB40 8008D340 0F80023C */   lui       $v0, %hi(D_800F0018)
/* 7DB44 8008D344 0000428E */  lw         $v0, ($s2)
/* 7DB48 8008D348 00000000 */  nop
/* 7DB4C 8008D34C 04108200 */  sllv       $v0, $v0, $a0
/* 7DB50 8008D350 21104202 */  addu       $v0, $s2, $v0
/* 7DB54 8008D354 18004284 */  lh         $v0, %lo(D_800F0018)($v0)
/* 7DB58 8008D358 00000000 */  nop
/* 7DB5C 8008D35C 04108200 */  sllv       $v0, $v0, $a0
/* 7DB60 8008D360 21184202 */  addu       $v1, $s2, $v0
/* 7DB64 8008D364 78046284 */  lh         $v0, 0x478($v1)
/* 7DB68 8008D368 00000000 */  nop
/* 7DB6C 8008D36C 05004014 */  bnez       $v0, .L8008D384
/* 7DB70 8008D370 0F80023C */   lui       $v0, 0x800f
/* 7DB74 8008D374 1E000224 */  addiu      $v0, $zero, 0x1e
/* 7DB78 8008D378 780464A4 */  sh         $a0, 0x478($v1)
/* 7DB7C 8008D37C 080042AE */  sw         $v0, 8($s2)
.L8008D380:
/* 7DB80 8008D380 0F80023C */  lui        $v0, %hi(D_800EFFA8)
.L8008D384:
/* 7DB84 8008D384 A8FF4424 */  addiu      $a0, $v0, %lo(D_800EFFA8)
/* 7DB88 8008D388 7800828C */  lw         $v0, 0x78($a0)
/* 7DB8C 8008D38C 00000000 */  nop
/* 7DB90 8008D390 0A004228 */  slti       $v0, $v0, 0xa
/* 7DB94 8008D394 A30B4014 */  bnez       $v0, .L80090224
/* 7DB98 8008D398 21100000 */   addu      $v0, $zero, $zero
/* 7DB9C 8008D39C 7400828C */  lw         $v0, 0x74($a0)
/* 7DBA0 8008D3A0 D80A438E */  lw         $v1, 0xad8($s2)
/* 7DBA4 8008D3A4 00000000 */  nop
/* 7DBA8 8008D3A8 23104300 */  subu       $v0, $v0, $v1
/* 7DBAC 8008D3AC 45004228 */  slti       $v0, $v0, 0x45
/* 7DBB0 8008D3B0 9C0B4014 */  bnez       $v0, .L80090224
/* 7DBB4 8008D3B4 21100000 */   addu      $v0, $zero, $zero
/* 7DBB8 8008D3B8 D40A428E */  lw         $v0, 0xad4($s2)
/* 7DBBC 8008D3BC 10000324 */  addiu      $v1, $zero, 0x10
/* 7DBC0 8008D3C0 01004224 */  addiu      $v0, $v0, 1
/* 7DBC4 8008D3C4 08004314 */  bne        $v0, $v1, .L8008D3E8
/* 7DBC8 8008D3C8 D40A42AE */   sw        $v0, 0xad4($s2)
/* 7DBCC 8008D3CC 9C0B4282 */  lb         $v0, 0xb9c($s2)
/* 7DBD0 8008D3D0 00000000 */  nop
/* 7DBD4 8008D3D4 04004014 */  bnez       $v0, .L8008D3E8
/* 7DBD8 8008D3D8 00000000 */   nop
/* 7DBDC 8008D3DC 7400828C */  lw         $v0, 0x74($a0)
/* 7DBE0 8008D3E0 00000000 */  nop
/* 7DBE4 8008D3E4 E00A42AE */  sw         $v0, 0xae0($s2)
.L8008D3E8:
/* 7DBE8 8008D3E8 D40A428E */  lw         $v0, 0xad4($s2)
/* 7DBEC 8008D3EC 00000000 */  nop
/* 7DBF0 8008D3F0 11004228 */  slti       $v0, $v0, 0x11
/* 7DBF4 8008D3F4 02004014 */  bnez       $v0, .L8008D400
/* 7DBF8 8008D3F8 10000224 */   addiu     $v0, $zero, 0x10
/* 7DBFC 8008D3FC D40A42AE */  sw         $v0, 0xad4($s2)
.L8008D400:
/* 7DC00 8008D400 D40A448E */  lw         $a0, 0xad4($s2)
/* 7DC04 8008D404 F4F1000C */  jal        rsin
/* 7DC08 8008D408 80210400 */   sll       $a0, $a0, 6
/* 7DC0C 8008D40C CC0A438E */  lw         $v1, 0xacc($s2)
/* 7DC10 8008D410 C80A448E */  lw         $a0, 0xac8($s2)
/* 7DC14 8008D414 00000000 */  nop
/* 7DC18 8008D418 23186400 */  subu       $v1, $v1, $a0
/* 7DC1C 8008D41C 18006200 */  mult       $v1, $v0
/* 7DC20 8008D420 12100000 */  mflo       $v0
/* 7DC24 8008D424 02004104 */  bgez       $v0, .L8008D430
/* 7DC28 8008D428 00000000 */   nop
/* 7DC2C 8008D42C FF0F4224 */  addiu      $v0, $v0, 0xfff
.L8008D430:
/* 7DC30 8008D430 03130200 */  sra        $v0, $v0, 0xc
/* 7DC34 8008D434 CC0A438E */  lw         $v1, 0xacc($s2)
/* 7DC38 8008D438 21108200 */  addu       $v0, $a0, $v0
/* 7DC3C 8008D43C 26004314 */  bne        $v0, $v1, .L8008D4D8
/* 7DC40 8008D440 D00A42AE */   sw        $v0, 0xad0($s2)
/* 7DC44 8008D444 10004104 */  bgez       $v0, .L8008D488
/* 7DC48 8008D448 00000000 */   nop
/* 7DC4C 8008D44C 0400428E */  lw         $v0, 4($s2)
/* 7DC50 8008D450 C80A438E */  lw         $v1, 0xac8($s2)
/* 7DC54 8008D454 00130200 */  sll        $v0, $v0, 0xc
/* 7DC58 8008D458 21186200 */  addu       $v1, $v1, $v0
/* 7DC5C 8008D45C 0400428E */  lw         $v0, 4($s2)
/* 7DC60 8008D460 C80A43AE */  sw         $v1, 0xac8($s2)
/* 7DC64 8008D464 CC0A438E */  lw         $v1, 0xacc($s2)
/* 7DC68 8008D468 00130200 */  sll        $v0, $v0, 0xc
/* 7DC6C 8008D46C 21186200 */  addu       $v1, $v1, $v0
/* 7DC70 8008D470 0400428E */  lw         $v0, 4($s2)
/* 7DC74 8008D474 CC0A43AE */  sw         $v1, 0xacc($s2)
/* 7DC78 8008D478 D00A438E */  lw         $v1, 0xad0($s2)
/* 7DC7C 8008D47C 00130200 */  sll        $v0, $v0, 0xc
/* 7DC80 8008D480 21186200 */  addu       $v1, $v1, $v0
/* 7DC84 8008D484 D00A43AE */  sw         $v1, 0xad0($s2)
.L8008D488:
/* 7DC88 8008D488 0400438E */  lw         $v1, 4($s2)
/* 7DC8C 8008D48C D00A428E */  lw         $v0, 0xad0($s2)
/* 7DC90 8008D490 001B0300 */  sll        $v1, $v1, 0xc
/* 7DC94 8008D494 2A104300 */  slt        $v0, $v0, $v1
/* 7DC98 8008D498 0F004014 */  bnez       $v0, .L8008D4D8
/* 7DC9C 8008D49C 00000000 */   nop
/* 7DCA0 8008D4A0 C80A428E */  lw         $v0, 0xac8($s2)
/* 7DCA4 8008D4A4 00000000 */  nop
/* 7DCA8 8008D4A8 23104300 */  subu       $v0, $v0, $v1
/* 7DCAC 8008D4AC C80A42AE */  sw         $v0, 0xac8($s2)
/* 7DCB0 8008D4B0 0400428E */  lw         $v0, 4($s2)
/* 7DCB4 8008D4B4 CC0A438E */  lw         $v1, 0xacc($s2)
/* 7DCB8 8008D4B8 00130200 */  sll        $v0, $v0, 0xc
/* 7DCBC 8008D4BC 23186200 */  subu       $v1, $v1, $v0
/* 7DCC0 8008D4C0 0400428E */  lw         $v0, 4($s2)
/* 7DCC4 8008D4C4 CC0A43AE */  sw         $v1, 0xacc($s2)
/* 7DCC8 8008D4C8 D00A438E */  lw         $v1, 0xad0($s2)
/* 7DCCC 8008D4CC 00130200 */  sll        $v0, $v0, 0xc
/* 7DCD0 8008D4D0 23186200 */  subu       $v1, $v1, $v0
/* 7DCD4 8008D4D4 D00A43AE */  sw         $v1, 0xad0($s2)
.L8008D4D8:
/* 7DCD8 8008D4D8 CC0A448E */  lw         $a0, 0xacc($s2)
/* 7DCDC 8008D4DC 00000000 */  nop
/* 7DCE0 8008D4E0 1E008104 */  bgez       $a0, .L8008D55C
/* 7DCE4 8008D4E4 23100400 */   negu      $v0, $a0
/* 7DCE8 8008D4E8 0400438E */  lw         $v1, 4($s2)
/* 7DCEC 8008D4EC 00000000 */  nop
/* 7DCF0 8008D4F0 001B0300 */  sll        $v1, $v1, 0xc
/* 7DCF4 8008D4F4 1A004300 */  div        $zero, $v0, $v1
/* 7DCF8 8008D4F8 02006014 */  bnez       $v1, .L8008D504
/* 7DCFC 8008D4FC 00000000 */   nop
/* 7DD00 8008D500 0D000700 */  break      7
.L8008D504:
/* 7DD04 8008D504 FFFF0124 */   addiu     $at, $zero, -1
/* 7DD08 8008D508 04006114 */  bne        $v1, $at, .L8008D51C
/* 7DD0C 8008D50C 0080013C */   lui       $at, 0x8000
/* 7DD10 8008D510 02004114 */  bne        $v0, $at, .L8008D51C
/* 7DD14 8008D514 00000000 */   nop
/* 7DD18 8008D518 0D000600 */  break      6
.L8008D51C:
/* 7DD1C 8008D51C 10200000 */   mfhi      $a0
/* 7DD20 8008D520 00000000 */  nop
/* 7DD24 8008D524 23206400 */  subu       $a0, $v1, $a0
/* 7DD28 8008D528 1A008300 */  div        $zero, $a0, $v1
/* 7DD2C 8008D52C 02006014 */  bnez       $v1, .L8008D538
/* 7DD30 8008D530 00000000 */   nop
/* 7DD34 8008D534 0D000700 */  break      7
.L8008D538:
/* 7DD38 8008D538 FFFF0124 */   addiu     $at, $zero, -1
/* 7DD3C 8008D53C 04006114 */  bne        $v1, $at, .L8008D550
/* 7DD40 8008D540 0080013C */   lui       $at, 0x8000
/* 7DD44 8008D544 02008114 */  bne        $a0, $at, .L8008D550
/* 7DD48 8008D548 00000000 */   nop
/* 7DD4C 8008D54C 0D000600 */  break      6
.L8008D550:
/* 7DD50 8008D550 10100000 */   mfhi      $v0
/* 7DD54 8008D554 67350208 */  j          .L8008D59C
/* 7DD58 8008D558 031B0200 */   sra       $v1, $v0, 0xc
.L8008D55C:
/* 7DD5C 8008D55C 0400428E */  lw         $v0, 4($s2)
/* 7DD60 8008D560 00000000 */  nop
/* 7DD64 8008D564 00130200 */  sll        $v0, $v0, 0xc
/* 7DD68 8008D568 1A008200 */  div        $zero, $a0, $v0
/* 7DD6C 8008D56C 02004014 */  bnez       $v0, .L8008D578
/* 7DD70 8008D570 00000000 */   nop
/* 7DD74 8008D574 0D000700 */  break      7
.L8008D578:
/* 7DD78 8008D578 FFFF0124 */   addiu     $at, $zero, -1
/* 7DD7C 8008D57C 04004114 */  bne        $v0, $at, .L8008D590
/* 7DD80 8008D580 0080013C */   lui       $at, 0x8000
/* 7DD84 8008D584 02008114 */  bne        $a0, $at, .L8008D590
/* 7DD88 8008D588 00000000 */   nop
/* 7DD8C 8008D58C 0D000600 */  break      6
.L8008D590:
/* 7DD90 8008D590 10180000 */   mfhi      $v1
/* 7DD94 8008D594 00000000 */  nop
/* 7DD98 8008D598 031B0300 */  sra        $v1, $v1, 0xc
.L8008D59C:
/* 7DD9C 8008D59C 9C0B4282 */  lb         $v0, 0xb9c($s2)
/* 7DDA0 8008D5A0 00000000 */  nop
/* 7DDA4 8008D5A4 3A004014 */  bnez       $v0, .L8008D690
/* 7DDA8 8008D5A8 000043AE */   sw        $v1, ($s2)
/* 7DDAC 8008D5AC 40100300 */  sll        $v0, $v1, 1
/* 7DDB0 8008D5B0 21104202 */  addu       $v0, $s2, $v0
/* 7DDB4 8008D5B4 0F80103C */  lui        $s0, %hi(D_800F0028)
/* 7DDB8 8008D5B8 18004294 */  lhu        $v0, 0x18($v0)
/* 7DDBC 8008D5BC 28001026 */  addiu      $s0, $s0, %lo(D_800F0028)
/* 7DDC0 8008D5C0 00240200 */  sll        $a0, $v0, 0x10
/* 7DDC4 8008D5C4 03240400 */  sra        $a0, $a0, 0x10
/* 7DDC8 8008D5C8 1BA2020C */  jal        FUN_800a886c
/* 7DDCC 8008D5CC 1E0002A6 */   sh        $v0, 0x1e($s0)
/* 7DDD0 8008D5D0 21204000 */  addu       $a0, $v0, $zero
/* 7DDD4 8008D5D4 8A000592 */  lbu        $a1, 0x8a($s0)
/* 7DDD8 8008D5D8 07000224 */  addiu      $v0, $zero, 7
/* 7DDDC 8008D5DC 0700A210 */  beq        $a1, $v0, .L8008D5FC
/* 7DDE0 8008D5E0 040004AE */   sw        $a0, 4($s0)
/* 7DDE4 8008D5E4 0500A010 */  beqz       $a1, .L8008D5FC
/* 7DDE8 8008D5E8 0200A538 */   xori      $a1, $a1, 2
/* 7DDEC 8008D5EC E4484692 */  lbu        $a2, 0x48e4($s2)
/* 7DDF0 8008D5F0 8BFA010C */  jal        FUN_8007ea2c
/* 7DDF4 8008D5F4 0100A52C */   sltiu     $a1, $a1, 1
/* 7DDF8 8008D5F8 E64842A2 */  sb         $v0, 0x48e6($s2)
.L8008D5FC:
/* 7DDFC 8008D5FC 0F80023C */  lui        $v0, %hi(D_800F0028)
/* 7DE00 8008D600 28004324 */  addiu      $v1, $v0, %lo(D_800F0028)
/* 7DE04 8008D604 0100023C */  lui        $v0, 1
/* 7DE08 8008D608 21106200 */  addu       $v0, $v1, $v0
/* 7DE0C 8008D60C 06434590 */  lbu        $a1, 0x4306($v0)
/* 7DE10 8008D610 07000224 */  addiu      $v0, $zero, 7
/* 7DE14 8008D614 0900A210 */  beq        $a1, $v0, .L8008D63C
/* 7DE18 8008D618 0F80023C */   lui       $v0, 0x800f
/* 7DE1C 8008D61C 0700A010 */  beqz       $a1, .L8008D63C
/* 7DE20 8008D620 0200A538 */   xori      $a1, $a1, 2
/* 7DE24 8008D624 0400648C */  lw         $a0, 4($v1)
/* 7DE28 8008D628 E5484692 */  lbu        $a2, 0x48e5($s2)
/* 7DE2C 8008D62C 8BFA010C */  jal        FUN_8007ea2c
/* 7DE30 8008D630 0100A52C */   sltiu     $a1, $a1, 1
/* 7DE34 8008D634 E74842A2 */  sb         $v0, 0x48e7($s2)
/* 7DE38 8008D638 0F80023C */  lui        $v0, %hi(D_800F0028)
.L8008D63C:
/* 7DE3C 8008D63C 28004424 */  addiu      $a0, $v0, %lo(D_800F0028)
/* 7DE40 8008D640 8A008390 */  lbu        $v1, 0x8a($a0)
/* 7DE44 8008D644 02000524 */  addiu      $a1, $zero, 2
/* 7DE48 8008D648 06006510 */  beq        $v1, $a1, .L8008D664
/* 7DE4C 8008D64C 0100023C */   lui       $v0, 1
/* 7DE50 8008D650 21108200 */  addu       $v0, $a0, $v0
/* 7DE54 8008D654 06434290 */  lbu        $v0, 0x4306($v0)
/* 7DE58 8008D658 00000000 */  nop
/* 7DE5C 8008D65C 0C004514 */  bne        $v0, $a1, .L8008D690
/* 7DE60 8008D660 00000000 */   nop
.L8008D664:
/* 7DE64 8008D664 07000224 */  addiu      $v0, $zero, 7
/* 7DE68 8008D668 03006210 */  beq        $v1, $v0, .L8008D678
/* 7DE6C 8008D66C 00000000 */   nop
/* 7DE70 8008D670 04006014 */  bnez       $v1, .L8008D684
/* 7DE74 8008D674 00000000 */   nop
.L8008D678:
/* 7DE78 8008D678 E7484292 */  lbu        $v0, 0x48e7($s2)
/* 7DE7C 8008D67C A4350208 */  j          .L8008D690
/* 7DE80 8008D680 E64842A2 */   sb        $v0, 0x48e6($s2)
.L8008D684:
/* 7DE84 8008D684 E6484292 */  lbu        $v0, 0x48e6($s2)
/* 7DE88 8008D688 00000000 */  nop
/* 7DE8C 8008D68C E74842A2 */  sb         $v0, 0x48e7($s2)
.L8008D690:
/* 7DE90 8008D690 CC0A438E */  lw         $v1, 0xacc($s2)
/* 7DE94 8008D694 D00A428E */  lw         $v0, 0xad0($s2)
/* 7DE98 8008D698 00000000 */  nop
/* 7DE9C 8008D69C 09006210 */  beq        $v1, $v0, .L8008D6C4
/* 7DEA0 8008D6A0 0F80023C */   lui       $v0, %hi(D_800EFFA8)
/* 7DEA4 8008D6A4 A8FF4424 */  addiu      $a0, $v0, %lo(D_800EFFA8)
/* 7DEA8 8008D6A8 7800838C */  lw         $v1, 0x78($a0)
/* 7DEAC 8008D6AC 19150224 */  addiu      $v0, $zero, 0x1519
/* 7DEB0 8008D6B0 04006214 */  bne        $v1, $v0, .L8008D6C4
/* 7DEB4 8008D6B4 18150224 */   addiu     $v0, $zero, 0x1518
/* 7DEB8 8008D6B8 780082AC */  sw         $v0, 0x78($a0)
/* 7DEBC 8008D6BC 89400208 */  j          .L80090224
/* 7DEC0 8008D6C0 03000224 */   addiu     $v0, $zero, 3
.L8008D6C4:
/* 7DEC4 8008D6C4 D00A438E */  lw         $v1, 0xad0($s2)
/* 7DEC8 8008D6C8 CC0A428E */  lw         $v0, 0xacc($s2)
/* 7DECC 8008D6CC 00000000 */  nop
/* 7DED0 8008D6D0 11006214 */  bne        $v1, $v0, .L8008D718
/* 7DED4 8008D6D4 0F80023C */   lui       $v0, 0x800f
/* 7DED8 8008D6D8 0F80023C */  lui        $v0, %hi(D_800EFFA8)
/* 7DEDC 8008D6DC A8FF4424 */  addiu      $a0, $v0, %lo(D_800EFFA8)
/* 7DEE0 8008D6E0 7800838C */  lw         $v1, 0x78($a0)
/* 7DEE4 8008D6E4 19150224 */  addiu      $v0, $zero, 0x1519
/* 7DEE8 8008D6E8 0B006214 */  bne        $v1, $v0, .L8008D718
/* 7DEEC 8008D6EC 0F80023C */   lui       $v0, 0x800f
/* 7DEF0 8008D6F0 DC0A438E */  lw         $v1, 0xadc($s2)
/* 7DEF4 8008D6F4 FFFF0224 */  addiu      $v0, $zero, -1
/* 7DEF8 8008D6F8 07006214 */  bne        $v1, $v0, .L8008D718
/* 7DEFC 8008D6FC 0F80023C */   lui       $v0, 0x800f
/* 7DF00 8008D700 7400838C */  lw         $v1, 0x74($a0)
/* 7DF04 8008D704 18150224 */  addiu      $v0, $zero, 0x1518
/* 7DF08 8008D708 780082AC */  sw         $v0, 0x78($a0)
/* 7DF0C 8008D70C 13C8020C */  jal        FUN_800b204c
/* 7DF10 8008D710 DC0A43AE */   sw        $v1, 0xadc($s2)
/* 7DF14 8008D714 0F80023C */  lui        $v0, %hi(D_800F0020)
.L8008D718:
/* 7DF18 8008D718 2000428C */  lw         $v0, %lo(D_800F0020)($v0)
/* 7DF1C 8008D71C 00000000 */  nop
/* 7DF20 8008D720 19154228 */  slti       $v0, $v0, 0x1519
/* 7DF24 8008D724 BF0A4010 */  beqz       $v0, .L80090224
/* 7DF28 8008D728 03000224 */   addiu     $v0, $zero, 3
/* 7DF2C 8008D72C 6047438E */  lw         $v1, 0x4760($s2)
/* 7DF30 8008D730 00000000 */  nop
/* 7DF34 8008D734 03006018 */  blez       $v1, .L8008D744
/* 7DF38 8008D738 04000224 */   addiu     $v0, $zero, 4
/* 7DF3C 8008D73C 0B006214 */  bne        $v1, $v0, .L8008D76C
/* 7DF40 8008D740 00000000 */   nop
.L8008D744:
/* 7DF44 8008D744 0F80023C */  lui        $v0, %hi(D_800F0048)
/* 7DF48 8008D748 48004380 */  lb         $v1, %lo(D_800F0048)($v0)
/* 7DF4C 8008D74C 01000224 */  addiu      $v0, $zero, 1
/* 7DF50 8008D750 06006210 */  beq        $v1, $v0, .L8008D76C
/* 7DF54 8008D754 00000000 */   nop
/* 7DF58 8008D758 0F59020C */  jal        FUN_8009643c
/* 7DF5C 8008D75C F80A4426 */   addiu     $a0, $s2, 0xaf8
/* 7DF60 8008D760 02004010 */  beqz       $v0, .L8008D76C
/* 7DF64 8008D764 05000224 */   addiu     $v0, $zero, 5
/* 7DF68 8008D768 E04842AE */  sw         $v0, 0x48e0($s2)
.L8008D76C:
/* 7DF6C 8008D76C DC0A438E */  lw         $v1, 0xadc($s2)
/* 7DF70 8008D770 FFFF0224 */  addiu      $v0, $zero, -1
/* 7DF74 8008D774 02006210 */  beq        $v1, $v0, .L8008D780
/* 7DF78 8008D778 05000224 */   addiu     $v0, $zero, 5
/* 7DF7C 8008D77C E04842AE */  sw         $v0, 0x48e0($s2)
.L8008D780:
/* 7DF80 8008D780 0F80023C */  lui        $v0, %hi(D_800EFFA8)
/* 7DF84 8008D784 A8FF5024 */  addiu      $s0, $v0, %lo(D_800EFFA8)
/* 7DF88 8008D788 7400038E */  lw         $v1, 0x74($s0)
/* 7DF8C 8008D78C DC0A428E */  lw         $v0, 0xadc($s2)
/* 7DF90 8008D790 00000000 */  nop
/* 7DF94 8008D794 02006210 */  beq        $v1, $v0, .L8008D7A0
/* 7DF98 8008D798 05000224 */   addiu     $v0, $zero, 5
/* 7DF9C 8008D79C E04842AE */  sw         $v0, 0x48e0($s2)
.L8008D7A0:
/* 7DFA0 8008D7A0 E048428E */  lw         $v0, 0x48e0($s2)
/* 7DFA4 8008D7A4 00000000 */  nop
/* 7DFA8 8008D7A8 02004010 */  beqz       $v0, .L8008D7B4
/* 7DFAC 8008D7AC FFFF4224 */   addiu     $v0, $v0, -1
/* 7DFB0 8008D7B0 E04842AE */  sw         $v0, 0x48e0($s2)
.L8008D7B4:
/* 7DFB4 8008D7B4 0F80023C */  lui        $v0, %hi(D_800F003B)
/* 7DFB8 8008D7B8 3B004280 */  lb         $v0, %lo(D_800F003B)($v0)
/* 7DFBC 8008D7BC 00000000 */  nop
/* 7DFC0 8008D7C0 23004014 */  bnez       $v0, .L8008D850
/* 7DFC4 8008D7C4 FFFF0424 */   addiu     $a0, $zero, -1
/* 7DFC8 8008D7C8 0800428E */  lw         $v0, 8($s2)
/* 7DFCC 8008D7CC 00000000 */  nop
/* 7DFD0 8008D7D0 1F004018 */  blez       $v0, .L8008D850
/* 7DFD4 8008D7D4 21280000 */   addu      $a1, $zero, $zero
/* 7DFD8 8008D7D8 18150724 */  addiu      $a3, $zero, 0x1518
/* 7DFDC 8008D7DC 63001324 */  addiu      $s3, $zero, 0x63
/* 7DFE0 8008D7E0 7800068E */  lw         $a2, 0x78($s0)
/* 7DFE4 8008D7E4 3C001124 */  addiu      $s1, $zero, 0x3c
/* 7DFE8 8008D7E8 1000B3AF */  sw         $s3, 0x10($sp)
/* 7DFEC 8008D7EC 1400B1AF */  sw         $s1, 0x14($sp)
/* 7DFF0 8008D7F0 1800A0AF */  sw         $zero, 0x18($sp)
/* 7DFF4 8008D7F4 85F9010C */  jal        FUN_8007e614
/* 7DFF8 8008D7F8 1C00A0AF */   sw        $zero, 0x1c($sp)
/* 7DFFC 8008D7FC 14004014 */  bnez       $v0, .L8008D850
/* 7E000 8008D800 FFFF0424 */   addiu     $a0, $zero, -1
/* 7E004 8008D804 FEFF0424 */  addiu      $a0, $zero, -2
/* 7E008 8008D808 21280000 */  addu       $a1, $zero, $zero
/* 7E00C 8008D80C 7800068E */  lw         $a2, 0x78($s0)
/* 7E010 8008D810 18150724 */  addiu      $a3, $zero, 0x1518
/* 7E014 8008D814 1000B3AF */  sw         $s3, 0x10($sp)
/* 7E018 8008D818 1400B1AF */  sw         $s1, 0x14($sp)
/* 7E01C 8008D81C 1800A0AF */  sw         $zero, 0x18($sp)
/* 7E020 8008D820 85F9010C */  jal        FUN_8007e614
/* 7E024 8008D824 1C00A0AF */   sw        $zero, 0x1c($sp)
/* 7E028 8008D828 09004014 */  bnez       $v0, .L8008D850
/* 7E02C 8008D82C FFFF0424 */   addiu     $a0, $zero, -1
/* 7E030 8008D830 0800428E */  lw         $v0, 8($s2)
/* 7E034 8008D834 00000000 */  nop
/* 7E038 8008D838 FFFF4224 */  addiu      $v0, $v0, -1
/* 7E03C 8008D83C 080042AE */  sw         $v0, 8($s2)
/* 7E040 8008D840 7800028E */  lw         $v0, 0x78($s0)
/* 7E044 8008D844 00000000 */  nop
/* 7E048 8008D848 FFFF4224 */  addiu      $v0, $v0, -1
/* 7E04C 8008D84C 780002AE */  sw         $v0, 0x78($s0)
.L8008D850:
/* 7E050 8008D850 21280000 */  addu       $a1, $zero, $zero
/* 7E054 8008D854 18150724 */  addiu      $a3, $zero, 0x1518
/* 7E058 8008D858 0F80023C */  lui        $v0, %hi(D_800F0020)
/* 7E05C 8008D85C 2000468C */  lw         $a2, %lo(D_800F0020)($v0)
/* 7E060 8008D860 63000224 */  addiu      $v0, $zero, 0x63
/* 7E064 8008D864 1000A2AF */  sw         $v0, 0x10($sp)
/* 7E068 8008D868 3C000224 */  addiu      $v0, $zero, 0x3c
/* 7E06C 8008D86C 1400A2AF */  sw         $v0, 0x14($sp)
/* 7E070 8008D870 1800A0AF */  sw         $zero, 0x18($sp)
/* 7E074 8008D874 85F9010C */  jal        FUN_8007e614
/* 7E078 8008D878 1C00A0AF */   sw        $zero, 0x1c($sp)
/* 7E07C 8008D87C 11004010 */  beqz       $v0, .L8008D8C4
/* 7E080 8008D880 0F80023C */   lui       $v0, %hi(D_800F003E)
/* 7E084 8008D884 3E004380 */  lb         $v1, %lo(D_800F003E)($v0)
/* 7E088 8008D888 01000224 */  addiu      $v0, $zero, 1
/* 7E08C 8008D88C 0E006214 */  bne        $v1, $v0, .L8008D8C8
/* 7E090 8008D890 0F80023C */   lui       $v0, 0x800f
/* 7E094 8008D894 9C0B4282 */  lb         $v0, 0xb9c($s2)
/* 7E098 8008D898 00000000 */  nop
/* 7E09C 8008D89C 0A004014 */  bnez       $v0, .L8008D8C8
/* 7E0A0 8008D8A0 0F80023C */   lui       $v0, 0x800f
/* 7E0A4 8008D8A4 6047428E */  lw         $v0, 0x4760($s2)
/* 7E0A8 8008D8A8 00000000 */  nop
/* 7E0AC 8008D8AC 06004014 */  bnez       $v0, .L8008D8C8
/* 7E0B0 8008D8B0 0F80023C */   lui       $v0, 0x800f
/* 7E0B4 8008D8B4 FFFF0224 */  addiu      $v0, $zero, -1
/* 7E0B8 8008D8B8 604742AE */  sw         $v0, 0x4760($s2)
/* 7E0BC 8008D8BC F1FA010C */  jal        FUN_8007ebc4
/* 7E0C0 8008D8C0 21204002 */   addu      $a0, $s2, $zero
.L8008D8C4:
/* 7E0C4 8008D8C4 0F80023C */  lui        $v0, %hi(D_800F003E)
.L8008D8C8:
/* 7E0C8 8008D8C8 3E004380 */  lb         $v1, %lo(D_800F003E)($v0)
/* 7E0CC 8008D8CC 08000224 */  addiu      $v0, $zero, 8
/* 7E0D0 8008D8D0 03006210 */  beq        $v1, $v0, .L8008D8E0
/* 7E0D4 8008D8D4 02000224 */   addiu     $v0, $zero, 2
/* 7E0D8 8008D8D8 A3006214 */  bne        $v1, $v0, .L8008DB68
/* 7E0DC 8008D8DC 00000000 */   nop
.L8008D8E0:
/* 7E0E0 8008D8E0 9C0B4282 */  lb         $v0, 0xb9c($s2)
/* 7E0E4 8008D8E4 00000000 */  nop
/* 7E0E8 8008D8E8 9F004014 */  bnez       $v0, .L8008DB68
/* 7E0EC 8008D8EC FFFF0424 */   addiu     $a0, $zero, -1
/* 7E0F0 8008D8F0 21280000 */  addu       $a1, $zero, $zero
/* 7E0F4 8008D8F4 18150724 */  addiu      $a3, $zero, 0x1518
/* 7E0F8 8008D8F8 0F80033C */  lui        $v1, %hi(D_800F0020)
/* 7E0FC 8008D8FC 0000428E */  lw         $v0, ($s2)
/* 7E100 8008D900 2000668C */  lw         $a2, %lo(D_800F0020)($v1)
/* 7E104 8008D904 40100200 */  sll        $v0, $v0, 1
/* 7E108 8008D908 21104202 */  addu       $v0, $s2, $v0
/* 7E10C 8008D90C 18005084 */  lh         $s0, 0x18($v0)
/* 7E110 8008D910 63000224 */  addiu      $v0, $zero, 0x63
/* 7E114 8008D914 1000A2AF */  sw         $v0, 0x10($sp)
/* 7E118 8008D918 3C000224 */  addiu      $v0, $zero, 0x3c
/* 7E11C 8008D91C 1400A2AF */  sw         $v0, 0x14($sp)
/* 7E120 8008D920 1800A0AF */  sw         $zero, 0x18($sp)
/* 7E124 8008D924 85F9010C */  jal        FUN_8007e614
/* 7E128 8008D928 1C00A0AF */   sw        $zero, 0x1c($sp)
/* 7E12C 8008D92C 8E004010 */  beqz       $v0, .L8008DB68
/* 7E130 8008D930 FB00022A */   slti      $v0, $s0, 0xfb
/* 7E134 8008D934 8C004014 */  bnez       $v0, .L8008DB68
/* 7E138 8008D938 00000000 */   nop
/* 7E13C 8008D93C D00A438E */  lw         $v1, 0xad0($s2)
/* 7E140 8008D940 CC0A428E */  lw         $v0, 0xacc($s2)
/* 7E144 8008D944 00000000 */  nop
/* 7E148 8008D948 87006214 */  bne        $v1, $v0, .L8008DB68
/* 7E14C 8008D94C 00000000 */   nop
/* 7E150 8008D950 9C0B4282 */  lb         $v0, 0xb9c($s2)
/* 7E154 8008D954 00000000 */  nop
/* 7E158 8008D958 83004014 */  bnez       $v0, .L8008DB68
/* 7E15C 8008D95C 00000000 */   nop
/* 7E160 8008D960 10006104 */  bgez       $v1, .L8008D9A4
/* 7E164 8008D964 00000000 */   nop
/* 7E168 8008D968 0400428E */  lw         $v0, 4($s2)
/* 7E16C 8008D96C C80A438E */  lw         $v1, 0xac8($s2)
/* 7E170 8008D970 00130200 */  sll        $v0, $v0, 0xc
/* 7E174 8008D974 21186200 */  addu       $v1, $v1, $v0
/* 7E178 8008D978 0400428E */  lw         $v0, 4($s2)
/* 7E17C 8008D97C C80A43AE */  sw         $v1, 0xac8($s2)
/* 7E180 8008D980 CC0A438E */  lw         $v1, 0xacc($s2)
/* 7E184 8008D984 00130200 */  sll        $v0, $v0, 0xc
/* 7E188 8008D988 21186200 */  addu       $v1, $v1, $v0
/* 7E18C 8008D98C 0400428E */  lw         $v0, 4($s2)
/* 7E190 8008D990 CC0A43AE */  sw         $v1, 0xacc($s2)
/* 7E194 8008D994 D00A438E */  lw         $v1, 0xad0($s2)
/* 7E198 8008D998 00130200 */  sll        $v0, $v0, 0xc
/* 7E19C 8008D99C 21186200 */  addu       $v1, $v1, $v0
/* 7E1A0 8008D9A0 D00A43AE */  sw         $v1, 0xad0($s2)
.L8008D9A4:
/* 7E1A4 8008D9A4 0400438E */  lw         $v1, 4($s2)
/* 7E1A8 8008D9A8 D00A428E */  lw         $v0, 0xad0($s2)
/* 7E1AC 8008D9AC 001B0300 */  sll        $v1, $v1, 0xc
/* 7E1B0 8008D9B0 2A104300 */  slt        $v0, $v0, $v1
/* 7E1B4 8008D9B4 0F004014 */  bnez       $v0, .L8008D9F4
/* 7E1B8 8008D9B8 00000000 */   nop
/* 7E1BC 8008D9BC C80A428E */  lw         $v0, 0xac8($s2)
/* 7E1C0 8008D9C0 00000000 */  nop
/* 7E1C4 8008D9C4 23104300 */  subu       $v0, $v0, $v1
/* 7E1C8 8008D9C8 C80A42AE */  sw         $v0, 0xac8($s2)
/* 7E1CC 8008D9CC 0400428E */  lw         $v0, 4($s2)
/* 7E1D0 8008D9D0 CC0A438E */  lw         $v1, 0xacc($s2)
/* 7E1D4 8008D9D4 00130200 */  sll        $v0, $v0, 0xc
/* 7E1D8 8008D9D8 23186200 */  subu       $v1, $v1, $v0
/* 7E1DC 8008D9DC 0400428E */  lw         $v0, 4($s2)
/* 7E1E0 8008D9E0 CC0A43AE */  sw         $v1, 0xacc($s2)
/* 7E1E4 8008D9E4 D00A438E */  lw         $v1, 0xad0($s2)
/* 7E1E8 8008D9E8 00130200 */  sll        $v0, $v0, 0xc
/* 7E1EC 8008D9EC 23186200 */  subu       $v1, $v1, $v0
/* 7E1F0 8008D9F0 D00A43AE */  sw         $v1, 0xad0($s2)
.L8008D9F4:
/* 7E1F4 8008D9F4 C00A448E */  lw         $a0, 0xac0($s2)
/* 7E1F8 8008D9F8 FFFF0224 */  addiu      $v0, $zero, -1
/* 7E1FC 8008D9FC 46008210 */  beq        $a0, $v0, .L8008DB18
/* 7E200 8008DA00 00000000 */   nop
/* 7E204 8008DA04 CC0A438E */  lw         $v1, 0xacc($s2)
/* 7E208 8008DA08 D00A428E */  lw         $v0, 0xad0($s2)
/* 7E20C 8008DA0C 00000000 */  nop
/* 7E210 8008DA10 2B006214 */  bne        $v1, $v0, .L8008DAC0
/* 7E214 8008DA14 21288000 */   addu      $a1, $a0, $zero
/* 7E218 8008DA18 9C0B4282 */  lb         $v0, 0xb9c($s2)
/* 7E21C 8008DA1C 00000000 */  nop
/* 7E220 8008DA20 28004014 */  bnez       $v0, .L8008DAC4
/* 7E224 8008DA24 00000000 */   nop
/* 7E228 8008DA28 18004286 */  lh         $v0, 0x18($s2)
/* 7E22C 8008DA2C 00000000 */  nop
/* 7E230 8008DA30 07004510 */  beq        $v0, $a1, .L8008DA50
/* 7E234 8008DA34 21200000 */   addu      $a0, $zero, $zero
/* 7E238 8008DA38 21184002 */  addu       $v1, $s2, $zero
.L8008DA3C:
/* 7E23C 8008DA3C 02006324 */  addiu      $v1, $v1, 2
/* 7E240 8008DA40 18006284 */  lh         $v0, 0x18($v1)
/* 7E244 8008DA44 00000000 */  nop
/* 7E248 8008DA48 FCFF4514 */  bne        $v0, $a1, .L8008DA3C
/* 7E24C 8008DA4C 01008424 */   addiu     $a0, $a0, 1
.L8008DA50:
/* 7E250 8008DA50 05FFA224 */  addiu      $v0, $a1, -0xfb
/* 7E254 8008DA54 40100200 */  sll        $v0, $v0, 1
/* 7E258 8008DA58 21104202 */  addu       $v0, $s2, $v0
/* 7E25C 8008DA5C 440A4584 */  lh         $a1, 0xa44($v0)
/* 7E260 8008DA60 0400428E */  lw         $v0, 4($s2)
/* 7E264 8008DA64 01008324 */  addiu      $v1, $a0, 1
/* 7E268 8008DA68 23104500 */  subu       $v0, $v0, $a1
/* 7E26C 8008DA6C 2A106200 */  slt        $v0, $v1, $v0
/* 7E270 8008DA70 0E004010 */  beqz       $v0, .L8008DAAC
/* 7E274 8008DA74 40100300 */   sll       $v0, $v1, 1
/* 7E278 8008DA78 21205200 */  addu       $a0, $v0, $s2
.L8008DA7C:
/* 7E27C 8008DA7C 21106500 */  addu       $v0, $v1, $a1
/* 7E280 8008DA80 40100200 */  sll        $v0, $v0, 1
/* 7E284 8008DA84 21104202 */  addu       $v0, $s2, $v0
/* 7E288 8008DA88 18004294 */  lhu        $v0, 0x18($v0)
/* 7E28C 8008DA8C 01006324 */  addiu      $v1, $v1, 1
/* 7E290 8008DA90 180082A4 */  sh         $v0, 0x18($a0)
/* 7E294 8008DA94 0400428E */  lw         $v0, 4($s2)
/* 7E298 8008DA98 00000000 */  nop
/* 7E29C 8008DA9C 23104500 */  subu       $v0, $v0, $a1
/* 7E2A0 8008DAA0 2A106200 */  slt        $v0, $v1, $v0
/* 7E2A4 8008DAA4 F5FF4014 */  bnez       $v0, .L8008DA7C
/* 7E2A8 8008DAA8 02008424 */   addiu     $a0, $a0, 2
.L8008DAAC:
/* 7E2AC 8008DAAC 0400428E */  lw         $v0, 4($s2)
/* 7E2B0 8008DAB0 0D000424 */  addiu      $a0, $zero, 0xd
/* 7E2B4 8008DAB4 23104500 */  subu       $v0, $v0, $a1
/* 7E2B8 8008DAB8 12CB020C */  jal        FUN_800b2c48
/* 7E2BC 8008DABC 040042AE */   sw        $v0, 4($s2)
.L8008DAC0:
/* 7E2C0 8008DAC0 9C0B4282 */  lb         $v0, 0xb9c($s2)
.L8008DAC4:
/* 7E2C4 8008DAC4 C00A438E */  lw         $v1, 0xac0($s2)
/* 7E2C8 8008DAC8 12004014 */  bnez       $v0, .L8008DB14
/* 7E2CC 8008DACC FFFF0224 */   addiu     $v0, $zero, -1
/* 7E2D0 8008DAD0 2A107000 */  slt        $v0, $v1, $s0
/* 7E2D4 8008DAD4 0E004010 */  beqz       $v0, .L8008DB10
/* 7E2D8 8008DAD8 05FF6224 */   addiu     $v0, $v1, -0xfb
/* 7E2DC 8008DADC 40100200 */  sll        $v0, $v0, 1
/* 7E2E0 8008DAE0 21104202 */  addu       $v0, $s2, $v0
/* 7E2E4 8008DAE4 440A4484 */  lh         $a0, 0xa44($v0)
/* 7E2E8 8008DAE8 C80A428E */  lw         $v0, 0xac8($s2)
/* 7E2EC 8008DAEC D00A438E */  lw         $v1, 0xad0($s2)
/* 7E2F0 8008DAF0 00230400 */  sll        $a0, $a0, 0xc
/* 7E2F4 8008DAF4 23104400 */  subu       $v0, $v0, $a0
/* 7E2F8 8008DAF8 C80A42AE */  sw         $v0, 0xac8($s2)
/* 7E2FC 8008DAFC CC0A428E */  lw         $v0, 0xacc($s2)
/* 7E300 8008DB00 23186400 */  subu       $v1, $v1, $a0
/* 7E304 8008DB04 D00A43AE */  sw         $v1, 0xad0($s2)
/* 7E308 8008DB08 23104400 */  subu       $v0, $v0, $a0
/* 7E30C 8008DB0C CC0A42AE */  sw         $v0, 0xacc($s2)
.L8008DB10:
/* 7E310 8008DB10 FFFF0224 */  addiu      $v0, $zero, -1
.L8008DB14:
/* 7E314 8008DB14 C00A42AE */  sw         $v0, 0xac0($s2)
.L8008DB18:
/* 7E318 8008DB18 21200000 */  addu       $a0, $zero, $zero
/* 7E31C 8008DB1C 21184002 */  addu       $v1, $s2, $zero
.L8008DB20:
/* 7E320 8008DB20 0C0060A4 */  sh         $zero, 0xc($v1)
/* 7E324 8008DB24 100060A4 */  sh         $zero, 0x10($v1)
/* 7E328 8008DB28 EC0A60A4 */  sh         $zero, 0xaec($v1)
/* 7E32C 8008DB2C 01008424 */  addiu      $a0, $a0, 1
/* 7E330 8008DB30 02008228 */  slti       $v0, $a0, 2
/* 7E334 8008DB34 FAFF4014 */  bnez       $v0, .L8008DB20
/* 7E338 8008DB38 02006324 */   addiu     $v1, $v1, 2
/* 7E33C 8008DB3C 21204002 */  addu       $a0, $s2, $zero
/* 7E340 8008DB40 88FE010C */  jal        FUN_8007fa20
/* 7E344 8008DB44 21280002 */   addu      $a1, $s0, $zero
/* 7E348 8008DB48 D00A438E */  lw         $v1, 0xad0($s2)
/* 7E34C 8008DB4C CC0A428E */  lw         $v0, 0xacc($s2)
/* 7E350 8008DB50 C00A50AE */  sw         $s0, 0xac0($s2)
/* 7E354 8008DB54 D40A40AE */  sw         $zero, 0xad4($s2)
/* 7E358 8008DB58 140040A6 */  sh         $zero, 0x14($s2)
/* 7E35C 8008DB5C 00104224 */  addiu      $v0, $v0, 0x1000
/* 7E360 8008DB60 C80A43AE */  sw         $v1, 0xac8($s2)
/* 7E364 8008DB64 CC0A42AE */  sw         $v0, 0xacc($s2)
.L8008DB68:
/* 7E368 8008DB68 AC484392 */  lbu        $v1, 0x48ac($s2)
/* 7E36C 8008DB6C 01000224 */  addiu      $v0, $zero, 1
/* 7E370 8008DB70 8C006210 */  beq        $v1, $v0, .L8008DDA4
/* 7E374 8008DB74 FFFF0424 */   addiu     $a0, $zero, -1
/* 7E378 8008DB78 21280000 */  addu       $a1, $zero, $zero
/* 7E37C 8008DB7C 18150724 */  addiu      $a3, $zero, 0x1518
/* 7E380 8008DB80 0F80023C */  lui        $v0, %hi(D_800F0020)
/* 7E384 8008DB84 2000468C */  lw         $a2, %lo(D_800F0020)($v0)
/* 7E388 8008DB88 63000224 */  addiu      $v0, $zero, 0x63
/* 7E38C 8008DB8C 1000A2AF */  sw         $v0, 0x10($sp)
/* 7E390 8008DB90 3C000224 */  addiu      $v0, $zero, 0x3c
/* 7E394 8008DB94 1400A2AF */  sw         $v0, 0x14($sp)
/* 7E398 8008DB98 1800A0AF */  sw         $zero, 0x18($sp)
/* 7E39C 8008DB9C 85F9010C */  jal        FUN_8007e614
/* 7E3A0 8008DBA0 1C00A0AF */   sw        $zero, 0x1c($sp)
/* 7E3A4 8008DBA4 7F004014 */  bnez       $v0, .L8008DDA4
/* 7E3A8 8008DBA8 00000000 */   nop
/* 7E3AC 8008DBAC 9C0B4282 */  lb         $v0, 0xb9c($s2)
/* 7E3B0 8008DBB0 00000000 */  nop
/* 7E3B4 8008DBB4 7B004014 */  bnez       $v0, .L8008DDA4
/* 7E3B8 8008DBB8 00000000 */   nop
/* 7E3BC 8008DBBC 0AF8010C */  jal        FUN_8007e028
/* 7E3C0 8008DBC0 21200000 */   addu      $a0, $zero, $zero
/* 7E3C4 8008DBC4 0D004010 */  beqz       $v0, .L8008DBFC
/* 7E3C8 8008DBC8 00000000 */   nop
/* 7E3CC 8008DBCC 8AF8010C */  jal        FUN_8007e228
/* 7E3D0 8008DBD0 21200000 */   addu      $a0, $zero, $zero
/* 7E3D4 8008DBD4 09004010 */  beqz       $v0, .L8008DBFC
/* 7E3D8 8008DBD8 00000000 */   nop
/* 7E3DC 8008DBDC A7F8010C */  jal        FUN_8007e29c
/* 7E3E0 8008DBE0 21200000 */   addu      $a0, $zero, $zero
/* 7E3E4 8008DBE4 05004010 */  beqz       $v0, .L8008DBFC
/* 7E3E8 8008DBE8 00000000 */   nop
/* 7E3EC 8008DBEC 5DF8010C */  jal        FUN_8007e174
/* 7E3F0 8008DBF0 21200000 */   addu      $a0, $zero, $zero
/* 7E3F4 8008DBF4 59004014 */  bnez       $v0, .L8008DD5C
/* 7E3F8 8008DBF8 0F80023C */   lui       $v0, 0x800f
.L8008DBFC:
/* 7E3FC 8008DBFC 0AF8010C */  jal        FUN_8007e028
/* 7E400 8008DC00 21200000 */   addu      $a0, $zero, $zero
/* 7E404 8008DC04 09004010 */  beqz       $v0, .L8008DC2C
/* 7E408 8008DC08 00000000 */   nop
/* 7E40C 8008DC0C 23F8010C */  jal        FUN_8007e08c
/* 7E410 8008DC10 21200000 */   addu      $a0, $zero, $zero
/* 7E414 8008DC14 05004010 */  beqz       $v0, .L8008DC2C
/* 7E418 8008DC18 00000000 */   nop
/* 7E41C 8008DC1C 40F8010C */  jal        FUN_8007e100
/* 7E420 8008DC20 21200000 */   addu      $a0, $zero, $zero
/* 7E424 8008DC24 4D004014 */  bnez       $v0, .L8008DD5C
/* 7E428 8008DC28 0F80023C */   lui       $v0, 0x800f
.L8008DC2C:
/* 7E42C 8008DC2C 0AF8010C */  jal        FUN_8007e028
/* 7E430 8008DC30 21200000 */   addu      $a0, $zero, $zero
/* 7E434 8008DC34 09004010 */  beqz       $v0, .L8008DC5C
/* 7E438 8008DC38 00000000 */   nop
/* 7E43C 8008DC3C 8AF8010C */  jal        FUN_8007e228
/* 7E440 8008DC40 21200000 */   addu      $a0, $zero, $zero
/* 7E444 8008DC44 05004010 */  beqz       $v0, .L8008DC5C
/* 7E448 8008DC48 00000000 */   nop
/* 7E44C 8008DC4C 40F8010C */  jal        FUN_8007e100
/* 7E450 8008DC50 21200000 */   addu      $a0, $zero, $zero
/* 7E454 8008DC54 41004014 */  bnez       $v0, .L8008DD5C
/* 7E458 8008DC58 0F80023C */   lui       $v0, 0x800f
.L8008DC5C:
/* 7E45C 8008DC5C 0AF8010C */  jal        FUN_8007e028
/* 7E460 8008DC60 21200000 */   addu      $a0, $zero, $zero
/* 7E464 8008DC64 09004010 */  beqz       $v0, .L8008DC8C
/* 7E468 8008DC68 00000000 */   nop
/* 7E46C 8008DC6C 23F8010C */  jal        FUN_8007e08c
/* 7E470 8008DC70 21200000 */   addu      $a0, $zero, $zero
/* 7E474 8008DC74 05004010 */  beqz       $v0, .L8008DC8C
/* 7E478 8008DC78 00000000 */   nop
/* 7E47C 8008DC7C A7F8010C */  jal        FUN_8007e29c
/* 7E480 8008DC80 21200000 */   addu      $a0, $zero, $zero
/* 7E484 8008DC84 35004014 */  bnez       $v0, .L8008DD5C
/* 7E488 8008DC88 0F80023C */   lui       $v0, 0x800f
.L8008DC8C:
/* 7E48C 8008DC8C 0AF8010C */  jal        FUN_8007e028
/* 7E490 8008DC90 01000424 */   addiu     $a0, $zero, 1
/* 7E494 8008DC94 0D004010 */  beqz       $v0, .L8008DCCC
/* 7E498 8008DC98 00000000 */   nop
/* 7E49C 8008DC9C 8AF8010C */  jal        FUN_8007e228
/* 7E4A0 8008DCA0 01000424 */   addiu     $a0, $zero, 1
/* 7E4A4 8008DCA4 09004010 */  beqz       $v0, .L8008DCCC
/* 7E4A8 8008DCA8 00000000 */   nop
/* 7E4AC 8008DCAC A7F8010C */  jal        FUN_8007e29c
/* 7E4B0 8008DCB0 01000424 */   addiu     $a0, $zero, 1
/* 7E4B4 8008DCB4 05004010 */  beqz       $v0, .L8008DCCC
/* 7E4B8 8008DCB8 00000000 */   nop
/* 7E4BC 8008DCBC 5DF8010C */  jal        FUN_8007e174
/* 7E4C0 8008DCC0 01000424 */   addiu     $a0, $zero, 1
/* 7E4C4 8008DCC4 25004014 */  bnez       $v0, .L8008DD5C
/* 7E4C8 8008DCC8 0F80023C */   lui       $v0, 0x800f
.L8008DCCC:
/* 7E4CC 8008DCCC 0AF8010C */  jal        FUN_8007e028
/* 7E4D0 8008DCD0 01000424 */   addiu     $a0, $zero, 1
/* 7E4D4 8008DCD4 09004010 */  beqz       $v0, .L8008DCFC
/* 7E4D8 8008DCD8 00000000 */   nop
/* 7E4DC 8008DCDC 23F8010C */  jal        FUN_8007e08c
/* 7E4E0 8008DCE0 01000424 */   addiu     $a0, $zero, 1
/* 7E4E4 8008DCE4 05004010 */  beqz       $v0, .L8008DCFC
/* 7E4E8 8008DCE8 00000000 */   nop
/* 7E4EC 8008DCEC 40F8010C */  jal        FUN_8007e100
/* 7E4F0 8008DCF0 01000424 */   addiu     $a0, $zero, 1
/* 7E4F4 8008DCF4 19004014 */  bnez       $v0, .L8008DD5C
/* 7E4F8 8008DCF8 0F80023C */   lui       $v0, 0x800f
.L8008DCFC:
/* 7E4FC 8008DCFC 0AF8010C */  jal        FUN_8007e028
/* 7E500 8008DD00 01000424 */   addiu     $a0, $zero, 1
/* 7E504 8008DD04 09004010 */  beqz       $v0, .L8008DD2C
/* 7E508 8008DD08 00000000 */   nop
/* 7E50C 8008DD0C 8AF8010C */  jal        FUN_8007e228
/* 7E510 8008DD10 01000424 */   addiu     $a0, $zero, 1
/* 7E514 8008DD14 05004010 */  beqz       $v0, .L8008DD2C
/* 7E518 8008DD18 00000000 */   nop
/* 7E51C 8008DD1C 40F8010C */  jal        FUN_8007e100
/* 7E520 8008DD20 01000424 */   addiu     $a0, $zero, 1
/* 7E524 8008DD24 0D004014 */  bnez       $v0, .L8008DD5C
/* 7E528 8008DD28 0F80023C */   lui       $v0, 0x800f
.L8008DD2C:
/* 7E52C 8008DD2C 0AF8010C */  jal        FUN_8007e028
/* 7E530 8008DD30 01000424 */   addiu     $a0, $zero, 1
/* 7E534 8008DD34 1B004010 */  beqz       $v0, .L8008DDA4
/* 7E538 8008DD38 00000000 */   nop
/* 7E53C 8008DD3C 23F8010C */  jal        FUN_8007e08c
/* 7E540 8008DD40 01000424 */   addiu     $a0, $zero, 1
/* 7E544 8008DD44 17004010 */  beqz       $v0, .L8008DDA4
/* 7E548 8008DD48 00000000 */   nop
/* 7E54C 8008DD4C A7F8010C */  jal        FUN_8007e29c
/* 7E550 8008DD50 01000424 */   addiu     $a0, $zero, 1
/* 7E554 8008DD54 13004010 */  beqz       $v0, .L8008DDA4
/* 7E558 8008DD58 0F80023C */   lui       $v0, %hi(D_800F0040)
.L8008DD5C:
/* 7E55C 8008DD5C 40004280 */  lb         $v0, %lo(D_800F0040)($v0)
/* 7E560 8008DD60 00000000 */  nop
/* 7E564 8008DD64 05004014 */  bnez       $v0, .L8008DD7C
/* 7E568 8008DD68 00000000 */   nop
/* 7E56C 8008DD6C 6047428E */  lw         $v0, 0x4760($s2)
/* 7E570 8008DD70 00000000 */  nop
/* 7E574 8008DD74 05004018 */  blez       $v0, .L8008DD8C
/* 7E578 8008DD78 10000224 */   addiu     $v0, $zero, 0x10
.L8008DD7C:
/* 7E57C 8008DD7C 12CB020C */  jal        FUN_800b2c48
/* 7E580 8008DD80 19000424 */   addiu     $a0, $zero, 0x19
/* 7E584 8008DD84 69370208 */  j          .L8008DDA4
/* 7E588 8008DD88 004740AE */   sw        $zero, 0x4700($s2)
.L8008DD8C:
/* 7E58C 8008DD8C E40A438E */  lw         $v1, 0xae4($s2)
/* 7E590 8008DD90 00000000 */  nop
/* 7E594 8008DD94 02006214 */  bne        $v1, $v0, .L8008DDA0
/* 7E598 8008DD98 11000224 */   addiu     $v0, $zero, 0x11
/* 7E59C 8008DD9C E40A42AE */  sw         $v0, 0xae4($s2)
.L8008DDA0:
/* 7E5A0 8008DDA0 004740AE */  sw         $zero, 0x4700($s2)
.L8008DDA4:
/* 7E5A4 8008DDA4 E40A438E */  lw         $v1, 0xae4($s2)
/* 7E5A8 8008DDA8 10000424 */  addiu      $a0, $zero, 0x10
/* 7E5AC 8008DDAC 98006410 */  beq        $v1, $a0, .L8008E010
/* 7E5B0 8008DDB0 20006228 */   slti      $v0, $v1, 0x20
/* 7E5B4 8008DDB4 94004014 */  bnez       $v0, .L8008E008
/* 7E5B8 8008DDB8 01006224 */   addiu     $v0, $v1, 1
/* 7E5BC 8008DDBC 0180023C */  lui        $v0, %hi(D_80015DA0)
/* 7E5C0 8008DDC0 A05D4B24 */  addiu      $t3, $v0, %lo(D_80015DA0)
/* 7E5C4 8008DDC4 0000688D */  lw         $t0, ($t3)
/* 7E5C8 8008DDC8 0400698D */  lw         $t1, 4($t3)
/* 7E5CC 8008DDCC 08006A8D */  lw         $t2, 8($t3)
/* 7E5D0 8008DDD0 2000A8AF */  sw         $t0, 0x20($sp)
/* 7E5D4 8008DDD4 2400A9AF */  sw         $t1, 0x24($sp)
/* 7E5D8 8008DDD8 2800AAAF */  sw         $t2, 0x28($sp)
/* 7E5DC 8008DDDC 0C00688D */  lw         $t0, 0xc($t3)
/* 7E5E0 8008DDE0 1000698D */  lw         $t1, 0x10($t3)
/* 7E5E4 8008DDE4 2C00A8AF */  sw         $t0, 0x2c($sp)
/* 7E5E8 8008DDE8 3000A9AF */  sw         $t1, 0x30($sp)
/* 7E5EC 8008DDEC 5B9F020C */  jal        FUN_800a7d6c
/* 7E5F0 8008DDF0 21A00000 */   addu      $s4, $zero, $zero
/* 7E5F4 8008DDF4 AC484392 */  lbu        $v1, 0x48ac($s2)
/* 7E5F8 8008DDF8 01000224 */  addiu      $v0, $zero, 1
/* 7E5FC 8008DDFC 04006210 */  beq        $v1, $v0, .L8008DE10
/* 7E600 8008DE00 21180000 */   addu      $v1, $zero, $zero
/* 7E604 8008DE04 EDC1020C */  jal        FUN_800b07b4
/* 7E608 8008DE08 00000000 */   nop
/* 7E60C 8008DE0C 21180000 */  addu       $v1, $zero, $zero
.L8008DE10:
/* 7E610 8008DE10 0F80023C */  lui        $v0, %hi(D_800F0028)
/* 7E614 8008DE14 28004724 */  addiu      $a3, $v0, %lo(D_800F0028)
/* 7E618 8008DE18 1600E580 */  lb         $a1, 0x16($a3)
/* 7E61C 8008DE1C 2000A627 */  addiu      $a2, $sp, 0x20
/* 7E620 8008DE20 2120C000 */  addu       $a0, $a2, $zero
.L8008DE24:
/* 7E624 8008DE24 0000828C */  lw         $v0, ($a0)
/* 7E628 8008DE28 00000000 */  nop
/* 7E62C 8008DE2C 0500A210 */  beq        $a1, $v0, .L8008DE44
/* 7E630 8008DE30 00000000 */   nop
/* 7E634 8008DE34 01006324 */  addiu      $v1, $v1, 1
/* 7E638 8008DE38 0500622C */  sltiu      $v0, $v1, 5
/* 7E63C 8008DE3C F9FF4014 */  bnez       $v0, .L8008DE24
/* 7E640 8008DE40 04008424 */   addiu     $a0, $a0, 4
.L8008DE44:
/* 7E644 8008DE44 01006324 */  addiu      $v1, $v1, 1
/* 7E648 8008DE48 CCCC023C */  lui        $v0, 0xcccc
/* 7E64C 8008DE4C CDCC4234 */  ori        $v0, $v0, 0xcccd
/* 7E650 8008DE50 19006200 */  multu      $v1, $v0
/* 7E654 8008DE54 10400000 */  mfhi       $t0
/* 7E658 8008DE58 82200800 */  srl        $a0, $t0, 2
/* 7E65C 8008DE5C 80100400 */  sll        $v0, $a0, 2
/* 7E660 8008DE60 21104400 */  addu       $v0, $v0, $a0
/* 7E664 8008DE64 23186200 */  subu       $v1, $v1, $v0
/* 7E668 8008DE68 80180300 */  sll        $v1, $v1, 2
/* 7E66C 8008DE6C 2118C300 */  addu       $v1, $a2, $v1
/* 7E670 8008DE70 00006290 */  lbu        $v0, ($v1)
/* 7E674 8008DE74 21204002 */  addu       $a0, $s2, $zero
/* 7E678 8008DE78 1600E2A0 */  sb         $v0, 0x16($a3)
/* 7E67C 8008DE7C FFFF0224 */  addiu      $v0, $zero, -1
/* 7E680 8008DE80 C00A42AE */  sw         $v0, 0xac0($s2)
/* 7E684 8008DE84 F1FA010C */  jal        FUN_8007ebc4
/* 7E688 8008DE88 C40A42AE */   sw        $v0, 0xac4($s2)
/* 7E68C 8008DE8C 15008012 */  beqz       $s4, .L8008DEE4
/* 7E690 8008DE90 0F80023C */   lui       $v0, 0x800f
/* 7E694 8008DE94 BC0A428E */  lw         $v0, 0xabc($s2)
/* 7E698 8008DE98 00000000 */  nop
/* 7E69C 8008DE9C 10004018 */  blez       $v0, .L8008DEE0
/* 7E6A0 8008DEA0 21800000 */   addu      $s0, $zero, $zero
/* 7E6A4 8008DEA4 0F80023C */  lui        $v0, %hi(D_800F0028)
/* 7E6A8 8008DEA8 28005324 */  addiu      $s3, $v0, %lo(D_800F0028)
/* 7E6AC 8008DEAC 21884002 */  addu       $s1, $s2, $zero
.L8008DEB0:
/* 7E6B0 8008DEB0 0A022286 */  lh         $v0, 0x20a($s1)
/* 7E6B4 8008DEB4 0A022396 */  lhu        $v1, 0x20a($s1)
/* 7E6B8 8008DEB8 04008216 */  bne        $s4, $v0, .L8008DECC
/* 7E6BC 8008DEBC 21208002 */   addu      $a0, $s4, $zero
/* 7E6C0 8008DEC0 1BA2020C */  jal        FUN_800a886c
/* 7E6C4 8008DEC4 1E0063A6 */   sh        $v1, 0x1e($s3)
/* 7E6C8 8008DEC8 040062AE */  sw         $v0, 4($s3)
.L8008DECC:
/* 7E6CC 8008DECC BC0A428E */  lw         $v0, 0xabc($s2)
/* 7E6D0 8008DED0 01001026 */  addiu      $s0, $s0, 1
/* 7E6D4 8008DED4 2A100202 */  slt        $v0, $s0, $v0
/* 7E6D8 8008DED8 F5FF4014 */  bnez       $v0, .L8008DEB0
/* 7E6DC 8008DEDC 02003126 */   addiu     $s1, $s1, 2
.L8008DEE0:
/* 7E6E0 8008DEE0 0F80023C */  lui        $v0, %hi(D_800F0028)
.L8008DEE4:
/* 7E6E4 8008DEE4 28005024 */  addiu      $s0, $v0, %lo(D_800F0028)
/* 7E6E8 8008DEE8 1E000486 */  lh         $a0, 0x1e($s0)
/* 7E6EC 8008DEEC 00000000 */  nop
/* 7E6F0 8008DEF0 F9008228 */  slti       $v0, $a0, 0xf9
/* 7E6F4 8008DEF4 08004010 */  beqz       $v0, .L8008DF18
/* 7E6F8 8008DEF8 00000000 */   nop
/* 7E6FC 8008DEFC 1BA2020C */  jal        FUN_800a886c
/* 7E700 8008DF00 00000000 */   nop
/* 7E704 8008DF04 2400428C */  lw         $v0, 0x24($v0)
/* 7E708 8008DF08 00000000 */  nop
/* 7E70C 8008DF0C 02004230 */  andi       $v0, $v0, 2
/* 7E710 8008DF10 37004010 */  beqz       $v0, .L8008DFF0
/* 7E714 8008DF14 00000000 */   nop
.L8008DF18:
/* 7E718 8008DF18 0A024296 */  lhu        $v0, 0x20a($s2)
/* 7E71C 8008DF1C 00000000 */  nop
/* 7E720 8008DF20 00240200 */  sll        $a0, $v0, 0x10
/* 7E724 8008DF24 03240400 */  sra        $a0, $a0, 0x10
/* 7E728 8008DF28 1BA2020C */  jal        FUN_800a886c
/* 7E72C 8008DF2C 1E0002A6 */   sh        $v0, 0x1e($s0)
/* 7E730 8008DF30 21204000 */  addu       $a0, $v0, $zero
/* 7E734 8008DF34 8A000592 */  lbu        $a1, 0x8a($s0)
/* 7E738 8008DF38 07000224 */  addiu      $v0, $zero, 7
/* 7E73C 8008DF3C 0700A210 */  beq        $a1, $v0, .L8008DF5C
/* 7E740 8008DF40 040004AE */   sw        $a0, 4($s0)
/* 7E744 8008DF44 0500A010 */  beqz       $a1, .L8008DF5C
/* 7E748 8008DF48 0200A538 */   xori      $a1, $a1, 2
/* 7E74C 8008DF4C E4484692 */  lbu        $a2, 0x48e4($s2)
/* 7E750 8008DF50 8BFA010C */  jal        FUN_8007ea2c
/* 7E754 8008DF54 0100A52C */   sltiu     $a1, $a1, 1
/* 7E758 8008DF58 E64842A2 */  sb         $v0, 0x48e6($s2)
.L8008DF5C:
/* 7E75C 8008DF5C 0F80023C */  lui        $v0, %hi(D_800F0028)
/* 7E760 8008DF60 28004324 */  addiu      $v1, $v0, %lo(D_800F0028)
/* 7E764 8008DF64 0100023C */  lui        $v0, 1
/* 7E768 8008DF68 21106200 */  addu       $v0, $v1, $v0
/* 7E76C 8008DF6C 06434590 */  lbu        $a1, 0x4306($v0)
/* 7E770 8008DF70 07000224 */  addiu      $v0, $zero, 7
/* 7E774 8008DF74 0900A210 */  beq        $a1, $v0, .L8008DF9C
/* 7E778 8008DF78 0F80023C */   lui       $v0, 0x800f
/* 7E77C 8008DF7C 0700A010 */  beqz       $a1, .L8008DF9C
/* 7E780 8008DF80 0200A538 */   xori      $a1, $a1, 2
/* 7E784 8008DF84 0400648C */  lw         $a0, 4($v1)
/* 7E788 8008DF88 E5484692 */  lbu        $a2, 0x48e5($s2)
/* 7E78C 8008DF8C 8BFA010C */  jal        FUN_8007ea2c
/* 7E790 8008DF90 0100A52C */   sltiu     $a1, $a1, 1
/* 7E794 8008DF94 E74842A2 */  sb         $v0, 0x48e7($s2)
/* 7E798 8008DF98 0F80023C */  lui        $v0, %hi(D_800F0028)
.L8008DF9C:
/* 7E79C 8008DF9C 28004424 */  addiu      $a0, $v0, %lo(D_800F0028)
/* 7E7A0 8008DFA0 8A008390 */  lbu        $v1, 0x8a($a0)
/* 7E7A4 8008DFA4 02000524 */  addiu      $a1, $zero, 2
/* 7E7A8 8008DFA8 06006510 */  beq        $v1, $a1, .L8008DFC4
/* 7E7AC 8008DFAC 0100023C */   lui       $v0, 1
/* 7E7B0 8008DFB0 21108200 */  addu       $v0, $a0, $v0
/* 7E7B4 8008DFB4 06434290 */  lbu        $v0, 0x4306($v0)
/* 7E7B8 8008DFB8 00000000 */  nop
/* 7E7BC 8008DFBC 0C004514 */  bne        $v0, $a1, .L8008DFF0
/* 7E7C0 8008DFC0 00000000 */   nop
.L8008DFC4:
/* 7E7C4 8008DFC4 07000224 */  addiu      $v0, $zero, 7
/* 7E7C8 8008DFC8 03006210 */  beq        $v1, $v0, .L8008DFD8
/* 7E7CC 8008DFCC 00000000 */   nop
/* 7E7D0 8008DFD0 04006014 */  bnez       $v1, .L8008DFE4
/* 7E7D4 8008DFD4 00000000 */   nop
.L8008DFD8:
/* 7E7D8 8008DFD8 E7484292 */  lbu        $v0, 0x48e7($s2)
/* 7E7DC 8008DFDC FC370208 */  j          .L8008DFF0
/* 7E7E0 8008DFE0 E64842A2 */   sb        $v0, 0x48e6($s2)
.L8008DFE4:
/* 7E7E4 8008DFE4 E6484292 */  lbu        $v0, 0x48e6($s2)
/* 7E7E8 8008DFE8 00000000 */  nop
/* 7E7EC 8008DFEC E74842A2 */  sb         $v0, 0x48e7($s2)
.L8008DFF0:
/* 7E7F0 8008DFF0 742E020C */  jal        FUN_8008b9d0
/* 7E7F4 8008DFF4 21204002 */   addu      $a0, $s2, $zero
/* 7E7F8 8008DFF8 12CB020C */  jal        FUN_800b2c48
/* 7E7FC 8008DFFC 17000424 */   addiu     $a0, $zero, 0x17
/* 7E800 8008E000 88400208 */  j          .L80090220
/* 7E804 8008E004 E40A40AE */   sw        $zero, 0xae4($s2)
.L8008E008:
/* 7E808 8008E008 85084414 */  bne        $v0, $a0, .L80090220
/* 7E80C 8008E00C E40A42AE */   sw        $v0, 0xae4($s2)
.L8008E010:
/* 7E810 8008E010 0F80023C */  lui        $v0, %hi(D_800F0028)
/* 7E814 8008E014 28004424 */  addiu      $a0, $v0, %lo(D_800F0028)
/* 7E818 8008E018 20008380 */  lb         $v1, 0x20($a0)
/* 7E81C 8008E01C 01000224 */  addiu      $v0, $zero, 1
/* 7E820 8008E020 58026210 */  beq        $v1, $v0, .L8008E984
/* 7E824 8008E024 21800000 */   addu      $s0, $zero, $zero
/* 7E828 8008E028 9C0B4982 */  lb         $t1, 0xb9c($s2)
/* 7E82C 8008E02C 0F800A3C */  lui        $t2, %hi(D_800F0028)
/* 7E830 8008E030 28004A25 */  addiu      $t2, $t2, %lo(D_800F0028)
/* 7E834 8008E034 4000A0AF */  sw         $zero, 0x40($sp)
/* 7E838 8008E038 5000B2AF */  sw         $s2, 0x50($sp)
/* 7E83C 8008E03C 5400AAAF */  sw         $t2, 0x54($sp)
/* 7E840 8008E040 4400A9AF */  sw         $t1, 0x44($sp)
.L8008E044:
/* 7E844 8008E044 4000A48F */  lw         $a0, 0x40($sp)
/* 7E848 8008E048 0AF8010C */  jal        FUN_8007e028
/* 7E84C 8008E04C 00000000 */   nop
/* 7E850 8008E050 E7014010 */  beqz       $v0, .L8008E7F0
/* 7E854 8008E054 0100023C */   lui       $v0, 1
/* 7E858 8008E058 9C0B4282 */  lb         $v0, 0xb9c($s2)
/* 7E85C 8008E05C 00000000 */  nop
/* 7E860 8008E060 3A004010 */  beqz       $v0, .L8008E14C
/* 7E864 8008E064 00000000 */   nop
/* 7E868 8008E068 CC0A438E */  lw         $v1, 0xacc($s2)
/* 7E86C 8008E06C 00000000 */  nop
/* 7E870 8008E070 20006104 */  bgez       $v1, .L8008E0F4
/* 7E874 8008E074 23100300 */   negu      $v0, $v1
/* 7E878 8008E078 0400448E */  lw         $a0, 4($s2)
/* 7E87C 8008E07C 00000000 */  nop
/* 7E880 8008E080 00230400 */  sll        $a0, $a0, 0xc
/* 7E884 8008E084 1A004400 */  div        $zero, $v0, $a0
/* 7E888 8008E088 02008014 */  bnez       $a0, .L8008E094
/* 7E88C 8008E08C 00000000 */   nop
/* 7E890 8008E090 0D000700 */  break      7
.L8008E094:
/* 7E894 8008E094 FFFF0124 */   addiu     $at, $zero, -1
/* 7E898 8008E098 04008114 */  bne        $a0, $at, .L8008E0AC
/* 7E89C 8008E09C 0080013C */   lui       $at, 0x8000
/* 7E8A0 8008E0A0 02004114 */  bne        $v0, $at, .L8008E0AC
/* 7E8A4 8008E0A4 00000000 */   nop
/* 7E8A8 8008E0A8 0D000600 */  break      6
.L8008E0AC:
/* 7E8AC 8008E0AC 10180000 */   mfhi      $v1
/* 7E8B0 8008E0B0 00000000 */  nop
/* 7E8B4 8008E0B4 23188300 */  subu       $v1, $a0, $v1
/* 7E8B8 8008E0B8 1A006400 */  div        $zero, $v1, $a0
/* 7E8BC 8008E0BC 02008014 */  bnez       $a0, .L8008E0C8
/* 7E8C0 8008E0C0 00000000 */   nop
/* 7E8C4 8008E0C4 0D000700 */  break      7
.L8008E0C8:
/* 7E8C8 8008E0C8 FFFF0124 */   addiu     $at, $zero, -1
/* 7E8CC 8008E0CC 04008114 */  bne        $a0, $at, .L8008E0E0
/* 7E8D0 8008E0D0 0080013C */   lui       $at, 0x8000
/* 7E8D4 8008E0D4 02006114 */  bne        $v1, $at, .L8008E0E0
/* 7E8D8 8008E0D8 00000000 */   nop
/* 7E8DC 8008E0DC 0D000600 */  break      6
.L8008E0E0:
/* 7E8E0 8008E0E0 10100000 */   mfhi      $v0
/* 7E8E4 8008E0E4 00000000 */  nop
/* 7E8E8 8008E0E8 03130200 */  sra        $v0, $v0, 0xc
/* 7E8EC 8008E0EC 4E380208 */  j          .L8008E138
/* 7E8F0 8008E0F0 40100200 */   sll       $v0, $v0, 1
.L8008E0F4:
/* 7E8F4 8008E0F4 0400428E */  lw         $v0, 4($s2)
/* 7E8F8 8008E0F8 00000000 */  nop
/* 7E8FC 8008E0FC 00130200 */  sll        $v0, $v0, 0xc
/* 7E900 8008E100 1A006200 */  div        $zero, $v1, $v0
/* 7E904 8008E104 02004014 */  bnez       $v0, .L8008E110
/* 7E908 8008E108 00000000 */   nop
/* 7E90C 8008E10C 0D000700 */  break      7
.L8008E110:
/* 7E910 8008E110 FFFF0124 */   addiu     $at, $zero, -1
/* 7E914 8008E114 04004114 */  bne        $v0, $at, .L8008E128
/* 7E918 8008E118 0080013C */   lui       $at, 0x8000
/* 7E91C 8008E11C 02006114 */  bne        $v1, $at, .L8008E128
/* 7E920 8008E120 00000000 */   nop
/* 7E924 8008E124 0D000600 */  break      6
.L8008E128:
/* 7E928 8008E128 10180000 */   mfhi      $v1
/* 7E92C 8008E12C 00000000 */  nop
/* 7E930 8008E130 031B0300 */  sra        $v1, $v1, 0xc
/* 7E934 8008E134 40100300 */  sll        $v0, $v1, 1
.L8008E138:
/* 7E938 8008E138 21104202 */  addu       $v0, $s2, $v0
/* 7E93C 8008E13C 18004284 */  lh         $v0, 0x18($v0)
/* 7E940 8008E140 00000000 */  nop
/* 7E944 8008E144 01014014 */  bnez       $v0, .L8008E54C
/* 7E948 8008E148 00000000 */   nop
.L8008E14C:
/* 7E94C 8008E14C 4000A48F */  lw         $a0, 0x40($sp)
/* 7E950 8008E150 96B3000C */  jal        FUN_8002ce58
/* 7E954 8008E154 21800000 */   addu      $s0, $zero, $zero
/* 7E958 8008E158 0C004010 */  beqz       $v0, .L8008E18C
/* 7E95C 8008E15C 00000000 */   nop
/* 7E960 8008E160 5000A88F */  lw         $t0, 0x50($sp)
/* 7E964 8008E164 00000000 */  nop
/* 7E968 8008E168 F00A0285 */  lh         $v0, 0xaf0($t0)
/* 7E96C 8008E16C 00000000 */  nop
/* 7E970 8008E170 03004104 */  bgez       $v0, .L8008E180
/* 7E974 8008E174 ECFF0224 */   addiu     $v0, $zero, -0x14
/* 7E978 8008E178 63380208 */  j          .L8008E18C
/* 7E97C 8008E17C 01001024 */   addiu     $s0, $zero, 1
.L8008E180:
/* 7E980 8008E180 5000A98F */  lw         $t1, 0x50($sp)
/* 7E984 8008E184 00000000 */  nop
/* 7E988 8008E188 F00A22A5 */  sh         $v0, 0xaf0($t1)
.L8008E18C:
/* 7E98C 8008E18C 4000A48F */  lw         $a0, 0x40($sp)
/* 7E990 8008E190 8DB3000C */  jal        FUN_8002ce34
/* 7E994 8008E194 00000000 */   nop
/* 7E998 8008E198 0C004010 */  beqz       $v0, .L8008E1CC
/* 7E99C 8008E19C 00000000 */   nop
/* 7E9A0 8008E1A0 5000AA8F */  lw         $t2, 0x50($sp)
/* 7E9A4 8008E1A4 00000000 */  nop
/* 7E9A8 8008E1A8 F00A4285 */  lh         $v0, 0xaf0($t2)
/* 7E9AC 8008E1AC 00000000 */  nop
/* 7E9B0 8008E1B0 03004018 */  blez       $v0, .L8008E1C0
/* 7E9B4 8008E1B4 14000224 */   addiu     $v0, $zero, 0x14
/* 7E9B8 8008E1B8 73380208 */  j          .L8008E1CC
/* 7E9BC 8008E1BC FFFF1024 */   addiu     $s0, $zero, -1
.L8008E1C0:
/* 7E9C0 8008E1C0 5000AB8F */  lw         $t3, 0x50($sp)
/* 7E9C4 8008E1C4 00000000 */  nop
/* 7E9C8 8008E1C8 F00A62A5 */  sh         $v0, 0xaf0($t3)
.L8008E1CC:
/* 7E9CC 8008E1CC DF000012 */  beqz       $s0, .L8008E54C
/* 7E9D0 8008E1D0 00000000 */   nop
/* 7E9D4 8008E1D4 CC0A438E */  lw         $v1, 0xacc($s2)
/* 7E9D8 8008E1D8 D00A428E */  lw         $v0, 0xad0($s2)
/* 7E9DC 8008E1DC 00000000 */  nop
/* 7E9E0 8008E1E0 DA006214 */  bne        $v1, $v0, .L8008E54C
/* 7E9E4 8008E1E4 0F80083C */   lui       $t0, %hi(D_800F0028)
/* 7E9E8 8008E1E8 28000825 */  addiu      $t0, $t0, %lo(D_800F0028)
/* 7E9EC 8008E1EC 17000281 */  lb         $v0, 0x17($t0)
/* 7E9F0 8008E1F0 00000000 */  nop
/* 7E9F4 8008E1F4 5F004014 */  bnez       $v0, .L8008E374
/* 7E9F8 8008E1F8 00000000 */   nop
/* 7E9FC 8008E1FC 6047428E */  lw         $v0, 0x4760($s2)
/* 7EA00 8008E200 00000000 */  nop
/* 7EA04 8008E204 FFFF4224 */  addiu      $v0, $v0, -1
/* 7EA08 8008E208 0300422C */  sltiu      $v0, $v0, 3
/* 7EA0C 8008E20C 59004014 */  bnez       $v0, .L8008E374
/* 7EA10 8008E210 05001524 */   addiu     $s5, $zero, 5
/* 7EA14 8008E214 0F800A3C */  lui        $t2, %hi(D_800F0028)
/* 7EA18 8008E218 28004A25 */  addiu      $t2, $t2, %lo(D_800F0028)
/* 7EA1C 8008E21C 5400A98F */  lw         $t1, 0x54($sp)
/* 7EA20 8008E220 02000B24 */  addiu      $t3, $zero, 2
/* 7EA24 8008E224 8A002291 */  lbu        $v0, 0x8a($t1)
/* 7EA28 8008E228 20004381 */  lb         $v1, 0x20($t2)
/* 7EA2C 8008E22C 02004238 */  xori       $v0, $v0, 2
/* 7EA30 8008E230 54006B14 */  bne        $v1, $t3, .L8008E384
/* 7EA34 8008E234 01005E2C */   sltiu     $fp, $v0, 1
/* 7EA38 8008E238 E8484292 */  lbu        $v0, 0x48e8($s2)
/* 7EA3C 8008E23C 00000000 */  nop
/* 7EA40 8008E240 24004014 */  bnez       $v0, .L8008E2D4
/* 7EA44 8008E244 01000824 */   addiu     $t0, $zero, 1
/* 7EA48 8008E248 23000816 */  bne        $s0, $t0, .L8008E2D8
/* 7EA4C 8008E24C 01000B24 */   addiu     $t3, $zero, 1
/* 7EA50 8008E250 B0484486 */  lh         $a0, 0x48b0($s2)
/* 7EA54 8008E254 B0484396 */  lhu        $v1, 0x48b0($s2)
/* 7EA58 8008E258 10008228 */  slti       $v0, $a0, 0x10
/* 7EA5C 8008E25C 07004014 */  bnez       $v0, .L8008E27C
/* 7EA60 8008E260 21106000 */   addu      $v0, $v1, $zero
/* 7EA64 8008E264 20008228 */  slti       $v0, $a0, 0x20
/* 7EA68 8008E268 03004010 */  beqz       $v0, .L8008E278
/* 7EA6C 8008E26C 20000224 */   addiu     $v0, $zero, 0x20
/* 7EA70 8008E270 9F380208 */  j          .L8008E27C
/* 7EA74 8008E274 23104300 */   subu      $v0, $v0, $v1
.L8008E278:
/* 7EA78 8008E278 21100000 */  addu       $v0, $zero, $zero
.L8008E27C:
/* 7EA7C 8008E27C 0B000424 */  addiu      $a0, $zero, 0xb
/* 7EA80 8008E280 01000924 */  addiu      $t1, $zero, 1
/* 7EA84 8008E284 B04842A6 */  sh         $v0, 0x48b0($s2)
/* 7EA88 8008E288 12CB020C */  jal        FUN_800b2c48
/* 7EA8C 8008E28C E84849A2 */   sb        $t1, 0x48e8($s2)
/* 7EA90 8008E290 B0484286 */  lh         $v0, 0x48b0($s2)
/* 7EA94 8008E294 00000000 */  nop
/* 7EA98 8008E298 10004228 */  slti       $v0, $v0, 0x10
/* 7EA9C 8008E29C 26004014 */  bnez       $v0, .L8008E338
/* 7EAA0 8008E2A0 10000224 */   addiu     $v0, $zero, 0x10
/* 7EAA4 8008E2A4 DC48448E */  lw         $a0, 0x48dc($s2)
/* 7EAA8 8008E2A8 20000324 */  addiu      $v1, $zero, 0x20
/* 7EAAC 8008E2AC B24843A6 */  sh         $v1, 0x48b2($s2)
/* 7EAB0 8008E2B0 D04840AE */  sw         $zero, 0x48d0($s2)
/* 7EAB4 8008E2B4 21108000 */  addu       $v0, $a0, $zero
/* 7EAB8 8008E2B8 E389020C */  jal        FUN_800a278c
/* 7EABC 8008E2BC D84842AE */   sw        $v0, 0x48d8($s2)
/* 7EAC0 8008E2C0 FFFF4224 */  addiu      $v0, $v0, -1
/* 7EAC4 8008E2C4 01000A24 */  addiu      $t2, $zero, 1
/* 7EAC8 8008E2C8 D44842AE */  sw         $v0, 0x48d4($s2)
/* 7EACC 8008E2CC 53390208 */  j          .L8008E54C
/* 7EAD0 8008E2D0 B4484AA6 */   sh        $t2, 0x48b4($s2)
.L8008E2D4:
/* 7EAD4 8008E2D4 01000B24 */  addiu      $t3, $zero, 1
.L8008E2D8:
/* 7EAD8 8008E2D8 26004B14 */  bne        $v0, $t3, .L8008E374
/* 7EADC 8008E2DC FFFF0224 */   addiu     $v0, $zero, -1
/* 7EAE0 8008E2E0 24000216 */  bne        $s0, $v0, .L8008E374
/* 7EAE4 8008E2E4 00000000 */   nop
/* 7EAE8 8008E2E8 B0484486 */  lh         $a0, 0x48b0($s2)
/* 7EAEC 8008E2EC B0484396 */  lhu        $v1, 0x48b0($s2)
/* 7EAF0 8008E2F0 10008228 */  slti       $v0, $a0, 0x10
/* 7EAF4 8008E2F4 07004014 */  bnez       $v0, .L8008E314
/* 7EAF8 8008E2F8 21106000 */   addu      $v0, $v1, $zero
/* 7EAFC 8008E2FC 20008228 */  slti       $v0, $a0, 0x20
/* 7EB00 8008E300 03004010 */  beqz       $v0, .L8008E310
/* 7EB04 8008E304 20000224 */   addiu     $v0, $zero, 0x20
/* 7EB08 8008E308 C5380208 */  j          .L8008E314
/* 7EB0C 8008E30C 23104300 */   subu      $v0, $v0, $v1
.L8008E310:
/* 7EB10 8008E310 21100000 */  addu       $v0, $zero, $zero
.L8008E314:
/* 7EB14 8008E314 0B000424 */  addiu      $a0, $zero, 0xb
/* 7EB18 8008E318 B04842A6 */  sh         $v0, 0x48b0($s2)
/* 7EB1C 8008E31C 12CB020C */  jal        FUN_800b2c48
/* 7EB20 8008E320 E84840A2 */   sb        $zero, 0x48e8($s2)
/* 7EB24 8008E324 B0484286 */  lh         $v0, 0x48b0($s2)
/* 7EB28 8008E328 00000000 */  nop
/* 7EB2C 8008E32C 10004228 */  slti       $v0, $v0, 0x10
/* 7EB30 8008E330 04004010 */  beqz       $v0, .L8008E344
/* 7EB34 8008E334 10000224 */   addiu     $v0, $zero, 0x10
.L8008E338:
/* 7EB38 8008E338 B24842A6 */  sh         $v0, 0x48b2($s2)
/* 7EB3C 8008E33C 53390208 */  j          .L8008E54C
/* 7EB40 8008E340 B44840A6 */   sh        $zero, 0x48b4($s2)
.L8008E344:
/* 7EB44 8008E344 DC48448E */  lw         $a0, 0x48dc($s2)
/* 7EB48 8008E348 20000324 */  addiu      $v1, $zero, 0x20
/* 7EB4C 8008E34C B24843A6 */  sh         $v1, 0x48b2($s2)
/* 7EB50 8008E350 D04840AE */  sw         $zero, 0x48d0($s2)
/* 7EB54 8008E354 21108000 */  addu       $v0, $a0, $zero
/* 7EB58 8008E358 E389020C */  jal        FUN_800a278c
/* 7EB5C 8008E35C D84842AE */   sw        $v0, 0x48d8($s2)
/* 7EB60 8008E360 FFFF4224 */  addiu      $v0, $v0, -1
/* 7EB64 8008E364 01000824 */  addiu      $t0, $zero, 1
/* 7EB68 8008E368 D44842AE */  sw         $v0, 0x48d4($s2)
/* 7EB6C 8008E36C 53390208 */  j          .L8008E54C
/* 7EB70 8008E370 B44848A6 */   sh        $t0, 0x48b4($s2)
.L8008E374:
/* 7EB74 8008E374 12CB020C */  jal        FUN_800b2c48
/* 7EB78 8008E378 19000424 */   addiu     $a0, $zero, 0x19
/* 7EB7C 8008E37C 53390208 */  j          .L8008E54C
/* 7EB80 8008E380 00000000 */   nop
.L8008E384:
/* 7EB84 8008E384 21B80000 */  addu       $s7, $zero, $zero
/* 7EB88 8008E388 4000A98F */  lw         $t1, 0x40($sp)
/* 7EB8C 8008E38C 21880002 */  addu       $s1, $s0, $zero
/* 7EB90 8008E390 0180023C */  lui        $v0, %hi(D_800158EC)
/* 7EB94 8008E394 EC584724 */  addiu      $a3, $v0, %lo(D_800158EC)
/* 7EB98 8008E398 21B0E000 */  addu       $s6, $a3, $zero
/* 7EB9C 8008E39C 21984902 */  addu       $s3, $s2, $t1
.L8008E3A0:
/* 7EBA0 8008E3A0 E6486392 */  lbu        $v1, 0x48e6($s3)
/* 7EBA4 8008E3A4 0000C28E */  lw         $v0, ($s6)
/* 7EBA8 8008E3A8 00000000 */  nop
/* 7EBAC 8008E3AC 62006214 */  bne        $v1, $v0, .L8008E538
/* 7EBB0 8008E3B0 21103502 */   addu      $v0, $s1, $s5
/* 7EBB4 8008E3B4 1A005500 */  div        $zero, $v0, $s5
/* 7EBB8 8008E3B8 0200A016 */  bnez       $s5, .L8008E3C4
/* 7EBBC 8008E3BC 00000000 */   nop
/* 7EBC0 8008E3C0 0D000700 */  break      7
.L8008E3C4:
/* 7EBC4 8008E3C4 FFFF0124 */   addiu     $at, $zero, -1
/* 7EBC8 8008E3C8 0400A116 */  bne        $s5, $at, .L8008E3DC
/* 7EBCC 8008E3CC 0080013C */   lui       $at, 0x8000
/* 7EBD0 8008E3D0 02004114 */  bne        $v0, $at, .L8008E3DC
/* 7EBD4 8008E3D4 00000000 */   nop
/* 7EBD8 8008E3D8 0D000600 */  break      6
.L8008E3DC:
/* 7EBDC 8008E3DC 10180000 */   mfhi      $v1
/* 7EBE0 8008E3E0 0F80083C */  lui        $t0, %hi(D_800F0028)
/* 7EBE4 8008E3E4 28000825 */  addiu      $t0, $t0, %lo(D_800F0028)
/* 7EBE8 8008E3E8 0400048D */  lw         $a0, 4($t0)
/* 7EBEC 8008E3EC 80180300 */  sll        $v1, $v1, 2
/* 7EBF0 8008E3F0 21A06700 */  addu       $s4, $v1, $a3
/* 7EBF4 8008E3F4 00009092 */  lbu        $s0, ($s4)
/* 7EBF8 8008E3F8 2128C003 */  addu       $a1, $fp, $zero
/* 7EBFC 8008E3FC 5800A7AF */  sw         $a3, 0x58($sp)
/* 7EC00 8008E400 8BFA010C */  jal        FUN_8007ea2c
/* 7EC04 8008E404 21300002 */   addu      $a2, $s0, $zero
/* 7EC08 8008E408 FF004230 */  andi       $v0, $v0, 0xff
/* 7EC0C 8008E40C E4486392 */  lbu        $v1, 0x48e4($s3)
/* 7EC10 8008E410 5800A78F */  lw         $a3, 0x58($sp)
/* 7EC14 8008E414 4D006210 */  beq        $v1, $v0, .L8008E54C
/* 7EC18 8008E418 2128C003 */   addu      $a1, $fp, $zero
/* 7EC1C 8008E41C 0F80093C */  lui        $t1, %hi(D_800F0028)
/* 7EC20 8008E420 28002925 */  addiu      $t1, $t1, %lo(D_800F0028)
/* 7EC24 8008E424 0400248D */  lw         $a0, 4($t1)
/* 7EC28 8008E428 8BFA010C */  jal        FUN_8007ea2c
/* 7EC2C 8008E42C 21300002 */   addu      $a2, $s0, $zero
/* 7EC30 8008E430 FF004230 */  andi       $v0, $v0, 0xff
/* 7EC34 8008E434 E6486392 */  lbu        $v1, 0x48e6($s3)
/* 7EC38 8008E438 5800A78F */  lw         $a3, 0x58($sp)
/* 7EC3C 8008E43C 43006210 */  beq        $v1, $v0, .L8008E54C
/* 7EC40 8008E440 0F800A3C */   lui       $t2, %hi(D_800F0028)
/* 7EC44 8008E444 28004A25 */  addiu      $t2, $t2, %lo(D_800F0028)
/* 7EC48 8008E448 8A004291 */  lbu        $v0, 0x8a($t2)
/* 7EC4C 8008E44C 02000B24 */  addiu      $t3, $zero, 2
/* 7EC50 8008E450 06004B10 */  beq        $v0, $t3, .L8008E46C
/* 7EC54 8008E454 1080083C */   lui       $t0, %hi(D_80100028)
/* 7EC58 8008E458 28000825 */  addiu      $t0, $t0, %lo(D_80100028)
/* 7EC5C 8008E45C 06430291 */  lbu        $v0, 0x4306($t0)
/* 7EC60 8008E460 00000000 */  nop
/* 7EC64 8008E464 05004B14 */  bne        $v0, $t3, .L8008E47C
/* 7EC68 8008E468 00000000 */   nop
.L8008E46C:
/* 7EC6C 8008E46C 0000838E */  lw         $v1, ($s4)
/* 7EC70 8008E470 07000224 */  addiu      $v0, $zero, 7
/* 7EC74 8008E474 35006210 */  beq        $v1, $v0, .L8008E54C
/* 7EC78 8008E478 00000000 */   nop
.L8008E47C:
/* 7EC7C 8008E47C 2E002006 */  bltz       $s1, .L8008E538
/* 7EC80 8008E480 2A103502 */   slt       $v0, $s1, $s5
/* 7EC84 8008E484 2C004010 */  beqz       $v0, .L8008E538
/* 7EC88 8008E488 21103502 */   addu      $v0, $s1, $s5
/* 7EC8C 8008E48C 1A005500 */  div        $zero, $v0, $s5
/* 7EC90 8008E490 0200A016 */  bnez       $s5, .L8008E49C
/* 7EC94 8008E494 00000000 */   nop
/* 7EC98 8008E498 0D000700 */  break      7
.L8008E49C:
/* 7EC9C 8008E49C FFFF0124 */   addiu     $at, $zero, -1
/* 7ECA0 8008E4A0 0400A116 */  bne        $s5, $at, .L8008E4B4
/* 7ECA4 8008E4A4 0080013C */   lui       $at, 0x8000
/* 7ECA8 8008E4A8 02004114 */  bne        $v0, $at, .L8008E4B4
/* 7ECAC 8008E4AC 00000000 */   nop
/* 7ECB0 8008E4B0 0D000600 */  break      6
.L8008E4B4:
/* 7ECB4 8008E4B4 10180000 */   mfhi      $v1
/* 7ECB8 8008E4B8 0F80083C */  lui        $t0, %hi(D_800F0028)
/* 7ECBC 8008E4BC 80180300 */  sll        $v1, $v1, 2
/* 7ECC0 8008E4C0 21186700 */  addu       $v1, $v1, $a3
/* 7ECC4 8008E4C4 00006290 */  lbu        $v0, ($v1)
/* 7ECC8 8008E4C8 28000825 */  addiu      $t0, $t0, %lo(D_800F0028)
/* 7ECCC 8008E4CC E44862A2 */  sb         $v0, 0x48e4($s3)
/* 7ECD0 8008E4D0 E64862A2 */  sb         $v0, 0x48e6($s3)
/* 7ECD4 8008E4D4 8A000291 */  lbu        $v0, 0x8a($t0)
/* 7ECD8 8008E4D8 02000924 */  addiu      $t1, $zero, 2
/* 7ECDC 8008E4DC 06004910 */  beq        $v0, $t1, .L8008E4F8
/* 7ECE0 8008E4E0 10800A3C */   lui       $t2, %hi(D_80100028)
/* 7ECE4 8008E4E4 28004A25 */  addiu      $t2, $t2, %lo(D_80100028)
/* 7ECE8 8008E4E8 06434291 */  lbu        $v0, 0x4306($t2)
/* 7ECEC 8008E4EC 00000000 */  nop
/* 7ECF0 8008E4F0 0A004914 */  bne        $v0, $t1, .L8008E51C
/* 7ECF4 8008E4F4 00000000 */   nop
.L8008E4F8:
/* 7ECF8 8008E4F8 01000B24 */  addiu      $t3, $zero, 1
/* 7ECFC 8008E4FC 4000A88F */  lw         $t0, 0x40($sp)
/* 7ED00 8008E500 E4486392 */  lbu        $v1, 0x48e4($s3)
/* 7ED04 8008E504 23106801 */  subu       $v0, $t3, $t0
/* 7ED08 8008E508 21104202 */  addu       $v0, $s2, $v0
/* 7ED0C 8008E50C E44843A0 */  sb         $v1, 0x48e4($v0)
/* 7ED10 8008E510 E6486392 */  lbu        $v1, 0x48e6($s3)
/* 7ED14 8008E514 00000000 */  nop
/* 7ED18 8008E518 E64843A0 */  sb         $v1, 0x48e6($v0)
.L8008E51C:
/* 7ED1C 8008E51C 5000A98F */  lw         $t1, 0x50($sp)
/* 7ED20 8008E520 0B000424 */  addiu      $a0, $zero, 0xb
/* 7ED24 8008E524 12CB020C */  jal        FUN_800b2c48
/* 7ED28 8008E528 F00A20A5 */   sh        $zero, 0xaf0($t1)
/* 7ED2C 8008E52C 05000224 */  addiu      $v0, $zero, 5
/* 7ED30 8008E530 53390208 */  j          .L8008E54C
/* 7ED34 8008E534 E04842AE */   sw        $v0, 0x48e0($s2)
.L8008E538:
/* 7ED38 8008E538 01003126 */  addiu      $s1, $s1, 1
/* 7ED3C 8008E53C 0100F726 */  addiu      $s7, $s7, 1
/* 7ED40 8008E540 2A10F502 */  slt        $v0, $s7, $s5
/* 7ED44 8008E544 96FF4014 */  bnez       $v0, .L8008E3A0
/* 7ED48 8008E548 0400D626 */   addiu     $s6, $s6, 4
.L8008E54C:
/* 7ED4C 8008E54C 5000AA8F */  lw         $t2, 0x50($sp)
/* 7ED50 8008E550 00000000 */  nop
/* 7ED54 8008E554 F00A4285 */  lh         $v0, 0xaf0($t2)
/* 7ED58 8008E558 00000000 */  nop
/* 7ED5C 8008E55C 07004010 */  beqz       $v0, .L8008E57C
/* 7ED60 8008E560 21184001 */   addu      $v1, $t2, $zero
/* 7ED64 8008E564 03004018 */  blez       $v0, .L8008E574
/* 7ED68 8008E568 00000000 */   nop
/* 7ED6C 8008E56C 60390208 */  j          .L8008E580
/* 7ED70 8008E570 FFFF4224 */   addiu     $v0, $v0, -1
.L8008E574:
/* 7ED74 8008E574 60390208 */  j          .L8008E580
/* 7ED78 8008E578 01004224 */   addiu     $v0, $v0, 1
.L8008E57C:
/* 7ED7C 8008E57C 21100000 */  addu       $v0, $zero, $zero
.L8008E580:
/* 7ED80 8008E580 F00A62A4 */  sh         $v0, 0xaf0($v1)
/* 7ED84 8008E584 E40A438E */  lw         $v1, 0xae4($s2)
/* 7ED88 8008E588 10000224 */  addiu      $v0, $zero, 0x10
/* 7ED8C 8008E58C 89006214 */  bne        $v1, $v0, .L8008E7B4
/* 7ED90 8008E590 0F800B3C */   lui       $t3, %hi(D_800F0028)
/* 7ED94 8008E594 28006B25 */  addiu      $t3, $t3, %lo(D_800F0028)
/* 7ED98 8008E598 20006281 */  lb         $v0, 0x20($t3)
/* 7ED9C 8008E59C 00000000 */  nop
/* 7EDA0 8008E5A0 84004014 */  bnez       $v0, .L8008E7B4
/* 7EDA4 8008E5A4 00000000 */   nop
/* 7EDA8 8008E5A8 4000A48F */  lw         $a0, 0x40($sp)
/* 7EDAC 8008E5AC 84B3000C */  jal        FUN_8002ce10
/* 7EDB0 8008E5B0 21800000 */   addu      $s0, $zero, $zero
/* 7EDB4 8008E5B4 0C004010 */  beqz       $v0, .L8008E5E8
/* 7EDB8 8008E5B8 00000000 */   nop
/* 7EDBC 8008E5BC 5000A88F */  lw         $t0, 0x50($sp)
/* 7EDC0 8008E5C0 00000000 */  nop
/* 7EDC4 8008E5C4 F40A0285 */  lh         $v0, 0xaf4($t0)
/* 7EDC8 8008E5C8 00000000 */  nop
/* 7EDCC 8008E5CC 03004104 */  bgez       $v0, .L8008E5DC
/* 7EDD0 8008E5D0 ECFF0224 */   addiu     $v0, $zero, -0x14
/* 7EDD4 8008E5D4 7A390208 */  j          .L8008E5E8
/* 7EDD8 8008E5D8 01001024 */   addiu     $s0, $zero, 1
.L8008E5DC:
/* 7EDDC 8008E5DC 5000A98F */  lw         $t1, 0x50($sp)
/* 7EDE0 8008E5E0 00000000 */  nop
/* 7EDE4 8008E5E4 F40A22A5 */  sh         $v0, 0xaf4($t1)
.L8008E5E8:
/* 7EDE8 8008E5E8 4000A48F */  lw         $a0, 0x40($sp)
/* 7EDEC 8008E5EC 7DB3000C */  jal        FUN_8002cdf4
/* 7EDF0 8008E5F0 00000000 */   nop
/* 7EDF4 8008E5F4 0C004010 */  beqz       $v0, .L8008E628
/* 7EDF8 8008E5F8 00000000 */   nop
/* 7EDFC 8008E5FC 5000AA8F */  lw         $t2, 0x50($sp)
/* 7EE00 8008E600 00000000 */  nop
/* 7EE04 8008E604 F40A4285 */  lh         $v0, 0xaf4($t2)
/* 7EE08 8008E608 00000000 */  nop
/* 7EE0C 8008E60C 03004018 */  blez       $v0, .L8008E61C
/* 7EE10 8008E610 14000224 */   addiu     $v0, $zero, 0x14
/* 7EE14 8008E614 8A390208 */  j          .L8008E628
/* 7EE18 8008E618 FFFF1024 */   addiu     $s0, $zero, -1
.L8008E61C:
/* 7EE1C 8008E61C 5000AB8F */  lw         $t3, 0x50($sp)
/* 7EE20 8008E620 00000000 */  nop
/* 7EE24 8008E624 F40A62A5 */  sh         $v0, 0xaf4($t3)
.L8008E628:
/* 7EE28 8008E628 62000012 */  beqz       $s0, .L8008E7B4
/* 7EE2C 8008E62C 00000000 */   nop
/* 7EE30 8008E630 CC0A438E */  lw         $v1, 0xacc($s2)
/* 7EE34 8008E634 D00A428E */  lw         $v0, 0xad0($s2)
/* 7EE38 8008E638 00000000 */  nop
/* 7EE3C 8008E63C 5D006214 */  bne        $v1, $v0, .L8008E7B4
/* 7EE40 8008E640 0F80083C */   lui       $t0, %hi(D_800F0028)
/* 7EE44 8008E644 28000825 */  addiu      $t0, $t0, %lo(D_800F0028)
/* 7EE48 8008E648 17000281 */  lb         $v0, 0x17($t0)
/* 7EE4C 8008E64C 00000000 */  nop
/* 7EE50 8008E650 56004014 */  bnez       $v0, .L8008E7AC
/* 7EE54 8008E654 19000424 */   addiu     $a0, $zero, 0x19
/* 7EE58 8008E658 6047428E */  lw         $v0, 0x4760($s2)
/* 7EE5C 8008E65C 00000000 */  nop
/* 7EE60 8008E660 FFFF4224 */  addiu      $v0, $v0, -1
/* 7EE64 8008E664 0300422C */  sltiu      $v0, $v0, 3
/* 7EE68 8008E668 50004014 */  bnez       $v0, .L8008E7AC
/* 7EE6C 8008E66C 00000000 */   nop
/* 7EE70 8008E670 20006104 */  bgez       $v1, .L8008E6F4
/* 7EE74 8008E674 23100300 */   negu      $v0, $v1
/* 7EE78 8008E678 0400448E */  lw         $a0, 4($s2)
/* 7EE7C 8008E67C 00000000 */  nop
/* 7EE80 8008E680 00230400 */  sll        $a0, $a0, 0xc
/* 7EE84 8008E684 1A004400 */  div        $zero, $v0, $a0
/* 7EE88 8008E688 02008014 */  bnez       $a0, .L8008E694
/* 7EE8C 8008E68C 00000000 */   nop
/* 7EE90 8008E690 0D000700 */  break      7
.L8008E694:
/* 7EE94 8008E694 FFFF0124 */   addiu     $at, $zero, -1
/* 7EE98 8008E698 04008114 */  bne        $a0, $at, .L8008E6AC
/* 7EE9C 8008E69C 0080013C */   lui       $at, 0x8000
/* 7EEA0 8008E6A0 02004114 */  bne        $v0, $at, .L8008E6AC
/* 7EEA4 8008E6A4 00000000 */   nop
/* 7EEA8 8008E6A8 0D000600 */  break      6
.L8008E6AC:
/* 7EEAC 8008E6AC 10180000 */   mfhi      $v1
/* 7EEB0 8008E6B0 00000000 */  nop
/* 7EEB4 8008E6B4 23188300 */  subu       $v1, $a0, $v1
/* 7EEB8 8008E6B8 1A006400 */  div        $zero, $v1, $a0
/* 7EEBC 8008E6BC 02008014 */  bnez       $a0, .L8008E6C8
/* 7EEC0 8008E6C0 00000000 */   nop
/* 7EEC4 8008E6C4 0D000700 */  break      7
.L8008E6C8:
/* 7EEC8 8008E6C8 FFFF0124 */   addiu     $at, $zero, -1
/* 7EECC 8008E6CC 04008114 */  bne        $a0, $at, .L8008E6E0
/* 7EED0 8008E6D0 0080013C */   lui       $at, 0x8000
/* 7EED4 8008E6D4 02006114 */  bne        $v1, $at, .L8008E6E0
/* 7EED8 8008E6D8 00000000 */   nop
/* 7EEDC 8008E6DC 0D000600 */  break      6
.L8008E6E0:
/* 7EEE0 8008E6E0 10100000 */   mfhi      $v0
/* 7EEE4 8008E6E4 00000000 */  nop
/* 7EEE8 8008E6E8 03130200 */  sra        $v0, $v0, 0xc
/* 7EEEC 8008E6EC CE390208 */  j          .L8008E738
/* 7EEF0 8008E6F0 40100200 */   sll       $v0, $v0, 1
.L8008E6F4:
/* 7EEF4 8008E6F4 0400428E */  lw         $v0, 4($s2)
/* 7EEF8 8008E6F8 00000000 */  nop
/* 7EEFC 8008E6FC 00130200 */  sll        $v0, $v0, 0xc
/* 7EF00 8008E700 1A006200 */  div        $zero, $v1, $v0
/* 7EF04 8008E704 02004014 */  bnez       $v0, .L8008E710
/* 7EF08 8008E708 00000000 */   nop
/* 7EF0C 8008E70C 0D000700 */  break      7
.L8008E710:
/* 7EF10 8008E710 FFFF0124 */   addiu     $at, $zero, -1
/* 7EF14 8008E714 04004114 */  bne        $v0, $at, .L8008E728
/* 7EF18 8008E718 0080013C */   lui       $at, 0x8000
/* 7EF1C 8008E71C 02006114 */  bne        $v1, $at, .L8008E728
/* 7EF20 8008E720 00000000 */   nop
/* 7EF24 8008E724 0D000600 */  break      6
.L8008E728:
/* 7EF28 8008E728 10180000 */   mfhi      $v1
/* 7EF2C 8008E72C 00000000 */  nop
/* 7EF30 8008E730 031B0300 */  sra        $v1, $v1, 0xc
/* 7EF34 8008E734 40100300 */  sll        $v0, $v1, 1
.L8008E738:
/* 7EF38 8008E738 21104202 */  addu       $v0, $s2, $v0
/* 7EF3C 8008E73C 18004484 */  lh         $a0, 0x18($v0)
/* 7EF40 8008E740 01000824 */  addiu      $t0, $zero, 1
/* 7EF44 8008E744 11000816 */  bne        $s0, $t0, .L8008E78C
/* 7EF48 8008E748 FFFF0224 */   addiu     $v0, $zero, -1
/* 7EF4C 8008E74C 9C0B4282 */  lb         $v0, 0xb9c($s2)
/* 7EF50 8008E750 00000000 */  nop
/* 7EF54 8008E754 0D004014 */  bnez       $v0, .L8008E78C
/* 7EF58 8008E758 FFFF0224 */   addiu     $v0, $zero, -1
/* 7EF5C 8008E75C F9008228 */  slti       $v0, $a0, 0xf9
/* 7EF60 8008E760 0A004010 */  beqz       $v0, .L8008E78C
/* 7EF64 8008E764 FFFF0224 */   addiu     $v0, $zero, -1
/* 7EF68 8008E768 1BA2020C */  jal        FUN_800a886c
/* 7EF6C 8008E76C 00000000 */   nop
/* 7EF70 8008E770 2400428C */  lw         $v0, 0x24($v0)
/* 7EF74 8008E774 00000000 */  nop
/* 7EF78 8008E778 02004230 */  andi       $v0, $v0, 2
/* 7EF7C 8008E77C 03004014 */  bnez       $v0, .L8008E78C
/* 7EF80 8008E780 FFFF0224 */   addiu     $v0, $zero, -1
/* 7EF84 8008E784 EA390208 */  j          .L8008E7A8
/* 7EF88 8008E788 9C0B50A2 */   sb        $s0, 0xb9c($s2)
.L8008E78C:
/* 7EF8C 8008E78C 09000216 */  bne        $s0, $v0, .L8008E7B4
/* 7EF90 8008E790 00000000 */   nop
/* 7EF94 8008E794 9C0B4282 */  lb         $v0, 0xb9c($s2)
/* 7EF98 8008E798 00000000 */  nop
/* 7EF9C 8008E79C 05004010 */  beqz       $v0, .L8008E7B4
/* 7EFA0 8008E7A0 00000000 */   nop
/* 7EFA4 8008E7A4 9C0B40A2 */  sb         $zero, 0xb9c($s2)
.L8008E7A8:
/* 7EFA8 8008E7A8 0B000424 */  addiu      $a0, $zero, 0xb
.L8008E7AC:
/* 7EFAC 8008E7AC 12CB020C */  jal        FUN_800b2c48
/* 7EFB0 8008E7B0 00000000 */   nop
.L8008E7B4:
/* 7EFB4 8008E7B4 5000A98F */  lw         $t1, 0x50($sp)
/* 7EFB8 8008E7B8 00000000 */  nop
/* 7EFBC 8008E7BC F40A2285 */  lh         $v0, 0xaf4($t1)
/* 7EFC0 8008E7C0 00000000 */  nop
/* 7EFC4 8008E7C4 07004010 */  beqz       $v0, .L8008E7E4
/* 7EFC8 8008E7C8 21182001 */   addu      $v1, $t1, $zero
/* 7EFCC 8008E7CC 03004018 */  blez       $v0, .L8008E7DC
/* 7EFD0 8008E7D0 00000000 */   nop
/* 7EFD4 8008E7D4 FA390208 */  j          .L8008E7E8
/* 7EFD8 8008E7D8 FFFF4224 */   addiu     $v0, $v0, -1
.L8008E7DC:
/* 7EFDC 8008E7DC FA390208 */  j          .L8008E7E8
/* 7EFE0 8008E7E0 01004224 */   addiu     $v0, $v0, 1
.L8008E7E4:
/* 7EFE4 8008E7E4 21100000 */  addu       $v0, $zero, $zero
.L8008E7E8:
/* 7EFE8 8008E7E8 F40A62A4 */  sh         $v0, 0xaf4($v1)
/* 7EFEC 8008E7EC 0100023C */  lui        $v0, 1
.L8008E7F0:
/* 7EFF0 8008E7F0 7C424234 */  ori        $v0, $v0, 0x427c
/* 7EFF4 8008E7F4 5000AA8F */  lw         $t2, 0x50($sp)
/* 7EFF8 8008E7F8 5400AB8F */  lw         $t3, 0x54($sp)
/* 7EFFC 8008E7FC 4000A88F */  lw         $t0, 0x40($sp)
/* 7F000 8008E800 02004A25 */  addiu      $t2, $t2, 2
/* 7F004 8008E804 21586201 */  addu       $t3, $t3, $v0
/* 7F008 8008E808 01000825 */  addiu      $t0, $t0, 1
/* 7F00C 8008E80C 02000229 */  slti       $v0, $t0, 2
/* 7F010 8008E810 5000AAAF */  sw         $t2, 0x50($sp)
/* 7F014 8008E814 5400ABAF */  sw         $t3, 0x54($sp)
/* 7F018 8008E818 0AFE4014 */  bnez       $v0, .L8008E044
/* 7F01C 8008E81C 4000A8AF */   sw        $t0, 0x40($sp)
/* 7F020 8008E820 4400A98F */  lw         $t1, 0x44($sp)
/* 7F024 8008E824 9C0B5082 */  lb         $s0, 0xb9c($s2)
/* 7F028 8008E828 0A002015 */  bnez       $t1, .L8008E854
/* 7F02C 8008E82C 01000224 */   addiu     $v0, $zero, 1
/* 7F030 8008E830 08000216 */  bne        $s0, $v0, .L8008E854
/* 7F034 8008E834 00000000 */   nop
/* 7F038 8008E838 F1FA010C */  jal        FUN_8007ebc4
/* 7F03C 8008E83C 21204002 */   addu      $a0, $s2, $zero
/* 7F040 8008E840 10000224 */  addiu      $v0, $zero, 0x10
/* 7F044 8008E844 CC0A40AE */  sw         $zero, 0xacc($s2)
/* 7F048 8008E848 D00A40AE */  sw         $zero, 0xad0($s2)
/* 7F04C 8008E84C C80A40AE */  sw         $zero, 0xac8($s2)
/* 7F050 8008E850 D40A42AE */  sw         $v0, 0xad4($s2)
.L8008E854:
/* 7F054 8008E854 4400AA8F */  lw         $t2, 0x44($sp)
/* 7F058 8008E858 01000224 */  addiu      $v0, $zero, 1
/* 7F05C 8008E85C 48004215 */  bne        $t2, $v0, .L8008E980
/* 7F060 8008E860 00000000 */   nop
/* 7F064 8008E864 47000016 */  bnez       $s0, .L8008E984
/* 7F068 8008E868 21800000 */   addu      $s0, $zero, $zero
/* 7F06C 8008E86C F1FA010C */  jal        FUN_8007ebc4
/* 7F070 8008E870 21204002 */   addu      $a0, $s2, $zero
/* 7F074 8008E874 FFFF0224 */  addiu      $v0, $zero, -1
/* 7F078 8008E878 C00A42AE */  sw         $v0, 0xac0($s2)
/* 7F07C 8008E87C 0F80023C */  lui        $v0, %hi(D_800F0028)
/* 7F080 8008E880 28005024 */  addiu      $s0, $v0, %lo(D_800F0028)
/* 7F084 8008E884 1E000286 */  lh         $v0, 0x1e($s0)
/* 7F088 8008E888 00000000 */  nop
/* 7F08C 8008E88C F9004228 */  slti       $v0, $v0, 0xf9
/* 7F090 8008E890 37004014 */  bnez       $v0, .L8008E970
/* 7F094 8008E894 00000000 */   nop
/* 7F098 8008E898 0A024296 */  lhu        $v0, 0x20a($s2)
/* 7F09C 8008E89C 00000000 */  nop
/* 7F0A0 8008E8A0 00240200 */  sll        $a0, $v0, 0x10
/* 7F0A4 8008E8A4 03240400 */  sra        $a0, $a0, 0x10
/* 7F0A8 8008E8A8 1BA2020C */  jal        FUN_800a886c
/* 7F0AC 8008E8AC 1E0002A6 */   sh        $v0, 0x1e($s0)
/* 7F0B0 8008E8B0 21204000 */  addu       $a0, $v0, $zero
/* 7F0B4 8008E8B4 8A000592 */  lbu        $a1, 0x8a($s0)
/* 7F0B8 8008E8B8 07000224 */  addiu      $v0, $zero, 7
/* 7F0BC 8008E8BC 0700A210 */  beq        $a1, $v0, .L8008E8DC
/* 7F0C0 8008E8C0 040004AE */   sw        $a0, 4($s0)
/* 7F0C4 8008E8C4 0500A010 */  beqz       $a1, .L8008E8DC
/* 7F0C8 8008E8C8 0200A538 */   xori      $a1, $a1, 2
/* 7F0CC 8008E8CC E4484692 */  lbu        $a2, 0x48e4($s2)
/* 7F0D0 8008E8D0 8BFA010C */  jal        FUN_8007ea2c
/* 7F0D4 8008E8D4 0100A52C */   sltiu     $a1, $a1, 1
/* 7F0D8 8008E8D8 E64842A2 */  sb         $v0, 0x48e6($s2)
.L8008E8DC:
/* 7F0DC 8008E8DC 0F80023C */  lui        $v0, %hi(D_800F0028)
/* 7F0E0 8008E8E0 28004324 */  addiu      $v1, $v0, %lo(D_800F0028)
/* 7F0E4 8008E8E4 0100023C */  lui        $v0, 1
/* 7F0E8 8008E8E8 21106200 */  addu       $v0, $v1, $v0
/* 7F0EC 8008E8EC 06434590 */  lbu        $a1, 0x4306($v0)
/* 7F0F0 8008E8F0 07000224 */  addiu      $v0, $zero, 7
/* 7F0F4 8008E8F4 0900A210 */  beq        $a1, $v0, .L8008E91C
/* 7F0F8 8008E8F8 0F80023C */   lui       $v0, 0x800f
/* 7F0FC 8008E8FC 0700A010 */  beqz       $a1, .L8008E91C
/* 7F100 8008E900 0200A538 */   xori      $a1, $a1, 2
/* 7F104 8008E904 0400648C */  lw         $a0, 4($v1)
/* 7F108 8008E908 E5484692 */  lbu        $a2, 0x48e5($s2)
/* 7F10C 8008E90C 8BFA010C */  jal        FUN_8007ea2c
/* 7F110 8008E910 0100A52C */   sltiu     $a1, $a1, 1
/* 7F114 8008E914 E74842A2 */  sb         $v0, 0x48e7($s2)
/* 7F118 8008E918 0F80023C */  lui        $v0, %hi(D_800F0028)
.L8008E91C:
/* 7F11C 8008E91C 28004424 */  addiu      $a0, $v0, %lo(D_800F0028)
/* 7F120 8008E920 8A008390 */  lbu        $v1, 0x8a($a0)
/* 7F124 8008E924 02000524 */  addiu      $a1, $zero, 2
/* 7F128 8008E928 06006510 */  beq        $v1, $a1, .L8008E944
/* 7F12C 8008E92C 0100023C */   lui       $v0, 1
/* 7F130 8008E930 21108200 */  addu       $v0, $a0, $v0
/* 7F134 8008E934 06434290 */  lbu        $v0, 0x4306($v0)
/* 7F138 8008E938 00000000 */  nop
/* 7F13C 8008E93C 0C004514 */  bne        $v0, $a1, .L8008E970
/* 7F140 8008E940 00000000 */   nop
.L8008E944:
/* 7F144 8008E944 07000224 */  addiu      $v0, $zero, 7
/* 7F148 8008E948 03006210 */  beq        $v1, $v0, .L8008E958
/* 7F14C 8008E94C 00000000 */   nop
/* 7F150 8008E950 04006014 */  bnez       $v1, .L8008E964
/* 7F154 8008E954 00000000 */   nop
.L8008E958:
/* 7F158 8008E958 E7484292 */  lbu        $v0, 0x48e7($s2)
/* 7F15C 8008E95C 5C3A0208 */  j          .L8008E970
/* 7F160 8008E960 E64842A2 */   sb        $v0, 0x48e6($s2)
.L8008E964:
/* 7F164 8008E964 E6484292 */  lbu        $v0, 0x48e6($s2)
/* 7F168 8008E968 00000000 */  nop
/* 7F16C 8008E96C E74842A2 */  sb         $v0, 0x48e7($s2)
.L8008E970:
/* 7F170 8008E970 742E020C */  jal        FUN_8008b9d0
/* 7F174 8008E974 21204002 */   addu      $a0, $s2, $zero
/* 7F178 8008E978 10000224 */  addiu      $v0, $zero, 0x10
/* 7F17C 8008E97C D40A42AE */  sw         $v0, 0xad4($s2)
.L8008E980:
/* 7F180 8008E980 21800000 */  addu       $s0, $zero, $zero
.L8008E984:
/* 7F184 8008E984 140040A6 */  sh         $zero, 0x14($s2)
/* 7F188 8008E988 21880002 */  addu       $s1, $s0, $zero
.L8008E98C:
/* 7F18C 8008E98C 8AF8010C */  jal        FUN_8007e228
/* 7F190 8008E990 21202002 */   addu      $a0, $s1, $zero
/* 7F194 8008E994 02004010 */  beqz       $v0, .L8008E9A0
/* 7F198 8008E998 00000000 */   nop
/* 7F19C 8008E99C 01001026 */  addiu      $s0, $s0, 1
.L8008E9A0:
/* 7F1A0 8008E9A0 A7F8010C */  jal        FUN_8007e29c
/* 7F1A4 8008E9A4 21202002 */   addu      $a0, $s1, $zero
/* 7F1A8 8008E9A8 02004010 */  beqz       $v0, .L8008E9B4
/* 7F1AC 8008E9AC 00000000 */   nop
/* 7F1B0 8008E9B0 01001026 */  addiu      $s0, $s0, 1
.L8008E9B4:
/* 7F1B4 8008E9B4 01003126 */  addiu      $s1, $s1, 1
/* 7F1B8 8008E9B8 0200222A */  slti       $v0, $s1, 2
/* 7F1BC 8008E9BC F3FF4014 */  bnez       $v0, .L8008E98C
/* 7F1C0 8008E9C0 0200022A */   slti      $v0, $s0, 2
/* 7F1C4 8008E9C4 84004010 */  beqz       $v0, .L8008EBD8
/* 7F1C8 8008E9C8 0F80023C */   lui       $v0, %hi(D_800F0028)
/* 7F1CC 8008E9CC 21880000 */  addu       $s1, $zero, $zero
/* 7F1D0 8008E9D0 28005324 */  addiu      $s3, $v0, %lo(D_800F0028)
/* 7F1D4 8008E9D4 21804002 */  addu       $s0, $s2, $zero
.L8008E9D8:
/* 7F1D8 8008E9D8 8AF8010C */  jal        FUN_8007e228
/* 7F1DC 8008E9DC 21202002 */   addu      $a0, $s1, $zero
/* 7F1E0 8008E9E0 06004010 */  beqz       $v0, .L8008E9FC
/* 7F1E4 8008E9E4 00000000 */   nop
/* 7F1E8 8008E9E8 0C000296 */  lhu        $v0, 0xc($s0)
/* 7F1EC 8008E9EC 00000000 */  nop
/* 7F1F0 8008E9F0 01004224 */  addiu      $v0, $v0, 1
/* 7F1F4 8008E9F4 803A0208 */  j          .L8008EA00
/* 7F1F8 8008E9F8 0C0002A6 */   sh        $v0, 0xc($s0)
.L8008E9FC:
/* 7F1FC 8008E9FC 0C0000A6 */  sh         $zero, 0xc($s0)
.L8008EA00:
/* 7F200 8008EA00 A7F8010C */  jal        FUN_8007e29c
/* 7F204 8008EA04 21202002 */   addu      $a0, $s1, $zero
/* 7F208 8008EA08 06004010 */  beqz       $v0, .L8008EA24
/* 7F20C 8008EA0C 00000000 */   nop
/* 7F210 8008EA10 10000296 */  lhu        $v0, 0x10($s0)
/* 7F214 8008EA14 00000000 */  nop
/* 7F218 8008EA18 01004224 */  addiu      $v0, $v0, 1
/* 7F21C 8008EA1C 8A3A0208 */  j          .L8008EA28
/* 7F220 8008EA20 100002A6 */   sh        $v0, 0x10($s0)
.L8008EA24:
/* 7F224 8008EA24 100000A6 */  sh         $zero, 0x10($s0)
.L8008EA28:
/* 7F228 8008EA28 23F8010C */  jal        FUN_8007e08c
/* 7F22C 8008EA2C 21202002 */   addu      $a0, $s1, $zero
/* 7F230 8008EA30 05004010 */  beqz       $v0, .L8008EA48
/* 7F234 8008EA34 00000000 */   nop
/* 7F238 8008EA38 3C00AB8F */  lw         $t3, 0x3c($sp)
/* 7F23C 8008EA3C 00000000 */  nop
/* 7F240 8008EA40 01006B25 */  addiu      $t3, $t3, 1
/* 7F244 8008EA44 3C00ABAF */  sw         $t3, 0x3c($sp)
.L8008EA48:
/* 7F248 8008EA48 40F8010C */  jal        FUN_8007e100
/* 7F24C 8008EA4C 21202002 */   addu      $a0, $s1, $zero
/* 7F250 8008EA50 05004010 */  beqz       $v0, .L8008EA68
/* 7F254 8008EA54 00000000 */   nop
/* 7F258 8008EA58 3C00A88F */  lw         $t0, 0x3c($sp)
/* 7F25C 8008EA5C 00000000 */  nop
/* 7F260 8008EA60 FFFF0825 */  addiu      $t0, $t0, -1
/* 7F264 8008EA64 3C00A8AF */  sw         $t0, 0x3c($sp)
.L8008EA68:
/* 7F268 8008EA68 0C000486 */  lh         $a0, 0xc($s0)
/* 7F26C 8008EA6C 00000000 */  nop
/* 7F270 8008EA70 1E008228 */  slti       $v0, $a0, 0x1e
/* 7F274 8008EA74 14004014 */  bnez       $v0, .L8008EAC8
/* 7F278 8008EA78 AA2A023C */   lui       $v0, 0x2aaa
/* 7F27C 8008EA7C ABAA4234 */  ori        $v0, $v0, 0xaaab
/* 7F280 8008EA80 E2FF8424 */  addiu      $a0, $a0, -0x1e
/* 7F284 8008EA84 18008200 */  mult       $a0, $v0
/* 7F288 8008EA88 C3170400 */  sra        $v0, $a0, 0x1f
/* 7F28C 8008EA8C 10400000 */  mfhi       $t0
/* 7F290 8008EA90 23100201 */  subu       $v0, $t0, $v0
/* 7F294 8008EA94 40180200 */  sll        $v1, $v0, 1
/* 7F298 8008EA98 21186200 */  addu       $v1, $v1, $v0
/* 7F29C 8008EA9C 40180300 */  sll        $v1, $v1, 1
/* 7F2A0 8008EAA0 05008314 */  bne        $a0, $v1, .L8008EAB8
/* 7F2A4 8008EAA4 00000000 */   nop
/* 7F2A8 8008EAA8 3C00A98F */  lw         $t1, 0x3c($sp)
/* 7F2AC 8008EAAC 00000000 */  nop
/* 7F2B0 8008EAB0 01002925 */  addiu      $t1, $t1, 1
/* 7F2B4 8008EAB4 3C00A9AF */  sw         $t1, 0x3c($sp)
.L8008EAB8:
/* 7F2B8 8008EAB8 14004296 */  lhu        $v0, 0x14($s2)
/* 7F2BC 8008EABC 00000000 */  nop
/* 7F2C0 8008EAC0 01004234 */  ori        $v0, $v0, 1
/* 7F2C4 8008EAC4 140042A6 */  sh         $v0, 0x14($s2)
.L8008EAC8:
/* 7F2C8 8008EAC8 10000486 */  lh         $a0, 0x10($s0)
/* 7F2CC 8008EACC 00000000 */  nop
/* 7F2D0 8008EAD0 1E008228 */  slti       $v0, $a0, 0x1e
/* 7F2D4 8008EAD4 14004014 */  bnez       $v0, .L8008EB28
/* 7F2D8 8008EAD8 AA2A023C */   lui       $v0, 0x2aaa
/* 7F2DC 8008EADC ABAA4234 */  ori        $v0, $v0, 0xaaab
/* 7F2E0 8008EAE0 E2FF8424 */  addiu      $a0, $a0, -0x1e
/* 7F2E4 8008EAE4 18008200 */  mult       $a0, $v0
/* 7F2E8 8008EAE8 C3170400 */  sra        $v0, $a0, 0x1f
/* 7F2EC 8008EAEC 10400000 */  mfhi       $t0
/* 7F2F0 8008EAF0 23100201 */  subu       $v0, $t0, $v0
/* 7F2F4 8008EAF4 40180200 */  sll        $v1, $v0, 1
/* 7F2F8 8008EAF8 21186200 */  addu       $v1, $v1, $v0
/* 7F2FC 8008EAFC 40180300 */  sll        $v1, $v1, 1
/* 7F300 8008EB00 05008314 */  bne        $a0, $v1, .L8008EB18
/* 7F304 8008EB04 00000000 */   nop
/* 7F308 8008EB08 3C00A98F */  lw         $t1, 0x3c($sp)
/* 7F30C 8008EB0C 00000000 */  nop
/* 7F310 8008EB10 FFFF2925 */  addiu      $t1, $t1, -1
/* 7F314 8008EB14 3C00A9AF */  sw         $t1, 0x3c($sp)
.L8008EB18:
/* 7F318 8008EB18 14004296 */  lhu        $v0, 0x14($s2)
/* 7F31C 8008EB1C 00000000 */  nop
/* 7F320 8008EB20 02004234 */  ori        $v0, $v0, 2
/* 7F324 8008EB24 140042A6 */  sh         $v0, 0x14($s2)
.L8008EB28:
/* 7F328 8008EB28 5DF8010C */  jal        FUN_8007e174
/* 7F32C 8008EB2C 21202002 */   addu      $a0, $s1, $zero
/* 7F330 8008EB30 18004010 */  beqz       $v0, .L8008EB94
/* 7F334 8008EB34 00000000 */   nop
/* 7F338 8008EB38 1E006286 */  lh         $v0, 0x1e($s3)
/* 7F33C 8008EB3C 00000000 */  nop
/* 7F340 8008EB40 F9004228 */  slti       $v0, $v0, 0xf9
/* 7F344 8008EB44 10004010 */  beqz       $v0, .L8008EB88
/* 7F348 8008EB48 01000A24 */   addiu     $t2, $zero, 1
/* 7F34C 8008EB4C 0400628E */  lw         $v0, 4($s3)
/* 7F350 8008EB50 00000000 */  nop
/* 7F354 8008EB54 2400428C */  lw         $v0, 0x24($v0)
/* 7F358 8008EB58 00000000 */  nop
/* 7F35C 8008EB5C 01004230 */  andi       $v0, $v0, 1
/* 7F360 8008EB60 09004010 */  beqz       $v0, .L8008EB88
/* 7F364 8008EB64 00000000 */   nop
/* 7F368 8008EB68 6047428E */  lw         $v0, 0x4760($s2)
/* 7F36C 8008EB6C 00000000 */  nop
/* 7F370 8008EB70 0500401C */  bgtz       $v0, .L8008EB88
/* 7F374 8008EB74 00000000 */   nop
/* 7F378 8008EB78 20006282 */  lb         $v0, 0x20($s3)
/* 7F37C 8008EB7C 00000000 */  nop
/* 7F380 8008EB80 04004010 */  beqz       $v0, .L8008EB94
/* 7F384 8008EB84 00000000 */   nop
.L8008EB88:
/* 7F388 8008EB88 3800AAAF */  sw         $t2, 0x38($sp)
/* 7F38C 8008EB8C F23A0208 */  j          .L8008EBC8
/* 7F390 8008EB90 3C00A0AF */   sw        $zero, 0x3c($sp)
.L8008EB94:
/* 7F394 8008EB94 5DF8010C */  jal        FUN_8007e174
/* 7F398 8008EB98 21202002 */   addu      $a0, $s1, $zero
/* 7F39C 8008EB9C 0A004010 */  beqz       $v0, .L8008EBC8
/* 7F3A0 8008EBA0 00000000 */   nop
/* 7F3A4 8008EBA4 0400628E */  lw         $v0, 4($s3)
/* 7F3A8 8008EBA8 00000000 */  nop
/* 7F3AC 8008EBAC 2400428C */  lw         $v0, 0x24($v0)
/* 7F3B0 8008EBB0 00000000 */  nop
/* 7F3B4 8008EBB4 01004230 */  andi       $v0, $v0, 1
/* 7F3B8 8008EBB8 03004010 */  beqz       $v0, .L8008EBC8
/* 7F3BC 8008EBBC 00000000 */   nop
/* 7F3C0 8008EBC0 12CB020C */  jal        FUN_800b2c48
/* 7F3C4 8008EBC4 19000424 */   addiu     $a0, $zero, 0x19
.L8008EBC8:
/* 7F3C8 8008EBC8 01003126 */  addiu      $s1, $s1, 1
/* 7F3CC 8008EBCC 0200222A */  slti       $v0, $s1, 2
/* 7F3D0 8008EBD0 81FF4014 */  bnez       $v0, .L8008E9D8
/* 7F3D4 8008EBD4 02001026 */   addiu     $s0, $s0, 2
.L8008EBD8:
/* 7F3D8 8008EBD8 3C00AB8F */  lw         $t3, 0x3c($sp)
/* 7F3DC 8008EBDC 00000000 */  nop
/* 7F3E0 8008EBE0 22006011 */  beqz       $t3, .L8008EC6C
/* 7F3E4 8008EBE4 00000000 */   nop
/* 7F3E8 8008EBE8 9C0B4282 */  lb         $v0, 0xb9c($s2)
/* 7F3EC 8008EBEC 00000000 */  nop
/* 7F3F0 8008EBF0 1E004014 */  bnez       $v0, .L8008EC6C
/* 7F3F4 8008EBF4 0F80023C */   lui       $v0, %hi(D_800F0028)
/* 7F3F8 8008EBF8 28004324 */  addiu      $v1, $v0, %lo(D_800F0028)
/* 7F3FC 8008EBFC 20006280 */  lb         $v0, 0x20($v1)
/* 7F400 8008EC00 00000000 */  nop
/* 7F404 8008EC04 19004014 */  bnez       $v0, .L8008EC6C
/* 7F408 8008EC08 00000000 */   nop
/* 7F40C 8008EC0C 18006380 */  lb         $v1, 0x18($v1)
/* 7F410 8008EC10 00000000 */  nop
/* 7F414 8008EC14 05006014 */  bnez       $v1, .L8008EC2C
/* 7F418 8008EC18 00000000 */   nop
/* 7F41C 8008EC1C 6047428E */  lw         $v0, 0x4760($s2)
/* 7F420 8008EC20 00000000 */  nop
/* 7F424 8008EC24 11004018 */  blez       $v0, .L8008EC6C
/* 7F428 8008EC28 00000000 */   nop
.L8008EC2C:
/* 7F42C 8008EC2C 14004286 */  lh         $v0, 0x14($s2)
/* 7F430 8008EC30 00000000 */  nop
/* 7F434 8008EC34 0B004014 */  bnez       $v0, .L8008EC64
/* 7F438 8008EC38 00000000 */   nop
/* 7F43C 8008EC3C 05006014 */  bnez       $v1, .L8008EC54
/* 7F440 8008EC40 04000224 */   addiu     $v0, $zero, 4
/* 7F444 8008EC44 6047438E */  lw         $v1, 0x4760($s2)
/* 7F448 8008EC48 00000000 */  nop
/* 7F44C 8008EC4C 05006214 */  bne        $v1, $v0, .L8008EC64
/* 7F450 8008EC50 00000000 */   nop
.L8008EC54:
/* 7F454 8008EC54 12CB020C */  jal        FUN_800b2c48
/* 7F458 8008EC58 19000424 */   addiu     $a0, $zero, 0x19
/* 7F45C 8008EC5C 3C000224 */  addiu      $v0, $zero, 0x3c
/* 7F460 8008EC60 884742AE */  sw         $v0, 0x4788($s2)
.L8008EC64:
/* 7F464 8008EC64 3C00A0AF */  sw         $zero, 0x3c($sp)
/* 7F468 8008EC68 140040A6 */  sh         $zero, 0x14($s2)
.L8008EC6C:
/* 7F46C 8008EC6C 6047438E */  lw         $v1, 0x4760($s2)
/* 7F470 8008EC70 04000424 */  addiu      $a0, $zero, 4
/* 7F474 8008EC74 3D016410 */  beq        $v1, $a0, .L8008F16C
/* 7F478 8008EC78 03000224 */   addiu     $v0, $zero, 3
/* 7F47C 8008EC7C 0C006214 */  bne        $v1, $v0, .L8008ECB0
/* 7F480 8008EC80 FFFF6224 */   addiu     $v0, $v1, -1
/* 7F484 8008EC84 3C00A0AF */  sw         $zero, 0x3c($sp)
/* 7F488 8008EC88 D00A438E */  lw         $v1, 0xad0($s2)
/* 7F48C 8008EC8C CC0A428E */  lw         $v0, 0xacc($s2)
/* 7F490 8008EC90 00000000 */  nop
/* 7F494 8008EC94 35016214 */  bne        $v1, $v0, .L8008F16C
/* 7F498 8008EC98 3800A0AF */   sw        $zero, 0x38($sp)
/* 7F49C 8008EC9C 604744AE */  sw         $a0, 0x4760($s2)
/* 7F4A0 8008ECA0 12CB020C */  jal        FUN_800b2c48
/* 7F4A4 8008ECA4 02000424 */   addiu     $a0, $zero, 2
/* 7F4A8 8008ECA8 5B3C0208 */  j          .L8008F16C
/* 7F4AC 8008ECAC 00000000 */   nop
.L8008ECB0:
/* 7F4B0 8008ECB0 0200422C */  sltiu      $v0, $v0, 2
/* 7F4B4 8008ECB4 2C014010 */  beqz       $v0, .L8008F168
/* 7F4B8 8008ECB8 00000000 */   nop
/* 7F4BC 8008ECBC 6447428E */  lw         $v0, 0x4764($s2)
/* 7F4C0 8008ECC0 6847448E */  lw         $a0, 0x4768($s2)
/* 7F4C4 8008ECC4 21184000 */  addu       $v1, $v0, $zero
/* 7F4C8 8008ECC8 01004224 */  addiu      $v0, $v0, 1
/* 7F4CC 8008ECCC 2A186400 */  slt        $v1, $v1, $a0
/* 7F4D0 8008ECD0 0C016014 */  bnez       $v1, .L8008F104
/* 7F4D4 8008ECD4 644742AE */   sw        $v0, 0x4764($s2)
/* 7F4D8 8008ECD8 D00A438E */  lw         $v1, 0xad0($s2)
/* 7F4DC 8008ECDC CC0A428E */  lw         $v0, 0xacc($s2)
/* 7F4E0 8008ECE0 FFFF0824 */  addiu      $t0, $zero, -1
/* 7F4E4 8008ECE4 10006214 */  bne        $v1, $v0, .L8008ED28
/* 7F4E8 8008ECE8 3C00A8AF */   sw        $t0, 0x3c($sp)
/* 7F4EC 8008ECEC 0F80023C */  lui        $v0, %hi(D_800F001C)
/* 7F4F0 8008ECF0 1C00438C */  lw         $v1, %lo(D_800F001C)($v0)
/* 7F4F4 8008ECF4 6847428E */  lw         $v0, 0x4768($s2)
/* 7F4F8 8008ECF8 00000000 */  nop
/* 7F4FC 8008ECFC 1B006200 */  divu       $zero, $v1, $v0
/* 7F500 8008ED00 02004014 */  bnez       $v0, .L8008ED0C
/* 7F504 8008ED04 00000000 */   nop
/* 7F508 8008ED08 0D000700 */  break      7
.L8008ED0C:
/* 7F50C 8008ED0C 10100000 */   mfhi      $v0
/* 7F510 8008ED10 00000000 */  nop
/* 7F514 8008ED14 1A00422C */  sltiu      $v0, $v0, 0x1a
/* 7F518 8008ED18 04004014 */  bnez       $v0, .L8008ED2C
/* 7F51C 8008ED1C FFFF1624 */   addiu     $s6, $zero, -1
/* 7F520 8008ED20 01000824 */  addiu      $t0, $zero, 1
/* 7F524 8008ED24 3C00A8AF */  sw         $t0, 0x3c($sp)
.L8008ED28:
/* 7F528 8008ED28 FFFF1624 */  addiu      $s6, $zero, -1
.L8008ED2C:
/* 7F52C 8008ED2C 3C00A98F */  lw         $t1, 0x3c($sp)
/* 7F530 8008ED30 00000000 */  nop
/* 7F534 8008ED34 4800A9AF */  sw         $t1, 0x48($sp)
/* 7F538 8008ED38 0400438E */  lw         $v1, 4($s2)
/* 7F53C 8008ED3C CC0A428E */  lw         $v0, 0xacc($s2)
/* 7F540 8008ED40 00A30300 */  sll        $s4, $v1, 0xc
/* 7F544 8008ED44 21105400 */  addu       $v0, $v0, $s4
/* 7F548 8008ED48 43181400 */  sra        $v1, $s4, 1
/* 7F54C 8008ED4C 1A005400 */  div        $zero, $v0, $s4
/* 7F550 8008ED50 02008016 */  bnez       $s4, .L8008ED5C
/* 7F554 8008ED54 00000000 */   nop
/* 7F558 8008ED58 0D000700 */  break      7
.L8008ED5C:
/* 7F55C 8008ED5C FFFF0124 */   addiu     $at, $zero, -1
/* 7F560 8008ED60 04008116 */  bne        $s4, $at, .L8008ED74
/* 7F564 8008ED64 0080013C */   lui       $at, 0x8000
/* 7F568 8008ED68 02004114 */  bne        $v0, $at, .L8008ED74
/* 7F56C 8008ED6C 00000000 */   nop
/* 7F570 8008ED70 0D000600 */  break      6
.L8008ED74:
/* 7F574 8008ED74 10B80000 */   mfhi      $s7
/* 7F578 8008ED78 62006018 */  blez       $v1, .L8008EF04
/* 7F57C 8008ED7C 21A80000 */   addu      $s5, $zero, $zero
/* 7F580 8008ED80 21F06000 */  addu       $fp, $v1, $zero
.L8008ED84:
/* 7F584 8008ED84 21980000 */  addu       $s3, $zero, $zero
.L8008ED88:
/* 7F588 8008ED88 04006016 */  bnez       $s3, .L8008ED9C
/* 7F58C 8008ED8C 00000000 */   nop
/* 7F590 8008ED90 CC0A428E */  lw         $v0, 0xacc($s2)
/* 7F594 8008ED94 6A3B0208 */  j          .L8008EDA8
/* 7F598 8008ED98 21885500 */   addu      $s1, $v0, $s5
.L8008ED9C:
/* 7F59C 8008ED9C CC0A428E */  lw         $v0, 0xacc($s2)
/* 7F5A0 8008EDA0 00000000 */  nop
/* 7F5A4 8008EDA4 23885500 */  subu       $s1, $v0, $s5
.L8008EDA8:
/* 7F5A8 8008EDA8 1E002106 */  bgez       $s1, .L8008EE24
/* 7F5AC 8008EDAC 23181100 */   negu      $v1, $s1
/* 7F5B0 8008EDB0 0400448E */  lw         $a0, 4($s2)
/* 7F5B4 8008EDB4 00000000 */  nop
/* 7F5B8 8008EDB8 00230400 */  sll        $a0, $a0, 0xc
/* 7F5BC 8008EDBC 1A006400 */  div        $zero, $v1, $a0
/* 7F5C0 8008EDC0 02008014 */  bnez       $a0, .L8008EDCC
/* 7F5C4 8008EDC4 00000000 */   nop
/* 7F5C8 8008EDC8 0D000700 */  break      7
.L8008EDCC:
/* 7F5CC 8008EDCC FFFF0124 */   addiu     $at, $zero, -1
/* 7F5D0 8008EDD0 04008114 */  bne        $a0, $at, .L8008EDE4
/* 7F5D4 8008EDD4 0080013C */   lui       $at, 0x8000
/* 7F5D8 8008EDD8 02006114 */  bne        $v1, $at, .L8008EDE4
/* 7F5DC 8008EDDC 00000000 */   nop
/* 7F5E0 8008EDE0 0D000600 */  break      6
.L8008EDE4:
/* 7F5E4 8008EDE4 10100000 */   mfhi      $v0
/* 7F5E8 8008EDE8 00000000 */  nop
/* 7F5EC 8008EDEC 23108200 */  subu       $v0, $a0, $v0
/* 7F5F0 8008EDF0 1A004400 */  div        $zero, $v0, $a0
/* 7F5F4 8008EDF4 02008014 */  bnez       $a0, .L8008EE00
/* 7F5F8 8008EDF8 00000000 */   nop
/* 7F5FC 8008EDFC 0D000700 */  break      7
.L8008EE00:
/* 7F600 8008EE00 FFFF0124 */   addiu     $at, $zero, -1
/* 7F604 8008EE04 04008114 */  bne        $a0, $at, .L8008EE18
/* 7F608 8008EE08 0080013C */   lui       $at, 0x8000
/* 7F60C 8008EE0C 02004114 */  bne        $v0, $at, .L8008EE18
/* 7F610 8008EE10 00000000 */   nop
/* 7F614 8008EE14 0D000600 */  break      6
.L8008EE18:
/* 7F618 8008EE18 10180000 */   mfhi      $v1
/* 7F61C 8008EE1C 993B0208 */  j          .L8008EE64
/* 7F620 8008EE20 031B0300 */   sra       $v1, $v1, 0xc
.L8008EE24:
/* 7F624 8008EE24 0400428E */  lw         $v0, 4($s2)
/* 7F628 8008EE28 00000000 */  nop
/* 7F62C 8008EE2C 00130200 */  sll        $v0, $v0, 0xc
/* 7F630 8008EE30 1A002202 */  div        $zero, $s1, $v0
/* 7F634 8008EE34 02004014 */  bnez       $v0, .L8008EE40
/* 7F638 8008EE38 00000000 */   nop
/* 7F63C 8008EE3C 0D000700 */  break      7
.L8008EE40:
/* 7F640 8008EE40 FFFF0124 */   addiu     $at, $zero, -1
/* 7F644 8008EE44 04004114 */  bne        $v0, $at, .L8008EE58
/* 7F648 8008EE48 0080013C */   lui       $at, 0x8000
/* 7F64C 8008EE4C 02002116 */  bne        $s1, $at, .L8008EE58
/* 7F650 8008EE50 00000000 */   nop
/* 7F654 8008EE54 0D000600 */  break      6
.L8008EE58:
/* 7F658 8008EE58 10180000 */   mfhi      $v1
/* 7F65C 8008EE5C 00000000 */  nop
/* 7F660 8008EE60 031B0300 */  sra        $v1, $v1, 0xc
.L8008EE64:
/* 7F664 8008EE64 40180300 */  sll        $v1, $v1, 1
/* 7F668 8008EE68 21104302 */  addu       $v0, $s2, $v1
/* 7F66C 8008EE6C 18005084 */  lh         $s0, 0x18($v0)
/* 7F670 8008EE70 00000000 */  nop
/* 7F674 8008EE74 F900022E */  sltiu      $v0, $s0, 0xf9
/* 7F678 8008EE78 18004010 */  beqz       $v0, .L8008EEDC
/* 7F67C 8008EE7C 00000000 */   nop
/* 7F680 8008EE80 1BA2020C */  jal        FUN_800a886c
/* 7F684 8008EE84 21200002 */   addu      $a0, $s0, $zero
/* 7F688 8008EE88 14004010 */  beqz       $v0, .L8008EEDC
/* 7F68C 8008EE8C 40101000 */   sll       $v0, $s0, 1
/* 7F690 8008EE90 21104202 */  addu       $v0, $s2, $v0
/* 7F694 8008EE94 E6064284 */  lh         $v0, 0x6e6($v0)
/* 7F698 8008EE98 00000000 */  nop
/* 7F69C 8008EE9C 0F004010 */  beqz       $v0, .L8008EEDC
/* 7F6A0 8008EEA0 40101400 */   sll       $v0, $s4, 1
/* 7F6A4 8008EEA4 21102202 */  addu       $v0, $s1, $v0
/* 7F6A8 8008EEA8 1A005400 */  div        $zero, $v0, $s4
/* 7F6AC 8008EEAC 02008016 */  bnez       $s4, .L8008EEB8
/* 7F6B0 8008EEB0 00000000 */   nop
/* 7F6B4 8008EEB4 0D000700 */  break      7
.L8008EEB8:
/* 7F6B8 8008EEB8 FFFF0124 */   addiu     $at, $zero, -1
/* 7F6BC 8008EEBC 04008116 */  bne        $s4, $at, .L8008EED0
/* 7F6C0 8008EEC0 0080013C */   lui       $at, 0x8000
/* 7F6C4 8008EEC4 02004114 */  bne        $v0, $at, .L8008EED0
/* 7F6C8 8008EEC8 00000000 */   nop
/* 7F6CC 8008EECC 0D000600 */  break      6
.L8008EED0:
/* 7F6D0 8008EED0 10B00000 */   mfhi      $s6
/* 7F6D4 8008EED4 BB3B0208 */  j          .L8008EEEC
/* 7F6D8 8008EED8 FFFF0224 */   addiu     $v0, $zero, -1
.L8008EEDC:
/* 7F6DC 8008EEDC 01007326 */  addiu      $s3, $s3, 1
/* 7F6E0 8008EEE0 0200622A */  slti       $v0, $s3, 2
/* 7F6E4 8008EEE4 A8FF4014 */  bnez       $v0, .L8008ED88
/* 7F6E8 8008EEE8 FFFF0224 */   addiu     $v0, $zero, -1
.L8008EEEC:
/* 7F6EC 8008EEEC 0800C216 */  bne        $s6, $v0, .L8008EF10
/* 7F6F0 8008EEF0 2A10F602 */   slt       $v0, $s7, $s6
/* 7F6F4 8008EEF4 0010B526 */  addiu      $s5, $s5, 0x1000
/* 7F6F8 8008EEF8 2A10BE02 */  slt        $v0, $s5, $fp
/* 7F6FC 8008EEFC A1FF4014 */  bnez       $v0, .L8008ED84
/* 7F700 8008EF00 00000000 */   nop
.L8008EF04:
/* 7F704 8008EF04 FFFF0224 */  addiu      $v0, $zero, -1
/* 7F708 8008EF08 6700C212 */  beq        $s6, $v0, .L8008F0A8
/* 7F70C 8008EF0C 2A10F602 */   slt       $v0, $s7, $s6
.L8008EF10:
/* 7F710 8008EF10 05004010 */  beqz       $v0, .L8008EF28
/* 7F714 8008EF14 FFFF0524 */   addiu     $a1, $zero, -1
/* 7F718 8008EF18 2330D702 */  subu       $a2, $s6, $s7
/* 7F71C 8008EF1C 2110F402 */  addu       $v0, $s7, $s4
/* 7F720 8008EF20 CD3B0208 */  j          .L8008EF34
/* 7F724 8008EF24 23385600 */   subu      $a3, $v0, $s6
.L8008EF28:
/* 7F728 8008EF28 2110D402 */  addu       $v0, $s6, $s4
/* 7F72C 8008EF2C 23305700 */  subu       $a2, $v0, $s7
/* 7F730 8008EF30 2338F602 */  subu       $a3, $s7, $s6
.L8008EF34:
/* 7F734 8008EF34 0A00D716 */  bne        $s6, $s7, .L8008EF60
/* 7F738 8008EF38 2A10C700 */   slt       $v0, $a2, $a3
/* 7F73C 8008EF3C 0F80023C */  lui        $v0, %hi(D_800F001C)
/* 7F740 8008EF40 1C00428C */  lw         $v0, %lo(D_800F001C)($v0)
/* 7F744 8008EF44 01000824 */  addiu      $t0, $zero, 1
/* 7F748 8008EF48 24104800 */  and        $v0, $v0, $t0
/* 7F74C 8008EF4C 0C004010 */  beqz       $v0, .L8008EF80
/* 7F750 8008EF50 3C00A8AF */   sw        $t0, 0x3c($sp)
/* 7F754 8008EF54 FFFF0924 */  addiu      $t1, $zero, -1
/* 7F758 8008EF58 E03B0208 */  j          .L8008EF80
/* 7F75C 8008EF5C 3C00A9AF */   sw        $t1, 0x3c($sp)
.L8008EF60:
/* 7F760 8008EF60 04004010 */  beqz       $v0, .L8008EF74
/* 7F764 8008EF64 FFFF0A24 */   addiu     $t2, $zero, -1
/* 7F768 8008EF68 3C00AAAF */  sw         $t2, 0x3c($sp)
/* 7F76C 8008EF6C E03B0208 */  j          .L8008EF80
/* 7F770 8008EF70 01000524 */   addiu     $a1, $zero, 1
.L8008EF74:
/* 7F774 8008EF74 01000B24 */  addiu      $t3, $zero, 1
/* 7F778 8008EF78 3C00ABAF */  sw         $t3, 0x3c($sp)
/* 7F77C 8008EF7C 21280000 */  addu       $a1, $zero, $zero
.L8008EF80:
/* 7F780 8008EF80 0F80023C */  lui        $v0, %hi(D_800F001C)
/* 7F784 8008EF84 1C00428C */  lw         $v0, %lo(D_800F001C)($v0)
/* 7F788 8008EF88 6847438E */  lw         $v1, 0x4768($s2)
/* 7F78C 8008EF8C 00000000 */  nop
/* 7F790 8008EF90 1B004300 */  divu       $zero, $v0, $v1
/* 7F794 8008EF94 02006014 */  bnez       $v1, .L8008EFA0
/* 7F798 8008EF98 00000000 */   nop
/* 7F79C 8008EF9C 0D000700 */  break      7
.L8008EFA0:
/* 7F7A0 8008EFA0 10180000 */   mfhi      $v1
/* 7F7A4 8008EFA4 7047428E */  lw         $v0, 0x4770($s2)
/* 7F7A8 8008EFA8 0600632C */  sltiu      $v1, $v1, 6
/* 7F7AC 8008EFAC 03006014 */  bnez       $v1, .L8008EFBC
/* 7F7B0 8008EFB0 02004228 */   slti      $v0, $v0, 2
/* 7F7B4 8008EFB4 05004010 */  beqz       $v0, .L8008EFCC
/* 7F7B8 8008EFB8 FFFF0224 */   addiu     $v0, $zero, -1
.L8008EFBC:
/* 7F7BC 8008EFBC 4800A88F */  lw         $t0, 0x48($sp)
/* 7F7C0 8008EFC0 00000000 */  nop
/* 7F7C4 8008EFC4 3C00A8AF */  sw         $t0, 0x3c($sp)
/* 7F7C8 8008EFC8 FFFF0224 */  addiu      $v0, $zero, -1
.L8008EFCC:
/* 7F7CC 8008EFCC 3600A210 */  beq        $a1, $v0, .L8008F0A8
/* 7F7D0 8008EFD0 02000224 */   addiu     $v0, $zero, 2
/* 7F7D4 8008EFD4 6047438E */  lw         $v1, 0x4760($s2)
/* 7F7D8 8008EFD8 00000000 */  nop
/* 7F7DC 8008EFDC 34006214 */  bne        $v1, $v0, .L8008F0B0
/* 7F7E0 8008EFE0 00000000 */   nop
/* 7F7E4 8008EFE4 6847428E */  lw         $v0, 0x4768($s2)
/* 7F7E8 8008EFE8 00000000 */  nop
/* 7F7EC 8008EFEC 30004314 */  bne        $v0, $v1, .L8008F0B0
/* 7F7F0 8008EFF0 02000224 */   addiu     $v0, $zero, 2
/* 7F7F4 8008EFF4 0180023C */  lui        $v0, %hi(D_80015DB4)
/* 7F7F8 8008EFF8 B45D4824 */  addiu      $t0, $v0, %lo(D_80015DB4)
/* 7F7FC 8008EFFC 03000989 */  lwl        $t1, 3($t0)
/* 7F800 8008F000 00000999 */  lwr        $t1, ($t0)
/* 7F804 8008F004 07000A89 */  lwl        $t2, 7($t0)
/* 7F808 8008F008 04000A99 */  lwr        $t2, 4($t0)
/* 7F80C 8008F00C 08000B81 */  lb         $t3, 8($t0)
/* 7F810 8008F010 2300A9AB */  swl        $t1, 0x23($sp)
/* 7F814 8008F014 2000A9BB */  swr        $t1, 0x20($sp)
/* 7F818 8008F018 2700AAAB */  swl        $t2, 0x27($sp)
/* 7F81C 8008F01C 2400AABB */  swr        $t2, 0x24($sp)
/* 7F820 8008F020 2800ABA3 */  sb         $t3, 0x28($sp)
/* 7F824 8008F024 09000981 */  lb         $t1, 9($t0)
/* 7F828 8008F028 00000000 */  nop
/* 7F82C 8008F02C 2900A9A3 */  sb         $t1, 0x29($sp)
/* 7F830 8008F030 6C47428E */  lw         $v0, 0x476c($s2)
/* 7F834 8008F034 7047438E */  lw         $v1, 0x4770($s2)
/* 7F838 8008F038 2110A203 */  addu       $v0, $sp, $v0
/* 7F83C 8008F03C 20004490 */  lbu        $a0, 0x20($v0)
/* 7F840 8008F040 01000224 */  addiu      $v0, $zero, 1
/* 7F844 8008F044 03006210 */  beq        $v1, $v0, .L8008F054
/* 7F848 8008F048 03000224 */   addiu     $v0, $zero, 3
/* 7F84C 8008F04C 03006214 */  bne        $v1, $v0, .L8008F05C
/* 7F850 8008F050 01000224 */   addiu     $v0, $zero, 1
.L8008F054:
/* 7F854 8008F054 01008438 */  xori       $a0, $a0, 1
/* 7F858 8008F058 01000224 */  addiu      $v0, $zero, 1
.L8008F05C:
/* 7F85C 8008F05C 0800A214 */  bne        $a1, $v0, .L8008F080
/* 7F860 8008F060 2110C000 */   addu      $v0, $a2, $zero
/* 7F864 8008F064 02004104 */  bgez       $v0, .L8008F070
/* 7F868 8008F068 00000000 */   nop
/* 7F86C 8008F06C FF0F4224 */  addiu      $v0, $v0, 0xfff
.L8008F070:
/* 7F870 8008F070 03130200 */  sra        $v0, $v0, 0xc
/* 7F874 8008F074 01004230 */  andi       $v0, $v0, 1
/* 7F878 8008F078 0A004410 */  beq        $v0, $a0, .L8008F0A4
/* 7F87C 8008F07C 00000000 */   nop
.L8008F080:
/* 7F880 8008F080 0900A014 */  bnez       $a1, .L8008F0A8
/* 7F884 8008F084 2110E000 */   addu      $v0, $a3, $zero
/* 7F888 8008F088 02004104 */  bgez       $v0, .L8008F094
/* 7F88C 8008F08C 00000000 */   nop
/* 7F890 8008F090 FF0F4224 */  addiu      $v0, $v0, 0xfff
.L8008F094:
/* 7F894 8008F094 03130200 */  sra        $v0, $v0, 0xc
/* 7F898 8008F098 01004230 */  andi       $v0, $v0, 1
/* 7F89C 8008F09C 02004414 */  bne        $v0, $a0, .L8008F0A8
/* 7F8A0 8008F0A0 00000000 */   nop
.L8008F0A4:
/* 7F8A4 8008F0A4 3C00A0AF */  sw         $zero, 0x3c($sp)
.L8008F0A8:
/* 7F8A8 8008F0A8 6047438E */  lw         $v1, 0x4760($s2)
/* 7F8AC 8008F0AC 02000224 */  addiu      $v0, $zero, 2
.L8008F0B0:
/* 7F8B0 8008F0B0 1A006214 */  bne        $v1, $v0, .L8008F11C
/* 7F8B4 8008F0B4 644740AE */   sw        $zero, 0x4764($s2)
/* 7F8B8 8008F0B8 6C47438E */  lw         $v1, 0x476c($s2)
/* 7F8BC 8008F0BC 6847428E */  lw         $v0, 0x4768($s2)
/* 7F8C0 8008F0C0 0B006324 */  addiu      $v1, $v1, 0xb
/* 7F8C4 8008F0C4 01004224 */  addiu      $v0, $v0, 1
/* 7F8C8 8008F0C8 18004300 */  mult       $v0, $v1
/* 7F8CC 8008F0CC 12100000 */  mflo       $v0
/* 7F8D0 8008F0D0 6666033C */  lui        $v1, 0x6666
/* 7F8D4 8008F0D4 67666334 */  ori        $v1, $v1, 0x6667
/* 7F8D8 8008F0D8 18004300 */  mult       $v0, $v1
/* 7F8DC 8008F0DC C3170200 */  sra        $v0, $v0, 0x1f
/* 7F8E0 8008F0E0 10180000 */  mfhi       $v1
/* 7F8E4 8008F0E4 83180300 */  sra        $v1, $v1, 2
/* 7F8E8 8008F0E8 23186200 */  subu       $v1, $v1, $v0
/* 7F8EC 8008F0EC 684743AE */  sw         $v1, 0x4768($s2)
/* 7F8F0 8008F0F0 3D006328 */  slti       $v1, $v1, 0x3d
/* 7F8F4 8008F0F4 04006014 */  bnez       $v1, .L8008F108
/* 7F8F8 8008F0F8 03000224 */   addiu     $v0, $zero, 3
/* 7F8FC 8008F0FC 423C0208 */  j          .L8008F108
/* 7F900 8008F100 604742AE */   sw        $v0, 0x4760($s2)
.L8008F104:
/* 7F904 8008F104 3C00A0AF */  sw         $zero, 0x3c($sp)
.L8008F108:
/* 7F908 8008F108 6047438E */  lw         $v1, 0x4760($s2)
/* 7F90C 8008F10C 02000224 */  addiu      $v0, $zero, 2
/* 7F910 8008F110 04006214 */  bne        $v1, $v0, .L8008F124
/* 7F914 8008F114 01000224 */   addiu     $v0, $zero, 1
/* 7F918 8008F118 3800A0AF */  sw         $zero, 0x38($sp)
.L8008F11C:
/* 7F91C 8008F11C 6047438E */  lw         $v1, 0x4760($s2)
/* 7F920 8008F120 01000224 */  addiu      $v0, $zero, 1
.L8008F124:
/* 7F924 8008F124 11006214 */  bne        $v1, $v0, .L8008F16C
/* 7F928 8008F128 FFFF0424 */   addiu     $a0, $zero, -1
/* 7F92C 8008F12C 21280000 */  addu       $a1, $zero, $zero
/* 7F930 8008F130 18150724 */  addiu      $a3, $zero, 0x1518
/* 7F934 8008F134 0F80023C */  lui        $v0, %hi(D_800F0020)
/* 7F938 8008F138 2000468C */  lw         $a2, %lo(D_800F0020)($v0)
/* 7F93C 8008F13C 63000224 */  addiu      $v0, $zero, 0x63
/* 7F940 8008F140 1000A2AF */  sw         $v0, 0x10($sp)
/* 7F944 8008F144 3C000224 */  addiu      $v0, $zero, 0x3c
/* 7F948 8008F148 1400A2AF */  sw         $v0, 0x14($sp)
/* 7F94C 8008F14C 1800A0AF */  sw         $zero, 0x18($sp)
/* 7F950 8008F150 85F9010C */  jal        FUN_8007e614
/* 7F954 8008F154 1C00A0AF */   sw        $zero, 0x1c($sp)
/* 7F958 8008F158 04004010 */  beqz       $v0, .L8008F16C
/* 7F95C 8008F15C 01000824 */   addiu     $t0, $zero, 1
/* 7F960 8008F160 5B3C0208 */  j          .L8008F16C
/* 7F964 8008F164 3800A8AF */   sw        $t0, 0x38($sp)
.L8008F168:
/* 7F968 8008F168 644740AE */  sw         $zero, 0x4764($s2)
.L8008F16C:
/* 7F96C 8008F16C 3C00A98F */  lw         $t1, 0x3c($sp)
/* 7F970 8008F170 00000000 */  nop
/* 7F974 8008F174 B9012011 */  beqz       $t1, .L8008F85C
/* 7F978 8008F178 01000224 */   addiu     $v0, $zero, 1
/* 7F97C 8008F17C CC0A538E */  lw         $s3, 0xacc($s2)
/* 7F980 8008F180 D00A548E */  lw         $s4, 0xad0($s2)
/* 7F984 8008F184 09002105 */  bgez       $t1, .L8008F1AC
/* 7F988 8008F188 00000000 */   nop
/* 7F98C 8008F18C 0400438E */  lw         $v1, 4($s2)
/* 7F990 8008F190 C80A428E */  lw         $v0, 0xac8($s2)
/* 7F994 8008F194 001B0300 */  sll        $v1, $v1, 0xc
/* 7F998 8008F198 2A106200 */  slt        $v0, $v1, $v0
/* 7F99C 8008F19C 03004010 */  beqz       $v0, .L8008F1AC
/* 7F9A0 8008F1A0 00000000 */   nop
/* 7F9A4 8008F1A4 23986302 */  subu       $s3, $s3, $v1
/* 7F9A8 8008F1A8 23A08302 */  subu       $s4, $s4, $v1
.L8008F1AC:
/* 7F9AC 8008F1AC 3C00AA8F */  lw         $t2, 0x3c($sp)
/* 7F9B0 8008F1B0 00000000 */  nop
/* 7F9B4 8008F1B4 0B004019 */  blez       $t2, .L8008F1E4
/* 7F9B8 8008F1B8 00000000 */   nop
/* 7F9BC 8008F1BC C80A428E */  lw         $v0, 0xac8($s2)
/* 7F9C0 8008F1C0 00000000 */  nop
/* 7F9C4 8008F1C4 07004104 */  bgez       $v0, .L8008F1E4
/* 7F9C8 8008F1C8 00000000 */   nop
/* 7F9CC 8008F1CC 0400428E */  lw         $v0, 4($s2)
/* 7F9D0 8008F1D0 CC0A438E */  lw         $v1, 0xacc($s2)
/* 7F9D4 8008F1D4 D00A448E */  lw         $a0, 0xad0($s2)
/* 7F9D8 8008F1D8 00130200 */  sll        $v0, $v0, 0xc
/* 7F9DC 8008F1DC 21986200 */  addu       $s3, $v1, $v0
/* 7F9E0 8008F1E0 21A08200 */  addu       $s4, $a0, $v0
.L8008F1E4:
/* 7F9E4 8008F1E4 3C00AB8F */  lw         $t3, 0x3c($sp)
/* 7F9E8 8008F1E8 00000000 */  nop
/* 7F9EC 8008F1EC 00130B00 */  sll        $v0, $t3, 0xc
/* 7F9F0 8008F1F0 23186202 */  subu       $v1, $s3, $v0
/* 7F9F4 8008F1F4 20006104 */  bgez       $v1, .L8008F278
/* 7F9F8 8008F1F8 23105300 */   subu      $v0, $v0, $s3
/* 7F9FC 8008F1FC 0400438E */  lw         $v1, 4($s2)
/* 7FA00 8008F200 00000000 */  nop
/* 7FA04 8008F204 001B0300 */  sll        $v1, $v1, 0xc
/* 7FA08 8008F208 1A004300 */  div        $zero, $v0, $v1
/* 7FA0C 8008F20C 02006014 */  bnez       $v1, .L8008F218
/* 7FA10 8008F210 00000000 */   nop
/* 7FA14 8008F214 0D000700 */  break      7
.L8008F218:
/* 7FA18 8008F218 FFFF0124 */   addiu     $at, $zero, -1
/* 7FA1C 8008F21C 04006114 */  bne        $v1, $at, .L8008F230
/* 7FA20 8008F220 0080013C */   lui       $at, 0x8000
/* 7FA24 8008F224 02004114 */  bne        $v0, $at, .L8008F230
/* 7FA28 8008F228 00000000 */   nop
/* 7FA2C 8008F22C 0D000600 */  break      6
.L8008F230:
/* 7FA30 8008F230 10200000 */   mfhi      $a0
/* 7FA34 8008F234 00000000 */  nop
/* 7FA38 8008F238 23206400 */  subu       $a0, $v1, $a0
/* 7FA3C 8008F23C 1A008300 */  div        $zero, $a0, $v1
/* 7FA40 8008F240 02006014 */  bnez       $v1, .L8008F24C
/* 7FA44 8008F244 00000000 */   nop
/* 7FA48 8008F248 0D000700 */  break      7
.L8008F24C:
/* 7FA4C 8008F24C FFFF0124 */   addiu     $at, $zero, -1
/* 7FA50 8008F250 04006114 */  bne        $v1, $at, .L8008F264
/* 7FA54 8008F254 0080013C */   lui       $at, 0x8000
/* 7FA58 8008F258 02008114 */  bne        $a0, $at, .L8008F264
/* 7FA5C 8008F25C 00000000 */   nop
/* 7FA60 8008F260 0D000600 */  break      6
.L8008F264:
/* 7FA64 8008F264 10100000 */   mfhi      $v0
/* 7FA68 8008F268 00000000 */  nop
/* 7FA6C 8008F26C 03130200 */  sra        $v0, $v0, 0xc
/* 7FA70 8008F270 AF3C0208 */  j          .L8008F2BC
/* 7FA74 8008F274 40100200 */   sll       $v0, $v0, 1
.L8008F278:
/* 7FA78 8008F278 0400428E */  lw         $v0, 4($s2)
/* 7FA7C 8008F27C 00000000 */  nop
/* 7FA80 8008F280 00130200 */  sll        $v0, $v0, 0xc
/* 7FA84 8008F284 1A006200 */  div        $zero, $v1, $v0
/* 7FA88 8008F288 02004014 */  bnez       $v0, .L8008F294
/* 7FA8C 8008F28C 00000000 */   nop
/* 7FA90 8008F290 0D000700 */  break      7
.L8008F294:
/* 7FA94 8008F294 FFFF0124 */   addiu     $at, $zero, -1
/* 7FA98 8008F298 04004114 */  bne        $v0, $at, .L8008F2AC
/* 7FA9C 8008F29C 0080013C */   lui       $at, 0x8000
/* 7FAA0 8008F2A0 02006114 */  bne        $v1, $at, .L8008F2AC
/* 7FAA4 8008F2A4 00000000 */   nop
/* 7FAA8 8008F2A8 0D000600 */  break      6
.L8008F2AC:
/* 7FAAC 8008F2AC 10180000 */   mfhi      $v1
/* 7FAB0 8008F2B0 00000000 */  nop
/* 7FAB4 8008F2B4 031B0300 */  sra        $v1, $v1, 0xc
/* 7FAB8 8008F2B8 40100300 */  sll        $v0, $v1, 1
.L8008F2BC:
/* 7FABC 8008F2BC 21104202 */  addu       $v0, $s2, $v0
/* 7FAC0 8008F2C0 9C0B4382 */  lb         $v1, 0xb9c($s2)
/* 7FAC4 8008F2C4 18005084 */  lh         $s0, 0x18($v0)
/* 7FAC8 8008F2C8 1C006014 */  bnez       $v1, .L8008F33C
/* 7FACC 8008F2CC 21880000 */   addu      $s1, $zero, $zero
/* 7FAD0 8008F2D0 0F80023C */  lui        $v0, %hi(D_800F003E)
/* 7FAD4 8008F2D4 3E004380 */  lb         $v1, %lo(D_800F003E)($v0)
/* 7FAD8 8008F2D8 08000224 */  addiu      $v0, $zero, 8
/* 7FADC 8008F2DC 03006210 */  beq        $v1, $v0, .L8008F2EC
/* 7FAE0 8008F2E0 02000224 */   addiu     $v0, $zero, 2
/* 7FAE4 8008F2E4 11006214 */  bne        $v1, $v0, .L8008F32C
/* 7FAE8 8008F2E8 00000000 */   nop
.L8008F2EC:
/* 7FAEC 8008F2EC FFFF0424 */  addiu      $a0, $zero, -1
/* 7FAF0 8008F2F0 21280000 */  addu       $a1, $zero, $zero
/* 7FAF4 8008F2F4 18150724 */  addiu      $a3, $zero, 0x1518
/* 7FAF8 8008F2F8 0F80023C */  lui        $v0, %hi(D_800F0020)
/* 7FAFC 8008F2FC 2000468C */  lw         $a2, %lo(D_800F0020)($v0)
/* 7FB00 8008F300 63000224 */  addiu      $v0, $zero, 0x63
/* 7FB04 8008F304 1000A2AF */  sw         $v0, 0x10($sp)
/* 7FB08 8008F308 3C000224 */  addiu      $v0, $zero, 0x3c
/* 7FB0C 8008F30C 1400A2AF */  sw         $v0, 0x14($sp)
/* 7FB10 8008F310 1800A0AF */  sw         $zero, 0x18($sp)
/* 7FB14 8008F314 85F9010C */  jal        FUN_8007e614
/* 7FB18 8008F318 1C00A0AF */   sw        $zero, 0x1c($sp)
/* 7FB1C 8008F31C 03004010 */  beqz       $v0, .L8008F32C
/* 7FB20 8008F320 FB00022A */   slti      $v0, $s0, 0xfb
/* 7FB24 8008F324 10004010 */  beqz       $v0, .L8008F368
/* 7FB28 8008F328 00000000 */   nop
.L8008F32C:
/* 7FB2C 8008F32C 9C0B4282 */  lb         $v0, 0xb9c($s2)
/* 7FB30 8008F330 00000000 */  nop
/* 7FB34 8008F334 04004010 */  beqz       $v0, .L8008F348
/* 7FB38 8008F338 00000000 */   nop
.L8008F33C:
/* 7FB3C 8008F33C FFFF0224 */  addiu      $v0, $zero, -1
/* 7FB40 8008F340 09000212 */  beq        $s0, $v0, .L8008F368
/* 7FB44 8008F344 00000000 */   nop
.L8008F348:
/* 7FB48 8008F348 AC484392 */  lbu        $v1, 0x48ac($s2)
/* 7FB4C 8008F34C 01000224 */  addiu      $v0, $zero, 1
/* 7FB50 8008F350 0F006214 */  bne        $v1, $v0, .L8008F390
/* 7FB54 8008F354 00000000 */   nop
/* 7FB58 8008F358 03000012 */  beqz       $s0, .L8008F368
/* 7FB5C 8008F35C FF000224 */   addiu     $v0, $zero, 0xff
/* 7FB60 8008F360 0B000216 */  bne        $s0, $v0, .L8008F390
/* 7FB64 8008F364 00000000 */   nop
.L8008F368:
/* 7FB68 8008F368 AC484292 */  lbu        $v0, 0x48ac($s2)
/* 7FB6C 8008F36C 01001124 */  addiu      $s1, $zero, 1
/* 7FB70 8008F370 07005114 */  bne        $v0, $s1, .L8008F390
/* 7FB74 8008F374 00000000 */   nop
/* 7FB78 8008F378 BC0A428E */  lw         $v0, 0xabc($s2)
/* 7FB7C 8008F37C 00000000 */  nop
/* 7FB80 8008F380 09004228 */  slti       $v0, $v0, 9
/* 7FB84 8008F384 02004014 */  bnez       $v0, .L8008F390
/* 7FB88 8008F388 00000000 */   nop
/* 7FB8C 8008F38C 2B881000 */  sltu       $s1, $zero, $s0
.L8008F390:
/* 7FB90 8008F390 0F012016 */  bnez       $s1, .L8008F7D0
/* 7FB94 8008F394 01000224 */   addiu     $v0, $zero, 1
/* 7FB98 8008F398 CC0A53AE */  sw         $s3, 0xacc($s2)
/* 7FB9C 8008F39C 3C00A88F */  lw         $t0, 0x3c($sp)
/* 7FBA0 8008F3A0 21106002 */  addu       $v0, $s3, $zero
/* 7FBA4 8008F3A4 D00A54AE */  sw         $s4, 0xad0($s2)
/* 7FBA8 8008F3A8 C80A54AE */  sw         $s4, 0xac8($s2)
/* 7FBAC 8008F3AC D40A40AE */  sw         $zero, 0xad4($s2)
/* 7FBB0 8008F3B0 001B0800 */  sll        $v1, $t0, 0xc
/* 7FBB4 8008F3B4 23104300 */  subu       $v0, $v0, $v1
/* 7FBB8 8008F3B8 21204000 */  addu       $a0, $v0, $zero
/* 7FBBC 8008F3BC 1E008104 */  bgez       $a0, .L8008F438
/* 7FBC0 8008F3C0 CC0A42AE */   sw        $v0, 0xacc($s2)
/* 7FBC4 8008F3C4 0400438E */  lw         $v1, 4($s2)
/* 7FBC8 8008F3C8 23100400 */  negu       $v0, $a0
/* 7FBCC 8008F3CC 001B0300 */  sll        $v1, $v1, 0xc
/* 7FBD0 8008F3D0 1A004300 */  div        $zero, $v0, $v1
/* 7FBD4 8008F3D4 02006014 */  bnez       $v1, .L8008F3E0
/* 7FBD8 8008F3D8 00000000 */   nop
/* 7FBDC 8008F3DC 0D000700 */  break      7
.L8008F3E0:
/* 7FBE0 8008F3E0 FFFF0124 */   addiu     $at, $zero, -1
/* 7FBE4 8008F3E4 04006114 */  bne        $v1, $at, .L8008F3F8
/* 7FBE8 8008F3E8 0080013C */   lui       $at, 0x8000
/* 7FBEC 8008F3EC 02004114 */  bne        $v0, $at, .L8008F3F8
/* 7FBF0 8008F3F0 00000000 */   nop
/* 7FBF4 8008F3F4 0D000600 */  break      6
.L8008F3F8:
/* 7FBF8 8008F3F8 10200000 */   mfhi      $a0
/* 7FBFC 8008F3FC 00000000 */  nop
/* 7FC00 8008F400 23206400 */  subu       $a0, $v1, $a0
/* 7FC04 8008F404 1A008300 */  div        $zero, $a0, $v1
/* 7FC08 8008F408 02006014 */  bnez       $v1, .L8008F414
/* 7FC0C 8008F40C 00000000 */   nop
/* 7FC10 8008F410 0D000700 */  break      7
.L8008F414:
/* 7FC14 8008F414 FFFF0124 */   addiu     $at, $zero, -1
/* 7FC18 8008F418 04006114 */  bne        $v1, $at, .L8008F42C
/* 7FC1C 8008F41C 0080013C */   lui       $at, 0x8000
/* 7FC20 8008F420 02008114 */  bne        $a0, $at, .L8008F42C
/* 7FC24 8008F424 00000000 */   nop
/* 7FC28 8008F428 0D000600 */  break      6
.L8008F42C:
/* 7FC2C 8008F42C 10100000 */   mfhi      $v0
/* 7FC30 8008F430 1E3D0208 */  j          .L8008F478
/* 7FC34 8008F434 03230200 */   sra       $a0, $v0, 0xc
.L8008F438:
/* 7FC38 8008F438 0400428E */  lw         $v0, 4($s2)
/* 7FC3C 8008F43C 00000000 */  nop
/* 7FC40 8008F440 00130200 */  sll        $v0, $v0, 0xc
/* 7FC44 8008F444 1A008200 */  div        $zero, $a0, $v0
/* 7FC48 8008F448 02004014 */  bnez       $v0, .L8008F454
/* 7FC4C 8008F44C 00000000 */   nop
/* 7FC50 8008F450 0D000700 */  break      7
.L8008F454:
/* 7FC54 8008F454 FFFF0124 */   addiu     $at, $zero, -1
/* 7FC58 8008F458 04004114 */  bne        $v0, $at, .L8008F46C
/* 7FC5C 8008F45C 0080013C */   lui       $at, 0x8000
/* 7FC60 8008F460 02008114 */  bne        $a0, $at, .L8008F46C
/* 7FC64 8008F464 00000000 */   nop
/* 7FC68 8008F468 0D000600 */  break      6
.L8008F46C:
/* 7FC6C 8008F46C 10180000 */   mfhi      $v1
/* 7FC70 8008F470 00000000 */  nop
/* 7FC74 8008F474 03230300 */  sra        $a0, $v1, 0xc
.L8008F478:
/* 7FC78 8008F478 AC484392 */  lbu        $v1, 0x48ac($s2)
/* 7FC7C 8008F47C 01000224 */  addiu      $v0, $zero, 1
/* 7FC80 8008F480 7D006214 */  bne        $v1, $v0, .L8008F678
/* 7FC84 8008F484 000044AE */   sw        $a0, ($s2)
/* 7FC88 8008F488 04104400 */  sllv       $v0, $a0, $v0
/* 7FC8C 8008F48C 21104202 */  addu       $v0, $s2, $v0
/* 7FC90 8008F490 18004284 */  lh         $v0, 0x18($v0)
/* 7FC94 8008F494 00000000 */  nop
/* 7FC98 8008F498 3A004014 */  bnez       $v0, .L8008F584
/* 7FC9C 8008F49C 00000000 */   nop
/* 7FCA0 8008F4A0 BC0A428E */  lw         $v0, 0xabc($s2)
/* 7FCA4 8008F4A4 00000000 */  nop
/* 7FCA8 8008F4A8 09004228 */  slti       $v0, $v0, 9
/* 7FCAC 8008F4AC 35004014 */  bnez       $v0, .L8008F584
/* 7FCB0 8008F4B0 00000000 */   nop
/* 7FCB4 8008F4B4 3C00A88F */  lw         $t0, 0x3c($sp)
/* 7FCB8 8008F4B8 CC0A438E */  lw         $v1, 0xacc($s2)
/* 7FCBC 8008F4BC 00130800 */  sll        $v0, $t0, 0xc
/* 7FCC0 8008F4C0 23206200 */  subu       $a0, $v1, $v0
/* 7FCC4 8008F4C4 1E008104 */  bgez       $a0, .L8008F540
/* 7FCC8 8008F4C8 CC0A44AE */   sw        $a0, 0xacc($s2)
/* 7FCCC 8008F4CC 0400438E */  lw         $v1, 4($s2)
/* 7FCD0 8008F4D0 23100400 */  negu       $v0, $a0
/* 7FCD4 8008F4D4 001B0300 */  sll        $v1, $v1, 0xc
/* 7FCD8 8008F4D8 1A004300 */  div        $zero, $v0, $v1
/* 7FCDC 8008F4DC 02006014 */  bnez       $v1, .L8008F4E8
/* 7FCE0 8008F4E0 00000000 */   nop
/* 7FCE4 8008F4E4 0D000700 */  break      7
.L8008F4E8:
/* 7FCE8 8008F4E8 FFFF0124 */   addiu     $at, $zero, -1
/* 7FCEC 8008F4EC 04006114 */  bne        $v1, $at, .L8008F500
/* 7FCF0 8008F4F0 0080013C */   lui       $at, 0x8000
/* 7FCF4 8008F4F4 02004114 */  bne        $v0, $at, .L8008F500
/* 7FCF8 8008F4F8 00000000 */   nop
/* 7FCFC 8008F4FC 0D000600 */  break      6
.L8008F500:
/* 7FD00 8008F500 10200000 */   mfhi      $a0
/* 7FD04 8008F504 00000000 */  nop
/* 7FD08 8008F508 23206400 */  subu       $a0, $v1, $a0
/* 7FD0C 8008F50C 1A008300 */  div        $zero, $a0, $v1
/* 7FD10 8008F510 02006014 */  bnez       $v1, .L8008F51C
/* 7FD14 8008F514 00000000 */   nop
/* 7FD18 8008F518 0D000700 */  break      7
.L8008F51C:
/* 7FD1C 8008F51C FFFF0124 */   addiu     $at, $zero, -1
/* 7FD20 8008F520 04006114 */  bne        $v1, $at, .L8008F534
/* 7FD24 8008F524 0080013C */   lui       $at, 0x8000
/* 7FD28 8008F528 02008114 */  bne        $a0, $at, .L8008F534
/* 7FD2C 8008F52C 00000000 */   nop
/* 7FD30 8008F530 0D000600 */  break      6
.L8008F534:
/* 7FD34 8008F534 10100000 */   mfhi      $v0
/* 7FD38 8008F538 603D0208 */  j          .L8008F580
/* 7FD3C 8008F53C 03130200 */   sra       $v0, $v0, 0xc
.L8008F540:
/* 7FD40 8008F540 0400428E */  lw         $v0, 4($s2)
/* 7FD44 8008F544 00000000 */  nop
/* 7FD48 8008F548 00130200 */  sll        $v0, $v0, 0xc
/* 7FD4C 8008F54C 1A008200 */  div        $zero, $a0, $v0
/* 7FD50 8008F550 02004014 */  bnez       $v0, .L8008F55C
/* 7FD54 8008F554 00000000 */   nop
/* 7FD58 8008F558 0D000700 */  break      7
.L8008F55C:
/* 7FD5C 8008F55C FFFF0124 */   addiu     $at, $zero, -1
/* 7FD60 8008F560 04004114 */  bne        $v0, $at, .L8008F574
/* 7FD64 8008F564 0080013C */   lui       $at, 0x8000
/* 7FD68 8008F568 02008114 */  bne        $a0, $at, .L8008F574
/* 7FD6C 8008F56C 00000000 */   nop
/* 7FD70 8008F570 0D000600 */  break      6
.L8008F574:
/* 7FD74 8008F574 10180000 */   mfhi      $v1
/* 7FD78 8008F578 00000000 */  nop
/* 7FD7C 8008F57C 03130300 */  sra        $v0, $v1, 0xc
.L8008F580:
/* 7FD80 8008F580 000042AE */  sw         $v0, ($s2)
.L8008F584:
/* 7FD84 8008F584 AC484392 */  lbu        $v1, 0x48ac($s2)
/* 7FD88 8008F588 01000224 */  addiu      $v0, $zero, 1
/* 7FD8C 8008F58C 3A006214 */  bne        $v1, $v0, .L8008F678
/* 7FD90 8008F590 00000000 */   nop
/* 7FD94 8008F594 0000428E */  lw         $v0, ($s2)
/* 7FD98 8008F598 00000000 */  nop
/* 7FD9C 8008F59C 40100200 */  sll        $v0, $v0, 1
/* 7FDA0 8008F5A0 21104202 */  addu       $v0, $s2, $v0
/* 7FDA4 8008F5A4 18004484 */  lh         $a0, 0x18($v0)
/* 7FDA8 8008F5A8 DC48428E */  lw         $v0, 0x48dc($s2)
/* 7FDAC 8008F5AC 00000000 */  nop
/* 7FDB0 8008F5B0 83004410 */  beq        $v0, $a0, .L8008F7C0
/* 7FDB4 8008F5B4 00000000 */   nop
/* 7FDB8 8008F5B8 B0484396 */  lhu        $v1, 0x48b0($s2)
/* 7FDBC 8008F5BC 00000000 */  nop
/* 7FDC0 8008F5C0 F0FF6224 */  addiu      $v0, $v1, -0x10
/* 7FDC4 8008F5C4 1000422C */  sltiu      $v0, $v0, 0x10
/* 7FDC8 8008F5C8 0B004010 */  beqz       $v0, .L8008F5F8
/* 7FDCC 8008F5CC DC4844AE */   sw        $a0, 0x48dc($s2)
/* 7FDD0 8008F5D0 00140300 */  sll        $v0, $v1, 0x10
/* 7FDD4 8008F5D4 03240200 */  sra        $a0, $v0, 0x10
/* 7FDD8 8008F5D8 10008228 */  slti       $v0, $a0, 0x10
/* 7FDDC 8008F5DC 11004014 */  bnez       $v0, .L8008F624
/* 7FDE0 8008F5E0 21106000 */   addu      $v0, $v1, $zero
/* 7FDE4 8008F5E4 20008228 */  slti       $v0, $a0, 0x20
/* 7FDE8 8008F5E8 0B004014 */  bnez       $v0, .L8008F618
/* 7FDEC 8008F5EC 20000224 */   addiu     $v0, $zero, 0x20
/* 7FDF0 8008F5F0 893D0208 */  j          .L8008F624
/* 7FDF4 8008F5F4 21100000 */   addu      $v0, $zero, $zero
.L8008F5F8:
/* 7FDF8 8008F5F8 00140300 */  sll        $v0, $v1, 0x10
/* 7FDFC 8008F5FC 03240200 */  sra        $a0, $v0, 0x10
/* 7FE00 8008F600 10008228 */  slti       $v0, $a0, 0x10
/* 7FE04 8008F604 07004014 */  bnez       $v0, .L8008F624
/* 7FE08 8008F608 21106000 */   addu      $v0, $v1, $zero
/* 7FE0C 8008F60C 20008228 */  slti       $v0, $a0, 0x20
/* 7FE10 8008F610 03004010 */  beqz       $v0, .L8008F620
/* 7FE14 8008F614 20000224 */   addiu     $v0, $zero, 0x20
.L8008F618:
/* 7FE18 8008F618 893D0208 */  j          .L8008F624
/* 7FE1C 8008F61C 23104300 */   subu      $v0, $v0, $v1
.L8008F620:
/* 7FE20 8008F620 21100000 */  addu       $v0, $zero, $zero
.L8008F624:
/* 7FE24 8008F624 B04842A6 */  sh         $v0, 0x48b0($s2)
/* 7FE28 8008F628 B0484286 */  lh         $v0, 0x48b0($s2)
/* 7FE2C 8008F62C 00000000 */  nop
/* 7FE30 8008F630 10004228 */  slti       $v0, $v0, 0x10
/* 7FE34 8008F634 04004010 */  beqz       $v0, .L8008F648
/* 7FE38 8008F638 10000224 */   addiu     $v0, $zero, 0x10
/* 7FE3C 8008F63C B24842A6 */  sh         $v0, 0x48b2($s2)
/* 7FE40 8008F640 F03D0208 */  j          .L8008F7C0
/* 7FE44 8008F644 B44840A6 */   sh        $zero, 0x48b4($s2)
.L8008F648:
/* 7FE48 8008F648 DC48448E */  lw         $a0, 0x48dc($s2)
/* 7FE4C 8008F64C 20000224 */  addiu      $v0, $zero, 0x20
/* 7FE50 8008F650 B24842A6 */  sh         $v0, 0x48b2($s2)
/* 7FE54 8008F654 D04840AE */  sw         $zero, 0x48d0($s2)
/* 7FE58 8008F658 21188000 */  addu       $v1, $a0, $zero
/* 7FE5C 8008F65C E389020C */  jal        FUN_800a278c
/* 7FE60 8008F660 D84843AE */   sw        $v1, 0x48d8($s2)
/* 7FE64 8008F664 FFFF4224 */  addiu      $v0, $v0, -1
/* 7FE68 8008F668 D44842AE */  sw         $v0, 0x48d4($s2)
/* 7FE6C 8008F66C 01000224 */  addiu      $v0, $zero, 1
/* 7FE70 8008F670 F03D0208 */  j          .L8008F7C0
/* 7FE74 8008F674 B44842A6 */   sh        $v0, 0x48b4($s2)
.L8008F678:
/* 7FE78 8008F678 9C0B4282 */  lb         $v0, 0xb9c($s2)
/* 7FE7C 8008F67C 00000000 */  nop
/* 7FE80 8008F680 4F004014 */  bnez       $v0, .L8008F7C0
/* 7FE84 8008F684 0F80103C */   lui       $s0, 0x800f
/* 7FE88 8008F688 0000428E */  lw         $v0, ($s2)
/* 7FE8C 8008F68C 00000000 */  nop
/* 7FE90 8008F690 40100200 */  sll        $v0, $v0, 1
/* 7FE94 8008F694 21104202 */  addu       $v0, $s2, $v0
/* 7FE98 8008F698 18004294 */  lhu        $v0, 0x18($v0)
/* 7FE9C 8008F69C 28001026 */  addiu      $s0, $s0, 0x28
/* 7FEA0 8008F6A0 00240200 */  sll        $a0, $v0, 0x10
/* 7FEA4 8008F6A4 03240400 */  sra        $a0, $a0, 0x10
/* 7FEA8 8008F6A8 1BA2020C */  jal        FUN_800a886c
/* 7FEAC 8008F6AC 1E0002A6 */   sh        $v0, 0x1e($s0)
/* 7FEB0 8008F6B0 21204000 */  addu       $a0, $v0, $zero
/* 7FEB4 8008F6B4 8A000592 */  lbu        $a1, 0x8a($s0)
/* 7FEB8 8008F6B8 07000224 */  addiu      $v0, $zero, 7
/* 7FEBC 8008F6BC 0700A210 */  beq        $a1, $v0, .L8008F6DC
/* 7FEC0 8008F6C0 040004AE */   sw        $a0, 4($s0)
/* 7FEC4 8008F6C4 0500A010 */  beqz       $a1, .L8008F6DC
/* 7FEC8 8008F6C8 0200A538 */   xori      $a1, $a1, 2
/* 7FECC 8008F6CC E4484692 */  lbu        $a2, 0x48e4($s2)
/* 7FED0 8008F6D0 8BFA010C */  jal        FUN_8007ea2c
/* 7FED4 8008F6D4 0100A52C */   sltiu     $a1, $a1, 1
/* 7FED8 8008F6D8 E64842A2 */  sb         $v0, 0x48e6($s2)
.L8008F6DC:
/* 7FEDC 8008F6DC 0F80023C */  lui        $v0, %hi(D_800F0028)
/* 7FEE0 8008F6E0 28004324 */  addiu      $v1, $v0, %lo(D_800F0028)
/* 7FEE4 8008F6E4 0100023C */  lui        $v0, 1
/* 7FEE8 8008F6E8 21106200 */  addu       $v0, $v1, $v0
/* 7FEEC 8008F6EC 06434590 */  lbu        $a1, 0x4306($v0)
/* 7FEF0 8008F6F0 07000224 */  addiu      $v0, $zero, 7
/* 7FEF4 8008F6F4 0900A210 */  beq        $a1, $v0, .L8008F71C
/* 7FEF8 8008F6F8 0F80023C */   lui       $v0, 0x800f
/* 7FEFC 8008F6FC 0700A010 */  beqz       $a1, .L8008F71C
/* 7FF00 8008F700 0200A538 */   xori      $a1, $a1, 2
/* 7FF04 8008F704 0400648C */  lw         $a0, 4($v1)
/* 7FF08 8008F708 E5484692 */  lbu        $a2, 0x48e5($s2)
/* 7FF0C 8008F70C 8BFA010C */  jal        FUN_8007ea2c
/* 7FF10 8008F710 0100A52C */   sltiu     $a1, $a1, 1
/* 7FF14 8008F714 E74842A2 */  sb         $v0, 0x48e7($s2)
/* 7FF18 8008F718 0F80023C */  lui        $v0, %hi(D_800F0028)
.L8008F71C:
/* 7FF1C 8008F71C 28004424 */  addiu      $a0, $v0, %lo(D_800F0028)
/* 7FF20 8008F720 8A008390 */  lbu        $v1, 0x8a($a0)
/* 7FF24 8008F724 02000524 */  addiu      $a1, $zero, 2
/* 7FF28 8008F728 06006510 */  beq        $v1, $a1, .L8008F744
/* 7FF2C 8008F72C 0100023C */   lui       $v0, 1
/* 7FF30 8008F730 21108200 */  addu       $v0, $a0, $v0
/* 7FF34 8008F734 06434290 */  lbu        $v0, 0x4306($v0)
/* 7FF38 8008F738 00000000 */  nop
/* 7FF3C 8008F73C 0C004514 */  bne        $v0, $a1, .L8008F770
/* 7FF40 8008F740 00000000 */   nop
.L8008F744:
/* 7FF44 8008F744 07000224 */  addiu      $v0, $zero, 7
/* 7FF48 8008F748 03006210 */  beq        $v1, $v0, .L8008F758
/* 7FF4C 8008F74C 00000000 */   nop
/* 7FF50 8008F750 04006014 */  bnez       $v1, .L8008F764
/* 7FF54 8008F754 00000000 */   nop
.L8008F758:
/* 7FF58 8008F758 E7484292 */  lbu        $v0, 0x48e7($s2)
/* 7FF5C 8008F75C DC3D0208 */  j          .L8008F770
/* 7FF60 8008F760 E64842A2 */   sb        $v0, 0x48e6($s2)
.L8008F764:
/* 7FF64 8008F764 E6484292 */  lbu        $v0, 0x48e6($s2)
/* 7FF68 8008F768 00000000 */  nop
/* 7FF6C 8008F76C E74842A2 */  sb         $v0, 0x48e7($s2)
.L8008F770:
/* 7FF70 8008F770 0000428E */  lw         $v0, ($s2)
/* 7FF74 8008F774 00000000 */  nop
/* 7FF78 8008F778 40100200 */  sll        $v0, $v0, 1
/* 7FF7C 8008F77C 21104202 */  addu       $v0, $s2, $v0
/* 7FF80 8008F780 18004284 */  lh         $v0, 0x18($v0)
/* 7FF84 8008F784 00000000 */  nop
/* 7FF88 8008F788 FB004228 */  slti       $v0, $v0, 0xfb
/* 7FF8C 8008F78C 0B004010 */  beqz       $v0, .L8008F7BC
/* 7FF90 8008F790 01000324 */   addiu     $v1, $zero, 1
/* 7FF94 8008F794 6047428E */  lw         $v0, 0x4760($s2)
/* 7FF98 8008F798 00000000 */  nop
/* 7FF9C 8008F79C 07004310 */  beq        $v0, $v1, .L8008F7BC
/* 7FFA0 8008F7A0 00000000 */   nop
/* 7FFA4 8008F7A4 AC484292 */  lbu        $v0, 0x48ac($s2)
/* 7FFA8 8008F7A8 00000000 */  nop
/* 7FFAC 8008F7AC 03004310 */  beq        $v0, $v1, .L8008F7BC
/* 7FFB0 8008F7B0 00000000 */   nop
/* 7FFB4 8008F7B4 EDC1020C */  jal        FUN_800b07b4
/* 7FFB8 8008F7B8 00000000 */   nop
.L8008F7BC:
/* 7FFBC 8008F7BC 160040A6 */  sh         $zero, 0x16($s2)
.L8008F7C0:
/* 7FFC0 8008F7C0 12CB020C */  jal        FUN_800b2c48
/* 7FFC4 8008F7C4 10000424 */   addiu     $a0, $zero, 0x10
/* 7FFC8 8008F7C8 113E0208 */  j          .L8008F844
/* 7FFCC 8008F7CC 00000000 */   nop
.L8008F7D0:
/* 7FFD0 8008F7D0 AC484392 */  lbu        $v1, 0x48ac($s2)
/* 7FFD4 8008F7D4 00000000 */  nop
/* 7FFD8 8008F7D8 1A006210 */  beq        $v1, $v0, .L8008F844
/* 7FFDC 8008F7DC 00000000 */   nop
/* 7FFE0 8008F7E0 16004286 */  lh         $v0, 0x16($s2)
/* 7FFE4 8008F7E4 00000000 */  nop
/* 7FFE8 8008F7E8 1200401C */  bgtz       $v0, .L8008F834
/* 7FFEC 8008F7EC 0F80023C */   lui       $v0, %hi(D_800F0028)
/* 7FFF0 8008F7F0 28005024 */  addiu      $s0, $v0, %lo(D_800F0028)
/* 7FFF4 8008F7F4 0400028E */  lw         $v0, 4($s0)
/* 7FFF8 8008F7F8 00000000 */  nop
/* 7FFFC 8008F7FC 0E004494 */  lhu        $a0, 0xe($v0)
/* 80000 8008F800 C40A428E */  lw         $v0, 0xac4($s2)
/* 80004 8008F804 00000000 */  nop
/* 80008 8008F808 0A004410 */  beq        $v0, $a0, .L8008F834
/* 8000C 8008F80C 00000000 */   nop
/* 80010 8008F810 06C2020C */  jal        FUN_800b0818
/* 80014 8008F814 00000000 */   nop
/* 80018 8008F818 0400028E */  lw         $v0, 4($s0)
/* 8001C 8008F81C 00000000 */  nop
/* 80020 8008F820 0E004394 */  lhu        $v1, 0xe($v0)
/* 80024 8008F824 18000224 */  addiu      $v0, $zero, 0x18
/* 80028 8008F828 160042A6 */  sh         $v0, 0x16($s2)
/* 8002C 8008F82C 113E0208 */  j          .L8008F844
/* 80030 8008F830 C40A43AE */   sw        $v1, 0xac4($s2)
.L8008F834:
/* 80034 8008F834 16004296 */  lhu        $v0, 0x16($s2)
/* 80038 8008F838 00000000 */  nop
/* 8003C 8008F83C FFFF4224 */  addiu      $v0, $v0, -1
/* 80040 8008F840 160042A6 */  sh         $v0, 0x16($s2)
.L8008F844:
/* 80044 8008F844 9C0B4282 */  lb         $v0, 0xb9c($s2)
/* 80048 8008F848 00000000 */  nop
/* 8004C 8008F84C 24004014 */  bnez       $v0, .L8008F8E0
/* 80050 8008F850 00000000 */   nop
/* 80054 8008F854 383E0208 */  j          .L8008F8E0
/* 80058 8008F858 004740AE */   sw        $zero, 0x4700($s2)
.L8008F85C:
/* 8005C 8008F85C AC484392 */  lbu        $v1, 0x48ac($s2)
/* 80060 8008F860 00000000 */  nop
/* 80064 8008F864 0D006214 */  bne        $v1, $v0, .L8008F89C
/* 80068 8008F868 0F80023C */   lui       $v0, 0x800f
/* 8006C 8008F86C FFFF0224 */  addiu      $v0, $zero, -1
/* 80070 8008F870 0047448E */  lw         $a0, 0x4700($s2)
/* 80074 8008F874 DC48458E */  lw         $a1, 0x48dc($s2)
/* 80078 8008F878 16008214 */  bne        $a0, $v0, .L8008F8D4
/* 8007C 8008F87C 01000624 */   addiu     $a2, $zero, 1
/* 80080 8008F880 D00A438E */  lw         $v1, 0xad0($s2)
/* 80084 8008F884 CC0A428E */  lw         $v0, 0xacc($s2)
/* 80088 8008F888 00000000 */  nop
/* 8008C 8008F88C 11006210 */  beq        $v1, $v0, .L8008F8D4
/* 80090 8008F890 00000000 */   nop
/* 80094 8008F894 383E0208 */  j          .L8008F8E0
/* 80098 8008F898 00000000 */   nop
.L8008F89C:
/* 8009C 8008F89C 46004584 */  lh         $a1, 0x46($v0)
/* 800A0 8008F8A0 00000000 */  nop
/* 800A4 8008F8A4 FA00A228 */  slti       $v0, $a1, 0xfa
/* 800A8 8008F8A8 0D004010 */  beqz       $v0, .L8008F8E0
/* 800AC 8008F8AC FFFF0224 */   addiu     $v0, $zero, -1
/* 800B0 8008F8B0 0047448E */  lw         $a0, 0x4700($s2)
/* 800B4 8008F8B4 00000000 */  nop
/* 800B8 8008F8B8 06008214 */  bne        $a0, $v0, .L8008F8D4
/* 800BC 8008F8BC 21300000 */   addu      $a2, $zero, $zero
/* 800C0 8008F8C0 D00A438E */  lw         $v1, 0xad0($s2)
/* 800C4 8008F8C4 CC0A428E */  lw         $v0, 0xacc($s2)
/* 800C8 8008F8C8 00000000 */  nop
/* 800CC 8008F8CC 04006214 */  bne        $v1, $v0, .L8008F8E0
/* 800D0 8008F8D0 00000000 */   nop
.L8008F8D4:
/* 800D4 8008F8D4 1654020C */  jal        FUN_80095058
/* 800D8 8008F8D8 00000000 */   nop
/* 800DC 8008F8DC 004742AE */  sw         $v0, 0x4700($s2)
.L8008F8E0:
/* 800E0 8008F8E0 14004286 */  lh         $v0, 0x14($s2)
/* 800E4 8008F8E4 00000000 */  nop
/* 800E8 8008F8E8 88004010 */  beqz       $v0, .L8008FB0C
/* 800EC 8008F8EC 00000000 */   nop
/* 800F0 8008F8F0 9C0B4282 */  lb         $v0, 0xb9c($s2)
/* 800F4 8008F8F4 00000000 */  nop
/* 800F8 8008F8F8 02004010 */  beqz       $v0, .L8008F904
/* 800FC 8008F8FC 00000000 */   nop
/* 80100 8008F900 140040A6 */  sh         $zero, 0x14($s2)
.L8008F904:
/* 80104 8008F904 14004286 */  lh         $v0, 0x14($s2)
/* 80108 8008F908 00000000 */  nop
/* 8010C 8008F90C 7F004010 */  beqz       $v0, .L8008FB0C
/* 80110 8008F910 00000000 */   nop
/* 80114 8008F914 C80A448E */  lw         $a0, 0xac8($s2)
/* 80118 8008F918 00000000 */  nop
/* 8011C 8008F91C 1E008104 */  bgez       $a0, .L8008F998
/* 80120 8008F920 23100400 */   negu      $v0, $a0
/* 80124 8008F924 0400438E */  lw         $v1, 4($s2)
/* 80128 8008F928 00000000 */  nop
/* 8012C 8008F92C 001B0300 */  sll        $v1, $v1, 0xc
/* 80130 8008F930 1A004300 */  div        $zero, $v0, $v1
/* 80134 8008F934 02006014 */  bnez       $v1, .L8008F940
/* 80138 8008F938 00000000 */   nop
/* 8013C 8008F93C 0D000700 */  break      7
.L8008F940:
/* 80140 8008F940 FFFF0124 */   addiu     $at, $zero, -1
/* 80144 8008F944 04006114 */  bne        $v1, $at, .L8008F958
/* 80148 8008F948 0080013C */   lui       $at, 0x8000
/* 8014C 8008F94C 02004114 */  bne        $v0, $at, .L8008F958
/* 80150 8008F950 00000000 */   nop
/* 80154 8008F954 0D000600 */  break      6
.L8008F958:
/* 80158 8008F958 10200000 */   mfhi      $a0
/* 8015C 8008F95C 00000000 */  nop
/* 80160 8008F960 23206400 */  subu       $a0, $v1, $a0
/* 80164 8008F964 1A008300 */  div        $zero, $a0, $v1
/* 80168 8008F968 02006014 */  bnez       $v1, .L8008F974
/* 8016C 8008F96C 00000000 */   nop
/* 80170 8008F970 0D000700 */  break      7
.L8008F974:
/* 80174 8008F974 FFFF0124 */   addiu     $at, $zero, -1
/* 80178 8008F978 04006114 */  bne        $v1, $at, .L8008F98C
/* 8017C 8008F97C 0080013C */   lui       $at, 0x8000
/* 80180 8008F980 02008114 */  bne        $a0, $at, .L8008F98C
/* 80184 8008F984 00000000 */   nop
/* 80188 8008F988 0D000600 */  break      6
.L8008F98C:
/* 8018C 8008F98C 10100000 */   mfhi      $v0
/* 80190 8008F990 763E0208 */  j          .L8008F9D8
/* 80194 8008F994 032B0200 */   sra       $a1, $v0, 0xc
.L8008F998:
/* 80198 8008F998 0400428E */  lw         $v0, 4($s2)
/* 8019C 8008F99C 00000000 */  nop
/* 801A0 8008F9A0 00130200 */  sll        $v0, $v0, 0xc
/* 801A4 8008F9A4 1A008200 */  div        $zero, $a0, $v0
/* 801A8 8008F9A8 02004014 */  bnez       $v0, .L8008F9B4
/* 801AC 8008F9AC 00000000 */   nop
/* 801B0 8008F9B0 0D000700 */  break      7
.L8008F9B4:
/* 801B4 8008F9B4 FFFF0124 */   addiu     $at, $zero, -1
/* 801B8 8008F9B8 04004114 */  bne        $v0, $at, .L8008F9CC
/* 801BC 8008F9BC 0080013C */   lui       $at, 0x8000
/* 801C0 8008F9C0 02008114 */  bne        $a0, $at, .L8008F9CC
/* 801C4 8008F9C4 00000000 */   nop
/* 801C8 8008F9C8 0D000600 */  break      6
.L8008F9CC:
/* 801CC 8008F9CC 10180000 */   mfhi      $v1
/* 801D0 8008F9D0 00000000 */  nop
/* 801D4 8008F9D4 032B0300 */  sra        $a1, $v1, 0xc
.L8008F9D8:
/* 801D8 8008F9D8 CC0A448E */  lw         $a0, 0xacc($s2)
/* 801DC 8008F9DC 00000000 */  nop
/* 801E0 8008F9E0 1E008104 */  bgez       $a0, .L8008FA5C
/* 801E4 8008F9E4 23100400 */   negu      $v0, $a0
/* 801E8 8008F9E8 0400438E */  lw         $v1, 4($s2)
/* 801EC 8008F9EC 00000000 */  nop
/* 801F0 8008F9F0 001B0300 */  sll        $v1, $v1, 0xc
/* 801F4 8008F9F4 1A004300 */  div        $zero, $v0, $v1
/* 801F8 8008F9F8 02006014 */  bnez       $v1, .L8008FA04
/* 801FC 8008F9FC 00000000 */   nop
/* 80200 8008FA00 0D000700 */  break      7
.L8008FA04:
/* 80204 8008FA04 FFFF0124 */   addiu     $at, $zero, -1
/* 80208 8008FA08 04006114 */  bne        $v1, $at, .L8008FA1C
/* 8020C 8008FA0C 0080013C */   lui       $at, 0x8000
/* 80210 8008FA10 02004114 */  bne        $v0, $at, .L8008FA1C
/* 80214 8008FA14 00000000 */   nop
/* 80218 8008FA18 0D000600 */  break      6
.L8008FA1C:
/* 8021C 8008FA1C 10200000 */   mfhi      $a0
/* 80220 8008FA20 00000000 */  nop
/* 80224 8008FA24 23206400 */  subu       $a0, $v1, $a0
/* 80228 8008FA28 1A008300 */  div        $zero, $a0, $v1
/* 8022C 8008FA2C 02006014 */  bnez       $v1, .L8008FA38
/* 80230 8008FA30 00000000 */   nop
/* 80234 8008FA34 0D000700 */  break      7
.L8008FA38:
/* 80238 8008FA38 FFFF0124 */   addiu     $at, $zero, -1
/* 8023C 8008FA3C 04006114 */  bne        $v1, $at, .L8008FA50
/* 80240 8008FA40 0080013C */   lui       $at, 0x8000
/* 80244 8008FA44 02008114 */  bne        $a0, $at, .L8008FA50
/* 80248 8008FA48 00000000 */   nop
/* 8024C 8008FA4C 0D000600 */  break      6
.L8008FA50:
/* 80250 8008FA50 10100000 */   mfhi      $v0
/* 80254 8008FA54 A73E0208 */  j          .L8008FA9C
/* 80258 8008FA58 03830200 */   sra       $s0, $v0, 0xc
.L8008FA5C:
/* 8025C 8008FA5C 0400428E */  lw         $v0, 4($s2)
/* 80260 8008FA60 00000000 */  nop
/* 80264 8008FA64 00130200 */  sll        $v0, $v0, 0xc
/* 80268 8008FA68 1A008200 */  div        $zero, $a0, $v0
/* 8026C 8008FA6C 02004014 */  bnez       $v0, .L8008FA78
/* 80270 8008FA70 00000000 */   nop
/* 80274 8008FA74 0D000700 */  break      7
.L8008FA78:
/* 80278 8008FA78 FFFF0124 */   addiu     $at, $zero, -1
/* 8027C 8008FA7C 04004114 */  bne        $v0, $at, .L8008FA90
/* 80280 8008FA80 0080013C */   lui       $at, 0x8000
/* 80284 8008FA84 02008114 */  bne        $a0, $at, .L8008FA90
/* 80288 8008FA88 00000000 */   nop
/* 8028C 8008FA8C 0D000600 */  break      6
.L8008FA90:
/* 80290 8008FA90 10180000 */   mfhi      $v1
/* 80294 8008FA94 00000000 */  nop
/* 80298 8008FA98 03830300 */  sra        $s0, $v1, 0xc
.L8008FA9C:
/* 8029C 8008FA9C 40100500 */  sll        $v0, $a1, 1
/* 802A0 8008FAA0 21184202 */  addu       $v1, $s2, $v0
/* 802A4 8008FAA4 18006284 */  lh         $v0, 0x18($v1)
/* 802A8 8008FAA8 00000000 */  nop
/* 802AC 8008FAAC FB004228 */  slti       $v0, $v0, 0xfb
/* 802B0 8008FAB0 0E004010 */  beqz       $v0, .L8008FAEC
/* 802B4 8008FAB4 40101000 */   sll       $v0, $s0, 1
/* 802B8 8008FAB8 21104202 */  addu       $v0, $s2, $v0
/* 802BC 8008FABC 18004284 */  lh         $v0, 0x18($v0)
/* 802C0 8008FAC0 00000000 */  nop
/* 802C4 8008FAC4 FB004228 */  slti       $v0, $v0, 0xfb
/* 802C8 8008FAC8 10004014 */  bnez       $v0, .L8008FB0C
/* 802CC 8008FACC 00000000 */   nop
/* 802D0 8008FAD0 140040A6 */  sh         $zero, 0x14($s2)
/* 802D4 8008FAD4 18006484 */  lh         $a0, 0x18($v1)
/* 802D8 8008FAD8 1BA2020C */  jal        FUN_800a886c
/* 802DC 8008FADC 00000000 */   nop
/* 802E0 8008FAE0 0E004294 */  lhu        $v0, 0xe($v0)
/* 802E4 8008FAE4 00000000 */  nop
/* 802E8 8008FAE8 C40A42AE */  sw         $v0, 0xac4($s2)
.L8008FAEC:
/* 802EC 8008FAEC 40101000 */  sll        $v0, $s0, 1
/* 802F0 8008FAF0 21104202 */  addu       $v0, $s2, $v0
/* 802F4 8008FAF4 18004284 */  lh         $v0, 0x18($v0)
/* 802F8 8008FAF8 00000000 */  nop
/* 802FC 8008FAFC FB004228 */  slti       $v0, $v0, 0xfb
/* 80300 8008FB00 02004014 */  bnez       $v0, .L8008FB0C
/* 80304 8008FB04 00000000 */   nop
/* 80308 8008FB08 140040A6 */  sh         $zero, 0x14($s2)
.L8008FB0C:
/* 8030C 8008FB0C 0000428E */  lw         $v0, ($s2)
/* 80310 8008FB10 00000000 */  nop
/* 80314 8008FB14 40100200 */  sll        $v0, $v0, 1
/* 80318 8008FB18 21104202 */  addu       $v0, $s2, $v0
/* 8031C 8008FB1C 18004284 */  lh         $v0, 0x18($v0)
/* 80320 8008FB20 00000000 */  nop
/* 80324 8008FB24 FB004228 */  slti       $v0, $v0, 0xfb
/* 80328 8008FB28 40004014 */  bnez       $v0, .L8008FC2C
/* 8032C 8008FB2C FFFF0224 */   addiu     $v0, $zero, -1
/* 80330 8008FB30 C40A438E */  lw         $v1, 0xac4($s2)
/* 80334 8008FB34 00000000 */  nop
/* 80338 8008FB38 3C006214 */  bne        $v1, $v0, .L8008FC2C
/* 8033C 8008FB3C 00000000 */   nop
/* 80340 8008FB40 C80A448E */  lw         $a0, 0xac8($s2)
/* 80344 8008FB44 00000000 */  nop
/* 80348 8008FB48 20008104 */  bgez       $a0, .L8008FBCC
/* 8034C 8008FB4C 23100400 */   negu      $v0, $a0
/* 80350 8008FB50 0400438E */  lw         $v1, 4($s2)
/* 80354 8008FB54 00000000 */  nop
/* 80358 8008FB58 001B0300 */  sll        $v1, $v1, 0xc
/* 8035C 8008FB5C 1A004300 */  div        $zero, $v0, $v1
/* 80360 8008FB60 02006014 */  bnez       $v1, .L8008FB6C
/* 80364 8008FB64 00000000 */   nop
/* 80368 8008FB68 0D000700 */  break      7
.L8008FB6C:
/* 8036C 8008FB6C FFFF0124 */   addiu     $at, $zero, -1
/* 80370 8008FB70 04006114 */  bne        $v1, $at, .L8008FB84
/* 80374 8008FB74 0080013C */   lui       $at, 0x8000
/* 80378 8008FB78 02004114 */  bne        $v0, $at, .L8008FB84
/* 8037C 8008FB7C 00000000 */   nop
/* 80380 8008FB80 0D000600 */  break      6
.L8008FB84:
/* 80384 8008FB84 10200000 */   mfhi      $a0
/* 80388 8008FB88 00000000 */  nop
/* 8038C 8008FB8C 23206400 */  subu       $a0, $v1, $a0
/* 80390 8008FB90 1A008300 */  div        $zero, $a0, $v1
/* 80394 8008FB94 02006014 */  bnez       $v1, .L8008FBA0
/* 80398 8008FB98 00000000 */   nop
/* 8039C 8008FB9C 0D000700 */  break      7
.L8008FBA0:
/* 803A0 8008FBA0 FFFF0124 */   addiu     $at, $zero, -1
/* 803A4 8008FBA4 04006114 */  bne        $v1, $at, .L8008FBB8
/* 803A8 8008FBA8 0080013C */   lui       $at, 0x8000
/* 803AC 8008FBAC 02008114 */  bne        $a0, $at, .L8008FBB8
/* 803B0 8008FBB0 00000000 */   nop
/* 803B4 8008FBB4 0D000600 */  break      6
.L8008FBB8:
/* 803B8 8008FBB8 10100000 */   mfhi      $v0
/* 803BC 8008FBBC 00000000 */  nop
/* 803C0 8008FBC0 03130200 */  sra        $v0, $v0, 0xc
/* 803C4 8008FBC4 043F0208 */  j          .L8008FC10
/* 803C8 8008FBC8 40100200 */   sll       $v0, $v0, 1
.L8008FBCC:
/* 803CC 8008FBCC 0400428E */  lw         $v0, 4($s2)
/* 803D0 8008FBD0 00000000 */  nop
/* 803D4 8008FBD4 00130200 */  sll        $v0, $v0, 0xc
/* 803D8 8008FBD8 1A008200 */  div        $zero, $a0, $v0
/* 803DC 8008FBDC 02004014 */  bnez       $v0, .L8008FBE8
/* 803E0 8008FBE0 00000000 */   nop
/* 803E4 8008FBE4 0D000700 */  break      7
.L8008FBE8:
/* 803E8 8008FBE8 FFFF0124 */   addiu     $at, $zero, -1
/* 803EC 8008FBEC 04004114 */  bne        $v0, $at, .L8008FC00
/* 803F0 8008FBF0 0080013C */   lui       $at, 0x8000
/* 803F4 8008FBF4 02008114 */  bne        $a0, $at, .L8008FC00
/* 803F8 8008FBF8 00000000 */   nop
/* 803FC 8008FBFC 0D000600 */  break      6
.L8008FC00:
/* 80400 8008FC00 10180000 */   mfhi      $v1
/* 80404 8008FC04 00000000 */  nop
/* 80408 8008FC08 031B0300 */  sra        $v1, $v1, 0xc
/* 8040C 8008FC0C 40100300 */  sll        $v0, $v1, 1
.L8008FC10:
/* 80410 8008FC10 21104202 */  addu       $v0, $s2, $v0
/* 80414 8008FC14 18004484 */  lh         $a0, 0x18($v0)
/* 80418 8008FC18 1BA2020C */  jal        FUN_800a886c
/* 8041C 8008FC1C 00000000 */   nop
/* 80420 8008FC20 0E004294 */  lhu        $v0, 0xe($v0)
/* 80424 8008FC24 00000000 */  nop
/* 80428 8008FC28 C40A42AE */  sw         $v0, 0xac4($s2)
.L8008FC2C:
/* 8042C 8008FC2C 14004286 */  lh         $v0, 0x14($s2)
/* 80430 8008FC30 00000000 */  nop
/* 80434 8008FC34 05004014 */  bnez       $v0, .L8008FC4C
/* 80438 8008FC38 01000224 */   addiu     $v0, $zero, 1
/* 8043C 8008FC3C 6047438E */  lw         $v1, 0x4760($s2)
/* 80440 8008FC40 00000000 */  nop
/* 80444 8008FC44 05006214 */  bne        $v1, $v0, .L8008FC5C
/* 80448 8008FC48 00000000 */   nop
.L8008FC4C:
/* 8044C 8008FC4C 6047438E */  lw         $v1, 0x4760($s2)
/* 80450 8008FC50 01000224 */  addiu      $v0, $zero, 1
/* 80454 8008FC54 4A006214 */  bne        $v1, $v0, .L8008FD80
/* 80458 8008FC58 00000000 */   nop
.L8008FC5C:
/* 8045C 8008FC5C 9C0B4282 */  lb         $v0, 0xb9c($s2)
/* 80460 8008FC60 00000000 */  nop
/* 80464 8008FC64 2F004014 */  bnez       $v0, .L8008FD24
/* 80468 8008FC68 00000000 */   nop
/* 8046C 8008FC6C 0000428E */  lw         $v0, ($s2)
/* 80470 8008FC70 00000000 */  nop
/* 80474 8008FC74 40100200 */  sll        $v0, $v0, 1
/* 80478 8008FC78 21104202 */  addu       $v0, $s2, $v0
/* 8047C 8008FC7C 18004284 */  lh         $v0, 0x18($v0)
/* 80480 8008FC80 00000000 */  nop
/* 80484 8008FC84 FB004228 */  slti       $v0, $v0, 0xfb
/* 80488 8008FC88 26004010 */  beqz       $v0, .L8008FD24
/* 8048C 8008FC8C 01000224 */   addiu     $v0, $zero, 1
/* 80490 8008FC90 6047438E */  lw         $v1, 0x4760($s2)
/* 80494 8008FC94 00000000 */  nop
/* 80498 8008FC98 22006210 */  beq        $v1, $v0, .L8008FD24
/* 8049C 8008FC9C 0F80023C */   lui       $v0, %hi(D_800F0028)
/* 804A0 8008FCA0 28004424 */  addiu      $a0, $v0, %lo(D_800F0028)
/* 804A4 8008FCA4 1E008384 */  lh         $v1, 0x1e($a0)
/* 804A8 8008FCA8 00000000 */  nop
/* 804AC 8008FCAC F9006228 */  slti       $v0, $v1, 0xf9
/* 804B0 8008FCB0 08004014 */  bnez       $v0, .L8008FCD4
/* 804B4 8008FCB4 FA000224 */   addiu     $v0, $zero, 0xfa
/* 804B8 8008FCB8 09006214 */  bne        $v1, $v0, .L8008FCE0
/* 804BC 8008FCBC 21800000 */   addu      $s0, $zero, $zero
/* 804C0 8008FCC0 02000424 */  addiu      $a0, $zero, 2
/* 804C4 8008FCC4 3EA2020C */  jal        FUN_800a88f8
/* 804C8 8008FCC8 21280000 */   addu      $a1, $zero, $zero
/* 804CC 8008FCCC 363F0208 */  j          .L8008FCD8
/* 804D0 8008FCD0 00000000 */   nop
.L8008FCD4:
/* 804D4 8008FCD4 0400828C */  lw         $v0, 4($a0)
.L8008FCD8:
/* 804D8 8008FCD8 00000000 */  nop
/* 804DC 8008FCDC 0E005094 */  lhu        $s0, 0xe($v0)
.L8008FCE0:
/* 804E0 8008FCE0 D1C1020C */  jal        FUN_800b0744
/* 804E4 8008FCE4 00000000 */   nop
/* 804E8 8008FCE8 25005010 */  beq        $v0, $s0, .L8008FD80
/* 804EC 8008FCEC 00000000 */   nop
/* 804F0 8008FCF0 16004286 */  lh         $v0, 0x16($s2)
/* 804F4 8008FCF4 16004396 */  lhu        $v1, 0x16($s2)
/* 804F8 8008FCF8 2000401C */  bgtz       $v0, .L8008FD7C
/* 804FC 8008FCFC FFFF6224 */   addiu     $v0, $v1, -1
/* 80500 8008FD00 AC484392 */  lbu        $v1, 0x48ac($s2)
/* 80504 8008FD04 01000224 */  addiu      $v0, $zero, 1
/* 80508 8008FD08 04006210 */  beq        $v1, $v0, .L8008FD1C
/* 8050C 8008FD0C 18000224 */   addiu     $v0, $zero, 0x18
/* 80510 8008FD10 06C2020C */  jal        FUN_800b0818
/* 80514 8008FD14 21200002 */   addu      $a0, $s0, $zero
/* 80518 8008FD18 18000224 */  addiu      $v0, $zero, 0x18
.L8008FD1C:
/* 8051C 8008FD1C 5F3F0208 */  j          .L8008FD7C
/* 80520 8008FD20 C40A50AE */   sw        $s0, 0xac4($s2)
.L8008FD24:
/* 80524 8008FD24 C40A438E */  lw         $v1, 0xac4($s2)
/* 80528 8008FD28 FFFF0224 */  addiu      $v0, $zero, -1
/* 8052C 8008FD2C 14006210 */  beq        $v1, $v0, .L8008FD80
/* 80530 8008FD30 00000000 */   nop
/* 80534 8008FD34 D1C1020C */  jal        FUN_800b0744
/* 80538 8008FD38 00000000 */   nop
/* 8053C 8008FD3C C40A438E */  lw         $v1, 0xac4($s2)
/* 80540 8008FD40 00000000 */  nop
/* 80544 8008FD44 0E004310 */  beq        $v0, $v1, .L8008FD80
/* 80548 8008FD48 00000000 */   nop
/* 8054C 8008FD4C 16004286 */  lh         $v0, 0x16($s2)
/* 80550 8008FD50 16004396 */  lhu        $v1, 0x16($s2)
/* 80554 8008FD54 0900401C */  bgtz       $v0, .L8008FD7C
/* 80558 8008FD58 FFFF6224 */   addiu     $v0, $v1, -1
/* 8055C 8008FD5C AC484392 */  lbu        $v1, 0x48ac($s2)
/* 80560 8008FD60 01000224 */  addiu      $v0, $zero, 1
/* 80564 8008FD64 05006210 */  beq        $v1, $v0, .L8008FD7C
/* 80568 8008FD68 18000224 */   addiu     $v0, $zero, 0x18
/* 8056C 8008FD6C C40A4496 */  lhu        $a0, 0xac4($s2)
/* 80570 8008FD70 06C2020C */  jal        FUN_800b0818
/* 80574 8008FD74 00000000 */   nop
/* 80578 8008FD78 18000224 */  addiu      $v0, $zero, 0x18
.L8008FD7C:
/* 8057C 8008FD7C 160042A6 */  sh         $v0, 0x16($s2)
.L8008FD80:
/* 80580 8008FD80 3800A88F */  lw         $t0, 0x38($sp)
/* 80584 8008FD84 00000000 */  nop
/* 80588 8008FD88 1D010011 */  beqz       $t0, .L80090200
/* 8058C 8008FD8C 0F80023C */   lui       $v0, 0x800f
/* 80590 8008FD90 D00A478E */  lw         $a3, 0xad0($s2)
/* 80594 8008FD94 CC0A428E */  lw         $v0, 0xacc($s2)
/* 80598 8008FD98 00000000 */  nop
/* 8059C 8008FD9C 0500E210 */  beq        $a3, $v0, .L8008FDB4
/* 805A0 8008FDA0 01000224 */   addiu     $v0, $zero, 1
/* 805A4 8008FDA4 6047438E */  lw         $v1, 0x4760($s2)
/* 805A8 8008FDA8 00000000 */  nop
/* 805AC 8008FDAC 14016214 */  bne        $v1, $v0, .L80090200
/* 805B0 8008FDB0 0F80023C */   lui       $v0, 0x800f
.L8008FDB4:
/* 805B4 8008FDB4 0F80023C */  lui        $v0, %hi(D_800EFFA8)
/* 805B8 8008FDB8 A8FF4624 */  addiu      $a2, $v0, %lo(D_800EFFA8)
/* 805BC 8008FDBC 7400C28C */  lw         $v0, 0x74($a2)
/* 805C0 8008FDC0 D80A438E */  lw         $v1, 0xad8($s2)
/* 805C4 8008FDC4 00000000 */  nop
/* 805C8 8008FDC8 23104300 */  subu       $v0, $v0, $v1
/* 805CC 8008FDCC 45004228 */  slti       $v0, $v0, 0x45
/* 805D0 8008FDD0 0B014014 */  bnez       $v0, .L80090200
/* 805D4 8008FDD4 0F80023C */   lui       $v0, 0x800f
/* 805D8 8008FDD8 0000438E */  lw         $v1, ($s2)
/* 805DC 8008FDDC 0400458E */  lw         $a1, 4($s2)
/* 805E0 8008FDE0 01006224 */  addiu      $v0, $v1, 1
/* 805E4 8008FDE4 1A004500 */  div        $zero, $v0, $a1
/* 805E8 8008FDE8 0200A014 */  bnez       $a1, .L8008FDF4
/* 805EC 8008FDEC 00000000 */   nop
/* 805F0 8008FDF0 0D000700 */  break      7
.L8008FDF4:
/* 805F4 8008FDF4 FFFF0124 */   addiu     $at, $zero, -1
/* 805F8 8008FDF8 0400A114 */  bne        $a1, $at, .L8008FE0C
/* 805FC 8008FDFC 0080013C */   lui       $at, 0x8000
/* 80600 8008FE00 02004114 */  bne        $v0, $at, .L8008FE0C
/* 80604 8008FE04 00000000 */   nop
/* 80608 8008FE08 0D000600 */  break      6
.L8008FE0C:
/* 8060C 8008FE0C 10200000 */   mfhi      $a0
/* 80610 8008FE10 40180300 */  sll        $v1, $v1, 1
/* 80614 8008FE14 21184302 */  addu       $v1, $s2, $v1
/* 80618 8008FE18 18007084 */  lh         $s0, 0x18($v1)
/* 8061C 8008FE1C 9C0B4282 */  lb         $v0, 0xb9c($s2)
/* 80620 8008FE20 40200400 */  sll        $a0, $a0, 1
/* 80624 8008FE24 21204402 */  addu       $a0, $s2, $a0
/* 80628 8008FE28 18008484 */  lh         $a0, 0x18($a0)
/* 8062C 8008FE2C DC004014 */  bnez       $v0, .L800901A0
/* 80630 8008FE30 FB00022A */   slti      $v0, $s0, 0xfb
/* 80634 8008FE34 A8004014 */  bnez       $v0, .L800900D8
/* 80638 8008FE38 00000000 */   nop
/* 8063C 8008FE3C 0F00E104 */  bgez       $a3, .L8008FE7C
/* 80640 8008FE40 001B0500 */   sll       $v1, $a1, 0xc
/* 80644 8008FE44 C80A428E */  lw         $v0, 0xac8($s2)
/* 80648 8008FE48 00000000 */  nop
/* 8064C 8008FE4C 21104300 */  addu       $v0, $v0, $v1
/* 80650 8008FE50 C80A42AE */  sw         $v0, 0xac8($s2)
/* 80654 8008FE54 2110A000 */  addu       $v0, $a1, $zero
/* 80658 8008FE58 CC0A438E */  lw         $v1, 0xacc($s2)
/* 8065C 8008FE5C 00130200 */  sll        $v0, $v0, 0xc
/* 80660 8008FE60 21186200 */  addu       $v1, $v1, $v0
/* 80664 8008FE64 2110A000 */  addu       $v0, $a1, $zero
/* 80668 8008FE68 CC0A43AE */  sw         $v1, 0xacc($s2)
/* 8066C 8008FE6C D00A438E */  lw         $v1, 0xad0($s2)
/* 80670 8008FE70 00130200 */  sll        $v0, $v0, 0xc
/* 80674 8008FE74 21186200 */  addu       $v1, $v1, $v0
/* 80678 8008FE78 D00A43AE */  sw         $v1, 0xad0($s2)
.L8008FE7C:
/* 8067C 8008FE7C 0400438E */  lw         $v1, 4($s2)
/* 80680 8008FE80 D00A428E */  lw         $v0, 0xad0($s2)
/* 80684 8008FE84 001B0300 */  sll        $v1, $v1, 0xc
/* 80688 8008FE88 2A104300 */  slt        $v0, $v0, $v1
/* 8068C 8008FE8C 10004014 */  bnez       $v0, .L8008FED0
/* 80690 8008FE90 FB008228 */   slti      $v0, $a0, 0xfb
/* 80694 8008FE94 C80A428E */  lw         $v0, 0xac8($s2)
/* 80698 8008FE98 00000000 */  nop
/* 8069C 8008FE9C 23104300 */  subu       $v0, $v0, $v1
/* 806A0 8008FEA0 C80A42AE */  sw         $v0, 0xac8($s2)
/* 806A4 8008FEA4 0400428E */  lw         $v0, 4($s2)
/* 806A8 8008FEA8 CC0A438E */  lw         $v1, 0xacc($s2)
/* 806AC 8008FEAC 00130200 */  sll        $v0, $v0, 0xc
/* 806B0 8008FEB0 23186200 */  subu       $v1, $v1, $v0
/* 806B4 8008FEB4 0400428E */  lw         $v0, 4($s2)
/* 806B8 8008FEB8 CC0A43AE */  sw         $v1, 0xacc($s2)
/* 806BC 8008FEBC D00A438E */  lw         $v1, 0xad0($s2)
/* 806C0 8008FEC0 00130200 */  sll        $v0, $v0, 0xc
/* 806C4 8008FEC4 23186200 */  subu       $v1, $v1, $v0
/* 806C8 8008FEC8 D00A43AE */  sw         $v1, 0xad0($s2)
/* 806CC 8008FECC FB008228 */  slti       $v0, $a0, 0xfb
.L8008FED0:
/* 806D0 8008FED0 4F004014 */  bnez       $v0, .L80090010
/* 806D4 8008FED4 FFFF0224 */   addiu     $v0, $zero, -1
/* 806D8 8008FED8 C00A448E */  lw         $a0, 0xac0($s2)
/* 806DC 8008FEDC 00000000 */  nop
/* 806E0 8008FEE0 46008210 */  beq        $a0, $v0, .L8008FFFC
/* 806E4 8008FEE4 00000000 */   nop
/* 806E8 8008FEE8 CC0A438E */  lw         $v1, 0xacc($s2)
/* 806EC 8008FEEC D00A428E */  lw         $v0, 0xad0($s2)
/* 806F0 8008FEF0 00000000 */  nop
/* 806F4 8008FEF4 2B006214 */  bne        $v1, $v0, .L8008FFA4
/* 806F8 8008FEF8 21288000 */   addu      $a1, $a0, $zero
/* 806FC 8008FEFC 9C0B4282 */  lb         $v0, 0xb9c($s2)
/* 80700 8008FF00 00000000 */  nop
/* 80704 8008FF04 28004014 */  bnez       $v0, .L8008FFA8
/* 80708 8008FF08 00000000 */   nop
/* 8070C 8008FF0C 18004286 */  lh         $v0, 0x18($s2)
/* 80710 8008FF10 00000000 */  nop
/* 80714 8008FF14 07004510 */  beq        $v0, $a1, .L8008FF34
/* 80718 8008FF18 21200000 */   addu      $a0, $zero, $zero
/* 8071C 8008FF1C 21184002 */  addu       $v1, $s2, $zero
.L8008FF20:
/* 80720 8008FF20 02006324 */  addiu      $v1, $v1, 2
/* 80724 8008FF24 18006284 */  lh         $v0, 0x18($v1)
/* 80728 8008FF28 00000000 */  nop
/* 8072C 8008FF2C FCFF4514 */  bne        $v0, $a1, .L8008FF20
/* 80730 8008FF30 01008424 */   addiu     $a0, $a0, 1
.L8008FF34:
/* 80734 8008FF34 05FFA224 */  addiu      $v0, $a1, -0xfb
/* 80738 8008FF38 40100200 */  sll        $v0, $v0, 1
/* 8073C 8008FF3C 21104202 */  addu       $v0, $s2, $v0
/* 80740 8008FF40 440A4584 */  lh         $a1, 0xa44($v0)
/* 80744 8008FF44 0400428E */  lw         $v0, 4($s2)
/* 80748 8008FF48 01008324 */  addiu      $v1, $a0, 1
/* 8074C 8008FF4C 23104500 */  subu       $v0, $v0, $a1
/* 80750 8008FF50 2A106200 */  slt        $v0, $v1, $v0
/* 80754 8008FF54 0E004010 */  beqz       $v0, .L8008FF90
/* 80758 8008FF58 40100300 */   sll       $v0, $v1, 1
/* 8075C 8008FF5C 21205200 */  addu       $a0, $v0, $s2
.L8008FF60:
/* 80760 8008FF60 21106500 */  addu       $v0, $v1, $a1
/* 80764 8008FF64 40100200 */  sll        $v0, $v0, 1
/* 80768 8008FF68 21104202 */  addu       $v0, $s2, $v0
/* 8076C 8008FF6C 18004294 */  lhu        $v0, 0x18($v0)
/* 80770 8008FF70 01006324 */  addiu      $v1, $v1, 1
/* 80774 8008FF74 180082A4 */  sh         $v0, 0x18($a0)
/* 80778 8008FF78 0400428E */  lw         $v0, 4($s2)
/* 8077C 8008FF7C 00000000 */  nop
/* 80780 8008FF80 23104500 */  subu       $v0, $v0, $a1
/* 80784 8008FF84 2A106200 */  slt        $v0, $v1, $v0
/* 80788 8008FF88 F5FF4014 */  bnez       $v0, .L8008FF60
/* 8078C 8008FF8C 02008424 */   addiu     $a0, $a0, 2
.L8008FF90:
/* 80790 8008FF90 0400428E */  lw         $v0, 4($s2)
/* 80794 8008FF94 0D000424 */  addiu      $a0, $zero, 0xd
/* 80798 8008FF98 23104500 */  subu       $v0, $v0, $a1
/* 8079C 8008FF9C 12CB020C */  jal        FUN_800b2c48
/* 807A0 8008FFA0 040042AE */   sw        $v0, 4($s2)
.L8008FFA4:
/* 807A4 8008FFA4 9C0B4282 */  lb         $v0, 0xb9c($s2)
.L8008FFA8:
/* 807A8 8008FFA8 C00A438E */  lw         $v1, 0xac0($s2)
/* 807AC 8008FFAC 12004014 */  bnez       $v0, .L8008FFF8
/* 807B0 8008FFB0 FFFF0224 */   addiu     $v0, $zero, -1
/* 807B4 8008FFB4 2A107000 */  slt        $v0, $v1, $s0
/* 807B8 8008FFB8 0E004010 */  beqz       $v0, .L8008FFF4
/* 807BC 8008FFBC 05FF6224 */   addiu     $v0, $v1, -0xfb
/* 807C0 8008FFC0 40100200 */  sll        $v0, $v0, 1
/* 807C4 8008FFC4 21104202 */  addu       $v0, $s2, $v0
/* 807C8 8008FFC8 440A4484 */  lh         $a0, 0xa44($v0)
/* 807CC 8008FFCC C80A428E */  lw         $v0, 0xac8($s2)
/* 807D0 8008FFD0 D00A438E */  lw         $v1, 0xad0($s2)
/* 807D4 8008FFD4 00230400 */  sll        $a0, $a0, 0xc
/* 807D8 8008FFD8 23104400 */  subu       $v0, $v0, $a0
/* 807DC 8008FFDC C80A42AE */  sw         $v0, 0xac8($s2)
/* 807E0 8008FFE0 CC0A428E */  lw         $v0, 0xacc($s2)
/* 807E4 8008FFE4 23186400 */  subu       $v1, $v1, $a0
/* 807E8 8008FFE8 D00A43AE */  sw         $v1, 0xad0($s2)
/* 807EC 8008FFEC 23104400 */  subu       $v0, $v0, $a0
/* 807F0 8008FFF0 CC0A42AE */  sw         $v0, 0xacc($s2)
.L8008FFF4:
/* 807F4 8008FFF4 FFFF0224 */  addiu      $v0, $zero, -1
.L8008FFF8:
/* 807F8 8008FFF8 C00A42AE */  sw         $v0, 0xac0($s2)
.L8008FFFC:
/* 807FC 8008FFFC 21204002 */  addu       $a0, $s2, $zero
/* 80800 80090000 88FE010C */  jal        FUN_8007fa20
/* 80804 80090004 21280002 */   addu      $a1, $s0, $zero
/* 80808 80090008 7F400208 */  j          .L800901FC
/* 8080C 8009000C C00A50AE */   sw        $s0, 0xac0($s2)
.L80090010:
/* 80810 80090010 CC0A438E */  lw         $v1, 0xacc($s2)
/* 80814 80090014 D00A428E */  lw         $v0, 0xad0($s2)
/* 80818 80090018 00000000 */  nop
/* 8081C 8009001C 2C006214 */  bne        $v1, $v0, .L800900D0
/* 80820 80090020 FFFF0224 */   addiu     $v0, $zero, -1
/* 80824 80090024 9C0B4282 */  lb         $v0, 0xb9c($s2)
/* 80828 80090028 00000000 */  nop
/* 8082C 8009002C 28004014 */  bnez       $v0, .L800900D0
/* 80830 80090030 FFFF0224 */   addiu     $v0, $zero, -1
/* 80834 80090034 18004286 */  lh         $v0, 0x18($s2)
/* 80838 80090038 00000000 */  nop
/* 8083C 8009003C 07005010 */  beq        $v0, $s0, .L8009005C
/* 80840 80090040 21200000 */   addu      $a0, $zero, $zero
/* 80844 80090044 21184002 */  addu       $v1, $s2, $zero
.L80090048:
/* 80848 80090048 02006324 */  addiu      $v1, $v1, 2
/* 8084C 8009004C 18006284 */  lh         $v0, 0x18($v1)
/* 80850 80090050 00000000 */  nop
/* 80854 80090054 FCFF5014 */  bne        $v0, $s0, .L80090048
/* 80858 80090058 01008424 */   addiu     $a0, $a0, 1
.L8009005C:
/* 8085C 8009005C 05FF0226 */  addiu      $v0, $s0, -0xfb
/* 80860 80090060 40100200 */  sll        $v0, $v0, 1
/* 80864 80090064 21104202 */  addu       $v0, $s2, $v0
/* 80868 80090068 440A4584 */  lh         $a1, 0xa44($v0)
/* 8086C 8009006C 0400428E */  lw         $v0, 4($s2)
/* 80870 80090070 01008324 */  addiu      $v1, $a0, 1
/* 80874 80090074 23104500 */  subu       $v0, $v0, $a1
/* 80878 80090078 2A106200 */  slt        $v0, $v1, $v0
/* 8087C 8009007C 0E004010 */  beqz       $v0, .L800900B8
/* 80880 80090080 40100300 */   sll       $v0, $v1, 1
/* 80884 80090084 21205200 */  addu       $a0, $v0, $s2
.L80090088:
/* 80888 80090088 21106500 */  addu       $v0, $v1, $a1
/* 8088C 8009008C 40100200 */  sll        $v0, $v0, 1
/* 80890 80090090 21104202 */  addu       $v0, $s2, $v0
/* 80894 80090094 18004294 */  lhu        $v0, 0x18($v0)
/* 80898 80090098 01006324 */  addiu      $v1, $v1, 1
/* 8089C 8009009C 180082A4 */  sh         $v0, 0x18($a0)
/* 808A0 800900A0 0400428E */  lw         $v0, 4($s2)
/* 808A4 800900A4 00000000 */  nop
/* 808A8 800900A8 23104500 */  subu       $v0, $v0, $a1
/* 808AC 800900AC 2A106200 */  slt        $v0, $v1, $v0
/* 808B0 800900B0 F5FF4014 */  bnez       $v0, .L80090088
/* 808B4 800900B4 02008424 */   addiu     $a0, $a0, 2
.L800900B8:
/* 808B8 800900B8 0400428E */  lw         $v0, 4($s2)
/* 808BC 800900BC 0D000424 */  addiu      $a0, $zero, 0xd
/* 808C0 800900C0 23104500 */  subu       $v0, $v0, $a1
/* 808C4 800900C4 12CB020C */  jal        FUN_800b2c48
/* 808C8 800900C8 040042AE */   sw        $v0, 4($s2)
/* 808CC 800900CC FFFF0224 */  addiu      $v0, $zero, -1
.L800900D0:
/* 808D0 800900D0 7F400208 */  j          .L800901FC
/* 808D4 800900D4 C00A42AE */   sw        $v0, 0xac0($s2)
.L800900D8:
/* 808D8 800900D8 6047428E */  lw         $v0, 0x4760($s2)
/* 808DC 800900DC 00000000 */  nop
/* 808E0 800900E0 22004014 */  bnez       $v0, .L8009016C
/* 808E4 800900E4 FA000224 */   addiu     $v0, $zero, 0xfa
/* 808E8 800900E8 20000216 */  bne        $s0, $v0, .L8009016C
/* 808EC 800900EC 01000224 */   addiu     $v0, $zero, 1
/* 808F0 800900F0 604742AE */  sw         $v0, 0x4760($s2)
/* 808F4 800900F4 7047428E */  lw         $v0, 0x4770($s2)
/* 808F8 800900F8 02000324 */  addiu      $v1, $zero, 2
/* 808FC 800900FC 644740AE */  sw         $zero, 0x4764($s2)
/* 80900 80090100 2A104300 */  slt        $v0, $v0, $v1
/* 80904 80090104 0C004014 */  bnez       $v0, .L80090138
/* 80908 80090108 684743AE */   sw        $v1, 0x4768($s2)
/* 8090C 8009010C 7400C48C */  lw         $a0, 0x74($a2)
/* 80910 80090110 AAAA023C */  lui        $v0, 0xaaaa
/* 80914 80090114 ABAA4234 */  ori        $v0, $v0, 0xaaab
/* 80918 80090118 19008200 */  multu      $a0, $v0
/* 8091C 8009011C 10400000 */  mfhi       $t0
/* 80920 80090120 42180800 */  srl        $v1, $t0, 1
/* 80924 80090124 40100300 */  sll        $v0, $v1, 1
/* 80928 80090128 21104300 */  addu       $v0, $v0, $v1
/* 8092C 8009012C 23208200 */  subu       $a0, $a0, $v0
/* 80930 80090130 53400208 */  j          .L8009014C
/* 80934 80090134 6C4744AE */   sw        $a0, 0x476c($s2)
.L80090138:
/* 80938 80090138 7400C28C */  lw         $v0, 0x74($a2)
/* 8093C 8009013C 00000000 */  nop
/* 80940 80090140 07004230 */  andi       $v0, $v0, 7
/* 80944 80090144 02004224 */  addiu      $v0, $v0, 2
/* 80948 80090148 6C4742AE */  sw         $v0, 0x476c($s2)
.L8009014C:
/* 8094C 8009014C 12CB020C */  jal        FUN_800b2c48
/* 80950 80090150 02000424 */   addiu     $a0, $zero, 2
/* 80954 80090154 5B9F020C */  jal        FUN_800a7d6c
/* 80958 80090158 00000000 */   nop
/* 8095C 8009015C F1FA010C */  jal        FUN_8007ebc4
/* 80960 80090160 21204002 */   addu      $a0, $s2, $zero
/* 80964 80090164 80400208 */  j          .L80090200
/* 80968 80090168 0F80023C */   lui       $v0, 0x800f
.L8009016C:
/* 8096C 8009016C 9C0B4282 */  lb         $v0, 0xb9c($s2)
/* 80970 80090170 00000000 */  nop
/* 80974 80090174 0A004014 */  bnez       $v0, .L800901A0
/* 80978 80090178 01000224 */   addiu     $v0, $zero, 1
/* 8097C 8009017C 6047438E */  lw         $v1, 0x4760($s2)
/* 80980 80090180 00000000 */  nop
/* 80984 80090184 06006214 */  bne        $v1, $v0, .L800901A0
/* 80988 80090188 02000224 */   addiu     $v0, $zero, 2
/* 8098C 8009018C 604742AE */  sw         $v0, 0x4760($s2)
/* 80990 80090190 12CB020C */  jal        FUN_800b2c48
/* 80994 80090194 21204000 */   addu      $a0, $v0, $zero
/* 80998 80090198 80400208 */  j          .L80090200
/* 8099C 8009019C 0F80023C */   lui       $v0, 0x800f
.L800901A0:
/* 809A0 800901A0 AC484392 */  lbu        $v1, 0x48ac($s2)
/* 809A4 800901A4 01000224 */  addiu      $v0, $zero, 1
/* 809A8 800901A8 0D006210 */  beq        $v1, $v0, .L800901E0
/* 809AC 800901AC 0F80023C */   lui       $v0, %hi(D_800F0028)
/* 809B0 800901B0 28005024 */  addiu      $s0, $v0, %lo(D_800F0028)
/* 809B4 800901B4 1E000486 */  lh         $a0, 0x1e($s0)
/* 809B8 800901B8 1BA2020C */  jal        FUN_800a886c
/* 809BC 800901BC 00000000 */   nop
/* 809C0 800901C0 2400428C */  lw         $v0, 0x24($v0)
/* 809C4 800901C4 00000000 */  nop
/* 809C8 800901C8 02004230 */  andi       $v0, $v0, 2
/* 809CC 800901CC 05004014 */  bnez       $v0, .L800901E4
/* 809D0 800901D0 0F80023C */   lui       $v0, 0x800f
/* 809D4 800901D4 1E000486 */  lh         $a0, 0x1e($s0)
/* 809D8 800901D8 AFA6020C */  jal        FUN_800a9abc
/* 809DC 800901DC 01000524 */   addiu     $a1, $zero, 1
.L800901E0:
/* 809E0 800901E0 0F80023C */  lui        $v0, %hi(D_800EFFA8)
.L800901E4:
/* 809E4 800901E4 A8FF4224 */  addiu      $v0, $v0, %lo(D_800EFFA8)
/* 809E8 800901E8 7400448C */  lw         $a0, 0x74($v0)
/* 809EC 800901EC 18150324 */  addiu      $v1, $zero, 0x1518
/* 809F0 800901F0 780043AC */  sw         $v1, 0x78($v0)
/* 809F4 800901F4 13C8020C */  jal        FUN_800b204c
/* 809F8 800901F8 DC0A44AE */   sw        $a0, 0xadc($s2)
.L800901FC:
/* 809FC 800901FC 0F80023C */  lui        $v0, %hi(D_800F0020)
.L80090200:
/* 80A00 80090200 2000438C */  lw         $v1, %lo(D_800F0020)($v0)
/* 80A04 80090204 18150224 */  addiu      $v0, $zero, 0x1518
/* 80A08 80090208 06006214 */  bne        $v1, $v0, .L80090224
/* 80A0C 8009020C 01000224 */   addiu     $v0, $zero, 1
/* 80A10 80090210 DC0A448E */  lw         $a0, 0xadc($s2)
/* 80A14 80090214 FFFF0324 */  addiu      $v1, $zero, -1
/* 80A18 80090218 02008314 */  bne        $a0, $v1, .L80090224
/* 80A1C 8009021C 02000224 */   addiu     $v0, $zero, 2
.L80090220:
/* 80A20 80090220 01000224 */  addiu      $v0, $zero, 1
.L80090224:
/* 80A24 80090224 8400BF8F */  lw         $ra, 0x84($sp)
/* 80A28 80090228 8000BE8F */  lw         $fp, 0x80($sp)
/* 80A2C 8009022C 7C00B78F */  lw         $s7, 0x7c($sp)
/* 80A30 80090230 7800B68F */  lw         $s6, 0x78($sp)
/* 80A34 80090234 7400B58F */  lw         $s5, 0x74($sp)
/* 80A38 80090238 7000B48F */  lw         $s4, 0x70($sp)
/* 80A3C 8009023C 6C00B38F */  lw         $s3, 0x6c($sp)
/* 80A40 80090240 6800B28F */  lw         $s2, 0x68($sp)
/* 80A44 80090244 6400B18F */  lw         $s1, 0x64($sp)
/* 80A48 80090248 6000B08F */  lw         $s0, 0x60($sp)
/* 80A4C 8009024C 0800E003 */  jr         $ra
/* 80A50 80090250 8800BD27 */   addiu     $sp, $sp, 0x88
