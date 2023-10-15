.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches


glabel FUN_800c6ee8
/* B76E8 800C6EE8 D0FFBD27 */  addiu      $sp, $sp, -0x30
/* B76EC 800C6EEC 1800B2AF */  sw         $s2, 0x18($sp)
/* B76F0 800C6EF0 21908000 */  addu       $s2, $a0, $zero
/* B76F4 800C6EF4 1C00B3AF */  sw         $s3, 0x1c($sp)
/* B76F8 800C6EF8 2198A000 */  addu       $s3, $a1, $zero
/* B76FC 800C6EFC 2000B4AF */  sw         $s4, 0x20($sp)
/* B7700 800C6F00 21A0C000 */  addu       $s4, $a2, $zero
/* B7704 800C6F04 2400B5AF */  sw         $s5, 0x24($sp)
/* B7708 800C6F08 21A8E000 */  addu       $s5, $a3, $zero
/* B770C 800C6F0C 1400B1AF */  sw         $s1, 0x14($sp)
/* B7710 800C6F10 21886002 */  addu       $s1, $s3, $zero
/* B7714 800C6F14 80111200 */  sll        $v0, $s2, 6
/* B7718 800C6F18 21105200 */  addu       $v0, $v0, $s2
/* B771C 800C6F1C 40110200 */  sll        $v0, $v0, 5
/* B7720 800C6F20 21105200 */  addu       $v0, $v0, $s2
/* B7724 800C6F24 80100200 */  sll        $v0, $v0, 2
/* B7728 800C6F28 1F80033C */  lui        $v1, %hi(D_801F7438)
/* B772C 800C6F2C 38746324 */  addiu      $v1, $v1, %lo(D_801F7438)
/* B7730 800C6F30 1000B0AF */  sw         $s0, 0x10($sp)
/* B7734 800C6F34 2800BFAF */  sw         $ra, 0x28($sp)
/* B7738 800C6F38 2A1C030C */  jal        FUN_800c70a8
/* B773C 800C6F3C 21804300 */   addu      $s0, $v0, $v1
/* B7740 800C6F40 10004010 */  beqz       $v0, .L800C6F84
/* B7744 800C6F44 00080426 */   addiu     $a0, $s0, 0x800
/* B7748 800C6F48 21180000 */  addu       $v1, $zero, $zero
.L800C6F4C:
/* B774C 800C6F4C 0000828C */  lw         $v0, ($a0)
/* B7750 800C6F50 00000000 */  nop
/* B7754 800C6F54 07005314 */  bne        $v0, $s3, .L800C6F74
/* B7758 800C6F58 21107000 */   addu      $v0, $v1, $s0
/* B775C 800C6F5C 10204290 */  lbu        $v0, 0x2010($v0)
/* B7760 800C6F60 00000000 */  nop
/* B7764 800C6F64 03004014 */  bnez       $v0, .L800C6F74
/* B7768 800C6F68 00000000 */   nop
/* B776C 800C6F6C E11B0308 */  j          .L800C6F84
/* B7770 800C6F70 24007124 */   addiu     $s1, $v1, 0x24
.L800C6F74:
/* B7774 800C6F74 01006324 */  addiu      $v1, $v1, 1
/* B7778 800C6F78 14006228 */  slti       $v0, $v1, 0x14
/* B777C 800C6F7C F3FF4014 */  bnez       $v0, .L800C6F4C
/* B7780 800C6F80 80008424 */   addiu     $a0, $a0, 0x80
.L800C6F84:
/* B7784 800C6F84 21204002 */  addu       $a0, $s2, $zero
/* B7788 800C6F88 21282002 */  addu       $a1, $s1, $zero
/* B778C 800C6F8C 21308002 */  addu       $a2, $s4, $zero
/* B7790 800C6F90 0C25030C */  jal        FUN_800c9430
/* B7794 800C6F94 2138A002 */   addu      $a3, $s5, $zero
/* B7798 800C6F98 2800BF8F */  lw         $ra, 0x28($sp)
/* B779C 800C6F9C 2400B58F */  lw         $s5, 0x24($sp)
/* B77A0 800C6FA0 2000B48F */  lw         $s4, 0x20($sp)
/* B77A4 800C6FA4 1C00B38F */  lw         $s3, 0x1c($sp)
/* B77A8 800C6FA8 1800B28F */  lw         $s2, 0x18($sp)
/* B77AC 800C6FAC 1400B18F */  lw         $s1, 0x14($sp)
/* B77B0 800C6FB0 1000B08F */  lw         $s0, 0x10($sp)
/* B77B4 800C6FB4 0800E003 */  jr         $ra
/* B77B8 800C6FB8 3000BD27 */   addiu     $sp, $sp, 0x30
