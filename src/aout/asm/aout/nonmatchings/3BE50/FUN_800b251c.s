.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches


glabel FUN_800b251c
/* A2D1C 800B251C D8FFBD27 */  addiu      $sp, $sp, -0x28
/* A2D20 800B2520 01000424 */  addiu      $a0, $zero, 1
/* A2D24 800B2524 2400BFAF */  sw         $ra, 0x24($sp)
/* A2D28 800B2528 2000B2AF */  sw         $s2, 0x20($sp)
/* A2D2C 800B252C 1C00B1AF */  sw         $s1, 0x1c($sp)
/* A2D30 800B2530 F95F000C */  jal        ResetGraph
/* A2D34 800B2534 1800B0AF */   sw        $s0, 0x18($sp)
/* A2D38 800B2538 1E80103C */  lui        $s0, %hi(D_801DF230)
/* A2D3C 800B253C 30F21026 */  addiu      $s0, $s0, %lo(D_801DF230)
/* A2D40 800B2540 21200002 */  addu       $a0, $s0, $zero
/* A2D44 800B2544 21280000 */  addu       $a1, $zero, $zero
/* A2D48 800B2548 21300000 */  addu       $a2, $zero, $zero
/* A2D4C 800B254C 40010724 */  addiu      $a3, $zero, 0x140
/* A2D50 800B2550 F0001224 */  addiu      $s2, $zero, 0xf0
/* A2D54 800B2554 E5C9020C */  jal        SetDefDrawEnv
/* A2D58 800B2558 1000B2AF */   sw        $s2, 0x10($sp)
/* A2D5C 800B255C 1E80113C */  lui        $s1, %hi(D_801DF290)
/* A2D60 800B2560 90F23126 */  addiu      $s1, $s1, %lo(D_801DF290)
/* A2D64 800B2564 21202002 */  addu       $a0, $s1, $zero
/* A2D68 800B2568 21280000 */  addu       $a1, $zero, $zero
/* A2D6C 800B256C 21300000 */  addu       $a2, $zero, $zero
/* A2D70 800B2570 40010724 */  addiu      $a3, $zero, 0x140
/* A2D74 800B2574 15CA020C */  jal        SetDefDispEnv
/* A2D78 800B2578 1000B2AF */   sw        $s2, 0x10($sp)
/* A2D7C 800B257C 21200002 */  addu       $a0, $s0, $zero
/* A2D80 800B2580 01000224 */  addiu      $v0, $zero, 1
/* A2D84 800B2584 180002A2 */  sb         $v0, 0x18($s0)
/* A2D88 800B2588 40000224 */  addiu      $v0, $zero, 0x40
/* A2D8C 800B258C 190000A2 */  sb         $zero, 0x19($s0)
/* A2D90 800B2590 1A0000A2 */  sb         $zero, 0x1a($s0)
/* A2D94 800B2594 7162000C */  jal        PutDrawEnv
/* A2D98 800B2598 1B0002A2 */   sb        $v0, 0x1b($s0)
/* A2D9C 800B259C E462000C */  jal        PutDispEnv
/* A2DA0 800B25A0 21202002 */   addu      $a0, $s1, $zero
/* A2DA4 800B25A4 53C8020C */  jal        img_related_800b214c
/* A2DA8 800B25A8 00000000 */   nop
/* A2DAC 800B25AC 7CAA000C */  jal        vsync_8002a9f0
/* A2DB0 800B25B0 00000000 */   nop
/* A2DB4 800B25B4 B260000C */  jal        SetDispMask
/* A2DB8 800B25B8 01000424 */   addiu     $a0, $zero, 1
/* A2DBC 800B25BC 2400BF8F */  lw         $ra, 0x24($sp)
/* A2DC0 800B25C0 2000B28F */  lw         $s2, 0x20($sp)
/* A2DC4 800B25C4 1C00B18F */  lw         $s1, 0x1c($sp)
/* A2DC8 800B25C8 1800B08F */  lw         $s0, 0x18($sp)
/* A2DCC 800B25CC 0800E003 */  jr         $ra
/* A2DD0 800B25D0 2800BD27 */   addiu     $sp, $sp, 0x28
