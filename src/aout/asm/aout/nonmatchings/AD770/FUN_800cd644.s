.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches


glabel FUN_800cd644
/* BDE44 800CD644 2080023C */  lui        $v0, %hi(D_801FBCD8)
/* BDE48 800CD648 D8BC428C */  lw         $v0, %lo(D_801FBCD8)($v0)
/* BDE4C 800CD64C 0800E003 */  jr         $ra
/* BDE50 800CD650 00000000 */   nop
