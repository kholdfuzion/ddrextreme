.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches


glabel GetGraphDebug
/* 8A58 80018258 0D80023C */  lui        $v0, %hi(D_800D2B9A)
/* 8A5C 8001825C 9A2B4290 */  lbu        $v0, %lo(D_800D2B9A)($v0)
/* 8A60 80018260 0800E003 */  jr         $ra
/* 8A64 80018264 00000000 */   nop
