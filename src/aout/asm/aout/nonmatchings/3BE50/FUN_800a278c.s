.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches


glabel FUN_800a278c
/* 92F8C 800A278C FFFF8224 */  addiu      $v0, $a0, -1
/* 92F90 800A2790 3F00422C */  sltiu      $v0, $v0, 0x3f
/* 92F94 800A2794 08004010 */  beqz       $v0, .L800A27B8
/* 92F98 800A2798 1B80023C */   lui       $v0, %hi(D_801B2B88)
/* 92F9C 800A279C 882B438C */  lw         $v1, %lo(D_801B2B88)($v0)
/* 92FA0 800A27A0 80200400 */  sll        $a0, $a0, 2
/* 92FA4 800A27A4 21186400 */  addu       $v1, $v1, $a0
/* 92FA8 800A27A8 0400628C */  lw         $v0, 4($v1)
/* 92FAC 800A27AC 00000000 */  nop
/* 92FB0 800A27B0 03004014 */  bnez       $v0, .L800A27C0
/* 92FB4 800A27B4 00000000 */   nop
.L800A27B8:
/* 92FB8 800A27B8 0800E003 */  jr         $ra
/* 92FBC 800A27BC 21100000 */   addu      $v0, $zero, $zero
.L800A27C0:
/* 92FC0 800A27C0 0400428C */  lw         $v0, 4($v0)
/* 92FC4 800A27C4 0800E003 */  jr         $ra
/* 92FC8 800A27C8 00000000 */   nop
