.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches


glabel S_M_UTIL_OBJ_2C
/* A8230 800B7A30 0000A38C */  lw         $v1, ($a1)
/* A8234 800B7A34 00000000 */  nop
/* A8238 800B7A38 24106800 */  and        $v0, $v1, $t0
/* A823C 800B7A3C 0C004014 */  bnez       $v0, .L800B7A70
/* A8240 800B7A40 24106700 */   and       $v0, $v1, $a3
/* A8244 800B7A44 0C004014 */  bnez       $v0, .L800B7A78
/* A8248 800B7A48 24186600 */   and       $v1, $v1, $a2
/* A824C 800B7A4C 2B106400 */  sltu       $v0, $v1, $a0
/* A8250 800B7A50 0A004010 */  beqz       $v0, S_M_UTIL_OBJ_78
/* A8254 800B7A54 01000224 */   addiu     $v0, $zero, 1
/* A8258 800B7A58 0400A28C */  lw         $v0, 4($a1)
/* A825C 800B7A5C 00000000 */  nop
/* A8260 800B7A60 21106200 */  addu       $v0, $v1, $v0
/* A8264 800B7A64 2B108200 */  sltu       $v0, $a0, $v0
/* A8268 800B7A68 04004014 */  bnez       $v0, S_M_UTIL_OBJ_78
/* A826C 800B7A6C 01000224 */   addiu     $v0, $zero, 1
.L800B7A70:
/* A8270 800B7A70 8CDE0208 */  j          S_M_UTIL_OBJ_2C
/* A8274 800B7A74 0800A524 */   addiu     $a1, $a1, 8
.L800B7A78:
/* A8278 800B7A78 21100000 */  addu       $v0, $zero, $zero
