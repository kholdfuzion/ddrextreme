.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches


glabel FUN_800a9990
/* 9A190 800A9990 E8FFBD27 */  addiu      $sp, $sp, -0x18
/* 9A194 800A9994 1000B0AF */  sw         $s0, 0x10($sp)
/* 9A198 800A9998 0F80103C */  lui        $s0, %hi(D_800EC6F0)
/* 9A19C 800A999C F0C6028E */  lw         $v0, %lo(D_800EC6F0)($s0)
/* 9A1A0 800A99A0 00000000 */  nop
/* 9A1A4 800A99A4 0A004014 */  bnez       $v0, .L800A99D0
/* 9A1A8 800A99A8 1400BFAF */   sw        $ra, 0x14($sp)
/* 9A1AC 800A99AC D1C1020C */  jal        FUN_800b0744
/* 9A1B0 800A99B0 00000000 */   nop
/* 9A1B4 800A99B4 0F80033C */  lui        $v1, %hi(D_800EC6F4)
/* 9A1B8 800A99B8 FFFF0424 */  addiu      $a0, $zero, -1
/* 9A1BC 800A99BC 03004410 */  beq        $v0, $a0, .L800A99CC
/* 9A1C0 800A99C0 F4C662AC */   sw        $v0, %lo(D_800EC6F4)($v1)
/* 9A1C4 800A99C4 01000224 */  addiu      $v0, $zero, 1
/* 9A1C8 800A99C8 F0C602AE */  sw         $v0, -0x3910($s0)
.L800A99CC:
/* 9A1CC 800A99CC 21100000 */  addu       $v0, $zero, $zero
.L800A99D0:
/* 9A1D0 800A99D0 1400BF8F */  lw         $ra, 0x14($sp)
/* 9A1D4 800A99D4 1000B08F */  lw         $s0, 0x10($sp)
/* 9A1D8 800A99D8 0800E003 */  jr         $ra
/* 9A1DC 800A99DC 1800BD27 */   addiu     $sp, $sp, 0x18
