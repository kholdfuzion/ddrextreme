.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches


glabel FUN_800426ac
/* 32EAC 800426AC E8FFBD27 */  addiu      $sp, $sp, -0x18
/* 32EB0 800426B0 1000BFAF */  sw         $ra, 0x10($sp)
/* 32EB4 800426B4 7DC4000C */  jal        get_astruct_800311f4
/* 32EB8 800426B8 00000000 */   nop
/* 32EBC 800426BC 1000BF8F */  lw         $ra, 0x10($sp)
/* 32EC0 800426C0 040040A4 */  sh         $zero, 4($v0)
/* 32EC4 800426C4 160040A4 */  sh         $zero, 0x16($v0)
/* 32EC8 800426C8 0800E003 */  jr         $ra
/* 32ECC 800426CC 1800BD27 */   addiu     $sp, $sp, 0x18
