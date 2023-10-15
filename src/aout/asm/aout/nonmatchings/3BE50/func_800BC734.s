.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches


glabel func_800BC734
/* ACF34 800BC734 E0FFBD27 */  addiu      $sp, $sp, -0x20
/* ACF38 800BC738 1800BFAF */  sw         $ra, 0x18($sp)
/* ACF3C 800BC73C 21300000 */  addu       $a2, $zero, $zero
/* ACF40 800BC740 21380000 */  addu       $a3, $zero, $zero
/* ACF44 800BC744 FBF1020C */  jal        FUN_800bc7ec
/* ACF48 800BC748 1000A0AF */   sw        $zero, 0x10($sp)
/* ACF4C 800BC74C 1800BF8F */  lw         $ra, 0x18($sp)
/* ACF50 800BC750 2000BD27 */  addiu      $sp, $sp, 0x20
/* ACF54 800BC754 0800E003 */  jr         $ra
/* ACF58 800BC758 00000000 */   nop
