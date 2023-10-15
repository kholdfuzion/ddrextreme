.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches


glabel FUN_80022ec8
/* 136C8 80022EC8 E8FFBD27 */  addiu      $sp, $sp, -0x18
/* 136CC 80022ECC 1000BFAF */  sw         $ra, 0x10($sp)
/* 136D0 80022ED0 6856010C */  jal        FUN_800559a0
/* 136D4 80022ED4 00000000 */   nop
/* 136D8 80022ED8 1000BF8F */  lw         $ra, 0x10($sp)
/* 136DC 80022EDC 00000000 */  nop
/* 136E0 80022EE0 0800E003 */  jr         $ra
/* 136E4 80022EE4 1800BD27 */   addiu     $sp, $sp, 0x18
