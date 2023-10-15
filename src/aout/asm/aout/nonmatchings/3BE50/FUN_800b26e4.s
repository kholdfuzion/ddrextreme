.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches


glabel FUN_800b26e4
/* A2EE4 800B26E4 D8FFBD27 */  addiu      $sp, $sp, -0x28
/* A2EE8 800B26E8 01000424 */  addiu      $a0, $zero, 1
/* A2EEC 800B26EC 2400BFAF */  sw         $ra, 0x24($sp)
/* A2EF0 800B26F0 2000B2AF */  sw         $s2, 0x20($sp)
/* A2EF4 800B26F4 1C00B1AF */  sw         $s1, 0x1c($sp)
/* A2EF8 800B26F8 F95F000C */  jal        ResetGraph
/* A2EFC 800B26FC 1800B0AF */   sw        $s0, 0x18($sp)
/* A2F00 800B2700 1E80103C */  lui        $s0, %hi(D_801DF230)
/* A2F04 800B2704 30F21026 */  addiu      $s0, $s0, %lo(D_801DF230)
/* A2F08 800B2708 21200002 */  addu       $a0, $s0, $zero
/* A2F0C 800B270C 21280000 */  addu       $a1, $zero, $zero
/* A2F10 800B2710 21300000 */  addu       $a2, $zero, $zero
/* A2F14 800B2714 40010724 */  addiu      $a3, $zero, 0x140
/* A2F18 800B2718 F0001224 */  addiu      $s2, $zero, 0xf0
/* A2F1C 800B271C E5C9020C */  jal        SetDefDrawEnv
/* A2F20 800B2720 1000B2AF */   sw        $s2, 0x10($sp)
/* A2F24 800B2724 1E80113C */  lui        $s1, %hi(D_801DF290)
/* A2F28 800B2728 90F23126 */  addiu      $s1, $s1, %lo(D_801DF290)
/* A2F2C 800B272C 21202002 */  addu       $a0, $s1, $zero
/* A2F30 800B2730 21280000 */  addu       $a1, $zero, $zero
/* A2F34 800B2734 21300000 */  addu       $a2, $zero, $zero
/* A2F38 800B2738 40010724 */  addiu      $a3, $zero, 0x140
/* A2F3C 800B273C 15CA020C */  jal        SetDefDispEnv
/* A2F40 800B2740 1000B2AF */   sw        $s2, 0x10($sp)
/* A2F44 800B2744 21200002 */  addu       $a0, $s0, $zero
/* A2F48 800B2748 01000224 */  addiu      $v0, $zero, 1
/* A2F4C 800B274C 180002A2 */  sb         $v0, 0x18($s0)
/* A2F50 800B2750 40000224 */  addiu      $v0, $zero, 0x40
/* A2F54 800B2754 190000A2 */  sb         $zero, 0x19($s0)
/* A2F58 800B2758 1A0000A2 */  sb         $zero, 0x1a($s0)
/* A2F5C 800B275C 7162000C */  jal        PutDrawEnv
/* A2F60 800B2760 1B0002A2 */   sb        $v0, 0x1b($s0)
/* A2F64 800B2764 E462000C */  jal        PutDispEnv
/* A2F68 800B2768 21202002 */   addu      $a0, $s1, $zero
/* A2F6C 800B276C 53C8020C */  jal        img_related_800b214c
/* A2F70 800B2770 00000000 */   nop
/* A2F74 800B2774 7CAA000C */  jal        vsync_8002a9f0
/* A2F78 800B2778 00000000 */   nop
/* A2F7C 800B277C 2400BF8F */  lw         $ra, 0x24($sp)
/* A2F80 800B2780 2000B28F */  lw         $s2, 0x20($sp)
/* A2F84 800B2784 1C00B18F */  lw         $s1, 0x1c($sp)
/* A2F88 800B2788 1800B08F */  lw         $s0, 0x18($sp)
/* A2F8C 800B278C 0800E003 */  jr         $ra
/* A2F90 800B2790 2800BD27 */   addiu     $sp, $sp, 0x28
