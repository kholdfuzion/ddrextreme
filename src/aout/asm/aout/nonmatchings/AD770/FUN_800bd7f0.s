.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches


glabel FUN_800bd7f0
/* ADFF0 800BD7F0 9A3B053C */  lui        $a1, 0x3b9a
/* ADFF4 800BD7F4 00CAA534 */  ori        $a1, $a1, 0xca00
/* ADFF8 800BD7F8 21380000 */  addu       $a3, $zero, $zero
/* ADFFC 800BD7FC 2130E000 */  addu       $a2, $a3, $zero
/* AE000 800BD800 CCCC083C */  lui        $t0, 0xcccc
/* AE004 800BD804 CDCC0835 */  ori        $t0, $t0, 0xcccd
.L800BD808:
/* AE008 800BD808 1B008500 */  divu       $zero, $a0, $a1
/* AE00C 800BD80C 0200A014 */  bnez       $a1, .L800BD818
/* AE010 800BD810 00000000 */   nop
/* AE014 800BD814 0D000700 */  break      7
.L800BD818:
/* AE018 800BD818 12180000 */   mflo      $v1
/* AE01C 800BD81C 10200000 */  mfhi       $a0
/* AE020 800BD820 00110700 */  sll        $v0, $a3, 4
/* AE024 800BD824 25384300 */  or         $a3, $v0, $v1
/* AE028 800BD828 1900A800 */  multu      $a1, $t0
/* AE02C 800BD82C 10280000 */  mfhi       $a1
/* AE030 800BD830 0100C624 */  addiu      $a2, $a2, 1
/* AE034 800BD834 0A00C228 */  slti       $v0, $a2, 0xa
/* AE038 800BD838 F3FF4014 */  bnez       $v0, .L800BD808
/* AE03C 800BD83C C2280500 */   srl       $a1, $a1, 3
/* AE040 800BD840 0800E003 */  jr         $ra
/* AE044 800BD844 2110E000 */   addu      $v0, $a3, $zero
