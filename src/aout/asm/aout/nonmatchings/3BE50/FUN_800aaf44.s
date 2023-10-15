.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches


glabel FUN_800aaf44
/* 9B744 800AAF44 E8FFBD27 */  addiu      $sp, $sp, -0x18
/* 9B748 800AAF48 1000BFAF */  sw         $ra, 0x10($sp)
/* 9B74C 800AAF4C 84AC020C */  jal        FUN_800ab210
/* 9B750 800AAF50 21200000 */   addu      $a0, $zero, $zero
/* 9B754 800AAF54 03004104 */  bgez       $v0, .L800AAF64
/* 9B758 800AAF58 00000000 */   nop
/* 9B75C 800AAF5C F6AB020C */  jal        FUN_800aafd8
/* 9B760 800AAF60 00000000 */   nop
.L800AAF64:
/* 9B764 800AAF64 84AC020C */  jal        FUN_800ab210
/* 9B768 800AAF68 01000424 */   addiu     $a0, $zero, 1
/* 9B76C 800AAF6C 04004104 */  bgez       $v0, .L800AAF80
/* 9B770 800AAF70 1C80023C */   lui       $v0, 0x801c
/* 9B774 800AAF74 F6AB020C */  jal        FUN_800aafd8
/* 9B778 800AAF78 00000000 */   nop
/* 9B77C 800AAF7C 1C80023C */  lui        $v0, %hi(D_801C3E88)
.L800AAF80:
/* 9B780 800AAF80 883E4424 */  addiu      $a0, $v0, %lo(D_801C3E88)
/* 9B784 800AAF84 04008390 */  lbu        $v1, 4($a0)
/* 9B788 800AAF88 00000000 */  nop
/* 9B78C 800AAF8C 02006014 */  bnez       $v1, .L800AAF98
/* 9B790 800AAF90 07000224 */   addiu     $v0, $zero, 7
/* 9B794 800AAF94 050082A0 */  sb         $v0, 5($a0)
.L800AAF98:
/* 9B798 800AAF98 21A7020C */  jal        FUN_800a9c84
/* 9B79C 800AAF9C 00000000 */   nop
/* 9B7A0 800AAFA0 1000BF8F */  lw         $ra, 0x10($sp)
/* 9B7A4 800AAFA4 00000000 */  nop
/* 9B7A8 800AAFA8 0800E003 */  jr         $ra
/* 9B7AC 800AAFAC 1800BD27 */   addiu     $sp, $sp, 0x18
