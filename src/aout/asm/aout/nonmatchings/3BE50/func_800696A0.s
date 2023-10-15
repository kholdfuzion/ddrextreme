.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches


glabel func_800696A0
/* 59EA0 800696A0 0E80023C */  lui        $v0, %hi(D_800DAFD4)
/* 59EA4 800696A4 D4AF438C */  lw         $v1, %lo(D_800DAFD4)($v0)
/* 59EA8 800696A8 00000000 */  nop
/* 59EAC 800696AC 0800628C */  lw         $v0, 8($v1)
/* 59EB0 800696B0 0800E003 */  jr         $ra
/* 59EB4 800696B4 0100422C */   sltiu     $v0, $v0, 1
