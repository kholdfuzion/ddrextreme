.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches


glabel FUN_800c6e14
/* B7614 800C6E14 D0FFBD27 */  addiu      $sp, $sp, -0x30
/* B7618 800C6E18 1800B2AF */  sw         $s2, 0x18($sp)
/* B761C 800C6E1C 21908000 */  addu       $s2, $a0, $zero
/* B7620 800C6E20 1C00B3AF */  sw         $s3, 0x1c($sp)
/* B7624 800C6E24 2198A000 */  addu       $s3, $a1, $zero
/* B7628 800C6E28 2000B4AF */  sw         $s4, 0x20($sp)
/* B762C 800C6E2C 21A0C000 */  addu       $s4, $a2, $zero
/* B7630 800C6E30 2400B5AF */  sw         $s5, 0x24($sp)
/* B7634 800C6E34 21A8E000 */  addu       $s5, $a3, $zero
/* B7638 800C6E38 1400B1AF */  sw         $s1, 0x14($sp)
/* B763C 800C6E3C 21886002 */  addu       $s1, $s3, $zero
/* B7640 800C6E40 80111200 */  sll        $v0, $s2, 6
/* B7644 800C6E44 21105200 */  addu       $v0, $v0, $s2
/* B7648 800C6E48 40110200 */  sll        $v0, $v0, 5
/* B764C 800C6E4C 21105200 */  addu       $v0, $v0, $s2
/* B7650 800C6E50 80100200 */  sll        $v0, $v0, 2
/* B7654 800C6E54 1F80033C */  lui        $v1, %hi(D_801F7438)
/* B7658 800C6E58 38746324 */  addiu      $v1, $v1, %lo(D_801F7438)
/* B765C 800C6E5C 1000B0AF */  sw         $s0, 0x10($sp)
/* B7660 800C6E60 2800BFAF */  sw         $ra, 0x28($sp)
/* B7664 800C6E64 2A1C030C */  jal        FUN_800c70a8
/* B7668 800C6E68 21804300 */   addu      $s0, $v0, $v1
/* B766C 800C6E6C 10004010 */  beqz       $v0, .L800C6EB0
/* B7670 800C6E70 00080426 */   addiu     $a0, $s0, 0x800
/* B7674 800C6E74 21180000 */  addu       $v1, $zero, $zero
.L800C6E78:
/* B7678 800C6E78 0000828C */  lw         $v0, ($a0)
/* B767C 800C6E7C 00000000 */  nop
/* B7680 800C6E80 07005314 */  bne        $v0, $s3, .L800C6EA0
/* B7684 800C6E84 21107000 */   addu      $v0, $v1, $s0
/* B7688 800C6E88 10204290 */  lbu        $v0, 0x2010($v0)
/* B768C 800C6E8C 00000000 */  nop
/* B7690 800C6E90 03004014 */  bnez       $v0, .L800C6EA0
/* B7694 800C6E94 00000000 */   nop
/* B7698 800C6E98 AC1B0308 */  j          .L800C6EB0
/* B769C 800C6E9C 24007124 */   addiu     $s1, $v1, 0x24
.L800C6EA0:
/* B76A0 800C6EA0 01006324 */  addiu      $v1, $v1, 1
/* B76A4 800C6EA4 14006228 */  slti       $v0, $v1, 0x14
/* B76A8 800C6EA8 F3FF4014 */  bnez       $v0, .L800C6E78
/* B76AC 800C6EAC 80008424 */   addiu     $a0, $a0, 0x80
.L800C6EB0:
/* B76B0 800C6EB0 21204002 */  addu       $a0, $s2, $zero
/* B76B4 800C6EB4 21282002 */  addu       $a1, $s1, $zero
/* B76B8 800C6EB8 21308002 */  addu       $a2, $s4, $zero
/* B76BC 800C6EBC F624030C */  jal        FUN_800c93d8
/* B76C0 800C6EC0 2138A002 */   addu      $a3, $s5, $zero
/* B76C4 800C6EC4 2800BF8F */  lw         $ra, 0x28($sp)
/* B76C8 800C6EC8 2400B58F */  lw         $s5, 0x24($sp)
/* B76CC 800C6ECC 2000B48F */  lw         $s4, 0x20($sp)
/* B76D0 800C6ED0 1C00B38F */  lw         $s3, 0x1c($sp)
/* B76D4 800C6ED4 1800B28F */  lw         $s2, 0x18($sp)
/* B76D8 800C6ED8 1400B18F */  lw         $s1, 0x14($sp)
/* B76DC 800C6EDC 1000B08F */  lw         $s0, 0x10($sp)
/* B76E0 800C6EE0 0800E003 */  jr         $ra
/* B76E4 800C6EE4 3000BD27 */   addiu     $sp, $sp, 0x30
