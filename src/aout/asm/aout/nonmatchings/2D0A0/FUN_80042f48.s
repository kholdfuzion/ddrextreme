.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches


glabel FUN_80042f48
/* 33748 80042F48 E8FFBD27 */  addiu      $sp, $sp, -0x18
/* 3374C 80042F4C 1000BFAF */  sw         $ra, 0x10($sp)
/* 33750 80042F50 7B7A000C */  jal        FUN_8001e9ec
/* 33754 80042F54 21000424 */   addiu     $a0, $zero, 0x21
/* 33758 80042F58 1000BF8F */  lw         $ra, 0x10($sp)
/* 3375C 80042F5C 00000000 */  nop
/* 33760 80042F60 0800E003 */  jr         $ra
/* 33764 80042F64 1800BD27 */   addiu     $sp, $sp, 0x18
