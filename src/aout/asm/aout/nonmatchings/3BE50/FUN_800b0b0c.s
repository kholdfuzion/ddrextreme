.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches


glabel FUN_800b0b0c
/* A130C 800B0B0C 0800E003 */  jr         $ra
/* A1310 800B0B10 21108003 */   addu      $v0, $gp, $zero
/* A1314 800B0B14 00000000 */  nop
/* A1318 800B0B18 00000000 */  nop
