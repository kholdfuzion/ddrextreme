.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches


glabel FUN_800a6ca4
/* 974A4 800A6CA4 E0FFBD27 */  addiu      $sp, $sp, -0x20
/* 974A8 800A6CA8 1400B1AF */  sw         $s1, 0x14($sp)
/* 974AC 800A6CAC 21888000 */  addu       $s1, $a0, $zero
/* 974B0 800A6CB0 40101100 */  sll        $v0, $s1, 1
/* 974B4 800A6CB4 21105100 */  addu       $v0, $v0, $s1
/* 974B8 800A6CB8 80100200 */  sll        $v0, $v0, 2
/* 974BC 800A6CBC 23105100 */  subu       $v0, $v0, $s1
/* 974C0 800A6CC0 80100200 */  sll        $v0, $v0, 2
/* 974C4 800A6CC4 1B80033C */  lui        $v1, %hi(D_801B2EF0)
/* 974C8 800A6CC8 F02E6324 */  addiu      $v1, $v1, %lo(D_801B2EF0)
/* 974CC 800A6CCC 1000B0AF */  sw         $s0, 0x10($sp)
/* 974D0 800A6CD0 21804300 */  addu       $s0, $v0, $v1
/* 974D4 800A6CD4 1C00BFAF */  sw         $ra, 0x1c($sp)
/* 974D8 800A6CD8 1800B2AF */  sw         $s2, 0x18($sp)
/* 974DC 800A6CDC 1400048E */  lw         $a0, 0x14($s0)
/* 974E0 800A6CE0 00000000 */  nop
/* 974E4 800A6CE4 C2170400 */  srl        $v0, $a0, 0x1f
/* 974E8 800A6CE8 21108200 */  addu       $v0, $a0, $v0
/* 974EC 800A6CEC 43100200 */  sra        $v0, $v0, 1
/* 974F0 800A6CF0 40100200 */  sll        $v0, $v0, 1
/* 974F4 800A6CF4 23208200 */  subu       $a0, $a0, $v0
/* 974F8 800A6CF8 06008010 */  beqz       $a0, .L800A6D14
/* 974FC 800A6CFC FEFF1224 */   addiu     $s2, $zero, -2
/* 97500 800A6D00 01000224 */  addiu      $v0, $zero, 1
/* 97504 800A6D04 0E008210 */  beq        $a0, $v0, .L800A6D40
/* 97508 800A6D08 21202002 */   addu      $a0, $s1, $zero
/* 9750C 800A6D0C 5B9B0208 */  j          .L800A6D6C
/* 97510 800A6D10 00000000 */   nop
.L800A6D14:
/* 97514 800A6D14 21202002 */  addu       $a0, $s1, $zero
/* 97518 800A6D18 00020524 */  addiu      $a1, $zero, 0x200
/* 9751C 800A6D1C 3298020C */  jal        FUN_800a60c8
/* 97520 800A6D20 21300000 */   addu      $a2, $zero, $zero
/* 97524 800A6D24 21202002 */  addu       $a0, $s1, $zero
/* 97528 800A6D28 1C00068E */  lw         $a2, 0x1c($s0)
/* 9752C 800A6D2C 00010524 */  addiu      $a1, $zero, 0x100
/* 97530 800A6D30 3298020C */  jal        FUN_800a60c8
/* 97534 800A6D34 0100C630 */   andi      $a2, $a2, 1
/* 97538 800A6D38 5B9B0208 */  j          .L800A6D6C
/* 9753C 800A6D3C 00000000 */   nop
.L800A6D40:
/* 97540 800A6D40 00020524 */  addiu      $a1, $zero, 0x200
/* 97544 800A6D44 3298020C */  jal        FUN_800a60c8
/* 97548 800A6D48 01000624 */   addiu     $a2, $zero, 1
/* 9754C 800A6D4C 1C00028E */  lw         $v0, 0x1c($s0)
/* 97550 800A6D50 1800038E */  lw         $v1, 0x18($s0)
/* 97554 800A6D54 42100200 */  srl        $v0, $v0, 1
/* 97558 800A6D58 FFFF6324 */  addiu      $v1, $v1, -1
/* 9755C 800A6D5C 1C0002AE */  sw         $v0, 0x1c($s0)
/* 97560 800A6D60 0200601C */  bgtz       $v1, .L800A6D6C
/* 97564 800A6D64 180003AE */   sw        $v1, 0x18($s0)
/* 97568 800A6D68 21900000 */  addu       $s2, $zero, $zero
.L800A6D6C:
/* 9756C 800A6D6C 1400028E */  lw         $v0, 0x14($s0)
/* 97570 800A6D70 1C00BF8F */  lw         $ra, 0x1c($sp)
/* 97574 800A6D74 1400B18F */  lw         $s1, 0x14($sp)
/* 97578 800A6D78 01004224 */  addiu      $v0, $v0, 1
/* 9757C 800A6D7C 140002AE */  sw         $v0, 0x14($s0)
/* 97580 800A6D80 21104002 */  addu       $v0, $s2, $zero
/* 97584 800A6D84 1800B28F */  lw         $s2, 0x18($sp)
/* 97588 800A6D88 1000B08F */  lw         $s0, 0x10($sp)
/* 9758C 800A6D8C 0800E003 */  jr         $ra
/* 97590 800A6D90 2000BD27 */   addiu     $sp, $sp, 0x20
