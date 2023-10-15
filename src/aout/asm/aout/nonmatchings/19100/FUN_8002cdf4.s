.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches


glabel FUN_8002cdf4
/* 1D5F4 8002CDF4 0F80023C */  lui        $v0, %hi(D_800EFFA8)
/* 1D5F8 8002CDF8 A8FF438C */  lw         $v1, %lo(D_800EFFA8)($v0)
/* 1D5FC 8002CDFC 40200400 */  sll        $a0, $a0, 1
/* 1D600 8002CE00 21186400 */  addu       $v1, $v1, $a0
/* 1D604 8002CE04 08006294 */  lhu        $v0, 8($v1)
/* 1D608 8002CE08 0800E003 */  jr         $ra
/* 1D60C 8002CE0C 01004230 */   andi      $v0, $v0, 1
