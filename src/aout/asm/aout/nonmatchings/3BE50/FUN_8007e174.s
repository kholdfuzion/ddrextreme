.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches


glabel FUN_8007e174
/* 6E974 8007E174 E8FFBD27 */  addiu      $sp, $sp, -0x18
/* 6E978 8007E178 1000B0AF */  sw         $s0, 0x10($sp)
/* 6E97C 8007E17C 21808000 */  addu       $s0, $a0, $zero
/* 6E980 8007E180 0F80043C */  lui        $a0, %hi(D_800F0028)
/* 6E984 8007E184 28008424 */  addiu      $a0, $a0, %lo(D_800F0028)
/* 6E988 8007E188 80101000 */  sll        $v0, $s0, 2
/* 6E98C 8007E18C 21105000 */  addu       $v0, $v0, $s0
/* 6E990 8007E190 C0190200 */  sll        $v1, $v0, 7
/* 6E994 8007E194 21104300 */  addu       $v0, $v0, $v1
/* 6E998 8007E198 40110200 */  sll        $v0, $v0, 5
/* 6E99C 8007E19C 23105000 */  subu       $v0, $v0, $s0
/* 6E9A0 8007E1A0 80100200 */  sll        $v0, $v0, 2
/* 6E9A4 8007E1A4 21104400 */  addu       $v0, $v0, $a0
/* 6E9A8 8007E1A8 1400BFAF */  sw         $ra, 0x14($sp)
/* 6E9AC 8007E1AC 3000428C */  lw         $v0, 0x30($v0)
/* 6E9B0 8007E1B0 00000000 */  nop
/* 6E9B4 8007E1B4 1500422C */  sltiu      $v0, $v0, 0x15
/* 6E9B8 8007E1B8 17004014 */  bnez       $v0, .L8007E218
/* 6E9BC 8007E1BC 21100000 */   addu      $v0, $zero, $zero
/* 6E9C0 8007E1C0 7470000C */  jal        getcoinslot1_8001c1d0
/* 6E9C4 8007E1C4 00000000 */   nop
/* 6E9C8 8007E1C8 03004010 */  beqz       $v0, .L8007E1D8
/* 6E9CC 8007E1CC 0F80043C */   lui       $a0, %hi(D_800F0028)
/* 6E9D0 8007E1D0 0D000016 */  bnez       $s0, .L8007E208
/* 6E9D4 8007E1D4 21100000 */   addu      $v0, $zero, $zero
.L8007E1D8:
/* 6E9D8 8007E1D8 28008424 */  addiu      $a0, $a0, %lo(D_800F0028)
/* 6E9DC 8007E1DC 80101000 */  sll        $v0, $s0, 2
/* 6E9E0 8007E1E0 21105000 */  addu       $v0, $v0, $s0
/* 6E9E4 8007E1E4 C0190200 */  sll        $v1, $v0, 7
/* 6E9E8 8007E1E8 21104300 */  addu       $v0, $v0, $v1
/* 6E9EC 8007E1EC 40110200 */  sll        $v0, $v0, 5
/* 6E9F0 8007E1F0 23105000 */  subu       $v0, $v0, $s0
/* 6E9F4 8007E1F4 80100200 */  sll        $v0, $v0, 2
/* 6E9F8 8007E1F8 21104400 */  addu       $v0, $v0, $a0
/* 6E9FC 8007E1FC 3C004280 */  lb         $v0, 0x3c($v0)
/* 6EA00 8007E200 00000000 */  nop
/* 6EA04 8007E204 2B100200 */  sltu       $v0, $zero, $v0
.L8007E208:
/* 6EA08 8007E208 03004010 */  beqz       $v0, .L8007E218
/* 6EA0C 8007E20C 21100000 */   addu      $v0, $zero, $zero
/* 6EA10 8007E210 3EB3000C */  jal        FUN_8002ccf8
/* 6EA14 8007E214 21200002 */   addu      $a0, $s0, $zero
.L8007E218:
/* 6EA18 8007E218 1400BF8F */  lw         $ra, 0x14($sp)
/* 6EA1C 8007E21C 1000B08F */  lw         $s0, 0x10($sp)
/* 6EA20 8007E220 0800E003 */  jr         $ra
/* 6EA24 8007E224 1800BD27 */   addiu     $sp, $sp, 0x18
