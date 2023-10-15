.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches


glabel FUN_800744d4
/* 64CD4 800744D4 21180000 */  addu       $v1, $zero, $zero
/* 64CD8 800744D8 1B80023C */  lui        $v0, %hi(D_801B0C98)
/* 64CDC 800744DC 980C4224 */  addiu      $v0, $v0, %lo(D_801B0C98)
/* 64CE0 800744E0 0C004424 */  addiu      $a0, $v0, 0xc
.L800744E4:
/* 64CE4 800744E4 0000828C */  lw         $v0, ($a0)
/* 64CE8 800744E8 00000000 */  nop
/* 64CEC 800744EC 07004010 */  beqz       $v0, .L8007450C
/* 64CF0 800744F0 21106000 */   addu      $v0, $v1, $zero
/* 64CF4 800744F4 01006324 */  addiu      $v1, $v1, 1
/* 64CF8 800744F8 08006228 */  slti       $v0, $v1, 8
/* 64CFC 800744FC F9FF4014 */  bnez       $v0, .L800744E4
/* 64D00 80074500 14008424 */   addiu     $a0, $a0, 0x14
/* 64D04 80074504 0800E003 */  jr         $ra
/* 64D08 80074508 FFFF0224 */   addiu     $v0, $zero, -1
.L8007450C:
/* 64D0C 8007450C 0800E003 */  jr         $ra
/* 64D10 80074510 00000000 */   nop
