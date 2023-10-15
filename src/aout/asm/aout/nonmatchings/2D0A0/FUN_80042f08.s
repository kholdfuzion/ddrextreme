.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches


glabel FUN_80042f08
/* 33708 80042F08 E8FFBD27 */  addiu      $sp, $sp, -0x18
/* 3370C 80042F0C 1000BFAF */  sw         $ra, 0x10($sp)
/* 33710 80042F10 7B7A000C */  jal        FUN_8001e9ec
/* 33714 80042F14 40000424 */   addiu     $a0, $zero, 0x40
/* 33718 80042F18 1000BF8F */  lw         $ra, 0x10($sp)
/* 3371C 80042F1C 00000000 */  nop
/* 33720 80042F20 0800E003 */  jr         $ra
/* 33724 80042F24 1800BD27 */   addiu     $sp, $sp, 0x18
