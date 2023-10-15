.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches


glabel SetDrawOffset
/* 996C 8001916C E8FFBD27 */  addiu      $sp, $sp, -0x18
/* 9970 80019170 1000B0AF */  sw         $s0, 0x10($sp)
/* 9974 80019174 21808000 */  addu       $s0, $a0, $zero
/* 9978 80019178 02000224 */  addiu      $v0, $zero, 2
/* 997C 8001917C 1400BFAF */  sw         $ra, 0x14($sp)
/* 9980 80019180 030002A2 */  sb         $v0, 3($s0)
/* 9984 80019184 0000A484 */  lh         $a0, ($a1)
/* 9988 80019188 0200A584 */  lh         $a1, 2($a1)
/* 998C 8001918C D965000C */  jal        SYS_OBJ_1780
/* 9990 80019190 00000000 */   nop
/* 9994 80019194 040002AE */  sw         $v0, 4($s0)
/* 9998 80019198 080000AE */  sw         $zero, 8($s0)
/* 999C 8001919C 1400BF8F */  lw         $ra, 0x14($sp)
/* 99A0 800191A0 1000B08F */  lw         $s0, 0x10($sp)
/* 99A4 800191A4 0800E003 */  jr         $ra
/* 99A8 800191A8 1800BD27 */   addiu     $sp, $sp, 0x18
