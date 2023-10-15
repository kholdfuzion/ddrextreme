.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches


glabel FUN_800c129c
/* B1A9C 800C129C E8FFBD27 */  addiu      $sp, $sp, -0x18
/* B1AA0 800C12A0 1400BFAF */  sw         $ra, 0x14($sp)
/* B1AA4 800C12A4 1000B0AF */  sw         $s0, 0x10($sp)
/* B1AA8 800C12A8 91FD020C */  jal        FUN_800bf644
/* B1AAC 800C12AC 21808000 */   addu      $s0, $a0, $zero
/* B1AB0 800C12B0 040002AE */  sw         $v0, 4($s0)
/* B1AB4 800C12B4 21100000 */  addu       $v0, $zero, $zero
/* B1AB8 800C12B8 1400BF8F */  lw         $ra, 0x14($sp)
/* B1ABC 800C12BC 1000B08F */  lw         $s0, 0x10($sp)
/* B1AC0 800C12C0 0800E003 */  jr         $ra
/* B1AC4 800C12C4 1800BD27 */   addiu     $sp, $sp, 0x18
