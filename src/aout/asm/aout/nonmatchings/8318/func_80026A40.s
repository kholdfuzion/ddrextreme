.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches


glabel func_80026A40
/* 17240 80026A40 E8FFBD27 */  addiu      $sp, $sp, -0x18
/* 17244 80026A44 1000BFAF */  sw         $ra, 0x10($sp)
/* 17248 80026A48 6CA7010C */  jal        FUN_80069db0
/* 1724C 80026A4C 08008424 */   addiu     $a0, $a0, 8
/* 17250 80026A50 04000324 */  addiu      $v1, $zero, 4
/* 17254 80026A54 06004314 */  bne        $v0, $v1, .L80026A70
/* 17258 80026A58 0A000224 */   addiu     $v0, $zero, 0xa
/* 1725C 80026A5C 5ACB020C */  jal        FUN_800b2d68
/* 17260 80026A60 01000424 */   addiu     $a0, $zero, 1
/* 17264 80026A64 EDC1020C */  jal        FUN_800b07b4
/* 17268 80026A68 00000000 */   nop
/* 1726C 80026A6C 0E000224 */  addiu      $v0, $zero, 0xe
.L80026A70:
/* 17270 80026A70 1000BF8F */  lw         $ra, 0x10($sp)
/* 17274 80026A74 00000000 */  nop
/* 17278 80026A78 0800E003 */  jr         $ra
/* 1727C 80026A7C 1800BD27 */   addiu     $sp, $sp, 0x18
