.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches


glabel FUN_8002b3b4
/* 1BBB4 8002B3B4 21300000 */  addu       $a2, $zero, $zero
/* 1BBB8 8002B3B8 21488000 */  addu       $t1, $a0, $zero
/* 1BBBC 8002B3BC 2138A000 */  addu       $a3, $a1, $zero
/* 1BBC0 8002B3C0 C0100700 */  sll        $v0, $a3, 3
/* 1BBC4 8002B3C4 21182201 */  addu       $v1, $t1, $v0
/* 1BBC8 8002B3C8 21106000 */  addu       $v0, $v1, $zero
/* 1BBCC 8002B3CC 621F0A3C */  lui        $t2, 0x1f62
/* 1BBD0 8002B3D0 1C0E6494 */  lhu        $a0, 0xe1c($v1)
/* 1BBD4 8002B3D4 1E0E4594 */  lhu        $a1, 0xe1e($v0)
/* 1BBD8 8002B3D8 00000000 */  nop
/* 1BBDC 8002B3DC 42280500 */  srl        $a1, $a1, 1
/* 1BBE0 8002B3E0 0800A010 */  beqz       $a1, .L8002B404
/* 1BBE4 8002B3E4 21102401 */   addu      $v0, $t1, $a0
/* 1BBE8 8002B3E8 21184000 */  addu       $v1, $v0, $zero
.L8002B3EC:
/* 1BBEC 8002B3EC 00006294 */  lhu        $v0, ($v1)
/* 1BBF0 8002B3F0 02006324 */  addiu      $v1, $v1, 2
/* 1BBF4 8002B3F4 FFFFA524 */  addiu      $a1, $a1, -1
/* 1BBF8 8002B3F8 2110C200 */  addu       $v0, $a2, $v0
/* 1BBFC 8002B3FC FBFFA014 */  bnez       $a1, .L8002B3EC
/* 1BC00 8002B400 FFFF4630 */   andi      $a2, $v0, 0xffff
.L8002B404:
/* 1BC04 8002B404 27100600 */  nor        $v0, $zero, $a2
/* 1BC08 8002B408 FFFF4630 */  andi       $a2, $v0, 0xffff
/* 1BC0C 8002B40C C0200700 */  sll        $a0, $a3, 3
/* 1BC10 8002B410 200E2225 */  addiu      $v0, $t1, 0xe20
/* 1BC14 8002B414 21104400 */  addu       $v0, $v0, $a0
/* 1BC18 8002B418 00004394 */  lhu        $v1, ($v0)
/* 1BC1C 8002B41C 00000000 */  nop
/* 1BC20 8002B420 0200C310 */  beq        $a2, $v1, .L8002B42C
/* 1BC24 8002B424 21288000 */   addu      $a1, $a0, $zero
/* 1BC28 8002B428 000046A4 */  sh         $a2, ($v0)
.L8002B42C:
/* 1BC2C 8002B42C 21102501 */  addu       $v0, $t1, $a1
/* 1BC30 8002B430 21300000 */  addu       $a2, $zero, $zero
/* 1BC34 8002B434 00004425 */  addiu      $a0, $t2, 0
/* 1BC38 8002B438 1C0E4394 */  lhu        $v1, 0xe1c($v0)
/* 1BC3C 8002B43C 1E0E4794 */  lhu        $a3, 0xe1e($v0)
/* 1BC40 8002B440 21402301 */  addu       $t0, $t1, $v1
/* 1BC44 8002B444 40180300 */  sll        $v1, $v1, 1
/* 1BC48 8002B448 0900E010 */  beqz       $a3, .L8002B470
/* 1BC4C 8002B44C 21186400 */   addu      $v1, $v1, $a0
/* 1BC50 8002B450 21206000 */  addu       $a0, $v1, $zero
.L8002B454:
/* 1BC54 8002B454 21100601 */  addu       $v0, $t0, $a2
/* 1BC58 8002B458 0100C624 */  addiu      $a2, $a2, 1
/* 1BC5C 8002B45C 00004390 */  lbu        $v1, ($v0)
/* 1BC60 8002B460 2A10C700 */  slt        $v0, $a2, $a3
/* 1BC64 8002B464 000083A0 */  sb         $v1, ($a0)
/* 1BC68 8002B468 FAFF4014 */  bnez       $v0, .L8002B454
/* 1BC6C 8002B46C 02008424 */   addiu     $a0, $a0, 2
.L8002B470:
/* 1BC70 8002B470 1C0EA224 */  addiu      $v0, $a1, 0xe1c
/* 1BC74 8002B474 21402201 */  addu       $t0, $t1, $v0
/* 1BC78 8002B478 21300000 */  addu       $a2, $zero, $zero
/* 1BC7C 8002B47C 40100200 */  sll        $v0, $v0, 1
/* 1BC80 8002B480 00004325 */  addiu      $v1, $t2, 0
/* 1BC84 8002B484 21204300 */  addu       $a0, $v0, $v1
.L8002B488:
/* 1BC88 8002B488 21100601 */  addu       $v0, $t0, $a2
/* 1BC8C 8002B48C 0100C624 */  addiu      $a2, $a2, 1
/* 1BC90 8002B490 00004390 */  lbu        $v1, ($v0)
/* 1BC94 8002B494 0800C228 */  slti       $v0, $a2, 8
/* 1BC98 8002B498 000083A0 */  sb         $v1, ($a0)
/* 1BC9C 8002B49C FAFF4014 */  bnez       $v0, .L8002B488
/* 1BCA0 8002B4A0 02008424 */   addiu     $a0, $a0, 2
/* 1BCA4 8002B4A4 0800E003 */  jr         $ra
/* 1BCA8 8002B4A8 21100000 */   addu      $v0, $zero, $zero
