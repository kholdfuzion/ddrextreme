.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches


glabel FUN_80075698
/* 65E98 80075698 1B80023C */  lui        $v0, %hi(D_801B0E34)
/* 65E9C 8007569C 340E448C */  lw         $a0, %lo(D_801B0E34)($v0)
/* 65EA0 800756A0 01000324 */  addiu      $v1, $zero, 1
/* 65EA4 800756A4 0800E003 */  jr         $ra
/* 65EA8 800756A8 040083AC */   sw        $v1, 4($a0)
