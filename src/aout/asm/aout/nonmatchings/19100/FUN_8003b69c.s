.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches


glabel FUN_8003b69c
/* 2BE9C 8003B69C E8FFBD27 */  addiu      $sp, $sp, -0x18
/* 2BEA0 8003B6A0 1000BFAF */  sw         $ra, 0x10($sp)
/* 2BEA4 8003B6A4 401F043C */  lui        $a0, 0x1f40
/* 2BEA8 8003B6A8 04008484 */  lh         $a0, 4($a0)
/* 2BEAC 8003B6AC 9AEC000C */  jal        SHOW_DIAG_DIPSW_8003b268
/* 2BEB0 8003B6B0 00000000 */   nop
/* 2BEB4 8003B6B4 35B3000C */  jal        FUN_8002ccd4
/* 2BEB8 8003B6B8 21200000 */   addu      $a0, $zero, $zero
/* 2BEBC 8003B6BC 1000BF8F */  lw         $ra, 0x10($sp)
/* 2BEC0 8003B6C0 2B100200 */  sltu       $v0, $zero, $v0
/* 2BEC4 8003B6C4 0800E003 */  jr         $ra
/* 2BEC8 8003B6C8 1800BD27 */   addiu     $sp, $sp, 0x18
