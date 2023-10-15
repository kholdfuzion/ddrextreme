.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches


glabel func_800C55FC
/* B5DFC 800C55FC D0FFBD27 */  addiu      $sp, $sp, -0x30
/* B5E00 800C5600 2000B2AF */  sw         $s2, 0x20($sp)
/* B5E04 800C5604 21908000 */  addu       $s2, $a0, $zero
/* B5E08 800C5608 2080023C */  lui        $v0, %hi(D_801FB750)
/* B5E0C 800C560C 2400B3AF */  sw         $s3, 0x24($sp)
/* B5E10 800C5610 50B75324 */  addiu      $s3, $v0, %lo(D_801FB750)
/* B5E14 800C5614 C8BC6926 */  addiu      $t1, $s3, -0x4338
/* B5E18 800C5618 2800BFAF */  sw         $ra, 0x28($sp)
/* B5E1C 800C561C 1C00B1AF */  sw         $s1, 0x1c($sp)
/* B5E20 800C5620 1800B0AF */  sw         $s0, 0x18($sp)
/* B5E24 800C5624 1800288D */  lw         $t0, 0x18($t1)
/* B5E28 800C5628 80381200 */  sll        $a3, $s2, 2
/* B5E2C 800C562C 0710E800 */  srav       $v0, $t0, $a3
/* B5E30 800C5630 01004230 */  andi       $v0, $v0, 1
/* B5E34 800C5634 05004010 */  beqz       $v0, .L800C564C
/* B5E38 800C5638 FEFF0224 */   addiu     $v0, $zero, -2
/* B5E3C 800C563C 0800638E */  lw         $v1, 8($s3)
/* B5E40 800C5640 00000000 */  nop
/* B5E44 800C5644 03006214 */  bne        $v1, $v0, .L800C5654
/* B5E48 800C5648 80111200 */   sll       $v0, $s2, 6
.L800C564C:
/* B5E4C 800C564C F0150308 */  j          .L800C57C0
/* B5E50 800C5650 FFFF0224 */   addiu     $v0, $zero, -1
.L800C5654:
/* B5E54 800C5654 21105200 */  addu       $v0, $v0, $s2
/* B5E58 800C5658 40110200 */  sll        $v0, $v0, 5
/* B5E5C 800C565C 21105200 */  addu       $v0, $v0, $s2
/* B5E60 800C5660 80100200 */  sll        $v0, $v0, 2
/* B5E64 800C5664 E8BC6326 */  addiu      $v1, $s3, -0x4318
/* B5E68 800C5668 21884300 */  addu       $s1, $v0, $v1
/* B5E6C 800C566C 21802002 */  addu       $s0, $s1, $zero
/* B5E70 800C5670 21202002 */  addu       $a0, $s1, $zero
/* B5E74 800C5674 21280000 */  addu       $a1, $zero, $zero
/* B5E78 800C5678 00120624 */  addiu      $a2, $zero, 0x1200
/* B5E7C 800C567C 04000324 */  addiu      $v1, $zero, 4
/* B5E80 800C5680 0418E300 */  sllv       $v1, $v1, $a3
/* B5E84 800C5684 25180301 */  or         $v1, $t0, $v1
/* B5E88 800C5688 08000224 */  addiu      $v0, $zero, 8
/* B5E8C 800C568C 0410E200 */  sllv       $v0, $v0, $a3
/* B5E90 800C5690 27100200 */  nor        $v0, $zero, $v0
/* B5E94 800C5694 24186200 */  and        $v1, $v1, $v0
/* B5E98 800C5698 F6A2000C */  jal        memset
/* B5E9C 800C569C 180023AD */   sw        $v1, 0x18($t1)
/* B5EA0 800C56A0 00122426 */  addiu      $a0, $s1, 0x1200
/* B5EA4 800C56A4 FF000524 */  addiu      $a1, $zero, 0xff
/* B5EA8 800C56A8 F6A2000C */  jal        memset
/* B5EAC 800C56AC 000E0624 */   addiu     $a2, $zero, 0xe00
/* B5EB0 800C56B0 80002326 */  addiu      $v1, $s1, 0x80
/* B5EB4 800C56B4 21300000 */  addu       $a2, $zero, $zero
/* B5EB8 800C56B8 A0000524 */  addiu      $a1, $zero, 0xa0
/* B5EBC 800C56BC FFFF0434 */  ori        $a0, $zero, 0xffff
/* B5EC0 800C56C0 4D000224 */  addiu      $v0, $zero, 0x4d
/* B5EC4 800C56C4 000022A2 */  sb         $v0, ($s1)
/* B5EC8 800C56C8 43000224 */  addiu      $v0, $zero, 0x43
/* B5ECC 800C56CC 010022A2 */  sb         $v0, 1($s1)
.L800C56D0:
/* B5ED0 800C56D0 0100C624 */  addiu      $a2, $a2, 1
/* B5ED4 800C56D4 000065AC */  sw         $a1, ($v1)
/* B5ED8 800C56D8 080064A4 */  sh         $a0, 8($v1)
/* B5EDC 800C56DC 0F00C228 */  slti       $v0, $a2, 0xf
/* B5EE0 800C56E0 FBFF4014 */  bnez       $v0, .L800C56D0
/* B5EE4 800C56E4 80006324 */   addiu     $v1, $v1, 0x80
/* B5EE8 800C56E8 00080326 */  addiu      $v1, $s0, 0x800
/* B5EEC 800C56EC 21300000 */  addu       $a2, $zero, $zero
/* B5EF0 800C56F0 FFFF0524 */  addiu      $a1, $zero, -1
/* B5EF4 800C56F4 FFFF0434 */  ori        $a0, $zero, 0xffff
.L800C56F8:
/* B5EF8 800C56F8 0100C624 */  addiu      $a2, $a2, 1
/* B5EFC 800C56FC 000065AC */  sw         $a1, ($v1)
/* B5F00 800C5700 080064A4 */  sh         $a0, 8($v1)
/* B5F04 800C5704 1400C228 */  slti       $v0, $a2, 0x14
/* B5F08 800C5708 FBFF4014 */  bnez       $v0, .L800C56F8
/* B5F0C 800C570C 80006324 */   addiu     $v1, $v1, 0x80
/* B5F10 800C5710 21300000 */  addu       $a2, $zero, $zero
/* B5F14 800C5714 2138C000 */  addu       $a3, $a2, $zero
.L800C5718:
/* B5F18 800C5718 21280002 */  addu       $a1, $s0, $zero
/* B5F1C 800C571C 1000A7AF */  sw         $a3, 0x10($sp)
/* B5F20 800C5720 21200000 */  addu       $a0, $zero, $zero
.L800C5724:
/* B5F24 800C5724 0000A28C */  lw         $v0, ($a1)
/* B5F28 800C5728 0400A524 */  addiu      $a1, $a1, 4
/* B5F2C 800C572C 1000A38F */  lw         $v1, 0x10($sp)
/* B5F30 800C5730 01008424 */  addiu      $a0, $a0, 1
/* B5F34 800C5734 26186200 */  xor        $v1, $v1, $v0
/* B5F38 800C5738 2000822C */  sltiu      $v0, $a0, 0x20
/* B5F3C 800C573C F9FF4014 */  bnez       $v0, .L800C5724
/* B5F40 800C5740 1000A3AF */   sw        $v1, 0x10($sp)
/* B5F44 800C5744 1000A327 */  addiu      $v1, $sp, 0x10
/* B5F48 800C5748 1000A493 */  lbu        $a0, 0x10($sp)
/* B5F4C 800C574C 01006290 */  lbu        $v0, 1($v1)
/* B5F50 800C5750 0100C624 */  addiu      $a2, $a2, 1
/* B5F54 800C5754 26208200 */  xor        $a0, $a0, $v0
/* B5F58 800C5758 02006290 */  lbu        $v0, 2($v1)
/* B5F5C 800C575C 03006390 */  lbu        $v1, 3($v1)
/* B5F60 800C5760 26104400 */  xor        $v0, $v0, $a0
/* B5F64 800C5764 26186200 */  xor        $v1, $v1, $v0
/* B5F68 800C5768 7F0003A2 */  sb         $v1, 0x7f($s0)
/* B5F6C 800C576C 2400C228 */  slti       $v0, $a2, 0x24
/* B5F70 800C5770 E9FF4014 */  bnez       $v0, .L800C5718
/* B5F74 800C5774 80001026 */   addiu     $s0, $s0, 0x80
/* B5F78 800C5778 01000324 */  addiu      $v1, $zero, 1
/* B5F7C 800C577C 3F000624 */  addiu      $a2, $zero, 0x3f
/* B5F80 800C5780 21102602 */  addu       $v0, $s1, $a2
.L800C5784:
/* B5F84 800C5784 402043A0 */  sb         $v1, 0x2040($v0)
/* B5F88 800C5788 FFFFC624 */  addiu      $a2, $a2, -1
/* B5F8C 800C578C FDFFC104 */  bgez       $a2, .L800C5784
/* B5F90 800C5790 FFFF4224 */   addiu     $v0, $v0, -1
/* B5F94 800C5794 FFFF1024 */  addiu      $s0, $zero, -1
/* B5F98 800C5798 2A1C030C */  jal        FUN_800c70a8
/* B5F9C 800C579C 21204002 */   addu      $a0, $s2, $zero
/* B5FA0 800C57A0 06004010 */  beqz       $v0, .L800C57BC
/* B5FA4 800C57A4 21206002 */   addu      $a0, $s3, $zero
/* B5FA8 800C57A8 0C0072AE */  sw         $s2, 0xc($s3)
/* B5FAC 800C57AC 04000524 */  addiu      $a1, $zero, 4
/* B5FB0 800C57B0 1F1B030C */  jal        FUN_800c6c7c
/* B5FB4 800C57B4 21300000 */   addu      $a2, $zero, $zero
/* B5FB8 800C57B8 21804000 */  addu       $s0, $v0, $zero
.L800C57BC:
/* B5FBC 800C57BC 21100002 */  addu       $v0, $s0, $zero
.L800C57C0:
/* B5FC0 800C57C0 2800BF8F */  lw         $ra, 0x28($sp)
/* B5FC4 800C57C4 2400B38F */  lw         $s3, 0x24($sp)
/* B5FC8 800C57C8 2000B28F */  lw         $s2, 0x20($sp)
/* B5FCC 800C57CC 1C00B18F */  lw         $s1, 0x1c($sp)
/* B5FD0 800C57D0 1800B08F */  lw         $s0, 0x18($sp)
/* B5FD4 800C57D4 0800E003 */  jr         $ra
/* B5FD8 800C57D8 3000BD27 */   addiu     $sp, $sp, 0x30
