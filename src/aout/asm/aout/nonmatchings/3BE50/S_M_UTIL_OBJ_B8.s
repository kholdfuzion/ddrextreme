.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches


glabel S_M_UTIL_OBJ_B8
/* A82BC 800B7ABC 0000A38C */  lw         $v1, ($a1)
/* A82C0 800B7AC0 00000000 */  nop
/* A82C4 800B7AC4 24106800 */  and        $v0, $v1, $t0
/* A82C8 800B7AC8 0C004014 */  bnez       $v0, .L800B7AFC
/* A82CC 800B7ACC 24106700 */   and       $v0, $v1, $a3
/* A82D0 800B7AD0 0C004014 */  bnez       $v0, .L800B7B04
/* A82D4 800B7AD4 24186600 */   and       $v1, $v1, $a2
/* A82D8 800B7AD8 2B106400 */  sltu       $v0, $v1, $a0
/* A82DC 800B7ADC 0A004010 */  beqz       $v0, S_M_UTIL_OBJ_104
/* A82E0 800B7AE0 01000224 */   addiu     $v0, $zero, 1
/* A82E4 800B7AE4 0400A28C */  lw         $v0, 4($a1)
/* A82E8 800B7AE8 00000000 */  nop
/* A82EC 800B7AEC 21106200 */  addu       $v0, $v1, $v0
/* A82F0 800B7AF0 2B108200 */  sltu       $v0, $a0, $v0
/* A82F4 800B7AF4 04004014 */  bnez       $v0, S_M_UTIL_OBJ_104
/* A82F8 800B7AF8 01000224 */   addiu     $v0, $zero, 1
.L800B7AFC:
/* A82FC 800B7AFC AFDE0208 */  j          S_M_UTIL_OBJ_B8
/* A8300 800B7B00 0800A524 */   addiu     $a1, $a1, 8
.L800B7B04:
/* A8304 800B7B04 21100000 */  addu       $v0, $zero, $zero
