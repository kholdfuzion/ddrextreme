.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches


glabel FUN_800a1928
/* 92128 800A1928 1B80023C */  lui        $v0, %hi(D_801B2B84)
/* 9212C 800A192C 842B448C */  lw         $a0, %lo(D_801B2B84)($v0)
/* 92130 800A1930 01000324 */  addiu      $v1, $zero, 1
/* 92134 800A1934 0800E003 */  jr         $ra
/* 92138 800A1938 000083AC */   sw        $v1, ($a0)
