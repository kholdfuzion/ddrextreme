.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches


glabel FUN_800c0e80
/* B1680 800C0E80 E8FFBD27 */  addiu      $sp, $sp, -0x18
/* B1684 800C0E84 1400BFAF */  sw         $ra, 0x14($sp)
/* B1688 800C0E88 1000B0AF */  sw         $s0, 0x10($sp)
/* B168C 800C0E8C A3FD020C */  jal        FUN_800bf68c
/* B1690 800C0E90 21808000 */   addu      $s0, $a0, $zero
/* B1694 800C0E94 040002A6 */  sh         $v0, 4($s0)
/* B1698 800C0E98 21100000 */  addu       $v0, $zero, $zero
/* B169C 800C0E9C 1400BF8F */  lw         $ra, 0x14($sp)
/* B16A0 800C0EA0 1000B08F */  lw         $s0, 0x10($sp)
/* B16A4 800C0EA4 0800E003 */  jr         $ra
/* B16A8 800C0EA8 1800BD27 */   addiu     $sp, $sp, 0x18
