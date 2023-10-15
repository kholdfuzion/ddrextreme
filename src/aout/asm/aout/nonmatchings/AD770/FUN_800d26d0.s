.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches


glabel FUN_800d26d0
/* C2ED0 800D26D0 D8FFBD27 */  addiu      $sp, $sp, -0x28
/* C2ED4 800D26D4 2080023C */  lui        $v0, %hi(D_801FBD10)
/* C2ED8 800D26D8 10BD4824 */  addiu      $t0, $v0, %lo(D_801FBD10)
/* C2EDC 800D26DC DF110391 */  lbu        $v1, 0x11df($t0)
/* C2EE0 800D26E0 21484000 */  addu       $t1, $v0, $zero
/* C2EE4 800D26E4 03006010 */  beqz       $v1, .L800D26F4
/* C2EE8 800D26E8 2000BFAF */   sw        $ra, 0x20($sp)
/* C2EEC 800D26EC DD490308 */  j          .L800D2774
/* C2EF0 800D26F0 FBFF0224 */   addiu     $v0, $zero, -5
.L800D26F4:
/* C2EF4 800D26F4 A8000224 */  addiu      $v0, $zero, 0xa8
/* C2EF8 800D26F8 1000A2A3 */  sb         $v0, 0x10($sp)
/* C2EFC 800D26FC 02160400 */  srl        $v0, $a0, 0x18
/* C2F00 800D2700 021C0400 */  srl        $v1, $a0, 0x10
/* C2F04 800D2704 1200A2A3 */  sb         $v0, 0x12($sp)
/* C2F08 800D2708 02120400 */  srl        $v0, $a0, 8
/* C2F0C 800D270C 1400A2A3 */  sb         $v0, 0x14($sp)
/* C2F10 800D2710 02160600 */  srl        $v0, $a2, 0x18
/* C2F14 800D2714 1300A3A3 */  sb         $v1, 0x13($sp)
/* C2F18 800D2718 021C0600 */  srl        $v1, $a2, 0x10
/* C2F1C 800D271C 1600A2A3 */  sb         $v0, 0x16($sp)
/* C2F20 800D2720 02120600 */  srl        $v0, $a2, 8
/* C2F24 800D2724 1100A0A3 */  sb         $zero, 0x11($sp)
/* C2F28 800D2728 1500A4A3 */  sb         $a0, 0x15($sp)
/* C2F2C 800D272C 1700A3A3 */  sb         $v1, 0x17($sp)
/* C2F30 800D2730 1800A2A3 */  sb         $v0, 0x18($sp)
/* C2F34 800D2734 1900A6A3 */  sb         $a2, 0x19($sp)
/* C2F38 800D2738 1B00A0A3 */  sb         $zero, 0x1b($sp)
/* C2F3C 800D273C 1A00A0A3 */  sb         $zero, 0x1a($sp)
/* C2F40 800D2740 0200E010 */  beqz       $a3, .L800D274C
/* C2F44 800D2744 02000224 */   addiu     $v0, $zero, 2
/* C2F48 800D2748 01000224 */  addiu      $v0, $zero, 1
.L800D274C:
/* C2F4C 800D274C DF1102A1 */  sb         $v0, 0x11df($t0)
/* C2F50 800D2750 10BD2225 */  addiu      $v0, $t1, -0x42f0
/* C2F54 800D2754 C01A0600 */  sll        $v1, $a2, 0xb
/* C2F58 800D2758 21200000 */  addu       $a0, $zero, $zero
/* C2F5C 800D275C E01145AC */  sw         $a1, 0x11e0($v0)
/* C2F60 800D2760 1000A527 */  addiu      $a1, $sp, 0x10
/* C2F64 800D2764 E41143AC */  sw         $v1, 0x11e4($v0)
/* C2F68 800D2768 E81140AC */  sw         $zero, 0x11e8($v0)
/* C2F6C 800D276C AC41030C */  jal        FUN_800d06b0
/* C2F70 800D2770 00000000 */   nop
.L800D2774:
/* C2F74 800D2774 2000BF8F */  lw         $ra, 0x20($sp)
/* C2F78 800D2778 00000000 */  nop
/* C2F7C 800D277C 0800E003 */  jr         $ra
/* C2F80 800D2780 2800BD27 */   addiu     $sp, $sp, 0x28
