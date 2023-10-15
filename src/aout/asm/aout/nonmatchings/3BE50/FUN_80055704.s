.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches


glabel FUN_80055704
/* 45F04 80055704 E8FFBD27 */  addiu      $sp, $sp, -0x18
/* 45F08 80055708 1000BFAF */  sw         $ra, 0x10($sp)
/* 45F0C 8005570C D20B010C */  jal        FUN_80042f48
/* 45F10 80055710 00000000 */   nop
/* 45F14 80055714 0180043C */  lui        $a0, %hi(D_80013E38)
/* 45F18 80055718 7878000C */  jal        getgameloopmode_8001e1e0
/* 45F1C 8005571C 383E8424 */   addiu     $a0, $a0, %lo(D_80013E38)
/* 45F20 80055720 21204000 */  addu       $a0, $v0, $zero
/* 45F24 80055724 FFFF0524 */  addiu      $a1, $zero, -1
/* 45F28 80055728 8876000C */  jal        FUN_8001da20
/* 45F2C 8005572C FFFF0624 */   addiu     $a2, $zero, -1
/* 45F30 80055730 1380033C */  lui        $v1, %hi(D_8012AB59)
/* 45F34 80055734 1000BF8F */  lw         $ra, 0x10($sp)
/* 45F38 80055738 01000224 */  addiu      $v0, $zero, 1
/* 45F3C 8005573C 59AB62A0 */  sb         $v0, %lo(D_8012AB59)($v1)
/* 45F40 80055740 0800E003 */  jr         $ra
/* 45F44 80055744 1800BD27 */   addiu     $sp, $sp, 0x18
