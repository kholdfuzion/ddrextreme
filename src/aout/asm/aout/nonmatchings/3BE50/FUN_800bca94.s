.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches


glabel FUN_800bca94
/* AD294 800BCA94 E8FFBD27 */  addiu      $sp, $sp, -0x18
/* AD298 800BCA98 1400BFAF */  sw         $ra, 0x14($sp)
/* AD29C 800BCA9C 1000B0AF */  sw         $s0, 0x10($sp)
/* AD2A0 800BCAA0 1E80103C */  lui        $s0, %hi(D_801E17A8)
/* AD2A4 800BCAA4 A8171026 */  addiu      $s0, $s0, %lo(D_801E17A8)
/* AD2A8 800BCAA8 2810028E */  lw         $v0, 0x1028($s0)
/* AD2AC 800BCAAC 00000000 */  nop
/* AD2B0 800BCAB0 0100422C */  sltiu      $v0, $v0, 1
/* AD2B4 800BCAB4 281002AE */  sw         $v0, 0x1028($s0)
/* AD2B8 800BCAB8 40200200 */  sll        $a0, $v0, 1
/* AD2BC 800BCABC 21208200 */  addu       $a0, $a0, $v0
/* AD2C0 800BCAC0 C0200400 */  sll        $a0, $a0, 3
/* AD2C4 800BCAC4 23208200 */  subu       $a0, $a0, $v0
/* AD2C8 800BCAC8 80200400 */  sll        $a0, $a0, 2
/* AD2CC 800BCACC 7162000C */  jal        PutDrawEnv
/* AD2D0 800BCAD0 21209000 */   addu      $a0, $a0, $s0
/* AD2D4 800BCAD4 2810028E */  lw         $v0, 0x1028($s0)
/* AD2D8 800BCAD8 00000000 */  nop
/* AD2DC 800BCADC 80200200 */  sll        $a0, $v0, 2
/* AD2E0 800BCAE0 21208200 */  addu       $a0, $a0, $v0
/* AD2E4 800BCAE4 80200400 */  sll        $a0, $a0, 2
/* AD2E8 800BCAE8 B8000226 */  addiu      $v0, $s0, 0xb8
/* AD2EC 800BCAEC E462000C */  jal        PutDispEnv
/* AD2F0 800BCAF0 21208200 */   addu      $a0, $a0, $v0
/* AD2F4 800BCAF4 2C18048E */  lw         $a0, 0x182c($s0)
/* AD2F8 800BCAF8 5562000C */  jal        DrawOTag
/* AD2FC 800BCAFC 00000000 */   nop
/* AD300 800BCB00 2810058E */  lw         $a1, 0x1028($s0)
/* AD304 800BCB04 00000000 */  nop
/* AD308 800BCB08 80120500 */  sll        $v0, $a1, 0xa
/* AD30C 800BCB0C 2C100326 */  addiu      $v1, $s0, 0x102c
/* AD310 800BCB10 21104300 */  addu       $v0, $v0, $v1
/* AD314 800BCB14 2C1802AE */  sw         $v0, 0x182c($s0)
/* AD318 800BCB18 80200500 */  sll        $a0, $a1, 2
/* AD31C 800BCB1C 21208500 */  addu       $a0, $a0, $a1
/* AD320 800BCB20 40230400 */  sll        $a0, $a0, 0xd
/* AD324 800BCB24 30180226 */  addiu      $v0, $s0, 0x1830
/* AD328 800BCB28 2AF6020C */  jal        FUN_800bd8a8
/* AD32C 800BCB2C 21208200 */   addu      $a0, $a0, $v0
/* AD330 800BCB30 2C18048E */  lw         $a0, 0x182c($s0)
/* AD334 800BCB34 E161000C */  jal        ClearOTag
/* AD338 800BCB38 00010524 */   addiu     $a1, $zero, 0x100
/* AD33C 800BCB3C 77F4020C */  jal        FUN_800bd1dc
/* AD340 800BCB40 00000000 */   nop
/* AD344 800BCB44 940400AE */  sw         $zero, 0x494($s0)
/* AD348 800BCB48 1400BF8F */  lw         $ra, 0x14($sp)
/* AD34C 800BCB4C 1000B08F */  lw         $s0, 0x10($sp)
/* AD350 800BCB50 0800E003 */  jr         $ra
/* AD354 800BCB54 1800BD27 */   addiu     $sp, $sp, 0x18
