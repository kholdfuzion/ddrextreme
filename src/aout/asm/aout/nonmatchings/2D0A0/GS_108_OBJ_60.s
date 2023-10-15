.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches


glabel GS_108_OBJ_60
/* 3AEB0 8004A6B0 0180043C */  lui        $a0, %hi(D_80013C64)
/* 3AEB4 8004A6B4 755F000C */  jal        FUN_80017dd4
/* 3AEB8 8004A6B8 643C8424 */   addiu     $a0, $a0, %lo(D_80013C64)
