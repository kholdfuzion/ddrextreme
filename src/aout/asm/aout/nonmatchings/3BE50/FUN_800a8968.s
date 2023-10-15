.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches


glabel FUN_800a8968
/* 99168 800A8968 1B80023C */  lui        $v0, %hi(D_801B2F58)
/* 9916C 800A896C 0800E003 */  jr         $ra
/* 99170 800A8970 582F4224 */   addiu     $v0, $v0, %lo(D_801B2F58)
