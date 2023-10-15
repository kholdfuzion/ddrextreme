.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches


glabel FUN_8002cf3c
/* 1D73C 8002CF3C 0F80023C */  lui        $v0, %hi(D_800EFFA8)
/* 1D740 8002CF40 A8FF438C */  lw         $v1, %lo(D_800EFFA8)($v0)
/* 1D744 8002CF44 00000000 */  nop
/* 1D748 8002CF48 02006294 */  lhu        $v0, 2($v1)
/* 1D74C 8002CF4C 0800E003 */  jr         $ra
/* 1D750 8002CF50 01004230 */   andi      $v0, $v0, 1
