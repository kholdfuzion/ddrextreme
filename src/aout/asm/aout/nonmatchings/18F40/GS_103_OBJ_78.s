.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches


glabel GS_103_OBJ_78
/* 18FB8 800287B8 2A86000C */  jal        GsSetDrawBuffClip
/* 18FBC 800287BC 00000000 */   nop
/* 18FC0 800287C0 E685000C */  jal        GsSetDrawBuffOffset
/* 18FC4 800287C4 00000000 */   nop
/* 18FC8 800287C8 1000BF8F */  lw         $ra, 0x10($sp)
/* 18FCC 800287CC 1800BD27 */  addiu      $sp, $sp, 0x18
/* 18FD0 800287D0 0800E003 */  jr         $ra
/* 18FD4 800287D4 00000000 */   nop
/* 18FD8 800287D8 00000000 */  nop
/* 18FDC 800287DC 00000000 */  nop
