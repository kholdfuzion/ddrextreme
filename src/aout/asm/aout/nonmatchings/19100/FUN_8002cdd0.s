.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches


glabel FUN_8002cdd0
/* 1D5D0 8002CDD0 0F80023C */  lui        $v0, %hi(D_800EFFA8)
/* 1D5D4 8002CDD4 A8FF438C */  lw         $v1, %lo(D_800EFFA8)($v0)
/* 1D5D8 8002CDD8 40200400 */  sll        $a0, $a0, 1
/* 1D5DC 8002CDDC 21186400 */  addu       $v1, $v1, $a0
/* 1D5E0 8002CDE0 00006294 */  lhu        $v0, ($v1)
/* 1D5E4 8002CDE4 00000000 */  nop
/* 1D5E8 8002CDE8 82110200 */  srl        $v0, $v0, 6
/* 1D5EC 8002CDEC 0800E003 */  jr         $ra
/* 1D5F0 8002CDF0 01004230 */   andi      $v0, $v0, 1
