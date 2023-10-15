.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches


glabel FUN_8002ccf8
/* 1D4F8 8002CCF8 0F80023C */  lui        $v0, %hi(D_800EFFA8)
/* 1D4FC 8002CCFC A8FF438C */  lw         $v1, %lo(D_800EFFA8)($v0)
/* 1D500 8002CD00 40200400 */  sll        $a0, $a0, 1
/* 1D504 8002CD04 21186400 */  addu       $v1, $v1, $a0
/* 1D508 8002CD08 08006294 */  lhu        $v0, 8($v1)
/* 1D50C 8002CD0C 00000000 */  nop
/* 1D510 8002CD10 C2110200 */  srl        $v0, $v0, 7
/* 1D514 8002CD14 0800E003 */  jr         $ra
/* 1D518 8002CD18 01004230 */   andi      $v0, $v0, 1
