.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches


glabel FUN_8004a430
/* 3AC30 8004A430 1380023C */  lui        $v0, %hi(D_80129DA8)
/* 3AC34 8004A434 A89D4224 */  addiu      $v0, $v0, %lo(D_80129DA8)
/* 3AC38 8004A438 460C4224 */  addiu      $v0, $v0, 0xc46
/* 3AC3C 8004A43C 01000324 */  addiu      $v1, $zero, 1
.L8004A440:
/* 3AC40 8004A440 FEFF40A4 */  sh         $zero, -2($v0)
/* 3AC44 8004A444 000040A4 */  sh         $zero, ($v0)
/* 3AC48 8004A448 FFFF6324 */  addiu      $v1, $v1, -1
/* 3AC4C 8004A44C FCFF6104 */  bgez       $v1, .L8004A440
/* 3AC50 8004A450 08004224 */   addiu     $v0, $v0, 8
/* 3AC54 8004A454 0800E003 */  jr         $ra
/* 3AC58 8004A458 00000000 */   nop
