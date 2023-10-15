.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches


glabel FUN_800b2894
/* A3094 800B2894 E0FFBD27 */  addiu      $sp, $sp, -0x20
/* A3098 800B2898 1000B0AF */  sw         $s0, 0x10($sp)
/* A309C 800B289C 1E80103C */  lui        $s0, %hi(D_801E0760)
/* A30A0 800B28A0 6007048E */  lw         $a0, %lo(D_801E0760)($s0)
/* A30A4 800B28A4 1800BFAF */  sw         $ra, 0x18($sp)
/* A30A8 800B28A8 C4D4020C */  jal        FUN_800b5310
/* A30AC 800B28AC 1400B1AF */   sw        $s1, 0x14($sp)
/* A30B0 800B28B0 8C09043C */  lui        $a0, 0x98c
/* A30B4 800B28B4 1E80053C */  lui        $a1, %hi(D_801DF820)
/* A30B8 800B28B8 20F8A524 */  addiu      $a1, $a1, %lo(D_801DF820)
/* A30BC 800B28BC 0380063C */  lui        $a2, %hi(FUN_80035904)
/* A30C0 800B28C0 0459C624 */  addiu      $a2, $a2, %lo(FUN_80035904)
/* A30C4 800B28C4 FFFF1124 */  addiu      $s1, $zero, -1
/* A30C8 800B28C8 35D4020C */  jal        FUN_800b50d4
/* A30CC 800B28CC 600711AE */   sw        $s1, 0x760($s0)
/* A30D0 800B28D0 57CA020C */  jal        FUN_800b295c
/* A30D4 800B28D4 600702AE */   sw        $v0, 0x760($s0)
/* A30D8 800B28D8 08004010 */  beqz       $v0, .L800B28FC
/* A30DC 800B28DC 1E80023C */   lui       $v0, %hi(D_801E0766)
/* A30E0 800B28E0 6007048E */  lw         $a0, 0x760($s0)
/* A30E4 800B28E4 C4D4020C */  jal        FUN_800b5310
/* A30E8 800B28E8 660740A0 */   sb        $zero, %lo(D_801E0766)($v0)
/* A30EC 800B28EC FFD9020C */  jal        FUN_800b67fc
/* A30F0 800B28F0 600711AE */   sw        $s1, 0x760($s0)
/* A30F4 800B28F4 52CA0208 */  j          .L800B2948
/* A30F8 800B28F8 00000000 */   nop
.L800B28FC:
/* A30FC 800B28FC 1E80113C */  lui        $s1, %hi(D_801E0764)
/* A3100 800B2900 64073026 */  addiu      $s0, $s1, %lo(D_801E0764)
/* A3104 800B2904 21200002 */  addu       $a0, $s0, $zero
/* A3108 800B2908 21280000 */  addu       $a1, $zero, $zero
/* A310C 800B290C F6A2000C */  jal        memset
/* A3110 800B2910 04000624 */   addiu     $a2, $zero, 4
/* A3114 800B2914 18DA020C */  jal        FUN_800b6860
/* A3118 800B2918 1E000424 */   addiu     $a0, $zero, 0x1e
/* A311C 800B291C 03000424 */  addiu      $a0, $zero, 3
/* A3120 800B2920 11000524 */  addiu      $a1, $zero, 0x11
/* A3124 800B2924 21300000 */  addu       $a2, $zero, $zero
/* A3128 800B2928 01000224 */  addiu      $v0, $zero, 1
/* A312C 800B292C 40000324 */  addiu      $v1, $zero, 0x40
/* A3130 800B2930 21380000 */  addu       $a3, $zero, $zero
/* A3134 800B2934 020002A2 */  sb         $v0, 2($s0)
/* A3138 800B2938 55DA020C */  jal        FUN_800b6954
/* A313C 800B293C 640723A2 */   sb        $v1, 0x764($s1)
/* A3140 800B2940 33CB020C */  jal        FUN_800b2ccc
/* A3144 800B2944 01000424 */   addiu     $a0, $zero, 1
.L800B2948:
/* A3148 800B2948 1800BF8F */  lw         $ra, 0x18($sp)
/* A314C 800B294C 1400B18F */  lw         $s1, 0x14($sp)
/* A3150 800B2950 1000B08F */  lw         $s0, 0x10($sp)
/* A3154 800B2954 0800E003 */  jr         $ra
/* A3158 800B2958 2000BD27 */   addiu     $sp, $sp, 0x20
