.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches


glabel func_800CFAC0
/* C02C0 800CFAC0 E8FFBD27 */  addiu      $sp, $sp, -0x18
/* C02C4 800CFAC4 2080053C */  lui        $a1, %hi(D_801FBD10)
/* C02C8 800CFAC8 10BDA724 */  addiu      $a3, $a1, %lo(D_801FBD10)
/* C02CC 800CFACC 1400BFAF */  sw         $ra, 0x14($sp)
/* C02D0 800CFAD0 1000B0AF */  sw         $s0, 0x10($sp)
/* C02D4 800CFAD4 D011E28C */  lw         $v0, 0x11d0($a3)
/* C02D8 800CFAD8 481F033C */  lui        $v1, 0x1f48
/* C02DC 800CFADC 01004224 */  addiu      $v0, $v0, 1
/* C02E0 800CFAE0 D011E2AC */  sw         $v0, 0x11d0($a3)
/* C02E4 800CFAE4 0E006290 */  lbu        $v0, 0xe($v1)
/* C02E8 800CFAE8 481F033C */  lui        $v1, 0x1f48
/* C02EC 800CFAEC D811E2A0 */  sb         $v0, 0x11d8($a3)
/* C02F0 800CFAF0 02006290 */  lbu        $v0, 2($v1)
/* C02F4 800CFAF4 481F033C */  lui        $v1, 0x1f48
/* C02F8 800CFAF8 D911E2A0 */  sb         $v0, 0x11d9($a3)
/* C02FC 800CFAFC 04006290 */  lbu        $v0, 4($v1)
/* C0300 800CFB00 481F033C */  lui        $v1, 0x1f48
/* C0304 800CFB04 DA11E2A0 */  sb         $v0, 0x11da($a3)
/* C0308 800CFB08 08006290 */  lbu        $v0, 8($v1)
/* C030C 800CFB0C 481F033C */  lui        $v1, 0x1f48
/* C0310 800CFB10 DC11E2A0 */  sb         $v0, 0x11dc($a3)
/* C0314 800CFB14 0A006290 */  lbu        $v0, 0xa($v1)
/* C0318 800CFB18 801F033C */  lui        $v1, 0x1f80
/* C031C 800CFB1C DD11E2A0 */  sb         $v0, 0x11dd($a3)
/* C0320 800CFB20 02000224 */  addiu      $v0, $zero, 2
/* C0324 800CFB24 302062A0 */  sb         $v0, 0x2030($v1)
/* C0328 800CFB28 DF11E490 */  lbu        $a0, 0x11df($a3)
/* C032C 800CFB2C 00000000 */  nop
/* C0330 800CFB30 4A008010 */  beqz       $a0, .L800CFC5C
/* C0334 800CFB34 2180A000 */   addu      $s0, $a1, $zero
/* C0338 800CFB38 DF11E290 */  lbu        $v0, 0x11df($a3)
/* C033C 800CFB3C 02000424 */  addiu      $a0, $zero, 2
/* C0340 800CFB40 05004410 */  beq        $v0, $a0, .L800CFB58
/* C0344 800CFB44 00000000 */   nop
/* C0348 800CFB48 DF11E390 */  lbu        $v1, 0x11df($a3)
/* C034C 800CFB4C 01000224 */  addiu      $v0, $zero, 1
/* C0350 800CFB50 42006214 */  bne        $v1, $v0, .L800CFC5C
/* C0354 800CFB54 00000000 */   nop
.L800CFB58:
/* C0358 800CFB58 D811E290 */  lbu        $v0, 0x11d8($a3)
/* C035C 800CFB5C 00000000 */  nop
/* C0360 800CFB60 08004230 */  andi       $v0, $v0, 8
/* C0364 800CFB64 0A004014 */  bnez       $v0, .L800CFB90
/* C0368 800CFB68 00000000 */   nop
/* C036C 800CFB6C E411E28C */  lw         $v0, 0x11e4($a3)
/* C0370 800CFB70 00000000 */  nop
/* C0374 800CFB74 02004010 */  beqz       $v0, .L800CFB80
/* C0378 800CFB78 F8FF0224 */   addiu     $v0, $zero, -8
/* C037C 800CFB7C E811E2AC */  sw         $v0, 0x11e8($a3)
.L800CFB80:
/* C0380 800CFB80 03000224 */  addiu      $v0, $zero, 3
/* C0384 800CFB84 DF11E2A0 */  sb         $v0, 0x11df($a3)
/* C0388 800CFB88 173F0308 */  j          .L800CFC5C
/* C038C 800CFB8C 00000000 */   nop
.L800CFB90:
/* C0390 800CFB90 DC11E294 */  lhu        $v0, 0x11dc($a3)
/* C0394 800CFB94 E411E38C */  lw         $v1, 0x11e4($a3)
/* C0398 800CFB98 00000000 */  nop
/* C039C 800CFB9C 23186200 */  subu       $v1, $v1, $v0
/* C03A0 800CFBA0 E411E3AC */  sw         $v1, 0x11e4($a3)
/* C03A4 800CFBA4 E411E28C */  lw         $v0, 0x11e4($a3)
/* C03A8 800CFBA8 00000000 */  nop
/* C03AC 800CFBAC 06004104 */  bgez       $v0, .L800CFBC8
/* C03B0 800CFBB0 F8FF0224 */   addiu     $v0, $zero, -8
/* C03B4 800CFBB4 03000324 */  addiu      $v1, $zero, 3
/* C03B8 800CFBB8 E811E2AC */  sw         $v0, 0x11e8($a3)
/* C03BC 800CFBBC DF11E3A0 */  sb         $v1, 0x11df($a3)
/* C03C0 800CFBC0 173F0308 */  j          .L800CFC5C
/* C03C4 800CFBC4 00000000 */   nop
.L800CFBC8:
/* C03C8 800CFBC8 DF11E290 */  lbu        $v0, 0x11df($a3)
/* C03CC 800CFBCC 00000000 */  nop
/* C03D0 800CFBD0 07004414 */  bne        $v0, $a0, .L800CFBF0
/* C03D4 800CFBD4 05000624 */   addiu     $a2, $zero, 5
/* C03D8 800CFBD8 DC11E594 */  lhu        $a1, 0x11dc($a3)
/* C03DC 800CFBDC E011E48C */  lw         $a0, 0x11e0($a3)
/* C03E0 800CFBE0 72F2020C */  jal        FUN_800bc9c8
/* C03E4 800CFBE4 82280500 */   srl       $a1, $a1, 2
/* C03E8 800CFBE8 123F0308 */  j          .L800CFC48
/* C03EC 800CFBEC 10BD0226 */   addiu     $v0, $s0, -0x42f0
.L800CFBF0:
/* C03F0 800CFBF0 DF11E390 */  lbu        $v1, 0x11df($a3)
/* C03F4 800CFBF4 01000224 */  addiu      $v0, $zero, 1
/* C03F8 800CFBF8 13006214 */  bne        $v1, $v0, .L800CFC48
/* C03FC 800CFBFC 10BD0226 */   addiu     $v0, $s0, -0x42f0
/* C0400 800CFC00 21300000 */  addu       $a2, $zero, $zero
/* C0404 800CFC04 481F023C */  lui        $v0, 0x1f48
/* C0408 800CFC08 E011E48C */  lw         $a0, 0x11e0($a3)
/* C040C 800CFC0C DC11E394 */  lhu        $v1, 0x11dc($a3)
/* C0410 800CFC10 00000000 */  nop
/* C0414 800CFC14 82280300 */  srl        $a1, $v1, 2
/* C0418 800CFC18 0A00A010 */  beqz       $a1, .L800CFC44
/* C041C 800CFC1C 00004724 */   addiu     $a3, $v0, 0
.L800CFC20:
/* C0420 800CFC20 0000E294 */  lhu        $v0, ($a3)
/* C0424 800CFC24 0100C624 */  addiu      $a2, $a2, 1
/* C0428 800CFC28 000082A4 */  sh         $v0, ($a0)
/* C042C 800CFC2C 02008424 */  addiu      $a0, $a0, 2
/* C0430 800CFC30 0000E394 */  lhu        $v1, ($a3)
/* C0434 800CFC34 2B10C500 */  sltu       $v0, $a2, $a1
/* C0438 800CFC38 000083A4 */  sh         $v1, ($a0)
/* C043C 800CFC3C F8FF4014 */  bnez       $v0, .L800CFC20
/* C0440 800CFC40 02008424 */   addiu     $a0, $a0, 2
.L800CFC44:
/* C0444 800CFC44 10BD0226 */  addiu      $v0, $s0, -0x42f0
.L800CFC48:
/* C0448 800CFC48 DC114394 */  lhu        $v1, 0x11dc($v0)
/* C044C 800CFC4C E011448C */  lw         $a0, 0x11e0($v0)
/* C0450 800CFC50 FCFF6330 */  andi       $v1, $v1, 0xfffc
/* C0454 800CFC54 21208300 */  addu       $a0, $a0, $v1
/* C0458 800CFC58 E01144AC */  sw         $a0, 0x11e0($v0)
.L800CFC5C:
/* C045C 800CFC5C 1400BF8F */  lw         $ra, 0x14($sp)
/* C0460 800CFC60 1000B08F */  lw         $s0, 0x10($sp)
/* C0464 800CFC64 0800E003 */  jr         $ra
/* C0468 800CFC68 1800BD27 */   addiu     $sp, $sp, 0x18
