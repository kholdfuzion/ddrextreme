.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches


glabel FUN_80022990
/* 13190 80022990 E8FFBD27 */  addiu      $sp, $sp, -0x18
/* 13194 80022994 1000BFAF */  sw         $ra, 0x10($sp)
/* 13198 80022998 F655010C */  jal        FUN_800557d8
/* 1319C 8002299C 00000000 */   nop
/* 131A0 800229A0 B8C1020C */  jal        FUN_800b06e0
/* 131A4 800229A4 FE000424 */   addiu     $a0, $zero, 0xfe
/* 131A8 800229A8 1000BF8F */  lw         $ra, 0x10($sp)
/* 131AC 800229AC 00000000 */  nop
/* 131B0 800229B0 0800E003 */  jr         $ra
/* 131B4 800229B4 1800BD27 */   addiu     $sp, $sp, 0x18
