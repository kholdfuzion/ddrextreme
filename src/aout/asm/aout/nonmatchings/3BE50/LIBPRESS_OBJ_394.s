.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches


glabel LIBPRESS_OBJ_394
/* 63CD8 800734D8 0180043C */  lui        $a0, %hi(D_8001486C)
/* 63CDC 800734DC 755F000C */  jal        FUN_80017dd4
/* 63CE0 800734E0 6C488424 */   addiu     $a0, $a0, %lo(D_8001486C)
