.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches


glabel FUN_800a94f4
/* 99CF4 800A94F4 E0FFBD27 */  addiu      $sp, $sp, -0x20
/* 99CF8 800A94F8 1400B1AF */  sw         $s1, 0x14($sp)
/* 99CFC 800A94FC 21888000 */  addu       $s1, $a0, $zero
/* 99D00 800A9500 1000B0AF */  sw         $s0, 0x10($sp)
/* 99D04 800A9504 21800000 */  addu       $s0, $zero, $zero
/* 99D08 800A9508 1800BFAF */  sw         $ra, 0x18($sp)
.L800A950C:
/* 99D0C 800A950C 1BA2020C */  jal        FUN_800a886c
/* 99D10 800A9510 21200002 */   addu      $a0, $s0, $zero
/* 99D14 800A9514 21184000 */  addu       $v1, $v0, $zero
/* 99D18 800A9518 07006010 */  beqz       $v1, .L800A9538
/* 99D1C 800A951C 00000000 */   nop
/* 99D20 800A9520 14006294 */  lhu        $v0, 0x14($v1)
/* 99D24 800A9524 00000000 */  nop
/* 99D28 800A9528 04005114 */  bne        $v0, $s1, .L800A953C
/* 99D2C 800A952C 01001026 */   addiu     $s0, $s0, 1
/* 99D30 800A9530 53A50208 */  j          .L800A954C
/* 99D34 800A9534 21106000 */   addu      $v0, $v1, $zero
.L800A9538:
/* 99D38 800A9538 01001026 */  addiu      $s0, $s0, 1
.L800A953C:
/* 99D3C 800A953C F900022A */  slti       $v0, $s0, 0xf9
/* 99D40 800A9540 F2FF4014 */  bnez       $v0, .L800A950C
/* 99D44 800A9544 0180023C */   lui       $v0, %hi(D_80016CD8)
/* 99D48 800A9548 D86C4224 */  addiu      $v0, $v0, %lo(D_80016CD8)
.L800A954C:
/* 99D4C 800A954C 1800BF8F */  lw         $ra, 0x18($sp)
/* 99D50 800A9550 1400B18F */  lw         $s1, 0x14($sp)
/* 99D54 800A9554 1000B08F */  lw         $s0, 0x10($sp)
/* 99D58 800A9558 0800E003 */  jr         $ra
/* 99D5C 800A955C 2000BD27 */   addiu     $sp, $sp, 0x20
