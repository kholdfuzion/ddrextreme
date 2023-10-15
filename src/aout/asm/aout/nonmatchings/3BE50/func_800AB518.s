.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches


glabel func_800AB518
/* 9BD18 800AB518 02008104 */  bgez       $a0, .L800AB524
/* 9BD1C 800AB51C 21108000 */   addu      $v0, $a0, $zero
/* 9BD20 800AB520 03008224 */  addiu      $v0, $a0, 3
.L800AB524:
/* 9BD24 800AB524 83100200 */  sra        $v0, $v0, 2
/* 9BD28 800AB528 80100200 */  sll        $v0, $v0, 2
/* 9BD2C 800AB52C 23108200 */  subu       $v0, $a0, $v0
/* 9BD30 800AB530 02004104 */  bgez       $v0, .L800AB53C
/* 9BD34 800AB534 00000000 */   nop
/* 9BD38 800AB538 03004224 */  addiu      $v0, $v0, 3
.L800AB53C:
/* 9BD3C 800AB53C 0800E003 */  jr         $ra
/* 9BD40 800AB540 83100200 */   sra       $v0, $v0, 2
