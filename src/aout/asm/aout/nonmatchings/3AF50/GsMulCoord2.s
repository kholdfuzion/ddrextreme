.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches


glabel GsMulCoord2
/* 3B4F0 8004ACF0 D0FFBD27 */  addiu      $sp, $sp, -0x30
/* 3B4F4 8004ACF4 2000B0AF */  sw         $s0, 0x20($sp)
/* 3B4F8 8004ACF8 21808000 */  addu       $s0, $a0, $zero
/* 3B4FC 8004ACFC 2400B1AF */  sw         $s1, 0x24($sp)
/* 3B500 8004AD00 2188A000 */  addu       $s1, $a1, $zero
/* 3B504 8004AD04 14002526 */  addiu      $a1, $s1, 0x14
/* 3B508 8004AD08 2800BFAF */  sw         $ra, 0x28($sp)
/* 3B50C 8004AD0C 902C010C */  jal        ApplyMatrixLV
/* 3B510 8004AD10 1000A627 */   addiu     $a2, $sp, 0x10
/* 3B514 8004AD14 21200002 */  addu       $a0, $s0, $zero
/* 3B518 8004AD18 2C2D010C */  jal        MulMatrix2
/* 3B51C 8004AD1C 21282002 */   addu      $a1, $s1, $zero
/* 3B520 8004AD20 1000A28F */  lw         $v0, 0x10($sp)
/* 3B524 8004AD24 1400038E */  lw         $v1, 0x14($s0)
/* 3B528 8004AD28 00000000 */  nop
/* 3B52C 8004AD2C 21104300 */  addu       $v0, $v0, $v1
/* 3B530 8004AD30 140022AE */  sw         $v0, 0x14($s1)
/* 3B534 8004AD34 1400A28F */  lw         $v0, 0x14($sp)
/* 3B538 8004AD38 1800038E */  lw         $v1, 0x18($s0)
/* 3B53C 8004AD3C 00000000 */  nop
/* 3B540 8004AD40 21104300 */  addu       $v0, $v0, $v1
/* 3B544 8004AD44 180022AE */  sw         $v0, 0x18($s1)
/* 3B548 8004AD48 1800A28F */  lw         $v0, 0x18($sp)
/* 3B54C 8004AD4C 1C00038E */  lw         $v1, 0x1c($s0)
/* 3B550 8004AD50 00000000 */  nop
/* 3B554 8004AD54 21104300 */  addu       $v0, $v0, $v1
/* 3B558 8004AD58 1C0022AE */  sw         $v0, 0x1c($s1)
/* 3B55C 8004AD5C 2800BF8F */  lw         $ra, 0x28($sp)
/* 3B560 8004AD60 2400B18F */  lw         $s1, 0x24($sp)
/* 3B564 8004AD64 2000B08F */  lw         $s0, 0x20($sp)
/* 3B568 8004AD68 0800E003 */  jr         $ra
/* 3B56C 8004AD6C 3000BD27 */   addiu     $sp, $sp, 0x30
