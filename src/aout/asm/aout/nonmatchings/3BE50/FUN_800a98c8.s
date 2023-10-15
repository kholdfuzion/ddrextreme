.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches


glabel FUN_800a98c8
/* 9A0C8 800A98C8 0F80033C */  lui        $v1, %hi(D_800EC6E8)
/* 9A0CC 800A98CC 01000224 */  addiu      $v0, $zero, 1
/* 9A0D0 800A98D0 0800E003 */  jr         $ra
/* 9A0D4 800A98D4 E8C662AC */   sw        $v0, %lo(D_800EC6E8)($v1)
