.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches


glabel FUN_8007ea2c
/* 6F22C 8007EA2C 58FFBD27 */  addiu      $sp, $sp, -0xa8
/* 6F230 8007EA30 9800B6AF */  sw         $s6, 0x98($sp)
/* 6F234 8007EA34 21B08000 */  addu       $s6, $a0, $zero
/* 6F238 8007EA38 A000BEAF */  sw         $fp, 0xa0($sp)
/* 6F23C 8007EA3C 21F0A000 */  addu       $fp, $a1, $zero
/* 6F240 8007EA40 9400B5AF */  sw         $s5, 0x94($sp)
/* 6F244 8007EA44 21A8C000 */  addu       $s5, $a2, $zero
/* 6F248 8007EA48 1000A327 */  addiu      $v1, $sp, 0x10
/* 6F24C 8007EA4C 0180023C */  lui        $v0, %hi(D_80015914)
/* 6F250 8007EA50 14594224 */  addiu      $v0, $v0, %lo(D_80015914)
/* 6F254 8007EA54 60004424 */  addiu      $a0, $v0, 0x60
/* 6F258 8007EA58 A400BFAF */  sw         $ra, 0xa4($sp)
/* 6F25C 8007EA5C 9C00B7AF */  sw         $s7, 0x9c($sp)
/* 6F260 8007EA60 9000B4AF */  sw         $s4, 0x90($sp)
/* 6F264 8007EA64 8C00B3AF */  sw         $s3, 0x8c($sp)
/* 6F268 8007EA68 8800B2AF */  sw         $s2, 0x88($sp)
/* 6F26C 8007EA6C 8400B1AF */  sw         $s1, 0x84($sp)
/* 6F270 8007EA70 8000B0AF */  sw         $s0, 0x80($sp)
.L8007EA74:
/* 6F274 8007EA74 0000478C */  lw         $a3, ($v0)
/* 6F278 8007EA78 0400488C */  lw         $t0, 4($v0)
/* 6F27C 8007EA7C 0800498C */  lw         $t1, 8($v0)
/* 6F280 8007EA80 0C004A8C */  lw         $t2, 0xc($v0)
/* 6F284 8007EA84 000067AC */  sw         $a3, ($v1)
/* 6F288 8007EA88 040068AC */  sw         $t0, 4($v1)
/* 6F28C 8007EA8C 080069AC */  sw         $t1, 8($v1)
/* 6F290 8007EA90 0C006AAC */  sw         $t2, 0xc($v1)
/* 6F294 8007EA94 10004224 */  addiu      $v0, $v0, 0x10
/* 6F298 8007EA98 F6FF4414 */  bne        $v0, $a0, .L8007EA74
/* 6F29C 8007EA9C 10006324 */   addiu     $v1, $v1, 0x10
/* 6F2A0 8007EAA0 0000478C */  lw         $a3, ($v0)
/* 6F2A4 8007EAA4 00000000 */  nop
/* 6F2A8 8007EAA8 000067AC */  sw         $a3, ($v1)
/* 6F2AC 8007EAAC 0F80023C */  lui        $v0, %hi(D_800F0048)
/* 6F2B0 8007EAB0 48004380 */  lb         $v1, %lo(D_800F0048)($v0)
/* 6F2B4 8007EAB4 0180023C */  lui        $v0, %hi(D_80015978)
/* 6F2B8 8007EAB8 78594A24 */  addiu      $t2, $v0, %lo(D_80015978)
/* 6F2BC 8007EABC 03004789 */  lwl        $a3, 3($t2)
/* 6F2C0 8007EAC0 00004799 */  lwr        $a3, ($t2)
/* 6F2C4 8007EAC4 04004881 */  lb         $t0, 4($t2)
/* 6F2C8 8007EAC8 7B00A7AB */  swl        $a3, 0x7b($sp)
/* 6F2CC 8007EACC 7800A7BB */  swr        $a3, 0x78($sp)
/* 6F2D0 8007EAD0 7C00A8A3 */  sb         $t0, 0x7c($sp)
/* 6F2D4 8007EAD4 2F006014 */  bnez       $v1, .L8007EB94
/* 6F2D8 8007EAD8 01000224 */   addiu     $v0, $zero, 1
/* 6F2DC 8007EADC FF00A332 */  andi       $v1, $s5, 0xff
/* 6F2E0 8007EAE0 07000224 */  addiu      $v0, $zero, 7
/* 6F2E4 8007EAE4 03006214 */  bne        $v1, $v0, .L8007EAF4
/* 6F2E8 8007EAE8 FFFF7324 */   addiu     $s3, $v1, -1
/* 6F2EC 8007EAEC C1FA0108 */  j          .L8007EB04
/* 6F2F0 8007EAF0 04001324 */   addiu     $s3, $zero, 4
.L8007EAF4:
/* 6F2F4 8007EAF4 06000224 */  addiu      $v0, $zero, 6
/* 6F2F8 8007EAF8 02006214 */  bne        $v1, $v0, .L8007EB04
/* 6F2FC 8007EAFC 00000000 */   nop
/* 6F300 8007EB00 03001324 */  addiu      $s3, $zero, 3
.L8007EB04:
/* 6F304 8007EB04 0E00C016 */  bnez       $s6, .L8007EB40
/* 6F308 8007EB08 21800000 */   addu      $s0, $zero, $zero
/* 6F30C 8007EB0C E5FA0108 */  j          .L8007EB94
/* 6F310 8007EB10 FF00A232 */   andi      $v0, $s5, 0xff
.L8007EB14:
/* 6F314 8007EB14 80101300 */  sll        $v0, $s3, 2
/* 6F318 8007EB18 21105300 */  addu       $v0, $v0, $s3
/* 6F31C 8007EB1C 80100200 */  sll        $v0, $v0, 2
/* 6F320 8007EB20 21108202 */  addu       $v0, $s4, $v0
/* 6F324 8007EB24 21104202 */  addu       $v0, $s2, $v0
/* 6F328 8007EB28 0000428C */  lw         $v0, ($v0)
/* 6F32C 8007EB2C 00000000 */  nop
/* 6F330 8007EB30 2110A203 */  addu       $v0, $sp, $v0
/* 6F334 8007EB34 78004290 */  lbu        $v0, 0x78($v0)
/* 6F338 8007EB38 E5FA0108 */  j          .L8007EB94
/* 6F33C 8007EB3C 00000000 */   nop
.L8007EB40:
/* 6F340 8007EB40 04001724 */  addiu      $s7, $zero, 4
/* 6F344 8007EB44 80101300 */  sll        $v0, $s3, 2
/* 6F348 8007EB48 21105300 */  addu       $v0, $v0, $s3
/* 6F34C 8007EB4C 80880200 */  sll        $s1, $v0, 2
.L8007EB50:
/* 6F350 8007EB50 21300000 */  addu       $a2, $zero, $zero
/* 6F354 8007EB54 1000B227 */  addiu      $s2, $sp, 0x10
/* 6F358 8007EB58 21105102 */  addu       $v0, $s2, $s1
/* 6F35C 8007EB5C 0000428C */  lw         $v0, ($v0)
/* 6F360 8007EB60 00000000 */  nop
/* 6F364 8007EB64 02005710 */  beq        $v0, $s7, .L8007EB70
/* 6F368 8007EB68 80A01000 */   sll       $s4, $s0, 2
/* 6F36C 8007EB6C 21304000 */  addu       $a2, $v0, $zero
.L8007EB70:
/* 6F370 8007EB70 2120C002 */  addu       $a0, $s6, $zero
/* 6F374 8007EB74 3DA3020C */  jal        FUN_800a8cf4
/* 6F378 8007EB78 2128C003 */   addu      $a1, $fp, $zero
/* 6F37C 8007EB7C E5FF4014 */  bnez       $v0, .L8007EB14
/* 6F380 8007EB80 01001026 */   addiu     $s0, $s0, 1
/* 6F384 8007EB84 0500022A */  slti       $v0, $s0, 5
/* 6F388 8007EB88 F1FF4014 */  bnez       $v0, .L8007EB50
/* 6F38C 8007EB8C 04003126 */   addiu     $s1, $s1, 4
/* 6F390 8007EB90 FF00A232 */  andi       $v0, $s5, 0xff
.L8007EB94:
/* 6F394 8007EB94 A400BF8F */  lw         $ra, 0xa4($sp)
/* 6F398 8007EB98 A000BE8F */  lw         $fp, 0xa0($sp)
/* 6F39C 8007EB9C 9C00B78F */  lw         $s7, 0x9c($sp)
/* 6F3A0 8007EBA0 9800B68F */  lw         $s6, 0x98($sp)
/* 6F3A4 8007EBA4 9400B58F */  lw         $s5, 0x94($sp)
/* 6F3A8 8007EBA8 9000B48F */  lw         $s4, 0x90($sp)
/* 6F3AC 8007EBAC 8C00B38F */  lw         $s3, 0x8c($sp)
/* 6F3B0 8007EBB0 8800B28F */  lw         $s2, 0x88($sp)
/* 6F3B4 8007EBB4 8400B18F */  lw         $s1, 0x84($sp)
/* 6F3B8 8007EBB8 8000B08F */  lw         $s0, 0x80($sp)
/* 6F3BC 8007EBBC 0800E003 */  jr         $ra
/* 6F3C0 8007EBC0 A800BD27 */   addiu     $sp, $sp, 0xa8
