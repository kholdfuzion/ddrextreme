.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches


glabel FUN_80030498
/* 20C98 80030498 0E80023C */  lui        $v0, %hi(D_800D8DF4)
/* 20C9C 8003049C F48D438C */  lw         $v1, %lo(D_800D8DF4)($v0)
/* 20CA0 800304A0 00000000 */  nop
/* 20CA4 800304A4 0800628C */  lw         $v0, 8($v1)
/* 20CA8 800304A8 0800E003 */  jr         $ra
/* 20CAC 800304AC 00000000 */   nop
