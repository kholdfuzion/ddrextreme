.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches


glabel func_800D2468
/* C2C68 800D2468 E8FFBD27 */  addiu      $sp, $sp, -0x18
/* C2C6C 800D246C 2080023C */  lui        $v0, %hi(D_801FBD10)
/* C2C70 800D2470 10BD4324 */  addiu      $v1, $v0, %lo(D_801FBD10)
/* C2C74 800D2474 1400BFAF */  sw         $ra, 0x14($sp)
/* C2C78 800D2478 1000B0AF */  sw         $s0, 0x10($sp)
/* C2C7C 800D247C 4812648C */  lw         $a0, 0x1248($v1)
/* C2C80 800D2480 00000000 */  nop
/* C2C84 800D2484 08008014 */  bnez       $a0, .L800D24A8
/* C2C88 800D2488 21804000 */   addu      $s0, $v0, $zero
/* C2C8C 800D248C 0F80043C */  lui        $a0, %hi(D_800EE744)
/* C2C90 800D2490 C2FA020C */  jal        FUN_800beb08
/* C2C94 800D2494 44E78424 */   addiu     $a0, $a0, %lo(D_800EE744)
/* C2C98 800D2498 04004104 */  bgez       $v0, .L800D24AC
/* C2C9C 800D249C 21200000 */   addu      $a0, $zero, $zero
/* C2CA0 800D24A0 36490308 */  j          .L800D24D8
/* C2CA4 800D24A4 FAFF0224 */   addiu     $v0, $zero, -6
.L800D24A8:
/* C2CA8 800D24A8 21200000 */  addu       $a0, $zero, $zero
.L800D24AC:
/* C2CAC 800D24AC 10BD0326 */  addiu      $v1, $s0, -0x42f0
/* C2CB0 800D24B0 01000224 */  addiu      $v0, $zero, 1
/* C2CB4 800D24B4 481262AC */  sw         $v0, 0x1248($v1)
/* C2CB8 800D24B8 DF1160A0 */  sb         $zero, 0x11df($v1)
/* C2CBC 800D24BC 1B3F030C */  jal        FUN_800cfc6c
/* C2CC0 800D24C0 00000000 */   nop
/* C2CC4 800D24C4 04004014 */  bnez       $v0, .L800D24D8
/* C2CC8 800D24C8 481F033C */   lui       $v1, 0x1f48
/* C2CCC 800D24CC A0000224 */  addiu      $v0, $zero, 0xa0
/* C2CD0 800D24D0 0C0062A0 */  sb         $v0, 0xc($v1)
/* C2CD4 800D24D4 21100000 */  addu       $v0, $zero, $zero
.L800D24D8:
/* C2CD8 800D24D8 1400BF8F */  lw         $ra, 0x14($sp)
/* C2CDC 800D24DC 1000B08F */  lw         $s0, 0x10($sp)
/* C2CE0 800D24E0 0800E003 */  jr         $ra
/* C2CE4 800D24E4 1800BD27 */   addiu     $sp, $sp, 0x18
