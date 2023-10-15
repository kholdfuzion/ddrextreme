.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches


glabel SYS_OBJ_20D4
/* A8B8 8001A0B8 E8FFBD27 */  addiu      $sp, $sp, -0x18
/* A8BC 8001A0BC 1000BFAF */  sw         $ra, 0x10($sp)
/* A8C0 8001A0C0 2138C000 */  addu       $a3, $a2, $zero
/* A8C4 8001A0C4 3768000C */  jal        SYS_OBJ_20F8
/* A8C8 8001A0C8 21300000 */   addu      $a2, $zero, $zero
/* A8CC 8001A0CC 1000BF8F */  lw         $ra, 0x10($sp)
/* A8D0 8001A0D0 1800BD27 */  addiu      $sp, $sp, 0x18
/* A8D4 8001A0D4 0800E003 */  jr         $ra
/* A8D8 8001A0D8 00000000 */   nop
