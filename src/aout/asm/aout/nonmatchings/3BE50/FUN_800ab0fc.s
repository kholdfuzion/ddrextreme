.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches


glabel FUN_800ab0fc
/* 9B8FC 800AB0FC E0FFBD27 */  addiu      $sp, $sp, -0x20
/* 9B900 800AB100 1400B1AF */  sw         $s1, 0x14($sp)
/* 9B904 800AB104 1C80113C */  lui        $s1, %hi(D_801C3E88)
/* 9B908 800AB108 883E248E */  lw         $a0, %lo(D_801C3E88)($s1)
/* 9B90C 800AB10C 1000B0AF */  sw         $s0, 0x10($sp)
/* 9B910 800AB110 883E3026 */  addiu      $s0, $s1, 0x3e88
/* 9B914 800AB114 1800B2AF */  sw         $s2, 0x18($sp)
/* 9B918 800AB118 FFFF1224 */  addiu      $s2, $zero, -1
/* 9B91C 800AB11C 03009210 */  beq        $a0, $s2, .L800AB12C
/* 9B920 800AB120 1C00BFAF */   sw        $ra, 0x1c($sp)
/* 9B924 800AB124 6618030C */  jal        FUN_800c6198
/* 9B928 800AB128 00000000 */   nop
.L800AB12C:
/* 9B92C 800AB12C 1C00BF8F */  lw         $ra, 0x1c($sp)
/* 9B930 800AB130 883E32AE */  sw         $s2, 0x3e88($s1)
/* 9B934 800AB134 1800B28F */  lw         $s2, 0x18($sp)
/* 9B938 800AB138 1400B18F */  lw         $s1, 0x14($sp)
/* 9B93C 800AB13C 040000A2 */  sb         $zero, 4($s0)
/* 9B940 800AB140 050000A2 */  sb         $zero, 5($s0)
/* 9B944 800AB144 080000AE */  sw         $zero, 8($s0)
/* 9B948 800AB148 0C0000AE */  sw         $zero, 0xc($s0)
/* 9B94C 800AB14C 100000AE */  sw         $zero, 0x10($s0)
/* 9B950 800AB150 140000AE */  sw         $zero, 0x14($s0)
/* 9B954 800AB154 180000AE */  sw         $zero, 0x18($s0)
/* 9B958 800AB158 1C0100A2 */  sb         $zero, 0x11c($s0)
/* 9B95C 800AB15C 200100AE */  sw         $zero, 0x120($s0)
/* 9B960 800AB160 1000B08F */  lw         $s0, 0x10($sp)
/* 9B964 800AB164 0800E003 */  jr         $ra
/* 9B968 800AB168 2000BD27 */   addiu     $sp, $sp, 0x20
