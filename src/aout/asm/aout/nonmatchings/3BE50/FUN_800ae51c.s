.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches


glabel FUN_800ae51c
/* 9ED1C 800AE51C E8FFBD27 */  addiu      $sp, $sp, -0x18
/* 9ED20 800AE520 1000B0AF */  sw         $s0, 0x10($sp)
/* 9ED24 800AE524 1C80103C */  lui        $s0, %hi(D_801C4658)
/* 9ED28 800AE528 58461026 */  addiu      $s0, $s0, %lo(D_801C4658)
/* 9ED2C 800AE52C 1400BFAF */  sw         $ra, 0x14($sp)
/* 9ED30 800AE530 090000A2 */  sb         $zero, 9($s0)
/* 9ED34 800AE534 D8B2020C */  jal        FUN_800acb60
/* 9ED38 800AE538 100000AE */   sw        $zero, 0x10($s0)
/* 9ED3C 800AE53C 08000724 */  addiu      $a3, $zero, 8
/* 9ED40 800AE540 09000624 */  addiu      $a2, $zero, 9
/* 9ED44 800AE544 11000524 */  addiu      $a1, $zero, 0x11
/* 9ED48 800AE548 14000424 */  addiu      $a0, $zero, 0x14
/* 9ED4C 800AE54C 0B001026 */  addiu      $s0, $s0, 0xb
/* 9ED50 800AE550 01000324 */  addiu      $v1, $zero, 1
.L800AE554:
/* 9ED54 800AE554 00000292 */  lbu        $v0, ($s0)
/* 9ED58 800AE558 00000000 */  nop
/* 9ED5C 800AE55C 03004714 */  bne        $v0, $a3, .L800AE56C
/* 9ED60 800AE560 00000000 */   nop
/* 9ED64 800AE564 5EB90208 */  j          .L800AE578
/* 9ED68 800AE568 000006A2 */   sb        $a2, ($s0)
.L800AE56C:
/* 9ED6C 800AE56C 02004510 */  beq        $v0, $a1, .L800AE578
/* 9ED70 800AE570 00000000 */   nop
/* 9ED74 800AE574 000004A2 */  sb         $a0, ($s0)
.L800AE578:
/* 9ED78 800AE578 FFFF6324 */  addiu      $v1, $v1, -1
/* 9ED7C 800AE57C F5FF6104 */  bgez       $v1, .L800AE554
/* 9ED80 800AE580 01001026 */   addiu     $s0, $s0, 1
/* 9ED84 800AE584 1400BF8F */  lw         $ra, 0x14($sp)
/* 9ED88 800AE588 1000B08F */  lw         $s0, 0x10($sp)
/* 9ED8C 800AE58C 0800E003 */  jr         $ra
/* 9ED90 800AE590 1800BD27 */   addiu     $sp, $sp, 0x18
