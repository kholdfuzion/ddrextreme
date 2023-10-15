.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches


glabel DrawOTagEnv
/* 9284 80018A84 D8FFBD27 */  addiu      $sp, $sp, -0x28
/* 9288 80018A88 1800B2AF */  sw         $s2, 0x18($sp)
/* 928C 80018A8C 21908000 */  addu       $s2, $a0, $zero
/* 9290 80018A90 1C00B3AF */  sw         $s3, 0x1c($sp)
/* 9294 80018A94 0D80133C */  lui        $s3, %hi(D_800D2B9A)
/* 9298 80018A98 9A2B7326 */  addiu      $s3, $s3, %lo(D_800D2B9A)
/* 929C 80018A9C 2000BFAF */  sw         $ra, 0x20($sp)
/* 92A0 80018AA0 1400B1AF */  sw         $s1, 0x14($sp)
/* 92A4 80018AA4 1000B0AF */  sw         $s0, 0x10($sp)
/* 92A8 80018AA8 00006292 */  lbu        $v0, ($s3)
/* 92AC 80018AAC 00000000 */  nop
/* 92B0 80018AB0 0200422C */  sltiu      $v0, $v0, 2
/* 92B4 80018AB4 09004014 */  bnez       $v0, .L80018ADC
/* 92B8 80018AB8 2188A000 */   addu      $s1, $a1, $zero
/* 92BC 80018ABC 0180043C */  lui        $a0, %hi(D_8001024C)
/* 92C0 80018AC0 4C028424 */  addiu      $a0, $a0, %lo(D_8001024C)
/* 92C4 80018AC4 21284002 */  addu       $a1, $s2, $zero
/* 92C8 80018AC8 0D80023C */  lui        $v0, %hi(D_800D2B94)
/* 92CC 80018ACC 942B428C */  lw         $v0, %lo(D_800D2B94)($v0)
/* 92D0 80018AD0 00000000 */  nop
/* 92D4 80018AD4 09F84000 */  jalr       $v0
/* 92D8 80018AD8 21302002 */   addu      $a2, $s1, $zero
.L80018ADC:
/* 92DC 80018ADC 1C003026 */  addiu      $s0, $s1, 0x1c
/* 92E0 80018AE0 21200002 */  addu       $a0, $s0, $zero
/* 92E4 80018AE4 E964000C */  jal        SYS_OBJ_13C0
/* 92E8 80018AE8 21282002 */   addu      $a1, $s1, $zero
/* 92EC 80018AEC FF00043C */  lui        $a0, 0xff
/* 92F0 80018AF0 FFFF8434 */  ori        $a0, $a0, 0xffff
/* 92F4 80018AF4 21280002 */  addu       $a1, $s0, $zero
/* 92F8 80018AF8 40000624 */  addiu      $a2, $zero, 0x40
/* 92FC 80018AFC 00FF033C */  lui        $v1, 0xff00
/* 9300 80018B00 1C00228E */  lw         $v0, 0x1c($s1)
/* 9304 80018B04 24204402 */  and        $a0, $s2, $a0
/* 9308 80018B08 24104300 */  and        $v0, $v0, $v1
/* 930C 80018B0C 0D80033C */  lui        $v1, %hi(D_800D2B90)
/* 9310 80018B10 902B638C */  lw         $v1, %lo(D_800D2B90)($v1)
/* 9314 80018B14 25104400 */  or         $v0, $v0, $a0
/* 9318 80018B18 1C0022AE */  sw         $v0, 0x1c($s1)
/* 931C 80018B1C 1800648C */  lw         $a0, 0x18($v1)
/* 9320 80018B20 0800628C */  lw         $v0, 8($v1)
/* 9324 80018B24 00000000 */  nop
/* 9328 80018B28 09F84000 */  jalr       $v0
/* 932C 80018B2C 21380000 */   addu      $a3, $zero, $zero
/* 9330 80018B30 0E006426 */  addiu      $a0, $s3, 0xe
/* 9334 80018B34 21282002 */  addu       $a1, $s1, $zero
/* 9338 80018B38 BD6B000C */  jal        memcpy
/* 933C 80018B3C 5C000624 */   addiu     $a2, $zero, 0x5c
/* 9340 80018B40 2000BF8F */  lw         $ra, 0x20($sp)
/* 9344 80018B44 1C00B38F */  lw         $s3, 0x1c($sp)
/* 9348 80018B48 1800B28F */  lw         $s2, 0x18($sp)
/* 934C 80018B4C 1400B18F */  lw         $s1, 0x14($sp)
/* 9350 80018B50 1000B08F */  lw         $s0, 0x10($sp)
/* 9354 80018B54 0800E003 */  jr         $ra
/* 9358 80018B58 2800BD27 */   addiu     $sp, $sp, 0x28
