.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches


glabel func_800BF2F4
/* AFAF4 800BF2F4 1F80023C */  lui        $v0, %hi(D_801F7088)
/* AFAF8 800BF2F8 8870428C */  lw         $v0, %lo(D_801F7088)($v0)
/* AFAFC 800BF2FC 00000000 */  nop
/* AFB00 800BF300 03004014 */  bnez       $v0, .L800BF310
/* AFB04 800BF304 1F80023C */   lui       $v0, %hi(D_801F7088)
/* AFB08 800BF308 0800E003 */  jr         $ra
/* AFB0C 800BF30C FFFF0224 */   addiu     $v0, $zero, -1
.L800BF310:
/* AFB10 800BF310 887040AC */  sw         $zero, %lo(D_801F7088)($v0)
/* AFB14 800BF314 0800E003 */  jr         $ra
/* AFB18 800BF318 21100000 */   addu      $v0, $zero, $zero
