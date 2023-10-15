.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches


glabel func_8002E8D8
/* 1F0D8 8002E8D8 E8FFBD27 */  addiu      $sp, $sp, -0x18
/* 1F0DC 8002E8DC 1000B0AF */  sw         $s0, 0x10($sp)
/* 1F0E0 8002E8E0 0E80103C */  lui        $s0, %hi(D_800D8DF0)
/* 1F0E4 8002E8E4 F08D0296 */  lhu        $v0, %lo(D_800D8DF0)($s0)
/* 1F0E8 8002E8E8 00000000 */  nop
/* 1F0EC 8002E8EC 03004014 */  bnez       $v0, .L8002E8FC
/* 1F0F0 8002E8F0 1400BFAF */   sw        $ra, 0x14($sp)
/* 1F0F4 8002E8F4 4BBA0008 */  j          .L8002E92C
/* 1F0F8 8002E8F8 21100000 */   addu      $v0, $zero, $zero
.L8002E8FC:
/* 1F0FC 8002E8FC CD6B000C */  jal        VSync
/* 1F100 8002E900 01000424 */   addiu     $a0, $zero, 1
/* 1F104 8002E904 1580033C */  lui        $v1, %hi(D_8014CCA4)
/* 1F108 8002E908 A4CC6494 */  lhu        $a0, %lo(D_8014CCA4)($v1)
/* 1F10C 8002E90C 1580033C */  lui        $v1, %hi(D_8014CCA6)
/* 1F110 8002E910 23104400 */  subu       $v0, $v0, $a0
/* 1F114 8002E914 A6CC6494 */  lhu        $a0, %lo(D_8014CCA6)($v1)
/* 1F118 8002E918 FFFF4230 */  andi       $v0, $v0, 0xffff
/* 1F11C 8002E91C 2B104400 */  sltu       $v0, $v0, $a0
/* 1F120 8002E920 02004014 */  bnez       $v0, .L8002E92C
/* 1F124 8002E924 00000000 */   nop
/* 1F128 8002E928 F08D00A6 */  sh         $zero, -0x7210($s0)
.L8002E92C:
/* 1F12C 8002E92C 1400BF8F */  lw         $ra, 0x14($sp)
/* 1F130 8002E930 1000B08F */  lw         $s0, 0x10($sp)
/* 1F134 8002E934 0800E003 */  jr         $ra
/* 1F138 8002E938 1800BD27 */   addiu     $sp, $sp, 0x18
