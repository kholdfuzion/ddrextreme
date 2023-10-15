.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches


glabel S_N2P_OBJ_158
/* A9E2C 800B962C FFFFC330 */  andi       $v1, $a2, 0xffff
/* A9E30 800B9630 FFFF4231 */  andi       $v0, $t2, 0xffff
/* A9E34 800B9634 40100200 */  sll        $v0, $v0, 1
/* A9E38 800B9638 0F80013C */  lui        $at, %hi(D_800ECC60)
/* A9E3C 800B963C 21082200 */  addu       $at, $at, $v0
/* A9E40 800B9640 60CC2294 */  lhu        $v0, %lo(D_800ECC60)($at)
/* A9E44 800B9644 C01B0300 */  sll        $v1, $v1, 0xf
/* A9E48 800B9648 1B006200 */  divu       $zero, $v1, $v0
/* A9E4C 800B964C 02004014 */  bnez       $v0, .L800B9658
/* A9E50 800B9650 00000000 */   nop
/* A9E54 800B9654 0D000700 */  break      7
.L800B9658:
/* A9E58 800B9658 12180000 */   mflo      $v1
/* A9E5C 800B965C 7F000724 */  addiu      $a3, $zero, 0x7f
/* A9E60 800B9660 0F80063C */  lui        $a2, %hi(D_800ECD76)
/* A9E64 800B9664 76CDC624 */  addiu      $a2, $a2, %lo(D_800ECD76)
/* A9E68 800B9668 FFFF6330 */  andi       $v1, $v1, 0xffff
.L800B966C:
/* A9E6C 800B966C 0000C294 */  lhu        $v0, ($a2)
/* A9E70 800B9670 00000000 */  nop
/* A9E74 800B9674 2B106200 */  sltu       $v0, $v1, $v0
/* A9E78 800B9678 03004014 */  bnez       $v0, .L800B9688
/* A9E7C 800B967C 00000000 */   nop
/* A9E80 800B9680 A5E50208 */  j          S_N2P_OBJ_1C0
/* A9E84 800B9684 2148E000 */   addu      $t1, $a3, $zero
.L800B9688:
/* A9E88 800B9688 FFFFE724 */  addiu      $a3, $a3, -1
/* A9E8C 800B968C F7FFE104 */  bgez       $a3, .L800B966C
/* A9E90 800B9690 FEFFC624 */   addiu     $a2, $a2, -2
