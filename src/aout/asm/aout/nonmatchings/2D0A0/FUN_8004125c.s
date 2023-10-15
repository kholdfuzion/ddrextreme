.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches


glabel FUN_8004125c
/* 31A5C 8004125C E0FFBD27 */  addiu      $sp, $sp, -0x20
/* 31A60 80041260 1400B1AF */  sw         $s1, 0x14($sp)
/* 31A64 80041264 21880000 */  addu       $s1, $zero, $zero
/* 31A68 80041268 1000B0AF */  sw         $s0, 0x10($sp)
/* 31A6C 8004126C 21808000 */  addu       $s0, $a0, $zero
/* 31A70 80041270 82261000 */  srl        $a0, $s0, 0x1a
/* 31A74 80041274 1800B2AF */  sw         $s2, 0x18($sp)
/* 31A78 80041278 1C00BFAF */  sw         $ra, 0x1c($sp)
/* 31A7C 8004127C 57F0020C */  jal        FUN_800bc15c
/* 31A80 80041280 2190A000 */   addu      $s2, $a1, $zero
/* 31A84 80041284 82251000 */  srl        $a0, $s0, 0x16
/* 31A88 80041288 34F0020C */  jal        FUN_800bc0d0
/* 31A8C 8004128C 0F008430 */   andi      $a0, $a0, 0xf
/* 31A90 80041290 3F00023C */  lui        $v0, 0x3f
/* 31A94 80041294 FFFF4234 */  ori        $v0, $v0, 0xffff
/* 31A98 80041298 0200032E */  sltiu      $v1, $s0, 2
/* 31A9C 8004129C 40210300 */  sll        $a0, $v1, 5
/* 31AA0 800412A0 24800202 */  and        $s0, $s0, $v0
/* 31AA4 800412A4 001F033C */  lui        $v1, 0x1f00
/* 31AA8 800412A8 2A109200 */  slt        $v0, $a0, $s2
/* 31AAC 800412AC 07004010 */  beqz       $v0, .L800412CC
/* 31AB0 800412B0 21800302 */   addu      $s0, $s0, $v1
.L800412B4:
/* 31AB4 800412B4 21100402 */  addu       $v0, $s0, $a0
/* 31AB8 800412B8 00004390 */  lbu        $v1, ($v0)
/* 31ABC 800412BC 02008424 */  addiu      $a0, $a0, 2
/* 31AC0 800412C0 2A109200 */  slt        $v0, $a0, $s2
/* 31AC4 800412C4 FBFF4014 */  bnez       $v0, .L800412B4
/* 31AC8 800412C8 21882302 */   addu      $s1, $s1, $v1
.L800412CC:
/* 31ACC 800412CC FFFF0234 */  ori        $v0, $zero, 0xffff
/* 31AD0 800412D0 2B105100 */  sltu       $v0, $v0, $s1
/* 31AD4 800412D4 09004010 */  beqz       $v0, .L800412FC
/* 31AD8 800412D8 FFFF2232 */   andi      $v0, $s1, 0xffff
/* 31ADC 800412DC FFFF0534 */  ori        $a1, $zero, 0xffff
/* 31AE0 800412E0 FFFF2232 */  andi       $v0, $s1, 0xffff
.L800412E4:
/* 31AE4 800412E4 021C1100 */  srl        $v1, $s1, 0x10
/* 31AE8 800412E8 21884300 */  addu       $s1, $v0, $v1
/* 31AEC 800412EC 2B20B100 */  sltu       $a0, $a1, $s1
/* 31AF0 800412F0 FCFF8014 */  bnez       $a0, .L800412E4
/* 31AF4 800412F4 FFFF2232 */   andi      $v0, $s1, 0xffff
/* 31AF8 800412F8 FFFF2232 */  andi       $v0, $s1, 0xffff
.L800412FC:
/* 31AFC 800412FC 1C00BF8F */  lw         $ra, 0x1c($sp)
/* 31B00 80041300 1800B28F */  lw         $s2, 0x18($sp)
/* 31B04 80041304 1400B18F */  lw         $s1, 0x14($sp)
/* 31B08 80041308 1000B08F */  lw         $s0, 0x10($sp)
/* 31B0C 8004130C 0800E003 */  jr         $ra
/* 31B10 80041310 2000BD27 */   addiu     $sp, $sp, 0x20
