.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches


glabel func_800D29FC
/* C31FC 800D29FC E8FFBD27 */  addiu      $sp, $sp, -0x18
/* C3200 800D2A00 1000BFAF */  sw         $ra, 0x10($sp)
/* C3204 800D2A04 B048030C */  jal        FUN_800d22c0
/* C3208 800D2A08 21200000 */   addu      $a0, $zero, $zero
/* C320C 800D2A0C 03004014 */  bnez       $v0, .L800D2A1C
/* C3210 800D2A10 00000000 */   nop
/* C3214 800D2A14 CB40030C */  jal        FUN_800d032c
/* C3218 800D2A18 21200000 */   addu      $a0, $zero, $zero
.L800D2A1C:
/* C321C 800D2A1C 1000BF8F */  lw         $ra, 0x10($sp)
/* C3220 800D2A20 00000000 */  nop
/* C3224 800D2A24 0800E003 */  jr         $ra
/* C3228 800D2A28 1800BD27 */   addiu     $sp, $sp, 0x18
