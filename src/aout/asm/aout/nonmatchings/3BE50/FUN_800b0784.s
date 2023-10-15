.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches


glabel FUN_800b0784
/* A0F84 800B0784 E8FFBD27 */  addiu      $sp, $sp, -0x18
/* A0F88 800B0788 1000BFAF */  sw         $ra, 0x10($sp)
/* A0F8C 800B078C 0DC8020C */  jal        FUN_800b2034
/* A0F90 800B0790 00000000 */   nop
/* A0F94 800B0794 03004014 */  bnez       $v0, .L800B07A4
/* A0F98 800B0798 00000000 */   nop
/* A0F9C 800B079C EDC7020C */  jal        FUN_800b1fb4
/* A0FA0 800B07A0 21200000 */   addu      $a0, $zero, $zero
.L800B07A4:
/* A0FA4 800B07A4 1000BF8F */  lw         $ra, 0x10($sp)
/* A0FA8 800B07A8 00000000 */  nop
/* A0FAC 800B07AC 0800E003 */  jr         $ra
/* A0FB0 800B07B0 1800BD27 */   addiu     $sp, $sp, 0x18
