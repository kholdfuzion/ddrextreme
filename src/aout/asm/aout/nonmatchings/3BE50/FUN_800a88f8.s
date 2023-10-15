.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches


glabel FUN_800a88f8
/* 990F8 800A88F8 E0FFBD27 */  addiu      $sp, $sp, -0x20
/* 990FC 800A88FC 1000B0AF */  sw         $s0, 0x10($sp)
/* 99100 800A8900 21808000 */  addu       $s0, $a0, $zero
/* 99104 800A8904 1400B1AF */  sw         $s1, 0x14($sp)
/* 99108 800A8908 1800BFAF */  sw         $ra, 0x18($sp)
/* 9910C 800A890C 5AA2020C */  jal        FUN_800a8968
/* 99110 800A8910 2188A000 */   addu      $s1, $a1, $zero
/* 99114 800A8914 21204000 */  addu       $a0, $v0, $zero
/* 99118 800A8918 21280002 */  addu       $a1, $s0, $zero
/* 9911C 800A891C C6A2020C */  jal        FUN_800a8b18
/* 99120 800A8920 21302002 */   addu      $a2, $s1, $zero
/* 99124 800A8924 1800BF8F */  lw         $ra, 0x18($sp)
/* 99128 800A8928 1400B18F */  lw         $s1, 0x14($sp)
/* 9912C 800A892C 1000B08F */  lw         $s0, 0x10($sp)
/* 99130 800A8930 0800E003 */  jr         $ra
/* 99134 800A8934 2000BD27 */   addiu     $sp, $sp, 0x20
