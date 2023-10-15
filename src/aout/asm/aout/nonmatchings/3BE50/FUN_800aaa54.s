.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches


glabel FUN_800aaa54
/* 9B254 800AAA54 C0FFBD27 */  addiu      $sp, $sp, -0x40
/* 9B258 800AAA58 3400B5AF */  sw         $s5, 0x34($sp)
/* 9B25C 800AAA5C 21A80000 */  addu       $s5, $zero, $zero
/* 9B260 800AAA60 2000B0AF */  sw         $s0, 0x20($sp)
/* 9B264 800AAA64 21808000 */  addu       $s0, $a0, $zero
/* 9B268 800AAA68 3000B4AF */  sw         $s4, 0x30($sp)
/* 9B26C 800AAA6C 21A0A000 */  addu       $s4, $a1, $zero
/* 9B270 800AAA70 2C00B3AF */  sw         $s3, 0x2c($sp)
/* 9B274 800AAA74 0100932E */  sltiu      $s3, $s4, 1
/* 9B278 800AAA78 3800BFAF */  sw         $ra, 0x38($sp)
/* 9B27C 800AAA7C 2800B2AF */  sw         $s2, 0x28($sp)
/* 9B280 800AAA80 42008012 */  beqz       $s4, .L800AAB8C
/* 9B284 800AAA84 2400B1AF */   sw        $s1, 0x24($sp)
/* 9B288 800AAA88 21208002 */  addu       $a0, $s4, $zero
/* 9B28C 800AAA8C 8000828C */  lw         $v0, 0x80($a0)
/* 9B290 800AAA90 80009124 */  addiu      $s1, $a0, 0x80
/* 9B294 800AAA94 1000A2AF */  sw         $v0, 0x10($sp)
/* 9B298 800AAA98 0400228E */  lw         $v0, 4($s1)
/* 9B29C 800AAA9C 00000000 */  nop
/* 9B2A0 800AAAA0 1400A2AF */  sw         $v0, 0x14($sp)
/* 9B2A4 800AAAA4 0800238E */  lw         $v1, 8($s1)
/* 9B2A8 800AAAA8 00000000 */  nop
/* 9B2AC 800AAAAC 1800A3AF */  sw         $v1, 0x18($sp)
/* 9B2B0 800AAAB0 0C00228E */  lw         $v0, 0xc($s1)
/* 9B2B4 800AAAB4 40009224 */  addiu      $s2, $a0, 0x40
/* 9B2B8 800AAAB8 7470000C */  jal        getcoinslot1_8001c1d0
/* 9B2BC 800AAABC 1C00A2AF */   sw        $v0, 0x1c($sp)
/* 9B2C0 800AAAC0 0D004010 */  beqz       $v0, .L800AAAF8
/* 9B2C4 800AAAC4 1C80033C */   lui       $v1, 0x801c
/* 9B2C8 800AAAC8 04002392 */  lbu        $v1, 4($s1)
/* 9B2CC 800AAACC 03000224 */  addiu      $v0, $zero, 3
/* 9B2D0 800AAAD0 08006214 */  bne        $v1, $v0, .L800AAAF4
/* 9B2D4 800AAAD4 00000000 */   nop
/* 9B2D8 800AAAD8 06004292 */  lbu        $v0, 6($s2)
/* 9B2DC 800AAADC 00000000 */  nop
/* 9B2E0 800AAAE0 05004314 */  bne        $v0, $v1, .L800AAAF8
/* 9B2E4 800AAAE4 1C80033C */   lui       $v1, 0x801c
/* 9B2E8 800AAAE8 02000224 */  addiu      $v0, $zero, 2
/* 9B2EC 800AAAEC 040022A2 */  sb         $v0, 4($s1)
/* 9B2F0 800AAAF0 060042A2 */  sb         $v0, 6($s2)
.L800AAAF4:
/* 9B2F4 800AAAF4 1C80033C */  lui        $v1, %hi(D_801BFBB8)
.L800AAAF8:
/* 9B2F8 800AAAF8 B8FB6424 */  addiu      $a0, $v1, %lo(D_801BFBB8)
/* 9B2FC 800AAAFC 40281000 */  sll        $a1, $s0, 1
/* 9B300 800AAB00 2110B000 */  addu       $v0, $a1, $s0
/* 9B304 800AAB04 C0100200 */  sll        $v0, $v0, 3
/* 9B308 800AAB08 21104400 */  addu       $v0, $v0, $a0
/* 9B30C 800AAB0C 21306000 */  addu       $a2, $v1, $zero
/* 9B310 800AAB10 0F004480 */  lb         $a0, 0xf($v0)
/* 9B314 800AAB14 04002392 */  lbu        $v1, 4($s1)
/* 9B318 800AAB18 00000000 */  nop
/* 9B31C 800AAB1C 02008314 */  bne        $a0, $v1, .L800AAB28
/* 9B320 800AAB20 01000224 */   addiu     $v0, $zero, 1
/* 9B324 800AAB24 FF006232 */  andi       $v0, $s3, 0xff
.L800AAB28:
/* 9B328 800AAB28 21904000 */  addu       $s2, $v0, $zero
/* 9B32C 800AAB2C B8FBC224 */  addiu      $v0, $a2, -0x448
/* 9B330 800AAB30 2180B000 */  addu       $s0, $a1, $s0
/* 9B334 800AAB34 C0801000 */  sll        $s0, $s0, 3
/* 9B338 800AAB38 14004224 */  addiu      $v0, $v0, 0x14
/* 9B33C 800AAB3C 08002486 */  lh         $a0, 8($s1)
/* 9B340 800AAB40 3DA5020C */  jal        FUN_800a94f4
/* 9B344 800AAB44 21800202 */   addu      $s0, $s0, $v0
/* 9B348 800AAB48 0FA2020C */  jal        FUN_800a883c
/* 9B34C 800AAB4C 21204000 */   addu      $a0, $v0, $zero
/* 9B350 800AAB50 0000038E */  lw         $v1, ($s0)
/* 9B354 800AAB54 00000000 */  nop
/* 9B358 800AAB58 02006214 */  bne        $v1, $v0, .L800AAB64
/* 9B35C 800AAB5C 01000324 */   addiu     $v1, $zero, 1
/* 9B360 800AAB60 FF004332 */  andi       $v1, $s2, 0xff
.L800AAB64:
/* 9B364 800AAB64 0B002292 */  lbu        $v0, 0xb($s1)
/* 9B368 800AAB68 00000000 */  nop
/* 9B36C 800AAB6C 02004230 */  andi       $v0, $v0, 2
/* 9B370 800AAB70 02004010 */  beqz       $v0, .L800AAB7C
/* 9B374 800AAB74 21906000 */   addu      $s2, $v1, $zero
/* 9B378 800AAB78 9000958E */  lw         $s5, 0x90($s4)
.L800AAB7C:
/* 9B37C 800AAB7C 00000000 */  nop
/* 9B380 800AAB80 0300A232 */  andi       $v0, $s5, 3
/* 9B384 800AAB84 03004010 */  beqz       $v0, .L800AAB94
/* 9B388 800AAB88 00000000 */   nop
.L800AAB8C:
/* 9B38C 800AAB8C FFAA0208 */  j          .L800AABFC
/* 9B390 800AAB90 21100000 */   addu      $v0, $zero, $zero
.L800AAB94:
/* 9B394 800AAB94 0000228E */  lw         $v0, ($s1)
/* 9B398 800AAB98 1000A326 */  addiu      $v1, $s5, 0x10
/* 9B39C 800AAB9C 23104300 */  subu       $v0, $v0, $v1
/* 9B3A0 800AABA0 40100200 */  sll        $v0, $v0, 1
/* 9B3A4 800AABA4 EC0F422C */  sltiu      $v0, $v0, 0xfec
/* 9B3A8 800AABA8 03004014 */  bnez       $v0, .L800AABB8
/* 9B3AC 800AABAC FF004532 */   andi      $a1, $s2, 0xff
/* 9B3B0 800AABB0 01004236 */  ori        $v0, $s2, 1
/* 9B3B4 800AABB4 FF004530 */  andi       $a1, $v0, 0xff
.L800AABB8:
/* 9B3B8 800AABB8 8000A326 */  addiu      $v1, $s5, 0x80
/* 9B3BC 800AABBC 1000A28F */  lw         $v0, 0x10($sp)
/* 9B3C0 800AABC0 21208302 */  addu       $a0, $s4, $v1
/* 9B3C4 800AABC4 23105500 */  subu       $v0, $v0, $s5
/* 9B3C8 800AABC8 1000A2AF */  sw         $v0, 0x10($sp)
/* 9B3CC 800AABCC 000082AC */  sw         $v0, ($a0)
/* 9B3D0 800AABD0 1400A38F */  lw         $v1, 0x14($sp)
/* 9B3D4 800AABD4 00000000 */  nop
/* 9B3D8 800AABD8 040083AC */  sw         $v1, 4($a0)
/* 9B3DC 800AABDC 1800A28F */  lw         $v0, 0x18($sp)
/* 9B3E0 800AABE0 00000000 */  nop
/* 9B3E4 800AABE4 080082AC */  sw         $v0, 8($a0)
/* 9B3E8 800AABE8 1C00A38F */  lw         $v1, 0x1c($sp)
/* 9B3EC 800AABEC 21100000 */  addu       $v0, $zero, $zero
/* 9B3F0 800AABF0 0200A014 */  bnez       $a1, .L800AABFC
/* 9B3F4 800AABF4 0C0083AC */   sw        $v1, 0xc($a0)
/* 9B3F8 800AABF8 21108000 */  addu       $v0, $a0, $zero
.L800AABFC:
/* 9B3FC 800AABFC 3800BF8F */  lw         $ra, 0x38($sp)
/* 9B400 800AAC00 3400B58F */  lw         $s5, 0x34($sp)
/* 9B404 800AAC04 3000B48F */  lw         $s4, 0x30($sp)
/* 9B408 800AAC08 2C00B38F */  lw         $s3, 0x2c($sp)
/* 9B40C 800AAC0C 2800B28F */  lw         $s2, 0x28($sp)
/* 9B410 800AAC10 2400B18F */  lw         $s1, 0x24($sp)
/* 9B414 800AAC14 2000B08F */  lw         $s0, 0x20($sp)
/* 9B418 800AAC18 0800E003 */  jr         $ra
/* 9B41C 800AAC1C 4000BD27 */   addiu     $sp, $sp, 0x40
