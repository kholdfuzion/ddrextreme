.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches


glabel FUN_8007e29c
/* 6EA9C 8007E29C E8FFBD27 */  addiu      $sp, $sp, -0x18
/* 6EAA0 8007E2A0 1000B0AF */  sw         $s0, 0x10($sp)
/* 6EAA4 8007E2A4 1400BFAF */  sw         $ra, 0x14($sp)
/* 6EAA8 8007E2A8 7470000C */  jal        getcoinslot1_8001c1d0
/* 6EAAC 8007E2AC 21808000 */   addu      $s0, $a0, $zero
/* 6EAB0 8007E2B0 03004010 */  beqz       $v0, .L8007E2C0
/* 6EAB4 8007E2B4 0F80043C */   lui       $a0, %hi(D_800F0028)
/* 6EAB8 8007E2B8 0D000016 */  bnez       $s0, .L8007E2F0
/* 6EABC 8007E2BC 21100000 */   addu      $v0, $zero, $zero
.L8007E2C0:
/* 6EAC0 8007E2C0 28008424 */  addiu      $a0, $a0, %lo(D_800F0028)
/* 6EAC4 8007E2C4 80101000 */  sll        $v0, $s0, 2
/* 6EAC8 8007E2C8 21105000 */  addu       $v0, $v0, $s0
/* 6EACC 8007E2CC C0190200 */  sll        $v1, $v0, 7
/* 6EAD0 8007E2D0 21104300 */  addu       $v0, $v0, $v1
/* 6EAD4 8007E2D4 40110200 */  sll        $v0, $v0, 5
/* 6EAD8 8007E2D8 23105000 */  subu       $v0, $v0, $s0
/* 6EADC 8007E2DC 80100200 */  sll        $v0, $v0, 2
/* 6EAE0 8007E2E0 21104400 */  addu       $v0, $v0, $a0
/* 6EAE4 8007E2E4 3C004280 */  lb         $v0, 0x3c($v0)
/* 6EAE8 8007E2E8 00000000 */  nop
/* 6EAEC 8007E2EC 2B100200 */  sltu       $v0, $zero, $v0
.L8007E2F0:
/* 6EAF0 8007E2F0 03004010 */  beqz       $v0, .L8007E300
/* 6EAF4 8007E2F4 21100000 */   addu      $v0, $zero, $zero
/* 6EAF8 8007E2F8 74B3000C */  jal        FUN_8002cdd0
/* 6EAFC 8007E2FC 21200002 */   addu      $a0, $s0, $zero
.L8007E300:
/* 6EB00 8007E300 1400BF8F */  lw         $ra, 0x14($sp)
/* 6EB04 8007E304 1000B08F */  lw         $s0, 0x10($sp)
/* 6EB08 8007E308 0800E003 */  jr         $ra
/* 6EB0C 8007E30C 1800BD27 */   addiu     $sp, $sp, 0x18
