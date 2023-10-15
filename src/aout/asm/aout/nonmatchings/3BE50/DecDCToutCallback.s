.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches


glabel DecDCToutCallback
/* 63BE0 800733E0 E8FFBD27 */  addiu      $sp, $sp, -0x18
/* 63BE4 800733E4 1000BFAF */  sw         $ra, 0x10($sp)
/* 63BE8 800733E8 21288000 */  addu       $a1, $a0, $zero
/* 63BEC 800733EC 716C000C */  jal        DMACallback
/* 63BF0 800733F0 01000424 */   addiu     $a0, $zero, 1
/* 63BF4 800733F4 1000BF8F */  lw         $ra, 0x10($sp)
/* 63BF8 800733F8 1800BD27 */  addiu      $sp, $sp, 0x18
/* 63BFC 800733FC 0800E003 */  jr         $ra
/* 63C00 80073400 00000000 */   nop
