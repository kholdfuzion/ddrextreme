.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches


glabel FUN_800a98fc
/* 9A0FC 800A98FC E8FFBD27 */  addiu      $sp, $sp, -0x18
/* 9A100 800A9900 0F80023C */  lui        $v0, %hi(D_800EC6E8)
/* 9A104 800A9904 E8C6448C */  lw         $a0, %lo(D_800EC6E8)($v0)
/* 9A108 800A9908 02000324 */  addiu      $v1, $zero, 2
/* 9A10C 800A990C 1000B0AF */  sw         $s0, 0x10($sp)
/* 9A110 800A9910 21804000 */  addu       $s0, $v0, $zero
/* 9A114 800A9914 04008310 */  beq        $a0, $v1, .L800A9928
/* 9A118 800A9918 1400BFAF */   sw        $ra, 0x14($sp)
/* 9A11C 800A991C 04000224 */  addiu      $v0, $zero, 4
/* 9A120 800A9920 0D008214 */  bne        $a0, $v0, .L800A9958
/* 9A124 800A9924 00000000 */   nop
.L800A9928:
/* 9A128 800A9928 F9C1020C */  jal        FUN_800b07e4
/* 9A12C 800A992C 00000000 */   nop
/* 9A130 800A9930 FFFF0324 */  addiu      $v1, $zero, -1
/* 9A134 800A9934 07004314 */  bne        $v0, $v1, .L800A9954
/* 9A138 800A9938 03000224 */   addiu     $v0, $zero, 3
/* 9A13C 800A993C 0180043C */  lui        $a0, %hi(D_80016CE0)
/* 9A140 800A9940 E06C8424 */  addiu      $a0, $a0, %lo(D_80016CE0)
/* 9A144 800A9944 FFFF0524 */  addiu      $a1, $zero, -1
/* 9A148 800A9948 58AA000C */  jal        error_8002a960
/* 9A14C 800A994C 21300000 */   addu      $a2, $zero, $zero
/* 9A150 800A9950 03000224 */  addiu      $v0, $zero, 3
.L800A9954:
/* 9A154 800A9954 E8C602AE */  sw         $v0, -0x3918($s0)
.L800A9958:
/* 9A158 800A9958 E8C6028E */  lw         $v0, -0x3918($s0)
/* 9A15C 800A995C 1400BF8F */  lw         $ra, 0x14($sp)
/* 9A160 800A9960 1000B08F */  lw         $s0, 0x10($sp)
/* 9A164 800A9964 0800E003 */  jr         $ra
/* 9A168 800A9968 1800BD27 */   addiu     $sp, $sp, 0x18
