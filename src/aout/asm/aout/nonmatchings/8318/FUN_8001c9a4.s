.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches


glabel FUN_8001c9a4
/* D1A4 8001C9A4 E8FFBD27 */  addiu      $sp, $sp, -0x18
/* D1A8 8001C9A8 1000BFAF */  sw         $ra, 0x10($sp)
/* D1AC 8001C9AC 83C1000C */  jal        FUN_8003060c
/* D1B0 8001C9B0 04008424 */   addiu     $a0, $a0, 4
/* D1B4 8001C9B4 02A3000C */  jal        FUN_80028c08
/* D1B8 8001C9B8 00000000 */   nop
/* D1BC 8001C9BC E8A9000C */  jal        FUN_8002a7a0
/* D1C0 8001C9C0 01000424 */   addiu     $a0, $zero, 1
/* D1C4 8001C9C4 D39B020C */  jal        FUN_800a6f4c
/* D1C8 8001C9C8 00000000 */   nop
/* D1CC 8001C9CC 1000BF8F */  lw         $ra, 0x10($sp)
/* D1D0 8001C9D0 00000000 */  nop
/* D1D4 8001C9D4 0800E003 */  jr         $ra
/* D1D8 8001C9D8 1800BD27 */   addiu     $sp, $sp, 0x18
