.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches


glabel func_8002AD28
/* 1B528 8002AD28 D8FFBD27 */  addiu      $sp, $sp, -0x28
/* 1B52C 8002AD2C 1000A527 */  addiu      $a1, $sp, 0x10
/* 1B530 8002AD30 1400A627 */  addiu      $a2, $sp, 0x14
/* 1B534 8002AD34 2400BFAF */  sw         $ra, 0x24($sp)
/* 1B538 8002AD38 2000B2AF */  sw         $s2, 0x20($sp)
/* 1B53C 8002AD3C 1C00B1AF */  sw         $s1, 0x1c($sp)
/* 1B540 8002AD40 F9AA000C */  jal        hashname_getfromflash_8002abe4
/* 1B544 8002AD44 1800B0AF */   sw        $s0, 0x18($sp)
/* 1B548 8002AD48 21184000 */  addu       $v1, $v0, $zero
/* 1B54C 8002AD4C FF007130 */  andi       $s1, $v1, 0xff
/* 1B550 8002AD50 1400B08F */  lw         $s0, 0x14($sp)
/* 1B554 8002AD54 39002012 */  beqz       $s1, .L8002AE3C
/* 1B558 8002AD58 FF070526 */   addiu     $a1, $s0, 0x7ff
/* 1B55C 8002AD5C 1000A48F */  lw         $a0, 0x10($sp)
/* 1B560 8002AD60 0300A104 */  bgez       $a1, .L8002AD70
/* 1B564 8002AD64 C32A0500 */   sra       $a1, $a1, 0xb
/* 1B568 8002AD68 FE0F0526 */  addiu      $a1, $s0, 0xffe
/* 1B56C 8002AD6C C32A0500 */  sra        $a1, $a1, 0xb
.L8002AD70:
/* 1B570 8002AD70 1380023C */  lui        $v0, %hi(D_8012ABE0)
/* 1B574 8002AD74 E0AB5224 */  addiu      $s2, $v0, %lo(D_8012ABE0)
/* 1B578 8002AD78 21304002 */  addu       $a2, $s2, $zero
/* 1B57C 8002AD7C 00FF0724 */  addiu      $a3, $zero, -0x100
/* 1B580 8002AD80 96AB000C */  jal        FUN_8002ae58
/* 1B584 8002AD84 24386700 */   and       $a3, $v1, $a3
/* 1B588 8002AD88 01000324 */  addiu      $v1, $zero, 1
/* 1B58C 8002AD8C 06002312 */  beq        $s1, $v1, .L8002ADA8
/* 1B590 8002AD90 02000224 */   addiu     $v0, $zero, 2
/* 1B594 8002AD94 13002212 */  beq        $s1, $v0, .L8002ADE4
/* 1B598 8002AD98 FCFF4226 */   addiu     $v0, $s2, -4
/* 1B59C 8002AD9C 1400A78F */  lw         $a3, 0x14($sp)
/* 1B5A0 8002ADA0 88AB0008 */  j          .L8002AE20
/* 1B5A4 8002ADA4 2A10F000 */   slt       $v0, $a3, $s0
.L8002ADA8:
/* 1B5A8 8002ADA8 1400A38F */  lw         $v1, 0x14($sp)
/* 1B5AC 8002ADAC FCFF4226 */  addiu      $v0, $s2, -4
/* 1B5B0 8002ADB0 21306200 */  addu       $a2, $v1, $v0
/* 1B5B4 8002ADB4 21386000 */  addu       $a3, $v1, $zero
/* 1B5B8 8002ADB8 0000C290 */  lbu        $v0, ($a2)
/* 1B5BC 8002ADBC 0100C390 */  lbu        $v1, 1($a2)
/* 1B5C0 8002ADC0 0200C490 */  lbu        $a0, 2($a2)
/* 1B5C4 8002ADC4 00160200 */  sll        $v0, $v0, 0x18
/* 1B5C8 8002ADC8 001C0300 */  sll        $v1, $v1, 0x10
/* 1B5CC 8002ADCC 25104300 */  or         $v0, $v0, $v1
/* 1B5D0 8002ADD0 00220400 */  sll        $a0, $a0, 8
/* 1B5D4 8002ADD4 0300C390 */  lbu        $v1, 3($a2)
/* 1B5D8 8002ADD8 25104400 */  or         $v0, $v0, $a0
/* 1B5DC 8002ADDC 87AB0008 */  j          .L8002AE1C
/* 1B5E0 8002ADE0 25804300 */   or        $s0, $v0, $v1
.L8002ADE4:
/* 1B5E4 8002ADE4 1400A38F */  lw         $v1, 0x14($sp)
/* 1B5E8 8002ADE8 00000000 */  nop
/* 1B5EC 8002ADEC 21306200 */  addu       $a2, $v1, $v0
/* 1B5F0 8002ADF0 21386000 */  addu       $a3, $v1, $zero
/* 1B5F4 8002ADF4 0100C590 */  lbu        $a1, 1($a2)
/* 1B5F8 8002ADF8 0000C490 */  lbu        $a0, ($a2)
/* 1B5FC 8002ADFC 0200C390 */  lbu        $v1, 2($a2)
/* 1B600 8002AE00 0300C290 */  lbu        $v0, 3($a2)
/* 1B604 8002AE04 002A0500 */  sll        $a1, $a1, 8
/* 1B608 8002AE08 25208500 */  or         $a0, $a0, $a1
/* 1B60C 8002AE0C 001C0300 */  sll        $v1, $v1, 0x10
/* 1B610 8002AE10 25208300 */  or         $a0, $a0, $v1
/* 1B614 8002AE14 00160200 */  sll        $v0, $v0, 0x18
/* 1B618 8002AE18 25808200 */  or         $s0, $a0, $v0
.L8002AE1C:
/* 1B61C 8002AE1C 2A10F000 */  slt        $v0, $a3, $s0
.L8002AE20:
/* 1B620 8002AE20 05004010 */  beqz       $v0, .L8002AE38
/* 1B624 8002AE24 80100700 */   sll       $v0, $a3, 2
/* 1B628 8002AE28 21104700 */  addu       $v0, $v0, $a3
/* 1B62C 8002AE2C 2A105000 */  slt        $v0, $v0, $s0
/* 1B630 8002AE30 03004010 */  beqz       $v0, .L8002AE40
/* 1B634 8002AE34 21100002 */   addu      $v0, $s0, $zero
.L8002AE38:
/* 1B638 8002AE38 21800000 */  addu       $s0, $zero, $zero
.L8002AE3C:
/* 1B63C 8002AE3C 21100002 */  addu       $v0, $s0, $zero
.L8002AE40:
/* 1B640 8002AE40 2400BF8F */  lw         $ra, 0x24($sp)
/* 1B644 8002AE44 2000B28F */  lw         $s2, 0x20($sp)
/* 1B648 8002AE48 1C00B18F */  lw         $s1, 0x1c($sp)
/* 1B64C 8002AE4C 1800B08F */  lw         $s0, 0x18($sp)
/* 1B650 8002AE50 0800E003 */  jr         $ra
/* 1B654 8002AE54 2800BD27 */   addiu     $sp, $sp, 0x28
