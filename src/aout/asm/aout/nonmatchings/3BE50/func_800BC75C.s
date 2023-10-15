.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches


glabel func_800BC75C
/* ACF5C 800BC75C D8FFBD27 */  addiu      $sp, $sp, -0x28
/* ACF60 800BC760 2000BFAF */  sw         $ra, 0x20($sp)
/* ACF64 800BC764 01000224 */  addiu      $v0, $zero, 1
/* ACF68 800BC768 1000A2AF */  sw         $v0, 0x10($sp)
/* ACF6C 800BC76C 1400A0AF */  sw         $zero, 0x14($sp)
/* ACF70 800BC770 21300000 */  addu       $a2, $zero, $zero
/* ACF74 800BC774 21380000 */  addu       $a3, $zero, $zero
/* ACF78 800BC778 FBF1020C */  jal        FUN_800bc7ec
/* ACF7C 800BC77C 1800A0AF */   sw        $zero, 0x18($sp)
/* ACF80 800BC780 2000BF8F */  lw         $ra, 0x20($sp)
/* ACF84 800BC784 2800BD27 */  addiu      $sp, $sp, 0x28
/* ACF88 800BC788 0800E003 */  jr         $ra
/* ACF8C 800BC78C 00000000 */   nop
