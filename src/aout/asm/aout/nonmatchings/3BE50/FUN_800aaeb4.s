.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches


glabel FUN_800aaeb4
/* 9B6B4 800AAEB4 E8FFBD27 */  addiu      $sp, $sp, -0x18
/* 9B6B8 800AAEB8 1000BFAF */  sw         $ra, 0x10($sp)
/* 9B6BC 800AAEBC 84AC020C */  jal        FUN_800ab210
/* 9B6C0 800AAEC0 21200000 */   addu      $a0, $zero, $zero
/* 9B6C4 800AAEC4 03004104 */  bgez       $v0, .L800AAED4
/* 9B6C8 800AAEC8 1C80033C */   lui       $v1, %hi(D_801C3E8D)
/* 9B6CC 800AAECC 07000224 */  addiu      $v0, $zero, 7
/* 9B6D0 800AAED0 8D3E62A0 */  sb         $v0, %lo(D_801C3E8D)($v1)
.L800AAED4:
/* 9B6D4 800AAED4 21A7020C */  jal        FUN_800a9c84
/* 9B6D8 800AAED8 00000000 */   nop
/* 9B6DC 800AAEDC 1000BF8F */  lw         $ra, 0x10($sp)
/* 9B6E0 800AAEE0 00000000 */  nop
/* 9B6E4 800AAEE4 0800E003 */  jr         $ra
/* 9B6E8 800AAEE8 1800BD27 */   addiu     $sp, $sp, 0x18
