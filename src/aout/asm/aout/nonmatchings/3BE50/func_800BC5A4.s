.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches


glabel func_800BC5A4
/* ACDA4 800BC5A4 E8FFBD27 */  addiu      $sp, $sp, -0x18
/* ACDA8 800BC5A8 1000BFAF */  sw         $ra, 0x10($sp)
/* ACDAC 800BC5AC 21288000 */  addu       $a1, $a0, $zero
/* ACDB0 800BC5B0 716C000C */  jal        DMACallback
/* ACDB4 800BC5B4 05000424 */   addiu     $a0, $zero, 5
/* ACDB8 800BC5B8 1000BF8F */  lw         $ra, 0x10($sp)
/* ACDBC 800BC5BC 1800BD27 */  addiu      $sp, $sp, 0x18
/* ACDC0 800BC5C0 0800E003 */  jr         $ra
/* ACDC4 800BC5C4 00000000 */   nop
