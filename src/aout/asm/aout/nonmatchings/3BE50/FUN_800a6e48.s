.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches


glabel FUN_800a6e48
/* 97648 800A6E48 D8FFBD27 */  addiu      $sp, $sp, -0x28
/* 9764C 800A6E4C 21300000 */  addu       $a2, $zero, $zero
/* 97650 800A6E50 1800B2AF */  sw         $s2, 0x18($sp)
/* 97654 800A6E54 21900000 */  addu       $s2, $zero, $zero
/* 97658 800A6E58 2000BFAF */  sw         $ra, 0x20($sp)
/* 9765C 800A6E5C 1C00B3AF */  sw         $s3, 0x1c($sp)
/* 97660 800A6E60 1400B1AF */  sw         $s1, 0x14($sp)
/* 97664 800A6E64 1000B0AF */  sw         $s0, 0x10($sp)
/* 97668 800A6E68 0000888C */  lw         $t0, ($a0)
/* 9766C 800A6E6C 04008324 */  addiu      $v1, $a0, 4
/* 97670 800A6E70 80100800 */  sll        $v0, $t0, 2
/* 97674 800A6E74 FFFF0725 */  addiu      $a3, $t0, -1
/* 97678 800A6E78 1100E018 */  blez       $a3, .L800A6EC0
/* 9767C 800A6E7C 21486200 */   addu      $t1, $v1, $v0
/* 97680 800A6E80 0800828C */  lw         $v0, 8($a0)
/* 97684 800A6E84 00000000 */  nop
/* 97688 800A6E88 2A10A200 */  slt        $v0, $a1, $v0
/* 9768C 800A6E8C 0D004014 */  bnez       $v0, .L800A6EC4
/* 97690 800A6E90 2A10C800 */   slt       $v0, $a2, $t0
/* 97694 800A6E94 08008324 */  addiu      $v1, $a0, 8
/* 97698 800A6E98 0100C624 */  addiu      $a2, $a2, 1
.L800A6E9C:
/* 9769C 800A6E9C 2A10C700 */  slt        $v0, $a2, $a3
/* 976A0 800A6EA0 07004010 */  beqz       $v0, .L800A6EC0
/* 976A4 800A6EA4 04006324 */   addiu     $v1, $v1, 4
/* 976A8 800A6EA8 0000628C */  lw         $v0, ($v1)
/* 976AC 800A6EAC 00000000 */  nop
/* 976B0 800A6EB0 2A10A200 */  slt        $v0, $a1, $v0
/* 976B4 800A6EB4 F9FF4010 */  beqz       $v0, .L800A6E9C
/* 976B8 800A6EB8 0100C624 */   addiu     $a2, $a2, 1
/* 976BC 800A6EBC FFFFC624 */  addiu      $a2, $a2, -1
.L800A6EC0:
/* 976C0 800A6EC0 2A10C800 */  slt        $v0, $a2, $t0
.L800A6EC4:
/* 976C4 800A6EC4 03004014 */  bnez       $v0, .L800A6ED4
/* 976C8 800A6EC8 21880000 */   addu      $s1, $zero, $zero
/* 976CC 800A6ECC FFFF0625 */  addiu      $a2, $t0, -1
/* 976D0 800A6ED0 01001224 */  addiu      $s2, $zero, 1
.L800A6ED4:
/* 976D4 800A6ED4 21982601 */  addu       $s3, $t1, $a2
/* 976D8 800A6ED8 0180023C */  lui        $v0, %hi(D_80016BBC)
/* 976DC 800A6EDC BC6B5024 */  addiu      $s0, $v0, %lo(D_80016BBC)
.L800A6EE0:
/* 976E0 800A6EE0 0C004016 */  bnez       $s2, .L800A6F14
/* 976E4 800A6EE4 00000000 */   nop
/* 976E8 800A6EE8 00006292 */  lbu        $v0, ($s3)
/* 976EC 800A6EEC 00000000 */  nop
/* 976F0 800A6EF0 07102202 */  srav       $v0, $v0, $s1
/* 976F4 800A6EF4 01004230 */  andi       $v0, $v0, 1
/* 976F8 800A6EF8 06004010 */  beqz       $v0, .L800A6F14
/* 976FC 800A6EFC 00000000 */   nop
/* 97700 800A6F00 0000048E */  lw         $a0, ($s0)
/* 97704 800A6F04 949A020C */  jal        FUN_800a6a50
/* 97708 800A6F08 04001026 */   addiu     $s0, $s0, 4
/* 9770C 800A6F0C C99B0208 */  j          .L800A6F24
/* 97710 800A6F10 01003126 */   addiu     $s1, $s1, 1
.L800A6F14:
/* 97714 800A6F14 0000048E */  lw         $a0, ($s0)
/* 97718 800A6F18 B09A020C */  jal        FUN_800a6ac0
/* 9771C 800A6F1C 04001026 */   addiu     $s0, $s0, 4
/* 97720 800A6F20 01003126 */  addiu      $s1, $s1, 1
.L800A6F24:
/* 97724 800A6F24 0500222A */  slti       $v0, $s1, 5
/* 97728 800A6F28 EDFF4014 */  bnez       $v0, .L800A6EE0
/* 9772C 800A6F2C 00000000 */   nop
/* 97730 800A6F30 2000BF8F */  lw         $ra, 0x20($sp)
/* 97734 800A6F34 1C00B38F */  lw         $s3, 0x1c($sp)
/* 97738 800A6F38 1800B28F */  lw         $s2, 0x18($sp)
/* 9773C 800A6F3C 1400B18F */  lw         $s1, 0x14($sp)
/* 97740 800A6F40 1000B08F */  lw         $s0, 0x10($sp)
/* 97744 800A6F44 0800E003 */  jr         $ra
/* 97748 800A6F48 2800BD27 */   addiu     $sp, $sp, 0x28
