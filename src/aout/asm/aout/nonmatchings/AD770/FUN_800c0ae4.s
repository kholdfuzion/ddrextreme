.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches


glabel FUN_800c0ae4
/* B12E4 800C0AE4 D8FFBD27 */  addiu      $sp, $sp, -0x28
/* B12E8 800C0AE8 2400BFAF */  sw         $ra, 0x24($sp)
/* B12EC 800C0AEC 2000B4AF */  sw         $s4, 0x20($sp)
/* B12F0 800C0AF0 1C00B3AF */  sw         $s3, 0x1c($sp)
/* B12F4 800C0AF4 1800B2AF */  sw         $s2, 0x18($sp)
/* B12F8 800C0AF8 1400B1AF */  sw         $s1, 0x14($sp)
/* B12FC 800C0AFC 1000B0AF */  sw         $s0, 0x10($sp)
/* B1300 800C0B00 21A0E000 */  addu       $s4, $a3, $zero
/* B1304 800C0B04 FF009030 */  andi       $s0, $a0, 0xff
/* B1308 800C0B08 FFFFB130 */  andi       $s1, $a1, 0xffff
/* B130C 800C0B0C F6FF020C */  jal        FUN_800bffd8
/* B1310 800C0B10 FFFFD230 */   andi      $s2, $a2, 0xffff
/* B1314 800C0B14 FEFF0324 */  addiu      $v1, $zero, -2
/* B1318 800C0B18 03004314 */  bne        $v0, $v1, .L800C0B28
/* B131C 800C0B1C 21980000 */   addu      $s3, $zero, $zero
/* B1320 800C0B20 DB020308 */  j          .L800C0B6C
/* B1324 800C0B24 FEFF0224 */   addiu     $v0, $zero, -2
.L800C0B28:
/* B1328 800C0B28 21200002 */  addu       $a0, $s0, $zero
/* B132C 800C0B2C 21282002 */  addu       $a1, $s1, $zero
/* B1330 800C0B30 8102030C */  jal        FUN_800c0a04
/* B1334 800C0B34 21304002 */   addu      $a2, $s2, $zero
/* B1338 800C0B38 01000324 */  addiu      $v1, $zero, 1
/* B133C 800C0B3C 07004310 */  beq        $v0, $v1, .L800C0B5C
/* B1340 800C0B40 00241200 */   sll       $a0, $s2, 0x10
/* B1344 800C0B44 03240400 */  sra        $a0, $a0, 0x10
/* B1348 800C0B48 F401030C */  jal        FUN_800c07d0
/* B134C 800C0B4C 21288002 */   addu      $a1, $s4, $zero
/* B1350 800C0B50 01000324 */  addiu      $v1, $zero, 1
/* B1354 800C0B54 02004314 */  bne        $v0, $v1, .L800C0B60
/* B1358 800C0B58 00000000 */   nop
.L800C0B5C:
/* B135C 800C0B5C FDFF1324 */  addiu      $s3, $zero, -3
.L800C0B60:
/* B1360 800C0B60 0C00030C */  jal        FUN_800c0030
/* B1364 800C0B64 00000000 */   nop
/* B1368 800C0B68 21106002 */  addu       $v0, $s3, $zero
.L800C0B6C:
/* B136C 800C0B6C 2400BF8F */  lw         $ra, 0x24($sp)
/* B1370 800C0B70 2000B48F */  lw         $s4, 0x20($sp)
/* B1374 800C0B74 1C00B38F */  lw         $s3, 0x1c($sp)
/* B1378 800C0B78 1800B28F */  lw         $s2, 0x18($sp)
/* B137C 800C0B7C 1400B18F */  lw         $s1, 0x14($sp)
/* B1380 800C0B80 1000B08F */  lw         $s0, 0x10($sp)
/* B1384 800C0B84 0800E003 */  jr         $ra
/* B1388 800C0B88 2800BD27 */   addiu     $sp, $sp, 0x28
