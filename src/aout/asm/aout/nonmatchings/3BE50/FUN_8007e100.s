.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches


glabel FUN_8007e100
/* 6E900 8007E100 E8FFBD27 */  addiu      $sp, $sp, -0x18
/* 6E904 8007E104 1000B0AF */  sw         $s0, 0x10($sp)
/* 6E908 8007E108 1400BFAF */  sw         $ra, 0x14($sp)
/* 6E90C 8007E10C 7470000C */  jal        getcoinslot1_8001c1d0
/* 6E910 8007E110 21808000 */   addu      $s0, $a0, $zero
/* 6E914 8007E114 03004010 */  beqz       $v0, .L8007E124
/* 6E918 8007E118 0F80043C */   lui       $a0, %hi(D_800F0028)
/* 6E91C 8007E11C 0D000016 */  bnez       $s0, .L8007E154
/* 6E920 8007E120 21100000 */   addu      $v0, $zero, $zero
.L8007E124:
/* 6E924 8007E124 28008424 */  addiu      $a0, $a0, %lo(D_800F0028)
/* 6E928 8007E128 80101000 */  sll        $v0, $s0, 2
/* 6E92C 8007E12C 21105000 */  addu       $v0, $v0, $s0
/* 6E930 8007E130 C0190200 */  sll        $v1, $v0, 7
/* 6E934 8007E134 21104300 */  addu       $v0, $v0, $v1
/* 6E938 8007E138 40110200 */  sll        $v0, $v0, 5
/* 6E93C 8007E13C 23105000 */  subu       $v0, $v0, $s0
/* 6E940 8007E140 80100200 */  sll        $v0, $v0, 2
/* 6E944 8007E144 21104400 */  addu       $v0, $v0, $a0
/* 6E948 8007E148 3C004280 */  lb         $v0, 0x3c($v0)
/* 6E94C 8007E14C 00000000 */  nop
/* 6E950 8007E150 2B100200 */  sltu       $v0, $zero, $v0
.L8007E154:
/* 6E954 8007E154 03004010 */  beqz       $v0, .L8007E164
/* 6E958 8007E158 21100000 */   addu      $v0, $zero, $zero
/* 6E95C 8007E15C 50B3000C */  jal        FUN_8002cd40
/* 6E960 8007E160 21200002 */   addu      $a0, $s0, $zero
.L8007E164:
/* 6E964 8007E164 1400BF8F */  lw         $ra, 0x14($sp)
/* 6E968 8007E168 1000B08F */  lw         $s0, 0x10($sp)
/* 6E96C 8007E16C 0800E003 */  jr         $ra
/* 6E970 8007E170 1800BD27 */   addiu     $sp, $sp, 0x18
