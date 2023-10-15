.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches


glabel func_8005AD18
/* 4B518 8005AD18 1380023C */  lui        $v0, %hi(D_80129DA8)
/* 4B51C 8005AD1C A89D438C */  lw         $v1, %lo(D_80129DA8)($v0)
/* 4B520 8005AD20 2130A000 */  addu       $a2, $a1, $zero
/* 4B524 8005AD24 80100400 */  sll        $v0, $a0, 2
/* 4B528 8005AD28 21104400 */  addu       $v0, $v0, $a0
/* 4B52C 8005AD2C C0100200 */  sll        $v0, $v0, 3
/* 4B530 8005AD30 21104400 */  addu       $v0, $v0, $a0
/* 4B534 8005AD34 C0100200 */  sll        $v0, $v0, 3
/* 4B538 8005AD38 23104400 */  subu       $v0, $v0, $a0
/* 4B53C 8005AD3C 80100200 */  sll        $v0, $v0, 2
/* 4B540 8005AD40 21104400 */  addu       $v0, $v0, $a0
/* 4B544 8005AD44 C0100200 */  sll        $v0, $v0, 3
/* 4B548 8005AD48 40280300 */  sll        $a1, $v1, 1
/* 4B54C 8005AD4C 2128A300 */  addu       $a1, $a1, $v1
/* 4B550 8005AD50 C0280500 */  sll        $a1, $a1, 3
/* 4B554 8005AD54 2328A300 */  subu       $a1, $a1, $v1
/* 4B558 8005AD58 C0290500 */  sll        $a1, $a1, 7
/* 4B55C 8005AD5C 2128A300 */  addu       $a1, $a1, $v1
/* 4B560 8005AD60 80280500 */  sll        $a1, $a1, 2
/* 4B564 8005AD64 2128A300 */  addu       $a1, $a1, $v1
/* 4B568 8005AD68 C0280500 */  sll        $a1, $a1, 3
/* 4B56C 8005AD6C 1780033C */  lui        $v1, %hi(D_80172958)
/* 4B570 8005AD70 58296324 */  addiu      $v1, $v1, %lo(D_80172958)
/* 4B574 8005AD74 21104300 */  addu       $v0, $v0, $v1
/* 4B578 8005AD78 0200C004 */  bltz       $a2, .L8005AD84
/* 4B57C 8005AD7C 2128A200 */   addu      $a1, $a1, $v0
/* 4B580 8005AD80 A228A6A4 */  sh         $a2, 0x28a2($a1)
.L8005AD84:
/* 4B584 8005AD84 A228A284 */  lh         $v0, 0x28a2($a1)
/* 4B588 8005AD88 0800E003 */  jr         $ra
/* 4B58C 8005AD8C 00000000 */   nop
