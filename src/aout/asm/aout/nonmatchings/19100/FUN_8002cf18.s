.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches


glabel FUN_8002cf18
/* 1D718 8002CF18 0F80023C */  lui        $v0, %hi(D_800EFFA8)
/* 1D71C 8002CF1C A8FF438C */  lw         $v1, %lo(D_800EFFA8)($v0)
/* 1D720 8002CF20 40200400 */  sll        $a0, $a0, 1
/* 1D724 8002CF24 21186400 */  addu       $v1, $v1, $a0
/* 1D728 8002CF28 00006294 */  lhu        $v0, ($v1)
/* 1D72C 8002CF2C 00000000 */  nop
/* 1D730 8002CF30 C2100200 */  srl        $v0, $v0, 3
/* 1D734 8002CF34 0800E003 */  jr         $ra
/* 1D738 8002CF38 01004230 */   andi      $v0, $v0, 1
