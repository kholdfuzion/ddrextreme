.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches


glabel gte_init
/* 12718 80021F18 E8FFBD27 */  addiu      $sp, $sp, -0x18
/* 1271C 80021F1C 1000BFAF */  sw         $ra, 0x10($sp)
/* 12720 80021F20 DC87000C */  jal        InitGeom
/* 12724 80021F24 00000000 */   nop
/* 12728 80021F28 21200000 */  addu       $a0, $zero, $zero
/* 1272C 80021F2C 21280000 */  addu       $a1, $zero, $zero
/* 12730 80021F30 2E88000C */  jal        SetFarColor
/* 12734 80021F34 21300000 */   addu      $a2, $zero, $zero
/* 12738 80021F38 21200000 */  addu       $a0, $zero, $zero
/* 1273C 80021F3C 3688000C */  jal        FUN_800220d8
/* 12740 80021F40 21280000 */   addu      $a1, $zero, $zero
/* 12744 80021F44 1380013C */  lui        $at, %hi(D_8012909E)
/* 12748 80021F48 9E9020A4 */  sh         $zero, %lo(D_8012909E)($at)
/* 1274C 80021F4C 1380013C */  lui        $at, %hi(D_8012909C)
/* 12750 80021F50 9C9020A4 */  sh         $zero, %lo(D_8012909C)($at)
/* 12754 80021F54 1000BF8F */  lw         $ra, 0x10($sp)
/* 12758 80021F58 1800BD27 */  addiu      $sp, $sp, 0x18
/* 1275C 80021F5C 0800E003 */  jr         $ra
/* 12760 80021F60 00000000 */   nop
/* 12764 80021F64 00000000 */  nop
