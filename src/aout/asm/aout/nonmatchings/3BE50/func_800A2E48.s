.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches


glabel func_800A2E48
/* 93648 800A2E48 1B80023C */  lui        $v0, %hi(D_801B2B88)
/* 9364C 800A2E4C 882B438C */  lw         $v1, %lo(D_801B2B88)($v0)
/* 93650 800A2E50 00000000 */  nop
/* 93654 800A2E54 0000628C */  lw         $v0, ($v1)
/* 93658 800A2E58 0800E003 */  jr         $ra
/* 9365C 800A2E5C 00000000 */   nop
