.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches


glabel FUN_800b1fb4
/* A27B4 800B1FB4 E0FFBD27 */  addiu      $sp, $sp, -0x20
/* A27B8 800B1FB8 1400B1AF */  sw         $s1, 0x14($sp)
/* A27BC 800B1FBC 21888000 */  addu       $s1, $a0, $zero
/* A27C0 800B1FC0 1C00BFAF */  sw         $ra, 0x1c($sp)
/* A27C4 800B1FC4 1800B2AF */  sw         $s2, 0x18($sp)
/* A27C8 800B1FC8 0DC8020C */  jal        FUN_800b2034
/* A27CC 800B1FCC 1000B0AF */   sw        $s0, 0x10($sp)
/* A27D0 800B1FD0 0E004014 */  bnez       $v0, .L800B200C
/* A27D4 800B1FD4 FFFF0224 */   addiu     $v0, $zero, -1
/* A27D8 800B1FD8 1D80103C */  lui        $s0, %hi(D_801D3218)
/* A27DC 800B1FDC 01001224 */  addiu      $s2, $zero, 1
/* A27E0 800B1FE0 21202002 */  addu       $a0, $s1, $zero
/* A27E4 800B1FE4 F649030C */  jal        FUN_800d27d8
/* A27E8 800B1FE8 183212AE */   sw        $s2, %lo(D_801D3218)($s0)
/* A27EC 800B1FEC 18321126 */  addiu      $s1, $s0, 0x3218
/* A27F0 800B1FF0 04004014 */  bnez       $v0, .L800B2004
/* A27F4 800B1FF4 040022AE */   sw        $v0, 4($s1)
/* A27F8 800B1FF8 080032AE */  sw         $s2, 8($s1)
/* A27FC 800B1FFC 03C80208 */  j          .L800B200C
/* A2800 800B2000 21100000 */   addu      $v0, $zero, $zero
.L800B2004:
/* A2804 800B2004 183200AE */  sw         $zero, 0x3218($s0)
/* A2808 800B2008 FFFF0224 */  addiu      $v0, $zero, -1
.L800B200C:
/* A280C 800B200C 1C00BF8F */  lw         $ra, 0x1c($sp)
/* A2810 800B2010 1800B28F */  lw         $s2, 0x18($sp)
/* A2814 800B2014 1400B18F */  lw         $s1, 0x14($sp)
/* A2818 800B2018 1000B08F */  lw         $s0, 0x10($sp)
/* A281C 800B201C 0800E003 */  jr         $ra
/* A2820 800B2020 2000BD27 */   addiu     $sp, $sp, 0x20
