.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches


glabel FUN_8002cd40
/* 1D540 8002CD40 0F80023C */  lui        $v0, %hi(D_800EFFA8)
/* 1D544 8002CD44 A8FF438C */  lw         $v1, %lo(D_800EFFA8)($v0)
/* 1D548 8002CD48 40200400 */  sll        $a0, $a0, 1
/* 1D54C 8002CD4C 21186400 */  addu       $v1, $v1, $a0
/* 1D550 8002CD50 08006294 */  lhu        $v0, 8($v1)
/* 1D554 8002CD54 00000000 */  nop
/* 1D558 8002CD58 82110200 */  srl        $v0, $v0, 6
/* 1D55C 8002CD5C 0800E003 */  jr         $ra
/* 1D560 8002CD60 01004230 */   andi      $v0, $v0, 1
