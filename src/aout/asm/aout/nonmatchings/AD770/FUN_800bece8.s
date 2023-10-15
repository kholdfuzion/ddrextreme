.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches


glabel FUN_800bece8
/* AF4E8 800BECE8 D8FFBD27 */  addiu      $sp, $sp, -0x28
/* AF4EC 800BECEC 2000BFAF */  sw         $ra, 0x20($sp)
/* AF4F0 800BECF0 1C00B3AF */  sw         $s3, 0x1c($sp)
/* AF4F4 800BECF4 1800B2AF */  sw         $s2, 0x18($sp)
/* AF4F8 800BECF8 1400B1AF */  sw         $s1, 0x14($sp)
/* AF4FC 800BECFC 1000B0AF */  sw         $s0, 0x10($sp)
/* AF500 800BED00 2198A000 */  addu       $s3, $a1, $zero
/* AF504 800BED04 73FB020C */  jal        FUN_800bedcc
/* AF508 800BED08 21888000 */   addu      $s1, $a0, $zero
/* AF50C 800BED0C 28004014 */  bnez       $v0, .L800BEDB0
/* AF510 800BED10 FFFF0224 */   addiu     $v0, $zero, -1
/* AF514 800BED14 21900000 */  addu       $s2, $zero, $zero
.L800BED18:
/* AF518 800BED18 D1FB020C */  jal        FUN_800bef44
/* AF51C 800BED1C 00000000 */   nop
/* AF520 800BED20 23004014 */  bnez       $v0, .L800BEDB0
/* AF524 800BED24 FFFF0224 */   addiu     $v0, $zero, -1
/* AF528 800BED28 0E006012 */  beqz       $s3, .L800BED64
/* AF52C 800BED2C 21800000 */   addu      $s0, $zero, $zero
/* AF530 800BED30 21103002 */  addu       $v0, $s1, $s0
.L800BED34:
/* AF534 800BED34 00004490 */  lbu        $a0, ($v0)
/* AF538 800BED38 0AFC020C */  jal        FUN_800bf028
/* AF53C 800BED3C 00000000 */   nop
/* AF540 800BED40 FF030232 */  andi       $v0, $s0, 0x3ff
/* AF544 800BED44 03004014 */  bnez       $v0, .L800BED54
/* AF548 800BED48 00000000 */   nop
/* AF54C 800BED4C 4A70000C */  jal        FUN_8001c128
/* AF550 800BED50 00000000 */   nop
.L800BED54:
/* AF554 800BED54 01001026 */  addiu      $s0, $s0, 1
/* AF558 800BED58 2B101302 */  sltu       $v0, $s0, $s3
/* AF55C 800BED5C F5FF4014 */  bnez       $v0, .L800BED34
/* AF560 800BED60 21103002 */   addu      $v0, $s1, $s0
.L800BED64:
/* AF564 800BED64 1CFC020C */  jal        FUN_800bf070
/* AF568 800BED68 00000000 */   nop
/* AF56C 800BED6C 0B004014 */  bnez       $v0, .L800BED9C
/* AF570 800BED70 00000000 */   nop
/* AF574 800BED74 89FB020C */  jal        FUN_800bee24
/* AF578 800BED78 00000000 */   nop
/* AF57C 800BED7C 0F80043C */  lui        $a0, %hi(D_800EE200)
/* AF580 800BED80 C2FA020C */  jal        FUN_800beb08
/* AF584 800BED84 00E28424 */   addiu     $a0, $a0, %lo(D_800EE200)
/* AF588 800BED88 21184000 */  addu       $v1, $v0, $zero
/* AF58C 800BED8C 08006004 */  bltz       $v1, .L800BEDB0
/* AF590 800BED90 FFFF0224 */   addiu     $v0, $zero, -1
/* AF594 800BED94 6CFB0208 */  j          .L800BEDB0
/* AF598 800BED98 21100000 */   addu      $v0, $zero, $zero
.L800BED9C:
/* AF59C 800BED9C 4A70000C */  jal        FUN_8001c128
/* AF5A0 800BEDA0 01005226 */   addiu     $s2, $s2, 1
/* AF5A4 800BEDA4 0300422A */  slti       $v0, $s2, 3
/* AF5A8 800BEDA8 DBFF4014 */  bnez       $v0, .L800BED18
/* AF5AC 800BEDAC FFFF0224 */   addiu     $v0, $zero, -1
.L800BEDB0:
/* AF5B0 800BEDB0 2000BF8F */  lw         $ra, 0x20($sp)
/* AF5B4 800BEDB4 1C00B38F */  lw         $s3, 0x1c($sp)
/* AF5B8 800BEDB8 1800B28F */  lw         $s2, 0x18($sp)
/* AF5BC 800BEDBC 1400B18F */  lw         $s1, 0x14($sp)
/* AF5C0 800BEDC0 1000B08F */  lw         $s0, 0x10($sp)
/* AF5C4 800BEDC4 0800E003 */  jr         $ra
/* AF5C8 800BEDC8 2800BD27 */   addiu     $sp, $sp, 0x28
