.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches


glabel FUN_800aaeec
/* 9B6EC 800AAEEC E8FFBD27 */  addiu      $sp, $sp, -0x18
/* 9B6F0 800AAEF0 1000BFAF */  sw         $ra, 0x10($sp)
/* 9B6F4 800AAEF4 E8AD020C */  jal        FUN_800ab7a0
/* 9B6F8 800AAEF8 01000424 */   addiu     $a0, $zero, 1
/* 9B6FC 800AAEFC 1EAC020C */  jal        FUN_800ab078
/* 9B700 800AAF00 00000000 */   nop
/* 9B704 800AAF04 1000BF8F */  lw         $ra, 0x10($sp)
/* 9B708 800AAF08 01000224 */  addiu      $v0, $zero, 1
/* 9B70C 800AAF0C 0800E003 */  jr         $ra
/* 9B710 800AAF10 1800BD27 */   addiu     $sp, $sp, 0x18
