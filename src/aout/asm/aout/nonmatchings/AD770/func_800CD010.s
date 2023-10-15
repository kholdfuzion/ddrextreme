.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches


glabel func_800CD010
/* BD810 800CD010 E0FFBD27 */  addiu      $sp, $sp, -0x20
/* BD814 800CD014 1400B1AF */  sw         $s1, 0x14($sp)
/* BD818 800CD018 21888000 */  addu       $s1, $a0, $zero
/* BD81C 800CD01C 2080043C */  lui        $a0, %hi(D_801FBCB0)
/* BD820 800CD020 B0BC8424 */  addiu      $a0, $a0, %lo(D_801FBCB0)
/* BD824 800CD024 19008424 */  addiu      $a0, $a0, 0x19
/* BD828 800CD028 E0070524 */  addiu      $a1, $zero, 0x7e0
/* BD82C 800CD02C 21302002 */  addu       $a2, $s1, $zero
/* BD830 800CD030 08000724 */  addiu      $a3, $zero, 8
/* BD834 800CD034 1800BFAF */  sw         $ra, 0x18($sp)
/* BD838 800CD038 0031030C */  jal        FUN_800cc400
/* BD83C 800CD03C 1000B0AF */   sw        $s0, 0x10($sp)
/* BD840 800CD040 21804000 */  addu       $s0, $v0, $zero
/* BD844 800CD044 07000016 */  bnez       $s0, .L800CD064
/* BD848 800CD048 21202002 */   addu      $a0, $s1, $zero
/* BD84C 800CD04C 9737030C */  jal        FUN_800cde5c
/* BD850 800CD050 08000524 */   addiu     $a1, $zero, 8
/* BD854 800CD054 05004010 */  beqz       $v0, .L800CD06C
/* BD858 800CD058 21100002 */   addu      $v0, $s0, $zero
/* BD85C 800CD05C 1A340308 */  j          .L800CD068
/* BD860 800CD060 F5FF1024 */   addiu     $s0, $zero, -0xb
.L800CD064:
/* BD864 800CD064 F6FF1024 */  addiu      $s0, $zero, -0xa
.L800CD068:
/* BD868 800CD068 21100002 */  addu       $v0, $s0, $zero
.L800CD06C:
/* BD86C 800CD06C 1800BF8F */  lw         $ra, 0x18($sp)
/* BD870 800CD070 1400B18F */  lw         $s1, 0x14($sp)
/* BD874 800CD074 1000B08F */  lw         $s0, 0x10($sp)
/* BD878 800CD078 0800E003 */  jr         $ra
/* BD87C 800CD07C 2000BD27 */   addiu     $sp, $sp, 0x20
