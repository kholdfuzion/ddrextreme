.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches


glabel FUN_8006c4cc
/* 5CCCC 8006C4CC 1380023C */  lui        $v0, %hi(D_80129DA8)
/* 5CCD0 8006C4D0 A89D438C */  lw         $v1, %lo(D_80129DA8)($v0)
/* 5CCD4 8006C4D4 2130A000 */  addu       $a2, $a1, $zero
/* 5CCD8 8006C4D8 40100400 */  sll        $v0, $a0, 1
/* 5CCDC 8006C4DC 21104400 */  addu       $v0, $v0, $a0
/* 5CCE0 8006C4E0 80100200 */  sll        $v0, $v0, 2
/* 5CCE4 8006C4E4 23104400 */  subu       $v0, $v0, $a0
/* 5CCE8 8006C4E8 80100200 */  sll        $v0, $v0, 2
/* 5CCEC 8006C4EC 23104400 */  subu       $v0, $v0, $a0
/* 5CCF0 8006C4F0 80100200 */  sll        $v0, $v0, 2
/* 5CCF4 8006C4F4 21104400 */  addu       $v0, $v0, $a0
/* 5CCF8 8006C4F8 80100200 */  sll        $v0, $v0, 2
/* 5CCFC 8006C4FC 23104400 */  subu       $v0, $v0, $a0
/* 5CD00 8006C500 80100200 */  sll        $v0, $v0, 2
/* 5CD04 8006C504 80290300 */  sll        $a1, $v1, 6
/* 5CD08 8006C508 2128A300 */  addu       $a1, $a1, $v1
/* 5CD0C 8006C50C 80280500 */  sll        $a1, $a1, 2
/* 5CD10 8006C510 2328A300 */  subu       $a1, $a1, $v1
/* 5CD14 8006C514 C0280500 */  sll        $a1, $a1, 3
/* 5CD18 8006C518 2128A300 */  addu       $a1, $a1, $v1
/* 5CD1C 8006C51C C0280500 */  sll        $a1, $a1, 3
/* 5CD20 8006C520 1A80033C */  lui        $v1, %hi(D_801A7800)
/* 5CD24 8006C524 00786324 */  addiu      $v1, $v1, %lo(D_801A7800)
/* 5CD28 8006C528 21104300 */  addu       $v0, $v0, $v1
/* 5CD2C 8006C52C 0200C004 */  bltz       $a2, .L8006C538
/* 5CD30 8006C530 2128A200 */   addu      $a1, $a1, $v0
/* 5CD34 8006C534 B60AA6A4 */  sh         $a2, 0xab6($a1)
.L8006C538:
/* 5CD38 8006C538 B60AA284 */  lh         $v0, 0xab6($a1)
/* 5CD3C 8006C53C 0800E003 */  jr         $ra
/* 5CD40 8006C540 00000000 */   nop
