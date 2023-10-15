.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches


glabel FUN_800a3538
/* 93D38 800A3538 E8FFBD27 */  addiu      $sp, $sp, -0x18
/* 93D3C 800A353C 1000B0AF */  sw         $s0, 0x10($sp)
/* 93D40 800A3540 1B80103C */  lui        $s0, %hi(D_801B2EA0)
/* 93D44 800A3544 A02E1026 */  addiu      $s0, $s0, %lo(D_801B2EA0)
/* 93D48 800A3548 1400BFAF */  sw         $ra, 0x14($sp)
/* 93D4C 800A354C 5493020C */  jal        FUN_800a4d50
/* 93D50 800A3550 21200002 */   addu      $a0, $s0, $zero
/* 93D54 800A3554 2496020C */  jal        FUN_800a5890
/* 93D58 800A3558 21200002 */   addu      $a0, $s0, $zero
/* 93D5C 800A355C 5D96020C */  jal        FUN_800a5974
/* 93D60 800A3560 21200002 */   addu      $a0, $s0, $zero
/* 93D64 800A3564 6CD5010C */  jal        FUN_800755b0
/* 93D68 800A3568 00000000 */   nop
/* 93D6C 800A356C 5F86020C */  jal        FUN_800a197c
/* 93D70 800A3570 00000000 */   nop
/* 93D74 800A3574 1400BF8F */  lw         $ra, 0x14($sp)
/* 93D78 800A3578 1000B08F */  lw         $s0, 0x10($sp)
/* 93D7C 800A357C 0800E003 */  jr         $ra
/* 93D80 800A3580 1800BD27 */   addiu     $sp, $sp, 0x18
