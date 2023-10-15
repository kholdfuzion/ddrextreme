.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches


glabel FUN_8004c880
/* 3D080 8004C880 98FFBD27 */  addiu      $sp, $sp, -0x68
/* 3D084 8004C884 80000224 */  addiu      $v0, $zero, 0x80
/* 3D088 8004C888 3400A2AF */  sw         $v0, 0x34($sp)
/* 3D08C 8004C88C 1380023C */  lui        $v0, %hi(D_80128165)
/* 3D090 8004C890 8000A88F */  lw         $t0, 0x80($sp)
/* 3D094 8004C894 65814490 */  lbu        $a0, %lo(D_80128165)($v0)
/* 3D098 8004C898 4800B2AF */  sw         $s2, 0x48($sp)
/* 3D09C 8004C89C 7800B28F */  lw         $s2, 0x78($sp)
/* 3D0A0 8004C8A0 21500000 */  addu       $t2, $zero, $zero
/* 3D0A4 8004C8A4 4C00B3AF */  sw         $s3, 0x4c($sp)
/* 3D0A8 8004C8A8 7C00B38F */  lw         $s3, 0x7c($sp)
/* 3D0AC 8004C8AC 1380023C */  lui        $v0, %hi(D_801282E0)
/* 3D0B0 8004C8B0 6000BEAF */  sw         $fp, 0x60($sp)
/* 3D0B4 8004C8B4 8800BE8F */  lw         $fp, 0x88($sp)
/* 3D0B8 8004C8B8 E0824224 */  addiu      $v0, $v0, %lo(D_801282E0)
/* 3D0BC 8004C8BC 6400BFAF */  sw         $ra, 0x64($sp)
/* 3D0C0 8004C8C0 5C00B7AF */  sw         $s7, 0x5c($sp)
/* 3D0C4 8004C8C4 5800B6AF */  sw         $s6, 0x58($sp)
/* 3D0C8 8004C8C8 5400B5AF */  sw         $s5, 0x54($sp)
/* 3D0CC 8004C8CC 5000B4AF */  sw         $s4, 0x50($sp)
/* 3D0D0 8004C8D0 4400B1AF */  sw         $s1, 0x44($sp)
/* 3D0D4 8004C8D4 4000B0AF */  sw         $s0, 0x40($sp)
/* 3D0D8 8004C8D8 3800A0AF */  sw         $zero, 0x38($sp)
/* 3D0DC 8004C8DC 6C00A5AF */  sw         $a1, 0x6c($sp)
/* 3D0E0 8004C8E0 7000A6AF */  sw         $a2, 0x70($sp)
/* 3D0E4 8004C8E4 7400A7AF */  sw         $a3, 0x74($sp)
/* 3D0E8 8004C8E8 C0180400 */  sll        $v1, $a0, 3
/* 3D0EC 8004C8EC 23186400 */  subu       $v1, $v1, $a0
/* 3D0F0 8004C8F0 80180300 */  sll        $v1, $v1, 2
/* 3D0F4 8004C8F4 21186200 */  addu       $v1, $v1, $v0
/* 3D0F8 8004C8F8 8C00A48F */  lw         $a0, 0x8c($sp)
/* 3D0FC 8004C8FC 04006584 */  lh         $a1, 4($v1)
/* 3D100 8004C900 02000105 */  bgez       $t0, .L8004C90C
/* 3D104 8004C904 21480001 */   addu      $t1, $t0, $zero
/* 3D108 8004C908 03000925 */  addiu      $t1, $t0, 3
.L8004C90C:
/* 3D10C 8004C90C 83100900 */  sra        $v0, $t1, 2
/* 3D110 8004C910 80100200 */  sll        $v0, $v0, 2
/* 3D114 8004C914 23100201 */  subu       $v0, $t0, $v0
/* 3D118 8004C918 40110200 */  sll        $v0, $v0, 5
/* 3D11C 8004C91C 16006684 */  lh         $a2, 0x16($v1)
/* 3D120 8004C920 21A8A200 */  addu       $s5, $a1, $v0
/* 3D124 8004C924 3000A6AF */  sw         $a2, 0x30($sp)
/* 3D128 8004C928 06007484 */  lh         $s4, 6($v1)
/* 3D12C 8004C92C 18007684 */  lh         $s6, 0x18($v1)
/* 3D130 8004C930 1F008004 */  bltz       $a0, .L8004C9B0
/* 3D134 8004C934 F000D724 */   addiu     $s7, $a2, 0xf0
/* 3D138 8004C938 C0008010 */  beqz       $a0, .L8004CC3C
/* 3D13C 8004C93C 80008228 */   slti      $v0, $a0, 0x80
/* 3D140 8004C940 07004010 */  beqz       $v0, .L8004C960
/* 3D144 8004C944 40180400 */   sll       $v1, $a0, 1
/* 3D148 8004C948 3400A0AF */  sw         $zero, 0x34($sp)
/* 3D14C 8004C94C 21186400 */  addu       $v1, $v1, $a0
/* 3D150 8004C950 00110300 */  sll        $v0, $v1, 4
/* 3D154 8004C954 23104300 */  subu       $v0, $v0, $v1
/* 3D158 8004C958 61320108 */  j          .L8004C984
/* 3D15C 8004C95C 80100200 */   sll       $v0, $v0, 2
.L8004C960:
/* 3D160 8004C960 01018228 */  slti       $v0, $a0, 0x101
/* 3D164 8004C964 0D004010 */  beqz       $v0, .L8004C99C
/* 3D168 8004C968 00010224 */   addiu     $v0, $zero, 0x100
/* 3D16C 8004C96C 23104400 */  subu       $v0, $v0, $a0
/* 3D170 8004C970 40200200 */  sll        $a0, $v0, 1
/* 3D174 8004C974 21208200 */  addu       $a0, $a0, $v0
/* 3D178 8004C978 00190400 */  sll        $v1, $a0, 4
/* 3D17C 8004C97C 23186400 */  subu       $v1, $v1, $a0
/* 3D180 8004C980 80100300 */  sll        $v0, $v1, 2
.L8004C984:
/* 3D184 8004C984 02004104 */  bgez       $v0, .L8004C990
/* 3D188 8004C988 00000000 */   nop
/* 3D18C 8004C98C 7F004224 */  addiu      $v0, $v0, 0x7f
.L8004C990:
/* 3D190 8004C990 C3110200 */  sra        $v0, $v0, 7
/* 3D194 8004C994 6C320108 */  j          .L8004C9B0
/* 3D198 8004C998 3800A2AF */   sw        $v0, 0x38($sp)
.L8004C99C:
/* 3D19C 8004C99C 81018228 */  slti       $v0, $a0, 0x181
/* 3D1A0 8004C9A0 03004010 */  beqz       $v0, .L8004C9B0
/* 3D1A4 8004C9A4 81010224 */   addiu     $v0, $zero, 0x181
/* 3D1A8 8004C9A8 23104400 */  subu       $v0, $v0, $a0
/* 3D1AC 8004C9AC 3400A2AF */  sw         $v0, 0x34($sp)
.L8004C9B0:
/* 3D1B0 8004C9B0 FFFFC227 */  addiu      $v0, $fp, -1
/* 3D1B4 8004C9B4 0200422C */  sltiu      $v0, $v0, 2
/* 3D1B8 8004C9B8 36004010 */  beqz       $v0, .L8004CA94
/* 3D1BC 8004C9BC 01000824 */   addiu     $t0, $zero, 1
/* 3D1C0 8004C9C0 0200C817 */  bne        $fp, $t0, .L8004C9CC
/* 3D1C4 8004C9C4 D0FF1124 */   addiu     $s1, $zero, -0x30
/* 3D1C8 8004C9C8 21880000 */  addu       $s1, $zero, $zero
.L8004C9CC:
/* 3D1CC 8004C9CC 2A105102 */  slt        $v0, $s2, $s1
/* 3D1D0 8004C9D0 1A004010 */  beqz       $v0, .L8004CA3C
/* 3D1D4 8004C9D4 20006326 */   addiu     $v1, $s3, 0x20
/* 3D1D8 8004C9D8 21184302 */  addu       $v1, $s2, $v1
/* 3D1DC 8004C9DC E0FF2226 */  addiu      $v0, $s1, -0x20
/* 3D1E0 8004C9E0 2A104300 */  slt        $v0, $v0, $v1
/* 3D1E4 8004C9E4 16004010 */  beqz       $v0, .L8004CA40
/* 3D1E8 8004C9E8 20002226 */   addiu     $v0, $s1, 0x20
/* 3D1EC 8004C9EC 3400A28F */  lw         $v0, 0x34($sp)
/* 3D1F0 8004C9F0 00000000 */  nop
/* 3D1F4 8004C9F4 10004010 */  beqz       $v0, .L8004CA38
/* 3D1F8 8004C9F8 21304002 */   addu      $a2, $s2, $zero
/* 3D1FC 8004C9FC 1780103C */  lui        $s0, %hi(D_8016F9D8)
/* 3D200 8004CA00 21386002 */  addu       $a3, $s3, $zero
/* 3D204 8004CA04 7400A58F */  lw         $a1, 0x74($sp)
/* 3D208 8004CA08 D8F9048E */  lw         $a0, %lo(D_8016F9D8)($s0)
/* 3D20C 8004CA0C 05000224 */  addiu      $v0, $zero, 5
/* 3D210 8004CA10 1000A8AF */  sw         $t0, 0x10($sp)
/* 3D214 8004CA14 1400B1AF */  sw         $s1, 0x14($sp)
/* 3D218 8004CA18 1800A2AF */  sw         $v0, 0x18($sp)
/* 3D21C 8004CA1C 1C00B5AF */  sw         $s5, 0x1c($sp)
/* 3D220 8004CA20 2000B4AF */  sw         $s4, 0x20($sp)
/* 3D224 8004CA24 2400B7AF */  sw         $s7, 0x24($sp)
/* 3D228 8004CA28 2800B6AF */  sw         $s6, 0x28($sp)
/* 3D22C 8004CA2C 3B30010C */  jal        FUN_8004c0ec
/* 3D230 8004CA30 2C00A8AF */   sw        $t0, 0x2c($sp)
/* 3D234 8004CA34 D8F902AE */  sw         $v0, -0x628($s0)
.L8004CA38:
/* 3D238 8004CA38 01000A24 */  addiu      $t2, $zero, 1
.L8004CA3C:
/* 3D23C 8004CA3C 20002226 */  addiu      $v0, $s1, 0x20
.L8004CA40:
/* 3D240 8004CA40 2A104202 */  slt        $v0, $s2, $v0
/* 3D244 8004CA44 47004010 */  beqz       $v0, .L8004CB64
/* 3D248 8004CA48 20006226 */   addiu     $v0, $s3, 0x20
/* 3D24C 8004CA4C 21104202 */  addu       $v0, $s2, $v0
/* 3D250 8004CA50 2A102202 */  slt        $v0, $s1, $v0
/* 3D254 8004CA54 43004010 */  beqz       $v0, .L8004CB64
/* 3D258 8004CA58 00000000 */   nop
/* 3D25C 8004CA5C 3400A38F */  lw         $v1, 0x34($sp)
/* 3D260 8004CA60 00000000 */  nop
/* 3D264 8004CA64 3B006010 */  beqz       $v1, .L8004CB54
/* 3D268 8004CA68 21304002 */   addu      $a2, $s2, $zero
/* 3D26C 8004CA6C 1780103C */  lui        $s0, %hi(D_8016F9D8)
/* 3D270 8004CA70 21386002 */  addu       $a3, $s3, $zero
/* 3D274 8004CA74 7400A58F */  lw         $a1, 0x74($sp)
/* 3D278 8004CA78 D8F9048E */  lw         $a0, %lo(D_8016F9D8)($s0)
/* 3D27C 8004CA7C 05000224 */  addiu      $v0, $zero, 5
/* 3D280 8004CA80 1800A2AF */  sw         $v0, 0x18($sp)
/* 3D284 8004CA84 01000224 */  addiu      $v0, $zero, 1
/* 3D288 8004CA88 1000A0AF */  sw         $zero, 0x10($sp)
/* 3D28C 8004CA8C CE320108 */  j          .L8004CB38
/* 3D290 8004CA90 1400B1AF */   sw        $s1, 0x14($sp)
.L8004CA94:
/* 3D294 8004CA94 03000224 */  addiu      $v0, $zero, 3
/* 3D298 8004CA98 1400C217 */  bne        $fp, $v0, .L8004CAEC
/* 3D29C 8004CA9C 04000224 */   addiu     $v0, $zero, 4
/* 3D2A0 8004CAA0 A2FF422A */  slti       $v0, $s2, -0x5e
/* 3D2A4 8004CAA4 65004010 */  beqz       $v0, .L8004CC3C
/* 3D2A8 8004CAA8 00000000 */   nop
/* 3D2AC 8004CAAC 3400A68F */  lw         $a2, 0x34($sp)
/* 3D2B0 8004CAB0 00000000 */  nop
/* 3D2B4 8004CAB4 2700C010 */  beqz       $a2, .L8004CB54
/* 3D2B8 8004CAB8 21304002 */   addu      $a2, $s2, $zero
/* 3D2BC 8004CABC 21386002 */  addu       $a3, $s3, $zero
/* 3D2C0 8004CAC0 1780103C */  lui        $s0, %hi(D_8016F9D8)
/* 3D2C4 8004CAC4 01000224 */  addiu      $v0, $zero, 1
/* 3D2C8 8004CAC8 7400A58F */  lw         $a1, 0x74($sp)
/* 3D2CC 8004CACC D8F9048E */  lw         $a0, %lo(D_8016F9D8)($s0)
/* 3D2D0 8004CAD0 B2FF0324 */  addiu      $v1, $zero, -0x4e
/* 3D2D4 8004CAD4 1000A2AF */  sw         $v0, 0x10($sp)
/* 3D2D8 8004CAD8 04000224 */  addiu      $v0, $zero, 4
/* 3D2DC 8004CADC 1800A2AF */  sw         $v0, 0x18($sp)
/* 3D2E0 8004CAE0 02000224 */  addiu      $v0, $zero, 2
/* 3D2E4 8004CAE4 CE320108 */  j          .L8004CB38
/* 3D2E8 8004CAE8 1400A3AF */   sw        $v1, 0x14($sp)
.L8004CAEC:
/* 3D2EC 8004CAEC 1B00C217 */  bne        $fp, $v0, .L8004CB5C
/* 3D2F0 8004CAF0 05000224 */   addiu     $v0, $zero, 5
/* 3D2F4 8004CAF4 21105302 */  addu       $v0, $s2, $s3
/* 3D2F8 8004CAF8 32004228 */  slti       $v0, $v0, 0x32
/* 3D2FC 8004CAFC 4F004014 */  bnez       $v0, .L8004CC3C
/* 3D300 8004CB00 00000000 */   nop
/* 3D304 8004CB04 3400A28F */  lw         $v0, 0x34($sp)
/* 3D308 8004CB08 00000000 */  nop
/* 3D30C 8004CB0C 11004010 */  beqz       $v0, .L8004CB54
/* 3D310 8004CB10 21304002 */   addu      $a2, $s2, $zero
/* 3D314 8004CB14 1780103C */  lui        $s0, %hi(D_8016F9D8)
/* 3D318 8004CB18 21386002 */  addu       $a3, $s3, $zero
/* 3D31C 8004CB1C 7400A58F */  lw         $a1, 0x74($sp)
/* 3D320 8004CB20 D8F9048E */  lw         $a0, %lo(D_8016F9D8)($s0)
/* 3D324 8004CB24 41000224 */  addiu      $v0, $zero, 0x41
/* 3D328 8004CB28 1400A2AF */  sw         $v0, 0x14($sp)
/* 3D32C 8004CB2C 02000224 */  addiu      $v0, $zero, 2
/* 3D330 8004CB30 1000A0AF */  sw         $zero, 0x10($sp)
/* 3D334 8004CB34 1800BEAF */  sw         $fp, 0x18($sp)
.L8004CB38:
/* 3D338 8004CB38 1C00B5AF */  sw         $s5, 0x1c($sp)
/* 3D33C 8004CB3C 2000B4AF */  sw         $s4, 0x20($sp)
/* 3D340 8004CB40 2400B7AF */  sw         $s7, 0x24($sp)
/* 3D344 8004CB44 2800B6AF */  sw         $s6, 0x28($sp)
/* 3D348 8004CB48 3B30010C */  jal        FUN_8004c0ec
/* 3D34C 8004CB4C 2C00A2AF */   sw        $v0, 0x2c($sp)
/* 3D350 8004CB50 D8F902AE */  sw         $v0, -0x628($s0)
.L8004CB54:
/* 3D354 8004CB54 D9320108 */  j          .L8004CB64
/* 3D358 8004CB58 01000A24 */   addiu     $t2, $zero, 1
.L8004CB5C:
/* 3D35C 8004CB5C 3700C213 */  beq        $fp, $v0, .L8004CC3C
/* 3D360 8004CB60 00000000 */   nop
.L8004CB64:
/* 3D364 8004CB64 3800A38F */  lw         $v1, 0x38($sp)
/* 3D368 8004CB68 00000000 */  nop
/* 3D36C 8004CB6C 16006010 */  beqz       $v1, .L8004CBC8
/* 3D370 8004CB70 00000000 */   nop
/* 3D374 8004CB74 0300C013 */  beqz       $fp, .L8004CB84
/* 3D378 8004CB78 21304002 */   addu      $a2, $s2, $zero
/* 3D37C 8004CB7C 12004011 */  beqz       $t2, .L8004CBC8
/* 3D380 8004CB80 00000000 */   nop
.L8004CB84:
/* 3D384 8004CB84 1780103C */  lui        $s0, %hi(D_8016F9D8)
/* 3D388 8004CB88 7400A58F */  lw         $a1, 0x74($sp)
/* 3D38C 8004CB8C D8F9048E */  lw         $a0, %lo(D_8016F9D8)($s0)
/* 3D390 8004CB90 3800A28F */  lw         $v0, 0x38($sp)
/* 3D394 8004CB94 21386002 */  addu       $a3, $s3, $zero
/* 3D398 8004CB98 1000A0AF */  sw         $zero, 0x10($sp)
/* 3D39C 8004CB9C 1C00B5AF */  sw         $s5, 0x1c($sp)
/* 3D3A0 8004CBA0 2000B4AF */  sw         $s4, 0x20($sp)
/* 3D3A4 8004CBA4 2400B7AF */  sw         $s7, 0x24($sp)
/* 3D3A8 8004CBA8 2800B6AF */  sw         $s6, 0x28($sp)
/* 3D3AC 8004CBAC 1400A2AF */  sw         $v0, 0x14($sp)
/* 3D3B0 8004CBB0 FFFF0224 */  addiu      $v0, $zero, -1
/* 3D3B4 8004CBB4 1800A2AF */  sw         $v0, 0x18($sp)
/* 3D3B8 8004CBB8 01000224 */  addiu      $v0, $zero, 1
/* 3D3BC 8004CBBC 3B30010C */  jal        FUN_8004c0ec
/* 3D3C0 8004CBC0 2C00A2AF */   sw        $v0, 0x2c($sp)
/* 3D3C4 8004CBC4 D8F902AE */  sw         $v0, -0x628($s0)
.L8004CBC8:
/* 3D3C8 8004CBC8 3400A38F */  lw         $v1, 0x34($sp)
/* 3D3CC 8004CBCC 00000000 */  nop
/* 3D3D0 8004CBD0 1A006010 */  beqz       $v1, .L8004CC3C
/* 3D3D4 8004CBD4 0180033C */   lui       $v1, %hi(D_80013D64)
/* 3D3D8 8004CBD8 643D6324 */  addiu      $v1, $v1, %lo(D_80013D64)
/* 3D3DC 8004CBDC 7000A28F */  lw         $v0, 0x70($sp)
/* 3D3E0 8004CBE0 7400A68F */  lw         $a2, 0x74($sp)
/* 3D3E4 8004CBE4 80800200 */  sll        $s0, $v0, 2
/* 3D3E8 8004CBE8 21180302 */  addu       $v1, $s0, $v1
/* 3D3EC 8004CBEC 1780023C */  lui        $v0, %hi(D_8016F9D0)
/* 3D3F0 8004CBF0 D0F94224 */  addiu      $v0, $v0, %lo(D_8016F9D0)
/* 3D3F4 8004CBF4 21800202 */  addu       $s0, $s0, $v0
/* 3D3F8 8004CBF8 0000648C */  lw         $a0, ($v1)
/* 3D3FC 8004CBFC 0000058E */  lw         $a1, ($s0)
/* 3D400 8004CC00 8400A28F */  lw         $v0, 0x84($sp)
/* 3D404 8004CC04 3000A38F */  lw         $v1, 0x30($sp)
/* 3D408 8004CC08 21384002 */  addu       $a3, $s2, $zero
/* 3D40C 8004CC0C 1000B3AF */  sw         $s3, 0x10($sp)
/* 3D410 8004CC10 1400BEAF */  sw         $fp, 0x14($sp)
/* 3D414 8004CC14 1800B5AF */  sw         $s5, 0x18($sp)
/* 3D418 8004CC18 1C00B4AF */  sw         $s4, 0x1c($sp)
/* 3D41C 8004CC1C 2400B6AF */  sw         $s6, 0x24($sp)
/* 3D420 8004CC20 00110200 */  sll        $v0, $v0, 4
/* 3D424 8004CC24 21106200 */  addu       $v0, $v1, $v0
/* 3D428 8004CC28 2000A2AF */  sw         $v0, 0x20($sp)
/* 3D42C 8004CC2C FFFF0224 */  addiu      $v0, $zero, -1
/* 3D430 8004CC30 4131010C */  jal        FUN_8004c504
/* 3D434 8004CC34 2800A2AF */   sw        $v0, 0x28($sp)
/* 3D438 8004CC38 000002AE */  sw         $v0, ($s0)
.L8004CC3C:
/* 3D43C 8004CC3C 6C00A28F */  lw         $v0, 0x6c($sp)
/* 3D440 8004CC40 6400BF8F */  lw         $ra, 0x64($sp)
/* 3D444 8004CC44 6000BE8F */  lw         $fp, 0x60($sp)
/* 3D448 8004CC48 5C00B78F */  lw         $s7, 0x5c($sp)
/* 3D44C 8004CC4C 5800B68F */  lw         $s6, 0x58($sp)
/* 3D450 8004CC50 5400B58F */  lw         $s5, 0x54($sp)
/* 3D454 8004CC54 5000B48F */  lw         $s4, 0x50($sp)
/* 3D458 8004CC58 4C00B38F */  lw         $s3, 0x4c($sp)
/* 3D45C 8004CC5C 4800B28F */  lw         $s2, 0x48($sp)
/* 3D460 8004CC60 4400B18F */  lw         $s1, 0x44($sp)
/* 3D464 8004CC64 4000B08F */  lw         $s0, 0x40($sp)
/* 3D468 8004CC68 0800E003 */  jr         $ra
/* 3D46C 8004CC6C 6800BD27 */   addiu     $sp, $sp, 0x68
