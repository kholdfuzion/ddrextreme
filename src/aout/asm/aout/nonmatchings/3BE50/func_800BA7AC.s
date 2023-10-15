.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches


glabel func_800BA7AC
/* AAFAC 800BA7AC 1580033C */  lui        $v1, %hi(D_8014BAA8)
/* AAFB0 800BA7B0 A8BA628C */  lw         $v0, %lo(D_8014BAA8)($v1)
/* AAFB4 800BA7B4 0800E003 */  jr         $ra
/* AAFB8 800BA7B8 00000000 */   nop
