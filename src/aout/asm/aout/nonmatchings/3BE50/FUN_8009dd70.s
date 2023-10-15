.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches


glabel FUN_8009dd70
/* 8E570 8009DD70 C8FFBD27 */  addiu      $sp, $sp, -0x38
/* 8E574 8009DD74 2C00B3AF */  sw         $s3, 0x2c($sp)
/* 8E578 8009DD78 21980000 */  addu       $s3, $zero, $zero
/* 8E57C 8009DD7C 2400B1AF */  sw         $s1, 0x24($sp)
/* 8E580 8009DD80 21888000 */  addu       $s1, $a0, $zero
/* 8E584 8009DD84 21200000 */  addu       $a0, $zero, $zero
/* 8E588 8009DD88 0F000524 */  addiu      $a1, $zero, 0xf
/* 8E58C 8009DD8C 3400BFAF */  sw         $ra, 0x34($sp)
/* 8E590 8009DD90 3000B4AF */  sw         $s4, 0x30($sp)
/* 8E594 8009DD94 2800B2AF */  sw         $s2, 0x28($sp)
/* 8E598 8009DD98 2000B0AF */  sw         $s0, 0x20($sp)
/* 8E59C 8009DD9C FA56010C */  jal        FUN_80055be8
/* 8E5A0 8009DDA0 080020AE */   sw        $zero, 8($s1)
/* 8E5A4 8009DDA4 21200000 */  addu       $a0, $zero, $zero
/* 8E5A8 8009DDA8 946B010C */  jal        FUN_8005ae50
/* 8E5AC 8009DDAC FFFF0524 */   addiu     $a1, $zero, -1
/* 8E5B0 8009DDB0 21200000 */  addu       $a0, $zero, $zero
/* 8E5B4 8009DDB4 376C010C */  jal        FUN_8005b0dc
/* 8E5B8 8009DDB8 FC000524 */   addiu     $a1, $zero, 0xfc
/* 8E5BC 8009DDBC 0F80053C */  lui        $a1, %hi(D_800EFFA8)
/* 8E5C0 8009DDC0 A8FFA224 */  addiu      $v0, $a1, %lo(D_800EFFA8)
/* 8E5C4 8009DDC4 7400448C */  lw         $a0, 0x74($v0)
/* 8E5C8 8009DDC8 0000238E */  lw         $v1, ($s1)
/* 8E5CC 8009DDCC 0400228E */  lw         $v0, 4($s1)
/* 8E5D0 8009DDD0 23808300 */  subu       $s0, $a0, $v1
/* 8E5D4 8009DDD4 23908200 */  subu       $s2, $a0, $v0
/* 8E5D8 8009DDD8 01000224 */  addiu      $v0, $zero, 1
/* 8E5DC 8009DDDC 03000212 */  beq        $s0, $v0, .L8009DDEC
/* 8E5E0 8009DDE0 21A0A000 */   addu      $s4, $a1, $zero
/* 8E5E4 8009DDE4 03004216 */  bne        $s2, $v0, .L8009DDF4
/* 8E5E8 8009DDE8 00000000 */   nop
.L8009DDEC:
/* 8E5EC 8009DDEC 12CB020C */  jal        FUN_800b2c48
/* 8E5F0 8009DDF0 14000424 */   addiu     $a0, $zero, 0x14
.L8009DDF4:
/* 8E5F4 8009DDF4 41000006 */  bltz       $s0, .L8009DEFC
/* 8E5F8 8009DDF8 0300022A */   slti      $v0, $s0, 3
/* 8E5FC 8009DDFC 3F004014 */  bnez       $v0, .L8009DEFC
/* 8E600 8009DE00 1700022A */   slti      $v0, $s0, 0x17
/* 8E604 8009DE04 10004010 */  beqz       $v0, .L8009DE48
/* 8E608 8009DE08 08002426 */   addiu     $a0, $s1, 8
/* 8E60C 8009DE0C 21280000 */  addu       $a1, $zero, $zero
/* 8E610 8009DE10 21300000 */  addu       $a2, $zero, $zero
/* 8E614 8009DE14 01000724 */  addiu      $a3, $zero, 1
/* 8E618 8009DE18 7CFC0224 */  addiu      $v0, $zero, -0x384
/* 8E61C 8009DE1C 01000324 */  addiu      $v1, $zero, 1
/* 8E620 8009DE20 1000A2AF */  sw         $v0, 0x10($sp)
/* 8E624 8009DE24 1400A3AF */  sw         $v1, 0x14($sp)
/* 8E628 8009DE28 1800A0AF */  sw         $zero, 0x18($sp)
/* 8E62C 8009DE2C D2F9010C */  jal        FUN_8007e748
/* 8E630 8009DE30 1C00A3AF */   sw        $v1, 0x1c($sp)
/* 8E634 8009DE34 21202002 */  addu       $a0, $s1, $zero
/* 8E638 8009DE38 21280000 */  addu       $a1, $zero, $zero
/* 8E63C 8009DE3C 21304000 */  addu       $a2, $v0, $zero
/* 8E640 8009DE40 BB770208 */  j          .L8009DEEC
/* 8E644 8009DE44 FEFF0726 */   addiu     $a3, $s0, -2
.L8009DE48:
/* 8E648 8009DE48 0400238E */  lw         $v1, 4($s1)
/* 8E64C 8009DE4C FFFF0224 */  addiu      $v0, $zero, -1
/* 8E650 8009DE50 11006214 */  bne        $v1, $v0, .L8009DE98
/* 8E654 8009DE54 1500422A */   slti      $v0, $s2, 0x15
/* 8E658 8009DE58 08002426 */  addiu      $a0, $s1, 8
/* 8E65C 8009DE5C 21280000 */  addu       $a1, $zero, $zero
/* 8E660 8009DE60 21300000 */  addu       $a2, $zero, $zero
/* 8E664 8009DE64 01000724 */  addiu      $a3, $zero, 1
/* 8E668 8009DE68 7CFC0224 */  addiu      $v0, $zero, -0x384
/* 8E66C 8009DE6C 01000324 */  addiu      $v1, $zero, 1
/* 8E670 8009DE70 1000A2AF */  sw         $v0, 0x10($sp)
/* 8E674 8009DE74 1400A3AF */  sw         $v1, 0x14($sp)
/* 8E678 8009DE78 1800A0AF */  sw         $zero, 0x18($sp)
/* 8E67C 8009DE7C D2F9010C */  jal        FUN_8007e748
/* 8E680 8009DE80 1C00A3AF */   sw        $v1, 0x1c($sp)
/* 8E684 8009DE84 21202002 */  addu       $a0, $s1, $zero
/* 8E688 8009DE88 21280000 */  addu       $a1, $zero, $zero
/* 8E68C 8009DE8C 21304000 */  addu       $a2, $v0, $zero
/* 8E690 8009DE90 BB770208 */  j          .L8009DEEC
/* 8E694 8009DE94 14000724 */   addiu     $a3, $zero, 0x14
.L8009DE98:
/* 8E698 8009DE98 06004014 */  bnez       $v0, .L8009DEB4
/* 8E69C 8009DE9C 08002426 */   addiu     $a0, $s1, 8
/* 8E6A0 8009DEA0 1700422A */  slti       $v0, $s2, 0x17
/* 8E6A4 8009DEA4 16004014 */  bnez       $v0, .L8009DF00
/* 8E6A8 8009DEA8 21200000 */   addu      $a0, $zero, $zero
/* 8E6AC 8009DEAC F5770208 */  j          .L8009DFD4
/* 8E6B0 8009DEB0 04000224 */   addiu     $v0, $zero, 4
.L8009DEB4:
/* 8E6B4 8009DEB4 21280000 */  addu       $a1, $zero, $zero
/* 8E6B8 8009DEB8 21300000 */  addu       $a2, $zero, $zero
/* 8E6BC 8009DEBC 01000724 */  addiu      $a3, $zero, 1
/* 8E6C0 8009DEC0 7CFC0224 */  addiu      $v0, $zero, -0x384
/* 8E6C4 8009DEC4 01000324 */  addiu      $v1, $zero, 1
/* 8E6C8 8009DEC8 1000A2AF */  sw         $v0, 0x10($sp)
/* 8E6CC 8009DECC 1400A3AF */  sw         $v1, 0x14($sp)
/* 8E6D0 8009DED0 1800A0AF */  sw         $zero, 0x18($sp)
/* 8E6D4 8009DED4 D2F9010C */  jal        FUN_8007e748
/* 8E6D8 8009DED8 1C00A3AF */   sw        $v1, 0x1c($sp)
/* 8E6DC 8009DEDC 21202002 */  addu       $a0, $s1, $zero
/* 8E6E0 8009DEE0 21280000 */  addu       $a1, $zero, $zero
/* 8E6E4 8009DEE4 21304000 */  addu       $a2, $v0, $zero
/* 8E6E8 8009DEE8 14004726 */  addiu      $a3, $s2, 0x14
.L8009DEEC:
/* 8E6EC 8009DEEC 14000224 */  addiu      $v0, $zero, 0x14
/* 8E6F0 8009DEF0 5476020C */  jal        FUN_8009d950
/* 8E6F4 8009DEF4 1000A2AF */   sw        $v0, 0x10($sp)
/* 8E6F8 8009DEF8 21984000 */  addu       $s3, $v0, $zero
.L8009DEFC:
/* 8E6FC 8009DEFC 21200000 */  addu       $a0, $zero, $zero
.L8009DF00:
/* 8E700 8009DF00 1D6B010C */  jal        FUN_8005ac74
/* 8E704 8009DF04 21286002 */   addu      $a1, $s3, $zero
/* 8E708 8009DF08 9157010C */  jal        FUN_80055e44
/* 8E70C 8009DF0C 21200000 */   addu      $a0, $zero, $zero
/* 8E710 8009DF10 A8FF8526 */  addiu      $a1, $s4, -0x58
/* 8E714 8009DF14 7800A38C */  lw         $v1, 0x78($a1)
/* 8E718 8009DF18 00000000 */  nop
/* 8E71C 8009DF1C 0A006228 */  slti       $v0, $v1, 0xa
/* 8E720 8009DF20 2C004014 */  bnez       $v0, .L8009DFD4
/* 8E724 8009DF24 21100000 */   addu      $v0, $zero, $zero
/* 8E728 8009DF28 7400A48C */  lw         $a0, 0x74($a1)
/* 8E72C 8009DF2C 0000228E */  lw         $v0, ($s1)
/* 8E730 8009DF30 00000000 */  nop
/* 8E734 8009DF34 23108200 */  subu       $v0, $a0, $v0
/* 8E738 8009DF38 17004228 */  slti       $v0, $v0, 0x17
/* 8E73C 8009DF3C 25004014 */  bnez       $v0, .L8009DFD4
/* 8E740 8009DF40 21100000 */   addu      $v0, $zero, $zero
/* 8E744 8009DF44 85030224 */  addiu      $v0, $zero, 0x385
/* 8E748 8009DF48 08006214 */  bne        $v1, $v0, .L8009DF6C
/* 8E74C 8009DF4C FFFF0224 */   addiu     $v0, $zero, -1
/* 8E750 8009DF50 0400238E */  lw         $v1, 4($s1)
/* 8E754 8009DF54 00000000 */  nop
/* 8E758 8009DF58 1E006214 */  bne        $v1, $v0, .L8009DFD4
/* 8E75C 8009DF5C 01000224 */   addiu     $v0, $zero, 1
/* 8E760 8009DF60 84030224 */  addiu      $v0, $zero, 0x384
/* 8E764 8009DF64 7800A2AC */  sw         $v0, 0x78($a1)
/* 8E768 8009DF68 040024AE */  sw         $a0, 4($s1)
.L8009DF6C:
/* 8E76C 8009DF6C 0400238E */  lw         $v1, 4($s1)
/* 8E770 8009DF70 FFFF0224 */  addiu      $v0, $zero, -1
/* 8E774 8009DF74 17006214 */  bne        $v1, $v0, .L8009DFD4
/* 8E778 8009DF78 01000224 */   addiu     $v0, $zero, 1
/* 8E77C 8009DF7C 21800000 */  addu       $s0, $zero, $zero
/* 8E780 8009DF80 2190A000 */  addu       $s2, $a1, $zero
/* 8E784 8009DF84 84031324 */  addiu      $s3, $zero, 0x384
.L8009DF88:
/* 8E788 8009DF88 23F8010C */  jal        FUN_8007e08c
/* 8E78C 8009DF8C 21200002 */   addu      $a0, $s0, $zero
/* 8E790 8009DF90 09004014 */  bnez       $v0, .L8009DFB8
/* 8E794 8009DF94 00000000 */   nop
/* 8E798 8009DF98 40F8010C */  jal        FUN_8007e100
/* 8E79C 8009DF9C 21200002 */   addu      $a0, $s0, $zero
/* 8E7A0 8009DFA0 05004014 */  bnez       $v0, .L8009DFB8
/* 8E7A4 8009DFA4 00000000 */   nop
/* 8E7A8 8009DFA8 5DF8010C */  jal        FUN_8007e174
/* 8E7AC 8009DFAC 21200002 */   addu      $a0, $s0, $zero
/* 8E7B0 8009DFB0 04004010 */  beqz       $v0, .L8009DFC4
/* 8E7B4 8009DFB4 00000000 */   nop
.L8009DFB8:
/* 8E7B8 8009DFB8 7400428E */  lw         $v0, 0x74($s2)
/* 8E7BC 8009DFBC 780053AE */  sw         $s3, 0x78($s2)
/* 8E7C0 8009DFC0 040022AE */  sw         $v0, 4($s1)
.L8009DFC4:
/* 8E7C4 8009DFC4 01001026 */  addiu      $s0, $s0, 1
/* 8E7C8 8009DFC8 0200022A */  slti       $v0, $s0, 2
/* 8E7CC 8009DFCC EEFF4014 */  bnez       $v0, .L8009DF88
/* 8E7D0 8009DFD0 01000224 */   addiu     $v0, $zero, 1
.L8009DFD4:
/* 8E7D4 8009DFD4 3400BF8F */  lw         $ra, 0x34($sp)
/* 8E7D8 8009DFD8 3000B48F */  lw         $s4, 0x30($sp)
/* 8E7DC 8009DFDC 2C00B38F */  lw         $s3, 0x2c($sp)
/* 8E7E0 8009DFE0 2800B28F */  lw         $s2, 0x28($sp)
/* 8E7E4 8009DFE4 2400B18F */  lw         $s1, 0x24($sp)
/* 8E7E8 8009DFE8 2000B08F */  lw         $s0, 0x20($sp)
/* 8E7EC 8009DFEC 0800E003 */  jr         $ra
/* 8E7F0 8009DFF0 3800BD27 */   addiu     $sp, $sp, 0x38
