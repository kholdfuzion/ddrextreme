.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches


glabel FUN_8001ca08
/* D208 8001CA08 B0FFBD27 */  addiu      $sp, $sp, -0x50
/* D20C 8001CA0C 0180043C */  lui        $a0, %hi(D_80010760)
/* D210 8001CA10 60078424 */  addiu      $a0, $a0, %lo(D_80010760)
/* D214 8001CA14 4800BFAF */  sw         $ra, 0x48($sp)
/* D218 8001CA18 4400B1AF */  sw         $s1, 0x44($sp)
/* D21C 8001CA1C 1F0B030C */  jal        file_800c2c7c
/* D220 8001CA20 4000B0AF */   sw        $s0, 0x40($sp)
/* D224 8001CA24 0180043C */  lui        $a0, %hi(D_80010770)
/* D228 8001CA28 70078424 */  addiu      $a0, $a0, %lo(D_80010770)
/* D22C 8001CA2C 1F0B030C */  jal        file_800c2c7c
/* D230 8001CA30 21804000 */   addu      $s0, $v0, $zero
/* D234 8001CA34 21000012 */  beqz       $s0, .L8001CABC
/* D238 8001CA38 21184000 */   addu      $v1, $v0, $zero
/* D23C 8001CA3C 1F006010 */  beqz       $v1, .L8001CABC
/* D240 8001CA40 02000624 */   addiu     $a2, $zero, 2
/* D244 8001CA44 00006290 */  lbu        $v0, ($v1)
/* D248 8001CA48 00000000 */  nop
/* D24C 8001CA4C 2000A2A3 */  sb         $v0, 0x20($sp)
/* D250 8001CA50 01006390 */  lbu        $v1, 1($v1)
/* D254 8001CA54 2000A727 */  addiu      $a3, $sp, 0x20
/* D258 8001CA58 2100A3A3 */  sb         $v1, 0x21($sp)
/* D25C 8001CA5C 02000292 */  lbu        $v0, 2($s0)
/* D260 8001CA60 0180093C */  lui        $t1, 0x8001
/* D264 8001CA64 2200A2A3 */  sb         $v0, 0x22($sp)
/* D268 8001CA68 02000392 */  lbu        $v1, 2($s0)
/* D26C 8001CA6C 00000000 */  nop
/* D270 8001CA70 0F006010 */  beqz       $v1, .L8001CAB0
/* D274 8001CA74 0E80113C */   lui       $s1, 0x800e
/* D278 8001CA78 2140E000 */  addu       $t0, $a3, $zero
/* D27C 8001CA7C 02000526 */  addiu      $a1, $s0, 2
/* D280 8001CA80 0100C624 */  addiu      $a2, $a2, 1
.L8001CA84:
/* D284 8001CA84 0900C228 */  slti       $v0, $a2, 9
/* D288 8001CA88 09004010 */  beqz       $v0, .L8001CAB0
/* D28C 8001CA8C 0100A524 */   addiu     $a1, $a1, 1
/* D290 8001CA90 0000A290 */  lbu        $v0, ($a1)
/* D294 8001CA94 21180601 */  addu       $v1, $t0, $a2
/* D298 8001CA98 000062A0 */  sb         $v0, ($v1)
/* D29C 8001CA9C 0000A490 */  lbu        $a0, ($a1)
/* D2A0 8001CAA0 00000000 */  nop
/* D2A4 8001CAA4 F7FF8014 */  bnez       $a0, .L8001CA84
/* D2A8 8001CAA8 0100C624 */   addiu     $a2, $a2, 1
/* D2AC 8001CAAC FFFFC624 */  addiu      $a2, $a2, -1
.L8001CAB0:
/* D2B0 8001CAB0 2110E600 */  addu       $v0, $a3, $a2
/* D2B4 8001CAB4 B5720008 */  j          .L8001CAD4
/* D2B8 8001CAB8 000040A0 */   sb        $zero, ($v0)
.L8001CABC:
/* D2BC 8001CABC 2000A727 */  addiu      $a3, $sp, 0x20
/* D2C0 8001CAC0 0180093C */  lui        $t1, 0x8001
/* D2C4 8001CAC4 0E80113C */  lui        $s1, 0x800e
/* D2C8 8001CAC8 3F000224 */  addiu      $v0, $zero, 0x3f
/* D2CC 8001CACC 2000A2A3 */  sb         $v0, 0x20($sp)
/* D2D0 8001CAD0 2100A0A3 */  sb         $zero, 0x21($sp)
.L8001CAD4:
/* D2D4 8001CAD4 21200000 */  addu       $a0, $zero, $zero
/* D2D8 8001CAD8 00100224 */  addiu      $v0, $zero, 0x1000
/* D2DC 8001CADC 80072325 */  addiu      $v1, $t1, 0x780
/* D2E0 8001CAE0 68FF0524 */  addiu      $a1, $zero, -0x98
/* D2E4 8001CAE4 90FF0624 */  addiu      $a2, $zero, -0x70
/* D2E8 8001CAE8 1800A7AF */  sw         $a3, 0x18($sp)
/* D2EC 8001CAEC 00100724 */  addiu      $a3, $zero, 0x1000
/* D2F0 8001CAF0 1000A2AF */  sw         $v0, 0x10($sp)
/* D2F4 8001CAF4 290A010C */  jal        PrintText_800428a4
/* D2F8 8001CAF8 1400A3AF */   sw        $v1, 0x14($sp)
/* D2FC 8001CAFC 1D0B010C */  jal        FUN_80042c74
/* D300 8001CB00 00000000 */   nop
/* D304 8001CB04 7888238E */  lw         $v1, -0x7788($s1)
/* D308 8001CB08 01000224 */  addiu      $v0, $zero, 1
/* D30C 8001CB0C FFFF6324 */  addiu      $v1, $v1, -1
/* D310 8001CB10 0200601C */  bgtz       $v1, .L8001CB1C
/* D314 8001CB14 788823AE */   sw        $v1, -0x7788($s1)
/* D318 8001CB18 02000224 */  addiu      $v0, $zero, 2
.L8001CB1C:
/* D31C 8001CB1C 4800BF8F */  lw         $ra, 0x48($sp)
/* D320 8001CB20 4400B18F */  lw         $s1, 0x44($sp)
/* D324 8001CB24 4000B08F */  lw         $s0, 0x40($sp)
/* D328 8001CB28 0800E003 */  jr         $ra
/* D32C 8001CB2C 5000BD27 */   addiu     $sp, $sp, 0x50
