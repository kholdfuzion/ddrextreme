.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches


glabel FUN_800b17fc
/* A1FFC 800B17FC E0FFBD27 */  addiu      $sp, $sp, -0x20
/* A2000 800B1800 1800BFAF */  sw         $ra, 0x18($sp)
/* A2004 800B1804 21200000 */  addu       $a0, $zero, $zero
/* A2008 800B1808 14000524 */  addiu      $a1, $zero, 0x14
/* A200C 800B180C 1000A627 */  addiu      $a2, $sp, 0x10
/* A2010 800B1810 21FD020C */  jal        FUN_800bf484
/* A2014 800B1814 21380000 */   addu      $a3, $zero, $zero
/* A2018 800B1818 02004014 */  bnez       $v0, .L800B1824
/* A201C 800B181C FFFF0224 */   addiu     $v0, $zero, -1
/* A2020 800B1820 1400A28F */  lw         $v0, 0x14($sp)
.L800B1824:
/* A2024 800B1824 1800BF8F */  lw         $ra, 0x18($sp)
/* A2028 800B1828 00000000 */  nop
/* A202C 800B182C 0800E003 */  jr         $ra
/* A2030 800B1830 2000BD27 */   addiu     $sp, $sp, 0x20
