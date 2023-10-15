.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches


glabel FUN_8005ed18
/* 4F518 8005ED18 D0FFBD27 */  addiu      $sp, $sp, -0x30
/* 4F51C 8005ED1C 0F80053C */  lui        $a1, %hi(D_800F0028)
/* 4F520 8005ED20 2800A624 */  addiu      $a2, $a1, %lo(D_800F0028)
/* 4F524 8005ED24 2400B5AF */  sw         $s5, 0x24($sp)
/* 4F528 8005ED28 21A80000 */  addu       $s5, $zero, $zero
/* 4F52C 8005ED2C 2000B4AF */  sw         $s4, 0x20($sp)
/* 4F530 8005ED30 21A0A000 */  addu       $s4, $a1, $zero
/* 4F534 8005ED34 2800BFAF */  sw         $ra, 0x28($sp)
/* 4F538 8005ED38 1C00B3AF */  sw         $s3, 0x1c($sp)
/* 4F53C 8005ED3C 1800B2AF */  sw         $s2, 0x18($sp)
/* 4F540 8005ED40 1400B1AF */  sw         $s1, 0x14($sp)
/* 4F544 8005ED44 1000B0AF */  sw         $s0, 0x10($sp)
/* 4F548 8005ED48 0C00C280 */  lb         $v0, 0xc($a2)
/* 4F54C 8005ED4C 2000C380 */  lb         $v1, 0x20($a2)
/* 4F550 8005ED50 01004724 */  addiu      $a3, $v0, 1
/* 4F554 8005ED54 0800E228 */  slti       $v0, $a3, 8
/* 4F558 8005ED58 02004014 */  bnez       $v0, .L8005ED64
/* 4F55C 8005ED5C 2B880300 */   sltu      $s1, $zero, $v1
/* 4F560 8005ED60 07000724 */  addiu      $a3, $zero, 7
.L8005ED64:
/* 4F564 8005ED64 1580023C */  lui        $v0, %hi(D_8014BA92)
/* 4F568 8005ED68 92BA5384 */  lh         $s3, %lo(D_8014BA92)($v0)
/* 4F56C 8005ED6C 00000000 */  nop
/* 4F570 8005ED70 2A18F300 */  slt        $v1, $a3, $s3
/* 4F574 8005ED74 02006010 */  beqz       $v1, .L8005ED80
/* 4F578 8005ED78 00000000 */   nop
/* 4F57C 8005ED7C 2198E000 */  addu       $s3, $a3, $zero
.L8005ED80:
/* 4F580 8005ED80 8A00C590 */  lbu        $a1, 0x8a($a2)
/* 4F584 8005ED84 07000224 */  addiu      $v0, $zero, 7
/* 4F588 8005ED88 0300A210 */  beq        $a1, $v0, .L8005ED98
/* 4F58C 8005ED8C 00000000 */   nop
/* 4F590 8005ED90 0200A014 */  bnez       $a1, .L8005ED9C
/* 4F594 8005ED94 00000000 */   nop
.L8005ED98:
/* 4F598 8005ED98 01001524 */  addiu      $s5, $zero, 1
.L8005ED9C:
/* 4F59C 8005ED9C 4A008104 */  bgez       $a0, .L8005EEC8
/* 4F5A0 8005EDA0 00000000 */   nop
/* 4F5A4 8005EDA4 04002012 */  beqz       $s1, .L8005EDB8
/* 4F5A8 8005EDA8 28008226 */   addiu     $v0, $s4, 0x28
/* 4F5AC 8005EDAC 12005080 */  lb         $s0, 0x12($v0)
/* 4F5B0 8005EDB0 707B0108 */  j          .L8005EDC0
/* 4F5B4 8005EDB4 21100000 */   addu      $v0, $zero, $zero
.L8005EDB8:
/* 4F5B8 8005EDB8 1E005084 */  lh         $s0, 0x1e($v0)
/* 4F5BC 8005EDBC 21100000 */  addu       $v0, $zero, $zero
.L8005EDC0:
/* 4F5C0 8005EDC0 9CFF1224 */  addiu      $s2, $zero, -0x64
/* 4F5C4 8005EDC4 21204000 */  addu       $a0, $v0, $zero
.L8005EDC8:
/* 4F5C8 8005EDC8 21280002 */  addu       $a1, $s0, $zero
/* 4F5CC 8005EDCC 1654020C */  jal        FUN_80095058
/* 4F5D0 8005EDD0 21302002 */   addu      $a2, $s1, $zero
/* 4F5D4 8005EDD4 FCFF5214 */  bne        $v0, $s2, .L8005EDC8
/* 4F5D8 8005EDD8 21204000 */   addu      $a0, $v0, $zero
/* 4F5DC 8005EDDC 28008526 */  addiu      $a1, $s4, 0x28
/* 4F5E0 8005EDE0 2000A380 */  lb         $v1, 0x20($a1)
/* 4F5E4 8005EDE4 01000224 */  addiu      $v0, $zero, 1
/* 4F5E8 8005EDE8 37006210 */  beq        $v1, $v0, .L8005EEC8
/* 4F5EC 8005EDEC 00000000 */   nop
/* 4F5F0 8005EDF0 35006014 */  bnez       $v1, .L8005EEC8
/* 4F5F4 8005EDF4 00000000 */   nop
/* 4F5F8 8005EDF8 1800A280 */  lb         $v0, 0x18($a1)
/* 4F5FC 8005EDFC 00000000 */  nop
/* 4F600 8005EE00 07004010 */  beqz       $v0, .L8005EE20
/* 4F604 8005EE04 FFFF0224 */   addiu     $v0, $zero, -1
/* 4F608 8005EE08 0D00A380 */  lb         $v1, 0xd($a1)
/* 4F60C 8005EE0C 00000000 */  nop
/* 4F610 8005EE10 0D006210 */  beq        $v1, $v0, .L8005EE48
/* 4F614 8005EE14 0200622A */   slti      $v0, $s3, 2
/* 4F618 8005EE18 B27B0108 */  j          .L8005EEC8
/* 4F61C 8005EE1C 00000000 */   nop
.L8005EE20:
/* 4F620 8005EE20 0800A380 */  lb         $v1, 8($a1)
/* 4F624 8005EE24 0900A280 */  lb         $v0, 9($a1)
/* 4F628 8005EE28 0A00A480 */  lb         $a0, 0xa($a1)
/* 4F62C 8005EE2C 21186200 */  addu       $v1, $v1, $v0
/* 4F630 8005EE30 0B00A280 */  lb         $v0, 0xb($a1)
/* 4F634 8005EE34 23186400 */  subu       $v1, $v1, $a0
/* 4F638 8005EE38 23006214 */  bne        $v1, $v0, .L8005EEC8
/* 4F63C 8005EE3C 00000000 */   nop
/* 4F640 8005EE40 21006014 */  bnez       $v1, .L8005EEC8
/* 4F644 8005EE44 0200622A */   slti      $v0, $s3, 2
.L8005EE48:
/* 4F648 8005EE48 1F004014 */  bnez       $v0, .L8005EEC8
/* 4F64C 8005EE4C 21880000 */   addu      $s1, $zero, $zero
/* 4F650 8005EE50 0F80023C */  lui        $v0, %hi(D_800F0028)
/* 4F654 8005EE54 28004224 */  addiu      $v0, $v0, %lo(D_800F0028)
/* 4F658 8005EE58 80181500 */  sll        $v1, $s5, 2
/* 4F65C 8005EE5C 21187500 */  addu       $v1, $v1, $s5
/* 4F660 8005EE60 C0210300 */  sll        $a0, $v1, 7
/* 4F664 8005EE64 21186400 */  addu       $v1, $v1, $a0
/* 4F668 8005EE68 40190300 */  sll        $v1, $v1, 5
/* 4F66C 8005EE6C 23187500 */  subu       $v1, $v1, $s5
/* 4F670 8005EE70 80180300 */  sll        $v1, $v1, 2
/* 4F674 8005EE74 94004224 */  addiu      $v0, $v0, 0x94
/* 4F678 8005EE78 21806200 */  addu       $s0, $v1, $v0
/* 4F67C 8005EE7C A57B0108 */  j          .L8005EE94
/* 4F680 8005EE80 FFFF1224 */   addiu     $s2, $zero, -1
.L8005EE84:
/* 4F684 8005EE84 FF57020C */  jal        FUN_80095ffc
/* 4F688 8005EE88 01000624 */   addiu     $a2, $zero, 1
/* 4F68C 8005EE8C 08001026 */  addiu      $s0, $s0, 8
/* 4F690 8005EE90 01003126 */  addiu      $s1, $s1, 1
.L8005EE94:
/* 4F694 8005EE94 657A010C */  jal        FUN_8005e994
/* 4F698 8005EE98 02000424 */   addiu     $a0, $zero, 2
/* 4F69C 8005EE9C 2A102202 */  slt        $v0, $s1, $v0
/* 4F6A0 8005EEA0 07004010 */  beqz       $v0, .L8005EEC0
/* 4F6A4 8005EEA4 00000000 */   nop
/* 4F6A8 8005EEA8 00000486 */  lh         $a0, ($s0)
/* 4F6AC 8005EEAC 00000000 */  nop
/* 4F6B0 8005EEB0 03009210 */  beq        $a0, $s2, .L8005EEC0
/* 4F6B4 8005EEB4 0700222A */   slti      $v0, $s1, 7
/* 4F6B8 8005EEB8 F2FF4014 */  bnez       $v0, .L8005EE84
/* 4F6BC 8005EEBC 21280000 */   addu      $a1, $zero, $zero
.L8005EEC0:
/* 4F6C0 8005EEC0 4058020C */  jal        FUN_80096100
/* 4F6C4 8005EEC4 01000424 */   addiu     $a0, $zero, 1
.L8005EEC8:
/* 4F6C8 8005EEC8 2800BF8F */  lw         $ra, 0x28($sp)
/* 4F6CC 8005EECC 2400B58F */  lw         $s5, 0x24($sp)
/* 4F6D0 8005EED0 2000B48F */  lw         $s4, 0x20($sp)
/* 4F6D4 8005EED4 1C00B38F */  lw         $s3, 0x1c($sp)
/* 4F6D8 8005EED8 1800B28F */  lw         $s2, 0x18($sp)
/* 4F6DC 8005EEDC 1400B18F */  lw         $s1, 0x14($sp)
/* 4F6E0 8005EEE0 1000B08F */  lw         $s0, 0x10($sp)
/* 4F6E4 8005EEE4 0800E003 */  jr         $ra
/* 4F6E8 8005EEE8 3000BD27 */   addiu     $sp, $sp, 0x30
