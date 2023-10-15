.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches


glabel FUN_800c9e28
/* BA628 800C9E28 E0FFBD27 */  addiu      $sp, $sp, -0x20
/* BA62C 800C9E2C 1000B0AF */  sw         $s0, 0x10($sp)
/* BA630 800C9E30 21808000 */  addu       $s0, $a0, $zero
/* BA634 800C9E34 1400B1AF */  sw         $s1, 0x14($sp)
/* BA638 800C9E38 1800BFAF */  sw         $ra, 0x18($sp)
/* BA63C 800C9E3C A509030C */  jal        FUN_800c2694
/* BA640 800C9E40 2188A000 */   addu      $s1, $a1, $zero
/* BA644 800C9E44 21200002 */  addu       $a0, $s0, $zero
/* BA648 800C9E48 01000224 */  addiu      $v0, $zero, 1
/* BA64C 800C9E4C 1A0082A0 */  sb         $v0, 0x1a($a0)
/* BA650 800C9E50 02000224 */  addiu      $v0, $zero, 2
/* BA654 800C9E54 2A0082A0 */  sb         $v0, 0x2a($a0)
/* BA658 800C9E58 71000224 */  addiu      $v0, $zero, 0x71
/* BA65C 800C9E5C 21282002 */  addu       $a1, $s1, $zero
/* BA660 800C9E60 21300000 */  addu       $a2, $zero, $zero
/* BA664 800C9E64 0C00838C */  lw         $v1, 0xc($a0)
/* BA668 800C9E68 09000724 */  addiu      $a3, $zero, 9
/* BA66C 800C9E6C B209030C */  jal        FUN_800c26c8
/* BA670 800C9E70 000062A0 */   sb        $v0, ($v1)
/* BA674 800C9E74 1800BF8F */  lw         $ra, 0x18($sp)
/* BA678 800C9E78 1400B18F */  lw         $s1, 0x14($sp)
/* BA67C 800C9E7C 1000B08F */  lw         $s0, 0x10($sp)
/* BA680 800C9E80 0800E003 */  jr         $ra
/* BA684 800C9E84 2000BD27 */   addiu     $sp, $sp, 0x20
