.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches


glabel FUN_80072ea0
/* 636A0 80072EA0 1B80023C */  lui        $v0, %hi(D_801AFBF4)
/* 636A4 80072EA4 F4FB448C */  lw         $a0, %lo(D_801AFBF4)($v0)
/* 636A8 80072EA8 06000324 */  addiu      $v1, $zero, 6
/* 636AC 80072EAC 0800E003 */  jr         $ra
/* 636B0 80072EB0 DB0083A0 */   sb        $v1, 0xdb($a0)
