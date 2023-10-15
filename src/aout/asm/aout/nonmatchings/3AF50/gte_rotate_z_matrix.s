.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches


glabel gte_rotate_z_matrix
/* 3B570 8004AD70 C0FFBD27 */  addiu      $sp, $sp, -0x40
/* 3B574 8004AD74 3400B1AF */  sw         $s1, 0x34($sp)
/* 3B578 8004AD78 2188A000 */  addu       $s1, $a1, $zero
/* 3B57C 8004AD7C 0BB6023C */  lui        $v0, 0xb60b
/* 3B580 8004AD80 B7604234 */  ori        $v0, $v0, 0x60b7
/* 3B584 8004AD84 18002202 */  mult       $s1, $v0
/* 3B588 8004AD88 3800B2AF */  sw         $s2, 0x38($sp)
/* 3B58C 8004AD8C 21908000 */  addu       $s2, $a0, $zero
/* 3B590 8004AD90 C3171100 */  sra        $v0, $s1, 0x1f
/* 3B594 8004AD94 3C00BFAF */  sw         $ra, 0x3c($sp)
/* 3B598 8004AD98 3000B0AF */  sw         $s0, 0x30($sp)
/* 3B59C 8004AD9C 10300000 */  mfhi       $a2
/* 3B5A0 8004ADA0 2180D100 */  addu       $s0, $a2, $s1
/* 3B5A4 8004ADA4 03821000 */  sra        $s0, $s0, 8
/* 3B5A8 8004ADA8 23800202 */  subu       $s0, $s0, $v0
/* 3B5AC 8004ADAC 28F2000C */  jal        rcos
/* 3B5B0 8004ADB0 21200002 */   addu      $a0, $s0, $zero
/* 3B5B4 8004ADB4 21200002 */  addu       $a0, $s0, $zero
/* 3B5B8 8004ADB8 F4F1000C */  jal        rsin
/* 3B5BC 8004ADBC 21804000 */   addu      $s0, $v0, $zero
/* 3B5C0 8004ADC0 12002012 */  beqz       $s1, .L8004AE0C
/* 3B5C4 8004ADC4 21184000 */   addu      $v1, $v0, $zero
/* 3B5C8 8004ADC8 21204002 */  addu       $a0, $s2, $zero
/* 3B5CC 8004ADCC 23100300 */  negu       $v0, $v1
/* 3B5D0 8004ADD0 1200A2A7 */  sh         $v0, 0x12($sp)
/* 3B5D4 8004ADD4 00100224 */  addiu      $v0, $zero, 0x1000
/* 3B5D8 8004ADD8 1000A527 */  addiu      $a1, $sp, 0x10
/* 3B5DC 8004ADDC 1000B0A7 */  sh         $s0, 0x10($sp)
/* 3B5E0 8004ADE0 1400A0A7 */  sh         $zero, 0x14($sp)
/* 3B5E4 8004ADE4 1600A3A7 */  sh         $v1, 0x16($sp)
/* 3B5E8 8004ADE8 1800B0A7 */  sh         $s0, 0x18($sp)
/* 3B5EC 8004ADEC 1A00A0A7 */  sh         $zero, 0x1a($sp)
/* 3B5F0 8004ADF0 1C00A0A7 */  sh         $zero, 0x1c($sp)
/* 3B5F4 8004ADF4 1E00A0A7 */  sh         $zero, 0x1e($sp)
/* 3B5F8 8004ADF8 2000A2A7 */  sh         $v0, 0x20($sp)
/* 3B5FC 8004ADFC 2400A0AF */  sw         $zero, 0x24($sp)
/* 3B600 8004AE00 2800A0AF */  sw         $zero, 0x28($sp)
/* 3B604 8004AE04 E82C010C */  jal        MulMatrix
/* 3B608 8004AE08 2C00A0AF */   sw        $zero, 0x2c($sp)
.L8004AE0C:
/* 3B60C 8004AE0C 3C00BF8F */  lw         $ra, 0x3c($sp)
/* 3B610 8004AE10 3800B28F */  lw         $s2, 0x38($sp)
/* 3B614 8004AE14 3400B18F */  lw         $s1, 0x34($sp)
/* 3B618 8004AE18 3000B08F */  lw         $s0, 0x30($sp)
/* 3B61C 8004AE1C 0800E003 */  jr         $ra
/* 3B620 8004AE20 4000BD27 */   addiu     $sp, $sp, 0x40
/* 3B624 8004AE24 00000000 */  nop
/* 3B628 8004AE28 00000000 */  nop
/* 3B62C 8004AE2C 00000000 */  nop
