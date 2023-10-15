.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches


glabel FUN_80029acc
/* 1A2CC 80029ACC C8FFBD27 */  addiu      $sp, $sp, -0x38
/* 1A2D0 80029AD0 1800B0AF */  sw         $s0, 0x18($sp)
/* 1A2D4 80029AD4 21800000 */  addu       $s0, $zero, $zero
/* 1A2D8 80029AD8 3000B6AF */  sw         $s6, 0x30($sp)
/* 1A2DC 80029ADC 1380163C */  lui        $s6, 0x8013
/* 1A2E0 80029AE0 2C00B5AF */  sw         $s5, 0x2c($sp)
/* 1A2E4 80029AE4 1380153C */  lui        $s5, 0x8013
/* 1A2E8 80029AE8 2400B3AF */  sw         $s3, 0x24($sp)
/* 1A2EC 80029AEC 0180133C */  lui        $s3, 0x8001
/* 1A2F0 80029AF0 2800B4AF */  sw         $s4, 0x28($sp)
/* 1A2F4 80029AF4 1580143C */  lui        $s4, %hi(D_8014BA50)
/* 1A2F8 80029AF8 50BA8226 */  addiu      $v0, $s4, %lo(D_8014BA50)
/* 1A2FC 80029AFC 1C00B1AF */  sw         $s1, 0x1c($sp)
/* 1A300 80029B00 26005124 */  addiu      $s1, $v0, 0x26
/* 1A304 80029B04 2000B2AF */  sw         $s2, 0x20($sp)
/* 1A308 80029B08 FFFF1224 */  addiu      $s2, $zero, -1
/* 1A30C 80029B0C 3400BFAF */  sw         $ra, 0x34($sp)
.L80029B10:
/* 1A310 80029B10 00002586 */  lh         $a1, ($s1)
/* 1A314 80029B14 00000000 */  nop
/* 1A318 80029B18 0500A01C */  bgtz       $a1, .L80029B30
/* 1A31C 80029B1C AC0E6426 */   addiu     $a0, $s3, 0xeac
/* 1A320 80029B20 1000B2AF */  sw         $s2, 0x10($sp)
/* 1A324 80029B24 03000626 */  addiu      $a2, $s0, 3
/* 1A328 80029B28 27F3020C */  jal        HardWareError_800bcc9c
/* 1A32C 80029B2C FFFF0724 */   addiu     $a3, $zero, -1
.L80029B30:
/* 1A330 80029B30 01001026 */  addiu      $s0, $s0, 1
/* 1A334 80029B34 0200022A */  slti       $v0, $s0, 2
/* 1A338 80029B38 F5FF4014 */  bnez       $v0, .L80029B10
/* 1A33C 80029B3C 02003126 */   addiu     $s1, $s1, 2
/* 1A340 80029B40 B8B9000C */  jal        FUN_8002e6e0
/* 1A344 80029B44 21200000 */   addu      $a0, $zero, $zero
/* 1A348 80029B48 01000424 */  addiu      $a0, $zero, 1
/* 1A34C 80029B4C B8B9000C */  jal        FUN_8002e6e0
/* 1A350 80029B50 21804000 */   addu      $s0, $v0, $zero
/* 1A354 80029B54 50BA8826 */  addiu      $t0, $s4, -0x45b0
/* 1A358 80029B58 20000485 */  lh         $a0, 0x20($t0)
/* 1A35C 80029B5C 98ABA58E */  lw         $a1, -0x5468($s5)
/* 1A360 80029B60 00000000 */  nop
/* 1A364 80029B64 1800A400 */  mult       $a1, $a0
/* 1A368 80029B68 12280000 */  mflo       $a1
/* 1A36C 80029B6C 26000385 */  lh         $v1, 0x26($t0)
/* 1A370 80029B70 00000000 */  nop
/* 1A374 80029B74 1A00A300 */  div        $zero, $a1, $v1
/* 1A378 80029B78 A8ABC926 */  addiu      $t1, $s6, -0x5458
/* 1A37C 80029B7C 98ABA626 */  addiu      $a2, $s5, -0x5468
/* 1A380 80029B80 12280000 */  mflo       $a1
/* 1A384 80029B84 02006014 */  bnez       $v1, .L80029B90
/* 1A388 80029B88 00000000 */   nop
/* 1A38C 80029B8C CD010000 */  break      0, 7
.L80029B90:
/* 1A390 80029B90 22000785 */   lh        $a3, 0x22($t0)
/* 1A394 80029B94 0400C48C */  lw         $a0, 4($a2)
/* 1A398 80029B98 00000000 */  nop
/* 1A39C 80029B9C 18008700 */  mult       $a0, $a3
/* 1A3A0 80029BA0 12200000 */  mflo       $a0
/* 1A3A4 80029BA4 28000685 */  lh         $a2, 0x28($t0)
/* 1A3A8 80029BA8 00000000 */  nop
/* 1A3AC 80029BAC 1A008600 */  div        $zero, $a0, $a2
/* 1A3B0 80029BB0 23800502 */  subu       $s0, $s0, $a1
/* 1A3B4 80029BB4 A8ABC38E */  lw         $v1, -0x5458($s6)
/* 1A3B8 80029BB8 0400258D */  lw         $a1, 4($t1)
/* 1A3BC 80029BBC 21187000 */  addu       $v1, $v1, $s0
/* 1A3C0 80029BC0 21186500 */  addu       $v1, $v1, $a1
/* 1A3C4 80029BC4 12200000 */  mflo       $a0
/* 1A3C8 80029BC8 0200C014 */  bnez       $a2, .L80029BD4
/* 1A3CC 80029BCC 00000000 */   nop
/* 1A3D0 80029BD0 CD010000 */  break      0, 7
.L80029BD4:
/* 1A3D4 80029BD4 23104400 */   subu      $v0, $v0, $a0
/* 1A3D8 80029BD8 3400BF8F */  lw         $ra, 0x34($sp)
/* 1A3DC 80029BDC 3000B68F */  lw         $s6, 0x30($sp)
/* 1A3E0 80029BE0 2C00B58F */  lw         $s5, 0x2c($sp)
/* 1A3E4 80029BE4 2800B48F */  lw         $s4, 0x28($sp)
/* 1A3E8 80029BE8 2400B38F */  lw         $s3, 0x24($sp)
/* 1A3EC 80029BEC 2000B28F */  lw         $s2, 0x20($sp)
/* 1A3F0 80029BF0 1C00B18F */  lw         $s1, 0x1c($sp)
/* 1A3F4 80029BF4 1800B08F */  lw         $s0, 0x18($sp)
/* 1A3F8 80029BF8 21106200 */  addu       $v0, $v1, $v0
/* 1A3FC 80029BFC 0800E003 */  jr         $ra
/* 1A400 80029C00 3800BD27 */   addiu     $sp, $sp, 0x38
