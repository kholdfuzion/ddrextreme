.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches


glabel FUN_80028bac
/* 193AC 80028BAC E8FFBD27 */  addiu      $sp, $sp, -0x18
/* 193B0 80028BB0 1000BFAF */  sw         $ra, 0x10($sp)
/* 193B4 80028BB4 000080AC */  sw         $zero, ($a0)
/* 193B8 80028BB8 04008424 */  addiu      $a0, $a0, 4
/* 193BC 80028BBC 21280000 */  addu       $a1, $zero, $zero
/* 193C0 80028BC0 F6A2000C */  jal        memset
/* 193C4 80028BC4 40000624 */   addiu     $a2, $zero, 0x40
/* 193C8 80028BC8 1000BF8F */  lw         $ra, 0x10($sp)
/* 193CC 80028BCC 00000000 */  nop
/* 193D0 80028BD0 0800E003 */  jr         $ra
/* 193D4 80028BD4 1800BD27 */   addiu     $sp, $sp, 0x18
