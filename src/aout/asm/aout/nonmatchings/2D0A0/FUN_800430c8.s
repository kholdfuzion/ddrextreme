.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches


glabel FUN_800430c8
/* 338C8 800430C8 E8FFBD27 */  addiu      $sp, $sp, -0x18
/* 338CC 800430CC 1000BFAF */  sw         $ra, 0x10($sp)
/* 338D0 800430D0 7B7A000C */  jal        FUN_8001e9ec
/* 338D4 800430D4 04000424 */   addiu     $a0, $zero, 4
/* 338D8 800430D8 1000BF8F */  lw         $ra, 0x10($sp)
/* 338DC 800430DC 00000000 */  nop
/* 338E0 800430E0 0800E003 */  jr         $ra
/* 338E4 800430E4 1800BD27 */   addiu     $sp, $sp, 0x18
