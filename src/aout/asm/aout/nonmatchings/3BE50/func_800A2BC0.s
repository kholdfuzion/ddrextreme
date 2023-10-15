.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches


glabel func_800A2BC0
/* 933C0 800A2BC0 1B80023C */  lui        $v0, %hi(D_801B2B88)
/* 933C4 800A2BC4 882B438C */  lw         $v1, %lo(D_801B2B88)($v0)
/* 933C8 800A2BC8 00000000 */  nop
/* 933CC 800A2BCC 0000628C */  lw         $v0, ($v1)
/* 933D0 800A2BD0 0800E003 */  jr         $ra
/* 933D4 800A2BD4 00000000 */   nop
