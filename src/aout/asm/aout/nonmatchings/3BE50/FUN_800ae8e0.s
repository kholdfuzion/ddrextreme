.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches


glabel FUN_800ae8e0
/* 9F0E0 800AE8E0 01000224 */  addiu      $v0, $zero, 1
/* 9F0E4 800AE8E4 03008210 */  beq        $a0, $v0, .L800AE8F4
/* 9F0E8 800AE8E8 05000224 */   addiu     $v0, $zero, 5
/* 9F0EC 800AE8EC 03008214 */  bne        $a0, $v0, .L800AE8FC
/* 9F0F0 800AE8F0 02000324 */   addiu     $v1, $zero, 2
.L800AE8F4:
/* 9F0F4 800AE8F4 0800E003 */  jr         $ra
/* 9F0F8 800AE8F8 21100000 */   addu      $v0, $zero, $zero
.L800AE8FC:
/* 9F0FC 800AE8FC 02008310 */  beq        $a0, $v1, .L800AE908
/* 9F100 800AE900 01000224 */   addiu     $v0, $zero, 1
/* 9F104 800AE904 FFFF0224 */  addiu      $v0, $zero, -1
.L800AE908:
/* 9F108 800AE908 0800E003 */  jr         $ra
/* 9F10C 800AE90C 00000000 */   nop
