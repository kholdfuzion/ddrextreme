.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches


glabel GetDispEnv
/* 9888 80019088 E8FFBD27 */  addiu      $sp, $sp, -0x18
/* 988C 8001908C 1000B0AF */  sw         $s0, 0x10($sp)
/* 9890 80019090 21808000 */  addu       $s0, $a0, $zero
/* 9894 80019094 0D80053C */  lui        $a1, %hi(D_800D2C04)
/* 9898 80019098 042CA524 */  addiu      $a1, $a1, %lo(D_800D2C04)
/* 989C 8001909C 1400BFAF */  sw         $ra, 0x14($sp)
/* 98A0 800190A0 BD6B000C */  jal        memcpy
/* 98A4 800190A4 14000624 */   addiu     $a2, $zero, 0x14
/* 98A8 800190A8 21100002 */  addu       $v0, $s0, $zero
/* 98AC 800190AC 1400BF8F */  lw         $ra, 0x14($sp)
/* 98B0 800190B0 1000B08F */  lw         $s0, 0x10($sp)
/* 98B4 800190B4 0800E003 */  jr         $ra
/* 98B8 800190B8 1800BD27 */   addiu     $sp, $sp, 0x18
