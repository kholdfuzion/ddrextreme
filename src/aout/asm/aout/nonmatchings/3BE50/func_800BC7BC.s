.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches


glabel func_800BC7BC
/* ACFBC 800BC7BC D8FFBD27 */  addiu      $sp, $sp, -0x28
/* ACFC0 800BC7C0 2000BFAF */  sw         $ra, 0x20($sp)
/* ACFC4 800BC7C4 01000224 */  addiu      $v0, $zero, 1
/* ACFC8 800BC7C8 1000A2AF */  sw         $v0, 0x10($sp)
/* ACFCC 800BC7CC 1400A0AF */  sw         $zero, 0x14($sp)
/* ACFD0 800BC7D0 02000724 */  addiu      $a3, $zero, 2
/* ACFD4 800BC7D4 FBF1020C */  jal        FUN_800bc7ec
/* ACFD8 800BC7D8 1800A0AF */   sw        $zero, 0x18($sp)
/* ACFDC 800BC7DC 2000BF8F */  lw         $ra, 0x20($sp)
/* ACFE0 800BC7E0 2800BD27 */  addiu      $sp, $sp, 0x28
/* ACFE4 800BC7E4 0800E003 */  jr         $ra
/* ACFE8 800BC7E8 00000000 */   nop
