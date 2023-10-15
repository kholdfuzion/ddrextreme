.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches


glabel GsGetLw
/* 3B700 8004AF00 E0FFBD27 */  addiu      $sp, $sp, -0x20
/* 3B704 8004AF04 1800B2AF */  sw         $s2, 0x18($sp)
/* 3B708 8004AF08 2190A000 */  addu       $s2, $a1, $zero
/* 3B70C 8004AF0C 21388000 */  addu       $a3, $a0, $zero
/* 3B710 8004AF10 1400B1AF */  sw         $s1, 0x14($sp)
/* 3B714 8004AF14 21880000 */  addu       $s1, $zero, $zero
/* 3B718 8004AF18 64000524 */  addiu      $a1, $zero, 0x64
/* 3B71C 8004AF1C 1780063C */  lui        $a2, %hi(D_8016EE20)
/* 3B720 8004AF20 20EEC624 */  addiu      $a2, $a2, %lo(D_8016EE20)
/* 3B724 8004AF24 64000824 */  addiu      $t0, $zero, 0x64
/* 3B728 8004AF28 1C00BFAF */  sw         $ra, 0x1c($sp)
/* 3B72C 8004AF2C 1000B0AF */  sw         $s0, 0x10($sp)
