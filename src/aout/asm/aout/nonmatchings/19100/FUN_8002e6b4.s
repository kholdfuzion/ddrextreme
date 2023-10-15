.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches


glabel FUN_8002e6b4
/* 1EEB4 8002E6B4 1580033C */  lui        $v1, %hi(D_8014DEC8)
/* 1EEB8 8002E6B8 C8DE628C */  lw         $v0, %lo(D_8014DEC8)($v1)
/* 1EEBC 8002E6BC 0800E003 */  jr         $ra
/* 1EEC0 8002E6C0 00000000 */   nop
