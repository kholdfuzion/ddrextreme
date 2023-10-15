.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches


glabel FUN_8002cdac
/* 1D5AC 8002CDAC 0F80023C */  lui        $v0, %hi(D_800EFFA8)
/* 1D5B0 8002CDB0 A8FF438C */  lw         $v1, %lo(D_800EFFA8)($v0)
/* 1D5B4 8002CDB4 40200400 */  sll        $a0, $a0, 1
/* 1D5B8 8002CDB8 21186400 */  addu       $v1, $v1, $a0
/* 1D5BC 8002CDBC 00006294 */  lhu        $v0, ($v1)
/* 1D5C0 8002CDC0 00000000 */  nop
/* 1D5C4 8002CDC4 42110200 */  srl        $v0, $v0, 5
/* 1D5C8 8002CDC8 0800E003 */  jr         $ra
/* 1D5CC 8002CDCC 01004230 */   andi      $v0, $v0, 1
