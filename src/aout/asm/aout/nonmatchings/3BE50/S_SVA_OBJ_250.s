.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches


glabel S_SVA_OBJ_250
/* A9924 800B9124 0B008010 */  beqz       $a0, S_SVA_OBJ_280
/* A9928 800B9128 00000000 */   nop
/* A992C 800B912C 0A000386 */  lh         $v1, 0xa($s0)
/* A9930 800B9130 00000000 */  nop
/* A9934 800B9134 80006228 */  slti       $v0, $v1, 0x80
/* A9938 800B9138 03004014 */  bnez       $v0, .L800B9148
/* A993C 800B913C 00000000 */   nop
/* A9940 800B9140 55E40208 */  j          S_SVA_OBJ_280
/* A9944 800B9144 7F000524 */   addiu     $a1, $zero, 0x7f
.L800B9148:
/* A9948 800B9148 02006104 */  bgez       $v1, S_SVA_OBJ_280
/* A994C 800B914C 00000000 */   nop
/* A9950 800B9150 21280000 */  addu       $a1, $zero, $zero
