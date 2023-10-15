.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches


glabel FUN_8003b6cc
/* 2BECC 8003B6CC D8FFBD27 */  addiu      $sp, $sp, -0x28
/* 2BED0 8003B6D0 2000BFAF */  sw         $ra, 0x20($sp)
/* 2BED4 8003B6D4 1C00B3AF */  sw         $s3, 0x1c($sp)
/* 2BED8 8003B6D8 1800B2AF */  sw         $s2, 0x18($sp)
/* 2BEDC 8003B6DC 1400B1AF */  sw         $s1, 0x14($sp)
/* 2BEE0 8003B6E0 7DC4000C */  jal        get_astruct_800311f4
/* 2BEE4 8003B6E4 1000B0AF */   sw        $s0, 0x10($sp)
/* 2BEE8 8003B6E8 21904000 */  addu       $s2, $v0, $zero
/* 2BEEC 8003B6EC 02004386 */  lh         $v1, 2($s2)
/* 2BEF0 8003B6F0 00000000 */  nop
/* 2BEF4 8003B6F4 05006010 */  beqz       $v1, .L8003B70C
/* 2BEF8 8003B6F8 01000224 */   addiu     $v0, $zero, 1
/* 2BEFC 8003B6FC 0A006210 */  beq        $v1, $v0, .L8003B728
/* 2BF00 8003B700 00000000 */   nop
/* 2BF04 8003B704 31EE0008 */  j          .L8003B8C4
/* 2BF08 8003B708 00000000 */   nop
.L8003B70C:
/* 2BF0C 8003B70C 5F96020C */  jal        FUN_800a597c
/* 2BF10 8003B710 00000000 */   nop
/* 2BF14 8003B714 02004296 */  lhu        $v0, 2($s2)
/* 2BF18 8003B718 E40E40AE */  sw         $zero, 0xee4($s2)
/* 2BF1C 8003B71C 01004224 */  addiu      $v0, $v0, 1
/* 2BF20 8003B720 31EE0008 */  j          .L8003B8C4
/* 2BF24 8003B724 020042A6 */   sh        $v0, 2($s2)
.L8003B728:
/* 2BF28 8003B728 47B3000C */  jal        FUN_8002cd1c
/* 2BF2C 8003B72C 21200000 */   addu      $a0, $zero, $zero
/* 2BF30 8003B730 09004010 */  beqz       $v0, .L8003B758
/* 2BF34 8003B734 00000000 */   nop
/* 2BF38 8003B738 12004296 */  lhu        $v0, 0x12($s2)
/* 2BF3C 8003B73C E40E40AE */  sw         $zero, 0xee4($s2)
/* 2BF40 8003B740 FFFF4224 */  addiu      $v0, $v0, -1
/* 2BF44 8003B744 120042A6 */  sh         $v0, 0x12($s2)
/* 2BF48 8003B748 00140200 */  sll        $v0, $v0, 0x10
/* 2BF4C 8003B74C 02004104 */  bgez       $v0, .L8003B758
/* 2BF50 8003B750 10000224 */   addiu     $v0, $zero, 0x10
/* 2BF54 8003B754 120042A6 */  sh         $v0, 0x12($s2)
.L8003B758:
/* 2BF58 8003B758 50B3000C */  jal        FUN_8002cd40
/* 2BF5C 8003B75C 21200000 */   addu      $a0, $zero, $zero
/* 2BF60 8003B760 0C004010 */  beqz       $v0, .L8003B794
/* 2BF64 8003B764 0180133C */   lui       $s3, 0x8001
/* 2BF68 8003B768 12004296 */  lhu        $v0, 0x12($s2)
/* 2BF6C 8003B76C E40E40AE */  sw         $zero, 0xee4($s2)
/* 2BF70 8003B770 01004224 */  addiu      $v0, $v0, 1
/* 2BF74 8003B774 120042A6 */  sh         $v0, 0x12($s2)
/* 2BF78 8003B778 00140200 */  sll        $v0, $v0, 0x10
/* 2BF7C 8003B77C 03140200 */  sra        $v0, $v0, 0x10
/* 2BF80 8003B780 11004228 */  slti       $v0, $v0, 0x11
/* 2BF84 8003B784 04004014 */  bnez       $v0, .L8003B798
/* 2BF88 8003B788 E82A7126 */   addiu     $s1, $s3, 0x2ae8
/* 2BF8C 8003B78C 120040A6 */  sh         $zero, 0x12($s2)
/* 2BF90 8003B790 0180133C */  lui        $s3, %hi(D_80012AE8)
.L8003B794:
/* 2BF94 8003B794 E82A7126 */  addiu      $s1, $s3, %lo(D_80012AE8)
.L8003B798:
/* 2BF98 8003B798 0E001024 */  addiu      $s0, $zero, 0xe
.L8003B79C:
/* 2BF9C 8003B79C 0000248E */  lw         $a0, ($s1)
/* 2BFA0 8003B7A0 04003126 */  addiu      $s1, $s1, 4
/* 2BFA4 8003B7A4 B09A020C */  jal        FUN_800a6ac0
/* 2BFA8 8003B7A8 FFFF1026 */   addiu     $s0, $s0, -1
/* 2BFAC 8003B7AC FBFF0106 */  bgez       $s0, .L8003B79C
/* 2BFB0 8003B7B0 00000000 */   nop
/* 2BFB4 8003B7B4 12004286 */  lh         $v0, 0x12($s2)
/* 2BFB8 8003B7B8 0F001024 */  addiu      $s0, $zero, 0xf
/* 2BFBC 8003B7BC 1B005014 */  bne        $v0, $s0, .L8003B82C
/* 2BFC0 8003B7C0 00000000 */   nop
/* 2BFC4 8003B7C4 E40E428E */  lw         $v0, 0xee4($s2)
/* 2BFC8 8003B7C8 00000000 */  nop
/* 2BFCC 8003B7CC 17004010 */  beqz       $v0, .L8003B82C
/* 2BFD0 8003B7D0 FFFF4224 */   addiu     $v0, $v0, -1
/* 2BFD4 8003B7D4 03004014 */  bnez       $v0, .L8003B7E4
/* 2BFD8 8003B7D8 E40E42AE */   sw        $v0, 0xee4($s2)
/* 2BFDC 8003B7DC 83030224 */  addiu      $v0, $zero, 0x383
/* 2BFE0 8003B7E0 E40E42AE */  sw         $v0, 0xee4($s2)
.L8003B7E4:
/* 2BFE4 8003B7E4 8888023C */  lui        $v0, 0x8888
/* 2BFE8 8003B7E8 E40E438E */  lw         $v1, 0xee4($s2)
/* 2BFEC 8003B7EC 89884234 */  ori        $v0, $v0, 0x8889
/* 2BFF0 8003B7F0 18006200 */  mult       $v1, $v0
/* 2BFF4 8003B7F4 0E000524 */  addiu      $a1, $zero, 0xe
/* 2BFF8 8003B7F8 10100000 */  mfhi       $v0
/* 2BFFC 8003B7FC 21104300 */  addu       $v0, $v0, $v1
/* 2C000 8003B800 43110200 */  sra        $v0, $v0, 5
/* 2C004 8003B804 C31F0300 */  sra        $v1, $v1, 0x1f
/* 2C008 8003B808 23104300 */  subu       $v0, $v0, $v1
/* 2C00C 8003B80C 2328A200 */  subu       $a1, $a1, $v0
/* 2C010 8003B810 E82A6326 */  addiu      $v1, $s3, 0x2ae8
/* 2C014 8003B814 00140500 */  sll        $v0, $a1, 0x10
/* 2C018 8003B818 83130200 */  sra        $v0, $v0, 0xe
/* 2C01C 8003B81C 21104300 */  addu       $v0, $v0, $v1
/* 2C020 8003B820 0000448C */  lw         $a0, ($v0)
/* 2C024 8003B824 949A020C */  jal        FUN_800a6a50
/* 2C028 8003B828 140045A6 */   sh        $a1, 0x14($s2)
.L8003B82C:
/* 2C02C 8003B82C 35B3000C */  jal        FUN_8002ccd4
/* 2C030 8003B830 21200000 */   addu      $a0, $zero, $zero
/* 2C034 8003B834 0F004010 */  beqz       $v0, .L8003B874
/* 2C038 8003B838 10000224 */   addiu     $v0, $zero, 0x10
/* 2C03C 8003B83C 12004386 */  lh         $v1, 0x12($s2)
/* 2C040 8003B840 00000000 */  nop
/* 2C044 8003B844 0B006214 */  bne        $v1, $v0, .L8003B874
/* 2C048 8003B848 0180023C */   lui       $v0, %hi(D_80012AE8)
/* 2C04C 8003B84C E82A5124 */  addiu      $s1, $v0, %lo(D_80012AE8)
/* 2C050 8003B850 0E001024 */  addiu      $s0, $zero, 0xe
.L8003B854:
/* 2C054 8003B854 0000248E */  lw         $a0, ($s1)
/* 2C058 8003B858 04003126 */  addiu      $s1, $s1, 4
/* 2C05C 8003B85C B09A020C */  jal        FUN_800a6ac0
/* 2C060 8003B860 FFFF1026 */   addiu     $s0, $s0, -1
/* 2C064 8003B864 FBFF0106 */  bgez       $s0, .L8003B854
/* 2C068 8003B868 01000224 */   addiu     $v0, $zero, 1
/* 2C06C 8003B86C 36EE0008 */  j          .L8003B8D8
/* 2C070 8003B870 00000000 */   nop
.L8003B874:
/* 2C074 8003B874 59B3000C */  jal        FUN_8002cd64
/* 2C078 8003B878 21200000 */   addu      $a0, $zero, $zero
/* 2C07C 8003B87C 0F004010 */  beqz       $v0, .L8003B8BC
/* 2C080 8003B880 10000224 */   addiu     $v0, $zero, 0x10
/* 2C084 8003B884 12004486 */  lh         $a0, 0x12($s2)
/* 2C088 8003B888 00000000 */  nop
/* 2C08C 8003B88C 0B008210 */  beq        $a0, $v0, .L8003B8BC
/* 2C090 8003B890 0F000224 */   addiu     $v0, $zero, 0xf
/* 2C094 8003B894 04008214 */  bne        $a0, $v0, .L8003B8A8
/* 2C098 8003B898 E82A6326 */   addiu     $v1, $s3, 0x2ae8
/* 2C09C 8003B89C 84030224 */  addiu      $v0, $zero, 0x384
/* 2C0A0 8003B8A0 2FEE0008 */  j          .L8003B8BC
/* 2C0A4 8003B8A4 E40E42AE */   sw        $v0, 0xee4($s2)
.L8003B8A8:
/* 2C0A8 8003B8A8 80100400 */  sll        $v0, $a0, 2
/* 2C0AC 8003B8AC 21104300 */  addu       $v0, $v0, $v1
/* 2C0B0 8003B8B0 0000448C */  lw         $a0, ($v0)
/* 2C0B4 8003B8B4 949A020C */  jal        FUN_800a6a50
/* 2C0B8 8003B8B8 00000000 */   nop
.L8003B8BC:
/* 2C0BC 8003B8BC BF96020C */  jal        FUN_800a5afc
/* 2C0C0 8003B8C0 00000000 */   nop
.L8003B8C4:
/* 2C0C4 8003B8C4 12004486 */  lh         $a0, 0x12($s2)
/* 2C0C8 8003B8C8 14004586 */  lh         $a1, 0x14($s2)
/* 2C0CC 8003B8CC 3DEE000C */  jal        DIAG_LAMP_CHECK_8003b8f4
/* 2C0D0 8003B8D0 00000000 */   nop
/* 2C0D4 8003B8D4 21100000 */  addu       $v0, $zero, $zero
.L8003B8D8:
/* 2C0D8 8003B8D8 2000BF8F */  lw         $ra, 0x20($sp)
/* 2C0DC 8003B8DC 1C00B38F */  lw         $s3, 0x1c($sp)
/* 2C0E0 8003B8E0 1800B28F */  lw         $s2, 0x18($sp)
/* 2C0E4 8003B8E4 1400B18F */  lw         $s1, 0x14($sp)
/* 2C0E8 8003B8E8 1000B08F */  lw         $s0, 0x10($sp)
/* 2C0EC 8003B8EC 0800E003 */  jr         $ra
/* 2C0F0 8003B8F0 2800BD27 */   addiu     $sp, $sp, 0x28
