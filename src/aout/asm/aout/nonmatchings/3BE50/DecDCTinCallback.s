.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches


glabel DecDCTinCallback
/* 63BBC 800733BC E8FFBD27 */  addiu      $sp, $sp, -0x18
/* 63BC0 800733C0 1000BFAF */  sw         $ra, 0x10($sp)
/* 63BC4 800733C4 21288000 */  addu       $a1, $a0, $zero
/* 63BC8 800733C8 716C000C */  jal        DMACallback
/* 63BCC 800733CC 21200000 */   addu      $a0, $zero, $zero
/* 63BD0 800733D0 1000BF8F */  lw         $ra, 0x10($sp)
/* 63BD4 800733D4 1800BD27 */  addiu      $sp, $sp, 0x18
/* 63BD8 800733D8 0800E003 */  jr         $ra
/* 63BDC 800733DC 00000000 */   nop
