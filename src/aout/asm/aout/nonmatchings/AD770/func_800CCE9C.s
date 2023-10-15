.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches


glabel func_800CCE9C
/* BD69C 800CCE9C E0FFBD27 */  addiu      $sp, $sp, -0x20
/* BD6A0 800CCEA0 1800B0AF */  sw         $s0, 0x18($sp)
/* BD6A4 800CCEA4 21808000 */  addu       $s0, $a0, $zero
/* BD6A8 800CCEA8 1C00BFAF */  sw         $ra, 0x1c($sp)
/* BD6AC 800CCEAC 4535030C */  jal        FUN_800cd514
/* BD6B0 800CCEB0 1000A527 */   addiu     $a1, $sp, 0x10
/* BD6B4 800CCEB4 21200002 */  addu       $a0, $s0, $zero
/* BD6B8 800CCEB8 E8070524 */  addiu      $a1, $zero, 0x7e8
/* BD6BC 800CCEBC 1000A627 */  addiu      $a2, $sp, 0x10
/* BD6C0 800CCEC0 AE31030C */  jal        FUN_800cc6b8
/* BD6C4 800CCEC4 08000724 */   addiu     $a3, $zero, 8
/* BD6C8 800CCEC8 1C00BF8F */  lw         $ra, 0x1c($sp)
/* BD6CC 800CCECC 1800B08F */  lw         $s0, 0x18($sp)
/* BD6D0 800CCED0 0800E003 */  jr         $ra
/* BD6D4 800CCED4 2000BD27 */   addiu     $sp, $sp, 0x20
