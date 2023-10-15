.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches


glabel FUN_800b67fc
/* A6FFC 800B67FC E8FFBD27 */  addiu      $sp, $sp, -0x18
/* A7000 800B6800 1000BFAF */  sw         $ra, 0x10($sp)
/* A7004 800B6804 09DE020C */  jal        FUN_800b7824
/* A7008 800B6808 00000000 */   nop
/* A700C 800B680C 1000BF8F */  lw         $ra, 0x10($sp)
/* A7010 800B6810 00000000 */  nop
/* A7014 800B6814 0800E003 */  jr         $ra
/* A7018 800B6818 1800BD27 */   addiu     $sp, $sp, 0x18
