.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches


glabel FUN_800a1518
/* 91D18 800A1518 0F80023C */  lui        $v0, %hi(D_800F0028)
/* 91D1C 800A151C 28004224 */  addiu      $v0, $v0, %lo(D_800F0028)
/* 91D20 800A1520 3C004624 */  addiu      $a2, $v0, 0x3c
/* 91D24 800A1524 2C008424 */  addiu      $a0, $a0, 0x2c
/* 91D28 800A1528 0100033C */  lui        $v1, 1
/* 91D2C 800A152C 7C426334 */  ori        $v1, $v1, 0x427c
/* 91D30 800A1530 01000524 */  addiu      $a1, $zero, 1
.L800A1534:
/* 91D34 800A1534 00008290 */  lbu        $v0, ($a0)
/* 91D38 800A1538 04008424 */  addiu      $a0, $a0, 4
/* 91D3C 800A153C FFFFA524 */  addiu      $a1, $a1, -1
/* 91D40 800A1540 0000C2A0 */  sb         $v0, ($a2)
/* 91D44 800A1544 FBFFA104 */  bgez       $a1, .L800A1534
/* 91D48 800A1548 2130C300 */   addu      $a2, $a2, $v1
/* 91D4C 800A154C 0800E003 */  jr         $ra
/* 91D50 800A1550 00000000 */   nop
