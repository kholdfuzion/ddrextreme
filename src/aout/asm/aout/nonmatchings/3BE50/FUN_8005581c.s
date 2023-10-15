.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches


glabel FUN_8005581c
/* 4601C 8005581C E8FFBD27 */  addiu      $sp, $sp, -0x18
/* 46020 80055820 1000BFAF */  sw         $ra, 0x10($sp)
/* 46024 80055824 D20B010C */  jal        FUN_80042f48
/* 46028 80055828 00000000 */   nop
/* 4602C 8005582C 0180043C */  lui        $a0, %hi(D_80013E58)
/* 46030 80055830 7878000C */  jal        getgameloopmode_8001e1e0
/* 46034 80055834 583E8424 */   addiu     $a0, $a0, %lo(D_80013E58)
/* 46038 80055838 21204000 */  addu       $a0, $v0, $zero
/* 4603C 8005583C FFFF0524 */  addiu      $a1, $zero, -1
/* 46040 80055840 8876000C */  jal        FUN_8001da20
/* 46044 80055844 FFFF0624 */   addiu     $a2, $zero, -1
/* 46048 80055848 1000BF8F */  lw         $ra, 0x10($sp)
/* 4604C 8005584C 00000000 */  nop
/* 46050 80055850 0800E003 */  jr         $ra
/* 46054 80055854 1800BD27 */   addiu     $sp, $sp, 0x18
