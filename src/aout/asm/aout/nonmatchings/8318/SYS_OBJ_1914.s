.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches


glabel SYS_OBJ_1914
/* A0F8 800198F8 E0FFBD27 */  addiu      $sp, $sp, -0x20
/* A0FC 800198FC 21408000 */  addu       $t0, $a0, $zero
/* A100 80019900 1C00BFAF */  sw         $ra, 0x1c($sp)
/* A104 80019904 1800B2AF */  sw         $s2, 0x18($sp)
/* A108 80019908 1400B1AF */  sw         $s1, 0x14($sp)
/* A10C 8001990C 1000B0AF */  sw         $s0, 0x10($sp)
/* A110 80019910 04000385 */  lh         $v1, 4($t0)
/* A114 80019914 04000495 */  lhu        $a0, 4($t0)
/* A118 80019918 0C006004 */  bltz       $v1, .L8001994C
/* A11C 8001991C 2148A000 */   addu      $t1, $a1, $zero
/* A120 80019920 0D80023C */  lui        $v0, %hi(D_800D2B9C)
/* A124 80019924 9C2B4284 */  lh         $v0, %lo(D_800D2B9C)($v0)
/* A128 80019928 00000000 */  nop
/* A12C 8001992C FFFF4224 */  addiu      $v0, $v0, -1
/* A130 80019930 2A104300 */  slt        $v0, $v0, $v1
/* A134 80019934 0D80033C */  lui        $v1, %hi(D_800D2B9C)
/* A138 80019938 9C2B6394 */  lhu        $v1, %lo(D_800D2B9C)($v1)
/* A13C 8001993C 04004014 */  bnez       $v0, SYS_OBJ_196C
/* A140 80019940 FFFF6224 */   addiu     $v0, $v1, -1
/* A144 80019944 54660008 */  j          SYS_OBJ_196C
/* A148 80019948 21108000 */   addu      $v0, $a0, $zero
.L8001994C:
/* A14C 8001994C 21100000 */  addu       $v0, $zero, $zero
