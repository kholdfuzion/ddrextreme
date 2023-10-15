.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches


glabel FUN_8002b4ac
/* 1BCAC 8002B4AC E0FFBD27 */  addiu      $sp, $sp, -0x20
/* 1BCB0 8002B4B0 1400B1AF */  sw         $s1, 0x14($sp)
/* 1BCB4 8002B4B4 1580113C */  lui        $s1, %hi(D_8014ABF0)
/* 1BCB8 8002B4B8 1000B0AF */  sw         $s0, 0x10($sp)
/* 1BCBC 8002B4BC F0AB3026 */  addiu      $s0, $s1, %lo(D_8014ABF0)
/* 1BCC0 8002B4C0 1580023C */  lui        $v0, %hi(D_8014BA50)
/* 1BCC4 8002B4C4 1800BFAF */  sw         $ra, 0x18($sp)
/* 1BCC8 8002B4C8 50BA4724 */  addiu      $a3, $v0, %lo(D_8014BA50)
/* 1BCCC 8002B4CC F0AB2626 */  addiu      $a2, $s1, -0x5410
/* 1BCD0 8002B4D0 0300E388 */  lwl        $v1, 3($a3)
/* 1BCD4 8002B4D4 0000E398 */  lwr        $v1, ($a3)
/* 1BCD8 8002B4D8 0700E588 */  lwl        $a1, 7($a3)
/* 1BCDC 8002B4DC 0400E598 */  lwr        $a1, 4($a3)
/* 1BCE0 8002B4E0 0300C3A8 */  swl        $v1, 3($a2)
/* 1BCE4 8002B4E4 0000C3B8 */  swr        $v1, ($a2)
/* 1BCE8 8002B4E8 0700C5A8 */  swl        $a1, 7($a2)
/* 1BCEC 8002B4EC 0400C5B8 */  swr        $a1, 4($a2)
/* 1BCF0 8002B4F0 0B00E388 */  lwl        $v1, 0xb($a3)
/* 1BCF4 8002B4F4 0800E398 */  lwr        $v1, 8($a3)
/* 1BCF8 8002B4F8 0F00E588 */  lwl        $a1, 0xf($a3)
/* 1BCFC 8002B4FC 0C00E598 */  lwr        $a1, 0xc($a3)
/* 1BD00 8002B500 0B00C3A8 */  swl        $v1, 0xb($a2)
/* 1BD04 8002B504 0800C3B8 */  swr        $v1, 8($a2)
/* 1BD08 8002B508 0F00C5A8 */  swl        $a1, 0xf($a2)
/* 1BD0C 8002B50C 0C00C5B8 */  swr        $a1, 0xc($a2)
/* 1BD10 8002B510 62AC000C */  jal        FUN_8002b188
/* 1BD14 8002B514 21200002 */   addu      $a0, $s0, $zero
/* 1BD18 8002B518 21200000 */  addu       $a0, $zero, $zero
/* 1BD1C 8002B51C 60000626 */  addiu      $a2, $s0, 0x60
/* 1BD20 8002B520 A00700A6 */  sh         $zero, 0x7a0($s0)
/* 1BD24 8002B524 AC0700A6 */  sh         $zero, 0x7ac($s0)
/* 1BD28 8002B528 5E0000A6 */  sh         $zero, 0x5e($s0)
/* 1BD2C 8002B52C 5C0000A6 */  sh         $zero, 0x5c($s0)
/* 1BD30 8002B530 01008524 */  addiu      $a1, $a0, 1
.L8002B534:
/* 1BD34 8002B534 02000324 */  addiu      $v1, $zero, 2
/* 1BD38 8002B538 40100400 */  sll        $v0, $a0, 1
/* 1BD3C 8002B53C 21104400 */  addu       $v0, $v0, $a0
/* 1BD40 8002B540 40100200 */  sll        $v0, $v0, 1
/* 1BD44 8002B544 21104600 */  addu       $v0, $v0, $a2
/* 1BD48 8002B548 04004224 */  addiu      $v0, $v0, 4
.L8002B54C:
/* 1BD4C 8002B54C 000040A4 */  sh         $zero, ($v0)
/* 1BD50 8002B550 FFFF6324 */  addiu      $v1, $v1, -1
/* 1BD54 8002B554 FDFF6104 */  bgez       $v1, .L8002B54C
/* 1BD58 8002B558 FEFF4224 */   addiu     $v0, $v0, -2
/* 1BD5C 8002B55C 2120A000 */  addu       $a0, $a1, $zero
/* 1BD60 8002B560 00018228 */  slti       $v0, $a0, 0x100
/* 1BD64 8002B564 F3FF4014 */  bnez       $v0, .L8002B534
/* 1BD68 8002B568 01008524 */   addiu     $a1, $a0, 1
/* 1BD6C 8002B56C 21200000 */  addu       $a0, $zero, $zero
/* 1BD70 8002B570 F0AB3026 */  addiu      $s0, $s1, -0x5410
/* 1BD74 8002B574 4C0000AE */  sw         $zero, 0x4c($s0)
/* 1BD78 8002B578 A5E9020C */  jal        FUN_800ba694
/* 1BD7C 8002B57C 500000AE */   sw        $zero, 0x50($s0)
/* 1BD80 8002B580 AFE9020C */  jal        FUN_800ba6bc
/* 1BD84 8002B584 580002AE */   sw        $v0, 0x58($s0)
/* 1BD88 8002B588 03004018 */  blez       $v0, .L8002B598
/* 1BD8C 8002B58C 00000000 */   nop
/* 1BD90 8002B590 67AD0008 */  j          .L8002B59C
/* 1BD94 8002B594 540002AE */   sw        $v0, 0x54($s0)
.L8002B598:
/* 1BD98 8002B598 540000AE */  sw         $zero, 0x54($s0)
.L8002B59C:
/* 1BD9C 8002B59C CC02043C */  lui        $a0, 0x2cc
/* 1BDA0 8002B5A0 00408434 */  ori        $a0, $a0, 0x4000
/* 1BDA4 8002B5A4 0E80063C */  lui        $a2, %hi(D_800D8D34)
/* 1BDA8 8002B5A8 F0AB2726 */  addiu      $a3, $s1, -0x5410
/* 1BDAC 8002B5AC 6406E924 */  addiu      $t1, $a3, 0x664
/* 1BDB0 8002B5B0 6006E324 */  addiu      $v1, $a3, 0x660
/* 1BDB4 8002B5B4 13000524 */  addiu      $a1, $zero, 0x13
.L8002B5B8:
/* 1BDB8 8002B5B8 348DC28C */  lw         $v0, %lo(D_800D8D34)($a2)
/* 1BDBC 8002B5BC FFFFA524 */  addiu      $a1, $a1, -1
/* 1BDC0 8002B5C0 040064AC */  sw         $a0, 4($v1)
/* 1BDC4 8002B5C4 03004888 */  lwl        $t0, 3($v0)
/* 1BDC8 8002B5C8 00004898 */  lwr        $t0, ($v0)
/* 1BDCC 8002B5CC 00000000 */  nop
/* 1BDD0 8002B5D0 030068A8 */  swl        $t0, 3($v1)
/* 1BDD4 8002B5D4 000068B8 */  swr        $t0, ($v1)
/* 1BDD8 8002B5D8 F7FFA104 */  bgez       $a1, .L8002B5B8
/* 1BDDC 8002B5DC 08006324 */   addiu     $v1, $v1, 8
/* 1BDE0 8002B5E0 14000524 */  addiu      $a1, $zero, 0x14
/* 1BDE4 8002B5E4 0800063C */  lui        $a2, 8
/* 1BDE8 8002B5E8 48BEC634 */  ori        $a2, $a2, 0xbe48
/* 1BDEC 8002B5EC 0E80083C */  lui        $t0, %hi(D_800D8D34)
/* 1BDF0 8002B5F0 0007E424 */  addiu      $a0, $a3, 0x700
/* 1BDF4 8002B5F4 A0002325 */  addiu      $v1, $t1, 0xa0
.L8002B5F8:
/* 1BDF8 8002B5F8 000066AC */  sw         $a2, ($v1)
/* 1BDFC 8002B5FC 08006324 */  addiu      $v1, $v1, 8
/* 1BE00 8002B600 348D028D */  lw         $v0, %lo(D_800D8D34)($t0)
/* 1BE04 8002B604 0100A524 */  addiu      $a1, $a1, 1
/* 1BE08 8002B608 03004788 */  lwl        $a3, 3($v0)
/* 1BE0C 8002B60C 00004798 */  lwr        $a3, ($v0)
/* 1BE10 8002B610 00000000 */  nop
/* 1BE14 8002B614 030087A8 */  swl        $a3, 3($a0)
/* 1BE18 8002B618 000087B8 */  swr        $a3, ($a0)
/* 1BE1C 8002B61C 2800A228 */  slti       $v0, $a1, 0x28
/* 1BE20 8002B620 F5FF4014 */  bnez       $v0, .L8002B5F8
/* 1BE24 8002B624 08008424 */   addiu     $a0, $a0, 8
/* 1BE28 8002B628 F0AB2426 */  addiu      $a0, $s1, -0x5410
/* 1BE2C 8002B62C 10000524 */  addiu      $a1, $zero, 0x10
/* 1BE30 8002B630 3C000224 */  addiu      $v0, $zero, 0x3c
/* 1BE34 8002B634 1800BF8F */  lw         $ra, 0x18($sp)
/* 1BE38 8002B638 1400B18F */  lw         $s1, 0x14($sp)
/* 1BE3C 8002B63C 1000B08F */  lw         $s0, 0x10($sp)
/* 1BE40 8002B640 5C000324 */  addiu      $v1, $zero, 0x5c
/* 1BE44 8002B644 1E0E82A4 */  sh         $v0, 0xe1e($a0)
/* 1BE48 8002B648 04060224 */  addiu      $v0, $zero, 0x604
/* 1BE4C 8002B64C 240E83A4 */  sh         $v1, 0xe24($a0)
/* 1BE50 8002B650 60060324 */  addiu      $v1, $zero, 0x660
/* 1BE54 8002B654 260E82A4 */  sh         $v0, 0xe26($a0)
/* 1BE58 8002B658 40010224 */  addiu      $v0, $zero, 0x140
/* 1BE5C 8002B65C 2C0E83A4 */  sh         $v1, 0xe2c($a0)
/* 1BE60 8002B660 A0070324 */  addiu      $v1, $zero, 0x7a0
/* 1BE64 8002B664 2E0E82A4 */  sh         $v0, 0xe2e($a0)
/* 1BE68 8002B668 7C060224 */  addiu      $v0, $zero, 0x67c
/* 1BE6C 8002B66C 340E83A4 */  sh         $v1, 0xe34($a0)
/* 1BE70 8002B670 4C000324 */  addiu      $v1, $zero, 0x4c
/* 1BE74 8002B674 1C0E85A4 */  sh         $a1, 0xe1c($a0)
/* 1BE78 8002B678 360E82A4 */  sh         $v0, 0xe36($a0)
/* 1BE7C 8002B67C 3C0E83A4 */  sh         $v1, 0xe3c($a0)
/* 1BE80 8002B680 3E0E85A4 */  sh         $a1, 0xe3e($a0)
/* 1BE84 8002B684 0800E003 */  jr         $ra
/* 1BE88 8002B688 2000BD27 */   addiu     $sp, $sp, 0x20
