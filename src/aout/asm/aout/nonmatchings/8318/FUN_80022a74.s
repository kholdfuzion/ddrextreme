.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches


glabel FUN_80022a74
/* 13274 80022A74 E8FFBD27 */  addiu      $sp, $sp, -0x18
/* 13278 80022A78 1000BFAF */  sw         $ra, 0x10($sp)
/* 1327C 80022A7C BF55010C */  jal        FUN_800556fc
/* 13280 80022A80 00000000 */   nop
/* 13284 80022A84 1000BF8F */  lw         $ra, 0x10($sp)
/* 13288 80022A88 00000000 */  nop
/* 1328C 80022A8C 0800E003 */  jr         $ra
/* 13290 80022A90 1800BD27 */   addiu     $sp, $sp, 0x18
