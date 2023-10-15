.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches


glabel FUN_8003e75c
/* 2EF5C 8003E75C E8FFBD27 */  addiu      $sp, $sp, -0x18
/* 2EF60 8003E760 1400BFAF */  sw         $ra, 0x14($sp)
/* 2EF64 8003E764 7DC4000C */  jal        get_astruct_800311f4
/* 2EF68 8003E768 1000B0AF */   sw        $s0, 0x10($sp)
/* 2EF6C 8003E76C 21804000 */  addu       $s0, $v0, $zero
/* 2EF70 8003E770 06000386 */  lh         $v1, 6($s0)
/* 2EF74 8003E774 00000000 */  nop
/* 2EF78 8003E778 05006010 */  beqz       $v1, .L8003E790
/* 2EF7C 8003E77C 01000224 */   addiu     $v0, $zero, 1
/* 2EF80 8003E780 0F006210 */  beq        $v1, $v0, .L8003E7C0
/* 2EF84 8003E784 00000000 */   nop
/* 2EF88 8003E788 F4F90008 */  j          .L8003E7D0
/* 2EF8C 8003E78C 00000000 */   nop
.L8003E790:
/* 2EF90 8003E790 01000224 */  addiu      $v0, $zero, 1
/* 2EF94 8003E794 060002A6 */  sh         $v0, 6($s0)
/* 2EF98 8003E798 3C000224 */  addiu      $v0, $zero, 0x3c
/* 2EF9C 8003E79C 160000A6 */  sh         $zero, 0x16($s0)
/* 2EFA0 8003E7A0 D80E00AE */  sw         $zero, 0xed8($s0)
/* 2EFA4 8003E7A4 D40E00AE */  sw         $zero, 0xed4($s0)
/* 2EFA8 8003E7A8 D00E00AE */  sw         $zero, 0xed0($s0)
/* 2EFAC 8003E7AC CC0E00AE */  sw         $zero, 0xecc($s0)
/* 2EFB0 8003E7B0 C80E00AE */  sw         $zero, 0xec8($s0)
/* 2EFB4 8003E7B4 C40E00AE */  sw         $zero, 0xec4($s0)
/* 2EFB8 8003E7B8 C00E00AE */  sw         $zero, 0xec0($s0)
/* 2EFBC 8003E7BC BC0E02AE */  sw         $v0, 0xebc($s0)
.L8003E7C0:
/* 2EFC0 8003E7C0 35B3000C */  jal        FUN_8002ccd4
/* 2EFC4 8003E7C4 21200000 */   addu      $a0, $zero, $zero
/* 2EFC8 8003E7C8 05004014 */  bnez       $v0, .L8003E7E0
/* 2EFCC 8003E7CC 01000224 */   addiu     $v0, $zero, 1
.L8003E7D0:
/* 2EFD0 8003E7D0 16000486 */  lh         $a0, 0x16($s0)
/* 2EFD4 8003E7D4 02F9000C */  jal        FUN_8003e408
/* 2EFD8 8003E7D8 00000000 */   nop
/* 2EFDC 8003E7DC 21100000 */  addu       $v0, $zero, $zero
.L8003E7E0:
/* 2EFE0 8003E7E0 1400BF8F */  lw         $ra, 0x14($sp)
/* 2EFE4 8003E7E4 1000B08F */  lw         $s0, 0x10($sp)
/* 2EFE8 8003E7E8 0800E003 */  jr         $ra
/* 2EFEC 8003E7EC 1800BD27 */   addiu     $sp, $sp, 0x18
