.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches


glabel FUN_800c0e28
/* B1628 800C0E28 E0FFBD27 */  addiu      $sp, $sp, -0x20
/* B162C 800C0E2C 1C00BFAF */  sw         $ra, 0x1c($sp)
/* B1630 800C0E30 1800B0AF */  sw         $s0, 0x18($sp)
/* B1634 800C0E34 21808000 */  addu       $s0, $a0, $zero
/* B1638 800C0E38 E302030C */  jal        FUN_800c0b8c
/* B163C 800C0E3C 1000A427 */   addiu     $a0, $sp, 0x10
/* B1640 800C0E40 21184000 */  addu       $v1, $v0, $zero
/* B1644 800C0E44 FEFF0224 */  addiu      $v0, $zero, -2
/* B1648 800C0E48 09006210 */  beq        $v1, $v0, .L800C0E70
/* B164C 800C0E4C 00000000 */   nop
/* B1650 800C0E50 06006014 */  bnez       $v1, .L800C0E6C
/* B1654 800C0E54 00000000 */   nop
/* B1658 800C0E58 1000A297 */  lhu        $v0, 0x10($sp)
/* B165C 800C0E5C 00000000 */  nop
/* B1660 800C0E60 040002A6 */  sh         $v0, 4($s0)
/* B1664 800C0E64 9C030308 */  j          .L800C0E70
/* B1668 800C0E68 21100000 */   addu      $v0, $zero, $zero
.L800C0E6C:
/* B166C 800C0E6C FFFF0224 */  addiu      $v0, $zero, -1
.L800C0E70:
/* B1670 800C0E70 1C00BF8F */  lw         $ra, 0x1c($sp)
/* B1674 800C0E74 1800B08F */  lw         $s0, 0x18($sp)
/* B1678 800C0E78 0800E003 */  jr         $ra
/* B167C 800C0E7C 2000BD27 */   addiu     $sp, $sp, 0x20
