.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches


glabel FUN_800b204c
/* A284C 800B204C E0FFBD27 */  addiu      $sp, $sp, -0x20
/* A2850 800B2050 1000B0AF */  sw         $s0, 0x10($sp)
/* A2854 800B2054 1D80103C */  lui        $s0, %hi(D_801D3218)
/* A2858 800B2058 1832028E */  lw         $v0, %lo(D_801D3218)($s0)
/* A285C 800B205C 1800B2AF */  sw         $s2, 0x18($sp)
/* A2860 800B2060 18321226 */  addiu      $s2, $s0, 0x3218
/* A2864 800B2064 1C00BFAF */  sw         $ra, 0x1c($sp)
/* A2868 800B2068 01004238 */  xori       $v0, $v0, 1
/* A286C 800B206C 0D004010 */  beqz       $v0, .L800B20A4
/* A2870 800B2070 1400B1AF */   sw        $s1, 0x14($sp)
/* A2874 800B2074 0DC8020C */  jal        FUN_800b2034
/* A2878 800B2078 00000000 */   nop
/* A287C 800B207C 09004014 */  bnez       $v0, .L800B20A4
/* A2880 800B2080 01001124 */   addiu     $s1, $zero, 1
/* A2884 800B2084 01000424 */  addiu      $a0, $zero, 1
/* A2888 800B2088 F649030C */  jal        FUN_800d27d8
/* A288C 800B208C 183211AE */   sw        $s1, 0x3218($s0)
/* A2890 800B2090 03004010 */  beqz       $v0, .L800B20A0
/* A2894 800B2094 040042AE */   sw        $v0, 4($s2)
/* A2898 800B2098 29C80208 */  j          .L800B20A4
/* A289C 800B209C 183200AE */   sw        $zero, 0x3218($s0)
.L800B20A0:
/* A28A0 800B20A0 080051AE */  sw         $s1, 8($s2)
.L800B20A4:
/* A28A4 800B20A4 1C00BF8F */  lw         $ra, 0x1c($sp)
/* A28A8 800B20A8 1800B28F */  lw         $s2, 0x18($sp)
/* A28AC 800B20AC 1400B18F */  lw         $s1, 0x14($sp)
/* A28B0 800B20B0 1000B08F */  lw         $s0, 0x10($sp)
/* A28B4 800B20B4 0800E003 */  jr         $ra
/* A28B8 800B20B8 2000BD27 */   addiu     $sp, $sp, 0x20
