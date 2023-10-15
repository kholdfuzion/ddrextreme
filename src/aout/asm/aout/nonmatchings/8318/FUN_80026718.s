.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches


glabel FUN_80026718
/* 16F18 80026718 E0FFBD27 */  addiu      $sp, $sp, -0x20
/* 16F1C 8002671C 1800B0AF */  sw         $s0, 0x18($sp)
/* 16F20 80026720 0F80103C */  lui        $s0, %hi(D_800EFFA8)
/* 16F24 80026724 A8FF1026 */  addiu      $s0, $s0, %lo(D_800EFFA8)
/* 16F28 80026728 0F80033C */  lui        $v1, 0x800f
/* 16F2C 8002672C 04000224 */  addiu      $v0, $zero, 4
/* 16F30 80026730 21200000 */  addu       $a0, $zero, $zero
/* 16F34 80026734 1C00BFAF */  sw         $ra, 0x1c($sp)
/* 16F38 80026738 780000AE */  sw         $zero, 0x78($s0)
/* 16F3C 8002673C 6A19030C */  jal        FUN_800c65a8
/* 16F40 80026740 280062A4 */   sh        $v0, 0x28($v1)
/* 16F44 80026744 9FC2020C */  jal        FUN_800b0a7c
/* 16F48 80026748 00000000 */   nop
/* 16F4C 8002674C 1C00BF8F */  lw         $ra, 0x1c($sp)
/* 16F50 80026750 700000AE */  sw         $zero, 0x70($s0)
/* 16F54 80026754 1800B08F */  lw         $s0, 0x18($sp)
/* 16F58 80026758 0800E003 */  jr         $ra
/* 16F5C 8002675C 2000BD27 */   addiu     $sp, $sp, 0x20
