.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches


glabel FUN_8002cf54
/* 1D754 8002CF54 0F80023C */  lui        $v0, %hi(D_800EFFA8)
/* 1D758 8002CF58 A8FF438C */  lw         $v1, %lo(D_800EFFA8)($v0)
/* 1D75C 8002CF5C 00000000 */  nop
/* 1D760 8002CF60 02006294 */  lhu        $v0, 2($v1)
/* 1D764 8002CF64 00000000 */  nop
/* 1D768 8002CF68 42100200 */  srl        $v0, $v0, 1
/* 1D76C 8002CF6C 0800E003 */  jr         $ra
/* 1D770 8002CF70 01004230 */   andi      $v0, $v0, 1
