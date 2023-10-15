.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches


glabel FUN_800aafb0
/* 9B7B0 800AAFB0 E8FFBD27 */  addiu      $sp, $sp, -0x18
/* 9B7B4 800AAFB4 1000BFAF */  sw         $ra, 0x10($sp)
/* 9B7B8 800AAFB8 1EAC020C */  jal        FUN_800ab078
/* 9B7BC 800AAFBC 00000000 */   nop
/* 9B7C0 800AAFC0 B9AE020C */  jal        FUN_800abae4
/* 9B7C4 800AAFC4 00000000 */   nop
/* 9B7C8 800AAFC8 1000BF8F */  lw         $ra, 0x10($sp)
/* 9B7CC 800AAFCC 01000224 */  addiu      $v0, $zero, 1
/* 9B7D0 800AAFD0 0800E003 */  jr         $ra
/* 9B7D4 800AAFD4 1800BD27 */   addiu     $sp, $sp, 0x18
