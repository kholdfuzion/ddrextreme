.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches


glabel func_800A98B8
/* 9A0B8 800A98B8 0F80023C */  lui        $v0, %hi(D_800EC6E8)
/* 9A0BC 800A98BC E8C640AC */  sw         $zero, %lo(D_800EC6E8)($v0)
/* 9A0C0 800A98C0 0800E003 */  jr         $ra
/* 9A0C4 800A98C4 21100000 */   addu      $v0, $zero, $zero
