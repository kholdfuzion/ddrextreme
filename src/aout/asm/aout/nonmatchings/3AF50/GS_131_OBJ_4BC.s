.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches


glabel GS_131_OBJ_4BC
/* 3B40C 8004AC0C 0000828C */  lw         $v0, ($a0)
/* 3B410 8004AC10 0400838C */  lw         $v1, 4($a0)
/* 3B414 8004AC14 02004104 */  bgez       $v0, .L8004AC20
/* 3B418 8004AC18 21284000 */   addu      $a1, $v0, $zero
/* 3B41C 8004AC1C 23280500 */  negu       $a1, $a1
.L8004AC20:
/* 3B420 8004AC20 02006104 */  bgez       $v1, .L8004AC2C
/* 3B424 8004AC24 00000000 */   nop
/* 3B428 8004AC28 23180300 */  negu       $v1, $v1
.L8004AC2C:
/* 3B42C 8004AC2C 2A10A300 */  slt        $v0, $a1, $v1
/* 3B430 8004AC30 02004010 */  beqz       $v0, .L8004AC3C
/* 3B434 8004AC34 00000000 */   nop
/* 3B438 8004AC38 21286000 */  addu       $a1, $v1, $zero
.L8004AC3C:
/* 3B43C 8004AC3C 0800828C */  lw         $v0, 8($a0)
/* 3B440 8004AC40 00000000 */  nop
/* 3B444 8004AC44 02004104 */  bgez       $v0, .L8004AC50
/* 3B448 8004AC48 21184000 */   addu      $v1, $v0, $zero
/* 3B44C 8004AC4C 23180300 */  negu       $v1, $v1
.L8004AC50:
/* 3B450 8004AC50 2A10A300 */  slt        $v0, $a1, $v1
/* 3B454 8004AC54 02004010 */  beqz       $v0, .L8004AC60
/* 3B458 8004AC58 00000000 */   nop
/* 3B45C 8004AC5C 21286000 */  addu       $a1, $v1, $zero
.L8004AC60:
/* 3B460 8004AC60 0C00828C */  lw         $v0, 0xc($a0)
/* 3B464 8004AC64 00000000 */  nop
/* 3B468 8004AC68 02004104 */  bgez       $v0, .L8004AC74
/* 3B46C 8004AC6C 21184000 */   addu      $v1, $v0, $zero
/* 3B470 8004AC70 23180300 */  negu       $v1, $v1
.L8004AC74:
/* 3B474 8004AC74 2A10A300 */  slt        $v0, $a1, $v1
/* 3B478 8004AC78 02004010 */  beqz       $v0, .L8004AC84
/* 3B47C 8004AC7C 00000000 */   nop
/* 3B480 8004AC80 21286000 */  addu       $a1, $v1, $zero
.L8004AC84:
/* 3B484 8004AC84 1000828C */  lw         $v0, 0x10($a0)
/* 3B488 8004AC88 00000000 */  nop
/* 3B48C 8004AC8C 02004104 */  bgez       $v0, .L8004AC98
/* 3B490 8004AC90 21184000 */   addu      $v1, $v0, $zero
/* 3B494 8004AC94 23180300 */  negu       $v1, $v1
.L8004AC98:
/* 3B498 8004AC98 2A10A300 */  slt        $v0, $a1, $v1
/* 3B49C 8004AC9C 02004010 */  beqz       $v0, .L8004ACA8
/* 3B4A0 8004ACA0 00000000 */   nop
/* 3B4A4 8004ACA4 21286000 */  addu       $a1, $v1, $zero
.L8004ACA8:
/* 3B4A8 8004ACA8 1400828C */  lw         $v0, 0x14($a0)
/* 3B4AC 8004ACAC 00000000 */  nop
/* 3B4B0 8004ACB0 02004104 */  bgez       $v0, .L8004ACBC
/* 3B4B4 8004ACB4 21184000 */   addu      $v1, $v0, $zero
/* 3B4B8 8004ACB8 23180300 */  negu       $v1, $v1
.L8004ACBC:
/* 3B4BC 8004ACBC 2A10A300 */  slt        $v0, $a1, $v1
/* 3B4C0 8004ACC0 02004010 */  beqz       $v0, .L8004ACCC
/* 3B4C4 8004ACC4 00000000 */   nop
/* 3B4C8 8004ACC8 21286000 */  addu       $a1, $v1, $zero
.L8004ACCC:
/* 3B4CC 8004ACCC 0800E003 */  jr         $ra
/* 3B4D0 8004ACD0 2110A000 */   addu      $v0, $a1, $zero
