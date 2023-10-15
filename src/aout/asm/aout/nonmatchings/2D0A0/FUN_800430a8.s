.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches


glabel FUN_800430a8
/* 338A8 800430A8 E8FFBD27 */  addiu      $sp, $sp, -0x18
/* 338AC 800430AC 1000BFAF */  sw         $ra, 0x10($sp)
/* 338B0 800430B0 7B7A000C */  jal        FUN_8001e9ec
/* 338B4 800430B4 02000424 */   addiu     $a0, $zero, 2
/* 338B8 800430B8 1000BF8F */  lw         $ra, 0x10($sp)
/* 338BC 800430BC 00000000 */  nop
/* 338C0 800430C0 0800E003 */  jr         $ra
/* 338C4 800430C4 1800BD27 */   addiu     $sp, $sp, 0x18
