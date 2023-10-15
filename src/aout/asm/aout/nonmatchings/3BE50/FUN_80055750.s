.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches


glabel FUN_80055750
/* 45F50 80055750 E8FFBD27 */  addiu      $sp, $sp, -0x18
/* 45F54 80055754 1000BFAF */  sw         $ra, 0x10($sp)
/* 45F58 80055758 D20B010C */  jal        FUN_80042f48
/* 45F5C 8005575C 00000000 */   nop
/* 45F60 80055760 0180043C */  lui        $a0, %hi(D_80013E44)
/* 45F64 80055764 7878000C */  jal        getgameloopmode_8001e1e0
/* 45F68 80055768 443E8424 */   addiu     $a0, $a0, %lo(D_80013E44)
/* 45F6C 8005576C 21204000 */  addu       $a0, $v0, $zero
/* 45F70 80055770 FFFF0524 */  addiu      $a1, $zero, -1
/* 45F74 80055774 8876000C */  jal        FUN_8001da20
/* 45F78 80055778 FFFF0624 */   addiu     $a2, $zero, -1
/* 45F7C 8005577C 1380033C */  lui        $v1, %hi(D_8012AB59)
/* 45F80 80055780 1000BF8F */  lw         $ra, 0x10($sp)
/* 45F84 80055784 01000224 */  addiu      $v0, $zero, 1
/* 45F88 80055788 59AB62A0 */  sb         $v0, %lo(D_8012AB59)($v1)
/* 45F8C 8005578C 0800E003 */  jr         $ra
/* 45F90 80055790 1800BD27 */   addiu     $sp, $sp, 0x18
