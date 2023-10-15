.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches


glabel FUN_8007e08c
/* 6E88C 8007E08C E8FFBD27 */  addiu      $sp, $sp, -0x18
/* 6E890 8007E090 1000B0AF */  sw         $s0, 0x10($sp)
/* 6E894 8007E094 1400BFAF */  sw         $ra, 0x14($sp)
/* 6E898 8007E098 7470000C */  jal        getcoinslot1_8001c1d0
/* 6E89C 8007E09C 21808000 */   addu      $s0, $a0, $zero
/* 6E8A0 8007E0A0 03004010 */  beqz       $v0, .L8007E0B0
/* 6E8A4 8007E0A4 0F80043C */   lui       $a0, %hi(D_800F0028)
/* 6E8A8 8007E0A8 0D000016 */  bnez       $s0, .L8007E0E0
/* 6E8AC 8007E0AC 21100000 */   addu      $v0, $zero, $zero
.L8007E0B0:
/* 6E8B0 8007E0B0 28008424 */  addiu      $a0, $a0, %lo(D_800F0028)
/* 6E8B4 8007E0B4 80101000 */  sll        $v0, $s0, 2
/* 6E8B8 8007E0B8 21105000 */  addu       $v0, $v0, $s0
/* 6E8BC 8007E0BC C0190200 */  sll        $v1, $v0, 7
/* 6E8C0 8007E0C0 21104300 */  addu       $v0, $v0, $v1
/* 6E8C4 8007E0C4 40110200 */  sll        $v0, $v0, 5
/* 6E8C8 8007E0C8 23105000 */  subu       $v0, $v0, $s0
/* 6E8CC 8007E0CC 80100200 */  sll        $v0, $v0, 2
/* 6E8D0 8007E0D0 21104400 */  addu       $v0, $v0, $a0
/* 6E8D4 8007E0D4 3C004280 */  lb         $v0, 0x3c($v0)
/* 6E8D8 8007E0D8 00000000 */  nop
/* 6E8DC 8007E0DC 2B100200 */  sltu       $v0, $zero, $v0
.L8007E0E0:
/* 6E8E0 8007E0E0 03004010 */  beqz       $v0, .L8007E0F0
/* 6E8E4 8007E0E4 21100000 */   addu      $v0, $zero, $zero
/* 6E8E8 8007E0E8 47B3000C */  jal        FUN_8002cd1c
/* 6E8EC 8007E0EC 21200002 */   addu      $a0, $s0, $zero
.L8007E0F0:
/* 6E8F0 8007E0F0 1400BF8F */  lw         $ra, 0x14($sp)
/* 6E8F4 8007E0F4 1000B08F */  lw         $s0, 0x10($sp)
/* 6E8F8 8007E0F8 0800E003 */  jr         $ra
/* 6E8FC 8007E0FC 1800BD27 */   addiu     $sp, $sp, 0x18
