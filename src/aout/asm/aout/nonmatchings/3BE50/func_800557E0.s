.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches


glabel func_800557E0
/* 45FE0 800557E0 E8FFBD27 */  addiu      $sp, $sp, -0x18
/* 45FE4 800557E4 0180043C */  lui        $a0, %hi(D_80013E50)
/* 45FE8 800557E8 1000BFAF */  sw         $ra, 0x10($sp)
/* 45FEC 800557EC 7878000C */  jal        getgameloopmode_8001e1e0
/* 45FF0 800557F0 503E8424 */   addiu     $a0, $a0, %lo(D_80013E50)
/* 45FF4 800557F4 21204000 */  addu       $a0, $v0, $zero
/* 45FF8 800557F8 FFFF0524 */  addiu      $a1, $zero, -1
/* 45FFC 800557FC 8876000C */  jal        FUN_8001da20
/* 46000 80055800 FFFF0624 */   addiu     $a2, $zero, -1
/* 46004 80055804 1000BF8F */  lw         $ra, 0x10($sp)
/* 46008 80055808 00000000 */  nop
/* 4600C 8005580C 0800E003 */  jr         $ra
/* 46010 80055810 1800BD27 */   addiu     $sp, $sp, 0x18
