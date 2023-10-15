.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches


glabel FUN_8005b4e4
/* 4BCE4 8005B4E4 1380023C */  lui        $v0, %hi(D_80129DA8)
/* 4BCE8 8005B4E8 A89D438C */  lw         $v1, %lo(D_80129DA8)($v0)
/* 4BCEC 8005B4EC 80100400 */  sll        $v0, $a0, 2
/* 4BCF0 8005B4F0 21104400 */  addu       $v0, $v0, $a0
/* 4BCF4 8005B4F4 C0100200 */  sll        $v0, $v0, 3
/* 4BCF8 8005B4F8 21104400 */  addu       $v0, $v0, $a0
/* 4BCFC 8005B4FC C0100200 */  sll        $v0, $v0, 3
/* 4BD00 8005B500 23104400 */  subu       $v0, $v0, $a0
/* 4BD04 8005B504 80100200 */  sll        $v0, $v0, 2
/* 4BD08 8005B508 21104400 */  addu       $v0, $v0, $a0
/* 4BD0C 8005B50C C0100200 */  sll        $v0, $v0, 3
/* 4BD10 8005B510 80390700 */  sll        $a3, $a3, 6
/* 4BD14 8005B514 03310600 */  sra        $a2, $a2, 4
/* 4BD18 8005B518 3F00C630 */  andi       $a2, $a2, 0x3f
/* 4BD1C 8005B51C 2538E600 */  or         $a3, $a3, $a2
/* 4BD20 8005B520 40400300 */  sll        $t0, $v1, 1
/* 4BD24 8005B524 21400301 */  addu       $t0, $t0, $v1
/* 4BD28 8005B528 C0400800 */  sll        $t0, $t0, 3
/* 4BD2C 8005B52C 23400301 */  subu       $t0, $t0, $v1
/* 4BD30 8005B530 C0410800 */  sll        $t0, $t0, 7
/* 4BD34 8005B534 21400301 */  addu       $t0, $t0, $v1
/* 4BD38 8005B538 80400800 */  sll        $t0, $t0, 2
/* 4BD3C 8005B53C 21400301 */  addu       $t0, $t0, $v1
/* 4BD40 8005B540 C0400800 */  sll        $t0, $t0, 3
/* 4BD44 8005B544 1780033C */  lui        $v1, %hi(D_80172958)
/* 4BD48 8005B548 58296324 */  addiu      $v1, $v1, %lo(D_80172958)
/* 4BD4C 8005B54C 21104300 */  addu       $v0, $v0, $v1
/* 4BD50 8005B550 21400201 */  addu       $t0, $t0, $v0
/* 4BD54 8005B554 80180500 */  sll        $v1, $a1, 2
/* 4BD58 8005B558 21186500 */  addu       $v1, $v1, $a1
/* 4BD5C 8005B55C C0180300 */  sll        $v1, $v1, 3
/* 4BD60 8005B560 21400301 */  addu       $t0, $t0, $v1
/* 4BD64 8005B564 0800E003 */  jr         $ra
/* 4BD68 8005B568 AE0007A5 */   sh        $a3, 0xae($t0)
