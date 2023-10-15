.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches


glabel FUN_800756ac
/* 65EAC 800756AC 1B80023C */  lui        $v0, %hi(D_801B0E34)
/* 65EB0 800756B0 340E448C */  lw         $a0, %lo(D_801B0E34)($v0)
/* 65EB4 800756B4 01000324 */  addiu      $v1, $zero, 1
/* 65EB8 800756B8 0800E003 */  jr         $ra
/* 65EBC 800756BC 080083AC */   sw        $v1, 8($a0)
