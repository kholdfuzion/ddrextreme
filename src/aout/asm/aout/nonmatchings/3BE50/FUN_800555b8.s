.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches


glabel FUN_800555b8
/* 45DB8 800555B8 E8FFBD27 */  addiu      $sp, $sp, -0x18
/* 45DBC 800555BC 0180043C */  lui        $a0, %hi(D_80013E64)
/* 45DC0 800555C0 1000BFAF */  sw         $ra, 0x10($sp)
/* 45DC4 800555C4 7878000C */  jal        getgameloopmode_8001e1e0
/* 45DC8 800555C8 643E8424 */   addiu     $a0, $a0, %lo(D_80013E64)
/* 45DCC 800555CC 21204000 */  addu       $a0, $v0, $zero
/* 45DD0 800555D0 FFFF0524 */  addiu      $a1, $zero, -1
/* 45DD4 800555D4 8876000C */  jal        FUN_8001da20
/* 45DD8 800555D8 FFFF0624 */   addiu     $a2, $zero, -1
/* 45DDC 800555DC 1000BF8F */  lw         $ra, 0x10($sp)
/* 45DE0 800555E0 00000000 */  nop
/* 45DE4 800555E4 0800E003 */  jr         $ra
/* 45DE8 800555E8 1800BD27 */   addiu     $sp, $sp, 0x18
