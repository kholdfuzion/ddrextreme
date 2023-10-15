.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches


glabel func_800BC790
/* ACF90 800BC790 D8FFBD27 */  addiu      $sp, $sp, -0x28
/* ACF94 800BC794 2000BFAF */  sw         $ra, 0x20($sp)
/* ACF98 800BC798 1000A0AF */  sw         $zero, 0x10($sp)
/* ACF9C 800BC79C 1400A0AF */  sw         $zero, 0x14($sp)
/* ACFA0 800BC7A0 02000724 */  addiu      $a3, $zero, 2
/* ACFA4 800BC7A4 FBF1020C */  jal        FUN_800bc7ec
/* ACFA8 800BC7A8 1800A0AF */   sw        $zero, 0x18($sp)
/* ACFAC 800BC7AC 2000BF8F */  lw         $ra, 0x20($sp)
/* ACFB0 800BC7B0 2800BD27 */  addiu      $sp, $sp, 0x28
/* ACFB4 800BC7B4 0800E003 */  jr         $ra
/* ACFB8 800BC7B8 00000000 */   nop
