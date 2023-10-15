.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches


glabel FUN_8002ccd4
/* 1D4D4 8002CCD4 0F80023C */  lui        $v0, %hi(D_800EFFA8)
/* 1D4D8 8002CCD8 A8FF438C */  lw         $v1, %lo(D_800EFFA8)($v0)
/* 1D4DC 8002CCDC 40200400 */  sll        $a0, $a0, 1
/* 1D4E0 8002CCE0 21186400 */  addu       $v1, $v1, $a0
/* 1D4E4 8002CCE4 08006294 */  lhu        $v0, 8($v1)
/* 1D4E8 8002CCE8 00000000 */  nop
/* 1D4EC 8002CCEC C2110200 */  srl        $v0, $v0, 7
/* 1D4F0 8002CCF0 0800E003 */  jr         $ra
/* 1D4F4 8002CCF4 01004230 */   andi      $v0, $v0, 1
