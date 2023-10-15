.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches


glabel FUN_80042f70
/* 33770 80042F70 E8FFBD27 */  addiu      $sp, $sp, -0x18
/* 33774 80042F74 1000BFAF */  sw         $ra, 0x10($sp)
/* 33778 80042F78 7B7A000C */  jal        FUN_8001e9ec
/* 3377C 80042F7C 08000424 */   addiu     $a0, $zero, 8
/* 33780 80042F80 1000BF8F */  lw         $ra, 0x10($sp)
/* 33784 80042F84 00000000 */  nop
/* 33788 80042F88 0800E003 */  jr         $ra
/* 3378C 80042F8C 1800BD27 */   addiu     $sp, $sp, 0x18
