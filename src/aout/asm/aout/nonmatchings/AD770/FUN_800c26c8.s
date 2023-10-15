.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches


glabel FUN_800c26c8
/* B2EC8 800C26C8 E8FFBD27 */  addiu      $sp, $sp, -0x18
/* B2ECC 800C26CC 21488000 */  addu       $t1, $a0, $zero
/* B2ED0 800C26D0 FFFFA524 */  addiu      $a1, $a1, -1
/* B2ED4 800C26D4 1F80043C */  lui        $a0, %hi(D_801F71C0)
/* B2ED8 800C26D8 40100500 */  sll        $v0, $a1, 1
/* B2EDC 800C26DC 21104500 */  addu       $v0, $v0, $a1
/* B2EE0 800C26E0 00190200 */  sll        $v1, $v0, 4
/* B2EE4 800C26E4 23186200 */  subu       $v1, $v1, $v0
/* B2EE8 800C26E8 C071828C */  lw         $v0, %lo(D_801F71C0)($a0)
/* B2EEC 800C26EC 80180300 */  sll        $v1, $v1, 2
/* B2EF0 800C26F0 1400BFAF */  sw         $ra, 0x14($sp)
/* B2EF4 800C26F4 1000B0AF */  sw         $s0, 0x10($sp)
/* B2EF8 800C26F8 21204300 */  addu       $a0, $v0, $v1
/* B2EFC 800C26FC 7A008290 */  lbu        $v0, 0x7a($a0)
/* B2F00 800C2700 00000000 */  nop
/* B2F04 800C2704 02004010 */  beqz       $v0, .L800C2710
/* B2F08 800C2708 F7FF0824 */   addiu     $t0, $zero, -9
/* B2F0C 800C270C FEFF0824 */  addiu      $t0, $zero, -2
.L800C2710:
/* B2F10 800C2710 02000324 */  addiu      $v1, $zero, 2
/* B2F14 800C2714 0A00C314 */  bne        $a2, $v1, .L800C2740
/* B2F18 800C2718 00000000 */   nop
/* B2F1C 800C271C 79008690 */  lbu        $a2, 0x79($a0)
/* B2F20 800C2720 00000000 */  nop
/* B2F24 800C2724 0100C224 */  addiu      $v0, $a2, 1
/* B2F28 800C2728 790082A0 */  sb         $v0, 0x79($a0)
/* B2F2C 800C272C FF004230 */  andi       $v0, $v0, 0xff
/* B2F30 800C2730 2B104300 */  sltu       $v0, $v0, $v1
/* B2F34 800C2734 02004010 */  beqz       $v0, .L800C2740
/* B2F38 800C2738 00000000 */   nop
/* B2F3C 800C273C 790083A0 */  sb         $v1, 0x79($a0)
.L800C2740:
/* B2F40 800C2740 0B002011 */  beqz       $t1, .L800C2770
/* B2F44 800C2744 21102001 */   addu      $v0, $t1, $zero
.L800C2748:
/* B2F48 800C2748 040048AC */  sw         $t0, 4($v0)
/* B2F4C 800C274C 2C0045A0 */  sb         $a1, 0x2c($v0)
/* B2F50 800C2750 2D0040A0 */  sb         $zero, 0x2d($v0)
/* B2F54 800C2754 2E0040A0 */  sb         $zero, 0x2e($v0)
/* B2F58 800C2758 2F0047A0 */  sb         $a3, 0x2f($v0)
/* B2F5C 800C275C 300046A0 */  sb         $a2, 0x30($v0)
/* B2F60 800C2760 0000428C */  lw         $v0, ($v0)
/* B2F64 800C2764 00000000 */  nop
/* B2F68 800C2768 F7FF4014 */  bnez       $v0, .L800C2748
/* B2F6C 800C276C 00000000 */   nop
.L800C2770:
/* B2F70 800C2770 FEFF0224 */  addiu      $v0, $zero, -2
/* B2F74 800C2774 0B000215 */  bne        $t0, $v0, .L800C27A4
/* B2F78 800C2778 1F80103C */   lui       $s0, %hi(D_801F71C0)
/* B2F7C 800C277C C0711026 */  addiu      $s0, $s0, %lo(D_801F71C0)
/* B2F80 800C2780 0800028E */  lw         $v0, 8($s0)
/* B2F84 800C2784 21282001 */  addu       $a1, $t1, $zero
/* B2F88 800C2788 01004224 */  addiu      $v0, $v0, 1
/* B2F8C 800C278C FD09030C */  jal        FUN_800c27f4
/* B2F90 800C2790 080002AE */   sw        $v0, 8($s0)
/* B2F94 800C2794 0800028E */  lw         $v0, 8($s0)
/* B2F98 800C2798 00000000 */  nop
/* B2F9C 800C279C FFFF4224 */  addiu      $v0, $v0, -1
/* B2FA0 800C27A0 080002AE */  sw         $v0, 8($s0)
.L800C27A4:
/* B2FA4 800C27A4 1400BF8F */  lw         $ra, 0x14($sp)
/* B2FA8 800C27A8 1000B08F */  lw         $s0, 0x10($sp)
/* B2FAC 800C27AC 21100000 */  addu       $v0, $zero, $zero
/* B2FB0 800C27B0 0800E003 */  jr         $ra
/* B2FB4 800C27B4 1800BD27 */   addiu     $sp, $sp, 0x18
