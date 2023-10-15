.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches


glabel FUN_8002ce58
/* 1D658 8002CE58 0F80023C */  lui        $v0, %hi(D_800EFFA8)
/* 1D65C 8002CE5C A8FF438C */  lw         $v1, %lo(D_800EFFA8)($v0)
/* 1D660 8002CE60 40200400 */  sll        $a0, $a0, 1
/* 1D664 8002CE64 21186400 */  addu       $v1, $v1, $a0
/* 1D668 8002CE68 08006294 */  lhu        $v0, 8($v1)
/* 1D66C 8002CE6C 00000000 */  nop
/* 1D670 8002CE70 C2100200 */  srl        $v0, $v0, 3
/* 1D674 8002CE74 0800E003 */  jr         $ra
/* 1D678 8002CE78 01004230 */   andi      $v0, $v0, 1
