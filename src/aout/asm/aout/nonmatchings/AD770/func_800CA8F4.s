.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches


glabel func_800CA8F4
/* BB0F4 800CA8F4 E8FFBD27 */  addiu      $sp, $sp, -0x18
/* BB0F8 800CA8F8 1000B0AF */  sw         $s0, 0x10($sp)
/* BB0FC 800CA8FC 1400BFAF */  sw         $ra, 0x14($sp)
/* BB100 800CA900 622A030C */  jal        FUN_800ca988
/* BB104 800CA904 21808000 */   addu      $s0, $a0, $zero
/* BB108 800CA908 06004010 */  beqz       $v0, .L800CA924
/* BB10C 800CA90C 2080053C */   lui       $a1, %hi(D_801FBCA8)
/* BB110 800CA910 21200002 */  addu       $a0, $s0, $zero
/* BB114 800CA914 7D2D030C */  jal        FUN_800cb5f4
/* BB118 800CA918 A8BCA524 */   addiu     $a1, $a1, %lo(D_801FBCA8)
/* BB11C 800CA91C 4A2A0308 */  j          .L800CA928
/* BB120 800CA920 00000000 */   nop
.L800CA924:
/* BB124 800CA924 F4FF0224 */  addiu      $v0, $zero, -0xc
.L800CA928:
/* BB128 800CA928 1400BF8F */  lw         $ra, 0x14($sp)
/* BB12C 800CA92C 1000B08F */  lw         $s0, 0x10($sp)
/* BB130 800CA930 0800E003 */  jr         $ra
/* BB134 800CA934 1800BD27 */   addiu     $sp, $sp, 0x18
