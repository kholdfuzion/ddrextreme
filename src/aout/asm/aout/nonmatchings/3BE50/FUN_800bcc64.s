.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches


glabel FUN_800bcc64
/* AD464 800BCC64 E8FFBD27 */  addiu      $sp, $sp, -0x18
/* AD468 800BCC68 1000BFAF */  sw         $ra, 0x10($sp)
/* AD46C 800BCC6C A5F2020C */  jal        FUN_800bca94
/* AD470 800BCC70 00000000 */   nop
/* AD474 800BCC74 E6F2020C */  jal        FUN_800bcb98
/* AD478 800BCC78 00000000 */   nop
/* AD47C 800BCC7C D860000C */  jal        DrawSync
/* AD480 800BCC80 21200000 */   addu      $a0, $zero, $zero
/* AD484 800BCC84 7CAA000C */  jal        vsync_8002a9f0
/* AD488 800BCC88 00000000 */   nop
/* AD48C 800BCC8C 1000BF8F */  lw         $ra, 0x10($sp)
/* AD490 800BCC90 00000000 */  nop
/* AD494 800BCC94 0800E003 */  jr         $ra
/* AD498 800BCC98 1800BD27 */   addiu     $sp, $sp, 0x18
