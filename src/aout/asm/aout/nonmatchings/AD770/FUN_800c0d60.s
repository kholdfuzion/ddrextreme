.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches


glabel FUN_800c0d60
/* B1560 800C0D60 E8FFBD27 */  addiu      $sp, $sp, -0x18
/* B1564 800C0D64 1000BFAF */  sw         $ra, 0x10($sp)
/* B1568 800C0D68 0000848C */  lw         $a0, ($a0)
/* B156C 800C0D6C 00000000 */  nop
/* B1570 800C0D70 01008230 */  andi       $v0, $a0, 1
/* B1574 800C0D74 02004010 */  beqz       $v0, .L800C0D80
/* B1578 800C0D78 00000000 */   nop
/* B157C 800C0D7C 02008424 */  addiu      $a0, $a0, 2
.L800C0D80:
/* B1580 800C0D80 83FD020C */  jal        FUN_800bf60c
/* B1584 800C0D84 00000000 */   nop
/* B1588 800C0D88 21100000 */  addu       $v0, $zero, $zero
/* B158C 800C0D8C 1000BF8F */  lw         $ra, 0x10($sp)
/* B1590 800C0D90 00000000 */  nop
/* B1594 800C0D94 0800E003 */  jr         $ra
/* B1598 800C0D98 1800BD27 */   addiu     $sp, $sp, 0x18
