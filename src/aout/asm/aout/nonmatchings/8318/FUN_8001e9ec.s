.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches


glabel FUN_8001e9ec
/* F1EC 8001E9EC E8FFBD27 */  addiu      $sp, $sp, -0x18
/* F1F0 8001E9F0 1800A4AF */  sw         $a0, 0x18($sp)
/* F1F4 8001E9F4 1800A427 */  addiu      $a0, $sp, 0x18
/* F1F8 8001E9F8 21280000 */  addu       $a1, $zero, $zero
/* F1FC 8001E9FC 1000BFAF */  sw         $ra, 0x10($sp)
/* F200 8001EA00 FA74000C */  jal        FUN_8001d3e8
/* F204 8001EA04 21300000 */   addu      $a2, $zero, $zero
/* F208 8001EA08 1000BF8F */  lw         $ra, 0x10($sp)
/* F20C 8001EA0C 00000000 */  nop
/* F210 8001EA10 0800E003 */  jr         $ra
/* F214 8001EA14 1800BD27 */   addiu     $sp, $sp, 0x18
