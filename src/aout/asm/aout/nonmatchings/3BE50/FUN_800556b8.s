.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches


glabel FUN_800556b8
/* 45EB8 800556B8 E8FFBD27 */  addiu      $sp, $sp, -0x18
/* 45EBC 800556BC 1000BFAF */  sw         $ra, 0x10($sp)
/* 45EC0 800556C0 D20B010C */  jal        FUN_80042f48
/* 45EC4 800556C4 00000000 */   nop
/* 45EC8 800556C8 0180043C */  lui        $a0, %hi(D_80013E2C)
/* 45ECC 800556CC 7878000C */  jal        getgameloopmode_8001e1e0
/* 45ED0 800556D0 2C3E8424 */   addiu     $a0, $a0, %lo(D_80013E2C)
/* 45ED4 800556D4 21204000 */  addu       $a0, $v0, $zero
/* 45ED8 800556D8 FFFF0524 */  addiu      $a1, $zero, -1
/* 45EDC 800556DC 8876000C */  jal        FUN_8001da20
/* 45EE0 800556E0 FFFF0624 */   addiu     $a2, $zero, -1
/* 45EE4 800556E4 1380033C */  lui        $v1, %hi(D_8012AB59)
/* 45EE8 800556E8 1000BF8F */  lw         $ra, 0x10($sp)
/* 45EEC 800556EC 01000224 */  addiu      $v0, $zero, 1
/* 45EF0 800556F0 59AB62A0 */  sb         $v0, %lo(D_8012AB59)($v1)
/* 45EF4 800556F4 0800E003 */  jr         $ra
/* 45EF8 800556F8 1800BD27 */   addiu     $sp, $sp, 0x18
