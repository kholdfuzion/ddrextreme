.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches


glabel FUN_800afaa0
/* A02A0 800AFAA0 C8FFBD27 */  addiu      $sp, $sp, -0x38
/* A02A4 800AFAA4 2C00B3AF */  sw         $s3, 0x2c($sp)
/* A02A8 800AFAA8 2198A000 */  addu       $s3, $a1, $zero
/* A02AC 800AFAAC 2400B1AF */  sw         $s1, 0x24($sp)
/* A02B0 800AFAB0 FFFF9130 */  andi       $s1, $a0, 0xffff
/* A02B4 800AFAB4 21300000 */  addu       $a2, $zero, $zero
/* A02B8 800AFAB8 2000B0AF */  sw         $s0, 0x20($sp)
/* A02BC 800AFABC 1D80103C */  lui        $s0, 0x801d
/* A02C0 800AFAC0 1D80023C */  lui        $v0, %hi(D_801D10B8)
/* A02C4 800AFAC4 B8104424 */  addiu      $a0, $v0, %lo(D_801D10B8)
/* A02C8 800AFAC8 21288000 */  addu       $a1, $a0, $zero
/* A02CC 800AFACC 3000BFAF */  sw         $ra, 0x30($sp)
/* A02D0 800AFAD0 2800B2AF */  sw         $s2, 0x28($sp)
.L800AFAD4:
/* A02D4 800AFAD4 00008294 */  lhu        $v0, ($a0)
/* A02D8 800AFAD8 00000000 */  nop
/* A02DC 800AFADC 3E005110 */  beq        $v0, $s1, .L800AFBD8
/* A02E0 800AFAE0 2118A000 */   addu      $v1, $a1, $zero
/* A02E4 800AFAE4 10008424 */  addiu      $a0, $a0, 0x10
/* A02E8 800AFAE8 0100C624 */  addiu      $a2, $a2, 1
/* A02EC 800AFAEC 2C01C228 */  slti       $v0, $a2, 0x12c
/* A02F0 800AFAF0 F8FF4014 */  bnez       $v0, .L800AFAD4
/* A02F4 800AFAF4 10006524 */   addiu     $a1, $v1, 0x10
/* A02F8 800AFAF8 21900000 */  addu       $s2, $zero, $zero
.L800AFAFC:
/* A02FC 800AFAFC 07004392 */  lbu        $v1, 7($s2)
/* A0300 800AFB00 02000224 */  addiu      $v0, $zero, 2
/* A0304 800AFB04 02006210 */  beq        $v1, $v0, .L800AFB10
/* A0308 800AFB08 00000000 */   nop
/* A030C 800AFB0C 21900000 */  addu       $s2, $zero, $zero
.L800AFB10:
/* A0310 800AFB10 23004016 */  bnez       $s2, .L800AFBA0
/* A0314 800AFB14 48000626 */   addiu     $a2, $s0, 0x48
/* A0318 800AFB18 21300000 */  addu       $a2, $zero, $zero
/* A031C 800AFB1C 1D80023C */  lui        $v0, %hi(D_801D2378)
/* A0320 800AFB20 78234424 */  addiu      $a0, $v0, %lo(D_801D2378)
/* A0324 800AFB24 21288000 */  addu       $a1, $a0, $zero
.L800AFB28:
/* A0328 800AFB28 00008294 */  lhu        $v0, ($a0)
/* A032C 800AFB2C 00000000 */  nop
/* A0330 800AFB30 27005110 */  beq        $v0, $s1, .L800AFBD0
/* A0334 800AFB34 2118A000 */   addu      $v1, $a1, $zero
/* A0338 800AFB38 10008424 */  addiu      $a0, $a0, 0x10
/* A033C 800AFB3C 0100C624 */  addiu      $a2, $a2, 1
/* A0340 800AFB40 F9FFC018 */  blez       $a2, .L800AFB28
/* A0344 800AFB44 10006524 */   addiu     $a1, $v1, 0x10
/* A0348 800AFB48 21900000 */  addu       $s2, $zero, $zero
.L800AFB4C:
/* A034C 800AFB4C 07004392 */  lbu        $v1, 7($s2)
/* A0350 800AFB50 02000224 */  addiu      $v0, $zero, 2
/* A0354 800AFB54 02006210 */  beq        $v1, $v0, .L800AFB60
/* A0358 800AFB58 00000000 */   nop
/* A035C 800AFB5C 21900000 */  addu       $s2, $zero, $zero
.L800AFB60:
/* A0360 800AFB60 0E004016 */  bnez       $s2, .L800AFB9C
/* A0364 800AFB64 1D80023C */   lui       $v0, %hi(D_801D2378)
/* A0368 800AFB68 FFFF0434 */  ori        $a0, $zero, 0xffff
/* A036C 800AFB6C 78234224 */  addiu      $v0, $v0, %lo(D_801D2378)
/* A0370 800AFB70 21184002 */  addu       $v1, $s2, $zero
.L800AFB74:
/* A0374 800AFB74 070040A0 */  sb         $zero, 7($v0)
/* A0378 800AFB78 000044A4 */  sh         $a0, ($v0)
/* A037C 800AFB7C 020040A4 */  sh         $zero, 2($v0)
/* A0380 800AFB80 040040A4 */  sh         $zero, 4($v0)
/* A0384 800AFB84 060040A0 */  sb         $zero, 6($v0)
/* A0388 800AFB88 080040AC */  sw         $zero, 8($v0)
/* A038C 800AFB8C 0C0040AC */  sw         $zero, 0xc($v0)
/* A0390 800AFB90 FFFF6324 */  addiu      $v1, $v1, -1
/* A0394 800AFB94 F7FF6104 */  bgez       $v1, .L800AFB74
/* A0398 800AFB98 10004224 */   addiu     $v0, $v0, 0x10
.L800AFB9C:
/* A039C 800AFB9C 48000626 */  addiu      $a2, $s0, 0x48
.L800AFBA0:
/* A03A0 800AFBA0 0300C0A0 */  sb         $zero, 3($a2)
/* A03A4 800AFBA4 0E004012 */  beqz       $s2, .L800AFBE0
/* A03A8 800AFBA8 3000D3AC */   sw        $s3, 0x30($a2)
/* A03AC 800AFBAC 02004296 */  lhu        $v0, 2($s2)
/* A03B0 800AFBB0 00000000 */  nop
/* A03B4 800AFBB4 2400C2A4 */  sh         $v0, 0x24($a2)
/* A03B8 800AFBB8 04004396 */  lhu        $v1, 4($s2)
/* A03BC 800AFBBC 00000000 */  nop
/* A03C0 800AFBC0 2600C3A4 */  sh         $v1, 0x26($a2)
/* A03C4 800AFBC4 06004292 */  lbu        $v0, 6($s2)
/* A03C8 800AFBC8 04BF0208 */  j          .L800AFC10
/* A03CC 800AFBCC 2800C2A0 */   sb        $v0, 0x28($a2)
.L800AFBD0:
/* A03D0 800AFBD0 D3BE0208 */  j          .L800AFB4C
/* A03D4 800AFBD4 2190A000 */   addu      $s2, $a1, $zero
.L800AFBD8:
/* A03D8 800AFBD8 BFBE0208 */  j          .L800AFAFC
/* A03DC 800AFBDC 2190A000 */   addu      $s2, $a1, $zero
.L800AFBE0:
/* A03E0 800AFBE0 1D80033C */  lui        $v1, %hi(D_801CC948)
/* A03E4 800AFBE4 48C96324 */  addiu      $v1, $v1, %lo(D_801CC948)
/* A03E8 800AFBE8 40101100 */  sll        $v0, $s1, 1
/* A03EC 800AFBEC 21105100 */  addu       $v0, $v0, $s1
/* A03F0 800AFBF0 C0100200 */  sll        $v0, $v0, 3
/* A03F4 800AFBF4 21104300 */  addu       $v0, $v0, $v1
/* A03F8 800AFBF8 00004494 */  lhu        $a0, ($v0)
/* A03FC 800AFBFC 02004394 */  lhu        $v1, 2($v0)
/* A0400 800AFC00 04004590 */  lbu        $a1, 4($v0)
/* A0404 800AFC04 2400C4A4 */  sh         $a0, 0x24($a2)
/* A0408 800AFC08 2600C3A4 */  sh         $v1, 0x26($a2)
/* A040C 800AFC0C 2800C5A0 */  sb         $a1, 0x28($a2)
.L800AFC10:
/* A0410 800AFC10 0D006012 */  beqz       $s3, .L800AFC48
/* A0414 800AFC14 48000226 */   addiu     $v0, $s0, 0x48
/* A0418 800AFC18 24004324 */  addiu      $v1, $v0, 0x24
/* A041C 800AFC1C 26004424 */  addiu      $a0, $v0, 0x26
/* A0420 800AFC20 1000A3AF */  sw         $v1, 0x10($sp)
/* A0424 800AFC24 28004324 */  addiu      $v1, $v0, 0x28
/* A0428 800AFC28 1400A4AF */  sw         $a0, 0x14($sp)
/* A042C 800AFC2C 1800A3AF */  sw         $v1, 0x18($sp)
/* A0430 800AFC30 24004494 */  lhu        $a0, 0x24($v0)
/* A0434 800AFC34 26004594 */  lhu        $a1, 0x26($v0)
/* A0438 800AFC38 28004690 */  lbu        $a2, 0x28($v0)
/* A043C 800AFC3C 3000478C */  lw         $a3, 0x30($v0)
/* A0440 800AFC40 ADC5020C */  jal        FUN_800b16b4
/* A0444 800AFC44 00000000 */   nop
.L800AFC48:
/* A0448 800AFC48 48001026 */  addiu      $s0, $s0, 0x48
/* A044C 800AFC4C 17004016 */  bnez       $s2, .L800AFCAC
/* A0450 800AFC50 140011AE */   sw        $s1, 0x14($s0)
/* A0454 800AFC54 1D80033C */  lui        $v1, %hi(D_801CC948)
/* A0458 800AFC58 48C96324 */  addiu      $v1, $v1, %lo(D_801CC948)
/* A045C 800AFC5C 40101100 */  sll        $v0, $s1, 1
/* A0460 800AFC60 21105100 */  addu       $v0, $v0, $s1
/* A0464 800AFC64 C0100200 */  sll        $v0, $v0, 3
/* A0468 800AFC68 21204300 */  addu       $a0, $v0, $v1
/* A046C 800AFC6C 21286200 */  addu       $a1, $v1, $v0
/* A0470 800AFC70 2118A000 */  addu       $v1, $a1, $zero
/* A0474 800AFC74 2C0000AE */  sw         $zero, 0x2c($s0)
/* A0478 800AFC78 340000A2 */  sb         $zero, 0x34($s0)
/* A047C 800AFC7C 360011A6 */  sh         $s1, 0x36($s0)
/* A0480 800AFC80 0F008690 */  lbu        $a2, 0xf($a0)
/* A0484 800AFC84 1000A78C */  lw         $a3, 0x10($a1)
/* A0488 800AFC88 1400648C */  lw         $a0, 0x14($v1)
/* A048C 800AFC8C 01000224 */  addiu      $v0, $zero, 1
/* A0490 800AFC90 020002A2 */  sb         $v0, 2($s0)
/* A0494 800AFC94 350006A2 */  sb         $a2, 0x35($s0)
/* A0498 800AFC98 1C0007AE */  sw         $a3, 0x1c($s0)
/* A049C 800AFC9C 56BA020C */  jal        FUN_800ae958
/* A04A0 800AFCA0 200004AE */   sw        $a0, 0x20($s0)
/* A04A4 800AFCA4 6BBF0208 */  j          .L800AFDAC
/* A04A8 800AFCA8 00000000 */   nop
.L800AFCAC:
/* A04AC 800AFCAC CD6B000C */  jal        VSync
/* A04B0 800AFCB0 FFFF0424 */   addiu     $a0, $zero, -1
/* A04B4 800AFCB4 1D80033C */  lui        $v1, %hi(D_801D0038)
/* A04B8 800AFCB8 3800648C */  lw         $a0, %lo(D_801D0038)($v1)
/* A04BC 800AFCBC 00000000 */  nop
/* A04C0 800AFCC0 04008424 */  addiu      $a0, $a0, 4
/* A04C4 800AFCC4 2B104400 */  sltu       $v0, $v0, $a0
/* A04C8 800AFCC8 04004014 */  bnez       $v0, .L800AFCDC
/* A04CC 800AFCCC 21880000 */   addu      $s1, $zero, $zero
/* A04D0 800AFCD0 0A000282 */  lb         $v0, 0xa($s0)
/* A04D4 800AFCD4 00000000 */  nop
/* A04D8 800AFCD8 2B880200 */  sltu       $s1, $zero, $v0
.L800AFCDC:
/* A04DC 800AFCDC 56BA020C */  jal        FUN_800ae958
/* A04E0 800AFCE0 00000000 */   nop
/* A04E4 800AFCE4 0800448E */  lw         $a0, 8($s2)
/* A04E8 800AFCE8 6EC4020C */  jal        FUN_800b11b8
/* A04EC 800AFCEC 21209300 */   addu      $a0, $a0, $s3
/* A04F0 800AFCF0 0800448E */  lw         $a0, 8($s2)
/* A04F4 800AFCF4 0C00428E */  lw         $v0, 0xc($s2)
/* A04F8 800AFCF8 00000000 */  nop
/* A04FC 800AFCFC 21208200 */  addu       $a0, $a0, $v0
/* A0500 800AFD00 7EC4020C */  jal        FUN_800b11f8
/* A0504 800AFD04 FFFF8424 */   addiu     $a0, $a0, -1
/* A0508 800AFD08 24000496 */  lhu        $a0, 0x24($s0)
/* A050C 800AFD0C 26000596 */  lhu        $a1, 0x26($s0)
/* A0510 800AFD10 28000692 */  lbu        $a2, 0x28($s0)
/* A0514 800AFD14 87C5020C */  jal        FUN_800b161c
/* A0518 800AFD18 00000000 */   nop
/* A051C 800AFD1C 1C002012 */  beqz       $s1, .L800AFD90
/* A0520 800AFD20 FFFF0424 */   addiu     $a0, $zero, -1
/* A0524 800AFD24 4000028E */  lw         $v0, 0x40($s0)
/* A0528 800AFD28 00000000 */  nop
/* A052C 800AFD2C 12004010 */  beqz       $v0, .L800AFD78
/* A0530 800AFD30 00000000 */   nop
/* A0534 800AFD34 1400048E */  lw         $a0, 0x14($s0)
/* A0538 800AFD38 09F84000 */  jalr       $v0
/* A053C 800AFD3C 00000000 */   nop
/* A0540 800AFD40 4400028E */  lw         $v0, 0x44($s0)
/* A0544 800AFD44 00000000 */  nop
/* A0548 800AFD48 04004010 */  beqz       $v0, .L800AFD5C
/* A054C 800AFD4C 00000000 */   nop
/* A0550 800AFD50 1400048E */  lw         $a0, 0x14($s0)
/* A0554 800AFD54 09F84000 */  jalr       $v0
/* A0558 800AFD58 00000000 */   nop
.L800AFD5C:
/* A055C 800AFD5C E2C5020C */  jal        FUN_800b1788
/* A0560 800AFD60 00000000 */   nop
/* A0564 800AFD64 11004014 */  bnez       $v0, .L800AFDAC
/* A0568 800AFD68 00000000 */   nop
/* A056C 800AFD6C 1400028E */  lw         $v0, 0x14($s0)
/* A0570 800AFD70 6BBF0208 */  j          .L800AFDAC
/* A0574 800AFD74 100002AE */   sw        $v0, 0x10($s0)
.L800AFD78:
/* A0578 800AFD78 8EC4020C */  jal        FUN_800b1238
/* A057C 800AFD7C 00000000 */   nop
/* A0580 800AFD80 FFFF0324 */  addiu      $v1, $zero, -1
/* A0584 800AFD84 100003AE */  sw         $v1, 0x10($s0)
/* A0588 800AFD88 6BBF0208 */  j          .L800AFDAC
/* A058C 800AFD8C 0A0000A2 */   sb        $zero, 0xa($s0)
.L800AFD90:
/* A0590 800AFD90 1400028E */  lw         $v0, 0x14($s0)
/* A0594 800AFD94 04000324 */  addiu      $v1, $zero, 4
/* A0598 800AFD98 0B0003A2 */  sb         $v1, 0xb($s0)
/* A059C 800AFD9C CD6B000C */  jal        VSync
/* A05A0 800AFDA0 100002AE */   sw        $v0, 0x10($s0)
/* A05A4 800AFDA4 1D80033C */  lui        $v1, %hi(D_801D003C)
/* A05A8 800AFDA8 3C0062AC */  sw         $v0, %lo(D_801D003C)($v1)
.L800AFDAC:
/* A05AC 800AFDAC 3000BF8F */  lw         $ra, 0x30($sp)
/* A05B0 800AFDB0 2C00B38F */  lw         $s3, 0x2c($sp)
/* A05B4 800AFDB4 2800B28F */  lw         $s2, 0x28($sp)
/* A05B8 800AFDB8 2400B18F */  lw         $s1, 0x24($sp)
/* A05BC 800AFDBC 2000B08F */  lw         $s0, 0x20($sp)
/* A05C0 800AFDC0 21100000 */  addu       $v0, $zero, $zero
/* A05C4 800AFDC4 0800E003 */  jr         $ra
/* A05C8 800AFDC8 3800BD27 */   addiu     $sp, $sp, 0x38
