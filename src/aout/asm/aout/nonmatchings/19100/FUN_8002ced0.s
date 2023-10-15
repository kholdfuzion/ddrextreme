.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches


glabel FUN_8002ced0
/* 1D6D0 8002CED0 0F80023C */  lui        $v0, %hi(D_800EFFA8)
/* 1D6D4 8002CED4 A8FF438C */  lw         $v1, %lo(D_800EFFA8)($v0)
/* 1D6D8 8002CED8 40200400 */  sll        $a0, $a0, 1
/* 1D6DC 8002CEDC 21186400 */  addu       $v1, $v1, $a0
/* 1D6E0 8002CEE0 00006294 */  lhu        $v0, ($v1)
/* 1D6E4 8002CEE4 00000000 */  nop
/* 1D6E8 8002CEE8 42100200 */  srl        $v0, $v0, 1
/* 1D6EC 8002CEEC 0800E003 */  jr         $ra
/* 1D6F0 8002CEF0 01004230 */   andi      $v0, $v0, 1
