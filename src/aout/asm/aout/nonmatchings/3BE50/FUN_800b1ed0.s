.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches


glabel FUN_800b1ed0
/* A26D0 800B1ED0 1D80023C */  lui        $v0, %hi(D_801D2E0C)
/* A26D4 800B1ED4 0C2E448C */  lw         $a0, %lo(D_801D2E0C)($v0)
/* A26D8 800B1ED8 E8FFBD27 */  addiu      $sp, $sp, -0x18
/* A26DC 800B1EDC 1000BFAF */  sw         $ra, 0x10($sp)
/* A26E0 800B1EE0 BFC2020C */  jal        ChangeTh
/* A26E4 800B1EE4 00000000 */   nop
/* A26E8 800B1EE8 1000BF8F */  lw         $ra, 0x10($sp)
/* A26EC 800B1EEC 00000000 */  nop
/* A26F0 800B1EF0 0800E003 */  jr         $ra
/* A26F4 800B1EF4 1800BD27 */   addiu     $sp, $sp, 0x18
