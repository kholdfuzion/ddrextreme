.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches


glabel FUN_800973dc
/* 87BDC 800973DC 21300000 */  addu       $a2, $zero, $zero
/* 87BE0 800973E0 05000524 */  addiu      $a1, $zero, 5
/* 87BE4 800973E4 0F80023C */  lui        $v0, %hi(D_800EBF98)
/* 87BE8 800973E8 98BF4224 */  addiu      $v0, $v0, %lo(D_800EBF98)
/* 87BEC 800973EC 14004324 */  addiu      $v1, $v0, 0x14
.L800973F0:
/* 87BF0 800973F0 0000628C */  lw         $v0, ($v1)
/* 87BF4 800973F4 00000000 */  nop
/* 87BF8 800973F8 02004414 */  bne        $v0, $a0, .L80097404
/* 87BFC 800973FC 00000000 */   nop
/* 87C00 80097400 01000624 */  addiu      $a2, $zero, 1
.L80097404:
/* 87C04 80097404 FFFFA524 */  addiu      $a1, $a1, -1
/* 87C08 80097408 0400A004 */  bltz       $a1, .L8009741C
/* 87C0C 8009740C FCFF6324 */   addiu     $v1, $v1, -4
/* 87C10 80097410 F7FFC010 */  beqz       $a2, .L800973F0
/* 87C14 80097414 00000000 */   nop
/* 87C18 80097418 0000648C */  lw         $a0, ($v1)
.L8009741C:
/* 87C1C 8009741C 0800E003 */  jr         $ra
/* 87C20 80097420 21108000 */   addu      $v0, $a0, $zero
