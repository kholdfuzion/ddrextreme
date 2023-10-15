.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches


glabel FUN_800b0a04
/* A1204 800B0A04 0800E003 */  jr         $ra
/* A1208 800B0A08 21100000 */   addu      $v0, $zero, $zero
