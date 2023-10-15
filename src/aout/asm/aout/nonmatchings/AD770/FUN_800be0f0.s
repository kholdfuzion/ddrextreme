.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches


glabel FUN_800be0f0
/* AE8F0 800BE0F0 E8FFBD27 */  addiu      $sp, $sp, -0x18
/* AE8F4 800BE0F4 0F80033C */  lui        $v1, %hi(D_800EE108)
/* AE8F8 800BE0F8 0F80023C */  lui        $v0, %hi(D_800EE1A8)
/* AE8FC 800BE0FC A8E1468C */  lw         $a2, %lo(D_800EE1A8)($v0)
/* AE900 800BE100 08E16324 */  addiu      $v1, $v1, %lo(D_800EE108)
/* AE904 800BE104 1000BFAF */  sw         $ra, 0x10($sp)
/* AE908 800BE108 80100600 */  sll        $v0, $a2, 2
/* AE90C 800BE10C 21104600 */  addu       $v0, $v0, $a2
/* AE910 800BE110 C0100200 */  sll        $v0, $v0, 3
/* AE914 800BE114 21104300 */  addu       $v0, $v0, $v1
/* AE918 800BE118 1C00428C */  lw         $v0, 0x1c($v0)
/* AE91C 800BE11C 00000000 */  nop
/* AE920 800BE120 09F84000 */  jalr       $v0
/* AE924 800BE124 FFFFA530 */   andi      $a1, $a1, 0xffff
/* AE928 800BE128 1000BF8F */  lw         $ra, 0x10($sp)
/* AE92C 800BE12C 00000000 */  nop
/* AE930 800BE130 0800E003 */  jr         $ra
/* AE934 800BE134 1800BD27 */   addiu     $sp, $sp, 0x18
