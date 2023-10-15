.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches


glabel FUN_800aafd8
/* 9B7D8 800AAFD8 E0FFBD27 */  addiu      $sp, $sp, -0x20
/* 9B7DC 800AAFDC 1800BFAF */  sw         $ra, 0x18($sp)
/* 9B7E0 800AAFE0 1400B1AF */  sw         $s1, 0x14($sp)
/* 9B7E4 800AAFE4 3FAC020C */  jal        FUN_800ab0fc
/* 9B7E8 800AAFE8 1000B0AF */   sw        $s0, 0x10($sp)
/* 9B7EC 800AAFEC 2FAC020C */  jal        FUN_800ab0bc
/* 9B7F0 800AAFF0 1C80113C */   lui       $s1, 0x801c
/* 9B7F4 800AAFF4 5BAC020C */  jal        FUN_800ab16c
/* 9B7F8 800AAFF8 00000000 */   nop
/* 9B7FC 800AAFFC DEAE020C */  jal        FUN_800abb78
/* 9B800 800AB000 00000000 */   nop
/* 9B804 800AB004 21804000 */  addu       $s0, $v0, $zero
/* 9B808 800AB008 01000232 */  andi       $v0, $s0, 1
/* 9B80C 800AB00C 07004010 */  beqz       $v0, .L800AB02C
/* 9B810 800AB010 21200000 */   addu      $a0, $zero, $zero
/* 9B814 800AB014 883E2326 */  addiu      $v1, $s1, 0x3e88
/* 9B818 800AB018 04006290 */  lbu        $v0, 4($v1)
/* 9B81C 800AB01C 00000000 */  nop
/* 9B820 800AB020 01004234 */  ori        $v0, $v0, 1
/* 9B824 800AB024 84AC020C */  jal        FUN_800ab210
/* 9B828 800AB028 040062A0 */   sb        $v0, 4($v1)
.L800AB02C:
/* 9B82C 800AB02C 02000232 */  andi       $v0, $s0, 2
/* 9B830 800AB030 06004010 */  beqz       $v0, .L800AB04C
/* 9B834 800AB034 883E2326 */   addiu     $v1, $s1, 0x3e88
/* 9B838 800AB038 04006290 */  lbu        $v0, 4($v1)
/* 9B83C 800AB03C 01000424 */  addiu      $a0, $zero, 1
/* 9B840 800AB040 02004234 */  ori        $v0, $v0, 2
/* 9B844 800AB044 84AC020C */  jal        FUN_800ab210
/* 9B848 800AB048 040062A0 */   sb        $v0, 4($v1)
.L800AB04C:
/* 9B84C 800AB04C 883E2226 */  addiu      $v0, $s1, 0x3e88
/* 9B850 800AB050 04004390 */  lbu        $v1, 4($v0)
/* 9B854 800AB054 00000000 */  nop
/* 9B858 800AB058 02006010 */  beqz       $v1, .L800AB064
/* 9B85C 800AB05C FFFF0224 */   addiu     $v0, $zero, -1
/* 9B860 800AB060 21100000 */  addu       $v0, $zero, $zero
.L800AB064:
/* 9B864 800AB064 1800BF8F */  lw         $ra, 0x18($sp)
/* 9B868 800AB068 1400B18F */  lw         $s1, 0x14($sp)
/* 9B86C 800AB06C 1000B08F */  lw         $s0, 0x10($sp)
/* 9B870 800AB070 0800E003 */  jr         $ra
/* 9B874 800AB074 2000BD27 */   addiu     $sp, $sp, 0x20
