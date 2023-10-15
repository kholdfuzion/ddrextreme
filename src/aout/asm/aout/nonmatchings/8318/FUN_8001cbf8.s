.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches


glabel FUN_8001cbf8
/* D3F8 8001CBF8 E8FFBD27 */  addiu      $sp, $sp, -0x18
/* D3FC 8001CBFC 1000BFAF */  sw         $ra, 0x10($sp)
/* D400 8001CC00 81C2020C */  jal        FUN_800b0a04
/* D404 8001CC04 00000000 */   nop
/* D408 8001CC08 1000BF8F */  lw         $ra, 0x10($sp)
/* D40C 8001CC0C 00000000 */  nop
/* D410 8001CC10 0800E003 */  jr         $ra
/* D414 8001CC14 1800BD27 */   addiu     $sp, $sp, 0x18
