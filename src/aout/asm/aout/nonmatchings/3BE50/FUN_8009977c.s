.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches


glabel FUN_8009977c
/* 89F7C 8009977C D8FFBD27 */  addiu      $sp, $sp, -0x28
/* 89F80 80099780 1800B0AF */  sw         $s0, 0x18($sp)
/* 89F84 80099784 21808000 */  addu       $s0, $a0, $zero
/* 89F88 80099788 2000BFAF */  sw         $ra, 0x20($sp)
/* 89F8C 8009978C 4564020C */  jal        FUN_80099114
/* 89F90 80099790 1C00B1AF */   sw        $s1, 0x1c($sp)
/* 89F94 80099794 06000424 */  addiu      $a0, $zero, 6
/* 89F98 80099798 FFFF0524 */  addiu      $a1, $zero, -1
/* 89F9C 8009979C FFFF0624 */  addiu      $a2, $zero, -1
/* 89FA0 800997A0 FFFF0724 */  addiu      $a3, $zero, -1
/* 89FA4 800997A4 FFFF1124 */  addiu      $s1, $zero, -1
/* 89FA8 800997A8 766C010C */  jal        FUN_8005b1d8
/* 89FAC 800997AC 1000B1AF */   sw        $s1, 0x10($sp)
/* 89FB0 800997B0 07000424 */  addiu      $a0, $zero, 7
/* 89FB4 800997B4 FFFF0524 */  addiu      $a1, $zero, -1
/* 89FB8 800997B8 FFFF0624 */  addiu      $a2, $zero, -1
/* 89FBC 800997BC FFFF0724 */  addiu      $a3, $zero, -1
/* 89FC0 800997C0 766C010C */  jal        FUN_8005b1d8
/* 89FC4 800997C4 1000B1AF */   sw        $s1, 0x10($sp)
/* 89FC8 800997C8 0180043C */  lui        $a0, %hi(D_800165BC)
/* 89FCC 800997CC BC658424 */  addiu      $a0, $a0, %lo(D_800165BC)
/* 89FD0 800997D0 20000224 */  addiu      $v0, $zero, 0x20
/* 89FD4 800997D4 240000AE */  sw         $zero, 0x24($s0)
/* 89FD8 800997D8 280002A2 */  sb         $v0, 0x28($s0)
/* 89FDC 800997DC 300000AE */  sw         $zero, 0x30($s0)
/* 89FE0 800997E0 7878000C */  jal        getgameloopmode_8001e1e0
/* 89FE4 800997E4 340011AE */   sw        $s1, 0x34($s0)
/* 89FE8 800997E8 21204000 */  addu       $a0, $v0, $zero
/* 89FEC 800997EC FFFF0524 */  addiu      $a1, $zero, -1
/* 89FF0 800997F0 8876000C */  jal        FUN_8001da20
/* 89FF4 800997F4 FFFF0624 */   addiu     $a2, $zero, -1
/* 89FF8 800997F8 0180043C */  lui        $a0, %hi(D_800165C8)
/* 89FFC 800997FC 7878000C */  jal        getgameloopmode_8001e1e0
/* 8A000 80099800 C8658424 */   addiu     $a0, $a0, %lo(D_800165C8)
/* 8A004 80099804 21204000 */  addu       $a0, $v0, $zero
/* 8A008 80099808 FFFF0524 */  addiu      $a1, $zero, -1
/* 8A00C 8009980C 8876000C */  jal        FUN_8001da20
/* 8A010 80099810 FFFF0624 */   addiu     $a2, $zero, -1
/* 8A014 80099814 21200000 */  addu       $a0, $zero, $zero
/* 8A018 80099818 21280000 */  addu       $a1, $zero, $zero
/* 8A01C 8009981C AD3E010C */  jal        FUN_8004fab4
/* 8A020 80099820 FFFF0624 */   addiu     $a2, $zero, -1
/* 8A024 80099824 0180043C */  lui        $a0, %hi(D_800165D4)
/* 8A028 80099828 7878000C */  jal        getgameloopmode_8001e1e0
/* 8A02C 8009982C D4658424 */   addiu     $a0, $a0, %lo(D_800165D4)
/* 8A030 80099830 21204000 */  addu       $a0, $v0, $zero
/* 8A034 80099834 FFFF0524 */  addiu      $a1, $zero, -1
/* 8A038 80099838 8876000C */  jal        FUN_8001da20
/* 8A03C 8009983C FFFF0624 */   addiu     $a2, $zero, -1
/* 8A040 80099840 12CB020C */  jal        FUN_800b2c48
/* 8A044 80099844 86000424 */   addiu     $a0, $zero, 0x86
/* 8A048 80099848 2000BF8F */  lw         $ra, 0x20($sp)
/* 8A04C 8009984C 1C00B18F */  lw         $s1, 0x1c($sp)
/* 8A050 80099850 1800B08F */  lw         $s0, 0x18($sp)
/* 8A054 80099854 0800E003 */  jr         $ra
/* 8A058 80099858 2800BD27 */   addiu     $sp, $sp, 0x28
