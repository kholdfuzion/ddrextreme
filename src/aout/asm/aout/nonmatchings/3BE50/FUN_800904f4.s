.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches


glabel FUN_800904f4
/* 80CF4 800904F4 E8FFBD27 */  addiu      $sp, $sp, -0x18
/* 80CF8 800904F8 1000BFAF */  sw         $ra, 0x10($sp)
/* 80CFC 800904FC A358020C */  jal        FUN_8009628c
/* 80D00 80090500 00000000 */   nop
/* 80D04 80090504 1000BF8F */  lw         $ra, 0x10($sp)
/* 80D08 80090508 21100000 */  addu       $v0, $zero, $zero
/* 80D0C 8009050C 0800E003 */  jr         $ra
/* 80D10 80090510 1800BD27 */   addiu     $sp, $sp, 0x18
