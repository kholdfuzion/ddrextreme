.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches


glabel FUN_800ca988
/* BB188 800CA988 E8FFBD27 */  addiu      $sp, $sp, -0x18
/* BB18C 800CA98C 1000BFAF */  sw         $ra, 0x10($sp)
/* BB190 800CA990 2F2D030C */  jal        FUN_800cb4bc
/* BB194 800CA994 00000000 */   nop
/* BB198 800CA998 1000BF8F */  lw         $ra, 0x10($sp)
/* BB19C 800CA99C 00000000 */  nop
/* BB1A0 800CA9A0 0800E003 */  jr         $ra
/* BB1A4 800CA9A4 1800BD27 */   addiu     $sp, $sp, 0x18
