.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches


glabel FUN_8003c940
/* 2D140 8003C940 50FEBD27 */  addiu      $sp, $sp, -0x1b0
/* 2D144 8003C944 2801A427 */  addiu      $a0, $sp, 0x128
/* 2D148 8003C948 2C01A527 */  addiu      $a1, $sp, 0x12c
/* 2D14C 8003C94C A801BEAF */  sw         $fp, 0x1a8($sp)
/* 2D150 8003C950 0180023C */  lui        $v0, %hi(D_80012C80)
/* 2D154 8003C954 802C468C */  lw         $a2, %lo(D_80012C80)($v0)
/* 2D158 8003C958 802C4324 */  addiu      $v1, $v0, 0x2c80
/* 2D15C 8003C95C AC01BFAF */  sw         $ra, 0x1ac($sp)
/* 2D160 8003C960 A401B7AF */  sw         $s7, 0x1a4($sp)
/* 2D164 8003C964 A001B6AF */  sw         $s6, 0x1a0($sp)
/* 2D168 8003C968 9C01B5AF */  sw         $s5, 0x19c($sp)
/* 2D16C 8003C96C 9801B4AF */  sw         $s4, 0x198($sp)
/* 2D170 8003C970 9401B3AF */  sw         $s3, 0x194($sp)
/* 2D174 8003C974 9001B2AF */  sw         $s2, 0x190($sp)
/* 2D178 8003C978 8C01B1AF */  sw         $s1, 0x18c($sp)
/* 2D17C 8003C97C 8801B0AF */  sw         $s0, 0x188($sp)
/* 2D180 8003C980 0400678C */  lw         $a3, 4($v1)
/* 2D184 8003C984 0180023C */  lui        $v0, %hi(D_80012C88)
/* 2D188 8003C988 E800A6AF */  sw         $a2, 0xe8($sp)
/* 2D18C 8003C98C EC00A7AF */  sw         $a3, 0xec($sp)
/* 2D190 8003C990 882C4824 */  addiu      $t0, $v0, %lo(D_80012C88)
/* 2D194 8003C994 03000389 */  lwl        $v1, 3($t0)
/* 2D198 8003C998 00000399 */  lwr        $v1, ($t0)
/* 2D19C 8003C99C 07000689 */  lwl        $a2, 7($t0)
/* 2D1A0 8003C9A0 04000699 */  lwr        $a2, 4($t0)
/* 2D1A4 8003C9A4 08000781 */  lb         $a3, 8($t0)
/* 2D1A8 8003C9A8 F300A3AB */  swl        $v1, 0xf3($sp)
/* 2D1AC 8003C9AC F000A3BB */  swr        $v1, 0xf0($sp)
/* 2D1B0 8003C9B0 F700A6AB */  swl        $a2, 0xf7($sp)
/* 2D1B4 8003C9B4 F400A6BB */  swr        $a2, 0xf4($sp)
/* 2D1B8 8003C9B8 F800A7A3 */  sb         $a3, 0xf8($sp)
/* 2D1BC 8003C9BC DF9A020C */  jal        FUN_800a6b7c
/* 2D1C0 8003C9C0 21F00000 */   addu      $fp, $zero, $zero
/* 2D1C4 8003C9C4 2001A227 */  addiu      $v0, $sp, 0x120
/* 2D1C8 8003C9C8 2000A327 */  addiu      $v1, $sp, 0x20
/* 2D1CC 8003C9CC 5800A427 */  addiu      $a0, $sp, 0x58
/* 2D1D0 8003C9D0 E800A527 */  addiu      $a1, $sp, 0xe8
/* 2D1D4 8003C9D4 F000A627 */  addiu      $a2, $sp, 0xf0
/* 2D1D8 8003C9D8 6200A727 */  addiu      $a3, $sp, 0x62
/* 2D1DC 8003C9DC 6C00A827 */  addiu      $t0, $sp, 0x6c
/* 2D1E0 8003C9E0 7C01A2AF */  sw         $v0, 0x17c($sp)
/* 2D1E4 8003C9E4 7600A227 */  addiu      $v0, $sp, 0x76
/* 2D1E8 8003C9E8 8001A3AF */  sw         $v1, 0x180($sp)
/* 2D1EC 8003C9EC 8A00A327 */  addiu      $v1, $sp, 0x8a
/* 2D1F0 8003C9F0 4401A4AF */  sw         $a0, 0x144($sp)
/* 2D1F4 8003C9F4 9400A427 */  addiu      $a0, $sp, 0x94
/* 2D1F8 8003C9F8 7001A5AF */  sw         $a1, 0x170($sp)
/* 2D1FC 8003C9FC BC00A527 */  addiu      $a1, $sp, 0xbc
/* 2D200 8003CA00 7401A6AF */  sw         $a2, 0x174($sp)
/* 2D204 8003CA04 D000A627 */  addiu      $a2, $sp, 0xd0
/* 2D208 8003CA08 4C01A7AF */  sw         $a3, 0x14c($sp)
/* 2D20C 8003CA0C DA00A727 */  addiu      $a3, $sp, 0xda
/* 2D210 8003CA10 5001A8AF */  sw         $t0, 0x150($sp)
/* 2D214 8003CA14 C600A827 */  addiu      $t0, $sp, 0xc6
/* 2D218 8003CA18 5401A2AF */  sw         $v0, 0x154($sp)
/* 2D21C 8003CA1C 0001A227 */  addiu      $v0, $sp, 0x100
/* 2D220 8003CA20 6401A8AF */  sw         $t0, 0x164($sp)
/* 2D224 8003CA24 21404000 */  addu       $t0, $v0, $zero
/* 2D228 8003CA28 6C01A7AF */  sw         $a3, 0x16c($sp)
/* 2D22C 8003CA2C 1001A727 */  addiu      $a3, $sp, 0x110
/* 2D230 8003CA30 5801A3AF */  sw         $v1, 0x158($sp)
/* 2D234 8003CA34 5C01A4AF */  sw         $a0, 0x15c($sp)
/* 2D238 8003CA38 6001A5AF */  sw         $a1, 0x160($sp)
/* 2D23C 8003CA3C 6801A6AF */  sw         $a2, 0x168($sp)
/* 2D240 8003CA40 7801A2AF */  sw         $v0, 0x178($sp)
.L8003CA44:
/* 2D244 8003CA44 0200C43B */  xori       $a0, $fp, 2
/* 2D248 8003CA48 80301E00 */  sll        $a2, $fp, 2
/* 2D24C 8003CA4C 0100DE27 */  addiu      $fp, $fp, 1
/* 2D250 8003CA50 80200400 */  sll        $a0, $a0, 2
/* 2D254 8003CA54 21280401 */  addu       $a1, $t0, $a0
/* 2D258 8003CA58 2801A28F */  lw         $v0, 0x128($sp)
/* 2D25C 8003CA5C 2120E400 */  addu       $a0, $a3, $a0
/* 2D260 8003CA60 0710C200 */  srav       $v0, $v0, $a2
/* 2D264 8003CA64 0F004230 */  andi       $v0, $v0, 0xf
/* 2D268 8003CA68 0000A2AC */  sw         $v0, ($a1)
/* 2D26C 8003CA6C 2C01A38F */  lw         $v1, 0x12c($sp)
/* 2D270 8003CA70 0400C22B */  slti       $v0, $fp, 4
/* 2D274 8003CA74 0718C300 */  srav       $v1, $v1, $a2
/* 2D278 8003CA78 0F006330 */  andi       $v1, $v1, 0xf
/* 2D27C 8003CA7C F1FF4014 */  bnez       $v0, .L8003CA44
/* 2D280 8003CA80 000083AC */   sw        $v1, ($a0)
/* 2D284 8003CA84 21200000 */  addu       $a0, $zero, $zero
/* 2D288 8003CA88 D79A020C */  jal        FUN_800a6b5c
/* 2D28C 8003CA8C 21280000 */   addu      $a1, $zero, $zero
/* 2D290 8003CA90 7C01A48F */  lw         $a0, 0x17c($sp)
/* 2D294 8003CA94 F8EF020C */  jal        readbtniomaybe_800bbfe0
/* 2D298 8003CA98 21F00000 */   addu      $fp, $zero, $zero
/* 2D29C 8003CA9C 00101524 */  addiu      $s5, $zero, 0x1000
/* 2D2A0 8003CAA0 3100C227 */  addiu      $v0, $fp, 0x31
.L8003CAA4:
/* 2D2A4 8003CAA4 40301E00 */  sll        $a2, $fp, 1
/* 2D2A8 8003CAA8 21B00000 */  addu       $s6, $zero, $zero
/* 2D2AC 8003CAAC 7C01A38F */  lw         $v1, 0x17c($sp)
/* 2D2B0 8003CAB0 80201E00 */  sll        $a0, $fp, 2
/* 2D2B4 8003CAB4 F600A2A3 */  sb         $v0, 0xf6($sp)
/* 2D2B8 8003CAB8 F700A0A3 */  sb         $zero, 0xf7($sp)
/* 2D2BC 8003CABC 21286600 */  addu       $a1, $v1, $a2
/* 2D2C0 8003CAC0 0000A294 */  lhu        $v0, ($a1)
/* 2D2C4 8003CAC4 0100C727 */  addiu      $a3, $fp, 1
/* 2D2C8 8003CAC8 01004230 */  andi       $v0, $v0, 1
/* 2D2CC 8003CACC 2000A2AF */  sw         $v0, 0x20($sp)
/* 2D2D0 8003CAD0 0000A394 */  lhu        $v1, ($a1)
/* 2D2D4 8003CAD4 8001B08F */  lw         $s0, 0x180($sp)
/* 2D2D8 8003CAD8 02006330 */  andi       $v1, $v1, 2
/* 2D2DC 8003CADC 2400A3AF */  sw         $v1, 0x24($sp)
/* 2D2E0 8003CAE0 0000A294 */  lhu        $v0, ($a1)
/* 2D2E4 8003CAE4 0F80083C */  lui        $t0, 0x800f
/* 2D2E8 8003CAE8 4801A4AF */  sw         $a0, 0x148($sp)
/* 2D2EC 8003CAEC 04004230 */  andi       $v0, $v0, 4
/* 2D2F0 8003CAF0 2800A2AF */  sw         $v0, 0x28($sp)
/* 2D2F4 8003CAF4 0000A394 */  lhu        $v1, ($a1)
/* 2D2F8 8003CAF8 21980000 */  addu       $s3, $zero, $zero
/* 2D2FC 8003CAFC 4001A7AF */  sw         $a3, 0x140($sp)
/* 2D300 8003CB00 08006330 */  andi       $v1, $v1, 8
/* 2D304 8003CB04 2C00A3AF */  sw         $v1, 0x2c($sp)
/* 2D308 8003CB08 0000A294 */  lhu        $v0, ($a1)
/* 2D30C 8003CB0C 4401B48F */  lw         $s4, 0x144($sp)
/* 2D310 8003CB10 10004230 */  andi       $v0, $v0, 0x10
/* 2D314 8003CB14 3000A2AF */  sw         $v0, 0x30($sp)
/* 2D318 8003CB18 0000A394 */  lhu        $v1, ($a1)
/* 2D31C 8003CB1C A8FF048D */  lw         $a0, -0x58($t0)
/* 2D320 8003CB20 20006330 */  andi       $v1, $v1, 0x20
/* 2D324 8003CB24 3400A3AF */  sw         $v1, 0x34($sp)
/* 2D328 8003CB28 0000A294 */  lhu        $v0, ($a1)
/* 2D32C 8003CB2C 21208600 */  addu       $a0, $a0, $a2
/* 2D330 8003CB30 40004230 */  andi       $v0, $v0, 0x40
/* 2D334 8003CB34 3800A2AF */  sw         $v0, 0x38($sp)
/* 2D338 8003CB38 00008294 */  lhu        $v0, ($a0)
/* 2D33C 8003CB3C 21908002 */  addu       $s2, $s4, $zero
/* 2D340 8003CB40 02120200 */  srl        $v0, $v0, 8
/* 2D344 8003CB44 01004230 */  andi       $v0, $v0, 1
/* 2D348 8003CB48 3C00A2AF */  sw         $v0, 0x3c($sp)
/* 2D34C 8003CB4C 00008394 */  lhu        $v1, ($a0)
/* 2D350 8003CB50 38001126 */  addiu      $s1, $s0, 0x38
/* 2D354 8003CB54 421A0300 */  srl        $v1, $v1, 9
/* 2D358 8003CB58 01006330 */  andi       $v1, $v1, 1
/* 2D35C 8003CB5C 4000A3AF */  sw         $v1, 0x40($sp)
/* 2D360 8003CB60 00008294 */  lhu        $v0, ($a0)
/* 2D364 8003CB64 2401A397 */  lhu        $v1, 0x124($sp)
/* 2D368 8003CB68 C2120200 */  srl        $v0, $v0, 0xb
/* 2D36C 8003CB6C 01004230 */  andi       $v0, $v0, 1
/* 2D370 8003CB70 4400A2AF */  sw         $v0, 0x44($sp)
/* 2D374 8003CB74 0000A294 */  lhu        $v0, ($a1)
/* 2D378 8003CB78 00106330 */  andi       $v1, $v1, 0x1000
/* 2D37C 8003CB7C 4C00A3AF */  sw         $v1, 0x4c($sp)
/* 2D380 8003CB80 80004230 */  andi       $v0, $v0, 0x80
/* 2D384 8003CB84 4800A2AF */  sw         $v0, 0x48($sp)
.L8003CB88:
/* 2D388 8003CB88 0400C22A */  slti       $v0, $s6, 4
/* 2D38C 8003CB8C 42004010 */  beqz       $v0, .L8003CC98
/* 2D390 8003CB90 00000000 */   nop
/* 2D394 8003CB94 0000028E */  lw         $v0, ($s0)
/* 2D398 8003CB98 00000000 */  nop
/* 2D39C 8003CB9C 0A004014 */  bnez       $v0, .L8003CBC8
/* 2D3A0 8003CBA0 2D000724 */   addiu     $a3, $zero, 0x2d
/* 2D3A4 8003CBA4 0180023C */  lui        $v0, %hi(D_80012C94)
/* 2D3A8 8003CBA8 942C4624 */  addiu      $a2, $v0, %lo(D_80012C94)
/* 2D3AC 8003CBAC 0300C388 */  lwl        $v1, 3($a2)
/* 2D3B0 8003CBB0 0000C398 */  lwr        $v1, ($a2)
/* 2D3B4 8003CBB4 00000000 */  nop
/* 2D3B8 8003CBB8 030023AA */  swl        $v1, 3($s1)
/* 2D3BC 8003CBBC 000023BA */  swr        $v1, ($s1)
/* 2D3C0 8003CBC0 31F30008 */  j          .L8003CCC4
/* 2D3C4 8003CBC4 04001026 */   addiu     $s0, $s0, 4
.L8003CBC8:
/* 2D3C8 8003CBC8 3001A427 */  addiu      $a0, $sp, 0x130
/* 2D3CC 8003CBCC 0180023C */  lui        $v0, %hi(D_80012C98)
/* 2D3D0 8003CBD0 982C4524 */  addiu      $a1, $v0, %lo(D_80012C98)
/* 2D3D4 8003CBD4 00191E00 */  sll        $v1, $fp, 4
/* 2D3D8 8003CBD8 21106302 */  addu       $v0, $s3, $v1
/* 2D3DC 8003CBDC 21B88000 */  addu       $s7, $a0, $zero
/* 2D3E0 8003CBE0 7801A88F */  lw         $t0, 0x178($sp)
/* 2D3E4 8003CBE4 00000000 */  nop
/* 2D3E8 8003CBE8 21100201 */  addu       $v0, $t0, $v0
/* 2D3EC 8003CBEC 0000488C */  lw         $t0, ($v0)
/* 2D3F0 8003CBF0 0180023C */  lui        $v0, %hi(D_80012CA4)
/* 2D3F4 8003CBF4 A42C4624 */  addiu      $a2, $v0, %lo(D_80012CA4)
/* 2D3F8 8003CBF8 04000231 */  andi       $v0, $t0, 4
/* 2D3FC 8003CBFC 02004010 */  beqz       $v0, .L8003CC08
/* 2D400 8003CC00 21486000 */   addu      $t1, $v1, $zero
/* 2D404 8003CC04 4C000724 */  addiu      $a3, $zero, 0x4c
.L8003CC08:
/* 2D408 8003CC08 08000231 */  andi       $v0, $t0, 8
/* 2D40C 8003CC0C 04004010 */  beqz       $v0, .L8003CC20
/* 2D410 8003CC10 2D000324 */   addiu     $v1, $zero, 0x2d
/* 2D414 8003CC14 52000224 */  addiu      $v0, $zero, 0x52
/* 2D418 8003CC18 09F30008 */  j          .L8003CC24
/* 2D41C 8003CC1C 1000A2AF */   sw        $v0, 0x10($sp)
.L8003CC20:
/* 2D420 8003CC20 1000A3AF */  sw         $v1, 0x10($sp)
.L8003CC24:
/* 2D424 8003CC24 7801A88F */  lw         $t0, 0x178($sp)
/* 2D428 8003CC28 21106902 */  addu       $v0, $s3, $t1
/* 2D42C 8003CC2C 21100201 */  addu       $v0, $t0, $v0
/* 2D430 8003CC30 0000438C */  lw         $v1, ($v0)
/* 2D434 8003CC34 00000000 */  nop
/* 2D438 8003CC38 01006330 */  andi       $v1, $v1, 1
/* 2D43C 8003CC3C 02006010 */  beqz       $v1, .L8003CC48
/* 2D440 8003CC40 2D000224 */   addiu     $v0, $zero, 0x2d
/* 2D444 8003CC44 55000224 */  addiu      $v0, $zero, 0x55
.L8003CC48:
/* 2D448 8003CC48 1400A2AF */  sw         $v0, 0x14($sp)
/* 2D44C 8003CC4C 7801A38F */  lw         $v1, 0x178($sp)
/* 2D450 8003CC50 21106902 */  addu       $v0, $s3, $t1
/* 2D454 8003CC54 21106200 */  addu       $v0, $v1, $v0
/* 2D458 8003CC58 0000438C */  lw         $v1, ($v0)
/* 2D45C 8003CC5C 00000000 */  nop
/* 2D460 8003CC60 02006330 */  andi       $v1, $v1, 2
/* 2D464 8003CC64 03006010 */  beqz       $v1, .L8003CC74
/* 2D468 8003CC68 44000224 */   addiu     $v0, $zero, 0x44
/* 2D46C 8003CC6C 1FF30008 */  j          .L8003CC7C
/* 2D470 8003CC70 1800A2AF */   sw        $v0, 0x18($sp)
.L8003CC74:
/* 2D474 8003CC74 2D000824 */  addiu      $t0, $zero, 0x2d
/* 2D478 8003CC78 1800A8AF */  sw         $t0, 0x18($sp)
.L8003CC7C:
/* 2D47C 8003CC7C 8E81000C */  jal        sprintf
/* 2D480 8003CC80 04001026 */   addiu     $s0, $s0, 4
/* 2D484 8003CC84 21204002 */  addu       $a0, $s2, $zero
/* 2D488 8003CC88 057C000C */  jal        strcpy
/* 2D48C 8003CC8C 2128E002 */   addu      $a1, $s7, $zero
/* 2D490 8003CC90 32F30008 */  j          .L8003CCC8
/* 2D494 8003CC94 0A009426 */   addiu     $s4, $s4, 0xa
.L8003CC98:
/* 2D498 8003CC98 0000028E */  lw         $v0, ($s0)
/* 2D49C 8003CC9C 00000000 */  nop
/* 2D4A0 8003CCA0 04004010 */  beqz       $v0, .L8003CCB4
/* 2D4A4 8003CCA4 21208002 */   addu      $a0, $s4, $zero
/* 2D4A8 8003CCA8 0180023C */  lui        $v0, %hi(D_80012CA4)
/* 2D4AC 8003CCAC 2FF30008 */  j          .L8003CCBC
/* 2D4B0 8003CCB0 A42C4524 */   addiu     $a1, $v0, %lo(D_80012CA4)
.L8003CCB4:
/* 2D4B4 8003CCB4 0180033C */  lui        $v1, %hi(D_80012C94)
/* 2D4B8 8003CCB8 942C6524 */  addiu      $a1, $v1, %lo(D_80012C94)
.L8003CCBC:
/* 2D4BC 8003CCBC 057C000C */  jal        strcpy
/* 2D4C0 8003CCC0 04001026 */   addiu     $s0, $s0, 4
.L8003CCC4:
/* 2D4C4 8003CCC4 0A009426 */  addiu      $s4, $s4, 0xa
.L8003CCC8:
/* 2D4C8 8003CCC8 04007326 */  addiu      $s3, $s3, 4
/* 2D4CC 8003CCCC 0A005226 */  addiu      $s2, $s2, 0xa
/* 2D4D0 8003CCD0 0100D626 */  addiu      $s6, $s6, 1
/* 2D4D4 8003CCD4 0C00C22A */  slti       $v0, $s6, 0xc
/* 2D4D8 8003CCD8 ABFF4014 */  bnez       $v0, .L8003CB88
/* 2D4DC 8003CCDC 0A003126 */   addiu     $s1, $s1, 0xa
/* 2D4E0 8003CCE0 21200000 */  addu       $a0, $zero, $zero
/* 2D4E4 8003CCE4 B0FF0624 */  addiu      $a2, $zero, -0x50
/* 2D4E8 8003CCE8 7001A58F */  lw         $a1, 0x170($sp)
/* 2D4EC 8003CCEC 4801A88F */  lw         $t0, 0x148($sp)
/* 2D4F0 8003CCF0 4001BE8F */  lw         $fp, 0x140($sp)
/* 2D4F4 8003CCF4 7401A28F */  lw         $v0, 0x174($sp)
/* 2D4F8 8003CCF8 2180A800 */  addu       $s0, $a1, $t0
/* 2D4FC 8003CCFC 0000058E */  lw         $a1, ($s0)
/* 2D500 8003CD00 00100724 */  addiu      $a3, $zero, 0x1000
/* 2D504 8003CD04 1000B5AF */  sw         $s5, 0x10($sp)
/* 2D508 8003CD08 290A010C */  jal        PrintText_800428a4
/* 2D50C 8003CD0C 1400A2AF */   sw        $v0, 0x14($sp)
/* 2D510 8003CD10 7CAA000C */  jal        vsync_8002a9f0
/* 2D514 8003CD14 00000000 */   nop
/* 2D518 8003CD18 21200000 */  addu       $a0, $zero, $zero
/* 2D51C 8003CD1C C2FF0624 */  addiu      $a2, $zero, -0x3e
/* 2D520 8003CD20 00100724 */  addiu      $a3, $zero, 0x1000
/* 2D524 8003CD24 0180033C */  lui        $v1, %hi(D_80012CA8)
/* 2D528 8003CD28 0000058E */  lw         $a1, ($s0)
/* 2D52C 8003CD2C A82C6224 */  addiu      $v0, $v1, %lo(D_80012CA8)
/* 2D530 8003CD30 1000B5AF */  sw         $s5, 0x10($sp)
/* 2D534 8003CD34 290A010C */  jal        PrintText_800428a4
/* 2D538 8003CD38 1400A2AF */   sw        $v0, 0x14($sp)
/* 2D53C 8003CD3C C2FF0624 */  addiu      $a2, $zero, -0x3e
/* 2D540 8003CD40 2000A48F */  lw         $a0, 0x20($sp)
/* 2D544 8003CD44 4401A58F */  lw         $a1, 0x144($sp)
/* 2D548 8003CD48 00100724 */  addiu      $a3, $zero, 0x1000
/* 2D54C 8003CD4C 1000B5AF */  sw         $s5, 0x10($sp)
/* 2D550 8003CD50 2B200400 */  sltu       $a0, $zero, $a0
/* 2D554 8003CD54 1400A5AF */  sw         $a1, 0x14($sp)
/* 2D558 8003CD58 0000058E */  lw         $a1, ($s0)
/* 2D55C 8003CD5C 40200400 */  sll        $a0, $a0, 1
/* 2D560 8003CD60 290A010C */  jal        PrintText_800428a4
/* 2D564 8003CD64 4800A524 */   addiu     $a1, $a1, 0x48
/* 2D568 8003CD68 21200000 */  addu       $a0, $zero, $zero
/* 2D56C 8003CD6C CAFF0624 */  addiu      $a2, $zero, -0x36
/* 2D570 8003CD70 00100724 */  addiu      $a3, $zero, 0x1000
/* 2D574 8003CD74 0180083C */  lui        $t0, %hi(D_80012CB0)
/* 2D578 8003CD78 0000058E */  lw         $a1, ($s0)
/* 2D57C 8003CD7C B02C0225 */  addiu      $v0, $t0, %lo(D_80012CB0)
/* 2D580 8003CD80 1000B5AF */  sw         $s5, 0x10($sp)
/* 2D584 8003CD84 290A010C */  jal        PrintText_800428a4
/* 2D588 8003CD88 1400A2AF */   sw        $v0, 0x14($sp)
/* 2D58C 8003CD8C CAFF0624 */  addiu      $a2, $zero, -0x36
/* 2D590 8003CD90 2400A48F */  lw         $a0, 0x24($sp)
/* 2D594 8003CD94 4C01A28F */  lw         $v0, 0x14c($sp)
/* 2D598 8003CD98 00100724 */  addiu      $a3, $zero, 0x1000
/* 2D59C 8003CD9C 1000B5AF */  sw         $s5, 0x10($sp)
/* 2D5A0 8003CDA0 2B200400 */  sltu       $a0, $zero, $a0
/* 2D5A4 8003CDA4 1400A2AF */  sw         $v0, 0x14($sp)
/* 2D5A8 8003CDA8 0000058E */  lw         $a1, ($s0)
/* 2D5AC 8003CDAC 40200400 */  sll        $a0, $a0, 1
/* 2D5B0 8003CDB0 290A010C */  jal        PrintText_800428a4
/* 2D5B4 8003CDB4 4800A524 */   addiu     $a1, $a1, 0x48
/* 2D5B8 8003CDB8 21200000 */  addu       $a0, $zero, $zero
/* 2D5BC 8003CDBC D2FF0624 */  addiu      $a2, $zero, -0x2e
/* 2D5C0 8003CDC0 00100724 */  addiu      $a3, $zero, 0x1000
/* 2D5C4 8003CDC4 0180033C */  lui        $v1, %hi(D_80012CB8)
/* 2D5C8 8003CDC8 0000058E */  lw         $a1, ($s0)
/* 2D5CC 8003CDCC B82C6224 */  addiu      $v0, $v1, %lo(D_80012CB8)
/* 2D5D0 8003CDD0 1000B5AF */  sw         $s5, 0x10($sp)
/* 2D5D4 8003CDD4 290A010C */  jal        PrintText_800428a4
/* 2D5D8 8003CDD8 1400A2AF */   sw        $v0, 0x14($sp)
/* 2D5DC 8003CDDC D2FF0624 */  addiu      $a2, $zero, -0x2e
/* 2D5E0 8003CDE0 2800A48F */  lw         $a0, 0x28($sp)
/* 2D5E4 8003CDE4 5001A58F */  lw         $a1, 0x150($sp)
/* 2D5E8 8003CDE8 00100724 */  addiu      $a3, $zero, 0x1000
/* 2D5EC 8003CDEC 1000B5AF */  sw         $s5, 0x10($sp)
/* 2D5F0 8003CDF0 2B200400 */  sltu       $a0, $zero, $a0
/* 2D5F4 8003CDF4 1400A5AF */  sw         $a1, 0x14($sp)
/* 2D5F8 8003CDF8 0000058E */  lw         $a1, ($s0)
/* 2D5FC 8003CDFC 40200400 */  sll        $a0, $a0, 1
/* 2D600 8003CE00 290A010C */  jal        PrintText_800428a4
/* 2D604 8003CE04 4800A524 */   addiu     $a1, $a1, 0x48
/* 2D608 8003CE08 21200000 */  addu       $a0, $zero, $zero
/* 2D60C 8003CE0C DAFF0624 */  addiu      $a2, $zero, -0x26
/* 2D610 8003CE10 00100724 */  addiu      $a3, $zero, 0x1000
/* 2D614 8003CE14 0180083C */  lui        $t0, %hi(D_80012CBC)
/* 2D618 8003CE18 0000058E */  lw         $a1, ($s0)
/* 2D61C 8003CE1C BC2C0225 */  addiu      $v0, $t0, %lo(D_80012CBC)
/* 2D620 8003CE20 1000B5AF */  sw         $s5, 0x10($sp)
/* 2D624 8003CE24 290A010C */  jal        PrintText_800428a4
/* 2D628 8003CE28 1400A2AF */   sw        $v0, 0x14($sp)
/* 2D62C 8003CE2C DAFF0624 */  addiu      $a2, $zero, -0x26
/* 2D630 8003CE30 2C00A48F */  lw         $a0, 0x2c($sp)
/* 2D634 8003CE34 5401A28F */  lw         $v0, 0x154($sp)
/* 2D638 8003CE38 00100724 */  addiu      $a3, $zero, 0x1000
/* 2D63C 8003CE3C 1000B5AF */  sw         $s5, 0x10($sp)
/* 2D640 8003CE40 2B200400 */  sltu       $a0, $zero, $a0
/* 2D644 8003CE44 1400A2AF */  sw         $v0, 0x14($sp)
/* 2D648 8003CE48 0000058E */  lw         $a1, ($s0)
/* 2D64C 8003CE4C 40200400 */  sll        $a0, $a0, 1
/* 2D650 8003CE50 290A010C */  jal        PrintText_800428a4
/* 2D654 8003CE54 4800A524 */   addiu     $a1, $a1, 0x48
/* 2D658 8003CE58 7CAA000C */  jal        vsync_8002a9f0
/* 2D65C 8003CE5C 00000000 */   nop
/* 2D660 8003CE60 21200000 */  addu       $a0, $zero, $zero
/* 2D664 8003CE64 E2FF0624 */  addiu      $a2, $zero, -0x1e
/* 2D668 8003CE68 00100724 */  addiu      $a3, $zero, 0x1000
/* 2D66C 8003CE6C 0180033C */  lui        $v1, %hi(D_80012CC4)
/* 2D670 8003CE70 0000058E */  lw         $a1, ($s0)
/* 2D674 8003CE74 C42C6224 */  addiu      $v0, $v1, %lo(D_80012CC4)
/* 2D678 8003CE78 1000B5AF */  sw         $s5, 0x10($sp)
/* 2D67C 8003CE7C 290A010C */  jal        PrintText_800428a4
/* 2D680 8003CE80 1400A2AF */   sw        $v0, 0x14($sp)
/* 2D684 8003CE84 E2FF0624 */  addiu      $a2, $zero, -0x1e
/* 2D688 8003CE88 3400A48F */  lw         $a0, 0x34($sp)
/* 2D68C 8003CE8C 5801A58F */  lw         $a1, 0x158($sp)
/* 2D690 8003CE90 00100724 */  addiu      $a3, $zero, 0x1000
/* 2D694 8003CE94 1000B5AF */  sw         $s5, 0x10($sp)
/* 2D698 8003CE98 2B200400 */  sltu       $a0, $zero, $a0
/* 2D69C 8003CE9C 1400A5AF */  sw         $a1, 0x14($sp)
/* 2D6A0 8003CEA0 0000058E */  lw         $a1, ($s0)
/* 2D6A4 8003CEA4 40200400 */  sll        $a0, $a0, 1
/* 2D6A8 8003CEA8 290A010C */  jal        PrintText_800428a4
/* 2D6AC 8003CEAC 4800A524 */   addiu     $a1, $a1, 0x48
/* 2D6B0 8003CEB0 21200000 */  addu       $a0, $zero, $zero
/* 2D6B4 8003CEB4 EAFF0624 */  addiu      $a2, $zero, -0x16
/* 2D6B8 8003CEB8 00100724 */  addiu      $a3, $zero, 0x1000
/* 2D6BC 8003CEBC 0180083C */  lui        $t0, %hi(D_80012CD0)
/* 2D6C0 8003CEC0 0000058E */  lw         $a1, ($s0)
/* 2D6C4 8003CEC4 D02C0225 */  addiu      $v0, $t0, %lo(D_80012CD0)
/* 2D6C8 8003CEC8 1000B5AF */  sw         $s5, 0x10($sp)
/* 2D6CC 8003CECC 290A010C */  jal        PrintText_800428a4
/* 2D6D0 8003CED0 1400A2AF */   sw        $v0, 0x14($sp)
/* 2D6D4 8003CED4 EAFF0624 */  addiu      $a2, $zero, -0x16
/* 2D6D8 8003CED8 3800A48F */  lw         $a0, 0x38($sp)
/* 2D6DC 8003CEDC 5C01A28F */  lw         $v0, 0x15c($sp)
/* 2D6E0 8003CEE0 00100724 */  addiu      $a3, $zero, 0x1000
/* 2D6E4 8003CEE4 1000B5AF */  sw         $s5, 0x10($sp)
/* 2D6E8 8003CEE8 2B200400 */  sltu       $a0, $zero, $a0
/* 2D6EC 8003CEEC 1400A2AF */  sw         $v0, 0x14($sp)
/* 2D6F0 8003CEF0 0000058E */  lw         $a1, ($s0)
/* 2D6F4 8003CEF4 40200400 */  sll        $a0, $a0, 1
/* 2D6F8 8003CEF8 290A010C */  jal        PrintText_800428a4
/* 2D6FC 8003CEFC 4800A524 */   addiu     $a1, $a1, 0x48
/* 2D700 8003CF00 7CAA000C */  jal        vsync_8002a9f0
/* 2D704 8003CF04 00000000 */   nop
/* 2D708 8003CF08 21200000 */  addu       $a0, $zero, $zero
/* 2D70C 8003CF0C F2FF0624 */  addiu      $a2, $zero, -0xe
/* 2D710 8003CF10 00100724 */  addiu      $a3, $zero, 0x1000
/* 2D714 8003CF14 0180033C */  lui        $v1, %hi(D_80012CDC)
/* 2D718 8003CF18 0000058E */  lw         $a1, ($s0)
/* 2D71C 8003CF1C DC2C6224 */  addiu      $v0, $v1, %lo(D_80012CDC)
/* 2D720 8003CF20 1000B5AF */  sw         $s5, 0x10($sp)
/* 2D724 8003CF24 290A010C */  jal        PrintText_800428a4
/* 2D728 8003CF28 1400A2AF */   sw        $v0, 0x14($sp)
/* 2D72C 8003CF2C F2FF0624 */  addiu      $a2, $zero, -0xe
/* 2D730 8003CF30 4800A48F */  lw         $a0, 0x48($sp)
/* 2D734 8003CF34 6001A58F */  lw         $a1, 0x160($sp)
/* 2D738 8003CF38 00100724 */  addiu      $a3, $zero, 0x1000
/* 2D73C 8003CF3C 1000B5AF */  sw         $s5, 0x10($sp)
/* 2D740 8003CF40 2B200400 */  sltu       $a0, $zero, $a0
/* 2D744 8003CF44 1400A5AF */  sw         $a1, 0x14($sp)
/* 2D748 8003CF48 0000058E */  lw         $a1, ($s0)
/* 2D74C 8003CF4C 40200400 */  sll        $a0, $a0, 1
/* 2D750 8003CF50 290A010C */  jal        PrintText_800428a4
/* 2D754 8003CF54 4800A524 */   addiu     $a1, $a1, 0x48
/* 2D758 8003CF58 0200C22B */  slti       $v0, $fp, 2
/* 2D75C 8003CF5C D1FE4014 */  bnez       $v0, .L8003CAA4
/* 2D760 8003CF60 3100C227 */   addiu     $v0, $fp, 0x31
/* 2D764 8003CF64 D4B9000C */  jal        FUN_8002e750
/* 2D768 8003CF68 00000000 */   nop
/* 2D76C 8003CF6C FFFF0324 */  addiu      $v1, $zero, -1
/* 2D770 8003CF70 11004314 */  bne        $v0, $v1, .L8003CFB8
/* 2D774 8003CF74 0F80063C */   lui       $a2, %hi(D_800EFFA8)
/* 2D778 8003CF78 A8FFC48C */  lw         $a0, %lo(D_800EFFA8)($a2)
/* 2D77C 8003CF7C 00000000 */  nop
/* 2D780 8003CF80 18008294 */  lhu        $v0, 0x18($a0)
/* 2D784 8003CF84 A8FFC324 */  addiu      $v1, $a2, -0x58
/* 2D788 8003CF88 02120200 */  srl        $v0, $v0, 8
/* 2D78C 8003CF8C 01004230 */  andi       $v0, $v0, 1
/* 2D790 8003CF90 04004010 */  beqz       $v0, .L8003CFA4
/* 2D794 8003CF94 5000A2AF */   sw        $v0, 0x50($sp)
/* 2D798 8003CF98 6C00628C */  lw         $v0, 0x6c($v1)
/* 2D79C 8003CF9C 0E80073C */  lui        $a3, %hi(D_800D9950)
/* 2D7A0 8003CFA0 5099E2AC */  sw         $v0, %lo(D_800D9950)($a3)
.L8003CFA4:
/* 2D7A4 8003CFA4 18008294 */  lhu        $v0, 0x18($a0)
/* 2D7A8 8003CFA8 00000000 */  nop
/* 2D7AC 8003CFAC 42120200 */  srl        $v0, $v0, 9
/* 2D7B0 8003CFB0 F9F30008 */  j          .L8003CFE4
/* 2D7B4 8003CFB4 01004230 */   andi      $v0, $v0, 1
.L8003CFB8:
/* 2D7B8 8003CFB8 D8B9000C */  jal        FUN_8002e760
/* 2D7BC 8003CFBC 21200000 */   addu      $a0, $zero, $zero
/* 2D7C0 8003CFC0 06004010 */  beqz       $v0, .L8003CFDC
/* 2D7C4 8003CFC4 5000A2AF */   sw        $v0, 0x50($sp)
/* 2D7C8 8003CFC8 0F80083C */  lui        $t0, %hi(D_800EFFA8)
/* 2D7CC 8003CFCC A8FF0225 */  addiu      $v0, $t0, %lo(D_800EFFA8)
/* 2D7D0 8003CFD0 6C00438C */  lw         $v1, 0x6c($v0)
/* 2D7D4 8003CFD4 0E80023C */  lui        $v0, %hi(D_800D9950)
/* 2D7D8 8003CFD8 509943AC */  sw         $v1, %lo(D_800D9950)($v0)
.L8003CFDC:
/* 2D7DC 8003CFDC D8B9000C */  jal        FUN_8002e760
/* 2D7E0 8003CFE0 01000424 */   addiu     $a0, $zero, 1
.L8003CFE4:
/* 2D7E4 8003CFE4 5400A2AF */  sw         $v0, 0x54($sp)
/* 2D7E8 8003CFE8 0E80033C */  lui        $v1, %hi(D_800D9950)
/* 2D7EC 8003CFEC 5099648C */  lw         $a0, %lo(D_800D9950)($v1)
/* 2D7F0 8003CFF0 00000000 */  nop
/* 2D7F4 8003CFF4 11008010 */  beqz       $a0, .L8003D03C
/* 2D7F8 8003CFF8 0F80053C */   lui       $a1, %hi(D_800EFFA8)
/* 2D7FC 8003CFFC A8FFA224 */  addiu      $v0, $a1, %lo(D_800EFFA8)
/* 2D800 8003D000 6C00458C */  lw         $a1, 0x6c($v0)
/* 2D804 8003D004 00000000 */  nop
/* 2D808 8003D008 2B18A400 */  sltu       $v1, $a1, $a0
/* 2D80C 8003D00C 02006010 */  beqz       $v1, .L8003D018
/* 2D810 8003D010 0E80063C */   lui       $a2, %hi(D_800D9950)
/* 2D814 8003D014 5099C0AC */  sw         $zero, %lo(D_800D9950)($a2)
.L8003D018:
/* 2D818 8003D018 0E80073C */  lui        $a3, %hi(D_800D9950)
/* 2D81C 8003D01C 5099E28C */  lw         $v0, %lo(D_800D9950)($a3)
/* 2D820 8003D020 00000000 */  nop
/* 2D824 8003D024 2310A200 */  subu       $v0, $a1, $v0
/* 2D828 8003D028 1500422C */  sltiu      $v0, $v0, 0x15
/* 2D82C 8003D02C 02004014 */  bnez       $v0, .L8003D038
/* 2D830 8003D030 01000224 */   addiu     $v0, $zero, 1
/* 2D834 8003D034 5099E0AC */  sw         $zero, -0x66b0($a3)
.L8003D038:
/* 2D838 8003D038 5000A2AF */  sw         $v0, 0x50($sp)
.L8003D03C:
/* 2D83C 8003D03C 5000A28F */  lw         $v0, 0x50($sp)
/* 2D840 8003D040 00000000 */  nop
/* 2D844 8003D044 03004010 */  beqz       $v0, .L8003D054
/* 2D848 8003D048 0180023C */   lui       $v0, %hi(D_80012CA4)
/* 2D84C 8003D04C 17F40008 */  j          .L8003D05C
/* 2D850 8003D050 A42C4524 */   addiu     $a1, $v0, %lo(D_80012CA4)
.L8003D054:
/* 2D854 8003D054 0180023C */  lui        $v0, %hi(D_80012C94)
/* 2D858 8003D058 942C4524 */  addiu      $a1, $v0, %lo(D_80012C94)
.L8003D05C:
/* 2D85C 8003D05C 6801A48F */  lw         $a0, 0x168($sp)
/* 2D860 8003D060 057C000C */  jal        strcpy
/* 2D864 8003D064 00000000 */   nop
/* 2D868 8003D068 5400A38F */  lw         $v1, 0x54($sp)
/* 2D86C 8003D06C 00000000 */  nop
/* 2D870 8003D070 03006010 */  beqz       $v1, .L8003D080
/* 2D874 8003D074 0180023C */   lui       $v0, %hi(D_80012CA4)
/* 2D878 8003D078 22F40008 */  j          .L8003D088
/* 2D87C 8003D07C A42C4524 */   addiu     $a1, $v0, %lo(D_80012CA4)
.L8003D080:
/* 2D880 8003D080 0180023C */  lui        $v0, %hi(D_80012C94)
/* 2D884 8003D084 942C4524 */  addiu      $a1, $v0, %lo(D_80012C94)
.L8003D088:
/* 2D888 8003D088 6C01A48F */  lw         $a0, 0x16c($sp)
/* 2D88C 8003D08C 057C000C */  jal        strcpy
/* 2D890 8003D090 00101124 */   addiu     $s1, $zero, 0x1000
/* 2D894 8003D094 21200000 */  addu       $a0, $zero, $zero
/* 2D898 8003D098 A0FF0524 */  addiu      $a1, $zero, -0x60
/* 2D89C 8003D09C 02000624 */  addiu      $a2, $zero, 2
/* 2D8A0 8003D0A0 00100724 */  addiu      $a3, $zero, 0x1000
/* 2D8A4 8003D0A4 0180023C */  lui        $v0, %hi(D_80012CE4)
/* 2D8A8 8003D0A8 E42C4224 */  addiu      $v0, $v0, %lo(D_80012CE4)
/* 2D8AC 8003D0AC 1000B1AF */  sw         $s1, 0x10($sp)
/* 2D8B0 8003D0B0 290A010C */  jal        PrintText_800428a4
/* 2D8B4 8003D0B4 1400A2AF */   sw        $v0, 0x14($sp)
/* 2D8B8 8003D0B8 38000524 */  addiu      $a1, $zero, 0x38
/* 2D8BC 8003D0BC 02000624 */  addiu      $a2, $zero, 2
/* 2D8C0 8003D0C0 4C00A48F */  lw         $a0, 0x4c($sp)
/* 2D8C4 8003D0C4 6401A88F */  lw         $t0, 0x164($sp)
/* 2D8C8 8003D0C8 00100724 */  addiu      $a3, $zero, 0x1000
/* 2D8CC 8003D0CC 1000B1AF */  sw         $s1, 0x10($sp)
/* 2D8D0 8003D0D0 2B200400 */  sltu       $a0, $zero, $a0
/* 2D8D4 8003D0D4 40200400 */  sll        $a0, $a0, 1
/* 2D8D8 8003D0D8 290A010C */  jal        PrintText_800428a4
/* 2D8DC 8003D0DC 1400A8AF */   sw        $t0, 0x14($sp)
/* 2D8E0 8003D0E0 21200000 */  addu       $a0, $zero, $zero
/* 2D8E4 8003D0E4 A0FF0524 */  addiu      $a1, $zero, -0x60
/* 2D8E8 8003D0E8 0A000624 */  addiu      $a2, $zero, 0xa
/* 2D8EC 8003D0EC 00100724 */  addiu      $a3, $zero, 0x1000
/* 2D8F0 8003D0F0 0180023C */  lui        $v0, %hi(D_80012CF4)
/* 2D8F4 8003D0F4 F42C4224 */  addiu      $v0, $v0, %lo(D_80012CF4)
/* 2D8F8 8003D0F8 1000B1AF */  sw         $s1, 0x10($sp)
/* 2D8FC 8003D0FC 290A010C */  jal        PrintText_800428a4
/* 2D900 8003D100 1400A2AF */   sw        $v0, 0x14($sp)
/* 2D904 8003D104 38000524 */  addiu      $a1, $zero, 0x38
/* 2D908 8003D108 0A000624 */  addiu      $a2, $zero, 0xa
/* 2D90C 8003D10C 5000A48F */  lw         $a0, 0x50($sp)
/* 2D910 8003D110 6801A28F */  lw         $v0, 0x168($sp)
/* 2D914 8003D114 00100724 */  addiu      $a3, $zero, 0x1000
/* 2D918 8003D118 1000B1AF */  sw         $s1, 0x10($sp)
/* 2D91C 8003D11C 2B200400 */  sltu       $a0, $zero, $a0
/* 2D920 8003D120 40200400 */  sll        $a0, $a0, 1
/* 2D924 8003D124 290A010C */  jal        PrintText_800428a4
/* 2D928 8003D128 1400A2AF */   sw        $v0, 0x14($sp)
/* 2D92C 8003D12C 7CAA000C */  jal        vsync_8002a9f0
/* 2D930 8003D130 00000000 */   nop
/* 2D934 8003D134 21200000 */  addu       $a0, $zero, $zero
/* 2D938 8003D138 A0FF0524 */  addiu      $a1, $zero, -0x60
/* 2D93C 8003D13C 0F80033C */  lui        $v1, %hi(D_800EFFA8)
/* 2D940 8003D140 1A000624 */  addiu      $a2, $zero, 0x1a
/* 2D944 8003D144 A8FF628C */  lw         $v0, %lo(D_800EFFA8)($v1)
/* 2D948 8003D148 00100724 */  addiu      $a3, $zero, 0x1000
/* 2D94C 8003D14C 18005094 */  lhu        $s0, 0x18($v0)
/* 2D950 8003D150 0180023C */  lui        $v0, %hi(D_80012D08)
/* 2D954 8003D154 082D4224 */  addiu      $v0, $v0, %lo(D_80012D08)
/* 2D958 8003D158 1000B1AF */  sw         $s1, 0x10($sp)
/* 2D95C 8003D15C 1400A2AF */  sw         $v0, 0x14($sp)
/* 2D960 8003D160 82821000 */  srl        $s0, $s0, 0xa
/* 2D964 8003D164 290A010C */  jal        PrintText_800428a4
/* 2D968 8003D168 01001032 */   andi      $s0, $s0, 1
/* 2D96C 8003D16C 40201000 */  sll        $a0, $s0, 1
/* 2D970 8003D170 04000012 */  beqz       $s0, .L8003D184
/* 2D974 8003D174 1000B1AF */   sw        $s1, 0x10($sp)
/* 2D978 8003D178 0180023C */  lui        $v0, %hi(D_80012CA4)
/* 2D97C 8003D17C 63F40008 */  j          .L8003D18C
/* 2D980 8003D180 A42C4224 */   addiu     $v0, $v0, %lo(D_80012CA4)
.L8003D184:
/* 2D984 8003D184 0180023C */  lui        $v0, %hi(D_80012C94)
/* 2D988 8003D188 942C4224 */  addiu      $v0, $v0, %lo(D_80012C94)
.L8003D18C:
/* 2D98C 8003D18C 21280000 */  addu       $a1, $zero, $zero
/* 2D990 8003D190 1A000624 */  addiu      $a2, $zero, 0x1a
/* 2D994 8003D194 00100724 */  addiu      $a3, $zero, 0x1000
/* 2D998 8003D198 290A010C */  jal        PrintText_800428a4
/* 2D99C 8003D19C 1400A2AF */   sw        $v0, 0x14($sp)
/* 2D9A0 8003D1A0 7CAA000C */  jal        vsync_8002a9f0
/* 2D9A4 8003D1A4 00101024 */   addiu     $s0, $zero, 0x1000
/* 2D9A8 8003D1A8 7CAA000C */  jal        vsync_8002a9f0
/* 2D9AC 8003D1AC 00000000 */   nop
/* 2D9B0 8003D1B0 21200000 */  addu       $a0, $zero, $zero
/* 2D9B4 8003D1B4 DCFF0524 */  addiu      $a1, $zero, -0x24
/* 2D9B8 8003D1B8 A2FF0624 */  addiu      $a2, $zero, -0x5e
/* 2D9BC 8003D1BC 00100724 */  addiu      $a3, $zero, 0x1000
/* 2D9C0 8003D1C0 0180023C */  lui        $v0, %hi(D_80012D14)
/* 2D9C4 8003D1C4 142D4224 */  addiu      $v0, $v0, %lo(D_80012D14)
/* 2D9C8 8003D1C8 1000B0AF */  sw         $s0, 0x10($sp)
/* 2D9CC 8003D1CC 290A010C */  jal        PrintText_800428a4
/* 2D9D0 8003D1D0 1400A2AF */   sw        $v0, 0x14($sp)
/* 2D9D4 8003D1D4 21200000 */  addu       $a0, $zero, $zero
/* 2D9D8 8003D1D8 90FF0524 */  addiu      $a1, $zero, -0x70
/* 2D9DC 8003D1DC 60000624 */  addiu      $a2, $zero, 0x60
/* 2D9E0 8003D1E0 00100724 */  addiu      $a3, $zero, 0x1000
/* 2D9E4 8003D1E4 0180023C */  lui        $v0, %hi(D_80012D20)
/* 2D9E8 8003D1E8 202D4224 */  addiu      $v0, $v0, %lo(D_80012D20)
/* 2D9EC 8003D1EC 1000B0AF */  sw         $s0, 0x10($sp)
/* 2D9F0 8003D1F0 290A010C */  jal        PrintText_800428a4
/* 2D9F4 8003D1F4 1400A2AF */   sw        $v0, 0x14($sp)
/* 2D9F8 8003D1F8 21200000 */  addu       $a0, $zero, $zero
/* 2D9FC 8003D1FC 90FF0524 */  addiu      $a1, $zero, -0x70
/* 2DA00 8003D200 68000624 */  addiu      $a2, $zero, 0x68
/* 2DA04 8003D204 00100724 */  addiu      $a3, $zero, 0x1000
/* 2DA08 8003D208 0180023C */  lui        $v0, %hi(D_80012D38)
/* 2DA0C 8003D20C 382D4224 */  addiu      $v0, $v0, %lo(D_80012D38)
/* 2DA10 8003D210 1000B0AF */  sw         $s0, 0x10($sp)
/* 2DA14 8003D214 290A010C */  jal        PrintText_800428a4
/* 2DA18 8003D218 1400A2AF */   sw        $v0, 0x14($sp)
/* 2DA1C 8003D21C AC01BF8F */  lw         $ra, 0x1ac($sp)
/* 2DA20 8003D220 A801BE8F */  lw         $fp, 0x1a8($sp)
/* 2DA24 8003D224 A401B78F */  lw         $s7, 0x1a4($sp)
/* 2DA28 8003D228 A001B68F */  lw         $s6, 0x1a0($sp)
/* 2DA2C 8003D22C 9C01B58F */  lw         $s5, 0x19c($sp)
/* 2DA30 8003D230 9801B48F */  lw         $s4, 0x198($sp)
/* 2DA34 8003D234 9401B38F */  lw         $s3, 0x194($sp)
/* 2DA38 8003D238 9001B28F */  lw         $s2, 0x190($sp)
/* 2DA3C 8003D23C 8C01B18F */  lw         $s1, 0x18c($sp)
/* 2DA40 8003D240 8801B08F */  lw         $s0, 0x188($sp)
/* 2DA44 8003D244 0800E003 */  jr         $ra
/* 2DA48 8003D248 B001BD27 */   addiu     $sp, $sp, 0x1b0
