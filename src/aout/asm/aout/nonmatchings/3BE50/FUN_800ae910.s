.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches


glabel FUN_800ae910
/* 9F110 800AE910 01000224 */  addiu      $v0, $zero, 1
/* 9F114 800AE914 03008214 */  bne        $a0, $v0, .L800AE924
/* 9F118 800AE918 02000224 */   addiu     $v0, $zero, 2
/* 9F11C 800AE91C 0800E003 */  jr         $ra
/* 9F120 800AE920 21100000 */   addu      $v0, $zero, $zero
.L800AE924:
/* 9F124 800AE924 05008210 */  beq        $a0, $v0, .L800AE93C
/* 9F128 800AE928 03000324 */   addiu     $v1, $zero, 3
/* 9F12C 800AE92C 04008310 */  beq        $a0, $v1, .L800AE940
/* 9F130 800AE930 00000000 */   nop
/* 9F134 800AE934 0800E003 */  jr         $ra
/* 9F138 800AE938 FFFF0224 */   addiu     $v0, $zero, -1
.L800AE93C:
/* 9F13C 800AE93C 01000224 */  addiu      $v0, $zero, 1
.L800AE940:
/* 9F140 800AE940 0800E003 */  jr         $ra
/* 9F144 800AE944 00000000 */   nop
