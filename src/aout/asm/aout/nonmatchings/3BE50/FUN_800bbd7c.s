.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches


glabel FUN_800bbd7c
/* AC57C 800BBD7C E0FFBD27 */  addiu      $sp, $sp, -0x20
/* AC580 800BBD80 1000B0AF */  sw         $s0, 0x10($sp)
/* AC584 800BBD84 21808000 */  addu       $s0, $a0, $zero
/* AC588 800BBD88 1400B1AF */  sw         $s1, 0x14($sp)
/* AC58C 800BBD8C 1800BFAF */  sw         $ra, 0x18($sp)
/* AC590 800BBD90 1D6E000C */  jal        FUN_8001b874
/* AC594 800BBD94 2188A000 */   addu      $s1, $a1, $zero
/* AC598 800BBD98 1E80023C */  lui        $v0, %hi(D_801E1798)
/* AC59C 800BBD9C 401F033C */  lui        $v1, 0x1f40
/* AC5A0 800BBDA0 981750A4 */  sh         $s0, %lo(D_801E1798)($v0)
/* AC5A4 800BBDA4 1E80023C */  lui        $v0, %hi(D_801E179A)
/* AC5A8 800BBDA8 000070A4 */  sh         $s0, ($v1)
/* AC5AC 800BBDAC 9A1751A4 */  sh         $s1, %lo(D_801E179A)($v0)
/* AC5B0 800BBDB0 000071A4 */  sh         $s1, ($v1)
/* AC5B4 800BBDB4 216E000C */  jal        FUN_8001b884
/* AC5B8 800BBDB8 00000000 */   nop
/* AC5BC 800BBDBC 1800BF8F */  lw         $ra, 0x18($sp)
/* AC5C0 800BBDC0 1400B18F */  lw         $s1, 0x14($sp)
/* AC5C4 800BBDC4 1000B08F */  lw         $s0, 0x10($sp)
/* AC5C8 800BBDC8 0800E003 */  jr         $ra
/* AC5CC 800BBDCC 2000BD27 */   addiu     $sp, $sp, 0x20
