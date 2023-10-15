.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches


glabel FUN_800d27d8
/* C2FD8 800D27D8 D0FFBD27 */  addiu      $sp, $sp, -0x30
/* C2FDC 800D27DC 2080023C */  lui        $v0, %hi(D_801FBD10)
/* C2FE0 800D27E0 2400B1AF */  sw         $s1, 0x24($sp)
/* C2FE4 800D27E4 10BD5124 */  addiu      $s1, $v0, %lo(D_801FBD10)
/* C2FE8 800D27E8 2C00BFAF */  sw         $ra, 0x2c($sp)
/* C2FEC 800D27EC 2800B2AF */  sw         $s2, 0x28($sp)
/* C2FF0 800D27F0 2000B0AF */  sw         $s0, 0x20($sp)
/* C2FF4 800D27F4 DF112392 */  lbu        $v1, 0x11df($s1)
/* C2FF8 800D27F8 00000000 */  nop
/* C2FFC 800D27FC 16006014 */  bnez       $v1, .L800D2858
/* C3000 800D2800 21908000 */   addu      $s2, $a0, $zero
/* C3004 800D2804 1000B027 */  addiu      $s0, $sp, 0x10
/* C3008 800D2808 21200002 */  addu       $a0, $s0, $zero
/* C300C 800D280C 21280000 */  addu       $a1, $zero, $zero
/* C3010 800D2810 F6A2000C */  jal        memset
/* C3014 800D2814 0C000624 */   addiu     $a2, $zero, 0xc
/* C3018 800D2818 21200000 */  addu       $a0, $zero, $zero
/* C301C 800D281C 21280002 */  addu       $a1, $s0, $zero
/* C3020 800D2820 1B000224 */  addiu      $v0, $zero, 0x1b
/* C3024 800D2824 1000A2A3 */  sb         $v0, 0x10($sp)
/* C3028 800D2828 03004232 */  andi       $v0, $s2, 3
/* C302C 800D282C 01000324 */  addiu      $v1, $zero, 1
/* C3030 800D2830 1100A0A3 */  sb         $zero, 0x11($sp)
/* C3034 800D2834 1400A2A3 */  sb         $v0, 0x14($sp)
/* C3038 800D2838 DF1123A2 */  sb         $v1, 0x11df($s1)
/* C303C 800D283C E01120AE */  sw         $zero, 0x11e0($s1)
/* C3040 800D2840 E41120AE */  sw         $zero, 0x11e4($s1)
/* C3044 800D2844 E81120AE */  sw         $zero, 0x11e8($s1)
/* C3048 800D2848 AC41030C */  jal        FUN_800d06b0
/* C304C 800D284C 00000000 */   nop
/* C3050 800D2850 174A0308 */  j          .L800D285C
/* C3054 800D2854 00000000 */   nop
.L800D2858:
/* C3058 800D2858 FBFF0224 */  addiu      $v0, $zero, -5
.L800D285C:
/* C305C 800D285C 2C00BF8F */  lw         $ra, 0x2c($sp)
/* C3060 800D2860 2800B28F */  lw         $s2, 0x28($sp)
/* C3064 800D2864 2400B18F */  lw         $s1, 0x24($sp)
/* C3068 800D2868 2000B08F */  lw         $s0, 0x20($sp)
/* C306C 800D286C 0800E003 */  jr         $ra
/* C3070 800D2870 3000BD27 */   addiu     $sp, $sp, 0x30
