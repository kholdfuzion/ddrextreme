.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches


glabel func_8001EA18
/* F218 8001EA18 A8FFBD27 */  addiu      $sp, $sp, -0x58
/* F21C 8001EA1C 4400B1AF */  sw         $s1, 0x44($sp)
/* F220 8001EA20 2188A000 */  addu       $s1, $a1, $zero
/* F224 8001EA24 5000BFAF */  sw         $ra, 0x50($sp)
/* F228 8001EA28 4C00B3AF */  sw         $s3, 0x4c($sp)
/* F22C 8001EA2C 4800B2AF */  sw         $s2, 0x48($sp)
/* F230 8001EA30 4000B0AF */  sw         $s0, 0x40($sp)
/* F234 8001EA34 04002296 */  lhu        $v0, 4($s1)
/* F238 8001EA38 01001324 */  addiu      $s3, $zero, 1
/* F23C 8001EA3C 001C0200 */  sll        $v1, $v0, 0x10
/* F240 8001EA40 0C002286 */  lh         $v0, 0xc($s1)
/* F244 8001EA44 00000000 */  nop
/* F248 8001EA48 03005314 */  bne        $v0, $s3, .L8001EA58
/* F24C 8001EA4C 03940300 */   sra       $s2, $v1, 0x10
/* F250 8001EA50 43140300 */  sra        $v0, $v1, 0x11
/* F254 8001EA54 040022A6 */  sh         $v0, 4($s1)
.L8001EA58:
/* F258 8001EA58 04008424 */  addiu      $a0, $a0, 4
/* F25C 8001EA5C 197C000C */  jal        GsGetTimInfo
/* F260 8001EA60 1000A527 */   addiu     $a1, $sp, 0x10
/* F264 8001EA64 3000A427 */  addiu      $a0, $sp, 0x30
/* F268 8001EA68 1000B027 */  addiu      $s0, $sp, 0x10
/* F26C 8001EA6C 0C00068E */  lw         $a2, 0xc($s0)
/* F270 8001EA70 04002296 */  lhu        $v0, 4($s1)
/* F274 8001EA74 06002396 */  lhu        $v1, 6($s1)
/* F278 8001EA78 08000796 */  lhu        $a3, 8($s0)
/* F27C 8001EA7C 0A000896 */  lhu        $t0, 0xa($s0)
/* F280 8001EA80 16002996 */  lhu        $t1, 0x16($s1)
/* F284 8001EA84 18002A96 */  lhu        $t2, 0x18($s1)
/* F288 8001EA88 14000B96 */  lhu        $t3, 0x14($s0)
/* F28C 8001EA8C 16000C96 */  lhu        $t4, 0x16($s0)
/* F290 8001EA90 21282002 */  addu       $a1, $s1, $zero
/* F294 8001EA94 3000A2A7 */  sh         $v0, 0x30($sp)
/* F298 8001EA98 3200A3A7 */  sh         $v1, 0x32($sp)
/* F29C 8001EA9C 3400A7A7 */  sh         $a3, 0x34($sp)
/* F2A0 8001EAA0 3600A8A7 */  sh         $t0, 0x36($sp)
/* F2A4 8001EAA4 3800A9A7 */  sh         $t1, 0x38($sp)
/* F2A8 8001EAA8 3A00AAA7 */  sh         $t2, 0x3a($sp)
/* F2AC 8001EAAC 3C00ABA7 */  sh         $t3, 0x3c($sp)
/* F2B0 8001EAB0 AF73000C */  jal        FUN_8001cebc
/* F2B4 8001EAB4 3E00ACA7 */   sh        $t4, 0x3e($sp)
/* F2B8 8001EAB8 3800A427 */  addiu      $a0, $sp, 0x38
/* F2BC 8001EABC 1800068E */  lw         $a2, 0x18($s0)
/* F2C0 8001EAC0 2774000C */  jal        FUN_8001d09c
/* F2C4 8001EAC4 21282002 */   addu      $a1, $s1, $zero
/* F2C8 8001EAC8 D860000C */  jal        DrawSync
/* F2CC 8001EACC 21200000 */   addu      $a0, $zero, $zero
/* F2D0 8001EAD0 5000BF8F */  lw         $ra, 0x50($sp)
/* F2D4 8001EAD4 140033A6 */  sh         $s3, 0x14($s1)
/* F2D8 8001EAD8 4C00B38F */  lw         $s3, 0x4c($sp)
/* F2DC 8001EADC 040032A6 */  sh         $s2, 4($s1)
/* F2E0 8001EAE0 4800B28F */  lw         $s2, 0x48($sp)
/* F2E4 8001EAE4 4400B18F */  lw         $s1, 0x44($sp)
/* F2E8 8001EAE8 4000B08F */  lw         $s0, 0x40($sp)
/* F2EC 8001EAEC 21100000 */  addu       $v0, $zero, $zero
/* F2F0 8001EAF0 0800E003 */  jr         $ra
/* F2F4 8001EAF4 5800BD27 */   addiu     $sp, $sp, 0x58
