.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches


glabel _spu_FsetRXXa
/* A7E04 800B7604 0F80023C */  lui        $v0, %hi(D_800EC814)
/* A7E08 800B7608 14C8428C */  lw         $v0, %lo(D_800EC814)($v0)
/* A7E0C 800B760C 00000000 */  nop
/* A7E10 800B7610 10004010 */  beqz       $v0, .L800B7654
/* A7E14 800B7614 21308000 */   addu      $a2, $a0, $zero
/* A7E18 800B7618 0F80043C */  lui        $a0, %hi(D_800EC81C)
/* A7E1C 800B761C 1CC8848C */  lw         $a0, %lo(D_800EC81C)($a0)
/* A7E20 800B7620 00000000 */  nop
/* A7E24 800B7624 1B00A400 */  divu       $zero, $a1, $a0
/* A7E28 800B7628 02008014 */  bnez       $a0, .L800B7634
/* A7E2C 800B762C 00000000 */   nop
/* A7E30 800B7630 0D000700 */  break      7
.L800B7634:
/* A7E34 800B7634 10100000 */   mfhi      $v0
/* A7E38 800B7638 06004010 */  beqz       $v0, .L800B7654
/* A7E3C 800B763C 00000000 */   nop
/* A7E40 800B7640 0F80023C */  lui        $v0, %hi(D_800EC820)
/* A7E44 800B7644 20C8428C */  lw         $v0, %lo(D_800EC820)($v0)
/* A7E48 800B7648 2128A400 */  addu       $a1, $a1, $a0
/* A7E4C 800B764C 27100200 */  nor        $v0, $zero, $v0
/* A7E50 800B7650 2428A200 */  and        $a1, $a1, $v0
.L800B7654:
/* A7E54 800B7654 0F80023C */  lui        $v0, %hi(D_800EC818)
/* A7E58 800B7658 18C8428C */  lw         $v0, %lo(D_800EC818)($v0)
/* A7E5C 800B765C 00000000 */  nop
/* A7E60 800B7660 06384500 */  srlv       $a3, $a1, $v0
/* A7E64 800B7664 FEFF0224 */  addiu      $v0, $zero, -2
/* A7E68 800B7668 0600C210 */  beq        $a2, $v0, .L800B7684
/* A7E6C 800B766C 2118E000 */   addu      $v1, $a3, $zero
/* A7E70 800B7670 FFFF0224 */  addiu      $v0, $zero, -1
/* A7E74 800B7674 0500C214 */  bne        $a2, $v0, .L800B768C
/* A7E78 800B7678 2110A000 */   addu      $v0, $a1, $zero
/* A7E7C 800B767C A8DD0208 */  j          SPU_OBJ_9EC
/* A7E80 800B7680 FFFF6230 */   andi      $v0, $v1, 0xffff
.L800B7684:
/* A7E84 800B7684 A8DD0208 */  j          SPU_OBJ_9EC
/* A7E88 800B7688 2110A000 */   addu      $v0, $a1, $zero
.L800B768C:
/* A7E8C 800B768C 0F80043C */  lui        $a0, %hi(D_800EC7F0)
/* A7E90 800B7690 F0C7848C */  lw         $a0, %lo(D_800EC7F0)($a0)
/* A7E94 800B7694 40180600 */  sll        $v1, $a2, 1
/* A7E98 800B7698 21186400 */  addu       $v1, $v1, $a0
/* A7E9C 800B769C 000067A4 */  sh         $a3, ($v1)
