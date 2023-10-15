.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches


glabel FUN_8007e228
/* 6EA28 8007E228 E8FFBD27 */  addiu      $sp, $sp, -0x18
/* 6EA2C 8007E22C 1000B0AF */  sw         $s0, 0x10($sp)
/* 6EA30 8007E230 1400BFAF */  sw         $ra, 0x14($sp)
/* 6EA34 8007E234 7470000C */  jal        getcoinslot1_8001c1d0
/* 6EA38 8007E238 21808000 */   addu      $s0, $a0, $zero
/* 6EA3C 8007E23C 03004010 */  beqz       $v0, .L8007E24C
/* 6EA40 8007E240 0F80043C */   lui       $a0, %hi(D_800F0028)
/* 6EA44 8007E244 0D000016 */  bnez       $s0, .L8007E27C
/* 6EA48 8007E248 21100000 */   addu      $v0, $zero, $zero
.L8007E24C:
/* 6EA4C 8007E24C 28008424 */  addiu      $a0, $a0, %lo(D_800F0028)
/* 6EA50 8007E250 80101000 */  sll        $v0, $s0, 2
/* 6EA54 8007E254 21105000 */  addu       $v0, $v0, $s0
/* 6EA58 8007E258 C0190200 */  sll        $v1, $v0, 7
/* 6EA5C 8007E25C 21104300 */  addu       $v0, $v0, $v1
/* 6EA60 8007E260 40110200 */  sll        $v0, $v0, 5
/* 6EA64 8007E264 23105000 */  subu       $v0, $v0, $s0
/* 6EA68 8007E268 80100200 */  sll        $v0, $v0, 2
/* 6EA6C 8007E26C 21104400 */  addu       $v0, $v0, $a0
/* 6EA70 8007E270 3C004280 */  lb         $v0, 0x3c($v0)
/* 6EA74 8007E274 00000000 */  nop
/* 6EA78 8007E278 2B100200 */  sltu       $v0, $zero, $v0
.L8007E27C:
/* 6EA7C 8007E27C 03004010 */  beqz       $v0, .L8007E28C
/* 6EA80 8007E280 21100000 */   addu      $v0, $zero, $zero
/* 6EA84 8007E284 6BB3000C */  jal        FUN_8002cdac
/* 6EA88 8007E288 21200002 */   addu      $a0, $s0, $zero
.L8007E28C:
/* 6EA8C 8007E28C 1400BF8F */  lw         $ra, 0x14($sp)
/* 6EA90 8007E290 1000B08F */  lw         $s0, 0x10($sp)
/* 6EA94 8007E294 0800E003 */  jr         $ra
/* 6EA98 8007E298 1800BD27 */   addiu     $sp, $sp, 0x18
