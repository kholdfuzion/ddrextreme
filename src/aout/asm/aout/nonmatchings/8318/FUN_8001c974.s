.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches


glabel FUN_8001c974
/* D174 8001C974 E8FFBD27 */  addiu      $sp, $sp, -0x18
/* D178 8001C978 1000BFAF */  sw         $ra, 0x10($sp)
/* D17C 8001C97C 76C1000C */  jal        FUN_800305d8
/* D180 8001C980 04008424 */   addiu     $a0, $a0, 4
/* D184 8001C984 21184000 */  addu       $v1, $v0, $zero
/* D188 8001C988 02006014 */  bnez       $v1, .L8001C994
/* D18C 8001C98C 03000224 */   addiu     $v0, $zero, 3
/* D190 8001C990 21100000 */  addu       $v0, $zero, $zero
.L8001C994:
/* D194 8001C994 1000BF8F */  lw         $ra, 0x10($sp)
/* D198 8001C998 00000000 */  nop
/* D19C 8001C99C 0800E003 */  jr         $ra
/* D1A0 8001C9A0 1800BD27 */   addiu     $sp, $sp, 0x18
