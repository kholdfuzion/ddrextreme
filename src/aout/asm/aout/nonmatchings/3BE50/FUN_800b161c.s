.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches


glabel FUN_800b161c
/* A1E1C 800B161C D8FFBD27 */  addiu      $sp, $sp, -0x28
/* A1E20 800B1620 1000A4A7 */  sh         $a0, 0x10($sp)
/* A1E24 800B1624 21200000 */  addu       $a0, $zero, $zero
/* A1E28 800B1628 1800B0AF */  sw         $s0, 0x18($sp)
/* A1E2C 800B162C FFFFB030 */  andi       $s0, $a1, 0xffff
/* A1E30 800B1630 11000524 */  addiu      $a1, $zero, 0x11
/* A1E34 800B1634 1C00B1AF */  sw         $s1, 0x1c($sp)
/* A1E38 800B1638 FF00D130 */  andi       $s1, $a2, 0xff
/* A1E3C 800B163C 1000A627 */  addiu      $a2, $sp, 0x10
/* A1E40 800B1640 2000BFAF */  sw         $ra, 0x20($sp)
/* A1E44 800B1644 21FD020C */  jal        FUN_800bf484
/* A1E48 800B1648 21380000 */   addu      $a3, $zero, $zero
/* A1E4C 800B164C 14004014 */  bnez       $v0, .L800B16A0
/* A1E50 800B1650 FFFF0224 */   addiu     $v0, $zero, -1
/* A1E54 800B1654 1000B0A7 */  sh         $s0, 0x10($sp)
/* A1E58 800B1658 21200000 */  addu       $a0, $zero, $zero
/* A1E5C 800B165C 16000524 */  addiu      $a1, $zero, 0x16
/* A1E60 800B1660 1000A627 */  addiu      $a2, $sp, 0x10
/* A1E64 800B1664 21FD020C */  jal        FUN_800bf484
/* A1E68 800B1668 21380000 */   addu      $a3, $zero, $zero
/* A1E6C 800B166C 0B004014 */  bnez       $v0, .L800B169C
/* A1E70 800B1670 21200000 */   addu      $a0, $zero, $zero
/* A1E74 800B1674 1000B1A3 */  sb         $s1, 0x10($sp)
/* A1E78 800B1678 17000524 */  addiu      $a1, $zero, 0x17
/* A1E7C 800B167C 1000A627 */  addiu      $a2, $sp, 0x10
/* A1E80 800B1680 21FD020C */  jal        FUN_800bf484
/* A1E84 800B1684 21380000 */   addu      $a3, $zero, $zero
/* A1E88 800B1688 21184000 */  addu       $v1, $v0, $zero
/* A1E8C 800B168C 04006014 */  bnez       $v1, .L800B16A0
/* A1E90 800B1690 FFFF0224 */   addiu     $v0, $zero, -1
/* A1E94 800B1694 A8C50208 */  j          .L800B16A0
/* A1E98 800B1698 21100000 */   addu      $v0, $zero, $zero
.L800B169C:
/* A1E9C 800B169C FFFF0224 */  addiu      $v0, $zero, -1
.L800B16A0:
/* A1EA0 800B16A0 2000BF8F */  lw         $ra, 0x20($sp)
/* A1EA4 800B16A4 1C00B18F */  lw         $s1, 0x1c($sp)
/* A1EA8 800B16A8 1800B08F */  lw         $s0, 0x18($sp)
/* A1EAC 800B16AC 0800E003 */  jr         $ra
/* A1EB0 800B16B0 2800BD27 */   addiu     $sp, $sp, 0x28
