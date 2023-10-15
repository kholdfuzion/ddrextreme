.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches


glabel FUN_8006c454
/* 5CC54 8006C454 1380023C */  lui        $v0, %hi(D_80129DA8)
/* 5CC58 8006C458 A89D438C */  lw         $v1, %lo(D_80129DA8)($v0)
/* 5CC5C 8006C45C 2130A000 */  addu       $a2, $a1, $zero
/* 5CC60 8006C460 40100400 */  sll        $v0, $a0, 1
/* 5CC64 8006C464 21104400 */  addu       $v0, $v0, $a0
/* 5CC68 8006C468 80100200 */  sll        $v0, $v0, 2
/* 5CC6C 8006C46C 23104400 */  subu       $v0, $v0, $a0
/* 5CC70 8006C470 80100200 */  sll        $v0, $v0, 2
/* 5CC74 8006C474 23104400 */  subu       $v0, $v0, $a0
/* 5CC78 8006C478 80100200 */  sll        $v0, $v0, 2
/* 5CC7C 8006C47C 21104400 */  addu       $v0, $v0, $a0
/* 5CC80 8006C480 80100200 */  sll        $v0, $v0, 2
/* 5CC84 8006C484 23104400 */  subu       $v0, $v0, $a0
/* 5CC88 8006C488 80100200 */  sll        $v0, $v0, 2
/* 5CC8C 8006C48C 80290300 */  sll        $a1, $v1, 6
/* 5CC90 8006C490 2128A300 */  addu       $a1, $a1, $v1
/* 5CC94 8006C494 80280500 */  sll        $a1, $a1, 2
/* 5CC98 8006C498 2328A300 */  subu       $a1, $a1, $v1
/* 5CC9C 8006C49C C0280500 */  sll        $a1, $a1, 3
/* 5CCA0 8006C4A0 2128A300 */  addu       $a1, $a1, $v1
/* 5CCA4 8006C4A4 C0280500 */  sll        $a1, $a1, 3
/* 5CCA8 8006C4A8 1A80033C */  lui        $v1, %hi(D_801A7800)
/* 5CCAC 8006C4AC 00786324 */  addiu      $v1, $v1, %lo(D_801A7800)
/* 5CCB0 8006C4B0 21104300 */  addu       $v0, $v0, $v1
/* 5CCB4 8006C4B4 0200C004 */  bltz       $a2, .L8006C4C0
/* 5CCB8 8006C4B8 2128A200 */   addu      $a1, $a1, $v0
/* 5CCBC 8006C4BC B40AA6A4 */  sh         $a2, 0xab4($a1)
.L8006C4C0:
/* 5CCC0 8006C4C0 B40AA284 */  lh         $v0, 0xab4($a1)
/* 5CCC4 8006C4C4 0800E003 */  jr         $ra
/* 5CCC8 8006C4C8 00000000 */   nop
