.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches


glabel FUN_800b20bc
/* A28BC 800B20BC E0FFBD27 */  addiu      $sp, $sp, -0x20
/* A28C0 800B20C0 1000B0AF */  sw         $s0, 0x10($sp)
/* A28C4 800B20C4 1D80103C */  lui        $s0, %hi(D_801D3218)
/* A28C8 800B20C8 1832028E */  lw         $v0, %lo(D_801D3218)($s0)
/* A28CC 800B20CC 1800B2AF */  sw         $s2, 0x18($sp)
/* A28D0 800B20D0 18321226 */  addiu      $s2, $s0, 0x3218
/* A28D4 800B20D4 1C00BFAF */  sw         $ra, 0x1c($sp)
/* A28D8 800B20D8 01004238 */  xori       $v0, $v0, 1
/* A28DC 800B20DC 0D004010 */  beqz       $v0, .L800B2114
/* A28E0 800B20E0 1400B1AF */   sw        $s1, 0x14($sp)
/* A28E4 800B20E4 0DC8020C */  jal        FUN_800b2034
/* A28E8 800B20E8 00000000 */   nop
/* A28EC 800B20EC 09004014 */  bnez       $v0, .L800B2114
/* A28F0 800B20F0 01001124 */   addiu     $s1, $zero, 1
/* A28F4 800B20F4 21200000 */  addu       $a0, $zero, $zero
/* A28F8 800B20F8 F649030C */  jal        FUN_800d27d8
/* A28FC 800B20FC 183211AE */   sw        $s1, 0x3218($s0)
/* A2900 800B2100 03004010 */  beqz       $v0, .L800B2110
/* A2904 800B2104 040042AE */   sw        $v0, 4($s2)
/* A2908 800B2108 45C80208 */  j          .L800B2114
/* A290C 800B210C 183200AE */   sw        $zero, 0x3218($s0)
.L800B2110:
/* A2910 800B2110 080051AE */  sw         $s1, 8($s2)
.L800B2114:
/* A2914 800B2114 1C00BF8F */  lw         $ra, 0x1c($sp)
/* A2918 800B2118 1800B28F */  lw         $s2, 0x18($sp)
/* A291C 800B211C 1400B18F */  lw         $s1, 0x14($sp)
/* A2920 800B2120 1000B08F */  lw         $s0, 0x10($sp)
/* A2924 800B2124 0800E003 */  jr         $ra
/* A2928 800B2128 2000BD27 */   addiu     $sp, $sp, 0x20
