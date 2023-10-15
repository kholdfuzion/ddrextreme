.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches


glabel FUN_8002cd64
/* 1D564 8002CD64 0F80023C */  lui        $v0, %hi(D_800EFFA8)
/* 1D568 8002CD68 A8FF438C */  lw         $v1, %lo(D_800EFFA8)($v0)
/* 1D56C 8002CD6C 40200400 */  sll        $a0, $a0, 1
/* 1D570 8002CD70 21186400 */  addu       $v1, $v1, $a0
/* 1D574 8002CD74 00006294 */  lhu        $v0, ($v1)
/* 1D578 8002CD78 00000000 */  nop
/* 1D57C 8002CD7C C2110200 */  srl        $v0, $v0, 7
/* 1D580 8002CD80 0800E003 */  jr         $ra
/* 1D584 8002CD84 01004230 */   andi      $v0, $v0, 1
