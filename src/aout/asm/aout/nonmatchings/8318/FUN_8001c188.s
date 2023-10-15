.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches


glabel FUN_8001c188
/* C988 8001C188 E8FFBD27 */  addiu      $sp, $sp, -0x18
/* C98C 8001C18C 1000BFAF */  sw         $ra, 0x10($sp)
/* C990 8001C190 C2A9000C */  jal        FUN_8002a708
/* C994 8001C194 00000000 */   nop
/* C998 8001C198 9CB0000C */  jal        FUN_8002c270
/* C99C 8001C19C 00000000 */   nop
/* C9A0 8001C1A0 ECCA020C */  jal        FUN_800b2bb0
/* C9A4 8001C1A4 00000000 */   nop
/* C9A8 8001C1A8 9019030C */  jal        FUN_800c6640
/* C9AC 8001C1AC 00000000 */   nop
/* C9B0 8001C1B0 03004010 */  beqz       $v0, .L8001C1C0
/* C9B4 8001C1B4 00000000 */   nop
/* C9B8 8001C1B8 3610030C */  jal        FUN_800c40d8
/* C9BC 8001C1BC 00000000 */   nop
.L8001C1C0:
/* C9C0 8001C1C0 1000BF8F */  lw         $ra, 0x10($sp)
/* C9C4 8001C1C4 00000000 */  nop
/* C9C8 8001C1C8 0800E003 */  jr         $ra
/* C9CC 8001C1CC 1800BD27 */   addiu     $sp, $sp, 0x18
