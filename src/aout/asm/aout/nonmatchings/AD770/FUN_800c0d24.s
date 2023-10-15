.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches


glabel FUN_800c0d24
/* B1524 800C0D24 E8FFBD27 */  addiu      $sp, $sp, -0x18
/* B1528 800C0D28 1000BFAF */  sw         $ra, 0x10($sp)
/* B152C 800C0D2C 0000848C */  lw         $a0, ($a0)
/* B1530 800C0D30 00000000 */  nop
/* B1534 800C0D34 01008230 */  andi       $v0, $a0, 1
/* B1538 800C0D38 02004010 */  beqz       $v0, .L800C0D44
/* B153C 800C0D3C 00000000 */   nop
/* B1540 800C0D40 FEFF8424 */  addiu      $a0, $a0, -2
.L800C0D44:
/* B1544 800C0D44 75FD020C */  jal        FUN_800bf5d4
/* B1548 800C0D48 00000000 */   nop
/* B154C 800C0D4C 21100000 */  addu       $v0, $zero, $zero
/* B1550 800C0D50 1000BF8F */  lw         $ra, 0x10($sp)
/* B1554 800C0D54 00000000 */  nop
/* B1558 800C0D58 0800E003 */  jr         $ra
/* B155C 800C0D5C 1800BD27 */   addiu     $sp, $sp, 0x18
