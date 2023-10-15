.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches


glabel FUN_800b0754
/* A0F54 800B0754 E8FFBD27 */  addiu      $sp, $sp, -0x18
/* A0F58 800B0758 1000BFAF */  sw         $ra, 0x10($sp)
/* A0F5C 800B075C 0DC8020C */  jal        FUN_800b2034
/* A0F60 800B0760 00000000 */   nop
/* A0F64 800B0764 03004014 */  bnez       $v0, .L800B0774
/* A0F68 800B0768 00000000 */   nop
/* A0F6C 800B076C EDC7020C */  jal        FUN_800b1fb4
/* A0F70 800B0770 01000424 */   addiu     $a0, $zero, 1
.L800B0774:
/* A0F74 800B0774 1000BF8F */  lw         $ra, 0x10($sp)
/* A0F78 800B0778 00000000 */  nop
/* A0F7C 800B077C 0800E003 */  jr         $ra
/* A0F80 800B0780 1800BD27 */   addiu     $sp, $sp, 0x18
