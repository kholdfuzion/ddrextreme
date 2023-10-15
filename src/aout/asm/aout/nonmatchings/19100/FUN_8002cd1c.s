.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches


glabel FUN_8002cd1c
/* 1D51C 8002CD1C 0F80023C */  lui        $v0, %hi(D_800EFFA8)
/* 1D520 8002CD20 A8FF438C */  lw         $v1, %lo(D_800EFFA8)($v0)
/* 1D524 8002CD24 40200400 */  sll        $a0, $a0, 1
/* 1D528 8002CD28 21186400 */  addu       $v1, $v1, $a0
/* 1D52C 8002CD2C 08006294 */  lhu        $v0, 8($v1)
/* 1D530 8002CD30 00000000 */  nop
/* 1D534 8002CD34 42110200 */  srl        $v0, $v0, 5
/* 1D538 8002CD38 0800E003 */  jr         $ra
/* 1D53C 8002CD3C 01004230 */   andi      $v0, $v0, 1
