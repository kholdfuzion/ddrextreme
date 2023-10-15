.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches


glabel FUN_80042f90
/* 33790 80042F90 E8FFBD27 */  addiu      $sp, $sp, -0x18
/* 33794 80042F94 1000BFAF */  sw         $ra, 0x10($sp)
/* 33798 80042F98 7B7A000C */  jal        FUN_8001e9ec
/* 3379C 80042F9C 80000424 */   addiu     $a0, $zero, 0x80
/* 337A0 80042FA0 1000BF8F */  lw         $ra, 0x10($sp)
/* 337A4 80042FA4 00000000 */  nop
/* 337A8 80042FA8 0800E003 */  jr         $ra
/* 337AC 80042FAC 1800BD27 */   addiu     $sp, $sp, 0x18
