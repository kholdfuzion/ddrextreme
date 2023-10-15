.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches


glabel FUN_8009d898
/* 8E098 8009D898 D8FFBD27 */  addiu      $sp, $sp, -0x28
/* 8E09C 8009D89C 1800B0AF */  sw         $s0, 0x18($sp)
/* 8E0A0 8009D8A0 21808000 */  addu       $s0, $a0, $zero
/* 8E0A4 8009D8A4 21200000 */  addu       $a0, $zero, $zero
/* 8E0A8 8009D8A8 0F000524 */  addiu      $a1, $zero, 0xf
/* 8E0AC 8009D8AC 2000BFAF */  sw         $ra, 0x20($sp)
/* 8E0B0 8009D8B0 1C00B1AF */  sw         $s1, 0x1c($sp)
/* 8E0B4 8009D8B4 FA56010C */  jal        FUN_80055be8
/* 8E0B8 8009D8B8 040000AE */   sw        $zero, 4($s0)
/* 8E0BC 8009D8BC 21200000 */  addu       $a0, $zero, $zero
/* 8E0C0 8009D8C0 946B010C */  jal        FUN_8005ae50
/* 8E0C4 8009D8C4 FFFF0524 */   addiu     $a1, $zero, -1
/* 8E0C8 8009D8C8 21200000 */  addu       $a0, $zero, $zero
/* 8E0CC 8009D8CC 376C010C */  jal        FUN_8005b0dc
/* 8E0D0 8009D8D0 FC000524 */   addiu     $a1, $zero, 0xfc
/* 8E0D4 8009D8D4 0F80023C */  lui        $v0, %hi(D_800F001C)
/* 8E0D8 8009D8D8 1C00448C */  lw         $a0, %lo(D_800F001C)($v0)
/* 8E0DC 8009D8DC 0000038E */  lw         $v1, ($s0)
/* 8E0E0 8009D8E0 00000000 */  nop
/* 8E0E4 8009D8E4 23388300 */  subu       $a3, $a0, $v1
/* 8E0E8 8009D8E8 0C00E004 */  bltz       $a3, .L8009D91C
/* 8E0EC 8009D8EC 21880000 */   addu      $s1, $zero, $zero
/* 8E0F0 8009D8F0 1500E228 */  slti       $v0, $a3, 0x15
/* 8E0F4 8009D8F4 03004014 */  bnez       $v0, .L8009D904
/* 8E0F8 8009D8F8 14000224 */   addiu     $v0, $zero, 0x14
/* 8E0FC 8009D8FC 4D760208 */  j          .L8009D934
/* 8E100 8009D900 04000224 */   addiu     $v0, $zero, 4
.L8009D904:
/* 8E104 8009D904 1000A2AF */  sw         $v0, 0x10($sp)
/* 8E108 8009D908 21200002 */  addu       $a0, $s0, $zero
/* 8E10C 8009D90C 21280000 */  addu       $a1, $zero, $zero
/* 8E110 8009D910 3475020C */  jal        FUN_8009d4d0
/* 8E114 8009D914 21300000 */   addu      $a2, $zero, $zero
/* 8E118 8009D918 21884000 */  addu       $s1, $v0, $zero
.L8009D91C:
/* 8E11C 8009D91C 21200000 */  addu       $a0, $zero, $zero
/* 8E120 8009D920 1D6B010C */  jal        FUN_8005ac74
/* 8E124 8009D924 21282002 */   addu      $a1, $s1, $zero
/* 8E128 8009D928 9157010C */  jal        FUN_80055e44
/* 8E12C 8009D92C 21200000 */   addu      $a0, $zero, $zero
/* 8E130 8009D930 21100000 */  addu       $v0, $zero, $zero
.L8009D934:
/* 8E134 8009D934 2000BF8F */  lw         $ra, 0x20($sp)
/* 8E138 8009D938 1C00B18F */  lw         $s1, 0x1c($sp)
/* 8E13C 8009D93C 1800B08F */  lw         $s0, 0x18($sp)
/* 8E140 8009D940 0800E003 */  jr         $ra
/* 8E144 8009D944 2800BD27 */   addiu     $sp, $sp, 0x28
