.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches


glabel FUN_8004a45c
/* 3AC5C 8004A45C C8FFBD27 */  addiu      $sp, $sp, -0x38
/* 3AC60 8004A460 1780023C */  lui        $v0, %hi(D_8016ED70)
/* 3AC64 8004A464 70ED4324 */  addiu      $v1, $v0, %lo(D_8016ED70)
/* 3AC68 8004A468 1C00B3AF */  sw         $s3, 0x1c($sp)
/* 3AC6C 8004A46C 21980000 */  addu       $s3, $zero, $zero
/* 3AC70 8004A470 2C00B7AF */  sw         $s7, 0x2c($sp)
/* 3AC74 8004A474 21B84000 */  addu       $s7, $v0, $zero
/* 3AC78 8004A478 2400B5AF */  sw         $s5, 0x24($sp)
/* 3AC7C 8004A47C FF001524 */  addiu      $s5, $zero, 0xff
/* 3AC80 8004A480 1400B1AF */  sw         $s1, 0x14($sp)
/* 3AC84 8004A484 21886000 */  addu       $s1, $v1, $zero
/* 3AC88 8004A488 2000B4AF */  sw         $s4, 0x20($sp)
/* 3AC8C 8004A48C 24003426 */  addiu      $s4, $s1, 0x24
/* 3AC90 8004A490 1000B0AF */  sw         $s0, 0x10($sp)
/* 3AC94 8004A494 21802002 */  addu       $s0, $s1, $zero
/* 3AC98 8004A498 1800B2AF */  sw         $s2, 0x18($sp)
/* 3AC9C 8004A49C 21900000 */  addu       $s2, $zero, $zero
/* 3ACA0 8004A4A0 2800B6AF */  sw         $s6, 0x28($sp)
/* 3ACA4 8004A4A4 28001624 */  addiu      $s6, $zero, 0x28
/* 3ACA8 8004A4A8 3000BFAF */  sw         $ra, 0x30($sp)
/* 3ACAC 8004A4AC 620060A4 */  sh         $zero, 0x62($v1)
.L8004A4B0:
/* 3ACB0 8004A4B0 21183202 */  addu       $v1, $s1, $s2
/* 3ACB4 8004A4B4 3C000224 */  addiu      $v0, $zero, 0x3c
/* 3ACB8 8004A4B8 21206000 */  addu       $a0, $v1, $zero
/* 3ACBC 8004A4BC 240016AE */  sw         $s6, 0x24($s0)
/* 3ACC0 8004A4C0 280062AC */  sw         $v0, 0x28($v1)
/* 3ACC4 8004A4C4 50000224 */  addiu      $v0, $zero, 0x50
/* 3ACC8 8004A4C8 05006016 */  bnez       $s3, .L8004A4E0
/* 3ACCC 8004A4CC 2C0082AC */   sw        $v0, 0x2c($a0)
/* 3ACD0 8004A4D0 300035A2 */  sb         $s5, 0x30($s1)
/* 3ACD4 8004A4D4 310035A2 */  sb         $s5, 0x31($s1)
/* 3ACD8 8004A4D8 3B290108 */  j          .L8004A4EC
/* 3ACDC 8004A4DC 320035A2 */   sb        $s5, 0x32($s1)
.L8004A4E0:
/* 3ACE0 8004A4E0 300000A2 */  sb         $zero, 0x30($s0)
/* 3ACE4 8004A4E4 310000A2 */  sb         $zero, 0x31($s0)
/* 3ACE8 8004A4E8 320000A2 */  sb         $zero, 0x32($s0)
.L8004A4EC:
/* 3ACEC 8004A4EC 21206002 */  addu       $a0, $s3, $zero
/* 3ACF0 8004A4F0 6A86000C */  jal        GsSetFlatLight
/* 3ACF4 8004A4F4 21288002 */   addu      $a1, $s4, $zero
/* 3ACF8 8004A4F8 10009426 */  addiu      $s4, $s4, 0x10
/* 3ACFC 8004A4FC 10001026 */  addiu      $s0, $s0, 0x10
/* 3AD00 8004A500 01007326 */  addiu      $s3, $s3, 1
/* 3AD04 8004A504 0300622A */  slti       $v0, $s3, 3
/* 3AD08 8004A508 E9FF4014 */  bnez       $v0, .L8004A4B0
/* 3AD0C 8004A50C 10005226 */   addiu     $s2, $s2, 0x10
/* 3AD10 8004A510 70EDF026 */  addiu      $s0, $s7, -0x1290
/* 3AD14 8004A514 62000496 */  lhu        $a0, 0x62($s0)
/* 3AD18 8004A518 40060224 */  addiu      $v0, $zero, 0x640
/* 3AD1C 8004A51C 640002A6 */  sh         $v0, 0x64($s0)
/* 3AD20 8004A520 660002A6 */  sh         $v0, 0x66($s0)
/* 3AD24 8004A524 9429010C */  jal        GsSetLightMode
/* 3AD28 8004A528 680002A6 */   sh        $v0, 0x68($s0)
/* 3AD2C 8004A52C 64000496 */  lhu        $a0, 0x64($s0)
/* 3AD30 8004A530 66000596 */  lhu        $a1, 0x66($s0)
/* 3AD34 8004A534 68000696 */  lhu        $a2, 0x68($s0)
/* 3AD38 8004A538 C829010C */  jal        GsSetAmbient
/* 3AD3C 8004A53C 00000000 */   nop
/* 3AD40 8004A540 3000BF8F */  lw         $ra, 0x30($sp)
/* 3AD44 8004A544 2C00B78F */  lw         $s7, 0x2c($sp)
/* 3AD48 8004A548 2800B68F */  lw         $s6, 0x28($sp)
/* 3AD4C 8004A54C 2400B58F */  lw         $s5, 0x24($sp)
/* 3AD50 8004A550 2000B48F */  lw         $s4, 0x20($sp)
/* 3AD54 8004A554 1C00B38F */  lw         $s3, 0x1c($sp)
/* 3AD58 8004A558 1800B28F */  lw         $s2, 0x18($sp)
/* 3AD5C 8004A55C 1400B18F */  lw         $s1, 0x14($sp)
/* 3AD60 8004A560 1000B08F */  lw         $s0, 0x10($sp)
/* 3AD64 8004A564 0800E003 */  jr         $ra
/* 3AD68 8004A568 3800BD27 */   addiu     $sp, $sp, 0x38
