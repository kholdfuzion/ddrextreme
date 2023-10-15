.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches


glabel FUN_8007e028
/* 6E828 8007E028 E8FFBD27 */  addiu      $sp, $sp, -0x18
/* 6E82C 8007E02C 1000B0AF */  sw         $s0, 0x10($sp)
/* 6E830 8007E030 1400BFAF */  sw         $ra, 0x14($sp)
/* 6E834 8007E034 7470000C */  jal        getcoinslot1_8001c1d0
/* 6E838 8007E038 21808000 */   addu      $s0, $a0, $zero
/* 6E83C 8007E03C 03004010 */  beqz       $v0, .L8007E04C
/* 6E840 8007E040 0F80043C */   lui       $a0, %hi(D_800F0028)
/* 6E844 8007E044 0D000016 */  bnez       $s0, .L8007E07C
/* 6E848 8007E048 21100000 */   addu      $v0, $zero, $zero
.L8007E04C:
/* 6E84C 8007E04C 28008424 */  addiu      $a0, $a0, %lo(D_800F0028)
/* 6E850 8007E050 80101000 */  sll        $v0, $s0, 2
/* 6E854 8007E054 21105000 */  addu       $v0, $v0, $s0
/* 6E858 8007E058 C0190200 */  sll        $v1, $v0, 7
/* 6E85C 8007E05C 21104300 */  addu       $v0, $v0, $v1
/* 6E860 8007E060 40110200 */  sll        $v0, $v0, 5
/* 6E864 8007E064 23105000 */  subu       $v0, $v0, $s0
/* 6E868 8007E068 80100200 */  sll        $v0, $v0, 2
/* 6E86C 8007E06C 21104400 */  addu       $v0, $v0, $a0
/* 6E870 8007E070 3C004280 */  lb         $v0, 0x3c($v0)
/* 6E874 8007E074 00000000 */  nop
/* 6E878 8007E078 2B100200 */  sltu       $v0, $zero, $v0
.L8007E07C:
/* 6E87C 8007E07C 1400BF8F */  lw         $ra, 0x14($sp)
/* 6E880 8007E080 1000B08F */  lw         $s0, 0x10($sp)
/* 6E884 8007E084 0800E003 */  jr         $ra
/* 6E888 8007E088 1800BD27 */   addiu     $sp, $sp, 0x18
