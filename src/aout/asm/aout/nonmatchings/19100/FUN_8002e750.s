.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches


glabel FUN_8002e750
/* 1EF50 8002E750 1580033C */  lui        $v1, %hi(D_8014DEF0)
/* 1EF54 8002E754 F0DE628C */  lw         $v0, %lo(D_8014DEF0)($v1)
/* 1EF58 8002E758 0800E003 */  jr         $ra
/* 1EF5C 8002E75C 00000000 */   nop
