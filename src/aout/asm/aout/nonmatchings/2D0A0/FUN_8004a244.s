.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches


glabel FUN_8004a244
/* 3AA44 8004A244 1380023C */  lui        $v0, %hi(D_80129DA8)
/* 3AA48 8004A248 A89D4224 */  addiu      $v0, $v0, %lo(D_80129DA8)
/* 3AA4C 8004A24C 460C4224 */  addiu      $v0, $v0, 0xc46
/* 3AA50 8004A250 01000324 */  addiu      $v1, $zero, 1
.L8004A254:
/* 3AA54 8004A254 FEFF40A4 */  sh         $zero, -2($v0)
/* 3AA58 8004A258 000040A4 */  sh         $zero, ($v0)
/* 3AA5C 8004A25C FFFF6324 */  addiu      $v1, $v1, -1
/* 3AA60 8004A260 FCFF6104 */  bgez       $v1, .L8004A254
/* 3AA64 8004A264 08004224 */   addiu     $v0, $v0, 8
/* 3AA68 8004A268 0800E003 */  jr         $ra
/* 3AA6C 8004A26C 00000000 */   nop
