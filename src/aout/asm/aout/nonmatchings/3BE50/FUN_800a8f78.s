.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches


glabel FUN_800a8f78
/* 99778 800A8F78 05008228 */  slti       $v0, $a0, 5
/* 9977C 800A8F7C 03004014 */  bnez       $v0, .L800A8F8C
/* 99780 800A8F80 FFFF0324 */   addiu     $v1, $zero, -1
/* 99784 800A8F84 0800E003 */  jr         $ra
/* 99788 800A8F88 FFFF0224 */   addiu     $v0, $zero, -1
.L800A8F8C:
/* 9978C 800A8F8C 0500822C */  sltiu      $v0, $a0, 5
/* 99790 800A8F90 09004010 */  beqz       $v0, .L800A8FB8
/* 99794 800A8F94 0180023C */   lui       $v0, %hi(D_80016C90)
/* 99798 800A8F98 906C4224 */  addiu      $v0, $v0, %lo(D_80016C90)
/* 9979C 800A8F9C 80180400 */  sll        $v1, $a0, 2
/* 997A0 800A8FA0 21186200 */  addu       $v1, $v1, $v0
/* 997A4 800A8FA4 0000648C */  lw         $a0, ($v1)
/* 997A8 800A8FA8 00000000 */  nop
/* 997AC 800A8FAC 08008000 */  jr         $a0
/* 997B0 800A8FB0 00000000 */   nop
/* 997B4 800A8FB4 21180000 */  addu       $v1, $zero, $zero
.L800A8FB8:
/* 997B8 800A8FB8 0800E003 */  jr         $ra
/* 997BC 800A8FBC 21106000 */   addu      $v0, $v1, $zero
