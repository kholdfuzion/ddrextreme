.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches


glabel FUN_800b1f00
/* A2700 800B1F00 D0FFBD27 */  addiu      $sp, $sp, -0x30
/* A2704 800B1F04 1D80033C */  lui        $v1, %hi(D_801D2CBC)
/* A2708 800B1F08 1D80073C */  lui        $a3, %hi(D_801D2CB8)
/* A270C 800B1F0C BC2C688C */  lw         $t0, %lo(D_801D2CBC)($v1)
/* A2710 800B1F10 B82CE28C */  lw         $v0, %lo(D_801D2CB8)($a3)
/* A2714 800B1F14 21188000 */  addu       $v1, $a0, $zero
/* A2718 800B1F18 2C00BFAF */  sw         $ra, 0x2c($sp)
/* A271C 800B1F1C 23400201 */  subu       $t0, $t0, $v0
/* A2720 800B1F20 02000105 */  bgez       $t0, .L800B1F2C
/* A2724 800B1F24 2800B0AF */   sw        $s0, 0x28($sp)
/* A2728 800B1F28 10000825 */  addiu      $t0, $t0, 0x10
.L800B1F2C:
/* A272C 800B1F2C 0F000224 */  addiu      $v0, $zero, 0xf
/* A2730 800B1F30 23104800 */  subu       $v0, $v0, $t0
/* A2734 800B1F34 11004018 */  blez       $v0, .L800B1F7C
/* A2738 800B1F38 1000A427 */   addiu     $a0, $sp, 0x10
/* A273C 800B1F3C 01000224 */  addiu      $v0, $zero, 1
/* A2740 800B1F40 1000A3AF */  sw         $v1, 0x10($sp)
/* A2744 800B1F44 1400A5AF */  sw         $a1, 0x14($sp)
/* A2748 800B1F48 1800A6AF */  sw         $a2, 0x18($sp)
/* A274C 800B1F4C 1CC6020C */  jal        FUN_800b1870
/* A2750 800B1F50 1C00A2AF */   sw        $v0, 0x1c($sp)
/* A2754 800B1F54 1D6E000C */  jal        FUN_8001b874
/* A2758 800B1F58 21804000 */   addu      $s0, $v0, $zero
/* A275C 800B1F5C 00F3043C */  lui        $a0, 0xf300
/* A2760 800B1F60 00018434 */  ori        $a0, $a0, 0x100
/* A2764 800B1F64 ADC3020C */  jal        UnDeliverEvent
/* A2768 800B1F68 21280000 */   addu      $a1, $zero, $zero
/* A276C 800B1F6C 216E000C */  jal        FUN_8001b884
/* A2770 800B1F70 00000000 */   nop
/* A2774 800B1F74 E0C70208 */  j          .L800B1F80
/* A2778 800B1F78 21100002 */   addu      $v0, $s0, $zero
.L800B1F7C:
/* A277C 800B1F7C FFFF0224 */  addiu      $v0, $zero, -1
.L800B1F80:
/* A2780 800B1F80 2C00BF8F */  lw         $ra, 0x2c($sp)
/* A2784 800B1F84 2800B08F */  lw         $s0, 0x28($sp)
/* A2788 800B1F88 0800E003 */  jr         $ra
/* A278C 800B1F8C 3000BD27 */   addiu     $sp, $sp, 0x30
