.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches


glabel FUN_800c9908
/* BA108 800C9908 E8FFBD27 */  addiu      $sp, $sp, -0x18
/* BA10C 800C990C 1000B0AF */  sw         $s0, 0x10($sp)
/* BA110 800C9910 2080103C */  lui        $s0, %hi(D_801FB7F0)
/* BA114 800C9914 F0B7048E */  lw         $a0, %lo(D_801FB7F0)($s0)
/* BA118 800C9918 1400BFAF */  sw         $ra, 0x14($sp)
/* BA11C 800C991C 6208030C */  jal        FUN_800c2188
/* BA120 800C9920 F0B71026 */   addiu     $s0, $s0, -0x4810
/* BA124 800C9924 FFFF0224 */  addiu      $v0, $zero, -1
/* BA128 800C9928 040000AE */  sw         $zero, 4($s0)
/* BA12C 800C992C 080000AE */  sw         $zero, 8($s0)
/* BA130 800C9930 0C0002AE */  sw         $v0, 0xc($s0)
/* BA134 800C9934 1400BF8F */  lw         $ra, 0x14($sp)
/* BA138 800C9938 1000B08F */  lw         $s0, 0x10($sp)
/* BA13C 800C993C 0800E003 */  jr         $ra
/* BA140 800C9940 1800BD27 */   addiu     $sp, $sp, 0x18
