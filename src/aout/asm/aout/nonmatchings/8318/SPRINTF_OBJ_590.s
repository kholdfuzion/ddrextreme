.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches


glabel SPRINTF_OBJ_590
/* 113C8 80020BC8 0180073C */  lui        $a3, %hi(D_800109CC)
/* 113CC 80020BCC F7820008 */  j          SPRINTF_OBJ_5A4
/* 113D0 80020BD0 CC09E724 */   addiu     $a3, $a3, %lo(D_800109CC)
