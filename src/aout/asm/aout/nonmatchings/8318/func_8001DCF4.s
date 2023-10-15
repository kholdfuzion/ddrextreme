.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches


glabel func_8001DCF4
/* E4F4 8001DCF4 2160A700 */  addu       $t4, $a1, $a3
/* E4F8 8001DCF8 02000E24 */  addiu      $t6, $zero, 2
/* E4FC 8001DCFC FFFF0D24 */  addiu      $t5, $zero, -1
/* E500 8001DD00 1380023C */  lui        $v0, %hi(D_801282E0)
/* E504 8001DD04 E0824824 */  addiu      $t0, $v0, %lo(D_801282E0)
/* E508 8001DD08 1000A38F */  lw         $v1, 0x10($sp)
/* E50C 8001DD0C 4F000A24 */  addiu      $t2, $zero, 0x4f
/* E510 8001DD10 02000224 */  addiu      $v0, $zero, 2
/* E514 8001DD14 03006330 */  andi       $v1, $v1, 3
/* E518 8001DD18 23384300 */  subu       $a3, $v0, $v1
/* E51C 8001DD1C 0758E400 */  srav       $t3, $a0, $a3
/* E520 8001DD20 21208600 */  addu       $a0, $a0, $a2
/* E524 8001DD24 0720E400 */  srav       $a0, $a0, $a3
.L8001DD28:
/* E528 8001DD28 14000285 */  lh         $v0, 0x14($t0)
/* E52C 8001DD2C 00000000 */  nop
/* E530 8001DD30 16004010 */  beqz       $v0, .L8001DD8C
/* E534 8001DD34 00000000 */   nop
/* E538 8001DD38 0C000285 */  lh         $v0, 0xc($t0)
/* E53C 8001DD3C 04000385 */  lh         $v1, 4($t0)
/* E540 8001DD40 06000685 */  lh         $a2, 6($t0)
/* E544 8001DD44 2338C201 */  subu       $a3, $t6, $v0
/* E548 8001DD48 08000285 */  lh         $v0, 8($t0)
/* E54C 8001DD4C 0748E300 */  srav       $t1, $v1, $a3
/* E550 8001DD50 21186200 */  addu       $v1, $v1, $v0
/* E554 8001DD54 0718E300 */  srav       $v1, $v1, $a3
/* E558 8001DD58 0A000285 */  lh         $v0, 0xa($t0)
/* E55C 8001DD5C 2A186301 */  slt        $v1, $t3, $v1
/* E560 8001DD60 0A006010 */  beqz       $v1, .L8001DD8C
/* E564 8001DD64 2110C200 */   addu      $v0, $a2, $v0
/* E568 8001DD68 2A10A200 */  slt        $v0, $a1, $v0
/* E56C 8001DD6C 07004010 */  beqz       $v0, .L8001DD8C
/* E570 8001DD70 2A102401 */   slt       $v0, $t1, $a0
/* E574 8001DD74 05004010 */  beqz       $v0, .L8001DD8C
/* E578 8001DD78 2A10CC00 */   slt       $v0, $a2, $t4
/* E57C 8001DD7C 03004010 */  beqz       $v0, .L8001DD8C
/* E580 8001DD80 00000000 */   nop
/* E584 8001DD84 140000A5 */  sh         $zero, 0x14($t0)
/* E588 8001DD88 00000DA5 */  sh         $t5, ($t0)
.L8001DD8C:
/* E58C 8001DD8C FFFF4A25 */  addiu      $t2, $t2, -1
/* E590 8001DD90 E5FF4105 */  bgez       $t2, .L8001DD28
/* E594 8001DD94 1C000825 */   addiu     $t0, $t0, 0x1c
/* E598 8001DD98 0800E003 */  jr         $ra
/* E59C 8001DD9C 21100000 */   addu      $v0, $zero, $zero
