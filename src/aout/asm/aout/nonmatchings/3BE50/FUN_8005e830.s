.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches


glabel FUN_8005e830
/* 4F030 8005E830 E8FFBD27 */  addiu      $sp, $sp, -0x18
/* 4F034 8005E834 1000B0AF */  sw         $s0, 0x10($sp)
/* 4F038 8005E838 0E80103C */  lui        $s0, %hi(D_800DAF94)
/* 4F03C 8005E83C 21280000 */  addu       $a1, $zero, $zero
/* 4F040 8005E840 94AF048E */  lw         $a0, %lo(D_800DAF94)($s0)
/* 4F044 8005E844 1400BFAF */  sw         $ra, 0x14($sp)
/* 4F048 8005E848 F6A2000C */  jal        memset
/* 4F04C 8005E84C 10000624 */   addiu     $a2, $zero, 0x10
/* 4F050 8005E850 FFFF0224 */  addiu      $v0, $zero, -1
/* 4F054 8005E854 94AF048E */  lw         $a0, -0x506c($s0)
/* 4F058 8005E858 1400BF8F */  lw         $ra, 0x14($sp)
/* 4F05C 8005E85C 1000B08F */  lw         $s0, 0x10($sp)
/* 4F060 8005E860 FEFF0324 */  addiu      $v1, $zero, -2
/* 4F064 8005E864 040082AC */  sw         $v0, 4($a0)
/* 4F068 8005E868 080083AC */  sw         $v1, 8($a0)
/* 4F06C 8005E86C 0800E003 */  jr         $ra
/* 4F070 8005E870 1800BD27 */   addiu     $sp, $sp, 0x18
