.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches


glabel func_800CE67C
/* BEE7C 800CE67C FF008430 */  andi       $a0, $a0, 0xff
/* BEE80 800CE680 03008010 */  beqz       $a0, .L800CE690
/* BEE84 800CE684 2080033C */   lui       $v1, %hi(D_801FBCFC)
/* BEE88 800CE688 0800E003 */  jr         $ra
/* BEE8C 800CE68C FFFF0224 */   addiu     $v0, $zero, -1
.L800CE690:
/* BEE90 800CE690 FCBC628C */  lw         $v0, %lo(D_801FBCFC)($v1)
/* BEE94 800CE694 00000000 */  nop
/* BEE98 800CE698 04004010 */  beqz       $v0, .L800CE6AC
/* BEE9C 800CE69C FFFF4224 */   addiu     $v0, $v0, -1
/* BEEA0 800CE6A0 FCBC62AC */  sw         $v0, -0x4304($v1)
/* BEEA4 800CE6A4 0800E003 */  jr         $ra
/* BEEA8 800CE6A8 21100000 */   addu      $v0, $zero, $zero
.L800CE6AC:
/* BEEAC 800CE6AC 0800E003 */  jr         $ra
/* BEEB0 800CE6B0 FFFF0224 */   addiu     $v0, $zero, -1
