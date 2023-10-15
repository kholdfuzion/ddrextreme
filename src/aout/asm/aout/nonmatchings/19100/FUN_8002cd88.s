.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches


glabel FUN_8002cd88
/* 1D588 8002CD88 0F80023C */  lui        $v0, %hi(D_800EFFA8)
/* 1D58C 8002CD8C A8FF438C */  lw         $v1, %lo(D_800EFFA8)($v0)
/* 1D590 8002CD90 40200400 */  sll        $a0, $a0, 1
/* 1D594 8002CD94 21186400 */  addu       $v1, $v1, $a0
/* 1D598 8002CD98 00006294 */  lhu        $v0, ($v1)
/* 1D59C 8002CD9C 00000000 */  nop
/* 1D5A0 8002CDA0 C2110200 */  srl        $v0, $v0, 7
/* 1D5A4 8002CDA4 0800E003 */  jr         $ra
/* 1D5A8 8002CDA8 01004230 */   andi      $v0, $v0, 1
