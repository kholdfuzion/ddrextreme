.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches


glabel func_8002EA14
/* 1F214 8002EA14 D0FEBD27 */  addiu      $sp, $sp, -0x130
/* 1F218 8002EA18 2001B4AF */  sw         $s4, 0x120($sp)
/* 1F21C 8002EA1C 21A08000 */  addu       $s4, $a0, $zero
/* 1F220 8002EA20 2401B5AF */  sw         $s5, 0x124($sp)
/* 1F224 8002EA24 21A8A000 */  addu       $s5, $a1, $zero
/* 1F228 8002EA28 1C01B3AF */  sw         $s3, 0x11c($sp)
/* 1F22C 8002EA2C 0E80133C */  lui        $s3, 0x800e
/* 1F230 8002EA30 1401B1AF */  sw         $s1, 0x114($sp)
/* 1F234 8002EA34 1200B127 */  addiu      $s1, $sp, 0x12
/* 1F238 8002EA38 1801B2AF */  sw         $s2, 0x118($sp)
/* 1F23C 8002EA3C 01001224 */  addiu      $s2, $zero, 1
/* 1F240 8002EA40 2801BFAF */  sw         $ra, 0x128($sp)
/* 1F244 8002EA44 1001B0AF */  sw         $s0, 0x110($sp)
/* 1F248 8002EA48 21208002 */  addu       $a0, $s4, $zero
.L8002EA4C:
/* 1F24C 8002EA4C 508D6526 */  addiu      $a1, $s3, -0x72b0
.L8002EA50:
/* 1F250 8002EA50 01000624 */  addiu      $a2, $zero, 1
/* 1F254 8002EA54 BAB4000C */  jal        FUN_8002d2e8
/* 1F258 8002EA58 1000A727 */   addiu     $a3, $sp, 0x10
/* 1F25C 8002EA5C 21804000 */  addu       $s0, $v0, $zero
/* 1F260 8002EA60 03000106 */  bgez       $s0, .L8002EA70
/* 1F264 8002EA64 00000000 */   nop
/* 1F268 8002EA68 DFB9000C */  jal        FUN_8002e77c
/* 1F26C 8002EA6C 0B000424 */   addiu     $a0, $zero, 0xb
.L8002EA70:
/* 1F270 8002EA70 1000A393 */  lbu        $v1, 0x10($sp)
/* 1F274 8002EA74 00000000 */  nop
/* 1F278 8002EA78 F4FF7214 */  bne        $v1, $s2, .L8002EA4C
/* 1F27C 8002EA7C 21208002 */   addu      $a0, $s4, $zero
/* 1F280 8002EA80 1100A293 */  lbu        $v0, 0x11($sp)
/* 1F284 8002EA84 00000000 */  nop
/* 1F288 8002EA88 F1FF4314 */  bne        $v0, $v1, .L8002EA50
/* 1F28C 8002EA8C 508D6526 */   addiu     $a1, $s3, -0x72b0
/* 1F290 8002EA90 2120A002 */  addu       $a0, $s5, $zero
/* 1F294 8002EA94 21282002 */  addu       $a1, $s1, $zero
/* 1F298 8002EA98 BD6B000C */  jal        memcpy
/* 1F29C 8002EA9C FEFF0626 */   addiu     $a2, $s0, -2
/* 1F2A0 8002EAA0 2801BF8F */  lw         $ra, 0x128($sp)
/* 1F2A4 8002EAA4 2401B58F */  lw         $s5, 0x124($sp)
/* 1F2A8 8002EAA8 2001B48F */  lw         $s4, 0x120($sp)
/* 1F2AC 8002EAAC 1C01B38F */  lw         $s3, 0x11c($sp)
/* 1F2B0 8002EAB0 1801B28F */  lw         $s2, 0x118($sp)
/* 1F2B4 8002EAB4 1401B18F */  lw         $s1, 0x114($sp)
/* 1F2B8 8002EAB8 1001B08F */  lw         $s0, 0x110($sp)
/* 1F2BC 8002EABC 21100000 */  addu       $v0, $zero, $zero
/* 1F2C0 8002EAC0 0800E003 */  jr         $ra
/* 1F2C4 8002EAC4 3001BD27 */   addiu     $sp, $sp, 0x130
