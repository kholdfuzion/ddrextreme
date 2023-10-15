.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches


glabel FUN_800c0ee8
/* B16E8 800C0EE8 D8FFBD27 */  addiu      $sp, $sp, -0x28
/* B16EC 800C0EEC 2000BFAF */  sw         $ra, 0x20($sp)
/* B16F0 800C0EF0 0000848C */  lw         $a0, ($a0)
/* B16F4 800C0EF4 21280000 */  addu       $a1, $zero, $zero
/* B16F8 800C0EF8 9CFF0824 */  addiu      $t0, $zero, -0x64
/* B16FC 800C0EFC 1000A627 */  addiu      $a2, $sp, 0x10
/* B1700 800C0F00 0F80023C */  lui        $v0, %hi(D_800EE288)
/* B1704 800C0F04 88E24724 */  addiu      $a3, $v0, %lo(D_800EE288)
/* B1708 800C0F08 80100500 */  sll        $v0, $a1, 2
.L800C0F0C:
/* B170C 800C0F0C 21184400 */  addu       $v1, $v0, $a0
/* B1710 800C0F10 0000628C */  lw         $v0, ($v1)
/* B1714 800C0F14 00000000 */  nop
/* B1718 800C0F18 9CFF4228 */  slti       $v0, $v0, -0x64
/* B171C 800C0F1C 02004010 */  beqz       $v0, .L800C0F28
/* B1720 800C0F20 80100500 */   sll       $v0, $a1, 2
/* B1724 800C0F24 000068AC */  sw         $t0, ($v1)
.L800C0F28:
/* B1728 800C0F28 21184400 */  addu       $v1, $v0, $a0
/* B172C 800C0F2C 0000628C */  lw         $v0, ($v1)
/* B1730 800C0F30 00000000 */  nop
/* B1734 800C0F34 02004018 */  blez       $v0, .L800C0F40
/* B1738 800C0F38 80100500 */   sll       $v0, $a1, 2
/* B173C 800C0F3C 000060AC */  sw         $zero, ($v1)
.L800C0F40:
/* B1740 800C0F40 2118C200 */  addu       $v1, $a2, $v0
/* B1744 800C0F44 21104400 */  addu       $v0, $v0, $a0
/* B1748 800C0F48 0000428C */  lw         $v0, ($v0)
/* B174C 800C0F4C 00000000 */  nop
/* B1750 800C0F50 64004224 */  addiu      $v0, $v0, 0x64
/* B1754 800C0F54 80100200 */  sll        $v0, $v0, 2
/* B1758 800C0F58 21104700 */  addu       $v0, $v0, $a3
/* B175C 800C0F5C 0000428C */  lw         $v0, ($v0)
/* B1760 800C0F60 00000000 */  nop
/* B1764 800C0F64 000062AC */  sw         $v0, ($v1)
/* B1768 800C0F68 0100A524 */  addiu      $a1, $a1, 1
/* B176C 800C0F6C 0400A228 */  slti       $v0, $a1, 4
/* B1770 800C0F70 E6FF4014 */  bnez       $v0, .L800C0F0C
/* B1774 800C0F74 80100500 */   sll       $v0, $a1, 2
/* B1778 800C0F78 01000424 */  addiu      $a0, $zero, 1
/* B177C 800C0F7C F8070524 */  addiu      $a1, $zero, 0x7f8
/* B1780 800C0F80 04000624 */  addiu      $a2, $zero, 4
/* B1784 800C0F84 6A01030C */  jal        FUN_800c05a8
/* B1788 800C0F88 1000A727 */   addiu     $a3, $sp, 0x10
/* B178C 800C0F8C 21184000 */  addu       $v1, $v0, $zero
/* B1790 800C0F90 FEFF0224 */  addiu      $v0, $zero, -2
/* B1794 800C0F94 04006210 */  beq        $v1, $v0, .L800C0FA8
/* B1798 800C0F98 00000000 */   nop
/* B179C 800C0F9C 02006014 */  bnez       $v1, .L800C0FA8
/* B17A0 800C0FA0 FFFF0224 */   addiu     $v0, $zero, -1
/* B17A4 800C0FA4 21100000 */  addu       $v0, $zero, $zero
.L800C0FA8:
/* B17A8 800C0FA8 2000BF8F */  lw         $ra, 0x20($sp)
/* B17AC 800C0FAC 00000000 */  nop
/* B17B0 800C0FB0 0800E003 */  jr         $ra
/* B17B4 800C0FB4 2800BD27 */   addiu     $sp, $sp, 0x28
