.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches


glabel func_8002639C
/* 16B9C 8002639C E8FFBD27 */  addiu      $sp, $sp, -0x18
/* 16BA0 800263A0 0F80023C */  lui        $v0, %hi(D_800EFFA8)
/* 16BA4 800263A4 1000B0AF */  sw         $s0, 0x10($sp)
/* 16BA8 800263A8 A8FF5024 */  addiu      $s0, $v0, %lo(D_800EFFA8)
/* 16BAC 800263AC 1400BFAF */  sw         $ra, 0x14($sp)
/* 16BB0 800263B0 7800058E */  lw         $a1, 0x78($s0)
/* 16BB4 800263B4 00000000 */  nop
/* 16BB8 800263B8 80100500 */  sll        $v0, $a1, 2
/* 16BBC 800263BC 21104500 */  addu       $v0, $v0, $a1
/* 16BC0 800263C0 DF00A328 */  slti       $v1, $a1, 0xdf
/* 16BC4 800263C4 04006014 */  bnez       $v1, .L800263D8
/* 16BC8 800263C8 40200200 */   sll       $a0, $v0, 1
/* 16BCC 800263CC EE000224 */  addiu      $v0, $zero, 0xee
/* 16BD0 800263D0 23104500 */  subu       $v0, $v0, $a1
/* 16BD4 800263D4 C0200200 */  sll        $a0, $v0, 3
.L800263D8:
/* 16BD8 800263D8 03008104 */  bgez       $a0, .L800263E8
/* 16BDC 800263DC 81008228 */   slti      $v0, $a0, 0x81
/* 16BE0 800263E0 21200000 */  addu       $a0, $zero, $zero
/* 16BE4 800263E4 81008228 */  slti       $v0, $a0, 0x81
.L800263E8:
/* 16BE8 800263E8 02004014 */  bnez       $v0, .L800263F4
/* 16BEC 800263EC 00000000 */   nop
/* 16BF0 800263F0 80000424 */  addiu      $a0, $zero, 0x80
.L800263F4:
/* 16BF4 800263F4 7B55010C */  jal        FUN_800555ec
/* 16BF8 800263F8 00000000 */   nop
/* 16BFC 800263FC 7800028E */  lw         $v0, 0x78($s0)
/* 16C00 80026400 1400BF8F */  lw         $ra, 0x14($sp)
/* 16C04 80026404 1000B08F */  lw         $s0, 0x10($sp)
/* 16C08 80026408 F1004228 */  slti       $v0, $v0, 0xf1
/* 16C0C 8002640C 01004238 */  xori       $v0, $v0, 1
/* 16C10 80026410 0800E003 */  jr         $ra
/* 16C14 80026414 1800BD27 */   addiu     $sp, $sp, 0x18
