.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches


glabel FUN_8005b8c4
/* 4C0C4 8005B8C4 E0FFBD27 */  addiu      $sp, $sp, -0x20
/* 4C0C8 8005B8C8 08000424 */  addiu      $a0, $zero, 8
/* 4C0CC 8005B8CC 0F000524 */  addiu      $a1, $zero, 0xf
/* 4C0D0 8005B8D0 1C00BFAF */  sw         $ra, 0x1c($sp)
/* 4C0D4 8005B8D4 FA56010C */  jal        FUN_80055be8
/* 4C0D8 8005B8D8 1800B0AF */   sw        $s0, 0x18($sp)
/* 4C0DC 8005B8DC 08000424 */  addiu      $a0, $zero, 8
/* 4C0E0 8005B8E0 376C010C */  jal        FUN_8005b0dc
/* 4C0E4 8005B8E4 21280000 */   addu      $a1, $zero, $zero
/* 4C0E8 8005B8E8 1380023C */  lui        $v0, %hi(D_80128BBC)
/* 4C0EC 8005B8EC BC8B4224 */  addiu      $v0, $v0, %lo(D_80128BBC)
/* 4C0F0 8005B8F0 04004584 */  lh         $a1, 4($v0)
/* 4C0F4 8005B8F4 06004684 */  lh         $a2, 6($v0)
/* 4C0F8 8005B8F8 08004784 */  lh         $a3, 8($v0)
/* 4C0FC 8005B8FC 0A004384 */  lh         $v1, 0xa($v0)
/* 4C100 8005B900 0C004884 */  lh         $t0, 0xc($v0)
/* 4C104 8005B904 08000424 */  addiu      $a0, $zero, 8
/* 4C108 8005B908 1000A3AF */  sw         $v1, 0x10($sp)
/* 4C10C 8005B90C D16B010C */  jal        FUN_8005af44
/* 4C110 8005B910 1400A8AF */   sw        $t0, 0x14($sp)
/* 4C114 8005B914 08000424 */  addiu      $a0, $zero, 8
/* 4C118 8005B918 21280000 */  addu       $a1, $zero, $zero
/* 4C11C 8005B91C 0C6C010C */  jal        FUN_8005b030
/* 4C120 8005B920 21300000 */   addu      $a2, $zero, $zero
/* 4C124 8005B924 08000424 */  addiu      $a0, $zero, 8
/* 4C128 8005B928 80000524 */  addiu      $a1, $zero, 0x80
/* 4C12C 8005B92C 80000624 */  addiu      $a2, $zero, 0x80
/* 4C130 8005B930 646B010C */  jal        FUN_8005ad90
/* 4C134 8005B934 80000724 */   addiu     $a3, $zero, 0x80
/* 4C138 8005B938 08000424 */  addiu      $a0, $zero, 8
/* 4C13C 8005B93C 946B010C */  jal        FUN_8005ae50
/* 4C140 8005B940 FFFF0524 */   addiu     $a1, $zero, -1
/* 4C144 8005B944 1A80103C */  lui        $s0, %hi(D_801A09A8)
/* 4C148 8005B948 A809058E */  lw         $a1, %lo(D_801A09A8)($s0)
/* 4C14C 8005B94C 1D6B010C */  jal        FUN_8005ac74
/* 4C150 8005B950 08000424 */   addiu     $a0, $zero, 8
/* 4C154 8005B954 1380033C */  lui        $v1, %hi(D_80128166)
/* 4C158 8005B958 66816490 */  lbu        $a0, %lo(D_80128166)($v1)
/* 4C15C 8005B95C 50000224 */  addiu      $v0, $zero, 0x50
/* 4C160 8005B960 03008210 */  beq        $a0, $v0, .L8005B970
/* 4C164 8005B964 00000000 */   nop
/* 4C168 8005B968 9157010C */  jal        FUN_80055e44
/* 4C16C 8005B96C 08000424 */   addiu     $a0, $zero, 8
.L8005B970:
/* 4C170 8005B970 1C00BF8F */  lw         $ra, 0x1c($sp)
/* 4C174 8005B974 A80900AE */  sw         $zero, 0x9a8($s0)
/* 4C178 8005B978 1800B08F */  lw         $s0, 0x18($sp)
/* 4C17C 8005B97C 0800E003 */  jr         $ra
/* 4C180 8005B980 2000BD27 */   addiu     $sp, $sp, 0x20
