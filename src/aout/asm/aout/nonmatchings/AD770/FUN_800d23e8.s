.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches


glabel FUN_800d23e8
/* C2BE8 800D23E8 E8FFBD27 */  addiu      $sp, $sp, -0x18
/* C2BEC 800D23EC 2080023C */  lui        $v0, %hi(D_801FBD10)
/* C2BF0 800D23F0 10BD4324 */  addiu      $v1, $v0, %lo(D_801FBD10)
/* C2BF4 800D23F4 1400BFAF */  sw         $ra, 0x14($sp)
/* C2BF8 800D23F8 1000B0AF */  sw         $s0, 0x10($sp)
/* C2BFC 800D23FC 4812648C */  lw         $a0, 0x1248($v1)
/* C2C00 800D2400 00000000 */  nop
/* C2C04 800D2404 08008014 */  bnez       $a0, .L800D2428
/* C2C08 800D2408 21804000 */   addu      $s0, $v0, $zero
/* C2C0C 800D240C 0F80043C */  lui        $a0, %hi(D_800EE744)
/* C2C10 800D2410 C2FA020C */  jal        FUN_800beb08
/* C2C14 800D2414 44E78424 */   addiu     $a0, $a0, %lo(D_800EE744)
/* C2C18 800D2418 04004104 */  bgez       $v0, .L800D242C
/* C2C1C 800D241C 01000424 */   addiu     $a0, $zero, 1
/* C2C20 800D2420 16490308 */  j          .L800D2458
/* C2C24 800D2424 FAFF0224 */   addiu     $v0, $zero, -6
.L800D2428:
/* C2C28 800D2428 01000424 */  addiu      $a0, $zero, 1
.L800D242C:
/* C2C2C 800D242C 10BD0326 */  addiu      $v1, $s0, -0x42f0
/* C2C30 800D2430 01000224 */  addiu      $v0, $zero, 1
/* C2C34 800D2434 481262AC */  sw         $v0, 0x1248($v1)
/* C2C38 800D2438 DF1160A0 */  sb         $zero, 0x11df($v1)
/* C2C3C 800D243C 1B3F030C */  jal        FUN_800cfc6c
/* C2C40 800D2440 00000000 */   nop
/* C2C44 800D2444 04004014 */  bnez       $v0, .L800D2458
/* C2C48 800D2448 481F033C */   lui       $v1, 0x1f48
/* C2C4C 800D244C A0000224 */  addiu      $v0, $zero, 0xa0
/* C2C50 800D2450 0C0062A0 */  sb         $v0, 0xc($v1)
/* C2C54 800D2454 21100000 */  addu       $v0, $zero, $zero
.L800D2458:
/* C2C58 800D2458 1400BF8F */  lw         $ra, 0x14($sp)
/* C2C5C 800D245C 1000B08F */  lw         $s0, 0x10($sp)
/* C2C60 800D2460 0800E003 */  jr         $ra
/* C2C64 800D2464 1800BD27 */   addiu     $sp, $sp, 0x18
