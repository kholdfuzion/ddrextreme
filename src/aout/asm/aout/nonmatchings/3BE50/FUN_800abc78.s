.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches


glabel FUN_800abc78
/* 9C478 800ABC78 E8FFBD27 */  addiu      $sp, $sp, -0x18
/* 9C47C 800ABC7C 1000BFAF */  sw         $ra, 0x10($sp)
/* 9C480 800ABC80 6ED5000C */  jal        FUN_800355b8
/* 9C484 800ABC84 DF000524 */   addiu     $a1, $zero, 0xdf
/* 9C488 800ABC88 0180033C */  lui        $v1, %hi(D_80016DB4)
/* 9C48C 800ABC8C B46D6624 */  addiu      $a2, $v1, %lo(D_80016DB4)
/* 9C490 800ABC90 21204000 */  addu       $a0, $v0, $zero
/* 9C494 800ABC94 21280000 */  addu       $a1, $zero, $zero
.L800ABC98:
/* 9C498 800ABC98 0000C390 */  lbu        $v1, ($a2)
/* 9C49C 800ABC9C 00008290 */  lbu        $v0, ($a0)
/* 9C4A0 800ABCA0 00000000 */  nop
/* 9C4A4 800ABCA4 07006214 */  bne        $v1, $v0, .L800ABCC4
/* 9C4A8 800ABCA8 01000224 */   addiu     $v0, $zero, 1
/* 9C4AC 800ABCAC 0100C624 */  addiu      $a2, $a2, 1
/* 9C4B0 800ABCB0 0100A524 */  addiu      $a1, $a1, 1
/* 9C4B4 800ABCB4 1000A228 */  slti       $v0, $a1, 0x10
/* 9C4B8 800ABCB8 F7FF4014 */  bnez       $v0, .L800ABC98
/* 9C4BC 800ABCBC 01008424 */   addiu     $a0, $a0, 1
/* 9C4C0 800ABCC0 21100000 */  addu       $v0, $zero, $zero
.L800ABCC4:
/* 9C4C4 800ABCC4 1000BF8F */  lw         $ra, 0x10($sp)
/* 9C4C8 800ABCC8 00000000 */  nop
/* 9C4CC 800ABCCC 0800E003 */  jr         $ra
/* 9C4D0 800ABCD0 1800BD27 */   addiu     $sp, $sp, 0x18
