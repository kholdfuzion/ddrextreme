.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches


glabel FUN_800ba7bc
/* AAFBC 800BA7BC 1580033C */  lui        $v1, %hi(D_8014BA9C)
/* AAFC0 800BA7C0 9CBA628C */  lw         $v0, %lo(D_8014BA9C)($v1)
/* AAFC4 800BA7C4 0800E003 */  jr         $ra
/* AAFC8 800BA7C8 00000000 */   nop
