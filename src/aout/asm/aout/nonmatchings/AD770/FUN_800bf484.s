.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches


glabel FUN_800bf484
/* AFC84 800BF484 E8FFBD27 */  addiu      $sp, $sp, -0x18
/* AFC88 800BF488 1000BFAF */  sw         $ra, 0x10($sp)
/* AFC8C 800BF48C 1F80023C */  lui        $v0, %hi(D_801F7088)
/* AFC90 800BF490 8870428C */  lw         $v0, %lo(D_801F7088)($v0)
/* AFC94 800BF494 00000000 */  nop
/* AFC98 800BF498 03004014 */  bnez       $v0, .L800BF4A8
/* AFC9C 800BF49C 2120C000 */   addu      $a0, $a2, $zero
/* AFCA0 800BF4A0 32FD0208 */  j          .L800BF4C8
/* AFCA4 800BF4A4 FFFF0224 */   addiu     $v0, $zero, -1
.L800BF4A8:
/* AFCA8 800BF4A8 0F80023C */  lui        $v0, %hi(D_800EE220)
/* AFCAC 800BF4AC 20E24224 */  addiu      $v0, $v0, %lo(D_800EE220)
/* AFCB0 800BF4B0 80180500 */  sll        $v1, $a1, 2
/* AFCB4 800BF4B4 21186200 */  addu       $v1, $v1, $v0
/* AFCB8 800BF4B8 0000628C */  lw         $v0, ($v1)
/* AFCBC 800BF4BC 00000000 */  nop
/* AFCC0 800BF4C0 09F84000 */  jalr       $v0
/* AFCC4 800BF4C4 00000000 */   nop
.L800BF4C8:
/* AFCC8 800BF4C8 1000BF8F */  lw         $ra, 0x10($sp)
/* AFCCC 800BF4CC 00000000 */  nop
/* AFCD0 800BF4D0 0800E003 */  jr         $ra
/* AFCD4 800BF4D4 1800BD27 */   addiu     $sp, $sp, 0x18
