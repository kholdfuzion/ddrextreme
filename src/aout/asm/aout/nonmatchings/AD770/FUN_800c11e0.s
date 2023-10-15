.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches


glabel FUN_800c11e0
/* B19E0 800C11E0 E8FFBD27 */  addiu      $sp, $sp, -0x18
/* B19E4 800C11E4 1400BFAF */  sw         $ra, 0x14($sp)
/* B19E8 800C11E8 1000B0AF */  sw         $s0, 0x10($sp)
/* B19EC 800C11EC 2AFE020C */  jal        FUN_800bf8a8
/* B19F0 800C11F0 21808000 */   addu      $s0, $a0, $zero
/* B19F4 800C11F4 040002AE */  sw         $v0, 4($s0)
/* B19F8 800C11F8 21100000 */  addu       $v0, $zero, $zero
/* B19FC 800C11FC 1400BF8F */  lw         $ra, 0x14($sp)
/* B1A00 800C1200 1000B08F */  lw         $s0, 0x10($sp)
/* B1A04 800C1204 0800E003 */  jr         $ra
/* B1A08 800C1208 1800BD27 */   addiu     $sp, $sp, 0x18
