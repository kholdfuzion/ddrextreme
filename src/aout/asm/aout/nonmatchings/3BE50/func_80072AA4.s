.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches


glabel func_80072AA4
/* 632A4 80072AA4 1B80023C */  lui        $v0, %hi(D_801AFBF4)
/* 632A8 80072AA8 F4FB458C */  lw         $a1, %lo(D_801AFBF4)($v0)
/* 632AC 80072AAC 00000000 */  nop
/* 632B0 80072AB0 B800A384 */  lh         $v1, 0xb8($a1)
/* 632B4 80072AB4 00000000 */  nop
/* 632B8 80072AB8 05006010 */  beqz       $v1, .L80072AD0
/* 632BC 80072ABC 21100000 */   addu      $v0, $zero, $zero
/* 632C0 80072AC0 02000324 */  addiu      $v1, $zero, 2
/* 632C4 80072AC4 B800A3A4 */  sh         $v1, 0xb8($a1)
/* 632C8 80072AC8 0800E003 */  jr         $ra
/* 632CC 80072ACC C200A4A4 */   sh        $a0, 0xc2($a1)
.L80072AD0:
/* 632D0 80072AD0 0800E003 */  jr         $ra
/* 632D4 80072AD4 FFFF0224 */   addiu     $v0, $zero, -1
