.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches


glabel FUN_800bc5c8
/* ACDC8 800BC5C8 E8FFBD27 */  addiu      $sp, $sp, -0x18
/* ACDCC 800BC5CC 1000BFAF */  sw         $ra, 0x10($sp)
/* ACDD0 800BC5D0 21288000 */  addu       $a1, $a0, $zero
/* ACDD4 800BC5D4 656C000C */  jal        InterruptCallback
/* ACDD8 800BC5D8 0A000424 */   addiu     $a0, $zero, 0xa
/* ACDDC 800BC5DC 1000BF8F */  lw         $ra, 0x10($sp)
/* ACDE0 800BC5E0 1800BD27 */  addiu      $sp, $sp, 0x18
/* ACDE4 800BC5E4 0800E003 */  jr         $ra
/* ACDE8 800BC5E8 00000000 */   nop
