.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches


glabel func_800CBF00
/* BC700 800CBF00 E0FFBD27 */  addiu      $sp, $sp, -0x20
/* BC704 800CBF04 1000B0AF */  sw         $s0, 0x10($sp)
/* BC708 800CBF08 21808000 */  addu       $s0, $a0, $zero
/* BC70C 800CBF0C 1400B1AF */  sw         $s1, 0x14($sp)
/* BC710 800CBF10 2188A000 */  addu       $s1, $a1, $zero
/* BC714 800CBF14 1800B2AF */  sw         $s2, 0x18($sp)
/* BC718 800CBF18 2190C000 */  addu       $s2, $a2, $zero
/* BC71C 800CBF1C 21180000 */  addu       $v1, $zero, $zero
/* BC720 800CBF20 04000012 */  beqz       $s0, .L800CBF34
/* BC724 800CBF24 1C00BFAF */   sw        $ra, 0x1c($sp)
/* BC728 800CBF28 20000224 */  addiu      $v0, $zero, 0x20
/* BC72C 800CBF2C 07000216 */  bne        $s0, $v0, .L800CBF4C
/* BC730 800CBF30 00000000 */   nop
.L800CBF34:
/* BC734 800CBF34 21202002 */  addu       $a0, $s1, $zero
/* BC738 800CBF38 F8010524 */  addiu      $a1, $zero, 0x1f8
/* BC73C 800CBF3C 21304002 */  addu       $a2, $s2, $zero
/* BC740 800CBF40 3930030C */  jal        FUN_800cc0e4
/* BC744 800CBF44 08000724 */   addiu     $a3, $zero, 8
/* BC748 800CBF48 21184000 */  addu       $v1, $v0, $zero
.L800CBF4C:
/* BC74C 800CBF4C 0B006014 */  bnez       $v1, .L800CBF7C
/* BC750 800CBF50 10000224 */   addiu     $v0, $zero, 0x10
/* BC754 800CBF54 03000212 */  beq        $s0, $v0, .L800CBF64
/* BC758 800CBF58 20000224 */   addiu     $v0, $zero, 0x20
/* BC75C 800CBF5C 07000216 */  bne        $s0, $v0, .L800CBF7C
/* BC760 800CBF60 00000000 */   nop
.L800CBF64:
/* BC764 800CBF64 21202002 */  addu       $a0, $s1, $zero
/* BC768 800CBF68 F0010524 */  addiu      $a1, $zero, 0x1f0
/* BC76C 800CBF6C 21304002 */  addu       $a2, $s2, $zero
/* BC770 800CBF70 3930030C */  jal        FUN_800cc0e4
/* BC774 800CBF74 08000724 */   addiu     $a3, $zero, 8
/* BC778 800CBF78 21184000 */  addu       $v1, $v0, $zero
.L800CBF7C:
/* BC77C 800CBF7C 1C00BF8F */  lw         $ra, 0x1c($sp)
/* BC780 800CBF80 1800B28F */  lw         $s2, 0x18($sp)
/* BC784 800CBF84 1400B18F */  lw         $s1, 0x14($sp)
/* BC788 800CBF88 1000B08F */  lw         $s0, 0x10($sp)
/* BC78C 800CBF8C 21106000 */  addu       $v0, $v1, $zero
/* BC790 800CBF90 0800E003 */  jr         $ra
/* BC794 800CBF94 2000BD27 */   addiu     $sp, $sp, 0x20
