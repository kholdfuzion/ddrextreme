.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches


glabel FUN_8002ce34
/* 1D634 8002CE34 0F80023C */  lui        $v0, %hi(D_800EFFA8)
/* 1D638 8002CE38 A8FF438C */  lw         $v1, %lo(D_800EFFA8)($v0)
/* 1D63C 8002CE3C 40200400 */  sll        $a0, $a0, 1
/* 1D640 8002CE40 21186400 */  addu       $v1, $v1, $a0
/* 1D644 8002CE44 08006294 */  lhu        $v0, 8($v1)
/* 1D648 8002CE48 00000000 */  nop
/* 1D64C 8002CE4C 82100200 */  srl        $v0, $v0, 2
/* 1D650 8002CE50 0800E003 */  jr         $ra
/* 1D654 8002CE54 01004230 */   andi      $v0, $v0, 1
