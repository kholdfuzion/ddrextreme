.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches


glabel func_8006B484
/* 5BC84 8006B484 E0FFBD27 */  addiu      $sp, $sp, -0x20
/* 5BC88 8006B488 1800B2AF */  sw         $s2, 0x18($sp)
/* 5BC8C 8006B48C 21908000 */  addu       $s2, $a0, $zero
/* 5BC90 8006B490 2120C000 */  addu       $a0, $a2, $zero
/* 5BC94 8006B494 1400B1AF */  sw         $s1, 0x14($sp)
/* 5BC98 8006B498 2188A000 */  addu       $s1, $a1, $zero
/* 5BC9C 8006B49C 2128E000 */  addu       $a1, $a3, $zero
/* 5BCA0 8006B4A0 3000A68F */  lw         $a2, 0x30($sp)
/* 5BCA4 8006B4A4 3400A78F */  lw         $a3, 0x34($sp)
/* 5BCA8 8006B4A8 1000B0AF */  sw         $s0, 0x10($sp)
/* 5BCAC 8006B4AC 3800B08F */  lw         $s0, 0x38($sp)
/* 5BCB0 8006B4B0 1C00BFAF */  sw         $ra, 0x1c($sp)
/* 5BCB4 8006B4B4 0DAE010C */  jal        GetTPage
/* 5BCB8 8006B4B8 00000000 */   nop
/* 5BCBC 8006B4BC 21202002 */  addu       $a0, $s1, $zero
/* 5BCC0 8006B4C0 21280000 */  addu       $a1, $zero, $zero
/* 5BCC4 8006B4C4 21300002 */  addu       $a2, $s0, $zero
/* 5BCC8 8006B4C8 1DAE010C */  jal        SetDrawTPage
/* 5BCCC 8006B4CC 21384000 */   addu      $a3, $v0, $zero
/* 5BCD0 8006B4D0 21204002 */  addu       $a0, $s2, $zero
/* 5BCD4 8006B4D4 D685000C */  jal        AddPrim
/* 5BCD8 8006B4D8 21282002 */   addu      $a1, $s1, $zero
/* 5BCDC 8006B4DC 1C00BF8F */  lw         $ra, 0x1c($sp)
/* 5BCE0 8006B4E0 1800B28F */  lw         $s2, 0x18($sp)
/* 5BCE4 8006B4E4 1400B18F */  lw         $s1, 0x14($sp)
/* 5BCE8 8006B4E8 1000B08F */  lw         $s0, 0x10($sp)
/* 5BCEC 8006B4EC 0800E003 */  jr         $ra
/* 5BCF0 8006B4F0 2000BD27 */   addiu     $sp, $sp, 0x20
