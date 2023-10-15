.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches


glabel FUN_800aa3bc
/* 9ABBC 800AA3BC 1C80023C */  lui        $v0, %hi(D_801C3EA4)
/* 9ABC0 800AA3C0 A43E4390 */  lbu        $v1, %lo(D_801C3EA4)($v0)
/* 9ABC4 800AA3C4 D8FFBD27 */  addiu      $sp, $sp, -0x28
/* 9ABC8 800AA3C8 3400A7AF */  sw         $a3, 0x34($sp)
/* 9ABCC 800AA3CC A43E4724 */  addiu      $a3, $v0, 0x3ea4
/* 9ABD0 800AA3D0 1800B2AF */  sw         $s2, 0x18($sp)
/* 9ABD4 800AA3D4 8000F224 */  addiu      $s2, $a3, 0x80
/* 9ABD8 800AA3D8 2000BFAF */  sw         $ra, 0x20($sp)
/* 9ABDC 800AA3DC 1C00B3AF */  sw         $s3, 0x1c($sp)
/* 9ABE0 800AA3E0 1400B1AF */  sw         $s1, 0x14($sp)
/* 9ABE4 800AA3E4 1000B0AF */  sw         $s0, 0x10($sp)
/* 9ABE8 800AA3E8 2C00A5AF */  sw         $a1, 0x2c($sp)
/* 9ABEC 800AA3EC 3000A6AF */  sw         $a2, 0x30($sp)
/* 9ABF0 800AA3F0 0400E290 */  lbu        $v0, 4($a3)
/* 9ABF4 800AA3F4 0800E48C */  lw         $a0, 8($a3)
/* 9ABF8 800AA3F8 1000E58C */  lw         $a1, 0x10($a3)
/* 9ABFC 800AA3FC 4C00B383 */  lb         $s3, 0x4c($sp)
/* 9AC00 800AA400 02006338 */  xori       $v1, $v1, 2
/* 9AC04 800AA404 2B800300 */  sltu       $s0, $zero, $v1
/* 9AC08 800AA408 01004238 */  xori       $v0, $v0, 1
/* 9AC0C 800AA40C 2B100200 */  sltu       $v0, $zero, $v0
/* 9AC10 800AA410 25800202 */  or         $s0, $s0, $v0
/* 9AC14 800AA414 01008330 */  andi       $v1, $a0, 1
/* 9AC18 800AA418 25800302 */  or         $s0, $s0, $v1
/* 9AC1C 800AA41C 0100A230 */  andi       $v0, $a1, 1
/* 9AC20 800AA420 25800202 */  or         $s0, $s0, $v0
/* 9AC24 800AA424 06008430 */  andi       $a0, $a0, 6
/* 9AC28 800AA428 05008014 */  bnez       $a0, .L800AA440
/* 9AC2C 800AA42C 4000E324 */   addiu     $v1, $a3, 0x40
/* 9AC30 800AA430 42100500 */  srl        $v0, $a1, 1
/* 9AC34 800AA434 01004238 */  xori       $v0, $v0, 1
/* 9AC38 800AA438 01004230 */  andi       $v0, $v0, 1
/* 9AC3C 800AA43C 25800202 */  or         $s0, $s0, $v0
.L800AA440:
/* 9AC40 800AA440 21300000 */  addu       $a2, $zero, $zero
/* 9AC44 800AA444 1800EF24 */  addiu      $t7, $a3, 0x18
/* 9AC48 800AA448 0180023C */  lui        $v0, %hi(D_80016CF0)
/* 9AC4C 800AA44C F06C4E24 */  addiu      $t6, $v0, %lo(D_80016CF0)
/* 9AC50 800AA450 4000EA8C */  lw         $t2, 0x40($a3)
/* 9AC54 800AA454 8000E98C */  lw         $t1, 0x80($a3)
/* 9AC58 800AA458 04006B94 */  lhu        $t3, 4($v1)
/* 9AC5C 800AA45C 08004896 */  lhu        $t0, 8($s2)
/* 9AC60 800AA460 06006D90 */  lbu        $t5, 6($v1)
/* 9AC64 800AA464 04004C92 */  lbu        $t4, 4($s2)
/* 9AC68 800AA468 05005192 */  lbu        $s1, 5($s2)
/* 9AC6C 800AA46C 06005892 */  lbu        $t8, 6($s2)
.L800AA470:
/* 9AC70 800AA470 2110E601 */  addu       $v0, $t7, $a2
/* 9AC74 800AA474 2120CE00 */  addu       $a0, $a2, $t6
/* 9AC78 800AA478 0100C624 */  addiu      $a2, $a2, 1
/* 9AC7C 800AA47C 00004390 */  lbu        $v1, ($v0)
/* 9AC80 800AA480 00008590 */  lbu        $a1, ($a0)
/* 9AC84 800AA484 1800C228 */  slti       $v0, $a2, 0x18
/* 9AC88 800AA488 26186500 */  xor        $v1, $v1, $a1
/* 9AC8C 800AA48C 2B180300 */  sltu       $v1, $zero, $v1
/* 9AC90 800AA490 F7FF4014 */  bnez       $v0, .L800AA470
/* 9AC94 800AA494 25800302 */   or        $s0, $s0, $v1
/* 9AC98 800AA498 26104901 */  xor        $v0, $t2, $t1
/* 9AC9C 800AA49C 2B100200 */  sltu       $v0, $zero, $v0
/* 9ACA0 800AA4A0 25800202 */  or         $s0, $s0, $v0
/* 9ACA4 800AA4A4 001C0B00 */  sll        $v1, $t3, 0x10
/* 9ACA8 800AA4A8 031C0300 */  sra        $v1, $v1, 0x10
/* 9ACAC 800AA4AC 00140800 */  sll        $v0, $t0, 0x10
/* 9ACB0 800AA4B0 032C0200 */  sra        $a1, $v0, 0x10
/* 9ACB4 800AA4B4 26186500 */  xor        $v1, $v1, $a1
/* 9ACB8 800AA4B8 2B180300 */  sltu       $v1, $zero, $v1
/* 9ACBC 800AA4BC 25800302 */  or         $s0, $s0, $v1
/* 9ACC0 800AA4C0 FF00A431 */  andi       $a0, $t5, 0xff
/* 9ACC4 800AA4C4 26108401 */  xor        $v0, $t4, $a0
/* 9ACC8 800AA4C8 2B100200 */  sltu       $v0, $zero, $v0
/* 9ACCC 800AA4CC 25800202 */  or         $s0, $s0, $v0
/* 9ACD0 800AA4D0 0300842C */  sltiu      $a0, $a0, 3
/* 9ACD4 800AA4D4 01008438 */  xori       $a0, $a0, 1
/* 9ACD8 800AA4D8 25800402 */  or         $s0, $s0, $a0
/* 9ACDC 800AA4DC 0300223A */  xori       $v0, $s1, 3
/* 9ACE0 800AA4E0 2B100200 */  sltu       $v0, $zero, $v0
/* 9ACE4 800AA4E4 25800202 */  or         $s0, $s0, $v0
/* 9ACE8 800AA4E8 0100032F */  sltiu      $v1, $t8, 1
/* 9ACEC 800AA4EC AFFE0225 */  addiu      $v0, $t0, -0x151
/* 9ACF0 800AA4F0 3600422C */  sltiu      $v0, $v0, 0x36
/* 9ACF4 800AA4F4 0B004014 */  bnez       $v0, .L800AA524
/* 9ACF8 800AA4F8 25800302 */   or        $s0, $s0, $v1
/* 9ACFC 800AA4FC 63FE0225 */  addiu      $v0, $t0, -0x19d
/* 9AD00 800AA500 1200422C */  sltiu      $v0, $v0, 0x12
/* 9AD04 800AA504 07004014 */  bnez       $v0, .L800AA524
/* 9AD08 800AA508 00000000 */   nop
/* 9AD0C 800AA50C 98010224 */  addiu      $v0, $zero, 0x198
/* 9AD10 800AA510 0400A210 */  beq        $a1, $v0, .L800AA524
/* 9AD14 800AA514 00000000 */   nop
/* 9AD18 800AA518 8D000224 */  addiu      $v0, $zero, 0x8d
/* 9AD1C 800AA51C 0400A214 */  bne        $a1, $v0, .L800AA530
/* 9AD20 800AA520 00000000 */   nop
.L800AA524:
/* 9AD24 800AA524 3000E294 */  lhu        $v0, 0x30($a3)
/* 9AD28 800AA528 52A90208 */  j          .L800AA548
/* 9AD2C 800AA52C 8EC14238 */   xori      $v0, $v0, 0xc18e
.L800AA530:
/* 9AD30 800AA530 8701A228 */  slti       $v0, $a1, 0x187
/* 9AD34 800AA534 06004014 */  bnez       $v0, .L800AA550
/* 9AD38 800AA538 00000000 */   nop
/* 9AD3C 800AA53C 3000E294 */  lhu        $v0, 0x30($a3)
/* 9AD40 800AA540 00000000 */  nop
/* 9AD44 800AA544 93E94238 */  xori       $v0, $v0, 0xe993
.L800AA548:
/* 9AD48 800AA548 2B100200 */  sltu       $v0, $zero, $v0
/* 9AD4C 800AA54C 25800202 */  or         $s0, $s0, $v0
.L800AA550:
/* 9AD50 800AA550 00240800 */  sll        $a0, $t0, 0x10
/* 9AD54 800AA554 3DA5020C */  jal        FUN_800a94f4
/* 9AD58 800AA558 03240400 */   sra       $a0, $a0, 0x10
/* 9AD5C 800AA55C 0FA2020C */  jal        FUN_800a883c
/* 9AD60 800AA560 21204000 */   addu      $a0, $v0, $zero
/* 9AD64 800AA564 21204000 */  addu       $a0, $v0, $zero
/* 9AD68 800AA568 F0A3020C */  jal        FUN_800a8fc0
/* 9AD6C 800AA56C 21280000 */   addu      $a1, $zero, $zero
/* 9AD70 800AA570 0100422C */  sltiu      $v0, $v0, 1
/* 9AD74 800AA574 F8AE020C */  jal        FUN_800abbe0
/* 9AD78 800AA578 25800202 */   or        $s0, $s0, $v0
/* 9AD7C 800AA57C 44004010 */  beqz       $v0, .L800AA690
/* 9AD80 800AA580 FFFF0224 */   addiu     $v0, $zero, -1
/* 9AD84 800AA584 42000016 */  bnez       $s0, .L800AA690
/* 9AD88 800AA588 1C80043C */   lui       $a0, %hi(D_801BFBB8)
/* 9AD8C 800AA58C 1C80023C */  lui        $v0, %hi(D_801C3E88)
/* 9AD90 800AA590 883E5024 */  addiu      $s0, $v0, %lo(D_801C3E88)
/* 9AD94 800AA594 0C00038E */  lw         $v1, 0xc($s0)
/* 9AD98 800AA598 B8FB9124 */  addiu      $s1, $a0, %lo(D_801BFBB8)
/* 9AD9C 800AA59C 40100300 */  sll        $v0, $v1, 1
/* 9ADA0 800AA5A0 21104300 */  addu       $v0, $v0, $v1
/* 9ADA4 800AA5A4 C0100200 */  sll        $v0, $v0, 3
/* 9ADA8 800AA5A8 21205100 */  addu       $a0, $v0, $s1
/* 9ADAC 800AA5AC 0E0093A0 */  sb         $s3, 0xe($a0)
/* 9ADB0 800AA5B0 2C00A393 */  lbu        $v1, 0x2c($sp)
/* 9ADB4 800AA5B4 31000224 */  addiu      $v0, $zero, 0x31
/* 9ADB8 800AA5B8 08006214 */  bne        $v1, $v0, .L800AA5DC
/* 9ADBC 800AA5BC 32000224 */   addiu     $v0, $zero, 0x32
/* 9ADC0 800AA5C0 1C010292 */  lbu        $v0, 0x11c($s0)
/* 9ADC4 800AA5C4 01000324 */  addiu      $v1, $zero, 1
/* 9ADC8 800AA5C8 100083A0 */  sb         $v1, 0x10($a0)
/* 9ADCC 800AA5CC 01004234 */  ori        $v0, $v0, 1
/* 9ADD0 800AA5D0 1C0102A2 */  sb         $v0, 0x11c($s0)
/* 9ADD4 800AA5D4 2C00A393 */  lbu        $v1, 0x2c($sp)
/* 9ADD8 800AA5D8 32000224 */  addiu      $v0, $zero, 0x32
.L800AA5DC:
/* 9ADDC 800AA5DC 0B006214 */  bne        $v1, $v0, .L800AA60C
/* 9ADE0 800AA5E0 5D000524 */   addiu     $a1, $zero, 0x5d
/* 9ADE4 800AA5E4 0C00038E */  lw         $v1, 0xc($s0)
/* 9ADE8 800AA5E8 02000424 */  addiu      $a0, $zero, 2
/* 9ADEC 800AA5EC 40100300 */  sll        $v0, $v1, 1
/* 9ADF0 800AA5F0 21104300 */  addu       $v0, $v0, $v1
/* 9ADF4 800AA5F4 C0100200 */  sll        $v0, $v0, 3
/* 9ADF8 800AA5F8 1C010392 */  lbu        $v1, 0x11c($s0)
/* 9ADFC 800AA5FC 21105100 */  addu       $v0, $v0, $s1
/* 9AE00 800AA600 100044A0 */  sb         $a0, 0x10($v0)
/* 9AE04 800AA604 02006334 */  ori        $v1, $v1, 2
/* 9AE08 800AA608 1C0103A2 */  sb         $v1, 0x11c($s0)
.L800AA60C:
/* 9AE0C 800AA60C 0C00038E */  lw         $v1, 0xc($s0)
/* 9AE10 800AA610 08004486 */  lh         $a0, 8($s2)
/* 9AE14 800AA614 40100300 */  sll        $v0, $v1, 1
/* 9AE18 800AA618 21104300 */  addu       $v0, $v0, $v1
/* 9AE1C 800AA61C C0100200 */  sll        $v0, $v0, 3
/* 9AE20 800AA620 21305100 */  addu       $a2, $v0, $s1
/* 9AE24 800AA624 5B000324 */  addiu      $v1, $zero, 0x5b
/* 9AE28 800AA628 0000C3A0 */  sb         $v1, ($a2)
/* 9AE2C 800AA62C 01002326 */  addiu      $v1, $s1, 1
/* 9AE30 800AA630 0900C5A0 */  sb         $a1, 9($a2)
/* 9AE34 800AA634 0A00C0A0 */  sb         $zero, 0xa($a2)
/* 9AE38 800AA638 04004592 */  lbu        $a1, 4($s2)
/* 9AE3C 800AA63C 21104300 */  addu       $v0, $v0, $v1
/* 9AE40 800AA640 3D00A38B */  lwl        $v1, 0x3d($sp)
/* 9AE44 800AA644 3A00A39B */  lwr        $v1, 0x3a($sp)
/* 9AE48 800AA648 4100A78B */  lwl        $a3, 0x41($sp)
/* 9AE4C 800AA64C 3E00A79B */  lwr        $a3, 0x3e($sp)
/* 9AE50 800AA650 030043A8 */  swl        $v1, 3($v0)
/* 9AE54 800AA654 000043B8 */  swr        $v1, ($v0)
/* 9AE58 800AA658 070047A8 */  swl        $a3, 7($v0)
/* 9AE5C 800AA65C 040047B8 */  swr        $a3, 4($v0)
/* 9AE60 800AA660 3DA5020C */  jal        FUN_800a94f4
/* 9AE64 800AA664 0F00C5A0 */   sb        $a1, 0xf($a2)
/* 9AE68 800AA668 0FA2020C */  jal        FUN_800a883c
/* 9AE6C 800AA66C 21204000 */   addu      $a0, $v0, $zero
/* 9AE70 800AA670 0C00048E */  lw         $a0, 0xc($s0)
/* 9AE74 800AA674 00000000 */  nop
/* 9AE78 800AA678 40180400 */  sll        $v1, $a0, 1
/* 9AE7C 800AA67C 21186400 */  addu       $v1, $v1, $a0
/* 9AE80 800AA680 C0180300 */  sll        $v1, $v1, 3
/* 9AE84 800AA684 21182302 */  addu       $v1, $s1, $v1
/* 9AE88 800AA688 140062AC */  sw         $v0, 0x14($v1)
/* 9AE8C 800AA68C 21100000 */  addu       $v0, $zero, $zero
.L800AA690:
/* 9AE90 800AA690 2000BF8F */  lw         $ra, 0x20($sp)
/* 9AE94 800AA694 1C00B38F */  lw         $s3, 0x1c($sp)
/* 9AE98 800AA698 1800B28F */  lw         $s2, 0x18($sp)
/* 9AE9C 800AA69C 1400B18F */  lw         $s1, 0x14($sp)
/* 9AEA0 800AA6A0 1000B08F */  lw         $s0, 0x10($sp)
/* 9AEA4 800AA6A4 0800E003 */  jr         $ra
/* 9AEA8 800AA6A8 2800BD27 */   addiu     $sp, $sp, 0x28
