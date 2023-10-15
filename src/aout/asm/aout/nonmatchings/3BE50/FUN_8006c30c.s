.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches


glabel FUN_8006c30c
/* 5CB0C 8006C30C 1380023C */  lui        $v0, %hi(D_80129DA8)
/* 5CB10 8006C310 A89D438C */  lw         $v1, %lo(D_80129DA8)($v0)
/* 5CB14 8006C314 40100400 */  sll        $v0, $a0, 1
/* 5CB18 8006C318 21104400 */  addu       $v0, $v0, $a0
/* 5CB1C 8006C31C 80100200 */  sll        $v0, $v0, 2
/* 5CB20 8006C320 23104400 */  subu       $v0, $v0, $a0
/* 5CB24 8006C324 80100200 */  sll        $v0, $v0, 2
/* 5CB28 8006C328 23104400 */  subu       $v0, $v0, $a0
/* 5CB2C 8006C32C 80100200 */  sll        $v0, $v0, 2
/* 5CB30 8006C330 21104400 */  addu       $v0, $v0, $a0
/* 5CB34 8006C334 80100200 */  sll        $v0, $v0, 2
/* 5CB38 8006C338 23104400 */  subu       $v0, $v0, $a0
/* 5CB3C 8006C33C 80100200 */  sll        $v0, $v0, 2
/* 5CB40 8006C340 80310300 */  sll        $a2, $v1, 6
/* 5CB44 8006C344 2130C300 */  addu       $a2, $a2, $v1
/* 5CB48 8006C348 80300600 */  sll        $a2, $a2, 2
/* 5CB4C 8006C34C 2330C300 */  subu       $a2, $a2, $v1
/* 5CB50 8006C350 C0300600 */  sll        $a2, $a2, 3
/* 5CB54 8006C354 2130C300 */  addu       $a2, $a2, $v1
/* 5CB58 8006C358 C0300600 */  sll        $a2, $a2, 3
/* 5CB5C 8006C35C 1A80033C */  lui        $v1, %hi(D_801A7800)
/* 5CB60 8006C360 00786324 */  addiu      $v1, $v1, %lo(D_801A7800)
/* 5CB64 8006C364 21104300 */  addu       $v0, $v0, $v1
/* 5CB68 8006C368 2130C200 */  addu       $a2, $a2, $v0
/* 5CB6C 8006C36C B60AC0A4 */  sh         $zero, 0xab6($a2)
/* 5CB70 8006C370 B80AC5A4 */  sh         $a1, 0xab8($a2)
/* 5CB74 8006C374 0800E003 */  jr         $ra
/* 5CB78 8006C378 B40AC0A4 */   sh        $zero, 0xab4($a2)
