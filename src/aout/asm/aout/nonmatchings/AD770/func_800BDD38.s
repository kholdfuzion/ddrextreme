.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches


glabel func_800BDD38
/* AE538 800BDD38 E0FFBD27 */  addiu      $sp, $sp, -0x20
/* AE53C 800BDD3C 1400B1AF */  sw         $s1, 0x14($sp)
/* AE540 800BDD40 21888000 */  addu       $s1, $a0, $zero
/* AE544 800BDD44 1000B0AF */  sw         $s0, 0x10($sp)
/* AE548 800BDD48 2180A000 */  addu       $s0, $a1, $zero
/* AE54C 800BDD4C 1800B2AF */  sw         $s2, 0x18($sp)
/* AE550 800BDD50 2190C000 */  addu       $s2, $a2, $zero
/* AE554 800BDD54 1C00BFAF */  sw         $ra, 0x1c($sp)
/* AE558 800BDD58 60F8020C */  jal        FUN_800be180
/* AE55C 800BDD5C 21200002 */   addu      $a0, $s0, $zero
/* AE560 800BDD60 0800401A */  blez       $s2, .L800BDD84
/* AE564 800BDD64 21180000 */   addu      $v1, $zero, $zero
.L800BDD68:
/* AE568 800BDD68 00000296 */  lhu        $v0, ($s0)
/* AE56C 800BDD6C 02001026 */  addiu      $s0, $s0, 2
/* AE570 800BDD70 01006324 */  addiu      $v1, $v1, 1
/* AE574 800BDD74 000022A6 */  sh         $v0, ($s1)
/* AE578 800BDD78 2A107200 */  slt        $v0, $v1, $s2
/* AE57C 800BDD7C FAFF4014 */  bnez       $v0, .L800BDD68
/* AE580 800BDD80 02003126 */   addiu     $s1, $s1, 2
.L800BDD84:
/* AE584 800BDD84 1C00BF8F */  lw         $ra, 0x1c($sp)
/* AE588 800BDD88 1800B28F */  lw         $s2, 0x18($sp)
/* AE58C 800BDD8C 1400B18F */  lw         $s1, 0x14($sp)
/* AE590 800BDD90 1000B08F */  lw         $s0, 0x10($sp)
/* AE594 800BDD94 21100000 */  addu       $v0, $zero, $zero
/* AE598 800BDD98 0800E003 */  jr         $ra
/* AE59C 800BDD9C 2000BD27 */   addiu     $sp, $sp, 0x20
