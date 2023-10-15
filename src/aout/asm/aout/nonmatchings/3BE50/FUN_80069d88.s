.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches


glabel FUN_80069d88
/* 5A588 80069D88 E8FFBD27 */  addiu      $sp, $sp, -0x18
/* 5A58C 80069D8C 1000BFAF */  sw         $ra, 0x10($sp)
/* 5A590 80069D90 39A6010C */  jal        FUN_800698e4
/* 5A594 80069D94 000080AC */   sw        $zero, ($a0)
/* 5A598 80069D98 1000BF8F */  lw         $ra, 0x10($sp)
/* 5A59C 80069D9C 00000000 */  nop
/* 5A5A0 80069DA0 0800E003 */  jr         $ra
/* 5A5A4 80069DA4 1800BD27 */   addiu     $sp, $sp, 0x18
