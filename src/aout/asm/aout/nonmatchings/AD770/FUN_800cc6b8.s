.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches


glabel FUN_800cc6b8
/* BCEB8 800CC6B8 78FFBD27 */  addiu      $sp, $sp, -0x88
/* BCEBC 800CC6BC 7800B6AF */  sw         $s6, 0x78($sp)
/* BCEC0 800CC6C0 21B0A000 */  addu       $s6, $a1, $zero
/* BCEC4 800CC6C4 8000BEAF */  sw         $fp, 0x80($sp)
/* BCEC8 800CC6C8 21F0E000 */  addu       $fp, $a3, $zero
/* BCECC 800CC6CC 2080023C */  lui        $v0, %hi(D_801FBCB0)
/* BCED0 800CC6D0 6C00B3AF */  sw         $s3, 0x6c($sp)
/* BCED4 800CC6D4 B0BC5324 */  addiu      $s3, $v0, %lo(D_801FBCB0)
/* BCED8 800CC6D8 8400BFAF */  sw         $ra, 0x84($sp)
/* BCEDC 800CC6DC 7C00B7AF */  sw         $s7, 0x7c($sp)
/* BCEE0 800CC6E0 7400B5AF */  sw         $s5, 0x74($sp)
/* BCEE4 800CC6E4 7000B4AF */  sw         $s4, 0x70($sp)
/* BCEE8 800CC6E8 6800B2AF */  sw         $s2, 0x68($sp)
/* BCEEC 800CC6EC 6400B1AF */  sw         $s1, 0x64($sp)
/* BCEF0 800CC6F0 6000B0AF */  sw         $s0, 0x60($sp)
/* BCEF4 800CC6F4 8800A4AF */  sw         $a0, 0x88($sp)
/* BCEF8 800CC6F8 A435030C */  jal        FUN_800cd690
/* BCEFC 800CC6FC 9000A6AF */   sw        $a2, 0x90($sp)
/* BCF00 800CC700 21404000 */  addu       $t0, $v0, $zero
/* BCF04 800CC704 05000011 */  beqz       $t0, .L800CC71C
/* BCF08 800CC708 C3B01600 */   sra       $s6, $s6, 3
/* BCF0C 800CC70C 19320308 */  j          .L800CC864
/* BCF10 800CC710 00000000 */   nop
.L800CC714:
/* BCF14 800CC714 19320308 */  j          .L800CC864
/* BCF18 800CC718 21100001 */   addu      $v0, $t0, $zero
.L800CC71C:
/* BCF1C 800CC71C 5000C01B */  blez       $fp, .L800CC860
/* BCF20 800CC720 21880000 */   addu      $s1, $zero, $zero
/* BCF24 800CC724 C3111600 */  sra        $v0, $s6, 7
/* BCF28 800CC728 02004230 */  andi       $v0, $v0, 2
/* BCF2C 800CC72C 04004234 */  ori        $v0, $v0, 4
/* BCF30 800CC730 5800A2AF */  sw         $v0, 0x58($sp)
/* BCF34 800CC734 3800B227 */  addiu      $s2, $sp, 0x38
/* BCF38 800CC738 3A00B527 */  addiu      $s5, $sp, 0x3a
/* BCF3C 800CC73C FF001724 */  addiu      $s7, $zero, 0xff
/* BCF40 800CC740 4800B427 */  addiu      $s4, $sp, 0x48
/* BCF44 800CC744 1800A427 */  addiu      $a0, $sp, 0x18
.L800CC748:
/* BCF48 800CC748 5800A993 */  lbu        $t1, 0x58($sp)
/* BCF4C 800CC74C 9000AA8F */  lw         $t2, 0x90($sp)
/* BCF50 800CC750 1900B6A3 */  sb         $s6, 0x19($sp)
/* BCF54 800CC754 21105101 */  addu       $v0, $t2, $s1
/* BCF58 800CC758 1800A9A3 */  sb         $t1, 0x18($sp)
/* BCF5C 800CC75C 03004B88 */  lwl        $t3, 3($v0)
/* BCF60 800CC760 00004B98 */  lwr        $t3, ($v0)
/* BCF64 800CC764 07004C88 */  lwl        $t4, 7($v0)
/* BCF68 800CC768 04004C98 */  lwr        $t4, 4($v0)
/* BCF6C 800CC76C 1D00ABAB */  swl        $t3, 0x1d($sp)
/* BCF70 800CC770 1A00ABBB */  swr        $t3, 0x1a($sp)
/* BCF74 800CC774 2100ACAB */  swl        $t4, 0x21($sp)
/* BCF78 800CC778 1E00ACBB */  swr        $t4, 0x1e($sp)
/* BCF7C 800CC77C 2D35030C */  jal        FUN_800cd4b4
/* BCF80 800CC780 0A000524 */   addiu     $a1, $zero, 0xa
/* BCF84 800CC784 FFFF4830 */  andi       $t0, $v0, 0xffff
/* BCF88 800CC788 2120A002 */  addu       $a0, $s5, $zero
/* BCF8C 800CC78C 2128A002 */  addu       $a1, $s5, $zero
/* BCF90 800CC790 08000624 */  addiu      $a2, $zero, 8
/* BCF94 800CC794 8800A78F */  lw         $a3, 0x88($sp)
/* BCF98 800CC798 08006392 */  lbu        $v1, 8($s3)
/* BCF9C 800CC79C 0710C800 */  srav       $v0, $t0, $a2
/* BCFA0 800CC7A0 2200A2A3 */  sb         $v0, 0x22($sp)
/* BCFA4 800CC7A4 2300A8A3 */  sb         $t0, 0x23($sp)
/* BCFA8 800CC7A8 1800AB8F */  lw         $t3, 0x18($sp)
/* BCFAC 800CC7AC 1C00AC8F */  lw         $t4, 0x1c($sp)
/* BCFB0 800CC7B0 2000A98F */  lw         $t1, 0x20($sp)
/* BCFB4 800CC7B4 3800ABAF */  sw         $t3, 0x38($sp)
/* BCFB8 800CC7B8 3C00ACAF */  sw         $t4, 0x3c($sp)
/* BCFBC 800CC7BC 4000A9AF */  sw         $t1, 0x40($sp)
/* BCFC0 800CC7C0 B734030C */  jal        FUN_800cd2dc
/* BCFC4 800CC7C4 1000A3AF */   sw        $v1, 0x10($sp)
/* BCFC8 800CC7C8 21204002 */  addu       $a0, $s2, $zero
/* BCFCC 800CC7CC 21284002 */  addu       $a1, $s2, $zero
/* BCFD0 800CC7D0 0C000624 */  addiu      $a2, $zero, 0xc
/* BCFD4 800CC7D4 11006726 */  addiu      $a3, $s3, 0x11
/* BCFD8 800CC7D8 E034030C */  jal        FUN_800cd380
/* BCFDC 800CC7DC 1000B7AF */   sw        $s7, 0x10($sp)
/* BCFE0 800CC7E0 21204002 */  addu       $a0, $s2, $zero
/* BCFE4 800CC7E4 2034030C */  jal        FUN_800cd080
/* BCFE8 800CC7E8 21288002 */   addu      $a1, $s4, $zero
/* BCFEC 800CC7EC 21404000 */  addu       $t0, $v0, $zero
/* BCFF0 800CC7F0 C8FF0005 */  bltz       $t0, .L800CC714
/* BCFF4 800CC7F4 2800B027 */   addiu     $s0, $sp, 0x28
/* BCFF8 800CC7F8 21200002 */  addu       $a0, $s0, $zero
/* BCFFC 800CC7FC 21288002 */  addu       $a1, $s4, $zero
/* BD000 800CC800 0C000624 */  addiu      $a2, $zero, 0xc
/* BD004 800CC804 09006726 */  addiu      $a3, $s3, 9
/* BD008 800CC808 0735030C */  jal        FUN_800cd41c
/* BD00C 800CC80C 1000B7AF */   sw        $s7, 0x10($sp)
/* BD010 800CC810 21200002 */  addu       $a0, $s0, $zero
/* BD014 800CC814 2D35030C */  jal        FUN_800cd4b4
/* BD018 800CC818 0A000524 */   addiu     $a1, $zero, 0xa
/* BD01C 800CC81C FFFF4830 */  andi       $t0, $v0, 0xffff
/* BD020 800CC820 3200A293 */  lbu        $v0, 0x32($sp)
/* BD024 800CC824 3300A393 */  lbu        $v1, 0x33($sp)
/* BD028 800CC828 00120200 */  sll        $v0, $v0, 8
/* BD02C 800CC82C 25104300 */  or         $v0, $v0, $v1
/* BD030 800CC830 0C000215 */  bne        $t0, $v0, .L800CC864
/* BD034 800CC834 FEFF0224 */   addiu     $v0, $zero, -2
/* BD038 800CC838 2900A293 */  lbu        $v0, 0x29($sp)
/* BD03C 800CC83C 2800A493 */  lbu        $a0, 0x28($sp)
/* BD040 800CC840 9535030C */  jal        FUN_800cd654
/* BD044 800CC844 080062A2 */   sb        $v0, 8($s3)
/* BD048 800CC848 21404000 */  addu       $t0, $v0, $zero
/* BD04C 800CC84C B1FF0015 */  bnez       $t0, .L800CC714
/* BD050 800CC850 08003126 */   addiu     $s1, $s1, 8
/* BD054 800CC854 2A103E02 */  slt        $v0, $s1, $fp
/* BD058 800CC858 BBFF4014 */  bnez       $v0, .L800CC748
/* BD05C 800CC85C 1800A427 */   addiu     $a0, $sp, 0x18
.L800CC860:
/* BD060 800CC860 21100000 */  addu       $v0, $zero, $zero
.L800CC864:
/* BD064 800CC864 8400BF8F */  lw         $ra, 0x84($sp)
/* BD068 800CC868 8000BE8F */  lw         $fp, 0x80($sp)
/* BD06C 800CC86C 7C00B78F */  lw         $s7, 0x7c($sp)
/* BD070 800CC870 7800B68F */  lw         $s6, 0x78($sp)
/* BD074 800CC874 7400B58F */  lw         $s5, 0x74($sp)
/* BD078 800CC878 7000B48F */  lw         $s4, 0x70($sp)
/* BD07C 800CC87C 6C00B38F */  lw         $s3, 0x6c($sp)
/* BD080 800CC880 6800B28F */  lw         $s2, 0x68($sp)
/* BD084 800CC884 6400B18F */  lw         $s1, 0x64($sp)
/* BD088 800CC888 6000B08F */  lw         $s0, 0x60($sp)
/* BD08C 800CC88C 0800E003 */  jr         $ra
/* BD090 800CC890 8800BD27 */   addiu     $sp, $sp, 0x88
