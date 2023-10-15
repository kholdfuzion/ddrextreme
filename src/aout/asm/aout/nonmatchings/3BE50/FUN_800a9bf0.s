.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches


glabel FUN_800a9bf0
/* 9A3F0 800A9BF0 2140A000 */  addu       $t0, $a1, $zero
/* 9A3F4 800A9BF4 04000229 */  slti       $v0, $t0, 4
/* 9A3F8 800A9BF8 02004014 */  bnez       $v0, .L800A9C04
/* 9A3FC 800A9BFC 21480000 */   addu      $t1, $zero, $zero
/* 9A400 800A9C00 03000824 */  addiu      $t0, $zero, 3
.L800A9C04:
/* 9A404 800A9C04 0001822C */  sltiu      $v0, $a0, 0x100
/* 9A408 800A9C08 1C004010 */  beqz       $v0, .L800A9C7C
/* 9A40C 800A9C0C 00000000 */   nop
/* 9A410 800A9C10 1A000019 */  blez       $t0, .L800A9C7C
/* 9A414 800A9C14 21300000 */   addu      $a2, $zero, $zero
/* 9A418 800A9C18 1580023C */  lui        $v0, %hi(D_8014BAAC)
/* 9A41C 800A9C1C ACBA4B84 */  lh         $t3, %lo(D_8014BAAC)($v0)
/* 9A420 800A9C20 5555073C */  lui        $a3, 0x5555
/* 9A424 800A9C24 5655E734 */  ori        $a3, $a3, 0x5556
/* 9A428 800A9C28 40100400 */  sll        $v0, $a0, 1
/* 9A42C 800A9C2C 21104400 */  addu       $v0, $v0, $a0
/* 9A430 800A9C30 40500200 */  sll        $t2, $v0, 1
/* 9A434 800A9C34 1580033C */  lui        $v1, %hi(D_8014BAB0)
/* 9A438 800A9C38 B0BA6C24 */  addiu      $t4, $v1, %lo(D_8014BAB0)
.L800A9C3C:
/* 9A43C 800A9C3C 21206601 */  addu       $a0, $t3, $a2
/* 9A440 800A9C40 18008700 */  mult       $a0, $a3
/* 9A444 800A9C44 C31F0400 */  sra        $v1, $a0, 0x1f
/* 9A448 800A9C48 0100C624 */  addiu      $a2, $a2, 1
/* 9A44C 800A9C4C 10280000 */  mfhi       $a1
/* 9A450 800A9C50 2318A300 */  subu       $v1, $a1, $v1
/* 9A454 800A9C54 40100300 */  sll        $v0, $v1, 1
/* 9A458 800A9C58 21104300 */  addu       $v0, $v0, $v1
/* 9A45C 800A9C5C 23188200 */  subu       $v1, $a0, $v0
/* 9A460 800A9C60 40180300 */  sll        $v1, $v1, 1
/* 9A464 800A9C64 21186A00 */  addu       $v1, $v1, $t2
/* 9A468 800A9C68 21186C00 */  addu       $v1, $v1, $t4
/* 9A46C 800A9C6C 00006494 */  lhu        $a0, ($v1)
/* 9A470 800A9C70 2A10C800 */  slt        $v0, $a2, $t0
/* 9A474 800A9C74 F1FF4014 */  bnez       $v0, .L800A9C3C
/* 9A478 800A9C78 21482401 */   addu      $t1, $t1, $a0
.L800A9C7C:
/* 9A47C 800A9C7C 0800E003 */  jr         $ra
/* 9A480 800A9C80 21102001 */   addu      $v0, $t1, $zero
