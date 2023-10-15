.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches


glabel FUN_8006ef50
/* 5F750 8006EF50 E8FFBD27 */  addiu      $sp, $sp, -0x18
/* 5F754 8006EF54 1000BFAF */  sw         $ra, 0x10($sp)
/* 5F758 8006EF58 01000324 */  addiu      $v1, $zero, 1
/* 5F75C 8006EF5C 1B80023C */  lui        $v0, %hi(D_801AF990)
/* 5F760 8006EF60 90F94224 */  addiu      $v0, $v0, %lo(D_801AF990)
/* 5F764 8006EF64 04004224 */  addiu      $v0, $v0, 4
.L8006EF68:
/* 5F768 8006EF68 000040AC */  sw         $zero, ($v0)
/* 5F76C 8006EF6C FFFF6324 */  addiu      $v1, $v1, -1
/* 5F770 8006EF70 FDFF6104 */  bgez       $v1, .L8006EF68
/* 5F774 8006EF74 FCFF4224 */   addiu     $v0, $v0, -4
/* 5F778 8006EF78 21200000 */  addu       $a0, $zero, $zero
/* 5F77C 8006EF7C FA56010C */  jal        FUN_80055be8
/* 5F780 8006EF80 13000524 */   addiu     $a1, $zero, 0x13
/* 5F784 8006EF84 01000424 */  addiu      $a0, $zero, 1
/* 5F788 8006EF88 FA56010C */  jal        FUN_80055be8
/* 5F78C 8006EF8C 13000524 */   addiu     $a1, $zero, 0x13
/* 5F790 8006EF90 02000424 */  addiu      $a0, $zero, 2
/* 5F794 8006EF94 FA56010C */  jal        FUN_80055be8
/* 5F798 8006EF98 13000524 */   addiu     $a1, $zero, 0x13
/* 5F79C 8006EF9C 03000424 */  addiu      $a0, $zero, 3
/* 5F7A0 8006EFA0 FA56010C */  jal        FUN_80055be8
/* 5F7A4 8006EFA4 13000524 */   addiu     $a1, $zero, 0x13
/* 5F7A8 8006EFA8 04000424 */  addiu      $a0, $zero, 4
/* 5F7AC 8006EFAC FA56010C */  jal        FUN_80055be8
/* 5F7B0 8006EFB0 13000524 */   addiu     $a1, $zero, 0x13
/* 5F7B4 8006EFB4 1000BF8F */  lw         $ra, 0x10($sp)
/* 5F7B8 8006EFB8 00000000 */  nop
/* 5F7BC 8006EFBC 0800E003 */  jr         $ra
/* 5F7C0 8006EFC0 1800BD27 */   addiu     $sp, $sp, 0x18
