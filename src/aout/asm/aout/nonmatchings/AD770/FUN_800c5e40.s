.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches


glabel FUN_800c5e40
/* B6640 800C5E40 D8FFBD27 */  addiu      $sp, $sp, -0x28
/* B6644 800C5E44 1400B1AF */  sw         $s1, 0x14($sp)
/* B6648 800C5E48 21880000 */  addu       $s1, $zero, $zero
/* B664C 800C5E4C 2000B4AF */  sw         $s4, 0x20($sp)
/* B6650 800C5E50 2080023C */  lui        $v0, %hi(D_801FB764)
/* B6654 800C5E54 1C00B3AF */  sw         $s3, 0x1c($sp)
/* B6658 800C5E58 64B75324 */  addiu      $s3, $v0, %lo(D_801FB764)
/* B665C 800C5E5C 1000B0AF */  sw         $s0, 0x10($sp)
/* B6660 800C5E60 B4BC7026 */  addiu      $s0, $s3, -0x434c
/* B6664 800C5E64 01000424 */  addiu      $a0, $zero, 1
/* B6668 800C5E68 2400BFAF */  sw         $ra, 0x24($sp)
/* B666C 800C5E6C 1800B2AF */  sw         $s2, 0x18($sp)
/* B6670 800C5E70 0400038E */  lw         $v1, 4($s0)
/* B6674 800C5E74 B4BC728E */  lw         $s2, -0x434c($s3)
/* B6678 800C5E78 10006410 */  beq        $v1, $a0, .L800C5EBC
/* B667C 800C5E7C 21A02002 */   addu      $s4, $s1, $zero
/* B6680 800C5E80 02006228 */  slti       $v0, $v1, 2
/* B6684 800C5E84 05004010 */  beqz       $v0, .L800C5E9C
/* B6688 800C5E88 00000000 */   nop
/* B668C 800C5E8C 0A006010 */  beqz       $v1, .L800C5EB8
/* B6690 800C5E90 00000000 */   nop
/* B6694 800C5E94 CA170308 */  j          .L800C5F28
/* B6698 800C5E98 00000000 */   nop
.L800C5E9C:
/* B669C 800C5E9C 02000224 */  addiu      $v0, $zero, 2
/* B66A0 800C5EA0 11006210 */  beq        $v1, $v0, .L800C5EE8
/* B66A4 800C5EA4 03000224 */   addiu     $v0, $zero, 3
/* B66A8 800C5EA8 1D006210 */  beq        $v1, $v0, .L800C5F20
/* B66AC 800C5EAC 00000000 */   nop
/* B66B0 800C5EB0 CA170308 */  j          .L800C5F28
/* B66B4 800C5EB4 00000000 */   nop
.L800C5EB8:
/* B66B8 800C5EB8 040004AE */  sw         $a0, 4($s0)
.L800C5EBC:
/* B66BC 800C5EBC 0C00648E */  lw         $a0, 0xc($s3)
/* B66C0 800C5EC0 1800658E */  lw         $a1, 0x18($s3)
/* B66C4 800C5EC4 8725030C */  jal        FUN_800c961c
/* B66C8 800C5EC8 00000000 */   nop
/* B66CC 800C5ECC 1F80033C */  lui        $v1, %hi(D_801F7418)
/* B66D0 800C5ED0 18746324 */  addiu      $v1, $v1, %lo(D_801F7418)
/* B66D4 800C5ED4 0400628C */  lw         $v0, 4($v1)
/* B66D8 800C5ED8 00000000 */  nop
/* B66DC 800C5EDC 01004224 */  addiu      $v0, $v0, 1
/* B66E0 800C5EE0 CA170308 */  j          .L800C5F28
/* B66E4 800C5EE4 040062AC */   sw        $v0, 4($v1)
.L800C5EE8:
/* B66E8 800C5EE8 F224030C */  jal        FUN_800c93c8
/* B66EC 800C5EEC 00000000 */   nop
/* B66F0 800C5EF0 21884000 */  addu       $s1, $v0, $zero
/* B66F4 800C5EF4 FEFF0224 */  addiu      $v0, $zero, -2
/* B66F8 800C5EF8 0B002212 */  beq        $s1, $v0, .L800C5F28
/* B66FC 800C5EFC 00000000 */   nop
/* B6700 800C5F00 03002012 */  beqz       $s1, .L800C5F10
/* B6704 800C5F04 00000000 */   nop
/* B6708 800C5F08 CA170308 */  j          .L800C5F28
/* B670C 800C5F0C 01001424 */   addiu     $s4, $zero, 1
.L800C5F10:
/* B6710 800C5F10 0400028E */  lw         $v0, 4($s0)
/* B6714 800C5F14 00000000 */  nop
/* B6718 800C5F18 01004224 */  addiu      $v0, $v0, 1
/* B671C 800C5F1C 040002AE */  sw         $v0, 4($s0)
.L800C5F20:
/* B6720 800C5F20 21900000 */  addu       $s2, $zero, $zero
/* B6724 800C5F24 080060AE */  sw         $zero, 8($s3)
.L800C5F28:
/* B6728 800C5F28 04008012 */  beqz       $s4, .L800C5F3C
/* B672C 800C5F2C 21104002 */   addu      $v0, $s2, $zero
/* B6730 800C5F30 21900000 */  addu       $s2, $zero, $zero
/* B6734 800C5F34 080071AE */  sw         $s1, 8($s3)
/* B6738 800C5F38 21104002 */  addu       $v0, $s2, $zero
.L800C5F3C:
/* B673C 800C5F3C 2400BF8F */  lw         $ra, 0x24($sp)
/* B6740 800C5F40 2000B48F */  lw         $s4, 0x20($sp)
/* B6744 800C5F44 1C00B38F */  lw         $s3, 0x1c($sp)
/* B6748 800C5F48 1800B28F */  lw         $s2, 0x18($sp)
/* B674C 800C5F4C 1400B18F */  lw         $s1, 0x14($sp)
/* B6750 800C5F50 1000B08F */  lw         $s0, 0x10($sp)
/* B6754 800C5F54 0800E003 */  jr         $ra
/* B6758 800C5F58 2800BD27 */   addiu     $sp, $sp, 0x28
