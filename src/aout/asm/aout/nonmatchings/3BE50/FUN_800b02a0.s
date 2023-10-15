.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches


glabel FUN_800b02a0
/* A0AA0 800B02A0 21380000 */  addu       $a3, $zero, $zero
/* A0AA4 800B02A4 1D80023C */  lui        $v0, %hi(D_801CC948)
/* A0AA8 800B02A8 48C94C24 */  addiu      $t4, $v0, %lo(D_801CC948)
/* A0AAC 800B02AC 21688001 */  addu       $t5, $t4, $zero
/* A0AB0 800B02B0 1D80023C */  lui        $v0, %hi(D_801D10B4)
/* A0AB4 800B02B4 B410448C */  lw         $a0, %lo(D_801D10B4)($v0)
/* A0AB8 800B02B8 3001033C */  lui        $v1, 0x130
/* A0ABC 800B02BC 23306400 */  subu       $a2, $v1, $a0
.L800B02C0:
/* A0AC0 800B02C0 21400000 */  addu       $t0, $zero, $zero
/* A0AC4 800B02C4 05008291 */  lbu        $v0, 5($t4)
/* A0AC8 800B02C8 00000000 */  nop
/* A0ACC 800B02CC 22004010 */  beqz       $v0, .L800B0358
/* A0AD0 800B02D0 21280000 */   addu      $a1, $zero, $zero
/* A0AD4 800B02D4 FFFF0B24 */  addiu      $t3, $zero, -1
/* A0AD8 800B02D8 FEFF0A24 */  addiu      $t2, $zero, -2
/* A0ADC 800B02DC FEFF0934 */  ori        $t1, $zero, 0xfffe
/* A0AE0 800B02E0 2120A001 */  addu       $a0, $t5, $zero
.L800B02E4:
/* A0AE4 800B02E4 0E008280 */  lb         $v0, 0xe($a0)
/* A0AE8 800B02E8 00000000 */  nop
/* A0AEC 800B02EC 02004104 */  bgez       $v0, .L800B02F8
/* A0AF0 800B02F0 00000000 */   nop
/* A0AF4 800B02F4 0E008BA0 */  sb         $t3, 0xe($a0)
.L800B02F8:
/* A0AF8 800B02F8 0E008380 */  lb         $v1, 0xe($a0)
/* A0AFC 800B02FC 00000000 */  nop
/* A0B00 800B0300 2A10E300 */  slt        $v0, $a3, $v1
/* A0B04 800B0304 02004010 */  beqz       $v0, .L800B0310
/* A0B08 800B0308 00000000 */   nop
/* A0B0C 800B030C 01000825 */  addiu      $t0, $t0, 1
.L800B0310:
/* A0B10 800B0310 09006714 */  bne        $v1, $a3, .L800B0338
/* A0B14 800B0314 00000000 */   nop
/* A0B18 800B0318 1400828C */  lw         $v0, 0x14($a0)
/* A0B1C 800B031C 00000000 */  nop
/* A0B20 800B0320 01004224 */  addiu      $v0, $v0, 1
/* A0B24 800B0324 24104A00 */  and        $v0, $v0, $t2
/* A0B28 800B0328 2B18C200 */  sltu       $v1, $a2, $v0
/* A0B2C 800B032C 28006014 */  bnez       $v1, .L800B03D0
/* A0B30 800B0330 00000000 */   nop
/* A0B34 800B0334 2330C200 */  subu       $a2, $a2, $v0
.L800B0338:
/* A0B38 800B0338 0100A524 */  addiu      $a1, $a1, 1
/* A0B3C 800B033C 2A102501 */  slt        $v0, $t1, $a1
/* A0B40 800B0340 05004014 */  bnez       $v0, .L800B0358
/* A0B44 800B0344 18008424 */   addiu     $a0, $a0, 0x18
/* A0B48 800B0348 05008290 */  lbu        $v0, 5($a0)
/* A0B4C 800B034C 00000000 */  nop
/* A0B50 800B0350 E4FF4014 */  bnez       $v0, .L800B02E4
/* A0B54 800B0354 00000000 */   nop
.L800B0358:
/* A0B58 800B0358 20000015 */  bnez       $t0, .L800B03DC
/* A0B5C 800B035C 00000000 */   nop
/* A0B60 800B0360 05008291 */  lbu        $v0, 5($t4)
/* A0B64 800B0364 00000000 */  nop
/* A0B68 800B0368 1E004010 */  beqz       $v0, .L800B03E4
/* A0B6C 800B036C 21280000 */   addu      $a1, $zero, $zero
/* A0B70 800B0370 FEFF0824 */  addiu      $t0, $zero, -2
/* A0B74 800B0374 FEFF0634 */  ori        $a2, $zero, 0xfffe
/* A0B78 800B0378 2120A001 */  addu       $a0, $t5, $zero
.L800B037C:
/* A0B7C 800B037C 0E008380 */  lb         $v1, 0xe($a0)
/* A0B80 800B0380 00000000 */  nop
/* A0B84 800B0384 08006004 */  bltz       $v1, .L800B03A8
/* A0B88 800B0388 2A10E300 */   slt       $v0, $a3, $v1
/* A0B8C 800B038C 03004014 */  bnez       $v0, .L800B039C
/* A0B90 800B0390 00000000 */   nop
/* A0B94 800B0394 EAC00208 */  j          .L800B03A8
/* A0B98 800B0398 0E0080A0 */   sb        $zero, 0xe($a0)
.L800B039C:
/* A0B9C 800B039C 02006014 */  bnez       $v1, .L800B03A8
/* A0BA0 800B03A0 00000000 */   nop
/* A0BA4 800B03A4 0E0088A0 */  sb         $t0, 0xe($a0)
.L800B03A8:
/* A0BA8 800B03A8 0100A524 */  addiu      $a1, $a1, 1
/* A0BAC 800B03AC 2A10C500 */  slt        $v0, $a2, $a1
/* A0BB0 800B03B0 0C004014 */  bnez       $v0, .L800B03E4
/* A0BB4 800B03B4 18008424 */   addiu     $a0, $a0, 0x18
/* A0BB8 800B03B8 05008290 */  lbu        $v0, 5($a0)
/* A0BBC 800B03BC 00000000 */  nop
/* A0BC0 800B03C0 EEFF4014 */  bnez       $v0, .L800B037C
/* A0BC4 800B03C4 2110E000 */   addu      $v0, $a3, $zero
/* A0BC8 800B03C8 FAC00208 */  j          .L800B03E8
/* A0BCC 800B03CC 00000000 */   nop
.L800B03D0:
/* A0BD0 800B03D0 FFFFE724 */  addiu      $a3, $a3, -1
/* A0BD4 800B03D4 D6C00208 */  j          .L800B0358
/* A0BD8 800B03D8 21400000 */   addu      $t0, $zero, $zero
.L800B03DC:
/* A0BDC 800B03DC B0C00208 */  j          .L800B02C0
/* A0BE0 800B03E0 0100E724 */   addiu     $a3, $a3, 1
.L800B03E4:
/* A0BE4 800B03E4 2110E000 */  addu       $v0, $a3, $zero
.L800B03E8:
/* A0BE8 800B03E8 0800E003 */  jr         $ra
/* A0BEC 800B03EC 00000000 */   nop
